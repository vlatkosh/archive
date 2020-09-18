mouse = game.Players.Vlatkovski:GetMouse()
 
game:GetService("Chat"):Chat(Workspace.Vlatkovski.Head,"o hai der")
wait()
game:GetService("Chat"):Chat(Workspace.Vlatkovski.Head,"hao r u")
wait(1)
 
Workspace.Vlatkovski.Humanoid.MaxHealth = math.huge
Workspace.Vlatkovski.Humanoid.WalkSpeed = 30
Workspace.Vlatkovski.Torso.BrickColor = BrickColor.new("Lime green")
 
-- Main
Handle = Instance.new("Part",Workspace.Vlatkovski)
Handle.TopSurface = "Smooth"
Handle.BottomSurface = "Smooth"
Handle.CanCollide = True
Handle.BrickColor = BrickColor.new("Really black")
Handle.Reflectance = 0.3
Handle.Transparency = 0.5
local HandleMesh = Instance.new("SpecialMesh",Handle) HandleMesh.MeshType = "FileMesh" HandleMesh.MeshId = "http://www.roblox.com/asset/?id=98426750"
HandleMesh.Scale = Vector3.new(7, 12, 7)
Weld = Instance.new("Weld",Workspace.Vlatkovski)
Weld.Part0 = game.Workspace.Vlatkovski["Torso"]
Weld.Part1 = Handle
Weld.C1 = CFrame.new(0, -3, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
RA = Instance.new("Part",Workspace.Vlatkovski)
RA.TopSurface = "Smooth"
RA.BottomSurface = "Smooth"
RA.CanCollide = True
RA.BrickColor = BrickColor.new("Lime green")
RA.Reflectance = 0.3
RA.Transparency = 0.3
local RAMesh = Instance.new("SpecialMesh",RA) RAMesh.MeshType = "FileMesh" RAMesh.MeshId = "http://www.roblox.com/asset/?id=90242624"
RAMesh.Scale = Vector3.new(5, 8, 10)
Weld = Instance.new("Weld",Workspace.Vlatkovski)
Weld.Part0 = game.Workspace.Vlatkovski["Torso"]
Weld.Part1 = RA
Weld.C1 = CFrame.new(-13, -3, -2)*CFrame.fromEulerAnglesXYZ(0, 0, -.4)
 
LA = Instance.new("Part",Workspace.Vlatkovski)
LA.TopSurface = "Smooth"
LA.BottomSurface = "Smooth"
LA.CanCollide = True
LA.BrickColor = BrickColor.new("Lime green")
LA.Reflectance = 0.3
LA.Transparency = 0.3
local LAMesh = Instance.new("SpecialMesh",LA) LAMesh.MeshType = "FileMesh" LAMesh.MeshId = "http://www.roblox.com/asset/?id=90242595"
LAMesh.Scale = Vector3.new(5, 8, 10)
Weld = Instance.new("Weld",Workspace.Vlatkovski)
Weld.Part0 = game.Workspace.Vlatkovski["Torso"]
Weld.Part1 = LA
Weld.C1 = CFrame.new(13, -3, -2)*CFrame.fromEulerAnglesXYZ(0, 0, .4)
 
Head = Instance.new("Part",Workspace.Vlatkovski)
Head.TopSurface = "Smooth"
Head.BottomSurface = "Smooth"
Head.CanCollide = True
Head.BrickColor = BrickColor.new("Lime green")
Head.Reflectance = 0.3
Head.Transparency = 0.3
local HeadMesh = Instance.new("SpecialMesh",Head) HeadMesh.MeshType = "FileMesh" HeadMesh.MeshId = "http://www.roblox.com/asset/?id=101164336"
HeadMesh.Scale = Vector3.new(5, 5, 5)
Weld = Instance.new("Weld",Workspace.Vlatkovski)
Weld.Part0 = game.Workspace.Vlatkovski["Torso"]
Weld.Part1 = Head
Weld.C1 = CFrame.new(0, -24, 3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Katana = Instance.new("Part",Workspace.Vlatkovski)
Katana.TopSurface = "Smooth"
Katana.BottomSurface = "Smooth"
Katana.CanCollide = True
Katana.BrickColor = BrickColor.new("Really black")
Katana.Reflectance = 0.3
Katana.Transparency = 0.3
local KatanaMesh = Instance.new("SpecialMesh",Katana) KatanaMesh.MeshType = "FileMesh" KatanaMesh.MeshId = "http://www.roblox.com/asset/?id=11442510"
KatanaMesh.Scale = Vector3.new(13, 13, 13)
Weld = Instance.new("Weld",Workspace.Vlatkovski)
Weld.Part0 = game.Workspace.Vlatkovski["Torso"]
Weld.Part1 = Katana
Weld.C1 = CFrame.new(-14, 0, -10)*CFrame.fromEulerAnglesXYZ(-10, 0, 0)

Sphere = Instance.new("Part",Workspace.Vlatkovski)
Sphere.TopSurface = "Smooth"
Sphere.BottomSurface = "Smooth"
Sphere.CanCollide = True
Sphere.BrickColor = BrickColor.new("Lime green")
Sphere.Reflectance = 0.3
Sphere.Transparency = 0.3
local SphereMesh = Instance.new("SpecialMesh",Sphere)
SphereMeshType = "Sphere"
SphereMesh.Scale = Vector3.new(4, 6, 4)
Weld = Instance.new("Weld",Workspace.Vlatkovski)
Weld.Part0 = game.Workspace.Vlatkovski["Torso"]
Weld.Part1 = Sphere
Weld.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
H = Instance.new("Part",Workspace.Vlatkovski)
H.TopSurface = "Smooth"
H.BottomSurface = "Smooth"
H.CanCollide = True
H.BrickColor = BrickColor.new("Really black")
local HMesh = Instance.new("SpecialMesh",H) HMesh.MeshType = "FileMesh" HMesh.MeshId = "http://www.roblox.com/asset/?id=62246019"
HMesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld",Workspace.Vlatkovski)
Weld.Part0 = game.Workspace.Vlatkovski["Torso"]
Weld.Part1 = H
Weld.C1 = CFrame.new(0, -1.7, -.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
 
Shield = Instance.new("ForceField",Workspace.Vlatkovski)
 
Shirt = Instance.new("Shirt",Character)
 
Shirt.Parent = game.Workspace.Vlatkovski
 
Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=0"
 
 
Pant = Instance.new("Pants",Character)
 
Pant.Parent = game.Workspace.Vlatkovski
 
Pant.PantsTemplate = "http://www.roblox.com/asset/?id=0"
 
--kill
Handle.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Torso") then
hit.Parent:FindFirstChild("Torso"):Remove()
end
end)

Sphere.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Head") then
hit.Parent:FindFirstChild("Head"):Remove()
end
end)

wait(1)

--sword
plr=game.Players.LocalPlayer
char=plr.Character
char.Humanoid.WalkSpeed=30
pcall(function() char.MainParts:Remove()  end)
bin=Instance.new("HopperBin",plr.Backpack)
bin.Name="Pheonix Sword"
script.Parent=bin
attacking=false
pcall(function() workspace.MainParts:Destroy() end)
function makepart(name,parent,s1,s2,s3,color)
        p=Instance.new("Part",parent)
        p.Name=name
        p.formFactor="Custom"
        p.Anchored=false
        p.Locked=true
        p.CanCollide=false
        p.Size=Vector3.new(s1,s2,s3)
        p.BrickColor=BrickColor.new(color)
        p:BreakJoints()
        return p
end
function cylinder(part)
bm=Instance.new("CylinderMesh",part)
return bm
end
function blockmesh(part)
bm=Instance.new("BlockMesh",part)
return bm
end
function specmesh(part,type,s1,s2,s3)
spec=Instance.new("SpecialMesh",part)
spec.MeshType=type
spec.Scale=Vector3.new(s1,s2,s3)
return spec
end
chosen="Lime green"
main=Instance.new("Model",char)
main.Name="MainParts"
handle = makepart("Handle",main,.2,2,.2,"Really black")
        cylinder(handle)
        wd1=Instance.new("Weld",handle)
        wd1.Part1=handle
        wd1.Part0=nil
handlep = makepart("HandlePart",main,.22,0.02,.22,chosen)
        cyl1 = cylinder(handlep)
        cyl1.Scale=Vector3.new(1,.5,1)
        w1=Instance.new("Weld",handlep)
        w1.Part1=handle
        w1.Part0=handlep
        w1.C1=CFrame.new(0,1,0) * CFrame.Angles(0,0,0)
handlep2 = makepart("HandlePart2",main,.25,.25,.25,chosen)
        specmesh(hanelp2,"Sphere",1,1,1)
        w1=Instance.new("Weld",handlep2)
        w1.Part1=handlep
        w1.Part0=handlep2
        w1.C1=CFrame.new(0,.05,0) * CFrame.Angles(0,0,0)
handlep3 = makepart("HandlePart3",main,.22,0.02,.22,chosen)
        cyl1 = cylinder(handlep3)
        cyl1.Scale=Vector3.new(1,.3,1)
        w1=Instance.new("Weld",handlep3)
        w1.Part1=handle
        w1.Part0=handlep3
        w1.C1=CFrame.new(0,-.5,0) * CFrame.Angles(0,0,0)
handlep4 = makepart("HandlePart4",main,.24,0.02,.24,chosen)
        cyl1 = cylinder(handlep4)
        cyl1.Scale=Vector3.new(1,.3,1)
        w1=Instance.new("Weld",handlep4)
        w1.Part1=handle
        w1.Part0=handlep4
        w1.C1=CFrame.new(0,-.54,0) * CFrame.Angles(0,0,0)
handlep5 = makepart("HandlePart5",main,.26,0.02,.26,chosen)
        cyl1 = cylinder(handlep5)
        cyl1.Scale=Vector3.new(1,.3,1)
        w1=Instance.new("Weld",handlep5)
        w1.Part1=handle
        w1.Part0=handlep5
        w1.C1=CFrame.new(0,-.57,0) * CFrame.Angles(0,0,0)
handlep6 = makepart("HandlePart6",main,.02,0.02,.02,chosen)
        bm6=blockmesh(handlep6)
        bm6.Scale=Vector3.new(2,2.6,1.3)
        w1=Instance.new("Weld",handlep6)
        w1.Part1=handle
        w1.Part0=handlep6
        w1.C1=CFrame.new(0,-.84,0) * CFrame.Angles(0,0,0)
handlep7 = makepart("HandlePart7",main,.02,0.02,.02,chosen)
        bm7=blockmesh(handlep7)
        bm7.Scale=Vector3.new(3,1.6,1.3)
        w1=Instance.new("Weld",handlep7)
        w1.Part1=handle
        w1.Part0=handlep7
        w1.C1=CFrame.new(.5,-.84,0) * CFrame.Angles(0,0,0)
handlep8 = makepart("HandlePart8",main,.02,0.02,.02,chosen)
        bm8=blockmesh(handlep8)
        bm8.Scale=Vector3.new(3,1.6,1.3)
        w1=Instance.new("Weld",handlep8)
        w1.Part1=handle
        w1.Part0=handlep8
        w1.C1=CFrame.new(-.5,-.84,0) * CFrame.Angles(0,0,0)
handlep11 = makepart("HandlePart11",main,.02,0.02,.02,"Really black")
        bm11=blockmesh(handlep11)
        bm11.Scale=Vector3.new(1.4,1.4,1.61)
        w1=Instance.new("Weld",handlep11)
        w1.Part1=handle
        w1.Part0=handlep11
        w1.C1=CFrame.new(0,-.84,0) * CFrame.Angles(0,0,0)
bladep1 = makepart("BladePart1",main,.02,4,.02,"Really black")
        bp1=blockmesh(bladep1)
        bp1.Scale=Vector3.new(4,1,.5)
        w1=Instance.new("Weld",bladep1)
        w1.Part1=handle
        w1.Part0=bladep1
        w1.C1=CFrame.new(0,-3,0) * CFrame.Angles(0,0,0)
bladep2 = makepart("BladePart2",main,.02,.02,.02,chosen)
        bp2=specmesh(bladep2,"Wedge",.6,1,1)
        w1=Instance.new("Weld",bladep2)
        w1.Part1=handle
        w1.Part0=bladep2
        w1.C1=CFrame.new(-0.2,-4.6,0)
        w1.C0=CFrame.Angles(0,math.rad(90),0)
bladep3 = makepart("BladePart3",main,.02,.02,.02,chosen)
        bp3=specmesh(bladep3,"Wedge",.6,1,1)
        w1=Instance.new("Weld",bladep3)
        w1.Part1=handle
        w1.Part0=bladep3
        w1.C1=CFrame.new(0.2,-4.6,0)
        w1.C0=CFrame.Angles(0,math.rad(270),0)
bladep4 = makepart("BladePart4",main,.02,.02,.02,chosen)
        bp4=specmesh(bladep4,"Wedge",.6,1,1)
        w1=Instance.new("Weld",bladep4)
        w1.Part1=handle
        w1.Part0=bladep4
        w1.C1=CFrame.new(0.2,-4.3,0)
        w1.C0=CFrame.Angles(math.rad(90),math.rad(270),0)
bladep5 = makepart("BladePart5",main,.02,.02,.02,chosen)
        bp5=specmesh(bladep5,"Wedge",.6,1,1)
        w1=Instance.new("Weld",bladep5)
        w1.Part1=handle
        w1.Part0=bladep5
        w1.C1=CFrame.new(-0.2,-4.3,0)
        w1.C0=CFrame.Angles(math.rad(90),math.rad(90),0)
bladep6 = makepart("BladePart6",main,.02,.02,.02,chosen)
        bp6=cylinder(bladep6)
        bp6.Scale=Vector3.new(1,.6,1)
        w1=Instance.new("Weld",bladep6)
        w1.Part1=handle
        w1.Part0=bladep6
        w1.C1=CFrame.new(0,-4.45,0)
        w1.C0=CFrame.Angles(math.rad(90),0,math.rad(90))
bladep7 = makepart("BladePart7",main,.02,.02,.02,chosen)
        bp7=blockmesh(bladep7)
        bp7.Scale=Vector3.new(.6,16.6,.6)
        w1=Instance.new("Weld",bladep7)
        w1.Part1=handle
        w1.Part0=bladep7
        w1.C1=CFrame.new(0,-2.72,0)
bladep8 = makepart("BladePart8",main,.02,.02,.02,"Really black")
        bp8=specmesh(bladep8,"Wedge",.51,2,3)
        w1=Instance.new("Weld",bladep8)
        w1.Part1=handle
        w1.Part0=bladep8
        w1.C1=CFrame.new(0.20,-5.3,0)
        w1.C0=CFrame.Angles(math.rad(90),math.rad(90),0)
bladep9 = makepart("BladePart9",main,.02,.02,.02,"Really black")
        bp9=specmesh(bladep9,"Wedge",.51,2,3)
        w1=Instance.new("Weld",bladep9)
        w1.Part1=handle
        w1.Part0=bladep9
        w1.C1=CFrame.new(-0.20,-5.3,0)
        w1.C0=CFrame.Angles(math.rad(90),math.rad(270),0)
--[[ Ghost Sword ]]
function ghost()
main2=Instance.new("Model",char)
main2.Name="GhostMainParts"
handleg = makepart("Handle",main2,.2,2,.2,"Lime green")
        cylinder(handleg)
        wd12=Instance.new("Weld",handleg)
        wd12.Part1=handleg
        wd12.Name="Weldd"
        wd12.Part0=nil
handlep = makepart("HandlePart",main2,.22,0.02,.22,chosen)
        cyl1 = cylinder(handlep)
        cyl1.Scale=Vector3.new(1,.5,1)
        w1=Instance.new("Weld",handlep)
        w1.Part1=handleg
        w1.Part0=handlep
        w1.C1=CFrame.new(0,1,0) * CFrame.Angles(0,0,0)
handlep2 = makepart("HandlePart2",main2,.25,.25,.25,chosen)
        specmesh(hanelp2,"Sphere",1,1,1)
        w1=Instance.new("Weld",handlep2)
        w1.Part1=handlep
        w1.Part0=handlep2
        w1.C1=CFrame.new(0,.05,0) * CFrame.Angles(0,0,0)
handlep3 = makepart("HandlePart3",main2,.22,0.02,.22,chosen)
        cyl1 = cylinder(handlep3)
        cyl1.Scale=Vector3.new(1,.3,1)
        w1=Instance.new("Weld",handlep3)
        w1.Part1=handleg
        w1.Part0=handlep3
        w1.C1=CFrame.new(0,-.5,0) * CFrame.Angles(0,0,0)
handlep4 = makepart("HandlePart4",main2,.24,0.02,.24,chosen)
        cyl1 = cylinder(handlep4)
        cyl1.Scale=Vector3.new(1,.3,1)
        w1=Instance.new("Weld",handlep4)
        w1.Part1=handleg
        w1.Part0=handlep4
        w1.C1=CFrame.new(0,-.54,0) * CFrame.Angles(0,0,0)
handlep5 = makepart("HandlePart5",main2,.26,0.02,.26,chosen)
        cyl1 = cylinder(handlep5)
        cyl1.Scale=Vector3.new(1,.3,1)
        w1=Instance.new("Weld",handlep5)
        w1.Part1=handleg
        w1.Part0=handlep5
        w1.C1=CFrame.new(0,-.57,0) * CFrame.Angles(0,0,0)
handlep6 = makepart("HandlePart6",main2,.02,0.02,.02,chosen)
        bm6=blockmesh(handlep6)
        bm6.Scale=Vector3.new(2,2.6,1.3)
        w1=Instance.new("Weld",handlep6)
        w1.Part1=handleg
        w1.Part0=handlep6
        w1.C1=CFrame.new(0,-.84,0) * CFrame.Angles(0,0,0)
handlep7 = makepart("HandlePart7",main2,.02,0.02,.02,chosen)
        bm7=blockmesh(handlep7)
        bm7.Scale=Vector3.new(3,1.6,1.3)
        w1=Instance.new("Weld",handlep7)
        w1.Part1=handleg
        w1.Part0=handlep7
        w1.C1=CFrame.new(.5,-.84,0) * CFrame.Angles(0,0,0)
handlep8 = makepart("HandlePart8",main2,.02,0.02,.02,chosen)
        bm8=blockmesh(handlep8)
        bm8.Scale=Vector3.new(3,1.6,1.3)
        w1=Instance.new("Weld",handlep8)
        w1.Part1=handleg
        w1.Part0=handlep8
        w1.C1=CFrame.new(-.5,-.84,0) * CFrame.Angles(0,0,0)
handlep11 = makepart("HandlePart11",main2,.02,0.02,.02,"Lime green")
        bm11=blockmesh(handlep11)
        bm11.Scale=Vector3.new(1.4,1.4,1.61)
        w1=Instance.new("Weld",handlep11)
        w1.Part1=handleg
        w1.Part0=handlep11
        w1.C1=CFrame.new(0,-.84,0) * CFrame.Angles(0,0,0)
bladep1 = makepart("BladePart1",main2,.02,4,.02,"Lime green")
        bp1=blockmesh(bladep1)
        bp1.Scale=Vector3.new(4,1,.5)
        w1=Instance.new("Weld",bladep1)
        w1.Part1=handleg
        w1.Part0=bladep1
        w1.C1=CFrame.new(0,-3,0) * CFrame.Angles(0,0,0)
bladep2 = makepart("BladePart2",main2,.02,.02,.02,chosen)
        bp2=specmesh(bladep2,"Wedge",.6,1,1)
        w1=Instance.new("Weld",bladep2)
        w1.Part1=handleg
        w1.Part0=bladep2
        w1.C1=CFrame.new(-0.2,-4.6,0)
        w1.C0=CFrame.Angles(0,math.rad(90),0)
bladep3 = makepart("BladePart3",main2,.02,.02,.02,chosen)
        bp3=specmesh(bladep3,"Wedge",.6,1,1)
        w1=Instance.new("Weld",bladep3)
        w1.Part1=handleg
        w1.Part0=bladep3
        w1.C1=CFrame.new(0.2,-4.6,0)
        w1.C0=CFrame.Angles(0,math.rad(270),0)
bladep4 = makepart("BladePart4",main2,.02,.02,.02,chosen)
        bp4=specmesh(bladep4,"Wedge",.6,1,1)
        w1=Instance.new("Weld",bladep4)
        w1.Part1=handleg
        w1.Part0=bladep4
        w1.C1=CFrame.new(0.2,-4.3,0)
        w1.C0=CFrame.Angles(math.rad(90),math.rad(270),0)
bladep5 = makepart("BladePart5",main2,.02,.02,.02,chosen)
        bp5=specmesh(bladep5,"Wedge",.6,1,1)
        w1=Instance.new("Weld",bladep5)
        w1.Part1=handleg
        w1.Part0=bladep5
        w1.C1=CFrame.new(-0.2,-4.3,0)
        w1.C0=CFrame.Angles(math.rad(90),math.rad(90),0)
bladep6 = makepart("BladePart6",main2,.02,.02,.02,chosen)
        bp6=cylinder(bladep6)
        bp6.Scale=Vector3.new(1,.6,1)
        w1=Instance.new("Weld",bladep6)
        w1.Part1=handleg
        w1.Part0=bladep6
        w1.C1=CFrame.new(0,-4.45,0)
        w1.C0=CFrame.Angles(math.rad(90),0,math.rad(90))
bladep7 = makepart("BladePart7",main2,.02,.02,.02,chosen)
        bp7=blockmesh(bladep7)
        bp7.Scale=Vector3.new(.6,16.6,.6)
        w1=Instance.new("Weld",bladep7)
        w1.Part1=handleg
        w1.Part0=bladep7
        w1.C1=CFrame.new(0,-2.72,0)
bladep8 = makepart("BladePart8",main2,.02,.02,.02,"Lime green")
        bp8=specmesh(bladep8,"Wedge",.51,2,3)
        w1=Instance.new("Weld",bladep8)
        w1.Part1=handleg
        w1.Part0=bladep8
        w1.C1=CFrame.new(0.20,-5.3,0)
        w1.C0=CFrame.Angles(math.rad(90),math.rad(90),0)
bladep9 = makepart("BladePart9",main2,.02,.02,.02,"Lime green")
        bp9=specmesh(bladep9,"Wedge",.51,2,3)
        w1=Instance.new("Weld",bladep9)
        w1.Part1=handleg
        w1.Part0=bladep9
        w1.C1=CFrame.new(-0.20,-5.3,0)
        w1.C0=CFrame.Angles(math.rad(90),math.rad(270),0)
        return main2
end
hold=false
--[[Key/Mouse]]
mode="normal"
function select()
mode="normal"
equipanim()
end
function unselect()
char.Humanoid.WalkSpeed=30
hideanim()
end
combo=0
bin.Selected:connect(function(mouse)
    select()
    mouse.Button1Down:connect(function()
        if combo==0 then
        slashanim()
        combo = 1
        elseif combo==1 then
        slashanim2()
        combo = 0
        end
    end)
mouse.KeyDown:connect(function(key)
hold=true
if mode=="normal" then
        if key == "q" then
                        move3()
                elseif key=="e" then
                        move4()
                elseif key=="r" then
                        move5()
                        end
                        end
                end)
mouse.KeyUp:connect(function()
hold=false
end)
end)
bin.Deselected:connect(function()
unselect()
end)
--[[DMG]]
function damagesplat(dmg,hit)
    local mo = Instance.new("Model")
    mo.Name = dmg
    local pa = Instance.new("Part",mo)
    pa.formFactor = 3
    pa.Size = Vector3.new(0.8,0.3,0.8)
    pa.BrickColor = BrickColor.new(chosen)
        pa.CanCollide=false
    pa.CFrame = CFrame.new(hit.Position) * CFrame.new(0, 3, 0)
    pa.Name = "Head"
        cm=Instance.new("CylinderMesh",pa)
    local hah = Instance.new("Humanoid")
    hah.Parent = mo
    hah.MaxHealth = 0
    hah.Health = 0
    local bp = Instance.new("BodyPosition")
    bp.P = 14000
    bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
    bp.position = hit.Position + Vector3.new(0, 5, 0)
    coroutine.resume(coroutine.create(function()
        wait()
        mo.Parent = workspace
        bp.Parent = pa
        wait(1.4)
        mo:remove()
    end))
end
con = nil
con2 = nil
hitd=0
hitd2=0
function OT(hit)
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid")
local head = hit.Parent:findFirstChild("Head")
if hum ~= nil then
dm=math.random(3,12)
hum:TakeDamage(dm)
if head ~= nil then
damagesplat(dm,head)
end
end
hitd=1
end
function OT2(hit)
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid")
local head = hit.Parent:findFirstChild("Head")
if hum ~= nil then
dm=math.random(3,18)
hum:TakeDamage(dm)
if head ~= nil then
damagesplat(dm,head)
end
end
hitd2=1
end
function dmgcnnct(p)
con = p.Touched:connect(OT)
end
function dmgcnnct2(p)
con2 = p.Touched:connect(OT2)
end
function dmgdc2()
if con2 ~= nil then
con2:disconnect()
hitd2=0
end
end
function dmgdc()
if con ~= nil then
con:disconnect()
hitd=0
end
end
--[[Anims]]--
RW, LW , RWL, LWL = Instance.new("Weld"), Instance.new("Weld"), Instance.new("Weld"), Instance.new("Weld")
ch = char
player=plr
RSH, LSH , RHL, LHL = ch.Torso["Right Shoulder"], ch.Torso["Left Shoulder"] , ch.Torso["Right Hip"] , ch.Torso["Left Hip"]
 RW.Part0 = ch.Torso
 RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
 RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
 RW.Parent = main
 --
 LW.Part0 = ch.Torso
 LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
 LW.C1 = CFrame.new(0, 0.5, 0)
 LW.Parent = main
 --
 RWL.Part0 = ch.Torso
 RWL.C0 = CFrame.new(1, -1, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5)
 RWL.C1 = CFrame.new(0.5, 1, 0)
 RWL.Parent = main
 --
 LWL.Part0 = ch.Torso
 LWL.C0 = CFrame.new(-1, -1, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
 LWL.C1 = CFrame.new(-0.5, 1, 0)
 LWL.Parent = main
function RWFunc()
 RW.Part1 = ch["Right Arm"]
 RSH.Part1 = nil
end
function LWFunc()
 LW.Part1 = ch["Left Arm"]
 LSH.Part1 = nil
end
function RWLFunc()
 RWL.Part1 = ch["Right Leg"]
 RHL.Part1 = nil
 ch["Right Leg"].Name = "RightLeg"
 RightLeg.CanCollide = false
end
function LWLFunc()
 LWL.Part1 = ch["Left Leg"]
 LHL.Part1 = nil
 ch["Left Leg"].Name = "LeftLeg"
 LeftLeg.CanCollide = true
end
function RWLRem()
 RightLeg.Name = "Right Leg"
 RWL.Part1 = nil
 RHL.Part1 = ch["Right Leg"]
 RightLeg.CanCollide = false
end
function LWLRem()
 LeftLeg.Name = "Left Leg"
 LWL.Part1 = nil
 LHL.Part1 = ch["Left Leg"]
 LeftLeg.CanCollide = false
end
function RWRem()
 RW.Part1 = nil
 RSH.Part1 = ch["Right Arm"]
end
function LWRem()
 LW.Part1 = nil
 LSH.Part1 = ch["Left Arm"]
end
local RAP = Instance.new("Part")
RAP.formFactor = 0
RAP.CanCollide = false
RAP.Name = "RAPart"
RAP.Locked = true
RAP.Size = Vector3.new(1,1,1)
RAP.Parent = main
RAP.Transparency = 1
local w = Instance.new("Weld")
w.Parent = RAP
w.Part0 = RAP
w.Part1 = char["Right Arm"]
w.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, 1, 0)
local LAP = Instance.new("Part")
LAP.formFactor = 0
LAP.CanCollide = false
LAP.Name = "LAPart"
LAP.Locked = true
LAP.Size = Vector3.new(1,1,1)
LAP.Parent = main
LAP.Transparency = 1
local ww = Instance.new("Weld")
ww.Parent = LAP
ww.Part0 = LAP
ww.Part1 = char["Left Arm"]
ww.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
ww.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, 1, 0)
function unequipweld()
wd1.Part0 = char.Torso
wd1.C1=CFrame.new(0,-1.5,-.6) * CFrame.Angles(0,0,.8)
wd1.C0=CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
end
unequipweld()
function equipweld()
wd1.Part0 = RAP
wd1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
wd1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90), math.rad(90)) * CFrame.new(0, 0, 0.2)
end
function hideanim()
RWFunc()
 for i = 0 , 1 , 0.2 do
                wait()
  RW.C0 = CFrame.new(1+0.5*i,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80+67*i), math.rad(45), math.rad(-45+90*i))
        end                 
 for i = 0 , 1 , 0.15 do
                wait()
  RW.C0 = CFrame.new(1.5,0.5+0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(147+103*i), math.rad(45), math.rad(45-35*i))
        end  
  unequipweld()
 wait(0.1)
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5,1-0.5*i,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(250-250*i), math.rad(45-45*i), math.rad(10-10*i))
        end  
  RWRem()
  LWRem()
