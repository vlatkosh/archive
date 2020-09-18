local create = LoadLibrary("RbxUtility").Create
local ins = Instance.new
local gp = UDim.new; local gp2 = UDim2.new; local c3 = Color3.new
local rgb = function(r,g,b) return c3(r/255,g/255,b/255) end
local me = game.Players.LocalPlayer
local mouse = me:GetMouse()
local Sans = Enum.Font.SourceSans

local ChildButtonColor = "Blue"
local PropButtonColor = "Gray"

create "ScreenGui"
{
	Parent = me.PlayerGui;
	Name = "vlExplorer";
	create "Frame"
	{
		Name = "controlFrame";
		Active = true;
		Position = gp2(1,-320,1,-110);
		Size = gp2(0,200,0,110);
		Style = Enum.FrameStyle.DropShadow;
		ZIndex = 5;
		Draggable = true;
		create "TextButton"
		{
			Name = "ShowHideBtn";
			BackgroundColor3 = c3(1,1,1);
			Position = gp2(0,0,0,0);
			Size = gp2(1,0,0.333,0);
			Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
			ZIndex = 6;
			FontSize = Enum.FontSize.Size24;
			Font = Sans;
			Text = "Show Explorer";
			TextColor3 = c3(1,1,1);
			TextScaled = false;
			TextWrapped = true;
		};
		create "TextBox"
		{
			Name = "ServiceBox";
			BackgroundColor3 = c3(1,1,1);
			ClearTextOnFocus = true;
			Position = gp2(0.025,0,0.333,0);
			Size = gp2(0.94,0,0.333,0);
			ZIndex = 6;
			Font = Sans;
			Text = "Workspace";
			TextColor3 = c3();
			TextScaled = true;
			TextWrapped = true;
		};
		create "TextButton"
		{
			Name = "ServiceButton";
			BackgroundColor3 = c3(1,1,1);
			Position = gp2(0,0,0.666,0);
			Size = gp2(1,0,0.333,0);
			Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
			ZIndex = 6;
			Font = Sans;
			FontSize = Enum.FontSize.Size24;
			Text = "^Go to service^";
			TextColor3 = c3(1,1,1);
			TextScaled = false;
			TextWrapped = true;
		};
	};
	create "Frame"
	{
		Name = "mainFrame";
		Active = false;
		BackgroundTransparency = 1;
		Position = gp2(0.35,0,0,0);
		Size = gp2(0.35,0,1,0);
		Visible = false;
		ZIndex = 4;
		create "TextButton"
		{
			Name = "ParentButton";
			Active = true;
			BackgroundColor3 = c3(1,1,1);
			BackgroundTransparency = 0.2;
			Position = gp2(0,0,0,0);
			Size = gp2(1,0,0.1,0);
			ZIndex = 7;
			Font = Sans;
			Text = "Parent: ";
			TextColor3 = c3();
			TextScaled = true;
			TextWrapped = true;
		};
		create "ScrollingFrame"
		{
			Name = "childFrame";
			BackgroundColor3 = c3(1,1,1);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Position = gp2(0,0,0.1,0);
			Size = gp2(1,0,0.9,0);
			ZIndex = 5;
			CanvasSize = gp2(0,0,5,0);
			ScrollBarThickness = 12;
			BottomImage = "rbxasset://textures/blackBkg_square.png";
			MidImage = "rbxasset://textures/blackBkg_square.png";
			TopImage = "rbxasset://textures/blackBkg_square.png";
		};
	};
};

local Gui = me.PlayerGui:WaitForChild("vlExplorer")
local mainFrame = Gui.mainFrame
local childFrame = mainFrame.childFrame
local parentButton = mainFrame.ParentButton

local Services =
{
	"Workspace",
	"Players",
	"Lighting",
	"Teams",
	"StarterPack",
	"StarterGui",
	"PlayerGui",
	"CoreGui",
	"JointsService",
	"ServerScriptService",
	"ServerStorage",
	"ReplicatedStorage",
	"ReplicatedFirst",
	"SoundService",
	"Debris",
	"InsertService",
	"BadgeService",
	"ContentProvider",
	"Selection",
	"Chat",
	"CollectionService",
	"GuiService",
	"PhysicsService",
	"RunService",
	"UserInputService",
	"AssetService",
	"ControllerService",
}

local Values =
{
	"Bool",
	"BrickColor",
	"CFrame",
	"Color3",
	"DoubleConstrained",
	"IntConstrained",
	"Int",
	"Number",
	"Object",
	"Ray",
	"String",
	"Vector3"
}

