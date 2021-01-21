local m_links = require("Module:links")
local m_table = require("Module:table")
local m_pos = mw.loadData("Module:form of/pos")
local m_functions = require("Module:form of/functions")

local ulen = mw.ustring.len
local rsubn = mw.ustring.gsub
local rmatch = mw.ustring.match
local rsplit = mw.text.split

local export = {}

--[=[

This module implements the underlying processing of {{form of}},
{{inflection of}} and specific variants such as {{past participle of}}
and {{alternative spelling of}}. Most of the logic in this file is to
handle tags in {{inflection of}}. Other related files:

* [[Module:form of/templates]] contains the majority of the logic that
  implements the templates themselves.
* [[Module:form of/data]] is a data-only file containing information on
  the more common inflection tags, listing the tags, their shortcuts,
  the category they belong to (tense-aspect, case, gender, voice-valence,
  etc.), the appropriate glossary link and the wikidata ID.
* [[Module:form of/data2]] is a data-only file containing information on
  the less common inflection tags, in the same format as
  [[Module:form of/data]].
* [[Module:form of/cats]] is a data-only file listing the
  language-specific categories that are added when the appropriate
  combinations of tags are seen for a given language.
* [[Module:form of/pos]] is a data-only file listing the recognized
  parts of speech and their abbreviations, used for categorization.
  FIXME: This should be unified with the parts of speech listed in
  [[Module:links]].
* [[Module:form of/functions]] contains functions for use with
  [[Module:form of/data]] and [[Module:form of/cats]]. They are
  contained in this module because data-only modules can't contain
  code. The functions in this file are of two types:

  (1) Display handlers allow for customization of the display of
      multipart tags (see below). Currently there is only one
	  such handler, for handling multipart person tags such as
	  '1//2//3'.
  (2) Cat functions allow for more complex categorization logic,
      and are referred to by name in [[Module:form of/cats]].
	  Currently no such functions exist.

The following terminology is used in conjunction with {{inflection of}}:

* A TAG is a single grammatical item, as specified in a single numbered
  parameter of {{inflection of}}. Examples are 'masculine', 'nominative',
  or 'first-person'. Tags may be abbreviated, e.g. 'm' for 'masculine',
  'nom' for 'nominative', or '1' for 'first-person'. Such abbreviations
  are called SHORTCUTS, and some tags have multiple equivalent shortcuts
  (e.g. 'p' or 'pl' for 'plural'). The full, non-abbreviated form of
  a tag is called its CANONICAL FORM.
* The DISPLAY FORM of a tag is the way it's displayed to the user. Usually
  the displayed text of the tag is the same as its canonical form, and it
  normally functions as a link to a glossary entry explaining the tag.
  Usually the link is to an entry in [[Appendix:Glossary]], but sometimes
  the tag is linked to an individual dictionary entry or to a Wikipedia
  entry. Occasionally, the display text differs from the canonical form of
  the tag. An example is the tag 'comparative case', which has the display
  text read as simply 'comparative'. Normally, tags referring to cases don't
  have the word "case" in them, but in this case the tag 'comparative' was
  already used as a shortcut for the tag 'comparative degree', so the tag was
  named 'comparative case' to avoid clashing. A similar situation occurs
  with 'adverbial case' vs. the grammar tag 'adverbial' (as in 'adverbial
  participle').
* A TAG SET is an ordered list of tags, which together express a single
  inflection, for example, '1|s|pres|ind', which can be expanded to
  canonical-form tags as 'first-person|singular|present|indicative'.
  Multiple tag sets can be specified in a single call to {{inflection of}}
  by separating the individual tag sets with a semicolon, e.g.
  '1|s|pres|ind|;|2|s|imp', which specifies two tag sets, '1|s|pres|ind'
  as above and '2|s|imp' (in canonical form,
  'second-person|singular|imperative').
* A MULTIPART TAG is a tag that embeds multiple tags within it, such as
  'f//n' or 'nom//acc//voc'. These are used in the case of [[syncretism]],
  when the same form applies to multiple inflections. Examples are the
  Spanish present subjunctive, where the first-person and third-person
  singular have the same form (e.g. [[siga]] from [[seguir]] "to follow"),
  or Latin third-declension adjectives, where the dative and ablative
  plural of all genders have the same form (e.g. [[omnibus]] from [[omnis]]
  "all"). These would be expressed respectively as '1//3|s|pres|sub'
  and 'dat//abl|m//f//n|p', where the use of the multipart tag compactly
  encodes the syncretism and avoids the need to individually list out
  all of the inflections. Multipart tags currently display as a list
  separated by "and", ''dative and ablative'' or
  ''masculine, feminine and neuter'' where each individual word is linked
  appropriately. As a special case, multipart tags involving persons display
  specially; for example, the multipart tag ''1//2//3'' displays as
  ''first-, second- and third-person'', with the word "person" occurring
  only once.
* A TWO-LEVEL MULTIPART TAG is a special type of multipart tag that
  joins two or more tag sets instead of joining individual tags. The tags
  within the tag set are joined by a colon, e.g. '1:s//3:p', which is
  displayed as ''first-person singular and third-person plural'', e.g.
  for use with the form [[μέλλον]] of the verb [[μέλλω]] "to intend",
  which uses the tag set '1:s//3:p|impf|actv|indc|unaugmented' to express
  the syncretism between the first singular and third plural forms of the
  imperfect active indicative unaugmented conjugation. Two-level multipart
  tags should be used sparingly; if in doubt, list out the inflections
  separately.
* A MULTIPART TAG SHORTCUT is a shortcut that expands into a multipart
  tag, for example '123', which expands to the multipart tag '1//2//3'.
  Only the most common such combinations exist as shortcuts.
* A LIST TAG SHORTCUT is a special type of shortcut that expands to a list
  of tags instead of a single tag. For example, the shortcut '1s' expands to
  '1|s' (first-person singular). Only the most common such combinations
  exist as shortcuts.

]=]

-- version of rsubn() that discards all but the first return value
local function rsub(term, foo, bar)
	local retval = rsubn(term, foo, bar)
	return retval
end

-- FIXME! Change callers of this to directly call [[Module:string utilities]].

function export.ucfirst(text)
	return require("Module:string utilities").ucfirst(text)
end


function export.format_form_of(text, terminfo, posttext)
	local parts = {}
	table.insert(parts, "<span class='form-of-definition use-with-mention'>")
	table.insert(parts, text)
	if text ~= "" and terminfo then
		table.insert(parts, " ")
	end
	if terminfo then
		table.insert(parts, "<span class='form-of-definition-link'>")
		if type(terminfo) == "string" then
			table.insert(parts, terminfo)
		else
			table.insert(parts, m_links.full_link(terminfo, "term", false))
		end
		table.insert(parts, "</span>")
	end
	if posttext then
		table.insert(parts, posttext)
	end
	table.insert(parts, "</span>")
	return table.concat(parts)
end


-- Add tracking category for PAGE when called from {{inflection of}} or
-- similar TEMPLATE. The tracking category linked to is
-- [[Template:tracking/inflection of/PAGE]].
local function infl_track(page)
	require("Module:debug").track("inflection of/" ..
		-- avoid including links in pages (may cause error)
		page:gsub("%[", "("):gsub("%]", ")"):gsub("|", "!"))
end


local function is_link_or_html(tag)
	return tag:find("[[", nil, true) or tag:find("|", nil, true) or
		tag:find("<", nil, true)
end


-- Look up a tag (either a shortcut of any sort of a canonical long-form tag)
-- and return its expansion. The expansion will be a string unless the
-- shortcut is a list-tag shortcut such as "1s"; in that case, the expansion
-- will be a list. The caller must handle both cases. Only one level of
-- expansion happens; hence, "acc" expands to "accusative", "1s" expands to
-- {"1", "s"} (not to {"first", "singular"}) and "123" expands to "1//2//3".
-- The expansion will be the same as the passed-in tag in the following
-- circumstances:
--
-- 1. The tag is ";" (this is special-cased, and no lookup is done).
-- 2. The tag is a multipart tag such as "nom//acc" (this is special-cased,
--    and no lookup is done).
-- 3. The tag contains a raw link (this is special-cased, and no lookup is
--    done).
-- 4. The tag contains HTML (this is special-cased, and no lookup is done).
-- 5. The tag is already a canonical long-form tag.
-- 6. The tag is unrecognized.
--
-- This function first looks up in [[Module:form of/data]] (which includes
-- more common tags) and then (only if the tag is not recognized as a
-- shortcut or canonical tag, and is not of types 1-4 above) in
-- [[Module:form of/data2]].
--
-- If the expansion is a string and is different from the tag, track it if
-- DO_TRACK is true.
function export.lookup_shortcut(tag, do_track)
	-- If there is HTML or a link in the tag, return it directly; don't try
	-- to look it up, which will fail.
	if tag == ";" or tag:find("//", nil, true) or is_link_or_html(tag) then
		return tag
	end
	local m_data = mw.loadData("Module:form of/data")
	-- If this is a canonical long-form tag, just return it, and don't
	-- check for shortcuts (which will cause [[Module:form of/data2]] to be
	-- loaded).
	if m_data.tags[tag] then
		return tag
	end
	local expansion = m_data.shortcuts[tag]
	if not expansion then
		local m_data2 = mw.loadData("Module:form of/data2")
		expansion = m_data2.shortcuts[tag]
	end
	if not expansion then
		return tag
	end
	-- Maybe track the expansion if it's not the same as the raw tag.
	if do_track and expansion ~= tag and type(expansion) == "string" then
		infl_track("tag/" .. tag)
	end
	return expansion
end


-- Look up a normalized/canonicalized tag and return the data object
-- associated with it. If the tag isn't found, return nil. This first looks up
-- in [[Module:form of/data]] (which includes more common tags) and then in
-- [[Module:form of/data2]].
function export.lookup_tag(tag)
	local m_data = mw.loadData("Module:form of/data")
	local tagobj = m_data.tags[tag]
	if tagobj then
		return tagobj
	end
	local m_data2 = mw.loadData("Module:form of/data2")
	local tagobj2 = m_data2.tags[tag]
	if tagobj2 then
		return tagobj2
	end
	return nil
end


-- Normalize a single tag, which may be a shortcut but should not be a
-- multipart tag, a multipart-tag shortcut or a list-tag shortcut.
local function normalize_single_tag(tag, do_track)
	local expansion = export.lookup_shortcut(tag, do_track)
	if type(expansion) ~= "string" then
		error("Tag '" .. tag .. "' is a list-tag shortcut, which is not allowed here")
	end
	tag = expansion
	if not export.lookup_tag(tag) and do_track then
		-- If after all expansions and normalizations we don't recognize
		-- the canonical tag, track it.
		infl_track("unknown")
		infl_track("unknown/" .. tag)
	end
	return tag
end


-- Normalize a component of a multipart tag. This should not have any // in it,
-- but may join multiple individual tags with a colon, and may be a single
-- list-tag shortcut, which is treates as if colon-separated. If
-- RECOMBINE_TAGS isn't given, the return value may be a list of tags;
-- otherwise, it will always be a string, and multiple tags will be
-- represented as canonical-form tags joined by ":".
local function normalize_multipart_component(tag, recombine_tags, do_track)
	-- If there is HTML or a link in the tag, don't try to split on colon.
	-- A colon may legitimately occur in either one, and we don't want
	-- these things parsed. Note that we don't do this check before splitting
	-- on //, which we don't expect to occur in links or HTML; see comment
	-- in normalize_tag().
	if is_link_or_html(tag) then
		return tag
	end
	local components = rsplit(tag, ":", true)
	if #components == 1 then
		-- We allow list-tag shortcuts inside of multipart tags, e.g.
		-- '1s//3p'. Check for this now.
		tag = export.lookup_shortcut(tag, do_track)
		if type(tag) == "table" then
			-- We found a list-tag shortcut; treat as if colon-separated.
			components = tag
		else
			return normalize_single_tag(tag, do_track)
		end
	end
	local normtags = {}
	for _, component in ipairs(components) do
		if do_track then
			-- There are multiple components; track each of the individual
			-- raw tags.
			infl_track("tag/" .. component)
		end
		table.insert(normtags, normalize_single_tag(component, do_track))
	end

	if recombine_tags then
		return table.concat(normtags, ":")
	else
		return normtags
	end
end


-- Normalize a single tag. If RECOMBINE_TAGS isn't given, the return value
-- may be a list (in the case of multipart tags), which will contain nested
-- lists in the case of two-level multipart tags; otherwise, it will always
-- be a string, and multipart tags will be represented as canonical-form tags
-- joined by "//" and/or ":".
local function normalize_tag(tag, recombine_multitags, do_track)
	-- We don't check for links or HTML before splitting on //, which we
	-- don't expect to occur in links or HTML. Doing it this way allows for
	-- a tag like '{{lb|grc|Epic}}//{{lb|grc|Ionic}}' to function correctly
	-- (the template calls will be expanded before we process the tag, and
	-- will contain links and HTML). The only check we do is for a URL,
	-- which shouldn't normally occur, but might if the user tries to put
	-- an external link into the tag. URL's with // normally have the
	-- sequence ://, which should never normally occur when // and : are
	-- used in their normal ways.
	if tag:find("://", nil, true) then
		return tag
	end
	local split_tags = rsplit(tag, "//", true)
	if #split_tags == 1 then
		local retval = normalize_multipart_component(tag, recombine_multitags,
			do_track)
		if type(retval) == "table" then
			-- The user gave a tag like '1:s', i.e. with colon but without
			-- //. Allow this, but we need to return a nested list. Note,
			-- this will never happen when RECOMBINE_TAGS is given.
			return {retval}
		end
		return retval
	end
	local normtags = {}
	for _, single_tag in ipairs(split_tags) do
		if do_track then
			-- If the tag was a multipart tag, track each of individual raw tags.
			infl_track("tag/" .. single_tag)
		end
		table.insert(normtags, normalize_multipart_component(single_tag,
			recombine_multitags, do_track))
	end
	if recombine_multitags then
		return table.concat(normtags, "//")
	else
		return normtags
	end
end


-- Normalize a tag set (a list of tags) into a list of canonical-form tags
-- (which -- may be larger due to the possibility of list-tag shortcuts).
-- If RECOMBINE_TAGS isn't given, the return list may itself contains lists;
-- in particular, multipart tags will be represented as lists. Specifically,
-- the list will consist of the elements of the multipart tag, which will
-- either be canonical-form strings or (in the case of two-level multipart
-- tags) nested lists of canonical-form strings. For example, the multipart
-- tag ''nom//acc//voc'' will expand to
--   {"nominative", "accusative", "vocative"}
-- and the two-level multipart tag ''1:s//3:p'' will expand to
--   {{"first-person", "singular"}, {"third-person", "plural"}}.
-- If RECOMBINE_TAGS is given, multipart tags will be represented in string
-- form, i.e. as canonical-form tags joined by "//" and/or ":".
function export.normalize_tags(tags, recombine_multitags, do_track)
	-- We track usage of shortcuts, normalized forms and (in the case of
	-- multipart tags or list tags) intermediate forms. For example,
	-- if the tags 1s|mn|gen|indefinite are passed in, we track the following:
	-- [[Template:tracking/inflection of/tag/1s]]
	-- [[Template:tracking/inflection of/tag/1]]
	-- [[Template:tracking/inflection of/tag/s]]
	-- [[Template:tracking/inflection of/tag/first-person]]
	-- [[Template:tracking/inflection of/tag/singular]]
	-- [[Template:tracking/inflection of/tag/mn]]
	-- [[Template:tracking/inflection of/tag/m//n]]
	-- [[Template:tracking/inflection of/tag/m]]
	-- [[Template:tracking/inflection of/tag/n]]
	-- [[Template:tracking/inflection of/tag/masculine]]
	-- [[Template:tracking/inflection of/tag/neuter]]
	-- [[Template:tracking/inflection of/tag/gen]]
	-- [[Template:tracking/inflection of/tag/genitive]]
	-- [[Template:tracking/inflection of/tag/indefinite]]
	local ntags = {}
	for _, tag in ipairs(tags) do
		if do_track then
			-- Track the raw tag.
			infl_track("tag/" .. tag)
		end
		-- Expand the tag, which may generate a new tag (either a
		-- fully canonicalized tag, a multipart tag, or a list of tags).
		tag = export.lookup_shortcut(tag, do_track)
		if type(tag) == "table" then
			for _, t in ipairs(tag) do
				if do_track then
					-- If the tag expands to a list of raw tags, track each of
					-- those.
					infl_track("tag/" .. t)
				end
				table.insert(ntags, normalize_tag(t, recombine_multitags,
					do_track))
			end
		else
			table.insert(ntags, normalize_tag(tag, recombine_multitags,
				do_track))
		end
	end
	return ntags
end


function export.normalize_pos(pos)
	return m_pos[pos] or pos
end


-- Return the display form of a single canonical-form tag. The value
-- passed in must be a string (i.e. it cannot be a list describing a
-- multipart tag). To handle multipart tags, use get_tag_display_form().
local function get_single_tag_display_form(normtag)
	local data = export.lookup_tag(normtag)

	-- If the tag has a special display form, use it
	if data and data.display then
		normtag = data.display
	end

	-- If there is a nonempty glossary index, then show a link to it
	if data and data.glossary then
		if data.glossary_type == "wikt" then
			normtag = "[[" .. data.glossary .. "|" .. normtag .. "]]"
		elseif data.glossary_type == "wp" then
			normtag = "[[w:" .. data.glossary .. "|" .. normtag .. "]]"
		else
			normtag = "[[Appendix:Glossary#" .. mw.uri.anchorEncode(data.glossary) .. "|" .. normtag .. "]]"
		end
	end
	return normtag
end


-- Turn a canonicalized tag spec (which describes a single, possibly
-- multipart tag) into the displayed form. The tag spec may be a string
-- (a canonical-form tag), or a list of canonical-form tags (in the
-- case of a simple multipart tag), or a list of mixed canonical-form
-- tags and lists of such tags (in the case of a two-level multipart tag).
-- JOINER indicates how to join the parts of a multipart tag, and can
-- be either "and" ("foo and bar", or "foo, bar and baz" for 3 or more),
-- "slash" ("foo/bar"), "en-dash" ("foo–bar") or nil, which uses the
-- global default found in multipart_join_strategy() in
-- [[Module:form of/functions]].
function export.get_tag_display_form(tagspec, joiner)
	if type(tagspec) == "string" then
		return get_single_tag_display_form(tagspec)
	end
	-- We have a multipart tag. See if there's a display handler to
	-- display them specially.
	for _, handler in ipairs(m_functions.display_handlers) do
		local displayval = handler(tagspec, joiner)
		if displayval then
			return displayval
		end
	end
	-- No display handler.
	local displayed_tags = {}
	for _, first_level_tag in ipairs(tagspec) do
		if type(first_level_tag) == "string" then
			table.insert(displayed_tags, get_single_tag_display_form(first_level_tag))
		else
			-- A first-level element of a two-level multipart tag.
			-- Currently we just separate the individual components
			-- with spaces, but other ways are possible, e.g. using
			-- an underscore, colon, parens or braces.
			local components = {}
			for _, component in ipairs(first_level_tag) do
				table.insert(components, get_single_tag_display_form(component))
			end
			table.insert(displayed_tags, table.concat(components, " "))
		end
	end
	return m_functions.join_multiparts(displayed_tags, joiner)
end


function export.fetch_lang_categories(lang, tags, terminfo, POS)
	local m_cats = mw.loadData("Module:form of/cats")

	local categories = {}

	local normalized_tags = export.normalize_tags(tags, "recombine multitags")
	POS = export.normalize_pos(POS)

	local function make_function_table()
		return {
			lang=lang,
			tags=normalized_tags,
			term=term,
			p=POS
		}
	end

	local function check_condition(spec)
		if type(spec) == "boolean" then
			return spec
		elseif type(spec) ~= "table" then
			error("Wrong type of condition " .. spec .. ": " .. type(spec))
		end
		local predicate = spec[1]
		if predicate == "has" then
			return m_table.contains(normalized_tags, normalize_tag(spec[2])), 3
		elseif predicate == "hasall" then
			for _, tag in ipairs(spec[2]) do
				if not m_table.contains(normalized_tags, normalize_tag(tag)) then
					return false, 3
				end
			end
			return true, 3
		elseif predicate == "hasany" then
			for _, tag in ipairs(spec[2]) do
				if m_table.contains(normalized_tags, normalize_tag(tag)) then
					return true, 3
				end
			end
			return false, 3
		elseif predicate == "tags=" then
			local normalized_spec_tags = export.normalize_tags(spec[2],
				"recombine multitags")
			return m_table.deepEqualsList(normalized_tags, normalized_spec_tags), 3
		elseif predicate == "p=" then
			return POS == export.normalize_pos(spec[2]), 3
		elseif predicate == "pany" then
			for _, specpos in ipairs(spec[2]) do
				if POS == export.normalize_pos(specpos) then
					return true, 3
				end
			end
			return false, 3
		elseif predicate == "pexists" then
			return POS ~= nil, 2
		elseif predicate == "not" then
			local condval = check_condition(spec[2])
			return not condval, 3
		elseif predicate == "and" then
			local condval = check_condition(spec[2])
			if condval then
				condval = check_condition(spec[3])
			end
			return condval, 4
		elseif predicate == "or" then
			local condval = check_condition(spec[2])
			if not condval then
				condval = check_condition(spec[3])
			end
			return condval, 4
		elseif predication == "call" then
			local fn = m_functions.cat_functions[spec[2]]
			if not fn then
				error("No condition function named '" .. spec[2] .. "'")
			end
			return fn(make_function_table()), 3
		else
			error("Unrecognized predicate: " .. predicate)
		end
	end

	local function process_spec(spec)
		if not spec then
			return false
		elseif type(spec) == "string" then
			-- Substitute POS request with user-specified part of speech
			-- or default
			spec = rsub(spec, "<<p=(.-)>>", function(default)
				return POS or export.normalize_pos(default)
			end)
			table.insert(categories, lang:getCanonicalName() .. " " .. spec)
			return true
		elseif type(spec) ~= "table" then
			error("Wrong type of specification " .. spec .. ": " .. type(spec))
		end
		local predicate = spec[1]
		if predicate == "multi" then
			-- WARNING! #spec doesn't work for objects loaded from loadData()
			for i, sp in ipairs(spec) do
				if i > 1 then
					process_spec(sp)
				end
			end
			return true
		elseif predicate == "cond" then
			-- WARNING! #spec doesn't work for objects loaded from loadData()
			for i, sp in ipairs(spec) do
				if i > 1 and process_spec(sp) then
					return true
				end
			end
			return false
		elseif predicate == "call" then
			local fn = m_functions.cat_functions[spec[2]]
			if not fn then
				error("No spec function named '" .. spec[2] .. "'")
			end
			return process_spec(fn(make_function_table()))
		else
			local condval, ifspec = check_condition(spec)
			if condval then
				process_spec(spec[ifspec])
				return true
			else
				process_spec(spec[ifspec + 1])
				return false
			end
		end
	end

	local langspecs = m_cats[lang:getCode()]
	if langspecs then
		for _, spec in ipairs(langspecs) do
			process_spec(spec)
		end
	end
	if lang:getCode() ~= "und" then
		local langspecs = m_cats["und"]
		if langspecs then
			for _, spec in ipairs(langspecs) do
				process_spec(spec)
			end
		end
	end
	return categories
end


function export.tagged_inflections(tags, terminfo, notext, capfirst, posttext, joiner)
	local cur_infl = {}
	local inflections = {}

	local ntags = export.normalize_tags(tags, nil, "do-track")

	for i, tagspec in ipairs(ntags) do
		if tagspec == ";" then
			if #cur_infl > 0 then
				table.insert(inflections, table.concat(cur_infl))
			end

			cur_infl = {}
		else
			local to_insert = export.get_tag_display_form(tagspec, joiner)
			-- Maybe insert a space before inserting the display form
			-- of the tag. We insert a space if
			-- (a) we're not the first tag; and
			-- (b) the tag we're about to insert doesn't have the
			--     "no_space_on_left" property; and
			-- (c) the preceding tag doesn't have the "no_space_on_right"
			--     property.
			-- NOTE: We depend here on the fact that
			-- (1) all tags with either of the above properties set have the
			--     same display form as canonical form, and
			-- (2) all tags with either of the above properties set are
			--     single-character tags.
			-- The second property is an optimization to avoid looking up
			-- display forms resulting from multipart tags, which won't be
			-- found and which will trigger loading of [[Module:form of/data2]].
			-- If multichar punctuation is added in the future, it's ok to
			-- change the == 1 below to <= 2 or <= 3.
			--
			-- If the first property above fails to hold in the future, we
			-- need to track the canonical form of each tag (including the
			-- previous one) as well as the display form. This would also
			-- avoid the need for the == 1 check.
			if #cur_infl > 0 then
				local most_recent_tagobj = ulen(cur_infl[#cur_infl]) == 1 and
					export.lookup_tag(cur_infl[#cur_infl])
				local to_insert_tagobj = ulen(to_insert) == 1 and
					export.lookup_tag(to_insert)
				if (
					(not most_recent_tagobj or
					 not most_recent_tagobj.no_space_on_right) and
					(not to_insert_tagobj or
					 not to_insert_tagobj.no_space_on_left)
				) then
					table.insert(cur_infl, " ")
				end
			end
			table.insert(cur_infl, to_insert)
		end
	end

	if #cur_infl > 0 then
		table.insert(inflections, table.concat(cur_infl))
	end

	if #inflections == 1 then
		return export.format_form_of(
			notext and "" or ((capfirst and export.ucfirst(inflections[1]) or inflections[1]) ..
				(terminfo and " of" or "")),
			terminfo, posttext
		)
	else
		local link = export.format_form_of(
			notext and "" or ((capfirst and "Inflection" or "inflection") ..
				(terminfo and " of" or "")),
			terminfo, (posttext or "") .. ":"
		)
		return link .."\n## <span class='form-of-definition use-with-mention'>" .. table.concat(inflections, "</span>\n## <span class='form-of-definition use-with-mention'>") .. "</span>"
	end
end

function export.to_Wikidata_IDs(tags, skip_tags_without_ids)
	if type(tags) == "string" then
		tags = mw.text.split(tags, "|", true)
	end

	local ret = {}

	local function get_wikidata_id(tag)
		if tag == ";" and not skip_tags_without_ids then
			error("Semicolon is not supported for Wikidata IDs")
		else
			return nil
		end

		local data = export.lookup_tag(tag)

		if not data or not data.wikidata then
			if not skip_tags_without_ids then
				error("The tag \"" .. tag .. "\" does not have a Wikidata ID defined in [[Module:form of/data]]")
			else
				return nil
			end
		else
			return data.wikidata
		end
	end

	for i, tag in ipairs(export.normalize_tags(tags)) do
		if type(tag) == "table" then
			local ids = {}
			for _, onetag in ipairs(tag) do
				table.insert(ids, get_wikidata_id(onetag))
			end
			table.insert(ret, ids)
		else
			table.insert(ret, get_wikidata_id(tag))
		end
	end

	return ret
end


return export

-- For Vim, so we get 4-space tabs
-- vim: set ts=4 sw=4 noet: