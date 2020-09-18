local create = LoadLibrary('RbxUtility').Create
local Me = game.Players.LocalPlayer
local MyName = Me.Name
local PlayerGui = Me.PlayerGui
local Mouse = Me:GetMouse()
local Camera = workspace.CurrentCamera
local gp = UDim2.new

local rgb = function(r, g, b)
	return Color3.new(r/255, g/255, b/255)
end
local rgbRandom = function()
	return rgb(math.random(255),math.random(255),math.random(255))
end
Services = setmetatable({game = game;}, {
__index=function(tab,key)if game:GetService(key)==nil then return'No such service named'end return game:GetService(key) end
})

create 'ScreenGui' {
	Parent = PlayerGui;
	Name = 'VladminGui';
	create 'Frame' {
		Name = 'DadFrame';
		Active = true;
		Draggable = true;
		Position = gp(0,0,0,320);
		Size = gp(0,310,0,125);
		BackgroundColor3 = Color3.new(1,1,1);
		BackgroundTransparency = 1;
		ZIndex = 1;
		Style = Enum.FrameStyle.Custom;
		create 'Frame' {
			Name = 'MainFrame';
			Active = false;
			Draggable = false;
			Position = gp(0,0,0,0);
			Size = gp(1,0,1,0);
			BackgroundColor3 = Color3.new(1,1,1);
			BackgroundTransparency = 0;
			ZIndex = 2;
			Style = Enum.FrameStyle.DropShadow;
			create 'Frame' {
				Name = 'ControlFrame';
				Active = false;
				Draggable = false;
				Position = gp(0,0,0.625,0);
				Size = gp(0.9,0,0.4,0);
				BackgroundColor3 = Color3.new(1,1,1);
				BackgroundTransparency = 1;
				ZIndex = 3;
				Style = Enum.FrameStyle.Custom;
				create 'TextButton' {
					Name = 'Clear';
					Active = true;
					Draggable = false;
					Position = gp(0,0,0,0);
					Size = gp(0.5,0,1,0);
					BackgroundColor3 = Color3.new(1,1,1);
					BackgroundTransparency = 1;
					ZIndex = 4;
					Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
					Font = Enum.Font.SourceSans;
					FontSize = Enum.FontSize.Size24;
					Text = 'Clear';
					TextColor3 = Color3.new(1,1,1);
					TextStrokeColor3 = rgb(127,127,127);
					TextStrokeTransparency = 0.5;				
				};
				create 'TextButton' {
					Name = 'Execute';
					Active = true;
					Draggable = false;
					Position = gp(0.5,0,0,0);
					Size = gp(0.5,0,1,0);
					BackgroundColor3 = Color3.new(1,1,1);
					BackgroundTransparency = 1;
					ZIndex = 4;
					Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
					Font = Enum.Font.SourceSans;
					FontSize = Enum.FontSize.Size24;
					Text = 'Execute';
					TextColor3 = Color3.new(1,1,1);
					TextStrokeColor3 = rgb(127,127,127);
					TextStrokeTransparency = 0.5;
				};
			};
			create 'TextBox' {
				Name = 'CmdBar';
				Active = true;
				Draggable = false;
				Position = gp(0,0,0.3,0);
				Size = gp(0.9,0,0.3,0);
				BackgroundColor3 = Color3.new(1,1,1);
				BackgroundTransparency = 0;
				BorderSizePixel = 0;
				ClearTextOnFocus = true;
				MultiLine = false;
				ZIndex = 4;
				Font = Enum.Font.Arial;
				FontSize = Enum.FontSize.Size14;
				Text = 'cmd';
				TextColor3 = rgb(27,42,53);
				TextScaled = true;
				TextStrokeColor3 = rgb(167,167,167);
				TextStrokeTransparency = 0.6;
				TextWrapped = true;
			};
			create 'TextLabel' {
				Name = 'LogLabel';
				Active = true;
				Draggable = false;
				Position = gp(0,0,0,0);
				Size = gp(0.9,0,0.275,0);
				BackgroundColor3 = rgb(84,139,221);
				BackgroundTransparency = 0;
				BorderSizePixel = 0;
				ZIndex = 4;
				Font = Enum.Font.SourceSans;
				FontSize = Enum.FontSize.Size18;
				Text = 'log';
				TextColor3 = Color3.new(1,1,1);
				TextScaled = true;
				TextStrokeColor3 = rgb(127,127,127);
				TextStrokeTransparency = 0.6;
				TextWrapped = true;
			};
		};
		create 'TextButton' {
			Name = 'ShowHide';
			Active = true;
			Draggable = false;
			Position = gp(0.9,0,0,0);
			Size = gp(0.1,0,1,0);
			BackgroundColor3 = Color3.new(1,1,1);
			BackgroundTransparency = 1;
			ZIndex = 5;
			Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
			Font = Enum.Font.SourceSans;
			FontSize = Enum.FontSize.Size48;
			Text = '<';
			TextColor3 = Color3.new(1,1,1);
			TextStrokeColor3 = rgb(127,127,127);
			TextStrokeTransparency = 0.5;
		};
	};
};
local Gui = PlayerGui.VladminGui
local DadFrame = Gui.DadFrame
local MainFrame = DadFrame.MainFrame
local CmdBar = MainFrame.CmdBar
local ControlFrame = MainFrame.ControlFrame
local ClearBtn = ControlFrame.Clear
local ExecuteBtn = ControlFrame.Execute
local ShowHideBtn = DadFrame.ShowHide
local LogLabel = MainFrame.LogLabel

------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------

local Admins = {'Player', 'Vlatkovski'}
local Vips = {'aleksar', 'Welerion', 'Gusmant1', 'n00bahkiin2', 'areno2002'}

local Banned = {}

local LoopKilling = {}
local MarkedAdmins = {}

local Settings = {
	Unremovable = true;
	CanLockOtherScripts = true;

	Commands = {
		CommandSeperator = ' '
	};
	CommandBar = {
		GetFocusButton = ";"
	};
	Hint = {
		LifeTime = 3;
	};
	Message = {
		LifeTime = 3;
	};
	Printing = {
		LogStuff = true;
		LogErrors = true;
		LOG_PREFIX = ('[LOG] ');
		ERROR_PREFIX = ('[ERROR] ');	
	};
	Sounds = {
		CheckForOtherSounds = true;
	};
	ShutDown = {
		Message = true;
		DefaultMessage = 'GET SHUTDOOOOWNED';
	};
	Seizure = {
		Animate = true;
	};
	Lag = {
		LagLimit = 30000;
		Text = 'GTFO YOU SCRUB LOL';
	};
}

