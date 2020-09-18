local function rgb(r,g,b) return Color3.new(r/255,g/255,b/255) end

local function stringRandom(int,mode)
	math.randomseed(math.random(0,os.time()))
	local String = ""
	for i=1,int do
		if mode == "char" then
			String = String..string.char(math.random(65,122))
		else
			String = String..string.char(math.random(0,255))
		end
	end
	return String
end

local Settings = {
	Tag_Value = stringRandom(50,"char");
	["BasePart"] = {
		[01] = {Prop = "BrickColor",	Val = BrickColor.new("Light reddish violet")};
		[02] = {Prop = "Material",		Val = Enum.Material.SmoothPlastic};
		[03] = {Prop = "Reflectance",	Val	= 0};
		[04] = {Prop = "Transparency",	Val = 0};
		[05] = {Prop = "Elasticity",	Val = 0.5};
		[06] = {Prop = "Friction",		Val = 0.3};
		[07] = {Prop = "FrontSurface",	Val = Enum.SurfaceType.Studs};
		[08] = {Prop = "BackSurface",	Val = Enum.SurfaceType.Studs};
		[09] = {Prop = "TopSurface",	Val = Enum.SurfaceType.Studs};
		[10] = {Prop = "BottomSurface",	Val = Enum.SurfaceType.Studs};
		[11] = {Prop = "LeftSurface",	Val = Enum.SurfaceType.Studs};
		[12] = {Prop = "RightSurface",	Val = Enum.SurfaceType.Studs};
	};
	["Lighting"] = {
		[01] = {Prop = "GlobalShadows",		Val = false};
		[02] = {Prop = "Ambient",			Val = rgb(255, 162, 198)};
		[03] = {Prop = "ColorShift_Bottom",	Val = rgb(255, 162, 198)};
		[04] = {Prop = "ColorShift_Top",	Val = rgb(255, 162, 198)};
		[05] = {Prop = "OutdoorAmbient",	Val = rgb(255, 162, 198)};
		[06] = {Prop = "ShadowColor",		Val = rgb(255, 162, 198)};
	};
};

local create = LoadLibrary("RbxUtility").Create
local runService = game:GetService("RunService")
local lighting = game:GetService("Lighting")

local function Milk(trg)
	if trg:IsA("BasePart") then
		pcall(coroutine.wrap(function()
			local parent = trg.Parent
			trg.Name = stringRandom(50)
			trg.Locked = false
			while wait() and parent:FindFirstChild(trg.Name) do
				for omg,hax in pairs(Settings.Lighting) do
					lighting[hax.Prop] = hax.Val
				end
				for omg,hax in pairs(Settings.BasePart) do
					trg[hax.Prop] = hax.Val
				end
				if trg.Parent then
					if not trg.Parent:IsA("Model") and not trg.Parent:FindFirstChild("Humanoid") then
						trg.CFrame	= trg.CFrame * CFrame.Angles(0,0,0.005)
					end
				end
			end
		end))
	end
	for i,v in pairs(trg:GetChildren()) do
		Milk(v)
	end
	trg.ChildAdded:connect(function(c)
		Milk(c)
	end)
end

Milk(workspace)

print("Tag Value:", Settings.Tag_Value)