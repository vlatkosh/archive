script.Parent = game.Players.Vlatkovski.PlayerGui
----------------------------------------------------------------------------------
----------------------------------MAIN STUFF--------------------------------------
----------------------------------------------------------------------------------

--screengui
sg = Instance.new("ScreenGui", script.Parent)

--main frame
fr = Instance.new("Frame", sg)
fr.Size = UDim2.new(0, 260, 0, 75)
fr.Position = UDim2.new(0, 10, 0, 10)
fr.BackgroundColor3 = Color3.new(129/255, 129/255, 129/255)
fr.Active = true
fr.Draggable = true
fr.Visible = true
fr.ZIndex = 1

--sphere radius textbox
sphereradius = Instance.new("TextBox", fr)
sphereradius.Name = "radius"
sphereradius.Size = UDim2.new(0, 70, 0, 35)
sphereradius.Position = UDim2.new(0, 5, 0, 5)
sphereradius.BackgroundColor3 = Color3.new(255/255, 255/255, 255/255)
sphereradius.Text = "Radius"
sphereradius.FontSize = Enum.FontSize.Size14
sphereradius.Font = "SourceSans"
sphereradius.ZIndex = 2

--material label
material = Instance.new("TextLabel", fr)
material.Name = "material"
material.Size = UDim2.new(0, 110, 0, 35)
material.Position = UDim2.new(0, 80, 0, 5)
material.BackgroundColor3 = Color3.new(255/255, 255/255, 255/255)
material.Text = "Material"
material.FontSize = Enum.FontSize.Size14
material.Font = "SourceSans"
material.Active = false
material.ZIndex = 2

--clear button
clearbutton = Instance.new("TextButton", fr)
clearbutton.Name = "clearbutton"
clearbutton.Size = UDim2.new(0, 60, 0, 35)
clearbutton.Position = UDim2.new(0, 195, 0, 5)
clearbutton.BackgroundColor3 = Color3.new(255/255, 0/255, 4/255)
clearbutton.Text = "CLEAR"
clearbutton.FontSize = Enum.FontSize.Size18
clearbutton.Font = "SourceSans"
clearbutton.TextColor3 = Color3.new(1,1,1)
clearbutton.Active = true
clearbutton.AutoButtonColor = true
clearbutton.ZIndex = 2
clearbutton.Visible = true
clearbutton.MouseButton1Click:connect(function()
realmaterial = 0
game.Workspace.Terrain:Clear()
material.Text = "Air"
end)

----------------------------------------------------------------------------------
-------------------------------MATERIALS FRAME------------------------------------
----------------------------------------------------------------------------------

--materialspart
materialspart = Instance.new("Frame", fr)
materialspart.Name = "materialspart"
materialspart.Size = UDim2.new(0, 175, 0, 265)
materialspart.Position = UDim2.new(0, 0, 0, 75)
materialspart.BackgroundColor3 = Color3.new(129/255, 129/255, 129/255)
materialspart.Active = true
materialspart.Visible = true
materialspart.ZIndex = 1

--materialspart button
materialbutton = Instance.new("TextButton", fr)
materialbutton.Name = "materialbutton"
materialbutton.Size = UDim2.new(0, 80, 0, 25)
materialbutton.Position = UDim2.new(0, 5, 0, 45)
materialbutton.BackgroundColor3 = Color3.new(0/255, 213/255, 160/255)
materialbutton.Text = "Materials"
materialbutton.FontSize = Enum.FontSize.Size14
materialbutton.Font = "SourceSans"
materialbutton.Active = true
materialbutton.AutoButtonColor = true
materialbutton.ZIndex = 2
materialbutton.MouseButton1Click:connect(function()
if materialspart.Visible == false then  
materialspart.Visible = true 
else
materialspart.Visible = false 
end
end)

realmaterial = 0

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx THE FIRST BUTTONS xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx--

