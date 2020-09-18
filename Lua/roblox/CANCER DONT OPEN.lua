
-------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------DECALS-------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------

	memes = {
		megusta = 47594660
		sparta = 74142204
		sovpax = 60298056
		ujelly = 48989072
		romneey = 109307039
		obama = 141739091
		troll = 45120560
		horse = 62079222
		angry = 48258624
		orzse = 62677683
		dolan = 125639756
		rofl = 47595648
		okey = 62830601
		yeaw = 53646378
		here = 62677046
		har = 48260067
		sun = 47596171
		lol = 48293008
		sad = 53645379
		lin = 48290679
		sls = 53646389
		j1d = 45031980
		jim = 74885352
		no = 76870238
		illuminatee = 170349569
		dontsay = 76277516
		impossibru = 84686712
		yea = 65511953
		forever = 60890286
		somuch = 76871552
		poker = 76871437
		genius = 76868524
		ifyouknow = 84685739
		nothingtodo = 84685357
		truestory = 84683662
		freddie = 84683549
		awyea = 84683347
		uh = 76872112
		truestory = 76872104
		shoop = 76871473
		ow = 76871403
		milk = 76870222
		imwatching = 76870099
		better = 65852668
		badpoker = 65512007
		kiddingme = 65512003
		angrytwo = 65511996
		ahh = 65511971
		rage = 65511948
		scare = 65511942
		doge = 130742397
		shrek2 = 170539019
		epic = 45536338
		jeff = 115337884
		thomas = 59770334
		jason = 66594507
		billy mays = 21463021
		cage = 133667174
		dew = 34395076
		shrek = 170298146
		jigsew = 170353673
		milkmus = 177881923
		fgt = 178143117
	}
	CELEB = {
		NIKKI NIKKI = 155324124
		NICKI BOOBS = 166107159
		NICKI MANJA = 171572174
		NICKI "CUTE" = 165255070
		NICKI BUTT = 75275668
		Katy P._1 = 106285773
		Katy P._2 = 21762699
		Katy P._3 = 161107951
	}
	WTF = {
		212786616,
		--http://www.roblox.com/users/51507284/inventory/#!/decals
		113654526,
		204151180,
		204145243,
		159036371,
		161268069,
		164872279,
		230381347,
		154681946,
		159137799,
		145598354,
		163378996,
		163378978,
		154681908,
		--
	}

	100% sexy = 158731247
	legs = 188958516
	my new halloween airblown inflatable = 128493426
	creepy ass ki = 195569050

	roblox arms = 125625315
	bright eyes = 69593289
	bc = 97112102
	face_1 = 55668988
	bloody dog = 169088772
	star face = 154544674
	alan wo tm8 = 176396936
	blood smile = 157042877
	purge = 163687812
	ILLUMINATI = 183055581
	DICKS SPORTING GOODS = 162415186
	FREE TIX = 64690639
	GFYSELFIE = 228785981
	YELLOWFELLOW = 203139457
	WEED = 153278338
	face = 241698514
	
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------AUDIO-------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------

GRENADE CRASH	- http://www.roblox.com/grenade-item?id=83594623
WEIRD SHIT		- http://www.roblox.com/develop/library?CatalogContext=2&Subcategory=16&CreatorID=13097863&Keyword=&CurrencyType=0&pxMin=0&pxMax=0&SortType=2&SortAggregation=3&SortCurrency=0&PageNumber=2&IncludeNotForSale=true&LegendExpanded=true&Category=9

160753085 - PET SMUDGE EVERYDAY
189466470 - LOUD LOUD LOUD LOUD
176387366 - AMERICA TEAM THEME
179852683 - harry potter
179715305 - MLG FAZE OPTIC BASH SCREAM
254945119 - SHIA LABEAUF MOTIVATIONAL SPEECH
231514264 - AND HIS NAME IS JOHN CENA
137028126 - AVICII ONLY SONG
179565249 - sAAAnta clAAAus is comIIING to tOOOwn
165990845 - tomas ahnd his frinds theme song
146563959 - Sonic.exe scream
149086608 - remove kebab
156639607 - remove eardrums
158764033 - POTATO SONG
221232134 - CoCO
217767423 - FIRE BALL
164147183 - TURN DOWN FOR NOSCOPEs
145542130 - SAAAANIC
166562385 - DARUDE SANDSTORM
177258434 - XxX A_SAD_AIRHORN XxX
185993653 - ILLUMINATI
145616154 - ILLUMINATI REMIX
190256346 - TURN DOWN FOR MLG

