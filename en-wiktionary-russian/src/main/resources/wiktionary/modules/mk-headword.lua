local export = {}
local pos_functions = {}

local lang = require("Module:languages").getByCode("mk")

local rfind = mw.ustring.find
local rsubn = mw.ustring.gsub

-- version of rsubn() that discards all but the first return value
local function rsub(term, foo, bar)
	local retval = rsubn(term, foo, bar)
	return retval
end

local function make_entry_name(head)
	return lang:makeEntryName(require("Module:links").remove_links(head))
end

local function track(page)
	require("Module:debug").track("mk-headword/" .. page)
	return true
end

-- The main entry point.
-- This is the only function that can be invoked from a template.
function export.show(frame)
	local NAMESPACE = mw.title.getCurrentTitle().nsText
	local PAGENAME = mw.title.getCurrentTitle().text

	local iparams = {
		[1] = {required = true},
		["def"] = {},
		["suff_type"] = {},
	}
	local iargs = require("Module:parameters").process(frame.args, iparams)
	local args = frame:getParent().args
	local poscat = iargs[1]
	local def = iargs.def
	local suff_type = iargs.suff_type
	local postype = nil
	if suff_type then
		postype = poscat .. '-' .. suff_type
	else
		postype = poscat
	end

	local data = {lang = lang, categories = {}, heads = {}, genders = {}, inflections = {}}

	if poscat == "suffixes" then
		table.insert(data.categories, "Macedonian " .. suff_type .. "-forming suffixes")
	end

	if pos_functions[postype] then
		local new_poscat = pos_functions[postype](postype, def, args, data)
		if new_poscat then
			poscat = new_poscat
		end
	end

	for _, head in ipairs(data.heads) do
		if rfind(head, "[́̀ѐѝ]") then
			track("accents")
		end
	end
	
	if not rfind(poscat, " forms?$") then
		for _, head in ipairs(data.heads) do
			-- Don't trigger on prefixes, suffixes or reflexive verbs.
			if (rfind(head, " ") or rfind(head, ".%-.")) and not rfind(head, "^се [^ ]+$") then
				table.insert(data.categories, "Macedonian multiword terms")
				break
			end
		end
	end

	data.pos_category = (NAMESPACE == "Reconstruction" and "reconstructed " or "") .. poscat
	
	return require("Module:headword").full_headword(data)
end

pos_functions["verbs"] = function(postype, def, args, data)
	local params = {
		["head"] = {list = true},
		[1] = {},
		["pf"] = {list = true},
		["impf"] = {list = true},
		["id"] = {},
	}

	local args = require("Module:parameters").process(args, params)
	local cats = {}
	data.heads = args.head
	data.id = args.id
	if args[1] == "pf" then
		data.genders = {"pf"}
		cats = {"perfective verbs"}
	elseif args[1] == "impf" then
		data.genders = {"impf"}
		cats = {"imperfective verbs"}
	elseif args[1] == "both" then
		data.genders = {"impf", "pf"}
		cats = {"biaspectual verbs", "imperfective verbs", "perfective verbs"}
	elseif args[1] == "?" or not args[1] then
		data.genders = {"?"}
	else
		error("Unrecognized aspect '" .. args[1] .. "'")
	end

	for _, cat in ipairs(cats) do
		table.insert(data.categories, "Macedonian " .. cat)
	end

	local pf = args.pf
	if #pf > 0 then
		pf.label = "perfective"
		table.insert(data.inflections, pf)
	end
	local impf = args.impf
	if #impf > 0 then
		impf.label = "imperfective"
		table.insert(data.inflections, impf)
	end
end

local function nouns(pos, def, args, data)
	local params = {
		["head"] = {list = true},
		[1] = {list = "g"},
		[2] = {list = "pl"},
		[3] = {alias_of = "dim"},
		["dim"] = {list = true},
		["m"] = {list = true},
		["f"] = {list = true},
		["adj"] = {list = true},
		["indecl"] = {type = "boolean"},
		["id"] = {},
	}
	local args = require("Module:parameters").process(args, params)
	data.heads = args.head
	local genders = {}
	local cat2 = nil
	for _, g in ipairs(args[1]) do
		if g == "m" or g == "m-p" then
			cat2 = "Macedonian masculine nouns"
		elseif g == "f" or g == "f-p" then
			cat2 = "Macedonian feminine nouns"
		elseif g == "n" or g == "n-p" then
			cat2 = "Macedonian neuter nouns"
		elseif g ~= "p" and g ~= "?" then
			error("Unrecognized gender: '" .. g .. "'")
		end
		if g == "m-p" or g == "f-p" or g == "n-p" or g == "p" then
			table.insert(data.categories, "Macedonian pluralia tantum")
		end
		table.insert(genders, g)
	end
	if #genders == 0 then
		genders = {"?"}
	end
	if cat2 then
		table.insert(data.categories, cat2)
	end
	if #genders > 1 then
		table.insert(data.categories, "Macedonian nouns with multiple genders")
	end
	data.genders = genders
	if args.indecl then
		table.insert(data.inflections, {label = "indeclinable"})
	end
	local pl = args[2]
	if #pl == 1 and pl[0] == "-" then
		table.insert(data.inflections, {label = "uncountable"})
		table.insert(data.categories, "Macedonian uncountable nouns")
	elseif #pl > 0 then
		pl.label = "plural"
		table.insert(data.inflections, pl)
	end
	local m = args.m
	if #m > 0 then
		m.label = "masculine"
		table.insert(data.inflections, m)
	end
	local f = args.f
	if #f > 0 then
		f.label = "feminine"
		table.insert(data.inflections, f)
	end
	local adj = args.adj
	if #adj > 0 then
		adj.label = "related adjective"
		table.insert(data.inflections, adj)
	end
	local dim = args.dim
	if #dim == 1 and dim[0] == "-" then
		table.insert(data.inflections, {label = "no diminutive"})
	elseif #dim > 0 then
		dim.label = "diminutive"
		table.insert(data.inflections, dim)
	end
	data.id = args.id