end
function equipanim()
RWFunc()
 for i = 0 , 1 , 0.1 do
                wait(.05)
  RW.C0 = CFrame.new(1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(250*i), math.rad(45*i), math.rad(-10*i))
        end 
  equipweld()
 for i = 0 , 1 , 0.2 do
                wait(.05)
  RW.C0 = CFrame.new(1.5,0.5+0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(250-102.5*i), math.rad(45), math.rad(-10+27.5*i))
        end  
 for i = 0 , 1 , 0.15 do
                wait(.05)
  RW.C0 = CFrame.new(1.5,1-0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(147-67*i), math.rad(45), math.rad(17.5+27.5*i))
        end
 for i = 0 , 1 , 0.1 do
                wait(.05)
  RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80), math.rad(35), math.rad(45-90*i))
        end 
end
function slashanim()
RWFunc()
if attacking==true then return end
attacking=true
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1-0.5*i,0.5,-0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80+10*i), math.rad(45+45*i), math.rad(-45+45*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-45*i), math.rad(10*i), math.rad(0))
  end
  dmgcnnct(bladep1)
   for i = 0 , 1 , 0.3 do
                wait()
  RW.C0 = CFrame.new(0.5+1*i,0.5,-1+1*i) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), math.rad(0))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-45+135*i), math.rad(10+35*i), math.rad(0))
    end 
 for i = 0 , 1 , 0.2 do
          wait()
  RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), math.rad(0))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90+20*i), math.rad(45+5*i), math.rad(0))
    end 
        dmgdc()
