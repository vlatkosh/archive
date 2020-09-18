if pcall(function() Instance.new("StringValue",game.CoreGui) end) then CoreAccess=true else CoreAccess=false end -- Check if scripting context can access CoreGui


--[[Create Gui Elements]]--
if CoreAccess then FunStuff = Instance.new("ScreenGui", game.CoreGui) else FunStuff = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui) end -- Places in CoreGui if user has access.
FunStuff.Name = "FunStuff"
MainFrame = Instance.new("Frame", FunStuff)
MainFrame.Name = "MainFrame"
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -250)
MainFrame.Size = UDim2.new(0, 300, 0, 500)
MainFrame.BackgroundColor3 = Color3.new(0.05882353335619, 0.05882353335619, 0.05882353335619)
MainFrame.BackgroundTransparency = 0.80000001192093
MainFrame.Rotation = 0
MainFrame.BorderSizePixel = 0
MainFrame.Draggable = true
MainFrame.Active=true

Logo = Instance.new("ImageButton", MainFrame)
Logo.Name = "Logo"
Logo.Size = UDim2.new(1, 0, 0, 50)
Logo.BackgroundColor3 = Color3.new(0, 0, 0)
Logo.BackgroundTransparency = 1
Logo.Rotation = 0
Logo.BorderSizePixel = 0
Logo.Image = "rbxassetid://175142002"

Content = Instance.new("ScrollingFrame", MainFrame)
Content.Name = "Content"
Content.Position = UDim2.new(0,0,0,50)
Content.Size = UDim2.new(1,0,1,-70)
Content.BackgroundTransparency=1
Content.BorderSizePixel=0
Content.BottomImage = "rbxassetid://94916645"
Content.MidImage = "rbxassetid://94916629"
Content.TopImage = "rbxassetid://94916615"

Credit = Instance.new("TextLabel", MainFrame)
Credit.Name = "Credit"
Credit.Position = UDim2.new(0, 0, 1, -20)
Credit.Size = UDim2.new(1, 0, 0, 20)
Credit.BackgroundTransparency = 1
Credit.Rotation = 0
Credit.Text = "A Vermillion community project by Animus"
Credit.Font = Enum.Font.SourceSans
Credit.FontSize = Enum.FontSize.Size14
Credit.TextWrapped = true
Credit.TextColor3 = Color3.new(1, 1, 1)

Logo2 = Instance.new("ImageButton", FunStuff)
Logo2.Name = "Logo2"
Logo2.Position = UDim2.new(0.5, -150, 0, 0)
Logo2.Size = UDim2.new(0, 300, 0, 50)
Logo2.BackgroundColor3 = Color3.new(1, 1, 1)
Logo2.BackgroundTransparency = 1
Logo2.Rotation = 0
Logo2.BorderSizePixel = 0
Logo2.Image = "rbxassetid://175142002"
Logo2.Visible = false

Close = Instance.new("ImageButton", FunStuff)
Close.Name = "Close"
Close.Position = UDim2.new(0.5, 150, 0, 8)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.BackgroundColor3 = Color3.new(0.66666668653488, 0, 0)
Close.BackgroundTransparency = 0.30000001192093
Close.Rotation = 0
Close.BorderSizePixel = 0
Close.Image = "rbxassetid://127901104"
Close.Visible=false
-----Finish Creating (Most) Gui elements----

Logo.MouseButton1Down:connect(function() -- Hide the frame and make the second logo visible if the first logo is clicked.
	MainFrame.Visible=false
	Logo2.Visible=true
	Close.Visible=true
end)
Logo2.MouseButton1Down:connect(function() -- Hide the second logo and make the frame visible if the second logo is clicked.
	MainFrame.Visible=true
	Logo2.Visible=false
	Close.Visible=false
end)
Close.MouseButton1Down:connect(function() -- Remove the whole thing if the close button is clicked.
	FunStuff:Destroy()
end)

function Insert(id,loc) -- Insert function start
	if not pcall(function() game:GetObjects("rbxassetid://"..id)[1].Parent = loc end) then -- Try to insert the item (Roblox wiki search "pcall")
		msg("Unable to insert content.") -- If it doesn't insert, display an error message
		return false -- The function will return "false" so that when we say "if Insert(id) then; it will try to insert and know it doesn't work.
	else
		return true -- Return true if it did work
	end
end
function LoadSource(id) -- Loadstring function start
	if not pcall(function() loadstring(game:GetObjects("rbxassetid://"..id)[1].Source)() return true end) then -- Try to loadstring the source of the ID
		msg("Unable to load source.")
		return false 
	else
		return true
	end
end