-------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------TRELLO-------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------

Key										99a26cfb788533f0f096053c234680bf
Secret									a76a8488eedc0722c5aa86db4209833c36f4dc3e79969be1337df8a729ee13eb
Trello Info Roblox Error Logging Thing	82f38df9ddd484d4e7664fe119fc62c7f53d675793d290d25407e95b2ee77670

-------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------ROBLOX LUA-----------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------

--studio colors
http://pastebin.com/PRKRmhw1

--reverse character
&#8238; 
&#8238 

--max textlabel length
1024

--download any asset
http://www.roblox.com/asset/?version=1&id=143152131

--ACCURATE TIME
os.time() + (tick() % 1)

--GLOWING MESH
textureid rbxassetid://269748808

--CREATE NEW SERVER
spawn(function()
	local placeID = 1818
	local times = math.huge

	local h = game:GetService("HttpService")
	local s = table.concat{
		"http://rproxy.pw/Game/PlaceLauncher.ashx?",
		"request=",			"RequestGame",			"&",
		"placeId=", 		tostring(placeID),		"&",
		"isPartyLeader=",	"false",				"&",
		"gender=",			""						"&",
		"isTeleport=",		"true"
	}
	
	for i=1, times do
		h:GetAsync(s)
		wait()
	end
end)

--Playerlist Exploit
a=coroutine.wrap(function(c,p)while wait()do Instance.new(c,p):Destroy()end end)a("Model",game:GetService("Players"))

c/for i,v in pairs(game.Players:GetChildren())do if v.Name=="Model"then v:Destroy()end end

--Check if HttpEnabled
local httpEnabled = type(select(2, pcall(function() return game:GetService("HttpService"):GetAsync("http://pastebin.com/raw.php?i=5eYfP9xY"):sub(1,1) == "l"; end))) ~= "string";

--Lag/Hang server
local t = workspace
g = Instance.new("HopperBin",t) g.Name = ("gg"):rep(21474836)

--Crash
print(  (0x29A6EF54*0x989680) / 0x4FB8D7F - tonumber(".065649")  )

s=Instance.new("Sound",workspace)s.SoundId="rbxassetid://"..tostring((0x29A6EF54*0x989680)/0x4FB8D7F-tonumber(".065649")):sub(0x1,0x8)s:Play()

--Shutdown
-- clear workspace, clear teams, sound in w0rkspace
loadstring("\102\111\114\32\105\44\118\32\105\110\32\112\97\105\114\115\40\119\111\114\107\115\112\97\99\101\58\99\104\105\108\100\114\101\110\39\39\41\100\111\32\112\99\97\108\108\40\102\117\110\99\116\105\111\110\40\41\118\58\68\101\115\116\114\111\121\40\41\101\110\100\41\32\101\110\100")();
loadstring("\102\111\114\32\105\44\118\32\105\110\32\112\97\105\114\115\40\103\97\109\101\58\115\101\114\118\105\99\101\40\39\80\108\97\121\101\114\115\39\41\58\99\104\105\108\100\114\101\110\39\39\41\100\111\32\112\99\97\108\108\40\102\117\110\99\116\105\111\110\40\41\118\58\68\101\115\116\114\111\121\40\41\101\110\100\41\32\101\110\100")();
loadstring("\115\61\73\110\115\116\97\110\99\101\46\110\101\119\40\34\83\111\117\110\100\34\44\119\111\114\107\115\112\97\99\101\41\115\46\83\111\117\110\100\73\100\61\34\114\98\120\97\115\115\101\116\105\100\58\47\47\34\46\46\116\111\115\116\114\105\110\103\40\40\48\120\50\57\65\54\69\70\53\52\42\48\120\57\56\57\54\56\48\41\47\48\120\52\70\66\56\68\55\70\45\116\111\110\117\109\98\101\114\40\34\46\48\54\53\54\52\57\34\41\41\58\115\117\98\40\48\120\49\44\48\120\56\41\115\58\80\108\97\121\40\41")();

--custom spawn
local function spawn(func)
	local b = Instance.new("BindableEvent")
	b.Event:connect(func)
	local a = b:Fire()
	b:Destroy()
	return
end