--0
b0 = Instance.new("TextButton", materialspart)
b0.Name = "b0"
b0.Size = UDim2.new(0, 80, 0, 25)
b0.Position = UDim2.new(0, 5, 0, 5)
b0.BackgroundColor3 = Color3.new(207/255, 207/255, 207/255)
b0.Text = "0 = Air"
b0.FontSize = Enum.FontSize.Size14
b0.Font = "SourceSans"
b0.Active = true
b0.AutoButtonColor = true
b0.MouseButton1Click:connect(function()
material.Text = "Air"
realmaterial = 0
end)

--1
b1 = Instance.new("TextButton", materialspart)
b1.Name = "b1"
b1.Size = UDim2.new(0, 80, 0, 25)
b1.Position = UDim2.new(0, 5, 0, 30)
b1.BackgroundColor3 = Color3.new(207/255, 207/255, 207/255)
b1.Text = "1 = Grass"
b1.FontSize = Enum.FontSize.Size14
b1.Font = "SourceSans"
b1.Active = true
b1.AutoButtonColor = true
b1.MouseButton1Click:connect(function()
material.Text = "Grass"
realmaterial = 1
end)

--2
b2 = Instance.new("TextButton", materialspart)
b2.Name = "b2"
b2.Size = UDim2.new(0, 80, 0, 25)
b2.Position = UDim2.new(0, 5, 0, 55)
b2.BackgroundColor3 = Color3.new(207/255, 207/255, 207/255)
b2.Text = "2 = Sand"
b2.FontSize = Enum.FontSize.Size14
b2.Font = "SourceSans"
b2.Active = true
b2.AutoButtonColor = true
b2.MouseButton1Click:connect(function()
material.Text = "Sand"
realmaterial = 2
end)

--3
b3 = Instance.new("TextButton", materialspart)
b3.Name = "b3"
b3.Size = UDim2.new(0, 80, 0, 25)
b3.Position = UDim2.new(0, 5, 0, 80)
b3.BackgroundColor3 = Color3.new(207/255, 207/255, 207/255)
b3.Text = "3 = Brick"
b3.FontSize = Enum.FontSize.Size14
b3.Font = "SourceSans"
b3.Active = true
b3.AutoButtonColor = true
b3.MouseButton1Click:connect(function()
material.Text = "Brick"
realmaterial = 3
end)

--4
b4 = Instance.new("TextButton", materialspart)
b4.Name = "b4"
b4.Size = UDim2.new(0, 80, 0, 25)
b4.Position = UDim2.new(0, 5, 0, 105)
b4.BackgroundColor3 = Color3.new(207/255, 207/255, 207/255)
b4.Text = "4 = Granite"
b4.FontSize = Enum.FontSize.Size14
b4.Font = "SourceSans"
b4.Active = true
b4.AutoButtonColor = true
b4.MouseButton1Click:connect(function()
material.Text = "Granite"
realmaterial = 4
end)

--5
b5 = Instance.new("TextButton", materialspart)
b5.Name = "b5"
b5.Size = UDim2.new(0, 80, 0, 25)
b5.Position = UDim2.new(0, 5, 0, 130)
b5.BackgroundColor3 = Color3.new(207/255, 207/255, 207/255)
b5.Text = "5 = Asphalt"
b5.FontSize = Enum.FontSize.Size14
b5.Font = "SourceSans"
b5.Active = true
b5.AutoButtonColor = true
b5.MouseButton1Click:connect(function()
material.Text = "Asphalt"
realmaterial = 5
end)

--6
b6 = Instance.new("TextButton", materialspart)
b6.Name = "b6"
b6.Size = UDim2.new(0, 80, 0, 25)
b6.Position = UDim2.new(0, 5, 0, 155)
b6.BackgroundColor3 = Color3.new(207/255, 207/255, 207/255)
b6.Text = "6 = Iron"
b6.FontSize = Enum.FontSize.Size14
b6.Font = "SourceSans"
b6.Active = true
b6.AutoButtonColor = true
b6.MouseButton1Click:connect(function()
material.Text = "Iron"
realmaterial = 6
end)