end

pos_functions["nouns"] = nouns
pos_functions["proper nouns"] = nouns

local function adverbs(pos, def, args, data)
	local params = {
		["head"] = {list = true},
		[1] = {list = "comp"},
		[2] = {list = "sup"},
		["id"] = {},
	}
	local args = require("Module:parameters").process(args, params)
	data.heads = args.head
	local comp = args[1]
	if comp[1] == "-" then
		table.insert(data.inflections, {label = "no comparative"})
	else
		local head
		if #data.heads > 0 then
			head = make_entry_name(data.heads[1])
		else
			head = mw.title.getCurrentTitle().text
		end
		if #comp == 0 then
			comp = {"по" .. head}
		end
		comp.label = "comparative"
		table.insert(data.inflections, comp)
		local sup = args[2]
		if #sup == 0 then
			sup = {"нај" .. head}
		end
		sup.label = "superlative"
		table.insert(data.inflections, sup)
	end
	data.id = args.id
end

pos_functions["adverbs"] = adverbs

local function adjectives(pos, def, args, data)
	local params = {
		["head"] = {list = true},
		[1] = {list = "comp"},
		[2] = {list = "sup"},
		["indecl"] = {type = "boolean"},
		["dim"] = {list = true},
		["adv"] = {list = true},
		["absn"] = {list = true},
		["id"] = {},
	}
	local args = require("Module:parameters").process(args, params)
	data.heads = args.head
	if args.indecl then
		table.insert(data.inflections, {label = "indeclinable"})
	end
	local comp = args[1]
	if comp[1] == "-" then
		table.insert(data.inflections, {label = "no comparative"})
	else
		local head
		if #data.heads > 0 then
			head = make_entry_name(data.heads[1])
		else
			head = mw.title.getCurrentTitle().text
		end
		if #comp == 0 then
			comp = {"по" .. head}
		end
		comp.label = "comparative"
		table.insert(data.inflections, comp)
		local sup = args[2]
		if #sup == 0 then
			sup = {"нај" .. head}
		end
		sup.label = "superlative"
		table.insert(data.inflections, sup)
	end
	local dim = args.dim
	if #dim > 0 then
		dim.label = "diminutive"
		table.insert(data.inflections, dim)
	end
	local adv = args.adv
	if #adv > 0 then
		adv.label = "adverb"
		table.insert(data.inflections, adv)
	end
	local absn = args.absn
	if #absn > 0 then
		absn.label = "abstract noun"
		table.insert(data.inflections, absn)
	end
	data.id = args.id
end

pos_functions["adjectives"] = adjectives
pos_functions["determiners"] = adjectives
pos_functions["pronouns"] = adjectives
pos_functions["suffixes-adjective"] = function(postype, def, args, data)
	return adjectives("suffixes", def, args, data)
end

pos_functions["numerals-adjective"] = function(postype, def, args, data)
	return adjectives("numerals", def, args, data)
end

pos_functions["participles"] = function(pos, def, args, data)
	local params = {
		["head"] = {list = true},
		[1] = {required = true, list = true, default = "aor"},
		["id"] = {},
	}
	local args = require("Module:parameters").process(args, params)
	data.heads = args.head
	data.id = args.id
	table.insert(data.categories, "Macedonian verb forms")
	for _, part in ipairs(args[1]) do
		if part == "adv" then
			table.insert(data.categories, "Macedonian adverbial participles")
		elseif part == "aor" then
			table.insert(data.categories, "Macedonian past active aorist participles")
		elseif part == "impf" then
			table.insert(data.categories, "Macedonian past active imperfect participles")
		elseif part == "pres" then
			table.insert(data.categories, "Macedonian present active participles")
		elseif part == "pass" or part == "ppp" then
			table.insert(data.categories, "Macedonian past passive participles")
		elseif part == "prespass" then
			table.insert(data.categories, "Macedonian present passive participles")
		else
			error("Unrecognized participle type '" .. part .. "': Should be adv, aor, impf, pres, pass or prespass")
		end
	end
end

pos_functions["phrases"] = function(postype, def, args, data)
	local params = {
		["head"] = {list = true, default = def},
		["id"] = {},
	}

	local args = require("Module:parameters").process(args, params)

	data.heads = args.head
	data.id = args.id
end

local function non_lemma_forms(postype, def, args, data)
	local params = {
		["head"] = {list = true, default = def},
		["g"] = {list = true},
		["id"] = {},
	}

	local args = require("Module:parameters").process(args, params)

	data.heads = args.head
	data.genders = args.g
	data.id = args.id
	if postype == "participle forms" or postype == "verbal nouns" then
		table.insert(data.categories, "Macedonian verb forms")
	elseif postype == "verbal noun forms" then
		table.insert(data.categories, "Macedonian verb forms")
		return "noun forms"
	end
end

pos_functions["noun forms"] = non_lemma_forms
pos_functions["proper noun forms"] = non_lemma_forms
pos_functions["pronoun forms"] = non_lemma_forms
pos_functions["verb forms"] = non_lemma_forms
pos_functions["verbal nouns"] = non_lemma_forms
pos_functions["verbal noun forms"] = non_lemma_forms
pos_functions["adjective forms"] = non_lemma_forms
pos_functions["participle forms"] = non_lemma_forms
pos_functions["determiner forms"] = non_lemma_forms
pos_functions["numeral forms"] = non_lemma_forms
pos_functions["suffix forms"] = non_lemma_forms

return export