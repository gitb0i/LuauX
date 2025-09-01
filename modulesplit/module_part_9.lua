ivable = false
shockRing.TopSurface = 0
shockRing.BottomSurface = 0
shockRing.Transparency = 0
if Mode == "Fire" then
shockRing.BrickColor = BrickColor.new("Really red")
elseif Mode == "Dark" then
shockRing.BrickColor = BrickColor.new("Bright violet")
elseif Mode == "Ice" then
shockRing.BrickColor = BrickColor.new("Bright blue")
shockRing.Reflectance = 0.2
end
local decal = Instance.new("CylinderMesh")
decal.Parent = shockRing
decal.Scale = Vector3.new(1,0.1,1)
 wait(0.2)
 local pos = hammer.CFrame * (Vector3.new(0, -2.5, 0))
 bewm(game.Workspace, pos, Player.Character)
 shockRing.CFrame = CFrame.new(pos)
 for x = 0, 1 , 0.0625 do
  delay((x*16) / 30, function() shockRing.Parent = nil shockRing.Size = Vector3.new(0, 0.4, 0) + Vector3.new(3.2, 0, 3.2) * (x*16) shockRing.Transparency = 1*x    shockRing.Parent = Player.Character end)
 end
 delay(1, function() 
  shockRing.Parent = nil   
  for ii = 1 , #AoETrue do
  table.remove(AoETrue,#AoETrue)
  end end)
end
local modemodel = Instance.new("Model",swordholder)
local mrdychng = false
function FireMode()
attack=true
Mode = "Fire"
fireboost = 5
mrdychng = true
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1+0.5*i,0.5+1*i,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80+55*i), math.rad(45-45*i), math.rad(-45+45*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1+1*i,0.5+1*i,-0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80-80*i),math.rad(-45+45*i),math.rad(45+65*i))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180*i), math.rad(90)) * CFrame.new(0, 0, 0.2)
 end 
cs(Head,1.5)
local tempmod = Instance.new("Model",swordholder)
for l = 1 , 20 do
local meshz = Instance.new("SpecialMesh")
meshz.Scale = Vector3.new(0.5,0.5,0.5)
meshz.MeshType = "Sphere"
local shellz = Instance.new("Part")
meshz.Parent = shellz
shellz.Anchored = false
shellz.formFactor = 0
shellz.Size = Vector3.new(1,1,1)
shellz.CFrame = hitbox.CFrame * CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
shellz.Parent = tempmod
shellz.Transparency = 0.5
shellz.BrickColor = BrickColor.new("Really red")
shellz.CanCollide = false
shellz.Reflectance = 0
local bv = Instance.new("BodyPosition") 
bv.Parent = shellz
bv.maxForce = Vector3.new(200000,200000,200000) 
bv.position = shellz.Position
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.025 do
wait()
shellz.Transparency = 1-1*i
end
shellz.Transparency = 0
end))
coroutine.resume(coroutine.create(function()
wait(0.05)
bv.position = hitbox.Position 
for i = 1 , 20 do
wait(0.1)
bv.position = shell.Position 
end
shellz.Parent = nil
end))
wait(0.01)
end
coroutine.resume(coroutine.create(function ()
wait(0.25)
tempmod.Parent = nil
end))
 for i = 0 , 1 , 0.2 do
                wait()
  RW.C0 = CFrame.new(1.5,1.5-1*i,0) * CFrame.fromEulerAnglesXYZ(math.rad(135-45*i), math.rad(0), math.rad(0))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(0,1.5-1*i,-1) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(110-45*i))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180), math.rad(90)) * CFrame.new(0, 0, 0.2)
 end 
bs(Head,0.75)
attackr()
for zz = 1 , 1  do
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
mesh.Scale = Vector3.new(10,5,10) * Vector3.new(0.01,0.01,0.01)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(1,1,1)
shell.CFrame = Torso.CFrame * CFrame.new(0,-1.5,0)
shell.Parent = swordholder
shell.Transparency = 0
shell.BrickColor = BrickColor.new("Really red")
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.075 do
wait()
mesh.Scale = Vector3.new(20,5,20) * Vector3.new(i,1,i)
shell.Transparency = 1*i
end
shell.Transparency = 1
shell.Parent = nil
end))
end
for zz = 1 , 1  do
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
mesh.Scale = Vector3.new(10,20,10) * Vector3.new(0.01,0.01,0.01)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(1,1,1)
shell.CFrame = Torso.CFrame * CFrame.new(0,1,0)
shell.Parent = swordholder
shell.Transparency = 0
shell.BrickColor = BrickColor.new("Really red")
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.05 do
wait()
mesh.Scale = Vector3.new(10,20,10) * Vector3.new(i,1,i)
shell.Transparency = 1*i
end
shell.Transparency = 1
shell.Parent = nil
end))
end
for zz = 1 , 3  do
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(5*zz,5*zz,5*zz) * Vector3.new(0.01,0.01,0.01)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 3
shell.Size = Vector3.new(1,1,1)
shell.CFrame = Torso.CFrame * CFrame.new(0,-1,0)
shell.Parent = swordholder
shell.Transparency = 0
if math.fmod(zz,2) == 1 then
shell.BrickColor = BrickColor.new("Bright orange")
elseif math.fmod(zz,2) == 0.5 then
shell.BrickColor = BrickColor.new("Bright red")
else
shell.BrickColor = BrickColor.new("Bright yellow")
end
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.025 do
wait()
mesh.Scale = Vector3.new(10*zz,10*zz,10*zz) * Vector3.new(i,i,i)
shell.Transparency = 1*i
end
shell.Transparency = 1
shell.Parent = nil
end))
end
 
 
for ii,z in pairs(modemodel:GetChildren()) do
z.Parent = nil
end
 
local wing1m = Instance.new("BlockMesh")
wing1m.Scale = Vector3.new(1,1,1)
local wing1p = Instance.new("Part")
wing1p.formFactor = 3
wing1p.CanCollide = false
wing1p.Name = "FlameWingP1"
wing1p.Locked = true
wing1p.Size = Vector3.new(0.2,0.2,0.2)
wing1p.Parent = modemodel
wing1m.Parent = wing1p
wing1p.BrickColor = BrickColor.new("Bright red")
wing1p.Transparency = 1
local wing1w = Instance.new("Weld")
wing1w.Parent = wing1p
wing1w.Part0 = wing1p
wing1w.Part1 = Torso
wing1w.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0 , 0)
wing1w.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,math.rad(0)) * CFrame.new(-1, 0, 0) 
local wing2m = Instance.new("BlockMesh")
wing2m.Scale = Vector3.new(1,1,1)
local wing2p = Instance.new("Part")
wing2p.formFactor = 3
wing2p.CanCollide = false
wing2p.Name = "FlameWingP2"
wing2p.Locked = true
wing2p.Size = Vector3.new(0.2,0.2,0.2)
wing2p.Parent = modemodel
wing2m.Parent = wing2p
wing2p.BrickColor = BrickColor.new("Bright red")
wing2p.Transparency = 1
local wing2w = Instance.new("Weld")
wing2w.Parent = wing2p
wing2w.Part0 = wing2p
wing2w.Part1 = Torso
wing2w.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0 , 0)
wing2w.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,math.rad(0)) * CFrame.new(1, 0, 0) 
coroutine.resume(coroutine.create(function()
for ringi = math.rad(-20) , math.rad(130) , math.rad(10) do
wait(0.1)
local ringm = Instance.new("BlockMesh")
ringm.Scale = Vector3.new(1,1,1)
local ringp = Instance.new("Part")
ringp.formFactor = 3
ringp.CanCollide = false
ringp.Name = "FlameWing"..ringi
ringp.Locked = true
ringp.Size = Vector3.new(0.2,2,0.8)
ringp.Parent = modemodel
ringm.Parent = ringp
ringp.BrickColor = BrickColor.new("Bright red")
ringp.Reflectance = 0.1
ringp.Transparency = 1
local ringw = Instance.new("Weld")
ringw.Parent = ringp
ringw.Part0 = ringp
ringw.Part1 = wing1p
ringw.C1 = CFrame.fromEulerAnglesXYZ(ringi, 0, 0) * CFrame.new(0, ringp.Size.y/4 , 0)
ringw.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,math.rad(45)) * CFrame.new(0, -1, 0) --* CFrame.new(-0.6, 0, 0) ---msh5.Scale.x/1.625
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.025 do
wait()
ringp.Transparency = 1-1*i
end
ringp.Transparency = 0
end))
end end))
coroutine.resume(coroutine.create(function()
for ringi = math.rad(-20) , math.rad(130) , math.rad(10) do
wait(0.1)
local ringm = Instance.new("BlockMesh")
ringm.Scale = Vector3.new(1,1,1)
local ringp = Instance.new("Part")
ringp.formFactor = 3
ringp.CanCollide = false
ringp.Name = "FlameWing2_"..ringi
ringp.Locked = true
ringp.Size = Vector3.new(0.2,2,0.8)
ringp.Parent = modemodel
ringm.Parent = ringp
ringp.BrickColor = BrickColor.new("Bright red")
ringp.Reflectance = 0.1
ringp.Transparency = 1
local ringw = Instance.new("Weld")
ringw.Parent = ringp
ringw.Part0 = ringp
ringw.Part1 = wing2p
ringw.C1 = CFrame.fromEulerAnglesXYZ(ringi+math.rad(0), 0, 0) * CFrame.new(-0, ringp.Size.y/4 , 0)
ringw.C0 = CFrame.fromEulerAnglesXYZ(0, 0,math.rad(-45)) * CFrame.new(-0, -1, 0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.025 do
wait()
ringp.Transparency = 1-1*i
end
ringp.Transparency = 0
end))
end end))
local wingp1m = Instance.new("SpecialMesh")
wingp1m.Scale = Vector3.new(1,1,1)
wingp1m.MeshType = "Sphere"
local wingp1p = Instance.new("Part")
wingp1p.formFactor = 3
wingp1p.CanCollide = false
wingp1p.Name = "FlameOrb"
wingp1p.Locked = true
wingp1p.Size = Vector3.new(1,1,1)
wingp1p.Parent = modemodel
wingp1m.Parent = wingp1p
wingp1p.Reflectance = 0.2
wingp1p.BrickColor = BrickColor.new("Bright red")
local wingp1w = Instance.new("Weld")
wingp1w.Parent = wingp1p
wingp1w.Part0 = wingp1p
wingp1w.Part1 = Torso
wingp1w.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0 , 0)
wingp1w.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,math.rad(0)) * CFrame.new(0, -0.5, 0.5) 
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.025 do
wait()
wingp1p.Transparency = 1-1*i
end
wingp1p.Transparency = 0
end))
local Firee = modemodel
local Spawn = wingp1p
local colors = {BrickColor.new("Bright red"),BrickColor.new("Bright yellow"),BrickColor.new("Bright orange")} 
local Embers = {} 
local modelz = Instance.new("Model",Firee)
modelz.Name = "FireHolder"
for X = 1, 15 do
local f = Instance.new("Part") 
f.Parent = nil
f.BrickColor = colors[math.random(1, # colors)] 
f.Size = Vector3.new(1,1,1) 
f.formFactor = 3
f.Anchored = true 
f.Locked = true 
f.CanCollide = false 
f.Transparency = 0.5 
f.Name = "Fire"
f.TopSurface = 0
f.BottomSurface = 0
Instance.new("BlockMesh",f)
table.insert(Embers, f) 
end 
local R = 0
coroutine.resume(coroutine.create(function ()
repeat 
wait() 
R = R + 1
for X = 1, # Embers do 
Embers[X].Parent = modelz
local FM = math.fmod(R + X, # Embers) 
if FM == 1 then 
RandPos = Vector3.new(math.random(-Spawn.Size.x * 5, Spawn.Size.x * 5) / 10, Spawn.Size.y / 2, math.random(-Spawn.Size.x * 5, Spawn.Size.x * 5) / 10) 
RandDir = Vector3.new(math.random(-100,100), math.random(-100,100), math.random(-100,100)) 
Embers[X].CFrame = CFrame.new(Spawn.Position + RandPos, (Spawn.Position * rndm) + RandPos + RandDir) 
Embers[X].Mesh.Scale = Vector3.new(1,1,1)
else 
Embers[X].CFrame = Embers[X].CFrame + Embers[X].CFrame.lookVector*0.5
Embers[X].Mesh.Scale = Embers[X].Mesh.Scale - Vector3.new(0.1,0.1,0.1)
end 
end 
until wingp1p.Parent == nil
for i = 0 ,1 , 0.1 do
wait(0.2)
for X = 1, # Embers do 
Embers[X].Transparency = 0.5+0.5*i
end
end
for X = 1, # Embers do 
Embers[X].Parent = nil
end
end))
  for ii = 1 , #AoETrue do
  table.remove(AoETrue,#AoETrue)
  end
 wait(0.25)
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5,0.5+0.5*i,0) * CFrame.fromEulerAnglesXYZ(math.rad(90+25*i), math.rad(0), math.rad(0))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(0,0.5+0.5*i,-1) * CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(65+25*i))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180), math.rad(90)) * CFrame.new(0, 0, 0.2)
 end 
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5,1-0.5*i,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(115-35*i), math.rad(45*i), math.rad(-45*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1*i,1-0.5*i,-1+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80*i),math.rad(0),math.rad(90-45*i))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180-180*i), math.rad(90)) * CFrame.new(0, 0, 0.2)
 end 
  RW.C0 = CFrame.new(1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80), math.rad(45), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80),math.rad(-45),math.rad(45))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0.2)
attack=false
wait(1.5)
mrdychng = false
end
function NeutralMode()
attack=true
Mode = "None"
fireboost = 0
iceboost = 0
darkboost = 0
ss(Head,1)
cs(Head,2)
mrdychng = true
 for i = 0 , 1 , 0.2 do
                wait()
  RW.C0 = CFrame.new(1+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80+10*i), math.rad(45), math.rad(-45+45*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(100*i), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80+10*i),math.rad(-45),math.rad(45-45*i))
  LW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(100*i), math.rad(0), math.rad(0))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(70*i), math.rad(90)) * CFrame.new(0, 0, 0.2)
 end 
coroutine.resume(coroutine.create(function()
for ii,z in pairs(modemodel:GetChildren()) do
if string.sub(z.Name,0,string.len(z.Name)-1) ~= "FlameWingP" then
wait()
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
z.Transparency = (1-z.Transparency)*i
end
z.Parent = nil
end))
end
end
wait(0.5)
for ii,z in pairs(modemodel:GetChildren()) do
wait()
z.Parent = nil
end
end))
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(45), math.rad(0))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(100+20*i), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(-45),math.rad(0))
  LW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(100+20*i), math.rad(0), math.rad(0))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(70+20*i), math.rad(90)) * CFrame.new(0, 0, 0.2)
 end 
 
 wait(0.25)
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90-10*i), math.rad(45), math.rad(-45*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(120-120*i), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90-10*i),math.rad(-45),math.rad(45*i))
  LW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(120-120*i), math.rad(0), math.rad(0))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90-90*i), math.rad(90)) * CFrame.new(0, 0, 0.2)
 end 
  RW.C0 = CFrame.new(1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80), math.rad(45), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80),math.rad(-45),math.rad(45))
  LW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0.2)
attack=false
wait(0.5)
mrdychng = false
end
 
function ob1d(mouse) 
hold = true 
if attack == true then return end
end 
function ob1u(mouse)  
end 
buttonhold = false
function key(key)
if attack == true then return end
if key == "q" then
if attacktype == 1 then
Combo1a()
elseif attacktype == 2 then
Combo1b()
elseif attacktype == 3 then
Combo1c()
end
end
if key == "e" then
if attacktype == 1 then
BlizzardSword()
end
end
if key == "r" then
FlameTrail()
end
if key == "t" then
LifeDrain()
end
if Mode == "None" and not mrdychng then
if key == "z" then
FireMode()
end
elseif not mrdychng then
if key == "z" or key == "x" or key == "c" then
NeutralMode()
end
end
end 
 
function key2(key) 
end 
function s(mouse) 
repeat wait() until not attack
while ev.Value ~= false do
wait(0.1)
end
MMouse = mouse
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
        equipanim()
  ev.Value = true

end 
function ds(mouse) 
repeat wait() until not attack
while ev.Value == false do
wait(0.1)
end
 
hideanim()
        wait(0.1)
ev.Value = false
end 
Tool.Selected:connect(s) 
Tool.Deselected:connect(ds) 

end}
module[3] = {"Yoyo",function()

Player = game:GetService("Players").LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
Neck = Torso.Neck
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
attack = false 
attacktype = 1 
damage = 600 
oridamage = 1000 
attackdebounce = false 
ssdebounce=false
MMouse=nil
combo=0
GyroNumb=0
cond=nil
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
 
 
if Character:findFirstChild("Yoyo",true) ~= nil then 
Character:findFirstChild("Yoyo",true).Parent = nil 
end 
 
 
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp = it("Part")
fp.formFactor = formfactor 
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = false 
fp.Locked=true
fp.BrickColor = brickcolor
fp.Name = name
fp.Size = size
fp.Position = Torso.Position 
fp.BottomSurface="Smooth"
fp.TopSurface="Smooth"
fp:BreakJoints()
return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh = it(Mesh) 
mesh.Parent = part
if Mesh=="SpecialMesh" then
mesh.MeshType = meshtype
mesh.MeshId = meshid
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld = it("Weld") 
weld.Parent = parent
weld.Part0 = part0 
weld.Part1 = part1 
weld.C0 = c0
return weld
end
 
local modelzorz = Instance.new("Model") 
modelzorz.Parent = Character 
modelzorz.Name = "Yoyo" 
 
local prt1=part(3,modelzorz,0,0,Torso.BrickColor,"Part1",vt(1,1,1))
prt1.CanCollide=true
 
local msh1=mesh("CylinderMesh",prt1,"","",vt(0,0,0),vt(0.4,0.3,0.4))
 
local wld1=weld(prt1,prt1,Torso,euler(1.57,0,0)*cf(-1,1,-0.6))
 
numb=-0.15
for i=1,2 do
local prt2=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part2",vt(1,1,1))
local msh2=mesh("CylinderMesh",prt2,"","",vt(0,0,0),vt(0.6,0.1,0.6))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,numb,0))
numb2=0
for i=1,16 do
local prt3=part(3,modelzorz,0.5,0,BrickColor.new("White"),"Part3",vt(1,5,1))
local msh3=mesh("SpecialMesh",prt3,"Wedge","",vt(0,0,0),vt(0.05,0.1,0.1))
local wld3=weld(prt3,prt3,prt2,euler(-3.14+0.785,0,1.57)*cf(0,0,0.3))
wld3.C1=euler(0,numb2,0)
--numb2=numb2+0.785
numb2=numb2+0.3925
end
numb=numb+0.3
end
 
local string1=part(3,modelzorz,0,0,BrickColor.new("Really black"),"String1",vt(1,1,1))
local stringmsh1=mesh("CylinderMesh",string1,"","",vt(0,0,0),vt(0.1,1,0.1))
local stringwld1=weld(string1,string1,prt13,euler(0,0,0)*cf(0,0,0))
 
local strmdl = "Arrow"
coroutine.resume(coroutine.create(function()
repeat
wait(-10)
local top = RightArm.CFrame*cf(0,-1,0)
local bottom = prt1.CFrame
local oristrpos
if strmdl == "Bow" then
oristrpos = CFrame.new((top.p+bottom.p)/2)
elseif strmdl == "Arrow" then
oristrpos = prt1.CFrame
end
local mg1 = (top.p - oristrpos.p).magnitude
local mg2 = (bottom.p - oristrpos.p).magnitude
 
string1.Size = Vector3.new(0.2,mg1,0.2)
string1.Anchored=true
string1.CFrame = CFrame.new((top.p+oristrpos.p)/2,oristrpos.p) * CFrame.Angles(math.rad(90),0,0)
 
--[[
--stringmsh1.Scale=vt(0.1,1,0.1)
stringmsh1.Scale=vt(0.1,mg1,0.1)
--cff=CFrame.new(prt1.CFrame.p,RightArm.Position)*angles(math.rad(90),0,0)*cf(0,-mg1/2,0)
cff=cf(RightArm.CFrame*cf(0,-1,0).p,prt1.Position)*angles(math.rad(90),0,0)*cf(0,-mg1/2,0)
hit2=string1
hit=prt1
stringwld1.Parent=string1
stringwld1.Part0=hit2
stringwld1.Part1=hit
HitPos=cff.p
local CJ = CFrame.new(HitPos)
local C0=cff:inverse() *CJ 
local C1=hit.CFrame:inverse() * CJ 
stringwld1.C0=C0
stringwld1.C1=C1
]]
until false
end))
 
 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Yoyo" 
script.Parent = Tool 
end 
Bin = script.Parent 
 
local bg = it("BodyGyro") 
bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
bg.P = 20e+003 
bg.Parent = nil 
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
wait() 
sou:play() 
wait(6) 
sou:Remove() 
end))
end
 
function unequipweld() 
wld1.Part1=Torso
wld1.C0=euler(1.57,0,0)*cf(-1,1,-0.6)
end 
 
function equipweld() 
wld1.Part1=RightArm
wld1.C0=euler(0,0,1.57)*cf(0,1.1,0)
end 
 
function hideanim() 
equipped=false
wait(0.1) 
bg.Parent=nil
unequipweld() 
end 
 
function equipanim() 
equipped=true
wait(0.1) 
equipweld() 
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end 
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x2,y2,z2)
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function() 
for i=0,1,0.1 do
wait()
prt.CFrame=prt.CFrame
prt.Transparency=i
msh.Scale=msh.Scale+vt(x3,y3,z3)
end
prt.Parent=nil
end))
end
 
function SpecialEffect() 
local prt=part(3,workspace,1,0,BrickColor.new("Really black"),"Part",vt(1,1,1))
prt.Anchored=true
prt.CFrame=Torso.CFrame
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.2 do
wait(0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(10,10,10)
end
prt.Parent=nil
end),prt,msh)
end 
 
Damagefunc1=function(hit,Damage,Knockback)
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.2) 
        attackdebounce = false 
        end)) 
        Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=Damage+math.random(0,10)
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5)
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Head.CFrame.lookVector*Knockback+Head.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
--                rl.Parent=hit
coroutine.resume(coroutine.create(function(vel) 
wait(1) 
vel:Remove() 
end),rl) 
                game:GetService("Debris"):AddItem(vp,.25)
                game:GetService("Debris"):AddItem(r,.5)
                                c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
        end 
end
 
Damagefunc2=function(hit,Damage,Knockback)
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        blocked=false
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent:FindFirstChild("Torso")~=nil then
                Damage=Damage
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
--[[                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*2
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end]]
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print("herp")
                if block.Value>0 then
                blocked=true
                block.Value=block.Value-3
                print(block.Value)
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5)
                else
                h:TakeDamage(1)
                showDamage(hit.Parent,1,.5)
                end
--if blocked==false then
--end
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,0,0)
bodyVelocity.P=5000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=hit
coroutine.resume(coroutine.create(function(Vel) 
wait(1) 
Vel:Remove() 
end),bodyVelocity) 
                game:GetService("Debris"):AddItem(vp,1)
                                c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
end
 
showDamage=function(Char,Dealt,du)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=BrickColor:Red()
        if CRIT==true then
                c.BrickColor=BrickColor.new("White")
        end
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        f=Instance.new("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        f.position=c.Position+Vector3.new(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end
 
local function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
function oneslash()
attack=true
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0.785*i)
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5*i,0,0)
end
for i=0,1,0.2 do
wait()
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
Neck.C0=necko*euler(0,0,0.785-2.355*i)
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5+0.5*i,0,-offset)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-0.2*i,-0.2-1.37*i)
end
wait(0.2)
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1) 
prt1.Velocity=vt(0,0,0)
wld1.Parent=nil
local baseprt=part(3,workspace,0,1,BrickColor.new("Black"),"BasePart",vt(1,1,1))
--[[local hit,pos = rayCast(prt1.Position,MMouse.Hit.p,100,game) 
local hit,pos = game.Workspace:FindPartOnRay(Ray.new(prt1.Position, MMouse.Hit.p.unit * (100)), workspace) 
print(pos)
print(hit)
baseprt.CFrame=CFrame.new(pos)]]
baseprt.CFrame=RightArm.CFrame*cf(0,-70,0)
fd=Instance.new("BodyPosition")
fd.P=200
fd.D=60
fd.maxForce=Vector3.new(math.huge,math.huge,math.huge)
fd.position=baseprt.Position
fd.Parent=prt1
coroutine.resume(coroutine.create(function(BodyPos)
while fd.Parent~=nil do
wait()
so("http://roblox.com/asset/?id=10209640",prt1,0.4,3) 
end
end),fd)
con1=prt1.Touched:connect(function(hit) 
if hit==baseprt then
coroutine.resume(coroutine.create(function(BodyPos)
for i=1,20 do
wait(0)
BodyPos.position=RightArm.Position
end
end),fd)
con1:disconnect()
con2=prt1.Touched:connect(function(hit) 
if hit==RightArm then
fd.Parent=nil
wld1.Parent=RightArm
wld1.C0=euler(0,0,1.57)*cf(0,1.1,0)
con2:disconnect()
end
end)
end
end) 
cond=prt1.Touched:connect(function(hit) Damagefunc1(hit,100,200) end) 
wait(0.5)
coroutine.resume(coroutine.create(function(BodyPos)
for i=1,20 do
wait(0)
BodyPos.position=RightArm.Position
end
end),fd)
wait(1)
cond:disconnect()
fd.Parent=nil
wld1.Parent=RightArm
wld1.C0=euler(0,0,1.57)*cf(0,1.1,0)
baseprt.Parent=nil
attack=false
end
 
function YoyoGrab()
attack=true
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0.785*i)
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5*i,0,0)
end
for i=0,1,0.2 do
wait()
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
Neck.C0=necko*euler(0,0,0.785-2.355*i)
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5+0.5*i,0,-offset)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-0.2*i,-0.2-1.37*i)
end
wait(0.2)
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1) 
prt1.Velocity=vt(0,0,0)
wld1.Parent=nil
local baseprt=part(3,workspace,0,1,BrickColor.new("Really black"),"BasePart",vt(1,1,1))
--[[local hit,pos = rayCast(prt1.Position,MMouse.Hit.p,100,game) 
local hit,pos = game.Workspace:FindPartOnRay(Ray.new(prt1.Position, MMouse.Hit.p.unit * (100)), workspace) 
print(pos)
print(hit)
baseprt.CFrame=CFrame.new(pos)]]
baseprt.CFrame=RightArm.CFrame*cf(0,-200,0)
fd=Instance.new("BodyPosition")
fd.P=200
fd.D=60
fd.maxForce=Vector3.new(math.huge,math.huge,math.huge)
fd.position=baseprt.Position
fd.Parent=prt1
coroutine.resume(coroutine.create(function(BodyPos)
while fd.Parent~=nil do
wait()
so("http://roblox.com/asset/?id=10209640",prt1,0.4,3) 
end
end),fd)
coroutine.resume(coroutine.create(function()
wait(0.1)
con1=prt1.Touched:connect(function(hit) 
if hit.Name~="String1" then
fd.Parent=nil
prt1.Anchored=true
fddd=Instance.new("BodyPosition")
fddd.P=2000
fddd.D=600
fddd.maxForce=Vector3.new(math.huge,math.huge,math.huge)
fddd.position=prt1.Position
fddd.Parent=RightArm
coroutine.resume(coroutine.create(function(BodyPos)
wait(1)
prt1.Anchored=false
wld1.Parent=RightArm
wld1.C0=euler(0,0,1.57)*cf(0,1.1,0)
BodyPos.Parent=nil
end),fddd)
end
end) 
end))
cond=prt1.Touched:connect(function(hit) Damagefunc1(hit,100,200) end) 
wait(2)
con1:disconnect()
coroutine.resume(coroutine.create(function(BodyPos)
for i=1,20 do
wait(0)
BodyPos.position=RightArm.Position
end
end),fd)
wait(1)
cond:disconnect()
fd.Parent=nil
wld1.Parent=RightArm
wld1.C0=euler(0,0,1.57)*cf(0,1.1,0)
baseprt.Parent=nil
attack=false
end
 
function ob1d(mouse) 
if attack == true then return end 
attack=true
coroutine.resume(coroutine.create(function()
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 9000
bg.Parent = Torso
--wld1.C0 = euler(0,0,0) * cf(0,0,0) 
while attack==true do
wait()
local pos4 = vt(workspace.CurrentCamera.CoordinateFrame.X,Head.Position.Y,workspace.CurrentCamera.CoordinateFrame.Z)
bg.cframe = cf(Head.Position,pos4) * euler(0,3.14+GyroNumb,0) * cf(0,0,0) --cf(Torso.Position,MMouse.Hit.p) * 
bg.Parent = Head
local pos5 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
--[[Neck.C0=necko*euler(0,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)]]
end
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0)
Neck.C1=necko2*euler(0,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
bg.Parent=nil
end
end))
hold=true
oneslash()
--twoslash()
end 
 
function ob1u(mouse) 
hold = false 
 
end 
 
buttonhold = false 
 
eul=0
function key(key) 
if attack == true then return end 
if key=="z" or key=="x" or key=="c" or key=="v" then
coroutine.resume(coroutine.create(function()
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 9000
bg.Parent = Torso
--wld1.C0 = euler(0,0,0) * cf(0,0,0) 
attack=true
while attack==true do
wait()
local pos4 = vt(workspace.CurrentCamera.CoordinateFrame.X,Head.Position.Y,workspace.CurrentCamera.CoordinateFrame.Z)
bg.cframe = cf(Head.Position,pos4) * euler(0,3.14+GyroNumb,0) * cf(0,0,0) --cf(Torso.Position,MMouse.Hit.p) * 
bg.Parent = Head
local pos5 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
--[[Neck.C0=necko*euler(0,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)]]
end
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0)
Neck.C1=necko2*euler(0,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
bg.Parent=nil
end
end))
end
if key=="z" then
YoyoGrab()
end
if key=="x" then
--SonicExplosion()
end
if key=="c" then
end
end 
 
function key2(key) 
 
end 
 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
unsheathed = true 
player = Player 
ch = Character 
MMouse = mouse 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
-- 
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
--_G.L = LW 
--
equipanim() 
end 
 
function ds(mouse) 
hideanim() 
wait(0) 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 

end}
module[4] = {"Zeus Blade",function()
-----------------------------------------------[[LAWL]]------------------------------------------------------
--[[Run as a LocalScript
	Never will finish
	Credit to BRANNLAMAR2]]--
Me = game:service("Players").LocalPlayer
Char = Me.Character
lastpoint = Vector3.new(0, 0, 0)
Modes = {"Ranged", "Blocking", "Normal"}
Mode = Modes[Number]
leds = {}
Jumped = 0
Jumping = false
AbletoJump = true
Char.Humanoid.WalkSpeed = 30
Combo = 0
Guarding = false
attackdebounce = false
Selected = false
NormalModeColor = "Really black"
RangedModeColor = "Really red"
BlockModeColor = "New Yeller"
BaseColor = "White"
Activated = false
LeftArm = Char["Left Arm"]  
RightArm = Char["Right Arm"]  
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
RSH, LSH = nil, nil
if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin", Me.Backpack)
h.Name = "[[>> BrannZeus <<]] Blade"
script.Name = "Made by: [[>> BrannZeus� <<]]"
script.Parent = h
end
bin = h
Model = Instance.new("Model", Char)
Model.Name = "[[>> BrannZeus <<]] Blade"
Make = {["P"] = function(parent, x,y,z, color, transparency, cancollide, anchored)
c = Instance.new("Part",Model)
c.TopSurface,c.BottomSurface = 0,0
c.Locked = true
c.formFactor = "Custom"
c.Size = Vector3.new(x,y,z)
if color ~= "random" then
c.BrickColor = BrickColor.new(color)
else c.BrickColor = BrickColor:random() end
c.Transparency = transparency
c.CanCollide = cancollide
if anchored ~= nil then c.Anchored = anchored end
if parent ~= nil then c.Parent = parent end
return c
end;
["BG"] = function(parent)
local c = Instance.new("BodyGyro",parent)
c.P = 10e+15
c.cframe = parent.CFrame
c.maxTorque = Vector3.new(c.P,c.P,c.P)
return c
end;
["BP"] = function(parent, pos)
local bp = Instance.new("BodyPosition",parent)
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.position = pos
return bp
end;
["F"] = function(parent, size, heat, color, secondarycolor, enabled)
f = Instance.new("Fire",parent)
f.Size = size
f.Heat = heat
if enabled ~= nil then f.Enabled = enabled end
if color ~= nil then f.Color = BrickColor.new(color).Color end
if secondarycolor ~= nil then f.SecondaryColor = BrickColor.new(secondarycolor).Color end
return f
end;
["FM"] = function(parent, meshid, x,y,z, meshtexture)
if meshid == "cylinder" then
mesh = Instance.new("CylinderMesh",parent)
mesh.Scale = Vector3.new(x,y,z)
return mesh
else
mesh = Instance.new("SpecialMesh",parent)
 
if meshid ~= "sphere" then
if type(meshid) == "number" then mesh.MeshId = "rbxassetid://"..meshid else
mesh.MeshId = "rbxassetid://"..meshids[meshid]
end
 
else mesh.MeshType = 3 end
 
mesh.Scale = Vector3.new(x,y,z)
 
if meshtexture ~= nil then
if type(meshtexture) == "number" then mesh.TextureId = "rbxassetid://"..meshtexture else
mesh.TextureId = "rbxassetid://"..textureids[meshtexture] end
 
end
 
return mesh
end
end}
M = {["Cos"] = function(a) return math.cos(a) end;
["Sin"] = function(a) return math.sin(a) end;
["Rad"] = function(a) return math.rad(a) end}
FakeTorso = Make.P(Char, 1,1,1, "White", 1, false, true)
FakeTorso.BrickColor = Char.Torso.BrickColor
Mesh = Instance.new("BlockMesh", FakeTorso)
Mesh.Scale = Char.Torso.Size
BaseThing = Make.P(Model, 1,1,1, NormalModeColor, 1 ,false, true)
BaseMesh = Make.FM(BaseThing,68075671 , 0.5, 0.5, 0.5)
Handle = Make.P(Model, 0.3,1.5,0.3, BaseColor, 1 ,false, true)
Tip2 = Make.P(Model, 0.23, 0.1, 0.7, NormalModeColor, 1, false, true)
Tip1 = Make.P(Model, 0.23, 0.1, 0.7, NormalModeColor, 1, false, true)
BigTip1 = Make.P(Model, 0.22, 0.4, 0.8, BaseColor, 1, false, true)
BigTip2 = Make.P(Model, 0.22, 0.4, 0.8, BaseColor, 1, false, true)
HitBox = Make.P(Model, 2.5, 0.25, 4.3, "White", 1, false, true)
HitBox.Name = "HitBox"
Diamond = Make.P(Model, 1,1,1, BaseColor, 1 ,false, true)
DiamondMesh = Make.FM(Diamond,9756362 , 0.3, 0.3, 0.5)
HandleSturf = Make.P(Model, 0.31,0.31,0.29, NormalModeColor, 1 ,false, true)
HandleSturf2 = Make.P(Model, 0.31,0.31,0.29, NormalModeColor, 1 ,false, true)
HandleSturf3 = Make.P(Model, 0.31,0.31,0.29, NormalModeColor, 1 ,false, true)
LongSword = Make.P(Model, 0.8, 0.22, 3.7, BaseColor, 1, false, true)
LongSword2 = Make.P(Model, 0.39, 0.23, 3.6, NormalModeColor, 1, false, true)
BigWedgeMesh2 = Instance.new("SpecialMesh", BigTip2)
BigWedgeMesh2.MeshType = "Wedge"
BigWedgeMesh1 = Instance.new("SpecialMesh", BigTip1)
BigWedgeMesh1.MeshType = "Wedge"
WedgeMesh1 = Instance.new("SpecialMesh", Tip1)
WedgeMesh1.MeshType = "Wedge"
WedgeMesh1.Scale = Vector3.new(1, 1, 1)
WedgeMesh2 = Instance.new("SpecialMesh", Tip2)
WedgeMesh2.MeshType = "Wedge"
WedgeMesh2.Scale = Vector3.new(1, 1, 1)
LongMesh = Instance.new("BlockMesh", LongSword)
LongMesh.Scale = Vector3.new(1, 1, 1)
LongMesh2 = Instance.new("BlockMesh", LongSword2)
LongMesh2.Scale = Vector3.new(1, 1, 1)
HandleWedge1 = Make.P(Model, 0.215, 0.9, 1.5, BaseColor, 1, false, true)
HandleWedge2 = Make.P(Model, 0.24, 0.9, 1.5, BaseColor, 1, false, true)
WedgeMesh11 = Instance.new("SpecialMesh", HandleWedge2)
WedgeMesh11.MeshType = "Wedge"
WedgeMesh11.Scale = Vector3.new(1, 1, 1)
WedgeMesh22 = Instance.new("SpecialMesh", HandleWedge1)
WedgeMesh22.MeshType = "Wedge"
WedgeMesh22.Scale = Vector3.new(1, 1, 1)
Handle2 = Make.P(Model, 2, 0.22, 0.4, BaseColor, 1, false, true)
HandleBlock = Instance.new("BlockMesh", Handle2)
HandleBlock.Scale = Vector3.new(1, 1, 1)
function Dash()
Activated = true
Holding = true
for i = 0,1,0.1 do 
wait() 
Char.Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.4*i,0,0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.8*i,0.5,-0.8*i) * CFrame.fromEulerAnglesXYZ(1.2*i,0,-1.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1*i,0) 
end
Hitdmg=HitBox.Touched:connect(function(hit) Damage(hit, math.random(20, 30)) end)
local vel = Instance.new("BodyVelocity", Char.Torso)
vel.maxForce = Vector3.new(math.huge,math.huge,math.huge)
vel.velocity = Char.Head.CFrame.lookVector * 60
while Holding == true do 
wait()
Effect(Char.Torso, 3.5, 2, 3.5, 0, 0,1, 1.5,0,0,BrickColor.new(NormalModeColor), 20329976)
vel.velocity = Char.Head.CFrame.lookVector * 50
end
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1.4+1.4*i,0,-0.3+0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(-1.2+1.2*i,0,-1.2+1.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
Hitdmg:disconnect()
vel:remove()
Activated = false
end
function FirstSlash()
Activated = true 
Combo = 1 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5+2*i,0,0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5, 0.5*i, 0)
end
Hitdmg=HitBox.Touched:connect(function(hit) Damage(hit,math.random(10,20)) end)
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,-0.3+0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(0.5+2,0,0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+2.3*i,0.5, 0)
end 
wait(0.2) 
Activated = false
Hitdmg:disconnect() 
end

function SecondSlash()
Activated = true 
Combo = 2
Hitdmg=HitBox.Touched:connect(function(hit) Damage(hit,math.random(10,20)) end)
for i = 0,1,0.1 do 
wait()
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C1 = CFrame.new(0, 1.55, 0) * CFrame.fromEulerAnglesXYZ(-1*i,-1.2*i,0)
end
wait(0.2)
Activated = false
Hitdmg:disconnect() 
end
function ThirdSlash()
Activated = true 
Combo = 3
Hitdmg=HitBox.Touched:connect(function(hit) Damage(hit,math.random(10,20)) end)
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
wait()
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,1,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.6*i,0,0)
end
end))
wait(0.2)
Activated = false
Hitdmg:disconnect()
end
function Jump()
Jumped = Jumped +1
Jumping = true
Jumpp = Instance.new("BodyVelocity", Char.Torso)
Jumpp.P = 500
Jumpp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Jumpp.velocity = Char.Torso.Position + Vector3.new(0, 80, 0)
game:service("Debris"):AddItem(Jumpp, 0.0000000000001)
Jumpp:Destroy(wait(0.0000000000001))
Jumpp:Remove(wait(0.0000000000001))
wait(1)
AbletoJump = false
Jumping = false
end
function SuperCombo()
Activated = true
for i = 0,1,0.1 do 
wait()
Char.Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(-0.3*i,0,0)
Char.Torso.CFrame = Char.Torso.CFrame*CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
sturf = Make.P(Char, 1,1,1, NormalModeColor, 1, false, true)
sturf.CFrame = Char.Torso.CFrame*CFrame.new(0,-2.8,0)
msh = Make.FM(sturf,'cylinder',0,0,0)
for i = 0,1,0.1 do wait(0.025)
sturf.Transparency = sturf.Transparency -0.06
msh.Scale = msh.Scale + Vector3.new(1.5,0.025,1.5)
end
for i, v in pairs(game:service("Players"):GetPlayers()) do
if v.Name ~= Me.Name and (v.Character.Torso.Position - Char.Torso.Position).magnitude < 10 then
EBp = Instance.new("BodyPosition", v.Character.Torso)
EBp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
EBp.position = v.Character.Torso.Position + Vector3.new(0, 10, 0)
game:service("Debris"):AddItem(EBp,1)
end
end

wait(1)
Char.Torso.Neck.C0=necko
sturf:remove()
Activated = false
end
function Guard()
Activated = true
Guarding = true
Mode = "Blocking"
for i = 0,1,0.1 do 
wait()
Char.Torso.CFrame = Char.Torso.CFrame*CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, -0.25*i, 0) 
Char.Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0.5*i)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5*i,0,-1.25*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0.4*i) 
end
SaveHealth = Char.Humanoid.Health
taco = Instance.new("Part",Char)
taco.Size = Vector3.new(1,1,1)
taco.CanCollide = false
taco.Anchored = true
taco.Transparency = 1
while Guarding == true do wait()
for i = 0,1,0.1 do 
wait()
taco.CFrame = Char.Torso.CFrame*CFrame.new(-3,0,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
Shield = Effect(Char.Torso, 4,4,3, -4,0,-1, math.pi/-2,0,1,BrickColor.new(BlockModeColor), 60120613)
end
if Char.Humanoid.Health < SaveHealth then
DamageTaken = SaveHealth - Char.Humanoid.Health
end
pcall(function() Char.Humanoid.Health:TakeDamage(DamageTaken/2) end)
coroutine.resume(coroutine.create(function()
for i, x in pairs(game:service("Players"):GetPlayers()) do
if x.Name ~= Me.Name and (x.Character.Torso.Position - RightArm.Position).magnitude < 7 then
derp = Instance.new("BodyVelocity", x.Character.Torso)
derp.P = 200
derp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
derp.velocity = taco.CFrame.lookVector * 80
game:service("Debris"):AddItem(derp,0.2)
end
end
end))
end
taco:Destroy()
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do 
wait()
Char.Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,-0.5+0.5*i)
Char.Torso.CFrame = Char.Torso.CFrame*CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0.25*i, 0)
end
end))
Activated = false
Mode = "Normal"
end
function Shockwave()
Activated = true
Mode = "Ranged"
derpin = true
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5+1.3*i,0,0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,1,0) 
RW.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(-0.9*i,0,0)
end
Gyro = Instance.new("BodyGyro", Char.Torso)
Gyro.D = 50
Gyro.cframe = Char.Torso.CFrame
Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
bp = Make.BP(Char.Torso,Char.Torso.Position+Vector3.new(0,35,0))
coroutine.resume(coroutine.create(function()
while derpin == true do wait()
for i = 0,1,0.1 do wait()
Derp = Effect2(Char.Torso, 3*i,3*i,3*i, 0,0.5,-2,BrickColor.new(RangedModeColor),Char)
end
end
end))
wait(2)
bp.position = Char.Torso.Position+Vector3.new(0,-35,0)
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do wait()
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.6*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1,1,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,1,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.6*i,0,0)
lel = Effect(Char.Torso, 10*i,1.2*i,10*i, 0,-2,0, 0,0,0,BrickColor.new(RangedModeColor),20329976)
end
derpin = false
for i, v in pairs(game:service("Players"):GetPlayers()) do
if v.Name ~= Me.Name and (v.Character.Torso.Position - Char.Torso.Position).magnitude < 20 then
v.Character.Humanoid:TakeDamage(40)
v.Character.Humanoid.Sit = true
EBV = Instance.new("BodyVelocity", v.Character.Torso)
EBV.maxForce = Vector3.new(math.huge,math.huge,math.huge)
EBV.velocity = v.Character.Torso.CFrame.lookVector * -30
game:service("Debris"):AddItem(EBV,0.2)
end
end
end))
wait(1)
Gyro:remove()
bp:remove()
wait(1)
Mode = "Normal"
Activated = false
end
function bdown(mouse)
if Activated == true then return end
if Combo == 0 then
FirstSlash()
coroutine.resume(coroutine.create(function()
wait(0.5)
if Activated == false then 
Combo = 0
end
end))
elseif Combo == 1 then 
SecondSlash() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if Activated == false then 
Combo = 0 
end
end))
elseif Combo == 2 then 
ThirdSlash() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if Activated == false then 
Combo = 0 
end
end))
end
end

coroutine.resume(coroutine.create(function()
while wait() do
if Selected == true then
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do 
wait(0.1)
DiamondWeld.C0 = DiamondWeld.C0*CFrame.Angles(0, math.rad(i*1), 0)
end
end))
if Mode == "Normal" then
BaseThing.BrickColor = BrickColor.new(NormalModeColor)
Tip2.BrickColor = BrickColor.new(NormalModeColor)
Tip1.BrickColor = BrickColor.new(NormalModeColor)
HandleSturf.BrickColor = BrickColor.new(NormalModeColor)
HandleSturf2.BrickColor = BrickColor.new(NormalModeColor)
HandleSturf3.BrickColor = BrickColor.new(NormalModeColor)
LongSword2.BrickColor = BrickColor.new(NormalModeColor)

elseif Mode == "Ranged" then
BaseThing.BrickColor = BrickColor.new(RangedModeColor)
Tip2.BrickColor = BrickColor.new(RangedModeColor)
Tip1.BrickColor = BrickColor.new(RangedModeColor)
HandleSturf.BrickColor = BrickColor.new(RangedModeColor)
HandleSturf2.BrickColor = BrickColor.new(RangedModeColor)
HandleSturf3.BrickColor = BrickColor.new(RangedModeColor)
LongSword2.BrickColor = BrickColor.new(RangedModeColor)

elseif Mode == "Blocking" then
BaseThing.BrickColor = BrickColor.new(BlockModeColor)
Tip2.BrickColor = BrickColor.new(BlockModeColor)
Tip1.BrickColor = BrickColor.new(BlockModeColor)
HandleSturf.BrickColor = BrickColor.new(BlockModeColor)
HandleSturf2.BrickColor = BrickColor.new(BlockModeColor)
HandleSturf3.BrickColor = BrickColor.new(BlockModeColor)
LongSword2.BrickColor = BrickColor.new(BlockModeColor)
end
end
end
end))

function key(key) 
if Activated == true then return end 
if key == "z" then 
Dash()
end
if key == "x" then
Shockwave()
end
if key == "c" then
Guard()
end
if key == "e" then
SuperCombo()
end
end
function key2(key)
if key == "z" then
Holding = false
end
if key == "c" then
Guarding = false
end
end
if script.Name ~= "Made by: [[>> BrannZeus� <<]]" then
script.Disabled = true
Instance.new("Explosion",Char.Torso).Position = Char.Torso.Position
end
Damage = function(hit, amount)
if attackdebounce == false then 
attackdebounce = true 
coroutine.resume(coroutine.create(function() 
wait(0.1) 
attackdebounce = false 
end)) 
if hit.Parent==nil then
return
end
h=hit.Parent:FindFirstChild("Humanoid")
if h~=nil and hit.Parent.Name~=Char.Name and hit.Parent:FindFirstChild("Torso")~=nil then
amount=amount
print(hit.Parent.Name)
c = Instance.new("ObjectValue",h)
c.Name = "creator"
c.Value = Me
game:GetService("Debris"):AddItem(c,.5)
h:TakeDamage(amount)
end
end
end
function KewlShet(parent, x,y,z, color)
local p=Instance.new("Part", parent)
p.Size=Vector3.new(1,1,1)
p.BrickColor= color
p.Anchored=true
p.CanCollide=false
p.CFrame=parent.CFrame*CFrame.new(math.random(-0.6,0.6),math.random(-1,1),math.random(-0.6,0.6))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
local m=Instance.new("BlockMesh", p)
m.Scale=Vector3.new(x, y, z)
Delay(0,function()
local p=p
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
end
function Effect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color,id)
local msh1 = Instance.new("SpecialMesh") 
msh1.Scale = Vector3.new(x1, y1, z1) 
msh1.MeshType = "FileMesh"
msh1.MeshId = "http://www.roblox.com/asset/?id="..id..""
S=Instance.new("Part", Char)
S.formFactor=0
S.Size=Vector3.new(1, 1, 1)
S.BrickColor=color
S.TopSurface=0
S.BottomSurface=0
S.Anchored=true
S.CanCollide=false
msh1.Parent = S
S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end
function Effect2(part,x1,y1,z1,x2,y2,z2,color,parent)
local msh2 = Instance.new("BlockMesh") 
msh2.Scale = Vector3.new(x1, y1, z1) 
S=Instance.new("Part", parent)
S.FormFactor=0
S.Size=Vector3.new(1, 1, 1)
S.BrickColor = color
S.Reflectance = 0
S.TopSurface=0
S.BottomSurface=0
S.Transparency=0.5
S.Anchored=true
S.CanCollide=false
msh2.Parent = S
S.CFrame=part.CFrame*CFrame.new(x2, y2, z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end
script.Name = "Made by: [[>> BrannZeus� <<]]"
function s(mouse)
AlreadySelected = true
Selected = true
Activated = true
mouse.Button1Down:connect(function() bdown(mouse) end)
mouse.Button1Up:connect(function() ButtonUp(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2)
HitBoxWeld,DiamondWeld,HandleSturfW2,HandleSturfW3,BaseThingWeld,TorsoW,RW, LW, HandleWeld, HandleWeld2, HandleWeldSpike1, HandleWeldSpike2, LongWeld, LongWeld2, TipWeld1, BigTipWeld1, BigTipWeld2, TipWeld2 = Instance.new("Weld",Char.Torso),Instance.new("Weld",Char.Torso),Instance.new("Weld",Char.Torso), Instance.new("Weld", Char.Torso),Instance.new("Weld", Char.Torso),Instance.new("Weld", Char.Torso),Instance.new("Weld", Char.Torso), Instance.new("Weld", Char.Torso),Instance.new("Weld", Char.Torso), Instance.new("Weld", Char.Torso), Instance.new("Weld", Char.Torso), Instance.new("Weld", Char.Torso), Instance.new("Weld", Char.Torso), Instance.new("Weld", Char.Torso), Instance.new("Weld", Char.Torso), Instance.new("Weld", Char.Torso), Instance.new("Weld", Char.Torso), Instance.new("Weld", Char.Torso)
coroutine.resume(coroutine.create(function()
for _,v in pairs(Model:children()) do
if v.className == "Part" then
v.Anchored = false
FakeTorso.Anchored = false
end
end
for i,x in pairs(Char:children()) do
if x.className == "Shirt" or x.className == "Pants" or x.className == "CharacterMesh" then
x:remove()
end
end
end))
RW.Part0 = Char.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0)
RW.C1 = CFrame.new(0, 0.5, 0)
RW.Part1 = RightArm
LW.Part0 = Char.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0)
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = LeftArm
TorsoW.Part0 = Char.Torso
TorsoW.C0 = CFrame.new(0, 0.5, 0)
TorsoW.C1 = CFrame.new(0, 0.5, 0) 
TorsoW.Part1 = FakeTorso
for i = 0,1,0.1 do 
wait() 
Char.Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(-0.4*i,0,-0.4*i)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5+2*i,0,0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
HandleSturfW2 = Instance.new("Weld", Char.Torso)
HandleSturfW2.Part0 = Handle
HandleSturfW2.C0 = CFrame.new(-0.5, -0.5, 0)*CFrame.fromEulerAnglesXYZ(math.pi/-2, 0, math.pi/2)
HandleSturfW2.C1 = CFrame.new(0, 0.5, 0) 
HandleSturfW2.Part1 = HandleSturf2

HandleSturfW3 = Instance.new("Weld", Char.Torso)
HandleSturfW3.Part0 = Handle
HandleSturfW3.C0 = CFrame.new(-0.5, 0, 0)*CFrame.fromEulerAnglesXYZ(math.pi/-2, 0, math.pi/2)
HandleSturfW3.C1 = CFrame.new(0, 0.5, 0) 
HandleSturfW3.Part1 = HandleSturf3

DiamondWeld = Instance.new("Weld", Char.Torso)
DiamondWeld.Part0 = Handle
DiamondWeld.C0 = CFrame.new(-0.5, 1.24, 0)*CFrame.fromEulerAnglesXYZ(math.pi/-2, 0, math.pi/2)
DiamondWeld.C1 = CFrame.new(0, 0.5, 0) 
DiamondWeld.Part1 = Diamond

HandleSturfW1 = Instance.new("Weld", Char.Torso)
HandleSturfW1.Part0 = Handle
HandleSturfW1.C0 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(math.pi/-2, 0, math.pi/2)
HandleSturfW1.C1 = CFrame.new(0, 0.5, 0) 
HandleSturfW1.Part1 = HandleSturf

BaseThingWeld.Part0 = Handle
BaseThingWeld.C0 = CFrame.new(-0.45, 1.4, -0.05)*CFrame.fromEulerAnglesXYZ(math.pi/-2, 0, math.pi/2)
BaseThingWeld.C1 = CFrame.new(0, 0.5, 0) 
BaseThingWeld.Part1 = BaseThing
HandleWeld.Part0 = RightArm
HandleWeld.C0 = CFrame.new(0, -1, 0.5)*CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)
HandleWeld.C1 = CFrame.new(0, 0.5, 0) 
HandleWeld.Part1 = Handle

BigTipWeld2.Part0 = Handle2
BigTipWeld2.C0 = CFrame.new(-0.7, 0, 3.87)*CFrame.fromEulerAnglesXYZ(math.pi/-1, 0, math.pi/2)
BigTipWeld2.C1 = CFrame.new(0, 0.5, 0) 
BigTipWeld2.Part1 = BigTip2
BigTipWeld1.Part0 = Handle2
BigTipWeld1.C0 = CFrame.new(0.7, 0, 3.87)*CFrame.fromEulerAnglesXYZ(math.pi/-1, 0, math.pi/-2)
BigTipWeld1.C1 = CFrame.new(0, 0.5, 0) 
BigTipWeld1.Part1 = BigTip1
TipWeld2.Part0 = Handle2
TipWeld2.C0 = CFrame.new(-0.6, 0, 3.87)*CFrame.fromEulerAnglesXYZ(math.pi/-1, 0, math.pi/2)
TipWeld2.C1 = CFrame.new(0, 0.5, 0) 
TipWeld2.Part1 = Tip2
TipWeld1.Part0 = Handle2
TipWeld1.C0 = CFrame.new(0.6, 0, 3.87)*CFrame.fromEulerAnglesXYZ(math.pi/-1, 0, math.pi/-2)
TipWeld1.C1 = CFrame.new(0, 0.5, 0) 
TipWeld1.Part1 = Tip1
HitBoxWeld.Part0 = Handle
HitBoxWeld.C0 = CFrame.new(-0.5, -3.2, 0)*CFrame.fromEulerAnglesXYZ(math.pi/2, 0, math.pi/2)
HitBoxWeld.C1 = CFrame.new(0, 0.5, 0) 
HitBoxWeld.Part1 = HitBox
LongWeld.Part0 = Handle
LongWeld.C0 = CFrame.new(-0.5, -2.6, 0)*CFrame.fromEulerAnglesXYZ(math.pi/2, 0, math.pi/2)
LongWeld.C1 = CFrame.new(0, 0.5, 0) 
LongWeld.Part1 = LongSword
LongWeld2.Part0 = Handle
LongWeld2.C0 = CFrame.new(-0.5, -2.6, 0)*CFrame.fromEulerAnglesXYZ(math.pi/2, 0, math.pi/2)
LongWeld2.C1 = CFrame.new(0, 0.5, 0) 
LongWeld2.Part1 = LongSword2
HandleWeld2.Part0 = Handle
HandleWeld2.C0 = CFrame.new(-0.5, -0.9, 0)*CFrame.fromEulerAnglesXYZ(math.pi/2, 0, math.pi/2)
HandleWeld2.C1 = CFrame.new(0, 0.5, 0) 
HandleWeld2.Part1 = Handle2
HandleWeldSpike2.Part0 = Handle2
HandleWeldSpike2.C0 = CFrame.new(-1.6, 0.02, 0.55)*CFrame.fromEulerAnglesXYZ(math.pi/-1, 0, math.pi/2)
HandleWeldSpike2.C1 = CFrame.new(0, 0.5, 0) 
HandleWeldSpike2.Part1 = HandleWedge2
HandleWeldSpike1.Part0 = Handle2
HandleWeldSpike1.C0 = CFrame.new(1.6, 0, 0.55)*CFrame.fromEulerAnglesXYZ(math.pi/-1, 0, math.pi/-2)
HandleWeldSpike1.C1 = CFrame.new(0, 0.5, 0) 
HandleWeldSpike1.Part1 = HandleWedge1
for _,v in pairs(Model:children()) do
if v.className == "Part" and v.Name ~= "HitBox" then
coroutine.resume(coroutine.create(function()
for x = 1, 10 do
wait(0.1)
v.Transparency = v.Transparency-0.1
end
end))
end
end
FakeTorso.Transparency = 0
Char.Torso.Transparency = 1
wait(1)
for i = 0,1,0.1 do 
wait()
Char.Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(-0.4+0.4*i,0,-0.4+0.4*i)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
FakeTorso.Transparency = 0
Activated = false
end
function ds(mouse)
Selected = false
for _,v in pairs(Model:children()) do
if v.className == "Part" then
coroutine.resume(coroutine.create(function()
for x = 1, 10 do
wait(0.1)
v.Transparency = v.Transparency+0.1
end
end))
end
end
end
bin.Selected:connect(s)
bin.Deselected:connect(ds)
function onRunning(speed)
if Activated == true then return end
if Selected then
if speed>0 then 
walking = true 
for i = 0,1,0.2 do
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.7*i,0,-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5-0.8*i,0.3*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
	else 
walking = false 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.7+0.7*i,0,-0.3+0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5-0.8+0.8*i,-0.3+0.3*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end
end
if AlreadySelected and not Selected then 
if speed>1 then
lolwalking = true
for i = 0,1,0.1 do
wait()
Char.Torso.Neck.C1 = necko*CFrame.new(0, 0.6, -1.5)
Char.Torso.Neck.C0 = necko*CFrame.new(0, 0, 0)
TorsoW.C0 = CFrame.new(0, 0.5, -0.4)*CFrame.fromEulerAnglesXYZ(-0.25*i, 0, 0) 
TorsoW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,-0.4) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,-0.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,-0.4) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
    else 
lolwalking = false 
for i = 0,1,0.1 do 
wait()
Char.Torso.Neck.C1 = necko*CFrame.new(0, 0, -1.5)
Char.Torso.Neck.C0 = necko*CFrame.new(0, 0, 0)
TorsoW.C0 = CFrame.new(0, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.25+0.25*i, 0, 0) 
TorsoW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end
end
end
Char.Humanoid.Running:connect(onRunning)

function makeclone()
tip = HitBox
if tip~= nil then
off = (tip.Size.z)/2
point = (tip.CFrame*CFrame.new(0, 0, -off)).p
unit = (lastpoint - point).unit
mag = (lastpoint - point).magnitude
if mag>1 then
middle = lastpoint-(unit*(mag/2))
cf = CFrame.new(middle, point)
for _, x in pairs(Model:GetChildren()) do
if x.className == "Part" then
um = x:Clone()
um.Parent = workspace
um.Name = "derp"
um.Anchored = true
um.CanCollide = false
um.BrickColor = x.BrickColor
end
end
um.CFrame = cf
table.insert(leds, um)
lastpoint = point
end
end
end
function fade()
for _,v in pairs(game:service("Workspace"):children()) do
if v.className == "Part" and v.Name == "derp" then
v.Transparency = v.Transparency+0.2
if v.Transparency>1 then
v:remove()
end
end
end
end
coroutine.resume(coroutine.create(function()
while true do
	makeclone()
	wait(0.05)
	fade()
end
end))

end}
module[5] = {"joemom33's dance",function()

music = true
do
        local function QuaternionFromCFrame(cf) 
                local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
                local trace = m00 + m11 + m22 
                if trace > 0 then 
                        local s = math.sqrt(1 + trace) 
                        local recip = 0.5/s 
                        return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
                else 
                        local i = 0 
                        if m11 > m00 then
                                i = 1 
                        end 
                        if m22 > (i == 0 and m00 or m11) then 
                                i = 2 
                        end 
                        if i == 0 then 
                                local s = math.sqrt(m00-m11-m22+1) 
                                local recip = 0.5/s 
                                return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
                        elseif i == 1 then 
                                local s = math.sqrt(m11-m22-m00+1) 
                                local recip = 0.5/s 
                                return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
                        elseif i == 2 then 
                                local s = math.sqrt(m22-m00-m11+1) 
                                local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
                        end 
                end 
        end
        local function QuaternionToCFrame(px, py, pz, x, y, z, w) 
                local xs, ys, zs = x + x, y + y, z + z 
                local wx, wy, wz = w*xs, w*ys, w*zs 
                local xx = x*xs 
                local xy = x*ys 
                local xz = x*zs 
                local yy = y*ys 
                local yz = y*zs 
                local zz = z*zs 
                return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
                end   
        local function QuaternionSlerp(a, b, t) 
                local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
                local startInterp, finishInterp; 
                if cosTheta >= 0.0001 then 
                        if (1 - cosTheta) > 0.0001 then 
                                local theta = math.acos(cosTheta) 
                                local invSinTheta = 1/math.sin(theta) 
                                startInterp = math.sin((1-t)*theta)*invSinTheta 
                                finishInterp = math.sin(t*theta)*invSinTheta  
                        else 
                                startInterp = 1-t 
                                finishInterp = t 
                        end 
                else
                        if (1+cosTheta) > 0.0001 then 
                                local theta = math.acos(-cosTheta) 
                                local invSinTheta = 1/math.sin(theta) 
                                startInterp = math.sin((t-1)*theta)*invSinTheta 
                                finishInterp = math.sin(t*theta)*invSinTheta 
                        else 
                                startInterp = t-1 
                                finishInterp = t 
                        end 
                end 
                return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
        end  
        function clerp(a,b,t) 
                local qa = {QuaternionFromCFrame(a)}
                local qb = {QuaternionFromCFrame(b)} 
                local ax, ay, az = a.x, a.y, a.z 
                local bx, by, bz = b.x, b.y, b.z  
                local _t = 1-t 
                return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
        end 

end
do
plr = game:service'Players'.LocalPlayer
char = plr.Character
mouse = plr:GetMouse()
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
la = char:findFirstChild("Left Arm")
rl = char:findFirstChild("Right Leg")
ll = char:findFirstChild("Left Leg")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
anim = char:findFirstChild("Animate")
rootpart = char:findFirstChild("HumanoidRootPart")
camera = workspace.CurrentCamera
if anim then
anim:Destroy()
end

local rm = Instance.new("Motor", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
local lm = Instance.new("Motor", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la

local rlegm = Instance.new("Motor", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
local llegm = Instance.new("Motor", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll

neck.C0 = CFrame.new(0, 1, 0)
neck.C1 = CFrame.new(0, -0.5, 0)


rj.C0 = CFrame.new()
rj.C1 = CFrame.new()

local sound = Instance.new("Sound", head)
sound.SoundId = "http://www.roblox.com/asset/?id=130797915"
sound.Volume = 0.8
sound.Looped = true

for _,v in pairs(char:GetChildren()) do if v.ClassName=="Hat" then v:remove() end end

local speed = 0.3
local angle = 0
local humanwalk = true
local anglespeed = 1
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
neckc0 = neck.C0

local controllerService = game:GetService("ControllerService")
local controller = controllerService:GetChildren()[1]

controller.Parent = nil

Instance.new("HumanoidController", game:service'ControllerService')
Instance.new("SkateboardController", game:service'ControllerService')
Instance.new("VehicleController", game:service'ControllerService')
local controller = controllerService:GetChildren()[1]
mouse.KeyDown:connect(function(k)
    if k == "q" then
        if not sound.IsPlaying and  music == true then
            game:service'InsertService':LoadAsset(44114719):children()[1].Parent = char
            sound:stop()
            sound.SoundId = "http://www.roblox.com/asset/?id=157460849"
            wait()
            sound:play()
        end
    end
    if k == "e" then
        if not sound.IsPlaying and music == true then
            game:service'InsertService':LoadAsset(1073690):children()[1].Parent = char
            sound:stop()
            sound.SoundId = "http://www.roblox.com/asset/?id=185941026"
            wait()
            sound:play()
        end
    end
        if k == "r" then
        if not sound.IsPlaying and music == true then
            game:service'InsertService':LoadAsset(47697285):children()[1].Parent = char
            game:service'InsertService':LoadAsset(11748356):children()[1].Parent = char
            sound:stop()
            sound.SoundId = "http://www.roblox.com/asset/?id=149410799"
            wait()
            sound:play()
        end
    end
        if k == "t" then
        if not sound.IsPlaying and music == true then
            game:service'InsertService':LoadAsset(10911990):children()[1].Parent = char
            sound:stop()
            sound.SoundId = "http://www.roblox.com/asset/?id=142305777"
            wait()
            sound:play()
        end
    end
         if k == "y" then
        if not sound.IsPlaying and music == true then
            game:service'InsertService':LoadAsset(128159229):children()[1].Parent = char
            sound:stop()
            sound.SoundId = "http://www.roblox.com/asset/?id=160525520"
            wait()
            sound:play()
        end
    end
         if k == "u" then
        if not sound.IsPlaying and music == true then
            game:service'InsertService':LoadAsset(139618234):children()[1].Parent = char
            sound:stop()
            sound.SoundId = "http://www.roblox.com/asset/?id=188705888" 
            wait()
            sound:play()
        end
    end
         if k == "p" then
        if not sound.IsPlaying and music == true then
            game:service'InsertService':LoadAsset(163500995):children()[1].Parent = char
    game:service'InsertService':LoadAsset(164203067):children()[1].Parent = char
            sound:stop()
            sound.SoundId = "http://www.roblox.com/asset/?id=146048136"
            wait()
            sound:play()
        end
    end
        if k == "f" then
        if not sound.IsPlaying and music == true then
            game:service'InsertService':LoadAsset(11453654):children()[1].Parent = char
            sound:stop()
            sound.SoundId = "http://www.roblox.com/asset/?id=133061687"
            wait()
            sound:play()
        end
    end
 if string.byte(k) == 48 then
        humanoid.WalkSpeed = 55
elseif string.byte(k) == 50 then
humanoid.Sit = true
    end 
    
end)
mouse.KeyUp:connect(function(k)
    
    if string.byte(k) == 48 then
        humanoid.WalkSpeed = 16
    end
    
end)

    

while wait() do
    angle = (angle % 100) + anglespeed/10 -- i don't see any function getting called here
        mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
        local rscf = rsc0
        local lscf = lsc0
        local rlcf = rlc0
        local llcf = llc0
        local rjcf = CFrame.new()
        local ncf = neckc0
        local rayz = Ray.new(rootpart.Position, Vector3.new(0, -6, 0))
            local hitz, enz = workspace:findPartOnRay(rayz, char)
            if not hitz then
        if sound.IsPlaying then
            sound:stop()
        end
elseif humanoid.Sit then
        if sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=157460849" then
	anglespeed = 1/2
        ncf = neckc0 * CFrame.Angles(math.pi/4, 0,math.sin(angle)*0.08)
        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, 0, math.sin(angle)*0.01,0,math.pi/2)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.sin(angle),0,math.pi/1)
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, -math.sin(angle)*0.09, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
            elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=149069781" then
        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=149069781" then
        anglespeed = 6
        ncf = neckc0 * CFrame.Angles(math.pi/5-math.sin(angle)*0.1, 0, 0)
        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, 0, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=149410799" then
        anglespeed = 6
        ncf = neckc0 * CFrame.Angles(math.pi/5-math.sin(angle)*0.1, 0, 0)
        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, 0, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=142305777" then
        anglespeed = 6
        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(0, math.sin(angle),math.rad(20))
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.sin(angle),0,math.pi/1)
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.sin(angle),0,math.pi/1)
        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=160525520" then
        anglespeed = 6
        ncf = neckc0 * CFrame.Angles(math.pi/5-math.sin(angle)*0.1, 0, 0)
        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, 0, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=152401544" then
        anglespeed = 6
        ncf = neckc0 * CFrame.Angles(math.pi/5-math.sin(angle)*0.1, 0, 0)
        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, 0, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=146048136" then
	anglespeed = 6
        ncf = neckc0 * CFrame.Angles(math.sin(angle)-math.abs(math.sin(angle))*0.9,math.cos(angle)*.3, 0)
            rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.sin(angle)*.2, 0)
            rscf = rsc0 * CFrame.Angles(math.pi/3+math.abs(math.sin(angle)*1), math.rad(anglespeed*angle)*.3,  math.sin(angle*3)*.6)
            lscf = lsc0 * CFrame.Angles(math.pi/3+math.abs(math.sin(angle)*1), math.rad(anglespeed*angle)*.3,  math.sin(angle*3)*.6)
            rlcf = rlc0 * CFrame.Angles(0, math.rad(angle)*math.sin(anglespeed), math.rad(angle)*.5)
            llcf = llc0 * CFrame.Angles(0, math.rad(angle)*math.sin(anglespeed), -math.rad(angle)*.5)
        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=142305777" then
        anglespeed = 6
        rjcf = CFrame.new(0, math.sin(angle)*2, 0) * CFrame.Angles(0, math.sin(angle),0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.sin(angle),0,math.pi/1)
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.sin(angle),0,math.pi/1)
        else
        anglespeed = 1/2
        ncf = neckc0 * CFrame.Angles(math.pi/5, 0, math.sin(angle)*0.08)
        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(math.pi/5, math.sin(angle)*0.01, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
        end
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
            if sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=157460849" then
	anglespeed = 3
        ncf = neckc0 * CFrame.Angles(math.pi/4, 0,math.sin(angle)*0.08)
        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, 0, math.sin(angle)*0.01,0,math.pi/2)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.sin(angle),0,math.pi/1)
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, -math.sin(angle)*0.09, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
            elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=149069781" then
            anglespeed = 2
            ncf = neckc0 * CFrame.Angles(math.pi/10-math.abs(math.sin(angle))*0.3,0, 0)
            rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.sin(angle)*.5, 0)
            rscf = rsc0 * CFrame.Angles(0, 0, math.pi/2+math.abs(math.sin(angle)*1))
            lscf = lsc0 * CFrame.Angles(0, 0, -math.pi/2-math.abs(math.sin(angle)*1))
            rlcf = rlc0 * CFrame.Angles(0, math.sin(angle)*0.08, math.rad(2.5))
            llcf = llc0 * CFrame.Angles(0, -math.sin(angle)*0.08, -math.rad(2.5))
            elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=149410799" then
            anglespeed = 2
            ncf = neckc0 * CFrame.Angles(math.pi/10-math.abs(math.sin(angle))*0.3,0, 0)
            rjcf = CFrame.new(math.sin(angle)*2, 0, 0) * CFrame.Angles(-math.pi/20, math.sin(angle)*.5, 0)
            rscf = rsc0 * CFrame.Angles(math.pi/3+math.abs(math.sin(angle)*.5), math.pi/20,  -math.pi/20)
            lscf = lsc0 * CFrame.Angles(math.pi/3+math.abs(math.sin(angle)*.5), -math.pi/20,  math.pi/20)
            rlcf = rlc0 * CFrame.Angles(math.pi/20+math.sin(angle)*0.2, math.sin(angle)*0.08, math.rad(2.5))
            llcf = llc0 * CFrame.Angles(math.pi/20-math.sin(angle)*0.2, -math.sin(angle)*0.08, -math.rad(2.5))
            elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=142305777" then
            anglespeed = 4
        rjcf = CFrame.new(0, math.sin(angle)*2, 0) * CFrame.Angles(0, math.sin(angle),0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.sin(angle),0,math.pi/1)
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.sin(angle),0,math.pi/1)
            elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=160525520" then
            anglespeed = 2
            ncf = neckc0 * CFrame.Angles(math.pi/10-math.abs(math.sin(angle))*0.5,0, 0)
            rjcf = CFrame.new(0, 0, math.sin(angle)*3) * CFrame.Angles(0, math.sin(angle)*0.1, 0)
            rscf = rsc0 * CFrame.Angles(math.pi/3+math.abs(math.sin(angle)*1), math.pi/20,  -math.pi/20)
            lscf = lsc0 * CFrame.Angles(math.pi/3+math.abs(math.sin(angle)*1), -math.pi/20,  math.pi/20)
            rlcf = rlc0 * CFrame.Angles(math.pi/20+math.sin(angle*2)*.75, 0, 0)
            llcf = llc0 * CFrame.Angles(math.pi/20-math.sin(angle*2)*.75, 0, 0)
            elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=152401544" then
            anglespeed = 2
            ncf = neckc0 * CFrame.Angles(0,0, 0)
            rjcf = CFrame.new(0, -math.abs(math.sin(angle))*1.5, 0) * CFrame.Angles(math.sin(angle)*2, 0, 0)
            rscf = rsc0 * CFrame.Angles(0, 0,  0)
            lscf = lsc0 * CFrame.Angles(0, 0,  0)
            rlcf = rlc0 * CFrame.Angles(0, 0, 0)
            llcf = llc0 * CFrame.Angles(0, 0, 0)
            elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=146048136" then
	anglespeed = 6
        ncf = neckc0 * CFrame.Angles(math.sin(angle)-math.abs(math.sin(angle))*0.9,math.cos(angle)*.3, 0)
            rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.sin(angle)*.2, 0)
            rscf = rsc0 * CFrame.Angles(math.pi/3+math.abs(math.sin(angle)*1), math.rad(anglespeed*angle)*.3,  math.sin(angle*3)*.6)
            lscf = lsc0 * CFrame.Angles(math.pi/3+math.abs(math.sin(angle)*1), math.rad(anglespeed*angle)*.3,  math.sin(angle*3)*.6)
            rlcf = rlc0 * CFrame.Angles(0, math.rad(angle)*math.sin(anglespeed), math.rad(angle)*.5)
            llcf = llc0 * CFrame.Angles(0, math.rad(angle)*math.sin(anglespeed), -math.rad(angle)*.5)
            elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=133061687" then
            anglespeed = 7
            ncf = neckc0 * CFrame.Angles(math.pi/10-math.abs(math.sin(angle))*0.3,0, 0)
            rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.sin(angle)*.5, 0)
            rscf = rsc0 * CFrame.Angles(math.pi/3+math.abs(math.sin(angle)*1), math.pi/20,  -math.pi/20)
            lscf = lsc0 * CFrame.Angles(math.pi/3+math.abs(math.sin(angle)*1), -math.pi/20,  math.pi/20)
            rlcf = rlc0 * CFrame.Angles(0, math.sin(angle)*0.1, math.rad(2.5))
            llcf = llc0 * CFrame.Angles(0, -math.sin(angle)*1, -math.rad(2.5))
            else
            if humanwalk then
                        anglespeed = 1/4
        ncf = neckc0 * CFrame.Angles(-math.sin(angle)*0.07, 0, 0)
        rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.sin(angle)*0.009, 0)
        rscf = rsc0 * CFrame.Angles(math.sin(angle)*0.6, 0, 0)
        lscf = lsc0 * CFrame.Angles(math.sin(-angle)*0.6, 0, 0)
        rlcf = rlc0 * CFrame.Angles(0, math.sin(angle)*0.09, math.rad(2.5))
        llcf = llc0 * CFrame.Angles(0, -math.sin(angle)*0.12, -math.rad(angle)*0.2)
                else
        anglespeed = 1/2
        ncf = neckc0 * CFrame.Angles(math.pi/5, 0, math.sin(angle)*0.5)
        rjcf = CFrame.new(0, -2, 0) * CFrame.Angles(-math.pi/5, math.sin(angle)*0.01, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/6, 0, -math.rad(60))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/6, 0, math.rad(60))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
            end
        end
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 20 then
        if sound.IsPlaying then
            sound:stop()
            for _,v in pairs(char:GetChildren()) do if v.ClassName=="Hat" then v:remove() end end
        end
        if humanwalk then
                                anglespeed = 4
        ncf = neckc0 * CFrame.Angles(math.pi/24, mvmnt*.02, 0)
        rjcf = CFrame.new(0, math.abs(mvmnt)*0.05, 0) * CFrame.Angles(math.pi/24, -mvmnt*.02, 0)
        rscf = rsc0 * CFrame.Angles(math.sin(angle)*1.25, 0, -math.abs(mvmnt)*0.02)
        lscf = lsc0 * CFrame.Angles(math.sin(-angle)*1.25, 0, math.abs(mvmnt)*0.02)
        rlcf = rlc0 * CFrame.Angles(math.sin(-angle)*1, 0, math.rad(.5))
        llcf = llc0 * CFrame.Angles(math.sin(angle)*1, 0, -math.rad(.5))
                else
        anglespeed = 4
        ncf = neckc0 * CFrame.new(0, 0, .2) * CFrame.Angles(math.pi/1.9, 0, 0)
        rjcf = CFrame.new(0, -1.5+math.abs(mvmnt)*0.05, 0) * CFrame.Angles(-math.pi/1.9, math.sin(mvmnt/2)*0.05, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.4+math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2+math.sin(angle)*1, 0, math.rad(5))
        lscf = lsc0 * CFrame.new(.45, 0.2, .1-math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2+math.sin(-angle)*0.4, 0, -math.rad(5))
        rlcf = rlc0 * CFrame.new(0, 0, -.3+math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2.5+math.sin(-angle)*0.8, 0, math.abs(mvmnt)*0.025)
        llcf = llc0 * CFrame.new(0, 0, .3-math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2.5+math.sin(angle)*.6, 0, -math.abs(mvmnt)*0.025)
        end
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then
        if sound.IsPlaying then
            sound:stop()
        for _,v in pairs(char:GetChildren()) do if v.ClassName=="Hat" then v:remove() end end
        end
        if humanwalk then
        anglespeed = 5
        ncf = neckc0 * CFrame.Angles(math.rad(30), math.sin(angle)*.5, 0)
        rjcf = CFrame.new(0, -.4 + math.abs(mvmnt)*0.25, 0) * CFrame.Angles(0, -math.sin(angle)*.08, 0)
        rscf = rsc0 * CFrame.new(0, 0, -.3+math.abs(mvmnt)*0.125) *  CFrame.Angles(math.pi/18+math.sin(angle)*1.5, 0, -math.abs(mvmnt)*1.7)
        lscf = lsc0 * CFrame.new(0, 0, .3-math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/18+math.sin(-angle)*1.5, 0, math.abs(mvmnt)*1.7)
        rlcf = rlc0 * CFrame.new(0, 0, -.6+math.abs(mvmnt)*0.125) * CFrame.Angles(-math.pi/18+math.sin(-angle)*1.3, 0, math.rad(.5))
        llcf = llc0 * CFrame.new(0, 0, -math.abs(mvmnt)*0.125) * CFrame.Angles(-math.pi/18+math.sin(angle)*1.3, 0, -math.rad(.5))
        else
        anglespeed = 5.5
        ncf = neckc0 * CFrame.new(0, 0, .2) * CFrame.Angles(math.pi/1.9+math.sin(mvmnt/2)*0.05, 0, 0)
        rjcf = CFrame.new(0, -1.3+math.abs(mvmnt)*0.05, 0) * CFrame.Angles(-math.pi/1.9+math.abs(mvmnt/2)*0.1, 0, 0)
        rscf = rsc0 * CFrame.new(-1, 0.2, -.5) * CFrame.Angles(math.pi/2+math.sin(angle)*1.8, 0, math.rad(5))
        lscf = lsc0 * CFrame.new(1, 0.2, -.5) * CFrame.Angles(math.pi/2+math.sin(angle)*1.8, 0, -math.rad(5))
        rlcf = rlc0 * CFrame.new(0, .3-math.abs(mvmnt)*0.125, -.3+math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2.5+math.sin(-angle)*1.4, 0, math.abs(mvmnt)*0.025)
        llcf = llc0 * CFrame.new(0, .3-math.abs(mvmnt)*0.125, .3-math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2.5+math.sin(-angle)*1.4, 0, -math.abs(mvmnt)*0.025)
        end
    end
        
    rm.C0 = clerp(rm.C0,rscf,speed)
    lm.C0 = clerp(lm.C0,lscf,speed)
    rj.C0 = clerp(rj.C0,rjcf,speed)
    neck.C0 = clerp(neck.C0,ncf,speed)
    rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
    llegm.C0 = clerp(llegm.C0,llcf,speed)
end


end

game.Players.LocalPlayer.Chatted:connect(function(k)
if k:lower() == "musicon" then
music = true
elseif k:lower() == "musicoff" then
music = false
end
end)
end}

 
 

module[1] = {"xBow",function()

me = game.Players.LocalPlayer
char = me.Character
Selected = false
Able = true
Arrow = nil
ArrowOn = false
Hurt = false
Deb = true
Reloading = false
Shooting = false
Slashing = false
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
EffectOn = false
Accuracy = 1
SelAnim = false
DMG = 123452323
LapaCol = "Brown"
HandCol = "Brown"
MiddleCol = "Brown"
ViiniCol = "Brown"
Icon = "http://www.roblox.com/asset/?id=51902588"
Keys = {
e = false,
}
ModelName = "Epic Bow"
CA = CFrame.Angles
CN = CFrame.new
MR = math.rad
MP = math.pi
MRA = math.random
MH = math.huge
UD = UDim2.new
C3 = Color3.new
MaximumPower = 1000000000
MaxSpecial = 100000
Special = MaxSpecial
Sounds = {
Slash = {"rbxasset://sounds//swordslash.wav", 1.2, 1},
Shoot = {"http://www.roblox.com/asset/?id=16211041", 2, 1},
Stick = {"http://www.roblox.com/asset/?id=2767090", 15, 1},
Hit = {"http://www.roblox.com/asset/?id=10209590", 0.9, 1},
Block = {"rbxasset://sounds\\metal.ogg", 1.4, 1},
}
function RC(Pos, Dir, Max, Ignore)
return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999)), Ignore)
end
function RayC(Start, En, MaxDist, Ignore)
return RC(Start, (En - Start), MaxDist, Ignore)
end
function DetectSurface(pos, part)
local surface = nil
local pospos = part.CFrame
local pos2 = pospos:pointToObjectSpace(pos)
local siz = part.Size
local shaep = part.Shape
if shaep == Enum.PartType.Ball or shaep == Enum.PartType.Cylinder then
surface = {"Anything", CN(pospos.p, pos)*CN(0, 0, -(pospos.p - pos).magnitude)*CA(MR(-90), 0, 0)}
else
if pos2.Y > ((siz.Y/2)-0.04) then
surface = {"Top", CA(0, 0, 0)}
elseif pos2.Y < -((siz.Y/2)-0.04) then
surface = {"Bottom", CA(-MP, 0, 0)}
elseif pos2.X > ((siz.X/2)-0.04) then
surface = {"Right", CA(0, 0, MR(-90))}
elseif pos2.X < -((siz.X/2)-0.04) then
surface = {"Left", CA(0, 0, MR(90))}
elseif pos2.Z > ((siz.Z/2)-0.04) then
surface = {"Back", CA(MR(90), 0, 0)}
elseif pos2.Z < -((siz.Z/2)-0.04) then
surface = {"Front", CA(MR(-90), 0, 0)}
end
end
return surface
end
function Compute(pos1, pos2)
local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
return CN(pos1, pos3)
end
function Notime(func, tiem)
if tiem then wait(tiem) end
coroutine.resume(coroutine.create(function() func() end))
end
function waitChild(p, n)
local child = p:findFirstChild(n)
if child then return child end
while true do
child = p.ChildAdded:wait()
if child.Name == n then return child end
end
end
function getHumanoid(c)
for _,v in pairs(c:children()) do
if v:IsA("Humanoid") and c ~= char then if v.Health > 0 then return v end end
end
end
function SE(part, pos)
EffectOn = true
local lastP = (part.CFrame * pos).p
Notime(function()
while EffectOn do
wait()
local posnow = (part.CFrame * pos).p
local eff = Part(workspace, true, false, 0, 0, "Really black", 0.2, 1, 0.2)
local magn = (lastP - posnow).magnitude
local cf = CN(lastP, posnow) * CA(MR(-90), 0, 0)
local mes2 = Instance.new("SpecialMesh",eff)
mes2.Scale = Vector3.new(0.6, magn, 0.6)
eff.CFrame = cf * CN(0, magn/2, 0)
Notime(function()
for i = 0, 1, 0.1 do
wait()
eff.Transparency = i
eff.Reflectance = 0.15*i
mes2.Scale = Vector3.new(0.6-0.6*i, magn, 0.6-0.6*i)
end
eff:remove()
end)
lastP = posnow
end
end)
end
function EE()
EffectOn = false
end
torso = waitChild(char, "Torso")
Rarm = waitChild(char, "Right Arm")
Larm = waitChild(char, "Left Arm")
Rleg = waitChild(char, "Right Leg")
Lleg = waitChild(char, "Left Leg")
Hum = waitChild(char, "Humanoid")
neck = waitChild(torso, "Neck")
function EditGui(obj, parent, size, position, bgcolor, bordercolor, transparency, text, textcolor, auto)
obj.Size = size
obj.Position = position
obj.BackgroundColor3 = bgcolor
obj.BorderColor3 = bordercolor
obj.BackgroundTransparency = transparency
if obj:IsA("TextLabel") or obj:IsA("TextButton") then
obj.Text = text
obj.TextColor3 = textcolor
end
if obj:IsA("ImageButton") or obj:IsA("TextButton") then
obj.AutoButtonColor = auto
obj.MouseButton1Down:connect(function()
RemoveOptions()
end)
end
obj.Parent = parent
end
Gui = waitChild(me, "PlayerGui")
for _,v in pairs(Gui:children()) do
if v.Name == "Power" then v:remove() end
end
Sc = Instance.new("ScreenGui", Gui)
Sc.Name = "Power"
Main = Instance.new("TextLabel")
Main.Visible = false
EditGui(Main, Sc, UD(0, 200, 0, 65), UD(0.5, -100, 0, 120), C3(0.06, 0.06, 0.1), C3(), 0.5, "Power", C3(1, 1, 0))
Main.TextYAlignment = "Top"
Main.FontSize = "Size36"
Main.Font = "ArialBold"
Main.TextTransparency = 0.5
BarBack = Instance.new("Frame")
EditGui(BarBack, Main, UD(1, -10, 0, 25), UD(0, 5, 1, -30), C3(0, 0, 0), C3(), 0.5)
Bar = Instance.new("ImageLabel")
EditGui(Bar, BarBack, UD(0, 0, 1, 0), UD(0, 0, 0, 0), C3(1, 0.7, 0), C3(), 0.5)
Bar.Image = "http://www.roblox.com/asset/?id=48965808"
Spec = Instance.new("Frame")
EditGui(Spec, Sc, UD(0, 250, 0, 22), UD(0.04, 0, 0, 5), C3(1, 0.75, 0.1), C3(), 0)
SpecialBack = Instance.new("Frame")
EditGui(SpecialBack, Spec, UD(1, -10, 1, -6), UD(0, 5, 0, 3), C3(0.35, 0.1, 0.15), C3(), 0)
SpecialBar = Instance.new("ImageLabel")
EditGui(SpecialBar, SpecialBack, UD(Special/MaxSpecial, 0, 1, 0), UD(0, 0, 0, 0), C3(0.1, 0.65, 0.2), C3(), 0)
SpecialBar.Image = "http://www.roblox.com/asset/?id=48965808"
for i = 1, 3, 1 do
local p = Instance.new("Frame")
EditGui(p, SpecialBack, UD(0, 1, 1, 0), UD(i/4, 0, 0, 0), C3(0.1, 0.2, 1), C3(), 0)
p.BorderSizePixel = 0
end
SpecialText = Instance.new("TextLabel")
EditGui(SpecialText, SpecialBack, UD(1, 0, 1, 0), UD(0, 0, 0, 0), C3(), C3(), 1, "S P E C I A L", C3(1,1,1))
SpecialText.Font = "ArialBold"
SpecialText.FontSize = "Size14"
function Play(Sound)
local s = Instance.new("Sound")
s.SoundId = Sound[1]
s.Pitch = Sound[2]
s.Volume = Sound[3]
s.Parent = torso
s.PlayOnRemove = true
game.Debris:AddItem(s, 0.0001)
end
RSH = waitChild(torso, "Right Shoulder")
LSH = waitChild(torso, "Left Shoulder")
RH = waitChild(torso, "Right Hip")
LH = waitChild(torso, "Left Hip")
for i,v in pairs(char:children()) do if v.Name == ModelName then v:remove() end end
function Part(P, Anch, Coll, Tran, Ref, Col, X, Y, Z)
local p = Instance.new("Part")
p.TopSurface = 0
p.BottomSurface = 0
p.Transparency = Tran
p.Reflectance = Ref
p.CanCollide = Coll
p.Anchored = Anch
p.BrickColor = BrickColor.new(Col)
p.formFactor = "Custom"
p.Size = Vector3.new(X,Y,Z)
p.Parent = P
p.Locked = true
p:BreakJoints()
return p
end
function Weld(P0, P1, X, Y, Z, A, B, C)
local w = Instance.new("Weld")
w.Part0 = P0
w.Part1 = P1
w.C1 = CN(X, Y, Z) * CA(A, B, C)
w.Parent = P0
return w
end
Mo = Instance.new("Model")
Mo.Name = ModelName
FTorso = Part(Mo, false, false, 1, 0, torso.BrickColor.Name, torso.Size.X, torso.Size.Y, torso.Size.Z)
FWeld = Weld(torso, FTorso, 0, 0, 0, 0, 0, 0)
RABrick = Part(Mo, false, false, 1, 0, "Really black", 0.1, 0.1, 0.1)
LABrick = Part(Mo, false, false, 1, 0, "Really black", 0.1, 0.1, 0.1)
RLBrick = Part(Mo, false, false, 1, 0, "Really black", 0.1, 0.1, 0.1)
LLBrick = Part(Mo, false, false, 1, 0, "Really black", 0.1, 0.1, 0.1)
RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)
RLBW = Weld(torso, RLBrick, -0.5, 1.2, 0, 0, 0, 0)
LLBW = Weld(torso, LLBrick, 0.5, 1.2, 0, 0, 0, 0)
function Atch(p)
RABW.Part0 = p
LABW.Part0 = p
RLBW.Part0 = p
LLBW.Part0 = p
RSH.Part0 = p
LSH.Part0 = p
RH.Part0 = p
LH.Part0 = p
end
RAW = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
LAW = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)
RLW = Weld(RLBrick, nil, 0, 0.8, 0, 0, 0, 0)
LLW = Weld(LLBrick, nil, 0, 0.8, 0, 0, 0, 0)
HB = Part(Mo, false, false, 1, 0, "Really black", 0.1, 0.1, 0.1)
HBW = Weld(Larm, HB, 0, 1, 0, 0, 0, 0)
HW = Weld(HB, nil, 0, 0, 0, MR(90), 0, 0)
AB = Part(Mo, false, false, 1, 0, "Really black", 0.1, 0.1, 0.1)
ABW = Weld(Rarm, AB, 0, 1, 0, 0, 0, 0)
AW = Weld(AB, nil, 0, 0, 0, 0, 0, 0)
TW = Weld(torso, nil, -0.7, 0, 0.5, 0, MP, 0)
Handle = Part(Mo, false, false, 0, 0, HandCol, 0.6, 1.2, 0.6)
Instance.new("SpecialMesh",Handle)
TW.Part1 = Handle
for i = -0.6, 0.61, 1.2 do
local p = Part(Mo, false, false, 0, 0, MiddleCol, 0.7, 0.2, 1.1)
Weld(Handle, p, 0, i, 0.15, 0, 0, 0)
Instance.new("BlockMesh", p)
end
local UpPoint, DownPoint
for i = -10, 95, 15 do
local p = Part(Mo, false, false, 0, 0, LapaCol, 0.69, 0.4, 0.2)
local w = Weld(Handle, p, 0, 0, 1.4, 0, 0, 0)
w.C0 = CN(0, 1.1, 0.75) * CA(MR(i), 0, 0)
Instance.new("BlockMesh", p)
UpPoint = p
end
for i = 10, -95, -15 do
local p = Part(Mo, false, false, 0, 0, LapaCol, 0.69, 0.4, 0.2)
local w = Weld(Handle, p, 0, 0, 1.4, 0, 0, 0)
w.C0 = CN(0, -1.1, 0.75) * CA(MR(i), 0, 0)
Instance.new("BlockMesh", p)
DownPoint = p
end
StringUp = Part(Mo, false, false, 0, 0, "Really black", 0.2, 1, 0.2)
StringDown = Part(Mo, false, false, 0, 0, "Really black", 0.2, 1, 0.2)
SUM = Instance.new("SpecialMesh", StringUp)
SDM = Instance.new("SpecialMesh", StringDown)
SUM.Scale = Vector3.new(0.4, 2.4, 0.4)
SDM.Scale = Vector3.new(0.4, 2.4, 0.4)
ORSU = CN(0, -1.3, 0) * CA(MR(-85), 0, 0)
ORSD = CN(0, 1.3, 0) * CA(MR(85), 0, 0)
SUW = Weld(UpPoint, StringUp, 0, -1.3, 0, MR(-85), 0, 0)
SDW = Weld(DownPoint, StringDown, 0, 1.3, 0, MR(85), 0, 0)
SUW.C0 = CN(0, 0.15, 0)
SDW.C0 = CN(0, -0.15, 0)
SUW.C1 = ORSU
SDW.C1 = ORSD
Arrow = Part(Mo, false, false, 1, 0, "Really black", 0.4, 0.4, 4.4)
local mesh = Instance.new("SpecialMesh",Arrow)
mesh.MeshId = "http://www.roblox.com/asset/?id=15887356"
mesh.TextureId = "http://www.roblox.com/asset/?id=15886781"
mesh.Scale = Vector3.new(1, 1, 2.1)
AW.Part1 = Arrow
Ring = Part(Mo, false, false, 0, 0, ViiniCol, 0.2, 0.2, 0.2)
RingM = Instance.new("SpecialMesh", Ring)
RingM.MeshId = "http://www.roblox.com/asset/?id=3270017"
RingM.Scale = Vector3.new(0.6, 1, 21)
local www = Weld(FTorso, Ring, -0.9, -0.2, -0.8, MR(90), MR(90), MR(30))
www.C0 = CA(MR(-10), 0, 0)
Sp = Part(Mo, false, false, 0, 0, "Really black", 1, 0.2, 1)
local S = Instance.new("SpecialMesh",Sp)
S.MeshType = "Sphere"
S.Scale = Vector3.new(0.65, 1, 1.05)
Weld(Ring, Sp, 0, 1.7, 0, MR(-90), 0, 0)
function makeArrow(pos, ang)
local arrow = Part(Mo, false, false, 0, 0, "Really black", 0.2, 1, 0.2)
local mesh = Instance.new("SpecialMesh",arrow)
mesh.MeshId = "http://www.roblox.com/asset/?id=15887356"
mesh.TextureId = "http://www.roblox.com/asset/?id=15886781"
mesh.Scale = Vector3.new(1, 1, 2.1)
Weld(Ring, arrow, pos.x, pos.y, pos.z, MP, 0, ang)
end
makeArrow(Vector3.new(0.15, 0.1, 0.55), 0.8)
makeArrow(Vector3.new(-0.2, -0.1, 0.65), -0.4)
makeArrow(Vector3.new(-0.1, 0.1, 0.6), 1.8)
makeArrow(Vector3.new(-0.1, -0.15, 0.7), 1.2)
makeArrow(Vector3.new(0, 0.3, 0.6), 0.28)
makeArrow(Vector3.new(0, 0, 0.65), 0.34)
makeArrow(Vector3.new(0.3, 0.1, 0.55), 1.9)
makeArrow(Vector3.new(-0.35, 0.1, 0.67), 1.9)
Mo.Parent = char
function Normal()
FTorso.Transparency = 1
FWeld.C0 = CN()
torso.Transparency = 0
LAW.C0 = CA(0, 0, MR(30))
RAW.Part1 = nil
RAW.C0 = CN()
RAW.C1 = CN(0, 0.5, 0)
LAW.C1 = CN(0, 0.5, 0)
LAW.Part1 = Larm
RABW.Part0 = torso
LABW.Part0 = torso
RLBW.Part0 = torso
LLBW.Part0 = torso
RSH.Part0 = torso
LSH.Part0 = torso
RH.Part0 = torso
LH.Part0 = torso
AW.C0 = CN()
HW.C0 = CA(MR(180), 0, MR(150))
SUW.C0 = CN(0, 0.15, 0)
SDW.C0 = CN(0, -0.15, 0)
SUW.C1 = ORSU
SDW.C1 = ORSD
SUM.Scale = Vector3.new(0.4, 2.4, 0.4)
SDM.Scale = Vector3.new(0.4, 2.4, 0.4)
end
if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin", me.Backpack)
h.Name = "xBow"
script.Parent = h
end
bin = h
function ShowDmg(pos, dmg)
local col = "Bright red"
if dmg < 1 then
col = "Bright blue"
end
local m = Instance.new("Model")
m.Name = "Damage Dealt: "..dmg*1758384
local p = Part(m, false, false, 0, 0, col, 0.8, 0.3, 0.8)
p.Name = "Head"
p.CFrame = CFrame.new(pos)
local bp = Instance.new("BodyPosition", p)
bp.position = pos + Vector3.new(0, 2.5, 0)
bp.P = 6500
bp.maxForce = Vector3.new(MH, MH, MH)
local h = Instance.new("Humanoid",m)
h.MaxHealth = 0
h.Health = 0
h.Name = "fffsaf"
m.Parent = workspace
game.Debris:AddItem(m, 1.5)
end
function Dmg(hum, dmg, pos)
if hum.Health > 0 then
hum.Health = hum.Health - dmg*1758384
ShowDmg(pos, dmg)
end
end
function ArrowT(hit)
local h = getHumanoid(hit.Parent)
if h and Deb and Hurt then
Deb = false
Dmg(h, MRA(3,15), Arrow.CFrame * CN(0, 0, 2.2).p)
end
end
Arrow.Touched:connect(ArrowT)
function SelectAnim()
LAW.Part1 = Larm
SelAnim = true
for i = 0.2, 1, 0.2 do
LAW.C0 = CA(MR(-25*i), 0, MR(25*i)) * CN(0, 0.2*i, 0)
wait()
end
HW.C0 = CN(0.4, 0.3, 0) * CA(MR(110), MR(-100), MR(180))
HW.Part1 = Handle
TW.Part1 = nil
for i = 0.08, 1, 0.08 do
LAW.C0 = CA(MR(-25+25*i), 0, MR(25-55*i)) * CN(0, 0.2-0.2*i, 0)
HW.C0 = CN(0.4-0.4*i, 0.3-0.3*i, 0) * CA(MR(110+70*i), MR(-20+20*i), MR(180-30*i))
wait()
end
SelAnim = false
HW.C0 = CA(MR(180), 0, MR(150))
end
function DeselectAnim()
for i = 0.12, 1, 0.12 do
LAW.C0 = CA(MR(-25*i), 0, MR(-30+55*i)) * CN(0, 0.2*i, 0)
HW.C0 = CN(0.4*i, 0.3*i, 0) * CA(MR(180-70*i), MR(-20*i), MR(150+30*i))
if SelAnim or Selected then return end
wait()
end
HW.Part1 = nil
TW.Part1 = Handle
for i = 0.12, 1, 0.12 do
LAW.C0 = CA(MR(-25+25*i), 0, MR(-30+55-25*i)) * CN(0, 0.2-0.2*i, 0)
if SelAnim or Selected then return end
wait()
end
if Selected == false and SelAnim == false then
LAW.Part1 = nil
end
end
function Slash()
RAW.Part1 = Rarm
Slashing = true
Play(Sounds.Slash)
for i = 0.15, 1, 0.15 do
RAW.C0 = CA(MR(180*i), MR(-20*i), MR(35*i))
AW.C0 = CA(MR(35*i), 0, 0) * CN(0, 0, 0.7*i)
wait()
end
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(180+10*i), MR(-20), MR(35+2*i))
AW.C0 = CA(MR(35+5*i), 0, 0) * CN(0, 0, 0.7+0.2*i)
wait()
end
local blockk = false
local hit, pos = RayC(torso.Position, torso.CFrame * CN(0, 0, -5).p, 3.2, char)
if hit ~= nil then
if getHumanoid(hit.Parent) == nil and hit.CanCollide == true then
blockk = true
end
end
SE(Arrow, CN(0, 0, 2.2))
if blockk == false then
Hurt = true
Deb = true
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(190-140*i), MR(-20-5*i), MR(37-87*i)) * CN(0, -1*i, 0)
AW.C0 = CA(MR(40-25*i), MR(-20*i), 0) * CN(0, 0, 0.9+0.3*i)
wait()
end
EE()
Hurt = false
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(50-10*i), MR(-25), MR(-50-5*i)) * CN(0, -1, 0)
AW.C0 = CA(MR(15-20*i), MR(-20-1*i), 0) * CN(0, 0, 1.2*i)
wait()
end
for i = 0.25, 1, 0.25 do
RAW.C0 = CA(MR(40-10*i), MR(-25+25*i), MR(-55+35*i)) * CN(0, -1+1*i, 0)
AW.C0 = CA(MR(-5+55*i), MR(-21+21*i), 0) * CN(0, 0, 1.2-1.2*i)
wait()
end
for i = 0.25, 1, 0.25 do
RAW.C0 = CA(MR(30-30*i), 0, MR(-20+20*i))
AW.C0 = CA(MR(50-50*i), 0, 0)
wait()
end
else
for i = 0.5, 1, 0.5 do
RAW.C0 = CA(MR(190-50*i), MR(-20-5*i), MR(37-27*i)) * CN(0, -0.2*i, 0)
AW.C0 = CA(MR(40-5*i), MR(-5*i), 0) * CN(0, 0, 0.9+0.1*i)
wait()
end
Play(Sounds.Block)
for i = 0.25, 1, 0.25 do
RAW.C0 = CA(MR(140+60*i), MR(-25+25*i), MR(10+20*i)) * CN(0, -0.2-0.3*i, 0)
AW.C0 = CA(MR(35+45*i), MR(-5+5*i), 0) * CN(0, 0, 1)
wait()
end
EE()
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(200+10*i), MR(5*i), MR(30+5*i)) * CN(0, -0.5, 0)
AW.C0 = CA(MR(80+5*i), 0, 0) * CN(0, 0, 1)
wait()
end
for i = 0.18, 1, 0.18 do
RAW.C0 = CA(MR(210-200*i), MR(5-5*i), MR(35-30*i)) * CN(0, -0.5+0.4*i, 0)
AW.C0 = CA(MR(85-75*i), 0, 0) * CN(0, 0, 1-0.8*i)
wait()
end
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(10-10*i), 0, MR(5-5*i)) * CN(0, -0.1+0.1*i, 0)
AW.C0 = CA(MR(10-10*i), 0, 0) * CN(0, 0, 0.2-0.2*i)
wait()
end
AW.C0 = CN()
end
Slashing = false
RAW.Part1 = nil
end
function Reload()
if ArrowOn == false then
RAW.Part1 = Rarm
Reloading = true
for i = 0.16, 1, 0.16 do
RAW.C0 = CA(MR(200*i), MR(-5*i), 0) * CN(0, -0.35*i, 0)
wait()
end
AW.C0 = CA(0, MR(-90), 0)
AW.C1 = CN(0, 0, -1.5) * CA(MR(60), 0, 0)
Arrow.Transparency = 0
ArrowOn = true
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(200), MR(-5), MR(40*i)) * CN(0, -0.35, 0)
AW.C1 = CN(0, 0, -1.5+2*i) * CA(MR(60-20*i), 0, 0)
wait()
end
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(200), MR(-5), MR(40+10*i)) * CN(0, -0.35+0.05*i, 0)
AW.C1 = CN(0, 0, 0.5+0.1*i) * CA(MR(40-5*i), 0, 0)
wait()
end
for i = 0.18, 1, 0.18 do
RAW.C0 = CA(MR(200-190*i), MR(-5+5*i), MR(50-45*i)) * CN(0, -0.3+0.25*i, 0)
AW.C1 = CN(0, 0, 0.6-0.5*i) * CA(MR(35-30*i), 0, 0)
AW.C0 = CA(0, MR(-90+80*i), 0)
wait()
end
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(10-10*i), 0, MR(5-5*i)) * CN(0, -0.05+0.05*i, 0)
AW.C1 = CN(0, 0, 0.1-0.1*i) * CA(MR(5-5*i), 0, 0)
AW.C0 = CA(0, MR(-10+10*i), 0)
wait()
end
AW.C1 = CN()
AW.C0 = CN()
RAW.C0 = CN()
RAW.Part1 = nil
Reloading = false
else
Slash()
end
end
function AddDetail(Surface, pos, bool, part, hu)
local caf = CN(pos) * CA(part.CFrame:toEulerAnglesXYZ()) * Surface[2]
if Surface[1] == "Anything" then
caf = Surface[2]
end
Notime(function()
if bool then
Notime(function()
for i = 1, MRA(2,7) do
local x = MRA(0.4*100, 0.9*100)/100
local z = MRA(0.7*100, 1.2*100)/100
local pp = Part(hu.Parent, false, false, 0, 0, "Bright red", 0.2, 0.2, 0.2)
local ms = Instance.new("SpecialMesh",pp)
ms.MeshType = "Sphere"
ms.Scale = Vector3.new(x*5, 1, z*5)
pp.CFrame = caf
local w = Weld(part, pp, 0, 0, 0, 0, 0, 0)
local c0 = part.CFrame:toObjectSpace(caf) * CN(MRA(-0.3*100, 0.3*100)/100, 0, MRA(-0.3*100, 0.3*100)/100) * CA(0, MR(MRA(-180,180)), 0)
w.C0 = c0
Notime(function()
local moar = MRA(-1.1*1000, 1.1*1000)/1000
for i = 0, 1, MRA(0.02*1000, 0.06*1000)/1000 do
wait()
w.C0 = c0 * CN(0, 0, -moar*i)
ms.Scale = Vector3.new((x*5)-(moar/3)*i, 1, (z*5)+(moar/3)*i)
pp.Transparency = -0.5+1.5*i
end
pp:remove()
end)
end
end)
for i = 1, MRA(4,8) do
Notime(function()
local pp2 = Part(hu.Parent, true, false, 0, 0, "Bright red", 0.2, 0.2, 0.2)
pp2.CFrame = caf
local ms2 = Instance.new("SpecialMesh",pp2)
ms2.MeshType = "Sphere"
ms2.Scale = Vector3.new(1.5, 1.5, 1.5)
local face = CA(MR(MRA(-40, 40)+105), MR(MRA(-40, 40)), MR(MRA(-40, 40)))
local center = caf * face * CN(0, -5, 0)
Notime(function()
for i = 0, 1, 0.1 do
pp2.Transparency = -0.7+1.7*i
pp2.CFrame = center * CN(0, 0, -2.5*i) * CA(MR(-55*i), 0, 0) * CN(0, 5, 0)
wait()
end
pp2:remove()
end)
end)
end
else
Notime(function()
for i = 1, MRA(5,8) do
Notime(function()
local t = {"Bright yellow", "New Yeller", "Really black", "Institutional Really black", "Brick yellow"}
local pp = Part(workspace, true, false, 0, 0, t[MRA(1, #t)], 0.2, 0.2, 0.2)
local mes = Instance.new("SpecialMesh",pp)
mes.MeshType = "Sphere"
mes.Scale = Vector3.new(0.5, 0.5, 1)
local caa = CN(caf.p) * CA(MR(MRA(-180,180)), MR(MRA(-180,180)), MR(MRA(-180,180)))
pp.CFrame = caa
for i = 0.25, 1, 0.25 do
wait()
mes.Scale = Vector3.new(0.5+0.1*i, 0.5+0.1*i, 1+2*i)
pp.CFrame = caa * CN(0, 0, -0.4*i)
end
for i = 0.25, 1, 0.25 do
wait()
mes.Scale = Vector3.new(0.6, 0.6, 3+1.6*i)
pp.CFrame = caa * CN(0, 0, -0.6-0.32*i)
pp.Transparency = -0.2+1.2*i
end
pp:remove()
end)
end
end)
end
end)
end
function ShootArrow(pos, power, targ)
local Start = Handle.Position
local mag = (Start - pos).magnitude/200
if mag > 12.5 then mag = 12.5 end
if targ == nil then mag = 1 end
local Face = CN(Start, pos) * CA(MR(MRA(-Accuracy*10000, Accuracy*10000)/10000+mag), MR(MRA(-Accuracy*10000, Accuracy*10000)/10000), MR(MRA(-Accuracy*10000, Accuracy*10000)/10000))
local Arr = Part(Mo, true, false, 0, 0, "Really black", 0.2, 0.2, 0.2)
local mes = Instance.new("SpecialMesh",Arr)
mes.MeshId = "http://www.roblox.com/asset/?id=15887356"
mes.TextureId = "http://www.roblox.com/asset/?id=15886781"
mes.Scale = Vector3.new(1, 1, 2.1)
Arr.CFrame = Face
local Go = 2.8+(power/30)
local Dist = 200+(power*2.8)
local Drop = 0.55/(Go*1.25)
local lastP = Start
local didhit = false
local omg = 0
local hit2, pos2 = RayC(torso.CFrame * CN(0, 0, -0.4).p, torso.CFrame * CN(0, 0, -2).p, 2.5, char)
local hu2 = nil
if hit2 then
local hh = getHumanoid(hit2.Parent)
if hh then
hit2 = nil
end
end
for i = Go, Dist, Go do
Drop = Drop + 1/(Go*3.5)
omg = omg + Drop
local dropping = CA(MR(-Drop), 0, 0)
if omg > 130 then
dropping = CN()
end
Face = Face * dropping * CN(0, 0, -Go)
Arr.CFrame = Face * CA(MR(-180), 0, 0)
local hit, p = RayC(lastP, Face.p, Go+0.5, char)
local eff = Part(Mo, true, false, 0, 0, "Really black", 0.2, 1, 0.2)
local magn = (lastP - Face.p).magnitude
local cf = CN(lastP, Face.p) * CA(MR(-90), 0, 0)
if hit then
magn = (lastP - p).magnitude
cf = CN(lastP, p) * CA(MR(-90), 0, 0)
end
local mes2 = Instance.new("SpecialMesh",eff)
mes2.Scale = Vector3.new(0.6, magn, 0.6)
eff.CFrame = cf * CN(0, magn/2, 0)
Notime(function()
for i = 0, 1, 0.12 do
wait()
eff.Transparency = i
eff.Reflectance = 0.15*i
mes2.Scale = Vector3.new(0.6-0.6*i, magn, 0.6-0.6*i)
end
eff:remove()
end)
local realhit = hit
if hit2 then realhit = hit2 p = pos2 end
if hit or hit2 then
local h = getHumanoid(realhit.Parent)
local sound = Sounds.Stick
if h and hit.Parent.className ~= "Hat" then
local d = MRA(12+DMG+(power/8), 20+DMG+(power/5.5))
hit:remove()
if hit.Name == "Head" then
d = math.floor(d*1.4)
hit:remove()
end
Dmg(h, d, p)
sound = Sounds.Hit
elseif h == nil and realhit.Parent.className ~= "Hat" then
if realhit.Anchored == false then
Notime(function()
wait(0.08)
local mas = realhit:GetMass()/5+2
local vel = (16+(power/3))/mas
if vel < 0 then vel = 0 end
realhit.Velocity = (CN(lastP, p).lookVector) * vel
end)
end
end
local a = -1.2
if realhit.Anchored then
Arr.CFrame = CN(p, lastP) * CN(0, 0, a)
if realhit == hit2 then
Arr.CFrame = CN(Start, pos2) * CN(0, 0, -1.9)
end
else
a = (power-200)/110
local w8 = 13
if realhit.Parent.className == "Hat" then
a = ((power/2)-170)/110
w8 = 5
end
Arr.Anchored = false
local w = Weld(realhit, Arr, 0, 0, 0, 0, 0, 0)
w.C1 = ((CN(p, lastP) * CN(0, 0, a)):toObjectSpace(realhit.CFrame))
if realhit == hit2 then
w.C1 = ((CN(Start, pos2) * CN(0, 0, -1.9)):toObjectSpace(realhit.CFrame))
end
Notime(function()
if power < 50 then
wait(w8+power/7.5)
local caa = Arr.CFrame
w:remove()
Arr.Size = Vector3.new(0.3, 0.3, 4)
Arr.CFrame = caa
Arr.CanCollide = true
end
end)
end
didhit = true
Notime(
function()
wait(26)
for i = 0, 1, 0.02 do
Arr.Transparency = i
wait()
end
Arr:remove()
end
)
Play(sound)
local Surface = DetectSurface(p, realhit)
AddDetail(Surface, p, h ~= nil and hit.Parent.className ~= "Hat", realhit, h)
wait(0.05)
break
end
lastP = Face.p
wait()
end
if didhit == false then
for i = 0, 1, 0.2 do
Arr.Transparency = i
wait()
end
Arr:remove()
end
end
function Shoot(mouse)
Shooting = true
RAW.Part1 = Rarm
Atch(FTorso)
FTorso.Transparency = 0
torso.Transparency = 1
local shoot = false
Spec.BorderColor3 = C3()
local amg, omg = false, false
Notime(function()
repeat
wait()
until Selected == false or omg
if omg == false then
omg = true
Shooting = false
Reloading = false
Hurt = false
Slashing = false
Normal()
EE()
return
end
end)
Notime(function()
mouse.Button1Up:wait()
shoot = true
end)
for i = 0.16, 1, 0.16 do
FWeld.C0 = CA(0, MR(-80*i), 0)
LAW.C0 = CA(MR(85*i), 0, MR(-30-25*i)) * CN(0.3*i, 0.4*i, -0.1*i)
RAW.C0 = CA(MR(85*i), 0, MR(-70*i)) * CN(0.65*i, -1.2*i, 0)
HW.C0 = CA(MR(180), 0, MR(150+60*i))
AW.C0 = CA(MR(85*i), 0, 0) * CN(0, 0, 2.1*i)
wait()
end
for i = 0.33, 1, 0.33 do
FWeld.C0 = CA(0, MR(-80-10*i), 0)
LAW.C0 = CA(MR(85+5*i), 0, MR(-55-5*i)) * CN(0.3, 0.4, -0.1)
RAW.C0 = CA(MR(85+5*i), 0, MR(-70-5*i)) * CN(0.65+0.05*i, -1.2-0.1*i, 0)
HW.C0 = CA(MR(180), 0, MR(210+5*i))
AW.C0 = CA(MR(85+5*i), MR(-15*i), 0) * CN(0, 0, 2.1+0.1*i)
wait()
end
LAW.C0 = CA(MR(90), 0, MR(-60)) * CN(0.3, 0.4, -0.1)
HW.C0 = CA(MR(180), 0, MR(215))
FWeld.C0 = CA(0, MR(-90), 0)
for i = 0.25, 1, 0.25 do
RAW.C0 = CA(MR(90), 0, MR(-75)) * CN(0.7, -1.3+1.2*i, 0)
SUW.C0 = CN(0, 0.15, 0) * CA(MR(-26*i), 0, 0)
SUW.C1 = CN(0, -0.22*i, 0) * ORSU
SUM.Scale = Vector3.new(0.4, 2.4+0.3*i, 0.4)
SDW.C0 = CN(0, -0.15, 0) * CA(MR(26*i), 0, 0)
SDM.Scale = Vector3.new(0.4, 2.4+0.3*i, 0.4)
SDW.C1 = CN(0, 0.25*i, 0) * ORSD
wait()
end
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(90), 0, MR(-75)) * CN(0.7, -0.1+0.1*i, 0)
SUW.C0 = CN(0, 0.15, 0) * CA(MR(-26-4*i), 0, 0)
SUW.C1 = CN(0, -0.22-0.03*i, 0) * ORSU
SUM.Scale = Vector3.new(0.4, 2.7+0.1*i, 0.4)
SDW.C0 = CN(0, -0.15, 0) * CA(MR(26+4*i), 0, 0)
SDM.Scale = Vector3.new(0.4, 2.7+0.1*i, 0.4)
SDW.C1 = CN(0, 0.22+0.04*i, 0) * ORSD
wait()
end
RAW.C0 = CA(MR(90), 0, MR(-75)) * CN(0.7, 0, 0)
local powe = 10
Main.Visible = true
Bar.Size = UD(powe/MaximumPower, 0, 1, 0)
Notime(function()
repeat wait() until powe >= MaximumPower or shoot
wait(6)
if shoot == false then
shoot = true
end
end)
repeat
wait()
powe = powe + 4.8
if powe > MaximumPower then powe = MaximumPower end
Bar.Size = UD(powe/MaximumPower, 0, 1, 0)
local sped = 16-((powe/MaximumPower)*9) if Selected == false then sped = 16 end
Hum.WalkSpeed = sped
until shoot
Main.Visible = false
Notime(function()
for i = 0.5, 1, 0.5 do
SUW.C0 = CN(0, 0.15, 0) * CA(MR(-30+30*i), 0, 0)
SUW.C1 = CN(0, -0.25+0.25*i, 0) * ORSU
SUM.Scale = Vector3.new(0.4, 2.8-0.4*i, 0.4)
SDW.C0 = CN(0, -0.15, 0) * CA(MR(30-30*i), 0, 0)
SDM.Scale = Vector3.new(0.4, 2.8-0.4*i, 0.4)
SDW.C1 = CN(0, 0.25-0.25*i, 0) * ORSD
wait()
end
end)
local pos = mouse.Hit.p
ArrowOn = false
Arrow.Transparency = 1
Notime(function()
Play(Sounds.Shoot)
ShootArrow(pos, powe, mouse.Target)
end)
for i = 0.2, 1, 0.2 do
FWeld.C0 = CA(0, MR(-90+25*i), 0)
LAW.C0 = CA(MR(90+25*i), 0, MR(-60-15*i)) * CN(0.3-0.3*i, 0.4-0.4*i, -0.1+0.1*i)
RAW.C0 = CA(MR(90+60*i), 0, MR(-75+55*i)) * CN(0.7-0.5*i, -0.1*i, 0)
HW.C0 = CA(MR(180), 0, MR(215-65*i))
wait()
end
Hum.WalkSpeed = 16
for i = 0.25, 1, 0.25 do
FWeld.C0 = CA(0, MR(-65+5*i), 0)
LAW.C0 = CA(MR(115+5*i), 0, MR(-75-5*i))
RAW.C0 = CA(MR(150+10*i), 0, MR(-20+5*i)) * CN(0.2-0.1*i, -0.1-0.05*i, 0)
HW.C0 = CA(MR(180), 0, MR(150))
wait()
end
for i = 0.14, 1, 0.14 do
FWeld.C0 = CA(0, MR(-60+55*i), 0)
LAW.C0 = CA(MR(120-110*i), 0, MR(-80+45*i))
RAW.C0 = CA(MR(160-150*i), 0, MR(-15+10*i)) * CN(0.1-0.1*i, -0.15+0.15*i, 0)
wait()
end
for i = 0.33, 1, 0.33 do
FWeld.C0 = CA(0, MR(-5+5*i), 0)
LAW.C0 = CA(MR(10-10*i), 0, MR(-35+5*i))
RAW.C0 = CA(MR(10-10*i), 0, MR(-5+5*i))
wait()
end
AW.C0 = CN()
FWeld.C0 = CN()
LAW.C0 = CA(0, 0, MR(-30))
HW.C0 = CA(MR(180), 0, MR(150))
FTorso.Transparency = 1
torso.Transparency = 0
Atch(torso)
Shooting = false
RAW.Part1 = nil
RAW.C0 = CN()
Spec.BorderColor3 = C3()
omg = true
end
function SpecialAtk(mouse)
if Special < 50 then return end
Shooting = true
Spec.BorderColor3 = C3(0, 1, 0)
RAW.Part1 = Rarm
Atch(FTorso)
FTorso.Transparency = 0
torso.Transparency = 1
local amg, omg = false, false
Notime(function()
repeat
wait()
until Selected == false or omg
if omg == false then
omg = true
Shooting = false
Reloading = false
Hurt = false
Slashing = false
Normal()
EE()
return
end
end)
local shoot = false
Notime(function()
mouse.Button1Up:wait()
shoot = true
end)
for i = 0.2, 1, 0.2 do
FWeld.C0 = CA(0, MR(-80*i), 0)
LAW.C0 = CA(MR(85*i), 0, MR(-30-25*i)) * CN(0.3*i, 0.4*i, -0.1*i)
RAW.C0 = CA(MR(85*i), 0, MR(-70*i)) * CN(0.65*i, -1.2*i, 0)
HW.C0 = CA(MR(180), 0, MR(150+60*i))
AW.C0 = CA(MR(85*i), 0, 0) * CN(0, 0, 2.1*i)
wait()
end
for i = 0.5, 1, 0.5 do
FWeld.C0 = CA(0, MR(-80-10*i), 0)
LAW.C0 = CA(MR(85+5*i), 0, MR(-55-5*i)) * CN(0.3, 0.4, -0.1)
RAW.C0 = CA(MR(85+5*i), 0, MR(-70-5*i)) * CN(0.65+0.05*i, -1.2-0.1*i, 0)
HW.C0 = CA(MR(180), 0, MR(210+5*i))
AW.C0 = CA(MR(85+5*i), MR(-15*i), 0) * CN(0, 0, 2.1+0.1*i)
wait()
end
LAW.C0 = CA(MR(90), 0, MR(-60)) * CN(0.3, 0.4, 0)
HW.C0 = CA(MR(180), 0, MR(215))
FWeld.C0 = CA(0, MR(-90), 0)
AW.C0 = CA(MR(90), MR(-15), 0) * CN(0, 0, 2.2)
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(90), 0, MR(-75)) * CN(0.7, -1.3+1.2*i, 0)
SUW.C0 = CN(0, 0.15, 0) * CA(MR(-26*i), 0, 0)
SUW.C1 = CN(0, -0.22*i, 0) * ORSU
SUM.Scale = Vector3.new(0.4, 2.4+0.3*i, 0.4)
SDW.C0 = CN(0, -0.15, 0) * CA(MR(26*i), 0, 0)
SDM.Scale = Vector3.new(0.4, 2.4+0.3*i, 0.4)
SDW.C1 = CN(0, 0.25*i, 0) * ORSD
wait()
end
for i = 0.5, 1, 0.5 do
RAW.C0 = CA(MR(90), 0, MR(-75)) * CN(0.7, -0.1+0.1*i, 0)
SUW.C0 = CN(0, 0.15, 0) * CA(MR(-26-4*i), 0, 0)
SUW.C1 = CN(0, -0.22-0.03*i, 0) * ORSU
SUM.Scale = Vector3.new(0.4, 2.7+0.1*i, 0.4)
SDW.C0 = CN(0, -0.15, 0) * CA(MR(26+4*i), 0, 0)
SDM.Scale = Vector3.new(0.4, 2.7+0.1*i, 0.4)
SDW.C1 = CN(0, 0.22+0.04*i, 0) * ORSD
wait()
end
RAW.C0 = CA(MR(90), 0, MR(-75)) * CN(0.7, 0, 0)
local powe = 0
Main.Visible = true
Bar.Size = UD(powe/MaximumPower, 0, 1, 0)
Notime(function()
repeat wait() until powe >= MaximumPower or shoot
if shoot == false then
shoot = true
end
end)
repeat
wait()
powe = powe + 5
if powe > MaximumPower then powe = MaximumPower end
Bar.Size = UD(powe/MaximumPower, 0, 1, 0)
local sped = 16-((powe/MaximumPower)*9) if Selected == false then sped = 16 end
Hum.WalkSpeed = sped
until shoot
Special = Special - 50
Main.Visible = false
local pos = mouse.Hit.p
Notime(function()
Play(Sounds.Shoot)
ShootArrow(pos, powe/1.2, mouse.Target)
end)
SUW.C0 = CN(0, 0.15, 0) * CA(0, 0, 0)
SUW.C1 = CN(0, 0, 0) * ORSU
SUM.Scale = Vector3.new(0.4, 2.4, 0.4)
SDW.C0 = CN(0, -0.15, 0) * CA(0, 0, 0)
SDM.Scale = Vector3.new(0.4, 2.4, 0.4)
SDW.C1 = CN(0, 0, 0) * ORSD
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(90), 0, MR(-75)) * CN(0.7, -1.3*i, 0)
wait()
end
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(90), 0, MR(-75)) * CN(0.7, -1.3+1.2*i, 0)
SUW.C0 = CN(0, 0.15, 0) * CA(MR(-26*i), 0, 0)
SUW.C1 = CN(0, -0.22*i, 0) * ORSU
SUM.Scale = Vector3.new(0.4, 2.4+0.3*i, 0.4)
SDW.C0 = CN(0, -0.15, 0) * CA(MR(26*i), 0, 0)
SDM.Scale = Vector3.new(0.4, 2.4+0.3*i, 0.4)
SDW.C1 = CN(0, 0.25*i, 0) * ORSD
wait()
end
for i = 0.5, 1, 0.5 do
RAW.C0 = CA(MR(90), 0, MR(-75)) * CN(0.7, -0.1+0.1*i, 0)
SUW.C0 = CN(0, 0.15, 0) * CA(MR(-26-4*i), 0, 0)
SUW.C1 = CN(0, -0.22-0.03*i, 0) * ORSU
SUM.Scale = Vector3.new(0.4, 2.7+0.1*i, 0.4)
SDW.C0 = CN(0, -0.15, 0) * CA(MR(26+4*i), 0, 0)
SDM.Scale = Vector3.new(0.4, 2.7+0.1*i, 0.4)
SDW.C1 = CN(0, 0.22+0.04*i, 0) * ORSD
wait()
end
Notime(function()
Arrow.Transparency = 1
ArrowOn = false
Play(Sounds.Shoot)
ShootArrow(pos, powe/1.2, mouse.Target)
end)
Notime(function()
for i = 0.5, 1, 0.5 do
SUW.C0 = CN(0, 0.15, 0) * CA(MR(-30+30*i), 0, 0)
SUW.C1 = CN(0, -0.25+0.25*i, 0) * ORSU
SUM.Scale = Vector3.new(0.4, 2.9-0.5*i, 0.4)
SDW.C0 = CN(0, -0.15, 0) * CA(MR(30-30*i), 0, 0)
SDM.Scale = Vector3.new(0.4, 2.9-0.5*i, 0.4)
SDW.C1 = CN(0, 0.25-0.25*i, 0) * ORSD
wait()
end
end)
for i = 0.25, 1, 0.25 do
FWeld.C0 = CA(0, MR(-90+25*i), 0)
LAW.C0 = CA(MR(90+25*i), 0, MR(-60-15*i)) * CN(0.3-0.3*i, 0.4-0.4*i, -0.1+0.1*i)
RAW.C0 = CA(MR(90+60*i), 0, MR(-75+55*i)) * CN(0.7-0.5*i, -0.1*i, 0)
HW.C0 = CA(MR(180), 0, MR(215-65*i))
wait()
end
Hum.WalkSpeed = 16
for i = 0.33, 1, 0.33 do
FWeld.C0 = CA(0, MR(-65+5*i), 0)
LAW.C0 = CA(MR(115+5*i), 0, MR(-75-5*i))
RAW.C0 = CA(MR(150+10*i), 0, MR(-20+5*i)) * CN(0.2-0.1*i, -0.1-0.05*i, 0)
HW.C0 = CA(MR(180), 0, MR(150))
wait()
end
for i = 0.16, 1, 0.16 do
FWeld.C0 = CA(0, MR(-60+55*i), 0)
LAW.C0 = CA(MR(120-110*i), 0, MR(-80+45*i))
RAW.C0 = CA(MR(160-150*i), 0, MR(-15+10*i)) * CN(0.1-0.1*i, -0.15+0.15*i, 0)
wait()
end
for i = 0.5, 1, 0.5 do
FWeld.C0 = CA(0, MR(-5+5*i), 0)
LAW.C0 = CA(MR(10-10*i), 0, MR(-35+5*i))
RAW.C0 = CA(MR(10-10*i), 0, MR(-5+5*i))
wait()
end
Spec.BorderColor3 = C3()
AW.C0 = CN()
FWeld.C0 = CN()
LAW.C0 = CA(0, 0, MR(-30))
HW.C0 = CA(MR(180), 0, MR(150))
FTorso.Transparency = 1
torso.Transparency = 0
Atch(torso)
Shooting = false
RAW.Part1 = nil
RAW.C0 = CN()
omg = false
end
function Sel(mouse)
mouse.Icon = Icon
SelectAnim()
Selected = true
mouse.KeyDown:connect(function(key)
key = key:lower()
if Reloading == false and Slashing == false and Shooting == false then
if key == "f" then
Reload()
end
end
if Shooting == false then
if key == "e" then
Keys.e = true
local k
Spec.BorderColor3 = C3(1, 1, 0.4)
repeat
wait()
k = mouse.KeyUp:wait()
until k == "e"
Keys.e = false
if Shooting == false then
Spec.BorderColor3 = C3()
end
end
end
end)
mouse.Button1Down:connect(function()
if Reloading == false and Slashing == false and Shooting == false then
if ArrowOn == false then
local yesh = true
Notime(function()
mouse.Button1Up:wait()
yesh = false
end)
local ah = Keys.e
Reload()
if yesh then
local mm = Special >= 50
if ah and mm or Keys.e and mm then
SpecialAtk(mouse)
else
Shoot(mouse)
end
end
else
local mm = Special >= 50
if Keys.e and mm then
SpecialAtk(mouse)
else
Shoot(mouse)
end
end
end
end)
end
function Desel(mouse)
Selected = false
Main.Visible = false
Hum.WalkSpeed = 16
DeselectAnim()
end
bin.Deselected:connect(Desel)
bin.Selected:connect(Sel)
while Mo.Parent == char do
wait()
Special = Special + 0.07
if Special > MaxSpecial then Special = MaxSpecial end 
SpecialBar.Size = UDim2.new(Special/MaxSpecial, 0, 1, 0)
end


end}
module[2] = {"Grab Knife v2",function()
me = game.Players.LocalPlayer
char = me.Character
selected = false
attacking = false
hurt = false
grabbed = nil
mode = "kill"
bloodcolors = {"Bright red", "Really red", "Crimson"}
enabled = true
enabled2 = true
 
local breaksound = Instance.new("Sound")
breaksound.SoundId = "http://www.roblox.com/asset/?id=2801263"
breaksound.Parent = game.Workspace
breaksound.Volume = 0.8
   
local killsound = Instance.new("Sound")
killsound.SoundId = "http://www.roblox.com/asset/?id=2801263"
killsound.Pitch = 0.65
killsound.Parent = game.Workspace
 
local drainsound = Instance.new("Sound")
drainsound.SoundId = "http://www.roblox.com/asset/?id=2785493"
drainsound.Pitch = 0.7
 
 
function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.formFactor = form
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part.Locked = true
part:BreakJoints()
end
 
function weld(w, p, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end
 
function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end
 
function remgui()
    for _,v in pairs(me.PlayerGui:GetChildren()) do
        if v.Name == "Modeshow" then
            v:remove()
        end
    end
end
 
function inform(text,delay)
    remgui()
    local sc = Instance.new("ScreenGui")
    sc.Parent = me.PlayerGui
    sc.Name = "Modeshow"
    local bak = Instance.new("Frame",sc)
    bak.BackgroundColor3 = Color3.new(1,1,1)
    bak.Size = UDim2.new(0.94,0,0.1,0)
    bak.Position = UDim2.new(0.03,0,0.037,0)
    bak.BorderSizePixel = 0
    local gi = Instance.new("TextLabel",sc)
    gi.Size = UDim2.new(0.92,0,0.09,0)
    gi.BackgroundColor3 = Color3.new(0,0,0)
    gi.Position = UDim2.new(0.04,0,0.042,0)
    gi.TextColor3 = Color3.new(1,1,1)
    gi.FontSize = "Size14"
    gi.Text = text
    coroutine.resume(coroutine.create(function()
        wait(delay)
        sc:remove()
    end))
end
 
if char:findFirstChild("Bricks",true) then
    char:findFirstChild("Bricks",true):remove()
end
 
bricks = Instance.new("Model",me.Character)
bricks.Name = "Bricks"
 
--Parts-------------------------Parts-------------------------Parts-------------------------Parts----------------------
 
rarm = char:findFirstChild("Right Arm")
larm = char:findFirstChild("Left Arm")
lleg = char:findFirstChild("Left Leg")
torso = char:findFirstChild("Torso")
hum = char:findFirstChild("Humanoid")
rleg = char:findFirstChild("Right Leg")
 
righthold = Instance.new("Part")
prop(righthold, bricks, false, 1, 0, 0.1, 0.1, 0.1, "Mid gray", false, "Custom")
w11 = Instance.new("Weld")
weld(w11, rarm, righthold, 0, 0, 0, 0, 1, 0)
 
lefthold = Instance.new("Part")
prop(lefthold, bricks, false, 1, 0, 0.1, 0.1, 0.1, "Mid gray", false, "Custom")
w12 = Instance.new("Weld")
weld(w12, larm, lefthold, 0, 0, 0, 0, 1, 0)
 
hold = Instance.new("Part")
prop(hold, bricks, false, 0, 0, 0.2, 0.3, 0.3, "Black", false, "Custom")
oh = Instance.new("Weld")
weld(oh, torso, hold, -math.pi/-0.86, 1.5, math.rad(0), -0.35, -0.4, -0.5)
 
knife = Instance.new("Part")
knife.Material = "Wood"
prop(knife, bricks, false, 0, 0, 0.25, 1.1, 0.3, "Pine Cone", false, "Custom")
orr = Instance.new("Weld")
weld(orr, hold, knife, 0, 0, 0, 0, 0.7, 0)
ar = Instance.new("Weld")
weld(ar, lefthold, nil, math.pi/2, 0, math.pi, 0, 0, 0)
 
blade = Instance.new("Part")
blade.Material = "Neon"
prop(blade, bricks, false, 0, 0, 0.1, 2.5, 0.25, "Mid gray", false, "Custom")
Instance.new("BlockMesh",blade).Scale = Vector3.new(0.3,1,1)
w2 = Instance.new("Weld")
weld(w2, knife, blade, 0, 0, 0, 0, -0.65, 0)
 
blade2 = Instance.new("Part")
blade2.Material = "Neon"
prop(blade2, bricks, false, 0, 0, 0.1, 0.4, 0.25, "Mid gray", false, "Custom")
local mew = Instance.new("SpecialMesh",blade2)
mew.MeshType = "Wedge"
mew.Scale = Vector3.new(0.3,1,1)
w3 = Instance.new("Weld")
weld(w3, blade, blade2, 0, 0, 0, 0, -1.45, 0)
 
 
rb = Instance.new("Part")
prop(rb, bricks, false, 1, 0, 0.1, 0.1, 0.1, "Bright red", false, "Custom")
w13 = Instance.new("Weld")
weld(w13, torso, rb, 0, 0, 0, -1.5, -0.5, 0)
 
lb = Instance.new("Part")
prop(lb, bricks, false, 1, 0, 0.1, 0.1, 0.1, "Bright red", false, "Custom")
w14 = Instance.new("Weld")
weld(w14, torso, lb, 0, 0, 0, 1.5, -0.5, 0)
 
rw = Instance.new("Weld")
weld(rw, rb, nil, 0, 0, 0, 0, 0.5, 0)
 
lw = Instance.new("Weld")
weld(lw, lb, nil, 0, 0, 0, 0, 0.5, 0)
 
grabweld = nil
platlol = nil
lolhum = nil
 
function touch(h)
    if hurt then
        if grabbed == nil then
            local hu = h.Parent:findFirstChild("Humanoid")
            local head = h.Parent:findFirstChild("Head")
            local torz = h.Parent:findFirstChild("Torso")
            if hu ~= nil and head ~= nil and torz ~= nil and h.Parent.Name ~= name then
                if hu.Health > 0 then
                grabbed = torz
                hu.PlatformStand = true
                local w = Instance.new("Weld")
                weld(w,righthold,grabbed,math.pi/2,0.2,0,0.7,-0.9,-0.6)
                grabweld = w
                lolhum = hu
                local lolxd = true
                platlol = lolxd
                hu.Changed:connect(function(prop)
                    if prop == "PlatformStand" and platlol then
                        hu.PlatformStand = true
                    end
                end)
                end
            end
        end
    end
end
 
righthold.Touched:connect(touch)
lefthold.Touched:connect(touch)
 
function bleed(part,po)
    local lol1 = math.random(5,30)/100
    local lol2 = math.random(5,30)/100
    local lol3 = math.random(5,30)/100
    local lol4 = math.random(1,#bloodcolors)
    local p = Instance.new("Part")
    prop(p,part.Parent,false,0,0,lol1,lol2,lol3,bloodcolors[lol4],false,"Custom")
    p.CFrame = part.CFrame * CFrame.new(math.random(-5,5)/10,po,math.random(-5,5)/10)
    p.Velocity = Vector3.new(math.random(-25,25),math.random(-25,25),math.random(-25,25))
    p.RotVelocity = Vector3.new(math.random(-400,400)/10,math.random(-400,400)/10,math.random(-400,400)/10)
    p.CanCollide = true
    coroutine.resume(coroutine.create(function()
        wait(3)
        p:remove()
    end))
end
 
h = Instance.new("HopperBin",me.Backpack)
 
h.Name = "Knife"
 
script.Parent = h
 
 
bin = h
 
 
 
function select(mouse)
    orr.Part1 = nil
    ar.Part1 = knife
    mouse.Button1Down:connect(function()
        if attacking == false then
            attacking = true
            lw.Part1 = larm
            rw.Part1 = rarm
            hurt = true
            for i=1, 8 do
                rw.C0 = rw.C0 * CFrame.new(-0.03,0,-0.08) * CFrame.fromEulerAnglesXYZ(0.18,0.04,0)
                lw.C0 = lw.C0 * CFrame.new(0.06,0,-0.06) * CFrame.fromEulerAnglesXYZ(0.15,-0.11,-0.05)
                wait()
            end
            wait(1)
            hurt = false
            if grabbed == nil then
                for i=1, 4 do
                    rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
                    lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)
                    wait()
                end
                lw.C0 = CFrame.new(0,0,0)
                rw.C0 = CFrame.new(0,0,0)
                lw.Part1 = nil
                rw.Part1 = nil
                attacking = false
            end
        elseif hurt == false and grabbed ~= nil and mode == "drop" then
            enabled2 = true
            grabweld:remove()
            grabweld = nil
            platlol = false
            grabbed = nil
            lolhum.PlatformStand = false
            lolhum = nil
            for i=1, 4 do
                rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
                lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.3,0.2,0)
                wait()
            end
            lw.C0 = CFrame.new(0,0,0)
            rw.C0 = CFrame.new(0,0,0)
            lw.Part1 = nil
            rw.Part1 = nil
            attacking = false
            platlol = nil
           
        elseif hurt == false and grabbed ~= nil and grabweld ~= nil and mode == "para" and enabled2 == true then
            enabled2 = false
            enabled = false
           
            breaksound.Parent = grabbed
            breaksound:Play()
           
            for i=1, 5 do
                lw.C0 = lw.C0 * CFrame.new(0.02,0.15,-0.02) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)
                wait()
            end
            local duh = grabbed
            bleed(duh,1)
            bleed(duh,1)
            bleed(duh,1)
            bleed(duh,1)
            bleed(duh,1)               
            bleed(duh,1)
            bleed(duh,1)
            bleed(duh,1)
            bleed(duh,1)
            bleed(duh,1)
            wait(0.12)
            for i=1, 5 do
                lw.C0 = lw.C0 * CFrame.new(-0.02,-0.15,0.02) * CFrame.fromEulerAnglesXYZ(0.05,-0,0.03)
                wait()
            end
           
           
            if grabbed.Parent:findFirstChild("HumanoidRootPart",true) then
                grabbed.Parent.HumanoidRootPart:Remove()
            end
            grabbed.Parent.Humanoid.Health = grabbed.Parent.Humanoid.Health / 1.5
           
        elseif hurt == false and grabbed ~= nil and grabweld ~= nil and mode == "drain" and enabled == true then
                enabled = false
                enabled2 = true
               
                for i=1, 2 do
                    lw.C0 = lw.C0 * CFrame.new(0.06,0,-0.06) * CFrame.fromEulerAnglesXYZ(0.15,-0.11,-0.05)
                    wait()
                end
 
                while char.Humanoid.Health == char.Humanoid.MaxHealth do
                    bleed(grabbed, 1)
                    char.Humanoid.Health = char.Humanoid.Health + 1
                    grabbed.Parent.Humanoid.Health = grabbed.Parent.Humanoid.Health - 1
                    wait(0.0335)
                end
               
                for i=1, 1 do
                    lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)
                    wait()
                end
                enabled = true
               
               
        elseif hurt == false and grabbed ~= nil and grabweld ~= nil and mode == "throw" then
            enabled2 = true
            grabweld:remove()
            grabweld = nil
            local bf = Instance.new("BodyForce",grabbed)
            bf.force = torso.CFrame.lookVector * 4000
            bf.force = bf.force + Vector3.new(0,1500,0)
            coroutine.resume(coroutine.create(function()
                wait(0.12)
                bf:remove()
            end))
            for i=1, 6 do
                rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.35,0,0)
                lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.18,0,0)
                wait()
            end
            for i=1, 4 do
                rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.47,0,0)
                lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0)
                wait()
            end
            wait(0.2)
            platlol = false
            grabbed = nil
            lolhum.PlatformStand = false
            lolhum = nil
            for i=1, 4 do
                rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
                lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.3,0.2,0)
                wait()
            end
            lw.C0 = CFrame.new(0,0,0)
            rw.C0 = CFrame.new(0,0,0)
            lw.Part1 = nil
            rw.Part1 = nil
            attacking = false
            platlol = nil
        elseif hurt == false and grabbed ~= nil and lolhum ~= nil and grabweld ~= nil and mode == "kill" then
            enabled2 = true
            killsound.Parent = grabbed
            killsound:Play()
            for i=1, 5 do
                lw.C0 = lw.C0 * CFrame.new(0.02,0.12,0.1) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)
                wait()
            end
            local ne = grabbed:findFirstChild("Neck")
            coroutine.resume(coroutine.create(function()
                local duh = grabbed
                local duh2 = grabbed.Parent.Head
                local lolas = lolhum
                duh.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                for i=1, 75 do
                    wait()
                    local hm = math.random(1,15)
                    pcall(function()
                        if hm == 1 then
                            duh2.Sound.Pitch = math.random(90,110)/100
                            duh2.Sound:play()
                            script.Parent.Splat:Play();
                        end
                    end)
 
                    if hm > 0 and hm < 4 then
 
                        bleed(duh,1)
                        bleed(duh2,-0.1)
                        bleed(duh,1)
                        bleed(duh2,-0.1)
                        bleed(duh,1)
                        bleed(duh,1)
                        bleed(duh,1)                                       
                    end
                end
                wait(1.2)
               
                lolas.Health = 0
                for i=1, 85 do
                    wait()
                    local hm = math.random(1,9)
                    pcall(function()
                        if hm == 1 then
                            duh2.Sound.Pitch = math.random(90,110)/100
                            duh2.Sound:play()
                        end
                    end)
                    if hm > 0 and hm < 3 then
                        bleed(duh,1)
                        bleed(duh2,-0.5)
                    end
                end
            end))
            for i=1, 3 do
                lw.C0 = lw.C0 * CFrame.new(0.02,0.12,0.1) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)
                if ne ~= nil then
                    grabbed.Neck.C0 = grabbed.Neck.C0 * CFrame.fromEulerAnglesXYZ(-0.35,0,0)
                end
                wait()
            end
            grabweld:remove()
            grabweld = nil
            for i=1, 4 do
                lw.C0 = lw.C0 * CFrame.new(-0.04,-0.24,-0.2) * CFrame.fromEulerAnglesXYZ(0.1,0,0.06)
                wait()
            end
            for i=1, 4 do
                rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
                lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)
                wait()
            end
            lw.C0 = CFrame.new(0,0,0)
            rw.C0 = CFrame.new(0,0,0)
            lw.Part1 = nil
            rw.Part1 = nil
            platlol = false
            grabbed = nil
            lolhum = nil
            attacking = false
            platlol = nil
        end
    end)
    mouse.KeyDown:connect(function(kai)
        key = kai:lower()
        if key == "q" then
            mode = "drop"
            inform("Release",1)
        elseif key == "e" then
            mode = "throw"
            inform("Push",1)
        elseif key == "f" then
            mode = "kill"
            inform("Kill",1)
        elseif key == "c" then
            mode = "para"
            inform("Paralyze",1)
        elseif key == "x" then
            mode = "drain"
            inform("Drain",1)
        end
    end)
end
 
function desel()
    repeat wait() until attacking == false
    orr.Part1 = knife
    ar.Part1 = nil
end
 
bin.Selected:connect(select)
bin.Deselected:connect(desel)
 
char.Humanoid.Died:connect(function()
    pcall(function()
        grabweld:remove()
        grabweld = nil
        grabbed = nil
        platlol = false
        platlol = nil
    end)
end)
 

    inform("Knife Aquired",2)
end}

 
 

module[1] = {"Grab Knife v3",function()
math.randomseed(tick())
local player = game.Players.LocalPlayer
local rekt = {}
local paralyzed = false
local curpoint = nil
local curpart = nil
local finishnum = 1
local zombiemode = false
local zombies = {}
local lastgui = nil
local mouse = player:GetMouse()

function getplr(char)
	local plr = nil
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Character == char then
			plr = v
		end
	end
	return plr
end

function bleed(frick)
	while frick.Parent ~= nil do
	local reeee = coroutine.wrap(function()
	local thing = Instance.new('Part',game.Workspace)
	thing.Size = Vector3.new(0.2,0.2,0.2)
	thing.CFrame = frick.CFrame
	thing.Shape = Enum.PartType.Ball
	thing.CFrame = frick.CFrame
	thing.Transparency = 1
	thing.BrickColor = BrickColor.new('Maroon')
	thing.Material = Enum.Material.SmoothPlastic
	thing.Name = "Blood"
	thing.CanCollide =false
	local rawrxd = Instance.new('BodyForce',thing)
	rawrxd.Force = frick.CFrame.upVector*(math.random()*2)+Vector3.new(math.random(-5, 5)/10,1.5,0)
	local coru = coroutine.wrap(function()
		wait(0.01)
		rawrxd:Destroy()
	end)
	coru()
	local ree = Instance.new('ParticleEmitter',thing)
	ree.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(100,0,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(100,0,0))})
	ree.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.1),NumberSequenceKeypoint.new(1,0.1)})
	ree.Texture = 'rbxassetid://867743272'
	ree.Lifetime = NumberRange.new(0.4)
	ree.Rate = 50
	ree.LockedToPart = true
	ree.Speed = NumberRange.new(0, 2)  
	
	thing.Touched:connect(function(tou)
		if tou.Parent and tou.Parent:IsA('Tool') == false and tou.Parent.Parent:FindFirstChildOfClass('Humanoid') == nil and tou.Parent:FindFirstChildOfClass('Humanoid') == nil and tou.Name ~= "Blood" and tou.Parent.Name ~= "Projectile" and tou.Parent.Name ~= "big ass knife" and tou.Parent ~= player.Character and tou.Parent.ClassName ~= "Accessory" and tou.Parent.Name ~= "bitch ass knife" then
			local pos = Vector3.new(thing.Position.X,(tou.Position.Y+(tou.Size.Y/2))+0.02,thing.Position.Z)
			thing:Destroy()
			if tou.Name == "BloodPuddle" then
				local reee = tou.CFrame
				if tou.Transparency > -0.2 then
					tou.Transparency = tou.Transparency -0.1
				end
				if tou.Size.X < 10 then
					tou.Size = tou.Size+Vector3.new(0.1,0,0.1)
					tou.CFrame = reee
				end
			else
				local bloodlol = Instance.new('Part',workspace)
				bloodlol.Size=Vector3.new(1,0.2,1)
				bloodlol.Name = "BloodPuddle"
				bloodlol.Anchored = true
				bloodlol.CanCollide = false
				bloodlol.Material = Enum.Material.SmoothPlastic
				bloodlol.BrickColor = BrickColor.new('Maroon')
				local cyl = Instance.new('CylinderMesh',bloodlol)
				cyl.Scale = Vector3.new(1,0.1,1)
				bloodlol.CFrame = CFrame.new(pos)
				local coru=coroutine.wrap(function()
					while bloodlol.Parent ~= nil do
						if bloodlol.Transparency < 1 then
							bloodlol.Transparency = bloodlol.Transparency+0.05
						else
							bloodlol:Destroy()
						end
						wait(0.1)
					end
				end)
				coru()
			end
		end
	end)
	local coru = coroutine.wrap(function()
		wait(1)
		thing:Destroy()
	end)
	coru()
	end)
	reeee()
	wait()
	end
end

function killz(playa,hitz,kneef,explode,pool,head,charred,override)
	local soundy = false
	local heyy = hitz
	if hitz == "Right Arm" then
	local Limb = playa:FindFirstChild("Right Arm")
	local ters = playa:FindFirstChild('Torso')
		if Limb and ters then
			if ters:FindFirstChild('Right Shoulder') then ters["Right Shoulder"]:Destroy() end
			for i,v in pairs(Limb:GetChildren()) do
				if v:IsA('Weld') or v:IsA('Motor6D') or v:IsA('Rotate') then
					v:Destroy()
				end
			end
			Limb.CFrame = ters.CFrame * CFrame.new(1.5, 0, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "RightShoulder"
			Joint.Part0 = ters
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = ters
			if charred and zombiemode == false then 
				Limb.BrickColor = BrickColor.new('Black') 
				local fire = Instance.new('Fire',Limb)
				fire.Heat = 5
				fire.Size = 5
				game:GetService('Debris'):AddItem(fire,2)
				local coru=coroutine.wrap(function()
					wait(2)
					for i,v in pairs(Limb:GetChildren()) do
						if v:IsA('ParticleEmitter') then
							v:Destroy()
						end
					end
				end)
				coru()
			end
			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
			if kneef then
			local coru = coroutine.wrap(function()
				local uno = Instance.new('Part',workspace)
					local dos = Instance.new('Part',workspace)
					uno.CFrame = playa:FindFirstChild(hitz).CFrame
					dos.CFrame = kneef["big ass knife"].CFrame
					local weld = Instance.new('Weld',kneef["big ass knife"])
					weld.Part0 = playa:FindFirstChild(hitz)
					weld.Part1 = kneef["big ass knife"]
					weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
					uno:Destroy()
					dos:Destroy()
					playa:FindFirstChild(hitz).Anchored = false
					for i, v in pairs(kneef:GetChildren()) do
						if v:IsA('BasePart') then
						v.Anchored = false
						end
					end
					if zombiemode == false or override then
					wait()
					end
					if kneef:FindFirstChild('Grab') and kneef.Grab:FindFirstChildOfClass('BodyVelocity') then
						kneef.Grab:FindFirstChildOfClass('BodyVelocity'):Destroy()
					end
					local bleedpart = Instance.new("Part", kneef)
					bleedpart.CanCollide = false
					bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
					bleedpart.CFrame = kneef["big ass knife"].CFrame
					bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
					bleedpart.Transparency = 1
	
					local bleedpartweld = Instance.new("Weld", kneef["big ass knife"])
					bleedpartweld.Part0 = kneef["big ass knife"]
					bleedpartweld.Part1 = bleedpart
					bleedpartweld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)
					local coru = coroutine.wrap(function()
					bleed(bleedpart)
					end)
					coru()
					game:GetService('Debris'):AddItem(bleedpart,2)
			end)
			coru()
			end
		end	
	elseif hitz == "Left Arm" then
		local Limb = playa:FindFirstChild("Left Arm")
	local ters = playa:FindFirstChild('Torso')
		if Limb and ters then
			if ters:FindFirstChild('Left Shoulder') then ters["Left Shoulder"]:Destroy() end
			for i,v in pairs(Limb:GetChildren()) do
				if v:IsA('Weld') or v:IsA('Motor6D') or v:IsA('Rotate') then
					v:Destroy()
				end
			end
			Limb.CFrame = ters.CFrame * CFrame.new(-1.5, 0, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "LeftShoulder"
			Joint.Part0 = ters
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = ters
			if charred and zombiemode == false then 
				Limb.BrickColor = BrickColor.new('Black') 
				local fire = Instance.new('Fire',Limb)
				fire.Heat = 5
				fire.Size = 5
				game:GetService('Debris'):AddItem(fire,2)
				local coru=coroutine.wrap(function()
					wait(2)
					for i,v in pairs(Limb:GetChildren()) do
						if v:IsA('ParticleEmitter') then
							v:Destroy()
						end
					end
				end)
				coru()
			end

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.CanCollide = true
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = ters
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
			if kneef then
			local coru = coroutine.wrap(function()
				local uno = Instance.new('Part',workspace)
					local dos = Instance.new('Part',workspace)
					uno.CFrame = playa:FindFirstChild(hitz).CFrame
					dos.CFrame = kneef["big ass knife"].CFrame
					local weld = Instance.new('Weld',kneef["big ass knife"])
					weld.Part0 = playa:FindFirstChild(hitz)
					weld.Part1 = kneef["big ass knife"]
					weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
					uno:Destroy()
					dos:Destroy()
					playa:FindFirstChild(hitz).Anchored = false
					for i, v in pairs(kneef:GetChildren()) do
						if v:IsA('BasePart') then
						v.Anchored = false
						end
					end
					if zombiemode == false or override then
					wait()
					end
					if kneef:FindFirstChild('Grab') and kneef.Grab:FindFirstChildOfClass('BodyVelocity') then
						kneef.Grab:FindFirstChildOfClass('BodyVelocity'):Destroy()
					end
					local bleedpart = Instance.new("Part", kneef)
					bleedpart.CanCollide = false
					bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
					bleedpart.CFrame = kneef["big ass knife"].CFrame
					bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
					bleedpart.Transparency = 1
	
					local bleedpartweld = Instance.new("Weld", kneef["big ass knife"])
					bleedpartweld.Part0 = kneef["big ass knife"]
					bleedpartweld.Part1 = bleedpart
					bleedpartweld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)
					local coru = coroutine.wrap(function()
					bleed(bleedpart)
					end)
					coru()
					game:GetService('Debris'):AddItem(bleedpart,2)
			end)
			coru()
			end
		end
	elseif hitz == "Right Leg" then
		local Limb = playa:FindFirstChild("Right Leg")
	local ters = playa:FindFirstChild('Torso')
		if Limb and ters then
			if ters:FindFirstChild('Right Hip') then ters["Right Hip"]:Destroy() end
			for i,v in pairs(Limb:GetChildren()) do
				if v:IsA('Weld') or v:IsA('Motor6D') or v:IsA('Rotate') then
					v:Destroy()
				end
			end
			Limb.CFrame = ters.CFrame * CFrame.new(0.5, -2, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "Right Hip"
			Joint.Part0 = ters
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = ters
			if charred and zombiemode == false then 
				Limb.BrickColor = BrickColor.new('Black') 
				local fire = Instance.new('Fire',Limb)
				fire.Heat = 5
				fire.Size = 5
				game:GetService('Debris'):AddItem(fire,2)
				local coru=coroutine.wrap(function()
					wait(2)
					for i,v in pairs(Limb:GetChildren()) do
						if v:IsA('ParticleEmitter') then
							v:Destroy()
						end
					end
				end)
				coru()
			end
			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
			if kneef then
			local coru = coroutine.wrap(function()
				local uno = Instance.new('Part',workspace)
				local dos = Instance.new('Part',workspace)
				uno.CFrame = playa:FindFirstChild(hitz).CFrame
				dos.CFrame = kneef["big ass knife"].CFrame
				local weld = Instance.new('Weld',kneef["big ass knife"])
				weld.Part0 = playa:FindFirstChild(hitz)
				weld.Part1 = kneef["big ass knife"]
				weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
				uno:Destroy()
				dos:Destroy()
				playa:FindFirstChild(hitz).Anchored = false
				for i, v in pairs(kneef:GetChildren()) do
					if v:IsA('BasePart') then
						v.Anchored = false
						end
					end
					if zombiemode == false or override then
					wait()
					end
					if kneef:FindFirstChild('Grab') and kneef.Grab:FindFirstChildOfClass('BodyVelocity') then
						kneef.Grab:FindFirstChildOfClass('BodyVelocity'):Destroy()
					end
					local bleedpart = Instance.new("Part", kneef)
					bleedpart.CanCollide = false
					bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
					bleedpart.CFrame = kneef["big ass knife"].CFrame
					bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
					bleedpart.Transparency = 1
	
					local bleedpartweld = Instance.new("Weld", kneef["big ass knife"])
					bleedpartweld.Part0 = kneef["big ass knife"]
					bleedpartweld.Part1 = bleedpart
					bleedpartweld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)
					local coru = coroutine.wrap(function()
					bleed(bleedpart)
					end)
					coru()
					game:GetService('Debris'):AddItem(bleedpart,2)
			end)
			coru()
			end
			if playa then
				table.insert(rekt,playa)
			end
		end
	elseif hitz == "Left Leg" then
		local Limb = playa:FindFirstChild("Left Leg")
	local ters = playa:FindFirstChild('Torso')
		if Limb and ters then
			if ters:FindFirstChild('Left Hip') then ters["Left Hip"]:Destroy() end
			for i,v in pairs(Limb:GetChildren()) do
				if v:IsA('Weld') or v:IsA('Motor6D') or v:IsA('Rotate') then
					v:Destroy()
				end
			end
		Limb.CFrame = ters.CFrame * CFrame.new(0.5, -2, 0)
			Limb.CFrame = ters.CFrame * CFrame.new(-0.5, -2, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "LeftHip"
			Joint.Part0 = ters
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = ters
			if charred and zombiemode == false then 
				Limb.BrickColor = BrickColor.new('Black') 
				local fire = Instance.new('Fire',Limb)
				fire.Heat = 5
				fire.Size = 5
				game:GetService('Debris'):AddItem(fire,2)
				local coru=coroutine.wrap(function()
					wait(2)
					for i,v in pairs(Limb:GetChildren()) do
						if v:IsA('ParticleEmitter') then
							v:Destroy()
						end
					end
				end)
				coru()
			end

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
			Limb.CanCollide = false
			if kneef then
			local coru = coroutine.wrap(function()
				local uno = Instance.new('Part',workspace)
					local dos = Instance.new('Part',workspace)
					uno.CFrame = playa:FindFirstChild(hitz).CFrame
					dos.CFrame = kneef["big ass knife"].CFrame
					local weld = Instance.new('Weld',kneef["big ass knife"])
					weld.Part0 = playa:FindFirstChild(hitz)
					weld.Part1 = kneef["big ass knife"]
					weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
					uno:Destroy()
					dos:Destroy()
					playa:FindFirstChild(hitz).Anchored = false
					for i, v in pairs(kneef:GetChildren()) do
						if v:IsA('BasePart') then
						v.Anchored = false
						end
					end
					if zombiemode == false or override then
					wait()
					end
					if kneef:FindFirstChild('Grab') and kneef.Grab:FindFirstChildOfClass('BodyVelocity') then
						kneef.Grab:FindFirstChildOfClass('BodyVelocity'):Destroy()
					end
					local bleedpart = Instance.new("Part", kneef)
					bleedpart.CanCollide = false
					bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
					bleedpart.CFrame = kneef["big ass knife"].CFrame
					bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
					bleedpart.Transparency = 1
	
					local bleedpartweld = Instance.new("Weld", kneef["big ass knife"])
					bleedpartweld.Part0 = kneef["big ass knife"]
					bleedpartweld.Part1 = bleedpart
					bleedpartweld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)
					local coru = coroutine.wrap(function()
					bleed(bleedpart)
					end)
					coru()
					game:GetService('Debris'):AddItem(bleedpart,2)
			end)
			coru()
			end
			if playa then
				table.insert(rekt,playa)
			end
		end
	elseif playa then
		if finishnum ~= 1 then
			local coru=coroutine.wrap(function()
			player.Character.Head.Psycho.Playing = true
			wait(3)
			player.Character.Head.Psycho.Playing = false
			end)
			coru()
		end
		local playa2 = playa
		playa.Archivable = true
		local playa = playa:Clone()
		playa.Archivable = false
		playa2:Destroy()
		playa.Parent = workspace
		local Gibs = game.Workspace
		local Torso = playa.Torso
		local Head = playa:FindFirstChild("Head")
		local function Scan(ch)
		local e
		for e = 1,#ch do
			Scan(ch[e]:GetChildren())
			if (ch[e].ClassName == "Weld" and ch[e]:FindFirstChild('Part1') and ch[e].Part1.Name ~= 'Projectile') or ch[e].ClassName == "Motor6D" or ch[e].ClassName == "Rotate" or (ch[e]:IsA('BasePart') and ch[e].Size == Vector3.new(1, 1, 1)) then
				ch[e]:remove()
			end
		end
		end
	Scan(playa:GetChildren())
		if playa:FindFirstChild('HumanoidRootPart') and (zombiemode == false or override) then
			playa:FindFirstChild('HumanoidRootPart'):Destroy()
		end
		local hum2 = playa:FindFirstChildOfClass("Humanoid")
	if zombiemode == true and override == false then
		soundy = true
	end
	if string.sub(hum2.Parent.Name,string.len(hum2.Parent.Name)-8,string.len(hum2.Parent.Name)) ~= "'s Zombie" then
		override = true
	end
	if hum2 ~= nil then
		hum2.Name = "Humanoid2"
		hum2.Health = 0
		if zombiemode == false or override == true then
			table.insert(rekt,hum2.Parent)
		else
			local gyro = Instance.new('BodyGyro',Torso)
			hum2.PlatformStand = false
			for i,v in pairs(hum2.Parent.Torso:GetChildren()) do
				if v:IsA('BodyGyro') then v:Destroy() end
			end
			if playa:FindFirstChild('HumanoidRootPart') then
				hum2.Parent.HumanoidRootPart.CFrame = hum2.Parent.Torso.CFrame
				local weldcrucial = Instance.new('Weld',hum2.Parent.HumanoidRootPart)
				weldcrucial.Part0 = hum2.Parent.HumanoidRootPart
				weldcrucial.Part1 = hum2.Parent.Torso
			end
		end
	end
	local ch = playa:GetChildren()
	local i
	for i = 1,#ch do
		if ch[i].Name == "THandle1" or ch[i].Name == "THandle2" then
			ch[i]:remove()
		end
	end

		if Head then
			local Neck = Instance.new("Weld")
			Neck.Name = "Neck"
			Neck.Part0 = Torso
			Neck.Part1 = Head
			if pool then
				local part = Instance.new('Part',Torso)
				part.Position = Vector3.new(0,10,0)
				part.Size = Vector3.new(0.2,0.2,0.2)
				part.Transparency = 1
				part.CanCollide = false
				local we = Instance.new('Weld',Torso)
				we.Part0 = Torso
				we.Part1 = part
				we.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)
				local coru=coroutine.wrap(function()
				bleed(part)
				end)
				coru()
			end
			if head == false or head == nil then
				Neck.C0 = CFrame.new(0, 1.5, 0)
			else
				Neck.C0 = CFrame.new(0, 1.5, 0.2)*CFrame.Angles(0.5, 0.25, 0.25)
				local bleedpart = Instance.new("Part", Torso)
				bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
				bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
				bleedpart.CanCollide = false
				bleedpart.Position = Head.Position + Vector3.new(0, 1, 0)
				bleedpart.Transparency = 1
	
				local bleedpartweld = Instance.new("Weld", Torso)
				bleedpartweld.Part0 = Torso
				bleedpartweld.Part1 = bleedpart
				bleedpartweld.C0 = CFrame.Angles(-1, 0, -0.35) * CFrame.new(0, 1, 0.8)
				local coru = coroutine.wrap(function()
				bleed(bleedpart)
				end)
				coru()
			end
			Neck.C1 = CFrame.new()
			Neck.Parent = Torso
		end
		local Limb = playa:FindFirstChild("Right Arm")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(1.5, 0, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "RightShoulder"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
		end
		local Limb = playa:FindFirstChild("Left Arm")
		if Limb then
	
			Limb.CFrame = Torso.CFrame * CFrame.new(-1.5, 0, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "LeftShoulder"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
		end
		local Limb = playa:FindFirstChild("Right Leg")
		if Limb then
			Limb.CanCollide = false
			Limb.CFrame = Torso.CFrame * CFrame.new(0.5, -2, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "RightHip"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CanCollide = true
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
		end
		local Limb = playa:FindFirstChild("Left Leg")
		if Limb then
			Limb.CanCollide = false
			Limb.CFrame = Torso.CFrame * CFrame.new(-0.5, -2, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "LeftHip"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			if zombiemode == false or override then
			B.CanCollide = true
			end
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
		end
		--[[
		local Bar = Instance.new("Part")
		Bar.TopSurface = 0
		Bar.BottomSurface = 0
		Bar.formFactor = "Symmetric"
		Bar.Size = Vector3.new(1, 1, 1)
		Bar.Transparency = 1
		Bar.CFrame = Torso.CFrame * CFrame.new(0, 0.5, 0)
		Bar.Parent = playa
		local Weld = Instance.new("Weld")
		Weld.Part0 = Torso
		Weld.Part1 = Bar
		Weld.C0 = CFrame.new(0, 0.5, 0)
		Weld.Parent = Torso
		--]]
		playa.Parent = Gibs
		if kneef and explode == nil then
			local coru = coroutine.wrap(function()
				if playa:FindFirstChild(hitz) then
					local uno = Instance.new('Part',workspace)
					local dos = Instance.new('Part',workspace)
					uno.CFrame = playa:FindFirstChild(hitz).CFrame
					dos.CFrame = kneef["big ass knife"].CFrame
					local weld = Instance.new('Weld',kneef["big ass knife"])
					weld.Part0 = playa:FindFirstChild(hitz)
					weld.Part1 = kneef["big ass knife"]
					weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
					uno:Destroy()
					dos:Destroy()
					playa:FindFirstChild(hitz).Anchored = false
					for i, v in pairs(kneef:GetChildren()) do
						if v:IsA('BasePart') then
						v.Anchored = false
						end
					end
					if explode == nil or explode == false then
					local bleedpart = Instance.new("Part", kneef)
					bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
					bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
					bleedpart.CanCollide = false
					bleedpart.Position = Head.Position + Vector3.new(0, 1, 0)
					bleedpart.Transparency = 1
	
					local bleedpartweld = Instance.new("Weld", kneef["big ass knife"])
					bleedpartweld.Part0 = kneef["big ass knife"]
					bleedpartweld.Part1 = bleedpart
					bleedpartweld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)
					local coru = coroutine.wrap(function()
					bleed(bleedpart)
					end)
					coru()
					end
					end
					if zombiemode == false or override then
					wait()
					end
					if kneef:FindFirstChild('Grab') and kneef.Grab:FindFirstChildOfClass('BodyVelocity') then
						kneef.Grab:FindFirstChildOfClass('BodyVelocity'):Destroy()
					end
			end)
			coru()
		end
		if explode then
			local movevector = CFrame.new(explode.Position,Torso.Position).lookVector
			local repulse = Instance.new('BodyForce',Torso)
            repulse.Force = movevector*10000 + Vector3.new(0,5000,0)
            game.Debris:AddItem(repulse,0.05)
		end
		if charred and zombiemode == false then
			for i,v in pairs(playa:GetChildren()) do
				if v:IsA('BasePart') then
					v.BrickColor = BrickColor.Black()
					local fire = Instance.new('Fire',v)
					fire.Size = 5
					fire.Heat = 5
				elseif v:IsA('Accessory') then
					for a,c in pairs(v:GetChildren()) do
						if c:IsA('BasePart') then
							c.BrickColor = BrickColor.Black()
							local fire = Instance.new('Fire',v)
							fire.Size = 5
							fire.Heat = 5
							for o,p in pairs(c:GetChildren()) do
								if p:IsA("SpecialMesh") then
									p.TextureId = ""
								end
							end
						end
					end
				end
			end
		end
		if soundy then
			local sound = Instance.new('Sound',Head)
			sound.SoundId = 'rbxassetid://903640857'
			sound.Volume = 1
			sound:Play()
			sound.Ended:connect(function() 
				sound:Destroy()
				local ambient = Instance.new('Sound',Head)
				ambient.Volume = 0.25
				ambient.Looped = true
				ambient.SoundId = 'rbxassetid://903641031'
				ambient:Play()
			end)
		end
		if override then
			if (string.len(hum2.Parent.Name) < 9 or string.sub(hum2.Parent.Name,string.len(hum2.Parent.Name)-8,string.len(hum2.Parent.Name)) ~= "'s Zombie") and zombiemode == true and #zombies < 10 then
				local coru = coroutine.wrap(function()
					wait(4.5)
					hum2.Parent.Name = hum2.Parent.Name.."'s Zombie"
					hum2.HipHeight = 0.2
					wait(0.5)
					killz(hum2.Parent,"Head",nil,nil,false,false,false,false)
				end)
				coru()
			else
				game:GetService('Debris'):AddItem(playa, 12)
			end
		else
			hum2.Health = 0
			table.insert(zombies,playa)
			local attack = Instance.new('Sound',Head)
			attack.SoundId = 'rbxassetid://903641424'
			attack.Volume = 2
			for i,v in pairs(playa:GetChildren()) do
				if v:IsA('BasePart') and v:FindFirstChildOfClass('TouchTransmitter') == nil then
					v.Touched:connect(function(hit)
						if hit.Parent and hit.Parent:FindFirstChildOfClass('Humanoid') then
							local found = false
							if hit.Parent == player.Character then
								found = true
							end
							for a,c in pairs(zombies) do
								if c == hit.Parent then
									found = true
								end
							end
							if found == false and hit.Parent:FindFirstChildOfClass('Humanoid').Health > 0 then
								attack:Play()
								if hit.Parent:FindFirstChildOfClass('Humanoid').Health - 2 <= 0 then
									hit.Parent:FindFirstChildOfClass('Humanoid').Health = 0
									wait()
									killz(hit.Parent,"Head")
								else
									hit.Parent:FindFirstChildOfClass('Humanoid'):TakeDamage(2)
								end
							end
						end
					end)
				end
			end
			local coru = coroutine.wrap(function()
				wait(2)
				for i,v in pairs(playa:GetChildren()) do
				if v:IsA('BasePart') then
					for a,c in pairs(v:GetChildren()) do
						if c:IsA('Fire') or c:IsA('ParticleEmitter') then
							c:Destroy()
						end
					end
				elseif v:IsA('Accessory') then
					for a,c in pairs(v:GetChildren()) do
						if c:IsA('BasePart') then
							for b,d in pairs(c:GetChildren()) do
								if d:IsA('Fire') or d:IsA('ParticleEmitter') then
									d:Destroy()
								end
							end
						end
					end
				end
			end
			end)
			coru()
		end
	end	
end

mouse.KeyDown:connect(function(key)
	if key == "t" and mouse.Target then
		local hum = mouse.Target.Parent:FindFirstChildOfClass('Humanoid')
		if hum == nil then hum = mouse.Target.Parent.Parent:FindFirstChildOfClass('Humanoid') end
		if curpoint == nil then
			if hum and hum.Parent:FindFirstChild('Head') then
				curpart = hum.Parent.Head
			else
				curpart = nil
				curpoint = mouse.Hit.p
			end
			if player.PlayerGui:FindFirstChild('Notification') then player.PlayerGui.Notification:Destroy() end
			notify("ZOMBIE TARGET SET",false)
		else
			curpart = nil
			curpoint = nil
			if player.PlayerGui:FindFirstChild('Notification') then player.PlayerGui.Notification:Destroy() end
			notify("ZOMBIE TARGET REMOVED",false)
		end
	elseif key == "y" then
		for o,p in pairs(zombies) do
			local coru = coroutine.wrap(function()
			if p:FindFirstChild('Torso') then
			killz(p,"Head",nil,nil,false,false,false,true)
			else
			table.remove(zombies,o)
			end
			end)
			coru()
			wait()
		end
		for i,v in pairs(zombies) do
			table.remove(zombies,i)
		end
		if player.PlayerGui:FindFirstChild('Notification') then player.PlayerGui.Notification:Destroy() end
		notify("ZOMBIES TERMINATED",false)
	end
end)

function nub()
repeat wait() until player.Character and player.Character:FindFirstChild('Torso')
local me = player.Character
local point = me.HumanoidRootPart
local playergui = player.PlayerGui
local rightshoulderz = me.Torso["Right Shoulder"]:Clone()
local leftshoulderz = me.Torso["Left Shoulder"]:Clone()
local torsojoint = me.HumanoidRootPart["RootJoint"]:Clone()
local lefthipz = me.Torso["Left Hip"]:Clone()
local righthipz = me.Torso["Right Hip"]:Clone()
local mode = "kill"
local lerpz = false
local active = false
local acting = false
local hit = false
local canClick = true
local stabbing = false
local grabbing = false
local finishing = false
local kyssing = false
local canbackgroundmusic = true
local cancolorfilter = true
local spinboolean = false
local grabbed = nil
local doing = false
local rightshoulder = nil
local leftshoulder = nil
local headweld = nil
local knifeparts = {}
local usable = true
finishnum = 1

function notify(msg,forever)
	local doit = coroutine.wrap(function()
		local gui = Instance.new('ScreenGui',playergui)
		gui.Name = "Notification"
		local frame = Instance.new('Frame',gui)
		frame.Position = UDim2.new(0,0,0,0)
		frame.Size = UDim2.new(1,0,0.2,0)
		frame.BackgroundTransparency = 1
		local txt = Instance.new('TextLabel',frame)
		txt.TextColor3 = Color3.new(255,255,255)
		txt.TextStrokeColor3 = Color3.new(0, 0, 0)
		txt.TextStrokeTransparency = 0
		txt.BackgroundTransparency = 1
		txt.Text = ""
		txt.Size = UDim2.new(1,0,0.3,0)
		txt.Position = UDim2.new(0,0,0.4,0)
		txt.TextScaled = true
		txt.Font = "Code"
		txt.TextXAlignment = "Center"
		local tap = Instance.new("Sound")
		tap.Parent = gui
		tap.SoundId = "rbxassetid://147982968"
		tap.TimePosition = 0.1
		local str = msg
		local len = string.len(str)
		for i=1,len do
			txt.Text = string.sub(str,1,i)
			pitche = math.random(20, 40)/10
			tap.PlaybackSpeed = pitche
			tap:Play()
			wait(0.01)
		end
		if forever == false then
			wait(1)
			while txt.TextTransparency < 1 do
				txt.TextTransparency = txt.TextTransparency + 0.1
				txt.TextStrokeTransparency = txt.TextStrokeTransparency + 0.1
				wait(0.001)
			end
			gui:Destroy()
		end
	end)
	doit()
end

wait(0.5)
notify("PRESS [Z] TO EQUIP KNIFE || Created by mustardfoot and Tollonis",true)
local laugh = Instance.new('Sound',me.Head)
laugh.SoundId = 'rbxassetid://378827985'
laugh.Name = "Psycho"
laugh.Volume = 5
-- 1 - bitch ass knife
local obj1 = Instance.new("Model")
obj1.Name = "bitch ass knife"
obj1.Parent = game.Workspace

-- 2 - Grab
local obj2 = Instance.new("Part")
obj2.CFrame = CFrame.new(Vector3.new(20.4525032, 6.14501333, -134.399979)) * CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
obj2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.Material = Enum.Material.Concrete
obj2.Size = Vector3.new(1, 0.25, 0.25)
obj2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.Anchored = true
obj2.BrickColor = BrickColor.new("Black")
obj2.Friction = 0.30000001192093
obj2.Shape = Enum.PartType.Cylinder
obj2.Name = "Grab"
obj2.Parent = obj1

-- 3 - handletopcap
local obj3 = Instance.new("Part")
obj3.CFrame = CFrame.new(Vector3.new(19.9725456, 6.14502859, -134.399933)) * CFrame.Angles(0, 1.5707963705063, 0)
obj3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.Material = Enum.Material.Concrete
obj3.Size = Vector3.new(0.349999994, 0.349999994, 0.349999994)
obj3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.Anchored = true
obj3.BrickColor = BrickColor.new("Black")
obj3.Friction = 0.30000001192093
obj3.Shape = Enum.PartType.Ball
obj3.Name = "handletopcap"
obj3.Parent = obj1

-- 4 - handlebottomcap
local obj4 = Instance.new("Part")
obj4.CFrame = CFrame.new(Vector3.new(20.9725285, 6.14502859, -134.399918)) * CFrame.Angles(0, 1.5707963705063, 0)
obj4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.Material = Enum.Material.Concrete
obj4.Size = Vector3.new(0.25, 0.25, 0.25)
obj4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.Anchored = true
obj4.BrickColor = BrickColor.new("Black")
obj4.Friction = 0.30000001192093
obj4.Shape = Enum.PartType.Ball
obj4.Name = "handlebottomcap"
obj4.Parent = obj1

-- 5 - handleguardmid
local obj5 = Instance.new("Part")
obj5.CFrame = CFrame.new(Vector3.new(19.9474983, 6.14502859, -134.399918)) * CFrame.Angles(0, 1.5707963705063, 0)
obj5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.Material = Enum.Material.Concrete
obj5.Size = Vector3.new(0.349999994, 0.349999994, 0.100000001)
obj5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.Anchored = true
obj5.BrickColor = BrickColor.new("Black")
obj5.Friction = 0.30000001192093
obj5.Shape = Enum.PartType.Block
obj5.Name = "handleguardmid"
obj5.Parent = obj1

-- 6 - handleguardcap1
local obj6 = Instance.new("Part")
obj6.CFrame = CFrame.new(Vector3.new(19.9474983, 6.32502794, -134.399918)) * CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
obj6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.Material = Enum.Material.Concrete
obj6.Size = Vector3.new(0.100000001, 0.349999994, 0.349999994)
obj6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.Anchored = true
obj6.BrickColor = BrickColor.new("Black")
obj6.Friction = 0.30000001192093
obj6.Shape = Enum.PartType.Cylinder
obj6.Name = "handleguardcap1"
obj6.Parent = obj1

-- 7 - handleguardcap2
local obj7 = Instance.new("Part")
obj7.CFrame = CFrame.new(Vector3.new(19.9474983, 5.97502899, -134.399918)) * CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
obj7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.Material = Enum.Material.Concrete
obj7.Size = Vector3.new(0.100000009, 0.349999994, 0.349999994)
obj7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.Anchored = true
obj7.BrickColor = BrickColor.new("Black")
obj7.Friction = 0.30000001192093
obj7.Shape = Enum.PartType.Cylinder
obj7.Name = "handleguardcap2"
obj7.Parent = obj1

-- 8 - big ass knife
local obj8 = Instance.new("Part")
obj8.CFrame = CFrame.new(Vector3.new(18.4375095, 6.14502859, -134.401321)) * CFrame.Angles(0, 1.5707963705063, 0)
obj8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.Material = Enum.Material.Metal
obj8.Size = Vector3.new(0.0500000007, 0.280000001, 0.839999795)
obj8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.Anchored = true
obj8.BrickColor = BrickColor.new("Lily white")
obj8.Friction = 0.30000001192093
obj8.Shape = Enum.PartType.Block
obj8.Name = "big ass knife"
obj8.Parent = obj1

-- 9 - Mesh
local obj9 = Instance.new("BlockMesh")
obj9.Scale = Vector3.new(0.5, 1, 1)
obj9.Parent = obj8

-- 10 - big ass knife
local obj10 = Instance.new("Part")
obj10.CFrame = CFrame.new(Vector3.new(19.7425137, 6.14502859, -134.401321)) * CFrame.Angles(0, 1.5707963705063, 0)
obj10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.Material = Enum.Material.Metal
obj10.Size = Vector3.new(0.0500000007, 0.280000001, 0.289999962)
obj10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.Anchored = true
obj10.BrickColor = BrickColor.new("Lily white")
obj10.Friction = 0.30000001192093
obj10.Shape = Enum.PartType.Block
obj10.Name = "big ass knife"
obj10.Parent = obj1
local knife = obj10

-- 11 - Mesh
local obj11 = Instance.new("BlockMesh")
obj11.Scale = Vector3.new(0.5, 1, 1)
obj11.Parent = obj10

-- 12 - big ass knife
local obj12 = Instance.new("Part")
obj12.CFrame = CFrame.new(Vector3.new(19.1075306, 6.08502865, -134.401321)) * CFrame.Angles(0, 1.5707963705063, 0)
obj12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.Material = Enum.Material.Metal
obj12.Size = Vector3.new(0.0500000007, 0.159999996, 0.979999959)
obj12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.Anchored = true
obj12.BrickColor = BrickColor.new("Lily white")
obj12.Friction = 0.30000001192093
obj12.Shape = Enum.PartType.Block
obj12.Name = "big ass knife"
obj12.Parent = obj1

-- 13 - Mesh
local obj13 = Instance.new("BlockMesh")
obj13.Scale = Vector3.new(0.5, 1, 1)
obj13.Parent = obj12

-- 14 - serration
local obj14 = Instance.new("WedgePart")
obj14.CFrame = CFrame.new(Vector3.new(19.4963322, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.Material = Enum.Material.Metal
obj14.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.Anchored = true
obj14.BrickColor = BrickColor.new("Lily white")
obj14.Friction = 0.30000001192093
obj14.Name = "serration"
obj14.Parent = obj1

-- 15 - Mesh
local obj15 = Instance.new("BlockMesh")
obj15.Scale = Vector3.new(0.5, 1, 1)
obj15.Parent = obj14

-- 16 - serration
local obj16 = Instance.new("WedgePart")
obj16.CFrame = CFrame.new(Vector3.new(19.2763138, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.Material = Enum.Material.Metal
obj16.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.Anchored = true
obj16.BrickColor = BrickColor.new("Lily white")
obj16.Friction = 0.30000001192093
obj16.Name = "serration"
obj16.Parent = obj1

-- 17 - Mesh
local obj17 = Instance.new("BlockMesh")
obj17.Scale = Vector3.new(0.5, 1, 1)
obj17.Parent = obj16

-- 18 - serration
local obj18 = Instance.new("WedgePart")
obj18.CFrame = CFrame.new(Vector3.new(19.3863068, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.Material = Enum.Material.Metal
obj18.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.Anchored = true
obj18.BrickColor = BrickColor.new("Lily white")
obj18.Friction = 0.30000001192093
obj18.Name = "serration"
obj18.Parent = obj1

-- 19 - Mesh
local obj19 = Instance.new("BlockMesh")
obj19.Scale = Vector3.new(0.5, 1, 1)
obj19.Parent = obj18

-- 20 - serration
local obj20 = Instance.new("WedgePart")
obj20.CFrame = CFrame.new(Vector3.new(19.5963173, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.Material = Enum.Material.Metal
obj20.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.Anchored = true
obj20.BrickColor = BrickColor.new("Lily white")
obj20.Friction = 0.30000001192093
obj20.Name = "serration"
obj20.Parent = obj1

-- 21 - Mesh
local obj21 = Instance.new("BlockMesh")
obj21.Scale = Vector3.new(0.5, 1, 1)
obj21.Parent = obj20

-- 22 - serration
local obj22 = Instance.new("WedgePart")
obj22.CFrame = CFrame.new(Vector3.new(19.1663074, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.Material = Enum.Material.Metal
obj22.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.Anchored = true
obj22.BrickColor = BrickColor.new("Lily white")
obj22.Friction = 0.30000001192093
obj22.Name = "serration"
obj22.Parent = obj1

-- 23 - Mesh
local obj23 = Instance.new("BlockMesh")
obj23.Scale = Vector3.new(0.5, 1, 1)
obj23.Parent = obj22

-- 24 - serration
local obj24 = Instance.new("WedgePart")
obj24.CFrame = CFrame.new(Vector3.new(18.9663048, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.Material = Enum.Material.Metal
obj24.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.Anchored = true
obj24.BrickColor = BrickColor.new("Lily white")
obj24.Friction = 0.30000001192093
obj24.Name = "serration"
obj24.Parent = obj1

-- 25 - Mesh
local obj25 = Instance.new("BlockMesh")
obj25.Scale = Vector3.new(0.5, 1, 1)
obj25.Parent = obj24

-- 26 - serration
local obj26 = Instance.new("WedgePart")
obj26.CFrame = CFrame.new(Vector3.new(18.8562984, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.Material = Enum.Material.Metal
obj26.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.Anchored = true
obj26.BrickColor = BrickColor.new("Lily white")
obj26.Friction = 0.30000001192093
obj26.Name = "serration"
obj26.Parent = obj1

-- 27 - Mesh
local obj27 = Instance.new("BlockMesh")
obj27.Scale = Vector3.new(0.5, 1, 1)
obj27.Parent = obj26

-- 28 - serration
local obj28 = Instance.new("WedgePart")
obj28.CFrame = CFrame.new(Vector3.new(19.0663071, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.Material = Enum.Material.Metal
obj28.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.Anchored = true
obj28.BrickColor = BrickColor.new("Lily white")
obj28.Friction = 0.30000001192093
obj28.Name = "serration"
obj28.Parent = obj1

-- 29 - Mesh
local obj29 = Instance.new("BlockMesh")
obj29.Scale = Vector3.new(0.5, 1, 1)
obj29.Parent = obj28

-- 30 - knifetip1
local obj30 = Instance.new("WedgePart")
obj30.CFrame = CFrame.new(Vector3.new(18.0163059, 6.14381599, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.Material = Enum.Material.Metal
obj30.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.Anchored = true
obj30.BrickColor = BrickColor.new("Lily white")
obj30.Friction = 0.30000001192093
obj30.Name = "knifetip1"
obj30.Parent = obj1

-- 31 - Mesh
local obj31 = Instance.new("BlockMesh")
obj31.Scale = Vector3.new(0.5, 1, 1)
obj31.Parent = obj30

-- 32 - redstuff
local obj32 = Instance.new("Part")
obj32.CFrame = CFrame.new(Vector3.new(19.9470005, 5.9749999, -134.399994)) * CFrame.Angles(-0, 0, -0)
obj32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.Material = Enum.Material.SmoothPlastic
obj32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.Size = Vector3.new(0.0500000007, 0.360000014, 0.360000014)
obj32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.BrickColor = BrickColor.new("Institutional white")
obj32.Friction = 0.30000001192093
obj32.Shape = Enum.PartType.Cylinder
obj32.Name = "redstuff"
obj32.Anchored = true
obj32.Parent = obj1


-- 33 - redstuff
local obj33 = Instance.new("Part")
obj33.CFrame = CFrame.new(Vector3.new(18.9800053, 6.1400156, -134.404984)) * CFrame.Angles(-0, 0, -0)
obj33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.Material = Enum.Material.SmoothPlastic
obj33.Size = Vector3.new(1.81999993, 0.100000001, 0.0500000007)
obj33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.BrickColor = BrickColor.new("Institutional white")
obj33.Friction = 0.30000001192093
obj33.Shape = Enum.PartType.Block
obj33.Name = "redstuff"
obj33.Anchored = true
obj33.Parent = obj1

-- 34 - redstuff
local obj34 = Instance.new("Part")
obj34.CFrame = CFrame.new(Vector3.new(19.9470005, 6.32499981, -134.399994)) * CFrame.Angles(-0, 0, -0)
obj34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.Size = Vector3.new(0.0500000007, 0.360000014, 0.360000014)
obj34.Material = Enum.Material.SmoothPlastic
obj34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.BrickColor = BrickColor.new("Institutional white")
obj34.Friction = 0.30000001192093
obj34.Shape = Enum.PartType.Cylinder
obj34.Name = "redstuff"
obj34.Anchored = true
obj34.Parent = obj1

-- 35 - redstuff
local obj35 = Instance.new("Part")
obj35.CFrame = CFrame.new(Vector3.new(19.8830166, 6.14501476, -134.399963)) * CFrame.Angles(-0, 0, -0)
obj35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.Size = Vector3.new(0.0500000007, 0.319999993, 0.319999993)
obj35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.BrickColor = BrickColor.new("Institutional white")
obj35.Friction = 0.30000001192093
obj35.Shape = Enum.PartType.Cylinder
obj35.Material = Enum.Material.SmoothPlastic
obj35.Name = "redstuff"
obj35.Anchored = true
obj35.Parent = obj1

-- 36 - redstuff
local obj36 = Instance.new("Part")
obj36.CFrame = CFrame.new(Vector3.new(20.9430103, 6.14501476, -134.399963)) * CFrame.Angles(-0, 0, -0)
obj36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.Material = Enum.Material.SmoothPlastic
obj36.Size = Vector3.new(0.0500000007, 0.25999999, 0.25999999)
obj36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.BrickColor = BrickColor.new("Institutional white")
obj36.Friction = 0.30000001192093
obj36.Shape = Enum.PartType.Cylinder
obj36.Name = "redstuff"
obj36.Anchored = true
obj36.Parent = obj1

-- 37 - redstuff
local obj37 = Instance.new("WedgePart")
obj37.CFrame = CFrame.new(Vector3.new(18.066288, 6.14381599, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.Material = Enum.Material.SmoothPlastic
obj37.Size = Vector3.new(0.0500000007, 0.0700000003, 0.0700000003)
obj37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.Anchored = true
obj37.BrickColor = BrickColor.new("Institutional white")
obj37.Friction = 0.30000001192093
obj37.Name = "redstuff"
obj37.Anchored = true
obj37.Parent = obj1

-- 38 - redstuff
local obj38 = Instance.new("Part")
obj38.CFrame = CFrame.new(Vector3.new(20.1230125, 6.14501476, -134.399979)) * CFrame.Angles(-0, 0, -0)
obj38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.Material = Enum.Material.SmoothPlastic
obj38.Size = Vector3.new(0.0500000007, 0.25999999, 0.25999999)
obj38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.BrickColor = BrickColor.new("Institutional white")
obj38.Friction = 0.30000001192093
obj38.Shape = Enum.PartType.Cylinder
obj38.Name = "redstuff"
obj38.Anchored = true
obj38.Parent = obj1

local function recurse(objnum)
	table.insert(knifeparts,{objnum,objnum.Parent})
	for i,v in pairs(objnum:GetChildren()) do
		recurse(v)
	end
end

recurse(obj1)

local audio = Instance.new('Sound',knife)
audio.Volume = 2

local audio2 = Instance.new('Sound',knife)
audio2.Volume = 2

local holdpart = Instance.new("Part")
holdpart.Parent = me
holdpart.Size = Vector3.new(0.4, 0.4, 0.2)
holdpart.Position = me.Head.Position + Vector3.new(0, 1, 0)
holdpart.BrickColor = BrickColor.new("Burnt Sienna")

local previous = nil
for i,v in pairs(obj1:GetChildren()) do
	if v:IsA('BasePart') then
		if previous then
			local weld = Instance.new('Weld',v)
			weld.Part0 = v
			weld.Part1 = previous
			weld.C0 = v.CFrame:inverse() * previous.CFrame
			previous.Anchored = false
			previous.CanCollide = false
			local vee = v
			weld.AncestryChanged:connect(function(mez,par)
				wait()
				weld.Parent = vee
			end)
		end
		previous = v
	end
end
previous.Anchored = false
previous.CanCollide = false

local holdpartweld = Instance.new("Weld", me.Torso)
holdpartweld.Part0 = me.Torso
holdpartweld.Part1 = holdpart
holdpartweld.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(-1, -0.8, 0.15)

holdpartweld.AncestryChanged:connect(function(mez,par)
	if par ~= me.Torso then
		wait()
		holdpartweld.Parent = me.Torso
	end
end)

local knifeweld = Instance.new('Weld',me.Torso)
knifeweld.Part0 = me.Torso
knifeweld.Part1 = obj2
knifeweld.C1 = CFrame.Angles(0,math.rad(90),0) * CFrame.new(1, 0.8, 0.55)
knifeweld.AncestryChanged:connect(function(mez,par)
	if par ~= me.Torso then
		wait()
		knifeweld.Parent = me.Torso
	end
end)
local ScreenGui = Instance.new("ScreenGui")
local CustomizeGui = Instance.new("Frame")
local Customize = Instance.new("TextLabel")
local ClosestColor = Instance.new("TextLabel")
local Line = Instance.new("TextLabel")
local Color = Instance.new("ImageLabel")
local Close = Instance.new("TextButton")
local RedHue = Instance.new("TextLabel")
local GreenHue = Instance.new("TextLabel")
local RedInput = Instance.new("TextBox")
local BlueHue = Instance.new("TextLabel")
local GreenInput = Instance.new("TextBox")
local TransInput = Instance.new("TextBox")
local BlueInput = Instance.new("TextBox")
local Message = Instance.new("TextLabel")
local Message2 = Instance.new("TextLabel")
local TrailTransparency = Instance.new("TextLabel")
local TrailInput = Instance.new("TextBox")
local MusicOption = Instance.new("TextButton")
local ScreenOption = Instance.new("TextButton")
local ScreenOptionTxt = Instance.new("TextLabel")
local MusicOptionTxt = Instance.new("TextLabel")

-- Properties

ScreenGui.Parent = playergui

CustomizeGui.Name = "CustomizeGui"
CustomizeGui.Parent = ScreenGui
CustomizeGui.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
CustomizeGui.BackgroundTransparency = 0.5
CustomizeGui.BorderColor3 = Color3.new(0, 0, 0)
CustomizeGui.BorderSizePixel = 2
CustomizeGui.Position = UDim2.new(0, 0, 0.5, 0)
CustomizeGui.Size = UDim2.new(0.449999988, 0, 0.449999988, 0)

Customize.Name = "Customize"
Customize.Parent = CustomizeGui
Customize.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
Customize.BackgroundTransparency = 0.75
Customize.BorderSizePixel = 0
Customize.Size = UDim2.new(1, 0, 0.200000003, 0)
Customize.FontSize = Enum.FontSize.Size28
Customize.Text = "ACCENT COLOR CUSTOMIZATION"
Customize.TextColor3 = Color3.new(1, 1, 1)
Customize.TextScaled = true
Customize.TextSize = 25
Customize.TextStrokeTransparency = 0.5
Customize.TextWrapped = true

ClosestColor.Name = "ClosestColor"
ClosestColor.Parent = CustomizeGui
ClosestColor.BackgroundColor3 = Color3.new(1, 1, 1)
ClosestColor.BackgroundTransparency = 1
ClosestColor.Position = UDim2.new(0, 0, 0.850000024, 0)
ClosestColor.Size = UDim2.new(1, 0, 0.150000006, 0)
ClosestColor.Font = Enum.Font.SourceSansLight
ClosestColor.FontSize = Enum.FontSize.Size32
ClosestColor.Text = "Your color is closest to Institutional White"
ClosestColor.TextColor3 = Color3.new(1, 1, 1)
ClosestColor.TextSize = 30
ClosestColor.TextStrokeTransparency = 0.5

Line.Name = "Line"
Line.Parent = CustomizeGui
Line.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Line.BackgroundTransparency = 0.5
Line.BorderColor3 = Color3.new(0, 0, 0)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0, 0, 0.200000003, 0)
Line.Size = UDim2.new(1, 0, 0.0299999993, 0)
Line.Font = Enum.Font.SourceSans
Line.FontSize = Enum.FontSize.Size14
Line.Text = " "
Line.TextSize = 14

Color.Name = "Color"
Color.Parent = CustomizeGui
Color.BackgroundColor3 = Color3.new(1, 1, 1)
Color.BorderSizePixel = 0
Color.Position = UDim2.new(0.699999988, 0, 0.419999987, 0)
Color.Size = UDim2.new(0.300000012, 0, 0.300000012, 0)
Color.SizeConstraint = Enum.SizeConstraint.RelativeYY

MusicOption.Parent = CustomizeGui
MusicOption.Name = "MusicOption"
MusicOption.BackgroundColor3 = Color3.new(0, 1, 0)
MusicOption.BorderSizePixel = 1
MusicOption.Position = UDim2.new(0.01, 0, -0.12, 0)
MusicOption.Size = UDim2.new(0.05, 0, 0.1, 0)
MusicOption.Text = ""
MusicOption.BackgroundTransparency = 0.5

ScreenOption.Parent = CustomizeGui
ScreenOption.Name = "ScreenOption"
ScreenOption.BackgroundColor3 = Color3.new(0, 1, 0)
ScreenOption.BorderSizePixel = 1
ScreenOption.Position = UDim2.new(0.01, 0, -0.23, 0)
ScreenOption.Size = UDim2.new(0.05, 0, 0.1, 0)
ScreenOption.Text = ""
ScreenOption.BackgroundTransparency = 0.5

ScreenOptionTxt.Name = "ScreenOptionTxt"
ScreenOptionTxt.Parent = CustomizeGui
ScreenOptionTxt.BackgroundColor3 = Color3.new(1, 1, 1)
ScreenOptionTxt.BackgroundTransparency = 1
ScreenOptionTxt.Position = UDim2.new(0.07, 0, -0.23, 0)
ScreenOptionTxt.Size = UDim2.new(1, 0, 0.07, 0)
ScreenOptionTxt.Font = Enum.Font.SourceSans
ScreenOptionTxt.FontSize = Enum.FontSize.Size24
ScreenOptionTxt.Text = "Psychopath Red Filter"
ScreenOptionTxt.TextColor3 = Color3.new(1, 1, 1)
ScreenOptionTxt.TextScaled = true
ScreenOptionTxt.TextSize = 20
ScreenOptionTxt.TextStrokeColor3 = Color3.new(0, 0, 0)
ScreenOptionTxt.TextStrokeTransparency = 0.5
ScreenOptionTxt.TextWrapped = true
ScreenOptionTxt.TextXAlignment = "Left"

MusicOptionTxt.Name = "MusicOptionTxt"
MusicOptionTxt.Parent = CustomizeGui
MusicOptionTxt.BackgroundColor3 = Color3.new(1, 1, 1)
MusicOptionTxt.BackgroundTransparency = 1
MusicOptionTxt.Position = UDim2.new(0.07, 0, -0.12, 0)
MusicOptionTxt.Size = UDim2.new(1, 0, 0.07, 0)
MusicOptionTxt.Font = Enum.Font.SourceSans
MusicOptionTxt.FontSize = Enum.FontSize.Size24
MusicOptionTxt.Text = "Psychopath Background Music"
MusicOptionTxt.TextColor3 = Color3.new(1, 1, 1)
MusicOptionTxt.TextScaled = true
MusicOptionTxt.TextSize = 20
MusicOptionTxt.TextStrokeColor3 = Color3.new(0, 0, 0)
MusicOptionTxt.TextStrokeTransparency = 0.5
MusicOptionTxt.TextWrapped = true
MusicOptionTxt.TextXAlignment = "Left"

Close.Name = "Close"
Close.Parent = CustomizeGui
Close.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
Close.BackgroundTransparency = 0.5
Close.BorderColor3 = Color3.new(0, 0, 0)
Close.BorderSizePixel = 2
Close.Position = UDim2.new(1.005, 0, 0, 0)
Close.Size = UDim2.new(0.100000001, 0, 0.2, 0)
Close.Font = Enum.Font.SourceSans
Close.FontSize = Enum.FontSize.Size14
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextScaled = true
Close.TextSize = 14
Close.TextStrokeTransparency = 0
Close.TextWrapped = true

RedHue.Name = "RedHue"
RedHue.Parent = CustomizeGui
RedHue.BackgroundColor3 = Color3.new(1, 1, 1)
RedHue.BackgroundTransparency = 1
RedHue.Position = UDim2.new(0.100000001, 0, 0.400000006, 0)
RedHue.Size = UDim2.new(0.300000012, 0, 0.100000001, 0)
RedHue.Font = Enum.Font.SourceSans
RedHue.FontSize = Enum.FontSize.Size24
RedHue.Text = "RED Hue Value: "
RedHue.TextColor3 = Color3.new(1, 1, 1)
RedHue.TextScaled = true
RedHue.TextSize = 20
RedHue.TextStrokeColor3 = Color3.new(1, 0, 0)
RedHue.TextStrokeTransparency = 0.75
RedHue.TextWrapped = true

GreenHue.Name = "GreenHue"
GreenHue.Parent = CustomizeGui
GreenHue.BackgroundColor3 = Color3.new(1, 1, 1)
GreenHue.BackgroundTransparency = 1
GreenHue.Position = UDim2.new(0.100000001, 0, 0.5, 0)
GreenHue.Size = UDim2.new(0.300000012, 0, 0.100000001, 0)
GreenHue.Font = Enum.Font.SourceSans
GreenHue.FontSize = Enum.FontSize.Size24
GreenHue.Text = "GREEN Hue Value:"
GreenHue.TextColor3 = Color3.new(1, 1, 1)
GreenHue.TextScaled = true
GreenHue.TextSize = 20
GreenHue.TextStrokeColor3 = Color3.new(0, 1, 0)
GreenHue.TextStrokeTransparency = 0.75
GreenHue.TextWrapped = true

RedInput.Name = "RedInput"
RedInput.Parent = CustomizeGui
RedInput.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
RedInput.BackgroundTransparency = 0.5
RedInput.BorderSizePixel = 0
RedInput.Position = UDim2.new(0.419999987, 0, 0.425000007, 0)
RedInput.Size = UDim2.new(0.200000003, 0, 0.075000003, 0)
RedInput.Font = Enum.Font.SourceSans
RedInput.FontSize = Enum.FontSize.Size14
RedInput.Text = "255"
RedInput.TextColor3 = Color3.new(1, 1, 1)
RedInput.TextSize = 14
RedInput.TextStrokeTransparency = 0

BlueHue.Name = "BlueHue"
BlueHue.Parent = CustomizeGui
BlueHue.BackgroundColor3 = Color3.new(1, 1, 1)
BlueHue.BackgroundTransparency = 1
BlueHue.Position = UDim2.new(0.100000001, 0, 0.600000024, 0)
BlueHue.Size = UDim2.new(0.300000012, 0, 0.100000001, 0)
BlueHue.Font = Enum.Font.SourceSans
BlueHue.FontSize = Enum.FontSize.Size24
BlueHue.Text = "BLUE Hue Value:"
BlueHue.TextColor3 = Color3.new(1, 1, 1)
BlueHue.TextScaled = true
BlueHue.TextSize = 20
BlueHue.TextStrokeColor3 = Color3.new(0, 0, 1)
BlueHue.TextStrokeTransparency = 0.75
BlueHue.TextWrapped = true

TrailTransparency.Name = "TrailTransparency"
TrailTransparency.Parent = CustomizeGui
TrailTransparency.BackgroundColor3 = Color3.new(1, 1, 1)
TrailTransparency.BackgroundTransparency = 1
TrailTransparency.Position = UDim2.new(0.090000001, 0, 0.700000024, 0)
TrailTransparency.Size = UDim2.new(0.310000012, 0, 0.100000001, 0)
TrailTransparency.Font = Enum.Font.SourceSans
TrailTransparency.FontSize = Enum.FontSize.Size24
TrailTransparency.Text = "Trail Transparency:"
TrailTransparency.TextColor3 = Color3.new(1, 1, 1)
TrailTransparency.TextScaled = true
TrailTransparency.TextSize = 20
TrailTransparency.TextStrokeColor3 = Color3.new(0, 0, 0)
TrailTransparency.TextWrapped = true

GreenInput.Name = "GreenInput"
GreenInput.Parent = CustomizeGui
GreenInput.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
GreenInput.BackgroundTransparency = 0.5
GreenInput.BorderSizePixel = 0
GreenInput.Position = UDim2.new(0.419999987, 0, 0.524999976, 0)
GreenInput.Size = UDim2.new(0.200000003, 0, 0.075000003, 0)
GreenInput.Font = Enum.Font.SourceSans
GreenInput.FontSize = Enum.FontSize.Size14
GreenInput.Text = "255"
GreenInput.TextColor3 = Color3.new(1, 1, 1)
GreenInput.TextSize = 14
GreenInput.TextStrokeTransparency = 0

TransInput.Name = "TransInput"
TransInput.Parent = CustomizeGui
TransInput.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
TransInput.BackgroundTransparency = 0.5
TransInput.BorderSizePixel = 0
TransInput.Position = UDim2.new(0.419999987, 0, 0.725000024, 0)
TransInput.Size = UDim2.new(0.200000003, 0, 0.075000003, 0)
TransInput.Font = Enum.Font.SourceSans
TransInput.FontSize = Enum.FontSize.Size14
TransInput.Text = "50"
TransInput.TextColor3 = Color3.new(1, 1, 1)
TransInput.TextSize = 14
TransInput.TextStrokeTransparency = 0

BlueInput.Name = "BlueInput"
BlueInput.Parent = CustomizeGui
BlueInput.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
BlueInput.BackgroundTransparency = 0.5
BlueInput.BorderSizePixel = 0
BlueInput.Position = UDim2.new(0.419999987, 0, 0.625, 0)
BlueInput.Size = UDim2.new(0.200000003, 0, 0.075000003, 0)
BlueInput.Font = Enum.Font.SourceSans
BlueInput.FontSize = Enum.FontSize.Size14
BlueInput.Text = "255"
BlueInput.TextColor3 = Color3.new(1, 1, 1)
BlueInput.TextSize = 14
BlueInput.TextStrokeTransparency = 0

Message.Name = "Message"
Message.Parent = CustomizeGui
Message.BackgroundColor3 = Color3.new(1, 1, 1)
Message.BackgroundTransparency = 1
Message.Position = UDim2.new(0, 0, 0.2500004, 0)
Message.Size = UDim2.new(1, 0, 0.100000006, 0)
Message.Font = Enum.Font.SourceSans
Message.FontSize = Enum.FontSize.Size18
Message.Text = "|| Inputs must be values ||"
Message.TextColor3 = Color3.new(1, 1, 1)
Message.TextScaled = true
Message.TextSize = 15
Message.TextStrokeTransparency = 0.75
Message.TextWrapped = true

local attun = Instance.new("Attachment", knife)
attun.Position = Vector3.new(0, 0.1, -1.75)
local atdos = Instance.new("Attachment", knife)
atdos.Position = Vector3.new(0, -0.1, 0.5)
local trail = Instance.new("Trail", knife)
trail.LightEmission = 0.5
trail.Attachment0 = attun
trail.Attachment1 = atdos
trail.Lifetime = 0.175
trail.MinLength = 0
trail.Enabled = false

function updatez()
	local rc = tonumber(RedInput.Text)
	local gc = tonumber(GreenInput.Text)
	local bc = tonumber(BlueInput.Text)
	local tcupd = tonumber(TransInput.Text)
	if rc == nil then
		rc = 0
	end
	if gc == nil then
		gc = 0
	end
	if bc == nil then
		bc = 0
	end
	if tcupd == nil then
		tcupd = 0
	end
	local tc = tcupd/100
	Color.BackgroundColor3 = Color3.fromRGB(rc,gc,bc)
	ClosestColor.Text = "Your color is closest to "..tostring(BrickColor.new(Color3.fromRGB(rc,gc,bc)))
	obj32.Color = Color3.fromRGB(rc,gc,bc)
	obj33.Color = Color3.fromRGB(rc,gc,bc)
	obj34.Color = Color3.fromRGB(rc,gc,bc)
	obj35.Color = Color3.fromRGB(rc,gc,bc)
	obj36.Color = Color3.fromRGB(rc,gc,bc)
	obj37.Color = Color3.fromRGB(rc,gc,bc)
	obj38.Color = Color3.fromRGB(rc,gc,bc)
	trail.Color = ColorSequence.new(Color3.fromRGB(rc, gc, bc))
	trail.Transparency = NumberSequence.new(tc)
	TrailTransparency.TextStrokeTransparency = tc
end

RedInput.Changed:connect(function(val)
	if val == "Text" and tonumber(RedInput.Text) then
		RedInput.Text = tostring(tonumber(RedInput.Text))
		if tonumber(RedInput.Text) > 255 then
			RedInput.Text = '255'
		end
	elseif val == "Text" then
		RedInput.Text = ""
	end
	updatez()
end)
GreenInput.Changed:connect(function(val)
	if val == "Text" and tonumber(GreenInput.Text) then
		GreenInput.Text = tostring(tonumber(GreenInput.Text))
		if tonumber(GreenInput.Text) > 255 then
			GreenInput.Text = '255'
		end
	elseif val == "Text" then
		GreenInput.Text = ""
	end
	updatez()
end)
BlueInput.Changed:connect(function(val)
	if val == "Text" and tonumber(BlueInput.Text) then
		BlueInput.Text = tostring(tonumber(BlueInput.Text))
		if tonumber(BlueInput.Text) > 255 then
			BlueInput.Text = '255'
		end
	elseif val == "Text" then
		BlueInput.Text = ""
	end
	updatez()
end)
TransInput.Changed:connect(function(val)
	if val == "Text" and tonumber(TransInput.Text) then
		TransInput.Text = tostring(tonumber(TransInput.Text))
		if tonumber(TransInput.Text) > 100 then
			TransInput.Text = '100'
		end
	elseif val == "Text" then
		TransInput.Text = ""
	end
	updatez()
end)

Close.MouseButton1Click:connect(function()
	if lerpz == false then
		lerpz = true
		if Close.Text ~= "+" then
			CustomizeGui:TweenPosition(UDim2.new(-0.45,0,0.5,0,Enum.EasingDirection.Out,Enum.EasingStyle.Quint,2))
			for i=1,10 do
				Close.TextTransparency = i/10
				Close.TextStrokeTransparency = i/10
				wait(0.01)
			end
			Close.Text = "+"
			for i=1,10 do
				Close.TextTransparency = (10-i+1)/10
				Close.TextStrokeTransparency = (10-i+1)/10
				wait(0.01)
			end
			lerpz = false
		else
			CustomizeGui:TweenPosition(UDim2.new(0,0,0.5,0,Enum.EasingDirection.Out,Enum.EasingStyle.Quint,2))
			for i=1,10 do
				Close.TextTransparency = i/10
				Close.TextStrokeTransparency = i/10
				wait(0.01)
			end
			Close.Text = "X"
			for i=1,10 do
				Close.TextTransparency = (10-i+1)/10
				Close.TextStrokeTransparency = (10-i+1)/10
				wait(0.01)
			end
			lerpz = false
		end
	end
end)

MusicOption.MouseButton1Click:connect(function()
	if canbackgroundmusic == true then
		canbackgroundmusic = false
		MusicOption.BackgroundColor3 = Color3.new(1, 0, 0)
	else
		canbackgroundmusic = true
		MusicOption.BackgroundColor3 = Color3.new(0, 1, 0)
	end
end)

ScreenOption.MouseButton1Click:connect(function()
	if cancolorfilter == true then
		cancolorfilter = false
		ScreenOption.BackgroundColor3 = Color3.new(1, 0, 0)
	else
		cancolorfilter = true
		ScreenOption.BackgroundColor3 = Color3.new(0, 1, 0)
	end
end)

function equip()
	local doit = coroutine.wrap(function()
	if me:FindFirstChild('Right Arm') and me:FindFirstChild('Torso') then
		acting = true
		local arm = me["Right Arm"]
		local arm2 = me["Left Arm"]
		local tors = me.Torso
		local weld = Instance.new('Weld',arm)
		weld.Part0 = arm
		weld.Part1 = tors
		weld.C0 = CFrame.new(-1.5,0,0)
		local weld2 = Instance.new("Weld", arm2)
		weld2.Part0 = arm2
		weld2.Part1 = tors
		weld2.C0 = CFrame.new(1.5, 0, 0)
		wait(0.001)
		for i = 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil then return end
			weld.C0 = weld.C0:lerp(CFrame.new(-0.2,0.2,-0.5)*CFrame.Angles(0,-3.1,0.9),i)
			weld2.C0 = weld2.C0:lerp(CFrame.new(1.5, 0.6, 0) * CFrame.Angles(0,0,0.5),i)
			wait(0.001)
		end
		wait(0.15)
		trail.Enabled = true
		for i = 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil then return end
			weld.C0 = weld.C0:lerp(CFrame.new(-0.5,2,0)*CFrame.Angles(0,0,-1.55),i)
			weld2.C0 = weld2.C0:lerp(CFrame.new(1.5, 0, 0), i)
			wait(0.001)
		end
		trail.Enabled = false
		wait(0.2)
		for i = 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil then return end
			weld.C0 = weld.C0:lerp(CFrame.new(-1.5,0,0),i)
			wait(0.001)
		end
		weld:Destroy()
		weld2:Remove()
		if tors ~= nil then
			rightshoulderz:Clone().Parent = me.Torso
			leftshoulderz:Clone().Parent = me.Torso
		end
	end
	acting = false
	end)
	doit()
end

function kysnigga()
	if kyssing == true then return end
	kyssing = true
	acting = true
	decearingTHING = math.random(1, 100)
	if decearingTHING == 4 then
		decearingEGG = Instance.new("Sound", me.Torso)
		decearingEGG.SoundId = "rbxassetid://138084557"
		decearingEGG.PlaybackSpeed = math.random(10, 12) / 10
		decearingEGG.TimePosition = 0.2
		decearingEGG:Play()
	end
	me.Humanoid.WalkSpeed = 0
	me.Humanoid.JumpPower = 0
	
	local rightarm = Instance.new("Weld", me.Torso)
	rightarm.Part0 = me.Torso
	rightarm.Part1 = me["Right Arm"]
	rightarm.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(1.5, 0, 0)
	
	local leftarm = Instance.new("Weld", me.Torso)
	leftarm.Part0 = me.Torso
	leftarm.Part1 = me["Left Arm"]
	leftarm.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(-1.5, 0, 0)
	
	local tors = Instance.new("Weld", me.HumanoidRootPart)
	tors.Part0 = me.HumanoidRootPart
	tors.Part1 = me.Torso
	tors.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
	
	local rightleg = Instance.new("Weld", me.Torso)
	rightleg.Part0 = me.Torso
	rightleg.Part1 = me["Right Leg"]
	rightleg.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(0.5, -2, 0)
	
	local leftleg = Instance.new("Weld", me.Torso)
	leftleg.Part0 = me.Torso
	leftleg.Part1 = me["Left Leg"]
	leftleg.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(-0.5, -2, 0)
	
	for i = 0, 1, 0.03 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-10), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-80), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-80), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), i)
		wait()
	end
	for i = 0, 1, 0.03 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(5), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -1, 0.15) * CFrame.Angles(math.rad(-95), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -1, 0.15) * CFrame.Angles(math.rad(-95), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1, 0.3, -1.5) * CFrame.Angles(math.rad(90), 0, math.rad(-35)), i)
		leftarm.C0 = leftarm.C0:lerp(CFrame.new(-1, 0.3, -1.5) * CFrame.Angles(math.rad(90), 0, math.rad(35)), i)
		knifeweld.C1 = knifeweld.C1:lerp(CFrame.new(1.35, 0, 1) * CFrame.Angles(1.55, math.rad(-180), 1), i)
		wait()
	end
	local bleedzer = Instance.new('Part',me.Torso)
	bleedzer.CFrame = me.Torso.CFrame
	bleedzer.Size = Vector3.new(0.1,0.1,0.1)
	bleedzer.Transparency = 1
	bleedzer.CanCollide = false
	local weld = Instance.new('Weld',bleedzer)
	weld.Part0 = bleedzer
	weld.Part1 = me.Torso
	weld.C0= CFrame.new(0,0,0)*CFrame.Angles(math.rad(-90),0,0)
	local woodpekker = coroutine.wrap(function()
		bleed(bleedzer)
	end)
	woodpekker()
	audio.SoundId = "rbxassetid://199977936"
	audio.PlaybackSpeed = 1.5
	audio:Play()
	audio2.SoundId = "rbxassetid://220834019"
	audio2.PlaybackSpeed = 1
	audio2.TimePosition = 0.1
	audio2:Play()
	for i = 0, 1, 0.1 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-20), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -1, -0.35) * CFrame.Angles(math.rad(-70), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -1, -0.35) * CFrame.Angles(math.rad(-70), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1, 0, 0) * CFrame.Angles(math.rad(70), 0, math.rad(-35)), i)
		leftarm.C0 = leftarm.C0:lerp(CFrame.new(-1, 0, 0) * CFrame.Angles(math.rad(70), 0, math.rad(35)), i)
		knifeweld.C1 = knifeweld.C1:lerp(CFrame.new(1.35, 0, 1) * CFrame.Angles(1.55, math.rad(-180), 1), i)
		wait()
	end
	wait(1)
	audio.SoundId = "rbxassetid://210943487"
	audio.TimePosition = 0.2
	audio.PlaybackSpeed = 0.75
	audio:Play()
	for i = 0, 1, 0.03 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-20), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -1, -0.35) * CFrame.Angles(math.rad(-70), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -1, -0.35) * CFrame.Angles(math.rad(-70), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1, 0.3, -1.5) * CFrame.Angles(math.rad(70), 0, math.rad(-35)), i)
		leftarm.C0 = leftarm.C0:lerp(CFrame.new(-1, 0.3, -1.5) * CFrame.Angles(math.rad(70), 0, math.rad(35)), i)
		knifeweld.C1 = knifeweld.C1:lerp(CFrame.new(1.35, 0, 1) * CFrame.Angles(1.55, math.rad(-180), 1), i)
		wait()
	end
	for i = 0, 1, 0.03 do
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.5, 0, -0.4) * CFrame.Angles(math.rad(30), 0, math.rad(0)), i)
		leftarm.C0 = leftarm.C0:lerp(CFrame.new(-1.5, 0, -0.4) * CFrame.Angles(math.rad(30), 0, math.rad(0)), i)
		knifeweld.C1 = knifeweld.C1:lerp(CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), 1.55) * CFrame.new(0, 0.95, 0), i)
		wait()
	end
	wait(0.24)
	if me:FindFirstChildOfClass('Humanoid') then
		me:FindFirstChildOfClass('Humanoid').Health = 0
	end
	wait(0.01)
	killz(me,me.Torso.Name,nil,nil,true)
	
	tors:Remove()
	rightarm:Remove()
	rightleg:Remove()
	leftleg:Remove()
	leftarm:Remove()
	rightshoulderz:Clone().Parent = me.Torso
	leftshoulderz:Clone().Parent = me.Torso
	torsojoint:Clone().Parent = me.HumanoidRootPart
	lefthipz:Clone().Parent = me.Torso
	righthipz:Clone().Parent = me.Torso
	me.Humanoid.JumpPower = 50
	me.Humanoid.WalkSpeed = 16
	acting = false
	canClick = true
	doing = false
	hit = false
	kyssing = false
	if decearingTHING == 4 then
		decearingEGG:Remove()
	end
end

function bleedout()
	local doit = coroutine.wrap(function()
		local targe = grabbed
		local num = 0
		while targe and targe:FindFirstChildOfClass('Humanoid') and targe:FindFirstChildOfClass('Humanoid').Health > 0 and num < 11 do
			if targe.Head:FindFirstChild('Died') then
				tone = math.random(6, 12) / 10
				targe.Head.Died.PlaybackSpeed = tone
				targe.Head.Died:Play()
			else
				local deathsound = Instance.new('Sound',targe.Head)
				deathsound.Name = "Died"
				deathsound.SoundId = 'rbxasset://sounds/uuhhh.mp3'
				deathsound.Volume = 0.65
				deathsound.EmitterSize = 5
				deathsound.MaxDistance = 150
				tone = math.random(5, 15) / 10
				targe.Head.Died.PlaybackSpeed = tone
				targe.Head.Died:Play()
			end
			targe:FindFirstChildOfClass('Humanoid').Health = targe:FindFirstChildOfClass('Humanoid').Health - 7
			num = num+1
			wait(0.325)
		end
		targe:FindFirstChildOfClass('Humanoid').Health = 0
		wait()
		killz(targe,'Head',nil,nil,false,true)
		wait(2)
		targe:Remove()
	end)
	doit()
end

function liedown()
	local doit = coroutine.wrap(function()
	local targe = grabbed
		wait(2)
		if targe and targe:FindFirstChildOfClass('Humanoid') then
			targe:FindFirstChildOfClass('Humanoid').PlatformStand = false
		end
	end)
	doit()
end

function grab()
	local doit = coroutine.wrap(function()
	acting = true
	me:FindFirstChildOfClass('Humanoid').WalkSpeed = me:FindFirstChildOfClass('Humanoid').WalkSpeed + 3
	local arm = me["Right Arm"]
	local tors = me.Torso
	local arm2 = me["Left Arm"]
	local humanroot = me.HumanoidRootPart
	local weld2 = Instance.new('Weld',arm)
	weld2.Part0 = arm
	weld2.Part1 = tors
	weld2.C0 = CFrame.new(-1.5,0,0) * CFrame.Angles(0, 0, 0)
	local weld3 = Instance.new('Weld',arm2)
	weld3.Part0 = arm2
	weld3.Part1 = tors
	weld3.C0 = CFrame.new(1.5,0,-0.3) * CFrame.Angles(0.3,0.1,0)
	for i = 0,1,0.05 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or humanroot == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.2,1.3,0.4)*CFrame.Angles(0.5,0,-1.2),i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(1.2,1.3,0)*CFrame.Angles(0,0,1.2),i)
		knifeweld.C1 = CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), -1.55) * CFrame.new(0, 0.95, 0)
		wait(0.01)
	end
	grabbing = true
	trail.Enabled = true
	for i = 0,1,0.10 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or humanroot == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 0.80, -1.1)* CFrame.Angles(-1.5, 0, -1.3), i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 1, -0.5)* CFrame.Angles(-1.5, 0, 1.1), i)
		wait(0.01)
	end
	trail.Enabled = false
	wait(0.5)
	grabbing = false
	me:FindFirstChildOfClass('Humanoid').WalkSpeed = me:FindFirstChildOfClass('Humanoid').WalkSpeed - 3
	if grabbed == nil then
		for i = 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
			weld3.C0 = weld3.C0:lerp(CFrame.new(1.5,0,0),i)
			knifeweld.C1 = CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), 1.55) * CFrame.new(0, 0.95, 0)
			wait(0.001)
		end
		weld2:Destroy()
		weld3:Destroy()
		rightshoulderz:Clone().Parent = me.Torso
			leftshoulderz:Clone().Parent = me.Torso
		acting = false
		canClick = true
	end
	end)
	doit()
end

function kill()
	paralyzed = false
	if grabbed.Torso:FindFirstChild("TargetWeld") == nil or grabbed:FindFirstChildOfClass('Humanoid').Health <= 0 then hardrelease() return end
	targetweld = grabbed.Torso.TargetWeld
	targetweld2 = nil
	local reee = grabbed:FindFirstChild("Left Arm")
	if reee and reee:FindFirstChild("Weld") then
		targetweld2 = reee.Weld
	end
	for i, v in pairs(grabbed:GetChildren()) do
		if v.Name == "Part" then
			v.CanCollide = true
		end
	end
	targetweld3pt = grabbed:FindFirstChild("Right Arm")
	local targetrightshoulder = rightshoulder
	local targetleftshoulder = leftshoulder
	local targetweld3 = Instance.new("Weld", targetweld3pt)
	targetweld3.Part0 = grabbed.Torso
	targetweld3.Part1 = targetweld3pt
	targetweld3.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(1.5, 0, 0)
	
	local doit = coroutine.wrap(function()
	local arm = me["Right Arm"]
	local tors = grabbed.Torso
	local arm2 = me["Left Arm"]
	if arm:FindFirstChildOfClass('Weld') == nil or arm2:FindFirstChildOfClass('Weld') == nil then return end
	doing = true
	local weld2 = arm:FindFirstChildOfClass('Weld')
	local weld3 = arm2:FindFirstChildOfClass('Weld')
	local humanroot = me.HumanoidRootPart
	
	for i = 0,1,0.1 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or weld3 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 0.80, -1.1)* CFrame.Angles(-1.9, 0, -1.4), i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 0.5, -0.5)* CFrame.Angles(-1.5, 0.4, 1.1), i)
		wait(0.01)
	end
	
	audio:Stop()
	audio.SoundId = "rbxassetid://517040733"
	tone = math.random(1, 3)
	if tone == 1 then audio.PlaybackSpeed = 0.8 audio.TimePosition = 0.3 end
	if tone == 2 then audio.PlaybackSpeed = 1 audio.TimePosition = 0.1 end
	if tone == 3 then audio.PlaybackSpeed = 1.2 audio.TimePosition = 0.2 end
	audio:Play()
	
	local bleedpart = Instance.new("Part", grabbed)
	bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
	bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
	bleedpart.CanCollide = false
	bleedpart.Position = grabbed.Head.Position + Vector3.new(0, 1, 0)
	bleedpart.Transparency = 1
	
	local bleedpartweld = Instance.new("Weld", grabbed.Torso)
	bleedpartweld.Part0 = grabbed.Torso
	bleedpartweld.Part1 = bleedpart
	bleedpartweld.C0 = CFrame.Angles(-1, 0, -0.35) * CFrame.new(0, 1, 0.8)
	local coru=coroutine.wrap(function()
	bleed(bleedpart)
	end)
	coru()
	
	local slightthrow = Instance.new("BodyThrust", grabbed.Torso)
	slightthrow.Force = Vector3.new(0, 0, -2500)
	
	local slightthrow2 = Instance.new("BodyAngularVelocity", grabbed.Torso)
	slightthrow2.AngularVelocity = Vector3.new(0, -1000, 0)
	slightthrow2.MaxTorque = Vector3.new(1000, 1000, 1000)
	
	if grabbed:FindFirstChildOfClass('Humanoid') then
		grabbed:FindFirstChildOfClass('Humanoid').PlatformStand = true
	end
	
	killz(grabbed,'Left Leg')
	killz(grabbed,'Left Arm')
	killz(grabbed,'Right Leg')
	killz(grabbed,'Right Arm')
	
	trail.Enabled = true
	
	for i = 0,1,0.2 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or weld3 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 1.7, -0.5)* CFrame.Angles(-0.25, 0, -1.4), i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 1.6, -0.5)* CFrame.Angles(-1.5, -1, 1.1), i)
		wait(0.01)
	end
	
	trail.Enabled = false
	
	bleedout()
	
	rightshoulderz:Clone().Parent = me.Torso
		leftshoulderz:Clone().Parent = me.Torso
	grabbed = nil
	
	if humanroot:FindFirstChild('Holder') then
		humanroot.Holder:Destroy()
	end
	
	wait(0.2)
	slightthrow:Remove()
	slightthrow2:Remove()
	for i = 0,1,0.05 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or weld3 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5, 0, 0)* CFrame.Angles(0, 0, 0), i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(1.5, 0, 0)* CFrame.Angles(0, 0, 0), i)
		knifeweld.C1 = CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), 1.55) * CFrame.new(0, 0.95, 0)
		wait(0.01)
	end
	
	weld2:Destroy()
	weld3:Destroy()
	targetweld = nil
	targetweld2 = nil
	targetweld3 = nil
	rightshoulderz:Clone().Parent = me.Torso
	leftshoulderz:Clone().Parent = me.Torso
	acting = false
	canClick = true
	doing = false
	end)
	doit()
end

function finish()
	if finishing == true then return end
	finishing = true
	acting = true
	decearingTHING = math.random(1, 100)
	if decearingTHING == 4 then
		decearingEGG = Instance.new("Sound", me.Torso)
		decearingEGG.SoundId = "rbxassetid://138084557"
		decearingEGG.PlaybackSpeed = math.random(10, 12) / 10
		decearingEGG.TimePosition = 0.2
		decearingEGG:Play()
	end
	me.Humanoid.WalkSpeed = 0
	me.Humanoid.JumpPower = 0
	
	local rightarm = Instance.new("Weld", me.Torso)
	rightarm.Part0 = me.Torso
	rightarm.Part1 = me["Right Arm"]
	rightarm.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(1.5, 0, 0)
	
	local tors = Instance.new("Weld", me.HumanoidRootPart)
	tors.Part0 = me.HumanoidRootPart
	tors.Part1 = me.Torso
	tors.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
	
	local rightleg = Instance.new("Weld", me.Torso)
	rightleg.Part0 = me.Torso
	rightleg.Part1 = me["Right Leg"]
	rightleg.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(0.5, -2, 0)
	
	local leftleg = Instance.new("Weld", me.Torso)
	leftleg.Part0 = me.Torso
	leftleg.Part1 = me["Left Leg"]
	leftleg.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(-0.5, -2, 0)
	
	for i = 0, 1, 0.05 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -2, 0.2) * CFrame.Angles(math.rad(-15), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -2, 0.2) * CFrame.Angles(math.rad(-15), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.5, 1.9, 0) * CFrame.Angles(math.rad(179), math.rad(179), 0), i)
		wait()
	end
	for i=1,finishnum do
		local num1 = 0.5
		local num2 = 0.5
		local num3 = 0.25
	if finishnum ~= 1 then
		num3 = 0
	end
	trail.Enabled = true
	for i = 0, 1, num1 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-60), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -1.5, 0) * CFrame.Angles(math.rad(0), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -0.7, -1) * CFrame.Angles(math.rad(10), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.5, 1.9, -1) * CFrame.Angles(math.rad(160), math.rad(150), 0), i)
		wait()
	end
	wait()
	for i = 0, 1, num2 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-20), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -1.5, 0) * CFrame.Angles(math.rad(-30), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -0.7, -1) * CFrame.Angles(math.rad(-20), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.5, 1.9, 0.2) * CFrame.Angles(math.rad(250), math.rad(180), 0), i)
		wait()
	end
	trail.Enabled = false
	wait(num3)
	end
	wait()
	for i = 0, 1, 0.05 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -2, 0) * CFrame.Angles(0, 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -2, 0) * CFrame.Angles(0, 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.5, 0, 0) * CFrame.Angles(0, 0, 0), i)
		wait()
	end
	tors:Remove()
	rightarm:Remove()
	rightleg:Remove()
	leftleg:Remove()
	rightshoulderz:Clone().Parent = me.Torso
	leftshoulderz:Clone().Parent = me.Torso
	torsojoint:Clone().Parent = me.HumanoidRootPart
	lefthipz:Clone().Parent = me.Torso
	righthipz:Clone().Parent = me.Torso
	me.Humanoid.JumpPower = 50
	me.Humanoid.WalkSpeed = 16
	acting = false
	canClick = true
	doing = false
	hit = false
	finishing = false
	if decearingTHING == 4 then
		decearingEGG:Remove()
	end
end

function throw()
	if grabbed.Torso:FindFirstChild("TargetWeld") == nil or grabbed:FindFirstChildOfClass('Humanoid').Health <= 0 then return end
	paralyzed = false
	targetweld = grabbed.Torso.TargetWeld
	local ree = grabbed:FindFirstChild("Left Arm")
	targetweld2 =nil
	if ree and ree:FindFirstChild("Weld") then
		targetweld2 = ree.Weld
	end
	
	for i, v in pairs(grabbed:GetChildren()) do
		if v.Name == "Part" then
			v.CanCollide = true
		end
	end
	
	
	local doit = coroutine.wrap(function()
	local arm = me["Right Arm"]
	local tors = grabbed.Torso
	local arm2 = me["Left Arm"]
	local targrightshoulder = rightshoulder
	
	local targleftshoulder = leftshoulder
	if arm:FindFirstChildOfClass('Weld') == nil or arm2:FindFirstChildOfClass('Weld') == nil then return end
	doing = true
	local weld2 = arm:FindFirstChildOfClass('Weld')
	local weld3 = arm2:FindFirstChildOfClass('Weld')
	local humanroot = me.HumanoidRootPart
	
	for i = 0,1,0.2 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or weld3 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 1.7, -0.5)* CFrame.Angles(-0.25, 1, -1.4), i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 1.6, -0.5)* CFrame.Angles(-1.5, -1, 1.1), i)
		targetweld.C0 = targetweld.C0:lerp(CFrame.new(0, 1.5, 0)*CFrame.Angles(0, 0, 0), i)
		if targetweld2 then
			targetweld2.C0 = targetweld2.C0:lerp(CFrame.new(-1.5, 0, 0)*CFrame.Angles(0, 0, 0), i)
		end
		wait(0.01)
	end
	
	audio:Stop()
	audio.SoundId = "rbxassetid://536642316"
	tone = math.random(1, 3)
	if tone == 1 then audio.PlaybackSpeed = 0.8 audio.TimePosition = 0.08 end
	if tone == 2 then audio.PlaybackSpeed = 1 audio.TimePosition = 0.1 end
	if tone == 3 then audio.PlaybackSpeed = 1.2 audio.TimePosition = 0.12 end
	audio:Play()
	
	local slightthrow = Instance.new("BodyVelocity", grabbed.Torso)
	slightthrow.Velocity = Vector3.new(0,20,0)+(me.Torso.CFrame.lookVector*20)
	slightthrow.P = 5000
	slightthrow.MaxForce = Vector3.new(9000001,9000001,9000001)
	local point = grabbed.Torso.Position
	local aaaaaa = grabbed
	liedown()
	
	rightshoulderz:Clone().Parent = me.Torso
			leftshoulderz:Clone().Parent = me.Torso
	grabbed = nil
	
	if humanroot:FindFirstChild('Holder') then
		humanroot.Holder:Destroy()
	end
	local coru = coroutine.wrap(function()
		while aaaaaa and aaaaaa:FindFirstChild('Torso') and (aaaaaa.Torso.Position-point).magnitude < 5 do wait(0.001) end
		if aaaaaa:FindFirstChildOfClass('Humanoid') then
			aaaaaa:FindFirstChildOfClass('Humanoid').Name = "Humanoid"
			aaaaaa:FindFirstChildOfClass('Humanoid').JumpPower = 50
			aaaaaa:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
		end
		slightthrow:Remove()
	end)
	coru()
	
	for i = 0,1,0.05 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or weld3 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(1.5,0,0),i)
		wait(0.01)
	end
	weld2:Destroy()
	weld3:Destroy()
	targetweld:Remove()
	if targetweld2 then
		targetweld2:Remove()
	end
	if rightshoulder then
	rightshoulder:Clone().Parent = tors
	end
	if leftshoulder then
	leftshoulder:Clone().Parent = tors
	end
	headweld:Clone().Parent = tors
	rightshoulderz:Clone().Parent = me.Torso
			leftshoulderz:Clone().Parent = me.Torso
	acting = false
	canClick = true
	doing = false
	end)
	doit()
end

cfn,ang,mr,int=CFrame.new,CFrame.Angles,math.rad,Instance.new
bc=BrickColor.new
local minimumsize = Vector3.new(0.7,0.7,0.7) 
local surface_between_splitted_parts = 'SmoothNoOutlines'
local fragmentable = workspace
local list = {}
local brickcount = 0
local storage = {}
local fillup = 1000
local maximumstorage = 2000 
local storage_position = Vector3.new(0,0,5000) 
local stored_partsize = Vector3.new(1,1,1) 
local parts_created_per_frame = 5 

local minimumsize = Vector3.new(0.7,0.7,0.7) 
local surface_between_splitted_parts = 'SmoothNoOutlines'
local fragmentable = workspace
local list = {}
local brickcount = 0
local storage = {}
local fillup = 1000
local maximumstorage = 2000
local storage_position = Vector3.new(0,0,5000) 
local stored_partsize = Vector3.new(1,1,1)
local parts_created_per_frame = 5 


function fragmentate(cframe,size,color,explosion_position,explosion_blastradius,backsurface,bottomsurface,frontsurface,leftsurface,rightsurface,topsurface,transparency,reflectance,material)
	local xi = size.X >= minimumsize.X*(1+explosion_blastradius/16) and 2 or 1 
	local yi = size.Y >= minimumsize.Y*(1+explosion_blastradius/16) and 2 or 1
	local zi = size.Z >= minimumsize.Z*(1+explosion_blastradius/16) and 2 or 1
	if xi == 1 and yi == 1 and zi == 1 or (cframe.p-explosion_position).magnitude > size.magnitude/2 + explosion_blastradius then 
		if xi == 1 and yi == 1 and zi == 1 then return end 
		if #storage > 0 then
			local p = storage[1]
			p.BrickColor = color
			p.Size = size
			p.Anchored = false
			p.BackSurface = backsurface
			p.BottomSurface = bottomsurface
			p.FrontSurface = frontsurface
			p.LeftSurface = leftsurface
			p.RightSurface = rightsurface
			p.TopSurface = topsurface
			p.Transparency = transparency
			p.CFrame = cframe
			p.Reflectance = reflectance
			p.Material = material
			game:GetService('Debris'):AddItem(p,30)
			p:BreakJoints()
			table.remove(storage,1)
		else
			local p = Instance.new("Part",fragmentable)
			p.BrickColor = color
			p.FormFactor = "Custom"
			p.Size = size
			p.BackSurface = backsurface
			p.BottomSurface = bottomsurface
			p.FrontSurface = frontsurface
			p.LeftSurface = leftsurface
			p.RightSurface = rightsurface
			p.TopSurface = topsurface
			p.Transparency = transparency
			p.Material = material
		    if p.Transparency>0.285 then
			    p.Anchored = false
			else
			    p.Anchored=false
			    p.Material='Wood'
				game:GetService('Debris'):AddItem(p,10)
			end
			p.CFrame = cframe
			p.Reflectance = reflectance
			p:BreakJoints()
		end
		return 
	end
	local mody = math.random(-125,125)/1000
	for y = 1,yi do
		if math.random()> 0.5 then
			local modx = math.random(-125,125)/1000
			for x = 1,xi do
				local modz = math.random(-125,125)/1000
				for z = 1,zi do --offset = x/xi-0.75+modx)
					fragmentate(cframe*CFrame.new(size.X*(xi==1 and 0 or x/xi-0.75+modx),size.Y*(yi==1 and 0 or y/yi-0.75+mody),size.Z*(zi==1 and 0 or z/zi-0.75+modz)),
						Vector3.new(xi == 2 and size.X*(1-2*math.abs(x/xi-0.75+modx)) or size.X,yi == 2 and size.Y*(1-2*math.abs(y/yi-0.75+mody)) or size.Y,
						zi == 2 and size.Z*(1-2*math.abs(z/zi-0.75+modz)) or size.Z or mustardfoot_was_here),color,explosion_position,explosion_blastradius,
						z~=zi and surface_between_splitted_parts or backsurface,y==2 and surface_between_splitted_parts or bottomsurface,
						z==2 and surface_between_splitted_parts or frontsurface,x==2 and surface_between_splitted_parts or leftsurface,x~=xi and surface_between_splitted_parts or rightsurface,
						y~=yi and surface_between_splitted_parts or topsurface,transparency,reflectance,material) 
				end
				
			end
		else
			local modz = math.random(-125,125)/1000
			for z = 1,zi do
				local modx = math.random(-125,125)/1000
				for x = 1,xi do
					fragmentate(cframe*CFrame.new(size.X*(xi==1 and 0 or x/xi-0.75+modx),size.Y*(yi==1 and 0 or y/yi-0.75+mody),size.Z*(zi==1 and 0 or z/zi-0.75+modz)),
						Vector3.new(xi == 2 and size.X*(1-2*math.abs(x/xi-0.75+modx)) or size.X,yi == 2 and size.Y*(1-2*math.abs(y/yi-0.75+mody)) or size.Y,
						zi == 2 and size.Z*(1-2*math.abs(z/zi-0.75+modz)) or size.Z),color,explosion_position,explosion_blastradius,
						z~=zi and surface_between_splitted_parts or backsurface,y==2 and surface_between_splitted_parts or bottomsurface,
						z==2 and surface_between_splitted_parts or frontsurface,x==2 and surface_between_splitted_parts or leftsurface,x~=xi and surface_between_splitted_parts or rightsurface,
						y~=yi and surface_between_splitted_parts or topsurface,transparency,reflectance,material)
				end
			end
		end
	end				
end

function start_fragmentation(position,radius,nuh)
	local search = Region3.new(position-Vector3.new(radius,radius,radius)*1.1,position+Vector3.new(radius,radius,radius)*1.1)
	repeat
	local finish = false
	local parts = workspace:FindPartsInRegion3WithIgnoreList(search,list,100)
	for i = 1,#parts do
		table.insert(list,1,parts[i])
	end
	finish = true
	until #parts < 100 and finish
	local t = tick()
	for i = 1,#list do
		local p = list[i]
		if p:IsA('UnionOperation') == false and p:IsA('CornerWedgePart') == false and p:IsA('TrussPart') == false and p:IsA('WedgePart') == false and p.Parent and p.Parent ~= obj1 and p.Parent.Name ~= "Projectile" and p:IsDescendantOf(fragmentable) and p:GetMass()<50000 and p.Transparency>0.285 and p.Name~='Base' and p.Parent:FindFirstChildOfClass('Humanoid') == nil and p.Parent.Parent:FindFirstChildOfClass('Humanoid') == nil and p:IsDescendantOf(me)==false then
			fragmentate(p.CFrame,p.Size,p.BrickColor,position,radius,p.BackSurface,p.BottomSurface,p.FrontSurface,p.LeftSurface,p.RightSurface,p.TopSurface,p.Transparency,p.Reflectance,p.Material)
			if #storage < maximumstorage and p.Shape == "Block" then 
				p.Anchored = false
				p.FormFactor = "Custom"
				p.Size = stored_partsize
				p.Position = storage_position
				table.insert(storage,1,p)
			else 
				p:Destroy()
			end
	    end
		if nuh == false and p.Parent and p.Parent ~= obj1 and p.Parent.Name ~= "Projectile" and p:IsDescendantOf(fragmentable) and p:GetMass()<53000 and p.Transparency<0.05 and p.Name~='Base' and tostring(p.Material)=='Enum.Material.Wood' and p:IsDescendantOf(me)==false then
			fragmentate(p.CFrame,p.Size,p.BrickColor,position,radius,p.BackSurface,p.BottomSurface,p.FrontSurface,p.LeftSurface,p.RightSurface,p.TopSurface,p.Transparency,p.Reflectance,p.Material)
			if #storage < maximumstorage and p.Shape == "Block" then
				p.Anchored = false
				p.Material='Wood'
				p.FormFactor = "Custom"
				p.Size = stored_partsize
				p.Position = storage_position
				table.insert(storage,1,p)
			else 
				p:Destroy()
			end
		end
	end	
	list = {}
end


function fling()
local doit = coroutine.wrap(function()
if me:FindFirstChild('Right Arm') and me:FindFirstChild('Torso') and me:FindFirstChild('HumanoidRootPart') then
	acting = true
	for i=1,finishnum do
	local weld2 = Instance.new('Weld',me["Right Arm"])
	weld2.Part0 = me["Right Arm"]
	weld2.Part1 = me["Torso"]
	weld2.C0 = CFrame.new(-1.5,0,0)
	if finishnum == 1 then
	for i = 0,1,0.05 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0.9,-0.5)*CFrame.Angles(-math.pi/0.75,-math.pi/8,0),i)
		wait(0.01)	
	end
	end
	audio.SoundId = "rbxassetid://166083610"
	audio.PlaybackSpeed = 1
	audio.TimePosition = 0.1
	audio:Play()
	if finishnum == 1 then
	for i = 0,1,0.5 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0),i)
		wait(0.001)	
	end
	end
	weld2.C0 = CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0)
	local knofe = obj1:Clone()
	for i, v in pairs(obj1:GetChildren()) do
		if v:IsA('BasePart') then
		v.Transparency = 1
		end
	end
	knofe.Parent = workspace
	knofe.Name = "Projectile"
	knofe.Grab.CFrame = CFrame.new(knofe.Grab.CFrame.p, mouse.Hit.p)*CFrame.Angles(0,math.pi/2,0)
	knofe:FindFirstChild("Trail", true).Enabled = true
	local heck = Instance.new('BodyVelocity',knofe.Grab)
	heck.Velocity = (knofe.Grab.CFrame*CFrame.Angles(0,math.pi/-2,0)).lookVector*120
	local coru = coroutine.wrap(function()
		wait(0.45)
		if heck then
			heck:Destroy()
		end
	end)
	coru()
	local able = true
	knofe["big ass knife"].Touched:connect(function(hit)
		if hit.Parent and hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Transparency < 1 and knofe.Grab.CanCollide == false and hit.Parent ~= me and hit.Parent.Parent ~= me then
			local thing = hit.Parent:FindFirstChildOfClass('Humanoid')
			local ree = hit.Parent
			if thing == nil then
				ree = hit.Parent.Parent
			end
			if ree:FindFirstChildOfClass('Humanoid').Health > 0 then
				knofe:FindFirstChild("Trail", true).Enabled = false
				game:GetService('Debris'):AddItem(knofe,5)
				tone = math.random(1, 3)
				local sound = Instance.new('Sound',knofe.Grab)
				if tone == 1 then sound.SoundId = "rbxassetid://220833967" end
				if tone == 2 then sound.SoundId = "rbxassetid://220833976" end
				if tone == 3 then sound.SoundId = "rbxassetid://220834000" end
				sound.PlaybackSpeed = 1
				sound:Play()
				for i, v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
					v.CanCollide = true
					v.Anchored = true
					end
				end
				hit.Anchored = true
				if ree:FindFirstChildOfClass('Humanoid') and hit.Name == "Torso" or hit.Name == "Head" then
					ree:FindFirstChildOfClass('Humanoid').Health = 0
				end
				wait()
				killz(ree,hit.Name,knofe)
			else
				knofe:FindFirstChild("Trail", true).Enabled = false
				heck.Velocity = Vector3.new(0,0,0)
				heck:Destroy()
				game:GetService('Debris'):AddItem(knofe,5)
				tone = math.random(1, 3)
				local sound = Instance.new('Sound',knofe.Grab)
				if tone == 1 then sound.SoundId = "rbxassetid://220833967" end
				if tone == 2 then sound.SoundId = "rbxassetid://220833976" end
				if tone == 3 then sound.SoundId = "rbxassetid://220834000" end
				sound.PlaybackSpeed = 1
				sound:Play()
				for i, v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
					v.Anchored = false
					end
				end
				hit.Anchored = true
				wait(0.001)
				hit.Anchored = false
				for i, v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
					v.Anchored = false
					end
				end
				if knofe then
					local coru = coroutine.wrap(function()
						if hit then
							local uno = Instance.new('Part',workspace)
							local dos = Instance.new('Part',workspace)
							uno.CFrame = hit.CFrame
							dos.CFrame = knofe["big ass knife"].CFrame
							local weld = Instance.new('Weld',knofe["big ass knife"])
							weld.Part0 = hit
							weld.Part1 = knofe["big ass knife"]
							weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
							uno:Destroy()
							dos:Destroy()
						end
					end)
					coru()
				end
			end
		elseif hit.Parent and hit.Parent ~= me and hit.Parent.Parent ~= me and hit.CanCollide and knofe.Grab.CanCollide == false then
			if hit.Transparency and (hit.Transparency<=0.285 or hit:GetMass()<=3000) then
				knofe:FindFirstChild("Trail", true).Enabled = false
				local sound = Instance.new('Sound',knofe.Grab)
				sound.SoundId = 'rbxassetid://267585646'
				sound:Play()
				for i,v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
						v.Anchored = true
					end
				end
				wait()
				heck.Velocity = Vector3.new(0,0,0)
				heck:Destroy()
				local uno = Instance.new('Part',workspace)
							local dos = Instance.new('Part',workspace)
							uno.CFrame = hit.CFrame
							dos.CFrame = knofe["big ass knife"].CFrame
							local weld = Instance.new('Weld',knofe["big ass knife"])
							weld.Part0 = hit
							weld.Part1 = knofe["big ass knife"]
							weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
							uno:Destroy()
							dos:Destroy()
							for i,v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
						v.Anchored = false
					end
				end
				game:GetService('Debris'):AddItem(knofe,5)
				for i,v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
					v.CanCollide = true
					end
				end
			end
			if hit.Parent and hit.Transparency>0.285 and able == true and hit:GetMass()<3000 and hit.Parent:FindFirstChildOfClass('Humanoid') == nil and (hit.Parent.Parent == nil or hit.Parent.Parent:FindFirstChildOfClass('Humanoid') == nil) then
				knofe:FindFirstChild("Trail", true).Enabled = false
				able = false
				local sound = Instance.new('Sound',knofe.Grab)
				sound.SoundId = 'rbxassetid://144884907'
				sound:Play()
				local coru = coroutine.wrap(function()
					start_fragmentation(knofe["big ass knife"].Position,1.25,knofe)
				end)
				coru()
			end
		end
	end)
	if finishnum == 1 then
	for i= 0,1,0.1 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
		wait(0.001)
	end
	else
		for i= 0,1,0.5 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
		wait(0.001)
	end
	end
	for i,v in pairs(obj1:GetChildren()) do
		if v:IsA('BasePart') then
		v.Transparency = 0
		end
	end
	weld2:Destroy()
	rightshoulderz:Clone().Parent = me.Torso
	end
	acting = false
	canClick = true
end
end)
doit()
end

function instasplode()
	local coru = coroutine.wrap(function()
		acting = true
		for i=1,1 do
		local weld2 = Instance.new('Weld',me["Right Arm"])
		weld2.Part0 = me["Right Arm"]
		weld2.Part1 = me["Torso"]
		weld2.C0 = CFrame.new(-1.5,0,0)
		if finishnum == 1 then
		for i = 0,1,0.05 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0.9,-0.5)*CFrame.Angles(-math.pi/0.75,-math.pi/8,0),i)
			wait(0.01)	
		end
		end
		weld2.C0 = CFrame.new(-1.5,0.9,-0.5)*CFrame.Angles(-math.pi/0.75,-math.pi/8,0)
		audio.SoundId = "rbxassetid://166083610"
		audio.PlaybackSpeed = 1
		audio.TimePosition = 0.1
		audio:Play()
		if finishnum == 1 then
		for i = 0,1,0.5 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0),i)
			wait(0.001)	
		end
		end
		weld2.C0 = CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0)
		local knofe = obj1:Clone()
		for i,v in pairs(obj1:GetChildren()) do
			if v:IsA('BasePart') then
			v.Transparency = 1
			end
		end
		knofe.Parent = workspace
		knofe.Name = "Projectile"
		knofe.Grab.CFrame = CFrame.new(knofe.Grab.CFrame.p, mouse.Hit.p)*CFrame.Angles(0,math.pi/2,0)
		knofe:FindFirstChild("Trail", true).Enabled = false
		fireofjesUS = Instance.new("Fire", knofe.Grab)
		local heck = Instance.new('BodyVelocity',knofe.Grab)
		heck.Velocity = (knofe.Grab.CFrame*CFrame.Angles(0,math.pi/-2,0)).lookVector*120
		local coru = coroutine.wrap(function()
			wait(0.45)
			if heck then
				heck:Destroy()
			end
		end)
		coru()
		knofe["big ass knife"].Touched:connect(function(hit)
			if hit.Parent ~= me and hit.Parent.Parent ~= me and hit.Transparency < 1 and knofe.Grab.CanCollide == false then
				heck.Velocity = Vector3.new(0,0,0)
				heck:Destroy()
				for i,v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
					v.CanCollide = true
					end
				end
				local hum = hit.Parent:FindFirstChildOfClass('Humanoid')
				if hum == nil then
					hum = hit.Parent.Parent:FindFirstChildOfClass('Humanoid')
				end
				if knofe then
					local coru = coroutine.wrap(function()
						if hit then
							local uno = Instance.new('Part',workspace)
							local dos = Instance.new('Part',workspace)
							uno.CFrame = hit.CFrame
							dos.CFrame = knofe["big ass knife"].CFrame
							local weld = Instance.new('Weld',knofe["big ass knife"])
							weld.Part0 = hit
							weld.Part1 = knofe["big ass knife"]
							weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
							uno:Destroy()
							dos:Destroy()
						end
					end)
					coru()
				end
					local sound = Instance.new('Sound',knofe.Grab)
					sound.Name = "BOOM"
					sound.EmitterSize = 25
					sound.SoundId = 'rbxassetid://476477344'
					sound.Volume = 0.5
					sound:Play()
					local exppart = Instance.new("Part", game.Workspace)
					exppart.Size = Vector3.new(0.2, 0.2, 0.2)
					exppart.Anchored = true
					exppart.CanCollide = false
					exppart.CFrame = CFrame.new(knofe.Grab.CFrame.p)
					exppart.Transparency = 1
					local expaccent = Instance.new("ParticleEmitter", exppart)
					expaccent.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))})
					expaccent.LightEmission = 0.2
					expaccent.LightInfluence = 0.3
					expaccent.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)})
					expaccent.Acceleration = Vector3.new(0, 30, 0)
					expaccent.Drag = 15
					expaccent.LockedToPart = false
					expaccent.Lifetime = NumberRange.new(0.5, 1.5)
					expaccent.Rate = 2000
					expaccent.Speed = NumberRange.new(0,0)
					expaccent.SpreadAngle = Vector2.new(360, 360)
					expaccent:Clone().Parent = exppart
					expaccent:Clone().Parent = exppart
					local exp = Instance.new('Explosion',game.Workspace)
					exp.Position = knofe["big ass knife"].Position
					exp.ExplosionType = Enum.ExplosionType.NoCraters
					exp.BlastRadius = 5
					exp.Visible = false
					exp.BlastPressure = 0
					exp.DestroyJointRadiusPercent = 0
					exp.Hit:connect(function(hit)
						if hit.Parent and hit.Parent ~= me and hit.Parent.Name ~= "bitch ass knife" then
							wait(0.001)
							tgt = hit
							local coru=coroutine.wrap(function(tgtt)
								local fireofgods = Instance.new("Fire", tgtt)
								fireofgods.Size = 0
								fireofgods.Heat = 0
								local fireofgodsaccent = expaccent:Clone()
								fireofgodsaccent.Parent = hit
								fireofgodsaccent.Rate = 0
								fireofgodsaccent.Speed = NumberRange.new(5, 50)
								fireofgodsaccent.SpreadAngle = Vector2.new(45, 45)
								fireofgodsaccent.Acceleration = Vector3.new(0, 20, 0)
								
								while fireofgods.Size < 10 do
									fireofgods.Size = fireofgods.Size + 0.1
									fireofgods.Heat = fireofgods.Heat + 0.1
									fireofgodsaccent.Rate = fireofgodsaccent.Rate + 1
									wait()
								end
								if hit.Parent and hit.Parent:FindFirstChildOfClass('Humanoid') == nil and hit.Parent.Parent:FindFirstChildOfClass('Humanoid') == nil then
									hit:BreakJoints()
								elseif hit.Parent and hit.Parent:IsA('Accessory') then
									for i,v in pairs(hit:GetChildren()) do
										if v:IsA('SpecialMesh') then
											v.TextureId = ""
										end
									end
								end
								hit.BrickColor = BrickColor.new("Black")
								for i,v in pairs(hit.Parent:GetChildren()) do
									if v:IsA('Shirt') or v:IsA('Pants') then
										v:Destroy()
									end
								end
								
								while fireofgods.Size > 5 do
									fireofgods.Size = fireofgods.Size - 0.1
									fireofgods.Heat = fireofgods.Heat - 0.1
									wait()
								end
								fireofgods:Destroy()
								if hit.Parent then
									if hit.Parent:FindFirstChildOfClass('Humanoid') == nil and hit.Parent.Parent:FindFirstChildOfClass('Humanoid') == nil then
										local p = hit
										fragmentate(p.CFrame,p.Size,p.BrickColor,p.Position,0.01,p.BackSurface,p.BottomSurface,p.FrontSurface,p.LeftSurface,p.RightSurface,p.TopSurface,p.Transparency,p.Reflectance,p.Material)
										hit:Remove()
									elseif hit.Parent:FindFirstChildOfClass('Humanoid') ~= nil then
										print(hit.Name)
										if hit.Name == "Torso" or hit.Name == "Head" then
											print('ohhh YAAAA')
											hit.Parent:FindFirstChildOfClass('Humanoid').Health = 0
										end
										wait()
										killz(hit.Parent,hit.Name,nil,nil,false,false,true)
									end
								end
							end)
							coru(tgt)
						end
					end)
					local explosionaccenttimeout = coroutine.wrap(function()
						wait(0.2)
						for i, exploodn in pairs(exppart:GetChildren()) do
							exploodn.Enabled = false
						end
						wait(2)
						for i, exploodn in pairs(exppart:GetChildren()) do
							exploodn:Remove()
						end
					end)
					explosionaccenttimeout()
					for i,v in pairs(knofe:GetChildren()) do
						if v:IsA('BasePart') then
						v.Transparency = 1
						end
					end
					exp.AncestryChanged:connect(function() knofe:Destroy() end)
				coru()
			end
		end)
		if finishnum == 1 then
		for i= 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
			wait(0.001)
		end
		else
			wait(0.1)
		end
		weld2.C0 = CFrame.new(-1.5,0,0)
		for i,v in pairs(obj1:GetChildren()) do
			if v:IsA('BasePart') then
			v.Transparency = 0
			end
		end
		weld2:Destroy()
		rightshoulderz:Clone().Parent = me.Torso
		end
		acting = false
		canClick = true
	end)
	coru()
end

function fireworkit()
	local coru = coroutine.wrap(function()
		acting = true
		local ree = 1
		if finishnum > 1 then
			ree = 3
		end
		for i=1,ree do
		local weld2 = Instance.new('Weld',me["Right Arm"])
		weld2.Part0 = me["Right Arm"]
		weld2.Part1 = me["Torso"]
		weld2.C0 = CFrame.new(-1.5,0,0)
		weld2.C0 = CFrame.new(-1.5,0.9,-0.5)*CFrame.Angles(-math.pi/0.75,-math.pi/8,0)
		audio.SoundId = "rbxassetid://166083610"
		audio.PlaybackSpeed = 1
		audio.TimePosition = 0.1
		audio:Play()
		weld2.C0 = CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0)
		local knofe = obj1:Clone()
		for i,v in pairs(obj1:GetChildren()) do
			if v:IsA('BasePart') then
			v.Transparency = 1
			end
		end
		local sound = Instance.new('Sound',knofe.Grab)
		sound.Volume = 0.25
		sound.EmitterSize = 200
		sound.MaxDistance = 300
		sound.SoundId = 'rbxassetid://551051176'
		sound:Play()
		knofe.Parent = workspace
		knofe.Name = "Projectile"
		knofe.Grab.CFrame = CFrame.new(knofe.Grab.CFrame.p, mouse.Hit.p)*CFrame.Angles(0,math.pi/2,0)
		local partic = Instance.new('ParticleEmitter',knofe.Grab)
		partic.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0)),ColorSequenceKeypoint.new(0.4,Color3.fromRGB(255,125,0)),ColorSequenceKeypoint.new(0.8,Color3.new(1,1,0)),ColorSequenceKeypoint.new(1,Color3.new(1,1,1))})
		partic.LightEmission = 0.5
		partic.LightInfluence = 0
		partic.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5),NumberSequenceKeypoint.new(1,0.15)})
		partic.Rotation = NumberRange.new(0,90)
		partic.SpreadAngle = Vector2.new(5,5)
		partic.Speed = NumberRange.new(20)
		partic.Texture = 'rbxassetid://603193846'
		partic.EmissionDirection = Enum.NormalId.Left
		partic.Lifetime = NumberRange.new(0.5,1)
		partic.Rate = 100
		local heck = Instance.new('BodyVelocity',knofe.Grab)
		heck.Velocity = (knofe.Grab.CFrame*CFrame.Angles(0,math.pi/-2,0)).lookVector*240
		local coru=coroutine.wrap(function()
		wait(1.2)
			sound:Destroy()
			local sound2 = Instance.new('Sound',workspace)
			sound2.SoundId = 'rbxassetid://138080762'
			sound2:Play()
			if heck then
				heck:Destroy()
			end
			for i,v in pairs(knofe:GetChildren()) do
				v.Anchored = true
			end
			partic.Enabled = false
			local colorscheme = math.random(1,4)
			--1 - red & orange
			--2 - blue & pink
			--3 - green & purple
			--4 - blue, red, white
			local colar1 = Color3.fromRGB(255,0,0)
			local colar2 = Color3.fromRGB(255,125,0)
			local colar3 = Color3.fromRGB(255,255,255)
			if colorscheme == 2 then
				colar1 = Color3.fromRGB(0,132,255)
				colar2 = Color3.fromRGB(243,105,255)
			elseif colorscheme == 3 then
				colar1 = Color3.fromRGB(76,255,0)
				colar2 = Color3.fromRGB(128,0,255)
			elseif colorscheme == 4 then
				colar2 = Color3.fromRGB(0,132,255)
			end
			local partic2 = Instance.new('ParticleEmitter',knofe.Grab)
			partic2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,colar1),ColorSequenceKeypoint.new(1,colar1)})
			partic2.LightEmission = 0.5
			partic2.LightInfluence = 0
			partic2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5),NumberSequenceKeypoint.new(1,0.1)})
			partic2.Rotation = NumberRange.new(0,90)
			partic2.SpreadAngle = Vector2.new(180,180)
			partic2.Speed = NumberRange.new(20)
			partic2.Texture = 'rbxassetid://603193846'
			partic2.EmissionDirection = Enum.NormalId.Right
			partic2.Lifetime = NumberRange.new(2,2.5)
			partic2.Rate = 1000
			partic2.Drag = 1
			local partic3 = partic2:Clone()
			partic3.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,colar2),ColorSequenceKeypoint.new(1,colar2)})
			partic3.Parent = knofe.Grab
			if colorscheme == 4 then
				local partic4 = partic2:Clone()
				partic4.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,colar3),ColorSequenceKeypoint.new(1,colar3)})
				partic4.Parent = knofe.Grab
			end
			wait(1)
			for i,v in pairs(knofe.Grab:GetChildren()) do
				if v:IsA('ParticleEmitter') then
					v.Enabled = false
				end
			end
			sound:Destroy()
			wait(2)
			knofe:Destroy()
		end)
		coru()
		wait(0.1)
		weld2.C0 = CFrame.new(-1.5,0,0)
		for i,v in pairs(obj1:GetChildren()) do
			if v:IsA('BasePart') then
			v.Transparency = 0
			end
		end
		weld2:Destroy()
		rightshoulderz:Clone().Parent = me.Torso
		end
		acting = false
		canClick = true
	end)
	coru()
end

function paralyze()
	local coru = coroutine.wrap(function()
		if paralyzed == true then return end
		paralyzed = true
		local arm = me["Right Arm"]
		local tors = grabbed.Torso
		local arm2 = me["Left Arm"]
		if arm:FindFirstChildOfClass('Weld') == nil or arm2:FindFirstChildOfClass('Weld') == nil then return end
		doing = true
		local weld2 = arm:FindFirstChildOfClass('Weld')
		local weld3 = arm2:FindFirstChildOfClass('Weld')
		local humanroot = me.HumanoidRootPart
		for i = 0,1,0.075 do
			weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 0.80, -1.1)* CFrame.Angles(-2, 0, -1.5), i)
			weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 1, -0.5)* CFrame.Angles(-1.4, 0, 1.1), i)
			wait(0.01)
		end
		for i = 0,1,0.30 do
			weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 0.80, -1.1)* CFrame.Angles(-0.75, 0, -1.75), i)
			weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 1, -0.5)* CFrame.Angles(-1.4, 0, 1.1), i)
			wait(0.01)
		end
		killz(grabbed,'Left Leg')
		killz(grabbed,'Left Arm')
		killz(grabbed,'Right Leg')
		killz(grabbed,'Right Arm')
		
		for i, v in pairs(grabbed:GetChildren()) do
			if v.Name == "Part" then
				v.CanCollide = false
			end
		end
		
		audio:Stop()
		audio.SoundId = "rbxassetid://2801263"
		tone = math.random(1, 3)
		if tone == 1 then audio.PlaybackSpeed = 0.8 audio.TimePosition = 0 end
		if tone == 2 then audio.PlaybackSpeed = 1 audio.TimePosition = 0 end
		if tone == 3 then audio.PlaybackSpeed = 1.2 audio.TimePosition = 0 end
		audio:Play()
		
		local bleedpart = Instance.new("Part", grabbed)
		bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
		bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
		bleedpart.CanCollide = false
		bleedpart.Position = grabbed.Head.Position + Vector3.new(0, 1, 0)
		bleedpart.Transparency = 1
		
		local bleedpartweld = Instance.new("Weld", grabbed.Torso)
		bleedpartweld.Part0 = grabbed.Torso
		bleedpartweld.Part1 = bleedpart
		bleedpartweld.C0 = CFrame.Angles(-1, 0, -0.35) * CFrame.new(0, 1, 0.8)
		local cuntruu=coroutine.wrap(function()
			bleed(bleedpart)
		end)
		local thicc = coroutine.wrap(function()
			wait(3)
			bleedpart:Remove()
		end)
		cuntruu()
		thicc()
	
		for i = 0,1,0.075 do
			weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 0.80, -1.1)* CFrame.Angles(-1.5, 0, -1.3), i)
			weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 1, -0.5)* CFrame.Angles(-1.5, 0, 1.1), i)
			wait(0.01)
		end
		acting = true
		canClick = true
		doing = false
	end)
	coru()
end

function explode()
	local coru = coroutine.wrap(function()
		acting = true
		for i=1,finishnum do
		local weld2 = Instance.new('Weld',me["Right Arm"])
		weld2.Part0 = me["Right Arm"]
		weld2.Part1 = me["Torso"]
		weld2.C0 = CFrame.new(-1.5,0,0)
		if finishnum == 1 then
		for i = 0,1,0.05 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0.9,-0.5)*CFrame.Angles(-math.pi/0.75,-math.pi/8,0),i)
			wait(0.01)	
		end
		end
		weld2.C0 = CFrame.new(-1.5,0.9,-0.5)*CFrame.Angles(-math.pi/0.75,-math.pi/8,0)
		audio.SoundId = "rbxassetid://166083610"
		audio.PlaybackSpeed = 1
		audio.TimePosition = 0.1
		audio:Play()
		if finishnum == 1 then
		for i = 0,1,0.5 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0),i)
			wait(0.001)	
		end
		end
		weld2.C0 = CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0)
		local knofe = obj1:Clone()
		for i,v in pairs(obj1:GetChildren()) do
			if v:IsA('BasePart') then
			v.Transparency = 1
			end
		end
		knofe.Parent = workspace
		knofe.Name = "Projectile"
		knofe.Grab.CFrame = CFrame.new(knofe.Grab.CFrame.p, mouse.Hit.p)*CFrame.Angles(0,math.pi/2,0)
		knofe:FindFirstChild("Trail", true).Enabled = false
		local heck = Instance.new('BodyVelocity',knofe.Grab)
		heck.Velocity = (knofe.Grab.CFrame*CFrame.Angles(0,math.pi/-2,0)).lookVector*120
		local coru = coroutine.wrap(function()
			wait(0.45)
			if heck then
				heck:Destroy()
			end
		end)
		coru()
		knofe["big ass knife"].Touched:connect(function(hit)
			if hit.Parent ~= me and hit.Parent.Parent ~= me and hit.Transparency < 1 and knofe.Grab.CanCollide == false then
				heck.Velocity = Vector3.new(0,0,0)
				heck:Destroy()
				for i,v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
					v.CanCollide = true
					end
				end
				local hum = hit.Parent:FindFirstChildOfClass('Humanoid')
				if hum == nil then
					hum = hit.Parent.Parent:FindFirstChildOfClass('Humanoid')
				end
				if hum then
					tone = math.random(1, 3)
					local sound = Instance.new('Sound',knofe.Grab)
					if tone == 1 then sound.SoundId = "rbxassetid://220833967" end
					if tone == 2 then sound.SoundId = "rbxassetid://220833976" end
					if tone == 3 then sound.SoundId = "rbxassetid://220834000" end
					sound.PlaybackSpeed = 1
					sound:Play()
				else
					local sound = Instance.new('Sound',knofe.Grab)
					sound.SoundId = 'rbxassetid://267585646'
					sound:Play()
				end
				if knofe then
					local coru = coroutine.wrap(function()
						if hit then
							local uno = Instance.new('Part',workspace)
							local dos = Instance.new('Part',workspace)
							uno.CFrame = hit.CFrame
							dos.CFrame = knofe["big ass knife"].CFrame
							local weld = Instance.new('Weld',knofe["big ass knife"])
							weld.Part0 = hit
							weld.Part1 = knofe["big ass knife"]
							weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
							uno:Destroy()
							dos:Destroy()
						end
					end)
					coru()
				end
				local coru = coroutine.wrap(function()
					for i=1,15,0.7 do
						local sound = Instance.new('Sound',knofe.Grab)
						if knofe then
							if knofe.serration.BrickColor == BrickColor.new('Really red') then
								for i, v in pairs(knofe:GetChildren()) do
									if v.Name == "big ass knife" or v.Name == "serration" or v.Name == "knifetip1" or v.Name == "fricc" then
										v.BrickColor = BrickColor.new('Lily white')
										v.Material = Enum.Material.SmoothPlastic
									end
								end
							else
								for i,v in pairs(knofe:GetChildren()) do
									if v.Name == "big ass knife" or v.Name == "serration" or v.Name == "knifetip1" or v.Name == "fricc" then
										v.BrickColor = BrickColor.new('Really red')
										v.Material = Enum.Material.Neon
										sound.SoundId = 'rbxassetid://300473653'
										sound.Volume = 0.75
										sound.TimePosition = 0.05
										sound.EmitterSize = 25
										sound.PlaybackSpeed = 1
										sound:Play()
									end
								end
							end
							wait(1/i)
							sound:Destroy()
						end
					end
					local sound = Instance.new('Sound',knofe.Grab)
					sound.Name = "BOOM"
					sound.EmitterSize = 25
					sound.SoundId = 'rbxassetid://12222084'
					sound.TimePosition = 0.1
					sound.Volume = 0.5
					sound:Play()
					local exppart = Instance.new("Part", game.Workspace)
					exppart.Size = Vector3.new(0.2, 0.2, 0.2)
					exppart.Anchored = true
					exppart.CanCollide = false
					exppart.CFrame = CFrame.new(knofe.Grab.CFrame.p)
					exppart.Transparency = 1
					local expaccent = Instance.new("ParticleEmitter", exppart)
					expaccent.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))})
					expaccent.LightEmission = 0.2
					expaccent.LightInfluence = 0.3
					expaccent.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)})
					expaccent.Acceleration = Vector3.new(0, -8, 0)
					expaccent.Drag = 15
					expaccent.LockedToPart = true
					expaccent.Lifetime = NumberRange.new(0.5, 1.5)
					expaccent.Rate = 2000
					expaccent.Speed = NumberRange.new(10, 150)
					expaccent.SpreadAngle = Vector2.new(360, 360)
					
					local exp = Instance.new('Explosion',game.Workspace)
					exp.Position = knofe["big ass knife"].Position
					exp.ExplosionType = Enum.ExplosionType.NoCraters
					exp.BlastRadius = 10
					exp.BlastPressure = 100000
					exp.DestroyJointRadiusPercent = 1
					exp.Hit:connect(function(hit)
						if hit.Parent and hit.Parent ~= me and hit.Parent:FindFirstChildOfClass('Humanoid') then
							if hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Name == "Torso" or hit.Name == "Head" then
								hit.Parent:FindFirstChildOfClass('Humanoid').Health = 0
							end
							wait(0.001)
							local coru=coroutine.wrap(function()
							killz(hit.Parent,'Head',knofe,exp)
							end)
							coru()
						elseif hit.Parent and hit.Parent ~= workspace and hit.Parent ~= me then
							if hit.Parent.Name ~= "Projectile" then
								hit.Parent:BreakJoints()
							end
						elseif hit.Parent and hit.Parent ~= me then
							hit:BreakJoints()
						end
					end)
					local explosionaccenttimeout = coroutine.wrap(function()
						wait(0.2)
						expaccent.Enabled = false
						wait(2)
						exppart:Remove()
					end)
					explosionaccenttimeout()
					for i,v in pairs(knofe:GetChildren()) do
						if v:IsA('BasePart') then
						v.Transparency = 1
						end
					end
					exp.AncestryChanged:connect(function() knofe:Destroy() end)
				end)
				coru()
			end
		end)
		if finishnum == 1 then
		for i= 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
			wait(0.001)
		end
		else
			wait(0.1)
		end
		weld2.C0 = CFrame.new(-1.5,0,0)
		for i,v in pairs(obj1:GetChildren()) do
			if v:IsA('BasePart') then
			v.Transparency = 0
			end
		end
		weld2:Destroy()
		rightshoulderz:Clone().Parent = me.Torso
		end
		acting = false
		canClick = true
	end)
	coru()
end

function release()
	if grabbed.Torso:FindFirstChild("TargetWeld") == nil or grabbed:FindFirstChildOfClass('Humanoid').Health <= 0 then return end
	targetweld = grabbed.Torso.TargetWeld
	local ree= grabbed:FindFirstChild("Left Arm")
	targetweld2 = nil
	if ree and ree:FindFirstChild("Weld") then
		targetweld2 = ree.Weld
	end
	for i, v in pairs(grabbed:GetChildren()) do
		if v.Name == "Part" then
			v.CanCollide = true
		end
	end
	paralyzed = false
	local doit = coroutine.wrap(function()
	local arm = me["Right Arm"]
	local tors = grabbed.Torso
	local arm2 = me["Left Arm"]
	if arm:FindFirstChildOfClass('Weld') == nil or arm2:FindFirstChildOfClass('Weld') == nil then return end
	doing = true
	local weld2 = arm:FindFirstChildOfClass('Weld')
	local weld3 = arm2:FindFirstChildOfClass('Weld')
	local humanroot = me.HumanoidRootPart
	
	if grabbed:FindFirstChildOfClass('Humanoid') then
		grabbed:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	
	rightshoulderz:Clone().Parent = me.Torso
	leftshoulderz:Clone().Parent = me.Torso
	if grabbed:FindFirstChildOfClass('Humanoid') then
		grabbed:FindFirstChildOfClass('Humanoid').Name = "Humanoid"
		grabbed:FindFirstChildOfClass('Humanoid').JumpPower = 50
		grabbed:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
		grabbed:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	grabbed = nil
	
	if humanroot:FindFirstChild('Holder') then
		humanroot.Holder:Destroy()
	end
	
	for i = 0,1,0.1 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or weld3 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(1.5,0,0),i)
		targetweld.C0 = targetweld.C0:lerp(CFrame.new(0, 1.5, 0)*CFrame.Angles(0, 0, 0), i)
		if targetweld2 then
			targetweld2.C0 = targetweld2.C0:lerp(CFrame.new(-1.5, 0, 0)*CFrame.Angles(0, 0, 0), i)
		end
		wait(0.01)
	end
	
	knifeweld.C1 = CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), 1.55) * CFrame.new(0, 0.95, 0.2)
	weld2:Destroy()
	weld3:Destroy()
	targetweld:Remove()
	if targetweld2 then
		targetweld2:Remove()
	end
	if rightshoulder then
	rightshoulder:Clone().Parent = tors
	end
	if leftshoulder then
	leftshoulder:Clone().Parent = tors
	end
	headweld:Clone().Parent = tors
	rightshoulderz:Clone().Parent = me.Torso
			leftshoulderz:Clone().Parent = me.Torso
	acting = false
	canClick = true
	doing = false
	end)
	doit()
end

function stabwithpassion()
	local doit = coroutine.wrap(function()
		if me:FindFirstChild('Right Arm') and me:FindFirstChild('Torso') and me:FindFirstChild('HumanoidRootPart') and me:FindFirstChild('Left Arm') then
			acting = true
			me:FindFirstChildOfClass('Humanoid').WalkSpeed = me:FindFirstChildOfClass('Humanoid').WalkSpeed + 10
			local arm = me["Right Arm"]
			local tors = me.Torso
			local arm2 = me["Left Arm"]
			local humanroot = me.HumanoidRootPart
			local weld = Instance.new('Weld',tors)
			weld.Part0 = tors
			weld.Part1 = humanroot
			weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(0, 0, 0)
			local weld2 = Instance.new('Weld',arm)
			weld2.Part0 = arm
			weld2.Part1 = tors
			weld2.C0 = CFrame.new(-1.5,0,0) * CFrame.Angles(0, 0, 0)
			local weld3 = Instance.new('Weld',arm2)
			weld3.Part0 = arm2
			weld3.Part1 = tors
			weld3.C0 = CFrame.new(1.5,0,-0.3) * CFrame.Angles(0.3,0.1,0)

			for i = 0,1,0.15 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(20),0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.2,1.3,0.4)*CFrame.Angles(0.5,0,-1.2),i)
				knifeweld.C1 = knifeweld.C1:lerp(CFrame.fromEulerAnglesXYZ(1.55, math.rad(90), -1.55) * CFrame.new(0, 0.95, 0), i)
				wait(0.01)
			end
			wait(0.001)
			trail.Enabled = true
			stabbing = true
			audio2.SoundId = 'rbxassetid://608537390'
			audio2:Play()
			for i = 0,1,0.2 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(-45),0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.6,0.8,-1)*CFrame.Angles(math.rad(-90),0,-1),i)
				wait(0.01)
			end
			trail.Enabled = false
			wait(0.1)
			me:FindFirstChildOfClass('Humanoid').WalkSpeed = me:FindFirstChildOfClass('Humanoid').WalkSpeed - 10
			stabbing = false
			wait(0.001)
			for i = 0,1,0.075 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,0,0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0)*CFrame.Angles(0,0,0),i)
				weld3.C0 = weld3.C0:lerp(CFrame.new(1.5,0,0)*CFrame.Angles(0,0,0),i)
				knifeweld.C1 = knifeweld.C1:lerp(CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), 1.55) * CFrame.new(0, 0.95, 0), i)
				wait(0.01)
			end
		weld:Destroy()
		weld2:Destroy()
		weld3:Destroy()
		torsojoint:Clone().Parent = humanroot
		rightshoulderz:Clone().Parent = me.Torso
		leftshoulderz:Clone().Parent = me.Torso
		canClick = true
		hit = false
		acting = false
		end
	end)
	doit()
end

function stab()
	local doit = coroutine.wrap(function()
		if me:FindFirstChild('Right Arm') and me:FindFirstChild('Torso') and me:FindFirstChild('HumanoidRootPart') and me:FindFirstChild('Left Arm') then
			acting = true
			me:FindFirstChildOfClass('Humanoid').WalkSpeed = me:FindFirstChildOfClass('Humanoid').WalkSpeed + 3
			local arm = me["Right Arm"]
			local tors = me.Torso
			local arm2 = me["Left Arm"]
			local humanroot = me.HumanoidRootPart
			local weld = Instance.new('Weld',tors)
			weld.Part0 = tors
			weld.Part1 = humanroot
			weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(0, 0, 0)
			local weld2 = Instance.new('Weld',arm)
			weld2.Part0 = arm
			weld2.Part1 = tors
			weld2.C0 = CFrame.new(-1.5,0,0) * CFrame.Angles(0, 0, 0)
			local weld3 = Instance.new('Weld',arm2)
			weld3.Part0 = arm2
			weld3.Part1 = tors
			weld3.C0 = CFrame.new(1.5,0,-0.3) * CFrame.Angles(0.3,0.1,0)

			for i = 0,1,0.1 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,0.3,0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.2,1.3,0.4)*CFrame.Angles(0.5,0,-1.2),i)
				wait(0.01)
			end
			wait(0.001)
			trail.Enabled = true
			stabbing = true
			audio2.SoundId = 'rbxassetid://608537390'
			audio2:Play()
			for i = 0,1,0.25 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,-0.3,0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.6,0.8,0.5)*CFrame.Angles(-0.5,0,-0.5),i)
				wait(0.01)
			end
			trail.Enabled = false
			wait(0.1)
			me:FindFirstChildOfClass('Humanoid').WalkSpeed = me:FindFirstChildOfClass('Humanoid').WalkSpeed - 3
			for i = 0,1,0.25 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,0.3,0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0.6,-0.3)*CFrame.Angles(0.5,0,-0.5),i)
				wait(0.01)
			end
			stabbing = false
			wait(0.001)
			for i = 0,1,0.05 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,0,0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0)*CFrame.Angles(0,0,0),i)
				weld3.C0 = weld3.C0:lerp(CFrame.new(1.5,0,0)*CFrame.Angles(0,0,0),i)
				wait(0.01)
			end
		weld:Destroy()
		weld2:Destroy()
		weld3:Destroy()
		torsojoint:Clone().Parent = humanroot
		rightshoulderz:Clone().Parent = me.Torso
		leftshoulderz:Clone().Parent = me.Torso
		canClick = true
		hit = false
		acting = false
		end
	end)
	doit()
end
function hardrelease()
	rightshoulderz:Clone().Parent = me.Torso
	leftshoulderz:Clone().Parent = me.Torso
	if me:FindFirstChild('Right Arm') then
	for i,v in pairs(me["Right Arm"]:GetChildren()) do
		if v:IsA('Weld') then
			v:Destroy()
		end
	end
	end
	if me:FindFirstChild('Left Arm') then
	for i,v in pairs(me["Left Arm"]:GetChildren()) do
		if v:IsA('Weld') then
			v:Destroy()
		end
	end
	end
	acting = false
	canClick = true
	doing = false
	grabbed = nil
end
function unequip()
	local doit = coroutine.wrap(function()
	if me:FindFirstChild('Right Arm') and me:FindFirstChild('Torso') then
		acting = true
		local arm = me["Right Arm"]
		local arm2 = me["Left Arm"]
		local tors = me.Torso
		local weld = Instance.new('Weld',arm)
		weld.Part0 = arm
		weld.Part1 = tors
		weld.C0 = CFrame.new(-1.5,0,0)
		local weld2 = Instance.new("Weld", arm2)
		weld2.Part0 = arm2
		weld2.Part1 = tors
		weld2.C0 = CFrame.new(1.5, 0, 0)
		wait(0.001)
		trail.Enabled = true
		for i = 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil then return end
			weld.C0 = weld.C0:lerp(CFrame.new(-0.2,0.2,-0.5)*CFrame.Angles(0,-3.1,0.9),i)
			weld2.C0 = weld2.C0:lerp(CFrame.new(1.5, 0.6, 0) * CFrame.Angles(0,0,0.5),i)
			wait(0.001)
		end
		trail.Enabled = false
		wait(0.25)
		for i = 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil then return end
			weld.C0 = weld.C0:lerp(CFrame.new(-1.5,0,0),i)
			weld2.C0 = weld2.C0:lerp(CFrame.new(1.5, 0, 0), i)
			wait(0.01)
		end
		weld:Destroy()
		weld2:Remove()
		if tors ~= nil then
			rightshoulderz:Clone().Parent = me.Torso
			leftshoulderz:Clone().Parent = me.Torso
		end
		acting = false
	end
	end)
	doit()
end

mouse.KeyDown:connect(function(key)
	if usable == true then
	if key == "z" then
		if active == false and acting == false then
			active = true
			if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
			notify("KNIFE EQUIPPED",false)
			audio:Stop()
			audio.SoundId = 'rbxassetid://608618332'
			equip()
			wait(0.6)
			audio:Play()
			knifeweld.Part0 = me["Right Arm"]
			knifeweld.C1 = CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), 1.55) * CFrame.new(0, 0.95, 0)
		elseif acting == false then
			active = false
			if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
			audio:Stop()
			audio.SoundId = 'rbxassetid://608538233'
			unequip()
			notify("KNIFE UNEQUIPPED",false)
			wait(0.3)
			audio:Play()
			knifeweld.Part0 = me.Torso
			knifeweld.C1 = CFrame.Angles(0,math.rad(90),0) * CFrame.new(1, 0.8, 0.55)
			canClick = true
		end
	elseif key == "f" then
		if mode == 'kill' or active == false then return end
		mode = "kill"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || KILL || [F]",false)
	elseif key == "e" then
		if mode == 'throw' or active == false then return end
		mode = "throw"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || PUSH || [E]",false)
	elseif key == "q" then
		if mode == 'release' or active == false then return end
		mode = "release"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || RELEASE || [Q]",false)
	elseif key == "x" then
		if mode == 'stab' or active == false or acting == true then return end
		mode = "stab"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || STAB || [X]",false)
	elseif key == "c" then
		if mode == 'fling' or active == false or acting == true then return end
		mode = "fling"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || THROW || [C]",false)
	elseif key == "b" then
		if mode == 'instasplode' or active == false or acting == true then return end
		mode = "instasplode"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || MOLOTOV || [B]",false)
	elseif key == "r" then
		if mode == 'paralyze' or active == false then return end
		mode = "paralyze"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || PARALYZE || [R]",false)
	elseif key == "v" then
		if mode == 'explode' or active == false or acting == true then return end
		mode = "explode"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || EXPLODE || [V]",false)
	elseif key == "k" then
		if mode == 'suicide' or active == false or acting == true then return end
		mode = "suicide"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || SUICIDE || [K]",false)
	elseif key == "h" then
		if mode == 'firework' or active == false or acting == true then return end
		mode = "firework"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || FIREWORK || [H]",false)
	elseif key == "g" then
		if mode == 'finish' or active == false then return end
		mode = "finish"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		local welp = "ON"
		if finishnum == 1 then
			welp = "OFF"
		end
		notify("MODE || FINISH || [G] || "..welp,false)
	elseif key == "n" then
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		if zombiemode == false then
			notify("ZOMBIE MODE ON || [N]",false)
			zombiemode = true
		else
			notify("ZOMBIE MODE OFF || [N]",false)
			zombiemode = false
		end
	elseif key == "m" then
		if finishnum == 1 then
			finishnum = 15
			if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
			notify("PSYCHOPATH MODE ON || [M]",false)
			if cancolorfilter then
			local Sp00kyGui = Instance.new("ScreenGui")
			local ImageLabel = Instance.new("ImageLabel")

			-- Properties

			Sp00kyGui.Parent = playergui
			Sp00kyGui.Name = "REEEEEEEE"

			ImageLabel.Parent = Sp00kyGui
			ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
			ImageLabel.BackgroundTransparency = 1
			ImageLabel.Size = UDim2.new(1, 0, 1, 0)
			ImageLabel.Image = "rbxassetid://74443700"
			ImageLabel.ImageColor3 = Color3.new(1, 0, 0)
			end
			if canbackgroundmusic == true then
				local sound = Instance.new('Sound',playergui)
				sound.Name = 'PSYCHOPAAAATH'
				sound.SoundId = 'rbxassetid://220875210'
				sound.Looped = true
				sound.Volume = 0.5
				sound:Play()
			end
		else
			finishnum = 1
			if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
			notify("PSYCHOPATH MODE OFF || [M]",false)
			for i,v in pairs(playergui:GetChildren()) do
				if v.Name == "REEEEEEEE" then
					v:Destroy()
				end
			end
			local thisniggarighthere = playergui:FindFirstChild('PSYCHOPAAAATH')
			if thisniggarighthere then thisniggarighthere:Destroy() end
		end
	end
	end
end)

mouse.Button1Down:connect(function()
	if active == false or usable == false then return end
	if canClick == true and acting == false then
		if mode == "stab" and finishnum == 1 then
			canClick = false
			stab()
		elseif mode == "stab" and finishnum == 15 then
			canClick = false
			stabwithpassion()
		elseif mode == "fling" then
			canClick = false
			fling()
		elseif mode == "explode" then
			canClick = false
			explode()
		elseif mode == "instasplode" then
			canClick = false
			instasplode()
		elseif mode == "finish" then
			canClick = false
			finish()
		elseif mode == "suicide" then
			canClick = false
			kysnigga()
		elseif mode == "firework" then
			canClick = false
			fireworkit()
		else
			canClick = false
			grab()
		end
	else
		if grabbed ~= nil and doing == false then
			if mode == "release" then
				if acting == true and grabbed:FindFirstChildOfClass('Humanoid') and grabbed:FindFirstChildOfClass('Humanoid').Health > 0 then
				release()
				else
				hardrelease()
				end
			elseif mode == "kill" then
				if acting == true and grabbed:FindFirstChildOfClass('Humanoid') and grabbed:FindFirstChildOfClass('Humanoid').Health > 0 then
				kill()
				else
				hardrelease()
				end
			elseif mode == "paralyze" then
				if acting == true and grabbed:FindFirstChildOfClass('Humanoid') and grabbed:FindFirstChildOfClass('Humanoid').Health > 0 then
				paralyze()
				else
				hardrelease()
				end
			elseif mode == "throw" then
				if acting == true and grabbed:FindFirstChildOfClass('Humanoid') and grabbed:FindFirstChildOfClass('Humanoid').Health > 0 then
				throw()
				else
				hardrelease()
				end
			elseif mode == "explode" then
				if acting == true and grabbed:FindFirstChildOfClass('Humanoid') and grabbed:FindFirstChildOfClass('Humanoid').Health > 0 then
				throw()
				else
				hardrelease()
				end
			end
		end
	end
end)

knife.Touched:connect(function(hitz)
	if hitz.Parent and hitz.Parent:FindFirstChildOfClass("Humanoid") and hitz.Parent:FindFirstChild('Torso') and acting == true then
		if mode == "stab" and stabbing == true and hit == false then
			hit = true
			tone = math.random(1, 3)
			audio:Stop()
			if tone == 1 then audio.SoundId = "rbxassetid://220833967" end
			if tone == 2 then audio.SoundId = "rbxassetid://220833976" end
			if tone == 3 then audio.SoundId = "rbxassetid://220834000" end
			audio.PlaybackSpeed = 1
			audio:Play()
			killz(hitz.Parent,'Left Leg')
			killz(hitz.Parent,'Left Arm')
			killz(hitz.Parent,'Right Leg')
			killz(hitz.Parent,'Right Arm')
		elseif mode == "finish" and finishing == true then
			print('PSYCHOPATH MODE REEEEEEEEEEEEEEEE')
			tone = math.random(1, 3)
			audio:Stop()
			if tone == 1 then audio.SoundId = "rbxassetid://220833967" end
			if tone == 2 then audio.SoundId = "rbxassetid://220833976" end
			if tone == 3 then audio.SoundId = "rbxassetid://220834000" end
			audio.PlaybackSpeed = 1
			audio:Play()
			if hit == false then
				hitz.Parent:FindFirstChildOfClass('Humanoid').Health = 0
				wait()
				killz(hitz.Parent,'Head',nil,false,true)
			end
			hit = true
		elseif grabbed == nil and grabbing == true and hit == false then
			if hitz.Parent:FindFirstChildOfClass("Humanoid").Health > 0 and hitz.Parent:FindFirstChild('Torso') and hitz.Parent.Torso:FindFirstChild('Neck') then
			grabbed = hitz.Parent
			local weldz = Instance.new('Weld',point)
			weldz.Name = "Holder"
			weldz.Part0 = point
			weldz.Part1 = hitz.Parent.Torso
			weldz.C0 = CFrame.new(0,0,-1.2)
			end
		end
	end
end)

player.CharacterAdded:connect(function()
	usable = false
	for i,v in pairs(playergui:GetChildren()) do
		if v.Name == "REEEEEEEE" or v.Name == 'PSYCHOPAAAATH' then
			v:Destroy()
		end
	end
end)
while usable do
	local coru = coroutine.wrap(function()
		for i,v in pairs(knifeparts) do
			local function try()
				if v[1].Parent ~= v[2] then
					v[1].Parent = v[2]
				end
			end
			pcall(try)
		end
	if grabbed ~= nil then
		if grabbed:FindFirstChildOfClass('Humanoid') and grabbed:FindFirstChildOfClass('Humanoid').Health > 0 then
			for i,v in pairs(grabbed:GetChildren()) do
				if v:IsA('Tool') then
					local model = Instance.new('Model',workspace)
					v.Parent = model
					model:TranslateBy(Vector3.new(3,0,0))
				end
			end
			grabbed:FindFirstChildOfClass('Humanoid').Name = "Hoomanoid"
			grabbed:FindFirstChildOfClass('Humanoid').JumpPower = 0
			grabbed:FindFirstChildOfClass('Humanoid').WalkSpeed = 0
			grabbed:FindFirstChildOfClass('Humanoid').PlatformStand = true
			grabweld = grabbed.Torso:FindFirstChild("TargetWeld")
			if grabweld ~= nil then return end
			grabbed:FindFirstChildOfClass('Humanoid').PlatformStand = true
			if grabbed.Torso:FindFirstChild('Left Shoulder') then
			leftshoulder = grabbed.Torso["Left Shoulder"]:Clone()
			end
			if grabbed.Torso:FindFirstChild('Right Shoulder') then
			rightshoulder = grabbed.Torso["Right Shoulder"]:Clone()
			end
			headweld = grabbed.Torso["Neck"]:Clone()
			local targetweld = Instance.new('Weld',grabbed.Torso)
			targetweld.Part0 = grabbed.Torso
			targetweld.Part1 = grabbed.Head
			targetweld.Name = "TargetWeld"
			targetweld.C0 = CFrame.new(0,1.5,0) * CFrame.Angles(0, 0, 0)
			if grabbed:FindFirstChild('Left Arm') then
			local targetweld2 = Instance.new('Weld',grabbed["Left Arm"])
			targetweld2.Part0 = grabbed.Torso
			targetweld2.Part1 = grabbed["Left Arm"]
			targetweld2.C0 = CFrame.new(-1.5,0,0) * CFrame.Angles(0, 0, 0)
			end
			
			for i = 0,1,0.1 do
				if me:FindFirstChild("Left Arm") == nil or me:FindFirstChild("Torso") == nil or targetweld == nil then return end
				targetweld.C0 = targetweld.C0:lerp(CFrame.new(0, 1.5, 0)*CFrame.Angles(0.25, 0, 0), i)
				if targetweld2 then
					targetweld2.C0 = targetweld2.C0:lerp(CFrame.new(-1.5, 0.5, 0)*CFrame.Angles(0, 0, -0.55), i)
				end
				wait(0.001)
			end
		end
	end
	end)
	coru()
	wait()
end

end
local coru=coroutine.wrap(function()
nub()
end)
coru()

player.CharacterAppearanceLoaded:connect(function()
	local coru =coroutine.wrap(function()
		nub()
	end)
	coru()
end)

while true do
	local coru=coroutine.wrap(function()
	if grabbed then
		v:FindFirstChildOfClass('Humanoid').Jump = false
		v:FindFirstChildOfClass('Humanoid').Sit = false
		v:FindFirstChildOfClass('Humanoid').JumpPower = 0
		v:FindFirstChildOfClass('Humanoid').PlatformStand = true
		v:FindFirstChildOfClass('Humanoid').Name = "No escape."
	end
	for i,v in pairs(rekt) do
		if v and v:FindFirstChildOfClass('Humanoid') then
			for a,c in pairs(v:GetChildren()) do
				if c:IsA('Tool') then
					local model = Instance.new('Model',workspace)
					c.Parent = model
					model:TranslateBy(Vector3.new(3,0,0))
				end
			end
			v:FindFirstChildOfClass('Humanoid').Jump = false
			v:FindFirstChildOfClass('Humanoid').Sit = false
			v:FindFirstChildOfClass('Humanoid').JumpPower = 0
			v:FindFirstChildOfClass('Humanoid').PlatformStand = true
			v:FindFirstChildOfClass('Humanoid').Name = "No escape."
			local thing = getplr(v)
			if thing then
				thing.CameraMinZoomDistance = 3
			end
		else
			local thing = getplr(v)
			if thing then
				thing.CameraMinZoomDistance = 0.5
			end
			table.remove(rekt,i)
		end
	end
	end)
	coru()
	local coru2 = coroutine.wrap(function()
		if curpart then
			curpoint = curpart.CFrame.p
		end
		if lastgui then
			lastgui:Destroy()
			lastgui = nil
		end
		if curpoint then
			lastgui = Instance.new('BillboardGui',player.PlayerGui)
			lastgui.AlwaysOnTop = true
			lastgui.MaxDistance = 0
			lastgui.Size = UDim2.new(5,0,5,0)
			if curpart == nil then
				lastgui.Adornee = workspace
				lastgui.StudsOffsetWorldSpace = curpoint
			else
				lastgui.Adornee = curpart
			end
			local cross = Instance.new('ImageLabel',lastgui)
			cross.BackgroundTransparency = 1
			cross.Size = UDim2.new(1,0,1,0)
			cross.Image = 'rbxassetid://316279304'
			for i,v in pairs(zombies) do
				if v:FindFirstChildOfClass('Humanoid') then
					v:FindFirstChildOfClass('Humanoid').WalkToPoint = curpoint
				end
			end
		else
			for i,v in pairs(zombies) do
				if v:FindFirstChildOfClass('Humanoid') and v:FindFirstChild('Head') then
					v:FindFirstChildOfClass('Humanoid').WalkToPoint = v.Head.Position
				end
			end
		end
	end)
	coru2()
	wait()
end
end}

 
 

module[1] = {"Armatae",function()
Player = game:GetService("Players").LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
bladecolor = BrickColor.new("Bright violet") 
attack = false 
attackdebounce = false 
combo = 0 
guarding = false 
bashing = false 
holddash = false 
Modes = {"Normal", "Attack"} 
Number = 1
mode = Modes[Number]
mana = 1000 
element = "Light" 
Style = "Normal" 
hitbox = nil 
target = nil 
original = Head.CFrame 
idleanimdelay = false 
SwordRaging = false 
barragehold = false 
regening = false 
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 

if Character:findFirstChild("ArmataeModel",true) ~= nil then 
Character:findFirstChild("ArmataeModel",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("manaGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("manaGUI",true).Parent = nil 
end 

local modelzorz = Instance.new("Model") 
modelzorz.Name = "ArmataeModel" 
modelzorz.Parent = Character 

local prt1 = Instance.new("Part") 
prt1.formFactor = 1 
prt1.Parent = modelzorz 
prt1.CanCollide = false 
prt1.BrickColor = BrickColor.new("Really black") 
prt1.Name = "ArmataeShield1" 
prt1.Size = Vector3.new(2,2,1) 
prt1.Position = Torso.Position 
local prt2 = Instance.new("Part") 
prt2.formFactor = 1 
prt2.Parent = modelzorz 
prt2.CanCollide = false 
prt2.BrickColor = BrickColor.new("Really black") 
prt2.Name = "ArmataeShield2" 
prt2.Size = Vector3.new(1,1,1) 
prt2.Position = Torso.Position 
local prt3 = Instance.new("Part") 
prt3.formFactor = 1 
prt3.Parent = modelzorz 
prt3.CanCollide = false 
prt3.BrickColor = BrickColor.new("Really black") 
prt3.Name = "ArmataeShield3" 
prt3.Size = Vector3.new(1,1,1) 
prt3.Position = Torso.Position 
local prt4 = Instance.new("Part") 
prt4.formFactor = 1 
prt4.Parent = modelzorz 
prt4.CanCollide = false 
prt4.BrickColor = BrickColor.new("Really black") 
prt4.Name = "ArmataeShield4" 
prt4.Size = Vector3.new(1,1,1) 
prt4.Position = Torso.Position 
local prt5 = Instance.new("Part") 
prt5.formFactor = 1 
prt5.Parent = modelzorz 
prt5.CanCollide = false 
prt5.BrickColor = BrickColor.new("Really black") 
prt5.Name = "ArmataeShield5" 
prt5.Size = Vector3.new(1,1,1) 
prt5.Position = Torso.Position 
local prt6 = Instance.new("Part") 
prt6.formFactor = 1 
prt6.Parent = modelzorz 
prt6.CanCollide = false 
prt6.BrickColor = BrickColor.new("White") 
prt6.Name = "ArmataeShield6" 
prt6.Size = Vector3.new(2,2,1) 
prt6.Position = Torso.Position 
local prt7 = Instance.new("Part") 
prt7.formFactor = 1 
prt7.Parent = modelzorz 
prt7.CanCollide = false 
prt7.BrickColor = BrickColor.new("White") 
prt7.Name = "ArmataeShield7" 
prt7.Size = Vector3.new(1,1,1) 
prt7.Position = Torso.Position 
local prt8 = Instance.new("Part") 
prt8.formFactor = 1 
prt8.Parent = modelzorz 
prt8.CanCollide = false 
prt8.BrickColor = BrickColor.new("White") 
prt8.Name = "ArmataeShield8" 
prt8.Size = Vector3.new(1,1,1) 
prt8.Position = Torso.Position 
local prt9 = Instance.new("Part") 
prt9.formFactor = 1 
prt9.Parent = modelzorz 
prt9.CanCollide = false 
prt9.BrickColor = BrickColor.new("White") 
prt9.Name = "ArmataeShield9" 
prt9.Size = Vector3.new(1,1,1) 
prt9.Position = Torso.Position 
local prt10 = Instance.new("Part") 
prt10.formFactor = 1 
prt10.Parent = modelzorz 
prt10.CanCollide = false 
prt10.BrickColor = BrickColor.new("White") 
prt10.Name = "ArmataeShield10" 
prt10.Size = Vector3.new(1,1,1) 
prt10.Position = Torso.Position 
local prt11 = Instance.new("Part") 
prt11.formFactor = 1 
prt11.Reflectance = 0.1 
prt11.Parent = modelzorz 
prt11.CanCollide = false 
prt11.BrickColor = BrickColor.new("Bright violet") 
prt11.Name = "ArmataeShield11" 
prt11.Size = Vector3.new(2,2,1) 
prt11.Position = Torso.Position 
local prt12 = Instance.new("Part") 
prt12.formFactor = 1 
prt12.Reflectance = 0.1 
prt12.Parent = modelzorz 
prt12.CanCollide = false 
prt12.BrickColor = BrickColor.new("Bright violet") 
prt12.Name = "ArmataeShield12" 
prt12.Size = Vector3.new(1,1,1) 
prt12.Position = Torso.Position 
local prt13 = Instance.new("Part") 
prt13.formFactor = 1 
prt13.Reflectance = 0.1 
prt13.Parent = modelzorz 
prt13.CanCollide = false 
prt13.BrickColor = BrickColor.new("Bright violet") 
prt13.Name = "ArmataeShield13" 
prt13.Size = Vector3.new(1,1,1) 
prt13.Position = Torso.Position 
local prt14 = Instance.new("Part") 
prt14.formFactor = 1 
prt14.Reflectance = 0.1 
prt14.Parent = modelzorz 
prt14.CanCollide = false 
prt14.BrickColor = BrickColor.new("Bright violet") 
prt14.Name = "ArmataeShield14" 
prt14.Size = Vector3.new(1,1,1) 
prt14.Position = Torso.Position 
local prt15 = Instance.new("Part") 
prt15.formFactor = 1 
prt15.Reflectance = 0.1 
prt15.Parent = modelzorz 
prt15.CanCollide = false 
prt15.BrickColor = BrickColor.new("Bright violet") 
prt15.Name = "ArmataeShield15" 
prt15.Size = Vector3.new(1,1,1) 
prt15.Position = Torso.Position 
local prt16 = Instance.new("Part") 
prt16.formFactor = 1 
prt16.Reflectance = 0.2 
prt16.Parent = modelzorz 
prt16.CanCollide = false 
--prt16.BrickColor = BrickColor.new("Bright violet") 
prt16.BrickColor = BrickColor.new("White") 
prt16.Name = "ArmataeShield16" 
prt16.Size = Vector3.new(1,1,1) 
prt16.Position = Torso.Position 
local prt17 = Instance.new("Part") 
prt17.formFactor = 1 
prt17.Reflectance = 0.1 
prt17.Parent = modelzorz 
prt17.CanCollide = false 
prt17.BrickColor = BrickColor.new("Really black") 
prt17.Name = "ArmataeShield17" 
prt17.Size = Vector3.new(1,1,1) 
prt17.Position = Torso.Position 
local prt18 = Instance.new("Part") 
prt18.formFactor = 1 
prt18.Reflectance = 0.1 
prt18.Parent = modelzorz 
prt18.CanCollide = false 
prt18.BrickColor = BrickColor.new("Really black") 
prt18.Name = "ArmataeShield18" 
prt18.Size = Vector3.new(1,1,1) 
prt18.Position = Torso.Position 
local prt19 = Instance.new("Part") 
prt19.formFactor = 1 
prt19.Reflectance = 0.1 
prt19.Parent = modelzorz 
prt19.CanCollide = false 
prt19.BrickColor = BrickColor.new("Really black") 
prt19.Name = "ArmataeShield19" 
prt19.Size = Vector3.new(1,1,1) 
prt19.Position = Torso.Position 

local part1 = Instance.new("Part") 
part1.formFactor = 1 
part1.Parent = modelzorz 
part1.CanCollide = false 
part1.BrickColor = BrickColor.new("Bright violet") 
part1.Name = "Handle1" 
part1.Size = Vector3.new(1,1,1) 
part1.Position = Torso.Position 
local part2 = Instance.new("Part") 
part2.formFactor = 1 
part2.Parent = modelzorz 
part2.CanCollide = false 
part2.BrickColor = BrickColor.new("Bright violet") 
part2.Name = "Handle2" 
part2.Size = Vector3.new(1,1,1) 
part2.Position = Torso.Position 
local part3 = Instance.new("Part") 
part3.formFactor = 1 
part3.Parent = modelzorz 
part3.CanCollide = false 
part3.BrickColor = BrickColor.new("Bright violet") 
part3.Name = "Handle3" 
part3.Size = Vector3.new(1,1,1) 
part3.Position = Torso.Position 
local part4 = Instance.new("Part") 
part4.formFactor = 1 
part4.Parent = modelzorz 
part4.CanCollide = false 
part4.BrickColor = BrickColor.new("Really black") 
part4.Name = "Handle4" 
part4.Size = Vector3.new(1,3,1) 
part4.Position = Torso.Position 
local part5 = Instance.new("Part") 
part5.formFactor = 1 
part5.Parent = modelzorz 
part5.CanCollide = false 
part5.BrickColor = BrickColor.new("Really black") 
part5.Name = "Handle5" 
part5.Size = Vector3.new(1,1,1) 
part5.Position = Torso.Position 
local part6 = Instance.new("Part") 
part6.formFactor = 1 
part6.Parent = modelzorz 
part6.CanCollide = false 
part6.BrickColor = BrickColor.new("Really black") 
part6.Name = "Handle6" 
part6.Size = Vector3.new(1,1,1) 
part6.Position = Torso.Position 
local part7 = Instance.new("Part") 
part7.formFactor = 1 
part7.Parent = modelzorz 
part7.CanCollide = false 
part7.BrickColor = BrickColor.new("Really black") 
part7.Name = "Handle7" 
part7.Size = Vector3.new(1,1,1) 
part7.Position = Torso.Position 
local part8 = Instance.new("Part") 
part8.formFactor = 1 
part8.Parent = modelzorz 
part8.CanCollide = false 
part8.BrickColor = BrickColor.new("Really black") 
part8.Name = "Handle8" 
part8.Size = Vector3.new(1,1,1) 
part8.Position = Torso.Position 
local part9 = Instance.new("Part") 
part9.formFactor = 1 
part9.Parent = modelzorz 
part9.CanCollide = false 
part9.BrickColor = BrickColor.new("Really black") 
part9.Name = "Handle9" 
part9.Size = Vector3.new(1,1,1) 
part9.Position = Torso.Position 
local part10 = Instance.new("Part") 
part10.formFactor = 1 
part10.Parent = modelzorz 
part10.CanCollide = false 
part10.BrickColor = BrickColor.new("Really black") 
part10.Name = "Handle10" 
part10.Size = Vector3.new(1,1,1) 
part10.Position = Torso.Position 
local part11 = Instance.new("Part") 
part11.formFactor = 1 
part11.Parent = modelzorz 
part11.CanCollide = false 
part11.BrickColor = BrickColor.new("Really black") 
part11.Name = "Handle11" 
part11.Size = Vector3.new(1,1,1) 
part11.Position = Torso.Position 
local part12 = Instance.new("Part") 
part12.formFactor = 1 
part12.Parent = modelzorz 
part12.CanCollide = false 
part12.BrickColor = BrickColor.new("Really black") 
part12.Name = "Handle12" 
part12.Size = Vector3.new(1,1,1) 
part12.Position = Torso.Position 
local part13 = Instance.new("Part") 
part13.formFactor = 1 
part13.Parent = modelzorz 
part13.CanCollide = false 
part13.Reflectance = 0.5
part13.BrickColor = bladecolor
part13.Name = "Blade1" 
part13.Size = Vector3.new(2,1,1) 
part13.Position = Torso.Position 
local part14 = Instance.new("Part") 
part14.formFactor = 1 
part14.Parent = modelzorz 
part14.CanCollide = false 
part14.Reflectance = 0.5
part14.BrickColor = bladecolor
part14.Name = "Blade2" 
part14.Size = Vector3.new(1,1,1) 
part14.Position = Torso.Position 
local part15 = Instance.new("Part") 
part15.formFactor = 1 
part15.Parent = modelzorz 
part15.CanCollide = false 
part15.Reflectance = 0
part15.BrickColor = BrickColor.new("Black")
part15.Name = "Blade3" 
part15.Size = Vector3.new(1,2,1) 
part15.Position = Torso.Position 

local msh1 = Instance.new("BlockMesh") 
msh1.Parent = prt1 
msh1.Scale = Vector3.new(1,1,0.5) 
local msh2 = Instance.new("SpecialMesh") 
msh2.Parent = prt2 
msh2.MeshType = "Wedge" 
msh2.Scale = Vector3.new(0.5,0.7,1) 
local msh3 = Instance.new("SpecialMesh") 
msh3.Parent = prt3 
msh3.MeshType = "Wedge" 
msh3.Scale = Vector3.new(0.5,0.7,1) 
local msh4 = Instance.new("BlockMesh") 
msh4.Parent = prt4 
msh4.Scale = Vector3.new(0.9,0.9,0.5) 
local msh5 = Instance.new("BlockMesh") 
msh5.Parent = prt5 
msh5.Scale = Vector3.new(0.9,0.9,0.5) 
local msh6 = Instance.new("BlockMesh") 
msh6.Parent = prt6 
msh6.Scale = Vector3.new(0.8,0.8,0.5) 
local msh7 = Instance.new("SpecialMesh") 
msh7.Parent = prt7 
msh7.MeshType = "Wedge" 
msh7.Scale = Vector3.new(0.5,0.5,0.8) 
local msh8 = Instance.new("SpecialMesh") 
msh8.Parent = prt8 
msh8.MeshType = "Wedge" 
msh8.Scale = Vector3.new(0.5,0.5,0.8) 
local msh9 = Instance.new("BlockMesh") 
msh9.Parent = prt9 
msh9.Scale = Vector3.new(0.7,0.7,0.5) 
local msh10 = Instance.new("BlockMesh") 
msh10.Parent = prt10 
msh10.Scale = Vector3.new(0.7,0.7,0.5) 
local msh11 = Instance.new("BlockMesh") 
msh11.Parent = prt11 
msh11.Scale = Vector3.new(0.7,0.7,0.5) 
local msh12 = Instance.new("SpecialMesh") 
msh12.Parent = prt12 
msh12.MeshType = "Wedge" 
msh12.Scale = Vector3.new(0.4,0.5,0.7) 
local msh13 = Instance.new("SpecialMesh") 
msh13.Parent = prt13 
msh13.MeshType = "Wedge" 
msh13.Scale = Vector3.new(0.4,0.5,0.7) 
local msh14 = Instance.new("BlockMesh") 
msh14.Parent = prt14 
msh14.Scale = Vector3.new(0.5,0.5,0.5) 
local msh15 = Instance.new("BlockMesh") 
msh15.Parent = prt15 
msh15.Scale = Vector3.new(0.5,0.5,0.5) 
local msh16 = Instance.new("SpecialMesh") 
msh16.Parent = prt16 
msh16.MeshId = "http://www.roblox.com/Asset/?id=9756362" 
msh16.Scale = Vector3.new(0.6,0.6,0.6) 
local msh17 = Instance.new("SpecialMesh") 
msh17.Parent = prt17 
msh17.MeshId = "http://www.roblox.com/Asset/?id=9756362" 
msh17.Scale = Vector3.new(0.8,0.8,0.3) 
local msh18 = Instance.new("CylinderMesh") 
msh18.Parent = prt18 
msh18.Scale = Vector3.new(0.3,0.2,0.5) 
local msh19 = Instance.new("CylinderMesh") 
msh19.Parent = prt19 
msh19.Scale = Vector3.new(0.3,0.2,0.5) 

local mesh1 = Instance.new("CylinderMesh") 
mesh1.Parent = part1 
mesh1.Scale = Vector3.new(0.31,0.1,0.31) 
local mesh2 = Instance.new("CylinderMesh") 
mesh2.Parent = part2 
mesh2.Scale = Vector3.new(0.31,0.1,0.31) 
local mesh3 = Instance.new("CylinderMesh") 
mesh3.Parent = part3 
mesh3.Scale = Vector3.new(0.31,0.1,0.31) 
local mesh4 = Instance.new("CylinderMesh") 
mesh4.Parent = part4 
mesh4.Scale = Vector3.new(0.3,0.4,0.3) 
local mesh5 = Instance.new("SpecialMesh") 
mesh5.Parent = part5 
mesh5.MeshId = "http://www.roblox.com/asset/?id=3270017" 
mesh5.Scale = Vector3.new(0.6,0.6,0.6) 
local mesh6 = Instance.new("BlockMesh") 
mesh6.Parent = part6 
mesh6.Scale = Vector3.new(0.2,0.4,0.2) 
local mesh7 = Instance.new("BlockMesh") 
mesh7.Parent = part7 
mesh7.Scale = Vector3.new(0.2,0.4,0.2) 
local mesh8 = Instance.new("BlockMesh") 
mesh8.Parent = part8 
mesh8.Scale = Vector3.new(0.3,0.9,0.3) 
local mesh9 = Instance.new("BlockMesh") 
mesh9.Parent = part9 
mesh9.Scale = Vector3.new(0.2, 0.5, 0.2) 
local mesh10 = Instance.new("BlockMesh") 
mesh10.Parent = part10 
mesh10.Scale = Vector3.new(0.2, 0.5, 0.2) 
local mesh11 = Instance.new("BlockMesh") 
mesh11.Parent = part11 
mesh11.Scale = Vector3.new(0.2, 0.5, 0.2) 
local mesh12 = Instance.new("BlockMesh") 
mesh12.Parent = part12 
mesh12.Scale = Vector3.new(0.2, 0.5, 0.2) 
local mesh13 = Instance.new("BlockMesh") 
mesh13.Parent = part13 
mesh13.Scale = Vector3.new(1.3, 0.6, 0.2) 
local mesh14 = Instance.new("SpecialMesh") 
mesh14.Parent = part14 
mesh14.MeshType = "Wedge" 
mesh14.Scale = Vector3.new(0.2,0.4,0.5) 
local mesh15 = Instance.new("CylinderMesh") 
mesh15.Parent = part15 
mesh15.Scale = Vector3.new(2.3,0.8,0.3) 

local wld1 = Instance.new("Weld") 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.7) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld2 = Instance.new("Weld") 
wld2.Parent = prt2 
wld2.Part0 = prt2 
wld2.Part1 = prt1 
wld2.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(90),math.rad(180)) * CFrame.new(0.5,1.6,0) 
wld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld3 = Instance.new("Weld") 
wld3.Parent = prt3 
wld3.Part0 = prt3 
wld3.Part1 = prt1 
wld3.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),math.rad(180)) * CFrame.new(-0.5,1.6,0) 
wld3.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld4 = Instance.new("Weld") 
wld4.Parent = prt4 
wld4.Part0 = prt4 
wld4.Part1 = prt1 
wld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,1.2) * CFrame.new(0.6,-0.9,0) 
wld4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld5 = Instance.new("Weld") 
wld5.Parent = prt5 
wld5.Part0 = prt5 
wld5.Part1 = prt1 
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,-1.2) * CFrame.new(-0.6,-0.9,0) 
wld5.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld6 = Instance.new("Weld") 
wld6.Parent = prt6 
wld6.Part0 = prt6 
wld6.Part1 = prt1 
wld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.15,-0.05) 
wld6.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld7 = Instance.new("Weld") 
wld7.Parent = prt7 
wld7.Part0 = prt7 
wld7.Part1 = prt2 
wld7.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.05,0.2,-0.1) 
wld7.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld8 = Instance.new("Weld") 
wld8.Parent = prt8 
wld8.Part0 = prt8 
wld8.Part1 = prt3 
wld8.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.05,0.2,-0.1) 
wld8.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld9 = Instance.new("Weld") 
wld9.Parent = prt9 
wld9.Part0 = prt9 
wld9.Part1 = prt4 
wld9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.1,-0.05,-0.05) 
wld9.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld10 = Instance.new("Weld") 
wld10.Parent = prt10 
wld10.Part0 = prt10 
wld10.Part1 = prt5 
wld10.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.1,-0.05,-0.05) 
wld10.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld11 = Instance.new("Weld") 
wld11.Parent = prt11 
wld11.Part0 = prt11 
wld11.Part1 = prt6 
wld11.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.01) 
wld11.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld12 = Instance.new("Weld") 
wld12.Parent = prt12 
wld12.Part0 = prt12 
wld12.Part1 = prt7 
wld12.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.06,0.11,-0.06) 
wld12.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld13 = Instance.new("Weld") 
wld13.Parent = prt13 
wld13.Part0 = prt13 
wld13.Part1 = prt8 
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.06,0.11,-0.06) 
wld13.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld14 = Instance.new("Weld") 
wld14.Parent = prt14 
wld14.Part0 = prt14 
wld14.Part1 = prt9 
wld14.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.01) 
wld14.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld15 = Instance.new("Weld") 
wld15.Parent = prt15 
wld15.Part0 = prt15 
wld15.Part1 = prt10 
wld15.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.01) 
wld15.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld16 = Instance.new("Weld") 
wld16.Parent = prt16 
wld16.Part0 = prt16 
wld16.Part1 = prt11 
wld16.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.1,-0.2) 
wld16.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld17 = Instance.new("Weld") 
wld17.Parent = prt17 
wld17.Part0 = prt17 
wld17.Part1 = prt11 
wld17.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.1,-0.2) 
wld17.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld18 = Instance.new("Weld") 
wld18.Parent = prt18 
wld18.Part0 = prt18 
wld18.Part1 = prt14 
wld18.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(-0.1,0,-0.2) 
wld18.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld19 = Instance.new("Weld") 
wld19.Parent = prt19 
wld19.Part0 = prt19 
wld19.Part1 = prt15 
wld19.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0.1,0,-0.2) 
wld19.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local weld1 = Instance.new("Weld") 
weld1.Parent = part1 
weld1.Part0 = part1 
weld1.Part1 = prt1 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.7,0.2) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld2 = Instance.new("Weld") 
weld2.Parent = part2 
weld2.Part0 = part2 
weld2.Part1 = part1 
weld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.3,0) 
weld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld3 = Instance.new("Weld") 
weld3.Parent = part3 
weld3.Part0 = part3 
weld3.Part1 = part1 
weld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.3,0) 
weld3.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld4 = Instance.new("Weld") 
weld4.Parent = part4 
weld4.Part0 = part4 
weld4.Part1 = part1 
weld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
weld4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld5 = Instance.new("Weld") 
weld5.Parent = part5 
weld5.Part0 = part5 
weld5.Part1 = part1 
weld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.8,0) 
weld5.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld6 = Instance.new("Weld") 
weld6.Parent = part6 
weld6.Part0 = part6 
weld6.Part1 = part5 
weld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
weld6.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld7 = Instance.new("Weld") 
weld7.Parent = part7 
weld7.Part0 = part7 
weld7.Part1 = part5 
weld7.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0,0) 
weld7.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld8 = Instance.new("Weld") 
weld8.Parent = part8 
weld8.Part0 = part8 
weld8.Part1 = part1 
weld8.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0.6,0) 
local weld9 = Instance.new("Weld") 
weld9.Parent = part9 
weld9.Part0 = part9 
weld9.Part1 = part8 
weld9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.6,0) 
local weld10 = Instance.new("Weld") 
weld10.Parent = part10 
weld10.Part0 = part10 
weld10.Part1 = part9 
weld10.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0,0) 
local weld11 = Instance.new("Weld") 
weld11.Parent = part11 
weld11.Part0 = part11 
weld11.Part1 = part8 
weld11.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.6,0) 
local weld12 = Instance.new("Weld") 
weld12.Parent = part12 
weld12.Part0 = part12 
weld12.Part1 = part11 
weld12.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0,0) 
local weld13 = Instance.new("Weld") 
weld13.Parent = part13 
weld13.Part0 = part13 
weld13.Part1 = part8 
weld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-1.4,0,0) 
local weld14 = Instance.new("Weld") 
weld14.Parent = part14 
weld14.Part0 = part14 
weld14.Part1 = part13 
weld14.C0 = CFrame.fromEulerAnglesXYZ(3.95,math.rad(90),0) * CFrame.new(-1.3,0,0) 
local weld15 = Instance.new("Weld") 
weld15.Parent = part15 
weld15.Part0 = part15 
weld15.Part1 = part13 
weld15.C0 = CFrame.fromEulerAnglesXYZ(4.7,math.rad(90),0) * CFrame.new(0,0,0) 

local wingblade1 = Instance.new("Part") 
wingblade1.formFactor = 1 
wingblade1.Parent = nil 
wingblade1.Transparency = 0.4 
wingblade1.CanCollide = false 
wingblade1.Reflectance = 0
wingblade1.BrickColor = BrickColor.new("White")
wingblade1.Name = "Wingblade1" 
wingblade1.Size = Vector3.new(1,1,3) 
wingblade1.Position = Torso.Position 
local wingblade2 = Instance.new("Part") 
wingblade2.formFactor = 1 
wingblade2.Parent = nil 
wingblade2.Transparency = 0.4 
wingblade2.CanCollide = false 
wingblade2.Reflectance = 0
wingblade2.BrickColor = BrickColor.new("White")
wingblade2.Name = "Wingblade2" 
wingblade2.Size = Vector3.new(1,1,3) 
wingblade2.Position = Torso.Position 
local wingblade3 = Instance.new("Part") 
wingblade3.formFactor = 1 
wingblade3.Parent = nil 
wingblade3.Transparency = 0.4 
wingblade3.CanCollide = false 
wingblade3.Reflectance = 0
wingblade3.BrickColor = BrickColor.new("White")
wingblade3.Name = "Wingblade3" 
wingblade3.Size = Vector3.new(1,1,3) 
wingblade3.Position = Torso.Position 
local wingblade4 = Instance.new("Part") 
wingblade4.formFactor = 1 
wingblade4.Parent = nil 
wingblade4.Transparency = 0.4 
wingblade4.CanCollide = false 
wingblade4.Reflectance = 0
wingblade4.BrickColor = BrickColor.new("White")
wingblade4.Name = "Wingblade4" 
wingblade4.Size = Vector3.new(1,1,3) 
wingblade4.Position = Torso.Position 
local wingblade5 = Instance.new("Part") 
wingblade5.formFactor = 1 
wingblade5.Parent = nil 
wingblade5.Transparency = 0.4 
wingblade5.CanCollide = false 
wingblade5.Reflectance = 0
wingblade5.BrickColor = BrickColor.new("White")
wingblade5.Name = "Wingblade5" 
wingblade5.Size = Vector3.new(1,1,3) 
wingblade5.Position = Torso.Position 
local wingblade6 = Instance.new("Part") 
wingblade6.formFactor = 1 
wingblade6.Parent = nil 
wingblade6.Transparency = 0.4 
wingblade6.CanCollide = false 
wingblade6.Reflectance = 0
wingblade6.BrickColor = BrickColor.new("White")
wingblade6.Name = "Wingblade6" 
wingblade6.Size = Vector3.new(1,1,3) 
wingblade6.Position = Torso.Position 

local wingmesh1 = Instance.new("SpecialMesh") 
wingmesh1.Parent = wingblade1 
wingmesh1.MeshId = "rbxasset://fonts/sword.mesh" 
wingmesh1.Scale = Vector3.new(1,1,1) 
local wingmesh2 = Instance.new("SpecialMesh") 
wingmesh2.Parent = wingblade2 
wingmesh2.MeshId = "rbxasset://fonts/sword.mesh" 
wingmesh2.Scale = Vector3.new(1,1,1) 
local wingmesh3 = Instance.new("SpecialMesh") 
wingmesh3.Parent = wingblade3 
wingmesh3.MeshId = "rbxasset://fonts/sword.mesh" 
wingmesh3.Scale = Vector3.new(1,1,1) 
local wingmesh4 = Instance.new("SpecialMesh") 
wingmesh4.Parent = wingblade4 
wingmesh4.MeshId = "rbxasset://fonts/sword.mesh" 
wingmesh4.Scale = Vector3.new(1,1,1) 
local wingmesh5 = Instance.new("SpecialMesh") 
wingmesh5.Parent = wingblade5 
wingmesh5.MeshId = "rbxasset://fonts/sword.mesh" 
wingmesh5.Scale = Vector3.new(1,1,1) 
local wingmesh6 = Instance.new("SpecialMesh") 
wingmesh6.Parent = wingblade6 
wingmesh6.MeshId = "rbxasset://fonts/sword.mesh" 
wingmesh6.Scale = Vector3.new(1,1,1) 

local wingweld1 = Instance.new("Weld") 
wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = Torso 
wingweld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(1,0,0) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wingweld2 = Instance.new("Weld") 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = Torso 
wingweld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wingweld3 = Instance.new("Weld") 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = Torso 
wingweld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wingweld4 = Instance.new("Weld") 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = Torso 
wingweld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wingweld5 = Instance.new("Weld") 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = Torso 
wingweld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wingweld6 = Instance.new("Weld") 
wingweld6.Parent = wingblade6 
wingweld6.Part0 = wingblade6 
wingweld6.Part1 = Torso 
wingweld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

local SlashSound = Instance.new("Sound") -- PRELOADING SOUNDS TROLOLOL 
--SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209645" 
SlashSound.Parent = Character 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209850" 
SlashSound.Parent = Character 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209583" 
SlashSound.Parent = Character 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = Character 
SlashSound.Volume = .5 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2767090" 
SlashSound.Parent = Character 
SlashSound.Volume = 1 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101137" 
SlashSound.Parent = Character 
SlashSound.Volume = 1 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=13775494" 
SlashSound.Parent = Character 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2691586" 
SlashSound.Parent = Character 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.2 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2691586" 
SlashSound.Parent = Character 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.05 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = Character 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.05 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset?id=1369158" 
SlashSound.Parent = Character 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.7 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2974000" 
SlashSound.Parent = Character 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.5 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2974249" 
SlashSound.Parent = Character 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.3 

local fengui = Instance.new("GuiMain") 
fengui.Parent = Player.PlayerGui 
fengui.Name = "manaGUI" 
local fenframe = Instance.new("Frame") 
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255,255,255) 
fenframe.BackgroundTransparency = 1 
fenframe.BorderColor3 = Color3.new(17,17,17) 
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
local fentext = Instance.new("TextLabel") 
fentext.Parent = fenframe 
fentext.Text = "Mana("..mana..")" 
fentext.BackgroundTransparency = 1 
fentext.SizeConstraint = "RelativeXY" 
fentext.TextXAlignment = "Center" 
fentext.TextYAlignment = "Center" 
fentext.Position = UDim2.new(0,80,1,200) 
local fentext2 = Instance.new("TextLabel") 
fentext2.Parent = fenframe 
fentext2.Text = " " 
fentext2.BackgroundTransparency = 0 
fentext2.BackgroundColor3 = Color3.new(0,0,1) 
fentext2.SizeConstraint = "RelativeXY" 
fentext2.TextXAlignment = "Center" 
fentext2.TextYAlignment = "Center" 
fentext2.Position = UDim2.new(0,10,1,170)
fentext2.Size = UDim2.new(2.79999995,0,0.210000306,0)
local fentext3 = Instance.new("TextLabel") 
fentext3.Parent = fenframe 
fentext3.Text = " " 
fentext3.BackgroundTransparency = 0 
fentext3.BackgroundColor3 = Color3.new(1,1,0) 
fentext3.SizeConstraint = "RelativeXY" 
fentext3.TextXAlignment = "Center" 
fentext3.TextYAlignment = "Center" 
fentext3.Position = UDim2.new(0,10,1,170)
fentext3.Size = UDim2.new(mana*0.007,0,0.400000006,0)
--2.9000001, 0}, {0.450000018, 0}
local gairo = Instance.new("BodyGyro") 
gairo.Parent = nil 
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 

if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Armatae" 
script.Parent = Tool 
end 
Bin = Tool  

function unequipweld() 
wait() 
wld1.Parent = prt1 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.7) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
if mode == "Attack" then 
sheath(2.25) 
weld1.Part0 = part1 
weld1.Part1 = prt1 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.7,0.2) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
end 
end 

function equipweld() 
wld1.Part1 = RightArm 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,0,0) 
if mode == "Attack" then 
sheath(2.25) 
weld1.Part0 = part1 
weld1.Part1 = LeftArm 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0,1,0) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
end 
end 

function hideanim() 
if Style ~= "WingBlade" then 
for i = 0 , 1 , 0.085 do 
wait(0)  
wld1.C1 = CFrame.fromEulerAnglesXYZ(math.rad(90)-math.rad(180)+math.rad(180)*i,0,0) * CFrame.new(0,0,0) 
if mode == "Normal" then 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
elseif mode == "Attack" then 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4*i,-0.5*i,0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,0.5*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,-1.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
unequipweld() 
for i = 0 , 1 , 0.085 do 
wait(0)  
if mode == "Normal" then 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
elseif mode == "Attack" then 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4-4*i,-0.5+0.5*i,0.5-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(-1.57+2.57*i,0,-1.2+1.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end 

function equipanim() 
if Style ~= "WingBlade" then 
for i = 0 , 1 , 0.085 do 
wait(0)  
if mode == "Normal" then 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
elseif mode == "Attack" then 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4*i,-0.5*i,0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,0.5*i) * CFrame.fromEulerAnglesXYZ(-1.57*i,0,-1.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
equipweld() 
for i = 0 , 1 , 0.085 do 
wait(0)  
wld1.C1 = CFrame.fromEulerAnglesXYZ(math.rad(90)-math.rad(180)*i,0,0) * CFrame.new(0,0,0) 
if mode == "Normal" then 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
elseif mode == "Attack" then 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4-4*i,-0.5+0.5*i,0.5-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(-1.57+2.57*i,0,-1.2+1.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end 

function changeequipleft() 
if Number > 1 then 
Number = Number - 1 
mode = Modes[Number] 
print(mode) 
if Number == 1 then 
NormalMode() 
end 
end 
end 

function changeequipright() 
if Number < #Modes then 
Number = Number + 1 
mode = Modes[Number] 
print(mode) 
if Number == 2 then 
AttackMode() 
end 
end 
end 

function findNearestTorso(pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = 150
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2 ~= Character) and (temp2.Name ~= "outcast12345") then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso
end

function ChangeElement() 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
magicsound(1) 
if element == "Light" then 
element = "Dark" 
WaveEffect(Torso,3,3,3,0,-2,0,0,0,0,BrickColor.new("Black")) 
elseif element == "Dark" then 
element = "Light" 
WaveEffect(Torso,3,3,3,0,-2,0,0,0,0,BrickColor.new("White")) 
end 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.3+0.6*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2-3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2-3*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 

function NormalMode() 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90)-0.5*i,0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-0.3*i,1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
sheath(2.25) 
weld1.Part0 = part1 
weld1.Part1 = prt1 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.7,0.2) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90)-0.5+0.5*i,0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,-1.57+1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7+0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-0.3+0.3*i,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 

function AttackMode() 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90)-0.5*i,0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-0.3*i,1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
sheath(2.25) 
weld1.Part0 = part1 
weld1.Part1 = LeftArm 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0,1,0) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90)-0.5+0.5*i,0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,-1.57+1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7+0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-0.3+0.3*i,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 

function onehit() 
attack = true 
combo = 1 
ss(0.8) 
con1=LeftArm.Touched:connect(function(hit) Damagefunc1(hit,10,5) end) 
for i = 0,1,0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,-1*i) * CFrame.fromEulerAnglesXYZ(1.3*i,1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
if mana >= 1 then 
magicsound(2) 
if element == "Light" then 
MMMAGIC(LeftArm,2,2,2,0,-1,0,BrickColor.new("White")) 
else 
MMMAGIC(LeftArm,2,2,2,0,-1,0,BrickColor.new("Black")) 
end 
mana = mana - 1 
end 
wait(0.3) 
con1:disconnect() 
attack = false 
end 

function twohit() 
attack = true 
combo = 2 
--con1=RightLeg.Touched:connect(function(hit) Damagefunc1(hit,10,5) end) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,-1) * CFrame.fromEulerAnglesXYZ(1.3+1.7*i,1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(0.8) 
con1=RightArm.Touched:connect(function(hit) Damagefunc1(hit,10,5) end) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,-1+1*i) * CFrame.fromEulerAnglesXYZ(3-2.5*i,1.57-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
if mana >= 5 then 
magicsound(2) 
if element == "Light" then 
EVENMOARMAGIX(Torso,1,4,1,-1.5,-2,-1.3,0,0,0,BrickColor.new("White")) 
WaveEffect(Torso,0.5,2,0.5,-1.5,-2,-1.3,0,0,0,BrickColor.new("White")) 
else 
EVENMOARMAGIX(Torso,1,4,1,-1.5,-2,-1.3,0,0,0,BrickColor.new("Black")) 
WaveEffect(Torso,0.5,2,0.5,-1.5,-2,-1.3,0,0,0,BrickColor.new("Black")) 
end 
mana = mana - 5 
end 
wait(0.2) 
con1:disconnect() 
attack = false 
end 

function threehit() 
attack = true 
combo = 3 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90)-0.5*i,0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(0.5+1*i,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5+0.2*i,1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
sheath(2.25) 
weld1.Part0 = part1 
weld1.Part1 = LeftArm 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0,1,0) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wait(0.2) 
ss(1) 
con1=part13.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90)-0.5+0.5*i,0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(0.5+1,-1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7+2.2*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.7-0.5*i,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
wait(0.1) 
attack = false 
end 

function fourhit() 
attack = true 
combo = 4 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5+2*i,-1.57+1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
ss(1.2) 
con1=part13.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5-4*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
wait(0.05) 
attack = false 
end 

function fivehit() 
attack = true 
combo = 5 
gairo.Parent = Head
gairo.cframe = Head.CFrame 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.7*i,0.5,-0.7*i) * CFrame.fromEulerAnglesXYZ(0.2+1.37*i,0,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
ss(0.7) 
--shieldbash(1) 
con1=prt1.Touched:connect(function(hit) Bash(hit,40) end) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5-1*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.7+0.7*i,0.5,-0.7+0.7*i) * CFrame.fromEulerAnglesXYZ(0.2+1.37,0,-1+2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
wait(0.3) 
attack = false 
end 

function oneslash() 
attack = true 
combo = 1 
ss(1) 
con1=part13.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 
for i = 0,1,0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
con1:disconnect() 
attack = false 
end 

function twoslash() 
attack = true 
combo = 2 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5+1.1*i,0.5+0.5*i,-0.8*i) * CFrame.fromEulerAnglesXYZ(3-1.43*i,0,1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(1.2) 
con1=part13.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 
for i = 0,1,0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5+1.1-1.1*i,0.5+0.5-0.5*i,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(3-1.43,0,1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i,1.57,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
con1:disconnect() 
attack = false 
end 

function threeslash() 
attack = true 
combo = 3 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57+0.5*i,0,1.57+2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3,1.57+2*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(0.8) 
con1=part13.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 
for i = 0,1,0.2 do 
wait(0)  
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90)+math.rad(90)*i,0,math.rad(90)-math.rad(90)*i) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57+0.5,0,1.57+2) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3+1*i,1.57+2,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
con1:disconnect() 
attack = false 
end 

function fourslash() 
attack = true 
combo = 4 
for i = 0,1,0.1 do 
wait(0)  
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90)+math.rad(90)-math.rad(90)*i,0,math.rad(90)-math.rad(90)+math.rad(90)) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5+0.6*i,0.5+0.5*i,-0.5-0.3*i) * CFrame.fromEulerAnglesXYZ(1.57+0.5-0.5*i,0,1.57+2-2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3+1-4*i,1.57+2-2*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Player.Character.Torso
vel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel2.velocity = Player.Character.Head.CFrame.lookVector * 30 
local vel = Instance.new("BodyGyro") 
vel.Parent = Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame 
ss(0.7) 
con1=part13.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 
for i = 0 , 1 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5+1.1-0.55*i,0.5+0.5-0.25*i,-0.5-0.3+0.15*i) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.5*i,1.57,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
end 
ss(0.7) 
for i = 0 , 1 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5+0.55-0.55*i,0.5+0.25-0.25*i,-0.5-0.15+0.15*i) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.5+1.5*i,1.57,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
end 
vel.Parent = nil 
vel2.Parent = nil 
wait(0.2) 
con1:disconnect() 
attack = false 
end 

function castone() 
if mana >= 10 then 
attack = true 
combo = 1 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(2*i,0,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(0.8) 
local testbrick = Instance.new("Part") 
testbrick.Parent = Character 
testbrick.Anchored = true 
testbrick.Transparency = 1 
testbrick.CFrame = Torso.CFrame * CFrame.new(0,0,-3) 
coroutine.resume(coroutine.create(function() 
for i = 0,5 do 
wait(0.1) 
	mana = mana - 2 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - testbrick.Position;
		local mag = targ.magnitude;
		if mag <= 3 and c[i].Name ~= Player.Name then 
		Damagefunc1(head,5,1) 
		end 
		end 
		end 
	end 
magicsound(1.5) 
derp = math.random(1,2) 
if derp == 1 then 
MMMAGIC(Head,2,2,2,math.random()+math.random(),math.random()+math.random(),-3,BrickColor.new("White")) 
else 
MMMAGIC(Head,2,2,2,-math.random()-math.random(),-math.random()-math.random(),-3,BrickColor.new("White")) 
end 
end 
testbrick.Parent = nil 
end)) 
for i = 0,1,0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(2-1*i,0,1-2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1,0,1-1.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.3) 
attack = false 
end 
end 

function casttwo() 
if mana >= 5 then 
attack = true 
combo = 2 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,-1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1+2*i,0,-0.5+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
mana = mana - 5 
local testbrick = Instance.new("Part") 
testbrick.Parent = Character 
testbrick.Anchored = true 
testbrick.Transparency = 1 
testbrick.CFrame = Torso.CFrame * CFrame.new(1.5,0,-3.6) 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - testbrick.Position;
		local mag = targ.magnitude;
		if mag <= 3 and c[i].Name ~= Player.Name then 
--		Damagefunc1(head,5,1) 
		UpBlast(head,math.random(10,20))
		end 
		end 
		end 
	end 
magicsound(1.3) 
EVENMOARMAGIX(Torso,1,6,1,1.5,-3,-3.6,0,0,0,BrickColor.new("Black")) 
WaveEffect(Torso,1.5,3,1.5,1.5,-2,-3.6,0,0,0,BrickColor.new("Black")) 
for i = 0,1,0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-2*i,0,-1+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3-4.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
testbrick.Parent = nil 
attack = false 
end 
end 

function castthree() 
if mana >= 20 then 
attack = true 
combo = 3 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-1+2.57*i,0,0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-1.5+3.07*i,0,-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
local bawlofdewm1 = Instance.new("Part") 
bawlofdewm1.formFactor = 1 
bawlofdewm1.Parent = Character 
bawlofdewm1.CanCollide = false 
bawlofdewm1.BrickColor = BrickColor.new("White") 
bawlofdewm1.Name = "Light Sphere" 
bawlofdewm1.Size = Vector3.new(1,1,1) 
bawlofdewm1.Position = Torso.Position 
local bawlofdewm2 = Instance.new("Part") 
bawlofdewm2.formFactor = 1 
bawlofdewm2.Parent = Character 
bawlofdewm2.CanCollide = false 
bawlofdewm2.BrickColor = BrickColor.new("Black") 
bawlofdewm2.Name = "Dark Sphere" 
bawlofdewm2.Size = Vector3.new(1,1,1) 
bawlofdewm2.Position = Torso.Position 
local bawlmesh1 = Instance.new("SpecialMesh") 
bawlmesh1.Parent = bawlofdewm1 
bawlmesh1.MeshType = "Sphere" 
bawlmesh1.Scale = Vector3.new(0.2,0,0.2) 
local bawlmesh2 = Instance.new("SpecialMesh") 
bawlmesh2.Parent = bawlofdewm2 
bawlmesh2.MeshType = "Sphere" 
bawlmesh2.Scale = Vector3.new(0.2,0,0.2) 
local bawlweld1 = Instance.new("Weld") 
bawlweld1.Parent = bawlofdewm1 
bawlweld1.Part0 = bawlofdewm1 
bawlweld1.Part1 = LeftArm 
bawlweld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,-0.9) * CFrame.new(0,1,0) 
bawlweld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local bawlweld2 = Instance.new("Weld") 
bawlweld2.Parent = bawlofdewm2 
bawlweld2.Part0 = bawlofdewm2 
bawlweld2.Part1 = bawlofdewm1 
bawlweld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.2,0) 
bawlweld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wait(0.5) 
for i = 0,1,0.1 do 
wait(0) 
mana = mana - 2 
bawlmesh1.Scale = bawlmesh1.Scale + Vector3.new(0.2,0.2,0.2) 
bawlmesh2.Scale = bawlmesh2.Scale + Vector3.new(0.2,0.2,0.2) 
end 
abscond(0.8) 
bawlweld1.Parent = nil 
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = bawlofdewm1 
vel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel2.velocity = Player.Character.Head.CFrame.lookVector * 10 
coroutine.resume(coroutine.create(function() 
for i = 0,3,0.1 do 
wait() 
MMMAGIC(bawlofdewm1,2,2,2,0,0,0,BrickColor.new("White")) 
MMMAGIC(bawlofdewm2,2,2,2,0,0,0,BrickColor.new("Black")) 
end 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - bawlofdewm1.Position;
		local mag = targ.magnitude;
		if mag <= 5 and c[i].Name ~= Player.Name then 
--		Damagefunc1(head,5,1) 
		UpBlast(head,math.random(30,60))
		end 
		end 
		end 
	end 
magicsound(1) 
EVENMOARMAGIX(bawlofdewm1,3,9,3,0,0,0,math.rad(90),0,0,BrickColor.new("Black")) 
WaveEffect(bawlofdewm1,5,6,5,0,0,0,-math.rad(90),0,0,BrickColor.new("Black")) 
BlastEffect(bawlofdewm1,5,9,5,0,0,0,-math.rad(90),0,0,BrickColor.new("White")) 
bawlofdewm1.Parent = nil 
bawlofdewm2.Parent = nil 
end)) 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,0.5-1.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-0.5+1.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(1) 
--[[bawlofdewm1.Parent = nil 
bawlofdewm2.Parent = nil ]]
attack = false 
end 
end 

function castfour() 
if mana >= 5 then 
attack = true 
combo = "castfour" 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+2.5*i,0,-1+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1,0,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
mana = mana - 5 
local testbrick = Instance.new("Part") 
testbrick.Parent = Character 
testbrick.Anchored = true 
testbrick.Transparency = 1 
testbrick.CFrame = Torso.CFrame * CFrame.new(-1.5,0,-3.6) 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - testbrick.Position;
		local mag = targ.magnitude;
		if mag <= 3 and c[i].Name ~= Player.Name then 
--		Damagefunc1(head,5,1) 
		UpBlast(head,math.random(10,20))
		end 
		end 
		end 
	end 
magicsound(1.3) 
EVENMOARMAGIX(Torso,1,6,1,-1.5,-3,-3.6,0,0,0,BrickColor.new("White")) 
WaveEffect(Torso,1.5,3,1.5,-1.5,-2,-3.6,0,0,0,BrickColor.new("White")) 
for i = 0,1,0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5-5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-2*i,0,0.5-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
testbrick.Parent = nil 
attack = false 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
end 
end 

function castfive() 
attack = true 
combo = "castfive" 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,-1-0.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,0.5+1.07*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
--[[local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Player.Character.Torso
vel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel2.velocity = Player.Character.Head.CFrame.lookVector * 15 ]] 
local vel = Instance.new("BodyGyro") 
vel.Parent = Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame 
for i = 0,1,0.1 do 
wait(0.05) 
magicsound(2) 
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(720)*i,0) 
--[[MMMAGIC(LeftArm,3,3,3,0,-1,0,BrickColor.new("White")) 
MMMAGIC(RightArm,3,3,3,0,-1,0,BrickColor.new("Black")) ]]
EVENMOARMAGIX(LeftArm,3,3,3,0,-1,0,0,0,0,BrickColor.new("White")) 
EVENMOARMAGIX(RightArm,3,3,3,0,-1,0,0,0,0,BrickColor.new("Black")) 
end 
vel.Parent = nil 
--vel2.Parent = nil 
wait(1) 
combo = 0 
attack = false 
end 

function wingbladeslashone() 
attack = true 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = LeftArm 
wingweld2.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0)  
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = RightArm 
wingweld5.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0)  
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
con1=wingblade5.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 
ss(1) 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.57*i,0,-3+2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+0.33*i,-1*i,3-5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
con1:disconnect() 
con1=wingblade2.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 
ss(1.2) 
for i = 0,1,0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,1.57*i,-1+3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2-1*i,-1+1*i,-2+3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
con1:disconnect() 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+2*i,1.57-1.57*i,2-1.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+2*i,0,1-1.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1=wingblade2.Touched:connect(function(hit) Damagefunc1(hit,40,10) end) 
con2=wingblade5.Touched:connect(function(hit) Damagefunc1(hit,40,10) end) 
wait(0.1) 
ss(0.8) 
for i = 0,1,0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3-4*i,0,0.5-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3-4*i,0,-0.5+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
con2:disconnect() 
WingBladeEffect(0,1,0,1,0,0) 
wingblade2.Transparency = 1 
wingblade5.Transparency = 1 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = Torso 
wingweld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,0,-3) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0,-0.2,0) * CFrame.new(0,0,0) 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = Torso 
wingweld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,0,-3) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(0,0.2,0) * CFrame.new(0,0,0) 
attack = false 
end 

function wingbladeslashtwo() 
attack = true 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+0.5*i,0,-0.5+0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+0.5*i,0,0.5-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = LeftArm 
wingweld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0)  
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld6.Parent = wingblade6 
wingweld6.Part0 = wingblade6 
wingweld6.Part1 = RightArm 
wingweld6.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0)  
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 

wait(0.1) 
ss(1) 
for i = 0,1,0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.5*i,0,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+0.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wingweld3.Parent = nil 
coroutine.resume(coroutine.create(function() 
local wingvel = Instance.new("BodyGyro") 
wingvel.Parent = wingblade3 
wingvel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
wingvel.P = 20e+003 
wingCF = wingblade3.CFrame 
local wingvel2 = Instance.new("BodyVelocity")
wingvel2.Parent = wingblade3 
wingvel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
wingvel2.velocity = Player.Character.Head.CFrame.lookVector * 70 
con1=wingblade3.Touched:connect(function(hit) Damagefunc1(hit,40,10) end) 
for i = 0,1,0.05 do 
wait() 
wingvel.cframe = wingCF * CFrame.fromEulerAnglesXYZ(math.rad(360)*i,0,0) 
end 
con1:disconnect() 
WingBladeEffect(0,0,1,0,0,0) 
wingvel2.Parent = nil 
wingblade3.Parent = nil 
wingvel.Parent = nil 
wingvel2.Parent = nil 
wait(0.5) 
wingblade3.Parent = modelzorz 
wingblade3.Transparency = 1 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = Torso 
wingweld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,0.5,-3.3) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0.5,-0.2,0) * CFrame.new(0,0,0) 
end)) 
wait(0.1) 
ss(1) 
for i = 0,1,0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.5-2.5*i,0,1-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.5*i,0,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wingweld6.Parent = nil 
coroutine.resume(coroutine.create(function() 
local wingvel = Instance.new("BodyGyro") 
wingvel.Parent = wingblade6 
wingvel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
wingvel.P = 20e+003 
wingCF = wingblade6.CFrame 
local wingvel2 = Instance.new("BodyVelocity")
wingvel2.Parent = wingblade6 
wingvel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
wingvel2.velocity = Player.Character.Head.CFrame.lookVector * 70 
con2=wingblade6.Touched:connect(function(hit) Damagefunc1(hit,40,10) end) 
for i = 0,1,0.05 do 
wait() 
wingvel.cframe = wingCF * CFrame.fromEulerAnglesXYZ(math.rad(360)*i,0,0) 
end 
con2:disconnect() 
WingBladeEffect(0,0,0,0,0,1) 
wingvel2.Parent = nil 
wingblade6.Parent = nil 
wingvel.Parent = nil 
wingvel2.Parent = nil 
wait(0.5) 
wingblade6.Parent = modelzorz 
wingblade6.Transparency = 1 
wingweld6.Parent = wingblade6 
wingweld6.Part0 = wingblade6 
wingweld6.Part1 = Torso 
wingweld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,0.5,-3.3) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(0.5,0.2,0) * CFrame.new(0,0,0) 
end)) 
wait(0.1) 
attack = false 
end 

function wingbladeslashthree() 
attack = true 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5-1.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.5-4*i,0,-1+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = LeftArm 
wingweld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0)  
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = RightArm 
wingweld4.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0)  
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-3+4.57*i,0,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-3+4.57*i,0,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wingweld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1,0) 
wingweld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1,0) 
con1=wingblade1.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 
con2=wingblade4.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
ss(1.5) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-3+4.57,0,1-3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-3+4.57,0,-1+3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wingweld4.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(600)*i,0) * CFrame.new(0,1,0) 
wingweld1.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(600)*i,0) * CFrame.new(0,1,0) 
end 
con1:disconnect() 
con2:disconnect() 
wingblade1.Transparency = 1 
wingblade4.Transparency = 1 
WingBladeEffect(1,0,0,1,0,0) 
wait(0.1) 
wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = Torso 
wingweld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,-0.5,-3.3) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-0.5,-0.2,0) * CFrame.new(0,0,0) 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = Torso 
wingweld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,-0.5,-3.3) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(-0.5,0.2,0) * CFrame.new(0,0,0) 
attack = false 
end 

function wingbladeslashfour() 
attack = true 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-2+3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,2-0.43*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wingblade1.Transparency = 0.4 
wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = Torso 
wingweld1.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(math.rad(180),0,0) * CFrame.new(0,0,0) 
wingblade2.Transparency = 0.4 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = Torso 
wingweld2.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(math.rad(180),1,0) * CFrame.new(0,0,0) 
wingblade3.Transparency = 0.4 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = Torso 
wingweld3.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(math.rad(180),2,0) * CFrame.new(0,0,0) 
wingblade4.Transparency = 0.4 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = Torso 
wingweld4.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(math.rad(180),3,0) * CFrame.new(0,0,0) 
wingblade5.Transparency = 0.4 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = Torso 
wingweld5.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(math.rad(180),4,0) * CFrame.new(0,0,0) 
wingblade6.Transparency = 0.4 
wingweld6.Parent = wingblade6 
wingweld6.Part0 = wingblade6 
wingweld6.Part1 = Torso 
wingweld6.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(math.rad(180),5,0) * CFrame.new(0,0,0) 
WingBladeEffect(1,1,1,1,1,1) 
wait(0.2) 
con1=wingblade1.Touched:connect(function(hit) Damagefunc1(hit,10,15) end) 
con2=wingblade2.Touched:connect(function(hit) Damagefunc1(hit,10,15) end) 
con3=wingblade3.Touched:connect(function(hit) Damagefunc1(hit,10,15) end) 
con4=wingblade4.Touched:connect(function(hit) Damagefunc1(hit,10,15) end) 
con5=wingblade5.Touched:connect(function(hit) Damagefunc1(hit,10,15) end) 
con6=wingblade6.Touched:connect(function(hit) Damagefunc1(hit,10,15) end) 
for i = 0,1,0.1 do 
wait() 
ss(1.2) 
wingweld1.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
wingweld2.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
wingweld3.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
wingweld4.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
wingweld5.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
wingweld6.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-2+3-3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57-2.43*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
con4:disconnect() 
con5:disconnect() 
con6:disconnect() 
wait(0.3) 
wingblade1.Transparency = 1 
wingblade2.Transparency = 1 
wingblade3.Transparency = 1 
wingblade4.Transparency = 1 
wingblade5.Transparency = 1 
wingblade6.Transparency = 1 
WingBladeEffect(1,1,1,1,1,1) 
wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = Torso 
wingweld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,-0.5,-3.3) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-0.5,-0.2,0) * CFrame.new(0,0,0) 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = Torso 
wingweld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,0,-3) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0,-0.2,0) * CFrame.new(0,0,0) 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = Torso 
wingweld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,0.5,-3.3) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0.5,-0.2,0) * CFrame.new(0,0,0) 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = Torso 
wingweld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,-0.5,-3.3) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(-0.5,0.2,0) * CFrame.new(0,0,0) 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = Torso 
wingweld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,0,-3) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(0,0.2,0) * CFrame.new(0,0,0) 
wingweld6.Parent = wingblade6 
wingweld6.Part0 = wingblade6 
wingweld6.Part1 = Torso 
wingweld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,0.5,-3.3) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(0.5,0.2,0) * CFrame.new(0,0,0) 
attack = false 
end 

function ArsSolum() 
attack = true 
ss(1) 
con1=part13.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90)-0.5+0.5*i,0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(0.5+1,-1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7+2.2*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.7-0.5*i,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5+3*i,-1.57+1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(0.9) 
con1=part13.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4.5-5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
for i = 0,1,0.1 do 
wait() 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90)+math.rad(180)*i,0,math.rad(90)) * CFrame.new(0,1,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4.5-5,0,-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(1.1) 
con1=part13.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 
for i = 0,1,0.2 do 
wait() 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90)+math.rad(180),0,math.rad(90)) * CFrame.new(0,1,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+3.5*i,-1*i,-1+2.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
for i = 0,1,0.1 do 
wait() 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90)+math.rad(180)-math.rad(180)*i,0,math.rad(90)) * CFrame.new(0,1,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(3+1*i,-1+1*i,1.5-1.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(0.8) 
con1=part13.Touched:connect(function(hit) Damagefunc1(hit,30,10) end) 
for i = 0,1,0.2 do 
wait() 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0,1,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,-math.rad(90),0) * CFrame.new(-0.7,0,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4-5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
wait(0.5) 
attack = false 
end 

function ShieldDash() 
if mana >= 20 then 
attack = true 
gairo.Parent = Head
gairo.cframe = Head.CFrame 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.7*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.9*i,0,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,-1.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
mana = mana - 20 
ss(0.5) 
con1=prt1.Touched:connect(function(hit) Bash(hit,40) end) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Player.Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Player.Character.Head.CFrame.lookVector * 100 
for i = 0,1,0.2 do 
wait() 
if element == "Light" then 
MMMAGIC(prt19,3,3,3,0,0,0,BrickColor.new("White")) 
MOREMAGIX(prt19,0,2,2,2,BrickColor.new("White")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("White")) 
else 
MMMAGIC(prt19,3,3,3,0,0,0,BrickColor.new("Black")) 
MOREMAGIX(prt19,0,2,2,2,BrickColor.new("Black")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Black")) 
end 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.7,0.5,-0.5-0.3*i) * CFrame.fromEulerAnglesXYZ(1.9,0,1-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5-0.3*i) * CFrame.fromEulerAnglesXYZ(1+0.57,0,-1.2+0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,1,0.2 do 
wait() 
if element == "Light" then 
MMMAGIC(prt19,3,3,3,0,0,0,BrickColor.new("White")) 
MOREMAGIX(prt19,0,2,2,2,BrickColor.new("White")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("White")) 
else 
MMMAGIC(prt19,3,3,3,0,0,0,BrickColor.new("Black")) 
MOREMAGIX(prt19,0,2,2,2,BrickColor.new("Black")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Black")) 
end 
end 
vel.Parent = nil 
for i = 0,1,0.2 do 
wait() 
if element == "Light" then 
MMMAGIC(prt19,3,3,3,0,0,0,BrickColor.new("White")) 
MOREMAGIX(prt19,0,2,2,2,BrickColor.new("White")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("White")) 
else 
MMMAGIC(prt19,3,3,3,0,0,0,BrickColor.new("Black")) 
MOREMAGIX(prt19,0,2,2,2,BrickColor.new("Black")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Black")) 
end 
end 
if mode == "Normal" then 
wait(0.3) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5-0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.7-0.7*i,0.5,-0.5-0.3+0.8*i) * CFrame.fromEulerAnglesXYZ(1.9-1.9*i,0,1-0.3-0.7*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5-0.3+0.8*i) * CFrame.fromEulerAnglesXYZ(1+0.57-0.57*i,0,-1.2+0.3+0.9*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
gairo.Parent = nil 
wait(0.2) 
con1:disconnect() 
elseif mode == "Attack" then 
if holddash == true and mana >= 20 then 
con1:disconnect() 
gairo.Parent = nil 
wait(0.5) 
gairo.Parent = Head
gairo.cframe = Head.CFrame 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5-1*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.7-0.7*i,0.5,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(1.9,0,0.7-1.6*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-0.9+2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(0.8) 
con1=part13.Touched:connect(function(hit) Damagefunc2(hit,40,25) end) 
mana = mana - 20 
local vel = Instance.new("BodyVelocity")
vel.Parent = Player.Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Player.Character.Head.CFrame.lookVector * 100 
for i = 0,1,0.2 do 
wait() 
if element == "Light" then 
MMMAGIC(part14,3,3,3,0,0,0,BrickColor.new("White")) 
MOREMAGIX(part14,0,2,2,2,BrickColor.new("White")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("White")) 
else 
MMMAGIC(part14,3,3,3,0,0,0,BrickColor.new("Black")) 
MOREMAGIX(part14,0,2,2,2,BrickColor.new("Black")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Black")) 
end 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90)+math.rad(90)*i,0,math.rad(90)-math.rad(90)*i) * CFrame.new(0,1,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5-1) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.9-0.33*i,0,0.7-1.5+0.4*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-0.9+2) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,1,0.2 do 
wait() 
if element == "Light" then 
MMMAGIC(part14,3,3,3,0,0,0,BrickColor.new("White")) 
MOREMAGIX(part14,0,2,2,2,BrickColor.new("White")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("White")) 
else 
MMMAGIC(part14,3,3,3,0,0,0,BrickColor.new("Black")) 
MOREMAGIX(part14,0,2,2,2,BrickColor.new("Black")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Black")) 
end 
end 
vel.Parent = nil 
for i = 0,1,0.2 do 
wait() 
if element == "Light" then 
MMMAGIC(part14,3,3,3,0,0,0,BrickColor.new("White")) 
MOREMAGIX(part14,0,2,2,2,BrickColor.new("White")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("White")) 
else 
MMMAGIC(part14,3,3,3,0,0,0,BrickColor.new("Black")) 
MOREMAGIX(part14,0,2,2,2,BrickColor.new("Black")) 
DashEf(Head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),BrickColor.new("Black")) 
end 
end 
wait(0.3) 
con1:disconnect() 
for i = 0,1,0.1 do 
wait() 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90)+math.rad(90)-math.rad(90)*i,0,math.rad(90)-math.rad(90)+math.rad(90)*i) * CFrame.new(0,1,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-0.5+0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.9-0.33-1.57*i,0,1.2-1.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.57*i,0,1.1-1.1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
gairo.Parent = nil 
else 
wait(0.3) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0.5-0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.9-0.33-1.57*i,0,1.2-1.2*i) 
--LW.C0 = CFrame.new(-1.5+0.7-0.7*i,0.5,-0.5-0.3+0.8*i) * CFrame.fromEulerAnglesXYZ(1.9-1.9*i,0,1-0.3-0.7*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5-0.3+0.8*i) * CFrame.fromEulerAnglesXYZ(1+0.57-0.57*i,0,-1.2+0.3+0.9*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
gairo.Parent = nil 
wait(0.2) 
con1:disconnect() 
end 
end 
attack = false 
end 
end 

function guard() 
attack = true 
guarding = true 
Character.Humanoid.WalkSpeed = 20 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.8*i,0.5+0.2*i,-0.8*i) * CFrame.fromEulerAnglesXYZ(2.07*i,0,1.4*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.8*i,0.5,-0.8*i) * CFrame.fromEulerAnglesXYZ(0.7+0.87*i,0,-1.4*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
humanoid = Character.Humanoid 
lhh = humanoid.Health

while guarding == true do 
wait() 

if humanoid.Health < lhh then

print(lhh - humanoid.Health) 
test = lhh - humanoid.Health 
if mana < 400 then 
mana = mana + math.random(test, test*50)  
end 
if mana > 400 then 
mana = 400 
end 
if mode == "Normal" then 
humanoid.Health = lhh - (test * 50) 
elseif mode == "Attack" then 
humanoid.Health = lhh - (test * 50) 
end 
lhh = humanoid.Health
shieldbash(1) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Player.Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1000
vel.velocity = Player.Character.Torso.CFrame.lookVector * -20 
velo = -20 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.8,0.5+0.2,-0.8) * CFrame.fromEulerAnglesXYZ(2.07,0,1.4+0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.8,0.5,-0.8) * CFrame.fromEulerAnglesXYZ(0.7+0.87,0,-1.4-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
end 
for i = 0,1,0.05 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.8,0.5+0.2,-0.8) * CFrame.fromEulerAnglesXYZ(2.07,0,1.4+0.5-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.8,0.5,-0.8) * CFrame.fromEulerAnglesXYZ(0.7+0.87,0,-1.4-0.5+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
velo = velo + 0.5 
vel.velocity = Player.Character.Torso.CFrame.lookVector * velo 
end 
vel.Parent = nil 

end

wait(0.1)
end 
Character.Humanoid.WalkSpeed = 16 
if bashing == false then 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.8-0.8*i,0.5+0.2-0.2*i,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(2.07-2.07*i,0,1.4-1.4*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.8+0.8*i,0.5,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(0.7+0.87-0.87*i,0,-1.4+1.4*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.7,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
attack = false 
end 
end 

function Bashem() 
attack = true 
bashing = true 
guarding = false 
if mode == "Normal" then 
ss(0.7) 
con1=prt1.Touched:connect(function(hit) Bash(hit,40) end) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.8-0.8*i,0.5+0.2-0.2*i,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(2.07,0,1.4-3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.8+0.8*i,0.5,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(0.7+0.87,0,-1.4+3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.15) 
con1:disconnect() 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.07-2.07*i,0,-1.6+1.6*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.87*i,0,1.6-1.6*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
elseif mode == "Attack" then 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.8+0.3*i,0.5+0.2+0.3*i,-0.8) * CFrame.fromEulerAnglesXYZ(2.07-0.5*i,0,1.4+0.17*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57*i,0) 
RW.C0 = CFrame.new(1.5-0.8+0.8*i,0.5,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.4+2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1=part13.Touched:connect(function(hit) Damagefunc2(hit,40,25) end) 
ss(1.1) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+1.1-1.1*i,0.5+0.5-0.5*i,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(2.07-0.5,0,1.4+0.17) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(4*i,1.57,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.4+2) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.15) 
con1:disconnect() 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,1.57-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(4-4*i,1.57-1.57*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.57*i,0,-1.4+2-0.6*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
bashing = false 
attack = false 
end 

function WingBladeStance(seeing) 
wingblade1.Parent = modelzorz 
wingblade2.Parent = modelzorz 
wingblade3.Parent = modelzorz 
wingblade4.Parent = modelzorz 
wingblade5.Parent = modelzorz 
wingblade6.Parent = modelzorz 
wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = Torso 
wingweld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,-0.5,-3.3) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-0.5,-0.2,0) * CFrame.new(0,0,0) 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = Torso 
wingweld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,0,-3) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0,-0.2,0) * CFrame.new(0,0,0) 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = Torso 
wingweld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,0.5,-3.3) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0.5,-0.2,0) * CFrame.new(0,0,0) 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = Torso 
wingweld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,-0.5,-3.3) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(-0.5,0.2,0) * CFrame.new(0,0,0) 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = Torso 
wingweld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,0,-3) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(0,0.2,0) * CFrame.new(0,0,0) 
wingweld6.Parent = wingblade6 
wingweld6.Part0 = wingblade6 
wingweld6.Part1 = Torso 
wingweld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,0.5,-3.3) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(0.5,0.2,0) * CFrame.new(0,0,0) 
if seeing == true then 
wingblade1.Transparency = 0.4 
wingblade2.Transparency = 0.4 
wingblade3.Transparency = 0.4 
wingblade4.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingblade6.Transparency = 0.4 
else 
wingblade1.Transparency = 1 
wingblade2.Transparency = 1 
wingblade3.Transparency = 1 
wingblade4.Transparency = 1 
wingblade5.Transparency = 1 
wingblade6.Transparency = 1 
end 
end 

function StyleChange() 
attack = true 
if mode == "Normal" then 
Character.Humanoid.WalkSpeed = 0 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
Style = "MagicMayhem" 
coroutine.resume(coroutine.create(function() 
while Style == "MagicMayhem" do 
wait(0.1) 
MMMAGIC(LeftArm,2,2,2,0,-1,0,BrickColor.new("White")) 
MMMAGIC(RightArm,2,2,2,0,-1,0,BrickColor.new("Black")) 
end 
end)) 
magicsound(1) 
BlastEffect(Torso,4,5,4,0,-2,0,0,0,0,BrickColor.new("White")) 
WaveEffect(Torso,4,5,4,0,-2,0,0,0,0,BrickColor.new("Black")) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.3+0.6*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-3.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-3.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
Character.Humanoid.WalkSpeed = 16 
elseif mode == "Attack" then 
Character.Humanoid.WalkSpeed = 0 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+1.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
WingBladeStance(true) 
magicsound(1) 
if element == "Light" then 
BlastEffect(Torso,4,5,4,0,-2,0,0,0,0,BrickColor.new("White")) 
WaveEffect(Torso,4,5,4,0,-2,0,0,0,0,BrickColor.new("White")) 
else 
BlastEffect(Torso,4,5,4,0,-2,0,0,0,0,BrickColor.new("Black")) 
WaveEffect(Torso,4,5,4,0,-2,0,0,0,0,BrickColor.new("Black")) 
end 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.3+0.6*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-3.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-3.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
--[[for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2+0.5*i,1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
sheath(2.25) 
wait(0.05) 
weld1.Part0 = part1 
weld1.Part1 = prt1 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.7,0.2) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,-1.57+1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7+0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2+0.5,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end ]]
hideanim() 
Style = "WingBlade" 
Character.Humanoid.WalkSpeed = 16 
end 
attack = false 
end 

function idleanim() 
if attack == false then 
--print("MOARDERP") 
for i = 0,1,0.05 do 
wait() 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-0.5+0.3*i,-0.2,0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0.2*i,-0.2,0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0.5+0.1*i,-0.2,0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(-0.5+0.3*i,0.2,0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(0.2*i,0.2,0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(0.5+0.1*i,0.2,0) * CFrame.new(0,0,0) 
end 
wait(0.5) 
for i = 0,1,0.05 do 
wait() 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-0.5+0.3-0.5*i,-0.2,0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0.2-0.3*i,-0.2,0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0.5+0.1-0.1*i,-0.2,0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(-0.5+0.3-0.5*i,0.2,0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(0.2-0.3*i,0.2,0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(0.5+0.1-0.1*i,0.2,0) * CFrame.new(0,0,0) 
end 
wait(0.1) 
for i = 0,1,0.05 do 
wait() 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-0.5-0.2+0.2*i,-0.2,0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(-0.1+0.1*i,-0.2,0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0.5,-0.2,0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(-0.5-0.2+0.2*i,0.2,0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(-0.1+0.1*i,0.2,0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(0.5,0.2,0) * CFrame.new(0,0,0) 
end 
end 
end 

function MegaHit() 
if mana >= 5 then 
attack = true 
gairo.Parent = Head
gairo.cframe = Head.CFrame 
Charge(2) 
for i = 0,1,0.1 do 
wait() 
if element == "Light" then 
MMMAGIC(LeftArm,3,3,3,0,-1,0,BrickColor.new("White")) 
elseif element == "Dark" then 
MMMAGIC(LeftArm,3,3,3,0,-1,0,BrickColor.new("Black")) 
end 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2*i,0,-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,1,0.2 do 
wait() 
if element == "Light" then 
MMMAGIC(LeftArm,3,3,3,0,-1,0,BrickColor.new("White")) 
elseif element == "Dark" then 
MMMAGIC(LeftArm,3,3,3,0,-1,0,BrickColor.new("Black")) 
end 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-0.5) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2-3*i,0,-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
mana = mana - 5 
local testbrick = Instance.new("Part") 
testbrick.Parent = modelzorz 
testbrick.Anchored = true 
testbrick.Transparency = 1 
testbrick.CFrame = Torso.CFrame * CFrame.new(-3,0,-2) 
coroutine.resume(coroutine.create(function() 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - testbrick.Position;
		local mag = targ.magnitude;
		if mag <= 3 and c[i].Name ~= Player.Name then 
		UpBlast(head,math.random(20,30))
		end 
		end 
		end 
	end 
end)) 
magicsound(2) 
if element == "Light" then 
EVENMOARMAGIX(Torso,1,6,1,-3,-2,-2,0,0,0,BrickColor.new("White")) 
WaveEffect(Torso,2.5,3,2.5,-3,-2,-2,0,0,0,BrickColor.new("White")) 
else 
EVENMOARMAGIX(Torso,2,5,2,-3,-2,-2,0,0,0,BrickColor.new("Black")) 
WaveEffect(Torso,1.5,4,1.5,-3,-2,-2,0,0,0,BrickColor.new("Black")) 
end 
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-0.5+0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+1*i,0,-0.5+0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
testbrick.Parent = nil 
gairo.Parent = nil 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
attack = false 
end 
end 

function SwordRaid() 
if mana >= 20 then 
attack = true 
local UltimaPart = Instance.new("Part") 
UltimaPart.Parent = modelzorz 
UltimaPart.CanCollide = false 
UltimaPart.Position = Torso.Position 
UltimaPart.Transparency = 1 
local UltimaWeld = Instance.new("Weld") 
UltimaWeld.Parent = UltimaPart 
UltimaWeld.Part0 = UltimaPart 
UltimaWeld.Part1 = Torso 
UltimaWeld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
UltimaWeld.C1 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0,0) 
local wingvel2 = Instance.new("BodyVelocity")
wingvel2.Parent = UltimaPart
WingBladeEffect(1,1,1,1,1,1) 
wingblade1.Transparency = 1 
wingblade2.Transparency = 1 
wingblade3.Transparency = 1 
wingblade4.Transparency = 1 
wingblade5.Transparency = 1 
wingblade6.Transparency = 1 
wait(0.4) 
wingblade1.Transparency = 0.4 
wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = UltimaPart 
wingweld1.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(0,math.rad(90),0) * CFrame.new(0,0,0) 
wingblade2.Transparency = 0.4 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = UltimaPart 
wingweld2.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(1,math.rad(90),0) * CFrame.new(0,0,0) 
wingblade3.Transparency = 0.4 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = UltimaPart 
wingweld3.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(2,math.rad(90),0) * CFrame.new(0,0,0) 
wingblade4.Transparency = 0.4 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = UltimaPart 
wingweld4.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(3,math.rad(90),0) * CFrame.new(0,0,0) 
wingblade5.Transparency = 0.4 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = UltimaPart 
wingweld5.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(4,math.rad(90),0) * CFrame.new(0,0,0) 
wingblade6.Transparency = 0.4 
wingweld6.Parent = wingblade6 
wingweld6.Part0 = wingblade6 
wingweld6.Part1 = UltimaPart 
wingweld6.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(5,math.rad(90),0) * CFrame.new(0,0,0) 
WingBladeEffect(1,1,1,1,1,1) 
con1=wingblade1.Touched:connect(function(hit) Damagefunc1(hit,20,15) end) 
con2=wingblade2.Touched:connect(function(hit) Damagefunc1(hit,20,15) end) 
con3=wingblade3.Touched:connect(function(hit) Damagefunc1(hit,20,15) end) 
con4=wingblade4.Touched:connect(function(hit) Damagefunc1(hit,20,15) end) 
con5=wingblade5.Touched:connect(function(hit) Damagefunc1(hit,20,15) end) 
con6=wingblade6.Touched:connect(function(hit) Damagefunc1(hit,20,15) end) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
ss(1.2) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(1+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(2+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(3+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(4+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(5+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,1-2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,1-2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.3*i,0.5,-0.3*i) * CFrame.fromEulerAnglesXYZ(1.57+0.43*i,0,-1+1.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.2*i,0.5,-0.5+0.2*i) * CFrame.fromEulerAnglesXYZ(1.57+0.43*i,0,-1+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
mana = mana - 20 
UltimaWeld.Parent = nil  
wingvel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1 
wingvel2.velocity = Player.Character.Head.CFrame.lookVector * 70 
coroutine.resume(coroutine.create(function() 
for i = 0,3,0.1 do 
wait() 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(1+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(2+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(3+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(4+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(5+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
ss(1.2) 
end 
wingvel2.Parent = nil 
UltimaPart.Parent = nil 
WingBladeEffect(1,1,1,1,1,1) 
wingblade1.Transparency = 1 
wingblade2.Transparency = 1 
wingblade3.Transparency = 1 
wingblade4.Transparency = 1 
wingblade5.Transparency = 1 
wingblade6.Transparency = 1 
wait(0.4) 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
con4:disconnect() 
con5:disconnect() 
con6:disconnect() 
WingBladeStance(true) 
WingBladeEffect(1,1,1,1,1,1) 
end)) 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.3-0.3*i,0.5,-0.3+0.3*i) * CFrame.fromEulerAnglesXYZ(2-3*i,0,0.5-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.3+0.3*i,0.5,-0.3+0.3*i) * CFrame.fromEulerAnglesXYZ(2-3*i,0,-0.5+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.5) 
attack = false 
end 
end 

function SwordRage() 
attack = true 
SwordRaging = true 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-2*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-3*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = LeftArm 
wingweld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0)  
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = RightArm 
wingweld4.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0)  
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
con1=wingblade1.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con4=wingblade4.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
ss(1.2) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-2+4*i,0,0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-2+3*i,0,0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
ss(1.2) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-2+4-1*i,0,0.5-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-2+3+1*i,0,0.5-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.05) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,-0.5-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(2-1*i,0,-0.5+1.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
ss(1) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,-1+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,1-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
WingBladeEffect(1,0,0,1,0,0) 
wingblade1.Transparency = 1 
wingblade4.Transparency = 1 
con1:disconnect() 
con4:disconnect() 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-2.57*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-2.57*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = LeftArm 
wingweld2.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0)  
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = RightArm 
wingweld5.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0)  
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
con2=wingblade2.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con5=wingblade5.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
ss(1) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-1+4*i,0,0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-1+4*i,0,-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(1) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(3-2.5*i,0,0.5-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(3-2.5*i,0,-0.5+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con2:disconnect() 
con5:disconnect() 
WingBladeEffect(0,1,0,0,1,0) 
wingblade2.Transparency = 1 
wingblade5.Transparency = 1 
wait(0.05) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5-1*i,0,-0.5+0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5-1*i,0,0.5-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = LeftArm 
wingweld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,2,-0.5)  
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld6.Parent = wingblade6 
wingweld6.Part0 = wingblade6 
wingweld6.Part1 = RightArm 
wingweld6.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,2,-0.5)  
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,1.57*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
end 
wait(0.1) 
con3=wingblade3.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con6=wingblade6.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
ss(1) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,-1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-1.5*i,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-1.5*i,0,0) 
end 
con3:disconnect() 
con6:disconnect() 
WingBladeEffect(0,0,1,0,0,1) 
wingblade3.Transparency = 1 
wingblade6.Transparency = 1 
wait(0.1) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,-1.57+1.57*i,-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,1.57-1.57*i,0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
end 
attack = false 
end 

function SwordRageZ() 
attack = true 
WingBladeEffect(1,1,0,1,1,0) 
wingblade1.Transparency = 0.4 
wingblade2.Transparency = 0.4 
wingblade4.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = LeftArm 
wingweld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0.5)  
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = RightArm 
wingweld4.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0.5)  
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = LeftArm 
wingweld2.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,-0.5)  
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = RightArm 
wingweld5.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,-0.5)  
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2*i,0,-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2*i,0,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1=wingblade1.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con2=wingblade2.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con4=wingblade4.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con5=wingblade5.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
ss(1) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2-0.43*i,0,-0.5+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2-0.43*i,0,0.5-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(1) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-0.5+1-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,0.5-1+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
con1:disconnect() 
con2:disconnect() 
con4:disconnect() 
con5:disconnect() 
WingBladeEffect(1,1,0,1,1,0) 
wingblade1.Transparency = 1 
wingblade2.Transparency = 1 
wingblade4.Transparency = 1 
wingblade5.Transparency = 1 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,-0.5+1-0.5-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,0.5-1+0.5+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 

function SwordRageX() 
attack = true 
WingBladeEffect(0,1,1,0,1,1) 
wingblade3.Transparency = 0.4 
wingblade6.Transparency = 0.4 
wingblade2.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = LeftArm 
wingweld2.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,3,0)  
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = LeftArm 
wingweld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0,2,-0.5)  
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,-1.57*i,-0.5+0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con2=wingblade2.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con3=wingblade3.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
ss(1.2) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,-1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
WingBladeEffect(0,1,1,0,0,0) 
wingblade3.Transparency = 1 
wingblade2.Transparency = 1 
con3:disconnect() 
con2:disconnect() 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,-1.57+1.57*i,-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1+1*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,1.57*i,0.5-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
end 
con5=wingblade5.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con6=wingblade6.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
ss(1.2) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2*i,0,0) 
end 
wait(0.1) 
WingBladeEffect(0,0,0,0,1,1) 
wingblade6.Transparency = 1 
wingblade5.Transparency = 1 
con6:disconnect() 
con5:disconnect() 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,1.57-1.57*i,0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1+1*i,0,0) 
end 
attack = false 
end 

function EndSwordRage() 
attack = true 
wait(0.1) 
WingBladeStance(true) 
WingBladeEffect(1,1,1,1,1,1) 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.5+0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1*i,0,0.5-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 

function MagicBarrage() 
attack = true 
if element == "Light" then 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(2*i,0,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
while barragehold == true and mana >= 0 do 
wait(0.1) 
mana = mana - math.random(0,10) 
ss(1+math.random()) 
LW.C0 = CFrame.new(-1.5+0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1+math.random(),0,math.random(-1,0)+math.random()) 
coroutine.resume(coroutine.create(function() 
slasheffect(LeftArm.CFrame*CFrame.new(0,-3,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)),0,10,nil) 
end)) 
end 
if mana <= 0 then 
mana = 0 
end 
else 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
local p = Instance.new("Part") 
p.Parent = Character 
p.Name = "TestBrick" 
p.CFrame = RightArm.CFrame*CFrame.new(0,1,0) 
p.CanCollide = false 
p.Transparency = 1 
local pweld = Instance.new("Weld") 
pweld.Parent = p 
pweld.Part0 = p 
pweld.Part1 = RightArm 
pweld.C0 = CFrame.new(0,1,0) 
coroutine.resume(coroutine.create(function() 
while p.Parent ~= nil do 
wait(0.05) 
MMMAGIC(p,4,4,4,0,0,0,BrickColor.new("Black")) 
EVENMOARMAGIX(p,3,3,3,0,0,0,math.random(-50,50),math.random(-50,50),math.random(-50,50),BrickColor.new("Black")) 
MOREMAGIX(p,0,2,2,2,BrickColor.new("Black")) 
end 
end)) 
DarkRiftF(p) 
p.Parent = nil 
end 
attack = false 
end 

function Regening() 
attack = true 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
while regening == true do 
wait(0.1) 
DifferentEffect() 
if mana >= 400 then 
mana = 400 
else 
Character.Humanoid.Health = Character.Humanoid.Health + 0.01 
mana = mana + 100 
end 
end 
attack = false 
end 

function Ultima() 
attack = true 
if mana == 400 then 
if Style == "MagicMayhem" then 
print("LOLOL ECLIPSE TIEM") 
for i = 0,1,0.05 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.5*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57*i,0,1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,2 do 
wait(0.8) 
magicsound(1) 
MMMAGIC(LeftArm,5,5,5,0,-1,0,BrickColor.new("White")) 
MMMAGIC(RightArm,5,5,5,0,-1,0,BrickColor.new("Black")) 
end 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.5+0.5*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57+2.17*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57-2.17*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
Charge(0.4) 
for i = 0,10,0.5 do 
wait(0.1) 
UltimaMMMAGIC(LeftArm,i,i,i,0,-1,0,BrickColor.new("White")) 
UltimaMMMAGIC(RightArm,i,i,i,0,-1,0,BrickColor.new("Black")) 
end 
coroutine.resume(coroutine.create(function() 
while Style == "MagicMayhem" do 
wait(0.1) 
UltimaMMMAGIC(LeftArm,10,10,10,0,-1,0,BrickColor.new("White")) 
UltimaMMMAGIC(RightArm,10,10,10,0,-1,0,BrickColor.new("Black")) 
end 
end)) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.5+0.5,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57+0.5*i,0,-1.57+2.17) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57+0.5*i,0,1.57-2.17) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.3) 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57-0.5+0.5,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57+0.5-1*i,0,-1.57+2.17) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57+0.5-1*i,0,1.57-2.17) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
mana = 400 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - Torso.Position;
		local mag = targ.magnitude;
		if mag <= 600 and c[i].Name ~= Player.Name then 
		UltimaMagicMayhemDamage(head,math.random(1000,2000))
		end 
		end 
		end 
	end 
Style = "Normal" 
MagicMayhemUltimaSounds() 
for i = 0,9,0.2 do 
wait() 
MMMAGIC(Torso,90,90,90,0,0,0,BrickColor.new("White")) 
MMMAGIC(Torso,90,90,90,0,0,0,BrickColor.new("Black")) 
EVENMOARMAGIX(Torso,80,80,80,0,0,0,0,0,0,BrickColor.new("White")) 
EVENMOARMAGIX(Torso,80,80,80,0,0,0,0,0,0,BrickColor.new("Black")) 
WaveEffect(Torso,70,70,70,0,0,0,0,math.random(-50,50),0,BrickColor.new("White")) 
WaveEffect(Torso,70,70,70,0,0,0,0,math.random(-50,50),0,BrickColor.new("Black")) 
MMMAGIC(Torso,5,5,5,math.random(-35,35),0,math.random(-35,35),BrickColor.new("White")) 
MMMAGIC(Torso,5,5,5,math.random(-35,35),0,math.random(-35,35),BrickColor.new("Black")) 
end 
coroutine.resume(coroutine.create(function() 
local clone = Instance.new("Part") 
clone.Parent = workspace 
clone.CFrame = Torso.CFrame 
clone.CanCollide = false 
clone.Transparency = 1 
clone.Anchored = true 
for i = 0,10,0.2 do 
wait(0.1) 
MMMAGIC(clone,1,1,1,math.random(-30,30),0,math.random(-30,30),BrickColor.new("White")) 
MMMAGIC(clone,1,1,1,math.random(-30,30),0,math.random(-30,30),BrickColor.new("Black")) 
end 
clone.Parent = nil 
end)) 
elseif Style == "WingBlade" then 
print("LOLOL MULTIVORTEX TIEM") 
mana = 0 
coroutine.resume(coroutine.create(function() 
while attack == true do 
wait() 
mana = 400 
end 
end)) 
Character.Humanoid.PlatformStand = true 
con1=wingblade1.Touched:connect(function(hit) Damagefunc1(hit,30,15) end) 
con2=wingblade2.Touched:connect(function(hit) Damagefunc1(hit,30,15) end) 
con3=wingblade3.Touched:connect(function(hit) Damagefunc1(hit,30,15) end) 
con4=wingblade4.Touched:connect(function(hit) Damagefunc1(hit,30,15) end) 
con5=wingblade5.Touched:connect(function(hit) Damagefunc1(hit,30,15) end) 
con6=wingblade6.Touched:connect(function(hit) Damagefunc1(hit,30,15) end) 
original = Head.CFrame 
bod = Instance.new("BodyPosition")
bod.position = Torso.Position 
bod.Parent = Torso
bod.maxForce = Vector3.new(4e+080, 4e+080, 4e+080) 
target = meh 
--bod.position = target.Position 
local b = Instance.new("BodyGyro") 
b.P=18000
b.D=600
b.maxTorque=Vector3.new(80000,80000000,80000)*50000000000000000000000000 
b.Parent = Head 
if target ~= nil then 
local dir = (target.Position - Head.Position).unit 
local spawnpos = Head.Position 
local pos = spawnpos + (dir * 1) 
b.cframe = CFrame.new(pos,  pos + dir) 
end 
local UltimaPart = Instance.new("Part") 
UltimaPart.Parent = modelzorz 
UltimaPart.CanCollide = false 
UltimaPart.Position = Torso.Position 
UltimaPart.Transparency = 1 
local UltimaWeld = Instance.new("Weld") 
UltimaWeld.Parent = UltimaPart 
UltimaWeld.Part0 = UltimaPart 
UltimaWeld.Part1 = Torso 
UltimaWeld.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
UltimaWeld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
WingBladeEffect(1,1,1,1,1,1) 
wingblade1.Transparency = 1 
wingblade2.Transparency = 1 
wingblade3.Transparency = 1 
wingblade4.Transparency = 1 
wingblade5.Transparency = 1 
wingblade6.Transparency = 1 
wait(0.4) 
wingblade1.Transparency = 0.4 
wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = UltimaPart 
wingweld1.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(0,math.rad(90),0) * CFrame.new(0,0,0) 
wingblade2.Transparency = 0.4 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = UltimaPart 
wingweld2.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(1,math.rad(90),0) * CFrame.new(0,0,0) 
wingblade3.Transparency = 0.4 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = UltimaPart 
wingweld3.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(2,math.rad(90),0) * CFrame.new(0,0,0) 
wingblade4.Transparency = 0.4 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = UltimaPart 
wingweld4.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(3,math.rad(90),0) * CFrame.new(0,0,0) 
wingblade5.Transparency = 0.4 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = UltimaPart 
wingweld5.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(4,math.rad(90),0) * CFrame.new(0,0,0) 
wingblade6.Transparency = 0.4 
wingweld6.Parent = wingblade6 
wingweld6.Part0 = wingblade6 
wingweld6.Part1 = UltimaPart 
wingweld6.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(5,math.rad(90),0) * CFrame.new(0,0,0) 
WingBladeEffect(1,1,1,1,1,1) 
for i = 0,1,0.1 do 
wait() 
bod.position = Torso.Position + Vector3.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
target = meh 
if target ~= nil then 
bod.position = target.Position 
local dir = (target.Position - Head.Position).unit 
local spawnpos = Head.Position 
local pos = spawnpos + (dir * 1) 
b.cframe = CFrame.new(pos,  pos + dir) 
end 
for i = 0,1,0.1 do 
wait() 
ss(1.2) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(1+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(2+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(3+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(4+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(5+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(0.5*i,0,-0.5+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0.5+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,2 do 
wait() 
WingBladeEffect(1,1,1,1,1,1) 
wingblade1.Transparency = 1 
wingblade2.Transparency = 1 
wingblade3.Transparency = 1 
wingblade4.Transparency = 1 
wingblade5.Transparency = 1 
wingblade6.Transparency = 1 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(0.5+1.5*i,0,0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.5*i,0,1.5-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
UltimaWeld.C0 = CFrame.fromEulerAnglesXYZ(0,0,0.7) * CFrame.new(0,0,0) 
UltimaWeld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
WingBladeEffect(1,1,1,1,1,1) 
target = meh 
if target ~= nil then 
bod.position = target.Position 
local dir = (target.Position - Head.Position).unit 
local spawnpos = Head.Position 
local pos = spawnpos + (dir * 1) 
b.cframe = CFrame.new(pos,  pos + dir) 
end 
wingblade1.Transparency = 0.4 
wingblade2.Transparency = 0.4 
wingblade3.Transparency = 0.4 
wingblade4.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingblade6.Transparency = 0.4 
for i = 0,1,0.1 do 
wait() 
ss(1.4) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(1-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(2-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(3-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(4-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(5-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(2-3*i,0,0.5-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(2-1.5*i,0,0.5-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
WingBladeEffect(1,1,1,1,1,1) 
wingblade1.Transparency = 1 
wingblade2.Transparency = 1 
wingblade3.Transparency = 1 
wingblade4.Transparency = 1 
wingblade5.Transparency = 1 
wingblade6.Transparency = 1 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2.57*i,0,-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(0.5+1.07*i,0,-0.5-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
UltimaWeld.C0 = CFrame.fromEulerAnglesXYZ(0,0,1.57) * CFrame.new(0,0,0) 
UltimaWeld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
WingBladeEffect(1,1,1,1,1,1) 
target = meh 
if target ~= nil then 
bod.position = target.Position 
local dir = (target.Position - Head.Position).unit 
local spawnpos = Head.Position 
local pos = spawnpos + (dir * 1) 
b.cframe = CFrame.new(pos,  pos + dir) 
end 
wingblade1.Transparency = 0.4 
wingblade2.Transparency = 0.4 
wingblade3.Transparency = 0.4 
wingblade4.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingblade6.Transparency = 0.4 
for i = 0,1,0.1 do 
wait() 
ss(1) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(1+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(2+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(3+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(4+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(5+math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-0.5+1.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-1+2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
WingBladeEffect(1,1,1,1,1,1) 
wingblade1.Transparency = 1 
wingblade2.Transparency = 1 
wingblade3.Transparency = 1 
wingblade4.Transparency = 1 
wingblade5.Transparency = 1 
wingblade6.Transparency = 1 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57-0.57*i,0,1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-0.57*i,0,1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
UltimaWeld.C0 = CFrame.fromEulerAnglesXYZ(0,0,2) * CFrame.new(0,0,0) 
UltimaWeld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
WingBladeEffect(1,1,1,1,1,1) 
target = meh 
if target ~= nil then 
bod.position = target.Position 
local dir = (target.Position - Head.Position).unit 
local spawnpos = Head.Position 
local pos = spawnpos + (dir * 1) 
b.cframe = CFrame.new(pos,  pos + dir) 
end 
wingblade1.Transparency = 0.4 
wingblade2.Transparency = 0.4 
wingblade3.Transparency = 0.4 
wingblade4.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingblade6.Transparency = 0.4 
for i = 0,1,0.1 do 
wait() 
ss(0.9) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(1-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(2-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(3-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(4-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(5-math.rad(360)*i,math.rad(90),0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1+1*i,0,1-2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1+1*i,0,1-2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
b.cframe = original 
WingBladeEffect(1,1,1,1,1,1) 
wingblade1.Transparency = 1 
wingblade2.Transparency = 1 
wingblade3.Transparency = 1 
wingblade4.Transparency = 1 
wingblade5.Transparency = 1 
wingblade6.Transparency = 1 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,1-2.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1+0.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
UltimaWeld.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(0,0,0) 
UltimaWeld.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
WingBladeEffect(1,1,1,1,1,1) 
wait() 
wingblade1.Transparency = 0.4 
wingblade2.Transparency = 0.4 
wingblade3.Transparency = 0.4 
wingblade4.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingblade6.Transparency = 0.4 
bod.position = Torso.Position + Vector3.new(0,10,0) 
local msh1 = Instance.new("SpecialMesh") 
msh1.Scale = Vector3.new(5,5,5) 
msh1.MeshId = "http://www.roblox.com/asset/?id=1051557" 
S=Instance.new("Part")
S.Name="Effect"
S.formFactor=0
S.Size=Vector3.new(15,15,15)
S.Reflectance = 0
S.TopSurface=0
S.BottomSurface=0
S.Transparency=1
S.Anchored=true
S.CanCollide=false
S.CFrame=Torso.CFrame
S.Parent=Character
msh1.Parent = S
if element == "Light" then 
S.BrickColor=BrickColor.new("White") 
elseif element == "Dark" then 
S.BrickColor=BrickColor.new("Black")
end
bod.maxForce = Vector3.new(100000,100000,100000) 
for i = 0,1,0.01 do 
wait() 
target = meh 
if target ~= nil then 
bod.position = target.Position 
end 
ss(0.9) 
S.CFrame=Torso.CFrame*CFrame.fromEulerAnglesXYZ(0,math.rad(580)*i,0)
S.Transparency = S.Transparency - 0.005 
b.cframe = b.cframe * CFrame.fromEulerAnglesXYZ(0,math.rad(600)*i,0) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(1-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(2-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(3-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(4-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(5-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
end 
for i = 0,1,0.005 do 
wait() 
target = meh 
if target ~= nil then 
bod.position = target.Position 
end 
ss(0.9) 
S.CFrame=Torso.CFrame*CFrame.fromEulerAnglesXYZ(0,math.rad(580)*i,0)
S.Transparency = S.Transparency 
b.cframe = b.cframe * CFrame.fromEulerAnglesXYZ(0,math.rad(600)*i,0) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(1-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(2-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(3-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(4-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(5-math.rad(600)*i,math.rad(90),0) * CFrame.new(0,0,0) 
end 
wait(0.5) 
Character.Humanoid.PlatformStand = false 
S.Parent = nil 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
con4:disconnect() 
con5:disconnect() 
con6:disconnect() 
bod.Parent = nil 
b.Parent = nil 
WingBladeEffect(1,1,1,1,1,1) 
wingblade1.Parent = nil 
wingblade2.Parent = nil 
wingblade3.Parent = nil 
wingblade4.Parent = nil 
wingblade5.Parent = nil 
wingblade6.Parent = nil 
wait(0.2) 
Style = "Normal" 
equipanim() 
--[[wingweld1.Parent = wingblade1 
wingweld1.Part0 = wingblade1 
wingweld1.Part1 = Torso 
wingweld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,-0.5,-3.3) 
wingweld1.C1 = CFrame.fromEulerAnglesXYZ(-0.5,-0.2,0) * CFrame.new(0,0,0) 
wingweld2.Parent = wingblade2 
wingweld2.Part0 = wingblade2 
wingweld2.Part1 = Torso 
wingweld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,0,-3) 
wingweld2.C1 = CFrame.fromEulerAnglesXYZ(0,-0.2,0) * CFrame.new(0,0,0) 
wingweld3.Parent = wingblade3 
wingweld3.Part0 = wingblade3 
wingweld3.Part1 = Torso 
wingweld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(1,0.5,-3.3) 
wingweld3.C1 = CFrame.fromEulerAnglesXYZ(0.5,-0.2,0) * CFrame.new(0,0,0) 
wingweld4.Parent = wingblade4 
wingweld4.Part0 = wingblade4 
wingweld4.Part1 = Torso 
wingweld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,-0.5,-3.3) 
wingweld4.C1 = CFrame.fromEulerAnglesXYZ(-0.5,0.2,0) * CFrame.new(0,0,0) 
wingweld5.Parent = wingblade5 
wingweld5.Part0 = wingblade5 
wingweld5.Part1 = Torso 
wingweld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,0,-3) 
wingweld5.C1 = CFrame.fromEulerAnglesXYZ(0,0.2,0) * CFrame.new(0,0,0) 
wingweld6.Parent = wingblade6 
wingweld6.Part0 = wingblade6 
wingweld6.Part1 = Torso 
wingweld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(-1,0.5,-3.3) 
wingweld6.C1 = CFrame.fromEulerAnglesXYZ(0.5,0.2,0) * CFrame.new(0,0,0) 
UltimaWeld.Parent = nil 
WingBladeEffect(1,1,1,1,1,1) 
wait() 
wingblade1.Transparency = 0.4 
wingblade2.Transparency = 0.4 
wingblade3.Transparency = 0.4 
wingblade4.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingblade6.Transparency = 0.4 ]]
end 
attack = false 
end 
end 

function ULTRAUltima() 
attack = true 
--if Style == "MagicMayhem" and mana >= 400 then 
if Style == "MagicMayhem" then 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - Torso.Position;
		local mag = targ.magnitude;
		if mag <= 60 and c[i].Name ~= Player.Name then 
		UltimaMagicMayhemDamage(head,math.random(200,500))
		end 
		end 
		end 
	end 
Style = "Normal" 
MagicMayhemUltimaSounds() 
for i = 0,9,0.2 do 
wait() 
MMMAGIC(Torso,90,90,90,0,0,0,BrickColor.new("White")) 
MMMAGIC(Torso,90,90,90,0,0,0,BrickColor.new("Black")) 
EVENMOARMAGIX(Torso,80,80,80,0,0,0,0,0,0,BrickColor.new("White")) 
EVENMOARMAGIX(Torso,80,80,80,0,0,0,0,0,0,BrickColor.new("Black")) 
WaveEffect(Torso,70,70,70,0,0,0,0,math.random(-50,50),0,BrickColor.new("White")) 
WaveEffect(Torso,70,70,70,0,0,0,0,math.random(-50,50),0,BrickColor.new("Black")) 
MMMAGIC(Torso,5,5,5,math.random(-35,35),0,math.random(-35,35),BrickColor.new("White")) 
MMMAGIC(Torso,5,5,5,math.random(-35,35),0,math.random(-35,35),BrickColor.new("Black")) 
end 
coroutine.resume(coroutine.create(function() 
local clone = Instance.new("Part") 
clone.Parent = workspace 
clone.CFrame = Torso.CFrame 
clone.CanCollide = false 
clone.Transparency = 1 
clone.Anchored = true 
for i = 0,10,0.2 do 
wait(0.1) 
MMMAGIC(clone,1,1,1,math.random(-30,30),0,math.random(-30,30),BrickColor.new("White")) 
MMMAGIC(clone,1,1,1,math.random(-30,30),0,math.random(-30,30),BrickColor.new("Black")) 
end 
clone.Parent = nil 
end)) 
end 
attack = false 
end 

function WingBladeEffect(one,two,three,four,five,six) 
if one == 1 then 
EVENMOARMAGIX(wingblade1,3,3,3,0,0,0,math.rad(90),0,0,BrickColor.new("White")) 
end 
if two == 1 then 
EVENMOARMAGIX(wingblade2,3,3,3,0,0,0,math.rad(90),0,0,BrickColor.new("White")) 
end 
if three == 1 then 
EVENMOARMAGIX(wingblade3,3,3,3,0,0,0,math.rad(90),0,0,BrickColor.new("White")) 
end 
if four == 1 then 
EVENMOARMAGIX(wingblade4,3,3,3,0,0,0,math.rad(90),0,0,BrickColor.new("White")) 
end 
if five == 1 then 
EVENMOARMAGIX(wingblade5,3,3,3,0,0,0,math.rad(90),0,0,BrickColor.new("White")) 
end 
if six == 1 then 
EVENMOARMAGIX(wingblade6,3,3,3,0,0,0,math.rad(90),0,0,BrickColor.new("White")) 
end 
end 

function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(x1,y1,z1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function UltimaMMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(x1,y1,z1) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(1,1,1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function MOREMAGIX(part,cframe,x,y,z,color) 
		p2=Instance.new("Part")
		p2.Name="Blast"
		p2.TopSurface=0
		p2.BottomSurface=0
		p2.CanCollide=false
		p2.Anchored=true
		p2.BrickColor=color
		p2.Size=Vector3.new(x,y,z)
		p2.formFactor="Symmetric"
		p2.CFrame=part.CFrame*CFrame.new(0,cframe,0)
		p2.Parent=workspace
		m=Instance.new("BlockMesh")
		m.Parent=p2
		m.Name="BlastMesh"
		coroutine.resume(coroutine.create(function(part,dir) for loll=1, 15 do part.BlastMesh.Scale=part.BlastMesh.Scale-Vector3.new(.09,.09,.09) part.Transparency=loll/20 part.CFrame=part.CFrame*CFrame.new(dir)*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100, math.random(-100,100)/100, math.random(-100,100)/100) wait() end part.Parent=nil end),p2,Vector3.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10))
end 

function EVENMOARMAGIX(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	msh1.MeshType = "Sphere" 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(x1,y1,z1)
	S.BrickColor=color
	if Style == "WingBlade" and element == "Dark" then 
	S.BrickColor=BrickColor.new("Black") 
	end 
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function WaveEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(x1,y1,z1) 
	msh1.MeshId = "http://www.roblox.com/asset/?id=20329976" 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(1,1,1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function BlastEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(x1,y1,z1) 
	msh1.MeshId = "http://www.roblox.com/asset/?id=1323306" 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(1,1,1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function DifferentEffect() 
	p=Instance.new("Part")
	p.Name="FlameEm"
	p.Shape=0
	p.TopSurface=0
	p.BottomSurface=0
	derp = math.random(1,2) 
	if derp == 1 then 
	p.BrickColor=BrickColor.new("White") 
	else 
	p.BrickColor=BrickColor.new("Black") 
	end 
	p.Anchored=true
	p.CanCollide=false
	p.Size=Vector3.new(1,1,1)
	p.CFrame=CFrame.new(Character["Torso"].CFrame.p+Vector3.new(0,-3,0))+Vector3.new(math.random(-10,10)/3,0,math.random(-10,10)/3)
	p.Parent=workspace
	m=Instance.new("SpecialMesh")
	m.MeshType="Sphere"
	m.Parent=p
	m.Scale=Vector3.new(1,1,1)
	coroutine.resume(coroutine.create(function(p) for i=1, 9 do p.Mesh.Scale=p.Mesh.Scale+Vector3.new(0,1.5,0) p.Transparency=p.Transparency+1/9  wait(0)  end p.Parent=nil end),p)
end 

function DashEf(P,color) 
local m = Instance.new("Part") 
m.Parent = workspace 
m.BrickColor = color 
m.Transparency = 0 
m.Anchored = true 
m.CFrame = P
m.CanCollide = false 
local me = Instance.new("SpecialMesh") 
me.Parent = m 
me.MeshType = "FileMesh" 
me.MeshId = "http://www.roblox.com/asset/?id=20329976" 
me.Scale = Vector3.new(2.5,2.5,2.5) 
coroutine.resume(coroutine.create(function(part,mesh) 
for i = 0,5 do 
wait(0.1) 
part.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(0, math.random(0,2), 0) 
mesh.Scale = mesh.Scale + Vector3.new(0.5,0.4,0.5) 
part.Transparency = part.Transparency + 0.20
end 
m:Remove() 
end),m,me) 
end 

function slasheffect(cframe,waitin,size,efdam) 
wait(waitin) 
for l=1, 2 do
wait() 
e=Instance.new("Part")
e.Name="SlashEffect"
e.TopSurface=0
e.BottomSurface=0
e.formFactor="Symmetric"
e.Size=Vector3.new(2,2,size)
e.Anchored=true
e.BrickColor=BrickColor.new("White") 
e.Reflectance=0

e.CanCollide=false
m=Instance.new("SpecialMesh")
m.MeshType="Sphere"
m.Scale=Vector3.new(.25,.25,1)
m.Parent=e
e.CFrame = cframe
e.Parent=workspace
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - e.Position;
		local mag = targ.magnitude;
		if mag <= 5 and c[i].Name ~= Player.Name then 
		Damagefunc1(head,5,1) 
		end 
		end 
		end 
	end 
coroutine.resume(coroutine.create(function(m) for i=1, 9 do m.Transparency=i*.1 m.Mesh.Scale=m.Mesh.Scale-Vector3.new(.01,.01,.05)*2 wait() end m.Parent=nil coneffect:disconnect() end),e)
end
end 

DarkRiftF=function(par) --Thank you turdulator for this :D
while barragehold == true and mana >= 0 do 
mana = mana - math.random(0,10) 
PWN={}
for _,v in pairs(workspace:children()) do
if v.className=="Model" and v:FindFirstChild("Humanoid")~=nil then
if v.Humanoid.Health>0 and v:FindFirstChild("Torso")~=nil then
if v~=Character and (v.Torso.Position-par.Position).magnitude<=25 then
table.insert(PWN,v.Torso)
end
end
end
end
for _,t in pairs(PWN) do
Mag=(par.Position-t.Position).magnitude/2
t.Parent.Humanoid:TakeDamage(.6)
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*5000
rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))/10
rl.Parent=t
game:GetService("Debris"):AddItem(rl,.1)
if Mag<=2 then
if mana <= 400 then 
mana = mana + math.random(0,10) 
else 
mana = 400 
end 
t.Parent.Humanoid:TakeDamage(.3)
else
if mana <= 400 then 
mana = mana + 1
else 
mana = 400 
end 
vl=Instance.new("BodyVelocity")
vl.P=3000
vl.maxForce=Vector3.new(50000000000,50000000000,50000000000)
vl.velocity=(t.Position-par.Position).unit*-(70/(Mag))
vl.Parent=t
game:GetService("Debris"):AddItem(vl,.1)
end
end
wait(.08)
end
end

function ss(pitch) 

local SlashSound = Instance.new("Sound") 
--SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209645" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function critsound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function sheath(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209850" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function shieldbash(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209583" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function magicsound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function abscond(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2767090" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function Charge(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101137" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function MagicMayhemUltimaSounds() 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=13775494" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.1 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2691586" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.2 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2691586" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.05 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.05 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset?id=1369158" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.7 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2974000" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.5 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2974249" 
SlashSound.Parent = workspace 
SlashSound.Volume = 1 
SlashSound.Pitch = 0.3 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 

--[[function ss(pitch) -- No sound mode (for all those noobs who can't handle the earraep. Umad, noobs?) 

end 
function critsound(pitch) 

end 
function sheath(pitch) 

end 
function shieldbash(pitch) 

end 
function magicsound(pitch) 

end 
function abscond(pitch) 

end 
function Charge(pitch) 

end 
function MagicMayhemUltimaSounds() 

end ]]

Damagefunc1=function(hit,Damage,Knockback)
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
	if hit.Parent==nil then
		return
	end
	CPlayer=Bin 
	h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
		if mana < 400 then 
		mana = mana + math.random(5,15)  
		end 
		if mana > 400 then 
		mana = 400 
		end 
		Damage=Damage
--[[		if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
			return
		end]]
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=game.Players.LocalPlayer
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
--			print(c.Value)
		if math.random(0,99)+math.random()<=7.8 then
			CRIT=true
			Damage=Damage*3
--[[			Knockback=Knockback*2
			r=Instance.new("BodyAngularVelocity")
			r.P=3000
			r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
			r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			r.Parent=hit.Parent.Torso]]
			critsound(2) 
	
		end
		Damage=Damage+math.random(0,10)
--		Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
		h:TakeDamage(Damage)
		showDamage(hit.Parent,Damage,.5)
		vp=Instance.new("BodyVelocity")
		vp.P=500
		vp.maxForce=Vector3.new(math.huge,0,math.huge)
--		vp.velocity=Character.Torso.CFrame.lookVector*Knockback
		vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
		if Knockback>0 then
			vp.Parent=hit.Parent.Torso
		end
		game:GetService("Debris"):AddItem(vp,.25)
--[[		r=Instance.new("BodyAngularVelocity")
		r.P=3000
		r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
		r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		r.Parent=hit.Parent.Torso]]
		game:GetService("Debris"):AddItem(r,.5)
				c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=Player
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
		CRIT=false
		hitDeb=true
		AttackPos=6
	end
	end 
end

Damagefunc2=function(hit,Damage,Knockback)
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
	if hit.Parent==nil then
		return
	end
	CPlayer=Bin 
	h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
		if mana < 400 then 
		mana = mana + math.random(5,15)  
		end 
		if mana > 400 then 
		mana = 400 
		end 
		Damage=Damage
--[[		if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
			return
		end]]
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=game.Players.LocalPlayer
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
--			print(c.Value)
		if math.random(0,99)+math.random()<=7.8 then
			CRIT=true
			Damage=Damage*3
--[[			Knockback=Knockback*2
			r=Instance.new("BodyAngularVelocity")
			r.P=3000
			r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
			r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			r.Parent=hit.Parent.Torso]]
			critsound(2) 
	
		end
		Damage=Damage+math.random(0,10)
--		Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
		h:TakeDamage(Damage)
		showDamage(hit.Parent,Damage,.5)
		vl=Instance.new("BodyVelocity")
		vl.P=4500
		vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
--		vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,30,0)
		vl.velocity=Head.CFrame.lookVector*Knockback+Head.Velocity/1.05
		if Knockback>0 then
			vl.Parent=hit.Parent.Torso
		end
		game:GetService("Debris"):AddItem(vl,.2)
		rl=Instance.new("BodyAngularVelocity")
		rl.P=3000
		rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
		rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
		if Knockback>0 then
			rl.Parent=hit.Parent.Torso
		end
		game:GetService("Debris"):AddItem(rl,.2)
				c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=Player
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
		CRIT=false
		hitDeb=true
		AttackPos=6
	end
	end 
end


Bash=function(hit,Damage) --credits to turdulator for making this function :D
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
	if hit.Parent==nil then
		return
	end
	h=hit.Parent:FindFirstChild("Humanoid")
	t=hit.Parent:FindFirstChild("Torso")
	if h~=nil and t~=nil then
		if h.Parent==Character then
			return
		end
		if mana < 400 then 
		mana = mana + math.random(5,15)  
		end 
		if mana > 400 then 
		mana = 400 
		end 
		shieldbash(1) 
		if math.random(0,99)+math.random()<=7.8 then
			CRIT=true
			Damage=Damage*3
--[[			Knockback=Knockback*2
			r=Instance.new("BodyAngularVelocity")
			r.P=3000
			r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
			r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			r.Parent=hit.Parent.Torso]]
			critsound(2) 
	
		end
		h:TakeDamage(Damage) 
		showDamage(hit.Parent,Damage,.5) 
		vl=Instance.new("BodyVelocity")
		vl.P=4500
		vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
--		vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,30,0)
		vl.velocity=Head.CFrame.lookVector*35+Head.Velocity/1.05
		vl.Parent=t
		game:GetService("Debris"):AddItem(vl,.2)
		rl=Instance.new("BodyAngularVelocity")
		rl.P=3000
		rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
		rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
		rl.Parent=t
		game:GetService("Debris"):AddItem(rl,.2)
	else
		if hit.CanCollide==false then
			return
		end
		MagicCom:disconnect()
--		DBExplode(DB)
	end
end 
end

UpBlast=function(hit,Damage) --credits to turdulator for making this function :D
	if hit.Parent==nil then
		return
	end
	h=hit.Parent:FindFirstChild("Humanoid")
	t=hit.Parent:FindFirstChild("Torso")
	if h~=nil and t~=nil then
		if h.Parent==Character then
			return
		end
		if mana < 400 then 
		mana = mana + math.random(10,20)  
		end 
		if mana > 400 then 
		mana = 400 
		end 
		if math.random(0,99)+math.random()<=7.8 then
			CRIT=true
			Damage=Damage*3
--[[			Knockback=Knockback*2
			r=Instance.new("BodyAngularVelocity")
			r.P=3000
			r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
			r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			r.Parent=hit.Parent.Torso]]
			critsound(2) 
	
		end
		h:TakeDamage(Damage) 
		showDamage(hit.Parent,Damage,.5) 
		vl=Instance.new("BodyVelocity")
		vl.P=4500
		vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
--		vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,3,0)
		vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,45,0)
		vl.Parent=t
		game:GetService("Debris"):AddItem(vl,.2)
		rl=Instance.new("BodyAngularVelocity")
		rl.P=3000
		rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
--		rl.angularvelocity=Vector3.new(math.random(-40,40),math.random(-40,40),math.random(-40,40))
		local tes = math.random(1,2) 
		if tes == 1 then 
		rl.angularvelocity=Vector3.new(0,0,math.random(-40,40)) 
		elseif tes == 2 then 
		rl.angularvelocity=Vector3.new(math.random(-40,40),0,0) 
		end 
		rl.Parent=t
		game:GetService("Debris"):AddItem(rl,.2)
	else
		if hit.CanCollide==false then
			return
		end
		MagicCom:disconnect()
--		DBExplode(DB)
	end
end

UltimaMagicMayhemDamage=function(hit,Damage) --credits to turdulator for making this function :D
	if hit.Parent==nil then
		return
	end
	h=hit.Parent:FindFirstChild("Humanoid")
	t=hit.Parent:FindFirstChild("Torso")
	if h~=nil and t~=nil then
		if h.Parent==Character then
			return
		end
		if math.random(0,99)+math.random()<=7.8 then
			CRIT=true
			Damage=Damage*10
--[[			Knockback=Knockback*2
			r=Instance.new("BodyAngularVelocity")
			r.P=3000
			r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
			r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			r.Parent=hit.Parent.Torso]]
			critsound(2) 
	
		end
		h:TakeDamage(Damage) 
		showDamage(hit.Parent,Damage,.5) 
		vl=Instance.new("BodyVelocity")
		vl.P=4500
		vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
--		vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,3,0)
		vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,600,0)
		vl.Parent=t
		game:GetService("Debris"):AddItem(vl,.2)
		rl=Instance.new("BodyAngularVelocity")
		rl.P=3000
		rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
--		rl.angularvelocity=Vector3.new(math.random(-40,40),math.random(-40,40),math.random(-40,40))
		local tes = math.random(1,2) 
		if tes == 1 then 
		rl.angularvelocity=Vector3.new(0,0,math.random(-40,40)) 
		elseif tes == 2 then 
		rl.angularvelocity=Vector3.new(math.random(-40,40),0,0) 
		end 
		rl.Parent=t
		game:GetService("Debris"):AddItem(rl,.2)
	else
		if hit.CanCollide==false then
			return
		end
		MagicCom:disconnect()
--		DBExplode(DB)
	end
end

showDamage=function(Char,Dealt,du)
	m=Instance.new("Model")
	m.Name=tostring(Dealt)
	h=Instance.new("Humanoid")
	h.Health=0
	h.MaxHealth=0
	h.Parent=m
	c=Instance.new("Part")
	c.Transparency=0
	c.BrickColor=BrickColor:Red()
	if CRIT==true then
		c.BrickColor=BrickColor.new("Really red")
	end
	c.Name="Head"
	c.TopSurface=0
	c.BottomSurface=0
	c.formFactor="Plate"
	c.Size=Vector3.new(1,.4,1)
	ms=Instance.new("CylinderMesh")
	ms.Bevel=.1
	ms.Scale=Vector3.new(.8,.8,.8)
	if CRIT==true then
		ms.Scale=Vector3.new(1.25,1.5,1.25)
		ms.Bevel=.2
	end
	ms.Parent=c
	c.Reflectance=0
	Instance.new("BodyGyro").Parent=c
	c.Parent=m
	c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
	f=Instance.new("BodyPosition")
	f.P=2000
	f.D=100
	f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	f.position=c.Position+Vector3.new(0,3,0)
	f.Parent=c
	game:GetService("Debris"):AddItem(m,.5+du)
	c.CanCollide=false
	m.Parent=workspace
	c.CanCollide=false
end

hold = false 

function ob1d(mouse) 
if guarding == true then 
if bashing == true then return end 
Bashem() 
return 
end 
if attack == true then return end 
hold = true 
if Style == "Normal" then 
if mode == "Normal" then 
if combo == 0 then 
onehit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
for i = 0,1,0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,-1+1*i) * CFrame.fromEulerAnglesXYZ(1.3-1.3*i,1.57-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5+1.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
elseif combo == 1 then 
twohit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5-0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5+1.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
elseif combo == 2 then 
threehit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(0.5+1,-1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.5-2.2*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2+0.5*i,1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
sheath(2.25)  
wait(0.05) 
weld1.Part0 = part1 
weld1.Part1 = prt1 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.7,0.2) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,-1.57+1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7+0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2+0.5,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
elseif combo == 3 then 
fourhit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2+0.5*i,1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
sheath(2.25) 
wait(0.05) 
weld1.Part0 = part1 
weld1.Part1 = prt1 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.7,0.2) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,-1.57+1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7+0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2+0.5,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
elseif combo == 4 then 
fivehit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
attack = true 
gairo.Parent = nil 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,-0.5+0.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2+1.37-0.87*i,1*i,1-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
--[[LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.5*i,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2+0.5*i,1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) ]]
sheath(2.25) 
wait(0.05) 
weld1.Part0 = part1 
weld1.Part1 = prt1 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.7,0.2) 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,-1.57+1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7+0.7*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2+0.5,1-1*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 
end)) 
end 
elseif mode == "Attack" then 
if combo == 0 then 
oneslash() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3-3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5+1.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
elseif combo == 1 then 
twoslash() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3-1.43-1.57*i,0,1.57-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3-3*i,1.57-1.57*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5+1.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
elseif combo == 2 then 
threeslash() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
for i = 0,1,0.1 do 
wait(0)  
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90)+math.rad(90)-math.rad(90)*i,0,math.rad(90)-math.rad(90)+math.rad(90)*i) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(2.07-2.07*i,0,3.57-3.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(4-4*i,3.57-3.57*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5+1.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
elseif combo == 3 then 
fourslash() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,1.57-1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3-3*i,1.57-1.57*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-1.5+1.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
end 
end 
elseif Style == "MagicMayhem" then 
if combo == 0 then 
castone() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
elseif combo == 1 then 
casttwo() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
elseif combo == 2 then 
castthree() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
end 
--[[castone() 
casttwo() 
castthree() ]]
elseif Style == "WingBlade" then 
if combo == 0 then 
combo = 1 
wingbladeslashone() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
WingBladeEffect(0,1,0,0,1,0) 
WingBladeEffect(0,0,0,0,0,0) 
wingblade2.Transparency = 0.4 
wingblade5.Transparency = 0.4 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+1*i,0,-0.5+0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2*i,0,0.5-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
elseif combo == 1 then 
combo = 2 
wingbladeslashtwo() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
wait(0.3) 
WingBladeEffect(0,1,1,0,1,1) 
wingblade2.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingblade3.Transparency = 0.4 
wingblade6.Transparency = 0.4 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(2-2*i,0,-1+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
elseif combo == 2 then 
combo = 3 
wingbladeslashthree() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
WingBladeEffect(1,1,1,1,1,1) 
wingblade2.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingblade3.Transparency = 0.4 
wingblade6.Transparency = 0.4 
wingblade1.Transparency = 0.4 
wingblade4.Transparency = 0.4 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,-2+2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,2-2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
elseif combo == 3 then 
combo = 4 
wingbladeslashfour() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
WingBladeEffect(1,1,1,1,1,1) 
wingblade2.Transparency = 0.4 
wingblade5.Transparency = 0.4 
wingblade3.Transparency = 0.4 
wingblade6.Transparency = 0.4 
wingblade1.Transparency = 0.4 
wingblade4.Transparency = 0.4 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,-2+2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,-0.86+0.86*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end)) 
end 
wait(1.5) 
--[[wingblade1.Transparency = 0.4 
wingblade3.Transparency = 0.4 
wingblade4.Transparency = 0.4 
wingblade6.Transparency = 0.4 ]]
end 
end 

function ob1u(mouse) 
hold = false 
end 

buttonhold = false 

function key(key) 
if attack == true then return end 
if Style == "Normal" then 
 if key == "q" then 
  changeequipleft() 
 end 
 if key == "e" then 
  changeequipright() 
 end 
 if key == "h" then 
  if mana >= 200 then 
   mana = 400 
   StyleChange() 
  end 
 end 
 if key == "z" then 
  holddash = true 
  ShieldDash() 
 end 
 if mode == "Normal" then 
  if key == "x" then 
   MegaHit() 
  end 
  elseif mode == "Attack" then 
  if key == "x" then 
   ArsSolum() 
  end 
 end 
end 
if Style == "WingBlade" then 
 if key == "z" and SwordRaging == true then 
  SwordRageZ() 
  coroutine.resume(coroutine.create(function()
  wait(0.5) 
  if attack == false then 
  SwordRaging = false 
  EndSwordRage() 
  end 
  end)) 
 end 
 if key == "x" and SwordRaging == true then 
  SwordRageX() 
  coroutine.resume(coroutine.create(function()
  wait(0.5) 
  if attack == false then 
  SwordRaging = false 
  EndSwordRage() 
  end 
  end)) 
 end 
 if key == "c" and SwordRaging == true then 
  SwordRageC() 
  coroutine.resume(coroutine.create(function()
  wait(0.5) 
  if attack == false then 
  SwordRaging = false 
  EndSwordRage() 
  end 
  end)) 
 end 
if SwordRaging == false then 
 if key == "z" then 
  SwordRaid() 
 end 
 if key == "x" then 
  SwordRage() 
  coroutine.resume(coroutine.create(function()
  wait(0.5) 
  if attack == false then 
  SwordRaging = false 
  EndSwordRage() 
  end 
  end)) 
 end 
end 
end 
if Style == "MagicMayhem" then 
 if combo == 0 then 
  if key == "z" then 
   barragehold = true 
   MagicBarrage() 
  end 
  if key == "x" then 
   regening = true 
   Regening() 
  end 
 end 
 if key == "z" then 
  if combo == 1 then 
   castfour() 
  end 
 end 
 if key == "x" then 
  if combo == 1 then 
   casttwo() 
  end 
 end 
 if key == "c" then 
  if combo == 1 then 
   castfive() 
  end 
 end 
end 
if key ==  "f" then 
if Style ~= "WingBlade" then 
guard() 
end 
end 
if key == "g" then 
ChangeElement() 
end 
if key == "j" and Style ~= "Normal" then 
Ultima() 
--ULTRAUltima() 
end 
if key == "k" then 
if Style == "WingBlade" then 
wingblade1.Parent = nil 
wingblade2.Parent = nil 
wingblade3.Parent = nil 
wingblade4.Parent = nil 
wingblade5.Parent = nil 
wingblade6.Parent = nil 
equipweld() 
end 
Style = "Normal" 
end 
end 

function key2(key) 
if key == "f" then 
guarding = false 
end 
if key == "z" then 
holddash = false 
barragehold = false 
end 
if key == "x" then 
regening = false  
end 
end 

function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
--_G.L = LW 
-- 
equipanim() 
end 

function ds(mouse) 
hideanim() 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 

Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 

function onRunning(speed)
if attack == true then return end 
	if speed>0 then 
walking = true 
for i = 0,1,0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.8*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-0.8*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
	else 
walking = false 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.8+0.8*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1-0.8+0.8*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 

	end 
end 
Character.Humanoid.Running:connect(onRunning) 

while true do 
wait(0)  
fentext3.Size = UDim2.new(mana*0.007,0,0.200000006,0)
fentext.Text = "Mana("..mana..")" 
if element == "Light" then 
fentext3.BackgroundColor3 = Color3.new(1,1,1) 
elseif element == "Dark" then 
fentext3.BackgroundColor3 = Color3.new(0,0,0) 
end 
if Style == "WingBlade" then 
wait(0.1) 
coroutine.resume(coroutine.create(function() 
if idleanimdelay == false and SwordRaging == false then 
idleanimdelay = true 
for i = 0,math.random(10,25),0.1 do 
wait() 
if attack == false and SwordRaging == false then 
willidleanim = true 
else 
willidleanim = false 
end 
end 
if willidleanim == true then 
idleanim() 
end 
idleanimdelay = false 
end 
end)) 
meh = findNearestTorso(Character.Torso.Position) 
local target = findNearestTorso(Character.Torso.Position)
if element == "Light" then 
wingblade1.BrickColor = BrickColor.new("White") 
wingblade2.BrickColor = BrickColor.new("White") 
wingblade3.BrickColor = BrickColor.new("White") 
wingblade4.BrickColor = BrickColor.new("White") 
wingblade5.BrickColor = BrickColor.new("White") 
wingblade6.BrickColor = BrickColor.new("White") 
elseif element == "Dark" then 
wingblade1.BrickColor = BrickColor.new("Black") 
wingblade2.BrickColor = BrickColor.new("Black") 
wingblade3.BrickColor = BrickColor.new("Black") 
wingblade4.BrickColor = BrickColor.new("Black") 
wingblade5.BrickColor = BrickColor.new("Black") 
wingblade6.BrickColor = BrickColor.new("Black") 
end 
end 
end 
end}

 
 

module[1] = {"Arrowface",function()
local plr = game.Players.LocalPlayer
local char = plr.Character
local mouse = plr:GetMouse()
local torso = char.Torso
local head = char.Head
local ra = char["Right Arm"]
local la = char["Left Arm"]
local rl = char["Right Leg"]
local ll = char["Left Leg"]
local human = char["Humanoid"]
local camera = workspace.CurrentCamera
local rs = torso:findFirstChild("Right Shoulder")
local ls = torso:findFirstChild("Left Shoulder")
local neck = torso:findFirstChild("Neck")
local NO_moar_shooting = false
local RunService = game:service'RunService'
local ammo = 1
local spred = 2



function trail(obj) -- wroten by kert109
    local lastPos = obj.CFrame.p
    coroutine.wrap(function()
        while obj ~= nil do
            RunService.Stepped:wait()
            local objC = obj:Clone()
pcall(function()
			objC.Mesh:Destroy()
			end)
			objC.BrickColor = BrickColor.White()
			Instance.new("BlockMesh", objC).Scale = Vector3.new(0.2, 0.2, 1)
			objC.Parent = obj.Parent -- EPIC FAILURE> xD LOL
            objC.Anchored = true
            local distance = (lastPos- obj.CFrame.p).magnitude
            objC.Size = Vector3.new(.4,.4,distance)
            objC.CFrame = CFrame.new(lastPos,obj.Position)*CFrame.new(0,0,-distance/2)
            coroutine.wrap(function()
                for i = 0,1,.2 do
                    wait()
                    objC.Transparency = i
                end
                objC:Destroy() -- Easiest way without tables. :D
            end)()
            lastPos = obj.CFrame.p
        end
    end)() -- This
end


local sound = Instance.new("Sound", head)
sound.SoundId = "http://www.roblox.com/asset/?id=16211041"
sound.Volume = 1
local reloads = Instance.new("Sound", head)
reloads.SoundId = "http://roblox.com/asset/?id=10209636"
reloads.Volume = 1
reloads.Pitch = 0.7
local activate = Instance.new("Sound", head)
activate.SoundId = "http://roblox.com/asset/?id=10209881"
activate.Volume = 1
activate.Pitch = 0.7


local equipped = false

local debounce = false

local face = head.face


release = Instance.new("Part", nil)
release.FormFactor = "Custom"
release.Size = Vector3.new(0.3, 1.7, 0.3)
release.BrickColor = BrickColor.new("Brown")
local weld = Instance.new("Weld", release)
weld.Part0 = release
weld.Part1 = head
weld.C0 = CFrame.new(0, -0.5, -0.2) * CFrame.Angles(math.pi/2, 0, 0)
local mesh = Instance.new("CylinderMesh", release)

release2 = Instance.new("Part", nil)
release2.FormFactor = "Custom"
release2.Size = Vector3.new(0.2, 1.4, 0.2)
release2.BrickColor = BrickColor.new("Brown")
local weld2 = Instance.new("Weld", release2)
weld2.Part0 = release2
weld2.Part1 = head
weld2.C0 = CFrame.new(0.5, 0, -0.2) * CFrame.Angles(math.pi/2, math.pi/2, 0)
local mesh2 = Instance.new("CylinderMesh", release2)

headext = Instance.new("Part", nil)
headext.Position = torso.Position
headext.FormFactor = "Custom"
headext.Transparency = 1
headext:BreakJoints()
headext.Size = Vector3.new(2, 1, 1)
headextw = Instance.new("Weld", headext)
headextw.C0 = CFrame.new(Vector3.new(0, 1.5, 0))
headextw.Part0 = torso
headextw.Part1 = headext
headextw.C1 = CFrame.new()
headweld = Instance.new("Weld", headext)
game:service("RunService").Stepped:connect(function()
           headweld.C0 = CFrame.new(Vector3.new(0,0,0), torso.CFrame:pointToObjectSpace(mouse.Hit.p)) * CFrame.Angles(0, 0, 0)
end)
headweld.Part0 = headext
headweld.C1 = CFrame.new()
headweld.Part1 = head

local Screen = Instance.new("ScreenGui", plr:findFirstChild("PlayerGui"))
local TextBox = Instance.new("TextLabel", Screen)
TextBox.Position = UDim2.new(0.1, 0, 0.95, 0)
TextBox.Size = UDim2.new(0, 200, 0.05, 0)
TextBox.BackgroundTransparency = 1
game:service'RunService'.Stepped:connect(function()
TextBox.Text = ("Ammo: "..ammo)
end)
TextBox.Font = "SourceSansBold"
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.FontSize = "Size36"
TextBox.TextStrokeTransparency = 0

local pl = Instance.new("PointLight", release)
pl.Range = 16
pl.Brightness = 5
pl.Color = Color3.new(1, 199/255, 67/255)
pl.Enabled = false
function reload()
	wait(0.2)
		reloads:play()
		wait(0.5)
		ammo = 1
		wait(1.5)
	activate:play()
	wait(0.5)
	debounce = false
end

mouse.KeyDown:connect(function(key)
	if key == "r" then
		if debounce then return end
		if not equipped then return end
		if ammo > 0 then return end
		debounce = true
		reload()
	end
	
	if key == "q" then
		equipped = not equipped
		if equipped then
			headext.Parent = char
			release.Parent = char
			release2.Parent = char
			face.Parent = nil
			for scale = 0, 1, 0.2 do
				weld2.C0 = CFrame.new(scale, 0, -0.2) * CFrame.Angles(math.pi/2, math.pi/2, 0)
				weld.C0 = CFrame.new(0, -scale + 0.5, -0.2) * CFrame.Angles(math.pi/2, 0, 0)
				mesh.Scale = Vector3.new(1, scale, 1)
				mesh2.Scale = Vector3.new(1, scale, 1)
				wait()
				end
		else
			face.Parent = head
			release.Parent = nil
			release2.Parent = nil
			headext.Parent = nil
		end
	end
end)

mouse.Button1Down:connect(function()
	if not equipped then return end
	if ammo < 1 then return end
			if debounce then return end
			debounce = true
			sound:play()
			ammo = ammo - 1
			coroutine.wrap(function()
				for scale = 0.7, 1, 0.1 do
					mesh.Scale = Vector3.new(1, scale, 1)
					wait()
				end
			end)()
			
				coroutine.wrap(function()
	if char.Humanoid.Health < 1 then return end
    local rayPart         = Instance.new("Part", char)
    rayPart.Name          = "RayPart"
    rayPart.BrickColor    = BrickColor.Yellow()
    rayPart.Anchored      = true
    rayPart.CanCollide    = false
    rayPart.TopSurface    = Enum.SurfaceType.Smooth
    rayPart.BottomSurface = Enum.SurfaceType.Smooth
    rayPart.formFactor    = Enum.FormFactor.Custom
    rayPart.Size          = Vector3.new(0.2, 0.2, 4)
local mesh = Instance.new("SpecialMesh", rayPart)
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=15887356"
mesh.TextureId = "http://www.roblox.com/asset/?id=15886781"
mesh.Scale = Vector3.new(-1, 1, -1.5)

	
	
	
    local bulletposition = release.Position
   local bulletvelocity = (Vector3.new(math.random(-spred,spred), math.random(-spred,spred), math.random(-spred,spred)))+( mouse.Hit.p - bulletposition).unit*150
    local bulletlastposition = bulletposition
    rayPart.CFrame = CFrame.new( bulletposition, bulletposition+bulletvelocity )
local connection = trail(rayPart)




    
    coroutine.resume(coroutine.create(function()
        while true do
	        local dt = wait()
            bulletlastposition = bulletposition
            bulletvelocity = bulletvelocity + (Vector3.new(0, -9.81*10, 0)*dt)
	        bulletposition = bulletposition + (bulletvelocity*dt)
                
            local ray = Ray.new(bulletlastposition,  (bulletposition - bulletlastposition))
            local hit, hitposition = workspace:FindPartOnRayWithIgnoreList( ray, { char, rayPart} )
	            
	if (torso.Position - rayPart.Position).magnitude > 440 then
	 	rayPart:Destroy()
	 break
	 end
	
	
            if hit then
					local damage = math.random(40, 75)
				if hit.Parent:findFirstChild("Humanoid") ~= nil then
					hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - damage
					    coroutine.wrap(function()
        local prt = Instance.new("Part", char)
        prt.FormFactor = "Custom"
        prt.Size = Vector3.new(0.1, 0.1, 0.1)
        prt.Transparency = 1
        prt.CanCollide = false
        prt.CFrame = CFrame.new(rayPart.CFrame.x, rayPart.CFrame.y, rayPart.CFrame.z)
        prt.Anchored = true
        coroutine.resume(coroutine.create(function()
                        for i = 2, 10, 0.1 do
                                if prt == nil then return end
                        prt.CFrame = prt.CFrame * CFrame.new(0, 0.05, 0)
                        game:service'RunService'.Stepped:wait()
                        end
        end))
        
local bg = Instance.new("BillboardGui")
bg.Parent = prt
bg.Adornee = prt
bg.Size = UDim2.new(4, 0, 3.5, 0)
bg.ExtentsOffset = Vector3.new(0, 0, 0)
local lol = Instance.new("TextLabel")
lol.Size = UDim2.new(1.3, 0, 0.4, 0)
lol.TextScaled = true
lol.TextWrapped = true
lol.BackgroundTransparency = 1
lol.Parent = bg
lol.FontSize = "Size24"
lol.TextColor3 = Color3.new(1, 0, 0)
lol.TextStrokeTransparency = 0
lol.Font = "ArialBold"
lol.Text = "-"..damage
        
wait(3)
prt:Destroy()
end)()
				end
				if hit.Parent:IsA("Hat") and hit.Parent.Parent:findFirstChild("Humanoid") ~= nil then
					hit.Parent.Parent.Humanoid.Health = hit.Parent.Parent.Humanoid.Health - damage
										    coroutine.wrap(function()
        local prt = Instance.new("Part", char)
        prt.FormFactor = "Custom"
        prt.Size = Vector3.new(0.1, 0.1, 0.1)
        prt.Transparency = 1
        prt.CanCollide = false
        prt.CFrame = CFrame.new(rayPart.CFrame.x, rayPart.CFrame.y, rayPart.CFrame.z)
        prt.Anchored = true
        coroutine.resume(coroutine.create(function()
                        for i = 2, 10, 0.05 do
                                if prt == nil then return end
                        prt.CFrame = prt.CFrame * CFrame.new(0, 0.05, 0)
                        game:service'RunService'.Stepped:wait()
                        end
        end))
        
local bg = Instance.new("BillboardGui")
bg.Parent = prt
bg.Adornee = prt
bg.Size = UDim2.new(4, 0, 3.5, 0)
bg.ExtentsOffset = Vector3.new(0, 0, 0)
local lol = Instance.new("TextLabel")
lol.Size = UDim2.new(1.3, 0, 0.4, 0)
lol.TextScaled = true
lol.TextWrapped = true
lol.BackgroundTransparency = 1
lol.Parent = bg
lol.FontSize = "Size24"
lol.TextColor3 = Color3.new(1, 0, 0)
lol.TextStrokeTransparency = 0
lol.Font = "ArialBold"
lol.Text = "-"..damage
        
wait(3)
prt:Destroy()
end)()
					end
                bulletposition = hitposition
                rayPart.CFrame = CFrame.new(bulletposition, bulletposition+bulletvelocity)
				wait(0.5)
                rayPart:Destroy()
				connection:disconnect()
                break
            end
	        rayPart.CFrame = CFrame.new(bulletposition, bulletposition+bulletvelocity)
        end
    end))
				end)()
		wait(0.8)
			debounce = false
		
end)



end}
module[2] = {"Artillery Beacon",function()

Player = game.Players.LocalPlayer
Name = "Artillery Beacon"
selected = false
Button1Down = false
thrown = false


function makeParts(format)
	local beacon = Instance.new("Model")
	beacon.Name = Name
	beacon.Parent = Player.Character
	local pm = Instance.new("Part")
	pm.Name = "Handle"
	pm.FormFactor = "Custom"
	pm.Size = Vector3.new(1, 1, 1)
	pm.BrickColor = BrickColor.new("Really black")
	pm.Locked = true
	pm.TopSurface = 0
	pm.BottomSurface = 0
	pm.Parent = beacon
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.5, 1.25, 0.2)
	m.Parent = pm
	local w = Instance.new("Weld")
	w.Part0 = pm
	if format == "hand" then
		w.Part1 = Player.Character:FindFirstChild("Right Arm")
		w.C0 = CFrame.new(-1.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(90))
		w.C1 = CFrame.new()
	elseif format == "holster" then
		w.Part1 = Player.Character:FindFirstChild("Torso")
		w.C0 = CFrame.new(0.7, 0.25, 0.6)
		w.C1 = CFrame.new()
		beacon.Name = Name.. " (Holstered)"
	end
	w.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Explode"
	s.SoundId = "http://www.roblox.com/Asset/?id=2101148"
	s.Volume = 1
	s.Pitch = 1
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Beep"
	s.SoundId = "http://www.roblox.com/Asset/?id=15666462"
	s.Volume = 1
	s.Pitch = 0.75
	s.Looped = true
	s.Parent = pm
	local p = Instance.new("Part")
	p.Name = "Antenna"
	p.FormFactor = "Custom"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Dark stone grey")
	p.Transparency = 0
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = beacon
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.1, 0.5, 0.1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0.1, -0.85, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Light"
	p.FormFactor = "Custom"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Bright green")
	p.Transparency = 1
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = beacon
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Sphere"
	m.Scale = Vector3.new(0.1, 0.1, 0.1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(-0.175, -0.64, 0)
	w.C1 = CFrame.new()
	w.Parent = p
end


function removeParts(format)
	if format == "hand" then
		if Player.Character:FindFirstChild(Name) ~= nil then
			Player.Character[Name]:Remove()
		end
	elseif format == "holster" then
		if Player.Character:FindFirstChild(Name.. " (Holstered)") ~= nil then
			Player.Character[Name.. " (Holstered)"]:Remove()
		end
	end
end


function SetAngle(Joint, Angle, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	if Joint == 1 or Joint == 3 then
		Joints[Joint].DesiredAngle = Angle
	end
	if Joint == 2 or Joint == 4 then
		Joints[Joint].DesiredAngle = -Angle
	end
end


function ForceAngle(Joint, Angle, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	if Joint == 1 or Joint == 3 then
		Joints[Joint].DesiredAngle = Angle
		Joints[Joint].CurrentAngle = Angle
	end
	if Joint == 2 or Joint == 4 then
		Joints[Joint].DesiredAngle = -Angle
		Joints[Joint].CurrentAngle = -Angle
	end
end


function SetSpeed(Joint, Speed, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	Joints[Joint].MaxVelocity = Speed
end


function DisableLimb(Limb, Character)
	if Character == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder"),
		Character.Torso:FindFirstChild("Left Shoulder"),
		Character.Torso:FindFirstChild("Right Hip"),
		Character.Torso:FindFirstChild("Left Hip")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	local Joint = Instance.new("Motor")
	Joint.Parent = Character.Torso
	Joint.Part0 = Character.Torso
	Joint.Part1 = Limbs[Limb]
	if Limb == 1 then
		Joint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.Name = "Right Shoulder 2"
	elseif Limb == 2 then
		Joint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.Name = "Left Shoulder 2"
	elseif Limb == 3 then
		Joint.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.Name = "Right Hip 2"
	elseif Limb == 4 then
		Joint.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.Name = "Left Hip 2"
	end
	Joint.MaxVelocity = Joints[Limb].MaxVelocity
	Joint.CurrentAngle = Joints[Limb].CurrentAngle
	Joint.DesiredAngle = Joints[Limb].DesiredAngle
	Joints[Limb]:Remove()
end


function ResetLimbCFrame(Limb, Character)
	if Character == nil then return false end
	if Character.Parent == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	if Limb == 1 then
		Joints[Limb].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	elseif Limb == 2 then
		Joints[Limb].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	elseif Limb == 3 then
		Joints[Limb].C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	elseif Limb == 4 then
		Joints[Limb].C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	end
end


function EnableLimb(Limb, Character)
	if Character == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	if Limb == 1 then
		Joints[Limb].Name = "Right Shoulder"
	elseif Limb == 2 then
		Joints[Limb].Name = "Left Shoulder"
	elseif Limb == 3 then
		Joints[Limb].Name = "Right Hip"
	elseif Limb == 4 then
		Joints[Limb].Name = "Left Hip"
	end
	local Animate = Character:FindFirstChild("Animate")
	if Animate == nil then return false end
	Animate = Animate:Clone()
	Character.Animate:Remove()
	Animate.Parent = Character
end


function Weld(x, y)
	local weld = Instance.new("Weld")
	weld.Part0 = x
	weld.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse() * CJ
	local C1 = y.CFrame:inverse() * CJ
	weld.C0 = C0
	weld.C1 = C1
	weld.Parent = x
end


function tagHumanoid(humanoid)
	local tag = Instance.new("ObjectValue")
	tag.Name = "creator"
	tag.Value = Player
	tag.Parent = humanoid
	local tag = Instance.new("StringValue")
	tag.Name = "creatorType1"
	tag.Value = Name
	tag.Parent = humanoid
	local tag = Instance.new("StringValue")
	tag.Name = "creatorType2"
	tag.Value = "blown to pieces"
	tag.Parent = humanoid
end


function untagHumanoid(humanoid)
	if humanoid ~= nil then
		local tag = humanoid:FindFirstChild("creator")
		if tag ~= nil then
			tag:Remove()
		end
		local tag = humanoid:FindFirstChild("creatorType1")
		if tag ~= nil then
			tag:Remove()
		end
		local tag = humanoid:FindFirstChild("creatorType2")
		if tag ~= nil then
			tag:Remove()
		end
	end
end


function fire(v)
	if Player.Character:FindFirstChild(Name) == nil then makeParts("hand") end
	if Player.Character[Name]:FindFirstChild("Handle") == nil then return end
	if Player.Character[Name].Handle:FindFirstChild("Weld") ~= nil then Player.Character[Name].Handle.Weld:Remove() end
	local bodyVelocity = Instance.new("BodyVelocity")
	bodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	bodyVelocity.velocity = v * 75
	bodyVelocity.Parent = Player.Character[Name].Handle
	wait(0.1)
	bodyVelocity:Remove()
end


function onButton1Down(mouse)
	if selected == false then return end
	if Player.Character:FindFirstChild(Name) ~= nil and Button1Down ~= true and thrown ~= true then
		if Player.Character[Name]:FindFirstChild("Handle") == nil then return end
		if Player.Character[Name]:FindFirstChild("Antenna") == nil then return end
		if Player.Character[Name]:FindFirstChild("Light") == nil then return end
		Button1Down = true
		Player.Character[Name].Light.Transparency = 0.4
		coroutine.resume(coroutine.create(function(target)
			local pos1 = target.Position
			local pos2 = pos1
			while true do
				if target == nil then return end
				if target.Parent == nil then return end
				pos2 = pos1
				pos1 = target.Position
				local trail = Instance.new("Part")
				trail.BrickColor = target.BrickColor
				trail.TopSurface = 0
				trail.BottomSurface = 0
				trail.FormFactor = target.FormFactor
				trail.Size = Vector3.new(1, 1, 1)
				trail.Reflectance = 0
				trail.Transparency = 0.3
				trail.Anchored = true
				trail.CanCollide = false
				trail.CFrame = CFrame.new((pos1 + pos2) / 2, pos2)
				trail.Parent = workspace
				local mesh = Instance.new("SpecialMesh")
				mesh.MeshType = "Brick"
				mesh.Scale = Vector3.new(0.2, 0.2, (pos2 - pos1).magnitude)
				mesh.Parent = trail
				coroutine.resume(coroutine.create(function(part) for i = 3, 10, 1 do part.Transparency = i / 10 wait(0.1) end part:Remove() end), trail)
				wait()
			end
		end), Player.Character[Name].Light)
		wait(0.5)
		Player.Character[Name].Handle.Beep:Play()
		Player.Character[Name].Light.BrickColor = BrickColor.new("Bright orange")
		coroutine.resume(coroutine.create(function()
			wait(3)
			if Player.Character:FindFirstChild(Name) ~= nil then
				if Player.Character[Name]:FindFirstChild("Light") ~= nil then Player.Character[Name].Light.BrickColor = BrickColor.new("Really red") end
				if Player.Character[Name]:FindFirstChild("Handle") ~= nil then Player.Character[Name].Handle.Beep.Pitch = 1.25 end
				local position = Player.Character[Name].Handle.Position
				local s = Player.Character[Name].Handle.Explode:Clone()
				Tool:Remove()
				coroutine.resume(coroutine.create(function()
					local weld1 = Player.Character[Name].Light:FindFirstChild("Weld")
					local weld2 = Player.Character[Name].Antenna:FindFirstChild("Weld")
					if weld1 == nil then return end
					if weld2 == nil then return end
					local weld1c = weld1:Clone()
					local weld2c = weld2:Clone()
					while true do
						if Player.Character ~= nil then
							if Player.Character:FindFirstChild(Name) ~= nil then
								if weld1.Parent == nil then
									if Player.Character[Name]:FindFirstChild("Light") ~= nil then
										weld1c:Clone().Parent = Player.Character[Name].Light
										Player.Character[Name]:MakeJoints()
									end
								end
								if weld2.Parent == nil then
									if Player.Character[Name]:FindFirstChild("Handle") ~= nil then
										weld2c:Clone().Parent = Player.Character[Name].Antenna
										Player.Character[Name]:MakeJoints()
									end
								end
							end
						end
						wait()
					end
				end))
				for i = 0, math.random(30, 50) do
					if Player.Character:FindFirstChild("Humanoid") ~= nil then
						if Player.Character.Humanoid.Health <= 0 then break end
						local shell = Instance.new("Part")
						shell.Name = "Artillery Shell"
						shell.Anchored = true
						shell.BrickColor = BrickColor.new("Medium stone grey")
						shell.FormFactor = "Custom"
						shell.Size = Vector3.new(2, 5, 2)
						shell.TopSurface = 0
						shell.BottomSurface = 0
						shell.Parent = workspace
						coroutine.resume(coroutine.create(function(part)
							local offset = Vector3.new(math.random(-50, 50), math.random(-10, 10), math.random(-50, 50))
							for i = 1000, 0, -25 do
								part.CFrame = CFrame.new((position + offset) + Vector3.new(0, i, 0))
								wait()
							end
							local e = Instance.new("Explosion")
							e.Position = part.Position
							e.BlastPressure = 500000
							e.BlastRadius = 25
							e.Parent = workspace
							e.Hit:connect(function(hit) if hit.Parent:FindFirstChild("Humanoid") ~= nil then tagHumanoid(hit.Parent.Humanoid) delay(1, function() untagHumanoid(hit.Parent.Humanoid) end) end end)
							local s2 = s:Clone()
							s2.Pitch = math.random(70, 90) / 100
							s2.Parent = workspace
							s2:Play()
							part:Remove()
						end), shell)
					end
					wait(math.random(1, 5) / 10)
				end
				if Player.Character:FindFirstChild(Name) ~= nil then if Player.Character[Name]:FindFirstChild("Handle") ~= nil then Player.Character[Name].Handle.Beep:Stop() end end
			end
			removeParts("hand")
			if Player.Character:FindFirstChild("WeaponActivated") ~= nil then
				Player.Character.WeaponActivated:Remove()
			end
			thrown = false
			Button1Down = false
			selected = true
			onDeselected(mouse)
			removeParts("holster")
			script:Remove()
		end))
	end
end


function onButton1Up(mouse)
	if selected == false then return end
	if Button1Down == true and thrown ~= true then
		thrown = true
		SetSpeed(1, 0.75, Player.Character)
		SetAngle(1, 0, Player.Character)
		EnableLimb(1, Player.Character)
		fire((mouse.Hit.p - Player.Character[Name].Handle.Position).unit)
	end
	Button1Down = false
end


function onKeyDown(key, mouse)
	if selected == false then return end
	key = key:lower()
	if key == "q" and Button1Down == false and thrown ~= true then
		if mouse.Target == nil then return end
		if game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent) ~= nil then
			onDeselected(mouse)
			removeParts("holster")
			script.Parent.Parent = game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent).Backpack
		end
	end
end


function onSelected(mouse)
	if selected == true then return end
	selected = true
	while Player.Character:FindFirstChild("WeaponActivated") ~= nil or thrown == true do
		if Player.Character.WeaponActivated.Value == nil then break end
		if Player.Character.WeaponActivated.Value.Parent == nil then break end
		wait()
	end
	removeParts("holster")
	makeParts("hand")
	local weapon = Instance.new("ObjectValue")
	weapon.Name = "WeaponActivated"
	weapon.Value = script.Parent
	weapon.Parent = Player.Character
	DisableLimb(1, Player.Character)
	SetAngle(1, math.rad(200), Player.Character)
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.Button1Up:connect(function() onButton1Up(mouse) end)
	mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
end


function onDeselected(mouse)
	if selected == false then return end
	selected = false
	while Button1Down == true or thrown == true do
		wait()
	end
	if Player.Character:FindFirstChild("WeaponActivated") ~= nil then
		if Player.Character.WeaponActivated.Value == script.Parent then
			Player.Character.WeaponActivated:Remove()
		end
	end
	while Player.Character:FindFirstChild("WeaponActivated") ~= nil do
		if Player.Character.WeaponActivated.Value == nil then break end
		if pcall(function() if Player.Character.WeaponActivated.Value.Parent == nil then return true end end) then break end
		wait()
	end
	removeParts("hand")
	makeParts("holster")
	SetAngle(1, 0, Player.Character)
	EnableLimb(1, Player.Character)
end


if script.Parent.ClassName ~= "HopperBin" then
	Tool = Instance.new("HopperBin")
	Tool.Name = Name
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
	makeParts("holster")
	Tool.Selected:connect(onSelected)
	Tool.Deselected:connect(onDeselected)
end

end}

 
 

module[1] = {"Assassin",function()


Players = game.Players
Workspace = game.Workspace
HopperBinName = "Sword"
Activated = false
Equipped = false
Equipping = false
Unequipping = false
Flaming = false
Shielding = false
SlimeCharge = false
DarkCharge = false
Mode = ""
Damage = 15
ExplosionVictim = ""
Name = "DarkChaosAssassin"
Me = Players.LocalPlayer
Backpack = Me["Backpack"]
PlayerGui = Me["PlayerGui"]
wait(0.8)

Check = Me.Character:findFirstChild("Loaded")
if Check == nil then
Gui = Instance.new("ScreenGui")
Gui.Parent = PlayerGui
Gui.Name = "LoadGui"
Background = Instance.new("ImageLabel")
Background.Parent = Gui
Background.Name = "Background"
Background.Size = UDim2.new(0.25, 0, 0.05, 0)
Background.BackgroundTransparency = 0.7
Background.Position = UDim2.new(0.55, 0, 0, 0) 
Header = Instance.new("TextLabel")
Header.Parent = Background
Header.Name = "Header"
Header.Size = UDim2.new(0, 0, 0, 0)
Header.BackgroundTransparency = 1
Header.Position = UDim2.new(0.5, 0, 0.2, 0)
Header.Text = "[ Loading : 0 ]"
Bar = Instance.new("ImageLabel")
Bar.Parent = Background
Bar.Size = UDim2.new(0.9, 0, 0.5, 0)
Bar.BackgroundTransparency = 0.2
Bar.BackgroundColor = BrickColor.new("Mid gray")
Bar.Position = UDim2.new(0.05, 0, 0.37, 0)
Bar.BorderSizePixel = 0
Bar2 = Instance.new("ImageLabel")
Bar2.Parent = Bar
Bar2.Size = UDim2.new(0, 0, 1, 0)
Bar2.BackgroundTransparency = 0.2
Bar2.BackgroundColor = BrickColor.new("Really Really black")
Bar2.Position = UDim2.new(0, 0, 0, 0)
Bar2.BorderSizePixel = 0
for i = 1 , 50 do
Bar2.Size = Bar2.Size + UDim2.new(0.02, 0, 0, 0)
Header.Text = "[ Loading : "..(i*2).." ]"
wait()
end
Header.Text = "[ Loaded ]"
wait(1)
Loaded = Instance.new("IntValue")
Loaded.Parent = Me.Character
Loaded.Name = "Loaded"
Gui:Remove()
end
------------------------------------------------------------>
--[[
?     -->> Joints
--]]
------------------------------------------------------------>
LeftShoulder = Me.Character.Torso["Left Shoulder"]
RightShoulder = Me.Character.Torso["Right Shoulder"]
LeftShoulder.C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RightShoulder.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
OriginalLeftShoulder = LeftShoulder.C0
OriginalLeftShoulder2 = LeftShoulder.C1
OriginalRightShoulder = RightShoulder.C0
OriginalRightShoulder2 = RightShoulder.C1
------------------------------------------------------------>
--[[
?     -->> HopperBin
--]]
------------------------------------------------------------>
HopperBin = Instance.new("HopperBin")
Test = Backpack:findFirstChild(HopperBinName)
if Test ~= nil then
Test.Name = "Fake"
end
Stuff = Me.Character:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "Hat" then
  Stuff[i]:Remove()
 end
end
HopperBin.Parent = Backpack
HopperBin.Name = HopperBinName
wait(1)
------------------------------------------------------------>
--[[
?     -->> Charge Function
--]]
------------------------------------------------------------>
function onCharge(Color)
 Charge = Instance.new("Part")
 Charge.Parent = Me.Character.Torso
 Charge.Anchored = true
 Charge.CanCollide = false
 Charge.Locked = true
 Charge.Transparency = 0
 Charge.BrickColor = BrickColor.new(Color)
 Charge.formFactor = "Symmetric"
 Charge.Size = Vector3.new(4, 4, 4)
 Charge.TopSurface = "Smooth"
 Charge.BottomSurface = "Smooth"
 Charge.CFrame = Me.Character.Torso.CFrame
 ChargeMesh = Instance.new("SpecialMesh")
 ChargeMesh.Parent = Charge
 ChargeMesh.MeshType = "Brick"
 ChargeMesh.Scale = Vector3.new(1.5, 1.5, 1.5)
 Sound.SoundId = "http://www.roblox.com/asset/?id=2101137"
 Sound:play()
 for i = 1 , 20 do
  Stuff = Charge:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].Name == "Particle" then
    Stuff[i].Transparency = Stuff[i].Transparency + 0.05
    Stuff[i].BodyPosition.position = Me.Character.Torso.Position
   end
  end
  Particle = Instance.new("Part")
  Particle.Size = Vector3.new(1, 1, 1)
  Particle.Parent = Charge
  Particle.Locked = true
  Particle.CanCollide = false
  Particle.Shape = "Ball"
  Particle.BrickColor = BrickColor.new(Color)
  Particle.TopSurface = "Smooth"
  Particle.BottomSurface = "Smooth"
  Particle.Name = "Particle"
  Particle.CFrame = Me.Character.Torso.CFrame * CFrame.new(math.random(-i, i)*2, math.random(-i, i)*2, math.random(-i, i)*2)
  ParticleMesh = Instance.new("SpecialMesh")
  ParticleMesh.Parent = Particle
  ParticleMesh.MeshType = "Sphere"
  ParticleMesh.Scale = ChargeMesh.Scale / Vector3.new(1.5, 1.5, 1.5)
  BodyPosition = Instance.new("BodyPosition")
  BodyPosition.Parent = Particle
  BodyPosition.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  BodyPosition.position = Me.Character.Torso.Position
  Particle:BreakJoints()
  
  if i >= 10 then
   ChargeMesh.Scale = ChargeMesh.Scale + Vector3.new(0.5, 0.5, 0.5)
  end
  Charge.CFrame = Me.Character.Torso.CFrame * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
  Charge.Transparency = Charge.Transparency + 0.05
  Stuff = Charge:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].Name == "Effect" then
    Stuff[i]:Remove()
   end
  end
  part = Instance.new("Part")
  part.Parent = Me.Character
  part.CFrame = Me.Character.Torso.CFrame
  Angle = (6.28/7)
  angle = 0
  for ii = 1 , 14 do
   angle = Angle + angle
   part.CFrame = Me.Character.Torso.CFrame
   part.CFrame = part.CFrame * CFrame.Angles(0, angle, 0)
   p = Instance.new("Part")
   p.Parent = Charge
   p.Name = "Effect"
   p.formFactor = "Symmetric"
   p.Size = Vector3.new(2, 1, 1)
   p.BrickColor = BrickColor.new(Color)
   p.Locked = true
   p.Anchored = true
   p.CanCollide = false
   p.TopSurface = "Smooth"
   p.BottomSurface = "Smooth"
   p.CFrame = part.CFrame * CFrame.new(0, -2.5, 20-i)
  end
  part:Remove()
  for i = 1 , 5 do
   Effect = Instance.new("Part")
   Effect.Parent = Charge
   Effect.Anchored = true
   Effect.CanCollide = false
   Effect.Locked = true
   Effect.Name = "Effect"
   Effect.Transparency = Charge.Transparency
   Effect.BrickColor = BrickColor.new(Color)
   Effect.formFactor = "Symmetric"
   Effect.Size = Vector3.new(1, 1, 1)
   Effect.TopSurface = "Smooth"
   Effect.BottomSurface = "Smooth"
   Effect.CFrame = Charge.CFrame * CFrame.new(math.random(-(ChargeMesh.Scale.X)*4, ChargeMesh.Scale.X*4), math.random(-(ChargeMesh.Scale.Y)*4, ChargeMesh.Scale.Y*4), math.random(-(ChargeMesh.Scale.Z)*4, ChargeMesh.Scale.Z*4))
   Effect.CFrame = CFrame.new(Effect.Position, Charge.Position)
   EffectMesh = Instance.new("SpecialMesh")
   EffectMesh.Parent = Effect
   EffectMesh.MeshType = "Sphere"
   EffectMesh.Scale = Vector3.new(1, 1, ChargeMesh.Scale.Z*4)
  end
  wait(0.05)
 end
 Charge:Remove()
 Sound.SoundId = "http://www.roblox.com/asset/?id=2101148"
 Sound:play()
end
------------------------------------------------------------>
--[[
?     -->> Charge Function 2
--]]
------------------------------------------------------------>
function onCharge2(Color)
 Charge = Instance.new("Part")
 Charge.Parent = Me.Character.Torso
 Charge.Anchored = true
 Charge.CanCollide = false
 Charge.Locked = true
 Charge.Transparency = 0
 Charge.BrickColor = BrickColor.new(Color)
 Charge.formFactor = "Symmetric"
 Charge.Size = Vector3.new(4, 4, 4)
 Charge.TopSurface = "Smooth"
 Charge.BottomSurface = "Smooth"
 Charge.CFrame = Me.Character.Torso.CFrame
 ChargeMesh = Instance.new("SpecialMesh")
 ChargeMesh.Parent = Charge
 ChargeMesh.MeshType = "Brick"
 ChargeMesh.Scale = Vector3.new(1.5, 1.5, 1.5)
 for i = 1 , 20 do
  Stuff = Charge:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].Name == "Particle" then
    Stuff[i].Transparency = Stuff[i].Transparency + 0.05
    Stuff[i].BodyPosition.position = Me.Character.Torso.Position
   end
  end
  Particle = Instance.new("Part")
  Particle.Size = Vector3.new(1, 1, 1)
  Particle.Parent = Charge
  Particle.Locked = true
  Particle.CanCollide = false
  Particle.Shape = "Ball"
  Particle.BrickColor = BrickColor.new(Color)
  Particle.TopSurface = "Smooth"
  Particle.BottomSurface = "Smooth"
  Particle.Name = "Particle"
  Particle.CFrame = Me.Character.Torso.CFrame * CFrame.new(math.random(-i, i)*2, math.random(-i, i)*2, math.random(-i, i)*2)
  ParticleMesh = Instance.new("SpecialMesh")
  ParticleMesh.Parent = Particle
  ParticleMesh.MeshType = "Sphere"
  ParticleMesh.Scale = ChargeMesh.Scale / Vector3.new(1.5, 1.5, 1.5)
  BodyPosition = Instance.new("BodyPosition")
  BodyPosition.Parent = Particle
  BodyPosition.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  BodyPosition.position = Me.Character.Torso.Position
  Particle:BreakJoints()
  if i >= 10 then
   ChargeMesh.Scale = ChargeMesh.Scale + Vector3.new(0.5, 0.5, 0.5)
  end
  Charge.CFrame = Me.Character.Torso.CFrame * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
  Charge.Transparency = Charge.Transparency + 0.05
  Stuff = Charge:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].Name == "Effect" then
    Stuff[i]:Remove()
   end
  end
  part = Instance.new("Part")
  part.Parent = Me.Character
  part.CFrame = Me.Character.Torso.CFrame
  Angle = (6.28/7)
  angle = 0
  for ii = 1 , 14 do
   angle = Angle + angle
   part.CFrame = Me.Character.Torso.CFrame
   part.CFrame = part.CFrame * CFrame.Angles(0, angle, 0)
   p = Instance.new("Part")
   p.Parent = Charge
   p.Name = "Effect"
   p.formFactor = "Symmetric"
   p.Size = Vector3.new(2, 1, 1)
   p.BrickColor = BrickColor.new(Color)
   p.Locked = true
   p.Anchored = true
   p.CanCollide = false
   p.TopSurface = "Smooth"
   p.BottomSurface = "Smooth"
   p.CFrame = part.CFrame * CFrame.new(0, -2.5, 20-i)
  end
  part:Remove()
  for i = 1 , 5 do
   Effect = Instance.new("Part")
   Effect.Parent = Charge
   Effect.Anchored = true
   Effect.CanCollide = false
   Effect.Locked = true
   Effect.Name = "Effect"
   Effect.Transparency = Charge.Transparency
   Effect.BrickColor = BrickColor.new(Color)
   Effect.formFactor = "Symmetric"
   Effect.Size = Vector3.new(1, 1, 1)
   Effect.TopSurface = "Smooth"
   Effect.BottomSurface = "Smooth"
   Effect.CFrame = Charge.CFrame * CFrame.new(math.random(-(ChargeMesh.Scale.X)*4, ChargeMesh.Scale.X*4), math.random(-(ChargeMesh.Scale.Y)*4, ChargeMesh.Scale.Y*4), math.random(-(ChargeMesh.Scale.Z)*4, ChargeMesh.Scale.Z*4))
   Effect.CFrame = CFrame.new(Effect.Position, Charge.Position)
   EffectMesh = Instance.new("SpecialMesh")
   EffectMesh.Parent = Effect
   EffectMesh.MeshType = "Sphere"
   EffectMesh.Scale = Vector3.new(1, 1, ChargeMesh.Scale.Z*4)
  end
  wait(0.05)
 end
 Charge:Remove()
end
------------------------------------------------------------>
--[[
?     -->> Charge/Aim Function
--]]
------------------------------------------------------------>
function onChargeAim(Color, VictimTorso)
 Charge = Instance.new("Part")
 Charge.Parent = Me.Character.Torso
 Charge.Anchored = true
 Charge.CanCollide = false
 Charge.Locked = true
 Charge.Transparency = 0
 Charge.BrickColor = BrickColor.new(Color)
 Charge.formFactor = "Symmetric"
 Charge.Size = Vector3.new(4, 4, 4)
 Charge.TopSurface = "Smooth"
 Charge.BottomSurface = "Smooth"
 Charge.CFrame = Me.Character.Torso.CFrame
 ChargeMesh = Instance.new("SpecialMesh")
 ChargeMesh.Parent = Charge
 ChargeMesh.MeshType = "Brick"
 ChargeMesh.Scale = Vector3.new(1.5, 1.5, 1.5)
 Sound.SoundId = "http://www.roblox.com/asset/?id=2101137"
 Sound:play()
 for i = 1 , 20 do
  Stuff = Charge:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].Name == "Particle" then
    Stuff[i].Transparency = Stuff[i].Transparency + 0.05
    Stuff[i].BodyPosition.position = Me.Character.Torso.Position
   end
  end
  Particle = Instance.new("Part")
  Particle.Size = Vector3.new(1, 1, 1)
  Particle.Parent = Charge
  Particle.Locked = true
  Particle.CanCollide = false
  Particle.Shape = "Ball"
  Particle.BrickColor = BrickColor.new(Color)
  Particle.TopSurface = "Smooth"
  Particle.BottomSurface = "Smooth"
  Particle.Name = "Particle"
  Particle.CFrame = Me.Character.Torso.CFrame * CFrame.new(math.random(-i, i)*2, math.random(-i, i)*2, math.random(-i, i)*2)
  ParticleMesh = Instance.new("SpecialMesh")
  ParticleMesh.Parent = Particle
  ParticleMesh.MeshType = "Sphere"
  ParticleMesh.Scale = ChargeMesh.Scale / Vector3.new(1.5, 1.5, 1.5)
  BodyPosition = Instance.new("BodyPosition")
  BodyPosition.Parent = Particle
  BodyPosition.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  BodyPosition.position = Me.Character.Torso.Position
  Particle:BreakJoints()
  
  if i >= 10 then
   ChargeMesh.Scale = ChargeMesh.Scale + Vector3.new(0.5, 0.5, 0.5)
  end
  Charge.CFrame = Me.Character.Torso.CFrame * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
  Charge.Transparency = Charge.Transparency + 0.05
  Stuff = Charge:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].Name == "Effect" then
    Stuff[i]:Remove()
   end
  end
  part = Instance.new("Part")
  part.Parent = Me.Character
  part.CFrame = Me.Character.Torso.CFrame
  Angle = (6.28/7)
  angle = 0
  for ii = 1 , 14 do
   angle = Angle + angle
   part.CFrame = Me.Character.Torso.CFrame
   part.CFrame = part.CFrame * CFrame.Angles(0, angle, 0)
   p = Instance.new("Part")
   p.Parent = Charge
   p.Name = "Effect"
   p.formFactor = "Symmetric"
   p.Size = Vector3.new(2, 1, 1)
   p.BrickColor = BrickColor.new(Color)
   p.Locked = true
   p.Anchored = true
   p.CanCollide = false
   p.TopSurface = "Smooth"
   p.BottomSurface = "Smooth"
   p.CFrame = part.CFrame * CFrame.new(0, -2.5, 20-i)
  end
  part:Remove()
  part = Instance.new("Part")
  part.Parent = Me.Character
  part.CFrame = Me.Character.Torso.CFrame
  Angle = (6.28/7)
  angle = 0
  for ii = 1 , 14 do
   angle = Angle + angle
   part.CFrame = VictimTorso.CFrame
   part.CFrame = part.CFrame * CFrame.Angles(0, angle, 0)
   p = Instance.new("Part")
   p.Parent = Charge
   p.Name = "Effect"
   p.formFactor = "Symmetric"
   p.Size = Vector3.new(2, 1, 1)
   p.BrickColor = BrickColor.new(Color)
   p.Locked = true
   p.Anchored = true
   p.CanCollide = false
   p.TopSurface = "Smooth"
   p.BottomSurface = "Smooth"
   p.CFrame = part.CFrame * CFrame.new(0, -2.5, 20-i)
  end
  part:Remove()
  for i = 1 , 5 do
   Effect = Instance.new("Part")
   Effect.Parent = Charge
   Effect.Anchored = true
   Effect.CanCollide = false
   Effect.Locked = true
   Effect.Name = "Effect"
   Effect.Transparency = Charge.Transparency
   Effect.BrickColor = BrickColor.new(Color)
   Effect.formFactor = "Symmetric"
   Effect.Size = Vector3.new(1, 1, 1)
   Effect.TopSurface = "Smooth"
   Effect.BottomSurface = "Smooth"
   Effect.CFrame = Charge.CFrame * CFrame.new(math.random(-(ChargeMesh.Scale.X)*4, ChargeMesh.Scale.X*4), math.random(-(ChargeMesh.Scale.Y)*4, ChargeMesh.Scale.Y*4), math.random(-(ChargeMesh.Scale.Z)*4, ChargeMesh.Scale.Z*4))
   Effect.CFrame = CFrame.new(Effect.Position, Charge.Position)
   EffectMesh = Instance.new("SpecialMesh")
   EffectMesh.Parent = Effect
   EffectMesh.MeshType = "Sphere"
   EffectMesh.Scale = Vector3.new(1, 1, ChargeMesh.Scale.Z*4)
  end
  wait(0.05)
 end
 Charge:Remove()
 Sound.SoundId = "http://www.roblox.com/asset/?id=2101148"
 Sound:play()
end
------------------------------------------------------------>
--[[
?     -->> Blade
-- The Parts' names are named, "Grip" because I was too lazy to rename them :3
--]]
------------------------------------------------------------>
wait()
Tool = Me.Character:findFirstChild("Sword")
if Tool ~= nil then
 Tool:Remove()
end
Tool = Instance.new("Model")
Tool.Parent = Me.Character
Tool.Name = "Sword"
Handle = Instance.new("Part")
Handle.Parent = Tool
Handle.Locked = true
Handle.Reflectance = 0.5
Handle.CanCollide = false
Handle.TopSurface = "Smooth"
Handle.BottomSurface = "Smooth"
Handle.Size = Vector3.new(1, 1, 1)
Handle.formFactor = "Symmetric"
Handle.Transparency = 1
Handle.Name = "Handle"
Handle.Reflectance = 0
Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Handle
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0, 0, 0)
Weld = Instance.new("Weld")
Weld.Parent = Me.Character["Torso"]
Weld.Part0 = Me.Character["Torso"]
Weld.Part1 = Handle
Weld.C0 = CFrame.new(1.6, 2.3, 0.6) * CFrame.Angles(0, 0, 2.2)
Weld.C0 = Weld.C0 * CFrame.Angles(0, 1.57, 0)
Grip1 = Instance.new("Part")
Grip1.Parent = Tool
Grip1.Locked = true
Grip1.BrickColor = BrickColor.new("Really Really black")
Grip1.Reflectance = 0
Grip1.TopSurface = "Smooth"
Grip1.BottomSurface = "Smooth"
Grip1.Size = Vector3.new(1, 1, 1)
Grip1.formFactor = "Symmetric"
Grip1.Transparency = 0
Grip1.Reflectance = 0
Grip1.CanCollide = false
Grip1.Name = "Grip1"
GripMesh1 = Instance.new("CylinderMesh")
GripMesh1.Parent = Grip1
GripMesh1.Scale = Vector3.new(0.45, 1.6, 0.45)
GripWeld = Instance.new("Weld")
GripWeld.Parent = Handle
GripWeld.Part0 = Handle
GripWeld.Part1 = Grip1
GripWeld.C0 = CFrame.new(0, 0, 0)*CFrame.Angles(0, 0, 0)
Grip2 = Instance.new("Part")
Grip2.Parent = Tool
Grip2.Locked = true
Grip2.BrickColor = BrickColor.new("White")
Grip2.Reflectance = 0
Grip2.TopSurface = "Smooth"
Grip2.BottomSurface = "Smooth"
Grip2.Size = Vector3.new(1, 1, 1)
Grip2.formFactor = "Symmetric"
Grip2.Transparency = 0
Grip2.CanCollide = false
Grip2.Name = "Grip2"
GripMesh2 = Instance.new("CylinderMesh")
GripMesh2.Parent = Grip2
GripMesh2.Scale = Vector3.new(0.46, 0.1, 0.46)
GripWeld2 = Instance.new("Weld")
GripWeld2.Parent = Handle
GripWeld2.Part0 = Handle
GripWeld2.Part1 = Grip2
GripWeld2.C0 = CFrame.new(0, -0.4, 0)*CFrame.Angles(0, 0, 0)
Grip3 = Instance.new("Part")
Grip3.Parent = Tool
Grip3.Locked = true
Grip3.BrickColor = BrickColor.new("White")
Grip3.Reflectance = 0
Grip3.TopSurface = "Smooth"
Grip3.BottomSurface = "Smooth"
Grip3.Size = Vector3.new(1, 1, 1)
Grip3.formFactor = "Symmetric"
Grip3.Transparency = 0
Grip3.CanCollide = false
Grip3.Name = "Grip3"
GripMesh3 = Instance.new("CylinderMesh")
GripMesh3.Parent = Grip3
GripMesh3.Scale = Vector3.new(0.46, 0.1, 0.46)
GripWeld3 = Instance.new("Weld")
GripWeld3.Parent = Handle
GripWeld3.Part0 = Handle
GripWeld3.Part1 = Grip3
GripWeld3.C0 = CFrame.new(0, -0.29, 0)*CFrame.Angles(0, 0, 0.05)
Grip4 = Instance.new("Part")
Grip4.Parent = Tool
Grip4.Locked = true
Grip4.BrickColor = BrickColor.new("White")
Grip4.Reflectance = 0
Grip4.TopSurface = "Smooth"
Grip4.BottomSurface = "Smooth"
Grip4.Size = Vector3.new(1, 1, 1)
Grip4.formFactor = "Symmetric"
Grip4.Transparency = 0
Grip4.CanCollide = false
Grip4.Name = "Grip4"
GripMesh4 = Instance.new("CylinderMesh")
GripMesh4.Parent = Grip4
GripMesh4.Scale = Vector3.new(0.46, 0.1, 0.46)
GripWeld4 = Instance.new("Weld")
GripWeld4.Parent = Handle
GripWeld4.Part0 = Handle
GripWeld4.Part1 = Grip4
GripWeld4.C0 = CFrame.new(0, -0.18, 0)*CFrame.Angles(0, 0, 0)
Grip5 = Instance.new("Part")
Grip5.Parent = Tool
Grip5.Locked = true
Grip5.BrickColor = BrickColor.new("White")
Grip5.Reflectance = 0
Grip5.TopSurface = "Smooth"
Grip5.BottomSurface = "Smooth"
Grip5.Size = Vector3.new(1, 1, 1)
Grip5.formFactor = "Symmetric"
Grip5.Transparency = 0
Grip5.CanCollide = false
Grip5.Name = "Grip5"
GripMesh5 = Instance.new("CylinderMesh")
GripMesh5.Parent = Grip5
GripMesh5.Scale = Vector3.new(0.46, 0.1, 0.46)
GripWeld5 = Instance.new("Weld")
GripWeld5.Parent = Handle
GripWeld5.Part0 = Handle
GripWeld5.Part1 = Grip5
GripWeld5.C0 = CFrame.new(0, -0.07, 0)*CFrame.Angles(0, 0, 0.03)
Grip6 = Instance.new("Part")
Grip6.Parent = Tool
Grip6.Locked = true
Grip6.BrickColor = BrickColor.new("White")
Grip6.Reflectance = 0
Grip6.TopSurface = "Smooth"
Grip6.BottomSurface = "Smooth"
Grip6.Size = Vector3.new(1, 1, 1)
Grip6.formFactor = "Symmetric"
Grip6.Transparency = 0
Grip6.CanCollide = false
Grip6.Name = "Grip6"
GripMesh = Instance.new("CylinderMesh")
GripMesh.Parent = Grip6
GripMesh.Scale = Vector3.new(0.46, 0.1, 0.46)
GripWeld = Instance.new("Weld")
GripWeld.Parent = Handle
GripWeld.Part0 = Handle
GripWeld.Part1 = Grip6
GripWeld.C0 = CFrame.new(0, 0.04, 0)*CFrame.Angles(0, 0, -0.05)
Grip7 = Instance.new("Part")
Grip7.Parent = Tool
Grip7.Locked = true
Grip7.BrickColor = BrickColor.new("White")
Grip7.Reflectance = 0
Grip7.TopSurface = "Smooth"
Grip7.BottomSurface = "Smooth"
Grip7.Size = Vector3.new(1, 1, 1)
Grip7.formFactor = "Symmetric"
Grip7.Transparency = 0
Grip7.CanCollide = false
Grip7.Name = "Grip7"
GripMesh7 = Instance.new("CylinderMesh")
GripMesh7.Parent = Grip7
GripMesh7.Scale = Vector3.new(0.46, 0.1, 0.46)
GripWeld7 = Instance.new("Weld")
GripWeld7.Parent = Handle
GripWeld7.Part0 = Handle
GripWeld7.Part1 = Grip7
GripWeld7.C0 = CFrame.new(0, 0.15, 0)*CFrame.Angles(0, 0, 0)
Grip8 = Instance.new("Part")
Grip8.Parent = Tool
Grip8.Locked = true
Grip8.BrickColor = BrickColor.new("White")
Grip8.Reflectance = 0
Grip8.TopSurface = "Smooth"
Grip8.BottomSurface = "Smooth"
Grip8.Size = Vector3.new(1, 1, 1)
Grip8.formFactor = "Symmetric"
Grip8.Transparency = 0
Grip8.CanCollide = false
Grip8.Name = "Grip8"
GripMesh8 = Instance.new("CylinderMesh")
GripMesh8.Parent = Grip8
GripMesh8.Scale = Vector3.new(0.46, 0.1, 0.46)
GripWeld8 = Instance.new("Weld")
GripWeld8.Parent = Handle
GripWeld8.Part0 = Handle
GripWeld8.Part1 = Grip8
GripWeld8.C0 = CFrame.new(0, 0.26, 0)*CFrame.Angles(0, 0, 0)
Grip9 = Instance.new("Part")
Grip9.Parent = Tool
Grip9.Locked = true
Grip9.BrickColor = BrickColor.new("White")
Grip9.Reflectance = 0
Grip9.TopSurface = "Smooth"
Grip9.BottomSurface = "Smooth"
Grip9.Size = Vector3.new(1, 1, 1)
Grip9.formFactor = "Symmetric"
Grip9.Transparency = 0
Grip9.CanCollide = false
Grip9.Name = "Grip9"
GripMesh9 = Instance.new("CylinderMesh")
GripMesh9.Parent = Grip9
GripMesh9.Scale = Vector3.new(0.46, 0.1, 0.46)
GripWeld9 = Instance.new("Weld")
GripWeld9.Parent = Handle
GripWeld9.Part0 = Handle
GripWeld9.Part1 = Grip9
GripWeld9.C0 = CFrame.new(0, 0.37, 0)*CFrame.Angles(0, 0, 0.07)
Grip10 = Instance.new("Part")
Grip10.Parent = Tool
Grip10.Locked = true
Grip10.Reflectance = 0
Grip10.CanCollide = false
Grip10.BrickColor = BrickColor.new("Really Really black")
Grip10.Reflectance = 0
Grip10.TopSurface = "Smooth"
Grip10.BottomSurface = "Smooth"
Grip10.Size = Vector3.new(1, 1, 1)
Grip10.formFactor = "Symmetric"
Grip10.Transparency = 0
Grip10.Name = "Grip10"
GripMesh10 = Instance.new("SpecialMesh")
GripMesh10.Parent = Grip10
GripMesh10.MeshType = "Sphere"
GripMesh10.Scale = Vector3.new(0.6, 0.6, 0.6)
GripWeld10 = Instance.new("Weld")
GripWeld10.Parent = Handle
GripWeld10.Part0 = Handle
GripWeld10.Part1 = Grip10
GripWeld10.C0 = CFrame.new(0, -0.8, 0)*CFrame.Angles(0, 0, 0)
Grip11 = Instance.new("Part")
Grip11.Parent = Tool
Grip11.Locked = true
Grip11.BrickColor = BrickColor.new("Really Really black")
Grip11.Reflectance = 0.5
Grip11.TopSurface = "Smooth"
Grip11.CanCollide = false
Grip11.BottomSurface = "Smooth"
Grip11.Size = Vector3.new(1, 1, 1)
Grip11.formFactor = "Symmetric"
Grip11.Transparency = 0
Grip11.Name = "Grip11"
Grip11.Reflectance = 0
GripMesh11 = Instance.new("SpecialMesh")
GripMesh11.Parent = Grip11
GripMesh11.MeshType = "Brick"
GripMesh11.Scale = Vector3.new(0.55, 0.4, 1.4)
GripWeld11 = Instance.new("Weld")
GripWeld11.Parent = Handle
GripWeld11.Part0 = Handle
GripWeld11.Part1 = Grip11
GripWeld11.C0 = CFrame.new(0, 0.85, 0)*CFrame.Angles(0, 0, 0)
Grip12 = Instance.new("Part")
Grip12.Parent = Tool
Grip12.Locked = true
Grip12.CanCollide = false
Grip12.BrickColor = BrickColor.new("Really Really black")
Grip12.Reflectance = 0.5
Grip12.TopSurface = "Smooth"
Grip12.BottomSurface = "Smooth"
Grip12.Size = Vector3.new(1, 1, 1)
Grip12.formFactor = "Symmetric"
Grip12.Transparency = 0
Grip12.Name = "Grip12"
Grip12.Reflectance = 0
GripMesh12 = Instance.new("SpecialMesh")
GripMesh12.Parent = Grip12
GripMesh12.MeshType = "Wedge"
GripMesh12.Scale = Vector3.new(0.55, 0.4, 0.9)
GripWeld12 = Instance.new("Weld")
GripWeld12.Parent = Handle
GripWeld12.Part0 = Handle
GripWeld12.Part1 = Grip12
GripWeld12.C0 = CFrame.new(0, 0.908, 1.1)*CFrame.Angles(3, 0, 0)
Grip13 = Instance.new("Part")
Grip13.Parent = Tool
Grip13.Locked = true
Grip13.CanCollide = false
Grip13.BrickColor = BrickColor.new("Really Really black")
Grip13.Reflectance = 0.5
Grip13.TopSurface = "Smooth"
Grip13.BottomSurface = "Smooth"
Grip13.Size = Vector3.new(1, 1, 1)
Grip13.formFactor = "Symmetric"
Grip13.Transparency = 0
Grip13.Name = "Grip13"
Grip13.Reflectance = 0
GripMesh13 = Instance.new("SpecialMesh")
GripMesh13.Parent = Grip13
GripMesh13.MeshType = "Wedge"
GripMesh13.Scale = Vector3.new(0.55, 0.4, 0.9)
GripWeld13 = Instance.new("Weld")
GripWeld13.Parent = Handle
GripWeld13.Part0 = Handle
GripWeld13.Part1 = Grip13
GripWeld13.C0 = CFrame.new(0, 0.908, -1.1)*CFrame.Angles(-3, 3.14, 0)
Grip14 = Instance.new("Part")
Grip14.Parent = Tool
Grip14.Locked = true
Grip14.CanCollide = false
Grip14.BrickColor = BrickColor.new("White")
Grip14.Reflectance = 0.5
Grip14.TopSurface = "Smooth"
Grip14.BottomSurface = "Smooth"
Grip14.Size = Vector3.new(1, 1, 1)
Grip14.formFactor = "Symmetric"
Grip14.Transparency = 0.1
Grip14.Name = "Grip14"
Grip14.Reflectance = 0
GripMesh14 = Instance.new("SpecialMesh")
GripMesh14.Parent = Grip14
GripMesh14.MeshType = "Brick"
GripMesh14.Scale = Vector3.new(0.552, 0.15, 1.3)
GripWeld14 = Instance.new("Weld")
GripWeld14.Parent = Handle
GripWeld14.Part0 = Handle
GripWeld14.Part1 = Grip14
GripWeld14.C0 = CFrame.new(0, 0.85, 0)*CFrame.Angles(0, 0, 0)
Grip15 = Instance.new("Part")
Grip15.Parent = Tool
Grip15.Locked = true
Grip15.CanCollide = false
Grip15.BrickColor = BrickColor.new("White")
Grip15.Reflectance = 0.5
Grip15.TopSurface = "Smooth"
Grip15.BottomSurface = "Smooth"
Grip15.Size = Vector3.new(1, 1, 1)
Grip15.formFactor = "Symmetric"
Grip15.Transparency = 0.1
Grip15.Name = "Grip15"
Grip15.Reflectance = 0
GripMesh15 = Instance.new("SpecialMesh")
GripMesh15.Parent = Grip15
GripMesh15.MeshType = "Sphere"
GripMesh15.Scale = Vector3.new(0.6, 0.4, 1.5)
GripWeld15 = Instance.new("Weld")
GripWeld15.Parent = Handle
GripWeld15.Part0 = Handle
GripWeld15.Part1 = Grip15
GripWeld15.C0 = CFrame.new(0, 0.85, 0)*CFrame.Angles(0, 0, 0)
Grip16 = Instance.new("Part")
Grip16.Parent = Tool
Grip16.Locked = true
Grip16.BrickColor = BrickColor.new("Really Really black")
Grip16.Reflectance = 0.5
Grip16.TopSurface = "Smooth"
Grip16.BottomSurface = "Smooth"
Grip16.Size = Vector3.new(1, 1, 1)
Grip16.formFactor = "Symmetric"
Grip16.Transparency = 0
Grip16.Name = "Grip16"
Grip16.CanCollide = false
Grip16.Reflectance = 0
GripMesh16 = Instance.new("SpecialMesh")
GripMesh16.Parent = Grip16
GripMesh16.MeshType = "Brick"
GripMesh16.Scale = Vector3.new(0.2, 0.3, 1)
GripWeld = Instance.new("Weld")
GripWeld.Parent = Handle
GripWeld.Part0 = Handle
GripWeld.Part1 = Grip16
GripWeld.C0 = CFrame.new(0, 1.1, 0)*CFrame.Angles(0, 0, 0)
Grip17 = Instance.new("Part")
Grip17.Parent = Tool
Grip17.Locked = true
Grip17.BrickColor = BrickColor.new("Really black")
Grip17.Reflectance = 0.5
Grip17.TopSurface = "Smooth"
Grip17.BottomSurface = "Smooth"
Grip17.Size = Vector3.new(1, 3, 1)
Grip17.formFactor = "Symmetric"
Grip17.Transparency = 0
Grip17.Name = "Grip17"
Grip17.CanCollide = false
Grip17.Reflectance = 0
GripMesh17 = Instance.new("SpecialMesh")
GripMesh17.Parent = Grip17
GripMesh17.MeshType = "Brick"
GripMesh17.Scale = Vector3.new(0.19, 1, 1)
GripWeld17 = Instance.new("Weld")
GripWeld17.Parent = Handle
GripWeld17.Part0 = Handle
GripWeld17.Part1 = Grip17
GripWeld17.C0 = CFrame.new(0, 2.21, -0.08)*CFrame.Angles(-0.08, 0, 0)
Grip18 = Instance.new("Part")
Grip18.Parent = Tool
Grip18.Locked = true
Grip18.BrickColor = BrickColor.new("Really black")
Grip18.Reflectance = 0.5
Grip18.TopSurface = "Smooth"
Grip18.BottomSurface = "Smooth"
Grip18.Size = Vector3.new(1, 3, 1)
Grip18.formFactor = "Symmetric"
Grip18.Transparency = 0
Grip18.Name = "Grip18"
Grip18.CanCollide = false
Grip18.Reflectance = 0
GripMesh18 = Instance.new("SpecialMesh")
GripMesh18.Parent = Grip18
GripMesh18.MeshType = "Brick"
GripMesh18.Scale = Vector3.new(0.19, 1, 1)
GripWeld18 = Instance.new("Weld")
GripWeld18.Parent = Handle
GripWeld18.Part0 = Handle
GripWeld18.Part1 = Grip18
GripWeld18.C0 = CFrame.new(0, 4.15, -0.155)*CFrame.Angles(0, 0, 0)
Grip19 = Instance.new("Part")
Grip19.Parent = Tool
Grip19.Locked = true
Grip19.BrickColor = BrickColor.new("Really black")
Grip19.Reflectance = 0.5
Grip19.TopSurface = "Smooth"
Grip19.BottomSurface = "Smooth"
Grip19.Size = Vector3.new(1, 3, 1)
Grip19.formFactor = "Symmetric"
Grip19.Transparency = 0
Grip19.CanCollide = false
Grip19.Name = "Grip19"
Grip19.Reflectance = 0
GripMesh19 = Instance.new("SpecialMesh")
GripMesh19.Parent = Grip19
GripMesh19.MeshType = "Wedge"
GripMesh19.Scale = Vector3.new(0.19, 1, 1)
GripWeld19 = Instance.new("Weld")
GripWeld19.Parent = Handle
GripWeld19.Part0 = Handle
GripWeld19.Part1 = Grip19
GripWeld19.C0 = CFrame.new(0, 5.99, -0.07)*CFrame.Angles(0.08, 0, 0)
Grip20 = Instance.new("Part")
Grip20.Parent = Tool
Grip20.Locked = true
Grip20.BrickColor = BrickColor.new("White")
Grip20.Reflectance = 0.5
Grip20.TopSurface = "Smooth"
Grip20.BottomSurface = "Smooth"
Grip20.Size = Vector3.new(1, 3, 1)
Grip20.formFactor = "Symmetric"
Grip20.Transparency = 0
Grip20.Name = "Grip20"
Grip20.CanCollide = false
Grip20.Reflectance = 0
GripMesh20 = Instance.new("SpecialMesh")
GripMesh20.Parent = Grip20
GripMesh20.MeshType = "Brick"
GripMesh20.Scale = Vector3.new(0.193, 1, 0.2)
GripWeld20 = Instance.new("Weld")
GripWeld20.Parent = Handle
GripWeld20.Part0 = Handle
GripWeld20.Part1 = Grip20
GripWeld20.C0 = CFrame.new(0, 2.21, -0.08)*CFrame.Angles(-0.08, 0, 0)
Grip21 = Instance.new("Part")
Grip21.Parent = Tool
Grip21.Locked = true
Grip21.BrickColor = BrickColor.new("White")
Grip21.Reflectance = 0.5
Grip21.TopSurface = "Smooth"
Grip21.BottomSurface = "Smooth"
Grip21.Size = Vector3.new(1, 1, 1)
Grip21.formFactor = "Symmetric"
Grip21.Transparency = 0
Grip21.Name = "Grip21"
Grip21.CanCollide = false
Grip21.Reflectance = 0
GripMesh21 = Instance.new("SpecialMesh")
GripMesh21.Parent = Grip21
GripMesh21.MeshType = "Brick"
GripMesh21.Scale = Vector3.new(0.193, 1, 0.2)
GripWeld21 = Instance.new("Weld")
GripWeld21.Parent = Handle
GripWeld21.Part0 = Handle
GripWeld21.Part1 = Grip21
GripWeld21.C0 = CFrame.new(0, 3.7, -0.155)*CFrame.Angles(0, 0, 0)
Grip22 = Instance.new("Part")
Grip22.Parent = Tool
Grip22.Locked = true
Grip22.BrickColor = BrickColor.new("White")
Grip22.Reflectance = 0.5
Grip22.TopSurface = "Smooth"
Grip22.BottomSurface = "Smooth"
Grip22.Size = Vector3.new(1, 1, 1)
Grip22.formFactor = "Symmetric"
Grip22.Transparency = 0
Grip22.CanCollide = false
Grip22.Name = "Grip22"
Grip22.Reflectance = 0
GripMesh22 = Instance.new("SpecialMesh")
GripMesh22.MeshId = "http://www.roblox.com/asset/?id=19251107"
GripMesh22.Parent = Grip22
GripMesh22.Scale = Vector3.new(0.4, 4.7, 0.4)
GripWeld22 = Instance.new("Weld")
GripWeld22.Parent = Handle
GripWeld22.Part0 = Handle
GripWeld22.Part1 = Grip22
GripWeld22.C0 = CFrame.new(0, 4.2, -0.155)*CFrame.Angles(0, 0, 1.57)
------------------------------------------------------------>
--[[
?     -->> Sounds
--]]
------------------------------------------------------------>
Sound = Instance.new("Sound")
Sound.Parent = Handle
Sound.Name = "Sound"
Sound.Pitch = 1
Sound.SoundId = ""
Sound.Volume = 3
------------------------------------------------------------>
--[[
?     -->> Message
--]]
------------------------------------------------------------>
Amessage = Instance.new("Message")
Amessage.Parent = game.Workspace
Amessage.Name= "Amessage"
Amessage.Text = ""
------------------------------------------------------------>
--[[
?     -->> Button1Down
--]]
------------------------------------------------------------>
function onButton1Down()
if Activated then return end
if Me.Character.Humanoid.Sit == true or Me.Character.Humanoid.PlatformStand == true then
 Me.Character.Humanoid.Jump = true
 Me.Character.Humanoid.PlatformStand = false
 Me.Character.Humanoid.Sit = false
 Me.Character.Torso.Velocity = Vector3.new(0, 20, 0)
end
if Mode == "Swing" then
 Activated = true
 if Me.Character.Humanoid.Jump == true then
  Weld.Parent = Me.Character["Left Arm"]
  Weld.Part0 = Me.Character["Left Arm"]
  Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 1, 0)
  Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
  Sound:play()
  for i = 1 , 8 do
   Clone1 = Grip17:clone()
   Clone1.Parent = Tool
   Clone1.Name = "Shadow"
   Clone1.Anchored = true
   Clone1.CanCollide = false
   Clone1.Transparency = 0.2
   Clone1.BrickColor = BrickColor.new("Really Really black")
   Clone2 = Grip18:clone()
   Clone2.Parent = Tool
   Clone2.Name = "Shadow"
   Clone2.Anchored = true
   Clone2.CanCollide = false
   Clone2.Transparency = 0.2
   Clone2.BrickColor = BrickColor.new("Really Really black")
   Clone3 = Grip19:clone()
   Clone3.Parent = Tool
   Clone3.Name = "Shadow"
   Clone3.Anchored = true
   Clone3.CanCollide = false
   Clone3.Transparency = 0.2
   Clone3.BrickColor = BrickColor.new("Really Really black")
   FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
   FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
   wait()
  end
  wait()
  for i = 1 , 8 do
   Clone1 = Grip17:clone()
   Clone1.Parent = Tool
   Clone1.Name = "Shadow"
   Clone1.Anchored = true
   Clone1.CanCollide = false
   Clone1.Transparency = 0.2
   Clone1.BrickColor = BrickColor.new("Really Really black")
   Clone2 = Grip18:clone()
   Clone2.Parent = Tool
   Clone2.Name = "Shadow"
   Clone2.Anchored = true
   Clone2.CanCollide = false
   Clone2.Transparency = 0.2
   Clone2.BrickColor = BrickColor.new("Really Really black")
   Clone3 = Grip19:clone()
   Clone3.Parent = Tool
   Clone3.Name = "Shadow"
   Clone3.Anchored = true
   Clone3.CanCollide = false
   Clone3.Transparency = 0.2
   Clone3.BrickColor = BrickColor.new("Really Really black")
   FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
   FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
   wait()
  end
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, -1, 0)
  Weld.Parent = Me.Character["Right Arm"]
  Weld.Part0 = Me.Character["Right Arm"]
  Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15) 
  else
  Weld.Parent = Me.Character["Left Arm"]
  Weld.Part0 = Me.Character["Left Arm"]
  Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
  Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
  Sound:play()
  for i = 1 , 8 do
   Clone1 = Grip17:clone()
   Clone1.Parent = Tool
   Clone1.Name = "Shadow"
   Clone1.Anchored = true
   Clone1.CanCollide = false
   Clone1.Transparency = 0.2
   Clone1.BrickColor = BrickColor.new("Really Really black")
   Clone2 = Grip18:clone()
   Clone2.Parent = Tool
   Clone2.Name = "Shadow"
   Clone2.Anchored = true
   Clone2.CanCollide = false
   Clone2.Transparency = 0.2
   Clone2.BrickColor = BrickColor.new("Really Really black")
   Clone3 = Grip19:clone()
   Clone3.Parent = Tool
   Clone3.Name = "Shadow"
   Clone3.Anchored = true
   Clone3.CanCollide = false
   Clone3.Transparency = 0.2
   Clone3.BrickColor = BrickColor.new("Really Really black")
   FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
   FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
   wait()
  end
  wait(0.2)
  for i = 1 , 8 do
   Clone1 = Grip17:clone()
   Clone1.Parent = Tool
   Clone1.Name = "Shadow"
   Clone1.Anchored = true
   Clone1.CanCollide = false
   Clone1.Transparency = 0.2
   Clone1.BrickColor = BrickColor.new("Really Really black")
   Clone2 = Grip18:clone()
   Clone2.Parent = Tool
   Clone2.Name = "Shadow"
   Clone2.Anchored = true
   Clone2.CanCollide = false
   Clone2.Transparency = 0.2
   Clone2.BrickColor = BrickColor.new("Really Really black")
   Clone3 = Grip19:clone()
   Clone3.Parent = Tool
   Clone3.Name = "Shadow"
   Clone3.Anchored = true
   Clone3.CanCollide = false
   Clone3.Transparency = 0.2
   Clone3.BrickColor = BrickColor.new("Really Really black")
   FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
   FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
   wait()
  end
  Weld.Parent = Me.Character["Right Arm"]
  Weld.Part0 = Me.Character["Right Arm"]
  Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
 end
Activated = false
end
if Mode == "Spin" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Really Really black")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Really Really black")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Really Really black")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 game.Lighting.Brightness = -10
 Sound.SoundId = "http://www.roblox.com/asset/?id=13378571"
 Sound:play()
 Gyro = Instance.new("BodyGyro")
 Gyro.Parent = Me.Character.Torso
 Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 Gyro.cframe = Me.Character.Torso.CFrame
 Gyro.D = 50
 Wave = Instance.new("Part")
 Wave.Parent = Me.Character.Torso
 Wave.Anchored = true
 Wave.CanCollide = false
 Wave.Locked = true
 Wave.Transparency = 0.2
 Wave.BrickColor = BrickColor.new("Really Really black")
 Wave.Size = Vector3.new(2, 1, 2)
 Wave.TopSurface = "Smooth"
 Wave.BottomSurface = "Smooth"
 Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
 WaveMesh = Instance.new("CylinderMesh")
 WaveMesh.Parent = Wave
 WaveMesh.Scale = Vector3.new(1, 0.1, 1)
 for i = 1 , 16 do
  Wave.Size = Wave.Size + Vector3.new(1, 0, 1)
  Wave.Transparency = Wave.Transparency + 0.055
  Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
  Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 0.785, 0)
  wait()
 end
 
 Wave:Remove()
 Gyro:Remove()
 wait(0.2)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Really Really black")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Really Really black")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Really Really black")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
 wait(1.5)
 game.Lighting.Brightness = 1
Activated = false
end
if Mode == "Teleport" then
 if mouse.Target ~= nil then
  Activated = true
  MousePosition = mouse.Hit.p
  Weld.Parent = Me.Character["Left Arm"]
  Weld.Part0 = Me.Character["Left Arm"]
  Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
  Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
  Sound:play()
  for i = 1 , 8 do
   Clone1 = Grip17:clone() 
   Clone1.Parent = Tool
   Clone1.Name = "Shadow"
   Clone1.Anchored = true
   Clone1.CanCollide = false
   Clone1.Transparency = 0.2
   Clone1.BrickColor = BrickColor.new("Institutional white")
   Clone2 = Grip18:clone()
   Clone2.Parent = Tool
   Clone2.Name = "Shadow"
   Clone2.Anchored = true
   Clone2.CanCollide = false
   Clone2.Transparency = 0.2
   Clone2.BrickColor = BrickColor.new("Institutional white")
   Clone3 = Grip19:clone()
   Clone3.Parent = Tool
   Clone3.Name = "Shadow"
   Clone3.Anchored = true
   Clone3.CanCollide = false
   Clone3.Transparency = 0.2
   Clone3.BrickColor = BrickColor.new("Institutional white")
   FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
   FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
   wait()
  end
  Me.Character.Torso.CFrame = CFrame.new(MousePosition+Vector3.new(0, 3, 0))
  Sound.SoundId = "http://www.roblox.com/asset/?id=11998796"
  Sound:play()
  Gyro = Instance.new("BodyGyro")
  Gyro.Parent = Me.Character.Torso
  Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
  Gyro.cframe = Me.Character.Torso.CFrame
  Gyro.D = 50
  Wave = Instance.new("Part")
  Wave.Parent = Me.Character.Torso
  Wave.Anchored = true
  Wave.CanCollide = false
  Wave.Locked = true
  Wave.Transparency = 0.2
  Wave.BrickColor = BrickColor.new("Institutional white")
  Wave.Size = Vector3.new(2, 1, 2)
  Wave.TopSurface = "Smooth"
  Wave.BottomSurface = "Smooth"
  Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
  WaveMesh = Instance.new("CylinderMesh")
  WaveMesh.Parent = Wave
  WaveMesh.Scale = Vector3.new(1, 0.1, 1)
  for i = 1 , 5 do
   Wave.Size = Wave.Size + Vector3.new(1, 0, 1)
   Wave.Transparency = Wave.Transparency + 0.055
   Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
   Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 1, 0)
   wait()
  end
  Wave:Remove()
  for i = 1 , 15 do
   Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 1, 0)
   wait()
  end
 
  Gyro:Remove()
  wait(0.2)
  for i = 1 , 8 do
   Clone1 = Grip17:clone()
   Clone1.Parent = Tool
   Clone1.Name = "Shadow"
   Clone1.Anchored = true
   Clone1.CanCollide = false
   Clone1.Transparency = 0.2
   Clone1.BrickColor = BrickColor.new("Institutional white")
   Clone2 = Grip18:clone()
   Clone2.Parent = Tool
   Clone2.Name = "Shadow"
   Clone2.Anchored = true
   Clone2.CanCollide = false
   Clone2.Transparency = 0.2
   Clone2.BrickColor = BrickColor.new("Institutional white")
   Clone3 = Grip19:clone()
   Clone3.Parent = Tool
   Clone3.Name = "Shadow"
   Clone3.Anchored = true
   Clone3.CanCollide = false
   Clone3.Transparency = 0.2
   Clone3.BrickColor = BrickColor.new("Institutional white")
   FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
   FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
   wait()
  end
  Weld.Parent = Me.Character["Right Arm"]
  Weld.Part0 = Me.Character["Right Arm"]
  Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
 Activated = false
 end
end
if Mode == "Explosion" then
 Activated = true
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.13)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 onCharge(24)
 Range = 10
 for i = 1 , 5 do
 Range = Range + 15
 Me.Character.Humanoid.WalkSpeed = 0
 
 Boom = Instance.new("Explosion")
 Boom.Parent = Workspace
 Boom.BlastRadius = Range/2
 Boom.Position = Me.Character.Torso.Position+Vector3.new(Range, 0, 0) 
 Boom = Instance.new("Explosion")
 Boom.Parent = Workspace
 Boom.BlastRadius = Range/2
 Boom.Position = Me.Character.Torso.Position+Vector3.new(-Range, 0, 0) 
 Boom = Instance.new("Explosion")
 Boom.Parent = Workspace
 Boom.BlastRadius = Range/2
 Boom.Position = Me.Character.Torso.Position+Vector3.new(0, 0, Range) 
 Boom = Instance.new("Explosion")
 Boom.Parent = Workspace
 Boom.BlastRadius = Range/2
 Boom.Position = Me.Character.Torso.Position+Vector3.new(0, 0, -Range)
 Boom = Instance.new("Explosion")
 Boom.Parent = Workspace
 Boom.BlastRadius = Range/2
 Boom.Position = Me.Character.Torso.Position+Vector3.new(Range, 0, Range) 
 Boom = Instance.new("Explosion")
 Boom.Parent = Workspace
 Boom.BlastRadius = Range/2
 Boom.Position = Me.Character.Torso.Position+Vector3.new(-Range, 0, Range) 
 Boom = Instance.new("Explosion")
 Boom.Parent = Workspace
 Boom.BlastRadius = Range/2
 Boom.Position = Me.Character.Torso.Position+Vector3.new(Range, 0, -Range) 
 Boom = Instance.new("Explosion")
 Boom.Parent = Workspace
 Boom.BlastRadius = Range/2
 Boom.Position = Me.Character.Torso.Position+Vector3.new(-Range, 0, -Range)
 wait(0.05)
 end
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.13)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
Activated = false
end
if Mode == "ExplodeVictim" then
 if mouse.Target ~= nil then
 torso = mouse.Target.Parent:findFirstChild("Torso")
 if torso ~= nil and torso.Parent.Name ~= Me.Name then
 Activated = true
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.13)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 onChargeAim(24, torso)
 Boom = Instance.new("Explosion")
 Boom.Parent = Workspace
 Boom.BlastRadius = 20
 Boom.Position = torso.Position
 Stuff = torso.Parent:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].className == "Part" then
   Stuff[i].Anchored = false
   Stuff[i]:BreakJoints()
   Stuff[i].BrickColor = BrickColor.new("Really Really black")
   Stuff[i].CanCollide = true
  end
 end
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.13)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Activated = false
 end
 end
end
if Mode == "Assassinate" then
 if mouse.Target ~= nil then
 torso = mouse.Target.Parent:findFirstChild("Torso")
 if torso ~= nil and torso.Parent.Name ~= Me.Name then
 Activated = true
 Sound.SoundId = "rbxasset://sounds\\unsheath.wav"
 Sound:play()
 for i = 1 , 8 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.05, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.15, 0, 0)
  wait()
 end
 wait()
 for i = 1 , 8 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.2)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 0, 0.19)
  wait()
 end
 FakeLeftShoulder.C0 = OriginalLeftShoulder
 Weld = Instance.new("Weld")
 Weld.Parent = Me.Character["Torso"]
 Weld.Part0 = Me.Character["Torso"]
 Weld.Part1 = Handle
 Weld.C0 = CFrame.new(1.6, 2.5, 0.6) * CFrame.Angles(0, 0, 2.2)
 Weld.C0 = Weld.C0 * CFrame.Angles(0, 1.57, 0)    
 
 for i = 1 , 16 do
  Weld.C0 = Weld.C0 * CFrame.new(0, 0, -0.03) * CFrame.Angles(0.03, 0, 0.11)
 end
 for i = 1 , 16 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.1)
  Weld.C0 = Weld.C0 * CFrame.new(0, 0, 0.03) * CFrame.Angles(-0.03, 0, -0.11)
  wait()
 end
 FakeRightShoulder.Parent = Me.Character.Torso
 FakeRightShoulder.Part0 = Me.Character.Torso
 FakeRightShoulder.Part1 = Me.Character["Right Arm"]
 FakeRightShoulder.C0 = OriginalRightShoulder
 FakeRightShoulder.C1 = OriginalRightShoulder2
 FakeLeftShoulder.Parent = Me.Character.Torso
 FakeLeftShoulder.Part0 = Me.Character.Torso
 FakeLeftShoulder.Part1 = Me.Character["Left Arm"]
 FakeLeftShoulder.C0 = OriginalLeftShoulder
 FakeLeftShoulder.C1 = OriginalLeftShoulder2
 FakeRightShoulder.C0 = OriginalRightShoulder * CFrame.Angles(-0.1, 0, 0)
 FakeLeftShoulder.C0 = OriginalLeftShoulder * CFrame.Angles(-0.1, 0, 0) 
 wait(0.1)
 FakeRightShoulder.C0 = OriginalRightShoulder * CFrame.Angles(-0.2, 0, 0)
 FakeLeftShoulder.C0 = OriginalLeftShoulder * CFrame.Angles(-0.2, 0, 0) 
 wait(0.1)
 Blade1 = Instance.new("Part")
 Blade1.Parent = Me.Character["Right Arm"]
 Blade1.CanCollide = false
 Blade1.formFactor = "Symmetric"
 Blade1.Size = Vector3.new(1, 2, 1)
 Blade1.TopSurface = "Smooth"
 Blade1.BottomSurface = "Smooth"
 Blade1.Locked = true
 Blade1.BrickColor = BrickColor.new("Medium stone grey")
 Blade1.Name = "Blade1"
 Blade1.CFrame = Me.Character["Right Arm"].CFrame
 Blade2 = Instance.new("Part")
 Blade2.Parent = Me.Character["Left Arm"]
 Blade2.CanCollide = false
 Blade2.formFactor = "Symmetric"
 Blade2.Size = Vector3.new(1, 2, 1)
 Blade2.TopSurface = "Smooth"
 Blade2.BottomSurface = "Smooth"
 Blade2.Locked = true
 Blade2.BrickColor = BrickColor.new("Medium stone grey")
 Blade2.Name = "Blade2"
 Blade2.CFrame = Me.Character["Left Arm"].CFrame
 Blade1Mesh = Instance.new("SpecialMesh")
 Blade1Mesh.Parent = Blade1
 Blade1Mesh.MeshType = "Brick"
 Blade1Mesh.Scale = Vector3.new(0.2, 1, 0.2)
 Blade2Mesh = Instance.new("SpecialMesh")
 Blade2Mesh.Parent = Blade2
 Blade2Mesh.MeshType = "Brick"
 Blade2Mesh.Scale = Vector3.new(0.2, 1, 0.2)
 Blade1Weld = Instance.new("Weld")
 Blade1Weld.Parent = Me.Character["Right Arm"]
 Blade1Weld.Part0 = Me.Character["Right Arm"]
 Blade1Weld.Part1 = Blade1
 Blade1Weld.C0 = CFrame.new(-0.3, 0, 0)
 Blade2Weld = Instance.new("Weld")
 Blade2Weld.Parent = Me.Character["Left Arm"]
 Blade2Weld.Part0 = Me.Character["Left Arm"]
 Blade2Weld.Part1 = Blade2
 Blade2Weld.C0 = CFrame.new(0.3, 0, 0)
 for i = 1 , 17 do
  Blade1Weld.C0 = Blade1Weld.C0 * CFrame.new(0, -0.1, 0)
  Blade2Weld.C0 = Blade2Weld.C0 * CFrame.new(0, -0.1, 0)
  Me.Character:MoveTo(Me.Character.Torso.Position)
  wait(0.05)
 end
 for i = 1 , 5 do
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.1)
 FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 0, 0.1)  
 wait()
 end
 
 wait(1.5)
 Me.Character:MoveTo(Me.Character.Torso.Position)
 BodyPosition = Instance.new("BodyPosition")
 BodyPosition.Parent = Me.Character.Torso
 BodyPosition.maxForce = Vector3.new(math.huge, math.huge, math.huge)
 BodyPosition.position = torso.Position
 BodyGyro = Instance.new("BodyGyro")
 BodyGyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 BodyGyro.Parent = Me.Character.Torso
 BodyGyro.cframe = CFrame.new(Me.Character.Torso.Position, torso.Position)
 wait(0.8)
 BodyPosition:Remove()
 BodyGyro:Remove()
 Me.Character.Torso.CFrame = torso.CFrame
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.5)
 FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 0, -0.5)  
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 1.57)
 FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 0, -1.57)  
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.785, 0, 0)
 FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0.785, 0, 0)  
 KillWeld = Instance.new("Weld")
 KillWeld.Parent = Me.Character.Torso
 KillWeld.Part0 = Me.Character.Torso
 KillWeld.Part1 = torso
 KillWeld.C0 = CFrame.new(0, 0, -1.6)
 wait(0.3)
 for i = 1 , 12 do
 KillWeld.C0 = KillWeld.C0 * CFrame.new(0, 0.08, 0.02) * CFrame.Angles(0.1, 0, 0)
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.1)
 FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 0, -0.1)
 wait(0.1)
 end
 wait(0.15)
 KillWeld:Remove()
 if torso ~= nil then
  torso:BreakJoints()
 end
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.785, 0, 0)
 FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.785, 0, 0)
 for i = 1 , 3 do
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.1)
 FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 0, -0.1)
 wait()
 end
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.07)
 FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 0, -0.07)
 wait(0.1)
 for i = 1 , 17 do
  Blade1Weld.C0 = Blade1Weld.C0 * CFrame.new(0, 0.1, 0)
  Blade2Weld.C0 = Blade2Weld.C0 * CFrame.new(0, 0.1, 0)
  wait(0.05)
 end
 FakeRightShoulder.C0 = OriginalRightShoulder
 FakeLeftShoulder.C0 = OriginalLeftShoulder
 wait()
 Sound.SoundId = "rbxasset://sounds\\unsheath.wav"
 Sound:play()
 FakeRightShoulder.Parent = Me.Character.Torso
 FakeRightShoulder.Part0 = Me.Character.Torso
 FakeRightShoulder.Part1 = Me.Character["Right Arm"]
 FakeRightShoulder.C0 = OriginalRightShoulder
 FakeRightShoulder.C1 = OriginalRightShoulder2
 FakeLeftShoulder.Parent = Me.Character.Torso
 FakeLeftShoulder.Part0 = Me.Character.Torso
 FakeLeftShoulder.Part1 = Me.Character["Left Arm"]
 FakeLeftShoulder.C0 = OriginalLeftShoulder * CFrame.new(-0.25, 0, -0.45)
 FakeLeftShoulder.C1 = OriginalLeftShoulder2
 Weld:Remove()
 Weld = Instance.new("Weld")
 Weld.Parent = Me.Character["Torso"]
 Weld.Part0 = Me.Character["Torso"]
 Weld.Part1 = Handle
 Weld.C0 = CFrame.new(1.6, 2.5, 0.6) * CFrame.Angles(0, 0, 2.2)
 Weld.C0 = Weld.C0 * CFrame.Angles(0, 1.57, 0)
 for i = 1 , 16 do
  FakeRightShoulder.C0 = OriginalRightShoulder * CFrame.Angles(0, 0, (i/5.2))
  Weld.C0 = Weld.C0 * CFrame.new(0, 0, -0.03) * CFrame.Angles(0.03, 0, 0.11)
  wait()
 end
 wait()
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
 for i = 1 , 8 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.2)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 0, -0.19)
  wait()
 end
 wait()
 for i = 1 , 8 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.05, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0.15, 0, 0)
  wait()
 end
 wait(0.2)
 Activated = false
 end
 end
end
if Mode == "Tornado" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 f=Instance.new("Fire")
 f.Parent= Me.Character.Sword.Grip19
 f.Heat = 5
 f.Size = 5
 f.Color=Color3.new(0,0,-255) 
 f.SecondaryColor = Color3.new(0,0,-255) 
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 Gyro = Instance.new("BodyGyro")
 Gyro.Parent = Me.Character.Torso
 Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 Gyro.cframe = Me.Character.Torso.CFrame
 Gyro.D = 50
Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 Wave = Instance.new("Part")
 Wave.Parent = Me.Character.Torso
 Wave.Anchored = true
 Wave.CanCollide = false
 Wave.Locked = true
 Wave.Transparency = 0.2
 Wave.BrickColor = BrickColor.new("Institutional white")
 Wave.Size = Vector3.new(2, 1, 2)
 Wave.TopSurface = "Smooth"
 Wave.BottomSurface = "Smooth"
 Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
 WaveMesh = Instance.new("CylinderMesh")
 WaveMesh.Parent = Wave
 WaveMesh.Scale = Vector3.new(1, 0.1, 1)
 for i = 1 , 200 do
Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
  Wave.Size = Wave.Size + Vector3.new(1, 0, 1)
  Wave.Transparency = Wave.Transparency + 0.055
  Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -4.4, 0)
  Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 0.985, 0)
  wait()
 end
 f:Remove()
 Wave:Remove()
 Gyro:Remove()
 wait(0.2)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "TripleSlash" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 4 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.26, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.62, 0, 0)
  wait()
 end
 for i = 1 , 2 do
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 1.57, 0)
  wait()
 end
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 4 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.62, 0, 0)
  wait()
 end
 for i = 1 , 2 do
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, -1.57, 0)
  wait()
 end
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 4 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.62, 0, 0)
  wait()
 end
 for i = 1 , 4 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.26, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0.62, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "ForwardSpin" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Sound.SoundId = "http://www.roblox.com/asset/?id=18478970"
 Sound:play()
 Velocity = Instance.new("BodyVelocity")
 Velocity.Parent = Me.Character.Torso
 Velocity.maxForce = Vector3.new(math.huge, 0, math.huge)
 Velocity.velocity = Me.Character.Torso.CFrame.lookVector * 200
 Gyro = Instance.new("BodyGyro")
 Gyro.Parent = Me.Character.Torso
 Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 Gyro.cframe = Me.Character.Torso.CFrame
 Gyro.D = 50
 Wave = Instance.new("Part")
 Wave.Parent = Me.Character.Torso
 Wave.Anchored = true
 Wave.CanCollide = false
 Wave.Locked = true
 Wave.Transparency = 0.2
 Wave.BrickColor = BrickColor.new(1004)
 Wave.Size = Vector3.new(2, 1, 2)
 Wave.TopSurface = "Smooth"
 Wave.BottomSurface = "Smooth"
 Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
 WaveMesh = Instance.new("CylinderMesh")
 WaveMesh.Parent = Wave
 WaveMesh.Scale = Vector3.new(1, 0.1, 1)
 for i = 1 , 16 do
  Wave.Size = Wave.Size + Vector3.new(1, 0, 1)
  Wave.Transparency = Wave.Transparency + 0.055
  Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
  Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 0.785, 0)
  wait()
 end
 
 Wave:Remove()
 Gyro:Remove()
 Velocity:Remove()
 wait(1)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "DownThrust" then
 Activated = true
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 24 do
  Weld.C0 = Weld.C0 * CFrame.Angles(-0.3925, 0, 0)
  wait()
 end
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.13)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Velocity = Instance.new("BodyVelocity")
 Velocity.Parent = Me.Character.Torso
 Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
 Velocity.velocity = Vector3.new(0, 30, 0)
 Gyro = Instance.new("BodyGyro")
 Gyro.Parent = Me.Character.Torso
 Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 Gyro.cframe = Me.Character.Torso.CFrame
 Gyro.D = 50
 wait(0.8)
 Velocity:Remove()
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.13)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait(0.08)
 end
 Wave = Instance.new("Part")
 Wave.Parent = Me.Character.Torso
 Wave.Anchored = true
 Wave.CanCollide = false
 Wave.Locked = true
 Wave.Transparency = 0.2
 Wave.Size = Vector3.new(2, 1, 2)
 Wave.TopSurface = "Smooth"
 Wave.BottomSurface = "Smooth"
 Wave.BrickColor = BrickColor.new(1004)
 Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
 WaveMesh = Instance.new("CylinderMesh")
 WaveMesh.Parent = Wave
 WaveMesh.Scale = Vector3.new(1, 0.1, 1)
 for i = 1 , 16 do
  Wave.Size = Wave.Size + Vector3.new(1, 0, 1)
  Wave.Transparency = Wave.Transparency + 0.055
  Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
  wait()
 end
 
 Wave:Remove()
 Gyro:Remove()
 wait(0.8)
 for i = 1 , 20 do
  Weld.C0 = Weld.C0 * CFrame.Angles(0.3925*2, 0, 0)
  wait()
 end
Activated = false
end
if Mode == "Escape" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Stuff = Me.Character:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].className == "Part" then
   Stuff[i].Anchored = false
  end
 end
 Stuff = Me.Character:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].className == "Part" then
   Stuff[i].Anchored = false
  end
  Stuff2 = Stuff[i]:GetChildren()
  for i = 1 , #Stuff2 do
   if Stuff2[i].className == "BodyPosition" or Stuff2[i].className == "BodyVelocity" or Stuff2[i].className == "BodyGyro" then
    Stuff2[i]:Remove()
   end
  end
 end
 Sound.SoundId = "http://www.roblox.com/asset/?id=18478970"
 Sound:play()
 Velocity = Instance.new("BodyVelocity")
 Velocity.Parent = Me.Character.Torso
 Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
 Velocity.velocity = Vector3.new(0, 40, 0)
 Gyro = Instance.new("BodyGyro")
 Gyro.Parent = Me.Character.Torso
 Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 Gyro.cframe = Me.Character.Torso.CFrame
 Gyro.D = 50
 Wave = Instance.new("Part")
 Wave.Parent = Me.Character.Torso
 Wave.Anchored = true
 Wave.CanCollide = false
 Wave.Locked = true
 Wave.Transparency = 0.2
 Wave.Size = Vector3.new(2, 1, 2)
 Wave.TopSurface = "Smooth"
 Wave.BottomSurface = "Smooth"
 Wave.BrickColor = BrickColor.new(1004)
 Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
 WaveMesh = Instance.new("CylinderMesh")
 WaveMesh.Parent = Wave
 WaveMesh.Scale = Vector3.new(1, 0.1, 1)
 for i = 1 , 16 do
  Wave.Size = Wave.Size + Vector3.new(1, 0, 1)
  Wave.Transparency = Wave.Transparency + 0.055
  Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
  Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 0.785, 0)
  wait()
 end
 
 Wave:Remove()
 Gyro:Remove()
 Velocity:Remove()
 wait(1)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "Toss" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 4 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1005)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1005)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1005)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Weld:Remove()
 Sound.SoundId = "http://www.roblox.com/asset/?id=18478970"
 Sound:play()
 Gyro = Instance.new("BodyGyro")
 Gyro.Parent = Handle
 Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 Gyro.cframe = Me.Character.Torso.CFrame * CFrame.Angles(0, 0, 1.57)
 Gyro.D = 50
 Velocity = Instance.new("BodyVelocity")
 Velocity.Parent = Handle
 Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
 Velocity.velocity = Vector3.new(0, 1, 0) * 10
 for i = 1 , 4 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 for i = 1 , 15 do
  Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 1, 1)
  wait(0.1)
 end
 Velocity.velocity = Vector3.new(0, 0, 0)
 for i = 1 , 5 do
  Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 1, 1)
  wait(0.1)
 end
 Velocity:Remove()
 Position = Instance.new("BodyPosition")
 Position.Parent = Handle
 Position.maxForce = Vector3.new(9999999999, 9999999999, 9999999999)
 Position.position = Me.Character["Left Arm"].Position
 for i = 1 , 10 do
  Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 1, 1)
  Position.position = Me.Character["Left Arm"].Position  
  wait(0.1)
 end
 Gyro:Remove()
 Position:Remove()
 Weld = Instance.new("Weld")
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.Part1 = Handle
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1005)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1005)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1005)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "Boomerang" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 4 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Weld:Remove()
 Sound.SoundId = "http://www.roblox.com/asset/?id=18478970"
 Sound:play()
 Gyro = Instance.new("BodyGyro")
 Gyro.Parent = Handle
 Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 Gyro.cframe = Me.Character.Torso.CFrame * CFrame.Angles(0, 0, 1.57)
 Gyro.D = 50
 Velocity = Instance.new("BodyVelocity")
 Velocity.Parent = Handle
 Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
 Velocity.velocity = Me.Character.Torso.CFrame.lookVector * 100
 for i = 1 , 4 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 for i = 1 , 15 do
  Gyro.cframe = Gyro.cframe * CFrame.Angles(1, 0, 0)
  wait(0.1)
 end
 Velocity.velocity = Vector3.new(0, 0, 0)
 for i = 1 , 5 do
  Gyro.cframe = Gyro.cframe * CFrame.Angles(1, 0, 0)
  wait(0.1)
 end
 Velocity:Remove()
 Position = Instance.new("BodyPosition")
 Position.Parent = Handle
 Position.maxForce = Vector3.new(9999999999, 9999999999, 9999999999)
 Position.position = Me.Character["Left Arm"].Position
 for i = 1 , 10 do
  Gyro.cframe = Gyro.cframe * CFrame.Angles(1, 0, 0)
  Position.position = Me.Character["Left Arm"].Position  
  wait(0.1)
 end
 Gyro:Remove()
 Position:Remove()
 Weld = Instance.new("Weld")
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.Part1 = Handle
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "Remover" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Gyro = Instance.new("BodyGyro")
 Gyro.Parent = Me.Character.Torso
 Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 Gyro.cframe = Me.Character.Torso.CFrame
 Gyro.D = 50
 ShockWave = Instance.new("Part")
 ShockWave.Parent = Me.Character.Torso
 ShockWave.Anchored = true
 ShockWave.CanCollide = false
 ShockWave.Locked = true
 ShockWave.Transparency = 0
 ShockWave.Shape = "Ball"
 ShockWave.BrickColor = BrickColor.new(1004)
 ShockWave.Size = Vector3.new(1, 1, 1)
 ShockWave.TopSurface = "Smooth"
 ShockWave.BottomSurface = "Smooth"
 ShockWave.CFrame = Me.Character.Torso.CFrame
 ShockWaveMesh = Instance.new("SpecialMesh")
 ShockWaveMesh.Parent = ShockWave
 ShockWaveMesh.MeshType = "Sphere"
 ShockWaveMesh.Scale = Vector3.new(1, 1, 1)
 for ii = 1 , 50 do
  ShockWave.Size = ShockWave.Size + Vector3.new(2, 2, 2)
  ShockWave.Transparency = ShockWave.Transparency + 0.02
  ShockWave.CFrame = Me.Character.Torso.CFrame
  Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 0.785, 0)
  Stuff = game.Workspace:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].Name ~= "Base" and Stuff[i].Name ~= Me.Name then
    if Stuff[i].className == "Part" then
     if (Me.Character.Torso.Position-Stuff[i].Position).magnitude <= ii then
      Stuff[i]:Remove()
     end
    end
    if Stuff[i].className == "Model" then
     Stuff2 = Stuff[i]:GetChildren()
     for i = 1 , #Stuff2 do
      if Stuff2[i].className == "Part" then
       if (Me.Character.Torso.Position-Stuff2[i].Position).magnitude <= ii then
        Stuff2[i]:Remove()
       end
      end
     end
    end
   end
  end
  wait()
 end
 
 ShockWave:Remove()
 Gyro:Remove()
 wait(0.2)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "Alchemy" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Point1 = Instance.new("Part")
 Point1.Parent = Me.Character.Torso
 Point1.Anchored = true
 Point1.Locked = true
 Point1.Transparency = 1
 Point1.Size = Vector3.new(5, 10, 5)
 Point1.TopSurface = "Smooth"
 Point1.BottomSurface = "Smooth"
 Point1.CFrame = Me.Character.Torso.CFrame * CFrame.new(100, -2, 0)
 Point1Mesh = Instance.new("CylinderMesh")
 Point1Mesh.Parent = Point1
 Point1Mesh.Scale = Vector3.new(0.7, 1, 0.7)
 Point2 = Instance.new("Part")
 Point2.Parent = Me.Character.Torso
 Point2.Anchored = true
 Point2.Locked = true
 Point2.Transparency = 1
 Point2.Size = Vector3.new(5, 10, 5)
 Point2.TopSurface = "Smooth"
 Point2.BottomSurface = "Smooth"
 Point2.CFrame = Me.Character.Torso.CFrame * CFrame.new(-100, -2, 0)
 Point2Mesh = Instance.new("CylinderMesh")
 Point2Mesh.Parent = Point2
 Point2Mesh.Scale = Vector3.new(0.7, 1, 0.7)
 Point3 = Instance.new("Part")
 Point3.Parent = Me.Character.Torso
 Point3.Anchored = true
 Point3.Locked = true
 Point3.Transparency = 1
 Point3.Size = Vector3.new(5, 10, 5)
 Point3.TopSurface = "Smooth"
 Point3.BottomSurface = "Smooth"
 Point3.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2, 100)
 Point3Mesh = Instance.new("CylinderMesh")
 Point3Mesh.Parent = Point3
 Point3Mesh.Scale = Vector3.new(0.7, 1, 0.7)
 Point4 = Instance.new("Part")
 Point4.Parent = Me.Character.Torso
 Point4.Anchored = true
 Point4.Locked = true
 Point4.Transparency = 1
 Point4.Size = Vector3.new(5, 10, 5)
 Point4.TopSurface = "Smooth"
 Point4.BottomSurface = "Smooth"
 Point4.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2, -100)
 Point4Mesh = Instance.new("CylinderMesh")
 Point4Mesh.Parent = Point4
 Point4Mesh.Scale = Vector3.new(0.7, 1, 0.7)
 for i = 1 , 10 do
 Point1.Transparency = Point1.Transparency - 0.1
 Point2.Transparency = Point2.Transparency - 0.1
 Point3.Transparency = Point3.Transparency - 0.1
 Point4.Transparency = Point4.Transparency - 0.1
 wait(0.1)
 end
 Line1 = Instance.new("Part")
 Line1.Parent = Me.Character.Torso
 Line1.Anchored = true
 Line1.Locked = true
 Line1.Transparency = 0.5
 Line1.BrickColor = BrickColor.new(1)
 Line1.Size = Vector3.new(1, 1, 1)
 Line1.TopSurface = "Smooth"
 Line1.BottomSurface = "Smooth"
 Line1.CFrame = CFrame.new((Point1.Position+Point3.Position)/2, Point3.Position)
 Line1Mesh = Instance.new("SpecialMesh")
 Line1Mesh.MeshType = "Brick"
 Line1Mesh.Parent = Line1
 Line1Mesh.Scale = Vector3.new(1, 1, (Point1.Position-Point3.Position).magnitude)
 Line2 = Instance.new("Part")
 Line2.Parent = Me.Character.Torso
 Line2.Anchored = true
 Line2.Locked = true
 Line2.Transparency = 0.5
 Line2.BrickColor = BrickColor.new(1)
 Line2.Size = Vector3.new(1, 1, 1)
 Line2.TopSurface = "Smooth"
 Line2.BottomSurface = "Smooth"
 Line2.CFrame = CFrame.new((Point1.Position+Point4.Position)/2, Point4.Position)
 Line2Mesh = Instance.new("SpecialMesh")
 Line2Mesh.MeshType = "Brick"
 Line2Mesh.Parent = Line2
 Line2Mesh.Scale = Vector3.new(1, 1, (Point1.Position-Point4.Position).magnitude)
 Line3 = Instance.new("Part")
 Line3.Parent = Me.Character.Torso
 Line3.Anchored = true
 Line3.Locked = true
 Line3.Transparency = 0.5
 Line3.BrickColor = BrickColor.new(1)
 Line3.Size = Vector3.new(1, 1, 1)
 Line3.TopSurface = "Smooth"
 Line3.BottomSurface = "Smooth"
 Line3.CFrame = CFrame.new((Point2.Position+Point3.Position)/2, Point3.Position)
 Line3Mesh = Instance.new("SpecialMesh")
 Line3Mesh.MeshType = "Brick"
 Line3Mesh.Parent = Line3
 Line3Mesh.Scale = Vector3.new(1, 1, (Point2.Position-Point3.Position).magnitude)
 Line4 = Instance.new("Part")
 Line4.Parent = Me.Character.Torso
 Line4.Anchored = true
 Line4.Locked = true
 Line4.Transparency = 0.5
 Line4.BrickColor = BrickColor.new(1)
 Line4.Size = Vector3.new(1, 1, 1)
 Line4.TopSurface = "Smooth"
 Line4.BottomSurface = "Smooth"
 Line4.CFrame = CFrame.new((Point2.Position+Point4.Position)/2, Point4.Position)
 Line4Mesh = Instance.new("SpecialMesh")
 Line4Mesh.MeshType = "Brick"
 Line4Mesh.Parent = Line4
 Line4Mesh.Scale = Vector3.new(1, 1, (Point2.Position-Point4.Position).magnitude)
 for i = 1 , 20 do
 Sound.SoundId = "http://www.roblox.com/asset/?id=10756118"
 Sound:play()
 Line1Mesh.Scale = Line1Mesh.Scale + Vector3.new(0, 90, 0)
 Line2Mesh.Scale = Line2Mesh.Scale + Vector3.new(0, 90, 0)
 Line3Mesh.Scale = Line3Mesh.Scale + Vector3.new(0, 90, 0)
 Line4Mesh.Scale = Line4Mesh.Scale + Vector3.new(0, 90, 0)
 Stuff = Workspace:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].Name ~= "Base" and Stuff[i].Name ~= Me.Name then
   if Stuff[i].className == "Part" then
    if (Me.Character.Torso.Position-Stuff[i].Position).magnitude <= 100 then
     if Stuff[i].BrickColor ~= BrickColor.new(28) then
      Stuff[i]:Remove()
     end
    end
   end
   if Stuff[i].className == "Model" then
    Stuff2 = Stuff[i]:GetChildren()
    for i = 1 , #Stuff2 do
     if Stuff2[i].className == "Part" then
      if (Me.Character.Torso.Position-Stuff2[i].Position).magnitude <= 100 then
       Stuff2[i]:Remove()
      end
     end
    end
   end
  end
 end
 wait(0.05)
 end
 wait(1)
 for i = 1 , 20 do
 Line1Mesh.Scale = Line1Mesh.Scale - Vector3.new(0, 90, 0)
 Line2Mesh.Scale = Line2Mesh.Scale - Vector3.new(0, 90, 0)
 Line3Mesh.Scale = Line3Mesh.Scale - Vector3.new(0, 90, 0)
 Line4Mesh.Scale = Line4Mesh.Scale - Vector3.new(0, 90, 0)
 wait(0.05)
 end
 Line1:Remove()
 Line2:Remove()
 Line3:Remove()
 Line4:Remove()
 for i = 1 , 10 do
 Point1.Transparency = Point1.Transparency + 0.1
 Point2.Transparency = Point2.Transparency + 0.1
 Point3.Transparency = Point3.Transparency + 0.1
 Point4.Transparency = Point4.Transparency + 0.1
 wait(0.1)
 end
 Point1:Remove()
 Point2:Remove()
 Point3:Remove()
 Point4:Remove()
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "Lazor" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1010)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1010)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1010)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Bolt = Instance.new("Part")
 Bolt.Parent = Tool
 Bolt.Anchored = true
 Bolt.Name = "Shadow"
 Bolt.CanCollide = false
 Bolt.Locked = true
 Bolt.Transparency = 0.2
 Bolt.formFactor = "Symmetric"
 Bolt.Size = Vector3.new(1, 1, math.random(5, 10))
 Bolt.TopSurface = "Smooth"
 Bolt.BrickColor = BrickColor.new(1010)
 Bolt.BottomSurface = "Smooth"
 Value = (math.random(-5, 5)/100)
 Value2 = (math.random(-5, 5)/100)
 Value3 = (math.random(-5, 5)/100)
 Bolt.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, 0, -6) * CFrame.Angles(Value, Value2, Value3)
 BoltMesh = Instance.new("SpecialMesh")
 BoltMesh.MeshType = "Brick"
 BoltMesh.Parent = Bolt
 BoltMesh.Scale = Vector3.new(10, 10, 3)
 Stuff = Workspace:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].className == "Model" and Stuff[i].Name ~= Me.Name then
   Torso = Stuff[i]:findFirstChild("Torso")
   Humanoid = Stuff[i]:findFirstChild("Humanoid")
   if Torso ~= nil and Humanoid ~= nil then
    if (Bolt.Position-Torso.Position).magnitude <= 15 then
     Humanoid.MaxHealth = 100
     Humanoid:TakeDamage(Damage)
    end
   end
  end
 end
 game.Lighting.Brightness = 10
 Sound.SoundId = "http://www.roblox.com/asset/?id=12222030"
 Sound:play()
 for i = 1 , math.random(9, 13) do
  FakeBolt = Instance.new("Part")
  FakeBolt.Parent = Tool
  FakeBolt.Anchored = true
  FakeBolt.Name = "Shadow"
  FakeBolt.CanCollide = false
  FakeBolt.Locked = true
  FakeBolt.Transparency = 0.2
  FakeBolt.formFactor = "Symmetric"
  FakeBolt.Size = Vector3.new(1, 1, math.random(5, 10))
  FakeBolt.TopSurface = "Smooth"
  FakeBolt.BrickColor = BrickColor.new(1010)
  FakeBolt.BottomSurface = "Smooth"
  Value = (math.random(-5, 5)/100)
  Value2 = (math.random(-5, 5)/100)
  Value3 = (math.random(-5, 5)/100)
  FakeBolt.CFrame = Bolt.CFrame * CFrame.new(0, 0, -(Bolt.Size.Z/2))
  FakeBolt.CFrame = FakeBolt.CFrame * CFrame.Angles(Value, Value2, Value3)
  FakeBolt.CFrame = FakeBolt.CFrame * CFrame.new(0, 0, -(FakeBolt.Size.Z/2))
  FakeBoltMesh = Instance.new("SpecialMesh")
  FakeBoltMesh.MeshType = "Brick"
  FakeBoltMesh.Parent = FakeBolt
  FakeBoltMesh.Scale = Vector3.new(10, 10, 3)
  Stuff = Workspace:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].className == "Model" and Stuff[i].Name ~= Me.Name then
    Torso = Stuff[i]:findFirstChild("Torso")
    Humanoid = Stuff[i]:findFirstChild("Humanoid")
    if Torso ~= nil and Humanoid ~= nil then
     if (FakeBolt.Position-Torso.Position).magnitude <= 15 then
      Humanoid.MaxHealth = 100
      Humanoid:TakeDamage(Damage)
     end
    end
   end
  end
  Bolt:Remove()
  Bolt = Instance.new("Part")
  Bolt.Parent = Tool
  Bolt.Anchored = true
  Bolt.Name = "Shadow"
  Bolt.CanCollide = false
  Bolt.Locked = true
  Bolt.Transparency = 0.2
  Bolt.formFactor = "Symmetric"
  Bolt.Size = Vector3.new(1, 1, math.random(5, 10))
  Bolt.TopSurface = "Smooth"
  Bolt.BrickColor = BrickColor.new(1010)
  Bolt.BottomSurface = "Smooth"
  Value = (math.random(-5, 5)/100)
  Value2 = (math.random(-5, 5)/100)
  Value3 = (math.random(-5, 5)/100)
  Bolt.CFrame = FakeBolt.CFrame * CFrame.new(0, 0, -(FakeBolt.Size.Z/2))
  Bolt.CFrame = Bolt.CFrame * CFrame.Angles(Value, Value2, Value3)
  Bolt.CFrame = Bolt.CFrame * CFrame.new(0, 0, -(Bolt.Size.Z/2))
  BoltMesh = Instance.new("SpecialMesh")
  BoltMesh.MeshType = "Brick"
  BoltMesh.Parent = Bolt
  BoltMesh.Scale = Vector3.new(10, 10, 3)
  Stuff = Workspace:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].className == "Model" and Stuff[i].Name ~= Me.Name then
    Torso = Stuff[i]:findFirstChild("Torso")
    Humanoid = Stuff[i]:findFirstChild("Humanoid")
    if Torso ~= nil and Humanoid ~= nil then
     if (Bolt.Position-Torso.Position).magnitude <= 15 then
      Humanoid.MaxHealth = 100
      Humanoid:TakeDamage(Damage)
     end
    end
   end
  end
  Bolt2 = Instance.new("Part")
  Bolt2.Parent = Tool
  Bolt2.Anchored = true
  Bolt2.Name = "Shadow"
  Bolt2.CanCollide = false
  Bolt2.Locked = true
  Bolt2.Transparency = 0.2
  Bolt2.formFactor = "Symmetric"
  Bolt2.Size = Bolt.Size
  Bolt2.TopSurface = "Smooth"
  Bolt2.BrickColor = BrickColor.new(1010)
  Bolt2.BottomSurface = "Smooth"
  Bolt2.CFrame = Bolt.CFrame
  BoltMesh = Instance.new("SpecialMesh")
  BoltMesh.MeshType = "Brick"
  BoltMesh.Parent = Bolt2
  BoltMesh.Scale = Vector3.new(10, 10, 3)
  Stuff = Workspace:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].className == "Model" and Stuff[i].Name ~= Me.Name then
    Torso = Stuff[i]:findFirstChild("Torso")
    Humanoid = Stuff[i]:findFirstChild("Humanoid")
    if Torso ~= nil and Humanoid ~= nil then
     if (Bolt2.Position-Torso.Position).magnitude <= 20 then
      Humanoid.MaxHealth = 100
      Humanoid:TakeDamage(Damage)
    end
    end
   end
  end
 end
 FakeBolt = Instance.new("Part")
 FakeBolt.Parent = Tool
 FakeBolt.Anchored = true
 FakeBolt.Name = "Shadow"
 FakeBolt.CanCollide = false
 FakeBolt.Locked = true
 FakeBolt.Transparency = 0.2
 FakeBolt.formFactor = "Symmetric"
 FakeBolt.Size = Vector3.new(1, 1, math.random(5, 10))
 FakeBolt.TopSurface = "Smooth"
 FakeBolt.BrickColor = BrickColor.new(1010)
 FakeBolt.BottomSurface = "Smooth"
 Value = (math.random(-5, 5)/100)
 Value2 = (math.random(-5, 5)/100)
 Value3 = (math.random(-5, 5)/100)
 FakeBolt.CFrame = Bolt.CFrame * CFrame.new(0, 0, -(Bolt.Size.Z/2))
 FakeBolt.CFrame = FakeBolt.CFrame * CFrame.Angles(Value, Value2, Value3)
 FakeBolt.CFrame = FakeBolt.CFrame * CFrame.new(0, 0, -(FakeBolt.Size.Z/2))
 FakeBoltMesh = Instance.new("SpecialMesh") 
 FakeBoltMesh.MeshType = "Brick"
 FakeBoltMesh.Parent = FakeBolt
 FakeBoltMesh.Scale = Vector3.new(10, 10, 3)
 Stuff = Workspace:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].className == "Model" and Stuff[i].Name ~= Me.Name then
   Torso = Stuff[i]:findFirstChild("Torso")
   Humanoid = Stuff[i]:findFirstChild("Humanoid")
   if Torso ~= nil and Humanoid ~= nil then
    if (FakeBolt.Position-Torso.Position).magnitude <= 10 then
     Humanoid.MaxHealth = 100
     Humanoid:TakeDamage(Damage)
     FakeBolt.CFrame = CFrame.new(FakeBolt.Position, Torso.Position)
    end
   end
  end
 end
 Bolt:Remove()
 wait(0.1)
 game.Lighting.Brightness = 1
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1010)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1010)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1010)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "Ice" then
 Activated = true
 f = Instance.new("Fire")
 f.Parent = Grip17
 f.Size = 2
 ff = Instance.new("Fire")
 ff.Parent = Grip18
 ff.Size = 2
 fff = Instance.new("Fire")
 fff.Parent = Grip18
 fff.Size = 2
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Test = FakeLeftShoulder.C0
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-(0.26*4), 0, 0)
 for i = 1 , 20 do
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 4 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1004)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1004)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1004)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.62, 0, 0)
  wait()
 end
 for i = 1 , 2 do
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 1.57, 0)
  wait()
 end
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 4 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1005)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1005)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1005)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.62, 0, 0)
  wait()
 end
 for i = 1 , 2 do
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, -1.57, 0)
  wait()
 end
 end
 for i = 1 , 2 do
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 1.57, 0)
 end
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 4 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1009)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1009)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1009)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.62, 0, 0)
  wait()
 end
 for i = 1 , 4 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1004)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1004)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1004)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.26, 0, 0)
  FakeLeftShoulder.C0 = Test
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
f:remove()
ff:remove()
fff:remove()
end
if Mode == "Fire" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(21)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(21)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(21)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Flaming = true
 while Flaming == true do
 wait()
 end
 wait(0.2)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(21)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(21)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(21)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "Slime" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 SlimeCharge = true
 Slime = Instance.new("Part")
 Slime.Parent = Me.Character.Torso
 Slime.Size = Vector3.new(1, 1, 1)
 Slime.BrickColor = BrickColor.new("White")
 Slime.Locked = true
 Slime.Shape = "Ball"
 Slime.Anchored = true
 Slime.TopSurface = "Smooth"
 Slime.BottomSurface = "Smooth"
 Slime.Transparency = 0.4
 Slime.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, 0, -10)
 f=Instance.new("Fire")
 f.Parent= Slime
 f.Heat = 6
 f.Size = 15
 f.Color=Color3.new(0,0,-255) 
 f.SecondaryColor = Color3.new(0,0,-255) 
 Nucleus = Instance.new("Part")
 Nucleus.Parent = Slime
 Nucleus.Size = Vector3.new(2, 2, 2)
 Nucleus.BrickColor = BrickColor.new("Bright blue")
 Nucleus.Locked = true
 Nucleus.LeftSurface = "Smooth"
 Nucleus.Anchored = true
 Nucleus.RightSurface = "Smooth"
 Nucleus.FrontSurface = "Smooth"
 Nucleus.BackSurface = "Smooth"
 Nucleus.TopSurface = "Smooth"
 Nucleus.BottomSurface = "Smooth"
 Nucleus.Transparency = 0.1
 Nucleus.Shape = "Ball"
 Nucleus.CFrame = Slime.CFrame
 SlimeWeld = Instance.new("Weld")
 SlimeWeld.Parent = Slime
 SlimeWeld.Part0 = Slime
 SlimeWeld.Part1 = Nucleus
 SlimeWeld.C0 = CFrame.new(0, 0, 0)
 while SlimeCharge == true do
  Slime.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, 0, -10)
  Nucleus.CFrame = Slime.CFrame
  if Slime.Size.X <= 10 then
   SlimeWeld:Remove()
   Slime.Size = Slime.Size + Vector3.new(1, 1, 1)
   Slime.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, 0, -10)
   Nucleus.CFrame = Slime.CFrame
   SlimeWeld = Instance.new("Weld")
   SlimeWeld.Parent = Slime
   SlimeWeld.Part0 = Slime
   SlimeWeld.Part1 = Nucleus
   SlimeWeld.C0 = CFrame.new(0, 0, 0)
  end
 wait()
 end
 wait(0.2)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "DarkPulse" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 DarkCharge = true
 Dark = Instance.new("Part")
 Dark.Parent = Me.Character.Torso
 Dark.Size = Vector3.new(1, 2, 1)
 Dark.BrickColor = BrickColor.new("Really Really black")
 Dark.Locked = true
 Dark.Anchored = true
 Dark.TopSurface = "Smooth"
 Dark.BottomSurface = "Smooth"
 Dark.Transparency = 0
 Dark.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, 0, -20)
 DarkMesh = Instance.new("SpecialMesh")
 DarkMesh.Parent = Dark
 DarkMesh.MeshType = "Sphere"
 Gyro = Instance.new("BodyGyro")
 Gyro.Parent = Dark
 Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 Gyro.D = 50
 Gyro.cframe = Dark.CFrame
 while DarkCharge == true do
  if Dark.Transparency < 0 then
   Dark.Transparency = Dark.Transparency + 0
  end
  Dark.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, 0, -20)
  if Dark.Size.X <= 20 then
   Dark.Size = Dark.Size + Vector3.new(1, 0, 1)
   Dark.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, 0, -20)
  end
 wait()
 end
 wait(0.2)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
end
if Mode == "Raise" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 4 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.62, 0, 0)
  wait()
 end
 for i = 1 , 2 do
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 1.57, 0)
  wait()
 end
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 4 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.62, 0, 0)
  wait()
 end
 for i = 1 , 2 do
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, -1.57, 0)
  wait()
 end
 Velocity = Instance.new("BodyVelocity")
 Velocity.Parent = Me.Character.Torso
 Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
 Velocity.velocity = Vector3.new(0, 30, 0)
 Gyro = Instance.new("BodyGyro")
 Gyro.Parent = Me.Character.Torso
 Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 Gyro.cframe = Me.Character.Torso.CFrame
 Gyro.D = 50
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.31, 0, 0)
  Gyro.cframe = Gyro.cframe * CFrame.Angles(0, (0.785*2), 0)
  wait()
 end
 Velocity.maxForce = Vector3.new(math.huge, 0, math.huge)
 Velocity.velocity = Vector3.new(0, 0, 0)
 for i = 1 , 2 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Institutional white")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Institutional white")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Institutional white")
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(1.24, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
 for i = 1 , 4 do
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.4)
 FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.62, 0, 0)
 wait()
 end
 wait(0.2)
 for i = 1 , 8 do
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.4)
 wait()
 end
 
 Wave = Instance.new("Part")
 Wave.Parent = Me.Character.Torso
 Wave.Anchored = true
 Wave.CanCollide = false
 Wave.Locked = true
 Wave.Transparency = 0.2
 Wave.Size = Vector3.new(2, 1, 2)
 Wave.TopSurface = "Smooth"
 Wave.BrickColor = BrickColor.new(1004)
 Wave.BottomSurface = "Smooth"
 Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
 WaveMesh = Instance.new("CylinderMesh")
 WaveMesh.Parent = Wave
 WaveMesh.Scale = Vector3.new(1, 0.3, 1)
 for i = 1 , 32 do
  Wave.Size = Wave.Size + Vector3.new(3, 0, 3)
  Wave.Transparency = Wave.Transparency + (0.8/32)
  Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
  Stuff = Workspace:GetChildren()
  for i = 1 , #Stuff do
   Torso = Stuff[i]:findFirstChild("Torso")
   if Torso ~= nil then
    if (Me.Character.Torso.Position-Torso.Position).magnitude <= (Wave.Size.X/2) then
     if Torso.Parent.Name ~= Me.Name then
      Humanoid = Torso.Parent:findFirstChild("Humanoid")
      if Humanoid ~= nil then
       Humanoid.MaxHealth = 100
       Humanoid:TakeDamage(Damage)
      end
     end
    end
   end
  end
  wait()
 end
 for i = 1 , 4 do
 FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0.62, 0, 0)
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.4)
 wait()
 end
 wait(0.4)
 Gyro:Remove()
 Velocity:Remove()
Activated = false
end
if Mode == "Stone" then
 Activated = true
 Sound.SoundId = "http://www.roblox.com/asset/?id=11420922"
 Sound:play()
wait(5)
 Sound.SoundId = "http://www.roblox.com/asset/?id=2767085"
 Sound.Pitch = 0.8
 Sound:play()
wait(1.5)
Amessage.Text = "Its time.."
 Sound.SoundId = "http://www.roblox.com/asset/?id=2767085"
 Sound.Pitch = 0.8
 Sound.Volume = 0.6
 Sound:play()
 wait(1.5)
 Sound.SoundId = "http://www.roblox.com/asset/?id=2767085"
 Sound.Pitch = 0.8
 Sound.Volume = 0.3
 Sound:play()
wait(1.5)
Amessage.Text = "To die.."
 Sound.SoundId = "http://www.roblox.com/asset/?id=2767085"
 Sound.Pitch = 0.8
 Sound.Volume = 0.2
 Sound:play()
 wait()
 Sound.SoundId = "http://www.roblox.com/asset/?id=13378571"
 Sound.Pitch = 0.8
 Sound.Volume = 0.6
 Sound:play()
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Really Really black")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Really Really black")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Really Really black")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.13)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 onCharge2("Really Really black")
 Stuff = game.Workspace:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].Name ~= Me.Name then
   Torso = Stuff[i]:findFirstChild("Torso")
   Humanoid = Stuff[i]:findFirstChild("Humanoid")
   if Torso ~= nil and Humanoid ~= nil then
    if (Me.Character.Torso.Position-Torso.Position).magnitude <= 200 then
     Humanoid.Sit = true
     Rock = Instance.new("Part")
     Rock.Parent = Tool
     Rock.Name = "Rock"
     Rock.Anchored = true
     Rock.BrickColor = BrickColor.new("Really Really black")
     Rock.Material = "Plastic"
     Rock.Size = Vector3.new(10, 2, 10)
     Rock.formFactor = "Symmetric"
     Rock.Locked = true
     Rock.TopSurface = "Smooth"
     Rock.BottomSurface = "Smooth"
     Rock.CFrame = CFrame.new(Torso.Position-Vector3.new(0, 2, 0))
     Torso.Velocity = Vector3.new(math.random(-20, 20), 150, math.random(-20, 20))
     Humanoid.MaxHealth = 100
     Humanoid:TakeDamage(Damage*3)
    end
   end
  end
 end
 for i = 1 , 10 do
  Stuff = Tool:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].Name == "Rock" then
    P = Stuff[i].CFrame
    Stuff[i].Size = Stuff[i].Size + Vector3.new(0, 2, 0)
    Stuff[i].CFrame = P * CFrame.new(0, 1, 0)
   end
  end
 wait()
 end
 wait(0.1)
 for i = 1 , 10 do
  Stuff = Tool:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].Name == "Rock" then
    P = Stuff[i].CFrame
    Stuff[i].Size = Stuff[i].Size - Vector3.new(0, 2, 0)
    Stuff[i].CFrame = P * CFrame.new(0, -1, 0)
   end
  end
 wait()
 end
 Stuff = Tool:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].Name == "Rock" then
   Stuff[i]:Remove()
  end
 end
 wait(0.2)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Really Really black")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Really Really black")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Really Really black")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.13)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
  Amessage.Text = ""
  Sound.Pitch = 1
  Sound.Volume = 1
 end
Activated = false
end
if Mode == "Shield" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Dark stone grey")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Dark stone grey")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Dark stone grey")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Shielding = true
 while Shielding == true do
  Me.Character.Humanoid.WalkSpeed = 0
  Stuff = game.Workspace:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].Name ~= "Base" and Stuff[i].Name ~= Me.Name then
    if Stuff[i].className == "Part" then
     if (Me.Character.Torso.Position-Stuff[i].Position).magnitude <= 30 then
      Stuff[i]:Remove()
     end
    end
    if Stuff[i].className == "Model" then
     Stuff2 = Stuff[i]:GetChildren()
     for i = 1 , #Stuff2 do
      if Stuff2[i].className == "Part" then
       if (Me.Character.Torso.Position-Stuff2[i].Position).magnitude <= 30 then
        Stuff2[i]:Remove()
       end
      end
     end
    end
   end
  end
 wait()
 end
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Dark stone grey")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Dark stone grey")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Dark stone grey")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "Snipe" then
 if mouse.Target ~= nil then
  Torso = mouse.Target.Parent:findFirstChild("Torso")
  if mouse.Target.Parent.Name ~= Me.Name and Torso ~= nil then
   Activated = true
   Weld.Parent = Me.Character["Left Arm"]
   Weld.Part0 = Me.Character["Left Arm"]
   Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
   Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
   Sound:play()
   for i = 1 , 4 do
    Clone1 = Grip17:clone() 
    Clone1.Parent = Tool
    Clone1.Name = "Shadow"
    Clone1.Anchored = true
    Clone1.CanCollide = false
    Clone1.Transparency = 0.2
    Clone1.BrickColor = BrickColor.new("Institutional white")
    Clone2 = Grip18:clone()
    Clone2.Parent = Tool
    Clone2.Name = "Shadow"
    Clone2.Anchored = true
    Clone2.CanCollide = false
    Clone2.Transparency = 0.2
    Clone2.BrickColor = BrickColor.new("Institutional white")
    Clone3 = Grip19:clone()
    Clone3.Parent = Tool
    Clone3.Name = "Shadow"
    Clone3.Anchored = true
    Clone3.CanCollide = false
    Clone3.Transparency = 0.2
    Clone3.BrickColor = BrickColor.new("Institutional white")
    FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
    FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
    wait()
   end
   Weld:Remove()
   Sound.SoundId = "http://www.roblox.com/asset/?id=18478970"
   Sound:play()
   Gyro = Instance.new("BodyGyro")
   Gyro.Parent = Handle
   Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
   Gyro.cframe = Me.Character.Torso.CFrame * CFrame.Angles(0, 0, 1.57)
   Gyro.D = 50
   Position = Instance.new("BodyPosition")
   Position.Parent = Handle
   Position.maxForce = Vector3.new(9999999999, 9999999999, 9999999999)
   Position.position = Torso.Position
   for i = 1 , 4 do
    FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
    FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
    wait()
   end
   for i = 1 , 20 do
    if Torso ~= nil then
     Gyro.cframe = CFrame.new(Handle.Position, Torso.Position) * CFrame.Angles(-1.57, 0, 0)
     Position.position = Torso.Position
    end
    wait(0.1)
   end
   Gyro:Remove()
   Position:Remove()
   for i = 1 , 10 do
    Gyro.cframe = CFrame.new(Handle.Position, Me.Character.Torso.Position) * CFrame.Angles(-1.57, 0, 0)
    Position.position = Me.Character.Torso.Position
    wait(0.1)
   end
   Weld = Instance.new("Weld")
   Weld.Parent = Me.Character["Left Arm"]
   Weld.Part0 = Me.Character["Left Arm"]
   Weld.Part1 = Handle
   Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
   for i = 1 , 8 do
    Clone1 = Grip17:clone()
    Clone1.Parent = Tool
    Clone1.Name = "Shadow"
    Clone1.Anchored = true
    Clone1.CanCollide = false
    Clone1.Transparency = 0.2
    Clone1.BrickColor = BrickColor.new("Institutional white")
    Clone2 = Grip18:clone()
    Clone2.Parent = Tool
    Clone2.Name = "Shadow"
    Clone2.Anchored = true
    Clone2.CanCollide = false
    Clone2.Transparency = 0.2
    Clone2.BrickColor = BrickColor.new("Institutional white")
    Clone3 = Grip19:clone()
    Clone3.Parent = Tool
    Clone3.Name = "Shadow"
    Clone3.Anchored = true
    Clone3.CanCollide = false
    Clone3.Transparency = 0.2
    Clone3.BrickColor = BrickColor.new("Institutional white")
    FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
    FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
    wait()
   end
   Weld.Parent = Me.Character["Right Arm"]
   Weld.Part0 = Me.Character["Right Arm"]
   Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
   Activated = false
  end
 end
end
end
------------------------------------------------------------>
--[[
?     -->> onButton1Up
--]]
------------------------------------------------------------>
function onButton1Up()
Flaming = false
Shielding = false
if DarkCharge == true then
 Sound.SoundId = "http://www.roblox.com/asset/?id=11998770"
 Sound:play()
 DarkCharge = false
 Dark.Anchored = false
 Velocity = Instance.new("BodyVelocity")
 Velocity.Parent = Dark
 Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
 Velocity.velocity = Me.Character.Torso.CFrame.lookVector * 150
 for i = 1 , 40 do
 Dark.Transparency = Dark.Transparency + 0.02
 function DarkHit(Hit)
  if Hit.Name ~= "Base" and Hit.Parent.Name ~= "Sword" and Hit.Parent.Name ~= Me.Name and Hit.Parent.Parent.Name ~= Me.Name then
   Hit:Remove()
  end
 end
 Dark.Touched:connect(DarkHit)
 wait(0.1)
 end
 Dark:Remove()
 Activated = false
end
if SlimeCharge == true then
 SlimeCharge = false
 Slime.Anchored = false
 Nucleus.Anchored = false
 SlimeWeld = Instance.new("Weld")
 SlimeWeld.Parent = Slime
 SlimeWeld.Part0 = Slime
 SlimeWeld.Part1 = Nucleus
 SlimeWeld.C0 = CFrame.new(0, 0, 0) 
 Velocity = Instance.new("BodyVelocity")
 Velocity.Parent = Slime
 Velocity.maxForce = Vector3.new(math.huge, 0, math.huge)
 Velocity.velocity = Me.Character.Torso.CFrame.lookVector * 100
 
 function SlimeWeld(Hit)
  if Hit.Parent.Name ~= Me.Name then
   Humanoid = Hit.Parent:findFirstChild("Humanoid")
   if Humanoid ~= nil then
    Humanoid.MaxHealth = 0
    Humanoid.Health = 0
    Stuff = Humanoid.Parent:GetChildren()
    for i = 1 , #Stuff do
     if Stuff[i].className == "Part" then
      SlimeWeldz = Instance.new("Weld")
      SlimeWeldz.Parent = Slime
      SlimeWeldz.Part0 = Slime
      SlimeWeldz.Part1 = Stuff[i]
      SlimeWeldz.C0 = CFrame.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1)) * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
     end
    end
   end
  end
 end
 Slime.Touched:connect(SlimeWeld)
end
end
------------------------------------------------------------>
--[[
?     -->> Selected
--]]
------------------------------------------------------------>
function onSelected(Mouse)
 Sound.SoundId = "rbxasset://sounds\\unsheath.wav"
 Sound:play()
 Mouse.Button1Down:connect(function() onButton1Down(mouse) end)
 Mouse.Button1Up:connect(function() onButton1Up(mouse) end)
 mouse = Mouse
 FakeRightShoulder = Instance.new("Weld")
 FakeRightShoulder.Parent = Me.Character.Torso
 FakeRightShoulder.Part0 = Me.Character.Torso
 FakeRightShoulder.Part1 = Me.Character["Right Arm"]
 FakeRightShoulder.C0 = OriginalRightShoulder
 FakeRightShoulder.C1 = OriginalRightShoulder2
 FakeLeftShoulder = Instance.new("Weld")
 FakeLeftShoulder.Parent = Me.Character.Torso
 FakeLeftShoulder.Part0 = Me.Character.Torso
 FakeLeftShoulder.Part1 = Me.Character["Left Arm"]
 FakeLeftShoulder.C0 = OriginalLeftShoulder * CFrame.new(-0.25, 0, -0.45)
 FakeLeftShoulder.C1 = OriginalLeftShoulder2
 Weld:Remove()
 Weld = Instance.new("Weld")
 Weld.Parent = Me.Character["Torso"]
 Weld.Part0 = Me.Character["Torso"]
 Weld.Part1 = Handle
 Weld.C0 = CFrame.new(1.6, 2.5, 0.6) * CFrame.Angles(0, 0, 2.2)
 Weld.C0 = Weld.C0 * CFrame.Angles(0, 1.57, 0)
 equipped = true
 Activated = false
 Equipping = true
 Unequipping = false
 Flaming = false
 Shielding = false
 SlimeCharge = false
 DarkCharge = false
 for i = 1 , 16 do
  FakeRightShoulder.C0 = OriginalRightShoulder * CFrame.Angles(0, 0, (i/5.2))
  Weld.C0 = Weld.C0 * CFrame.new(0, 0, -0.03) * CFrame.Angles(0.03, 0, 0.11)
  wait()
 end
 wait()
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
 for i = 1 , 8 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.2)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 0, -0.19)
  wait()
 end
 wait()
 for i = 1 , 8 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.05, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0.15, 0, 0)
  wait()
 end
 Equipping = false
end
HopperBin.Selected:connect(onSelected)
------------------------------------------------------------>
--[[
?     -->> Deselected
--]]
------------------------------------------------------------>
function onDeselected(Mouse)
 Sound.SoundId = "rbxasset://sounds\\unsheath.wav"
 Sound:play()
 for i = 1 , 8 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.05, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.15, 0, 0)
  wait()
 end
 wait()
 for i = 1 , 8 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.2)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 0, 0.19)
  wait()
 end
 FakeLeftShoulder.C0 = OriginalLeftShoulder
 Weld = Instance.new("Weld")
 Weld.Parent = Me.Character["Torso"]
 Weld.Part0 = Me.Character["Torso"]
 Weld.Part1 = Handle
 Weld.C0 = CFrame.new(1.6, 2.5, 0.6) * CFrame.Angles(0, 0, 2.2)
 Weld.C0 = Weld.C0 * CFrame.Angles(0, 1.57, 0)    
 
 for i = 1 , 16 do
  Weld.C0 = Weld.C0 * CFrame.new(0, 0, -0.03) * CFrame.Angles(0.03, 0, 0.11)
 end
 for i = 1 , 16 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.1)
  Weld.C0 = Weld.C0 * CFrame.new(0, 0, 0.03) * CFrame.Angles(-0.03, 0, -0.11)
  wait()
 end
 FakeRightShoulder:Remove()
 FakeLeftShoulder:Remove()
 FakeRightShoulder = Instance.new("Weld")
 FakeRightShoulder.Parent = Me.Character.Torso
 FakeRightShoulder.Part0 = Me.Character.Torso
 FakeRightShoulder.Part1 = Me.Character["Right Arm"]
 FakeRightShoulder.C0 = OriginalRightShoulder
 FakeRightShoulder.C1 = OriginalRightShoulder2
 FakeLeftShoulder = Instance.new("Weld")
 FakeLeftShoulder.Parent = Me.Character.Torso
 FakeLeftShoulder.Part0 = Me.Character.Torso
 FakeLeftShoulder.Part1 = Me.Character["Left Arm"]
 FakeLeftShoulder.C0 = OriginalLeftShoulder
 FakeLeftShoulder.C1 = OriginalLeftShoulder2
 Equipped = false
 Activated = false
 Equipping = false
 Flaming = false
 DarkCharge = false
 Shielding = false
 Unequipping = true
 SlimeCharge = false
 Unequipping = false
end
HopperBin.Deselected:connect(onDeselected)
------------------------------------------------------------>
--[[
?     -->> onTouched() Functions
--]]
------------------------------------------------------------>
function onTouched(Hit)
 if Activated then
  if Hit.Parent.Name ~= Me.Name and Hit.Parent.Name ~= HopperBinName then
   Humanoid = Hit.Parent:findFirstChild("Humanoid")
   if Humanoid ~= nil and Mode ~= "Assassinate" then
    Humanoid.MaxHealth = 100
    Humanoid:TakeDamage(Damage)
    for i = 1 , (Humanoid.Health/10) do
     Blood = Instance.new("Part")
     Blood.Parent = Workspace
     Blood.CanCollide = false
     Blood.Transparency = 0.1
     Blood.TopSurface = "Smooth"
     Blood.BottomSurface = "Smooth"
     Blood.Size = Vector3.new(1, 1, 1)
     Blood.Locked = true
     Blood.BrickColor = BrickColor.new(1004)
     Blood.CFrame = Hit.CFrame * CFrame.new(math.random(-0.5, 0.5), math.random(-0.5, 0.5), math.random(-0.5, 0.5)) * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
     Blood.Velocity = Vector3.new(math.random(-50, 50), math.random(30, 50), math.random(-50, 50))
     BloodMesh = Instance.new("SpecialMesh")
     BloodMesh.Parent = Blood
     BloodMesh.MeshType = "Sphere"
     BloodMesh.Scale = Vector3.new(0.35, 0.35, 0.35)
     Blood:BreakJoints()
     Blood.Velocity = Vector3.new(math.random(-50, 50), math.random(30, 50), math.random(-50, 50))
    end
   end
  end
 end
end
Stuff = Tool:GetChildren()
for i = 1 , #Stuff do
if Stuff[i].className == "Part" then
Stuff[i].Touched:connect(onTouched)
end
end
------------------------------------------------------------>
--[[
?     -->> Gui
--]]
------------------------------------------------------------>
wait(1)
Gui = PlayerGui:findFirstChild("LoadGui")
if Gui ~= nil then
 Gui:Remove()
end
PlayerGui = Me["PlayerGui"]
Gui = PlayerGui:findFirstChild("SwordGui")
if Gui ~= nil then
 Gui:Remove()
end
Gui = Instance.new("ScreenGui")
Gui.Parent = PlayerGui
Gui.Name = "SwordGui"
Background = Instance.new("ImageLabel")
Background.Parent = Gui
Background.Name = "Background"
Background.Size = UDim2.new(0.25, 0, 0.5, 0)
Background.BackgroundTransparency = 0.7
Background.Position = UDim2.new(0.55, 0, 0, 0) 
Background.BackgroundColor = BrickColor.new("White")
Page1 = Instance.new("ImageLabel")
Page1.Parent = Background
Page1.Name = "Page1"
Page1.Size = UDim2.new(1, 0, 1, 0)
Page1.BackgroundTransparency = 1
Page1.Position = UDim2.new(0, 0, 0, 0)
Reset = Instance.new("TextButton")
Reset.Parent = Page1
Reset.Name = "Swing"
Reset.Size = UDim2.new(0.2, 0, 0.07, 0)
Reset.BackgroundTransparency = 0.1
Reset.Position = UDim2.new(0.02, 0, 0.02, 0)
Reset.BorderSizePixel = 0
Reset.BackgroundColor = BrickColor.new("White")
Reset.Text = "[ Reset ]" 
Reset.MouseButton1Down:connect(function()
p = game.Workspace:findFirstChild(Me.Name)
if p ~= nil then
 p:BreakJoints()
end
end)
Hint = Instance.new("TextLabel")
Hint.Parent = Background
Hint.Name = "Hint"
Hint.Size = UDim2.new(1, 0, 0.07, 0)
Hint.BackgroundTransparency = 0.1
Hint.Position = UDim2.new(0, 0, -0.07, 0)
Hint.BorderSizePixel = 0
Hint.BackgroundColor = BrickColor.new("White")
Hint.Text = "[ ]"
Swing = Instance.new("TextButton")
Swing.Parent = Page1
Swing.Name = "Swing"
Swing.Size = UDim2.new(0.25, 0, 0.07, 0)
Swing.BackgroundTransparency = 0.1
Swing.Position = UDim2.new(0.05, 0, 0.2, 0)
Swing.BorderSizePixel = 0
Swing.BackgroundColor = BrickColor.new("White")
Swing.Text = "[ Swing ]" 
Swing.MouseButton1Down:connect(function()
Mode = "Swing"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  Swing.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click to Slash ]"
 end
end
end)
Spin = Instance.new("TextButton")
Spin.Parent = Page1
Spin.Name = "Spin"
Spin.Size = UDim2.new(0.25, 0, 0.07, 0)
Spin.BackgroundTransparency = 0.1
Spin.Position = UDim2.new(0.05, 0, 0.3, 0)
Spin.BorderSizePixel = 0
Spin.BackgroundColor = BrickColor.new("White")
Spin.Text = "[ DarkFlash ]" 
Spin.MouseButton1Down:connect(function()
Mode = "Spin"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  Spin.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click to Spin Slash ]"
 end
end
end)
TripleSlash = Instance.new("TextButton")
TripleSlash.Parent = Page1
TripleSlash.Name = "TripleSlash"
TripleSlash.Size = UDim2.new(0.25, 0, 0.07, 0)
TripleSlash.BackgroundTransparency = 0.1
TripleSlash.Position = UDim2.new(0.05, 0, 0.4, 0)
TripleSlash.BorderSizePixel = 0
TripleSlash.BackgroundColor = BrickColor.new("White")
TripleSlash.Text = "[ TripleSlash ]" 
TripleSlash.MouseButton1Down:connect(function()
Mode = "TripleSlash"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  TripleSlash.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click to slash 3 times quickly ]"
 end
end
end)
ForwardSpin = Instance.new("TextButton")
ForwardSpin.Parent = Page1
ForwardSpin.Name = "Spin"
ForwardSpin.Size = UDim2.new(0.25, 0, 0.07, 0)
ForwardSpin.BackgroundTransparency = 0.1
ForwardSpin.Position = UDim2.new(0.05, 0, 0.5, 0)
ForwardSpin.BorderSizePixel = 0
ForwardSpin.BackgroundColor = BrickColor.new("White")
ForwardSpin.Text = "[ ForwardSpin ]" 
ForwardSpin.MouseButton1Down:connect(function()
Mode = "ForwardSpin"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  ForwardSpin.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click to Spin Slash forward ]"
 end
end
end)
Boomerang = Instance.new("TextButton")
Boomerang.Parent = Page1
Boomerang.Name = "Boomerang"
Boomerang.Size = UDim2.new(0.25, 0, 0.07, 0)
Boomerang.BackgroundTransparency = 0.1
Boomerang.Position = UDim2.new(0.05, 0, 0.6, 0)
Boomerang.BorderSizePixel = 0
Boomerang.BackgroundColor = BrickColor.new("White")
Boomerang.Text = "[ Boomerang ]" 
Boomerang.MouseButton1Down:connect(function()
Mode = "Boomerang"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  Boomerang.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click to throw your sword ]"
 end
end
end)
Remover = Instance.new("TextButton")
Remover.Parent = Page1
Remover.Name = "Remover"
Remover.Size = UDim2.new(0.25, 0, 0.07, 0)
Remover.BackgroundTransparency = 0.1
Remover.Position = UDim2.new(0.05, 0, 0.7, 0)
Remover.BorderSizePixel = 0
Remover.BackgroundColor = BrickColor.new("White")
Remover.Text = "[ Remover ]" 
Remover.MouseButton1Down:connect(function()
Mode = "Remover"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  Remover.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click to remove anything nearby ]"
 end
end
end)
Alchemy = Instance.new("TextButton")
Alchemy.Parent = Page1
Alchemy.Name = "Alchemy"
Alchemy.Size = UDim2.new(0.25, 0, 0.07, 0)
Alchemy.BackgroundTransparency = 0.1
Alchemy.Position = UDim2.new(0.05, 0, 0.8, 0)
Alchemy.BorderSizePixel = 0
Alchemy.BackgroundColor = BrickColor.new("White")
Alchemy.Text = "[ Alchemy ]" 
Alchemy.MouseButton1Down:connect(function()
Mode = "Alchemy"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  Alchemy.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click to use alchemy ]"
 end
end
end)
Fire = Instance.new("TextButton")
Fire.Parent = Page1
Fire.Name = "Fire"
Fire.Size = UDim2.new(0.25, 0, 0.07, 0)
Fire.BackgroundTransparency = 0.1
Fire.Position = UDim2.new(0.375, 0, 0.2, 0)
Fire.BorderSizePixel = 0
Fire.BackgroundColor = BrickColor.new("White")
Fire.Text = "[ Fire ]" 
Fire.MouseButton1Down:connect(function()
Mode = "Fire"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  Fire.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click and hold to shoot fire ]"
 end
end
end)
Slimeball = Instance.new("TextButton")
Slimeball.Parent = Page1
Slimeball.Name = "Slime"
Slimeball.Size = UDim2.new(0.25, 0, 0.07, 0)
Slimeball.BackgroundTransparency = 0.1
Slimeball.Position = UDim2.new(0.375, 0, 0.3, 0)
Slimeball.BorderSizePixel = 0
Slimeball.BackgroundColor = BrickColor.new("White")
Slimeball.Text = "[ Fireball ]" 
Slimeball.MouseButton1Down:connect(function()
Mode = "Slime"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  Slimeball.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click and hold to fire a slime ]"
 end
end
end)
Stone = Instance.new("TextButton")
Stone.Parent = Page1
Stone.Name = "Stone"
Stone.Size = UDim2.new(0.25, 0, 0.07, 0)
Stone.BackgroundTransparency = 0.1
Stone.Position = UDim2.new(0.375, 0, 0.4, 0)
Stone.BorderSizePixel = 0
Stone.BackgroundColor = BrickColor.new("White")
Stone.Text = "[ UltimateVoid ]" 
Stone.MouseButton1Down:connect(function()
Mode = "Stone"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  Stone.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click to hit anybody near you ]"
 end
end
end)
Escape = Instance.new("TextButton")
Escape.Parent = Page1
Escape.Name = "Escape"
Escape.Size = UDim2.new(0.25, 0, 0.07, 0)
Escape.BackgroundTransparency = 0.1
Escape.Position = UDim2.new(0.375, 0, 0.5, 0)
Escape.BorderSizePixel = 0
Escape.BackgroundColor = BrickColor.new("White")
Escape.Text = "[ Escape ]" 
Escape.MouseButton1Down:connect(function()
Mode = "Escape"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  Escape.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click to escape when stuck ]"
 end
end
end)
Shield = Instance.new("TextButton")
Shield.Parent = Page1
Shield.Name = "Shield"
Shield.Size = UDim2.new(0.25, 0, 0.07, 0)
Shield.BackgroundTransparency = 0.1
Shield.Position = UDim2.new(0.375, 0, 0.6, 0)
Shield.BorderSizePixel = 0
Shield.BackgroundColor = BrickColor.new("White")
Shield.Text = "[ Shield ]" 
Shield.MouseButton1Down:connect(function()
Mode = "Shield"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  Shield.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click and hold for an invisible shield ]"
 end
end
end)
DarkPulse = Instance.new("TextButton")
DarkPulse.Parent = Page1
DarkPulse.Name = "DarkPulse"
DarkPulse.Size = UDim2.new(0.25, 0, 0.07, 0)
DarkPulse.BackgroundTransparency = 0.1
DarkPulse.Position = UDim2.new(0.375, 0, 0.7, 0)
DarkPulse.BorderSizePixel = 0
DarkPulse.BackgroundColor = BrickColor.new("White")
DarkPulse.Text = "[ DarkPulse ]" 
DarkPulse.MouseButton1Down:connect(function()
Mode = "DarkPulse"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  DarkPulse.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click and hold to fire a dark wave ]"
 end
end
end)
Snipe = Instance.new("TextButton")
Snipe.Parent = Page1
Snipe.Name = "Snipe"
Snipe.Size = UDim2.new(0.25, 0, 0.07, 0)
Snipe.BackgroundTransparency = 0.1
Snipe.Position = UDim2.new(0.375, 0, 0.8, 0)
Snipe.BorderSizePixel = 0
Snipe.BackgroundColor = BrickColor.new("White")
Snipe.Text = "[ Snipe ]" 
Snipe.MouseButton1Down:connect(function()
Mode = "Snipe"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  Snipe.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click a person to zoom toward him ]"
 end
end
end)
Ice = Instance.new("TextButton")
Ice.Parent = Page1
Ice.Name = "Ice"
Ice.Size = UDim2.new(0.25, 0, 0.07, 0)
Ice.BackgroundTransparency = 0.1
Ice.Position = UDim2.new(0.7, 0, 0.2, 0)
Ice.BorderSizePixel = 0
Ice.BackgroundColor = BrickColor.new("White")
Ice.Text = "[ HeatSlashes ]" 
Ice.MouseButton1Down:connect(function()
Mode = "Ice"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  Ice.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click to send out a beam of ice ]"
 end
end
end)
Tornado = Instance.new("TextButton")
Tornado.Parent = Page1
Tornado.Name = "Tornado"
Tornado.Size = UDim2.new(0.25, 0, 0.07, 0)
Tornado.BackgroundTransparency = 0.1
Tornado.Position = UDim2.new(0.7, 0, 0.3, 0)
Tornado.BorderSizePixel = 0
Tornado.BackgroundColor = BrickColor.new("White")
Tornado.Text = "[ HeatSpins ]" 
Tornado.MouseButton1Down:connect(function()
Mode = "Tornado"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  Tornado.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click to throw people near you ]"
 end
end
end)
Explosion = Instance.new("TextButton")
Explosion.Parent = Page1
Explosion.Name = "Really blackHole"
Explosion.Size = UDim2.new(0.25, 0, 0.07, 0)
Explosion.BackgroundTransparency = 0.1
Explosion.Position = UDim2.new(0.7, 0, 0.4, 0)
Explosion.BorderSizePixel = 0
Explosion.BackgroundColor = BrickColor.new("White")
Explosion.Text = "[ Explosion ]" 
Explosion.MouseButton1Down:connect(function()
Mode = "Explosion"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  Explosion.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click to summon a huge explosion ]"
 end
end
end)
ExplodeVictim = Instance.new("TextButton")
ExplodeVictim.Parent = Page1
ExplodeVictim.Name = "ExplodeVictim"
ExplodeVictim.Size = UDim2.new(0.25, 0, 0.07, 0)
ExplodeVictim.BackgroundTransparency = 0.1
ExplodeVictim.Position = UDim2.new(0.7, 0, 0.5, 0)
ExplodeVictim.BorderSizePixel = 0
ExplodeVictim.BackgroundColor = BrickColor.new("White")
ExplodeVictim.Text = "[ ExplodeVictim ]" 
ExplodeVictim.MouseButton1Down:connect(function()
Mode = "ExplodeVictim"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  ExplodeVictim.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click a person to explode him ]"
 end
end
end)
Raise = Instance.new("TextButton")
Raise.Parent = Page1
Raise.Name = "Raise"
Raise.Size = UDim2.new(0.25, 0, 0.07, 0)
Raise.BackgroundTransparency = 0.1
Raise.Position = UDim2.new(0.7, 0, 0.6, 0)
Raise.BorderSizePixel = 0
Raise.BackgroundColor = BrickColor.new("White")
Raise.Text = "[ Wave ]" 
Raise.MouseButton1Down:connect(function()
Mode = "Raise"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  Raise.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click the ground to make a mountain ]"
 end
end
end)
Teleport = Instance.new("TextButton")
Teleport.Parent = Page1
Teleport.Name = "Teleport"
Teleport.Size = UDim2.new(0.25, 0, 0.07, 0)
Teleport.BackgroundTransparency = 0.1
Teleport.Position = UDim2.new(0.7, 0, 0.7, 0)
Teleport.BorderSizePixel = 0
Teleport.BackgroundColor = BrickColor.new("White")
Teleport.Text = "[ Teleport ]" 
Teleport.MouseButton1Down:connect(function()
Mode = "Teleport"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  Teleport.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click to teleport and slash ]"
 end
end
end)
DownThrust = Instance.new("TextButton")
DownThrust.Parent = Page1
DownThrust.Name = "DownThrust"
DownThrust.Size = UDim2.new(0.25, 0, 0.07, 0)
DownThrust.BackgroundTransparency = 0.1
DownThrust.Position = UDim2.new(0.7, 0, 0.8, 0)
DownThrust.BorderSizePixel = 0
DownThrust.BackgroundColor = BrickColor.new("White")
DownThrust.Text = "[ DownThrust ]" 
DownThrust.MouseButton1Down:connect(function()
Mode = "DownThrust"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  DownThrust.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click to thurst downward ]"
 end
end
end)
Assassinate = Instance.new("TextButton")
Assassinate.Parent = Page1
Assassinate.Name = "Assassinate"
Assassinate.Size = UDim2.new(0.25, 0, 0.07, 0)
Assassinate.BackgroundTransparency = 0.1
Assassinate.Position = UDim2.new(0.375, 0, 0.1, 0)
Assassinate.BorderSizePixel = 0
Assassinate.BackgroundColor = BrickColor.new("White")
Assassinate.Text = "[ Assassinate ]" 
Assassinate.MouseButton1Down:connect(function()
Mode = "Assassinate"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  Assassinate.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click a player to kill ]"
 end
end
end)
Lazor = Instance.new("TextButton")
Lazor.Parent = Page1
Lazor.Name = "lazor"
Lazor.Size = UDim2.new(0.25, 0, 0.07, 0)
Lazor.BackgroundTransparency = 0.1
Lazor.Position = UDim2.new(0.05, 0, 0.1, 0)
Lazor.BorderSizePixel = 0
Lazor.BackgroundColor = BrickColor.new("White")
Lazor.Text = "[ LAZOR ]" 
Lazor.MouseButton1Down:connect(function()
Mode = "Lazor"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  Lazor.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click to FIRE LAZOOOOOR!!! ]"
 end
end
end)
Lazor3 = Instance.new("TextButton")
Lazor3.Parent = Page1
Lazor3.Name = "Toss"
Lazor3.Size = UDim2.new(0.25, 0, 0.07, 0)
Lazor3.BackgroundTransparency = 0.1
Lazor3.Position = UDim2.new(0.7, 0, 0.1, 0)
Lazor3.BorderSizePixel = 0
Lazor3.BackgroundColor = BrickColor.new("White")
Lazor3.Text = "[ Toss ]" 
Lazor3.MouseButton1Down:connect(function()
Mode = "Toss"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new("White")
  Lazor3.BackgroundColor = BrickColor.new("Lime green")
  Hint.Text = "[ Click to toss Sword ]"
 end
end
end)
------------------------------------------------------------>
--[[
?     -->> Suit
--]]
------------------------------------------------------------>
Player = Me
Person = Player 
Character = Player.Character 
Torso = Character.Torso 
Head = Character:findFirstChild("Head") 
LA = Character:findFirstChild("Left Arm") 
RA = Character:findFirstChild("Right Arm") 
LL = Character:findFirstChild("Left Leg") 
RL = Character:findFirstChild("Right Leg") 
Characters = Instance.new("Model") 
Characters.Name = "Suit" 
Characters.Parent = Character 
Suit = Character.Suit 
RAs = Instance.new("Part") 
RAs.Name = "RightArmShuriken" 
RAs.formFactor = "Plate" 
RAs.Size = Vector3.new(1, 0.4, 1) 
RAs.TopSurface = "Smooth" 
RAs.BottomSurface = "Smooth" 
RAs.BrickColor = BrickColor.new("White") 
RAs.Reflectance = 0
Rasm = Instance.new("SpecialMesh") 
Rasm.Parent = RAs 
Rasm.MeshType = "FileMesh" 
Rasm.MeshId = "http://www.roblox.com/asset/?id=19251107"
Rasm.Scale = Vector3.new(0.27,1,0.27) 
RAs.Parent = Characters 
RAsw = Instance.new("Weld") 
RAsw.Part0 = RAs 
RAsw.Part1 = RA 
RAsw.Parent = RAs 
RAsw.C0 = CFrame.new(0.03,-0.5,-0.5)*CFrame.fromEulerAnglesXYZ(0,1.5,1.6) 
RAa = Instance.new("Part") 
RAa.Name = "RightArmArmor" 
RAa.formFactor = "Symmetric" 
RAa.Size = Vector3.new(1,2,1) 
RAa.TopSurface = "Smooth" 
RAa.BottomSurface = "Smooth" 
RAa.BrickColor = BrickColor.new("Really Really black") 
RAa.Reflectance = 0
RAm = Instance.new("BlockMesh") 
RAm.Parent = RAa 
RAm.Scale = Vector3.new(1.01,0.51,1.01) 
RAa.Parent = Characters 
RAaw = Instance.new("Weld") 
RAaw.Part0 = RA 
RAaw.Part1 = RAa 
RAaw.Parent = RA 
RAaw.C0 = CFrame.new(0,0.5,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
TorsoX = Instance.new("WedgePart") 
TorsoX.Name = "TorsoPart" 
TorsoX.formFactor = "Plate" 
TorsoX.Size = Vector3.new(1.01, 1.01, 1.01) 
TorsoX.TopSurface = "Smooth" 
TorsoX.BottomSurface = "Smooth" 
TorsoX.BrickColor = BrickColor.new("Really Really black") 
TorsoX.Reflectance = 0 
TorsoX.Parent = Characters 
TorsoXW = Instance.new("Weld") 
TorsoXW.Part0 = TorsoX
TorsoXW.Part1 = Torso
TorsoXW.Parent = TorsoX
TorsoXW.C0 = CFrame.new(0,0.41,-0.51)*CFrame.fromEulerAnglesXYZ(0,-1.575,-1.575)
TorsoX2 = Instance.new("WedgePart") 
TorsoX2.Name = "TorsoPart2" 
TorsoX2.formFactor = "Plate" 
TorsoX2.Size = Vector3.new(1.01, 1.01, 1.01) 
TorsoX2.TopSurface = "Smooth" 
TorsoX2.BottomSurface = "Smooth" 
TorsoX2.BrickColor = BrickColor.new("Really Really black") 
TorsoX2.Reflectance = 0 
TorsoX2.Parent = Characters 
TorsoXW2 = Instance.new("Weld") 
TorsoXW2.Part0 = TorsoX2
TorsoXW2.Part1 = Torso
TorsoXW2.Parent = TorsoX
TorsoXW2.C0 = CFrame.new(0.01,0.41,-0.51)*CFrame.fromEulerAnglesXYZ(0,-1.575,-1.575)
RAb = Instance.new("Part") 
RAb.Name = "RightArmArmor" 
RAb.formFactor = "Symmetric" 
RAb.Size = Vector3.new(1,2,1) 
RAb.TopSurface = "Smooth" 
RAb.BottomSurface = "Smooth" 
RAb.BrickColor = BrickColor.new("White") 
RAb.Reflectance = 0
RAm = Instance.new("BlockMesh") 
RAm.Parent = RAb 
RAm.Scale = Vector3.new(1.02,0.05,1.02) 
RAb.Parent = Characters 
RAbw = Instance.new("Weld") 
RAbw.Part0 = RAb 
RAbw.Part1 = RA 
RAbw.Parent = RAb 
RAbw.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
Chakram2 = Instance.new("Part") 
Chakram2.Name = "Chakram2" 
Chakram2.formFactor = "Symmetric" 
Chakram2.Size = Vector3.new(1,1,1) 
Chakram2.TopSurface = "Smooth" 
Chakram2.BottomSurface = "Smooth" 
Chakram2.BrickColor = BrickColor.new("White") 
Chakram2.Reflectance = 0
ChakramMesh2 = Instance.new("SpecialMesh") 
ChakramMesh2.Parent = Chakram2
ChakramMesh2.MeshType = "FileMesh" 
ChakramMesh2.MeshId = "http://www.roblox.com/asset/?id=1185246"
ChakramMesh2.TextureId = "" 
ChakramMesh2.Scale = Vector3.new(2,2,1) 
Chakram2.Parent = Characters 
Chakram2Weld = Instance.new("Weld") 
Chakram2Weld.Part0 = Chakram2
Chakram2Weld.Part1 = Torso
Chakram2Weld.Parent = Chakram2
Chakram2Weld.C0 = CFrame.new(0,0,0.21)*CFrame.fromEulerAnglesXYZ(0,0,1.95)
Chakram3 = Instance.new("Part") 
Chakram3.Name = "Chakram3" 
Chakram3.formFactor = "Symmetric" 
Chakram3.Size = Vector3.new(1,1,1) 
Chakram3.TopSurface = "Smooth" 
Chakram3.BottomSurface = "Smooth" 
Chakram3.BrickColor = BrickColor.new("White") 
Chakram3.Reflectance = 0
Chakram3.Transparency = 0.5
ChakramMesh3 = Instance.new("SpecialMesh") 
ChakramMesh3.Parent = Chakram3
ChakramMesh3.MeshType = "Sphere" 
ChakramMesh3.MeshId = "http://www.roblox.com/asset/?id=1185246"
ChakramMesh3.Scale = Vector3.new(1.3,1.3,1.3) 
Chakram3.Parent = Characters 
Chakram3Weld = Instance.new("Weld") 
Chakram3Weld.Part0 = Chakram3
Chakram3Weld.Part1 = RA
Chakram3Weld.Parent = Chakram3
Chakram3Weld.C0 = CFrame.new(-0.25,-0.5,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
------------------------------------------------------------>
--[[
?     -->> Loop
--]]
------------------------------------------------------------>
while true do
 wait()
 Stuff = Workspace:GetChildren()
 for i = 1 , #Stuff do
  Stuff2 = Stuff[i]:GetChildren()
  for i = 1 , #Stuff2 do
   Stuff3 = Stuff2[i]:GetChildren()
   for i = 1 , #Stuff3 do
    if Stuff3[i].className == "ForceField" then
     Stuff3[i]:Remove()
    end
   end
   if Stuff2[i].className == "ForceField" then
    Stuff2[i]:Remove()
   end
  end
 end
 if Flaming == true then
 Flame = Instance.new("Part")
 Flame.Parent = Tool
 Flame.Anchored = true
 Flame.BrickColor = BrickColor.new("Really Really black")
 Flame.CanCollide = false
 Flame.Name = "Flame"
 Color = math.random(1, 3)
 if Color == 1 then
  Flame.BrickColor = BrickColor.new(21)
  else
  if Color == 2 then
   Flame.BrickColor = BrickColor.new(24)
  end
  if Color == 3 then
   Flame.BrickColor = BrickColor.new(105)
  end
 end
 Flame.Locked = true
 Flame.Shape = "Ball"
 Flame.Transparency = 0.2
 Flame.Size = Vector3.new(1, 1, 1)
 Flame.TopSurface = "Smooth"
 Flame.BottomSurface = "Smooth"
 Flame.CFrame = Me.Character.Torso.CFrame * CFrame.new(math.random(-2, 2), math.random(-2, 2), -(math.random(8, 12)))
 FlameMesh = Instance.new("SpecialMesh")
 FlameMesh.MeshType = "Sphere"
 FlameMesh.Parent = Flame
 FlameMesh.Scale = Vector3.new(1, 1, 1)
 end
 Me.Character.Humanoid.WalkSpeed = 16
 Me.Character.Humanoid.MaxHealth = 100
 if Me.Character.Torso.Position.Y <= -20 or Me.Character.Torso.Position.Y >= 10000 then
  Base = Workspace:findFirstChild("Base")
  if Base ~= nil then
   Me.Character:MoveTo(Base.Position)
   else
   Me.Character:MoveTo(Vector3.new(0, 50, 0))
  end
 end
 Stuff = Tool:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].className == "Part" then
   if Stuff[i].Name == "Shadow" then
    Stuff[i].Transparency = Stuff[i].Transparency + 0.2
    if Stuff[i].Transparency >= 1 then
     Stuff[i]:Remove()
    end
   end
   if Stuff[i].Name == "Flame" then
    p = Stuff[i].CFrame * CFrame.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
    Size = math.random(1, 3)
    Stuff[i].Mesh.Scale = Stuff[i].Mesh.Scale + Vector3.new(Size, Size, Size)
    Stuff[i].Transparency = Stuff[i].Transparency + 0.0785
    Stuff[i].CFrame = p
    Stuff[i].CFrame = Stuff[i].CFrame * CFrame.new(0, 0, -(math.random(3, 5)))
    Stuff2 = Workspace:GetChildren()
    for ii = 1 , #Stuff2 do
     if Stuff2[ii].className == "Part" then
      if (Stuff[i].Position-Stuff2[ii].Position).magnitude <= Stuff[i].Mesh.Scale.X then
       if Stuff2[ii].Name ~= "Base" then
        Stuff2[ii].Anchored = false
        Stuff2[ii].BrickColor = BrickColor.new("Really Really black")
        Stuff2[ii]:BreakJoints()
       end
      end
     end
     if Stuff2[ii].className == "Model" and Stuff2[ii].Name ~= Me.Name then
      Torso = Stuff2[ii]:findFirstChild("Torso")
      Humanoid = Stuff2[ii]:findFirstChild("Humanoid")
      if Torso ~= nil and Humanoid ~= nil then
       if (Stuff[i].Position-Torso.Position).magnitude <= Stuff[i].Mesh.Scale.X then
        Humanoid.MaxHealth = 100
        Humanoid:TakeDamage(Damage)
        Parts = Humanoid.Parent:GetChildren()
        for i = 1 , #Parts do
         if Parts[i].className == "Part" then
          Parts[i].BrickColor = BrickColor.new("Really Really black")
          if Humanoid.Health <= 0 then
           Parts[i].Anchored = false
           Parts[i]:BreakJoints()
          end
         end
        end
       end
      end
     end
    end
    if Stuff[i].Transparency >= 1 then
     Stuff[i]:Remove()
    end
   end
  end
 end

end
end}

 
 

module[1] = {"Assassin Staff",function()


User = game.Players.LocalPlayer
player = User

moving = false

for i,v in pairs(player.Character:GetChildren()) do
	if v:IsA("CharacterMesh") then
		v:Remove()
	elseif v.Name == "Shirt" then
		v:Remove()
	elseif v.Name == "Pants" then
		v:Remove()
	elseif v:IsA("Hat") then
		v:Remove()
	elseif v.Name == "Head" then
		v.Transparency = 1
		local fi = Instance.new("Fire",v)
		fi.Color = BrickColor.new("Really red").Color
		fi.SecondaryColor = BrickColor.new("Magenta").Color
		fi.Size = 3
		if v:FindFirstChild("face") ~= nil then
			v.face:Remove()
		end
	elseif v:IsA("Part") and v.Name ~= "Head" then
		v.Transparency = 1
		local p = Instance.new("Part",v.Parent)
		p.Name = "Replacement"
		p.formFactor = "Custom"
		p.Size = v.Size
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Position = v.Position
		p.Transparency = 0
		p.Reflectance = 0.5
		p.BrickColor = BrickColor.new("Toothpaste")
		p.CanCollide = false
		local bevel = Instance.new("BlockMesh",p)
		local weld = Instance.new("Weld",p)
		weld.Part0 = v
		weld.Part1 = p
	end
end


local h = Instance.new("Part",player.Character)
h.Name = "Hood"
h.formFactor = "Custom"
h.Size = Vector3.new(1,1,1)
h.TopSurface = 0
h.Reflectance = 0.5
h.BottomSurface = 0
h.Position = h.Parent.Head.Position
h.BrickColor = BrickColor.new("Toothpaste")
local x = Instance.new("Weld",h)
x.Part0 = h
x.Part1 = player.Character:FindFirstChild("Head")
x.C0 = x.C0 + Vector3.new(0,-0.3,0)
local sp = Instance.new("SpecialMesh",h)
sp.MeshType = "FileMesh"
sp.MeshId = "http://www.roblox.com/asset/?id=16952952"


--lego
local Light_ = false
Char = User.Character
Char.Humanoid.MaxHealth = 10000000000000000000000000
wait(0.05)
Char.Humanoid.Health = 10000000000000000000000000
cen = Instance.new("Part", User.Character)
cen.BottomSurface = "Smooth"
cen.TopSurface = "Smooth"
cen.CanCollide = false
cen.formFactor = "Symmetric"
cen.Size = Vector3.new(1,1,1)
cen.BrickColor = BrickColor.new("Really black")
cen.Transparency = 1
cen2 = Instance.new("Part", User.Character)
cen2.BottomSurface = "Smooth"
cen2.TopSurface = "Smooth"
cen2.CanCollide = false
cen2.formFactor = "Symmetric"
cen2.Size = Vector3.new(1,1,1)
cen2.BrickColor = BrickColor.new("Really black")
cen2.Transparency = 1

cenw = Instance.new("Weld", cen)
cenw.Part0 = Char["Torso"]
cenw.Part1 = cen
cenw.C1 = CFrame.new(-1.5,-0.5,0)

cenw2 = Instance.new("Weld", cen2)
cenw2.Part0 = Char["Torso"]
cenw2.Part1 = cen2
cenw2.C1 = CFrame.new(1.5,-0.5,0)



haw = Instance.new("Weld", cen)
haw.Part0 = cen
haw.Part1 = Char["Right Arm"]
haw.C1 = CFrame.new(0,0.5,0)

haw2 = Instance.new("Weld", cen2)
haw2.Part0 = cen2
haw2.Part1 = Char["Left Arm"]
haw2.C1 = CFrame.new(0,0.5,0)

--[[haw.C0 = CFrame.Angles(math.rad(80),0,math.rad(-15))
haw.C1 = CFrame.new(0.5,1,0)

haw2.C0 = CFrame.Angles(math.rad(80),0,math.rad(35))
haw2.C1 = CFrame.new(0,1.2,0)--]]

haw.Part1 = nil
haw2.Part1 = nil
--[[
prtW.Part0 = Char["Right Arm"]
prtW.Part1 = prt1
prtW.C1 = CFrame.new(0,0,0.65)*CFrame.Angles(math.rad(0),0,math.rad(0))
--]]

prt1 = Instance.new("Part", Char)
prt1.Size = Vector3.new(1,1,1)
prt1.CanCollide = false
prt1.BrickColor = BrickColor.new("Institutional white")
prt1.TopSurface = "Smooth"
prt1.Transparency = 0
prt1.BottomSurface = "Smooth"
prtM = Instance.new("CylinderMesh", prt1)
prtM.Scale = Vector3.new(0.15,5,0.15)
prt1:BreakJoints()
prtW = Instance.new("Weld", prt1)
prtW.Part0 = Char["Right Arm"]
prtW.Part1 = prt1
prtW.C1 = CFrame.new(0,0,1)*CFrame.Angles(math.rad(90),0,math.rad(0))

prt2 = Instance.new("Part", Char)
prt2.Size = Vector3.new(1,1,1)
prt2.CanCollide = false
prt2.BrickColor = BrickColor.new("Toothpaste")
prt2.TopSurface = "Smooth"
prt2.Transparency = 0
prt2.BottomSurface = "Smooth"
prt2.Reflectance = 0.5
prtM2 = Instance.new("SpecialMesh", prt2)
prtM2.Scale = Vector3.new(1,2,1)
prtM2.MeshType = "FileMesh"
prtM2.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt2:BreakJoints()
prtW2 = Instance.new("Weld", prt2)
prtW2.Part0 = prt1
prtW2.Part1 = prt2
prtW2.C1 = CFrame.new(0,-3.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt2.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid") and hit.Parent.Name ~= User.Name and moving == true then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - hit.Parent.Humanoid.MaxHealth/20
end
end)

prt3 = Instance.new("Part", Char)
prt3.Size = Vector3.new(1,1,1)
prt3.CanCollide = false
prt3.BrickColor = BrickColor.new("Toothpaste")
prt3.TopSurface = "Smooth"
prt3.Transparency = 0
prt3.BottomSurface = "Smooth"
prt3.Reflectance = 0.5
prtM3 = Instance.new("SpecialMesh", prt3)
prtM3.Scale = Vector3.new(0.5,1,0.5)
prtM3.MeshType = "FileMesh"
prtM3.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt3:BreakJoints()
prtW3 = Instance.new("Weld", prt3)
prtW3.Part0 = prt1
prtW3.Part1 = prt3
prtW3.C1 = CFrame.new(0,3,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt4 = Instance.new("Part", Char)
prt4.Size = Vector3.new(1,1,1)
prt4.CanCollide = false
prt4.BrickColor = BrickColor.new("Really black")
prt4.TopSurface = "Smooth"
prt4.Transparency = 1
prt4.BottomSurface = "Smooth"
prt4.Reflectance = 0
prtM4 = Instance.new("CylinderMesh", prt4)
prtM4.Scale = Vector3.new(0.1,1.05,0.1)
prt4:BreakJoints()
prtW4 = Instance.new("Weld", prt4)
prtW4.Part0 = prt2
prtW4.Part1 = prt4
prtW4.C1 = CFrame.new(0.5,0.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt5 = Instance.new("Part", Char)
prt5.Size = Vector3.new(1,1,1)
prt5.CanCollide = false
prt5.BrickColor = BrickColor.new("Really black")
prt5.TopSurface = "Smooth"
prt5.Transparency = 1
prt5.BottomSurface = "Smooth"
prt5.Reflectance = 0
prtM5 = Instance.new("CylinderMesh", prt5)
prtM5.Scale = Vector3.new(0.1,1.05,0.1)
prt5:BreakJoints()
prtW5 = Instance.new("Weld", prt5)
prtW5.Part0 = prt2
prtW5.Part1 = prt5
prtW5.C1 = CFrame.new(0.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))

prt6 = Instance.new("Part", Char)
prt6.Size = Vector3.new(1,1,1)
prt6.CanCollide = false
prt6.BrickColor = BrickColor.new("Really black")
prt6.TopSurface = "Smooth"
prt6.Transparency = 1
prt6.BottomSurface = "Smooth"
prt6.Reflectance = 0
prtM6 = Instance.new("CylinderMesh", prt6)
prtM6.Scale = Vector3.new(0.1,1.05,0.1)
prt6:BreakJoints()
prtW6 = Instance.new("Weld", prt6)
prtW6.Part0 = prt2
prtW6.Part1 = prt6
prtW6.C1 = CFrame.new(0.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(-180),math.rad(0))

prt7 = Instance.new("Part", Char)
prt7.Size = Vector3.new(1,1,1)
prt7.CanCollide = false
prt7.BrickColor = BrickColor.new("Really black")
prt7.TopSurface = "Smooth"
prt7.Transparency = 1
prt7.BottomSurface = "Smooth"
prt7.Reflectance = 0
prtM7 = Instance.new("CylinderMesh", prt7)
prtM7.Scale = Vector3.new(0.1,1.05,0.1)
prt7:BreakJoints()
prtW7 = Instance.new("Weld", prt7)
prtW7.Part0 = prt2
prtW7.Part1 = prt7
prtW7.C1 = CFrame.new(0.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(-270),math.rad(0))

prt8 = Instance.new("Part", Char)
prt8.Size = Vector3.new(1,1,1)
prt8.CanCollide = false
prt8.BrickColor = BrickColor.new("Toothpaste")
prt8.TopSurface = "Smooth"
prt8.Transparency = 0
prt8.BottomSurface = "Smooth"
prt8.Reflectance = 0.5
prtM8 = Instance.new("SpecialMesh", prt8)
prtM8.Scale = Vector3.new(0.25,0.5,0.25)
prtM8.MeshType = "FileMesh"
prtM8.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt8:BreakJoints()
prtW8 = Instance.new("Weld", prt8)
prtW8.Part0 = prt4
prtW8.Part1 = prt8
prtW8.C1 = CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt9 = Instance.new("Part", Char)
prt9.Size = Vector3.new(1,1,1)
prt9.CanCollide = false
prt9.BrickColor = BrickColor.new("Toothpaste")
prt9.TopSurface = "Smooth"
prt9.Transparency = 0
prt9.BottomSurface = "Smooth"
prt9.Reflectance = 0.5
prtM9 = Instance.new("SpecialMesh", prt9)
prtM9.Scale = Vector3.new(0.25,0.5,0.25)
prtM9.MeshType = "FileMesh"
prtM9.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt9:BreakJoints()
prtW9 = Instance.new("Weld", prt9)
prtW9.Part0 = prt5
prtW9.Part1 = prt9
prtW9.C1 = CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt10 = Instance.new("Part", Char)
prt10.Size = Vector3.new(1,1,1)
prt10.CanCollide = false
prt10.BrickColor = BrickColor.new("Toothpaste")
prt10.TopSurface = "Smooth"
prt10.Transparency = 0
prt10.BottomSurface = "Smooth"
prt10.Reflectance = 0.5
prtM10 = Instance.new("SpecialMesh", prt10)
prtM10.Scale = Vector3.new(0.25,0.5,0.25)
prtM10.MeshType = "FileMesh"
prtM10.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt10:BreakJoints()
prtW10 = Instance.new("Weld", prt10)
prtW10.Part0 = prt6
prtW10.Part1 = prt10
prtW10.C1 = CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt11 = Instance.new("Part", Char)
prt11.Size = Vector3.new(1,1,1)
prt11.CanCollide = false
prt11.BrickColor = BrickColor.new("Toothpaste")
prt11.TopSurface = "Smooth"
prt11.Transparency = 0
prt11.BottomSurface = "Smooth"
prt11.Reflectance = 0.5
prtM11 = Instance.new("SpecialMesh", prt11)
prtM11.Scale = Vector3.new(0.25,0.5,0.25)
prtM11.MeshType = "FileMesh"
prtM11.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt11:BreakJoints()
prtW11 = Instance.new("Weld", prt11)
prtW11.Part0 = prt7
prtW11.Part1 = prt11
prtW11.C1 = CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0))


-----------------

prt8 = Instance.new("Part", Char)
prt8.Size = Vector3.new(1,1,1)
prt8.CanCollide = false
prt8.BrickColor = BrickColor.new("Toothpaste")
prt8.TopSurface = "Smooth"
prt8.Transparency = 0
prt8.BottomSurface = "Smooth"
prt8.Reflectance = 0.5
prtM8 = Instance.new("SpecialMesh", prt8)
prtM8.Scale = Vector3.new(0.25/2,0.25,0.25/2)
prtM8.MeshType = "FileMesh"
prtM8.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt8:BreakJoints()
prtW8 = Instance.new("Weld", prt8)
prtW8.Part0 = prt4
prtW8.Part1 = prt8
prtW8.C1 = CFrame.new(0,0.8,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt9 = Instance.new("Part", Char)
prt9.Size = Vector3.new(1,1,1)
prt9.CanCollide = false
prt9.BrickColor = BrickColor.new("Toothpaste")
prt9.TopSurface = "Smooth"
prt9.Transparency = 0
prt9.BottomSurface = "Smooth"
prt9.Reflectance = 0.5
prtM9 = Instance.new("SpecialMesh", prt9)
prtM9.Scale = Vector3.new(0.25/2,0.25,0.25/2)
prtM9.MeshType = "FileMesh"
prtM9.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt9:BreakJoints()
prtW9 = Instance.new("Weld", prt9)
prtW9.Part0 = prt5
prtW9.Part1 = prt9
prtW9.C1 = CFrame.new(0,0.8,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt10 = Instance.new("Part", Char)
prt10.Size = Vector3.new(1,1,1)
prt10.CanCollide = false
prt10.BrickColor = BrickColor.new("Toothpaste")
prt10.TopSurface = "Smooth"
prt10.Transparency = 0
prt10.BottomSurface = "Smooth"
prt10.Reflectance = 0.5
prtM10 = Instance.new("SpecialMesh", prt10)
prtM10.Scale = Vector3.new(0.25/2,0.25,0.25/2)
prtM10.MeshType = "FileMesh"
prtM10.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt10:BreakJoints()
prtW10 = Instance.new("Weld", prt10)
prtW10.Part0 = prt6
prtW10.Part1 = prt10
prtW10.C1 = CFrame.new(0,0.8,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt11 = Instance.new("Part", Char)
prt11.Size = Vector3.new(1,1,1)
prt11.CanCollide = false
prt11.BrickColor = BrickColor.new("Toothpaste")
prt11.TopSurface = "Smooth"
prt11.Transparency = 0
prt11.BottomSurface = "Smooth"
prt11.Reflectance = 0.5
prtM11 = Instance.new("SpecialMesh", prt11)
prtM11.Scale = Vector3.new(0.25/2,0.25,0.25/2)
prtM11.MeshType = "FileMesh"
prtM11.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt11:BreakJoints()
prtW11 = Instance.new("Weld", prt11)
prtW11.Part0 = prt7
prtW11.Part1 = prt11
prtW11.C1 = CFrame.new(0,0.8,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

---------------------------------------

prt8 = Instance.new("Part", Char)
prt8.Size = Vector3.new(1,1,1)
prt8.CanCollide = false
prt8.BrickColor = BrickColor.new("Toothpaste")
prt8.TopSurface = "Smooth"
prt8.Transparency = 0
prt8.BottomSurface = "Smooth"
prt8.Reflectance = 0.5
prtM8 = Instance.new("SpecialMesh", prt8)
prtM8.Scale = Vector3.new(0.25/2,0.25,0.25/2)
prtM8.MeshType = "FileMesh"
prtM8.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt8:BreakJoints()
prtW8 = Instance.new("Weld", prt8)
prtW8.Part0 = prt4
prtW8.Part1 = prt8
prtW8.C1 = CFrame.new(0,0.2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt9 = Instance.new("Part", Char)
prt9.Size = Vector3.new(1,1,1)
prt9.CanCollide = false
prt9.BrickColor = BrickColor.new("Toothpaste")
prt9.TopSurface = "Smooth"
prt9.Transparency = 0
prt9.BottomSurface = "Smooth"
prt9.Reflectance = 0.5
prtM9 = Instance.new("SpecialMesh", prt9)
prtM9.Scale = Vector3.new(0.25/2,0.25,0.25/2)
prtM9.MeshType = "FileMesh"
prtM9.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt9:BreakJoints()
prtW9 = Instance.new("Weld", prt9)
prtW9.Part0 = prt5
prtW9.Part1 = prt9
prtW9.C1 = CFrame.new(0,0.2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt10 = Instance.new("Part", Char)
prt10.Size = Vector3.new(1,1,1)
prt10.CanCollide = false
prt10.BrickColor = BrickColor.new("Toothpaste")
prt10.TopSurface = "Smooth"
prt10.Transparency = 0
prt10.BottomSurface = "Smooth"
prt10.Reflectance = 0.5
prtM10 = Instance.new("SpecialMesh", prt10)
prtM10.Scale = Vector3.new(0.25/2,0.25,0.25/2)
prtM10.MeshType = "FileMesh"
prtM10.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt10:BreakJoints()
prtW10 = Instance.new("Weld", prt10)
prtW10.Part0 = prt6
prtW10.Part1 = prt10
prtW10.C1 = CFrame.new(0,0.2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt11 = Instance.new("Part", Char)
prt11.Size = Vector3.new(1,1,1)
prt11.CanCollide = false
prt11.BrickColor = BrickColor.new("Toothpaste")
prt11.TopSurface = "Smooth"
prt11.Transparency = 0
prt11.BottomSurface = "Smooth"
prt11.Reflectance = 0.5
prtM11 = Instance.new("SpecialMesh", prt11)
prtM11.Scale = Vector3.new(0.25/2,0.25,0.25/2)
prtM11.MeshType = "FileMesh"
prtM11.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt11:BreakJoints()
prtW11 = Instance.new("Weld", prt11)
prtW11.Part0 = prt7
prtW11.Part1 = prt11
prtW11.C1 = CFrame.new(0,0.2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

delay(0, function()
while true do
for i = 1,360 do
prtW7.C1 = CFrame.new(0.7,0.5,0)*CFrame.Angles(math.rad(0),math.rad(i+270),math.rad(0))
prtW6.C1 = CFrame.new(0.7,0.5,0)*CFrame.Angles(math.rad(0),math.rad(i+180),math.rad(0))
prtW5.C1 = CFrame.new(0.7,0.5,0)*CFrame.Angles(math.rad(0),math.rad(i+90),math.rad(0))
prtW4.C1 = CFrame.new(0.7,0.5,0)*CFrame.Angles(math.rad(0),math.rad(i),math.rad(0))
wait()
end
end
end)

----
prtW.Part0 = Char["Torso"]
prtW.Part1 = prt1
prtW.C1 = CFrame.new(0,0,-0.5)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-45))

----



-----------
Torso = Instance.new("Part", Char)
Torso.formFactor = "Symmetric"
Torso.BrickColor = BrickColor.new("Toothpaste")
Torso.Size = Char.Torso.Size
Torso.Transparency = 1
Torso.Reflectance = 0.5
Torso:BreakJoints()
Torsow = Instance.new("Weld", Torso)
Torsow.Part0 = Char["Torso"]
Torsow.Part1 = Torso
Torsow.C1 = CFrame.Angles(0,math.rad(0),0)
Hw = Instance.new("Weld", Torso)
Hw.Part0 = Torso
Hw.Part1 = Char.Head
Hw.C1 = CFrame.new(0,-1.5,0)

------------


if script.Parent.className ~= "HopperBin" then 
knife = Instance.new("HopperBin") 
knife.Parent = User.Backpack 
knife.Name = "Staff" 
script.Parent = knife 
end


function Spin()
haw.Part1 = Char["Right Arm"]


Torso.Transparency = 0
Char.Torso.Transparency = 1
Char.Torso["Right Shoulder"].Part0 = Torso
Char.Torso["Right Hip"].Part0 = Torso
Char.Torso["Left Shoulder"].Part0 = Torso
Char.Torso["Left Hip"].Part0 = Torso
haw.C0 = CFrame.Angles(0,0,math.rad(90))
for i = 1,3 do
for i = 1,380,20 do
Torsow.C1 = CFrame.Angles(0,math.rad(i),0)
wait()
end
end

haw.Part1 = nil

haw.C0 = CFrame.Angles(0,0,math.rad(0))
Torso.Transparency = 1
Char.Torso.Transparency = 0
Char.Torso["Right Shoulder"].Part0 = Char.Torso
Char.Torso["Right Hip"].Part0 = Char.Torso
Char.Torso["Left Shoulder"].Part0 = Char.Torso
Char.Torso["Left Hip"].Part0 = Char.Torso

end

function Equip()

haw.Part1 = Char["Right Arm"]
haw2.Part1 = Char["Left Arm"]
for i = 1,45,3 do
haw.C0 = CFrame.Angles(math.rad(-i),math.rad(i),0)
wait()
end

prtW.Part0 = Char["Right Arm"]
prtW.Part1 = prt1
prtW.C1 = CFrame.new(0,0,1)*CFrame.Angles(math.rad(90),0,math.rad(0))

for i = 1,45,3 do
haw.C0 = CFrame.Angles(math.rad(-45+i),math.rad(45-i),0)
wait()
end
haw.Part1 = nil
haw2.Part1 = nil
end

function UnEquip()

haw.Part1 = Char["Right Arm"]
haw2.Part1 = Char["Left Arm"]
for i = 1,45,3 do
haw.C0 = CFrame.Angles(math.rad(-i),math.rad(i),0)
wait()
end

prtW.Part0 = Char["Torso"]
prtW.Part1 = prt1
prtW.C1 = CFrame.new(0,0,-0.5)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-45))

for i = 1,45,3 do
haw.C0 = CFrame.Angles(math.rad(-45+i),math.rad(45-i),0)
wait()
end

haw.Part1 = nil
haw2.Part1 = nil

end


function Lightning(hit, m)

local mag = math.floor((hit - prt2.Position).magnitude)
local part_size = mag/5

if m.Target.Parent:findFirstChild("Humanoid") then
m.Target.Parent.Humanoid.Health = m.Target.Parent.Humanoid.Health - m.Target.Parent.Humanoid.MaxHealth/3
end

local P = Instance.new("Part") 
P.Name = "P"
local Place0 = prt2
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.Position - hit).magnitude) 
P.CFrame = CFrame.new((Place0.Position + hit)/2,Place0.Position) 
P.Parent = Char
P.BrickColor = prt1.BrickColor
P.Transparency = 0
P.Reflectance = 0.5
P.Anchored = true 
P.CanCollide = false 
m6 = Instance.new("BlockMesh", P) 
m6.Scale = Vector3.new(0.6,0.6,1)
wait(0.1)
delay(0, function()
for i = 1,10,2 do
P.Transparency = i/10
P.Reflectance = 0
wait()
end
P:Remove()
end)
end


---------------------------------------------------------------------------------------
function spark(A,B)
	Hit = A.CFrame
	local P = Instance.new("Part") 
	P.Name = "Guideline" 
	local Place0 = B.CFrame 
	P.formFactor = 0 
	P.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
	P.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
	P.Parent = script.Parent.Parent
	P.BrickColor = BrickColor.Black()
	P.Anchored = true 
	P.CanCollide = false
	P.Transparency = 1
	m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.1,0.1,1)
	m.Parent = P
	mh = A.CFrame
	for c1 = 1, 3 do
		oldHit = B.CFrame
		for count = 1, 30 do
			val1 = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
			val2 = P.Size.z / 10
			val3 = P.CFrame.lookVector * -1
			val4 = count * val2
			val5 = val4 * val3
			val6 = B.CFrame.p
			Hit = CFrame.new(val5 + val1 + val6)
			local s = Instance.new("Part") 
			s.Name = "Spark" 
			local Place0 = oldHit
			s.formFactor = 0 
			s.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
			s.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
			s.Parent = script.Parent
			s.BrickColor = BrickColor.White()
			s.Anchored = true 
			s.CanCollide = false
			m = Instance.new("BlockMesh")
			m.Scale = Vector3.new(0.1,0.1,1)
			m.Parent = s
			clone = s:clone()
			clone.Mesh.Scale = Vector3.new(0.3,0.3,1.1)
			clone.BrickColor = BrickColor.Blue()
			clone.Transparency = 0.8
			clone.Parent = s.Parent
			oldHit = Hit
		end
		Hit = oldHit
		local s = Instance.new("Part") 
		s.Name = "Spark" 
		local Place0 = mh
		s.formFactor = 0 
		s.Size = Vector3.new(1,1,(Place0.p - Hit.p).magnitude) 
		s.CFrame = CFrame.new((Place0.p + Hit.p)/2,Place0.p) 
		s.Parent = script.Parent
		s.BrickColor = BrickColor.White()
		s.Anchored = true 
		s.CanCollide = false
		m = Instance.new("BlockMesh")
		m.Scale = Vector3.new(0.1,0.1,1)
		m.Parent = s
		clone = s:clone()
		clone.Mesh.Scale = Vector3.new(0.3,0.3,1.1)
		clone.BrickColor = BrickColor.Blue()
		clone.Transparency = 0.8
		clone.Parent = s.Parent
		wait(0.5)
	end
	P:remove()
end
--Lightning = Instance.new("Model", Char)
function PlaceL(BB)
coroutine.resume(coroutine.create(function()
local PA = Instance.new("Part")
PA.Anchored = true
PA.Locked = true
PA.CanCollide = false
PA.Transparency = 1
PA.Size = Vector3.new(0.1,0.1,0.1)
PA.Parent = Lightning
PA.CFrame = CFrame.new(BB.x,BB.y,BB.z)
spark(prt2,PA)
for i = 1,10 do wait()
for i,v in pairs(Lightning:GetChildren()) do
if v:IsA("Part") then
v.Transparency = v.Transparency + 0.1
end
end
end
for i,v in pairs(Lightning:GetChildren()) do
if v:IsA("Part") then
v:Remove()
end
end
end))
end
---------------------------------------------------------------------------------------

function SlashClick()
haw.Part1 = Char["Right Arm"]
haw2.Part1 = Char["Left Arm"]


for i = 1,45,3 do
haw.C0 = CFrame.Angles(math.rad(i),math.rad(i),0)
wait()
end

---
local sound = Instance.new("Sound", Char.Head)
sound.SoundId = "rbxasset://sounds\\swordslash.wav"
sound.Pitch = 0.9
sound.PlayOnRemove = true
wait()
sound.Parent = nil
---
for i = 1,45,5 do
haw.C0 = CFrame.Angles(math.rad(45+i),math.rad(45),0)
wait()
end
for i = 1,135,15 do
haw.C0 = CFrame.Angles(math.rad(90-i),math.rad(45),0)
wait()
end
for i = 1,90,10 do
haw.C0 = CFrame.Angles(math.rad(-45+i),math.rad(45),0)
wait()
end

for i = 1,45,3 do
haw.C0 = CFrame.Angles(math.rad(45-i),math.rad(45-i),0)
wait()
end

haw.Part1 = nil
haw2.Part1 = nil
end


knife.Selected:connect(function(mouse)
mouse.KeyDown:connect(function(k)
if k == "e" and moving == false then
moving = true
SlashClick()
moving = false

--elseif k == "q" and moving == false then
--Spin()
end
end)
mouse.Button1Down:connect(function()
Light_ = true
haw.Part1 = Char["Right Arm"]
haw2.Part1 = Char["Left Arm"]

for i = 1,45,3 do
haw.C0 = CFrame.Angles(math.rad(i),math.rad(i),0)
wait()
end
repeat wait(0.5)
delay(0, function()
Lightning(mouse.hit.p, mouse)
end)
until Light_ == false
for i = 1,45,3 do
haw.C0 = CFrame.Angles(math.rad(45-i),math.rad(45-i),0)
wait()
end
haw.Part1 = nil
haw2.Part1 = nil
 
end)

mouse.Button1Up:connect(function()
Light_ = false

end)

Equip()
end)

knife.Deselected:connect(function(mouse)
UnEquip()
end)

for i,v in pairs(Char:children()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("Really black")
end
end

for i,v in pairs(Char:children()) do
if v:IsA("Part") then

for _,o in pairs(v:children()) do
if o:IsA("SpecialMesh") and o.Scale == Vector3.new(0.25/2,0.25,0.25/2) then
v.BrickColor = BrickColor.new("Really red")
end
end

end
end

prt3.BrickColor = BrickColor.new("Really red")

prt2.BrickColor = BrickColor.new("Really red")

end}
module[2] = {"Assassin Suit",function()
--AssAssin Suit Gifted by TheRedAngel, Regular Script!

Person = game.Players.LocalPlayer
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Person.Backpack 
Tool.Name = "Tool" 
G = Instance.new("GuiMain") 
G.Parent = Person.PlayerGui 
G.Name = "MahGoey" 
F = Instance.new("Frame") 
F.Parent = G 
T = Instance.new("TextLabel") 
T.Parent = F 
T.Name = "Tool" 
T.Text = "Blade" 
T.Size = UDim2.new(0, 100, 0, 40) 
T.Position = UDim2.new(0, 0, 0, 150) 
T.BorderSizePixel = 0 
T.BackgroundColor3 = Color3.new(0, 0, 0) 
T.TextColor3 = Color3.new(1, 1, 1) 
T.BackgroundTransparency = 0.3 
M = Instance.new("TextLabel") 
M.Parent = F 
M.Name = "Mode" 
M.Text = "Standard" 
M.Size = UDim2.new(0, 100, 0, 40) 
M.Position = UDim2.new(0, 0, 0, 190) 
M.BorderSizePixel = 0 
M.BackgroundColor3 = Color3.new(0, 0, 0) 
M.TextColor3 = Color3.new(1, 1, 1) 
M.BackgroundTransparency = 0.3 
end 
---------------------------------------------------------------------------------------------------------------------------------------------Variables 
Bin = Tool 
Grabbed = nil 
Debounce = false 
BladeOut = false 
Hold = false 
Suit = true 
Limbs = {Person.Character["Right Arm"], Person.Character["Left Arm"], Person.Character["Right Leg"], Person.Character["Left Leg"]} 
Joints = {Person.Character.Torso["Right Shoulder"], Person.Character.Torso["Left Shoulder"], Person.Character.Torso["Right Hip"], Person.Character.Torso["Left Hip"]} 
NewJoints = {nil, nil, nil, nil} 
ModeList = {{"Standard", "Breaker"}, {"Main"}, {"Death", "Ban", "Sleep", "Explosion"}} 
Tools = {"Blade", "Bomb", "Wand"} 
List = {} 
Mode = 1 
Tool = 1 
PreferredHand = 1 
PreferredFoot = 3 
UnPreferredHand = 0 
UnPreferredFoot = 0 
if (PreferredHand == 1) then 
UnPreferredHand = 2 
else 
UnPreferredHand = 1 
end 
if (PreferredFoot == 3) then 
UnPreferredFoot = 4 
else 
UnPreferredFoot = 3 
end 
---------------------------------------------------------------------------------------------------------------------------------------------Suit 
if (Person.Character:findFirstChild("Suit") ~= nil) then 
Person.Character.Suit:remove() 
end 
Suit = Instance.new("Model") 
Suit.Parent = Person.Character 
Suit.Name = "Suit" 
if (Person.Character:findFirstChild("Body Colors") ~= nil) then 
Person.Character["Body Colors"]:remove() 
end 
if (Person.Character.Torso:findFirstChild("roblox") ~= nil) then 
Person.Character.Torso.roblox:remove() 
end 
Person.Character.Torso.BrickColor = BrickColor.new("Really black") 
Limbs[4].BrickColor = Person.Character.Head.BrickColor 
Limbs[3].BrickColor = Person.Character.Head.BrickColor 
Limbs[2].BottomSurface = 0 
Limbs[1].BottomSurface = 0 
LeftBoot = Instance.new("Part") 
LeftBoot.Parent = Suit 
LeftBoot.Name = "LeftBoot" 
LeftBoot.CanCollide = false 
LeftBoot.BrickColor = BrickColor.new("Really black") 
LeftBoot.TopSurface = 0 
LeftBoot.BottomSurface = 0 
LeftBoot.formFactor = "Symmetric" 
LeftBoot.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("BlockMesh") 
Mesh.Parent = LeftBoot 
Mesh.Scale = Vector3.new(1.02, 0.8, 1.02) 
LeftBoot:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = LeftBoot 
Weld.Part0 = Limbs[4] 
Weld.Part1 = LeftBoot 
Weld.C0 = CFrame.new(0, -0.61, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
RightBoot = Instance.new("Part") 
RightBoot.Parent = Suit 
RightBoot.Name = "RightBoot" 
RightBoot.CanCollide = false 
RightBoot.BrickColor = BrickColor.new("Really black") 
RightBoot.TopSurface = 0 
RightBoot.BottomSurface = 0 
RightBoot.formFactor = "Symmetric" 
RightBoot.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("BlockMesh") 
Mesh.Parent = RightBoot 
Mesh.Scale = Vector3.new(1.02, 0.8, 1.02) 
RightBoot:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = RightBoot 
Weld.Part0 = Limbs[3] 
Weld.Part1 = RightBoot 
Weld.C0 = CFrame.new(0, -0.61, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
TunicA = Instance.new("Part") 
TunicA.Parent = Suit 
TunicA.Name = "TunicA" 
TunicA.CanCollide = false 
TunicA.BrickColor = BrickColor.new("Bright red") 
TunicA.TopSurface = 0 
TunicA.BottomSurface = 0 
TunicA.formFactor = "Symmetric" 
TunicA.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("BlockMesh") 
Mesh.Parent = TunicA 
Mesh.Scale = Vector3.new(2.02, 0.5, 1.02) 
TunicA:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicA 
Weld.Part0 = Person.Character.Torso 
Weld.Part1 = TunicA 
Weld.C0 = CFrame.new(0, -1.25, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
TunicB = Instance.new("Part") 
TunicB.Parent = Suit 
TunicB.Name = "TunicB" 
TunicB.CanCollide = false 
TunicB.BrickColor = BrickColor.new("Bright red") 
TunicB.TopSurface = 0 
TunicB.BottomSurface = 0 
TunicB.formFactor = "Symmetric" 
TunicB.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("BlockMesh") 
Mesh.Parent = TunicB 
Mesh.Scale = Vector3.new(1.02, 0.5, 1.02) 
TunicB:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicB 
Weld.Part0 = Limbs[4] 
Weld.Part1 = TunicB 
Weld.C0 = CFrame.new(0, 0.75, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
TunicC = Instance.new("Part") 
TunicC.Parent = Suit 
TunicC.Name = "TunicC" 
TunicC.CanCollide = false 
TunicC.BrickColor = BrickColor.new("Bright red") 
TunicC.TopSurface = 0 
TunicC.BottomSurface = 0 
TunicC.formFactor = "Symmetric" 
TunicC.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("BlockMesh") 
Mesh.Parent = TunicC 
Mesh.Scale = Vector3.new(1.02, 0.5, 1.02) 
TunicC:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicC 
Weld.Part0 = Limbs[3] 
Weld.Part1 = TunicC 
Weld.C0 = CFrame.new(0, 0.75, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
TunicD = Instance.new("Part") 
TunicD.Parent = Suit 
TunicD.Name = "TunicD" 
TunicD.CanCollide = false 
TunicD.BrickColor = BrickColor.new("Bright red") 
TunicD.TopSurface = 0 
TunicD.BottomSurface = 0 
TunicD.formFactor = "Symmetric" 
TunicD.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("BlockMesh") 
Mesh.Parent = TunicD 
Mesh.Scale = Vector3.new(2.02, 1.01, 1.02) 
TunicD:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicD 
Weld.Part0 = Person.Character.Torso 
Weld.Part1 = TunicD 
Weld.C0 = CFrame.new(0, -0.501, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
TunicE = Instance.new("Part") 
TunicE.Parent = Suit 
TunicE.Name = "TunicE" 
TunicE.CanCollide = false 
TunicE.BrickColor = BrickColor.new("Bright red") 
TunicE.TopSurface = 0 
TunicE.BottomSurface = 0 
TunicE.formFactor = "Symmetric" 
TunicE.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("SpecialMesh") 
Mesh.Parent = TunicE 
Mesh.MeshType = "Wedge" 
Mesh.Scale = Vector3.new(1.02, 1.01, 0.5) 
TunicE:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicE 
Weld.Part0 = Person.Character.Torso 
Weld.Part1 = TunicE 
Weld.C0 = CFrame.new(0.25, 0.501, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi/2, 0) 
TunicF = Instance.new("Part") 
TunicF.Parent = Suit 
TunicF.Name = "TunicF" 
TunicF.CanCollide = false 
TunicF.BrickColor = BrickColor.new("Bright red") 
TunicF.TopSurface = 0 
TunicF.BottomSurface = 0 
TunicF.formFactor = "Symmetric" 
TunicF.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("SpecialMesh") 
Mesh.Parent = TunicF 
Mesh.MeshType = "Wedge" 
Mesh.Scale = Vector3.new(1.02, 1.01, 0.5) 
TunicF:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicF 
Weld.Part0 = Person.Character.Torso 
Weld.Part1 = TunicF 
Weld.C0 = CFrame.new(-0.25, 0.501, 0) * CFrame.fromEulerAnglesXYZ(0, -math.pi/2, 0) 
TunicG = Instance.new("Part") 
TunicG.Parent = Suit 
TunicG.Name = "TunicG" 
TunicG.CanCollide = false 
TunicG.BrickColor = BrickColor.new("Bright red") 
TunicG.TopSurface = 0 
TunicG.BottomSurface = 0 
TunicG.formFactor = "Symmetric" 
TunicG.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("BlockMesh") 
Mesh.Parent = TunicG 
Mesh.Scale = Vector3.new(0.51, 1.01, 1.02) 
TunicG:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicG 
Weld.Part0 = Person.Character.Torso 
Weld.Part1 = TunicG 
Weld.C0 = CFrame.new(0.751, 0.501, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
TunicH = Instance.new("Part") 
TunicH.Parent = Suit 
TunicH.Name = "TunicH" 
TunicH.CanCollide = false 
TunicH.BrickColor = BrickColor.new("Bright red") 
TunicH.TopSurface = 0 
TunicH.BottomSurface = 0 
TunicH.formFactor = "Symmetric" 
TunicH.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("BlockMesh") 
Mesh.Parent = TunicH 
Mesh.Scale = Vector3.new(0.51, 1.01, 1.02) 
TunicH:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicH 
Weld.Part0 = Person.Character.Torso 
Weld.Part1 = TunicH 
Weld.C0 = CFrame.new(-0.751, 0.501, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
TunicI = Instance.new("Part") 
TunicI.Parent = Suit 
TunicI.Name = "TunicI" 
TunicI.CanCollide = false 
TunicI.BrickColor = BrickColor.new("Bright red") 
TunicI.TopSurface = 0 
TunicI.BottomSurface = 0 
TunicI.formFactor = "Symmetric" 
TunicI.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("SpecialMesh") 
Mesh.Parent = TunicI 
Mesh.MeshType = "Wedge" 
Mesh.Scale = Vector3.new(1.02, 1.01, 0.51) 
TunicI:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicI 
Weld.Part0 = Limbs[2] 
Weld.Part1 = TunicI 
Weld.C0 = CFrame.new(0.251, 0.501, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi/2, math.pi) 
TunicJ = Instance.new("Part") 
TunicJ.Parent = Suit 
TunicJ.Name = "TunicJ" 
TunicJ.CanCollide = false 
TunicJ.BrickColor = BrickColor.new("Bright red") 
TunicJ.TopSurface = 0 
TunicJ.BottomSurface = 0 
TunicJ.formFactor = "Symmetric" 
TunicJ.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("SpecialMesh") 
Mesh.Parent = TunicJ 
Mesh.MeshType = "Wedge" 
Mesh.Scale = Vector3.new(1.02, 1.01, 0.51) 
TunicJ:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicJ 
Weld.Part0 = Limbs[1] 
Weld.Part1 = TunicJ 
Weld.C0 = CFrame.new(-0.251, 0.501, 0) * CFrame.fromEulerAnglesXYZ(0, -math.pi/2, math.pi) 
TunicK = Instance.new("Part") 
TunicK.Parent = Suit 
TunicK.Name = "TunicK" 
TunicK.CanCollide = false 
TunicK.BrickColor = BrickColor.new("Really black") 
TunicK.TopSurface = 0 
TunicK.BottomSurface = 0 
TunicK.formFactor = "Symmetric" 
TunicK.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("BlockMesh") 
Mesh.Parent = TunicK 
Mesh.Scale = Vector3.new(1.01, 1.505, 1.01) 
TunicK:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicK 
Weld.Part0 = Limbs[2] 
Weld.Part1 = TunicK 
Weld.C0 = CFrame.new(0, 0.2505, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
TunicL = Instance.new("Part") 
TunicL.Parent = Suit 
TunicL.Name = "TunicL" 
TunicL.CanCollide = false 
TunicL.BrickColor = BrickColor.new("Really black") 
TunicL.TopSurface = 0 
TunicL.BottomSurface = 0 
TunicL.formFactor = "Symmetric" 
TunicL.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("BlockMesh") 
Mesh.Parent = TunicL 
Mesh.Scale = Vector3.new(1.01, 1.505, 1.01) 
TunicL:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicL 
Weld.Part0 = Limbs[1] 
Weld.Part1 = TunicL 
Weld.C0 = CFrame.new(0, 0.2505, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
TunicM = Instance.new("Part") 
TunicM.Parent = Suit 
TunicM.Name = "TunicM" 
TunicM.CanCollide = false 
TunicM.BrickColor = BrickColor.new("Bright red") 
TunicM.TopSurface = 0 
TunicM.BottomSurface = 0 
TunicM.formFactor = "Symmetric" 
TunicM.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("BlockMesh") 
Mesh.Parent = TunicM 
Mesh.Scale = Vector3.new(2.02, 1.01, 0.51) 
TunicM:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = TunicM 
Weld.Part0 = Person.Character.Torso 
Weld.Part1 = TunicM 
Weld.C0 = CFrame.new(0, 0.501, 0.251) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 


Belt = Instance.new("Part") 
Belt.Parent = Suit 
Belt.Name = "Belt" 
Belt.CanCollide = false 
Belt.BrickColor = BrickColor.new("Really black") 
Belt.TopSurface = 0 
Belt.BottomSurface = 0 
Belt.formFactor = "Symmetric" 
Belt.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("BlockMesh") 
Mesh.Parent = Belt 
Mesh.Scale = Vector3.new(2.04, 0.2, 1.04) 
Belt:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Belt 
Weld.Part0 = Person.Character.Torso 
Weld.Part1 = Belt 
Weld.C0 = CFrame.new(0, -0.9, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---------------------------------------------------------------------------------------------------------------------------------------------Blade 
Blade = Instance.new("Model") 
Blade.Parent = Suit 
Blade.Name = "Blade" 
BandA = Instance.new("Part") 
BandA.Parent = Blade 
BandA.Name = "BandA" 
BandA.CanCollide = false 
BandA.BrickColor = BrickColor.new("Dark stone gray") 
BandA.TopSurface = 0 
BandA.BottomSurface = 0 
BandA.formFactor = "Symmetric" 
BandA.Size = Vector3.new(1, 1, 1) 
MeshA = Instance.new("BlockMesh") 
MeshA.Parent = BandA 
MeshA.Scale = Vector3.new(1.02, 0.1, 1.02) 
BandA:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = BandA 
Weld.Part0 = Limbs[PreferredHand] 
Weld.Part1 = BandA 
Weld.C0 = CFrame.new(0, -0.8, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
BandB = Instance.new("Part") 
BandB.Parent = Blade 
BandB.Name = "BandB" 
BandB.CanCollide = false 
BandB.BrickColor = BrickColor.new("Dark stone gray") 
BandB.TopSurface = 0 
BandB.BottomSurface = 0 
BandB.formFactor = "Symmetric" 
BandB.Size = Vector3.new(1, 1, 1) 
MeshB = Instance.new("BlockMesh") 
MeshB.Parent = BandB 
MeshB.Scale = Vector3.new(1.02, 0.1, 1.02) 
BandB:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = BandB 
Weld.Part0 = Limbs[PreferredHand] 
Weld.Part1 = BandB 
Weld.C0 = CFrame.new(0, -0.6, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
SlotA = Instance.new("Part") 
SlotA.Parent = Blade 
SlotA.Name = "SlotA" 
SlotA.CanCollide = false 
SlotA.BrickColor = BrickColor.new("Dark stone grey") 
SlotA.TopSurface = 0 
SlotA.BottomSurface = 0 
SlotA.formFactor = "Symmetric" 
SlotA.Size = Vector3.new(1, 1, 1) 
MeshA = Instance.new("BlockMesh") 
MeshA.Parent = SlotA 
MeshA.Scale = Vector3.new(0.1, 1, 0.3) 
SlotA:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = SlotA 
Weld.Part0 = Limbs[PreferredHand] 
Weld.Part1 = SlotA 
if (PreferredHand == 1) then 
Weld.C0 = CFrame.new(0.55, -0.4, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
else 
Weld.C0 = CFrame.new(-0.55, -0.4, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
end 
---------------------------------------------------------------------------------------------------------------------------------------------Wand 


---------------------------------------------------------------------------------------------------------------------------------------------Functions 
function DisableLimb(Limb) 
NJoint = Instance.new("Motor") 
NJoint.Parent = Person.Character.Torso 
NJoint.Name = Joints[Limb].Name 
NJoint.Part0 = Joints[Limb].Part0 
NJoint.Part1 = Joints[Limb].Part1 
NJoint.MaxVelocity = Joints[Limb].MaxVelocity 
NJoint.C0 = Joints[Limb].C0 
NJoint.C1 = Joints[Limb].C1 
Joints[Limb].Parent = nil 
NewJoints[Limb] = NJoint 
end 
function EnableLimb(Limb) 
Joints[Limb].Parent = Person.Character.Torso 
NewJoints[Limb]:remove() 
NewJoints[Limb] = nil 
end 


function Check(Table, Value) 
Results = false 
for W, V in pairs(Table) do 
if (V == Value) then 
Results = true 
end 
end 
return Results 
end 

function WeldOn(X, Y) 
Weld = Instance.new("Weld") 
Weld.Part0 = X 
Weld.Part1 = Y 

HitPos = X.Position 
CJ = CFrame.new(HitPos) 
C0 = X.CFrame:inverse() *CJ 
C1 = Y.CFrame:inverse() * CJ 
Weld.C0 = C0 
Weld.C1 = C1 
Weld.Parent = X 
end 
function TimeDelete(Object, Time) 
wait(Time) 
Object:remove() 
end 
function Touch(Hit, Missile) 
if (Hit ~= nil) then 
if (Hit.Parent ~= nil) then 
if (Check(List, Missile) == false) then 
Bool = Person.Character:IsAncestorOf(Hit) 
if (Bool == false) then 
if (Mode == 2) then 
Hit:BreakJoints() 
end 
if (Missile:findFirstChild("ArmWeld") == nil) then 
WeldOn(Missile, Hit) 
end 
if (Hit.Parent:findFirstChild("Humanoid") ~= nil) then 
if (Hit.Parent.Humanoid.Health > 0) then 
if (Mode == 1) then 
Hit.Parent:BreakJoints() 
end 
end 
end 
end 
end 
end 
end 
end 
function ChangeWeapon(Weapon, PrevWeapon) 
Hold = false 
if (PrevWeapon == 1) then 
if (BladeOut == true) then 
BladeOut = false 
if (Person.Character.Suit.Blade:findFirstChild("Blade") ~= nil) then 
if (Person.Character.Suit.Blade.Blade:findFirstChild("BladeA") ~= nil) then 
Num = 1.4 
for I = 1, 5 do 
if (PreferredHand == 1) then 
Person.Character.Suit.Blade.Blade.BladeA.ArmWeld.C0 = CFrame.new(0.55, -Num, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
else 
Person.Character.Suit.Blade.Blade.BladeA.ArmWeld.C0 = CFrame.new(-0.55, -Num, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
end 
Num = Num - 0.1 
wait(0.01) 
end 
end 
Person.Character.Suit.Blade.Blade:remove() 
end 
end 
end 
if (PrevWeapon == 3) then 
Person.Character.Wand:remove() 
end 

if (Weapon == 3) then 
WandA = Instance.new("Part") 
WandA.Parent = Person.Character 
WandA.Name = "Wand" 
WandA.CanCollide = false 
WandA.Transparency = 1 
WandA.BrickColor = BrickColor.new("Brown") 
WandA.TopSurface = 0 
WandA.BottomSurface = 0 
WandA.formFactor = "Symmetric" 
WandA.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("CylinderMesh") 
Mesh.Parent = WandA 
Mesh.Scale = Vector3.new(0.1, 1.2, 0.1) 
Weld = Instance.new("Weld") 
Weld.Parent = WandA 
Weld.Part0 = Limbs[PreferredHand] 
Weld.Part1 = WandA 
if (PreferredHand == 1) then 
Weld.C0 = CFrame.new(0, -1.2, -0.9) * CFrame.fromEulerAnglesXYZ(math.pi/4, 0, 0) 
else 
Weld.C0 = CFrame.new(0, -1.2, -0.9) * CFrame.fromEulerAnglesXYZ(math.pi + (math.pi/4), 0, 0) 
end 
end 




end 



function GrabFunction(Part) 
Grabbed = Part.Parent 
PlatformStand = Part.Parent.Humanoid.PlatformStand 
Part.Parent.Humanoid.PlatformStand = true 
Part.Parent.Torso.DraggingV1 = true 
Val = math.pi/2 
if (PreferredHand == 2) then 
Val = -math.pi/2 
end 
Part.Parent.Torso.CFrame = Limbs[PreferredHand].CFrame * CFrame.new(0, -1.4, 0) * CFrame.fromEulerAnglesXYZ(math.pi/2, math.pi, -math.pi/2) 
while true do 
if (Hold == false) then 
break 
end 
if (Part.Parent.Parent == nil) then 
break 
end 
if (Part.Parent:findFirstChild("Torso") == nil) then 
break 
end 
if (Part.Parent:findFirstChild("Humanoid") == nil) then 
break 
end 
if (Part.Parent.Humanoid.Health < 0.001) then 
break 
end 
Part.Parent.Humanoid.PlatformStand = true 
Part.Parent.Torso.CFrame = Limbs[PreferredHand].CFrame * CFrame.new(0, -1.4, 0) * CFrame.fromEulerAnglesXYZ(math.pi/2, math.pi, math.pi/2) 
wait(0.0) 
end 
if (Part.Parent:findFirstChild("Humanoid") ~= nil) then 
Part.Parent.Humanoid.PlatformStand = PlatformStand 
end 
if (Part.Parent:findFirstChild("Torso") ~= nil) then 
Part.Parent.Torso.DraggingV1 = false 
end 
Debounce = false 
Grabbed = nil 
end 

function Grab(Hit) 
if (Grabbed == nil) then 
if (Hit ~= nil) then 
if (Hit.Parent ~= nil) then 
if (Hit.Parent:findFirstChild("Humanoid") ~= nil) then 
if (Hit.Parent.Humanoid.Health > 0) then 
if (Hit.Parent:findFirstChild("Torso") ~= nil) then 
GrabFunction(Hit) 
end 
end 
end 
end 
end 
end 
end 
function Del(Object) 
for I = 1, 10 do 
wait(0.001) 
Object.Mesh.Scale = Vector3.new(Object.Mesh.Scale.x - 0.1, Object.Mesh.Scale.y - 0.1, Object.Mesh.Scale.z - 0.1) 
end 
Object:remove() 
end 


---------------------------------------------------------------------------------------------------------------------------------------------Click 
function Click(mouse) 
Hold = true 
if (Tool == 1) then 
DisableLimb(PreferredHand) 
Val = -math.pi/2 
if (PreferredHand == 2) then 
Val = math.pi/2 
end 
while true do 
if (Hold == false) then 
break 
end 
Place0 = Person.Character.Torso.CFrame 
Place0 = Place0 + ((Place0 * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)).lookVector * 0.5) + (Place0 * CFrame.fromEulerAnglesXYZ(0, Val, 0)).lookVector 
Place1 = Place0 + ((Place0.p - mouse.Hit.p).unit * - 2) 
Place2 = CFrame.new((Place0.p + Place1.p)/2, Place0.p) * CFrame.fromEulerAnglesXYZ(-(math.pi/2), Val, 0) 
HitPos = Person.Character.Torso.Position 
CJ = CFrame.new(HitPos) 
C0 = Person.Character.Torso.CFrame:inverse() *CJ 
C1 = Place2:inverse() * CJ 
NewJoints[PreferredHand].C0 = C0 
NewJoints[PreferredHand].C1 = C1 
wait(0.0) 
end 
EnableLimb(PreferredHand) 
end 


if (Tool == 3) then 
B = Instance.new("BillboardGui") 
B.Parent = Person.PlayerGui 
B.Name = "Indicator" 
B.Adornee = nil 
B.Size = UDim2.new(0, 1, 0, 1) 
T = Instance.new("ImageLabel") 
T.Image = "http://www.roblox.com/asset/?id=24838770" 
T.BackgroundTransparency = 1 
T.Parent = B 
T.Size = UDim2.new(0, 200, 0, 200) 
T.Position = UDim2.new(0, -100, 0 , -100) 
DisableLimb(PreferredHand) 
Val = -math.pi/2 
if (PreferredHand == 2) then 
Val = math.pi/2 
end 
while true do 
if (Hold == false) then 
break 
end 
if (mouse.Target == nil) then 
B.Adornee = nil 
else 
if (mouse.Target.Parent == nil) then 
B.Adornee = nil 
else 
if (mouse.Target.Parent:findFirstChild("Humanoid") == nil) then 
B.Adornee = nil 
else 
if (mouse.Target.Parent:findFirstChild("Torso") == nil) then 
B.Adornee = nil 
else 
if (mouse.Target.Parent.Humanoid.Health < 0.01) then 
B.Adornee = nil 
elseif (mouse.Target.Parent.Humanoid.Health > 0) then 
if (mouse.Target.Parent.Torso ~= B.Adornee) then 
B.Adornee = mouse.Target.Parent.Torso 
end 
end 
end 
end 
end 
end 
Point = mouse.Hit 
if (B.Adornee ~= nil) then 
Point = B.Adornee.CFrame 
end 

Place0 = Person.Character.Torso.CFrame 
Place0 = Place0 + ((Place0 * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)).lookVector * 0.5) + (Place0 * CFrame.fromEulerAnglesXYZ(0, Val, 0)).lookVector 
Place1 = Place0 + ((Place0.p - Point.p).unit * - 2) 
Place2 = CFrame.new((Place0.p + Place1.p)/2, Place0.p) * CFrame.fromEulerAnglesXYZ(-math.pi/2, math.pi, 0) 
HitPos = Person.Character.Torso.Position 
CJ = CFrame.new(HitPos) 
C0 = Person.Character.Torso.CFrame:inverse() *CJ 
C1 = Place2:inverse() * CJ 
NewJoints[PreferredHand].C0 = C0 
NewJoints[PreferredHand].C1 = C1 
wait(0.0) 
end 
B:remove() 
EnableLimb(PreferredHand) 
end 



end 

function Release(mouse) 
Hold = false 
end 
---------------------------------------------------------------------------------------------------------------------------------------------Key 
function PressKey(key, mouse) 
if (Tool == 1) then 
if (key == "g") then 
if (Hold == true) then 
if (BladeOut == false) then 
if (Debounce == false) then 
Debounce = true 
Connection = Limbs[PreferredHand].Touched:connect(Grab) 
for I = 1, 3000 do 
if (Hold == false) then 
break 
end 
if (BladeOut == true) then 
break 
end 
wait(0.001) 
end 
if (Grabbed == nil) then 
Debounce = false 
end 
Connection:disconnect() 
end 
end 
end 
end 
if (key == "f") then 
if (Hold == true) then 
if (BladeOut == true) then 
if (Debounce == false) then 
Debounce = true 
Person.Character.Suit.Blade.Blade.BladeA.ArmWeld:remove() 
Person.Character.Suit.Blade.Blade.BladeA.CanCollide = true 
BV = Instance.new("BodyVelocity") 
BV.Parent = Person.Character.Suit.Blade.Blade.BladeA 
BV.maxForce = Vector3.new(1e+010, 1e+010, 1e+010) 
BV.velocity = Person.Character.Suit.Blade.Blade.BladeA.CFrame.lookVector * 60 
BG = Instance.new("BodyGyro") 
BG.Parent = Person.Character.Suit.Blade.Blade.BladeA 
BG.maxTorque = Vector3.new(4e+030, 4e+030, 4e+030) 
BG.cframe = Person.Character.Suit.Blade.Blade.BladeA.CFrame 
coroutine.resume(coroutine.create(TimeDelete), Person.Character.Suit.Blade.Blade, 8) 
Person.Character.Suit.Blade.Blade.Parent = game.Workspace 
wait(3) 
Mod = Instance.new("Model") 
Mod.Parent = Blade 
Mod.Name = "Blade" 
BladeA = Instance.new("Part") 
BladeA.Parent = Mod 
BladeA.Name = "BladeA" 
BladeA.CanCollide = false 
BladeA.Transparency = 1 
BladeA.TopSurface = 0 
BladeA.BottomSurface = 0 
BladeA.formFactor = "Symmetric" 
BladeA.Size = Vector3.new(1, 1, 1) 
BladeA:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = BladeA 
Weld.Name = "ArmWeld" 
Weld.Part0 = Limbs[PreferredHand] 
Weld.Part1 = BladeA 
if (PreferredHand == 1) then 
Weld.C0 = CFrame.new(0.55, -1.4, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
else 
Weld.C0 = CFrame.new(-0.55, -1.4, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
end 
BladeB = Instance.new("Part") 
BladeB.Parent = Mod 
BladeB.Name = "BladeB" 
BladeB.CanCollide = false 
BladeB.Reflectance = 0.1 
BladeB.BrickColor = BrickColor.new("Medium stone grey") 
BladeB.TopSurface = 0 
BladeB.BottomSurface = 0 
BladeB.formFactor = "Symmetric" 
BladeB.Size = Vector3.new(1, 1, 1) 
MeshB = Instance.new("SpecialMesh") 
MeshB.Parent = BladeB 
MeshB.MeshType = "Wedge" 
MeshB.Scale = Vector3.new(0.05, 1, 0.1) 
BladeB:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = BladeB 
Weld.Part0 = BladeA 
Weld.Part1 = BladeB 
Weld.C0 = CFrame.new(0, -0.05, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
BladeC = Instance.new("Part") 
BladeC.Parent = Mod 
BladeC.Name = "BladeC" 
BladeC.CanCollide = false 
BladeC.Reflectance = 0.1 
BladeC.BrickColor = BrickColor.new("Medium stone grey") 
BladeC.TopSurface = 0 
BladeC.BottomSurface = 0 
BladeC.formFactor = "Symmetric" 
BladeC.Size = Vector3.new(1, 1, 1) 
MeshC = Instance.new("SpecialMesh") 
MeshC.Parent = BladeC 
MeshC.MeshType = "Wedge" 
MeshC.Scale = Vector3.new(0.05, 1, 0.1) 
BladeC:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = BladeC 
Weld.Part0 = BladeA 
Weld.Part1 = BladeC 
Weld.C0 = CFrame.new(0, 0.05, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, math.pi, 0) 
BladeA.Touched:connect(function(Hit) Touch(Hit, BladeA) end) 
Num = 1 
for I = 1, 5 do 
if (PreferredHand == 1) then 
BladeA.ArmWeld.C0 = CFrame.new(0.55, -Num, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
else 
BladeA.ArmWeld.C0 = CFrame.new(-0.55, -Num, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
end 
Num = Num + 0.1 
wait(0.01) 
end 
Debounce = false 
end 
end 
end 
end 
if (key == "r") then 
if (Debounce == false) then 
if (BladeOut == false) then 
BladeOut = true 
Mod = Instance.new("Model") 
Mod.Parent = Blade 
Mod.Name = "Blade" 
BladeA = Instance.new("Part") 
BladeA.Parent = Mod 
BladeA.Name = "BladeA" 
BladeA.CanCollide = false 
BladeA.Transparency = 1 
BladeA.TopSurface = 0 
BladeA.BottomSurface = 0 
BladeA.formFactor = "Symmetric" 
BladeA.Size = Vector3.new(1, 1, 1) 
BladeA:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = BladeA 
Weld.Name = "ArmWeld" 
Weld.Part0 = Limbs[PreferredHand] 
Weld.Part1 = BladeA 
if (PreferredHand == 1) then 
Weld.C0 = CFrame.new(0.55, -1.4, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
else 
Weld.C0 = CFrame.new(-0.55, -1.4, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
end 
BladeB = Instance.new("Part") 
BladeB.Parent = Mod 
BladeB.Name = "BladeB" 
BladeB.CanCollide = false 
BladeB.Reflectance = 0.1 
BladeB.BrickColor = BrickColor.new("Medium stone grey") 
BladeB.TopSurface = 0 
BladeB.BottomSurface = 0 
BladeB.formFactor = "Symmetric" 
BladeB.Size = Vector3.new(1, 1, 1) 
MeshB = Instance.new("SpecialMesh") 
MeshB.Parent = BladeB 
MeshB.MeshType = "Wedge" 
MeshB.Scale = Vector3.new(0.05, 1, 0.1) 
BladeB:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = BladeB 
Weld.Part0 = BladeA 
Weld.Part1 = BladeB 
Weld.C0 = CFrame.new(0, -0.05, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
BladeC = Instance.new("Part") 
BladeC.Parent = Mod 
BladeC.Name = "BladeC" 
BladeC.CanCollide = false 
BladeC.Reflectance = 0.1 
BladeC.BrickColor = BrickColor.new("Medium stone grey") 
BladeC.TopSurface = 0 
BladeC.BottomSurface = 0 
BladeC.formFactor = "Symmetric" 
BladeC.Size = Vector3.new(1, 1, 1) 
MeshC = Instance.new("SpecialMesh") 
MeshC.Parent = BladeC 
MeshC.MeshType = "Wedge" 
MeshC.Scale = Vector3.new(0.05, 1, 0.1) 
BladeC:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = BladeC 
Weld.Part0 = BladeA 
Weld.Part1 = BladeC 
Weld.C0 = CFrame.new(0, 0.05, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, math.pi, 0) 
BladeA.Touched:connect(function(Hit) Touch(Hit, BladeA) end) 
Num = 1 
for I = 1, 5 do 
if (PreferredHand == 1) then 
BladeA.ArmWeld.C0 = CFrame.new(0.55, -Num, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
else 
BladeA.ArmWeld.C0 = CFrame.new(-0.55, -Num, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
end 
Num = Num + 0.1 
wait(0.01) 
end 
else 
BladeOut = false 

if (Person.Character.Suit.Blade:findFirstChild("Blade") ~= nil) then 
if (Person.Character.Suit.Blade.Blade:findFirstChild("BladeA") ~= nil) then 
Num = 1.4 
for I = 1, 5 do 
if (PreferredHand == 1) then 
Person.Character.Suit.Blade.Blade.BladeA.ArmWeld.C0 = CFrame.new(0.55, -Num, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
else 
Person.Character.Suit.Blade.Blade.BladeA.ArmWeld.C0 = CFrame.new(-0.55, -Num, 0) * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0) 
end 
Num = Num - 0.1 
wait(0.01) 
end 
end 
Person.Character.Suit.Blade.Blade:remove() 
end 


end 
end 
end 
end 
if (Tool == 3) then 
if (key == "f") then 
if (Debounce == false) then 
if (Hold == true) then 
if (Person.PlayerGui:findFirstChild("Indicator") ~= nil) then 
if (Person.PlayerGui.Indicator.Adornee ~= nil) then 
Player = Person.PlayerGui.Indicator.Adornee.Parent 
if (Mode == 1) then 
Orb = Instance.new("Part") 
Orb.Parent = Person.Character 
Orb.Name = "Orb" 
Orb.CanCollide = false 
Orb.BrickColor = BrickColor.new("Black") 
Orb.Transparency = 0.5 
Orb.TopSurface = 0 
Orb.BottomSurface = 0 
Orb.formFactor = "Symmetric" 
Orb.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("SpecialMesh") 
Mesh.Parent = Orb 
Mesh.MeshType = "Sphere" 
Mesh.Scale = Vector3.new(1, 1, 1) 
Orb:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Orb 
Weld.Part0 = Person.Character.Wand 
Weld.Part1 = Orb 
Weld.C0 = CFrame.new(0, -0.6, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Player:BreakJoints() 
Del(Orb) 
end 
if (Mode == 2) then 
if (game.Players:GetPlayerFromCharacter(Player) ~= nil) then 
Orb = Instance.new("Part") 
Orb.Parent = Person.Character 
Orb.Name = "Orb" 
Orb.CanCollide = false 
Orb.BrickColor = BrickColor.new("Bright violet") 
Orb.Transparency = 0.5 
Orb.TopSurface = 0 
Orb.BottomSurface = 0 
Orb.formFactor = "Symmetric" 
Orb.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("SpecialMesh") 
Mesh.Parent = Orb 
Mesh.MeshType = "Sphere" 
Mesh.Scale = Vector3.new(1, 1, 1) 
Orb:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Orb 
Weld.Part0 = Person.Character.Wand 
Weld.Part1 = Orb 
Weld.C0 = CFrame.new(0, -0.6, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
game.Players:GetPlayerFromCharacter(Player):remove() 
Del(Orb) 
end 
end 
if (Mode == 3) then 
Orb = Instance.new("Part") 
Orb.Parent = Person.Character 
Orb.Name = "Orb" 
Orb.CanCollide = false 
Orb.BrickColor = BrickColor.new("Teal") 
Orb.Transparency = 0.5 
Orb.TopSurface = 0 
Orb.BottomSurface = 0 
Orb.formFactor = "Symmetric" 
Orb.Size = Vector3.new(1, 1, 1) 
Mesh = Instance.new("SpecialMesh") 
Mesh.Parent = Orb 
Mesh.MeshType = "Sphere" 
Mesh.Scale = Vector3.new(1, 1, 1) 
Orb:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Orb 
Weld.Part0 = Person.Character.Wand 
Weld.Part1 = Orb 
Weld.C0 = CFrame.new(0, 0.6, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Player.Humanoid.PlatformStand = not Player.Humanoid.PlatformStand 
Del(Orb) 
end 


else 

end 
if (Mode == 4) then 
Orb = Instance.new("Part") 
Orb.Parent = Person.Character 
Orb.Name = "Orb" 
Orb.CanCollide = false 
Orb.BrickColor = BrickColor.new("Bright orange") 
Orb.Transparency = 0.5 
Orb.TopSurface = 0 
Orb.BottomSurface = 0 
Orb.formFactor = "Symmetric" 
Orb.Size = Vector3.new(-1, -1, -1) 
Mesh = Instance.new("SpecialMesh") 
Mesh.Parent = Orb 
Mesh.MeshType = "Sphere" 
Mesh.Scale = Vector3.new(1, 1, 1) 
Orb:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Orb 
Weld.Part0 = Person.Character.Wand 
Weld.Part1 = Orb 
Weld.C0 = CFrame.new(0, -0.6, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Ex = Instance.new("Explosion") 
Ex.Parent = game.Workspace 
Ex.BlastRadius = 5 
Ex.Position = mouse.Hit.p 
Ex.BlastPressure = 1000 
Del(Orb) 
end 

end 
end 
end 
end 

end 


if (key == "e") then 
Mode = Mode + 1 
Table = ModeList[Tool] 
if (Mode > #Table) then 
Mode = 1 
end 
Person.PlayerGui.MahGoey.Frame.Mode.Text = Table[Mode] 
end 
if (key == "q") then 
Mode = Mode - 1 
Table = ModeList[Tool] 
if (Mode < 1) then 
Mode = #Table 
end 
Person.PlayerGui.MahGoey.Frame.Mode.Text = Table[Mode] 
end 
if (key == "v") then 
if (Debounce == false) then 
Tool = Tool + 1 
if (Tool > #Tools) then 
Tool = 1 
end 
Person.PlayerGui.MahGoey.Frame.Tool.Text = Tools[Tool] 
Mode = 1 
Table = ModeList[Tool] 
Person.PlayerGui.MahGoey.Frame.Mode.Text = Table[Mode] 
ChangeWeapon(Tool, Tool - 1) 
end 
end 
if (key == "c") then 
if (Debounce == false) then 
Tool = Tool - 1 
if (Tool < 1) then 
Tool = #Tools 
end 
Person.PlayerGui.MahGoey.Frame.Tool.Text = Tools[Tool] 
Mode = 1 
Table = ModeList[Tool] 
Person.PlayerGui.MahGoey.Frame.Mode.Text = Table[Mode] 
ChangeWeapon(Tool, Tool + 1) 
end 
end 
if (key == "p") then 
Person.Character:BreakJoints() 
end 
if (key == "0") then 
Person.Character.Humanoid.WalkSpeed = 50 
end 
end 

function UpKey(key, mouse) 
if (key == "0") then 
Person.Character.Humanoid.WalkSpeed = 16 
end 
end 
---------------------------------------------------------------------------------------------------------------------------------------------Select 
function Select(mouse) 
mouse.Button1Down:connect(function() Click(mouse) end) 
mouse.Button1Up:connect(function() Release(mouse) end) 
mouse.KeyDown:connect(function(key) PressKey(key, mouse) end) 
mouse.KeyUp:connect(function(key) UpKey(key, mouse) end) 
end 

function Deselect(mouse) 
Hold = false 
end 

Bin.Selected:connect(Select) 
Bin.Deselected:connect(Deselect)
--lego

end}

 
return module