local CurrentParentObj = create "ObjectValue"
{
	Parent = Gui;
	Name = "CurrentParent";
	Value = workspace;
}

local BetweenPixels = 20
local objLastY = -20
local Opened = false
local CurrentParent = CurrentParentObj.Value

local Clean = function(ThingToIgnore)
	for _,oldbutton in pairs(childFrame:GetChildren()) do
		if oldbutton.Name ~= ThingToIgnore then
			oldbutton:Destroy()
		end
	end
end

local control =
{
	Frame = Gui.controlFrame;
	ServiceButton = Gui.controlFrame.ServiceButton;
	ServiceBox = Gui.controlFrame.ServiceBox;
	ShowHideBtn = Gui.controlFrame.ShowHideBtn;
};
local DefaultButton = create "TextButton"
{
	Name = "DefaultButton";
	BackgroundColor3 = c3();
	BackgroundTransparency = 0.2;
	BorderSizePixel = 0;
	Position = gp2(0,0,0,0);
	Size = gp2(0.95,0,0,20);
	ZIndex = 6;
	Font = Sans;
	TextColor3 = c3(1,1,1);
	TextScaled = true;
	TextWrapped = true;
};
local CountTable = function(target, minimal, maximum)
	local Things = {}
	for _,v in pairs(target) do
		table.insert(Things, v)
	end
	if minimal == nil then minimal = 0
	return #Things > minimal
	end
end
local CheckIfHasChildren = function(target)
	local Children = {}
	for _,v in pairs(target:GetChildren()) do
		table.insert(Children, v)
	end
	return #Children > 0
end
local createButton =
{
	["Red"]		= function(p) b1=DefaultButton:Clone() b1.BackgroundColor3=rgb(239,0,4) b1.Parent=p return b1 end;
	["Green"]	= function(p) b1=DefaultButton:Clone() b1.BackgroundColor3=rgb(5,216,15) b1.Parent=p return b1 end;
	["Blue"]	= function(p) b1=DefaultButton:Clone() b1.BackgroundColor3=rgb(0,93,216) b1.Parent=p return b1 end;
	["Gray"]	= function(p) b1=DefaultButton:Clone() b1.BackgroundColor3=rgb(94,94,94) b1.Parent=p return b1 end;
};
local createButtonObj = function(parent, child, _FUNC, _FUNCTRG)
	objLastY = objLastY + BetweenPixels
	local btn = createButton[ChildButtonColor](childFrame)
	btn.Name = child.Name
	btn.Position = gp2(0,0,0,objLastY)
	btn.TextXAlignment = Enum.TextXAlignment.Left
	btn.Text = "    "..child.Name.."; "..child.ClassName
	parentButton.Text = CurrentParent.Name
	local obj = create "ObjectValue"
	{
		Parent = btn;
		Name = "Object";
		Value = CurrentParent
	};
	local closebtn = create "TextButton"
	{
		Parent = btn;
		Name = "Close";
		BackgroundColor3 = c3(1,1,1);
		BackgroundTransparency = 0.2;
		BorderSizePixel = 0;
		Position = gp2(1,-20,0,0);
		Size = gp2(0,20,1,0);
		ZIndex = 7;
		Font = Enum.Font.Arial;
		Text = "X";
		TextColor3 = c3();
		TextScaled = true;
		TextWrapped = true;
	};
	closebtn.MouseButton1Down:connect(function()
		child:Destroy()
		_FUNC(_FUNCTRG)
	end)
	return btn
end

