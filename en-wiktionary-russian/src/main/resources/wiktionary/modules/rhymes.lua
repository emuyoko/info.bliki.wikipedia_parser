local export = {}

local function tag_rhyme(rhyme, lang)
	local formatted_rhyme, cat
	if lang:getCode() == "te" then
		formatted_rhyme = require("Module:script utilities").tag_text(rhyme, lang)
		cat = ""
	else
		formatted_rhyme, cat = require("Module:IPA").format_IPA(lang, rhyme, true)
	end
	return formatted_rhyme, cat
end

local function make_rhyme_link(lang, link_rhyme, display_rhyme)
	if not link_rhyme then
		return table.concat{"[[Rhymes:", lang:getCanonicalName(), "|", lang:getCanonicalName(), "]]"}
	else
		local formatted_rhyme, cat = tag_rhyme(display_rhyme or link_rhyme, lang)
		
		return table.concat{"[[Rhymes:", lang:getCanonicalName(), "/", link_rhyme, "|", formatted_rhyme, "]]", cat}
	end
end

function export.show_row(frame)
	local params = {
		[1] = {required = true},
		[2] = {required = true},
		[3] = {},
	}
	
	local args = frame.getParent and frame:getParent().args or frame
	
	if (not args[1] or args[1] == "") and mw.title.getCurrentTitle().nsText == "Template" then
		return '[[Rhymes:English/aɪmz|<span class="IPA">-aɪmz</span>]]'
	end
	
	local args = require("Module:parameters").process(args, params)
	local lang = require("Module:languages").getByCode(args[1]) or require("Module:languages").err(args[1], 1)
	
	return make_rhyme_link(lang, args[2], "-" .. args[2]) .. (args[3] and (" (''" .. args[3] .. "'')") or "")
end

function export.show(frame)
	local args = frame.getParent and frame:getParent().args or frame
	local compat = args["lang"]
	local offset = compat and 0 or 1
	
	local params = {
		[1 + offset] = {required = true, list = true},
		[compat and "lang" or 1] = {required = true},
	}
	
	if (not args[1 + offset] or args[1 + offset] == "") and mw.title.getCurrentTitle().nsText == "Template" then
		return 'Rhymes: [[Rhymes:English/aɪmz|<span class="IPA">-aɪmz</span>]]'
	end
	
	local args = require("Module:parameters").process(args, params)
	local lang = args[compat and "lang" or 1]
	local lang = require("Module:languages").getByCode(lang) or require("Module:languages").err(lang, compat and "lang" or 1)
	
	local links = {}
	for _, r in ipairs(args[1 + offset]) do
		table.insert(links, make_rhyme_link(lang, r, "-" .. r))
	end
	
	return "Rhymes: " .. table.concat(links, ", ")
end

-- {{rhymes nav}}
function export.show_nav(frame)
	-- Gather parameters
	local args = frame:getParent().args
	local lang = args[1] or (mw.title.getCurrentTitle().nsText == "Template" and "und") or error("Language code has not been specified. Please pass parameter 1 to the template.")
	lang = require("Module:languages").getByCode(lang) or require("Module:languages").err(lang, 1)
	
	local parts = {}
	local i = 2
	
	while args[i] do
		local part = args[i]; if part == "" then part = nil end
		table.insert(parts, part)
		i = i + 1
	end
	
	-- Create steps
	local steps = {"» [[Wiktionary:Rhymes|Rhymes]]", "» " .. make_rhyme_link(lang)}
	local categories = {}
	
	if #parts > 0 then
		local last = parts[#parts]
		parts[#parts] = nil
		local prefix = ""

		for i, part in ipairs(parts) do
			prefix = prefix .. part
			parts[i] = prefix
		end
		
		for _, part in ipairs(parts) do
			table.insert(steps, "» " .. make_rhyme_link(lang, part .. "-", "-" .. part .. "-"))
		end
		
		if last == "-" then
			table.insert(steps, "» " .. make_rhyme_link(lang, prefix, "-" .. prefix))
			table.insert(categories, "[[Category:" .. lang:getCanonicalName() .. " rhymes" .. (prefix == "" and "" or "/" .. prefix .. "-") .. "| ]]")
		elseif mw.title.getCurrentTitle().text == lang:getCanonicalName() .. "/" .. prefix .. last .. "-" then
			table.insert(steps, "» " .. make_rhyme_link(lang, prefix .. last .. "-", "-" .. prefix .. last .. "-"))
			table.insert(categories, "[[Category:" .. lang:getCanonicalName() .. " rhymes/" .. prefix .. last .. "-|-]]")
		else
			table.insert(steps, "» " .. make_rhyme_link(lang, prefix .. last, "-" .. prefix .. last))
			table.insert(categories, "[[Category:" .. lang:getCanonicalName() .. " rhymes" .. (prefix == "" and "" or "/" .. prefix .. "-") .. "|" .. last .. "]]")
		end
	elseif lang:getCode() ~= "und" then
		table.insert(categories, "[[Category:" .. lang:getCanonicalName() .. " rhymes| ]]")
	end
	
	frame:callParserFunction("DISPLAYTITLE",
		mw.title.getCurrentTitle().fullText:gsub(
			"/(.+)$",
			function (rhyme)
				return "/" .. tag_rhyme(rhyme, lang)
			end))
	
	return table.concat(steps, " ") .. table.concat(categories)
end

return export