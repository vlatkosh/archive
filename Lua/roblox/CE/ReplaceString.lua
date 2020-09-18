function findAndReplaceString(string_in,string_out,ignore_length) 
	print("Starting...")
	if (not ignore_length) then 
		if (not(string_in and string_out and #string_in >= #string_out)) then 
			return print("Not recommended to override shorter string with a longer string"); 
		end 
	end 
	local bytes_in = {}; 
	local bytes_out = {}; 
	for i=1,(#string_in >= #string_out and #string_in or #string_out) do -- lazy to copy paste same loop for string_out so just looping both and inserting if possible 
		if (i <= #string_in) then 
			table.insert(bytes_in,string.format("%x", tonumber(string.byte(string.sub(string_in,i,i))))); 
		end 
		if (i <= #string_out) then 
			-- table.insert(bytes_out,'0x' .. string.format("%x", tonumber(string.byte(string.sub(string_out,i,i))))); 
			table.insert(bytes_out,tonumber(string.byte(string.sub(string_out,i,i)))); 
		end 
	end 
	local object = AOBScan(table.concat(bytes_in," ")); 
	if object then 
		for entry = 0, object.Count -1 do 
			writeBytes(object.getString(entry), unpack(bytes_out));
			print("Wrote!")
		end 
		object.destroy(); 
		return true 
	end 
	return false 
end 

string1 = "http://www.roblox.com/asset/?id=60354828"
string2 = "http://www.roblox.com/asset/?id=10998762"


replaceString(string1, string2, true);