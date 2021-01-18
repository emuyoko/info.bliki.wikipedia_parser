local export = {}

local m_languages = require("Module:languages")

function export.categorize(lang, source, roots, ids, sort_key)
	local categories = {}
	
	for index, root in ipairs(roots) do
		table.insert(categories,
			lang:getCanonicalName() .. " terms derived from the " .. source:getCanonicalName() ..
					" root " .. root .. (ids[index] and " (" .. ids[index] .. ")" or ""))
	end
	
	return require("Module:utilities").format_categories(categories, lang, sort_key)
end

function export.show(frame)
	local params = {
		[1] = { required = true },
		[2] = { required = true },
		[3] = { required = true, list = true },
		["id"] = { list = true, allow_holes = true },
		["sort"] = {},
	}
	
	local args = require("Module:parameters").process(frame:getParent().args, params)
	
	local lang = m_languages.getByCode(args[1]) or m_languages.error(args[1], 1)
	local source = m_languages.getByCode(args[2]) or m_languages.error(args[2], 2)
	
	return export.categorize(lang, source, args[3], args.id, args.sort)
end

return export