--7
b7 = Instance.new("TextButton", materialspart)
b7.Name = "b7"
b7.Size = UDim2.new(0, 80, 0, 25)
b7.Position = UDim2.new(0, 5, 0, 180)
b7.BackgroundColor3 = Color3.new(207/255, 207/255, 207/255)
b7.Text = "7 = Aluminum"
b7.FontSize = Enum.FontSize.Size14
b7.Font = "SourceSans"
b7.Active = true
b7.AutoButtonColor = true
b7.MouseButton1Click:connect(function()
material.Text = "Aluminum"
realmaterial = 7
end)

--8
b8 = Instance.new("TextButton", materialspart)
b8.Name = "b8"
b8.Size = UDim2.new(0, 80, 0, 25)
b8.Position = UDim2.new(0, 5, 0, 205)
b8.BackgroundColor3 = Color3.new(207/255, 207/255, 207/255)
b8.Text = "8 = Gold"
b8.FontSize = Enum.FontSize.Size14
b8.Font = "SourceSans"
b8.Active = true
b8.AutoButtonColor = true
b8.MouseButton1Click:connect(function()
material.Text = "Gold"
realmaterial = 8
end)

--9
b9 = Instance.new("TextButton", materialspart)
b9.Name = "b9"
b9.Size = UDim2.new(0, 80, 0, 25)
b9.Position = UDim2.new(0, 90, 0, 5)
b9.BackgroundColor3 = Color3.new(207/255, 207/255, 207/255)
b9.Text = "9 = WoodPlank"
b9.FontSize = Enum.FontSize.Size14
b9.Font = "SourceSans"
b9.Active = true
b9.AutoButtonColor = true
b9.MouseButton1Click:connect(function()
material.Text = "Wood Plank"
realmaterial = 9
end)

--10
b10 = Instance.new("TextButton", materialspart)
b10.Name = "b10"
b10.Size = UDim2.new(0, 80, 0, 25)
b10.Position = UDim2.new(0, 90, 0, 30)
b10.BackgroundColor3 = Color3.new(207/255, 207/255, 207/255)
b10.Text = "10 = WoodLog"
b10.FontSize = Enum.FontSize.Size14
b10.Font = "SourceSans"
b10.Active = true
b10.AutoButtonColor = true
b10.MouseButton1Click:connect(function()
material.Text = "Wood Log"
realmaterial = 10
end)

--11
b11 = Instance.new("TextButton", materialspart)
b11.Name = "b11"
b11.Size = UDim2.new(0, 80, 0, 25)
b11.Position = UDim2.new(0, 90, 0, 55)
b11.BackgroundColor3 = Color3.new(207/255, 207/255, 207/255)
b11.Text = "11 = Gravel"
b11.FontSize = Enum.FontSize.Size14
b11.Font = "SourceSans"
b11.Active = true
b11.AutoButtonColor = true
b11.MouseButton1Click:connect(function()
material.Text = "Gravel"
realmaterial = 11
end)

--12
b12 = Instance.new("TextButton", materialspart)
b12.Name = "b12"
b12.Size = UDim2.new(0, 80, 0, 25)
b12.Position = UDim2.new(0, 90, 0, 80)
b12.BackgroundColor3 = Color3.new(207/255, 207/255, 207/255)
b12.Text = "12 = CinderBlock"
b12.FontSize = Enum.FontSize.Size14
b12.Font = "SourceSans"
b12.Active = true
b12.AutoButtonColor = true
b12.MouseButton1Click:connect(function()
material.Text = "Cinder Block"
realmaterial = 12
end)

--13
b13 = Instance.new("TextButton", materialspart)
b13.Name = "b13"
b13.Size = UDim2.new(0, 80, 0, 25)
b13.Position = UDim2.new(0, 90, 0, 105)
b13.BackgroundColor3 = Color3.new(207/255, 207/255, 207/255)
b13.Text = "13 = MossyStone"
b13.FontSize = Enum.FontSize.Size14
b13.Font = "SourceSans"
b13.Active = true
b13.AutoButtonColor = true
b13.MouseButton1Click:connect(function()
material.Text = "Mossy Stone"
realmaterial = 13
end)