local createPropFrame = function(button, child, _FUNC, _FUNCTRG)
	for _,v in pairs(button.Parent:GetChildren()) do
		for _,vv in pairs(v:GetChildren()) do
			if vv.Name == "propBox" and vv:IsA("TextBox") then
				vv:Destroy()
			end
		end
	end
	propBox = create "TextBox" {}
	propBox.Parent = button;
	propBox.Name = "propBox";
	propBox.BackgroundColor3 = c3(1,1,1);
	propBox.ClearTextOnFocus = false;
	propBox.Position = gp2(1,0,0,0);
	propBox.Size = gp2(1,0,1,0);
	propBox.ZIndex = 7;
	propBox.Text = "";
	propBox.TextColor3 = c3();
	propBox.TextScaled = true;
	propBox.TextWrapped = true;
	local function Refresh()
		Clean(propBox.Parent.Name)
		_FUNC(_FUNCTRG)
		propBox.Text = ""
	end
	local function l(s)
		return string.lower(s)
	end
	propBox.FocusLost:connect(function(enterPressed)
		if enterPressed then
			local t = propBox.Text--:lower()
			local isPart = child:IsA("Part")
			if l(t) == "clearallchildren" or l(t) == "clearchildren" then
				child:ClearAllChildren()
			elseif l(t) == "destroy" then
				pcall(function() child:Destroy() end)
			elseif l(t) == "unachor" and isPart then
				pcall(function() child.Anchored = false end)
			elseif l(t) == "anchor" and isPart then
				pcall(function() child.Anchored = true end)
			elseif l(t) == "cancollide" and isPart then
				pcall(function() child.CanCollide = true end)
			elseif l(t) == "cantcollide" and isPart then
				pcall(function() child.CanCollide = false end)
			elseif l(t) == "lock" then
				pcall(function() child.Locked = true end)
			elseif l(t) == "unlock" then
				pcall(function() child.Locked = false end)
			elseif l(t):sub(1,5) == "name " then
				pcall(function() child.Name = t:sub(6) end)
			elseif l(t):sub(1,5) == "clone" then
				local path = t:sub(7)
				local child1 = child:Clone()
				if path == "" then
					pcall(function() child1.Parent = child.Parent end)
				else
					if game[path] ~= nil then
						pcall(function() child1.Parent = game[path] end)
					end
				end
			elseif l(t):sub(1,7) == "parent " then
				local path = t:sub(8)
				if path ~= "" then
					if game[path] ~= nil then
						pcall(function() child.Parent = game[path] end)
					end
				end
			elseif l(t):sub(1,4) == "read" then
				for _,v in pairs(Values) do
					if child.ClassName == v.."Value" then
						pcall(function() print("\n"..child:GetFullName()..".Value: \n"..child.Value) end)
					end
				end
			elseif l(t):sub(1,5) == "text " then
				local cn = child.ClassName
				if cn=="TextLabel"or cn=="TextBox"or cn=="TextButton"then
					pcall(function() child.Text = t:sub(6) end)
				end
			elseif l(t):sub(1,6) == "value " then
				local value = t:sub(7)
				for _,v in pairs(Values) do
					if child.ClassName == v.."Value" then
						pcall(function() child.Value = value end)
					end
				end
			end
			Refresh()
			childFrame.ClipsDescendants = true
		end
	end)
	mouse.KeyDown:connect(function(key)
		if key:lower() == [[\]] then
			childFrame.ClipsDescendants = false
			propBox:CaptureFocus()
		end
	end)
	button.MouseButton2Down:connect(function()
		childFrame.ClipsDescendants = false
		propBox:CaptureFocus()
	end)
	childFrame.ClipsDescendants = false
	propBox:CaptureFocus()
end

local ShowChildren = function(target)
	function MakeIt(a)
		Clean()
		CurrentParent = a
		childFrame.ClipsDescendants = true
		for _,child in pairs(a:GetChildren()) do
			local btn = createButtonObj(childFrame, child, MakeIt, a)
			btn.MouseButton1Down:connect(function()
				if CheckIfHasChildren(child) == true then
					MakeIt(child)
				end
			end)
			btn.MouseButton2Down:connect(function()
				createPropFrame(btn, child, MakeIt, a)
			end)
		end
		objLastY = -20
		childFrame.CanvasPosition = Vector2.new(0,0,0,0)
	end
	MakeIt(target)
end

control.ServiceButton.MouseButton1Down:connect(function()
	local text = control.ServiceBox.Text
	for _,service in pairs(Services) do
		if string.lower(service) == string.lower(text) then
			CurrentParent = game:GetService(text)
			ShowChildren(CurrentParent)
		end
	end
end)

parentButton.MouseButton1Down:connect(function()
	if CurrentParent.Parent == game then
		parentButton.Text = "Couldn't view parent, game (DataModel) doesn't allow viewing children"
		delay(3,function()
			parentButton.Text = CurrentParent.Name
		end)
	else
		CurrentParent = CurrentParent.Parent
		ShowChildren(CurrentParent)
	end
end)

control.ShowHideBtn.MouseButton1Down:connect(function()
	if Opened then
		Opened = false
		mainFrame.Visible = false
		control.ShowHideBtn.Text = "Show Explorer"
		parentButton.Active = false
		for _,v in pairs(childFrame:GetChildren()) do v.Active = false end
	else
		Opened = true
		mainFrame.Visible = true
		control.ShowHideBtn.Text = "Hide Explorer"
		parentButton.Active = true
		for _,v in pairs(childFrame:GetChildren()) do v.Active = true end
	end
end)