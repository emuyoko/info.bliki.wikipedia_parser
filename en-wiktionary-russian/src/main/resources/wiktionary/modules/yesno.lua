-- Function allowing for consistent treatment of boolean-like wikitext input.
-- It works similarly to the template {{yesno}}.
return function (val, default)
    val = type(val) == 'string' and val:lower() or val -- put in lower case
    if val == nil then
        return nil
    elseif val == false or val == 'no' or val == 'n' or val == 'false' or tonumber(val) == 0 then
        return false
    elseif val == true or val == 'yes' or val == 'y' or val == 'true' or tonumber(val) == 1 then
        return true
    else
        return default
    end
end