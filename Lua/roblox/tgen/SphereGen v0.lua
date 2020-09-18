local radius = 20
local material = 1

for i = 0, 6.283, 1/radius do
	for j = 0, 6.283, 1/radius do
		workspace.Terrain:SetCell(radius*math.sin(i)*math.cos(j),radius*math.sin(i)*math.sin(j),radius*math.cos(i),material,0,0)
	end
	wait()
end

--[[
RANDOM TEST FOR LATER:
rmat1 = math.random(1,6)
rmat2 = math.random(7,12)
rmat3 = math.random(13,17)
]]