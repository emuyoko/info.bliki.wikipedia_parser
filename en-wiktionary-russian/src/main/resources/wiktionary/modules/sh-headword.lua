local export = {}

local lang = require("Module:languages").getByCode("sh")


local function otherscript(inflections, args)
	local title = mw.title.getCurrentTitle()
	local sc = require("Module:scripts").findBestScript(title.subpageText, lang)
	
	local other_sc
	
	if sc:getCode() == "Latn" then
		other_sc = "Cyrl"
	elseif sc:getCode() == "Cyrl" then
		other_sc = "Latn"
	end
	
	other_sc = require("Module:scripts").getByCode(other_sc)
	local inflection = {label = other_sc:getCanonicalName() .. " spelling"}
	
	for i, head in ipairs(args["head"]) do
		if head == "" then
			head = title.subpageText
		end
		
		local tr = args["tr"][i]
		
		if not tr then
			tr = require("Module:sh-translit").tr(require("Module:links").remove_links(head), "sh", sc:getCode())
		end
		
		table.insert(inflection, {term = tr, sc = other_sc})
	end
	
	table.insert(inflections, inflection)
end


function export.basic(frame)
	local params = {
		["head"] = {list = true, default = ""},
		["tr"] = {list = true, allow_holes = true},
		}
	
	local args = require("Module:parameters").process(frame:getParent().args, params)
	
	local data = {lang = lang, pos_category = frame.args[1], categories = {}, heads = args["head"], genders = {}, inflections = {}}
	
	otherscript(data.inflections, args)
	
	return require("Module:headword").full_headword(data)
end


function export.adjective(frame)
	local params = {
		["comp"] = {},
		["def"] = {},
		["head"] = {list = true, default = ""},
		["tr"] = {list = true, allow_holes = true},
		}
	
	local args = require("Module:parameters").process(frame:getParent().args, params)
	
	local data = {lang = lang, pos_category = "adjectives", categories = {}, heads = args["head"], genders = {}, inflections = {}}
	
	if args["def"] then
		table.insert(data.inflections, {label = "definite", args["def"]})
	end
	
	if args["comp"] then
		table.insert(data.inflections, {label = "comparative", args["comp"]})
	end
	
	otherscript(data.inflections, args)
	
	return require("Module:headword").full_headword(data)
end


local gender_cats = {
	["m"] = "masculine",
	["f"] = "feminine",
	["n"] = "neuter",
	["m-p"] = "masculine",
	["f-p"] = "feminine",
	["n-p"] = "neuter",
}


function export.noun(frame)
	local params = {
		["g"] = {list = true, default = "?"},
		["head"] = {list = true, default = ""},
		["tr"] = {list = true, allow_holes = true},
		["m"] = {list = true},
		["f"] = {list = true},
		}
	
	local args = require("Module:parameters").process(frame:getParent().args, params)
	
	local data = {lang = lang, pos_category = "nouns", categories = {}, heads = args["head"], genders = args["g"], inflections = {}}
	
	for i, gender in ipairs(data.genders) do
		if gender_cats[gender] then
			table.insert(data.categories, lang:getCanonicalName() .. " " .. gender_cats[gender] .. " nouns")
		else
			data.genders[i] = "?"
		end
	end
	
	otherscript(data.inflections, args)
	
	-- Add feminine and masculine forms.
	for _, val in pairs { { "f", "feminine" }, { "m", "masculine" }} do
		local param_name, label = unpack(val)
		local forms = args[param_name]
		if forms[1] then
			forms.label = label
			table.insert(data.inflections, forms)
		end
	end
	
	return require("Module:headword").full_headword(data)
end


function export.propernoun(frame)
	local params = {
		["g"] = {list = true, default = "?"},
		["head"] = {list = true, default = ""},
		["tr"] = {list = true, allow_holes = true},
		}
	
	local args = require("Module:parameters").process(frame:getParent().args, params)
	
	local data = {lang = lang, pos_category = "proper nouns", categories = {}, heads = args["head"], genders = args["g"], inflections = {}}
	
	for i, gender in ipairs(data.genders) do
		if gender_cats[gender] then
			table.insert(data.categories, lang:getCanonicalName() .. " " .. gender_cats[gender] .. " nouns")
		else
			data.genders[i] = "?"
		end
	end
	
	otherscript(data.inflections, args)
	
	return require("Module:headword").full_headword(data)
end


function export.verb(frame)
	local params = {
		["a"] = {},
		["head"] = {list = true, default = ""},
		["tr"] = {list = true, allow_holes = true},
		}
	
	local args = require("Module:parameters").process(frame:getParent().args, params)
	
	local data = {lang = lang, pos_category = "verbs", categories = {}, heads = args["head"], genders = {}, inflections = {}}
	
	if args["a"] == "impf" or args["a"] == "pf" then
		table.insert(data.genders, args["a"])
	elseif args["a"] == "impf-pf" or args["a"] == "pf-impf" or args["a"] == "dual" or args["a"] == "ip" then
		table.insert(data.genders, "impf")
		table.insert(data.genders, "pf")
	else
		table.insert(data.genders, "?")
	end
	
	otherscript(data.inflections, args)
	
	return require("Module:headword").full_headword(data)
end


return export