
-- By Sukinahito
-- Slightly modified by Vlatkovski for his own reasons
-- Original: https://github.com/Sukinahito/SH-Snack-Break/blob/master/2015/4_May31_TableToString_Solution.lua


function tableToString(t)
	if type(t) == "table" then
		local function parse(object)
			local objectType = type(object)
			return
			(objectType == "table") and tableToString(object)						or
			(objectType == "function" or objectType == "userdata") and objectType	or
			(objectType == "string") and table.concat({"\"", object, "\""})			or
			(object)
		end
	
		local isArrayKey 		= {}
		local tableOutput 		= {}
		local tableOutputCount 	= 0
	
		for key, value in ipairs(t) do
			isArrayKey[key] 					= true
			tableOutput[tableOutputCount + 1] 	= parse(value)
			tableOutput[tableOutputCount + 2] 	= ", "
			tableOutputCount 					= tableOutputCount + 2
		end
	
		for key, value in next, t do
			if not isArrayKey[key] then
				tableOutput[tableOutputCount + 1] 	= "["
				tableOutput[tableOutputCount + 2] 	= parse(key)
				tableOutput[tableOutputCount + 3] 	= "] = "
				tableOutput[tableOutputCount + 4] 	= parse(value)
				tableOutput[tableOutputCount + 5] 	= ", "
				tableOutputCount 					= tableOutputCount + 5
			end
		end
	
		tableOutput[tableOutputCount] = nil
	
		local metatable = getmetatable(t)
		if metatable and tableToString(metatable) then
			return table.concat({"{", table.concat(tableOutput), "} <- ", tableToString(metatable)})
		end
		return table.concat({"{", table.concat(tableOutput), "}", })
	end
end


--------------------------------------------------------------------
--------------------------------------------------------------------


local examples = {
	{1, 2, 3}, -- list
	{a = 1, b = 2, c = 3}, -- dictionary
	{a = 0, 1, 2, 3}, -- mixed
	{function() end, newproxy and newproxy(), "string"}, -- functions, userdata, and strings
	setmetatable({a = 0}, {b = 1}) -- table with a metatable
}

for _, example in next, examples do
	if type(example) == "table" then
		print(tableToString(example))
	end
end

for _, value in next, getfenv() do
	if type(value) == "table" then
		print(tableToString(value))
	end
end