local MusicSoundObj = create 'Sound' {
	Name = '';
	Parent = workspace;
	Pitch = 1;
	Volume = 1;
	Looped = true;
	Archivable = false;
}

local SeizureGui = create 'ScreenGui' {
	Parent = Gui;
	Name = 'SeizureGui';
	create 'Frame' {
		Name = 'Main';
		BackgroundTransparency = 1;
		Size = gp(1, 0, 1, 0);
		Position = gp(0, 0, 0, 0);	
		Visible = false;
		create 'ImageLabel' {
			Name = 'MainScreen';
			BackgroundTransparency = 0.1;
			Size = gp(1, 0, 1, 0);
			Position = gp(0, 0, 0, 0);
			ZIndex = 9;
		};
		create 'TextLabel' {
			Name = 'TextMsg';
			Size = gp(0, 400, 0, 40);
			Position = gp(0, 50, 0, 50);
			Draggable = true;
			Text = 'get rekt m8';
			TextScaled = true;
			TextWrapped = true;
			TextStrokeTransparency = 0;
			ZIndex = 10;
			Active = true;
			Draggable = true;
		};
	};
};

local OurThings = {Gui, DadFrame, MainFrame, CmdBar, ControlFrame, ClearBtn, ExecuteBtn, ShowHideBtn, MusicSoundObj}
local stn = Settings

