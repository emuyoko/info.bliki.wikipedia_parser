local export = {}

-- it is either here, or in [[Module:ugly hacks]], and it is not in ugly hacks.
function export.CONTENTMODEL()
	return mw.title.getCurrentTitle().contentModel
end

local skins = {
	["common"     ] = "";
	["vector"     ] = "Vector";
	["monobook"   ] = "Monobook";
	["cologneblue"] = "Cologne Blue";
	["modern"     ] = "Modern";
}

local Array = require "Module:array"

local function compare_pages(page1, page2, text)
	return "[" .. tostring(
		mw.uri.fullUrl("Special:ComparePages", { page1 = page1, page2 = page2 }))
		.. " " .. text .. "]"
end

local function page_exists(title)
	local success, title_obj = pcall(mw.title.new, title)
	return success and title_obj.exists
end

-- Avoid transcluding [[Module:languages/cache]] everywhere.
local lang_cache = setmetatable({}, { __index = function (self, k)
	return require "Module:languages/cache"[k]
end })

local function zh_link(word)
	return require("Module:links").full_link{
		lang = lang_cache.zh,
		term = word
	}
end

local function make_accel_documentation(title, cats)
	local doc_content
	local lang_code = title.subpageText
	local lang = lang_cache[lang_code]
	if lang then
		cats:insert(lang:getCanonicalName() .. " modules|accel")
		cats:insert(("Accel submodules|%s"):format(lang:getCanonicalName()))
		return ("This module contains new entry creation rules for %s; see [[WT:ACCEL]] for an overview, and [[Module:accel]] for information on creating new rules.")
			:format(lang:makeCategoryLink())
	end
	return doc_content
end


local function make_Unicode_data_documentation(title, cats)
	local subpage, first_three_of_code_point
		= title.fullText:match("^Module:Unicode data/([^/]+)/(%x%x%x)$")
	if subpage == "names" or subpage == "images" then
		local low, high =
			tonumber(first_three_of_code_point .. "000", 16),
			tonumber(first_three_of_code_point .. "FFF", 16)
		return string.format(
			"This data module contains the %s of " ..
			"[[Appendix:Unicode|Unicode]] code points within the range U+%04X to U+%04X.",
			subpage == "images" and "titles of images" or "names",
			low, high)
	end
end

-- This provides categories and documentation for various data modules, so that
-- [[Category:Uncategorized modules]] isn’t unnecessarily cluttered.
-- It is a list of tables, each of which have three possible fields:

-- The “regex” field is required. It is a Lua pattern to match the module’s
-- title. If it matches, the data will be used. If the pattern contains one
-- capture, and a category has been specified, the capture will be used as a
-- sortkey.

-- The “doc” field is required. This may be a function or a
-- string. If it is a function, it receives a title and an array (see
-- [[Module:array]]) of categories that will be added to the documentation as
-- its first and second arguments, and may return a string, which will be used
-- as documentation. If it is a string, it is the name of a submodule under
-- “Module:documentation/functions/” which returns a function, of the same type
-- as described above.

