local create = LoadLibrary("RbxUtility").Create
local gp = UDim.new; local gp2 = UDim2.new; local c3 = Color3.new; local v3 = Vector3.new
local function rgb(r,g,b) return c3(r/255, g/255, b/255) end

S_ = setmetatable({game = game;}, {
	__index = function(tab, key) if game:GetService(key) == nil then return "No such service named " end return game:GetService(key) end
})

create "ScreenGui" {
	Parent = game.Players.LocalPlayer.PlayerGui;
	Name = "IlluminatiGui";
	create "Frame" {
		Name = "Frame";
		Active = true;
		Draggable = true;
		BackgroundColor3 = c3(1,1,1);
		Position = gp2(1,-400,-1,595);
		Size = gp2(0.3,0,0.2,0);
		Style = Enum.FrameStyle.DropShadow;
		ZIndex = 1;
		create "TextButton" {
			Name = "ProbeButton";
			Modal = true;
			Position = gp2(0,0,0,0);
			Size = gp2(1,0,0.333,0);
			Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
			ZIndex = 2;
			Font = Enum.Font.SourceSans;
			FontSize = Enum.FontSize.Size24;
			Text = "Probe: OFF";
			TextColor3 = c3(1,1,1);
		};
		create "TextButton" {
			Name = "SoundButton";
			Modal = true;
			Position = gp2(0,0,0.333,0);
			Size = gp2(1,0,0.333,0);
			Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
			ZIndex = 2;
			Font = Enum.Font.SourceSans;
			FontSize = Enum.FontSize.Size24;
			Text = "Player Illuminati Song";
			TextColor3 = c3(1,1,1);
		};
		create "TextButton" {
			Name = "SmiteButton";
			Modal = true;
			Position = gp2(0,0,0.666,0);
			Size = gp2(1,0,0.333,0);
			Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
			ZIndex = 2;
			Font = Enum.Font.SourceSans;
			FontSize = Enum.FontSize.Size24;
			Text = "Smite: OFF";
			TextColor3 = c3(1,1,1);
		};
	};
};

local function GetAllChildren(obj)
	local Children = {}
	function vGetChildren(trg)
		for _,v in pairs(trg:GetChildren()) do
			table.insert(Children, v)
			vGetChildren(v)
		end
	end
	vGetChildren(obj)
	return Children
end
local function GetAllAssets(tbl)
	local Assets = {}
	function vGetAssets(trg)
		for _,v in pairs(trg) do
			if type(v) == "table" then
				vGetAssets(v)
			else
				table.insert(Assets, v)
			end
		end
	end
	vGetAssets(tbl)
	return Assets
end
local function LoadAssets(List)
	for _,v in pairs(GetAllAssets(List)) do
		S_.ContentProvider:Preload("rbxassetid://"..v)
	end