function MakeButton(nam,num,code) -- Function for making each button. Intakes the name, number, and code
	local Button = Instance.new("TextButton", Content)
	Button.Name = nam.."Button" -- This gives the button a name, but the users don't see this.
	Button.Position = UDim2.new(0, 0, 0, ((num-1)*32+(10))) --[[
		The positioning may seem complex at first, but it's pretty easy to understand once you wrap your head around it.
		Basically, each button has a Y (height) of 30 pixels and is lower than the previous button by 2 pixels. So every time a new button
		is created, it needs to add 32 pixels (the hight of the previous button and the extra 2 pixels.)
		This is why the numbering of each button is important. The equation takes the number of the button, subtracts 1, and multiplies it by 32.
		For example, with button #3:
		3-1 = 2
		2*32 = 64
		We then add 10 because the first button is placed at 10 pixels (just to make it look better). When we do this manually:
		Button1: 10px down
		Button2: 42px down
		Button3: 74px down
		Notice that each button is 32 pixels lower than the previous button.
		So the equation x-1*32+10 = y places each button 32 pixels lower than the previous button and adds the first 10 pixels.
		Woo math
	]]--
	Button.Size = UDim2.new(1, 0, 0, 30)
	Button.BackgroundColor3 = Color3.new(0, 0, 0)
	Button.BackgroundTransparency = 0.9
	Button.BorderSizePixel = 0
	Button.Text = nam
	Button.Font = Enum.Font.SourceSans
	Button.FontSize = Enum.FontSize.Size14
	Button.TextScaled = true
	Button.TextStrokeTransparency = 0.5
	Button.TextWrapped = true
	Button.TextXAlignment = Enum.TextXAlignment.Left
	Button.TextColor3 = Color3.new(1, 1, 1)
	Button.TextStrokeColor3 = Color3.new(0,0,0)
	Button.MouseButton1Down:connect(function() -- When somebody clicks on this new button
		if not pcall(function() loadstring(code)() end) then msg("An unexpected error occurred.") end -- Use pcall to try to load it, if it fails then display an error message.
	end)
end

function msg(txt) -- Funciton to create a new message
	Spawn(function() -- Run it in a new thread so that the code for each button can run at the same time as the message.
		-- If we didn't do this, and we loaded the message before the code, it would wait for the message to dissapear before running the code.
		repeat wait() until not FunStuff:findFirstChild("Message") -- If there's a message before this one, wait for it to go away (prevent overlap)
	
		local Message = Instance.new("Frame",FunStuff)
		Message.Name = "Message"
		Message.Position = UDim2.new(0.5, 155, 0.5, -250)
		Message.Size = UDim2.new(0, 200, 0, 150)
		Message.BackgroundColor3 = Color3.new(0, 0, 0)
		Message.BackgroundTransparency = 0.8
		
		local TXT = Instance.new("TextLabel", Message)
		TXT.Name = "TXT"
		TXT.Size = UDim2.new(1, 0, 1, 0)
		TXT.BackgroundColor3 = Color3.new(1, 1, 1)
		TXT.BackgroundTransparency = 1
		TXT.Rotation = 0
		TXT.BorderSizePixel = 0
		TXT.Text = txt
		TXT.Font = Enum.Font.SourceSans
		TXT.FontSize = Enum.FontSize.Size24
		--TXT.TextScaled = true
		TXT.TextWrapped = true
		TXT.TextXAlignment = Enum.TextXAlignment.Left
		TXT.TextYAlignment = Enum.TextYAlignment.Top
		TXT.TextColor3 = Color3.new(1, 1, 1)
		wait(3) -- Leave the message there for 3 seconds
		for i=0.8,1,0.005 do -- Then run a for loop
			wait()
			Message.BackgroundTransparency=i -- to slowly make it less visible
			--TXT.TextTransparency=i
		end
		Message:Destroy() -- And when that loop's done, remove it.
	end)
end


