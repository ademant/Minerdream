
minerdream.has_value = function(tab, val)
-- test if val is in tab
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

local has_value=minerdream.has_value

-- read table "infile" where in "def" is defined, which cols are numbers and which belongs to a group
minerdream.import_csv = function(infile,def)
	local file = io.open(infile, "r")
	local outdata = {}
	-- reading header with column names
	local splitchar=","
	if def.seperator then
		splitchar=def.seperator
	end
	local as_numeric=false
	if def.as_numeric then
		as_numeric = true
	end
	local header = file:read():gsub("\r",""):split(splitchar,true)
	-- read each line, split in separat fields and stores in array
	-- by header the value is stored as numeric, in the group environment or as text
	for line in file:lines() do
		local attribs = line:gsub("\r",""):split(splitchar,true)
		local nrow={groups={}}
		for i,d in ipairs(attribs) do
			
			if d ~= "" then
				local th=header[i]
				local dsaved = false
				if def.col_num then
					if has_value(def.col_num,th) then
						nrow[th] = tonumber(d)
						dsaved = true
					end
				end
				if def.groups_num then
					if has_value(def.groups_num,th) then
						nrow.groups[th]=tonumber(d)
						dsaved = true
					end
				end
				if th == "name" then
					nrow[th] = d
				else
					if not dsaved then
						if as_numeric then
							nrow[th] = tonumber(d)
						else
							nrow[th]=d
						end
					end
				end
			end
		end
		if nrow.name then
			outdata[nrow.name] = nrow
		else
			outdata[#outdata+1] = nrow
		end
	end
	file:close()

	return outdata
end
