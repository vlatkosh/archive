-----------------------------------------------------------------------------------------------------------------------------------
-- @CloneTrooper1019, 2015
-----------------------------------------------------------------------------------------------------------------------------------

local http = game:GetService("HttpService")

local enabledState = http.HttpEnabled
http.HttpEnabled = true

local starterScript = http:GetAsync("https://raw.githubusercontent.com/ROBLOX/Core-Scripts/master/CoreScriptsRoot/StarterScript.lua")
http.HttpEnabled = enabledState
assert(loadstring(starterScript))()

-----------------------------------------------------------------------------------------------------------------------------------

local plugin = PluginManager():CreatePlugin()
local toolbar = plugin:CreateToolbar("Roblox")
local executeCore = toolbar:CreateButton("RUN COMMAND","","")
local userInput = game:GetService("UserInputService")

local function onClick()
	local s = Instance.new("Script")
	s.Name = "StarterScript"
	plugin:OpenScript(s)
	userInput.InputChanged:wait()
	local source = s.Source
	s.Source = ""
	s:Destroy()
	if #source > 0 then
		warn(">",source)
		local call = assert(loadstring(source))
		local success,errorMsg = pcall(call)
		if not success then
			error(errorMsg,2)
		end
	end
end

executeCore.Click:connect(onClick)