--14
b14 = Instance.new("TextButton", materialspart)
b14.Name = "b14"
b14.Size = UDim2.new(0, 80, 0, 25)
b14.Position = UDim2.new(0, 90, 0, 130)
b14.BackgroundColor3 = Color3.new(207/255, 207/255, 207/255)
b14.Text = "14 = Cement"
b14.FontSize = Enum.FontSize.Size14
b14.Font = "SourceSans"
b14.Active = true
b14.AutoButtonColor = true
b14.MouseButton1Click:connect(function()
material.Text = "Cement"
realmaterial = 14
end)

--15
b15 = Instance.new("TextButton", materialspart)
b15.Name = "b15"
b15.Size = UDim2.new(0, 80, 0, 25)
b15.Position = UDim2.new(0, 90, 0, 155)
b15.BackgroundColor3 = Color3.new(207/255, 207/255, 207/255)
b15.Text = "15  = RedPlastic"
b15.FontSize = Enum.FontSize.Size14
b15.Font = "SourceSans"
b15.Active = true
b15.AutoButtonColor = true
b15.MouseButton1Click:connect(function()
material.Text = "Red Plastic"
realmaterial = 15
end)

--16
b16 = Instance.new("TextButton", materialspart)
b16.Name = "b16"
b16.Size = UDim2.new(0, 80, 0, 25)
b16.Position = UDim2.new(0, 90, 0, 180)
b16.BackgroundColor3 = Color3.new(207/255, 207/255, 207/255)
b16.Text = "16  = BluePlastic"
b16.FontSize = Enum.FontSize.Size14
b16.Font = "SourceSans"
b16.Active = true
b16.AutoButtonColor = true
b16.MouseButton1Click:connect(function()
material.Text = "Blue Plastic"
realmaterial = 16
end)

--17
b17 = Instance.new("TextButton", materialspart)
b17.Name = "b17"
b17.Size = UDim2.new(0, 80, 0, 25)
b17.Position = UDim2.new(0, 90, 0, 205)
b17.BackgroundColor3 = Color3.new(207/255, 207/255, 207/255)
b17.Text = "17  = Water"
b17.FontSize = Enum.FontSize.Size14
b17.Font = "SourceSans"
b17.Active = true
b17.AutoButtonColor = true
b17.MouseButton1Click:connect(function()
material.Text = "Water"
realmaterial = 17
end)

--random
brandom = Instance.new("TextButton", materialspart)
brandom.Name = "brandom"
brandom.Size = UDim2.new(0, 80, 0, 25)
brandom.Position = UDim2.new(0, 5, 0, 235)
brandom.BackgroundColor3 = Color3.new(255/255, 175/255, 177/255)
brandom.Text = "Random"
brandom.FontSize = Enum.FontSize.Size14
brandom.Font = "SourceSans"
brandom.Active = true
brandom.AutoButtonColor = true
brandom.MouseButton1Click:connect(function()
material.Text = "Randomized"
realmaterial = math.random(1,17)
end)