if mode=="normal" then
 wait(0.15)
 wait()
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90-10*i), math.rad(90-45*i), math.rad(-45*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(110-110*i), math.rad(50-50*i), math.rad(0))
end
end
attacking=false
end
function test(f)
        local a,b=coroutine.resume(coroutine.create(f))
        if not a then
                local h=Instance.new("Hint",workspace)
                h.Text="LOCAL: "..b
                wait(10)
                h:remove()
        end
end
function slashanim2()
test(function()
RWFunc()
LWFunc()
if attacking==true then return end
attacking=true
for i=0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5,.5,0) * CFrame.Angles(0,0,math.rad(30*i))
LW.C0 = CFrame.new(-1.5,.5,0) * CFrame.Angles(0,0,math.rad(-30*i))
end
fake=ghost()
fake.Handle.Weldd.Part0=LAP
fake.Handle.Weldd.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
fake.Handle.Weldd.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90), math.rad(90)) * CFrame.new(0, 0, 0.2)
for i,d in pairs(fake:GetChildren()) do
d.Transparency=0.5
d.BrickColor=BrickColor.new("Lime green")
end
for i=0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(0+120*i),0,math.rad(30))
LW.C0 = CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(0+120*i),0,math.rad(-30))
end
dmgcnnct(bladep1)
dmgcnnct2(fake.BladePart1)
for i=0,1,0.2 do
wait()
RW.C0 = CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(120 - 120*i),0,math.rad(30 - 30*i))
LW.C0 = CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(120 - 120*i),0,math.rad(-30 - -30*i))
end
dmgdc()
dmgdc2()
for i=0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5,.5,0) * CFrame.Angles(0,0,math.rad(0 + 90*i))
LW.C0 = CFrame.new(-1.5,.5,0) * CFrame.Angles(0,0,math.rad(-0 + -90*i))
end
dmgcnnct(bladep1)
dmgcnnct2(fake.BladePart1)
for i=0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5,.5,0) * CFrame.Angles(0,math.rad(0 + 60*i),math.rad(90 + 0))
LW.C0 = CFrame.new(-1.5,.5,0) * CFrame.Angles(0,math.rad(-0 + -60*i),math.rad(-80 + -0))
end
dmgdc()
dmgdc2()
for i=0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5,.5,0) * CFrame.Angles(0,math.rad(60 - 60*i),math.rad(90 + 0))
LW.C0 = CFrame.new(-1.5,.5,0) * CFrame.Angles(0,math.rad(-60 - -60*i),math.rad(-80 + -0))
end
for i=0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5,.5,0) * CFrame.Angles(0,0,math.rad(90 - 90*i))
LW.C0 = CFrame.new(-1.5,.5,0) * CFrame.Angles(0,0,math.rad(-90 - -90*i))
end
fake:Remove()
LWRem()
for i = 0 , 1 , 0.1 do
  wait()
  RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80*i), math.rad(35*i), math.rad(-35 + -10*i))
