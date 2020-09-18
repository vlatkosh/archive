--credits to chirality on this one bbgurl get moist

local c = game.CoreGui.RobloxGui
local s = Instance.new("ScreenGui", c)
s.Name = ""
local t = Instance.new("TextBox", s)
t.Name = ""
t.Position = UDim2.new(0, 0, 1, 0)
t.Size = UDim2.new(1, 0, 0, -20)
t.BackgroundColor3 = Color3.new(0,0,0)
t.BackgroundTransparency = 1
t.TextColor3 = Color3.new(1, 1, 1)
t.TextXAlignment = Enum.TextXAlignment.Left
t.ClearTextOnFocus = true
t.TextTransparency = 1
t.FontSize = "Size12"

t.FocusLost:connect(function(enterpressed)
	if enterpressed and t.Text ~= "" then
		spawn(function()
			if t.Text:sub(1,1) == ';' then
				_G.exec_cmd(t.Text:sub(2))
			else
				script = Instance.new('LocalScript', c)
				local sc, loaderr = loadstring(t.Text, '='..script:GetFullName())
				if not sc then
					error(loaderr)
				else
					sc()
				end
			end
		end)
	end
	t.BackgroundTransparency = 1
	t.TextTransparency = 1
end)

game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(Key)
    if Key == "\\" then
		t.BackgroundTransparency = 0
		t.TextTransparency = 0
		t:CaptureFocus()
	end
end)