-- The “cat” field is optional. It is a category in which the module should be
-- placed. The inner part of the category link is generated as follows:
-- mw.ustring.gsub(full_title, cat_field)
-- So if the “cat” field is present, the “regex” field should match the whole
-- title, and if there is “|%1” at the end of the “cat” field, for a sortkey,
-- there should be one capture in the “regex” field.
local module_regex = {
	{
		regex = "^Module:languages/.+$",
		cat = "Modules dealing with languages and scripts",
	},
	{
		regex = "^Module:scripts/.+$",
		cat = "Modules dealing with languages and scripts",
	},
	{
		regex = "^Module:data tables/data..?.?.?$",
		cat = "Reference module sharded data tables",
	},
	{
		regex = "^Module:Quotations/...?.?.?.?.?.?$",
		cat = "Quotation data modules",
	},
	{
		regex = "^Module:zh/data/dial%-pron/.+$",
		cat = "Chinese dialectal pronunciation data modules",
		doc = "zh dial or syn",
	},
	{
		regex = "^Module:zh/data/dial%-syn/.+$",
		cat = "Chinese dialectal synonyms data modules",
		doc = "zh dial or syn",
	},
	{
		regex = "^Module:zh/data/glyph%-data/.+$",
		cat = "Chinese historical character forms data modules",
		doc = function(title, cats)
			local character = title.fullText:match("^Module:zh/data/glyph%-data/(.+)")
			if character then
				return ("This module contains data on historical forms of the Chinese character %s.")
					:format(zh_link(character))
			end
		end,
	},
	{
		regex = "^Module:zh/data/ltc%-pron/(.+)$",
		cat = "Middle Chinese pronunciation data modules|%1",
		doc = "zh data",
	},
	{
		regex = "^Module:zh/data/och%-pron%-BS/(.+)$",
		cat = "Old Chinese (Baxter-Sagart) pronunciation data modules|%1",
		doc = "zh data",
	},
	{
		regex = "^Module:zh/data/och%-pron%-ZS/(.+)$",
		cat = "Old Chinese (Zhengzhang) pronunciation data modules|%1",
		doc = "zh data",
	},
	-- capture rest of zh/data submodules
	{
		regex = "^Module:zh/data/(.+)$",
		cat = "Chinese data modules|%1",
	},
	{
		regex = "^Module:mul/guoxue%-data/cjk%-?(.*)$",
		cat = nil,
		doc = "guoxue-data",
	},
	{
		regex = "^Module:Unicode data/(.+)$",
		cat = "Unicode data modules|%1",
		doc = make_Unicode_data_documentation,
	},
	{
		regex = "^Module:number list/data/(.+)$",
		cat = nil, -- category added by doc function
		doc = "number list",
	},
	{
		regex = "^Module:es%-conj/data/(.+)$",
		cat = "Spanish data modules|%1"
	},
	{
		regex = "^Module:accel/(.+)$",
		cat = nil,
		doc = make_accel_documentation,
	},
	{
		regex = "^Module:inc%-ash/dial/data/(.+)$",
		cat = "Ashokan Prakrit modules|%1",
		doc = function (title, cats)
			local word = title.fullText:match("^Module:inc%-ash/dial/data/(.+)$")
			if word then
				local lang = lang_cache["inc-ash"]
				return ("This module contains data on the pronunciation of %s in dialects of %s.")
					:format(require("Module:links").full_link({ term = word, lang = lang }, "term"),
						lang:makeCategoryLink())
			end
		end,
	},
	{
		regex = "^Module:[%l-]+:Dialects$",
		cat = nil,
		doc = function (title, cats)
			local content = title:getContent()
			local has_aliases = content:find("aliases") ~= nil
			return mw.getCurrentFrame():expandTemplate {
				title = "dialectal data module",
				args = { ["labels-aliases"] = has_aliases },
			}
		end,
	},
	{
		regex = "^.+%-translit$",
		cat = nil,
		doc = "translit",
	},
}