end 
attacking=false
end)
end
function move3()
RWFunc()
LWFunc()
if attacking==true then return end
attacking=true
fake2=ghost()
fake2.Handle.Weldd.Part0=LAP
fake2.Handle.Weldd.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
fake2.Handle.Weldd.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90), math.rad(90)) * CFrame.new(0, 0, 0.2)
for i,d in pairs(fake2:GetChildren()) do
d.Transparency=0.5
d.BrickColor=BrickColor.new("Lime green")
end
for i=0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(50+50*i),0,math.rad(40+43*i))
LW.C0 = CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(50+50*i),0,math.rad(-40+-43*i))
wd1.C0 = CFrame.Angles(0,0,math.rad(90*i))
fake2.Handle.Weldd.C0 = CFrame.Angles(0,0,math.rad(90*i))
end
dmgcnnct(bladep1)
dmgcnnct2(fake2.BladePart1)
local TorsCF = char.Torso.CFrame
local bg = Instance.new("BodyGyro",char.Torso)
bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
bg.P = bg.p * 25
bg.cframe = TorsCF
char.Humanoid.WalkSpeed=30
for i=0,50,0.2 do
wait()
bg.cframe = TorsCF * CFrame.Angles(0,math.rad(180+180*i),0)
end
char.Humanoid.WalkSpeed=30
game.Debris:AddItem(bg,0.02)
dmgdc()
dmgdc2()
for i=0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(100 - 0*i),0,math.rad(-83 + 83*i))
LW.C0 = CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(100 - 0*i),0,math.rad(-83 + 83*i))
end
fake2:Remove()
LWRem()
for i=0,1,0.1 do
wait()
wd1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90*i), math.rad(90 + 0*i)) * CFrame.new(0, 0, 0.2)
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(100 + -20*i), math.rad(35*i), math.rad(-35 + -10*i))
end
attacking=false
end
function move4()
RWFunc()
LWFunc()
if attacking==true then return end
attacking=true
for i=0,1,0.1 do
wait()
RW.C0=CFrame.new(1.5,.5,0) * CFrame.Angles(0,math.rad(10 + 5*i),math.rad(50+50*i))
LW.C0=CFrame.new(-1.5,.5,0) * CFrame.Angles(0,math.rad(80 + 0*i),math.rad(0+-50*i))
end
for i=0,1,0.1 do
wait()
LW.C0=CFrame.new(-1.5,.5,0) * CFrame.Angles(0,math.rad(80 + 0*i),math.rad(-50 + 150*i))
end
function Burn(Part)
if Part.Anchored == true and Part.Name == "Base" then return end
if Part:IsDescendantOf(char) then return end
if Part.Name =="Fireball" then return end
                local Fire = Instance.new("Fire")
                Fire.Heat = 2
                Fire.Size = 5
                Fire.Parent = Part
                Part:BreakJoints()
                Part.BrickColor = BrickColor.new("Lime green")
                                wait(2)
                                game.Debris:AddItem(Part,0.02)
end
function Ignite(Part)
        if Part.Anchored == true and Part.Name == "Base" then return end
                if Part:IsDescendantOf(char) then return end
        if Part:FindFirstChild("Fire") == nil then
                Part.Anchored = false
                local Fire = Instance.new("Fire")
                Fire.Heat = 2
                Fire.Size = 5
                Fire.Parent = Part
                Part:BreakJoints()
                Part.Touched:connect(function(Hit) Burn(Hit) end)
                Part.BrickColor = BrickColor.new("Lime green")
    end
end
for i = 1, 150 do
        local Source = char.Torso
        local Fireball = Instance.new("Part", Workspace)
        Fireball.Name = "Fireball"
        Fireball.CanCollide = false
        Fireball.TopSurface = 0
        Fireball.BottomSurface = 0
        Fireball.FormFactor = "Custom"
        Fireball.Shape = "Ball"
        Fireball.Size = Vector3.new(5, 5, 5)
        Fireball.CFrame = Source.CFrame * CFrame.new(0, 0, -5)
        local Velocity = Instance.new("BodyVelocity")
        Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        Velocity.velocity = (Source.CFrame.lookVector * 50) + Vector3.new(math.random(-25,25), math.random(-10,10), math.random(-10,10))
        Velocity.Parent = Fireball
        Ignite(Fireball)
        Fireball.BrickColor = BrickColor.new("Lime green")
        coroutine.wrap(function() wait(math.random(1, 9) / 10) for i = 0, 1, 0.1 do Fireball.Transparency = i wait() end Fireball.Fire.Enabled = false Fireball.Anchored = true wait(1) Fireball:Remove() end)()
        wait()
end
for i=0,1,0.1 do
wait()
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(15+15+50*i), math.rad(35*i), math.rad(100-140*i))
LW.C0=CFrame.new(-1.5,.5,0) * CFrame.Angles(0,math.rad(80 - 80*i),math.rad(100-100*i))
end
LWRem()
attacking=false
end
function move5()
RWFunc()
LWFunc()
if attacking==true then return end
attacking=true
fake3=ghost()
fake3.Handle.Weldd.Part0=LAP
fake3.Handle.Weldd.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
fake3.Handle.Weldd.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90), math.rad(90)) * CFrame.new(0, 0, -0.2)
for i,d in pairs(fake3:GetChildren()) do
d.Transparency=0.5
d.BrickColor=BrickColor.new("Lime green")
end
for i=0,1,0.1 do
wait()
RW.C0=CFrame.new(1.5,.5,0) * CFrame.Angles(0,math.rad(-50+-50*i),math.rad(30+30*i))
LW.C0=CFrame.new(-1.5,.5,0) * CFrame.Angles(0,math.rad(50+50*i),math.rad(-30+-30*i))
end
f=0
powermod=Instance.new("Model",char)
powermod.Name="PowerMode"
for i=0,3,0.1 do
f=f+1
wait()
ball=Instance.new("Part",powermod)
ball.formFactor="Custom"
ball.Shape="Ball"
ball.TopSurface="Smooth"
ball.BottomSurface="Smooth"
ball.BrickColor=BrickColor.new(chosen)
ball.Transparency=0.5
ball.Anchored=true
ball.CanCollide=false
ball.Size=Vector3.new(f,f,f)
ball.CFrame=char.Torso.CFrame
end
wait(.1)
powermod:Remove()
function Burn(Part)
if Part.Anchored == true and Part.Name == "Base" then return end
if Part:IsDescendantOf(char) then return end
if Part.Name =="Fireball" then return end
                local Fire = Instance.new("Fire")
                Fire.Heat = 2
                Fire.Size = 5
                Fire.Parent = Part
                Part:BreakJoints()
                Part.BrickColor = BrickColor.new("Lime green")
                                wait(2)
                                game.Debris:AddItem(Part,0.02)
end
function Ignite(Part)
        if Part.Anchored == true and Part.Name == "Base" then return end
                if Part:IsDescendantOf(char) then return end
        if Part:FindFirstChild("Fire") == nil then
                Part.Anchored = false
                local Fire = Instance.new("Fire")
                Fire.Heat = 100
                Fire.Size = 100
                Fire.Parent = Part
                Part:BreakJoints()
                Part.Touched:connect(function(Hit) Burn(Hit) end)
                Part.BrickColor = BrickColor.new("Lime green")
    end