for _,v in pairs(Admins) do table.insert(Vips, v) end
if stn.Unremovable then coroutine.resume(coroutine.create(function() script:Destroy(); end)) end
------------------------------------------------------------------------------------
--FUNCTIONS
local CHECK_VALUE = [[
	[ZPXOC [PZLXC[P]\]LQWEL''"""""As]\] [ZXLC A[S'xsd; z[pxc; [asd' w2[d;][	; [ZX]C;'A SD
	'ZXCZ XCZ[X"" ;C[Q]SPE 	'ZXC'ZXC/ [	p[as;1wq	` '	''Z[C ;X] QW]E[QW ` X'C Z/xc " ZXC'A[PS ;W "' '
	[==\[]\][\[]\][\[]\]
		l[palsdf[pzxlc [plas[p sl	 " 'asd[as;d [qw;e '"" [pasdl; a[psld "													pzlxc[zxpcPQL 	]==\]
	ZXC ZPXLC[ PQL[W E	"as" {}"	{ 	 
	qyqeporzx[pczx[vxcl			]\]asdz[pxclz[xpl asd
]]

local Log = function(msg)
	if (stn.Printing.LogStuff == true) then
		print(stn.Printing.LOG_PREFIX .. msg)
		LogLabel.Text = msg
		LogLabel.BackgroundColor3 = rgb(84,139,221)
	end
end

local logErr = function(msg)
	if (stn.Printing.LogErrors == true) then
		Log(stn.Printing.ERROR_PREFIX .. msg)
		LogLabel.Text = msg
		LogLabel.BackgroundColor3 = rgb(221,0,3)
	end
end

local tableFind = function(t, a) for _,v in pairs(t) do if a==v then return true else return false end end end

local FindCV = function(trg)
	local check = trg:FindFirstChild('Check')
	if check and check:IsA('StringValue') then
		if check.Value == CHECK_VALUE then return true else return false end
	else
		return false
	end
end

local CreateCV = function(trg)
	create 'StringValue' {
		Parent = trg;
		Name = 'Check';
		Value = CHECK_VALUE
	}
end

local RemoveCV = function(trg)
	if (FindCV(trg) == true) then
		trg:Remove()
	else
		logErr('Coudln\'t remove Check Value from: "'..trg..'"')
	end
end

local CheckIfOurs = function(Target,mode)
	if mode == '1' then
		FindCV(Target)
	else
		for _,v in pairs(Target) do
			FindCV(Target)
		end
	end
end

local MarkAsOurs = function(Target,mode)
	if mode == '1' then
		CreateCV(Target)
	else
		for _,v in pairs(Target) do
			CreateCV(v)
		end
	end
end

local RemoveAsOurs = function(Target,mode)
	if mode == '1' then
		if (CheckIfOurs(Target,mode) == true) then
			RemoveCV(Target)
		else
			logErr('Couldn\'t remove: "'..Target..'" from being ours, it isn\'t ours in the first place')
		end
	else
		for _,v in pairs(Target) do
			if (CheckIfOurs(v) == true) then
				RemoveCV(v)
			else
				logErr('Couldn\'t remove: "'..v..'" from being ours, it isn\'t ours in the first place')
			end
		end
	end
end

local LoadAssets = function(List)
	for _,v in pairs(List) do
		Services.ContentProvider:Preload('rbxassetid://'..v)
	end
end

local GetAllChildren = function(c, t)
	for _,v in pairs(c:GetChildren()) do
		pcall(function()
			GetAllChildren(v)
			table.insert(t, v)
		end)
	end
end

local RemoveSound = function(a) a:Pause() a.PlayOnRemove = false wait() a:Destroy() end

local IsCharNil = function(Plr) if Plr.Character == nil then return true else return false end end

local CleanSounds = function()
	if stn.Sounds.CheckForOtherSounds then
		local soundsRemoved = 0
		for _,v in pairs(workspace:GetChildren()) do
			if (v:IsA('Sound')) and (FindCV(v) == false) then
				RemoveSound(v)
				soundsRemoved = soundsRemoved + 1
			end
		end
		if soundsRemoved > 0 then
			Log('Removed '..soundsRemoved..' unknown Sounds from Workspace.')
		end
	end
end

local MakeSeizureGuiWork = function(SguiClone)
	local SGMainFrame = SguiClone:FindFirstChild('Main')
	local SGMainScreen = SGMainFrame:FindFirstChild('MainScreen')
	local SGText = SGMainFrame:FindFirstChild('TextMsg')
	SGMainFrame.Visible = true
	while true do
		for i = 1,25 do wait()
			local animate = function(trg) --credit to CloneTrooper1019 for finding this
				local path = "rbxasset://textures/water/normal_%02d.dds"
				SGMainScreen.Image = string.format(path,i)
			end
			local flash = function(trg)
				trg.BackgroundColor3 = rgbRandom()
				if trg:IsA('ImageLabel') then
					trg.ImageColor3 = Color3.new(math.random(255)/255,math.random(255)/255,math.random(255)/255)
				elseif trg:IsA('TextLabel') then
					trg.TextColor3 = Color3.new(math.random(255)/255,math.random(255)/255,math.random(255)/255)
					trg.TextStrokeColor3 = Color3.new(math.random(255)/255,math.random(255)/255,math.random(255)/255)
					trg.BorderColor3 = Color3.new(math.random(255)/255,math.random(255)/255,math.random(255)/255)
				end
			end
			flash(SGMainScreen); flash(SGText)
			if stn.Seizure.Animate then animate(SGMainScreen) end
		end
	end
end

local RealismMode = function()
	local player = game.Players.LocalPlayer
	c = workspace.CurrentCamera
	local rs = game:GetService('RunService')
	local char = player.Character or player.CharacterAdded:wait()
	while not char:IsDescendantOf(game) do wait(.75) end
	humanoid = char:WaitForChild('Humanoid')
	head = char:WaitForChild('Head')
	torso = char:WaitForChild('Torso')
	root = char:WaitForChild('HumanoidRootPart')
	rootJ = root:WaitForChild('RootJoint')
	local lhip = torso:WaitForChild('Left Hip')
	local lshoulder = torso:WaitForChild('Left Shoulder')
	local rshoulder = torso:WaitForChild('Right Shoulder')
	local rhip = torso:WaitForChild('Right Hip')
	local neck = torso:WaitForChild('Neck')
	waveScale = 0; scaleIncrement = 0.05; local pi2 = math.pi*2;
	local offStates = {'Jumping','PlatformStanding','Ragdoll','Seated','FallingDown','FreeFalling','GettingUp','Swimming'}
	local onStates = {'Running','Climbing'}
	active = false
	rs = game:GetService('RunService')
	local connections = {}
	RIG = {
		[rootJ] = {C0 = rootJ.C0 * CFrame.new(-1,0,0);C1 = rootJ.C1 * CFrame.new(-1,0,0);Factor = Vector3.new(-2/3,0,0);};
		[lhip] ={C0 = lhip.C0;C1 = lhip.C1;Factor = Vector3.new(0,0,2/3);};
		[rhip] ={C0 = rhip.C0;C1 = rhip.C1;Factor = Vector3.new(0,0,-2/3);};
		[rshoulder] ={C0 = rshoulder.C0;C1 = rshoulder.C1;Factor = Vector3.new(0,0,1/3);};
		[lshoulder] = {C0 = lshoulder.C0;C1 = lshoulder.C1;Factor = Vector3.new(0,0,-1/3);};
		[neck] ={C0 = neck.C0;C1 = neck.C1;Factor = Vector3.new(-2/3,0,0);};
	}
	for _,state in pairs(offStates) do table.insert(connections,humanoid[state]:connect(function() active = false end)) end
	for _,state in pairs(onStates) do table.insert(connections,humanoid[state]:connect(function(speed) active = (speed>1) end)) end
	c.Changed:connect(function ()
		if active then
			if waveScale < 0.5 then
				waveScale = math.min(0.5,waveScale+scaleIncrement)
			end
		else
			if waveScale > 0 then
				waveScale = math.max(0,waveScale-scaleIncrement)
			end
		end
		local abs,cos = math.abs,math.cos
		local camY = c.CoordinateFrame.lookVector.Y
		for joint,def in pairs(RIG) do
			joint.C0 = def.C0 * CFrame.Angles(def.Factor.X*camY,def.Factor.Y*camY,def.Factor.Z*camY)
			joint.C1 = def.C1
		end
		rootJ.C0 = rootJ.C0 * CFrame.new(0,camY,0)
		local headOffset = CFrame.new()
		if (c.Focus.p-c.CoordinateFrame.p).magnitude < 1 then
			c.FieldOfView = 100
			local dist = head.CFrame:toObjectSpace(torso.CFrame).p.magnitude
			headOffset = root.CFrame:toObjectSpace(head.CFrame) - Vector3.new(0,dist,0)
		else
			c.FieldOfView = 80
		end
		local t = cos(tick() * (math.pi*2.5))
		local bobble = CFrame.new((t/3)*waveScale,abs(t/5)*waveScale,0)
		humanoid.CameraOffset = (headOffset * bobble).p
	end)
	local function lock(part)
		if part and part:IsA('BasePart') then
			part.LocalTransparencyModifier = part.Transparency
			part.Changed:connect(function (property)
				part.LocalTransparencyModifier = part.Transparency
			end)
		end
	end
	for _,v in pairs(char:GetChildren()) do lock(v) end
	char.ChildAdded:connect(lock)
end

local CreateBase = function()
	for _,v in pairs(workspace:GetChildren()) do
		if v.Name:lower():find('base') and v:IsA('BasePart') then
			pcall(function() v:Destroy() end)
		end
	end
	local Base = create 'Part' {
		BrickColor = BrickColor.new('Dark green');
		CFrame = CFrame.new(0, 0.6, 0);
		Transparency = 0;
		Elasticity = 0.5;
		FormFactor = 'Custom';
		Material = 'Grass';
		CanCollide = true;
		Friction = 0.3;
		Size = Vector3.new(2044, 0, 2044);
		Archivable = true;
		Material = 'Grass';
		RotVelocity = Vector3.new(0, 0, 0);
		Reflectance = 0;
		Locked = true;
		Anchored = true;
		Name = 'Base';
		TopSurface = 'Smooth';
		BottomSurface = 'Inlet';
		Shape = 'Block';
		Parent = workspace;
	}
end

local LockOtherScripts = function()
	workspace.DescendantAdded:connect(function(d)
		if (stn.CanLockOtherScripts == true) then
			if d.className == 'Script' and (FindCV(d) == false) then
				d.Disabled = true
				d:Destroy()
			end
		end
	end)
	for _,v in pairs(workspace:GetChildren()) do  
		if v.className == 'Script' and (FindCV(v) == false) then
			v.Disabled = true
			v:Destroy()
		end
	end
end

local CleanWorkspace = function()
	for i,v in pairs(workspace:GetChildren()) do  
		if Services.Players:GetPlayerFromCharacter(v) == nil then  
			if v.className ~= 'Terrain' and v.className ~= 'Camera' then 
				if (FindCV(v) == false) then
					pcall(function() v:Destroy() end)
				end
			end 
		end
	end
	CreateBase()
	for i,v in pairs(workspace:GetChildren()) do
		if v:IsA('Terrain') then
			v:Clear()
		end
	end
end

local getPlayer = function(Msg)
	Msg = string.lower(Msg)
	local Me = game.Players.LocalPlayer
	local Players = Services.Players:GetPlayers()
	local Table = {}
	if Msg == 'me' then
		table.insert(Table, Me)
	elseif Msg == 'all' or Msg == '' then
		for _,v in pairs(Players) do
			table.insert(Table, v)
		end
	elseif Msg == 'others' then
		for _,v in pairs(Players) do
			if v.Name ~= Me.Name then
				table.insert(Table, v)
			end
		end
	elseif Msg == 'vips' then
		for _,plr in pairs(Players) do
			for _,vip in pairs(Vips) do
				if plr.Name == vip then
					table.insert(Table, plr)
				end
			end
		end
	elseif Msg == 'nonvips' then
		for _,plr in pairs(Players) do
			for _,vip in pairs(Vips) do
				if plr.Name ~= vip then
					table.insert(Table, plr)
				end
			end
		end
	elseif Msg == 'nonveterans' or Msg == 'nonvets' then
		for _,v in pairs(Players) do
			if v.AccountAge < 364 then
				table.insert(Table, v)
			end
		end
	elseif Msg == 'veterans' or Msg == 'vets' then
		for _,v in pairs(Players) do
			if v.AccountAge > 364 then
				table.insert(Table, v)
			end
		end
	elseif Msg == 'random' then
		local p = Players[math.random(1,#Players)]
		table.insert(Table, p)
	elseif Msg == 'friends' then
		for _,v in pairs(Players) do
			if Me:IsFriendsWith(v.userId) then
			   table.insert(Table, v)
			end  
		end
	elseif Msg == 'nonfriends' then
		for _,v in pairs(Players) do
			if not Me:IsFriendsWith(v.userId) then
				table.insert(Table, v)
			end      
		end
	elseif Msg == 'youngest' then
		local at = {}
		for _,v in pairs(Players) do
			table.insert(at,v.AccountAge)
		end
		local low = math.min(unpack(at))
		for _,v in pairs(Players) do
			if v.AccountAge == low then
				table.insert(Table, v)
			end
		end
	elseif Msg == 'oldest' then
		local ot = {}
		for _,v in pairs(Players) do
			table.insert(ot,v.AccountAge)
		end
		local high = math.max(unpack(ot))
		for _,v in pairs(Players) do
			if v.AccountAge == high then
				table.insert(Table, v)
			end
		end	
	else
		for _,v in pairs(Players) do
			if string.sub(string.lower(v.Name),1,#Msg) == string.lower(Msg) then
				table.insert(Table, v)
			end
		end		
	end
	return Table
end

local Debug = function()
	ypcall(function()
		for _,v in pairs(workspace:GetChildren()) do
			if v:IsA('Message') or v:IsA('Hint') then
				ypcall(function()
					v.Text = ''
					v:Destroy()
				end)
			end
			if v:IsA('Terrain') then
				v:Clear()
			end
		end
		local L = Services.Lighting
		L.GlobalShadows = true
		L.TimeOfDay = '14:00:00'
		L.Brightness = 1
		L.ShadowColor = rgb(178, 178, 183)
		L.Ambient = Color3.new(1,1,1) 
		L.ColorShift_Top = Color3.new(0, 0, 0)
		L.ColorShift_Bottom = Color3.new(0, 0, 0)
		L.OutdoorAmbient = Color3.new(0.6, 0.6, 0.6)
		L.FogStart = 0
		L.FogEnd = 100000
		L.FogColor = rgb(191, 191, 191)
		L:ClearAllChildren()
		Services.Teams:ClearAllChildren()
		for _,v in pairs(Services.Players:GetPlayers()) do
			v.Neutral = true 
		end
	end)
end;

local Rotate = function(p, X, Y ,Z)
	p.Rotation = p.Rotation + Vector3.new(X,Y,Z)
end

------------------------------------------------------------------------------------
--COMMANDS
local cmdsep = stn.Commands.CommandSeperator

LoadAssets({176399994,183973343})

local Commands = {

	Print = function(text)
		if (string.sub(text,1,6) == 'print'..cmdsep) then
			local msg = string.sub(text,7)
			Log(msg)
		end
	end;
	Hint = function(text)
		if (string.sub(text,1,2) == 'h ') then
			local Message = string.sub(text,3)
			local HintLifeTime = stn.Hint.LifeTime
			local hint = create 'Hint' {
				Parent = workspace;
				Name = 'Hint from Vladmin';
				Text = Message;
			}
			MarkAsOurs(hint,'1')
			Log('Created a Hint with text: "'..Message..'"')
			Services.Debris:AddItem(hint, HintLifeTime)
		end
	end;
	Message = function(text)
		if (string.sub(text,1,2) == 'm ') then
			local Message = string.sub(text,3)
			local HintLifeTime = stn.Message.LifeTime
			local msg = create 'Message' {
				Parent = workspace;
				Name = 'Message from Vladmin';
				Text = Message;
			}
			MarkAsOurs(msg,'1')
			Log('Created a Message with text: "'..Message..'"')
			Services.Debris:AddItem(msg, HintLifeTime)
		end
	end;
	Kick = function(text)
		if (string.sub(text,1,5) == 'kick'..cmdsep) then
			local _T = string.sub(text,6)
			local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v then
					pcall(function() v:Destroy() end)
					Log('Kicked: "'..v.Name..'"')
				end
			end
		end
	end;
	Ban = function(text)
		if (string.sub(text,1,4) == 'ban'..cmdsep) then
			local _T = string.sub(text,5)
			local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				table.insert(Banned, v.Name)
				Log('Banned: "'..v.Name..'"')
				if v then pcall(function() v:Destroy() end) end
			end
		end
	end;
	Kill = function(text)
		if (string.sub(text,1,5) == 'kill'..cmdsep) then
			local _T = string.sub(text,6)
			local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v and v.Character.Torso:FindFirstChild('Neck') ~= nil then
					pcall(function() v.Character:BreakJoints() end)
					Log('Killed: "'..v.Name..'"')
				elseif (IsCharNil(v) == true) then
					logErr('Couldn\'t kill: "'..v.Name..'", their character is Nil')
				end
			end
		end
	end;
	Heal = function(text)
		if (string.sub(text,1,5) == 'heal'..cmdsep) then
			local _T = string.sub(text,6)
			local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v and v.Character:FindFirstChild('Humanoid') ~= nil then
					local hum = v.Character.Humanoid
					pcall(function() hum.Health = hum.MaxHealth end)
					Log('Healed: "'..v.Name..'"')
				elseif (IsCharNil(v) == true) then
					logErr('Couldn\'t heal: "'..v.Name..'", their character is Nil')
				end
			end
		end
	end;
	God = function(text)
		if (string.sub(text,1,4) == 'god'..cmdsep) then
			local _T = string.sub(text,5)
			local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v and v.Character then
					local hum = v.Character.Humanoid
					hum.MaxHealth = math.huge
					pcall(function() hum.Health = hum.MaxHealth end)
					Log('Godded: "'..v.Name..'"')
				elseif (IsCharNil(v) == true) then
					logErr('Couldn\'t god: "'..v.Name..'", their character is Nil')
				end
			end
		end
	end;
	UnGod = function(text)
		if (string.sub(text,1,6) == 'ungod'..cmdsep) then
			local _T = string.sub(text,7); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v and v.Character:FindFirstChild('Humanoid') ~= nil then
					local hum = v.Character.Humanoid
					hum.MaxHealth = 100
					hum.Health = hum.MaxHealth
					Log('UnGodded: "'..v.Name..'"')
				elseif (IsCharNil(v) == true) then
					logErr('Couldn\'t ungod: "'..v.Name..'", their character is Nil')
				end
			end
		end
	end;
	FF = function(text)
		if (string.sub(text,1,3) == 'ff'..cmdsep) then
			local _T = string.sub(text,4); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v and v.Character then
					pcall(function()
						local ff = create 'ForceField' {
							Parent = v.Character;
						}
					end)
					Log('Gave FF to: "'..v.Name..'"')
				elseif (IsCharNil(v) == true) then
					logErr('Couldn\'t give FF to: "'..v.Name..'", their character is Nil')
				end
			end
		end
	end;
	UnFF = function(text)
		if (string.sub(text,1,5) == 'unff'..cmdsep) then
			local _T = string.sub(text,6); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v and v.Character then
					for _,v in pairs(v.Character:GetChildren()) do
						if v:IsA('ForceField') then
							pcall(function() v:Destroy() end)
						end
					end
					Log('Removed FFs from: "'..v.Name..'"')
				elseif (IsCharNil(v) == true) then
					logErr('Couldn\'t remove FFs from: "'..v.Name..'", their character is Nil')
				end
			end
		end
	end;
	Explode = function(text)
		if (string.sub(text,1,8) == 'explode'..cmdsep) then
			local _T = string.sub(text,9); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v and v.Character then
					pcall(function()
						expl = create 'Explosion' {
							Parent = workspace;
							Position = v.Character.Torso.Position;
							BlastPressure = 5000000;
							BlastRadius = 4;
						}
					end)
					Log('Exploded: "'..v.Name..'", BlastPressure: '..expl.BlastPressure..', BlastRadius: '..expl.BlastRadius)
				elseif (IsCharNil(v) == true) then
					logErr('Couldn\'t explode: "'..v.Name..'", their character is nil')
				end
			end
		end
	end;
	CrashShutdown = function(text)
		if (string.sub(text,1,8) == 'shutdown') then
			local Msg = string.sub(text,9)
			if stn.ShutDown.Message then
				local h = create 'Hint' {
					Parent = workspace
				}
				if Msg then 
					h.Text = Msg
				else
					h.Text = stn.ShutDown.DefaultMessage
				end
			end
			Log('SHUTTING DOWN THE GAME, LOL')
			wait(2)
			workspace:GetChildren().Name =
			string.find(string.rep("a", 2^20),string.rep(".?", 2^20))
		end
	end;
	Music = function(text)
		local s = MusicSoundObj
		local musicsep = '/'
		if (string.sub(text,1,2) == 'm'..musicsep) then
			CleanSounds()
			local text = string.sub(text,3)
			if (string.sub(text,1,5) == 'play'..cmdsep) then
				local id = string.sub(text,6)
				if (s.IsPaused) and (s.IsPlaying == false) then
					s.SoundId = ('rbxassetid://'..id)
					ypcall(s:Play())
					Log('Played music with ID: '..id..', Pitch: '..s.Pitch..', Volume: '..s.Volume)
				end
			elseif (string.sub(text,1,4) == 'play') then
				if (s.IsPaused) and (s.IsPlaying) then
					ypcall(s:Play())
					Log('Resumed playing music')
				end
			elseif (string.sub(text,1,4) == 'stop') then
				if (s.IsPlaying) then
					s:Stop()
					s.SoundId = ''
					Log('Stopped music')
				end
			elseif (string.sub(text,1,5) == 'pause') then
				if (s.IsPaused == false) and (s.IsPlaying) then
					pcall(s:Pause())
					Log('Paused music')
				end
			elseif (string.sub(text,1,6) == 'pitch'..cmdsep) then
				local p = string.sub(text,7)
				pcall(function() s.Pitch = tonumber(p) end)
				Log('Set music Pitch to: '..s.Pitch)
			elseif (string.sub(text,1,7) == 'volume'..cmdsep) then
				local v = string.sub(text,8)
				s.Volume = tonumber(v)
				Log('Set music Volume to: '..s.Pitch)
			end
		end
	end;
	AddAdmin = function(text)
		if (string.sub(text,1,9) == 'addadmin'..cmdsep) then
			local _T = string.sub(text,10); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if (tableFind(Admins, v.Name) == false) then
					if v then
						pcall(function() script:Clone().Parent = v.Backpack end)
					end
					table.insert(Admins, v.Name)
					Log('Added: "'..v.Name..'" to Admins')
				else
					if v then
						logErr('Couldn\'t add: "'..v.Name..'" to Admins, player is already Admin')
					end
				end
			end
		end
	end;
	RemoveAdmin = function(text)
		if (string.sub(text,1,12) == 'removeadmin'..cmdsep) then
			local _T = string.sub(text,13); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if (tableFind(Admins, v.Name) == true) then
					table.remove(Admins,#v.Name)
					Log('Removed: "'..v.Name..'" from Admins')
				else
					if v then
						logErr('Couldn\'t remove: "'..v.Name..'" from Admins, player is not Admin')
					end
				end
			end
		end
	end;
	AddVip = function(text)
		if (string.sub(text,1,7) == 'addvip'..cmdsep) then
			local _T = string.sub(text,8); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if (tableFind(Vips, v.Name) == false) then
					table.insert(Vips, v.Name)
					Log('Added: "'..v.Name..'" to Vips')
				else
					if v then
						logErr('Couldn\'t add: "'..v.Name..'" from Vips, player is already Vip')
					end
				end
			end
		end
	end;
	GiveSeizure = function(text)
		if (string.sub(text,1,8) == 'seizure'..cmdsep) then
			local _T = string.sub(text,9); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v and v.PlayerGui then
					if v.PlayerGui:FindFirstChild(SeizureGui.Name) then
						logErr('Failed to give Gui to: "'..v.Name..'", person already has Gui')
					else
						local SeizureGuiClone = SeizureGui:Clone()
						for _,c in pairs(v:GetChildren()) do
							if c.ClassName == 'PlayerGui' then
								SeizureGuiClone.Parent = c
								pcall(MakeSeizureGuiWork(SeizureGuiClone))
								Log('Gave SeizureGui to: "'..v.Name..'"')
							end
						end
					end
				elseif (IsCharNil(v) == true) then
					logErr('Couldn\'t Seizure: "'..v.Name..'", their character is nil')
				end
			end
		end
	end;
	CreateBase = function(text)
		if (string.sub(text,1,4) == 'base') then
			pcall(CreateBase())
			Log('Created base')
		end
	end;
	CleanWorkspace = function(text)
		if (string.sub(text,1,5) == 'clean') then
			pcall(CleanSounds())
			pcall(CleanWorkspace())
			Log('Cleaned Workspace')
		end
	end;
	LockOtherScripts = function(text)
		if (string.sub(text,1,3) == 'LoS') then
			if (stn.CanLockOtherScripts == true) then
				pcall(LockOtherScripts())
				Log('Locked other Scripts from working')
			end
		end
	end;
	FullClean = function(text)
		if (string.sub(text,1,9) == 'fullclean') then
			local Child = {}
			local Exceptions = {'Backpack','PlayerGui','StarterGear','SBGUI','HealthGUI','Output GUI'}
			for _,v in pairs(game:GetChildren()) do
				pcall(GetAllChildren(v, Child))
			end
			for _,v in pairs(Child) do
				for _,vv in pairs(Exceptions) do
					if not v:IsA('Player') and v.Name == vv then
						pcall(function() v:Destroy() end)
					end
				end
			end
			pcall(CleanWorkspace())
			for _,v in pairs(Services.Players:GetPlayers()) do
				--v:LoadCharacter()
			end
			Log('Fully Cleaned the Game')
		end
	end;
	LoopKill = function(text)
		if (string.sub(text,1,9) == 'loopkill'..cmdsep) then
			local _T = string.sub(text,10); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v and v.Character:FindFirstChild('Humanoid') ~= nil then
					table.insert(LoopKilling, v.Name)
					Log('Started loopkilling: "'..v.Name..'"')
					Services.RunService.RenderStepped:connect(function()
						for _,vv in pairs(LoopKilling) do
							if v.Name == vv then pcall(function() v.Character:BreakJoints() end) end
						end
					end)
				elseif (IsCharNil(v) == true) then
					logErr('Couldn\'t loopkill: "'..v.Name..'", their character is nil')
				end
			end
		end
	end;
	UnLoopKill = function(text)
		if (string.sub(text,1,11) == 'unloopkill'..cmdsep) then
			local _T = string.sub(text,12); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v and v.Character:FindFirstChild('Humanoid') ~= nil then
					for _,vv in pairs(LoopKilling) do
						if v.Name == vv then
							table.remove(LoopKilling,#v)
						end
					end
					Log('Stopped loopkilling: "'..v.Name..'"')
				elseif (IsCharNil(v) == true) then
					logErr('Couldn\'t stop loopkilling: "'..v.Name..'", their character is nil')
				end
			end
		end
	end;
	Pad = function(text)
		if (string.sub(text,1,4) == 'pad'..cmdsep) then
			local _T = string.sub(text,5); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v and v.Character:FindFirstChild('Humanoid') ~= nil then
					local char = v.Character
					local hum = char:FindFirstChild('Humanoid')
					local torso = char:FindFirstChild('Torso')
					local pad = create 'Part' {
						Parent = char;
						Name = 'VlatPad';
						CanCollide = true; Anchored = true;
						Transparency = 0;
						Material = Enum.Material.Pebble;
						Size = Vector3.new(.2, 5, 5);
						create 'BodyGyro' {};
						create 'SpecialMesh' {
							MeshType = Enum.MeshType.Cylinder;
						};
					}
					MarkAsOurs(pad,'1')
					Services.RunService.RenderStepped:connect(function()
						local X = torso.CFrame.X; local Y = torso.CFrame.Y; local Z = torso.CFrame.Z
						pad.CFrame = CFrame.new(X, Y - 3.485, Z) * CFrame.Angles(0,0,math.rad(90))
						pad.BrickColor = torso.BrickColor;
					end)
					Log('Padded: "'..v.Name..'"')
				elseif (IsCharNil(v) == true) then
					logErr('Couldn\'t pad: "'..v.Name..'", their character is nil')
				end
			end
		end
	end;
	UnPad = function(text)
		if (string.sub(text,1,6) == 'unpad'..cmdsep) then
			local _T = string.sub(text,7); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v and v.Character.Torso:FindFirstChild('Neck') ~= nil then
					local vlatpad = v.Character:FindFirstChild('VlatPad')
					pcall(function()
						if vlatpad then
							vlatpad:Destroy()
							Log('UnPadded: "'..v.Name..'"')
						else 
							logErr('Couldn\'t find VlatPad')
						end
					end)
				elseif (IsCharNil(v) == true) then
					logErr('Couldn\'t unpad: "'..v.Name..'", their character is nil')
				end
			end
		end
	end;
	SetTime = function(text)
		if (string.sub(text,1,5) == 'time'..cmdsep) then
			local theTime = string.sub(text,6)
			pcall(function() Services.Lighting.TimeOfDay = theTime end)
			Log('Set TimeOfDay to: '..theTime)
		end
	end;
	Debug = function(text)
		if (string.sub(text,1,5) == 'debug') then
			Debug()
			Log('Debugged')
		end
	end;
	Smite = function(text)
		local RotateThing = false
		if (string.sub(text,1,6) == 'smite'..cmdsep) then
			_T = string.sub(text,7); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v and v.Character.Torso:FindFirstChild('Neck') ~= nil then
					Log('Going to Smite: "'..v.Name..'"')
					local L = Services.Lighting;
					local T = v.Character.Torso;
					local ToD = L.TimeOfDay
					local tSound = create 'Sound' {
						Parent = workspace;
						SoundId = 'rbxassetid://183973343';
						Volume = 1;
						Pitch = 1.75;
						PlayOnRemove = true;
					};
					if RotateThing then
						RotatePart = create 'Part' {
							Parent = workspace;
							BrickColor = BrickColor.new('New Yeller');
							Anchored = true; CanCollide = false; Locked = true;
							Size = Vector3.new(4, 1024, 4);
							Position = T.Position;
							create 'SpecialMesh' {
								MeshType = Enum.MeshType.FileMesh;
								MeshId = 'rbxassetid://168892432';
								Scale = Vector3.new(100,500,100)
							};
						};
						Services.RunService.RenderStepped:connect(function() Rotate(RotatePart,25,0,50) end)
					end
					wait(2)
					local BoltPart = create 'Part' {
						Parent = workspace;
						BrickColor = BrickColor.new('New Yeller');
						Anchored = true;
						Locked = true;
						CanCollide = false;
						Size = Vector3.new(4, 2048, 4);
						Position = T.Position - Vector3.new(0,10,0);
						create 'CylinderMesh' {};
					};
					L.TimeOfDay = 12
					BoltPart.CanCollide = true
					tSound:Destroy()
					local EP = create 'Explosion' {
						Parent = BoltPart;
						Position = T.Position;
						BlastPressure = 500000;
						BlastRadius = 4;
					};
					wait(); L.TimeOfDay = 0; wait() L.TimeOfDay = ToD
					Log('Smited: "'..v.Name..'"')
					if RotateThing then RotatePart:Destroy() end
					Services.Debris:AddItem(BoltPart,0.2);
					for i=0+0.1,20 do wait()
						EP:Clone()
						BoltPart.Transparency = i
					end
				elseif (IsCharNil(v) == true) then
					logErr('Couldn\'t smite: "'..v.Name..'", their character is nil')
				end
			end
		end
	end;
	RealismMode = function(text)
		if (string.sub(text,1,7) == 'realism') then
			RealismMode()
			Log('Turned on Realism Mode')
		end
	end;
	WalkSpeed = function(text)
		if (string.sub(text,1,3) == 'ws'..cmdsep) then
			_T = string.sub(text,4)
			Me.Character.Humanoid.WalkSpeed = tonumber(_T)
			Log('Set WalkSpeed to: '.._T)
		elseif (string.sub(text,1,10) == 'walkspeed'..cmdsep) then
			_T = string.sub(text,11)
			Me.Character.Humanoid.WalkSpeed = tonumber(_T)
			Log('Set WalkSpeed to: '.._T)
		end
	end;
	Freeze = function(text)
		if (string.sub(text,1,7) == 'freeze'..cmdsep) then
			_T = string.sub(text,8); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v and v.Character then
					local char = v.Character
					local hum = char.Humanoid
					local torso = char.Torso; local T = torso
					local fSound = create 'Sound' {
						Parent = torso;
						SoundId = 'rbxassetid://176399994';
						Volume = 1;
						Pitch = 4;
						PlayOnRemove = true;
					};
					for _,p in pairs(char:GetChildren()) do
						if p:IsA('BasePart') and p.Name ~= 'HumanoidRootPart' then
							p.Anchored = true;
						end
					end
					local iceCube = create 'Part' {
						Parent = char;
						Name = 'IceCube';
						Transparency = 0.4;
						Anchored = true;
						CanCollide = false;
						Material = Enum.Material.Ice;
						BrickColor = BrickColor.new('Toothpaste');
						Size = Vector3.new(T.Size.X*3.5,T.Size.Y*3.5,T.Size.Z*3.5);
						CFrame = CFrame.new(T.CFrame.X,T.CFrame.Y,T.CFrame.Z) * CFrame.Angles(math.rad(T.Rotation.X),math.rad(T.Rotation.Y),math.rad(T.Rotation.Z))
					};
					fSound:Destroy()
					iceCube.Anchored = true;
					MarkAsOurs(iceCube,'1')
					char.Animate.Disabled = true
					Log('Froze: "'..v.Name..'"')
				elseif (IsCharNil(v) == true) then
					logErr('Couldn\'t freeze: "'..v.Name..'", their character is nil')
				end
			end
		end
	end;
	UnFreeze = function(text)
		if (string.sub(text,1,5) == 'thaw'..cmdsep) then
			_T = string.sub(text,6); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v and v.Character then
					local char = v.Character
					local fSound = create 'Sound' {
						Parent = torso;
						SoundId = 'rbxassetid://176399994';
						Volume = 0.5;
						Pitch = 5;
						PlayOnRemove = true;
					};
					for _,v in pairs(char:GetChildren()) do
						if v:IsA('BasePart') and v.Anchored and v.Name ~= 'HumanoidRootPart' then
							v.Anchored = false
						end
					end
					if char:FindFirstChild('IceCube') then char.IceCube:Destroy() end
					fSound:Destroy()
					char.Animate.Disabled = false
					Log('Thawed: "'..v.Name..'"')
				elseif (IsCharNil(v) == true) then
					logErr('Couldn\'t thaw: "'..v.Name..'", their character is nil')
				end
			end
		end
	end;
	Sit = function(text)
		if (string.sub(text,1,4) == 'sit'..cmdsep) then
			_T = string.sub(text,5); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v and v.Character then
					local char = v.Character
					local hum = char.Humanoid
					pcall(function() hum.Sit = true end)
				end
			end
		end
	end;
	Jump = function(text)
		if (string.sub(text,1,5) == 'jump'..cmdsep) then
			_T = string.sub(text,6); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v and v.Character then
					local char = v.Character
					local hum = char.Humanoid
					pcall(function() hum.Jump = true end)
				end
			end
		end
	end;
	DropHats = function(text)
		local DropHats = function(player)
			for _,w in pairs(player.Character:GetChildren()) do
				if w:IsA('Hat') then
					w.Parent = workspace;
				end
			end
		end
		if (string.sub(text,1,3) == 'dh'..cmdsep) then
			_T = string.sub(text,4); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v and v.Character then
					DropHats(v)
				end
			end
		elseif (string.sub(text,1,9) == 'drophats'..cmdsep) then
			_T = string.sub(text,10); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v and v.Character then
					DropHats(v)
				end
			end
		end
	end;
	NilChar = function(text)
		if (string.sub(text,1,4) == 'nil'..cmdsep) then
			_T = string.sub(text,5); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v and v.Character then
					pcall(function() v.Character = nil end)
				end
			end
		end
	end;
	Lag = function(text)
		if (string.sub(text,1,4) == 'lag'..cmdsep) then
			_T = string.sub(text,5); local Targets = getPlayer(_T)
			for _,v in pairs(Targets) do
				if v then
					local number = 0
					repeat
						local m = Instance.new('Message',v.PlayerGui)
						m.Text = stn.Lag.Text
					until number == stn.Lag.Limit
					Log('Lagged: "'..v.Name..'"')
				end
			end
		end
	end

}
local Execute = function() for _,F in pairs(Commands) do F(CmdBar.Text) end end

------------------------------------------------------------------------------------
--GUI TWEENING
GuiOpened = true;

local MainOpenSettings = {
	Time = 1;
	EasingDirection = Enum.EasingDirection.Out;
	EasingStyle = Enum.EasingStyle.Back;
	Size = UDim2.new(1, 0, 1, 0);
	Position = UDim2.new(0, 0, 0, 0);
}
local MainCloseSettings = {
	Time = 1;
	EasingDirection = Enum.EasingDirection.In;
	EasingStyle = Enum.EasingStyle.Back;
	Size = UDim2.new(0.05, 0, 1, 0);
	Position = UDim2.new(0, 0, 0, 0);
}
local ShOpenSettings = {
	Time = 1;
	EasingDirection = Enum.EasingDirection.Out;
	EasingStyle = Enum.EasingStyle.Back;
	Size = UDim2.new(0.1, 0, 1, 0);
	Position = UDim2.new(0.9, 0, 0, 0);
}
local ShCloseSettings = {
	Time = 1;
	EasingDirection = Enum.EasingDirection.In;
	EasingStyle = Enum.EasingStyle.Back;
	Size = UDim2.new(0.13, 0, 1.1, 0);
	Position = UDim2.new(-0.01, 0, -0.05, 0);
}
local MOS,MCS,ShOS,ShCS = MainOpenSettings,MainCloseSettings,ShOpenSettings,ShCloseSettings

local HideElements = function(a)
	if a:IsA('GuiObject') then
		--a.Style = Enum.ButtonStyle.Custom
		a.TextTransparency = 1
		a.TextStrokeTransparency = 1
	end
end
local ShowElements = function(a)
	if a:IsA('GuiObject') then
		--a.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
		a.TextTransparency = 0
		a.TextStrokeTransparency = 0.5
	end
end

local Hide = function()
	GuiOpened = false
	ShowHideBtn.Text = '>'
	ShowHideBtn:TweenSizeAndPosition(ShCS.Size, ShCS.Position, ShCS.EasingDirection, ShCS.EasingStyle, ShCS.Time)
	MainFrame:TweenSizeAndPosition(MCS.Size, MCS.Position, MCS.EasingDirection, MCS.EasingStyle, MCS.Time)
	wait(0.9)
	HideElements(ClearBtn)
	HideElements(ExecuteBtn)
	CmdBar.Active = false
	ExecuteBtn.Active = false
	ClearBtn.Active = false
end
local Show = function()
	GuiOpened = true
	ShowHideBtn.Text = '<'
	ShowHideBtn:TweenSizeAndPosition(ShOS.Size, ShOS.Position, ShOS.EasingDirection, ShOS.EasingStyle, ShOS.Time)
	MainFrame:TweenSizeAndPosition(MOS.Size, MOS.Position, MOS.EasingDirection, MOS.EasingStyle, MOS.Time)
	ShowElements(ClearBtn)
	ShowElements(ExecuteBtn)
	CmdBar.Active = true
	ExecuteBtn.Active = true
	ClearBtn.Active = true
end

------------------------------------------------------------------------------------
--EVENTS

ShowHideBtn.MouseButton1Down:connect(function() if GuiOpened then Hide() else Show() end end)
ClearBtn.MouseButton1Down:connect(function() CmdBar.Text = '' end)
ExecuteBtn.MouseButton1Down:connect(Execute)
CmdBar.FocusLost:connect(function(eP) if eP then Execute() end end)
Mouse.KeyDown:connect(function(K) if K:lower() == stn.CommandBar.GetFocusButton then CmdBar:CaptureFocus() end end)
Me.Character.Humanoid.Died:connect(function(a) RemoveCV(MusicSoundObj) end)

game.Players.ChildAdded:connect(function(newPlr)
	if tableFind(Banned, newPlr.Name) then
		newPlr:Destroy()
	end
	if tableFind(Admins, newPlr.Name) and newPlr.Name ~= Me.Name then
		table.insert(MarkedAdmins, newPlr.Name)
		newPlr.CharacterAdded:connect(function()
			script:Clone().Parent = newPlr.Backpack
		end)
	end
end)

for _,p in pairs(game.Players:GetPlayers()) do
	if tableFind(Admins, p.Name) then
		if (tableFind(MarkedAdmins, p.Name) == false) and p.Name ~= Me.Name then
			table.insert(MarkedAdmins, p.Name)
		end
		if p.Name ~= Me.Name then
			p.CharacterAdded:connect(function()
				script:Clone().Parent = p.Backpack
			end)
		end
	end
	if tableFind(Banned, p.Name) then
		p:Destroy()
	end
end

game.Players.ChildRemoved:connect(function(oldPlr)
	for _,a in pairs(Admins) do
		if oldPlr.Name == a then
			table.remove(MarkedAdmins,#oldPlr.Name)
		end
	end
end)

--RealismMode()
MarkAsOurs(OurThings)
Log('VladminCommands loaded.')