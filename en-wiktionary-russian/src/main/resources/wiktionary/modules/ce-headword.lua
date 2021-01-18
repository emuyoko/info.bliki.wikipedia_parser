local export = {}
local lang = require('Module:languages').getByCode('ce')
function export.show(frame)
	local params = {
		[1] = {alias_of = 'head'},
		[3] = {alias_of = 'tr'},
		[2] = {alias_of = 'g'},
		[4] = {alias_of = 'erg'},
		[6] = {alias_of = 'pl'},
		['head'] = {list = true},
		['tr'] = {list = true},
		['g'] = {list = true, default = '?'},
		['erg'] = {list = true},
		['pl'] = {list = true},
}	local args = require('Module:parameters').process(frame:getParent().args,params)
	local data = {
		lang = lang,
		heads = args['head'],
		translits = args['tr'],
		genders = args['g'],
		inflections = {},
		pos_category = "nouns",
		categories = {}}
	if args['erg'][1] then
		args.erg.label = 'ergative'
		table.insert(data.inflections, args['erg'])
	end
	if args['pl'][1] then
		args.pl.label = 'plural'
		table.insert(data.inflections, args['pl'])
	end
	return require('Module:headword').full_headword(data)
end
return export