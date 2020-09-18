local create = LoadLibrary("RbxUtility").Create
local Players = game:GetService("Players")
local me = Players.LocalPlayer
local mouse = me:GetMouse()
local gp2 = UDim2.new

local rgb = function(r,g,b) return Color3.new(r/255,g/255,b/255) end
local Sans = Enum.Font.SourceSans
local WhiteButton = Enum.ButtonStyle.RobloxRoundDropdownButton

create "ScreenGui" {
	Parent = me.PlayerGui;
	Name = "ChatLog";
	create "Frame" {
		Name = "MainFrame";
		Position = gp2(0.1,0,0.2,0);
		Size = gp2(0.75,0,0.75,0);
		Style = Enum.FrameStyle.DropShadow;
		BackgroundTransparency = 1;
		Visible = false;
		--Active = true;
		Draggable = true;
		ZIndex = 5;
		create "TextButton" {
			Name = "ClearButton";
			Position = gp2(0,0,0,0);
			Size = gp2(0.2,0,0.1,0);
			Style = WhiteButton;
			Font = Sans;
			FontSize = Enum.FontSize.Size36;
			Text = "CLEAR";
			TextColor3 = Color3.new();
			TextScaled = false;
			TextWrapped = false;
			TextStrokeColor3 = rgb(127,127,127);
			TextStrokeTransparency = 0.6;
			ZIndex = 6;
		};
		create "TextButton" {
			Name = "AllButton";
			Position = gp2(0.2,0,0,0);
			Size = gp2(0.25,0,0.1,0);
			Style = WhiteButton;
			Font = Sans;
			FontSize = Enum.FontSize.Size36;
			Text = "All Chats";
			TextColor3 = Color3.new();
			TextScaled = false;
			TextWrapped = false;
			TextStrokeColor3 = rgb(127,127,127);
			TextStrokeTransparency = 0.6;
			ZIndex = 6;
			Visible = true;
		};
		create "TextButton" {
			Name = "eButton";
			Position = gp2(0.45,0,0,0);
			Size = gp2(0.25,0,0.1,0);
			Style = WhiteButton;
			Font = Sans;
			FontSize = Enum.FontSize.Size36;
			Text = "/e Chats";
			TextColor3 = Color3.new();
			TextScaled = false;
			TextWrapped = false;
			TextStrokeColor3 = rgb(127,127,127);
			TextStrokeTransparency = 0.6;
			ZIndex = 6;
		};
		create "TextButton" {
			Name = "CustomButton";
			Position = gp2(0.7,0,0,0);
			Size = gp2(0.3,0,0.1,0);
			Style = WhiteButton;
			Font = Sans;
			FontSize = Enum.FontSize.Size24;
			Text = "Custom Chats";
			TextColor3 = Color3.new();
			TextScaled = false;
			TextWrapped = false;
			TextStrokeColor3 = rgb(127,127,127);
			TextStrokeTransparency = 0.6;
			ZIndex = 6;
		};
		create "ScrollingFrame" {
			Name = "ChatFrame";
			Position = gp2(0,0,0.12,0);
			Size = gp2(1,0,0.88,0);
			BackgroundTransparency = 1;
			CanvasSize = gp2(12,0,50,0);
			ScrollBarThickness = 15;
			BottomImage = "rbxassetid://162791081";
			MidImage = "rbxassetid://162791081";
			TopImage = "rbxassetid://162791081";
			ZIndex = 6;
			create "TextLabel" {
				Name = "AllChatBox";
				Position = gp2(0,0,0,0);
				Size = gp2(1,0,1,0);
				BackgroundColor3 = Color3.new(1,1,1);
				Active = false;
				Font = Sans;
				FontSize = Enum.FontSize.Size18;
				Text = "All Chat Log Gui!";
				TextTransparency = 1;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextYAlignment = Enum.TextYAlignment.Top;
				ZIndex = 7;
				Visible = true;
				create "TextButton" {
					Name = "AllLabel";
					Position = gp2(0,0,0,0);
					Size = gp2(1,0,0,16);
					BackgroundColor3 = Color3.new(1,1,1);
					BorderSizePixel = 0;
					Active = false;
					Font = Sans;
					FontSize = Enum.FontSize.Size18;
					Text = "All Chat Log Gui!";
					--TextScaled = true;
					TextWrapped = true;
					TextXAlignment = Enum.TextXAlignment.Left;
					AutoButtonColor = false;
					ZIndex = 8;
				};
			};
			create "TextLabel" {
				Name = "eChatBox";
				Position = gp2(0,0,0,0);
				Size = gp2(1,0,1,0);
				BackgroundColor3 = Color3.new(1,1,1);
				Active = false;
				Font = Sans;
				FontSize = Enum.FontSize.Size18;
				Text = "/e Chat Log Gui!";
				TextTransparency = 1;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextYAlignment = Enum.TextYAlignment.Top;
				ZIndex = 7;
				Visible = false;
				create "TextButton" {
					Name = "eLabel";
					Position = gp2(0,0,0,0);
					Size = gp2(1,0,0,16);
					BackgroundColor3 = Color3.new(1,1,1);
					BorderSizePixel = 0;
					Active = false;
					Font = Sans;
					FontSize = Enum.FontSize.Size18;
					Text = "/e Chat Log Gui!";
					--TextScaled = true;
					TextWrapped = true;
					TextXAlignment = Enum.TextXAlignment.Left;
					AutoButtonColor = false;
					ZIndex = 8;
				};
			};
			create "TextLabel" {
				Name = "CustomChatBox";
				Position = gp2(0,0,0,0);
				Size = gp2(1,0,1,0);
				BackgroundColor3 = Color3.new(1,1,1);
				Active = false;
				Font = Sans;
				FontSize = Enum.FontSize.Size18;
				Text = "Custom Chat Log Gui!";
				TextTransparency = 1;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextYAlignment = Enum.TextYAlignment.Top;
				ZIndex = 7;
				Visible = false;
				create "TextButton" {
					Name = "CustomLabel";
					Position = gp2(0,0,0,0);
					Size = gp2(1,0,0,16);
					BackgroundColor3 = Color3.new(1,1,1);
					BorderSizePixel = 0;
					Active = false;
					Font = Sans;
					FontSize = Enum.FontSize.Size18;
					Text = "Custom Chat Log Gui!";
					--TextScaled = true;
					TextWrapped = true;
					TextXAlignment = Enum.TextXAlignment.Left;
					AutoButtonColor = false;
					ZIndex = 8;
				};
			};
		};
	};
};
local Gui = me.PlayerGui:WaitForChild("ChatLog")
local MainFrame = Gui.MainFrame
local ChatFrame = MainFrame.ChatFrame
local ClearBtn = MainFrame.ClearButton