end
for i = 1, 250 do
        local Source = char.Torso
        local Fireball = Instance.new("Part", Workspace)
        Fireball.Name = "Fireball"
        Fireball.CanCollide = false
        Fireball.TopSurface = 0
        Fireball.BottomSurface = 0
        Fireball.FormFactor = "Custom"
        Fireball.Shape = "Ball"
        Fireball.Size = Vector3.new(50, 50, 50)
        Fireball.CFrame = Source.CFrame * CFrame.new(0, 0, -30)
        local Velocity = Instance.new("BodyVelocity")
        Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        Velocity.velocity = (Source.CFrame.lookVector * 250) + Vector3.new(math.random(-2,2), math.random(-2,2), math.random(-2,2))
        Velocity.Parent = Fireball
        Ignite(Fireball)
        Fireball.BrickColor = BrickColor.new("Lime green")
        coroutine.wrap(function() wait(math.random(1, 9) / 10) for i = 0, 1, 0.1 do Fireball.Transparency = i wait() end Fireball.Fire.Enabled = false Fireball.Anchored = true wait(1) Fireball:Remove() end)()
        wait(0.02)
end
fake3:Remove()
LWRem()
attacking=false
end
function swordmode()
RWFunc()
char.Humanoid.WalkSpeed=30
bin.Name="Pheonix Sword"
hitdeb=1
hitdeb=0
wd1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
wd1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90), math.rad(90)) * CFrame.new(0, 0, 0.2)
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80), math.rad(35), math.rad(45-90*i))
end
mode="normal"
end

wait()

local player = game:GetService("Players").LocalPlayer	

local bin = Instance.new("HopperBin", player.Backpack)

bin.Name = "Striker unit"
	
local camera = game:GetService("Workspace").CurrentCamera
local character = player.Character

local torso = character:FindFirstChild("Torso")
local humanoid = character:FindFirstChild("Humanoid")
local neck = torso:FindFirstChild("Neck")

local rightLeg = character:FindFirstChild("Right Leg")
local leftLeg = character:FindFirstChild("Left Leg")

local rightHip = torso:FindFirstChild("Right Hip")
local leftHip = torso:FindFirstChild("Left Hip")

local neckAngle = neck.C1
local rightHipAngle = rightHip.C1
local leftHipAngle = leftHip.C1

local leftWeld = Instance.new("Weld") 
local rightWeld = Instance.new("Weld") 

local velocity = Instance.new("BodyVelocity")
local gyro = Instance.new("BodyGyro")
local pos = Instance.new("BodyPosition")

local parts = {"StrikerOne", "StrikerTwo", "JointOne", "JointTwo", "PropellerOne", "PropellerTwo"}
local welds = {"SWelderOne", "SWelderTwo", "JWelderOne", "JWelderTwo", "PWelderOne", "PWelderTwo"}

local strikerColor = "Really black"
local propellerColor = "White"
local jointColor = "Bright blue"

local mainModel = Instance.new("Model")
local cframePart = Instance.new("Part")

local toolSelected = false
local runNext = false
local strikerLoaded = false
local connected = false
local turn = false
local forward = false
local backward = false
local onleft = false
local onright = false
local onup = false
local ondown = false


local gyroAngleX = 0
local desiredGyroAngleX = 0
local gyroAngleY = 0
local desiredGyroAngleY = 0
local gyroAngleZ = 0
local desiredGyroAngleZ = 0
local angleSetSpeed = 5
local rotationIndice = 0
local maxRotation = 70
local motorSpeed = 0
local desiredSpeed = 0
local xPartPos = 0
local desiredXPartPos = 0
local yPartPos = 0
local desiredYPartPos = 0

function Striker(delay) 

	wait(delay)

	mainModel.Name = "Striker"
	mainModel.Archivable = false
	mainModel.Parent = character

	for index, name in pairs(parts) do

		getfenv()[name] = Instance.new("Part")
		getfenv()[name].Name = name
		getfenv()[name].Anchored = true
		getfenv()[name].Locked = true
		getfenv()[name].CanCollide = false
		getfenv()[name].Transparency = 1
		getfenv()[name].CFrame = CFrame.new(0, math.huge, 0)
		getfenv()[name].FormFactor = Enum.FormFactor.Custom
		getfenv()[name].BottomSurface = Enum.SurfaceType.Smooth
		getfenv()[name].TopSurface = Enum.SurfaceType.Smooth
		
		if index <= 2 then
		
			getfenv()[name].BrickColor = BrickColor.new(strikerColor)
			getfenv()[name].Size = Vector3.new(1.1, 1.5, 1.1)
			
		elseif index == 3 or index == 4 then
		
			getfenv()[name].BrickColor = BrickColor.new(jointColor)
			getfenv()[name].Size = Vector3.new(0.25, 0.25, 0.25)

		elseif index >= 5 then
		
			getfenv()[name].BrickColor = BrickColor.new(propellerColor)
			getfenv()[name].Size = Vector3.new(1.55, 0.2, 0.2)
			
		end
		
		getfenv()[name].Parent = mainModel
		
		coroutine.resume(coroutine.create(function()
		
			for i = getfenv()[name].Transparency, 0, -0.1 do 
			
				if toolSelected then wait() getfenv()[name].Transparency = i end
				
			end
		
		end))
		
	end
	
	for index, name in pairs(welds) do
	
		getfenv()[name] = Instance.new("Weld")
		getfenv()[name].Parent = mainModel
		getfenv()[name].Name = name
		
		if index == 1 then 
		
			getfenv()[name].Part0 = leftLeg 
			StrikerOne.Anchored = false
			getfenv()[name].Part1 = StrikerOne
			getfenv()[name].C1 = CFrame.new(0, 0.35, 0)
			
		elseif index == 2 then 
		
			getfenv()[name].Part0 = rightLeg
			StrikerTwo.Anchored = false
			getfenv()[name].Part1 = StrikerTwo
			getfenv()[name].C1 = CFrame.new(0, 0.35, 0)
			
		elseif index == 3 then 
		
			getfenv()[name].Part0 = StrikerOne
			JointOne.Anchored = false
			getfenv()[name].Part1 = JointOne
			getfenv()[name].C1 = CFrame.new(0, 0.775, 0)
			JointOne.CanCollide = true
			
		elseif index == 4 then 
		
			getfenv()[name].Part0 = StrikerTwo 
			JointTwo.Anchored = false
			getfenv()[name].Part1 = JointTwo
			getfenv()[name].C1 = CFrame.new(0, 0.775, 0)
			JointTwo.CanCollide = true
			
		elseif index == 5 then 
		
			getfenv()[name].Part0 = JointOne
			PropellerOne.Anchored = false
			getfenv()[name].Part1 = PropellerOne
		
		elseif index == 6 then 
		
			getfenv()[name].Part0 = JointTwo
			PropellerTwo.Anchored = false
			getfenv()[name].Part1 = PropellerTwo
			
		end
		
	end
	
	wait(0.1)
	
	strikerLoaded = true
	
end

function SetAngles(cfr, x, y, z) print("Settings")

	local x2, y2, z2 = cfr.C1:toEulerAnglesXYZ()
	
	x = math.rad(x)
	y = math.rad(y)
	z = math.rad(z)
	
	x2 = math.rad(x2)
	y2 = math.rad(y2)
	z2 = math.rad(z2)

	coroutine.resume(coroutine.create(function() local v1 local v2
	
		if x2 < x then v1, v2 = x2, x else v1, v2 = x, x2 end 
		
		for i = v1, v2, (v2 - v1) / angleSetSpeed do wait() 
		
			cfr.C1 = unitCfr * CFrame.fromEulerAnglesXYZ(i/v2, 0, 0)
			
		end 
		
	end))
	
	coroutine.resume(coroutine.create(function() local v3 local v4
	
		if y2 < y then v3, v4 = y2, y else v3, v4 = y, x2 end
		
		for i = v3, v4, (v2 - v1) / angleSetSpeed do wait() 
		
			cfr.C1 = unitCfr * CFrame.fromEulerAnglesXYZ(0, i/v4, 0) 
			
		end 
		
	end))
	
	coroutine.resume(coroutine.create(function() local v5 local v6
	
		if z2 < z then v5, v6 = z2, z else v5, v6 = z, z2 end
		
		for i = v5, v6, (v5 - v6) / angleSetSpeed do wait() 
		
			cfr.C1 = unitCfr * CFrame.fromEulerAnglesXYZ(0, 0, i/v6)
			
		end 
		
	end))
	
end

