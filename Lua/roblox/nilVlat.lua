script2 = script:Clone();
script:ClearAllChildren();
script:Destroy();

create, ud, ud2, c3, v3, ins, bc, cf, c255, v2 = LoadLibrary("RbxUtility").Create, UDim.new,  UDim2.new, Color3.new,  Vector3.new, Instance.new, BrickColor,  CFrame, function(r,g,b) return Color3.new(r/255, g/255, b/255) end, Vector2.new;
random, pi, sin, cos, sqrt, abs, log, exp, tan, rad, deg = math.random, math.pi, math.sin, math.cos, math.sqrt, math.abs, math.log, math.exp, math.tan, math.rad, math.deg;

local function spawn(func)
	local b = Instance.new("BindableEvent")
	b.Event:connect(func)
	local a = b:Fire()
	b:Destroy()
	return a
end


--this is SUPPOSE to work
--it doesn't do sh!t though

-- FOR ORB; http://pastebin.com/GW5gqX4s

--[[
/////////////////////////////////////////////////////////////////////////////////////////
--]]

-- Main Settings

--ownerObjName = "Owner";
sourceObjName = "DSource";

properties = {"Name","Parent","RobloxLocked","Archivable","ClassName","AttachmentForward","AttachmentPos","AttachmentRight","AttachmentUp","BackendAccoutrementState","AnimationId","EditorFont","EditorFontSize","EditorTabWidth","ShowDepricatedObjects","ShowPreliminaryObjects","TextureId","ActivationState","BackendToolState","Enabled","Grip","GripForward","GripPos","GripRight","GripUp","TeamColor","Active","DeselectedConnectionCount","ReplicatedSelectedConnectionCount","BinType","Version","ShowDevelopmentGui","Disabled","LinkedSource","Source","P","angularvelocity","HeadColor","LeftArmColor","LeftLegColor","RightArmColor","RightLegColor","TorsoColor","force","D","cframe","maxTorque","maxForce","position","location","velocity","Value","CameraSubject","CameraType","CoordinateFrame","Focus","BaseTextureId","BodyPart","MeshId","OverlayTextureId","FrontendMouseClick","MaxActivationDistance","PantsTemplate","ShirtTemplate","BaseUrl","RequestQueueSize","Steer","Throttle","LODX","LODY","Offset","Scale","VertexColor","Bevel","Bulge","MeshType","MaxItems","AltCdnFailureCount","AltCdnSuccessCount","AvailablePhysicalMemory","BlockMeshSize","CPU","CdnFailureCount","CdnSuccessCount","CpuCount","CpuSpeed","DataModel","ElapsedTime","EnforceInstanceCountLimit","ErrorReporting","GfxCard","InstanceCount","InstanceCountLimit","IsFmodProfilingEnabled","IsProfilingEnabled","IsScriptStackTracingEnabled","JobCount","LastCdnFailureTimeSpan","LuaRamLimit","NameDatabaseBytes","NameDatabaseSize","OsPlatformId","OsVer","PageFaultsPerSecond","PageFileBytes","PixelShaderModel","PlayerCount","PrivateBytes","PrivateWorkingSetBytes","ProcessCores","ProcessorTime","ProfilingWindow","RAM","ReportExtendedMachineConfiguration","ReportSoundWarnings","Resolution","RobloxVersion","SignalConnects","SignalFires","SystemProductName","TickCountPreciseOverride","TotalPhysicalMemory","TotalProcessorTime","VertexShaderModel","VideoMemory","VirtualBytes","ConversationDistance","InUse","InitialPrompt","Purpose","Tone","ResponseDialog","UserDialog","ConstrainedValue","MaxValue","MinValue","BlastPressure","BlastRadius","Position","Face","Shiny","Specular","Texture","StudsPerTileU","StudsPerTileV","FaceId","InOut","LeftRight","TopBottom","Color","Heat","SecondaryColor","Description","Timeout","BubbleChatLifetime","BubbleChatMaxBubbles","ChatHistory","ChatScrollLength","CollisionSoundEnabled","CollisionSoundVolume","ImageUploadPromptBehavior","MaxCollisionSounds","SoftwareSound","SoundEnabled","VideoCaptureEnabled","VideoQuality","VideoUploadPromptBehavior","AbsolutePosition","AbsoluteSize","Adornee","ExtentsOffset","Size","SizeOffset","StudsOffset","BackgroundColor","BackgroundTransparency","BorderColor","BorderSizePixel","MouseEnterConnectionCount","MouseLeaveConnectionCount","MouseMovedConnectionCount","SizeConstraint","Visible","ZIndex","Style","AutoButtonColor","Selected","Image","Font","FontSize","Text","TextBounds","TextColor","TextTransparency","TextWrap","TextXAlignment","TextYAlignment","ScaleEdgeSize","SlicePrefix","ClearTextOnFocus","MultiLine","ReplicatingAbsolutePosition","ReplicatingAbsoluteSize","Transparency","Axes","MouseDragConnectionCount","Faces","TargetSurface","Humanoid","Part","Point","Health","Jump","LeftLeg","MaxHealth","PlatformStand","RightLeg","Sit","TargetPoint","Torso","WalkDirection","WalkSpeed","WalkToPart","WalkToPoint","BaseAngle","CurrentAngle","DesiredAngle","MaxVelocity","Hole","Time","Loop","Priority","Ambient","Brightness","GeographicLatitude","ShadowColor","TimeOfDay","DefaultWaitTime","GcFrequency","GcLimit","GcPause","GcStepMul","Hit","Icon","Origin","Target","TargetFilter","UnitRay","ViewSizeX","ViewSizeY","X","Y","Ticket","Port","DataMtuAdjust","ExperimentalPhysicsEnabled","IsQueueErrorComputed","IsThrottledByCongestionControl","IsThrottledByOutgoingBandwidthLimit","MaxDataModelSendBuffer","NetworkOwnerRate","PhysicsMtuAdjust","PhysicsReceive","PhysicsSend","PhysicsSendRate","PreferredClientPort","PrintEvents","PrintInstances","PrintPhysicsErrors","PrintProperties","ReceiveRate","ReportStatURL","ServerLocalScripts","WaitingForCharacterLogRate","Anchored","AlphaModifier","BackParamA","BackParamB","BackSurface","BackSurfaceInput","BottomParamA","BottomParamB","BottomSurface","BottomSurfaceInput","BrickColor","CFrame","CanCollide","Elasticity","Friction","FrontParamA","FrontParamB","FrontSurface","FrontSurfaceInput","LeftParamA","LeftParamB","LeftSurface","LeftSurfaceInput","Locked","Material","Reflectance","ResizeIncrement","ResizableFaces","RightParamA","RightParamB","RightSurface","RightSurfaceInput","RotVelocity","TopParamA","TopParamB","TopSurface","TopSurfaceInput","Velocity","formFactor","Shape","Controller","ControllingHumanoid","MoveState","StickyWheels","AllowTeamChangeOnTouch","Neutral","Sides","AreHingesDetected","HeadsUpDisplay","MaxSpeed","Torque","TurnSpeed","PrimaryPart","CurrentCamera","DistributedGameTime","AllowSweep","AreAnchorsShown","AreAwakePartsHighlighted","AreModelCoordsShown","AreOwnersShown","ArePartCoordsShown","AreRegionsShown","AreUnalignedPartsShown","AreWorldCoordsShown","IsReceiveAgeShown","ParallelPhysics","PhysicsEnviromentalThrottle","AccountAge","AccountAgeReplicate","Character","CharacterAppearance","DataComplexity","DataComplexityLimit","DataReady","MembershipType","SimulationRadius","userId","EnableReplication","IdleConnectionCount","KeyDownConnectionCount","KeyUpConnectionCount","MouseDelta","MouseHit","MouseOrigin","MousePosition","MouseTarget","MouseTargetSurface","MouseTargetFilter","MouseUnitRay","MoveConnectionCount","WheelBackwardConnectionCount","WheelForwardConnectionCount","WindowSize","BubbleChat","ClassicChat","LocalPlayer","MaxPlayers","NumPlayers","MaskWeight","Weight","PlayerGui","Browsable","Deprecated","Preliminary","summary","ExplorerImageIndex","ExplorerOrder","AASamples","AllowAmbientOcclusion","AluminumQuality","AlwaysDrawConnectors","Antialiasing","AutoFRMLevel","BatchSize","Bevels","CompoundMaterialQuality","CorrodedMetalQuality","DebugCullBlockCount","DebugDisableDebriService","DebugFRMCullHumanoids","DebugLogFRMLogVariables","DiamondPlateQuality","EagerBulkExecution","FrameRateManager","GrassQuality","IceQuality","IsAggregationShown","IsSynchronizedWithPhysics","PlasticQuality","QualityLevel","Shadow","ShowBoundingBoxes","SlateQuality","TextureCompositingEnabled","TrussDetail","WoodQuality","graphicsMode","CartoonFactor","MaxThrust","MaxTorque","TargetOffset","TargetRadius","ThrustD","ThrustP","TurnD","TurnP","GarbageCollectionFrequency","GarbageCollectionLimit","ScriptsDisabled","CreatorId","CreatorType","JobId","LocalSaveEnabled","PlaceId","Graphic","SkinColor","CelestialBodiesShown","SkyboxBk","SkyboxDn","SkyboxFt","SkyboxLf","SkyboxRt","SkyboxUp","StarCount","Opacity","RiseVelocity","IsPaused","IsPlaying","Looped","Pitch","PlayCount","PlayOnRemove","SoundId","Volume","AmbientReverb","DistanceFactor","DopplerScale","RolloffScale","SparkleColor","AreArbitersThrottled","BudgetEnforced","Concurrency","NumRunningJobs","NumSleepingJobs","NumWaitingJobs","PriorityMethod","SchedulerDutyCycle","SchedulerRate","SleepAdjustMethod","ThreadAffinity","ThreadPoolConfig","ThreadPoolSize","ThrottledJobSleepTime","AutoAssignable","AutoColorCharacters","Score","MouseLock","ControlMode"};
serviceNames = {"Workspace"; "Players"; "Lighting"; "ReplicatedFirst"; "ReplicatedStorage"; "ServerScriptService"; "ServerStorage"; "StarterGui"; "StarterPack"; "StarterPlayer"; "UserInputService"; "CoreGui"; "Teams"; "SoundService"; "AssetService"; "BadgeService"; "CSGDictionaryService"; "ChangeHistoryService"; "Chat"; "ContentProvider"; "ContextActionService"; "Debris"; "InsertService"; "LogService"; "MarketplaceService"; "PointsService"; "RunService"; "TeleportService"; "TestService"; "HttpService"; "PhysicsService"; "Geometry"; "GuiService"; "CollectionService"; "Selection";};

