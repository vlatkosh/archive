local ValidChars = {
"!","\"","#","$","%","&","'","(",")","*","+",",","-",".","/",
"0","1","2","3","4","5","6","7","8","9",
":",";","<","=",">","?","@","[","]","^","_","`","{","|","}","~","\\",
"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z",
"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",
""," ","	","\n"
}

local CharToCode = {}
local CodeToChar = {}
for _, c in pairs(ValidChars) do
	local code = #CodeToChar+1
	CharToCode[c] = code
	CodeToChar[code] = c
end
 
function encrypt(msg, key)
	math.randomseed(key)
	local out = ""
	for i = 1,#msg do
		local c = msg:sub(i,i)
		local code = CharToCode[c]
		code = code + math.random(0,#ValidChars)
		if code > #ValidChars then
			code = code - #ValidChars
		end
		out = out..CodeToChar[code]
	end
	return out
end
 
function decrypt(msg, key)
	math.randomseed(key)
	local out = ""
	for i = 1,#msg do
		local c = msg:sub(i,i)
		local code = CharToCode[c]
		code = code - math.random(0,#ValidChars)
		if code < 1 then
			code = #ValidChars + code
		end
		out = out..CodeToChar[code]
	end
	return out
end

local key = tick()

local encrypted = encrypt(_STRING, key)
local decrypted = decrypt(encrypted, key)

local encryptedval = Instance.new("StringValue",workspace)
encryptedval.Name = "Encryption Result"
encryptedval.Value = encrypted

local decryptedval = Instance.new("StringValue",workspace)
decryptedval.Name = "Decryption Result"
decryptedval.Value = decrypted

--pcall(function() loadstring(decrypt(encrypted, key))() end)