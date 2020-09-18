script.Parent = game.Players.Vlatkovski.PlayerGui

--screengui
sg = Instance.new("ScreenGui", script.Parent)

--frame
fr = Instance.new("Frame", sg)
fr.Size = UDim2.new(0, 170, 0, 50)
fr.Position = UDim2.new(0, 1, 0, 1)
fr.BackgroundColor3 = Color3.new(129, 129, 129)
fr.Active = true
fr.Draggable = true

--textbox
tbox = Instance.new("TextBox", fr)
tbox.Size = UDim2.new(0, 95, 0, 35)
tbox.Position = UDim2.new(0, 5, 0, 10)
tbox.BackgroundColor3 = Color3.new(255, 255, 255)
tbox.Text = "Radius"
tbox.FontSize = Enum.FontSize.Size14
tbox.Font = "SourceSans"

--textbutton
tbutton = Instance.new("TextButton", fr)
tbutton.Size = UDim2.new(0, 60, 0, 40)
tbutton.Position = UDim2.new(0, 105, 0, 5)
tbutton.BackgroundColor3 = Color3.new(17, 255, 0)
tbutton.Text = "Generate"
tbutton.FontSize = Enum.FontSize.Size14
tbutton.Font = "SourceSans"

tbutton.MouseButton1Click:connect(function() 

local radius = tbox.Text

	for i = 0, 6.283, 1/radius do
		for j = 0, 6.283, 1/radius do
			workspace.Terrain:SetCell(radius*math.sin(i)*math.cos(j),radius*math.sin(i)*math.sin(j),radius*math.cos(i),1,0,0)
		end
		wait()
	end
end)