end
local getPlayer = function(Msg)
	local Me = game.Players.LocalPlayer
	Msg = string.lower(Msg)
	local Table = {}
	local Players = S_.Players:GetPlayers()
	if Msg == "me" then
		table.insert(Table, Me)
	elseif Msg == "all" or Msg == "" then
		for _,v in pairs(Players) do
			table.insert(Table, v)
		end
	elseif Msg == "others" then
		for _,v in pairs(Players) do
			if v.Name ~= Me.Name then
				table.insert(Table, v)
			end
		end
	elseif Msg == "nonveterans" or Msg == "nonvets" then
		for _,v in pairs(Players) do
			if v.AccountAge < 364 then
				table.insert(Table, v)
			end
		end
	elseif Msg == "veterans" or Msg == "vets" then
		for _,v in pairs(Players) do
			if v.AccountAge > 364 then
				table.insert(Table, v)
			end
		end
	elseif Msg == "random" then
		local p = Players[math.random(1,#Players)]
		table.insert(Table, p)
	elseif Msg == "friends" then
		for i,v in pairs(Players) do
			if Me:IsFriendsWith(v.userId) then
			   table.insert(Table, v)
			end  
		end
	elseif Msg == "nonfriends" then
		for i,v in pairs(Players) do
			if not Me:IsFriendsWith(v.userId) then
				table.insert(Table, v)
			end      
		end
	elseif Msg == "youngest" then
		local at = {}
		for i,v in pairs(Players) do
			table.insert(at,v.AccountAge)
		end
		local low = math.min(unpack(at))
		for i,v in pairs(Players) do
			if v.AccountAge == low then
				table.insert(Table, v)
			end
		end
	elseif Msg == "oldest" then
		local ot = {}
		for i,v in pairs(Players) do
			table.insert(ot,v.AccountAge)
		end
		local high = math.max(unpack(ot))
		for i,v in pairs(Players) do
			if v.AccountAge == high then
				table.insert(Table, v)
			end
		end	
	else
		for i,v in pairs(Players) do
			if string.sub(string.lower(v.Name),1,#Msg) == string.lower(Msg) then
				table.insert(Table, v)
			end
		end		
	end
	return Table
end

local me = S_.Players.LocalPlayer
local char = me.Character
local Mouse = me:GetMouse()
local cam = workspace.CurrentCamera
local Gui = me.PlayerGui.IlluminatiGui
local Frame = Gui.Frame
local ProbeButton = Frame.ProbeButton
local SoundButton = Frame.SoundButton
local SmiteButton = Frame.SmiteButton

local TeleportSounds = {138811664}
local Faces = {183055580, 170349568}
local IlluminatiMusic = {185993653, 145616154}
local Shirt = {146380950}
local Pants = {127159281}
local SmiteSound = {183973343}

local Probe = false
local CanSmite = false

LoadAssets({TeleportSounds, Faces, IlluminatiMusic, Shirt, Pants})
------------------------------------------------------
local Sounds = {
	Invisibility = function(parent)
		S_.SoundService.AmbientReverb = Enum.ReverbType.Quarry
		local sound = create "Sound" {
			Parent = parent;
			Name = "TeleportSound";
			Volume = 1;
			Pitch = 3;
			SoundId = "rbxassetid://"..tostring(TeleportSounds[1]);
			Archivable = false;
		};
		sound:Play()
		S_.Debris:AddItem(sound,0.4)
		wait(0.4)
		S_.SoundService.AmbientReverb = Enum.ReverbType.NoReverb
	end;
	Illuminati = function(parent)
		SetSoundProps = function(sound)
			sound.Parent = parent
			sound.Name = "IlluminatiSound"
			sound.Volume = 1
			sound.Pitch = 1
			sound.SoundId = "rbxassetid://"..tostring(IlluminatiMusic[2])
			sound.Archivable = false
			sound.Looped = true
		end
		S_.SoundService.AmbientReverb = Enum.ReverbType.Quarry
		SoundButton.MouseButton1Down:connect(function()
			if parent:FindFirstChild"IlluminatiSound" then
				local sound = parent:FindFirstChild"IlluminatiSound"
				SetSoundProps(sound)
			else
				local sound = parent:FindFirstChild"IlluminatiSound" or create "Sound" {}
				SetSoundProps(sound)
				sound:Play()
			end
		end)
	end
};

local function MakeInvisible(target)
	for _,v in pairs(GetAllChildren(target.Character)) do
		if v:IsA"BasePart" and v.Name~="HumanoidRootPart" then
			v.Transparency = 1
		elseif v:IsA"DataModelMesh" and v.Parent.Name~="Head" then
			v.Scale = v3()
		elseif v:IsA"FaceInstance" and v.Name~="face" then
			v.Transparency = 1;
		elseif v:IsA"ImageLabel" then
			v.ImageTransparency = 1;
		end
	end
end

local function MakeVisible(target)
	for _,v in pairs(GetAllChildren(target.Character)) do
		if v:IsA"BasePart" and v.Name~="HumanoidRootPart" then
			v.Transparency = 0
		elseif v:IsA"DataModelMesh" and v.Parent.Name~="Head" then
			v.Scale = v3(1,1,1)
		elseif v:IsA"FaceInstance" then
			v.Transparency = 0;
		elseif v:IsA"ImageLabel" then
			v.ImageTransparency = 0;
		end
	end
end

local function WarpTool(Char)
	local bin
	if Char:FindFirstChild"Warp" then
		bin = Char:FindFirstChild"Warp"
	else
		bin = create "HopperBin" {
			Parent = Char;
			Name = "Warp";
			[create.E "Selected"] = function(mouse)
				mouse.Button1Down:connect(function()
					if mouse.Target ~= nil then
						local hum = char.Humanoid
						local temphealth = hum.MaxHealth
						local torso = char.Torso
						local X = mouse.Hit.X; local X1 = math.rad(torso.Rotation.X)
						local Y = mouse.Hit.Y; local Y1 = math.rad(torso.Rotation.Y)
						local Z = mouse.Hit.Z; local Z1 = math.rad(torso.Rotation.Z)
						Sounds.Invisibility(workspace)
						MakeInvisible(Char.Parent)
						local e = create "Explosion" {
							Parent = char;
							Position = char.Torso.Position;
							DestroyJointRadiusPercent = 0;
							BlastRadius = 10;
							BlastPressure = 500000;
						}
						char.Torso.CFrame = CFrame.new(X, Y+7, Z) * CFrame.Angles(X1, Y1, Z1)
						Sounds.Invisibility(workspace)
						MakeVisible(Char.Parent)
					end
				end)
			end;
		};
	end
	return bin
end

local function Smite()
	Mouse.Button1Down:connect(function()
		if CanSmite == true then
			CanSmite = true
			if Mouse.Target ~= nil then
				local L = S_.Lighting; local ToD = L.TimeOfDay
				local T = Mouse.Hit.p
				local tSound = create "Sound" {
					Parent = workspace;
					SoundId = "rbxassetid://"..SmiteSound[1];
					Volume = 1;
					Pitch = 1.75;
					PlayOnRemove = true;
				};
				local BoltPart = create "Part" {
					Parent = workspace;
					BrickColor = BrickColor.new("New Yeller");
					Anchored = true;
					Locked = true;
					CanCollide = false;
					Size = Vector3.new(4, 1200, 4);
					Position = T - Vector3.new(0,10,0);
					create "CylinderMesh" {};
				};
				L.TimeOfDay = 12
				BoltPart.CanCollide = true
				tSound:Destroy()
				local EP = create "Explosion" {
					Parent = BoltPart;
					Position = T;
					BlastPressure = 500000;
					BlastRadius = 4;
				};
				wait(); L.TimeOfDay = 0; wait() L.TimeOfDay = ToD
				S_.Debris:AddItem(BoltPart,0.2);
				for i=0+0.1,20 do wait()
					EP:Clone()
					BoltPart.Transparency = i
				end
			end
		end
	end)
end

local function IlluminatiFace(char)
	if char then
		local head = char.Head.Size
		local Face = Faces[#Faces]
		local BBG_SIZE=head.X*1.25
		local STUD_VECTOR_1=head.Z/4
		local STUD_VECTOR_2=head.Z
		local bbg = create "BillboardGui" {
			Parent = char;
			Name = "IlluminatiFace";
			StudsOffset = v3(0,STUD_VECTOR_1,STUD_VECTOR_2);
			Size = gp2(BBG_SIZE, 0, BBG_SIZE);
			Adornee = char.Head;
			AlwaysOnTop = true;
			create "ImageLabel" {
				Name = "Image";
				BackgroundTransparency = 1;
				Image = "rbxassetid://"..tostring(Face);
				Size = gp2(1,0,1,0);
			};
		};
		delay(3,function()
			for _,v in pairs(GetAllChildren(char)) do
				if v:IsA"Hat" then v:Destroy() end
			end
		end)
		char.ChildAdded:connect(function(c)
			if c:IsA"Hat" then
				delay(1, function() c:Destroy() end)
			end
		end)
	end;
end

local function IlluminatiBody(char)
	if char then
		for _,v in pairs(GetAllChildren(char)) do
			if v:IsA"BasePart" then
				v.BrickColor = BrickColor.new"Pastel yellow"
			elseif v:IsA"Shirt" or v:IsA"Pants" or v.Name=="roblox" and v.Name~="Illuminati" then
				v:Destroy()
			end
		end
		local shirt = create "Shirt" {
			Parent = char;
			Name = "Illuminati";
			ShirtTemplate = "rbxassetid://"..tostring(Shirt[1]);
		};
		local pants = create "Pants" {
			Parent = char;
			Name = "Illuminati";
			PantsTemplate = "rbxassetid://"..tostring(Pants[1]);
		};
		Sounds.Illuminati(workspace)
	end
end

local function IlluminatiProbe()
	if workspace:FindFirstChild("IlluminatiProbe") then
		probemodel = workspace:FindFirstChild("IlluminatiProbe")
	else
		probemodel = create "Part" {
			Parent = workspace;
			Name = "IlluminatiProbe";
			Shape = Enum.PartType.Ball;
			Anchored = true;
		}
	end
	local bbg
	if probemodel:FindFirstChild("IlluminatiFace") then
		bbg = probemodel:FindFirstChild("IlluminatiFace")
	else
		bbg = create "BillboardGui" {
			Parent = probemodel;
			Name = "IlluminatiFace";
			StudsOffset = v3(0,probemodel.Size.Z/4,probemodel.Size.Z);
			Size = gp2(probemodel.Size.X*1.25, 0, probemodel.Size.X*1.25);
			Adornee = probemodel;
			AlwaysOnTop = true;
			create "ImageLabel" {
				Name = "Image";
				BackgroundTransparency = 1;
				Image = "rbxassetid://"..tostring(Faces[#Faces]);
				Size = gp2(1,0,1,0);
			};
		};
	end
	return probemodel
end

me.Chatted:connect(function(message)
	if message:sub(1,11) == "illuminati/" then
		local func = message:sub(12,13)
		if func == "1/" then
			local _T = getPlayer(message:sub(14))
			for _,v in pairs(_T) do IlluminatiFace(v.Character) end
		elseif func == "2/" then
			local _T = getPlayer(message:sub(14))
			for _,v in pairs(_T) do IlluminatiBody(v.Character) end
		elseif func == "3/" then
			local _T = getPlayer(message:sub(14))
			for _,v in pairs(_T) do IlluminatiFace(v.Character) IlluminatiBody(v.Character) end	
		end
	end
end)

WarpTool(me.Backpack)
wait(3)
IlluminatiFace(char)
IlluminatiBody(char)

SmiteButton.MouseButton1Down:connect(function()
	if CanSmite == true then
		CanSmite = false
		SmiteButton.Text = "Smite: OFF"

	else
		CanSmite = true
		SmiteButton.Text = "Smite: ON"
		
	end
end)

Smite()

ProbeButton.MouseButton1Down:connect(function()
	if Probe == false then
		Probe = true
		ProbeButton.Text = "Probe: ON"
		wait()
		me.Character = nil
	end
	workspace.CurrentCamera.Changed:connect(function(prop)
		if probemodel then
			local cam = workspace.CurrentCamera
			probemodel.CFrame = cam.Focus
		else
			probemodel = IlluminatiProbe()
		end
	end)
end)

while wait() do
	if workspace:FindFirstChild(me.Name) == nil then
		if Probe == false then
			Probe = true
			ProbeButton.Text = "Probe: ON"
			wait()
			me.Parent = nil
		end
		workspace.CurrentCamera.Changed:connect(function(prop)
			if probemodel then
				local cam = workspace.CurrentCamera
				probemodel.CFrame = cam.Focus
			else
				probemodel = IlluminatiProbe()
			end
		end)
	end
end