do spawn(function()

-- modified by vlatkovski
-- you can run it as a normal script (local), plus the gui will be placed in CoreGui ONLY if it can't find your playergui and it has core access
-- note: i would have rewrote the whole thing so it's easier to understand, but it's too much and i rq'd

Properties = {"Name","Parent","RobloxLocked","Archivable","ClassName","AttachmentForward","AttachmentPos","AttachmentRight","AttachmentUp","BackendAccoutrementState","AnimationId","EditorFont","EditorFontSize","EditorTabWidth","ShowDepricatedObjects","ShowPreliminaryObjects","TextureId","ActivationState","BackendToolState","Enabled","Grip","GripForward","GripPos","GripRight","GripUp","TeamColor","Active","DeselectedConnectionCount","ReplicatedSelectedConnectionCount","BinType","Version","ShowDevelopmentGui","Disabled","LinkedSource","Source","P","angularvelocity","HeadColor","LeftArmColor","LeftLegColor","RightArmColor","RightLegColor","TorsoColor","force","D","cframe","maxTorque","maxForce","position","location","velocity","Value","CameraSubject","CameraType","CoordinateFrame","Focus","BaseTextureId","BodyPart","MeshId","OverlayTextureId","FrontendMouseClick","MaxActivationDistance","PantsTemplate","ShirtTemplate","BaseUrl","RequestQueueSize","Steer","Throttle","LODX","LODY","Offset","Scale","VertexColor","Bevel","Bulge","MeshType","MaxItems","AltCdnFailureCount","AltCdnSuccessCount","AvailablePhysicalMemory","BlockMeshSize","CPU","CdnFailureCount","CdnSuccessCount","CpuCount","CpuSpeed","DataModel","ElapsedTime","EnforceInstanceCountLimit","ErrorReporting","GfxCard","InstanceCount","InstanceCountLimit","IsFmodProfilingEnabled","IsProfilingEnabled","IsScriptStackTracingEnabled","JobCount","LastCdnFailureTimeSpan","LuaRamLimit","NameDatabaseBytes","NameDatabaseSize","OsPlatformId","OsVer","PageFaultsPerSecond","PageFileBytes","PixelShaderModel","PlayerCount","PrivateBytes","PrivateWorkingSetBytes","ProcessCores","ProcessorTime","ProfilingWindow","RAM","ReportExtendedMachineConfiguration","ReportSoundWarnings","Resolution","RobloxVersion","SignalConnects","SignalFires","SystemProductName","TickCountPreciseOverride","TotalPhysicalMemory","TotalProcessorTime","VertexShaderModel","VideoMemory","VirtualBytes","ConversationDistance","InUse","InitialPrompt","Purpose","Tone","ResponseDialog","UserDialog","ConstrainedValue","MaxValue","MinValue","BlastPressure","BlastRadius","Position","Face","Shiny","Specular","Texture","StudsPerTileU","StudsPerTileV","FaceId","InOut","LeftRight","TopBottom","Color","Heat","SecondaryColor","Description","Timeout","BubbleChatLifetime","BubbleChatMaxBubbles","ChatHistory","ChatScrollLength","CollisionSoundEnabled","CollisionSoundVolume","ImageUploadPromptBehavior","MaxCollisionSounds","SoftwareSound","SoundEnabled","VideoCaptureEnabled","VideoQuality","VideoUploadPromptBehavior","AbsolutePosition","AbsoluteSize","Adornee","ExtentsOffset","Size","SizeOffset","StudsOffset","BackgroundColor","BackgroundTransparency","BorderColor","BorderSizePixel","MouseEnterConnectionCount","MouseLeaveConnectionCount","MouseMovedConnectionCount","SizeConstraint","Visible","ZIndex","Style","AutoButtonColor","Selected","Image","Font","FontSize","Text","TextBounds","TextColor","TextTransparency","TextWrap","TextXAlignment","TextYAlignment","ScaleEdgeSize","SlicePrefix","ClearTextOnFocus","MultiLine","ReplicatingAbsolutePosition","ReplicatingAbsoluteSize","Transparency","Axes","MouseDragConnectionCount","Faces","TargetSurface","Humanoid","Part","Point","Health","Jump","LeftLeg","MaxHealth","PlatformStand","RightLeg","Sit","TargetPoint","Torso","WalkDirection","WalkSpeed","WalkToPart","WalkToPoint","BaseAngle","CurrentAngle","DesiredAngle","MaxVelocity","Hole","Time","Loop","Priority","Ambient","Brightness","GeographicLatitude","ShadowColor","TimeOfDay","DefaultWaitTime","GcFrequency","GcLimit","GcPause","GcStepMul","Hit","Icon","Origin","Target","TargetFilter","UnitRay","ViewSizeX","ViewSizeY","X","Y","Ticket","Port","DataMtuAdjust","ExperimentalPhysicsEnabled","IsQueueErrorComputed","IsThrottledByCongestionControl","IsThrottledByOutgoingBandwidthLimit","MaxDataModelSendBuffer","NetworkOwnerRate","PhysicsMtuAdjust","PhysicsReceive","PhysicsSend","PhysicsSendRate","PreferredClientPort","PrintEvents","PrintInstances","PrintPhysicsErrors","PrintProperties","ReceiveRate","ReportStatURL","ServerLocalScripts","WaitingForCharacterLogRate","Anchored","AlphaModifier","BackParamA","BackParamB","BackSurface","BackSurfaceInput","BottomParamA","BottomParamB","BottomSurface","BottomSurfaceInput","BrickColor","CFrame","CanCollide","Elasticity","Friction","FrontParamA","FrontParamB","FrontSurface","FrontSurfaceInput","LeftParamA","LeftParamB","LeftSurface","LeftSurfaceInput","Locked","Material","Reflectance","ResizeIncrement","ResizableFaces","RightParamA","RightParamB","RightSurface","RightSurfaceInput","RotVelocity","TopParamA","TopParamB","TopSurface","TopSurfaceInput","Velocity","formFactor","Shape","Controller","ControllingHumanoid","MoveState","StickyWheels","AllowTeamChangeOnTouch","Neutral","Sides","AreHingesDetected","HeadsUpDisplay","MaxSpeed","Torque","TurnSpeed","PrimaryPart","CurrentCamera","DistributedGameTime","AllowSweep","AreAnchorsShown","AreAwakePartsHighlighted","AreModelCoordsShown","AreOwnersShown","ArePartCoordsShown","AreRegionsShown","AreUnalignedPartsShown","AreWorldCoordsShown","IsReceiveAgeShown","ParallelPhysics","PhysicsEnviromentalThrottle","AccountAge","AccountAgeReplicate","Character","CharacterAppearance","DataComplexity","DataComplexityLimit","DataReady","MembershipType","SimulationRadius","userId","EnableReplication","IdleConnectionCount","KeyDownConnectionCount","KeyUpConnectionCount","MouseDelta","MouseHit","MouseOrigin","MousePosition","MouseTarget","MouseTargetSurface","MouseTargetFilter","MouseUnitRay","MoveConnectionCount","WheelBackwardConnectionCount","WheelForwardConnectionCount","WindowSize","BubbleChat","ClassicChat","LocalPlayer","MaxPlayers","NumPlayers","MaskWeight","Weight","PlayerGui","Browsable","Deprecated","Preliminary","summary","ExplorerImageIndex","ExplorerOrder","AASamples","AllowAmbientOcclusion","AluminumQuality","AlwaysDrawConnectors","Antialiasing","AutoFRMLevel","BatchSize","Bevels","CompoundMaterialQuality","CorrodedMetalQuality","DebugCullBlockCount","DebugDisableDebriService","DebugFRMCullHumanoids","DebugLogFRMLogVariables","DiamondPlateQuality","EagerBulkExecution","FrameRateManager","GrassQuality","IceQuality","IsAggregationShown","IsSynchronizedWithPhysics","PlasticQuality","QualityLevel","Shadow","ShowBoundingBoxes","SlateQuality","TextureCompositingEnabled","TrussDetail","WoodQuality","graphicsMode","CartoonFactor","MaxThrust","MaxTorque","TargetOffset","TargetRadius","ThrustD","ThrustP","TurnD","TurnP","GarbageCollectionFrequency","GarbageCollectionLimit","ScriptsDisabled","CreatorId","CreatorType","JobId","LocalSaveEnabled","PlaceId","Graphic","SkinColor","CelestialBodiesShown","SkyboxBk","SkyboxDn","SkyboxFt","SkyboxLf","SkyboxRt","SkyboxUp","StarCount","Opacity","RiseVelocity","IsPaused","IsPlaying","Looped","Pitch","PlayCount","PlayOnRemove","SoundId","Volume","AmbientReverb","DistanceFactor","DopplerScale","RolloffScale","SparkleColor","AreArbitersThrottled","BudgetEnforced","Concurrency","NumRunningJobs","NumSleepingJobs","NumWaitingJobs","PriorityMethod","SchedulerDutyCycle","SchedulerRate","SleepAdjustMethod","ThreadAffinity","ThreadPoolConfig","ThreadPoolSize","ThrottledJobSleepTime","AutoAssignable","AutoColorCharacters","Score","MouseLock","ControlMode"}

local me = game:service'Players'.LocalPlayer
local CoreGui = game:GetService("CoreGui")
local runService = game:GetService("RunService")


local GuiParent = (pcall(function() return CoreGui:FindFirstChild'RobloxGui' end) and CoreGui) or (script and me and me.PlayerGui) or (CoreGui)

if GuiParent:FindFirstChild("ExplorerButton") == nil then
	local screengui = Instance.new("ScreenGui")
	screengui.Parent = GuiParent
	screengui.Name = "ExplorerButton"
	local text = Instance.new("TextButton")
	text.Parent = screengui
	text.Active = true
	text.BackgroundColor = BrickColor.new("Really black")
	text.BorderColor3 = Color3.new(255 / 255, 0 / 0, 0 / 0)
	text.Position = UDim2.new(0.7, 0, 0.97, 0)
	text.Size = UDim2.new(0.1, 0, 0.025, 0)
	text.Text = "Explorer"
	text.TextColor3 = Color3.new(1, 1, 1)

	local LocalPlayerExists = me and true or false

	text.MouseButton1Down:connect(function() spawn(function()

		ItemGuis = {}
		PropGuis = {}
		ScrollPlaces = {}
		local MouseFunction = nil
		AddedFunction = nil
		RemovedFunction = nil
		Selection = nil
		ExplorerGui = nil
		CopiedItem = nil
		local AddingConnection = nil
		local RemovingConnection = nil
		Mouse = nil
		ExpScrollNumber = 1
		PropScrollNumber = 1
		ViewGui = "Explorer"

		if GuiParent:FindFirstChild("ExplorerGui") == nil then
			pcall(function()
				CoreGui.RobloxGui.PlayerListScreen.Visible = false
			end)

			if me then
				Mouse = me:GetMouse()
			end

			Base = "http://www.roblox.com/asset/?id="
			Images = {
				Value = 40332408,
				Sound = 40332463,
				Script = 40332546,
				ScreenGui = 40332596,
				SurfaceGui = 40332596,
				Part = 40332760,
				SpawnLocation = 117933272,
				Nil = 40332825,
				Model = 40332865,
				Message = 40332942,
				LocalScript = 40332996,
				Joint = 40333049,
				Frame = 40333121,
				Camera = 40333217,
				Backpack = 40333260,
				Player = 40332674,
				Body = 40339623,
				HopperBin = 40339572,
				Tool = 40339513,
				Workspace = 40484518,
				Mesh = 40484580,
				Property = 40493937,
				Animation = 40531758,
				Hat = 40531808,
				Humanoid = 40531903,
				Light = 117825710,
				Decal = 117930421,
				Shirt = 117931182,
				Pants = 117931169,
				Terrain = 117931310,
				ForceField = 117931567,
				Seat = 117931937,
				BillboardGui = 117932485,
				Texture = 118002183
			}

			function SetImage(Par, class)
				spawn(function()
					for i,v in next, Images do
						if class == i then
							CreateImageLabel(Par, Base..v)
							return
						end
					end
					CreateImageLabel(Par, Base..Images.Nil)
				end)
			end
			--[[
			function SetImage(Par, class)
				if true then return end
				if (class == "IntValue") or (class == "BoolValue") or (class == "StringValue") or (class == "ObjectValue") or (class == "CFrameValue") or (class == "Vector3Value") or (class == "NumberValue") or (class == "RayValue") or (class == "Color3Value") or (class == "BrickColorValue") then
					CreateImageLabel(Par, Base..Images.Value)
				elseif (class == "Sound") or (class == "StockSound") or (class == "SoundService") then
					CreateImageLabel(Par, Base..Images.Sound)
				elseif (class == "Script") then
					CreateImageLabel(Par, Base..Images.Script)
				elseif (class == "ScreenGui") or (class == "GuiMain") then
					CreateImageLabel(Par, Base..Images.ScreenGui)
				elseif (class == "BillboardGui") then
					CreateImageLabel(Par, Base..Images.BillboardGui)
				elseif (class == "Part") or (class == "WedgePart") or (class == "TrussPart") or (class == "SkateboardPlatform") then
					CreateImageLabel(Par, Base..Images.Part)
				elseif (class == "SpawnLocation") then
					CreateImageLabel(Par, Base..Images.SpawnLocation)
				elseif (class == "Model") then
					CreateImageLabel(Par, Base..Images.Model)
				elseif (class == "Hint") or (class == "Message") then
					CreateImageLabel(Par, Base..Images.Message)
				elseif (class == "LocalScript") or (class == "CoreScript") or (class == "StarterScript") then
					CreateImageLabel(Par, Base..Images.LocalScript)
				elseif (class == "Weld") or (class == "Snap") or (class == "Glue") or (class == "Rotate") or (class == "RotateP") or (class == "RotateV") or (class == "JointsService") then
					CreateImageLabel(Par, Base..Images.Joint)
				elseif (class == "Frame") or (class == "TextLabel") or (class == "TextButton") or (class == "TextBox") or (class == "ImageButton") or (class == "ImageLabel") then
					CreateImageLabel(Par, Base..Images.Frame)
				elseif (class == "Camera") then
					CreateImageLabel(Par, Base..Images.Camera)
				elseif (class == "Backpack") or (class == "StarterGear") or (class == "StarterPack") or (class == "StarterGui") or (class == "PlayerGui") then
					CreateImageLabel(Par, Base..Images.Backpack)
				elseif (class == "Player") or (class == "PseudoPlayer") or (class == "Players") then
					CreateImageLabel(Par, Base..Images.Player)
				elseif (class == "BodyPosition") or (class == "BodyGyro") or (class == "BodyVelocity") or (class == "BodyThrust") or (class == "BodyForce") or (class == "RocketPropulsion") then
					CreateImageLabel(Par, Base..Images.Body)
				elseif (class == "HopperBin") then
					CreateImageLabel(Par, Base..Images.HopperBin)
				elseif (class == "Tool") then
					CreateImageLabel(Par, Base..Images.Tool)
				elseif (class == "Workspace") then
					CreateImageLabel(Par, Base..Images.Workspace)
				elseif (class == "BlockMesh") or (class == "SpecialMesh") or (class == "CylinderMesh") then
					CreateImageLabel(Par, Base..Images.Mesh)
				elseif (class == "Animation") or (class == "CharacterMesh") then
					CreateImageLabel(Par, Base..Images.Animation)
				elseif (class == "Hat") then
					CreateImageLabel(Par, Base..Images.Hat)
				elseif (class == "Humanoid") then
					CreateImageLabel(Par, Base..Images.Humanoid)
				elseif (class == "Lighting") then
					CreateImageLabel(Par, Base..Images.Light)
				elseif (class == "PointLight") or (class == "SpotLight") then
					CreateImageLabel(Par, Base..Images.Light)
				elseif (class == "Decal") then
					CreateImageLabel(Par, Base..Images.Decal)
				elseif (class == "Texture") then
					CreateImageLabel(Par, Base..Images.Texture)
				elseif (class == "Terrain") then
					CreateImageLabel(Par, Base..Images.Terrain)
				elseif (class == "Shirt") then
					CreateImageLabel(Par, Base..Images.Shirt)
				elseif (class == "Pants") then
					CreateImageLabel(Par, Base..Images.Pants)
				elseif (class == "ForceField") then
					CreateImageLabel(Par, Base..Images.ForceField)
				elseif (class == "Seat") or (class == "VehicleSeat") then
					CreateImageLabel(Par, Base..Images.Seat)
				else
					CreateImageLabel(Par, Base..Images.Nil)
				end
			end
			]]
			function CreateImageLabel(Par, image)
				spawn(function()
					Par.Image = image
				end)
			end

			function GetProperties(Object, Table)
				local Return = {}
				local function C()
				end
				for i = 1, #Table do
					if pcall(function()
						C(Object[Table[i]])
					end) then
						if (Object:FindFirstChild(Table[i]) == nil) then
							table.insert(Return, Table[i])
						end
					end
				end
				return Return
			end

			local function CreateGuis()
				spawn(function()
					local explore = Instance.new("ScreenGui", GuiParent)
					explore.Name = "ExplorerGui"
					local otherframe = Instance.new("TextLabel", explore)
					otherframe.Name = "OtherFrame"
					otherframe.BackgroundColor = BrickColor.new("Really black")
					otherframe.BackgroundTransparency = 0.2
					otherframe.BorderColor = BrickColor.new("Really red")
					otherframe.Position = UDim2.new(0.8, 0, 0, 0)
					otherframe.Size = UDim2.new(0.2, 0, 0.05, 0)
					otherframe.Visible = true
					otherframe.ZIndex = 2
					otherframe.Draggable = true
					otherframe.Font = "ArialBold"
					otherframe.FontSize = "Size14"
					otherframe.TextColor = BrickColor.new("Institutional white")
					otherframe.TextXAlignment = "Center"
					otherframe.Active = true
		
					local expbutton = Instance.new("TextButton", otherframe)
					expbutton.Name = "ExpButton"
					expbutton.BackgroundColor = BrickColor.new("Really black")
					expbutton.BackgroundTransparency = 0.2
					expbutton.BorderColor = BrickColor.new("Really red")
					expbutton.Position = UDim2.new(0, 0, 16.25, 0)
					expbutton.Size = UDim2.new(0.45, 0, 0.75, 0)
					expbutton.Visible = true
					expbutton.ZIndex = 2
					expbutton.Draggable = false
					expbutton.Font = "ArialBold"
					expbutton.FontSize = "Size14"
					expbutton.Text = "Explorer"
					expbutton.TextColor = BrickColor.new("Institutional white")
					expbutton.TextXAlignment = "Center"
	
					local propsbutton = Instance.new("TextButton", otherframe)
					propsbutton.Name = "PropsButton"
					propsbutton.BackgroundColor = BrickColor.new("Really black")
					propsbutton.BackgroundTransparency = 0.2
					propsbutton.BorderColor = BrickColor.new("Really red")
					propsbutton.Position = UDim2.new(0.45, 0, 16.25, 0)
					propsbutton.Size = UDim2.new(0.45, 0, 0.75, 0)
					propsbutton.Visible = true
					propsbutton.ZIndex = 2
					propsbutton.Draggable = false
					propsbutton.Font = "ArialBold"
					propsbutton.FontSize = "Size14"
					propsbutton.Text = "Properties"
					propsbutton.TextColor = BrickColor.new("Institutional white")
					propsbutton.TextXAlignment = "Center"
	
					local exframe = Instance.new("Frame", otherframe)
					exframe.Name = "ExplorerFrame"
					exframe.BackgroundColor = BrickColor.new("Really black")
					exframe.BackgroundTransparency = 0.4
					exframe.BorderColor = BrickColor.new("Really red")
					exframe.Position = UDim2.new(0, 0, 1, 0)
					exframe.Size = UDim2.new(1, 0, 16, 0)
					exframe.Visible = true
					exframe.ZIndex = 1
					exframe.Draggable = false
					exframe.Active = true
	
					local list = Instance.new("Frame", exframe)
					list.Name = "List"
					list.BackgroundColor = BrickColor.new("Really black")
					list.BackgroundTransparency = 0.8
					list.BorderColor = BrickColor.new("Really red")
					list.Position = UDim2.new(0, 0, 0.1, 0)
					list.Size = UDim2.new(0.9, 0, 0.85, 0)
					list.Visible = true
					list.ZIndex = 1
					list.Draggable = false
	
					local back = Instance.new("TextButton", exframe)
					back.Name = "BackButton"
					back.BackgroundColor = BrickColor.new("Really black")
					back.BackgroundTransparency = 0.6
					back.BorderColor = BrickColor.new("Really red")
					back.Position = UDim2.new(0, 0, 0.05, 0)
					back.Size = UDim2.new(1, 0, 0.05, 0)
					back.Visible = true
					back.ZIndex = 1
					back.Draggable = false
					back.Font = "ArialBold"
					back.FontSize = "Size14"
					back.Text = "Object's Parent is Nil"
					back.TextColor = BrickColor.new("Institutional white")
					back.TextXAlignment = "Center"
	
					local search = Instance.new("TextBox", exframe)
					search.Name = "SearchBox"
					search.BackgroundColor = BrickColor.new("Really black")
					search.BackgroundTransparency = 0.6
					search.BorderColor = BrickColor.new("Really red")
					search.Position = UDim2.new(0, 0, 0, 0)
					search.Size = UDim2.new(1, 0, 0.05, 0)
					search.Visible = true
					search.ZIndex = 1
					search.Draggable = false
					search.Font = "ArialBold"
					search.FontSize = "Size14"
					search.Text = "Search in Place1"
					search.TextColor = BrickColor.new("Institutional white")
					search.TextXAlignment = "Center"
	
					local upbutton = Instance.new("TextButton", otherframe)
					upbutton.Name = "UpButton"
					upbutton.BackgroundColor = BrickColor.new("Really black")
					upbutton.BackgroundTransparency = 0.6
					upbutton.BorderColor = BrickColor.new("Really red")
					upbutton.Position = UDim2.new(0.9, 0, 1.75, 0)
					upbutton.Size = UDim2.new(0.1, 0, 0.75, 0)
					upbutton.Visible = true
					upbutton.ZIndex = 2
					upbutton.Draggable = false
					upbutton.Font = "ArialBold"
					upbutton.FontSize = "Size12"
					upbutton.Text = [[/\]]
					upbutton.TextColor = BrickColor.new("Institutional white")
					upbutton.TextXAlignment = "Center"
	
					local downbutton = Instance.new("TextButton", otherframe)
					downbutton.Name = "DownButton"
					downbutton.BackgroundColor = BrickColor.new("Really black")
					downbutton.BackgroundTransparency = 0.6
					downbutton.BorderColor = BrickColor.new("Really red")
					downbutton.Position = UDim2.new(0.9, 0, 16.25, 0)
					downbutton.Size = UDim2.new(0.1, 0, 0.75, 0)
					downbutton.Visible = true
					downbutton.ZIndex = 2
					downbutton.Draggable = false
					downbutton.Font = "ArialBold"
					downbutton.FontSize = "Size12"
					downbutton.Text = [[\/]]
					downbutton.TextColor = BrickColor.new("Institutional white")
					downbutton.TextXAlignment = "Center"
		
					local refreshbutton = Instance.new("ImageButton", exframe)
					refreshbutton.Name = "RefreshButton"
					refreshbutton.BackgroundColor = BrickColor.new("Really black")
					refreshbutton.BackgroundTransparency = 0.6
					refreshbutton.BorderColor = BrickColor.new("Really red")
					refreshbutton.Position = UDim2.new(0.9, 0, 0, 0)
					refreshbutton.Size = UDim2.new(0.1, 0, 0.05, 0)
					refreshbutton.Visible = true
					refreshbutton.ZIndex = 2
					refreshbutton.Draggable = false
					refreshbutton.Image = "http://www.roblox.com/asset/?id=21367268"
		
					local options = Instance.new("Frame", list)
					options.Name = "Options"
					options.BackgroundColor = BrickColor.new("Really black")
					options.BackgroundTransparency = 0.4
					options.BorderColor = BrickColor.new("Really red")
					options.Position = UDim2.new(-1, 0, 0, 0)
					options.Size = UDim2.new(0.5, 0, 0.25, 0)
					options.Visible = false
					options.ZIndex = 3
					options.Draggable = false
		
					local copybutton = Instance.new("TextButton", options)
					copybutton.Name = "CopyButton"
					copybutton.BackgroundColor = BrickColor.new("Really black")
					copybutton.BackgroundTransparency = 0.6
					copybutton.BorderColor = BrickColor.new("Really red")
					copybutton.Position = UDim2.new(0, 0, 0, 0)
					copybutton.Size = UDim2.new(1, 0, 0.333, 0)
					copybutton.Visible = true
					copybutton.ZIndex = 3
					copybutton.Draggable = false
					copybutton.Font = "ArialBold"
					copybutton.FontSize = "Size12"
					copybutton.Text = "Copy"
					copybutton.TextColor = BrickColor.new("Institutional white")
					copybutton.TextXAlignment = "Center"
		
					local pastebutton = Instance.new("TextButton", options)
					pastebutton.Name = "PasteButton"
					pastebutton.BackgroundColor = BrickColor.new("Really black")
					pastebutton.BackgroundTransparency = 0.6
					pastebutton.BorderColor = BrickColor.new("Really red")
					pastebutton.Position = UDim2.new(0, 0, 0.333, 0)
					pastebutton.Size = UDim2.new(1, 0, 0.333, 0)
					pastebutton.Visible = true
					pastebutton.ZIndex = 3
					pastebutton.Draggable = false
					pastebutton.Font = "ArialBold"
					pastebutton.FontSize = "Size12"
					pastebutton.Text = "Paste"
					pastebutton.TextColor = BrickColor.new("Institutional white")
					pastebutton.TextXAlignment = "Center"
		
					local cutbutton = Instance.new("TextButton", options)
					cutbutton.Name = "CutButton"
					cutbutton.BackgroundColor = BrickColor.new("Really black")
					cutbutton.BackgroundTransparency = 0.6
					cutbutton.BorderColor = BrickColor.new("Really red")
					cutbutton.Position = UDim2.new(0, 0, 0.333 * 2, 0)
					cutbutton.Size = UDim2.new(1, 0, 0.333, 0)
					cutbutton.Visible = true
					cutbutton.ZIndex = 3
					cutbutton.Draggable = false
					cutbutton.Font = "ArialBold"
					cutbutton.FontSize = "Size12"
					cutbutton.Text = "Cut"
					cutbutton.TextColor3 = Color3.new(0.972549, 0.972549, 0.972549)
					cutbutton.TextXAlignment = "Center"
		
					local config = Instance.new("ObjectValue", options)
					config.Name = "ConfiguredObject"
					config.Value = nil
		
					local sel = Instance.new("ObjectValue", exframe)
					sel.Name = "Selection"
					sel.Value = game
					Selection = sel
		
					local highlight = Instance.new("SelectionBox", GuiParent)
					highlight.Name = "ObjectHighlight"
					highlight.Color = BrickColor.new("Really red")
					highlight.SurfaceColor = BrickColor.new("Black")				
					highlight.Transparency = 0.5
					highlight.SurfaceTransparency = 0.9
	
					for i = 0, 19 do
						local item = Instance.new("Frame", list)
						item.Name = "Item"
						item.BackgroundColor = BrickColor.new("Really black")
						item.BackgroundTransparency = 0.8
						item.BorderColor = BrickColor.new("Really red")
						item.Position = UDim2.new(0, 0, i * 0.05, 0)
						item.Size = UDim2.new(1, 0, 0.05, 0)
						item.Visible = true
						item.ZIndex = 1
						item.Draggable = false
			
						local name = Instance.new("TextButton", item)
						name.Name = "ItemName"
						name.BackgroundColor = BrickColor.new("Really black")
						name.BackgroundTransparency = 0.8
						name.BorderColor = BrickColor.new("Really red")
						name.Position = UDim2.new(0.1, 0, 0, 0)
						name.Size = UDim2.new(0.9, 0, 1, 0)
						name.Visible = true
						name.ZIndex = 1
						name.Draggable = false
						name.Font = "ArialBold"
						name.FontSize = "Size14"
						name.Text = "Object"
						name.TextColor = BrickColor.new("Institutional white")
						name.TextXAlignment = "Center"
			
						local icon = Instance.new("ImageLabel", item)
						icon.Name = "Icon"
						icon.BackgroundColor = BrickColor.new("Really black")
						icon.BackgroundTransparency = 0.2
						icon.BorderColor = BrickColor.new("Really red")
						icon.Image = Base..Images.Property
						icon.Position = UDim2.new(0, 0, 0, 0)
						icon.Size = UDim2.new(0.1, 0, 1, 0)
						icon.Visible = true
						icon.ZIndex = 1
						icon.Draggable = false
			
						value = Instance.new("ObjectValue")
						value.Parent = item
						value.Name = "ObjectValue"
			
						table.insert(ItemGuis, item)
					end
		
					ExplorerGui = explore
		
					local propsframe = Instance.new("Frame", otherframe)
					propsframe.Name = "PropertiesFrame"
					propsframe.BackgroundColor = BrickColor.new("Really black")
					propsframe.BackgroundTransparency = 0.4
					propsframe.BorderColor = BrickColor.new("Really red")
					propsframe.Position = UDim2.new(0, 0, 1, 0)
					propsframe.Size = UDim2.new(1, 0, 16, 0)
					propsframe.Visible = false
					propsframe.ZIndex = 1
					propsframe.Draggable = false
					propsframe.Active = true
		
					local list2 = Instance.new("Frame", propsframe)
					list2.Name = "List"
					list2.BackgroundColor = BrickColor.new("Really black")
					list2.BackgroundTransparency = 0.8
					list2.BorderColor = BrickColor.new("Really red")
					list2.Position = UDim2.new(0, 0, 0.05, 0)
					list2.Size = UDim2.new(0.9, 0, 0.9, 0)
					list2.Visible = true
					list2.ZIndex = 1
					list2.Draggable = false
		
					for i = 0, 19 do
						local property = Instance.new("Frame", list2)
						property.Name = "Property"
						property.BackgroundColor = BrickColor.new("Really black")
						property.BackgroundTransparency = 0.8
						property.BorderColor = BrickColor.new("Really red")
						property.Position = UDim2.new(0, 0, i * 0.05, 0)
						property.Size = UDim2.new(1, 0, 0.05, 0)
						property.Visible = true
						property.ZIndex = 1
						property.Draggable = false
			
						local propname = Instance.new("TextLabel", property)
						propname.Name = "PropertyName"
						propname.BackgroundColor = BrickColor.new("Really black")
						propname.BackgroundTransparency = 0.8
						propname.BorderColor = BrickColor.new("Really red")
						propname.Position = UDim2.new(0, 0, 0, 0)
						propname.Size = UDim2.new(0.5, 0, 1, 0)
						propname.Visible = true
						propname.ZIndex = 1
						propname.Draggable = false
						propname.Font = "ArialBold"
						propname.FontSize = "Size14"
						propname.Text = "Property"
						propname.TextColor = BrickColor.new("Institutional white")
						propname.TextXAlignment = "Center"
						propname.TextScaled = true
			
						local propvalue = Instance.new("TextBox", property)
						propvalue.Name = "PropertyValue"
						propvalue.BackgroundColor = BrickColor.new("Really black")
						propvalue.BackgroundTransparency = 0.8
						propvalue.BorderColor = BrickColor.new("Really red")
						propvalue.Position = UDim2.new(0.5, 0, 0, 0)
						propvalue.Size = UDim2.new(0.5, 0, 1, 0)
						propvalue.Visible = true
						propvalue.ZIndex = 1
						propvalue.Draggable = false
						propvalue.Font = "ArialBold"
						propvalue.FontSize = "Size14"
						propvalue.Text = "Value"
						propvalue.TextColor3 = Color3.new(0.972549, 0.972549, 0.972549)
						propvalue.TextXAlignment = "Center"
						propvalue.TextScaled = true
						propvalue.ClearTextOnFocus = false
			
						table.insert(PropGuis, property)
					end
				end);
			end

			spawn(CreateGuis)

			function ReplaceWith(GuiType, Gui)
				spawn(function()
					if GuiType == "" or GuiType == nil then
						return
					end
					if Gui == "" or Gui == nil then
						return
					end
					local Parent = Gui.Parent
					local NewGui = Instance.new(GuiType, Parent)
					NewGui.Name = Gui.Name
					NewGui.BackgroundColor = Gui.BackgroundColor
					NewGui.BackgroundTransparency = Gui.BackgroundTransparency
					NewGui.BorderColor = Gui.BorderColor
					NewGui.Position = Gui.Position
					NewGui.Size = Gui.Size
					NewGui.Visible = Gui.Visible
					NewGui.ZIndex = Gui.ZIndex
					NewGui.Draggable = Gui.Draggable
					NewGui.Font = Gui.Font
					NewGui.FontSize = Gui.FontSize
					NewGui.Text = Gui.Text
					NewGui.TextColor = Gui.TextColor
					NewGui.TextXAlignment = Gui.TextXAlignment
					NewGui.TextScaled = Gui.TextScaled
					if GuiType == "TextBox" then
						NewGui.ClearTextOnFocus = false
					end
					Gui:Destroy()
				end)
			end

			function UpdateItemGuis()
				spawn(function()
					PropScrollNumber = 1
					for i = 1, #ItemGuis do
						pcall(function()
							ItemGuis[i].ObjectValue.Value = nil
							ItemGuis[i].ItemName.Text = ""
							ItemGuis[i].Icon.Image = ""
							ItemGuis[i].ObjectValue.Value = Selection.Value:GetChildren()[ExpScrollNumber + i - 1]
							ItemGuis[i].ItemName.Text = ItemGuis[i].ObjectValue.Value.Name
							SetImage(ItemGuis[i].Icon, ItemGuis[i].ObjectValue.Value.ClassName)
						end)
					end
				end)
			end

			function UpdatePropGuis()
				spawn(function()
					Props = GetProperties(Selection.Value, Properties)
					ExplorerGui.OtherFrame.TextWrapped = true
					ExplorerGui.OtherFrame.TextScaled = true
					ExplorerGui.OtherFrame.Text = "Terminal can't hide strings LOL -vlatkovski"
					for i = 1, #PropGuis do
						pcall(function()
							PropName = Props[ViewNumber]
							PropValue = Selection.Value[PropName]
							PropType = type(PropValue)
							PropGuis[i].PropertyName.Text = ""
							PropGuis[i].PropertyValue.Text = ""
							ReplaceWith("TextBox", PropGuis[i].PropertyValue, i)
						end)
					end
					for i = 1, #Props do
						pcall(function()
							ViewNumber = PropScrollNumber + i - 1
							PropName = Props[ViewNumber]
							PropValue = Selection.Value[PropName]
							PropType = type(PropValue)
							PropGuis[i].PropertyName.Text = PropName
							PropGuis[i].PropertyValue.Text = tostring(PropValue)
							if PropGuis[i].PropertyName.Text == "Parent" then
								if Selection.Value ~= game then
									if string.sub(PropGuis[i].PropertyValue.Text, 1, 5) ~= "game." then
										local letters = ""
										local lastend = nil
										PropGuis[i].PropertyValue.Text = "game."..Selection.Value:GetFullName()
										for x = 1, #PropGuis[i].PropertyValue.Text do
											letters = letters..string.sub(PropGuis[i].PropertyValue.Text, x, x)
										end
										for x = 1, #letters do
											if string.sub(letters, x, x) == "." then
												lastend = x
											end
										end
										local newletters = string.sub(letters, 1, lastend - 1)
										PropGuis[i].PropertyValue.Text = newletters
									end
								else
									PropGuis[i].PropertyValue.Text = Selection.Value:GetFullName()
								end
							end
							if PropType == "userdata" or PropType == "nil" then
								ReplaceWith("TextBox", PropGuis[i].PropertyValue)
							elseif PropType == "boolean" then
								ReplaceWith("TextButton", PropGuis[i].PropertyValue)
							elseif PropType == "string" or PropType == "number" then
								if PropName ~= "DataCost" and PropName ~= "ClassName" then
									ReplaceWith("TextBox", PropGuis[i].PropertyValue)
								else
									ReplaceWith("TextLabel", PropGuis[i].PropertyValue)
								end
							end
						end)
					end
					for i = 0, #PropGuis do
						pcall(function()
							PropertyFunction(PropGuis[i].PropertyValue)
						end)
					end
				end)
			end

			function UpdateMainGuis(Search)
				spawn(function()
					ExplorerGui.OtherFrame.TextWrapped = true
					ExplorerGui.OtherFrame.TextScaled = true
					ExplorerGui.OtherFrame.Text = "Terminal can't hide strings LOL -vlatkovski"
					if ViewGui == "Explorer" or ViewGui == "Properties" then
						if Selection.Value == nil then
							Selection.Value = game
						end
						if GuiParent:FindFirstChild("ObjectHighlight") ~= nil then
							if Selection.Value:IsA("BasePart") or Selection.Value:IsA("Model") then
								GuiParent.ObjectHighlight.Adornee = Selection.Value
							end
							if Selection.Value:IsA("Tool") or Selection.Value:IsA("Hat") then
								if Selection.Value:FindFirstChild("Handle") ~= nil then
									GuiParent.ObjectHighlight.Adornee = Selection.Value.Handle
								end
							end
						end
						ExplorerGui.OtherFrame.ExplorerFrame.SearchBox.Text = "Search in "..Selection.Value.Name
						if Selection.Value.Parent == nil then
							ExplorerGui.OtherFrame.ExplorerFrame.BackButton.Text = "Object's Parent is Nil"
						else
							ExplorerGui.OtherFrame.ExplorerFrame.BackButton.Text = "Back to "..Selection.Value.Parent.Name
						end
						--if Search ~= "" and Search ~= nil then
						--	local SelectionTable = Selection.Value:GetChildren()
						--	local searchTest = tostring(Search):lower()
						--	if #SelectionTable and ExpScrollNumber then
						--		for i = ExpScrollNumber + 1, #SelectionTable do
						--			local name, test = pcall(function()
						--				return SelectionTable[i].Name:lower():find( searchTest )
						--			end)
						--			if name and test then
						--				ExpScrollNumber = i
						--				break
						--			end
						--		end
						--	end
						--end
						PropScrollNumber = 1
						spawn(UpdateItemGuis)
						spawn(UpdatePropGuis)
						Selection.Changed:connect(function()
							PropScrollNumber = 1
							spawn(UpdateItemGuis)
							spawn(UpdatePropGuis)
						end)
					end
				end)
			end

			runService.RenderStepped:wait()--repeat runService.RenderStepped:wait() until ExplorerGui

			ExplorerGui.OtherFrame.ExpButton.MouseButton1Down:connect(function() spawn(function()
				ExplorerGui.OtherFrame.ExplorerFrame.Visible = true
				ExplorerGui.OtherFrame.PropertiesFrame.Visible = false
				ViewGui = "Explorer"
				spawn(UpdateItemGuis)
			end) end)

			ExplorerGui.OtherFrame.PropsButton.MouseButton1Down:connect(function() spawn(function()
				ExplorerGui.OtherFrame.PropertiesFrame.Visible = true
				ExplorerGui.OtherFrame.ExplorerFrame.Visible = false
				ViewGui = "Properties"
				spawn(UpdatePropGuis)
			end) end)

			DownActive = false
			UpActive = false

			ExplorerGui.OtherFrame.DownButton.MouseButton1Down:connect(function()
				if ViewGui == "Explorer" then
					spawn(function()
						if ExpScrollNumber < #Selection.Value:GetChildren() - 19 then
							UpActive = false
							DownActive = true
							ExpScrollNumber = ExpScrollNumber + 1
							spawn(UpdateItemGuis)
							wait(0.5)
							while DownActive == true do
								if ExpScrollNumber < #Selection.Value:GetChildren() - 19 then
									DownActive = true
									ExpScrollNumber = ExpScrollNumber + 1
									spawn(UpdateItemGuis)
								end
								wait(0.05)
							end
						end
					end)
				elseif ViewGui == "Properties" then
					spawn(function()
						local Props = GetProperties(Selection.Value, Properties)
						if PropScrollNumber < table.maxn(Props) - 19 then
							UpActive = false
							DownActive = true
							PropScrollNumber = PropScrollNumber + 1
							spawn(UpdatePropGuis)
							wait(0.5)
							while DownActive == true do
								if PropScrollNumber < table.maxn(Props) - 19 then
									PropScrollNumber = PropScrollNumber + 1
									spawn(UpdatePropGuis)
								end
								wait(0.05)
							end
						end
					end)
				end
			end)

			ExplorerGui.OtherFrame.DownButton.MouseButton1Up:connect(function()
				DownActive = false
			end)

			ExplorerGui.OtherFrame.UpButton.MouseButton1Down:connect(function()
				if ViewGui == "Explorer" then
					spawn(function()
						if ExpScrollNumber - 1 > 0 then
							DownActive = false
							UpActive = true
							ExpScrollNumber = ExpScrollNumber - 1
							spawn(UpdateItemGuis)
							wait(0.5)
							while UpActive == true do
								if ExpScrollNumber - 1 > 0 then
									UpActive = true
									ExpScrollNumber = ExpScrollNumber - 1
									spawn(UpdateItemGuis)
								end
								wait(0.05)
							end
						end
					end)
				elseif ViewGui == "Properties" then
					spawn(function()
						if PropScrollNumber - 1 > 0 then
							DownActive = false
							UpActive = true
							PropScrollNumber = PropScrollNumber - 1
							spawn(UpdatePropGuis)
							wait(0.5)
							while UpActive == true do
								if PropScrollNumber - 1 > 0 then
									PropScrollNumber = PropScrollNumber - 1
									spawn(UpdatePropGuis)
								end
								wait(0.05)
							end
						end
					end)
				end
			end)

			ExplorerGui.OtherFrame.UpButton.MouseButton1Up:connect(function()
				UpActive = false
			end)

			ExplorerGui.OtherFrame.ExplorerFrame.BackButton.MouseButton1Down:connect(function() -- Go back
				if Selection.Value.Parent == nil then
					ExplorerGui.OtherFrame.ExplorerFrame.BackButton.Text = "Object's Parent is Nil"
					spawn(UpdateMainGuis)
				else
					spawn(function()
						ExpScrollNumber = ScrollPlaces[#ScrollPlaces]
						if ExpScrollNumber == nil then
							ExpScrollNumber = 1
						end
						ScrollPlaces[#ScrollPlaces] = nil
						Selection.Value = Selection.Value.Parent
						ExplorerGui.OtherFrame.ExplorerFrame.SearchBox.Text = "Search in "..Selection.Value.Name
						spawn(UpdateMainGuis)
						if Selection.Value.Parent ~= nil then
							ExplorerGui.OtherFrame.ExplorerFrame.BackButton.Text = "Back to "..Selection.Value.Parent.Name
						end
					end)
				end
			end)

			ExplorerGui.OtherFrame.ExplorerFrame.SearchBox.FocusLost:connect(function() -- Search
				spawn(function()
					UpdateMainGuis(ExplorerGui.OtherFrame.ExplorerFrame.SearchBox.Text)
				end)
				ExplorerGui.OtherFrame.ExplorerFrame.SearchBox.Text = "Search in "..Selection.Value.Name
			end)

			ExplorerGui.OtherFrame.ExplorerFrame.RefreshButton.MouseButton1Down:connect(function() -- Refresh
				if Selection.Value ~= nil and Selection.Value.Parent ~= nil then
					spawn(UpdateMainGuis)
				else
					Selection.Value = game
					ExplorerGui.OtherFrame.ExplorerFrame.SearchBox.Text = "Search in "..Selection.Value.Name
					spawn(UpdateMainGuis)
				end
			end)

			ExplorerGui.OtherFrame.ExplorerFrame.List.Options.MouseLeave:connect(function()
				ExplorerGui.OtherFrame.ExplorerFrame.List.Options.Visible = false
			end)

			ExplorerGui.OtherFrame.ExplorerFrame.List.Options.CopyButton.MouseButton1Down:connect(function()
				ExplorerGui.OtherFrame.ExplorerFrame.List.Options.Visible = false
				if ExplorerGui.OtherFrame.ExplorerFrame.List.Options.ConfiguredObject.Value == nil then
					return
				end
				pcall(function()
					CopiedItem = ExplorerGui.OtherFrame.ExplorerFrame.List.Options.ConfiguredObject.Value:Clone()
				end)
			end)

			ExplorerGui.OtherFrame.ExplorerFrame.List.Options.PasteButton.MouseButton1Down:connect(function()
				ExplorerGui.OtherFrame.ExplorerFrame.List.Options.Visible = false
				if ExplorerGui.OtherFrame.ExplorerFrame.List.Options.ConfiguredObject.Value ~= nil then
					pcall(function()
						CopiedItem:Clone().Parent = ExplorerGui.OtherFrame.ExplorerFrame.List.Options.ConfiguredObject.Value
					end)
				else
					pcall(function()
						CopiedItem:Clone().Parent = Selection.Value
					end)
				end
			end)

			ExplorerGui.OtherFrame.ExplorerFrame.List.Options.CutButton.MouseButton1Down:connect(function()
				ExplorerGui.OtherFrame.ExplorerFrame.List.Options.Visible = false
				if ExplorerGui.OtherFrame.ExplorerFrame.List.Options.ConfiguredObject.Value == nil then
					return
				end
				pcall(function()
					CopiedItem = ExplorerGui.OtherFrame.ExplorerFrame.List.Options.ConfiguredObject.Value:Clone()
				end)
				pcall(function()
					ExplorerGui.OtherFrame.ExplorerFrame.List.Options.ConfiguredObject.Value:Remove()
					spawn(UpdateMainGuis)
				end)
			end)

			AddedFunction = value.ChildAdded:connect(function(child)
				spawn(UpdateMainGuis)
			end)
			RemovedFunction = value.ChildRemoved:connect(function(child)
				spawn(UpdateMainGuis)
			end)

			Selection.Changed:connect(function(value)
				if AddedFunction ~= nil then
					AddedFunction:disconnect()
				end
				if RemovedFunction ~= nil then
					RemovedFunction:disconnect()
				end
				AddedFunction = value.ChildAdded:connect(function(child)
					pcall(function() spawn(UpdateMainGuis) end)
				end)
				RemovedFunction = value.ChildRemoved:connect(function(child)
					pcall(function() spawn(UpdateMainGuis) end)
				end)
			end)

			if Mouse ~= nil then
				MouseFunction = Mouse.Button1Down:connect(function()
					if Mouse and Mouse.Target ~= nil then
						Selection.Value = Mouse.Target
						ExpScrollNumber = 1
						ScrollPlaces = {
							1
						}
						spawn(UpdateMainGuis)
					elseif Mouse.Target == nil then
						Selection.Value = workspace
						spawn(UpdateMainGuis)
					end
				end)
			end

			local function ItemGuisClicked()
				for i = 1, #ItemGuis do
					pcall(function()
						if ItemGuis[i]:FindFirstChild("ItemName") ~= nil then
							ItemGuis[i].ItemName.MouseButton1Down:connect(function()
								if ItemGuis[i].ObjectValue.Value == nil then
									return
								end
								Selection.Value = ItemGuis[i].ObjectValue.Value
								ExplorerGui.OtherFrame.ExplorerFrame.SearchBox.Text = "Search in "..Selection.Value.Name
								table.insert(ScrollPlaces, ExpScrollNumber)
								ExpScrollNumber = 1
								spawn(UpdateMainGuis)
							end)
							ItemGuis[i].ItemName.MouseButton2Down:connect(function()
								ExplorerGui.OtherFrame.ExplorerFrame.List.Options.Visible = true
								ExplorerGui.OtherFrame.ExplorerFrame.List.Options.Position = UDim2.new(-0.5, 0, ItemGuis[i].Position.Y.Scale, 0)
								if ItemGuis[i].ObjectValue.Value ~= nil then
									ExplorerGui.OtherFrame.ExplorerFrame.List.Options.ConfiguredObject.Value = ItemGuis[i].ObjectValue.Value
								else
									ExplorerGui.OtherFrame.ExplorerFrame.List.Options.ConfiguredObject.Value = nil
								end
							end)
							ItemGuis[i].ItemName.MouseEnter:connect(function()
								pcall(function()
									if GuiParent:FindFirstChild("ObjectHighlight") ~= nil then
										if ItemGuis[i].ObjectValue.Value ~= nil then
											if ItemGuis[i].ObjectValue.Value:IsA("BasePart") or ItemGuis[i].ObjectValue.Value:IsA("Model") then
												wait()
												if ItemGuis[i].ObjectValue.Value ~= nil then
													GuiParent.ObjectHighlight.Adornee = ItemGuis[i].ObjectValue.Value
												end
											end
											if ItemGuis[i].ObjectValue.Value ~= nil then
												if ItemGuis[i].ObjectValue.Value:IsA("Tool") or ItemGuis[i].ObjectValue.Value:IsA("Hat") then
													if ItemGuis[i].ObjectValue.Value:FindFirstChild("Handle") ~= nil then
														wait()
														if ItemGuis[i].ObjectValue.Value ~= nil then
															GuiParent.ObjectHighlight.Adornee = ItemGuis[i].ObjectValue.Value.Handle
														end
													end
												end
											end
										end
									end
								end)
							end)
							ItemGuis[i].ItemName.MouseLeave:connect(function()
								if GuiParent:FindFirstChild("ObjectHighlight") ~= nil then
									--GuiParent.ObjectHighlight.Adornee = nil
									GuiParent.ObjectHighlight:Destroy()
								end
							end)
						end
					end)
				end
			end

			function PropertyFunction(Gui)
				if Gui == "" or Gui == nil then
					return
				end
				if Gui:IsA("TextBox") then
					Gui.FocusLost:connect(function()
						pcall(function()
							Property = Gui.Parent.PropertyName.Text
							if Property == "Parent" or Property == "PrimaryPart" or Property == "CurrentCamera" or Property == "Terrain" then
								assert(loadstring([[Selection.Value[Property] = ]]..Gui.Text))()
							elseif Property == "Velocity" or Property == "RotVelocity" or Property == "Position" or Property == "Size" or Property == "VertexColor" or Property == "GripPos" or Property == "angularvelocity" or Property == "maxTorque" then
								assert(loadstring([[Selection.Value[Property] = Vector3.new(]]..Gui.Text..[[)]]))()
							elseif Property == "CFrame" then
								assert(loadstring([[Selection.Value[Property] = CFrame.new(]]..Gui.Text..[[)]]))()
							elseif Property == "BrickColor" then
								assert(loadstring([[Selection.Value[Property] = BrickColor.new("]]..Gui.Text..[[")]]))()
							elseif Property == "Color" or Property == "Ambient" or Property == "ColorShift_Bottom" or Property == "ColorShift_Top" or Property == "FogColor" or Property == "ShadowColor" then
								pcall(function()
									assert(loadstring([[Selection.Value[Property] = Color3.new(]]..Gui.Text..[[)]]))()
								end)
								pcall(function()
									assert(loadstring([[Selection.Value[Property] = BrickColor.new(]]..Gui.Text..[[)]]))()
								end)
							else
								Selection.Value[Property] = Gui.Text
							end
						end)
						spawn(UpdatePropGuis)
					end)
				elseif Gui:IsA("TextButton") then
					Gui.MouseButton1Down:connect(function()
						pcall(function()
							Property = Gui.Parent.PropertyName.Text
							if (Selection.Value[Property]) == true then
								Selection.Value[Property] = false
							elseif (Selection.Value[Property]) == false then
								Selection.Value[Property] = true
							end
						end)
						spawn(UpdatePropGuis)
					end)
				end
			end

			spawn(UpdateMainGuis)
			spawn(ItemGuisClicked)

		else -- End of Explorer View...

			pcall(function()
				if CoreGui.RobloxGui:FindFirstChild("PlayerListScreen") ~= nil then
					spawn(function()
						CoreGui.RobloxGui.PlayerListScreen.Visible = true
					end)
				end
			end)
			
			for i, v in pairs(GuiParent:GetChildren()) do
				if v.Name == "ObjectHighlight" then
					spawn(function()
						v:Destroy()
					end)
				end
			end
			if GuiParent:FindFirstChild("ExplorerGui") ~= nil then
				spawn(function()
					GuiParent.ExplorerGui:Destroy()
				end)
			end
			local EmptyTable = {}
			if AddedFunction ~= nil then
				AddedFunction:disconnect()
			end
			if RemovedFunction ~= nil then
				RemovedFunction:disconnect()
			end
			if MouseFunction ~= nil then
				MouseFunction:disconnect()
			end
		end
	end) end)
end



end) end