--scrambled
bscrambled = Instance.new("TextButton", materialspart)
bscrambled.Name = "bscrambled"
bscrambled.Size = UDim2.new(0, 80, 0, 25)
bscrambled.Position = UDim2.new(0, 90, 0, 235)
bscrambled.BackgroundColor3 = Color3.new(255/255, 175/255, 177/255)
bscrambled.Text = "Scrambled"
bscrambled.FontSize = Enum.FontSize.Size14
bscrambled.Font = "SourceSans"
bscrambled.Active = true
bscrambled.AutoButtonColor = true
bscrambled.MouseButton1Click:connect(function()
material.Text = "Scrambled"
local randommaterials = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17}
realmaterial = randommaterials[math.random(#randommaterials)]
end)

----------------------------------------------------------------------------------
---------------------------------SHAPES FRAME-------------------------------------
----------------------------------------------------------------------------------

--shapes frame
shapeframe = Instance.new("Frame", fr)
shapeframe.Name = "shapeframe"
shapeframe.Size = UDim2.new(0, 85, 0, 265)
shapeframe.Position = UDim2.new(0, 175, 0, 75)
shapeframe.BackgroundColor3 = Color3.new(129/255, 129/255, 129/255)
shapeframe.Active = true
shapeframe.Draggable = false
shapeframe.Visible = true
shapeframe.ZIndex = 1

--shapes button
shapesbutton = Instance.new("TextButton", fr)
shapesbutton.Name = "shapesbutton"
shapesbutton.Size = UDim2.new(0, 80, 0, 25)
shapesbutton.Position = UDim2.new(0, 90, 0, 45)
shapesbutton.BackgroundColor3 = Color3.new(0/255, 244/255, 114/255)
shapesbutton.Text = "Shapes"
shapesbutton.FontSize = Enum.FontSize.Size14
shapesbutton.Font = "SourceSans"
shapesbutton.Active = true
shapesbutton.AutoButtonColor = true
shapesbutton.ZIndex = 2
shapesbutton.MouseButton1Click:connect(function()
if shapeframe.Visible == false then  
shapeframe.Visible = true 
else
shapeframe.Visible = false 
end
end)

--xxxxxxxxxxxxxxxxxxxxxxxxxxxx THE FINAL BUTTONS xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx--

radiusprnt = "Radius: "
materialprnt = "Last Material (ID): "
startprnt = "Starting: "

--sphere
spherebutton = Instance.new("TextButton", shapeframe)
spherebutton.Name = "spherebutton"
spherebutton.Size = UDim2.new(0, 75, 0, 30)
spherebutton.Position = UDim2.new(0, 5, 0, 5)
spherebutton.BackgroundColor3 = Color3.new(234/255, 255/255, 0/255)
spherebutton.Text = "Sphere"
spherebutton.FontSize = Enum.FontSize.Size14
spherebutton.Font = "SourceSans"
spherebutton.Active = true
spherebutton.AutoButtonColor = true
spherebutton.ZIndex = 2

spherebutton.MouseButton1Click:connect(function() 
local radius = sphereradius.Text
print(startprnt .. spherebutton.Text)
for i = 0, 6.283, 1/radius do
	for j = 0, 6.283, 1/radius do
		workspace.Terrain:SetCell(radius*math.sin(i)*math.cos(j),radius*math.sin(i)*math.sin(j),radius*math.cos(i),realmaterial,0,0)
	end
	wait()
end
print(radiusprnt .. radius)
print(materialprnt .. realmaterial)
end)

--trippy grids
trippygridsbutton = Instance.new("TextButton", shapeframe)
trippygridsbutton.Name = "trippygridsbutton"
trippygridsbutton.Size = UDim2.new(0, 75, 0, 30)
trippygridsbutton.Position = UDim2.new(0, 5, 0, 40)
trippygridsbutton.BackgroundColor3 = Color3.new(234/255, 255/255, 0/255)
trippygridsbutton.Text = "Trippy Grids"
trippygridsbutton.FontSize = Enum.FontSize.Size14
trippygridsbutton.Font = "SourceSans"
trippygridsbutton.Active = true
trippygridsbutton.AutoButtonColor = true
trippygridsbutton.ZIndex = 2

trippygridsbutton.MouseButton1Click:connect(function() 
local radius = sphereradius.Text
print(startprnt .. trippygridsbutton.Text)
for i = 0, 6.283, 1/radius do
	for j = 0, 6.283, 1/radius do
		workspace.Terrain:SetCell(radius/math.sin(i)/math.cos(j),radius/math.sin(i)/math.sin(j),radius/math.cos(i),realmaterial,0,0)
	end
	wait()
end
print(radiusprnt .. radius)
print(materialprnt .. realmaterial)
end)

--flood fill
floodfillbutton = Instance.new("TextButton", shapeframe)
floodfillbutton.Name = "floodfillbutton"
floodfillbutton.Size = UDim2.new(0, 75, 0, 30)
floodfillbutton.Position = UDim2.new(0, 5, 0, 75)
floodfillbutton.BackgroundColor3 = Color3.new(234/255, 255/255, 0/255)
floodfillbutton.Text = "Flood Fill"
floodfillbutton.FontSize = Enum.FontSize.Size14
floodfillbutton.Font = "SourceSans"
floodfillbutton.Active = true
floodfillbutton.AutoButtonColor = true
floodfillbutton.ZIndex = 2

floodfillbutton.MouseButton1Click:connect(function() 
local radius = sphereradius.Text
print(startprnt .. floodfillbutton.Text)
for i = 0, 6.283, 1/radius do
	for j = 0, 6.283, 1/radius do
		workspace.Terrain:SetCell(radius*math.cos(i^2)*math.sin(j),radius/math.sin(i)*math.cos(j^2),radius*math.cos(i),realmaterial,0,0)
	end
	wait()
end
print(radiusprnt .. radius)
print(materialprnt .. realmaterial)
end)

--tall tower
talltowerbutton = Instance.new("TextButton", shapeframe)
talltowerbutton.Name = "talltowerbutton"
talltowerbutton.Size = UDim2.new(0, 75, 0, 30)
talltowerbutton.Position = UDim2.new(0, 5, 0, 110)
talltowerbutton.BackgroundColor3 = Color3.new(234/255, 255/255, 0/255)
talltowerbutton.Text = "Huge Tower"
talltowerbutton.FontSize = Enum.FontSize.Size14
talltowerbutton.Font = "SourceSans"
talltowerbutton.Active = true
talltowerbutton.AutoButtonColor = true
talltowerbutton.ZIndex = 2
talltowerbutton.TextWrapped = true

talltowerbutton.MouseButton1Click:connect(function() 
local radius = sphereradius.Text
print(startprnt .. talltowerbutton.Text)
for i = -3,3, .1/radius do
	for j = -3,3, .1/radius do
		y=math.log(6) * (i^2 + j^2) - 2
		workspace.Terrain:SetCell(radius*i,radius*y,radius*j,realmaterial,0,0)
	end
	wait()
end
print(radiusprnt .. radius)
print(materialprnt .. realmaterial)
end)

--black hole
blackholebutton = Instance.new("TextButton", shapeframe)
blackholebutton.Name = "blackholebutton"
blackholebutton.Size = UDim2.new(0, 75, 0, 30)
blackholebutton.Position = UDim2.new(0, 5, 0, 145)
blackholebutton.BackgroundColor3 = Color3.new(234/255, 255/255, 0/255)
blackholebutton.Text = "Gravity Hole"
blackholebutton.FontSize = Enum.FontSize.Size14
blackholebutton.Font = "SourceSans"
blackholebutton.Active = true
blackholebutton.AutoButtonColor = true
blackholebutton.ZIndex = 2
blackholebutton.TextWrapped = true

blackholebutton.MouseButton1Click:connect(function() 
local radius = sphereradius.Text
print(startprnt .. blackholebutton.Text)
for i = -3,3, .1/radius do
	for j = -3,3, .1/radius do
		y=math.sin(math.sqrt(i^2+j^2))
		workspace.Terrain:SetCell(radius*i,radius*y,radius*j,realmaterial,0,0)
	end
	wait()
end
print(radiusprnt .. radius)
print(materialprnt .. realmaterial)
end)

--bizzare sphere
bzspherebutton = Instance.new("TextButton", shapeframe)
bzspherebutton.Name = "bzspherebutton"
bzspherebutton.Size = UDim2.new(0, 75, 0, 30)
bzspherebutton.Position = UDim2.new(0, 5, 0, 180)
bzspherebutton.BackgroundColor3 = Color3.new(234/255, 255/255, 0/255)
bzspherebutton.Text = "Bizzare Sphere"
bzspherebutton.FontSize = Enum.FontSize.Size14
bzspherebutton.Font = "SourceSans"
bzspherebutton.Active = true
bzspherebutton.AutoButtonColor = true
bzspherebutton.ZIndex = 2
bzspherebutton.TextWrapped = true

bzspherebutton.MouseButton1Click:connect(function() 
local z = 0
local a = math.pi

local mod = Instance.new("Model")
mod.Name = "Math_Patterns"
mod.Parent = game.Workspace

local last

function createPart()
local p = Instance.new("Part")
p.FormFactor = "Custom"
p.BrickColor = BrickColor.new("Bright blue")
p.Size = Vector3.new(1,1,1)
p.Anchored = true
p.CFrame = CFrame.Angles(a^0.5,a^2,a^2 + math.fmod(a, a^2)) * CFrame.new(a,a,a)
a = a + 0.005
p.Parent = mod
if(last)then
local dist = (last.Position - p.Position).magnitude
if(dist > 1)then
local cf = CFrame.new(last.Position:lerp(p.Position, 0.5), p.Position)
local p2 = p:Clone()
p2.CFrame = cf
local m = Instance.new("BlockMesh", p2)
m.Scale = Vector3.new(1,1,dist)
p2.Parent = mod
end
end
local m = Instance.new("BlockMesh", p)
last = p
end

for i = 1,8000 do
createPart()
z = z + 1
if (z > 20) then Wait() z = 0 end
end
print(radiusprnt .. radius)
print(materialprnt .. realmaterial)
end)

--deadmau5
deadmau5button = Instance.new("TextButton", shapeframe)
deadmau5button.Name = "deadmau5button"
deadmau5button.Size = UDim2.new(0, 75, 0, 30)
deadmau5button.Position = UDim2.new(0, 5, 0, 230)
deadmau5button.BackgroundColor3 = Color3.new(234/255, 255/255, 0/255)
deadmau5button.Text = "DeadMau5"
deadmau5button.FontSize = Enum.FontSize.Size14
deadmau5button.Font = "SourceSans"
deadmau5button.Active = true
deadmau5button.AutoButtonColor = true
deadmau5button.ZIndex = 2
deadmau5button.TextWrapped = true

deadmau5button.MouseButton1Click:connect(function() 
local radius = sphereradius.Text
print(startprnt .. deadmau5button.Text)

HeadEarsMaterial = realmaterial
EyeMouthMaterial = 4

function GenerateDeadmau5Head(scale)
	
	local cos,sin = math.cos,math.sin
	local t = workspace.Terrain
	
	-- Mouth
	
	for radius = scale*.9,scale*.92,1/(scale*.1) do
		for i = 0, 6.28, 1/radius do
			for j = 0,6.28, 1/radius do
				t:SetCell(radius*sin(i)*cos(j),radius*sin(i)*sin(j),radius*cos(i),EyeMouthMaterial,0,0)
			end
		end
		wait()
	end
	
	
	-- Top Half of the Head.
	
	for radius = scale*.925,scale,1/(scale*.1) do
		for i = 0, 3.14, 1/radius do
			for j = 0, 3.14, 1/radius do
				t:SetCell(radius*sin(i)*cos(j),radius*sin(i)*sin(j),radius*cos(i),HeadEarsMaterial,0,0)
			end
		end
		wait()
	end
	
	-- Lower back of the head.
	
	for radius = scale*.925,scale,1/(scale*.1) do
		for i = 0, 1.57, 1/radius do
			for j = 3.14,6.28, 1/radius do
				t:SetCell(radius*sin(i)*cos(j),radius*sin(i)*sin(j),radius*cos(i),HeadEarsMaterial,0,0)
			end
		end
		wait()
	end
	
	-- Jaw
	
	for radius = scale*.94,scale,1/(scale*.1) do
		for i = 3.14, 6.28, 1/radius do
			for j = 0,0.74, 1/radius do
				t:SetCell(radius*cos(i),radius*sin(i)*cos(j),radius*sin(i)*sin(j),HeadEarsMaterial,0,0)
			end
		end
	end
	
	-- Eyes
	
	for ox = -scale/2,scale/2,scale do
		local radius = scale*.28
		for i = 0,6.28,1/radius do
			for j = 0,6.28,1/radius do
				t:SetCell(ox+radius*cos(i),(scale*.44)+radius*sin(i)*cos(j),(-scale*.6)+radius*sin(i)*sin(j),EyeMouthMaterial,0,0)
			end
		end
		wait()
	end
	
	-- Ears
	
	local cooldown = 0
	
	for radius = 0,scale*.8,1/(scale*.8) do	
		for ox = -scale*1.2,scale*1.2,scale*2.4 do
			for i = 0,6.28,1/radius do
				for j = 0,0.01,1/radius do
					t:SetCell(ox+radius*cos(i),(scale*.9)+radius*sin(i)*cos(j),radius*sin(i)*sin(j),HeadEarsMaterial,0,0)
				end
			end
		end
		cooldown = cooldown + 1
		if cooldown > (scale/5) then
			cooldown = 0
			wait()
		end
	end
	
end

GenerateDeadmau5Head(radius)
print(radiusprnt .. radius)
print(materialprnt .. realmaterial)
end)

----------------------------------------------------------------------------------
----------------------------------OTHER FRAME-------------------------------------
----------------------------------------------------------------------------------

--other frame
otherframe = Instance.new("Frame", fr)
otherframe.Name = "otherframe"
otherframe.Size = UDim2.new(0, 145, 0, 340)
otherframe.Position = UDim2.new(0, 260, 0, 0)
otherframe.BackgroundColor3 = Color3.new(129/255, 129/255, 129/255)
otherframe.Active = true
otherframe.Draggable = false
otherframe.Visible = true
otherframe.ZIndex = 1

--other button
otherbutton = Instance.new("TextButton", fr)
otherbutton.Name = "otherbutton"
otherbutton.Size = UDim2.new(0, 80, 0, 25)
otherbutton.Position = UDim2.new(0, 175, 0, 45)
otherbutton.BackgroundColor3 = Color3.new(34/255, 255/255, 0/255)
otherbutton.Text = "Other"
otherbutton.FontSize = Enum.FontSize.Size14
otherbutton.Font = "SourceSans"
otherbutton.Active = true
otherbutton.AutoButtonColor = true
otherbutton.ZIndex = 2
otherbutton.MouseButton1Click:connect(function()
if otherframe.Visible == false then  
otherframe.Visible = true 
else
otherframe.Visible = false 
end
end)

--base transparency box
basetransparencybox = Instance.new("TextBox", otherframe)
basetransparencybox.Name = "basetransparencybox"
basetransparencybox.Size = UDim2.new(0, 135, 0, 30)
basetransparencybox.Position = UDim2.new(0, 5, 0, 40)
basetransparencybox.BackgroundColor3 = Color3.new(245/255, 245/255, 245/255)
basetransparencybox.Text = "0"
basetransparencybox.Font = "SourceSans"
basetransparencybox.Active = true
basetransparencybox.ZIndex = 2
basetransparencybox.TextWrapped = true
basetransparencybox.TextScaled = true

--base transparency button
basetransparencybutton = Instance.new("TextButton", otherframe)
basetransparencybutton.Name = "basetransparencybutton"
basetransparencybutton.Size = UDim2.new(0, 135, 0, 35)
basetransparencybutton.Position = UDim2.new(0, 5, 0, 5)
basetransparencybutton.BackgroundColor3 = Color3.new(211/255, 211/255, 211/255)
basetransparencybutton.Text = "Set Base Transparency"
basetransparencybutton.FontSize = Enum.FontSize.Size14
basetransparencybutton.Font = "SourceSans"
basetransparencybutton.Active = true
basetransparencybutton.AutoButtonColor = true
basetransparencybutton.ZIndex = 2
basetransparencybutton.MouseButton1Click:connect(function()
local thebase = game.Workspace.Base
thebase.Transparency = basetransparencybox.Text
end)

--nil character button
nilcharbutton = Instance.new("TextButton", otherframe)
nilcharbutton.Name = "nilcharbutton"
nilcharbutton.Size = UDim2.new(0, 135, 0, 35)
nilcharbutton.Position = UDim2.new(0, 5, 0, 80)
nilcharbutton.BackgroundColor3 = Color3.new(211/255, 211/255, 211/255)
nilcharbutton.Text = "Make nil/respawn"
nilcharbutton.FontSize = Enum.FontSize.Size14
nilcharbutton.Font = "SourceSans"
nilcharbutton.Active = true
nilcharbutton.AutoButtonColor = true
nilcharbutton.ZIndex = 2
nilcharbutton.MouseButton1Click:connect(function()
if game.Players.Vlatkovski.Character == nil then  
game.Workspace.CurrentCamera:Remove()
elseif
game.Players.Vlatkovski.Character.Parent == Workspace then
game.Players.Vlatkovski.Character = nil
end
end)