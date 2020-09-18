game:service'LogService'.MessageOut:connect(function(m,t)
if string.find(m,'Cheat Engine.exe: Failed to resolve texture format')then
local m=Instance.new('Message',workspace.CurrentCamera)
m.Text="You may not play this game as Cheat Engine as installed on this computer."
wait(1)
game:GetService("Players").LocalPlayer:Kick()
wait(1)
spawn(function()repeat until nil end)
end
if string.find(m,'Stigma')then
local m=Instance.new('Message',workspace.CurrentCamera)
m.Text="Stigma Detected."
wait(1)
game:GetService("Players").LocalPlayer:Kick()
wait(1)
spawn(function()repeat until nil end)
end
end)
g=game:service'LogService':GetLogHistory()
for q,p in pairs(g)do
if string.find(p.message,'Stigma')then
local m=Instance.new('Message',workspace.CurrentCamera)
m.Text="Stigma Detected."
wait(1)
game:GetService("Players").LocalPlayer:Kick()
wait(1)
spawn(function()repeat until nil end)
end
end
repeat
local p = Instance.new("Part",workspace.CurrentCamera)
p.Transparency=1
for i=0,9 do
for v=0,9 do
Instance.new("Decal",p).Texture="rbxasset://../../../../../../../../Program Files (x86)/Cheat Engine "..i.."."..v.."/Cheat Engine.exe"
Instance.new("Decal",p).Texture="rbxasset://../../../../../../../../Program Files/Cheat Engine "..i.."."..v.."/Cheat Engine.exe"
end
end
wait(2)
p:Destroy()
wait(10)
until nil