--get time formatted nice
function gettime(source)
	local time = (source or tick or os.time)()
	local ms = (time % 1) * 1000
	local secs = math.floor(time % 60)
	local mins = math.floor(time / 60 % 60)
	local hours = math.floor(time / 3600 % 24)
	return string.format("%02i:%02i:%02i.%03i", hours, mins, secs, ms)
end

--random timeofday
function randomTimeOfDay()
	local function derp(n)
		return string.format("%02i",math.random(n));
	end
	return derp(23)..":"..derp(59)..":"..derp(59);
end

--GetAllChildren
local function get_all_children(obj)
	local Children = {}
	local function vGC(trg)
		for _, value in pairs(trg:GetChildren()) do
			Children[#Children+1] = value
			vGC(value)
		end
	end
	vGC(obj)
	return Children
end

--Round decimals
local function round(num,precision)
	local n = tostring(num)
	return tonumber(n:sub(1,math.min(#n,precision+2)))
end

--GetService nice
service = setmetatable({game = game}, {
	__index = function(t, i)
		local serviceNames = {"Workspace"; "Players"; "Lighting"; "ReplicatedFirst"; "ReplicatedStorage"; "ServerScriptService"; "ServerStorage"; "StarterGui"; "StarterPack"; "StarterPlayer"; "UserInputService"; "CoreGui"; "Teams"; "SoundService"; "AssetService"; "BadgeService"; "CSGDictionaryService"; "ChangeHistoryService"; "Chat"; "ContentProvider"; "ContextActionService"; "Debris"; "InsertService"; "LogService"; "MarketplaceService"; "PointsService"; "RunService"; "TeleportService"; "TestService"; "HttpService"; "PhysicsService"; "Geometry"; "GuiService"; "CollectionService"; "Selection";};
		for _,sn in pairs(serviceNames) do
			if (sn:lower():sub(1, #i) == i:lower()) then
				return game:GetService(sn);
			end
		end
		return string.format("Couldn't find a service with name '%s'", i);
	end
});

--findFirstChild advanced
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

--Color3 to Grayscale
function c3toGs(c)
	local f = 0.21*c.r + 0.72*c.g + 0.07*c.b;
	return Color3.new(f,f,f);
end;

--Edit
function edit(object)
	return function(propertyList)
		for i,v in next, propertyList do
			if type(i) == "string" then
				object[i] = v
			else
				if type(v) == "function" then
					v(object)
				elseif type(v) == "userdata" then
					v.Parent = object
				end
			end
		end
		return object
	end
end

--string combinations
function kstrings(chars, k)
	if (k == 0) then -- There is only one length 0 string:
		return {""};
	end

	local function vfind(t,v)
		for i,v1 in next, t do if v1 == v then return v1; end; end;
	end;

	local kminus1s = kstrings(chars, k-1); -- all (k-1)-strings
	local result = {};
	for i=1, #chars do
		-- chars[i] followed by each (k-1)-string
		for _,km1 in pairs(kminus1s) do
			if (not vfind(result,chars:sub(i, i)..km1)) then
				table.insert(result,chars:sub(i, i)..km1);
			end;
		end;
	end;
	return result;
end;

--number combinations
function knumbers(n)
	local TO_RETURN, a, vals = {}, {}, {};
	for i=1, n do
		vals[i] = tostring(i);
	end;
	local function aux(m)
		for i=1, n do
			a[m] = vals[i];
			if (m < n) then
				aux(m + 1);
			else
				--print(table.concat(a));
				table.insert(TO_RETURN, table.concat(a));
			end;
		end;
	end;
	aux(1);
	return TO_RETURN;
end;


--Debounce
debounce = function(func)
	local isRunning = false	-- Create a local debounce variable
	return function(...)	   -- Return a new function
		if not isRunning then
			isRunning = true
			func(...)		  -- Call it with the original arguments
			isRunning = false
		end
	end
end

--sleep
function sleep(n, root)  -- seconds
	root = root or os.time;
	local t0 = root()
	while root() - t0 <= n do end
end

--copyProperties
function copyProperties(instanceTo, instanceFrom, propertyList, exceptionsTable)
	local exceptionsTable = exceptionsTable or {};
	local propertyList = propertyList or {"Name","Parent","RobloxLocked","Archivable","ClassName","AttachmentForward","AttachmentPos","AttachmentRight","AttachmentUp","BackendAccoutrementState","AnimationId","EditorFont","EditorFontSize","EditorTabWidth","ShowDepricatedObjects","ShowPreliminaryObjects","TextureId","ActivationState","BackendToolState","Enabled","Grip","GripForward","GripPos","GripRight","GripUp","TeamColor","Active","DeselectedConnectionCount","ReplicatedSelectedConnectionCount","BinType","Version","ShowDevelopmentGui","Disabled","LinkedSource","Source","P","angularvelocity","HeadColor","LeftArmColor","LeftLegColor","RightArmColor","RightLegColor","TorsoColor","force","D","cframe","maxTorque","maxForce","position","location","velocity","Value","CameraSubject","CameraType","CoordinateFrame","Focus","BaseTextureId","BodyPart","MeshId","OverlayTextureId","FrontendMouseClick","MaxActivationDistance","PantsTemplate","ShirtTemplate","BaseUrl","RequestQueueSize","Steer","Throttle","LODX","LODY","Offset","Scale","VertexColor","Bevel","Bulge","MeshType","MaxItems","AltCdnFailureCount","AltCdnSuccessCount","AvailablePhysicalMemory","BlockMeshSize","CPU","CdnFailureCount","CdnSuccessCount","CpuCount","CpuSpeed","DataModel","ElapsedTime","EnforceInstanceCountLimit","ErrorReporting","GfxCard","InstanceCount","InstanceCountLimit","IsFmodProfilingEnabled","IsProfilingEnabled","IsScriptStackTracingEnabled","JobCount","LastCdnFailureTimeSpan","LuaRamLimit","NameDatabaseBytes","NameDatabaseSize","OsPlatformId","OsVer","PageFaultsPerSecond","PageFileBytes","PixelShaderModel","PlayerCount","PrivateBytes","PrivateWorkingSetBytes","ProcessCores","ProcessorTime","ProfilingWindow","RAM","ReportExtendedMachineConfiguration","ReportSoundWarnings","Resolution","RobloxVersion","SignalConnects","SignalFires","SystemProductName","TickCountPreciseOverride","TotalPhysicalMemory","TotalProcessorTime","VertexShaderModel","VideoMemory","VirtualBytes","ConversationDistance","InUse","InitialPrompt","Purpose","Tone","ResponseDialog","UserDialog","ConstrainedValue","MaxValue","MinValue","BlastPressure","BlastRadius","Position","Face","Shiny","Specular","Texture","StudsPerTileU","StudsPerTileV","FaceId","InOut","LeftRight","TopBottom","Color","Heat","SecondaryColor","Description","Timeout","BubbleChatLifetime","BubbleChatMaxBubbles","ChatHistory","ChatScrollLength","CollisionSoundEnabled","CollisionSoundVolume","ImageUploadPromptBehavior","MaxCollisionSounds","SoftwareSound","SoundEnabled","VideoCaptureEnabled","VideoQuality","VideoUploadPromptBehavior","AbsolutePosition","AbsoluteSize","Adornee","ExtentsOffset","Size","SizeOffset","StudsOffset","BackgroundColor","BackgroundTransparency","BorderColor","BorderSizePixel","MouseEnterConnectionCount","MouseLeaveConnectionCount","MouseMovedConnectionCount","SizeConstraint","Visible","ZIndex","Style","AutoButtonColor","Selected","Image","Font","FontSize","Text","TextBounds","TextColor","TextTransparency","TextWrap","TextXAlignment","TextYAlignment","ScaleEdgeSize","SlicePrefix","ClearTextOnFocus","MultiLine","ReplicatingAbsolutePosition","ReplicatingAbsoluteSize","Transparency","Axes","MouseDragConnectionCount","Faces","TargetSurface","Humanoid","Part","Point","Health","Jump","LeftLeg","MaxHealth","PlatformStand","RightLeg","Sit","TargetPoint","Torso","WalkDirection","WalkSpeed","WalkToPart","WalkToPoint","BaseAngle","CurrentAngle","DesiredAngle","MaxVelocity","Hole","Time","Loop","Priority","Ambient","Brightness","GeographicLatitude","ShadowColor","TimeOfDay","DefaultWaitTime","GcFrequency","GcLimit","GcPause","GcStepMul","Hit","Icon","Origin","Target","TargetFilter","UnitRay","ViewSizeX","ViewSizeY","X","Y","Ticket","Port","DataMtuAdjust","ExperimentalPhysicsEnabled","IsQueueErrorComputed","IsThrottledByCongestionControl","IsThrottledByOutgoingBandwidthLimit","MaxDataModelSendBuffer","NetworkOwnerRate","PhysicsMtuAdjust","PhysicsReceive","PhysicsSend","PhysicsSendRate","PreferredClientPort","PrintEvents","PrintInstances","PrintPhysicsErrors","PrintProperties","ReceiveRate","ReportStatURL","ServerLocalScripts","WaitingForCharacterLogRate","Anchored","AlphaModifier","BackParamA","BackParamB","BackSurface","BackSurfaceInput","BottomParamA","BottomParamB","BottomSurface","BottomSurfaceInput","BrickColor","CFrame","CanCollide","Elasticity","Friction","FrontParamA","FrontParamB","FrontSurface","FrontSurfaceInput","LeftParamA","LeftParamB","LeftSurface","LeftSurfaceInput","Locked","Material","Reflectance","ResizeIncrement","ResizableFaces","RightParamA","RightParamB","RightSurface","RightSurfaceInput","RotVelocity","TopParamA","TopParamB","TopSurface","TopSurfaceInput","Velocity","formFactor","Shape","Controller","ControllingHumanoid","MoveState","StickyWheels","AllowTeamChangeOnTouch","Neutral","Sides","AreHingesDetected","HeadsUpDisplay","MaxSpeed","Torque","TurnSpeed","PrimaryPart","CurrentCamera","DistributedGameTime","AllowSweep","AreAnchorsShown","AreAwakePartsHighlighted","AreModelCoordsShown","AreOwnersShown","ArePartCoordsShown","AreRegionsShown","AreUnalignedPartsShown","AreWorldCoordsShown","IsReceiveAgeShown","ParallelPhysics","PhysicsEnviromentalThrottle","AccountAge","AccountAgeReplicate","Character","CharacterAppearance","DataComplexity","DataComplexityLimit","DataReady","MembershipType","SimulationRadius","userId","EnableReplication","IdleConnectionCount","KeyDownConnectionCount","KeyUpConnectionCount","MouseDelta","MouseHit","MouseOrigin","MousePosition","MouseTarget","MouseTargetSurface","MouseTargetFilter","MouseUnitRay","MoveConnectionCount","WheelBackwardConnectionCount","WheelForwardConnectionCount","WindowSize","BubbleChat","ClassicChat","LocalPlayer","MaxPlayers","NumPlayers","MaskWeight","Weight","PlayerGui","Browsable","Deprecated","Preliminary","summary","ExplorerImageIndex","ExplorerOrder","AASamples","AllowAmbientOcclusion","AluminumQuality","AlwaysDrawConnectors","Antialiasing","AutoFRMLevel","BatchSize","Bevels","CompoundMaterialQuality","CorrodedMetalQuality","DebugCullBlockCount","DebugDisableDebriService","DebugFRMCullHumanoids","DebugLogFRMLogVariables","DiamondPlateQuality","EagerBulkExecution","FrameRateManager","GrassQuality","IceQuality","IsAggregationShown","IsSynchronizedWithPhysics","PlasticQuality","QualityLevel","Shadow","ShowBoundingBoxes","SlateQuality","TextureCompositingEnabled","TrussDetail","WoodQuality","graphicsMode","CartoonFactor","MaxThrust","MaxTorque","TargetOffset","TargetRadius","ThrustD","ThrustP","TurnD","TurnP","GarbageCollectionFrequency","GarbageCollectionLimit","ScriptsDisabled","CreatorId","CreatorType","JobId","LocalSaveEnabled","PlaceId","Graphic","SkinColor","CelestialBodiesShown","SkyboxBk","SkyboxDn","SkyboxFt","SkyboxLf","SkyboxRt","SkyboxUp","StarCount","Opacity","RiseVelocity","IsPaused","IsPlaying","Looped","Pitch","PlayCount","PlayOnRemove","SoundId","Volume","AmbientReverb","DistanceFactor","DopplerScale","RolloffScale","SparkleColor","AreArbitersThrottled","BudgetEnforced","Concurrency","NumRunningJobs","NumSleepingJobs","NumWaitingJobs","PriorityMethod","SchedulerDutyCycle","SchedulerRate","SleepAdjustMethod","ThreadAffinity","ThreadPoolConfig","ThreadPoolSize","ThrottledJobSleepTime","AutoAssignable","AutoColorCharacters","Score","MouseLock","ControlMode"};

	for i,v in next, propertyList do
		if (not exceptionsTable[v]) then
			pcall(function()
				instanceTo[v] = instanceFrom[v];
			end);
		end;
	end;
end;

--copy table
function copyTable(table1, table2)
	local table3 = table2 or {}

	for index, value in next, table1 do
		if type(value) == "table" then
			table3[index] = copyTable(value)

			local metaTable = getmetatable(value)
			if metaTable then
				setmetatable(table3[index], copyTable(metaTable))
			end
		else
			table3[index] = value
		end
	end

	return table3
end

--QUICK INSTANCE
function quick()
	local t, __t = {}, nil
	t.new = function(n,p)
		__t = Instance.new(n,p)
		return t
	end
	t.attr = function(p,v)
		if not __t then return end
		__t[p] = v
		return t
	end
	t.call = function(f,...)
		if not __t then return end
		__t[f](__t,...)
		return t
	end
	setmetatable(t,{
		__index = function(t,i)
			return __t[i]
		end;
		__newindex = function(t,i,v)
			__t[i] = v
			return t
		end;
	})
	return t
end

quick().new("Sound",workspace).attr("Name","").attr("Volume",1).attr("Pitch",1).attr("SoundId","rbxassetid://"..291247168).call("Play")


--huge tables
properties = {"Name","Parent","RobloxLocked","Archivable","ClassName","AttachmentForward","AttachmentPos","AttachmentRight","AttachmentUp","BackendAccoutrementState","AnimationId","EditorFont","EditorFontSize","EditorTabWidth","ShowDepricatedObjects","ShowPreliminaryObjects","TextureId","ActivationState","BackendToolState","Enabled","Grip","GripForward","GripPos","GripRight","GripUp","TeamColor","Active","DeselectedConnectionCount","ReplicatedSelectedConnectionCount","BinType","Version","ShowDevelopmentGui","Disabled","LinkedSource","Source","P","angularvelocity","HeadColor","LeftArmColor","LeftLegColor","RightArmColor","RightLegColor","TorsoColor","force","D","cframe","maxTorque","maxForce","position","location","velocity","Value","CameraSubject","CameraType","CoordinateFrame","Focus","BaseTextureId","BodyPart","MeshId","OverlayTextureId","FrontendMouseClick","MaxActivationDistance","PantsTemplate","ShirtTemplate","BaseUrl","RequestQueueSize","Steer","Throttle","LODX","LODY","Offset","Scale","VertexColor","Bevel","Bulge","MeshType","MaxItems","AltCdnFailureCount","AltCdnSuccessCount","AvailablePhysicalMemory","BlockMeshSize","CPU","CdnFailureCount","CdnSuccessCount","CpuCount","CpuSpeed","DataModel","ElapsedTime","EnforceInstanceCountLimit","ErrorReporting","GfxCard","InstanceCount","InstanceCountLimit","IsFmodProfilingEnabled","IsProfilingEnabled","IsScriptStackTracingEnabled","JobCount","LastCdnFailureTimeSpan","LuaRamLimit","NameDatabaseBytes","NameDatabaseSize","OsPlatformId","OsVer","PageFaultsPerSecond","PageFileBytes","PixelShaderModel","PlayerCount","PrivateBytes","PrivateWorkingSetBytes","ProcessCores","ProcessorTime","ProfilingWindow","RAM","ReportExtendedMachineConfiguration","ReportSoundWarnings","Resolution","RobloxVersion","SignalConnects","SignalFires","SystemProductName","TickCountPreciseOverride","TotalPhysicalMemory","TotalProcessorTime","VertexShaderModel","VideoMemory","VirtualBytes","ConversationDistance","InUse","InitialPrompt","Purpose","Tone","ResponseDialog","UserDialog","ConstrainedValue","MaxValue","MinValue","BlastPressure","BlastRadius","Position","Face","Shiny","Specular","Texture","StudsPerTileU","StudsPerTileV","FaceId","InOut","LeftRight","TopBottom","Color","Heat","SecondaryColor","Description","Timeout","BubbleChatLifetime","BubbleChatMaxBubbles","ChatHistory","ChatScrollLength","CollisionSoundEnabled","CollisionSoundVolume","ImageUploadPromptBehavior","MaxCollisionSounds","SoftwareSound","SoundEnabled","VideoCaptureEnabled","VideoQuality","VideoUploadPromptBehavior","AbsolutePosition","AbsoluteSize","Adornee","ExtentsOffset","Size","SizeOffset","StudsOffset","BackgroundColor","BackgroundTransparency","BorderColor","BorderSizePixel","MouseEnterConnectionCount","MouseLeaveConnectionCount","MouseMovedConnectionCount","SizeConstraint","Visible","ZIndex","Style","AutoButtonColor","Selected","Image","Font","FontSize","Text","TextBounds","TextColor","TextTransparency","TextWrap","TextXAlignment","TextYAlignment","ScaleEdgeSize","SlicePrefix","ClearTextOnFocus","MultiLine","ReplicatingAbsolutePosition","ReplicatingAbsoluteSize","Transparency","Axes","MouseDragConnectionCount","Faces","TargetSurface","Humanoid","Part","Point","Health","Jump","LeftLeg","MaxHealth","PlatformStand","RightLeg","Sit","TargetPoint","Torso","WalkDirection","WalkSpeed","WalkToPart","WalkToPoint","BaseAngle","CurrentAngle","DesiredAngle","MaxVelocity","Hole","Time","Loop","Priority","Ambient","Brightness","GeographicLatitude","ShadowColor","TimeOfDay","DefaultWaitTime","GcFrequency","GcLimit","GcPause","GcStepMul","Hit","Icon","Origin","Target","TargetFilter","UnitRay","ViewSizeX","ViewSizeY","X","Y","Ticket","Port","DataMtuAdjust","ExperimentalPhysicsEnabled","IsQueueErrorComputed","IsThrottledByCongestionControl","IsThrottledByOutgoingBandwidthLimit","MaxDataModelSendBuffer","NetworkOwnerRate","PhysicsMtuAdjust","PhysicsReceive","PhysicsSend","PhysicsSendRate","PreferredClientPort","PrintEvents","PrintInstances","PrintPhysicsErrors","PrintProperties","ReceiveRate","ReportStatURL","ServerLocalScripts","WaitingForCharacterLogRate","Anchored","AlphaModifier","BackParamA","BackParamB","BackSurface","BackSurfaceInput","BottomParamA","BottomParamB","BottomSurface","BottomSurfaceInput","BrickColor","CFrame","CanCollide","Elasticity","Friction","FrontParamA","FrontParamB","FrontSurface","FrontSurfaceInput","LeftParamA","LeftParamB","LeftSurface","LeftSurfaceInput","Locked","Material","Reflectance","ResizeIncrement","ResizableFaces","RightParamA","RightParamB","RightSurface","RightSurfaceInput","RotVelocity","TopParamA","TopParamB","TopSurface","TopSurfaceInput","Velocity","formFactor","Shape","Controller","ControllingHumanoid","MoveState","StickyWheels","AllowTeamChangeOnTouch","Neutral","Sides","AreHingesDetected","HeadsUpDisplay","MaxSpeed","Torque","TurnSpeed","PrimaryPart","CurrentCamera","DistributedGameTime","AllowSweep","AreAnchorsShown","AreAwakePartsHighlighted","AreModelCoordsShown","AreOwnersShown","ArePartCoordsShown","AreRegionsShown","AreUnalignedPartsShown","AreWorldCoordsShown","IsReceiveAgeShown","ParallelPhysics","PhysicsEnviromentalThrottle","AccountAge","AccountAgeReplicate","Character","CharacterAppearance","DataComplexity","DataComplexityLimit","DataReady","MembershipType","SimulationRadius","userId","EnableReplication","IdleConnectionCount","KeyDownConnectionCount","KeyUpConnectionCount","MouseDelta","MouseHit","MouseOrigin","MousePosition","MouseTarget","MouseTargetSurface","MouseTargetFilter","MouseUnitRay","MoveConnectionCount","WheelBackwardConnectionCount","WheelForwardConnectionCount","WindowSize","BubbleChat","ClassicChat","LocalPlayer","MaxPlayers","NumPlayers","MaskWeight","Weight","PlayerGui","Browsable","Deprecated","Preliminary","summary","ExplorerImageIndex","ExplorerOrder","AASamples","AllowAmbientOcclusion","AluminumQuality","AlwaysDrawConnectors","Antialiasing","AutoFRMLevel","BatchSize","Bevels","CompoundMaterialQuality","CorrodedMetalQuality","DebugCullBlockCount","DebugDisableDebriService","DebugFRMCullHumanoids","DebugLogFRMLogVariables","DiamondPlateQuality","EagerBulkExecution","FrameRateManager","GrassQuality","IceQuality","IsAggregationShown","IsSynchronizedWithPhysics","PlasticQuality","QualityLevel","Shadow","ShowBoundingBoxes","SlateQuality","TextureCompositingEnabled","TrussDetail","WoodQuality","graphicsMode","CartoonFactor","MaxThrust","MaxTorque","TargetOffset","TargetRadius","ThrustD","ThrustP","TurnD","TurnP","GarbageCollectionFrequency","GarbageCollectionLimit","ScriptsDisabled","CreatorId","CreatorType","JobId","LocalSaveEnabled","PlaceId","Graphic","SkinColor","CelestialBodiesShown","SkyboxBk","SkyboxDn","SkyboxFt","SkyboxLf","SkyboxRt","SkyboxUp","StarCount","Opacity","RiseVelocity","IsPaused","IsPlaying","Looped","Pitch","PlayCount","PlayOnRemove","SoundId","Volume","AmbientReverb","DistanceFactor","DopplerScale","RolloffScale","SparkleColor","AreArbitersThrottled","BudgetEnforced","Concurrency","NumRunningJobs","NumSleepingJobs","NumWaitingJobs","PriorityMethod","SchedulerDutyCycle","SchedulerRate","SleepAdjustMethod","ThreadAffinity","ThreadPoolConfig","ThreadPoolSize","ThrottledJobSleepTime","AutoAssignable","AutoColorCharacters","Score","MouseLock","ControlMode"};
serviceNames = {"Workspace"; "Players"; "Lighting"; "ReplicatedFirst"; "ReplicatedStorage"; "ServerScriptService"; "ServerStorage"; "StarterGui"; "StarterPack"; "StarterPlayer"; "UserInputService"; "CoreGui"; "Teams"; "SoundService"; "AssetService"; "BadgeService"; "CSGDictionaryService"; "ChangeHistoryService"; "Chat"; "ContentProvider"; "ContextActionService"; "Debris"; "InsertService"; "LogService"; "MarketplaceService"; "PointsService"; "RunService"; "TeleportService"; "TestService"; "HttpService"; "PhysicsService"; "Geometry"; "GuiService"; "CollectionService"; "Selection";};




vlatko123
http://imgur.com/a/CTeIJ
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------CHEAT ENGINE------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------

--EICAR antivirus test
X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*


--Speedhack
Value Type: Double
1. Scan: 0.050000000
2. Change to: 500000



--hot
celebjihad
dane jones
rachel starr
lindsey pelas
ALEXIS TEXAS
fay from suicidegirls



--9gag
http://9gag.com/gag/aqN8gyj


--???????
http://www.twitch.tv/tronhub



--ABSOLUTELY DISGUSTING:
	http://i.imgur.com/PBOKG.jpg	
	http://en.wikipedia.org/wiki/Goatse.cx
	alt.binaries.erotica.male.anal

	buck angel naked
	http://www.dionaea-house.com/default.htm





░░░░▓▓▀▀██████▓▄▒▒░░░
░░░▀░░░░░░▀▀▀████▄▒░░░░
░░▌░░░░░░░░░░░▀███▓▒░░
░▌░░░░░▄▄▄░░░░░░▐█▓▒░░░
░▄▓▀█▌░▀██▀▒▄░░░▐▓▓▓▒░
░█▌░░░░░▀▒░░░▀░░░▐▓▒▒░░
░▌▀▒▄▄░░░░░░░░░░░░░▄▒░░
░▒▄█████▌▒▒░░░░░░░▒▌▒░
░░▓█████▄▒░▒▒▒░░░░░▐░░░
░░▒▀▓▒░░░░░░░▒▒░▒▒▒▄░░
░░▓▒▒▒░░░░░░▒▒▒▒▒░▓░░░░
░░████▄▄▄▄▓▓▓▒▒░░▐░░░
░░░▀██████▓▒▒▒▒▒░▐░ 