---------------------------------------------------------------------------
---------------------------------------------------------------------------

local HotKey = "" --F3

local MakeTempChat = true

TotalChatted = 0
BetweenPixels = 16

CustomPhrases = {
	[1] = {Phrase = "g/", Mode = "Sub", StartLength = 1, EndLength = 2};
	[2] = {Phrase = "stypi", Mode = "Find", StartLength = nil, EndLength = nil};
};

local CanHotKey2 = false
local Opened = false
CHB = {
	AllChatBox = ChatFrame.AllChatBox;
	eChatBox = ChatFrame.eChatBox;
	CustomChatBox = ChatFrame.CustomChatBox;
}
CBT = {
	AllButton = MainFrame.AllButton;
	eButton = MainFrame.eButton;
	CustomButton = MainFrame.CustomButton;
}
CTL = {
	AllLabel = CHB.AllChatBox.AllLabel;
	eLabel = CHB.eChatBox.eLabel;
	CustomLabel = CHB.CustomChatBox.CustomLabel
}

local MakeTempChat = function(v)
	v.MouseButton1Down:connect(function()
		ChatFrame.CanvasPosition = Vector2.new(0,0)
		local tempchat = create "TextButton" {
			Name = "TempChat";
			Parent = ChatFrame;
			AutoButtonColor = false;
			Size = gp2(1,0,1,0);
			BackgroundColor3 = Color3.new(1,1,1);
			TextWrapped = true;
			Font = Sans;
			FontSize = Enum.FontSize.Size18;
			Text = ("TEMPORARY CHAT. CLICK TO CLOSE \n"..v.Text);
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Top;
			ZIndex = 10;
		};
		tempchat.MouseButton1Down:connect(function()
			tempchat:Destroy()
		end)
	end)
