

-- == INFORMATION ==
-- @creator			Vlatkovski
-- @name			Realistic Fire Spread
-- @description		This was made as an example for the "GetTouchingParts" function of Part. Use it for what you want.
-- @version			1
-- == INFORMATION ==


------------------------------------------------------------------------
------------------------------------------------------------------------

create, gp, gp2, c3, v3, ins, bc, cf, c255, v2 = LoadLibrary("RbxUtility").Create, UDim.new,  UDim2.new, Color3.new,  Vector3.new, Instance.new, BrickColor,  CFrame, function(r,g,b) return Color3.new(r/255, g/255, b/255) end, Vector2.new;


function isInArray(array, wantedValue)
	for index, value in next, array do
		if value == wantedValue then
			return true
		end
	end
	return false
end

------------------------------------------------------------------------
------------------------------------------------------------------------

-- script.Parent = create "HopperBin" {Name = ""}


local ignited = {}
local timeOffset = 1



function makeHazardous(t)
	t.Touched:connect(function(p)
		local plr = game:GetService("Players"):GetPlayerFromCharacter(p.Parent)
		
		if plr and plr.Character and plr.Character.Humanoid then
			local char = plr.Character
			local hum = char.Humanoid
			
			while isInArray(t:GetTouchingParts(), p) do
				hum:TakeDamage(2)
				wait(0.1)
			end
		end
	end)
end


function ignite(p)
	if not ignited[p] and p:IsA("BasePart") and p.ClassName ~= "Terrain" then
		ignited[p] = #ignited or 0
		
		delay(math.random(5, 15) * timeOffset, function()
			local fire = ins("Fire", p)
			fire.Name = ""
			
			local function setFire()
				fire.Size = p.Size.X + p.Size.Y + p.Size.Z
			end
			
			setFire()
			p.Changed:connect(setFire)
			
			makeHazardous(p)			
			
			delay((p.Size.X/3 + p.Size.Y/3 + p.Size.Z/3) * timeOffset, function()
				ignited[p] = nil
				p:Destroy()
			end)
		end)
		
		for _, part in next, p:GetTouchingParts() do
			ignite(part)
		end
		
		return true
	end
end


function spread(trg)
	ignite(trg)
	for _, child in next, trg:GetChildren() do
		if not ignite(child) then
			spread(child)
		end
	end
end


------------------------------------------------------------------------
------------------------------------------------------------------------

spread(workspace)
