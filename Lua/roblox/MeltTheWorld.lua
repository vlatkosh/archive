	function TextLabel(t)
		if(math.random(1,3) == 1) then
			t.BackgroundTransparency = math.random(1,10)/10
		end
		if(math.random(1,3) == 1) then
			t.TextColor3 = Color3.new(math.random(1,255)/255,math.random(1,255)/255,math.random(1,255)/255)
		end
		if(math.random(1,5) == 5) then
			t.Text = string.sub(t.Text,math.random(1,30),math.random(30,100))
		end
		if(math.random(1,4) == 4) then
			t.Rotation = math.random(1,180)/t.Rotation
		end
		wait()
	end


	function hat (h)
		if(math.random(1,5) == 5) then
		h.AttachmentPos = Vector3.new(math.random(-5,5)*math.random(-5,5),math.random(-5,5)*math.random(-5,5),math.random(-5,5)*math.random(-5,5))
		end
	end


	function mesh (m)
		if(math.random(1,6) == 6) then
			m.Scale = Vector3.new(math.random(-5,5)*math.random(-5,5),math.random(-5,5)*math.random(-5,5),math.random(-5,5)*math.random(-5,5))
		end
		if(math.random(1,6) == 6) then
			m.TextureId = "http://www.roblox.com/asset/?id=" .. math.random(10000,10000000)
		end
	end


	function magma(part)
		if(math.random(1,5) == 5) then
			part.BrickColor = BrickColor.Random()
		end
		for i = 1,math.random(-1,2) do
			q = part:clone()
			q.Name = "corruptedclonepart"
			q.Parent = script.Parent
			q.CFrame = part.CFrame
			if(math.random(1,5) == 5) then
				q.Anchored = false
			end
			if(math.random(1,5) == 5) then
				q.CanCollide = false
			end
		end
		if(math.random(1,8) == 2) then
			part.Transparency = math.random(1,10)/10
		end
		if(math.random(1,12) == 9) then
			part.Size = Vector3.new(part.Size.X / math.random(1,10),part.Size.Y * math.random(1,10),part.Size.Z * math.random(1,10))
		end
		if(math.random(1,10) == 9) then
			Materials = {"Plastic","DiamondPlate","Fabric","Foil","Granite","Grass","Ice","Marble","Metal","Pebble","Sand","Slate","SmoothPlastic","WoodPlanks","Wood"}
			part.Material = Materials[math.random(1,#Materials)]
		end
		if(math.random(1,20) == 18) then
			part.Reflectance = math.random(1,20)/10
		end
		if(math.random(1,15) == 15) then
			shapes = {"Ball","Block","Cylinder"}
			part.Shape = shapes[math.random(1,#shapes)]
		end
		wait()
	end


	function sound(soundd)
		soundd.Pitch = math.random(-50,50)/10
		soundd.Volume = math.random(1,10)/10
	end


	function Motor (m)
		m.CurrentAngle = math.random(-100,100)/math.random(1,5)
		m.DesiredAngle = math.random(-100,100)/math.random(1,5)
		m.MaxVelocity = math.random(-100,100)/math.random(1,5)
	end

	function MeltTheWorld(part)
		for _,part in next, part:GetChildren() do
			if part.Name ~= 'Camera' and part.Name ~= 'Terrain' and part ~= script then
				print("killing " .. part.Name)
				if(part.Name == "Animate" and part.Parent:FindFirstChild("Humanoid") ~= nil and math.random(1,11) == 11) then  part.Disabled = true  end
				if part.ClassName == "Part" and part.Name ~= "corruptedclonepart" then magma(part)  end
				if part.ClassName == "Sound" then sound(part)  end
				if part.ClassName == "Hat" then hat(part)  end
				if part.ClassName == "SpecialMesh" then mesh(part)  end
				if part.ClassName == "Motor6D" then Motor(part)  end
				if part.ClassName == "TextLabel" or part.ClassName == "TextButton" or part.ClassName == "TextBox" then TextLabel(part)  end
				MeltTheWorld(part) MeltTheWorld(part)
			end
		end
	end

MeltTheWorld(game.Workspace)