end

allLastY = 0
eLastY = 0
customLastY = 0
local onChat = function(plr, msg)
	TotalChatted = TotalChatted + 1;
	local AddChat = true
	if AddChat then
		if string.sub(msg,1,3) == "/e " then
			eLastY = eLastY + BetweenPixels
			local e1 = CTL.eLabel:Clone()
			e1.Parent = CHB.eChatBox
			e1.Position = gp2(0,0,0,eLastY)
			e1.Text = ("["..plr.Name.."]: "..msg)
			if MakeTempChat then MakeTempChat(e1) end
		end
		for i,p in pairs(CustomPhrases) do
			local addCustomChat = function()
				customLastY = customLastY + BetweenPixels
				local c1 = CTL.CustomLabel:Clone()
				c1.Parent = CHB.CustomChatBox
				c1.Position = gp2(0,0,0,customLastY)
				c1.Text = ("["..plr.Name.."]: "..msg)
				if MakeTempChat then MakeTempChat(c1) end
			end
			if p.Mode == "Sub" then	
				if string.sub(msg,p.StartLength,p.EndLength) == string.lower(p.Phrase) then
					addCustomChat()
				end
			elseif p.Mode == "Find" then
				if string.find(msg,string.lower(p.Phrase)) then
					addCustomChat()
				end
			end
		end
		allLastY = allLastY + BetweenPixels
		local a1 = CTL.AllLabel:Clone()
		a1.Parent = CHB.AllChatBox
		a1.Position = gp2(0,0,0,allLastY)
		a1.Text = ("["..plr.Name.."]: "..msg)
		if MakeTempChat then MakeTempChat(a1) end
		TotalChatted = TotalChatted + 1
	end
end

for i,v in pairs(Players:GetPlayers()) do
	v.Chatted:connect(function(msg)
		onChat(v, msg)
	end)
end

Players.ChildAdded:connect(function(obj)
	if obj.ClassName == "Player" then
		obj.Chatted:connect(function(msg)
			onChat(obj, msg)
		end)
	end
end)

ClearBtn.MouseButton1Down:connect(function()
	TotalChatted = 0
	allLastY = -20
	eLastY = -20
	customLastY = -20
	ChatFrame.CanvasPosition = Vector2.new(0,0)
	for i,v in pairs(CHB) do
		for i,vv in pairs(v:GetChildren()) do
			vv:Destroy()
		end
	end
	for i,v in pairs(ChatFrame:GetChildren()) do
		if v.Name~="AllChatBox" and v.Name~="eChatBox" and v.Name~="CustomChatBox" then
			v:Destroy()
		end
	end
end)

CBT.AllButton.MouseButton1Down:connect(function()
	ChatFrame.CanvasPosition = Vector2.new(0,0)
	CHB.AllChatBox.Visible = true
	for i,v in pairs(CHB) do
		if v.Name ~= "AllChatBox" then
			v.Visible = false
		end
	end
end)

CBT.eButton.MouseButton1Down:connect(function()
	ChatFrame.CanvasPosition = Vector2.new(0,0)
	CHB.eChatBox.Visible = true
	for i,v in pairs(CHB) do
		if v.Name ~= "eChatBox" then
			v.Visible = false
		end
	end
end)

CBT.CustomButton.MouseButton1Down:connect(function()
	ChatFrame.CanvasPosition = Vector2.new(0,0)
	CHB.CustomChatBox.Visible = true
	for i,v in pairs(CHB) do
		if v.Name ~= "CustomChatBox" then
			v.Visible = false
		end
	end
end)

mouse.KeyDown:connect(function(key)
	if key == HotKey then
		Opened = not Opened
		MainFrame.Visible = not MainFrame.Visible
	end
end)