function Connection(mouse)

	toolSelected = true

	coroutine.resume(coroutine.create(function() repeat wait()

		if toolSelected then
		
			if leftHip ~= nil then
			
				leftHip.DesiredAngle = 0
				leftHip.CurrentAngle = 0
				
			end
		
			if rightHip ~= nil then
			
				rightHip.DesiredAngle = 0
				rightHip.CurrentAngle = 0
				
			end
			
			runNext = true
		
		else break end

	until false return false end))
	
	repeat wait() until runNext
	
	humanoid.PlatformStand = true
	
	torso.Anchored = true wait()
	torso.Velocity = Vector3.new(0, 0, 0)
	torso.RotVelocity = Vector3.new(0, 0, 0)
	
	leftHipAngle = leftHip.C1
	rightHipAngle = rightHip.C1
	
	pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	pos.Parent = torso
	pos.position = torso.CFrame.p
	
	torso.Anchored = false
	
	coroutine.resume(coroutine.create(Striker),0.2)
	
	for i = 1, 20, 1 do wait()
	
		if toolSelected then
		
			pos.position = pos.position + Vector3.new(0, 0.2, 0)
			torso.CFrame = torso.CFrame * CFrame.fromEulerAnglesXYZ(0, math.rad(18), 0)
			humanoid.PlatformStand = true
	
			leftHip.C1 = leftHip.C1 * CFrame.new(0, -0.01, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0.5), -math.rad(0.5), -math.rad(0.5))
			rightHip.C1 = rightHip.C1 * CFrame.new(0, -0.01, 0) * CFrame.fromEulerAnglesXYZ(math.rad(0.5), math.rad(0.5), math.rad(0.5))
			
		end
		
	end
	
	local x22, y22, z22 = leftHip.C1:toEulerAnglesXYZ()
	
	repeat wait() until strikerLoaded
	
	gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
	gyro.Parent = torso
	gyro.P = 1500
	
	velocity.Parent = torso
	velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	velocity.P = 125
	
	if pos ~= nil then if pos.Parent == torso then pos:remove() end end
	
	coroutine.resume(coroutine.create(function()
	
		while strikerLoaded do wait(0.03405) if toolSelected and rotationIndice < maxRotation then rotationIndice = rotationIndice + 0.25 
		
			if desiredSpeed ~= 0 then if desiredSpeed > 0 then motorSpeed = desiredSpeed - (maxRotation - rotationIndice) elseif desiredSpeed < 0 then motorSpeed = desiredSpeed + (maxRotation - rotationIndice) end else motorSpeed = 0 end
			if desiredXPartPos ~= 0 then if desiredXPartPos > 0 then xPartPos = desiredXPartPos - (maxRotation/2 - rotationIndice/2) elseif desiredXPartPos < 0 then xPartPos = desiredXPartPos + (maxRotation/2 - rotationIndice/2) end else xPartPos = 0 end
			if desiredYPartPos ~= 0 then if desiredYPartPos > 0 then yPartPos = desiredYPartPos - (maxRotation/2 - rotationIndice/2) elseif desiredYPartPos < 0 then yPartPos = desiredYPartPos + (maxRotation/2 - rotationIndice/2) end else yPartPos = 0 end
			
			if desiredGyroAngleX ~= 0 then if desiredGyroAngleX > 0 then gyroAngleX = math.rad(desiredGyroAngleX - (maxRotation - rotationIndice)) elseif desiredGyroAngleX < 0 then gyroAngleX = math.rad(desiredGyroAngleX + (maxRotation - rotationIndice)) end else gyroAngleX = 0 end
			if desiredGyroAngleY ~= 0 then if desiredGyroAngleY > 0 then gyroAngleY = math.rad(desiredGyroAngleY - (maxRotation - rotationIndice)) elseif desiredGyroAngleY < 0 then gyroAngleY = math.rad(desiredGyroAngleY + (maxRotation - rotationIndice)) end else gyroAngleY = 0 end
			if desiredGyroAngleZ ~= 0 then if desiredGyroAngleZ > 0 then gyroAngleZ = math.rad(desiredGyroAngleZ - (maxRotation - rotationIndice)) elseif desiredGyroAngleZ < 0 then gyroAngleZ = math.rad(desiredGyroAngleZ + (maxRotation - rotationIndice)) end else gyroAngleZ = 0 end
		
			elseif toolSelected and rotationIndice == maxRotation then humanoid.PlatformStand = true motorSpeed = desiredSpeed gyroAngleX = math.rad(desiredGyroAngleX) gyroAngleY = math.rad(desiredGyroAngleY) gyroAngleZ = math.rad(desiredGyroAngleZ) xPartPos = desiredXPartPos yPartPos = desiredYPartPos end
		
			if PropellerOne ~= nil and PWelderOne ~= nil then
			
				PWelderOne.C1 = PWelderOne.C1 * CFrame.fromEulerAnglesXYZ(0, -math.rad(rotationIndice), 0)
				
			end
			
			if PropellerTwo ~= nil and PWelderTwo ~= nil then
			
				PWelderTwo.C1 = PWelderTwo.C1 * CFrame.fromEulerAnglesXYZ(0, math.rad(rotationIndice), 0)
				
			end
			
			if cframePart ~= nil then

				cframePart.Size = Vector3.new(0.2, 0.2, 0.2)
				cframePart.CFrame = CFrame.new(torso.CFrame.p, camera.CoordinateFrame.lookVector * 10000000) + Vector3.new(xPartPos, yPartPos, 0)
				
			end
			
			if velocity ~= nil then if velocity.Parent == torso then velocity.velocity = (cframePart.CFrame - cframePart.CFrame.p) * Vector3.new(xPartPos, yPartPos, -motorSpeed) end end
			if gyro ~= nil then if gyro.Parent == torso then gyro.cframe = CFrame.new(gyro.cframe.p, camera.CoordinateFrame.lookVector * 10000000) * CFrame.fromEulerAnglesXYZ(gyroAngleX, gyroAngleY, gyroAngleZ) end end
			
		end return
		
	end)) connected = true stand = true
	
	mouse.KeyDown:connect(function(key) key = key:lower()
	
		if key == "w" then ForwardDown()
		elseif key == "s" then BackwardDown()
		elseif key == "a" then LeftDown()
		elseif key == "d" then RightDown()
		elseif key == "e" then UpDown()
		elseif key == "q" then DownDown()
		
	end end)
	
	mouse.KeyUp:connect(function(key) key = key:lower()
	
		if key == "w" then ForwardUp() if backward then BackwardDown() end
		elseif key == "s" then BackwardUp() if forward then ForwardDown() end
		elseif key == "a" then LeftUp() if onright then RightDown() end
		elseif key == "d" then RightUp() if onleft then LeftDown() end
		elseif key == "e" then UpUp() if ondown then DownDown() end
		elseif key == "q" then DownUp() if onup then UpDown() end
		
	end end)

end

function Disconnection()

	toolSelected = false wait()
	
	for index, name in pairs(parts) do 
	
		if getfenv()[name] ~= nil then
		
			coroutine.resume(coroutine.create(function()
			
				for i = getfenv()[name].Transparency, 1, 0.1 do wait()
						
					getfenv()[name].Transparency = i
							
				end
			
			end))
			
		end 
		
	end
	
	pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	pos.Parent = torso
	pos.position = torso.CFrame.p
	
	coroutine.resume(coroutine.create(Striker),0.2)
	
	for i = 1, 10, 1 do wait()
		
		pos.position = pos.position - Vector3.new(0, 0.15, 0)
		humanoid.PlatformStand = true

		leftHip.C1 = leftHip.C1 * CFrame.new(0, 0.02, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-1), -math.rad(-1), -math.rad(-1))
		rightHip.C1 = rightHip.C1 * CFrame.new(0, 0.02, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-1), math.rad(-1), math.rad(-1))
		
	end wait()
	
	humanoid.PlatformStand = false
	
	if pos ~= nil then if pos.Parent == torso then pos:remove() end end
	if gyro ~= nil then if gyro.Parent == torso then gyro:remove() end end
	if velocity ~= nil then if velocity.Parent == torso then velocity:remove() end end
	if mainModel ~= nil then mainModel:remove() end
	
	strikerLoaded = false
	rotationIndice = 0
	motorSpeed = 0
	desiredSpeed = 0
	
	ForwardUp()
	BackwardUp()
	LeftUp()
	RightUp()
	
	forward = false
	backward = false
	onleft = false
	onright = false
	onup = false
	ondown = false
	
	leftHip.C1 = leftHipAngle
	rightHip.C1 = rightHipAngle
	
	connected = false

end

function ForwardDown() forward = true

	desiredGyroAngleX = -maxRotation
	desiredSpeed = maxRotation

end

function BackwardDown() backward = true

	desiredGyroAngleX = maxRotation
	desiredSpeed = -maxRotation

end

function ForwardUp() forward = false

	desiredGyroAngleX = 0
	desiredSpeed = 0

end

function BackwardUp() backward = false

	desiredGyroAngleX = 0
	desiredSpeed = 0

end

function LeftDown() onleft = true

	desiredGyroAngleY = -maxRotation
	desiredXPartPos = -maxRotation/2

end

function RightDown() onright = true

	desiredGyroAngleY = maxRotation
	desiredXPartPos = maxRotation/2

end

function LeftUp() onleft = false

	desiredGyroAngleY = 0
	desiredXPartPos = 0

end

function RightUp() onright = false

	desiredGyroAngleY = 0
	desiredXPartPos = 0

end

function UpDown() onup = true

	desiredYPartPos = maxRotation/2

end

function DownDown() ondown = true

	desiredYPartPos = -maxRotation/2

end

function UpUp() onup = false

	desiredYPartPos = 0

end

function DownUp() ondown = false

	desiredYPartPos = 0

end


bin.Selected:connect(Connection)
bin.Deselected:connect(Disconnection)