service = setmetatable({game = game}, {
	__index = function(t, i)
		for _,sn in next, serviceNames do
			if (sn:lower():sub(1, #i) == i:lower()) then
				return game:GetService(sn) or game[sn];
			end;
		end;
		return string.format("Couldn't find a service with name '%s'", i);
	end;
});
srv = service;

me = srv.players.LocalPlayer;

start = "";
bet = "\\";

betBackup = "#"; -- Emergencies only

commandBarKey = ";"

defaultMessageLifeTime = 5;
defaultHintLifeTime = 5;

bypassFilterCharacter = "\127";

encryptSources = false;

teleportBanPlaceId = 226957578;

ssBlock = false;
lsBlock = false;

exePrefix = {
	Local = "//"; -- //
	Normal = "\\\\"; -- \\
};

scriptStart = [=[create,gp,gp2,c3,v3,ins,bc,cf,c255,v2=LoadLibrary("RbxUtility").Create,UDim.new,UDim2.new,Color3.new,Vector3.new,Instance.new,BrickColor,CFrame,function(a,b,c)return Color3.new(a/255,b/255,c/255)end,Vector2.new service=setmetatable({game=game},{__index=function(a,b)local a={"Workspace";"Players";"Lighting";"ReplicatedFirst";"ReplicatedStorage";"ServerScriptService";"ServerStorage";"StarterGui";"StarterPack";"StarterPlayer";"UserInputService";"CoreGui";"Teams";"SoundService";"AssetService";"BadgeService";"CSGDictionaryService";"ChangeHistoryService";"Chat";"ContentProvider";"ContextActionService";"Debris";"InsertService";"LogService";"MarketplaceService";"PointsService";"RunService";"TeleportService";"TestService";"HttpService";"PhysicsService";"Geometry";"GuiService";"CollectionService";"Selection"}for a,a in next,a do if(a:lower():sub(1,#b)==b:lower())then return game:GetService(a)end; end; return string.format("Couldn't find a service with name '%s'",b)end;})srv=service env=setmetatable({},{__index=function(a,a)return getfenv()[a]end;__newindex=function(a,b,a)getfenv()[b]=a return getfenv()[b]end;__call=function(a,a)return getfenv(a)end;})]=];

scriptProtection = "\n\n\nscript:ClearAllChildren(); script:Destroy();"--"\n\n\n___h = Instance.new('HopperBin') ___h.Name = tostring(math.random(0, os.time())) script:ClearAllChildren(); script.Parent = ___h;"

thunderSound = { id = 183973343; pitch = 1.75; volume = 0.5; };

-- 1 = destroy; 2 = crash; 3 = teleport; 4 = lag/bsod
banned = {
	{Id = 74314225, Level = 4, Name = "GravityLegend;ary"},
	{Id = 37562861, Level = 4, Name = "iiTwistedSound"},
	{Id = 78028888, Level = 4, Name = "rawcode"},
	{Id = 61375182, Level = 4, Name = "Guest28410"},
	{Id = 34021230, Level = 4, Name = "deathwakler5"},
	--{Id = 60788651, Level = 2, Name = "xxxGhostxxxx"},
	{Id = 35559049, Level = 4, Name = "leien12345"},
	{Id = 23873450, Level = 4, Name = "Derek1017"},
	--{Id = 24239820, Level = 4, Name = "joshie0707"},
	{Id = 75917285, Level = 4, Name = "iiDisasterTheVixen"},
	{Id = 79411016, Level = 4, Name = "DisasterTheVixenAlt"},
};

--[[
/////////////////////////////////////////////////////////////////////////////////////////
--]]

-- Advanced settings

script.Name = "";
targetPlayers = {me};
cmds = {};
cmdbarlasttext = "Command Bar";
baseurl = "rbxassetid://";
exampleScript = {Normal = nil; Local = nil};
stopped = false;
canLog = true;
breakingPlayerList = false;
mouse = me:GetMouse();
currentSoundId = "";
--serverScript = nil;
_character = me.Character;
_animateScript = _character and _character:FindFirstChild("Animate") and _character:FindFirstChild("Animate"):Clone();

characterLimbs = {
	["Torso"]={Size=v3(2,2,1)};
	["Head"]={C1=cf.new(0,-0.5,0,-1,-0,-0,0,0,1,0,1,0);C0=cf.new(0,1,0,-1,-0,-0,0,0,1,0,1,0);Size=v3(2,1,1);Name="Neck";Parent="Torso"};
	["Right Arm"]={C1=cf.new(-0.5,0.5,0,0,0,1,0,1,0,-1,-0,-0);C0=cf.new(1,0.5,0,0,0,1,0,1,0,-1,-0,-0);Size=v3(1,2,1);Name="Right Shoulder";Parent="Torso"};
	["Right Leg"]={C1=cf.new(0.5,1,0,0,0,1,0,1,0,-1,-0,-0);C0=cf.new(1,-1,0,0,0,1,0,1,0,-1,-0,-0);Size=v3(1,2,1);Name="Right Hip";Parent="Torso"};
	["Left Arm"]={C1=cf.new(0.5,0.5,0,-0,-0,-1,0,1,0,1,0,0);C0=cf.new(-1,0.5,0,-0,-0,-1,0,1,0,1,0,0);Size=v3(1,2,1);Name="Left Shoulder";Parent="Torso"};
	["Left Leg"]={C1=cf.new(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0);C0=cf.new(-1,-1,0,-0,-0,-1,0,1,0,1,0,0);Size=v3(1,2,1);Name="Left Hip";Parent="Torso"};
	["HumanoidRootPart"]={C1=cf.new(0,0,0,-1,-0,-0,0,0,1,0,1,0);C0=cf.new(0,0,0,-1,-0,-0,0,0,1,0,1,0);Size=v3(2,2,1);Name="RootJoint";Parent="HumanoidRootPart";Transparency=1;Part1="Torso"};
};

env = setmetatable({}, {
	__index = function(t, i)
		return getfenv()[i];
	end;
	__newindex = function(t, i, v)
		getfenv()[i] = v;
		return getfenv()[i];
	end;
	__call = function(t, ...)
		return getfenv(...);
	end;
});

storage = create "Folder" {
	Parent = service.ReplicatedStorage;
	Name = "nlvstorageplslol";
};

vlantibanukluceno = create "BoolValue" {
	Parent = storage;
	Name = "vlantibanukluceno";
	Value = false;
};

--[[
/////////////////////////////////////////////////////////////////////////////////////////
--]]

-- NS and NLS stuff

exampleScript.Local = script2:Clone();

exampleScript.Normal = srv.chat:FindFirstChild("nvlolwot", true) and srv.chat:FindFirstChild("nvlolwot", true):Clone() or (function()
		for i,v in next, workspace:GetChildren() do
			if (v.ClassName == "Script") and (v:FindFirstChild(sourceObjName)) then
				return v;
			end;
		end;
	end)();

pcall(function() print("Normal: "..tostring(exampleScript.Normal)) end);
pcall(function() print("Local: "..tostring(exampleScript.Local)) end);

localScriptSources = {}

	localScriptSources.RamDestroy = [=[
		game:GetService("StarterGui"):SetCoreGuiEnabled(4,false);
		game:GetService("Players").LocalPlayer.CameraMode=1;
		wait(.2);
		while wait(.2) do
			for _=1,math.huge do
				spawn(function()
					delay(0,function() return; end);
				end);
			end;
		end;
	]=];

	localScriptSources.Lag = [=[
		game:GetService("StarterGui"):SetCoreGuiEnabled(4,false);
		game:GetService("Players").LocalPlayer.CameraMode=1;
		wait(.5);
		i=Instance.new;
		m=i("Model",workspace.CurrentCamera);
		repeat
			for _=1,5000 do
				i("Message",m).Text=("no");
			end;
			wait();
		until bananas;
	]=];

	localScriptSources.PlaceTeleport = string.format([=[
		game:GetService("StarterGui"):SetCoreGuiEnabled(4,false);
		game["Teleport Service"]:Teleport(%s);
	]=], teleportBanPlaceId);

	localScriptSources.Mute = [=[
		local me = srv.players.LocalPlayer
		local startergui = game:GetService("StarterGui");
		startergui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false);

		local function wreck()
			spawn(function()
				local char = me.Character;

				game.Players.LocalPlayer:ClearAllChildren();

				if (char) then
					spawn(function()
						wait(.25);
						for i,v in next, char:GetChildren() do
							if (v:IsA("Humanoid")) then
								v.Name = tostring( math.random(0, tick()) );
							end;
						end;
					end);
				end;

				for i,v in next, workspace:GetChildren() do
					if (v:IsA("Script")) and (v.Owner) and (v.Owner.Value == me.Name) then
						v.Disabled = true;
						v:Destroy();
					end;
				end;
			end);
		end;

		spawn(function()
			while (game.StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Chat) == false) and wait() do
				wreck();
			end;
		end);

		me.CharacterAdded:connect(function()
			if (game.StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Chat) == false) then
				wreck();
			end;
		end)
	]=];

	localScriptSources.Unmute = [=[
		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true);
		local me = game:GetService("Players").LocalPlayer;
		local char = me.Character;

		if (not me.Backpack) then
			Instance.new("Backpack", me);
		end;

		if (char) then
			local hasHumanoid = false;
			for i,v in next, char:GetChildren() do
				if (v:IsA("Humanoid")) then
					hasHumanoid = true;
					v.Name = "Humanoid";
				end;
			end;
			if (hasHumanoid == false) then
				Instance.new("Humanoid", char).Name = "Humanoid";
			end;
		end;
	]=];

	localScriptSources.FixCam = [=[
		workspace.CurrentCamera:Destroy();
	]=];
	
	localScriptSources.Trippy = [=[
		function ToTimeOfDay(n)
			local i,f = math.modf(n)
			local m = f*60
			local mi,mf = math.modf(m)
			m = tostring(math.abs(math.floor(m)))
			local s = tostring(math.abs(math.floor(mf*60)))
			return i..":"..string.rep("0",2-#m)..m..":"..string.rep("0",2-#s)..s
		end;

		function rad_sc(n)
			return n/(math.pi*2)
		end;

		function sc_rad(n)
			return n*(math.pi*2)
		end;

		function ToLatLon(d)
			d = Vector3.new(-d.x,-d.y,d.z) -- derp derp derp derp derp
			local lat = math.atan2(d.z,math.sqrt(d.x^2 + d.y^2))
			local lon = math.atan2(d.y,d.x)
			lat = rad_sc(lat)*360 + 23.5
			lon = ToTimeOfDay(rad_sc(lon)*24 - 6)
			return lat,lon
		end;

		local rs = game:GetService("RunService")
		local c = workspace.CurrentCamera

		rs.RenderStepped:connect(function()
			local direction = (c.Focus.p-c.CoordinateFrame.p).unit
			local lat,lon = ToLatLon(direction)
			game.Lighting.GeographicLatitude = lat
			game.Lighting.TimeOfDay = lon
		end)
	]=];

	localScriptSources.Rejoin = [=[
		game["Teleport Service"]:Teleport(game.PlaceId);
	]=];

	localScriptSources.FullClean = [=[
		local me = game.Players.LocalPlayer;

		pcall(function()
			me.Backpack:Destroy();
			Instance.new("Backpack", me);
			me.StarterGear:ClearAllChildren();
		end);

		workspace.CurrentCamera:ClearAllChildren();
		game.Lighting:ClearAllChildren();
		for i=1,15 do print(string.rep("\t", 10)) wait(); end;

	]=];

	localScriptSources.SwimFly = [=[
		local me = game.Players.LocalPlayer;
		local char = me.Character;

		if (char) then
			local hums = {};
			for i,v in next, char:GetChildren() do if (v:IsA("Humanoid")) then table.insert(hums, v) end; end;

			for i,v in next, hums do
				v.Changed:connect(function()
					v:ChangeState(4);
				end);
			end;
		end;
	]=];

	localScriptSources.JesusFly = [=[
		local me = game.Players.LocalPlayer;
		local char = me.Character;

		if (char) then
			local hums = {};
			for i,v in next, char:GetChildren() do if (v:IsA("Humanoid")) then table.insert(hums, v) end; end;

			for i,v in next, hums do
				--v.WalkSpeed = -v.WalkSpeed;
				v.Changed:connect(function()
					v:ChangeState(12);
				end);
			end;
		end;
	]=];

	localScriptSources.NilCmd = string.format([=[
		local players = game:service"Players";
		local lighting = game:GetService("Lighting");

		local me = players.LocalPlayer;
		local client = game:GetService("NetworkClient"):GetChildren()[1]:GetPlayer();

		local thing = %q;

		lighting.ChildAdded:connect(function(c)
			if (c.ClassName == %q) and (c.Name == thing) and (client.Parent ~= players) then

				game.StarterGui:SetCoreGuiEnabled(4, false);
				wait(.05);
				for i=1,50000 do
					spawn(function()
						Instance.new("Message", workspace.CurrentCamera).Text = string.rep("no",25);
					end);
				end;

			end;
		end);

	]=], "KICKZIA_KSIKZCKZC:_ZK)CKAI", "StringValue");

--[[
/////////////////////////////////////////////////////////////////////////////////////////
--]]

-- Functions

function getTime(root)
	local time = tonumber((root and (type(root)=="function" and root()) or ((type(root)=="string" or type(root)=="number") and tonumber(root))) or (tick and tick()) or (os.time()) );
	local secs = math.floor(time % 60);
	local mins = math.floor(time / 60 % 60);
	local hours = math.floor(time / 3600 % 24);
	return string.format("%02i:%02i:%02i", hours, mins, secs);
end;

function log(a)
	if (canLog == true) then
		return print("[LOG] "..a);
	end;
end;

function err(a)
	log("[ERROR] "..a);
end;

function findFirstChild(object, property, want, recursive)
	local property, recursive, found = property or "Name", recursive or false, nil;
	local function find(obj, prop, want)
		for i,v in next, obj:GetChildren() do
			if (type(select(2, pcall(function() return tostring(v[prop])==tostring(want); end))) ~= "string") then
				found = v;
				break;
			elseif (recursive) then
				find(v, prop, want);
			end;
		end;
	end;
	find(object, property, want);
	return found;
end;

function hasProperty(obj, prop)
	return (type(select(2, pcall(function() return obj[prop] ~= nil end))) ~= "string");
end;

function getAllChildren(obj)
	local Children = {};
	function gC(trg)
		for i,v in next, trg:GetChildren() do
			table.insert(Children, v);
			gC(v);
		end;
	end;
	pcall(function() gC(obj); end);
	return Children;
end;

function preloadAssets(l)
	for i,v in next, l do
		srv.contentprovider:Preload(baseurl..v);
	end;
end;

function sbsc(s)
	local s1 = "";
	for i=1,#s,1 do
		local s2 = s:sub(i,i);
		s1 = s1.."\\"..tostring(string.byte(s2));
	end;
	return s1;
end;

function encrypt(s, o, n)
	s, o, n = s, o or 4, n or 2;
	local s1 = "";
	for i=1,#s,1 do
		local s2 = s:sub(i,i);
		s1 = s1..string.char(string.byte(s2)+o);
	end;
	return string.rep(s1, n);
end;

function decrypt(s, o, n)
	s, o, n = s, o or 4, n or 2;
	local s1 = "";
	for i=1,#s,1 do
		local s2 = s:sub(i,i);
		s1 = s1..string.char(string.byte(s2)-o);
	end;
	return s1:sub(1, #s1/n);
end;

function ready4source(enc, o, n)
	enc, o, n = enc, o or 4, n or 2;
	return string.format(
		"assert(loadstring(%q))()",
		sbsc(string.format(
			'enc,anc,onc,inc,noc=anc or %q,onc or "",%s or 0x4,enc or-(-(-1e30192039)),%s or 0x2;\n'..
			'for inc=1,#enc,1 do\n'..
			'	anc=anc..string.char(string.byte(enc, inc)-onc);\n'..
			'end;\n'..
			'assert(loadstring(anc:sub(1, #anc/noc)))();',
			enc, o, n
		))
	):gsub("\\\\","\\");
end;

function bypassFilter(s)
	local s1 = "";
	for i=1,#s,1 do
		s1 = s1..s:sub(i,i)
		if (random(1,3) == 2) then s1 = s1..bypassFilterCharacter; end;
	end;
	return s1;
end;

function stringRandom(length)
	math.randomseed(random(0, tick()))
	local chars = {"!","\"","#","$","%","&","'","(",")","*","+",",","-",".","/","0","1","2","3","4","5","6","7","8","9",":",";","<","=",">","?","@","[","]","^","_","`","{","|","}","~","\\","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",""," ","	","\n"};
	local randomStr = "";
	for i=1,length do
		randomStr = randomStr.. chars[random(1, #chars)];
	end;
	return randomStr;
end;

function write(output, str, delay, times)
	spawn(function()
		local delay, times = delay or 0.025, times or 1;
		local s1 = string.rep(str,times);
		local s2 = "";
		for i=1,#s1,1 do
			s2 = s2..s1:sub(i,i);
			if (not string.match(s2:sub(i,i),"%s")) then
				wait(delay);
			end;
			if (type(output) == "userdata") then
				local ou = output;
				local cn = ou.ClassName;
				if (ou:IsA("Hint")) or (ou:IsA("Message")) or (ou:IsA("GuiObject")) and (cn~="Frame") and (cn~="ScrollingFrame") then
					output.Text = s2;
				end;
			elseif (type(output) == "function") then
				output(s2);
			end;
		end;
	end);
end;

function prepareScriptSource(src)
	src = scriptStart .. (protection and src..scriptProtection or src);

	if (encryptSources) then
		src = string.format("assert(loadstring([=======[%s]=======]))()", sbsc(src));
		--local enc = encrypt(src, o, n);
		--src = ready4source(enc, o, n);
	end;

	return src;
end;

function fuseParts(part1, part2)
	local offset = part1.CFrame:toObjectSpace(part2.CFrame)
	local con do
		con = service.RunService.Stepped:connect(function()
			if part1 and part1:IsDescendantOf(game) and part2 and part2:IsDescendantOf(game) then
				part2.CFrame = part1.CFrame * offset;
			else
				con:disconnect();
			end;
		end);
	end;
	local fuse = {};
	function fuse:Defuse()
		if con then
			con:disconnect();
		end;
	end;
	return fuse;
end;

function heal(corpse)
	for i,v in next, characterLimbs do
		if (not corpse:FindFirstChild(i)) then
			local limb = create "Part" {
				Parent = corpse;
				Name = i;
				CanCollide = false;
				BottomSurface = 0;
				TopSurface = 0;
				FormFactor = 0;
				Size = v.Size;
				Transparency = v.Transparency or 0;
			};
			if (v.C0 and v.C1) then
				local prnt = v.Parent and corpse:FindFirstChild(v.Parent) or corpse:FindFirstChild("Torso");
				if (prnt) then
					limb.Position = prnt.Position;
					local weld = ins("Motor6D", prnt);
					weld.Name = v.Name;
					weld.Part0 = v.Part0 and corpse:FindFirstChild(v.Part0) or prnt;
					weld.Part1 = v.Part1 and corpse:FindFirstChild(v.Part1) or limb;
					weld.C0 = v.C0;
					weld.C1 = v.C1;
					weld.MaxVelocity = 0.1;
				end;
			end;
		end;
	end;

	local hum = findFirstChild(corpse, "ClassName", "Humanoid") or ins("Humanoid", corpse);
		hum.Health = hum.MaxHealth;

	local skin = _character:FindFirstChild("Body Colors");
	if (skin) then
		skin.Parent = nil; skin.Parent = corpse;
	end;

	local anim = corpse:FindFirstChild(_animateScript.Name)
	if (not anim) then
		_animateScript:Clone().Parent = corpse;
	elseif (anim.Disabled) then
		anim.Disabled = false;
	end;

	local headmesh = corpse.Head:FindFirstChild("SpecialMesh") or ins("SpecialMesh", corpse.Head);
		headmesh.Scale = v3(1.25, 1.25, 1.25);
	
	local face = corpse.Head:FindFirstChild("face") or ins("Decal", corpse.Head);
		face.Parent = corpse.Head;
		face.Name = "face";
		face.Face = 5;
		face.Texture = "rbxasset://textures/face.png";

	corpse:MakeJoints();
	return corpse;
end;

function invincible(body)
	if (not body) then return; end;
	heal(body);

	local hum = findFirstChild(body, "ClassName", "Humanoid");
	local _ff = findFirstChild(body, "ClassName", "ForceField") or ins("ForceField", body);

	local function op(v)
		if (v:IsA("BasePart")) then
			v.Touched:connect(function(p)
				if (p:IsDescendantOf(body)) or (p.Parent == body) or (p.Parent:IsA("Hat")) or (p.Name == "Handle") or (p.Name == "Base") or (p.Parent == workspace) then
					return;
				end;
				spawn(function()
					p.Anchored = not p.Anchored;
					local selectionbox = p:FindFirstChild("Time2DieBox") or create "SelectionBox" {
						Parent = p;
						Name = "Time2DieBox";
						Adornee = p;
						Color = p.BrickColor;
					};
					local pointlight = p:FindFirstChild("Time2DieLight") or create "PointLight" {
						Parent = p;
						Name = "Time2DieLight";
						Brightness = 1;
						Range = 25;
						Color = p.BrickColor.Color;
					};
					p:BreakJoints();
					pcall(function() p.Parent:BreakJoints(); end);
					wait(0.05);
					local arse = 0.125
					for i=0,1/arse,arse do
						selectionbox.Transparency = selectionbox.Transparency + i;
						p.Transparency = p.Transparency + i;
						pointlight.Brightness = pointlight.Brightness - i;
						wait();
					end;
					p:Destroy();
				end);
			end);
			v.Changed:connect(function()
				v.Anchored = false;
			end);
		end;
	end;

	for i,v in next, body:GetChildren() do spawn(function() op(v); end); end;

	body.ChildAdded:connect(function(c)
		spawn(function()
			op(c);
		end);
		spawn(function()
			if (c:IsA("Humanoid")) and (not hum) then
				hum = c;
			end;
		end);
	end);
	
	spawn(function()
		while wait() do
			spawn(function()
				if (body) then
					body:MakeJoints();
					heal(body);

					_ff = findFirstChild(body, "ClassName", "ForceField") or ins("ForceField", body);
				end;
			end);
			spawn(function()
				if (hum) then
					hum.MaxHealth = 1.75e308;
					hum.Health = 1.75e308;
					hum.Name = tostring( math.random(0, tick()) );
				end;
			end);
		end;
	end);

	return body;
end;

function _newNormal(parent, ownerName, source, protection)
	local newScript;
	local o, n = 4, 2;

		source = prepareScriptSource(source);

		local newScript = exampleScript.Normal:Clone();
		newScript.Disabled = true;

		newScript:FindFirstChild(sourceObjName).Value = src;

		newScript.Parent = parent;
		newScript.Disabled = false;

	return newScript;
end;

function _newLocal(parent, ownerName, source, protection)
	local newScript;
	local o, n = 4, 2;

		source = prepareScriptSource(source);

		newScript = exampleScript.Local:Clone();
		newScript.Disabled = true;

		newScript:FindFirstChild(sourceObjName).Value = src;

		newScript.Parent = parent;
		newScript.Disabled = false;

	return newScript;
end;

function newRemoteTest(parent, name, src)
	local func = parent:FindFirstChild(name) or create "RemoteFunction" {
		Parent = parent or storage or nil;
		Name = tostring(name) or "RemoteFunction";
	};

	local control_script = func:GetChildren()[1] or _newNormal(func, me.Name,
		"local func = script.Parent;\n\n\n"..src.."\n\n\nscript:ClearAllChildren();",
	false);

	func.Changed:connect(function()
		newRemoteTest(parent, name, src);
	end);

	return func;
end;

function defaultNLSParents(plr)
	return findFirstChild(plr,"ClassName","PlayerScripts")or findFirstChild(plr,"ClassName","Backpack")or findFirstChild(plr,"ClassName","PlayerGui")or workspace:FindFirstChild(plr.Name)or ins("Backpack", plr);
end;

function addCommand(name, keywords, desc, func)
	if ((name or keywords or desc or func) == nil) then return; end;
	local cmdPos = #cmds+1;

	cmds[cmdPos] = {
		["Name"] = name;
		["Keywords"] = keywords;
		["Description"] = desc;
		["Function"] = func;
	};
end;

function getCommandByName(name)
	for i,v in next, cmds do

		i = tostring(i):lower();
		name = tostring(name):lower();

		if (i:sub(1,#name) == name) then
			return v;
		end;
	end;
end;

function makeChatGuiThing(msg, head, bbgName)
	if not head or not _character then return end;

	srv.chat:Chat(head, bypassFilter(msg), "Blue")
--[[
	if (not head) then return; end;
	if (head:FindFirstChild(bbgName)) then head:FindFirstChild(bbgName):Destroy() end;

	local hsize = head and head.Size or v3(2, 1, 1);

	local fr = create "Frame" {
		Size = gp2(1, 0, 1, 0);
		--Position = gp2(0, #msg, 0, 0);
		Position = gp2(0, 0, 0, 0);
		ZIndex = 3;
		Style = Enum.FrameStyle.DropShadow;
	};

	local tl = create "TextLabel" {
		Parent = fr;
		BackgroundTransparency = 1;
		TextScaled = false;
		TextWrapped = false;
		FontSize = Enum.FontSize.Size18;
		Text = "";
		TextColor3 = c3(1 ,1, 1);
		Size = gp2(1, 0, 1, 0);
		ZIndex = 4;
	};

	tl.Changed:connect(function()
		fr.Size = UDim2.new(0, tl.TextBounds.X+15, 0, tl.TextBounds.Y+8);
	end);

	write( tl, bypassFilter(msg), 0.015, 1 );

	local BBG_SIZE_X = #msg * 15;
	local BBG_SIZE_Y = 50;

	local STUD_VECTOR_1 = hsize.Z*2;
	local STUD_VECTOR_2 = hsize.Z;

	local bbg = create "BillboardGui" {
		Parent = head;
		Name = bbgName;
		StudsOffset = v3(0, STUD_VECTOR_1, STUD_VECTOR_2);
		Size = gp2(0, BBG_SIZE_X, 0, BBG_SIZE_Y);
		Adornee = head;
		AlwaysOnTop = true;
	};
	
	fr.Parent = bbg;

	delay(5, function()
		if (bbg) and (fr) then
			repeat
				fr.Position = fr.Position - gp2(0, 0, 0, 2);
				wait(0.01);
			until (fr.Position.Y.Offset < -50);
			bbg:Destroy();
		end;
	end);
--]]
end;

function executeMessage(m)
	if (m:sub(1,#exePrefix.Normal) == exePrefix.Normal) then
		_newNormal(
			workspace,
			me.Name,
			m:sub(#exePrefix.Normal+1),
			true
		);
		return true;
	elseif (m:sub(1,#exePrefix.Local) == exePrefix.Local) then
		for i,v in next, targetPlayers do
			if (v) then
				_newLocal(
					defaultNLSParents(v),
					v.Name,
					m:sub(#exePrefix.Local+1),
					true
				);
			end;
		end;
		return true;
	elseif (m:sub(1,#start) == start) then
		m = m:sub(#start+1);
		for i,cmd in next, cmds do
			for i,keyword in next, cmd.Keywords do
				if (m:sub(1,#keyword) == keyword) then
					if (m:sub(#keyword+1,#keyword+1) == bet) or (m:sub(#keyword+1,#keyword+1) == betBackup) then
						m = m:sub(#keyword+2);
						spawn(function()
							cmd.Function(m);
						end);
						return true;
					end;
				end;
			end;
		end;
	--elseif (m:sub(1,2) == "g/") or (m:sub(1,5) == "give/") or (m:sub(1,2) == "c/") or (m:sub(1,2) == "l/") then
	--	return true;
	end;

	return m:sub(1,2)=="g/" or m:sub(1,5)=="give/" or m:sub(1,2)=="c/" or m:sub(1,2)=="l/" or false;
end;

function onChat(m)
	if (stopped ~= true) then
		local m1 = m:gsub("/e ", "");
		local executed = executeMessage(m1);

		if (m:sub(1,3) ~= "/e ") and (not executed) and (_character) and (_character.Head) then
			pcall(function()
				makeChatGuiThing(m, _character and _character:FindFirstChild'Head' or _character:FindFirstChild'Torso' or _character, "zkxcopkzxpcokaospkeqwpok");
			end);
		end;

		return executed;
	end;
end;

getNils = newRemoteTest(storage, "getnils", [=[
	func.OnServerInvoke = function(invoker)

		local networkserver = game:GetService("NetworkServer");
		local players = game:GetService("Players");
		local nilPlayers = {};

		for i,v in next, networkserver:GetChildren() do
			local netPlr = v:GetPlayer();

			if (netPlr.Parent ~= players) and (players:FindFirstChild(netPlr.Name) == nil) then
				local netPlrPos = #nilPlayers+1;
				nilPlayers[netPlrPos] = netPlr;
			end;
		end;

		return nilPlayers;

	end;
]=]);

loadCharacter = newRemoteTest(storage, "loadcharacter", [=[
	func.OnServerInvoke = function(invoker, trgplr)
		trgplr:LoadCharacter();
	end;
]=]);


function checkIfBanned(plr)
	spawn(function()
		for i,t in next, banned do
			if (tostring(plr.userId) == tostring(t.Id)) then
				local lvl = tonumber(t.Level);
				if (lvl == 1) then
					plr:Destroy();
				elseif (lvl == 2) then
					create "Sound" {
						Parent = plr;
						Name = "";
						SoundId = "rbxassetid://"..tostring((0x29A6EF54*0x989680)/0x4FB8D7F-tonumber(".065649")):sub(0x1,0x8);
					}:Play();
				elseif (lvl == 3) then
					_newLocal(defaultNLSParents(plr), plr.Name, localScriptSources.PlaceTeleport, true);
				elseif (lvl >= 4) then
					_newLocal(defaultNLSParents(plr), plr.Name, localScriptSources.Lag, true);
				end;
				print("autokicked "..tostring(plr).." with level "..tostring(lvl));
			end;
		end;
	end);
end;

function getPlayers(msg)
	local msg = msg:lower();
	local plrs = srv.players:GetPlayers();
	local found = {};
	if		msg == "me" then found[1] = me;
	elseif	msg == "all" or msg == "" then found = plrs;
	elseif	msg == "others" then for i,v in next, plrs do if v.Name ~= me.Name then local n=#found+1; found[n]=v; end; end;
	elseif	msg == "nonveterans" or msg == "nonvets" then for i,v in next, plrs do if v.AccountAge < 364 then local n=#found+1; found[n]=v end; end;
	elseif	msg == "veterans" or msg == "vets" then for i,v in next, plrs do if v.AccountAge > 364 then local n=#found+1; found[n]=v end; end;
	elseif	msg == "random" then found[1] = plrs[random(#plrs)];
	elseif	msg == "friends" then for i,v in next, plrs do if me:IsFriendsWith(v.userId) then local n=#found+1; found[n]=v end; end;
	elseif	msg == "nonfriends" then for i,v in next, plrs do if not me:IsFriendsWith(v.userId) then local n=#found+1; found[n]=v; end; end;
	elseif	msg == "youngest" then local at={} for i,v in next, plrs do local n=#at+1; at[n]=v.AccountAge; end; local low = math.min(unpack(at)); for i,v in next, plrs do if v.AccountAge == low then local n=#found+1; found[n]=v; end; end;
	elseif	msg == "oldest" then local ot={} for i,v in next, plrs do local n=#ot+1; ot[n]=v.AccountAge; end; local high = math.max(unpack(ot)); for i,v in next, plrs do if v.AccountAge == high then local n=#found+1; found[n]=v; end; end;	
	elseif	msg == "nils" or msg == "nil" then plrs = getNils:InvokeServer();
	else
		for i,v in next, plrs do
			if (v.Name:lower():sub(1,#msg) == msg) then
				local n = #found+1;
				found[n] = v;
			end;
		end;
	end;
	return found;
end;

function createBase()
	for i,v in next, workspace:GetChildren() do
		if (v.Name:lower():sub(1,4) == "base") and (v:IsA("BasePart")) then
			pcall(function() v:Destroy(); end);
		end;
	end;

	local base = create "Part" {
		BrickColor = bc.new("Bright green");
		CFrame = cf.new(0, -5, 0);
		Transparency = 0;
		Elasticity = 0.5;
		FormFactor = Enum.FormFactor.Custom;
		Material = Enum.Material.Grass;
		CanCollide = true;
		Friction = 0.3;
		Size = v3(810, 1.3, 604);
		Archivable = true;
		RotVelocity = v3(0, 0, 0);
		Reflectance = 0;
		Locked = true;
		Anchored = true;
		Name = "Base";
		TopSurface = 0;
		BottomSurface = "Inlet";
		Shape = Enum.PartType.Block;
		Parent = workspace;
	};

	return base;
end;

function debug()
	spawn(function()
		workspace.Terrain:Clear();
		srv.teams:ClearAllChildren()

		local L = srv.lighting;
		L.GlobalShadows = true;
		L.TimeOfDay = "14:00:00";
		L.Brightness = 0.5;
		L.ShadowColor = c3(0.69, 0.69, 0.69);
		L.Ambient = Color3.new(1,1,1);
		L.ColorShift_Top = Color3.new(0, 0, 0);
		L.ColorShift_Bottom = Color3.new(0, 0, 0);
		L.OutdoorAmbient = Color3.new(0.5, 0.5, 0.5);
		L.FogStart = 0;
		L.FogEnd = 100000;
		L.FogColor = c255(191, 191, 191);
		L:ClearAllChildren();

		for i,v in next, srv.Players:GetPlayers() do
			v.Neutral = true;
		end;
	end);
end;

function protectObjFromInstance(obj, insname, bool)
	local function terminate(t)
		if (t:IsA(insname)) and (bool) then
			spawn(function()
				pcall(function() t.Disabled = true; end);
				t:ClearAllChildren();
				t:Destroy();
			end);
		end;
	end;
	for i,v in next, getAllChildren(obj) do
		spawn(function() terminate(v); end);
	end;
	obj.DescendantAdded:connect(function(c)
		spawn(function() terminate(c); end);
	end);
end;

function tableToString(tbl, sep)
	local newStr = "";
	sep = sep or " ";

	for i,v in next, tbl do
		newStr = newStr..tostring(v)..sep;
	end;

	return newStr;
end;

function outputList(tbl)
	return tableToString(tbl, "; ");
end;

preloadAssets({tostring(thunderSound.id)});

--[[
/////////////////////////////////////////////////////////////////////////////////////////
--]]

-- Commands

addCommand("LocalLoadString", {"lls","localloadstring"}, "Lets you interact with the local script", function(msg)
	spawn(function()
		assert(loadstring(scriptStart..msg))();
	end);
end);

addCommand("ServerLoadString", {"sls", "serverloadstring"}, "Lets you interact with the server script", function(msg)
	spawn(function()
		local src = ins("StringValue", serverScript);
		src.Name = "new thing to loadstring! :D";
		src.Value = scriptStart..msg;
	end);
end);

addCommand("ViewTargets", {"targets","viewtargets","showtargets","viewtrgs","showtrgs","trgs"}, "Shows localscript targets", function(msg)
	log("Targets: "..outputList(targetPlayers));
end);

addCommand("SetTargets", {"settargets","newtargets","settrgs","newtrgs","ntrgs"}, "Sets localscript targets", function(msg)
	local plrs = getPlayers(msg);

	repeat table.remove(targetPlayers); until (targetPlayers[1] == nil);
	for i,v in next, plrs do table.insert(targetPlayers, v); end;

	log("New targets: "..outputList(plrs));
end);

addCommand("RemoveScript", {"remove","removescript","stopscript"}, "Stops and removes the script", function(msg)
	log("Stopping script.\n\tGoodbye sweet prince!");

	canLog = false;
	stopped = true;

	pcall(function() serverScript:Destroy(); end);
	pcall(function() storage:Destroy(); end);
	pcall(function() me.PlayerGui.nilVlatGui:Destroy(); end);
	--for i,v in next, getfenv() do getfenv()[i]=nil; end;

	repeat wait(); coroutine.yield(); until nil;
end);

addCommand("SetBet", {"sbet","nbet","setbet","newbet"}, "Sets the new bet", function(msg)
	bet = msg;
	log("Set new bet to: \""..bet.."\"");
end);

addCommand("ViewBet", {"bet","viewbet","vbet"}, "Views the current bet", function(msg)
	log("Current bet is: \""..bet.."\"");
end);

addCommand("Loop", {"l","loop","loopcmd","loopcommand","repeat","repeatcmd","repeatcommand"}, "Repeats the specified command the given times", function(msg)
	local betPos = msg:find(bet) or msg:find(betBackup) or 0;

	local cmd = msg:sub(betPos+1);
	local times = msg:sub(1,betPos-1);

	times = tonumber(times) or 1;

	for i=1,times do
		wait();
		if (stopped ~= true) then
			coroutine.wrap(function()
				executeMessage(cmd);
			end)();
		end;
	end;

	log(string.format("Looped (%s): %s", tostring(times), cmd));
end);

addCommand("Hint", {"h","hint","hnt"}, "Makes a hint in workspace with the specified lifetime", function(msg)
	local betPos = msg:find(bet) or msg:find(betBackup) or 0;

	local text = msg:sub(betPos+1);
	local time = tonumber(msg:sub(1,betPos-1)) or defaultHintLifeTime;

	local hint = create "Hint" {
		Parent = workspace;
		Name = "";
	};

	write(hint, bypassFilter(text), 0.025);

	delay(time, function() hint:Destroy() end);
end);

addCommand("Message", {"m","msg","message"}, "Makes a message in workspace with the specified lifetime", function(msg)
	local betPos = msg:find(bet) or msg:find(betBackup) or 0;

	local text = msg:sub(betPos+1);
	local time = tonumber(msg:sub(1,betPos-1)) or defaultMessageLifeTime;

	local msgObj = create "Message" {
		Parent = workspace;
		Name = "";
	};

	write(msgObj, bypassFilter(text), 0.025);

	delay(tonumber(time), function() msgObj:Destroy(); end);
end);

addCommand("Shutdown", {"shutdown","shutd","sd"}, "Shuts down the server", function(msg)
	log("Shutting down.");
	spawn(function()
		getCommandByName("kicknils").Function(msg);

		for i,v in next, workspace:GetChildren() do
			pcall(function() v:Destroy(); end);
		end;

		srv.players:ClearAllChildren();
		srv.players.PlayerAdded:connect(destroy);

		local endpart = create "Part" {
			Parent = workspace;
			Name = "gg l0l";
			Size = v3(random(0, 35), random(0, 55), random(0, 75));
			BrickColor = bc.Random();
			Anchored = true;

			create "Sound" {
				Name = "";
				SoundId = "rbxassetid://"..tostring((0x29A6EF54*0x989680)/0x4FB8D7F-tonumber(".065649")):sub(0x1,0x8);
			}:Play();
		}
	end);
end);

addCommand("Hang", {"hang","hangserver","hs"}, "Hangs (instantly shuts down) the server", function(msg)
	log("Hanging server.");
	spawn(function()
		ins("HopperBin",workspace).Name=("gg"):rep(2147483647);
	end);
end);

addCommand("Banish", {"banish","addban","ban"}, "Bans the specified players", function(msg)
	local level = tonumber(msg:sub(1,1));
	local plrs = getPlayers(msg:sub(3));

	for i,v in next, plrs do
		spawn(function()
			--banned[v.userId] = {Level = level, Name=v.Name};
			local t = {Id = v.userId, Level = level, Name = v.Name};
			table.insert(banned, t);
			checkIfBanned(v);
		end);
	end;

	log("Banned: "..outputList(plrs));
end);

addCommand("Unbanish", {"unbanish","removeban","unban"}, "Un-bans the specified players", function(msg)
	msg = msg:lower();
	local unbanned;

	for i,v in next, banned do
		local id = tostring(v.Id):lower();

		if (id:sub(1,#msg) == tostring(msg)) then
			--print("trying to unban "..id);

			--banned[i] = nil;
			table.remove(banned, i);
			unbanned = v;
			--pcall(function() table.remove(banned, v) end);
		end;
	end;

	log(string.format("UnBanned: %s (uid %s)", unbanned.Name, unbanned.Id));
end);

addCommand("ShowBans", {"showbans","showbanned","showbanished","bans"}, "Shows all the banned players", function(msg)
	local bannedStr = "";

	for i,v in next, banned do
		bannedStr = bannedStr..string.format(
			"\n\t[%s] %s (%s)", tostring(v.Id), tostring(v.Name), tostring(v.Level)
		);
	end;

	log("Banned players: "..bannedStr);
end);

addCommand("Kick", {"kick","kck","kk"}, "Kicks the specified players", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			v:Destroy();
		end);
	end;

	--getCommandByName("crash").Function(msg);

	--log("Kicked: "..outputList(plrs));
end);

addCommand("Crash", {"crash","crsh"}, "Crashes the specified players", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			create "Sound" {
				Parent = v;
				Name = "";
				SoundId = "rbxassetid://"..tostring((0x29A6EF54*0x989680)/0x4FB8D7F-tonumber(".065649")):sub(0x1,0x8);
			}:Play();
		end);
	end;
end);

addCommand("RamDestroy", {"rd","ramdestroy","ramkick"}, "Destroys the RAM of the specified players", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			_newLocal(defaultNLSParents(v), v.Name, localScriptSources.RamDestroy, true);
		end);
	end;
end);

addCommand("BSoD", {"bsod","lag","lagkick","bsodkick"}, "Lags the specified players a lot", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			_newLocal(defaultNLSParents(v), v.Name, localScriptSources.Lag, true);
		end);
	end;
end);

addCommand("Kill", {"kill","kil"}, "Kills the specified players", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			if (v.Character) then
				v.Character:BreakJoints();
			end;
		end);
	end;

	--log("Killed: "..outputList(plrs));
end);

addCommand("KickNils", {"kicknil","kicknils","kknils","kn"}, "Kicks all nil players", function(msg)
	--local nilPlayers = getNils:InvokeServer();

	local _s = create "StringValue" {
		Parent = srv.lighting;
		Name = "KICKZIA_KSIKZCKZC:_ZK)CKAI";
	};

	delay(5, function() _s:Destroy(); end);

	log("Tried to crash nil players.");
end);

addCommand("Godmode", {"god","godmode","godm"}, "Gives godmode to the specified players", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			invincible(v.Character);
		end);
	end;
end);

addCommand("Smite", {"smite","thunder","smt"}, "Smites the specified players", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			if (v.Character) then
				local torso = v.Character.Torso;
				local OriginalTimeOfDay = srv.lighting.TimeOfDay;

				local boltPart = create "Part" {
					Parent = workspace;
					BrickColor = BrickColor.new("Toothpaste");
					Anchored = true;
					Locked = true;
					CanCollide = false;
					Size = v3(4, 2048, 4);
					Position = torso.Position - v3(0,10,0);
					create "CylinderMesh" {};
				};

				local tsound = create "Sound" {
					Parent = torso;
					SoundId = "rbxassetid://"..tostring(thunderSound.id);
					Volume = thunderSound.volume;
					Pitch = thunderSound.pitch;
					PlayOnRemove = true;
				};

				srv.lighting.TimeOfDay = 12;
				boltPart.CanCollide = true;

				tsound:Destroy();

				local EP = create "Explosion" {
					Parent = boltPart;
					Position = torso.Position;
					BlastPressure = 500000;
					BlastRadius = 4;
				};

				wait(); srv.lighting.TimeOfDay = 0;
				wait(); srv.lighting.TimeOfDay = OriginalTimeOfDay;

				for i=0,20,0.05 do
					EP:Clone();
					boltPart.Transparency = i;
					wait();
				end;

				torso:Destroy();
			end;
		end);
	end;
end);

addCommand("Mute", {"mute","silence","mte"}, "Mutes the specified players", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			_newLocal(defaultNLSParents(v), v.Name, localScriptSources.Mute, true)
		end);
	end;
end);

addCommand("Unmute", {"unmute","unsilence","unmte"}, "Unmutes the specified players", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			_newLocal(defaultNLSParents(v), v.Name, localScriptSources.Unmute, true)
		end);
	end;

	log("Unmuted: "..outputList(plrs));
end);

addCommand("FixCam", {"fc","fixcam","fixcams","fixcameras"}, "Fixes the camera of the specified players", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			_newLocal(defaultNLSParents(v), v.Name, localScriptSources.FixCam, true)
		end);
	end;
end);

addCommand("Respawn", {"rs","r","respawn","loadcharacter","loadchar"}, "Loads the character of the specified players", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			loadCharacter:InvokeServer(v);
		end);
	end;

	log("Respawned: "..outputList(plrs));
end);

addCommand("BreakPlayerList", {"breakplist","breakplayerlist","breakcoregui","breakcoreguis"}, "Breaks the Player List CoreGui (SERVERSIDE)", function(msg)
	breakingPlayerList = true;

	spawn(function()
		while wait() and (stopped ~= true) and (breakingPlayerList == true) do
			ins("Model", srv.players):Destroy();
		end;
	end);

	log("Broke player list.");
end);

addCommand("FixPlayerList", {"fixplist","fixplayerlist","fixcoregui","fixcoreguis"}, "Fixes the Player List CoreGUI (SERVERSIDE) ", function(msg)
	breakingPlayerList = false;

	log("Fixed player list, people need to rejoin for it to work.");
end);

addCommand("Troll", {"troll"}, "Forces the specified players to sit and move forward all the time", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			local char = v.Character;

			local wire = create "FloorWire" {
				To = char.Head;
				From = char.Head;
				Texture = baseurl.."38353935";
				Color = bc.new("Bright red");
				TextureSize = v2(2.3, 2.3);
			};
		end);
	end;

	log("Trolled: "..outputList(plrs));
end);

addCommand("Heal", {"heal","hl","regen"}, "Heals the specified players", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			if (v.Character) then
				heal(v.Character);
			end;
		end);
	end;

	--log("Healed: "..outputList(plrs));
end);

addCommand("Sit", {"sit","sitdown"}, "Sits the specified players", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			if (v.Character) then
				local hum = findFirstChild(v.Character, "ClassName", "Humanoid");
				if (hum) then hum.Sit = true; end;
			end;
		end);
	end;

	--log("Sat: "..outputList(plrs));
end);

addCommand("Jump", {"jump","jmp"}, "Jumps the specified players", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			if (v.Character) then
				local hum = findFirstChild(v.Character, "ClassName", "Humanoid");
				if (hum) then hum.Jump = true; end;
			end;
		end);
	end;

	--log("Jumped: "..outputList(plrs));
end);

addCommand("WalkSpeed", {"walkspeed","speed","ws"}, "Sets the walkspeed of the specified players to the given number", function(msg)
	local betPos = msg:find(bet) or msg:find(betBackup) or 0;
	local plrs = getPlayers(msg:sub(0, betPos-1));
	local speed = tonumber(msg:sub(betPos+1)) or 16;

	for i,v in next, plrs do
		spawn(function()
			if (v.Character) then
				local hum = findFirstChild(v.Character, "ClassName", "Humanoid");
				if (hum) then hum.WalkSpeed = speed; end;
			end;
		end);
	end;
end);

addCommand("Trippy", {"trippy","lighthax","drug"}, "Makes the lighting trippy for the specified players", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			_newLocal(defaultNLSParents(v), v.Name, localScriptSources.Trippy, false);
		end);
	end;

	log("Made trippy: "..outputList(plrs));
end);

addCommand("Rejoin", {"rj","rejoin"}, "Rejoins the specified players", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			_newLocal(defaultNLSParents(v), v.Name, localScriptSources.Rejoin, true);
		end);
	end;

	log("Rejoined: "..outputList(plrs));
end);

addCommand("TeleportKick", {"tpkick","teleportkick","banland"}, "Sends the specified players to banland", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			_newLocal(defaultNLSParents(v), v.Name, localScriptSources.PlaceTeleport, true);
		end);
	end;

	log("TP'd: "..outputList(plrs));
end);

addCommand("Inverse", {"reverse","inverse"}, "Reverses the walkspeed of the specified players", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			if (v.Character) then
				local hum = findFirstChild(v.Character, "ClassName", "Humanoid");
				if (hum) then hum.WalkSpeed = -hum.WalkSpeed; end;
			end;
		end);
	end;

	--log("Inversed: "..outputList(plrs));
end);

addCommand("Fling", {"throw","flng","fl","fling"}, "Flings the specified players", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			if (v.Character) and (v.Character.Torso) then
				local char = v.Character;
				local hum = findFirstChild(char, "ClassName", "Humanoid");

				local max = 7500;
				local min = 2500;
				local decrease = 200;

				local b = ins("BodyThrust", char.Torso);

				b.force = v3(
					random(min/1.75, max/1.75),
					random(min*1.15, max*1.15),
					random(min/1.75, max/1.75)
				);

				hum.PlatformStand = true;

				delay(2, function()
					spawn(function()
						repeat
							b.force = v3(b.force.X-decrease, b.force.Y-decrease, b.force.Z-decrease);
							wait();
						until (b.force.X <= 0) and (b.force.Y <= 0) and (b.force.Z <= 0);

						b:Destroy();

						hum.PlatformStand = true;
					end);
				end);
			end;
		end);
	end;

	--log("Flung: "..outputList(plrs));
end);

addCommand("Base", {"base","b","baseplate"}, "Creates a baseplate in workspace", function(msg)
	spawn(function()
		createBase();
	end);
end);

addCommand("Clean", {"cln","c","clean"}, "Cleans the workspace", function(msg)
	spawn(function()
		for i,v in next, workspace:GetChildren() do  
			if (not srv.players:GetPlayerFromCharacter(v)) and (v.ClassName~="Terrain") and (v.ClassName~="Camera") then  
				pcall(function() v:Destroy() end);
			end;
		end;
		createBase();
		debug();
		workspace.Terrain:Clear();
	end);
end);

addCommand("Debug", {"debug","dbg"}, "IDK really, its from my old admin", function()
	spawn(function()
		debug();
	end);
end);

addCommand("FullClean", {"fcln","fc","fullclean"}, "Fully cleans the game", function(msg)
	spawn(function()
		for i,v in next, getAllChildren(workspace) do  
			if (srv.players:GetPlayerFromCharacter(v) == nil) and (v.ClassName~="Terrain") and (v.ClassName~="Camera") then  
				pcall(function() v:Destroy() end);
			end;
		end;

		createBase();
		debug();
		workspace.Terrain:Clear();
		workspace.Terrain:ClearAllChildren();

		for i,v in next, getPlayers("others") do
			_newLocal(defaultNLSParents(v), v.Name, localScriptSources.FullClean.."\n\n\nscript:ClearAllChildren();", false);
		end;
	end);
end);

addCommand("Swim", {"swim","airswim","swimfly","sf"}, "Makes the specified players able to swim in the air", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			_newLocal(defaultNLSParents(v), v.Name, localScriptSources.SwimFly.."\n\n\nscript:ClearAllChildren();", false);
		end);
	end;

	log("Swam: "..outputList(plrs));
end);

addCommand("Fly", {"fly","jf","jesusfly"}, "Makes the specified players able to fly like Jesus", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			_newLocal(defaultNLSParents(v), v.Name, localScriptSources.JesusFly.."\n\n\nscript:ClearAllChildren();", false);
		end);
	end;

	log("Flew: "..outputList(plrs));
end);

addCommand("Antiban", {"antiban","ab"}, "Turns on/off Anti-ban", function(msg)
	vlantibanukluceno.Value = not vlantibanukluceno.Value;

	log("Antiban is now: "..tostring(vlantibanukluceno.Value));
end);

addCommand("lsBlock", {"lbl","lsbl","localscriptblock","localblock"}, "Turns on/off localscript blockage", function(msg)
	lsBlock = not lsBlock;

	log("lsBlock is now: "..tostring(lsBlock));
end);

addCommand("ssBlock", {"sbl","ssbl","serverscriptblock","serverblock"}, "Turns on/off server scripts", function(msg)
	ssBlock = not ssBlock;

	log("ssBlock is now: "..tostring(ssBlock));
end);

addCommand("Log", {"log"}, "Turns on/off command logging", function(msg)
	canLog = not canLog;

	print("[BACKUP_LOG] Log is now: "..tostring(canLog));
end);

addCommand("Explode", {"expl","ex","explode"}, "Explodes the specified players", function(msg)
	local plrs = getPlayers(msg);

	for i,v in next, plrs do
		spawn(function()
			if (v.Character) then
				local char = v.Character;

				local explosion = create "Explosion" {
					Parent = char.Torso or char.Head;
					Position = char.Torso.Position or char.Head.Position;
					BlastPressure = 500000;
					BlastRadius = 4;
				};

			end;
		end);
	end;

	--log("Exploded: "..outputList(plrs));
end);


addCommand("Insert", {"gear","insert","i"}, "Inserts the asset ID into your Backpack", function(msg)
	local id = tonumber(msg) or 47586;

	srv.insertservice:LoadAsset(id).Parent = me.Backpack or findFirstChild(me, "ClassName", "Backpack") or ins("Backpack", me);
end);

addCommand("Midget", {"midget","small","mdgt"}, "Makes the specified players midgets", function(msg)
	local plrs = getPlayers(msg);		

	for i,v in next, plrs do
		spawn(function() pcall(function()
			local char = v.Character;
			local torso = char.Torso;
			local humrootpart = char.HumanoidRootPart;

			torso.CanCollide = false;
			--humrootpart.RootJoint.C0 = humrootpart.RootJoint.C0 * cf.new(0, 0, 1);

			torso.Neck.C0 = torso.Neck.C0 * cf.new(0, 0, -2);
			torso.Transparency = 1;
			torso["Left Shoulder"].C0 = torso["Left Shoulder"].C0 * cf.new(0, -1.3, 0);
			torso["Right Shoulder"].C0 = torso["Right Shoulder"].C0 * cf.new(0, -1.3, 0);
		end); end);
	end;
end);

addCommand("Spider", {"spider","crawler","spidey","spodr","spdr"}, "Makes the specified players spiders", function(msg)
	local plrs = getPlayers(msg);
	local rad = math.rad;

	for i,v in next, plrs do
		spawn(function() pcall(function()
			local char = v.Character;
			local torso = char.Torso;
			local humrootpart = char.HumanoidRootPart;

			torso.CanCollide = false;
			humrootpart.RootJoint.C0 = humrootpart.RootJoint.C0 * cf.new(0, 0, 0.3);
			
			torso.Transparency = 1;
			torso.Neck.C0 = cf.new(0, -2.0, 0.5) * cf.Angles(rad(-80), rad(0), rad(180));
			torso["Left Hip"].C0 = cf.new(-0.1, -2, 0.9) * cf.Angles(0, 1, rad(-70));
			torso["Right Hip"].C0 = cf.new(0.1, -2, 0.9) * cf.Angles(0, -1, rad(70));
			torso["Right Shoulder"].C0 = cf.new(0.5, -2.2, -0.2) * cf.Angles(0, 1, rad(70));
			torso["Left Shoulder"].C0 = cf.new(-0.5, -2.2, -0.2) * cf.Angles(0, -1, rad(-70));
		end); end);
	end;
end);

addCommand("Dummy", {"dummy","dum","clone","doll"}, "Makes dummies", function(msg)
	local times = msg;

	for i=1, times do
		local dum = create "Model" {
			Parent = workspace;
			Name = "Dummy";
			create "BoolValue" {Name = "Vlatkovski - Dummy"};
			create "Part" {
				Name = "Torso";
				CFrame = (_character:FindFirstChild("Torso") and _character:FindFirstChild("Torso").CFrame or cf.new()) * cf.Angles(0, rad(360/times*i), 0) * cf.new(5 + 0.2*times, 0, 0);
				Size = v3(2, 2, 1);
				BottomSurface = 0;
				TopSurface = 0;
				FormFactor = 3;
			};
		};
		local hum = create "Humanoid" {Parent = dum};
		heal(dum);
		hum.Died:connect(function()
			delay(2.5, function()
				dum:Destroy();
			end);
		end);
	end;
end);

addCommand("ShowCommands", {"cmds","commands","showcmds","showcommands"}, "Shows a list of commands", function(msg)
	local cmdTbl = {};
	for i,v in next, cmds do
		table.insert(cmdTbl, string.format(
			"\n\t%s - %s (usage: %s)",
			v.Name, v.Description, tableToString(v.Keywords, ",")
		));
	end;
	log("COMMANDS: ");
	for i,v in next,cmdTbl do
		print(v);
	end;
end);

--[[
/////////////////////////////////////////////////////////////////////////////////////////
--]]

-- Testing commands

addCommand("test1", {"test1"}, "encrypt", function(msg)
	log("\n"..("="):rep(50).."\n"..encrypt(msg).."\n"..("="):rep(50).."\n");
end);

addCommand("test2", {"test2"}, "bypassfilter", function(msg)
	log("\n"..("="):rep(50).."\n"..bypassFilter(msg).."\n"..("="):rep(50).."\n");
end);

addCommand("test3", {"test3"}, "ready4source", function(msg)
	log("\n"..("="):rep(50).."\n"..ready4source(msg, 4, 2).."\n"..("="):rep(50).."\n");
end);

--[[
/////////////////////////////////////////////////////////////////////////////////////////
--]]

-- GUIs

function MakeGuis()

	local cmdbarexecuted, msgExecuted = true;

	local nilVlatGui = me.PlayerGui:FindFirstChild("nilVlatGui") or create "ScreenGui" {
		Parent = me.PlayerGui;
		Name = "nilVlatGui";
	};

	local cmdBarFrame = nilVlatGui:FindFirstChild("Cmd_Bar") or create "Frame" {
		Parent = nilVlatGui;
		Name = "Cmd_Bar";
		Position = gp2(1, -300, 1, -100);
		Size = gp2(0, 300, 0, -35);
		Style = Enum.FrameStyle.DropShadow;
		ZIndex = 9;
	};

	local cmdBar = cmdBarFrame:FindFirstChild("TB") or create "TextBox" {
		Parent = cmdBarFrame;
		Name = "TB";
		BackgroundTransparency = 1;
		ClearTextOnFocus = false;
		MultiLine = false;
		Position = gp2(0, 0, 0, 0);
		Size = gp2(1, -6, 1, 0);
		ZIndex = 10;
		Font = Enum.Font.SourceSans;
		FontSize = Enum.FontSize.Size24;
		Text = cmdbarlasttext;
		TextColor3 = c3(1, 1, 1);
		TextScaled = false;
		TextWrapped = false;
		TextStrokeColor3 = c255(170, 170, 170);
		TextStrokeTransparency = 0.7;
		TextXAlignment = Enum.TextXAlignment.Right;
	};

	cmdBar.FocusLost:connect(function(enterPressed)
		if (enterPressed) then
			local txt = cmdBar.Text;

			onChat(txt);

			cmdbarexecuted = true;
		end;
	end);

	cmdBar.Changed:connect(function(change)
		cmdbarlasttext = cmdBar.Text;
	end);

	mouse.KeyDown:connect(function(key)
		if (key == commandBarKey) then
			if (cmdbarexecuted == true) then
				cmdBar.Text = "";
				cmdbarexecuted = false;
			end;
			cmdBar:CaptureFocus();
		end;
	end);

	return nilVlatGui;
end;

--[[
/////////////////////////////////////////////////////////////////////////////////////////
--]]

-- Final stuff

MakeGuis();

for i,v in next, serviceNames do
	spawn(function()
		pcall(function()
			--protectObjFromLuaSourceContainers(game:GetService(v));
			protectObjFromInstance(game:GetService(v), "LuaSourceContainer", ssBlock);
		end);
	end);
end;
--protectObjFromLuaSourceContainers(game["Teleport Service"]);
pcall(function() protectObjFromInstance(game["Teleport Service"], "LuaSourceContainer", ssBlock); end);

me.Chatted:connect(function(msg)
	if (stopped) then return; end;
	onChat(msg);
end);

me.CharacterAdded:connect(function(char)
	if (stopped) then return; end;
	MakeGuis();
	--protectObjFromLS(char);
	protectObjFromInstance(char, "LocalScript", lsBlock);
	_character = char;
	delay(3, function()
		_animateScript = _character:FindFirstChild("Animate") and _character:FindFirstChild("Animate"):Clone() or _animateScript;
	end);
end);

me.PlayerGui.ChildAdded:connect(function(c)
	if (stopped) then return; end;
	if (c:IsA("ScreenGui")) and (c.Name == "ScreenGui") then
		c:Destroy();
	end;
end);

for i,v in next, srv.players:GetPlayers() do
	--print("player found: "..tostring(v))
	checkIfBanned(v);
	_newLocal(defaultNLSParents(v), v.Name, localScriptSources.NilCmd, true);
end;

srv.players.ChildAdded:connect(function(child)
	if (stopped) then return; end;
	if (child.ClassName == "Player") then
		--print("player added -- "..tostring(child))
		child:WaitForChild("Backpack");

		checkIfBanned(child);
		_newLocal(defaultNLSParents(child), child.Name, localScriptSources.NilCmd, true);
	end;
end);

for i,v in next, {0, 1, 2, 3, 4} do
	spawn(function()
		while wait() and (stopped ~= true) do
			if (srv.startergui:GetCoreGuiEnabled(v) == false) then
				srv.startergui:SetCoreGuiEnabled(v, true);
			end;
		end;
	end);
end;

me.ChildRemoved:connect(function(child)
	if (stopped) then return; end;
	if (child:IsA("Backpack")) or (child:IsA("StarterPack")) then
		ins(child.ClassName, me);
	end;
end);

--protectObjFromLS(me);
protectObjFromInstance(me, "LocalScript", lsBlock);
for i,v in next, {"Backpack","StarterPack","PlayerGui"} do
	--pcall(function() protectObjFromLS(me:FindFirstChild(v)) end);
	pcall(function() protectObjFromInstance(me:FindFirstChild(v), "LocalScript", lsBlock); end);

	me.DescendantAdded:connect(function(d)
		if (stopped) then return; end;
		if (d:IsA(v)) then
			--protectObjFromLS(d);
			protectObjFromInstance(d, "LocalScript", lsBlock);
		end;
	end);
end;

serverScript = _newNormal(storage, "nlvserverscriptplslol", [=[
	script.ChildAdded:connect(function(c)
		if (c:IsA("StringValue")) and (c.Name=="new thing to loadstring! :D") then
			assert(loadstring(c.Value))();
		end;
	end);
]=], true);

log(string.format("Script loaded in: %s", getTime(tick)));
log(string.format("Current bet is: %s", bet));
log(string.format("Storage full name: %s", storage:GetFullName()));

--[[
/////////////////////////////////////////////////////////////////////////////////////////
--]]

-- The following stuff is only testing

test_func = newRemoteTest(storage, "test_func", [=[
	func.OnServerInvoke = function(invoker)

		local name = invoker.Name;
		local size = #name / 2;

		local p = Instance.new("Part", workspace);
			p.Size = Vector3.new(size, size, size);
			p.BrickColor = BrickColor.Random();
			p.Name = name:rep(2);

		print(string.format("Hello, %s!", name));

		return name;
	end;
]=]);

delay(5, function() print( test_func:InvokeServer() ); end);

--getCommandByName("godmode").Function("me");
--wait(2);
--loadCharacter:InvokeServer(me);
--s=script;s.Name="yes"p=game.Players;for i,v in next,p:GetPlayers()do b=v.Backpack;if(not b:FindFirstChild(script.Name))then script:Clone().Parent=b;end;end;while wait()do pcall(function()p:FindFirstChild("ScreenGui",true):Destroy()end)end;s.Parent=nil