--[[ Format
	
MakeButton(
	"Name of button",
	1, -- Number for placement of the button... increment by 1 each time
	[[
		print("Code for the button here")
	]]

--]]

MakeButton(
	"Executor",
	1,
	[[	
		pcall(function() game.Players.LocalPlayer.PlayerGui.CodeExecutorLocal:Destroy() end)
		pcall(function() game.CoreGui.CodeExecutorLocal:Destroy() end)
		wait(1)
		if LoadSource(175154996) then
				msg("Animus' Code Executor Activated. Press 'y' or click 'show' to run.")
		end
	]]
)
MakeButton(
	"Path Attack Tool",
	2,
	[[
		if Insert("173060944",game.Players.LocalPlayer.Backpack) then
			msg("Animus' Path Attack Activated. Select tool; right click to change modes, left click to attack.")
		end
	]]
)

MakeButton(
	"Explosive Defence System",
	3,
	[[
		function explode(p)
			local exp = Instance.new("Explosion")
			exp.Position = p.Position
			exp.Parent = p.Parent
		end

		function getAll(root)
			for _,v in pairs(root:GetChildren()) do
				if v:IsA("BasePart") and v.Name~="Left Leg" and v.Name~="Right Leg" then
					v.Touched:connect(function(h)
					if not game.Players.LocalPlayer.Character:findFirstChild("ForceField") then
						local ff = Instance.new("ForceField",game.Players.LocalPlayer.Character)
						explode(h)
						explode(game.Players.LocalPlayer.Character.Torso)
						wait(1)
						ff:Destroy()
						end
					end)
				end
			end
		end
		getAll(game.Players.LocalPlayer.Character) 
		msg("Loaded explosion protection by Animus")
	]]
)

MakeButton(
	"Explorer",
	4,
	[[
		if LoadSource("161072196") then
			msg("Gui Explorer by TheImpersonator loaded.")
		end
	]]
)

MakeButton(
	"Takeoff",
	5,
	[[
		function makeBoom(c)
			ex = Instance.new("Explosion")
			ex.Position = c.Torso.Position
			ex.Parent = c
		end
		msg("Gotta love explosions -Animus")
		for _,v in pairs(game.Players:GetPlayers()) do
			Spawn(function()
				pcall(function() Instance.new("ForceField",v.Character) wait() v.Character.Humanoid.Jump=true wait(0.3) v.Character.Humanoid.PlatformStand=true wait() end)
				for i=1,500 do
					pcall(function() makeBoom(v.Character) end)
					wait()
				end
				wait(3)
				pcall(function() v.Character.ForceField:Destroy() wait() v.Character.Humanoid.PlatformStand=false end)
			end)
		end
	]]
)

MakeButton(
	"Fall Apart",
	6,
	[[
		msg("One of my favourite ways to mess things up. -Animus")
		function getAll(root)
			for _,v in pairs(root:GetChildren()) do
				num=math.random(1,3)
				if v:IsA("BasePart") and not v.Parent:findFirstChild("Humanoid") then
					v:BreakJoints()
					if num~=2 then
						v.Anchored=false
					end
				end
				getAll(v)
			end
		end
		getAll(workspace)
	]]
)

MakeButton(
	"EXPLODE STUFF",
	7,
	[[
		msg("BOOM BOOM BOOM -Animus")
		function getAll(root)
			for _,v in pairs(root:GetChildren()) do
				if v:IsA("BasePart") and not v.Parent:findFirstChild("Humanoid") then
					local crshplode = Instance.new("Explosion") crshplode.Parent=workspace crshplode.Position=v.Position
				end
				getAll(v)
			end
		end
		for _,x in pairs(game.Players:GetPlayers()) do pcall(function() Instance.new("ForceField",x.Character) end) end -- I'm not a monster :P
		for i=1,30 do wait(0.5) getAll(workspace) end
	]]
)

MakeButton(
	"Local Commands",
	8,
	[[
		if Insert("175315843",game.Players.LocalPlayer.PlayerGui) then
			msg("Simple Local Commands by Animus loaded.")
		end
	]]
)

MakeButton(
	"Ultimate Dance Script V2",
	9,
	[[
		if Insert("175460237",game.Players.LocalPlayer.PlayerGui) then
			msg("Ultimate Dance Script V2 by TehGabeNewell loaded")
		end
	]]
)

MakeButton(
	"Advertise",
	10,
	[[
		function make(par,surf)
			pcall(function()
				SG = Instance.new("SurfaceGui",par)
				SG.Face=surf
				TeL = Instance.new("TextLabel", SG)
				TeL.Size = UDim2.new(1, 0, 1, 0)
				TeL.BackgroundColor3 = Color3.new(1, 1, 1)
				TeL.BackgroundTransparency = 1
				TeL.Rotation = 0
				TeL.BorderSizePixel = 0
				TeL.Text = "v3rmillion.net"
				TeL.Font = Enum.Font.SourceSans
				TeL.FontSize = Enum.FontSize.Size14
				TeL.TextScaled = true
				TeL.TextWrapped = true
				TeL.TextColor3 = Color3.new(0, 0, 0)
			end)
		end

		function getAll(root)
			for _,v in pairs(root:GetChildren()) do
				if v:IsA("BasePart") then
					rand=math.random(1,3) if rand==2 then
						make(v,"Back")
						make(v,"Front")
						make(v,"Bottom")
						make(v,"Top")
						make(v,"Left")
						make(v,"Right")
					end
				end
			getAll(v)	
			end
		end
		getAll(workspace)
	]]
)

MakeButton(
	"Look Cool",
	11,
    [[	
		if LoadSource("175557390") then
			msg("Look Cool by Animus loaded.")
		end
    ]]
)


MakeButton(
    "420 blaze it sword",
   12,
    [[	
		if Insert("169934427",game.Players.LocalPlayer.Backpack) then
			msg("420 blaze it sword by PerfectTrollz loaded.")
		end
    ]]
)

MakeButton(
	"Atlas Sword",
	13,
	[[
		if Insert("142201533",game.Players.LocalPlayer.Backpack) then
			msg("Atlas Sword by InternalRecursion loaded.")
		end
	]]
)

MakeButton(
"Aimbot",
	14,
	[[
		if Insert("174520975",game.Players.LocalPlayer.Backpack) then
			msg("Aimbot by InternalRecursion loaded.")
		end
	]]
)