wait(1)
math.randomseed(tick())
local pwn = game:service('Players').LocalPlayer
local char = pwn.Character
local pk = pwn.Backpack
local Human = char.Humanoid
local Torso = char.Torso
local Head = char.Head
local LeftArm = char["Left Arm"]
local RightArm = char["Right Arm"]
local LeftLeg = char["Left Leg"]
local RightLeg = char["Right Leg"]
local Neck = char.Torso["Neck"]
local RightShoulder = char.Torso["Right Shoulder"]
local LeftShoulder = char.Torso["Left Shoulder"]
local RightHip = char.Torso["Right Hip"]
local LeftHip = char.Torso["Left Hip"]
local NeckC0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
local NeckC1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
local LeftShoulderC0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
local LeftShoulderC1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
local RightShoulderC0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
local RightShoulderC1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
local LeftHipC0 = CFrame.new(-1, -1, 0, 0, 0, -1,0,1, 0, 1, 0, 0)
local LeftHipC1 = CFrame.new(-0.5,1,0,0,0,-1,0,1,0,1, 0, 0)
local RightHipC0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)
local RightHipC1 = CFrame.new(0.5,1,0,0,0,1,0,1,0,-1,0,0)
local Tewl = Instance.new("HopperBin",pk)
local Nim = "Time Blast"
local disabled = false
function ChargeWelds()
if Torso.Anchored then
Torso.CFrame = Torso.CFrame * CFrame.new(0,5,0)
else
Torso.Anchored = true
Torso.CFrame = Torso.CFrame * CFrame.new(0,5,0)
end
coroutine.resume(meshInsertion)
TiltX = 2
TiltY = 0
TiltZ = 2
RightShoulder.C0 = RightShoulderC0 * CFrame.Angles(TiltX, TiltY, TiltZ)
LeftShoulder.C0 = LeftShoulderC0 * CFrame.Angles(TiltX, TiltY, TiltZ)
TiltX = 2
TiltY = 0
TiltZ = 2
MoveX = 0
MoveY = 0
MoveZ = 0
RightShoulder.C0 = RightShoulder.C0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX, MoveY, MoveZ)
LeftShoulder.C0 = LeftShoulder.C0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX,MoveY,MoveZ)
TiltX = 0.3
TiltY = 0
TiltZ = 0.3
MoveX = 0
MoveY = 0
MoveZ = 0
RightHip.C0 = RightHipC0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX, MoveY, MoveZ)
LeftHip.C0 = LeftHipC0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX, MoveY, MoveZ)
end
function RefreshWelds()
Neck.C0 = NeckC0
Neck.C1 = NeckC1
RightShoulder.C0 = RightShoulderC0
RightShoulder.C1 = RightShoulderC1
LeftShoulder.C0 = LeftShoulderC0
LeftShoulder.C1 = LeftShoulderC1
RightHip.C0 = RightHipC0
RightHip.C1 = RightHipC1
LeftHip.C0 = LeftHipC0
LeftHip.C1 = LeftHipC1
end
function Welds1()
TiltX = 0
TiltY = 0
TiltZ = 1.57
RightShoulder.C0 = RightShoulderC0 * CFrame.Angles(TiltX, TiltY, TiltZ)
LeftShoulder.C0 = LeftShoulderC0 * CFrame.Angles(TiltX, TiltY, -TiltZ)
TiltX = 0.6
TiltY = 0
TiltZ = 0
MoveX = 0
MoveY = 0
MoveZ = -0.3
RightShoulder.C0 = RightShoulder.C0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX, MoveY, MoveZ)
LeftShoulder.C0 = LeftShoulder.C0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX, MoveY, MoveZ)
TiltX = -0.05
TiltY = 0
TiltZ = 0
MoveX = 0
MoveY = 0.1
MoveZ = 0
RightHip.C0 = RightHipC0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX, MoveY, MoveZ)
LeftHip.C0 = LeftHipC0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX, MoveY, MoveZ)
end
function Welds2()
TiltX = 100
TiltY = 20
TiltZ = -20
RightShoulder.C0 = RightShoulderC0 * CFrame.Angles(TiltX, TiltY, TiltZ)
LeftShoulder.C0 = LeftShoulderC0 * CFrame.Angles(TiltX, TiltY, TiltZ)
TiltX = 0.6
TiltY = 0
TiltZ = 0
MoveX = 0
MoveY = 0
MoveZ = -0.3
RightShoulder.C0 = RightShoulder.C0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX, MoveY, MoveZ)
LeftShoulder.C0 = LeftShoulder.C0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX, MoveY, MoveZ)
TiltX = 0
TiltY = 0
TiltZ = 0
MoveX = 0
MoveY = 0
MoveZ = 0
RightHip.C0 = RightHipC0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX, MoveY, MoveZ)
LeftHip.C0 = LeftHipC0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX, MoveY, MoveZ)
end
function onButton1Down(mouse)
if disabled == true then
return
end
Torso.Anchored = true
Human.PlatformStand = true
Human.WalkSpeed = 0
disabled = true
narb = Instance.new("ForceField",char)
noob = narb:clone()
noobz = narb:clone()
nubz = narb:clone()
coroutine.resume(coroutine.create(function()
for x = 1,150 do
Torso.CFrame = Torso.CFrame * CFrame.fromEulerAnglesXYZ(0,math.random(-100,100),0)
wait()
end
end))
chargeup()
local wow = Instance.new("Part",workspace)
wow.Anchored = true
wow.CanCollide = false
wow.Reflectance = 0.32
wow.formFactor = "Custom"
wow.Size = Vector3.new(0.2,0.2,0.2)
wow.TopSurface = "Smooth"
wow.Transparency = 0
wow.BottomSurface = "Smooth"
wow.CFrame = Torso.CFrame
wow.BrickColor = BrickColor.new("Really black")
local Mesh2 = Instance.new("SpecialMesh",wow)
Mesh2.MeshType = "FileMesh"
Mesh2.Scale = Vector3.new(4.5,0.5,4.5)
Mesh2.MeshId = "http://www.roblox.com/asset/?id=20329976"
Mesh2.TextureId = ""
for i = 1,30 do
wow.CFrame = Torso.CFrame * CFrame.new(0,-7.5,0)
wait()
wow.CFrame = wow.CFrame * CFrame.fromEulerAnglesXYZ(0,-6,0)
wow.Transparency = wow.Transparency + 0.1
end
local p = Instance.new("Part",char)
p.Anchored = true
p.CanCollide = false
p.Transparency = 0
p.Reflectance = 0.3
p.formFactor = "Symmetric"
p.Size = Vector3.new(12, 12, 12)
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.Name = "Sharingan"
p.Shape = "Ball"
p.CFrame = Torso.CFrame
p.BrickColor = BrickColor.new("Lime green")
local lol = Instance.new("Explosion",workspace) 
lol.Position = Torso.Position
lol.BlastRadius = 450
lol.BlastPressure = 0
for i = 1,10 do
wait()
p.Size = p.Size + Vector3.new(3,3,3)
p.CFrame = Torso.CFrame
p.Transparency = p.Transparency + 0.1
end
game.Lighting.TimeOfDay = 6
p:remove()
wow:remove()
Welds2()
wait(0.5)
Welds1()
wait(0.5)
RightShoulder.C0 = RightShoulderC0 * CFrame.Angles(0.1, 0, 2)
LeftShoulder.C0 = LeftShoulderC0 * CFrame.Angles(0.1, 0, -2)
wait(1)
for i = 1,20 do
game.Lighting.Ambient = Color3.new(math.random(),math.random(),math.random())
wait()
end
game.Lighting.Ambient = Color3.new(1,1,1)
local model = Instance.new("Model",char)
local fer = Instance.new("Fire",Torso)
fer.Size = 30
fer.Heat = 18
fer.Color = BrickColor.new("Really red").Color
fer.SecondaryColor = BrickColor.new("Really black").Color
local smk = Instance.new("Smoke",Torso)
smk.Opacity = 1
smk.RiseVelocity = 25
smk.Size = 12
smk.Color = BrickColor.new("Really red").Color
local O = Instance.new("Part",model)
O.Anchored = true
O.CanCollide = false
O.Transparency = 0
O.Reflectance = 0.3
O.formFactor = "Symmetric"
O.Size = Vector3.new(0, 0, 0)
O.TopSurface = "Smooth"
O.BottomSurface = "Smooth"
O.Name = "Sharingan"
O.Shape = "Ball"
O.CFrame = Torso.CFrame*CFrame.fromEulerAnglesXYZ(1.5, 0, 0)
O.BrickColor = BrickColor.new("Really red")
local Mesh = Instance.new("SpecialMesh")
Mesh.Parent = O
Mesh.MeshType = "FileMesh"
Mesh.Scale = Vector3.new(1.3, 1.3, 1.3)
Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
Mesh.TextureId = ""
local O2 = Instance.new("Part",model)
O2.Anchored = true
O2.CanCollide = false
O2.Transparency = 0
O2.Reflectance = 0.3
O2.formFactor = "Symmetric"
O2.Size = Vector3.new(0, 0, 0)
O2.TopSurface = "Smooth"
O2.BottomSurface = "Smooth"
O2.Name = "Sharingan"
O2.Shape = "Ball"
O2.CFrame = Torso.CFrame
O2.BrickColor = BrickColor.new("Really red")
local Mesh3 = Instance.new("SpecialMesh")
Mesh3.Parent = O2
Mesh3.MeshType = "FileMesh"
Mesh3.Scale = Vector3.new(1, 1, 1)
Mesh3.MeshId = "http://www.roblox.com/asset/?id=3270017"
Mesh3.TextureId = ""
local O3 = Instance.new("Part",model)
O3.Anchored = true
O3.CanCollide = false
O3.Transparency = 0
O3.Reflectance = 0.3
O3.formFactor = "Symmetric"
O3.Size = Vector3.new(0, 0, 0)
O3.TopSurface = "Smooth"
O3.BottomSurface = "Smooth"
O3.Name = "Sharingan"
O3.Shape = "Ball"
O3.CFrame = Torso.CFrame*CFrame.fromEulerAnglesXYZ(1.5, 0, 0)
O3.BrickColor = BrickColor.new("Really red")
local Mesh4 = Instance.new("SpecialMesh")
Mesh4.Parent = O3
Mesh4.MeshType = "FileMesh"
Mesh4.Scale = Vector3.new(1.3, 1.3, 1.3)
Mesh4.MeshId = "http://www.roblox.com/asset/?id=3270017"
Mesh4.TextureId = ""
local O4 = Instance.new("Part",model)
O4.Anchored = true
O4.CanCollide = false
O4.Transparency = 0
O4.Reflectance = 0.3
O4.formFactor = "Symmetric"
O4.Size = Vector3.new(0, 0, 0)
O4.TopSurface = "Smooth"
O4.BottomSurface = "Smooth"
O4.Name = "Sharingan"
O4.Shape = "Ball"
O4.CFrame = Torso.CFrame
O4.BrickColor = BrickColor.new("Really red")
local Mesh5 = Instance.new("SpecialMesh")
Mesh5.Parent = O4
Mesh5.MeshType = "FileMesh"
Mesh5.Scale = Vector3.new(1, 1, 1)
Mesh5.MeshId = "http://www.roblox.com/asset/?id=3270017"
Mesh5.TextureId = ""
local pro = Instance.new("Part",char)
pro.Anchored = true
pro.CanCollide = true
pro.Transparency = 0.2
pro.Reflectance = 0.3
pro.formFactor = "Symmetric"
pro.Size = Vector3.new(1, 1, 1)
pro.TopSurface = "Smooth"
pro.BottomSurface = "Smooth"
pro.Name = "Sharingan"
pro.Shape = "Ball"
pro.BrickColor = BrickColor.new("White")
pro.CFrame = Torso.CFrame
pro.Touched:connect(onTouched)
local lol = Instance.new("Explosion",workspace) 
lol.Position = Torso.Position
lol.BlastRadius = 65
lol.BlastPressure = 900000
lol.Hit:connect(explhit)
local Effect = Instance.new("Part",pro) 
Effect.Anchored = true 
Effect.CanCollide = false 
Effect.Size = Vector3.new(1, 1, 1)
Effect.formFactor = "Symmetric" 
Effect.Transparency = 0.6
Effect.BrickColor = BrickColor.new("Toothpaste")
Effect.CFrame = Torso.CFrame
Effect.Reflectance = 0.6
Effect.TopSurface = "Smooth" 
Effect.BottomSurface = "Smooth" 
local EffectMesh = Instance.new("CylinderMesh",Effect) 
EffectMesh.Scale = Vector3.new(3, 90000, 3)
local effect = Effect:Clone()
local effectmesh = EffectMesh:Clone()
effect.Parent = pro
effectmesh.Parent = effect
for i = 1,75 do
effect.Reflectance = math.random()
Effect.Reflectance = math.random()
effectmesh.Scale = effectmesh.Scale + Vector3.new(1,0,1)
EffectMesh.Scale = EffectMesh.Scale + Vector3.new(2,0,2)
Mesh.Scale = Mesh.Scale + Vector3.new(3, 3, 3)
Mesh3.Scale = Mesh.Scale
Mesh4.Scale = Mesh.Scale
Mesh5.Scale = Mesh.Scale
O.CFrame = O.CFrame * CFrame.fromEulerAnglesXYZ(6,0,0)
O2.CFrame = O2.CFrame * CFrame.fromEulerAnglesXYZ(0,6,0)
O3.CFrame = O3.CFrame * CFrame.fromEulerAnglesXYZ(0,6,6)
O4.CFrame = O4.CFrame * CFrame.fromEulerAnglesXYZ(6,0,6)
pro.Size = pro.Size + Vector3.new(3,3,3)
pro.CFrame = Torso.CFrame
O.BrickColor = BrickColor.new("Lime green")
O2.BrickColor = BrickColor.new("Lime green")
O3.BrickColor = BrickColor.new("Lime green")
O4.BrickColor = BrickColor.new("Lime green")
pro.BrickColor = BrickColor.new("Really black")
wait()
end
coroutine.resume(core)
for i = 1,10 do
Effect.Reflectance = 0 + 0.1
effect.Reflectance = 0 + 0.1
EffectMesh.Scale = EffectMesh.Scale - Vector3.new(12,30,12)
effectmesh.Scale = effectmesh.Scale - Vector3.new(11,29,11)
O.Transparency = O.Transparency + 0.1
O2.Transparency = O2.Transparency + 0.1
O3.Transparency = O3.Transparency + 0.1
O4.Transparency = O4.Transparency + 0.1
pro.Transparency = p.Transparency + 0.01
wait()
end
Effect:remove()	
pro:remove()
fer:remove()
smk:remove()
noob:remove()
noobz:remove()
nubz:remove()
narb:remove()
RefreshWelds()
game.Lighting.TimeOfDay = 14
game.Lighting.Brightness = 0
model:remove()
Human.PlatformStand = false
Torso.Anchored = false
Human.WalkSpeed = 16
wait(10)
disabled = false
end
function lul(mouse)
mouse.Icon = "http://www.roblox.com/asset/?id=41672909"
mouse.Button1Down:connect(onButton1Down)
end
function explhit(drumstep)
for d,s in pairs (drumstep:children()) do
if s.className == "Humanoid" then
s:takeDamage(80)
end
end
end
function chargeup()
Welds1()
wait(0.4)
ChargeWelds()
wait(0.3)
StartCharge()
wait()
MidCharge()
wait(0.5)
EndCharge()
wait(0.4)
end
function EndCharge()
local p = Instance.new("Part",char)
p.Anchored = true
p.CanCollide = false
p.Transparency = 0
p.Reflectance = 0.3
p.formFactor = "Symmetric"
p.Size = Vector3.new(12, 12, 12)
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.Name = "Sharingan"
p.Shape = "Ball"
p.CFrame = Torso.CFrame
p.BrickColor = BrickColor.new("Really black")
for i = 1,10 do
p.Size = p.Size - Vector3.new(3,3,3)
p.CFrame = Torso.CFrame
wait()
end
p:remove()
end
function MidCharge()
local wow = Instance.new("Part",workspace)
wow.Anchored = true
wow.CanCollide = false
wow.Reflectance = 0.32
wow.formFactor = "Custom"
wow.Size = Vector3.new(12,12,12)
wow.TopSurface = "Smooth"
wow.Transparency = 0.5
wow.BottomSurface = "Smooth"
wow.CFrame = Torso.CFrame * CFrame.new(0,0,0)
wow.BrickColor = BrickColor.new("Really black")
local wow2 = Instance.new("Part",workspace)
wow2.Anchored = true
wow2.CanCollide = false
wow2.Reflectance = 0.32
wow2.formFactor = "Custom"
wow2.Size = Vector3.new(12,12,12)
wow2.TopSurface = "Smooth"
wow2.Transparency = 0.5
wow2.BottomSurface = "Smooth"
wow2.CFrame = Torso.CFrame * CFrame.new(0,0,0)
wow2.BrickColor = BrickColor.new("Lime green")
local wow11 = Instance.new("Part",workspace)
wow11.Anchored = true
wow11.CanCollide = false
wow11.Reflectance = 0.32
wow11.formFactor = "Custom"
wow11.Size = Vector3.new(12,12,12)
wow11.TopSurface = "Smooth"
wow11.Transparency = 0.5
wow11.BottomSurface = "Smooth"
wow11.CFrame = Torso.CFrame * CFrame.new(0,0,0)
wow11.BrickColor = BrickColor.new("Lavender")
local wow4 = Instance.new("Part",workspace)
wow4.Anchored = true
wow4.CanCollide = false
wow4.Reflectance = 0.32
wow4.formFactor = "Custom"
wow4.Size = Vector3.new(12,12,12)
wow4.TopSurface = "Smooth"
wow4.Transparency = 0.5
wow4.BottomSurface = "Smooth"
wow4.CFrame = Torso.CFrame * CFrame.new(0,0,0)
wow4.BrickColor = BrickColor.new("Toothpaste")
local Taco = Instance.new("SelectionBox",wow)
Taco.Visible = true
Taco.Color = BrickColor.new("Lime green")
Taco.Adornee = Taco.Parent
local Tacoz = Taco:clone()
Tacoz.Parent = wow2
Tacoz.Color = BrickColor.new("Really black")
Tacoz.Adornee = Tacoz.Parent
local Taco5 = Tacoz:clone()
Taco5.Parent = wow4
Taco5.Adornee = Taco5.Parent
Taco5.Color = BrickColor.new("Lavender")
local Tacosh = Tacoz:clone()
Tacosh.Parent = wow11
Tacosh.Adornee = Tacosh.Parent
Tacosh.Color = BrickColor.new("Toothpaste")
for i = 1,20 do
wait()
wow11.CFrame = wow11.CFrame * CFrame.fromEulerAnglesXYZ(6,6,6)
wow4.CFrame = wow4.CFrame * CFrame.fromEulerAnglesXYZ(-6,-6,-6)
wow2.CFrame = wow2.CFrame * CFrame.fromEulerAnglesXYZ(-3,2,6)
wow.CFrame = wow.CFrame * CFrame.fromEulerAnglesXYZ(5,1,-6)
end
wow:remove()
wow2:remove()
wow4:remove()
wow11:remove()
end
function StartCharge()
local p = Instance.new("Part",char)
p.Anchored = true
p.CanCollide = false
p.Transparency = 0.6
p.Reflectance = 0.3
p.formFactor = "Symmetric"
p.Size = Vector3.new(3,3,3)
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.Name = "Sharingan"
p.Shape = "Ball"
p.CFrame = Torso.CFrame
p.BrickColor = BrickColor.new("Really black")
local O = Instance.new("Part",model)
O.Anchored = true
O.CanCollide = false
O.Transparency = 0
O.Reflectance = 0.3
O.formFactor = "Symmetric"
O.Size = Vector3.new(0, 0, 0)
O.TopSurface = "Smooth"
O.BottomSurface = "Smooth"
O.Name = "Sharingan"
O.Shape = "Ball"
O.CFrame = Torso.CFrame
O.BrickColor = BrickColor.new("Lime green")
local Mesh = Instance.new("SpecialMesh")
Mesh.Parent = O
Mesh.MeshType = "FileMesh"
Mesh.Scale = Vector3.new(1.3, 1.3, 1.3)
Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
Mesh.TextureId = ""
for i = 1,10 do
p.Size = p.Size + Vector3.new(3,3,3)
p.CFrame = Torso.CFrame
p.Transparency = p.Transparency + 0.1
O.Transparency = O.Transparency + 0.1
Mesh.Scale = Mesh.Scale + Vector3.new(4, 4, 4)
wait()
end
p:remove()
O:remove()
end
function onTouched(Taco)
if Taco.Parent.Name ~= pwn.Name and Taco.Parent.Parent.Name ~= pwn.Name then
if Taco.Parent.className == "Model" or Taco.Parent.Parent.className == "Model" then
for k,f in pairs(Taco.Parent:children()) do
if f.className == "Part" then
f.Anchored = false
coroutine.resume(coroutine.create(function()
f.Velocity = (Head.Position - f.Position).unit * -150
wait(0.4)
f.Veclovity = Vector3.new(0,0,0)
end))
elseif f.className == "ForceField" then
f:remove()
elseif f.className == "Hat" then
f:remove()
end
end
end
end
end
function shock()
local wowz = Instance.new("Part",workspace)
wowz.Anchored = true
wowz.CanCollide = false
wowz.Reflectance = 0.32
wowz.formFactor = "Custom"
wowz.Size = Vector3.new(0.2,0.2,0.2)
wowz.TopSurface = "Smooth"
wowz.Transparency = 0
wowz.BottomSurface = "Smooth"
wowz.CFrame = Torso.CFrame * CFrame.new(0,0,0)
wowz.BrickColor = BrickColor.new("Really black")
local Mesh2 = Instance.new("SpecialMesh",wow)
Mesh2.MeshType = "FileMesh"
Mesh2.Scale = Vector3.new(6,0.5,6)
Mesh2.MeshId = "http://www.roblox.com/asset/?id=20329976"
Mesh2.TextureId = ""
for i = 1,30 do
wowz.CFrame = Torso.CFrame * CFrame.new(0,-2.5,0)
wait()
wowz.CFrame = wow.CFrame * CFrame.fromEulerAnglesXYZ(0,6,0)
wowz.BrickColor = BrickColor.Random()
end
wowz:remove()
end
function spinmesh()
local wowz = Instance.new("Part",char)
wowz.Anchored = true
wowz.CanCollide = false
wowz.Reflectance = 0.32
wowz.Shape = "Ball"
wowz.Transparency = 0
wowz.formFactor = "Custom"
wowz.Size = Vector3.new(9,9,9)
wowz.TopSurface = "Smooth"
wowz.BottomSurface = "Smooth"
wowz.CFrame = Torso.CFrame
wowz.BrickColor = BrickColor.new("Really black")
wait(3)
wowz:remove()
end
meshInsertion = coroutine.create(spinmesh)
core = coroutine.create(shock)
Tewl.Name = Nim
Tewl.Selected:connect(lul)