function export.show(frame)
	local params = {
		["hr"] = {},
		["for"] = {},
		["from"] = {},
		["notsubpage"] = { type = "boolean", default = false },
		["nodoc"] = { type = "boolean", default = false },
	}
	
	local args = require("Module:parameters").process(frame.args, params)
	
	local output = Array('\n<div class="documentation" style="display:block; clear:both">\n')
	local cats = Array()
	
	local nodoc = args.nodoc
	
	if (not args.hr) or (args.hr == "above") then
		output:insert("----\n")
	end
	
	local title = ((args['for'] ~= "") and args['for']) and mw.title.new(args['for'])
		or mw.title.getCurrentTitle()
	local doc_title = mw.title.new((args['from'] ~= "") and args['from']
		or (title.fullText .. '/documentation'))
	local contentModel = title.contentModel
	
	local pagetype = mw.getContentLanguage():lcfirst(title.nsText) .. " page"
	local preload, fallback_docs, doc_content, doc_content_module,
		old_doc_title, user_name, skin_name, needs_doc
	
	if contentModel == "javascript" then
		pagetype = "script"
		if title.nsText == 'MediaWiki' then
			if title.text:find('Gadget-') then
				preload = 'Template:documentation/preloadGadget'
			else
				preload = 'Template:documentation/preloadMediaWikiJavaScript'
			end
		else
			preload  = 'Template:documentation/preloadTemplate' -- XXX
		end
		if title.nsText == 'User' then
			user_name = title.rootText
		end
	elseif contentModel == "css" then
		pagetype = "style sheet"
		preload  = 'Template:documentation/preloadTemplate' -- XXX
		if title.nsText == 'User' then
			user_name = title.rootText
		end
	elseif contentModel == "Scribunto" then
		pagetype = "module"
		user_name = title.rootText:match("^[Uu]ser:(.+)")
		if user_name then
			preload  = 'Template:documentation/preloadModuleSandbox'
		else
			preload  = 'Template:documentation/preloadModule'
		end
	elseif title.nsText == "Template" then
		pagetype = "template"
		preload  = 'Template:documentation/preloadTemplate'
	elseif title.nsText == "Wiktionary" then
		pagetype = "project page"
		preload  = 'Template:documentation/preloadTemplate' -- XXX
	end
	
	if doc_title.isRedirect then
		old_doc_title = doc_title
		doc_title = mw.title.new(string.match(doc_title:getContent(),
			"^#[Rr][Ee][Dd][Ii][Rr][Ee][Cc][Tt]%s*:?%s*%[%[([^%[%]]-)%]%]"))
	end

	output:insert("<dl class=\"plainlinks\" style=\"font-size: smaller;\">")
	if doc_title.exists then
		output:insert(
			"<dd><i style=\"font-size: larger;\">The following " ..
			"[[Help:Documenting templates and modules|documentation]] is located at [[" ..
			doc_title.fullText .. "]]. " ..
			"<sup>[[" .. doc_title:fullUrl { action = 'edit' } .. " edit]]</sup> </i></dd>")
	else
		if contentModel == "Scribunto" then
			local automatic_cat
			if user_name then
				fallback_docs = 'documentation/fallback/user module'
				automatic_cat = "User sandbox modules"
			else
				for _, data in ipairs(module_regex) do
					if mw.ustring.find(title.fullText, data.regex) then
						local cat
						local doc_function
						if type(data.doc) == "function" then
							doc_function = data.doc
						elseif type(data.doc) == "string" then
							doc_content_module = "Module:documentation/functions/" .. data.doc
							doc_function = require(doc_content_module)
						end
						
						if doc_function then
							doc_content = doc_function(title, cats)
						end
						cat = data.cat
						
						if cat then
							automatic_cat = mw.ustring.gsub(title.fullText, data.regex, cat)
						-- If the documentation function (cat.doc) manages to
						-- generate documentation, it should add a category.
						elseif doc_content then
							automatic_cat = nil
						end
						break
					end
				end
			end
			
				
			if not automatic_cat then
				local success, auto_cats =
					pcall(require("Module:module categorization").categorize, frame, true)
				if success then
					for _, category in ipairs(auto_cats) do
						cats:insert(category)
					end
				end
			end
			
			if title.subpageText == "templates" then
				cats:insert("Template interface modules")
			end
			
			cats:insert(automatic_cat)
			
			-- meaning module is not in user’s sandbox or one of many datamodule boring series
			needs_doc = not (automatic_cat or doc_content or fallback_docs)
		elseif title.nsText == "Template" then
			--cats:insert("Uncategorized templates")
			needs_doc = not (fallback_docs or nodoc)
		elseif (contentModel == "css") or (contentModel == "javascript") then
			if user_name then
				skin_name = skins[title.text:sub(#title.rootText + 1):match("^/([a-z]+)%.[jc]ss?$")]
				if skin_name then
					fallback_docs = 'documentation/fallback/user ' .. contentModel
				end
			end
		end
		
		if doc_content then
			output:insert(
				"<dd><i style=\"font-size: larger;\">The following " ..
				"[[Help:Documenting templates and modules|documentation]] is " ..
				"generated by [[" .. (doc_content_module or "Module:documentation") .. "]]. <sup>[[" ..
				mw.title.new("Module:documentation"):fullUrl { action = 'edit' } ..
				" edit]]</sup> </i></dd>")
		elseif not nodoc then
			output:insert(
				"<dd><i style=\"font-size: larger;\">This " .. pagetype ..
				" lacks a [[Help:Documenting templates and modules|documentation subpage]]. " ..
				(fallback_docs and "You may " or "Please ") ..
				"[" .. doc_title:fullUrl { action = 'edit', preload = preload }
				.. " create it].</i></dd>\n")
		end
	end
	
	if title.fullText:match("^MediaWiki:Gadget%-") then
		local is_gadget = false
		local gadget_list = mw.title.new("MediaWiki:Gadgets-definition"):getContent()
		
		for line in mw.text.gsplit(gadget_list, "\n") do
			local gadget, opts, items = line:match("^%*%s*([A-Za-z][A-Za-z0-9_%-]*)%[(.-)%]|(.+)$") -- opts is unused
			if not gadget then
				gadget, items = line:match("^%*%s*([A-Za-z][A-Za-z0-9_%-]*)|(.+)$")
			end
			
			if gadget then
				items = Array(mw.text.split(items, "|"))
				for i, item in ipairs(items) do
					if title.fullText == ("MediaWiki:Gadget-" .. item) then
						is_gadget = true

						output:insert("<dd> ''This script is a part of the <code>")
						output:insert(gadget)
						output:insert("</code> gadget ([")
						output:insert(tostring(mw.uri.fullUrl('MediaWiki:Gadgets-definition', 'action=edit')))
						output:insert(" edit definitions])'' <dl>")
						
						output:insert("<dd> ''Description ([")
						output:insert(tostring(mw.uri.fullUrl('MediaWiki:Gadget-' .. gadget, 'action=edit')))
						output:insert(" edit])'': ")
						
						local gadget_description = mw.message.new('Gadget-' .. gadget):plain()
						gadget_description = frame:preprocess(gadget_description)
						output:insert(gadget_description)
						output:insert(" </dd>")

						items:remove(i)
						if #items > 0 then
							for j, item in ipairs(items) do
								items[j] = '[[MediaWiki:Gadget-' .. item .. '|' .. item .. ']]'
							end
							output:insert("<dd> ''Other parts'': ")
							output:insert(mw.text.listToText(items))
							output:insert("</dd>")
						end

						output:insert("</dl></dd>")

						break
					end
				end
			end
		end
		
		if not is_gadget then
			output:insert("<dd> ''This script is not a part of any [")
			output:insert(tostring(mw.uri.fullUrl('Special:Gadgets', 'uselang=en')))
			output:insert(' gadget] ([')
			output:insert(tostring(mw.uri.fullUrl('MediaWiki:Gadgets-definition', 'action=edit')))
			output:insert(' edit definitions]).</dd>')
		-- else
			-- cats:insert("Wiktionary gadgets")
		end
	end
	
	if old_doc_title then
		output:insert("<dd> ''Redirected from'' [")
		output:insert(old_doc_title:fullUrl { redirect = 'no' })
		output:insert(" ")
		output:insert(old_doc_title.fullText)
		output:insert("] ([")
		output:insert(old_doc_title:fullUrl { action = 'edit' })
		output:insert(" edit]).</dd>\n")
	end
	
	local links = Array()
	
	if title.isSubpage and not args.notsubpage then
		links:insert("[[:" .. title.nsText .. ":" .. title.rootText .. "|root page]]")
		links:insert("[[Special:PrefixIndex/" .. title.nsText .. ":" .. title.rootText .. "/|root page’s subpages]]")
	else
		links:insert("[[Special:PrefixIndex/" .. title.fullText .. "/|subpage list]]")
	end
	
	links:insert(
		'[' .. tostring(mw.uri.fullUrl('Special:WhatLinksHere/' .. title.fullText,
			'hidetrans=1&hideredirs=1')) .. ' links]')

	if contentModel ~= "Scribunto" then
		links:insert(
			'[' .. tostring(mw.uri.fullUrl('Special:WhatLinksHere/' .. title.fullText,
			'hidelinks=1&hidetrans=1')) .. ' redirects]')
	end

	if (contentModel == "javascript") or (contentModel == "css") then
		if user_name then
			links:insert("[[Special:MyPage" .. title.text:sub(#title.rootText + 1) .. "|your own]]")
		end
	else
		links:insert(
			'[' .. tostring(mw.uri.fullUrl('Special:WhatLinksHere/' .. title.fullText,
				'hidelinks=1&hideredirs=1')) .. ' transclusions]')
	end
	
	if contentModel == "Scribunto" then
		local is_testcases = title.isSubpage and title.subpageText == "testcases"
		local without_subpage = title.nsText .. ":" .. title.baseText
		if is_testcases then
			links:insert("[[:" .. without_subpage .. "|tested module]]")
		else
			links:insert("[[" .. title.fullText .. "/testcases|testcases]]")
		end
		
		if user_name then
			links:insert("[[User:" .. user_name .. "|user page]]")
			links:insert("[[User talk:" .. user_name .. "|user talk page]]")
			links:insert("[[Special:PrefixIndex/User:" .. user_name .. "/|userspace]]")
		else
			-- If sandbox module, add a link to the module that this is a sandbox of.
			-- Exclude user sandbox modules like [[User:Dine2016/sandbox]].
			if title.text:find("/sandbox%d*%f[/%z]") then
				cats:insert("Sandbox modules")
				
				-- Sandbox modules don’t really need documentation.
				needs_doc = false
				
				-- Will behave badly if “/sandbox” occurs twice in title!
				local sandbox_of = title.fullText:gsub("/sandbox%d*%f[/%z]", "")
				
				local diff
				if page_exists(sandbox_of) then
					diff = " (" .. compare_pages(title.fullText, sandbox_of, "diff") .. ")"
				else
					require("Module:debug").track("documentation/no sandbox of")
				end
				
				links:insert("[[:" .. sandbox_of .. "|sandbox of]]" .. (diff or ""))
			
			-- If not a sandbox module, add link to sandbox module.
			-- Sometimes there are multiple sandboxes for a single module:
			-- [[Module:sa-pronunc/sandbox]],  [[Module:sa-pronunc/sandbox2]].
			-- Occasionally sandbox modules have their own subpages that are also
			-- sandboxes: [[Module:grc-decl/sandbox/decl]].
			else
				local sandbox_title
				if title.fullText:find("^Module:grc%-decl/") then
					sandbox_title = title.fullText:gsub("^Module:grc%-decl/", "Module:grc-decl/sandbox/")
				elseif is_testcases then
					sandbox_title = title.fullText:gsub("/testcases", "/sandbox/testcases")
				else
					sandbox_title = title.fullText .. "/sandbox"
				end
				local sandbox_link = "[[:" .. sandbox_title .. "|sandbox]]"
				
				local diff
				if page_exists(sandbox_title) then
					diff = " (" .. compare_pages(title.fullText, sandbox_title, "diff") .. ")"
				end
				
				links:insert(sandbox_link .. (diff or ""))
			end
		end
	end
	
	if title.nsText == "Template" then
		if title.isSubpage and title.text:find("/sandbox%d*%f[/%z]") then -- This is a sandbox template.
			-- At the moment there are no user sandbox templates with subpage
			-- “/sandbox”.
			cats:insert("Sandbox templates")
			
			-- Sandbox templates don’t really need documentation.
			needs_doc = false
			
			-- Will behave badly if “/sandbox” occurs twice in title!
			local sandbox_of = title.fullText:gsub("/sandbox%d*%f[/%z]", "")
			
			local diff
			if page_exists(sandbox_of) then
				diff = " (" .. compare_pages(title.fullText, sandbox_of, "diff") .. ")"
			else
				require("Module:debug").track("documentation/no sandbox of")
			end
			
			links:insert("[[:" .. sandbox_of .. "|sandbox of]]" .. (diff or ""))
		else -- This is a template that can have a sandbox.
			local sandbox_title = title.fullText .. "/sandbox"
			
			local diff
			if page_exists(sandbox_title) then
				diff = " (" .. compare_pages(title.fullText, sandbox_title, "diff") .. ")"
			end
			
			links:insert("[[:" .. sandbox_title .. "|sandbox]]" .. (diff or ""))
		end
	end
	
	if #links > 0 then
		output:insert("<dd> ''Useful links'': " .. links:concat(" • ") .. "</dd>")
	end
	
	output:insert("</dl>\n")
	
	if doc_title.exists then
		-- Override automatic documentation, if present.
		doc_content = frame:expandTemplate { title = doc_title.fullText }
	elseif not doc_content and fallback_docs then
		doc_content = frame:expandTemplate {
			title = fallback_docs;
			args = {
				['user'] = user_name;
				['page'] = title.fullText;
				['skin name'] = skin_name;
			}
		}
	end

	if doc_content then
		output:insert(doc_content)
	end

	output:insert(('\n<%s style="clear: both;" />'):format(args.hr == "below" and "hr" or "br"))
	
	if not cats[1] and not doc_content then
		if contentModel == "Scribunto" then
			cats:insert("Uncategorized modules")
		-- elseif title.nsText == "Template" then
			-- cats:insert("Uncategorized templates")
		end
	end
	
	if needs_doc then
		cats:insert("Templates and modules needing documentation")
	end
	
	for _, cat in ipairs(cats) do
		output:insert("[[Category:" .. cat .. "]]")
	end
	
	output:insert("</div>\n")

	return output:concat()
end

-- Used by {{translit module documentation}}.
function export.translitModuleLangList(frame)
	local pagename, subpage
	
	if frame.args[1] then
		pagename = frame.args[1]
	else
		local title = mw.title.getCurrentTitle()
		subpage = title.subpageText
		pagename = title.text
		
		if subpage ~= pagename then
			pagename = title.rootText
		end
	end
	
	local translitModule = pagename
	
	local languageObjects = require("Module:languages/byTranslitModule")(translitModule)
	local codeInPagename = pagename:match("^([%l-]+)%-.*translit$")
	
	local categories = Array()
	local codeInPagenameInList = false
	if codeInPagename then
		if languageObjects[1] and subpage ~= "documentation" then
			local agreement = languageObjects[2] and "s" or ""
			categories:insert("[[Category:Transliteration modules used by " ..
				#languageObjects .. " language" .. agreement .. "]]")
		end
		
		languageObjects = Array(languageObjects)
			:filter(
				function (lang)
					local result = lang:getCode() ~= codeInPagename
					codeInPagenameInList = codeInPagenameInList or result
					return result
				end)
	end
	
	if subpage ~= "documentation" then
		for script_code in pagename:gmatch("%f[^-%z]%u%l%l%l%f[-]") do
			local script = require "Module:scripts".getByCode(script_code)
			if script then
				categories:insert("[[Category:" .. script:getCategoryName() .. "]]")
			end
		end
	end
	
	if subpage ~= "documentation" and not page_exists("Module:" .. pagename .. "/testcases") then
		categories:insert("[[Category:Transliteration modules without a testcases subpage]]")
	end
	
	if not languageObjects[1] then
		return categories:concat()
	end
	
	local langs = Array(languageObjects)
		:sort(
			function(lang1, lang2)
				return lang1:getCode() < lang2:getCode()
			end)
		-- This will not error because languageObjects is not empty.
		:map(languageObjects[1].makeCategoryLink)
		:serial_comma_join()
	
	return "It is " .. ( codeInPagenameInList and "also" or "" ) ..
		" used to transliterate " .. langs .. "." .. categories:concat()
end

return export