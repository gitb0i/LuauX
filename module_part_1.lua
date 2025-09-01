 local module = {}

module[1] = {"5tr0b3 Gun",function()
me = game.Players.LocalPlayer
walkspeed = 35
walkspeed2 = 16
WaitTime = 0.01
WaitTime2 = 0.41
WaitTime3 = 3
god = false
fakeff = true -- don't enable if god is enabled. it won't break, they both basically god you, but fakeff has a cooler effect.

h = Instance.new("HopperBin")
h.Parent = me.Backpack
h.Name = "5tr0b3 v3"

sp = h

rightarm = me.Character["Right Arm"]
leftarm = me.Character["Left Arm"]

hold = false
using = false
holdkey = false

right = Instance.new("Weld")
right.Parent = me.Character.Torso
right.Part0 = nil
right.Part1 = nil
right.C1 = CFrame.fromEulerAnglesXYZ(-1.57,-0.4,0) * CFrame.new(-1,-0.5,0.1)

left = Instance.new("Weld")
left.Parent = me.Character.Torso
left.Part0 = nil
left.Part1 = nil
left.C1 = CFrame.fromEulerAnglesXYZ(-1.4,0.5,0) * CFrame.new(0.55,-0.4,1.3)

bulletcolors = {"Hot pink", "Really red", "Really blue", "New Yeller", "Lime green", "Neon orange"}

gun = Instance.new("Model")
gun.Parent = game.Lighting
gun.Name = "Gun"

handle = Instance.new("Part")
handle.Parent = gun
handle.formFactor = 0
handle.Size = Vector3.new(1,1,1)
handle.BrickColor = BrickColor.random()
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.5,0.75,1.6)

handle2 = Instance.new("Part")
handle2.Parent = gun
handle2.formFactor = 0
handle2.Size = Vector3.new(1,1,1)
handle2.BrickColor = BrickColor.random()
mesh2 = mesh:clone()
mesh2.Parent = handle2
mesh2.Scale = Vector3.new(0.6,3.6,0.75)

handle3 = Instance.new("Part")
handle3.Parent = gun
handle3.formFactor = 0
handle3.Size = Vector3.new(1,1,1)
handle3.BrickColor = BrickColor.random()
mesh3 = mesh:clone()
mesh3.Parent = handle3
mesh3.Scale = Vector3.new(.45,.11,2)

handle4 = Instance.new("Part")
handle4.Parent = gun
handle4.formFactor = 0
handle4.Size = Vector3.new(.1,.1,.1)
handle4.BrickColor = BrickColor.random()
mesh4 = Instance.new("CylinderMesh")
mesh4.Parent = handle4
mesh4.Scale = Vector3.new(.4,4,.3)
hold = false

if god == true then
me.Character.Humanoid.MaxHealth = math.huge
end
if fakeff == true then
select=Instance.new("SelectionBox",me.Character.Head)
select1=Instance.new("SelectionBox",me.Character.Torso)
select2=Instance.new("SelectionBox",me.Character["Right Arm"])
select3=Instance.new("SelectionBox",me.Character["Left Arm"])
select4=Instance.new("SelectionBox",me.Character["Left Leg"])
select5=Instance.new("SelectionBox",me.Character["Right Leg"])
select.Adornee=me.Character.Head
select1.Adornee=me.Character.Torso
select2.Adornee=me.Character["Right Arm"]
select3.Adornee=me.Character["Left Arm"]
select4.Adornee=me.Character["Left Leg"]
select5.Adornee=me.Character["Right Leg"]
me.Character.Humanoid.MaxHealth=math.huge
end

function selected(mouse, key)
right.Part0 = right.Parent
right.Part1 = rightarm
left.Part0 = left.Parent
left.Part1 = leftarm
left.C1 = CFrame.fromEulerAnglesXYZ(-1.4,0.5,0) * CFrame.new(0.55,-0.4,1.3)
right.C1 = CFrame.fromEulerAnglesXYZ(-1.57,-0.4,0) * CFrame.new(-1,-0.5,0.1)
left.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
right.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
gun.Parent = me.Character
gunweld1 = Instance.new("Weld")
gunweld1.Parent = rightarm
gunweld1.Part0 = gunweld1.Parent
gunweld1.Part1 = handle
gunweld1.C1 = CFrame.fromEulerAnglesXYZ(0.4,0,0) * CFrame.new(0,1,0)
gunweld2 = Instance.new("Weld")
gunweld2.Parent = handle
gunweld2.Part0 = gunweld2.Parent
gunweld2.Part1 = handle2
gunweld2.C1 = CFrame.fromEulerAnglesXYZ(-0.4,0,0) * CFrame.new(0,1,1.2)
gunweld3 = Instance.new("Weld")
gunweld3.Parent = handle2
gunweld3.Part0 = gunweld3.Parent
gunweld3.Part1 = handle3
gunweld3.C1 = CFrame.fromEulerAnglesXYZ(-0.3,0,0) * CFrame.new(0,0.3,-0.9)
gunweld4 = Instance.new("Weld")
gunweld4.Parent = handle2
gunweld4.Part0 = gunweld3.Parent
gunweld4.Part1 = handle4
gunweld4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.751,0)
mouse.Button1Down:connect(function()
hold = true
while hold == true do
wait(0.04)
local color = math.random(1, #bulletcolors)
local wkspd = walkspeed
local pos = mouse.Hit.p + Vector3.new(math.random(-2,2),0,math.random(-2,2))
local BamOne = Instance.new("Sound",handle4)
BamOne.Pitch,BamOne.Volume,BamOne.SoundId = 1.4,100,"rbxassetid://2920959"
local BamTwo = Instance.new("Sound",handle4)
BamTwo.Pitch,BamTwo.Volume,BamTwo.SoundId = 1.4,100,"rbxassetid://2920959"
local bullet = Instance.new("Part")
bullet.Parent = workspace
bullet.formFactor = 0
bullet.Size = Vector3.new(1,1,1)
bullet.BrickColor = BrickColor.new(bulletcolors[color])
bullet.CanCollide = false
bullet.Anchored = true
bullet.CFrame = CFrame.new((handle4.Position + pos)/2, pos)
local distance = (handle4.Position - pos).magnitude
local bulletmesh = Instance.new("SpecialMesh")
bulletmesh.Parent = bullet
bulletmesh.MeshType = "Brick"
bulletmesh.Scale = Vector3.new(0.2,0.2,distance)
if mouse.Target ~= nil then
local hu = mouse.Target.Parent:findFirstChild("Humanoid")
if hu ~= nil then
hu.Health = hu.Health - math.huge
end
end
coroutine.resume(coroutine.create(function()
left.C0 = left.C0 * CFrame.fromEulerAnglesXYZ(0.12,0,0)
right.C0 = right.C0 * CFrame.fromEulerAnglesXYZ(0.12,0,0)
wait()
left.C0 = left.C0 * CFrame.fromEulerAnglesXYZ(-0.12,0,0)
right.C0 = right.C0 * CFrame.fromEulerAnglesXYZ(-0.12,0,0)
wait(0.03)
bullet:remove()
end))
end
end)
mouse.Button1Up:connect(function()
hold = false
end)
local Gui = Instance.new("ScreenGui",me.PlayerGui)
Gui.Name = "Ammo"
local Frame = Instance.new("Frame",Gui)
Frame.Name = "MainFrame"
Frame.Size = UDim2.new(.15,0,.1,0)
Frame.Position = UDim2.new(0.4,0,0.4,0)
Frame.BackgroundTransparency = 0.99
Frame.BackgroundColor = BrickColor.new("Really black")
Frame.Active = true
local Exit = Instance.new("TextButton",Gui)
Exit.Name = "Exit"
Exit.Size = UDim2.new(.15,0,.1,0)
Exit.Position = UDim2.new(0.4,0,0.4,0)
Exit.BackgroundTransparency = 1
Exit.Text = ""
Exit.BackgroundColor = BrickColor.new("Really black")
Exit.Active = true
Exit.Draggable = false
Exit.MouseButton1Down:connect(function()
me.PlayerGui["Ammo"]:remove()
end)
local msg1 = "Made by colin"
local msg2 = "5tr0b3 v3"
local msg3 = "Click to exit"
local Cred = Instance.new("TextLabel",Frame)
Cred.Name = "Credz"
Cred.Font = "ArialBold"
Cred.FontSize = "Size12"
Cred.Position = UDim2.new(0.5,0,0.05,0)
for i = 1,#msg1 do
Cred.Text = (string.sub(msg1, 1,i))
wait(WaitTime)
end
Cred.TextColor3 = BrickColor.new("Hot pink").Color
wait(WaitTime2)
local Dis = Instance.new("TextLabel",Frame)
Dis.Name = "Real Numbers"
Dis.Font = "ArialBold"
Dis.FontSize = "Size18"
Dis.Position = UDim2.new(0.5,0,0.5,0)
Dis.TextColor3 = BrickColor.new("Hot pink").Color
for i = 1,#msg2 do
Dis.Text = (string.sub(msg2, 1,i))
wait(WaitTime)
end
me.Character.Humanoid.WalkSpeed = walkspeed
wait(WaitTime3)
for i = 1,#msg2 do
Dis.Text = string.sub(msg2, i,#msg2)
wait(WiatTime)
end
for i = 1,#msg3 do
Dis.Text = (string.sub(msg3, 1,i))
wait(WaitTime)
end	
end

function deselect()
left.C0 = CFrame.new(0,0,0)
right.C0 = CFrame.new(0,0,0)
me.Character:makeJoints()
wait()
right.Part0 = nil
right.Part1 = nil
left.Part0 = nil
left.Part1 = nil
gun.Parent = game.Lighting
me.Character:makeJoints()
me.PlayerGui["Ammo"]:Remove()
me.Character.Humanoid.WalkSpeed = walkspeed2
end

sp.Selected:connect(selected)
sp.Deselected:connect(deselect)
end}
module[2] = {"A.X.R Barricade",function()
Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
mana=0

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Heartbeat:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Heartbeat:wait(0)
    end
    end
	    end
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end
	
	
local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}

local Color = BrickColor.new("Dark grey")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(Color)
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new(Color)
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
	
	
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
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
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
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
 
function QuaternionSlerp(a, b, t) 
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

--Example: Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)


function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5,BrickColor.new("New Yeller"))
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
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
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=Color
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
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
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

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Handle",Vector3.new(0.392933369, 0.818870544, 0.484876573))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.110725403, -0.0610198975, -0.923483372, -0.999949038, 0.0097014308, 0.00306771323, -0.00306772627, 1.44194482e-005, -1.00000656, -0.00970112905, -0.999944687, 1.46424882e-005))
Barrel=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Barrel",Vector3.new(0.392933369, 0.200000003, 0.694699943))
Barrelweld=weld(m,handle,Barrel,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00201416016, 4.55051184, -0.872203827, 1.00000906, -0.00011797715, -0.000356545235, -0.000356654549, -3.71675924e-007, -1.00000048, 0.000117982505, 1.00000644, -4.26134648e-007))
mesh("CylinderMesh",Barrel,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.515725374, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.20137848, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.238044739, -1.35027695, -1.75392091, 0.999998689, -0.000530478545, -0.00165459863, 0.000530478312, 0.99999994, -7.74211003e-007, 0.00165460317, -1.15545845e-007, 0.999998569))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.491166711, 1, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.589399755))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.238273621, -0.955043793, -0.820649922, 0.999998808, -0.000502859708, -0.00157310732, 0.000502860174, 1, -7.29220119e-007, 0.00157311361, -1.42008503e-007, 0.999998629))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.491166711, 0.982334137, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.392933398, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0055770874, 0.311283112, 0.281532526, -0.999812126, 0.000483331503, -0.0194055643, 0.000482749194, 1.00000691, 3.84911909e-005, 0.0194055904, 2.91412107e-005, -0.999808013))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.982334137, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.20137848, 0.589399815))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.159729004, -1.35035706, -0.231489182, 0.999998689, -0.000525929499, -0.00163679547, 0.000525921816, 0.99999994, -4.69290353e-006, 0.00163680338, 3.88298758e-006, 0.999998569))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.491166711, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.589399993, 0.392933667, 0.785866439))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.011100769, -0.9557724, 1.14765012, 0.999999285, -0.000384722836, -0.00121377606, 0.000384721672, 0.999999881, -5.19317837e-007, 0.00121378119, 5.20703907e-008, 0.999999046))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.589399993, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00728607178, -1.15148926, 0.0632092953, 0.999998748, -0.000521910144, -0.00163011893, 0.000521911541, 0.99999994, -7.38114977e-007, 0.00163012045, -1.60842319e-007, 0.999998689))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.982334018, 0.982333243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.20137848, 1.17879963))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.144699097, -1.35028458, -1.11541545, 0.999998689, -0.000529585173, -0.00165206543, 0.000529584009, 0.99999994, -7.8289122e-007, 0.00165206904, -1.23320206e-007, 0.999998569))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.491166711, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.392933369, 0.200000003, 0.589399874))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00299835205, 4.4982748, -0.6599617, 1.00000095, -0.000189703889, -0.000583825924, -0.000583841, -2.80280801e-007, -0.99999994, 0.000189705053, 1.00000072, -3.84679879e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.392933369, 0.200000003, 0.289788306))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00370025635, 4.49983168, -0.657417297, 1.00000119, -4.6168454e-005, -0.000129014908, -0.000129027016, -3.45355147e-007, -1.00000012, 4.61703166e-005, 1.00000083, -3.91362846e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.515725374, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.392933369, 0.200000003, 1.6699661))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00726318359, -0.513141632, -0.47625798, 0.999999642, -0.000474769622, -0.00148425868, 0.000474745408, 1.00000954, -2.89473974e-008, 0.00148409116, -8.16216925e-008, 0.999991953))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.247642517, 0.562633514, 2.53756094, 0.999999225, -0.00057541742, -0.00180923659, -0.000575409504, -1.00000072, 6.17981095e-006, -0.00180925988, -5.09748679e-006, -0.999998212))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.491166711, 0.982334256, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.589400113, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00714874268, -1.20210648, -2.03264451, -0.999999285, 0.000380247133, 0.00120855146, 0.000380247133, 1, -4.88218575e-007, -0.00120855437, -1.10539986e-007, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 0.982333183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.599223316, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00782775879, -0.808174133, -1.06534135, 0.999998808, -0.00050339778, -0.00157711946, 0.00050339126, 0.999999881, -4.79227674e-006, 0.0015771254, 3.95323514e-006, 0.999998748))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.687633455, 0.200000003, 0.373286575))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.572486103, -0.368530273, -0.00534820557, -0.000796158216, 2.63861693e-007, 0.999999523, -0.000247276155, 1, -6.00727617e-007, -0.999999702, -0.000247277319, -0.000796161999))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.550106704, 0.500990391, 2.32812953))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.246368408, 0.562351227, -3.51985264, -0.999999046, -0.000785131007, 0.0017751347, 0.000785123091, -1.00000048, -4.76147943e-006, 0.00177515694, -3.27731323e-006, 0.999998271))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.491166711, 0.982334256, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.392933369, 0.491167039, 1.17879963))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0116119385, -0.808311462, 1.14752233, 0.999999285, -0.000389426015, -0.0012220433, 0.000389426481, 0.999999881, -5.33280399e-007, 0.00122204656, 1.07229425e-007, 0.999999106))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.392933369, 0.200000003, 0.39293322))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00182342529, -0.059627533, -0.237030029, 1.00000024, -2.19675712e-006, -3.47236823e-006, -9.0431422e-007, 0.707098067, -0.707115471, 4.01004218e-006, 0.707115591, 0.707097828))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.982334256, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.392933369, 0.785867333, 0.491166592))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00256347656, -0.855522156, -4.20529366, 1.00001729, -0.000156920636, -0.00048751838, 0.000156930648, 1.00001228, -3.12431439e-007, 0.00048772787, 1.96554538e-007, 1.00000083))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.392933369, 0.200000003, 0.491166592))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00169372559, 3.91187406, -1.10260391, 1.00000012, -0.000409077853, -0.00127772312, -0.0012777393, -8.43629095e-008, -0.999999046, 0.000409078551, 1.00000048, -5.06528522e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.392933398, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00727844238, -1.34797287, -0.427247822, 0.999998808, -0.000508218072, -0.00158813142, 0.000508218538, 1, -7.66642188e-007, 0.00158813782, -1.10825567e-007, 0.999998629))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.982334256, 0.982333124))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.57957679, 0.200000003, 0.589399815))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00736999512, -1.34790421, -0.231470406, 0.999998748, -0.00052127894, -0.00162254635, 0.000521271024, 0.99999994, -4.73802538e-006, 0.00162255182, 4.00318095e-006, 0.999998748))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.982334137, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.599223375, 0.200000003, 1.66996634))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00703430176, -0.611476898, -0.476810575, 0.999998808, -0.000503064366, -0.00157174852, 0.000503064599, 0.99999994, -7.42138582e-007, 0.00157175376, -8.65802576e-008, 0.99999851))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.392933369, 0.618870556, 0.284876555))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.39233398e-005, 0.0999946594, -0.0900287628, 1.00000012, 1.02445483e-008, 9.82887443e-008, -1.35041773e-008, 1.00000095, -3.47667992e-007, -1.15132067e-007, 3.51504241e-007, 0.999999344))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.392933369, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00169372559, -0.365879059, -3.61626029, 1.00000846, -0.000408411259, -0.00128341629, 0.000408425927, 1.00000811, -8.85296686e-007, 0.00128353445, 2.51153324e-007, 0.999999046))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.982334375, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.57173347, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.88058758, -1.30028915, 0.13936615, 0.00120653899, -0.000345678738, 0.999999046, 7.08410516e-005, 1.00000381, 0.000345571199, -1.0000037, 7.04175327e-005, 0.00120649324))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.392933369, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00749206543, -1.40185547, -1.75392365, 0.999998629, -0.000532266451, -0.00165990624, 0.000532267848, 0.99999994, -8.01555871e-007, 0.00165991078, -8.43610906e-008, 0.999998569))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 1.57173264))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00902557373, -1.29845047, -2.88025308, 1.00000346, -0.000419300282, -0.00131881284, 0.000419305637, 1.00000381, -4.81770257e-007, 0.00131888292, 4.66625352e-008, 0.999999106))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.982333481, 0.491167068, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.392933369, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000205993652, 0.366855621, 0.170970321, -1, 0.00047881878, 0.000105538013, -0.000478820177, -0.99999994, -8.0675818e-008, 0.000105541636, -2.63140464e-007, 0.999999762))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.982334256, 0.982333362))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.43803835, 0.36598587, 0.247940063, -0.00170557899, -3.12538941e-006, -0.99999845, -0.00054662372, -1.00000072, 4.11949804e-006, -0.999999404, 0.000546629308, 0.00170555944))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.491166711, 0.982334256, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.20137848, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.25302887, -1.35042953, -1.75389695, 0.999998629, -0.000535132596, -0.0016691644, 0.000535133295, 0.99999994, -7.73754437e-007, 0.00166917022, -1.60262061e-007, 0.99999851))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.491166711, 1, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.294699669))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00782775879, -1.29913712, -1.94930029, 0.999998808, -0.000498764217, -0.00156336208, 0.000498763984, 1, -7.68961399e-007, 0.00156336988, -8.24948074e-008, 0.99999851))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.982333481, 0.491167068, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.427499413, -0.154556274, -1.44622421, -0.00155671558, -1.71825232e-005, -0.999998629, -0.999998808, 0.00048045814, 0.00155670336, 0.000480430666, 0.99999994, -1.8009463e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.982333422, 0.491167068, 0.982333124))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.589399993, 0.200000003, 0.491166413))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00770568848, -1.00417328, -1.55760884, 0.999998212, -0.000521541806, -0.00163140136, 0.000521542272, 0.999999642, -7.56599547e-007, 0.00163134676, -6.76809577e-008, 0.999998391))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.20137848, 0.589399815))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.144760132, -1.35034943, -0.231461525, 0.999998689, -0.000525572803, -0.00163578405, 0.000525564188, 0.99999994, -4.69637052e-006, 0.00163578917, 3.90967762e-006, 0.999998689))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.491166711, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.392933369, 0.785867333, 0.785866201))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00762939453, -0.857028961, -1.70364225, 0.999998987, -0.000455782516, -0.00142784044, 0.000455782516, 1, -5.89889169e-007, 0.00142784708, -5.11990947e-008, 0.999998748))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.392933398, 0.392933756, 0.884099782))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00498962402, 0.366672516, -1.29661703, 0.999999344, -0.000374818919, -0.00120143802, -0.000374818454, -0.999999881, 4.51476808e-007, -0.00120144174, -1.33426511e-007, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.589400113, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0123214722, -0.271297455, -2.03261518, 0.999999225, -0.000379103702, -0.00120463059, -0.000379103702, -0.999999881, 4.99312591e-007, -0.00120463443, -9.85164661e-008, -0.999999225))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 0.982333183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.57173336, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.88062477, -1.29684067, 0.156394958, -0.00129424105, -0.000346052198, -0.999999106, 0.000411159359, 1.00000381, -0.000346582063, 1.00000358, -0.000411601737, -0.0012940286))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.244865417, 0.562644958, -3.51861572, -0.999999046, -0.000777990092, 0.00182061666, 0.000777981477, -1.00000048, -4.78605762e-006, 0.00182063796, -3.39111648e-006, 0.999998152))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.491166711, 0.982334256, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.594311655, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00568389893, -0.906406403, -1.26190269, 0.999998808, -0.000490221428, -0.00153360551, 0.000490214676, 0.99999994, -4.78599577e-006, 0.00153361261, 3.96875657e-006, 0.999998689))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.392933398, 0.58940053, 0.491166532))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00505828857, 0.268463135, -1.49308562, 0.999999285, -0.000374148833, -0.0012002599, -0.000374148367, -0.999999881, 4.57977876e-007, -0.00120026362, -1.29813998e-007, -0.999999225))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.589399993, 0.392933697, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000648498535, -0.660327911, -3.61724615, 0.999999642, -0.000490924576, -0.00154497323, 0.000490925042, 1.00000072, -1.03872662e-006, 0.00154499628, 3.08175004e-007, 0.99999845))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.589400113, 0.294700235, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0220489502, 0.906661987, 1.58002448, -0.999787569, 0.000377144665, -0.0206036828, -0.000376469921, -0.999999821, -3.66254753e-005, -0.0206036922, -2.89277486e-005, 0.99978745))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.589399993, 0.392933667, 0.491166592))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00769042969, 0.758586884, 1.55762434, 0.999998748, -0.000521539012, -0.00163144886, -0.000521538313, -0.99999994, 7.41734766e-007, -0.00163145119, 9.71595e-008, -0.999998629))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.589399993, 0.200000003, 1.76819956))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00733184814, -1.15148544, -0.918684363, 0.999998808, -0.000508943805, -0.00159034051, 0.000508943107, 1, -7.59613613e-007, 0.00159034505, -1.04051651e-007, 0.999998629))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.982334137, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.392933398, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00741577148, -0.0752487183, -1.83591151, 0.999999285, -0.000375156524, -0.00120203407, -0.000375156524, -0.999999881, 5.37609594e-007, -0.00120203872, -1.35260052e-007, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167486, 0.982332766))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.392933369, 0.392933697, 1.57173288))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00824737549, -0.660514832, -2.88165903, 1, -0.000430386281, -0.00135130191, 0.000430388376, 1.0000006, -5.5311466e-007, 0.0013513203, 2.69610609e-008, 0.999998927))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.392933369, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00368499756, -0.365890503, -2.43749642, 1.00000477, -0.000397619558, -0.00124920893, 0.000397630269, 1.00000477, -8.70868462e-007, 0.00124927447, 2.80164386e-007, 0.999999166))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.982334375, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.39784503, 0.200000003, 0.39293322))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000640869141, -0.2069664, -0.237033844, 1.00000083, -2.20024958e-006, -3.47143668e-006, -9.09669325e-007, 0.707098603, -0.707114756, 4.00468707e-006, 0.707116187, 0.707097232))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.392933369, 0.294700235, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00506591797, -0.0831336975, -0.674642563, 0.999986053, -0.00452287868, 0.00275901053, 0.00529642962, 0.866026342, -0.499970376, -0.000128068496, 0.499977827, 0.866038024))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.245583281))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.427508831, 0.140220642, -1.44622421, -0.00155671558, -1.71825232e-005, -0.999998629, -0.999998808, 0.00048045814, 0.00155670336, 0.000480430666, 0.99999994, -1.8009463e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.982333422, 0.491167068, 0.982333124))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.589399993, 0.392933697, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00257873535, -0.660266876, -2.43843269, 0.999999702, -0.000487331767, -0.00153360644, 0.000487332698, 1.0000006, -9.84169674e-007, 0.00153362576, 2.58392902e-007, 0.999998569))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.589399993, 0.200000003, 0.392933279))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00773620605, -0.954940796, 0.161763072, 0.99999851, -0.000541006448, -0.00169251533, 0.000541006448, 1.00000012, -7.61476258e-007, 0.0016925215, -1.48238541e-007, 0.999998271))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.982334077, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.61650896, 0.366130829, 0.246315002, -0.001489455, -3.1925465e-006, -0.999998808, -0.000478490721, -1.00000644, 3.9757324e-006, -1.0000062, 0.000478483969, 0.00148936326))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.491166711, 0.982334256, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.589399993, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00733947754, -0.955032349, -1.21347761, 0.999998808, -0.0005010725, -0.00156744593, 0.000501072034, 1, -7.31664841e-007, 0.00156745303, -1.59376214e-007, 0.999998569))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.982334137, 0.98233223))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.49116677, 0.200000003, 0.589399755))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0564346313, -0.955032349, -0.820625186, 0.999998808, -0.000502503011, -0.0015719767, 0.000502502546, 1, -7.32690751e-007, 0.00157198112, -1.45482772e-007, 0.999998629))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.982334137, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.589399993, 0.200000003, 1.08056653))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00115203857, -0.758476257, -3.02730322, 0.999999821, -0.000465770951, -0.00146539765, 0.000465769786, 1.0000006, -9.1023503e-007, 0.00146541488, 3.32271156e-007, 0.999998868))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.982334316, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.392933369, 0.200000003, 0.294699937))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00243377686, 4.50052071, -1.10219955, 1.00000095, -0.000117976917, -0.000356589007, -0.000356606295, -3.13344572e-007, -0.99999994, 0.000117980642, 1.00000072, -4.84469638e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.515725374, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.589400113, 0.294700235, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0101242065, 0.908729553, -0.708863616, 0.999999285, -0.000384180807, -0.00121559214, -0.000384181505, -0.999999821, 3.30837793e-007, -0.00121559505, 1.36080416e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.43836403, 0.365943909, 0.242881775, 0.00165945932, 5.27869361e-006, 0.99999845, -0.000527211931, -1.00000298, 6.15562749e-006, 1.00000215, -0.000527213095, -0.00165941729))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.491166711, 0.982334256, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.594311714, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00553894043, -0.709587097, -1.06642747, 0.999998689, -0.00051244162, -0.00160147436, 0.000512442784, 0.99999994, -7.10759195e-007, 0.00160147704, -5.49989636e-008, 0.999998629))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.589400113, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0105209351, -1.10314941, -0.705640912, -0.999999225, 0.000379913719, 0.00120874331, 0.000379914418, 0.999999821, -5.06350261e-007, -0.00120874809, -9.62336344e-008, -0.999999225))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.589399993, 1.37526786, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0066986084, -0.465335846, 2.03254437, 0.999999225, -0.000379425939, -0.00120590464, 0.000379428035, 1, -4.96167559e-007, 0.00120590848, 1.02423655e-007, 0.999999225))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.982332766))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.243461609, 0.562290192, 2.53645086, 0.999999285, -0.00057541416, -0.00180921052, -0.000575405778, -1.00000072, 6.17984733e-006, -0.00180923101, -5.09739766e-006, -0.999998093))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.491166711, 0.982334256, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.351196289, -0.955039978, -1.06613386, 1.00000548, -0.000499645248, -0.00156292901, 0.000499640591, 1.00000191, -6.71016096e-007, 0.00156292482, -1.13595888e-007, 1.00000298))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.491166711, 0.982334137, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.589399993, 0.294700235, 1.66996634))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00687408447, -0.709583282, -0.476252019, 0.999999225, -0.000394738978, -0.00123136025, 0.000394739443, 1, -5.71146302e-007, 0.00123136479, 4.64042387e-008, 0.999998987))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.392933369, 0.200000003, 0.491166592))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00233459473, 4.49864388, -1.10209656, 1.00000083, -0.000225806143, -0.000698220683, -0.000698236516, -2.58676664e-007, -0.999999821, 0.000225808006, 1.00000072, -4.21865479e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.294699967, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.94879889, -1.29978943, 0.140174866, 0.00144009769, -0.000345781824, 0.999998927, 0.000107031781, 1.00000024, 0.000345564651, -0.999999046, 0.000106533989, 0.00144013274))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.392933369, 0.200000003, 0.39293322))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000923156738, -0.366832733, -0.12570107, 1.00000012, -3.57127283e-005, -0.000107784639, 3.57124954e-005, 1.00000012, -2.69305019e-007, 0.000107790067, 2.80202585e-007, 0.99999994))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.982334256, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.392933369, 1.0805676, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00495147705, -0.514110565, 1.83597183, 0.999999285, -0.000381410355, -0.00120938488, 0.000381409423, 1, -4.76940841e-007, 0.00120938884, 9.82017809e-008, 0.999999225))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.982332766))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.392933369, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00141906738, -0.268924713, -0.912668705, 1.00000024, 2.7687056e-005, 9.42582992e-005, -2.76868232e-005, 1.00000024, -2.88320734e-007, -9.42548359e-005, 2.86237082e-007, 0.999999821))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.982334256, 0.982333124))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400337219, 1.06611919, -0.955036163, 1.0000087, -0.000496408204, -0.00155244884, -0.00155243871, 5.63268259e-008, -1.00000501, 0.00049640052, 1.00000274, -6.13028533e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.982333422, 0.491167068, 0.982333124))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.61547995, 0.366287231, 0.243164063, 0.00131910678, 5.38199674e-006, 0.999999166, -0.000419480959, -1.00000787, 6.0533057e-006, 1.00000846, -0.000419470016, -0.00131898699))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.491166711, 0.982334256, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.211201712, 0.20137848, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0051574707, -1.35022354, -1.65567803, 0.999998629, -0.000535673229, -0.00167071784, 0.000535675092, 0.99999994, -7.68497557e-007, 0.00167072366, -1.55496309e-007, 0.99999851))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.589399993, 0.200000003, 0.491166413))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00736236572, -0.955028534, -0.280241132, 0.999998927, -0.000500357477, -0.00156518002, 0.000500356779, 1, -7.38602466e-007, 0.00156518817, -1.96127075e-007, 0.999998689))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.982334137, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.392933369, 0.491167039, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00985717773, -0.808174133, 0.459144831, 0.999999225, -0.000391424866, -0.00122554414, 0.000391426031, 1, -5.73487341e-007, 0.00122554973, -1.6136255e-008, 0.999999046))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.982333362))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.57957679, 0.200000003, 1.27212131))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00746154785, -1.34790421, -1.16197693, 0.999998629, -0.000532985665, -0.00166285282, 0.000532988226, 0.99999994, -7.94567313e-007, 0.00166285841, -7.53170752e-008, 0.999998629))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.982334137, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.392933369, 0.785867333, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00390625, -0.857196808, -3.7649436, 1.00000048, -0.000322074397, -0.00100922503, 0.000322075095, 1.00000095, -3.96905307e-007, 0.00100924307, 6.53581083e-008, 0.999999344))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.982333362))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.392933369, 0.618870556, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.15527344e-005, 0.100006104, 0.101528168, 1.00000012, 9.77888703e-009, 9.92200739e-008, -1.35041773e-008, 1.00000083, -3.17867489e-007, -1.15040649e-007, 3.21705556e-007, 0.999999464))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.392933369, 0.200000003, 0.392933011))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00428009033, -0.415607452, -1.0127759, 0.99999994, -0.00019870582, -0.000620045874, 0.000198705588, 1.00000024, -4.01676516e-007, 0.00062004861, 2.12532541e-007, 0.999999583))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.589400113, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0125808716, -1.10314178, 1.58985198, 0.999999166, -0.000378279714, -0.00121128117, 0.000378279947, 0.999999821, -5.22204573e-007, 0.00121128617, 4.44160833e-008, 0.999998987))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.20137848, 1.17879963))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.159805298, -1.35028458, -1.11545217, 0.999998629, -0.000532446196, -0.00166041194, 0.000532446429, 0.99999994, -7.99824193e-007, 0.00166041648, -8.28113116e-008, 0.999998569))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.491166711, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.589399993, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00773620605, -1.15142059, 0.260152698, 0.999998569, -0.000538315857, -0.00168093725, 0.000538309338, 0.99999994, -4.72173997e-006, 0.00168094318, 3.79487574e-006, 0.999998391))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.982334137, 0.982333183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.294699967, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.94813347, -1.29772568, 0.153038025, -0.000204231794, -0.000346210145, -0.999999762, 5.26828226e-005, 0.99999994, -0.000346334535, 1.00000012, -5.27524389e-005, -0.000204205135))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.392933369, 0.392933667, 1.57173264))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00835418701, -1.05312347, -2.88107395, 1.00000358, -0.000387099804, -0.00121744454, 0.000387104694, 1.00000381, -5.40847395e-007, 0.00121751497, 3.37186066e-008, 0.999998927))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.392933369, 0.200000003, 1.08056641))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00281524658, -0.366123199, -3.02898932, 1.00000608, -0.000498470152, -0.00156922941, 0.000498481328, 1.0000062, -1.05474646e-006, 0.0015693194, 1.44375008e-007, 0.999998748))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.982334375, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.594311714, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00565338135, -0.758876801, -1.26295125, 0.999998748, -0.000511135673, -0.00159841403, 0.000511136372, 1, -7.38335075e-007, 0.00159841857, -6.43813109e-008, 0.999998569))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.982334137, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.491166174))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00144958496, -1.29763031, -4.20536757, 1.00000739, -0.000419238117, -0.00131797371, 0.000419243239, 1.00000584, -8.37620973e-007, 0.00131808035, 2.58100044e-007, 0.999999583))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.982333481, 0.491167068, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0881729126, 0.412960052, -3.76232553, -0.999789953, 0.000419552438, -0.020719137, -0.00041887071, -1.00000381, -3.75584641e-005, -0.0207191855, -2.88946485e-005, 0.999785244))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.982333481, 0.491167068, 0.982331276))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.76012516, 0.412151337, 0.238075256, 0.0207212772, 6.74803596e-005, -0.999785125, 0.00654910225, -0.999982655, 6.80589292e-005, -0.999768555, -0.00654910877, -0.0207212307))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.982334077, 0.491167068, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.49116683, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.205369, 0.412963867, 0.0523452759, -0.0207207073, -2.90410189e-005, 0.999785721, -0.000413767062, -1.00000501, -3.75807649e-005, 0.999792337, -0.000414452516, 0.0207206365))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.49116683, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.20324612, -1.29775238, 0.139373779, -0.00131877232, -3.85029489e-005, -0.999999523, -0.00654961355, 0.999983668, -2.99067415e-005, 0.99998492, 0.0065495586, -0.00131890492))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.392933369, 0.200000003, 0.491166592))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00339508057, 3.91188478, -0.61145401, 1.00000215, -0.000409059459, -0.00127747073, -0.00127751508, -9.17134457e-009, -0.999999404, 0.00040906202, 1.00000226, -5.96075552e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.49116683, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.20645714, -1.29798126, 0.14629364, 0.0013188537, -1.66272002e-007, 0.999999583, 0.000414166367, 1.00000584, -4.06869731e-007, -1.00000739, 0.000414160546, 0.00131874683))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.76342535, 0.412586212, 0.0627746582, -0.0207211263, -2.88857063e-005, 0.999785125, -0.000413808972, -1.00000393, -3.74646552e-005, 0.999789953, -0.000414489768, 0.0207210779))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.982333839, 0.491167068, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.491166174))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0953521729, 0.413311005, -4.20429516, -0.999792337, 0.000419603195, -0.0207197089, -0.000418920768, -1.00000501, -3.74905794e-005, -0.0207197778, -2.88444462e-005, 0.999785662))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.982333481, 0.491167068, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.76440763, -1.29795837, 0.149528503, 0.00131875218, 1.35669325e-007, 0.999998987, 0.000414157286, 1.00000381, -5.31716069e-007, -1.00000346, 0.000414151466, 0.00131867884))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.982333839, 0.491167068, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.76118898, -1.29774475, 0.139381409, -0.00131885556, -3.8700382e-005, -0.999999225, -0.00654953765, 0.999978364, -3.00336596e-005, 0.999977827, 0.00654949201, -0.00131907722))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.982334077, 0.491167068, 0.491166562))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00144195557, -1.29759598, -3.76330638, 0.999999166, -0.000419241842, -0.00131810969, 0.000419241609, 0.999999762, -5.86760507e-007, 0.00131811528, 1.03913408e-007, 0.999999106))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.982333481, 0.491167068, 0.982331276))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.49116683, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.20210361, 0.412452698, 0.245223999, 0.0207206346, 6.75759875e-005, -0.999785721, 0.00654929597, -0.999983668, 6.81862584e-005, -0.999771059, -0.00654929224, -0.020720575))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.491167068, 0.491166562))

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
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 

function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function LaserBarrage(Prt,Parent)
attack=true
--so("BeamLockon",Prt,1,1) 
local efprt=part(3,Parent,0,0.5,BrickColor.new("Really black"),"Effect",vt(0.2,0.2,0.2))
efprt.Anchored=true
local efmsh=mesh("CylinderMesh",efprt,"","",vt(0,0,0),vt(1,1,1))
spread=vt((math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7)*(Prt.Position-Mouse.Hit.p).magnitude/100
--spread=vt(0,0,0)
coroutine.resume(coroutine.create(function(Part,Mesh,Spreaded) 
game:GetService("Debris"):AddItem(Part,6)
local TheHit=Mouse.Hit.p
local MouseLook=cf((Prt.Position+TheHit)/2,TheHit+Spreaded)
local hit,pos = rayCast(Prt.Position,MouseLook.lookVector,1000,Parent)
so("Elec",Prt,0.2,1) 
local tefprt=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt(0.2,0.2,0.2))
tefprt.CFrame=cf(pos)
MagicCircle(BrickColor.new("Really black"),cf(pos),0.5,0.5,0.5,0.5,0.5,0.5,0.04)
so("Elec",tefprt,0.3,1) 
game:GetService("Debris"):AddItem(tefprt,3)
Part.CFrame=CFrame.new((Prt.Position+pos)/2,pos)*angles(1.57,0,0) 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
hit.Parent.Humanoid:TakeDamage(15) 
end 
end 
local mag=(Prt.Position-pos).magnitude 
MagicCylinder(BrickColor.new("Really black"),Part.CFrame,1,mag*5,1,0.5,0,0.5,0.05)
Part.Parent=nil
end),efprt,efmsh,spread)
end

ready = false

function shoot()
        if attack==true and ready==true then
                ready=false
                attack=true
so("http://www.roblox.com/asset/?id=138083993",Barrel,1,1)
for i=0,3,0.3 do
LaserBarrage(Barrel,m)
end
                for i=0,3,0.3 do
                        swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, 0.2) * angles(math.rad(120), math.rad(0), math.rad(-20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(140), math.rad(0), math.rad(40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10)),.3)
handleweld.C0=clerp(handleweld.C0,cf(-.1,.1,.1)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
                end
                for i=0,3,0.3 do
	swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.2) * angles(math.rad(90), math.rad(0), math.rad(-20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10)),.3)
handleweld.C0=clerp(handleweld.C0,cf(-.1,.1,.1)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
end
        for i=0,3,0.3 do
	swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(-10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -1) * angles(math.rad(120), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(1,-1,.5)*angles(math.rad(0),math.rad(-20),math.rad(-70)),.3)
end
so("http://www.roblox.com/asset/?id=131072992",Barrel,1,.8)
  for i=0,3,0.3 do
	swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(-20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -1) * angles(math.rad(120), math.rad(0), math.rad(20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(1,-1,.5)*angles(math.rad(0),math.rad(-20),math.rad(-70)),.3)
end
    for i=0,3,0.3 do
	swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(-10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -1) * angles(math.rad(120), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(1,-1,.5)*angles(math.rad(0),math.rad(-20),math.rad(-70)),.3)
end


                attack=false
        end
end

mouse.Button1Down:connect(function()
pcall(function()
shoot()
end)
end)

mouse.KeyDown:connect(function(k)
        k=k:lower()
        if k=='f' then
                if ready==false then
                        ready=true
                        attack=true
                elseif ready==true then
                        ready=false
                        attack=false
end
end
end)



local sine = 0
local change = 1
local val = 0

while true do
swait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-5),math.rad(0),math.rad(-15)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(15)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(15)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-75),math.rad(-10)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,-1.5)*angles(math.rad(180),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-15)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(15)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(15)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-75),math.rad(-10)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,-1.5)*angles(math.rad(180),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-15)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(15)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-75),math.rad(-10)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,-1.5)*angles(math.rad(180),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30*math.cos(sine/15)), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,-1.5)*angles(math.rad(180),math.rad(0),math.rad(0)),.3)
end
end
end
if ready==true then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, 0.2) * angles(math.rad(90), math.rad(0), math.rad(-20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1.2) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10)),.3)
handleweld.C0=clerp(handleweld.C0,cf(-.1,.1,.1)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
        end
end
end}
module[3] = {"A.X.R Bulldog",function()
Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
mana=0

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end    


    Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Stepped:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Stepped:wait(0)
    end
    end
    end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end
	
	
local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}

local Color = BrickColor.new("Dark grey")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(Color)
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new(Color)
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
	
	
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
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
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
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
 
function QuaternionSlerp(a, b, t) 
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

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Player=game:GetService('Players').LocalPlayer
        Character=Player.Character
        Mouse=Player:GetMouse()
        m=Instance.new('Model',Character)


        local function weldBetween(a, b)
            local weldd = Instance.new("ManualWeld")
            weldd.Part0 = a
            weldd.Part1 = b
            weldd.C0 = CFrame.new()
            weldd.C1 = b.CFrame:inverse() * a.CFrame
            weldd.Parent = a
            return weldd
        end
        
        it=Instance.new
        
        function nooutline(part)
                part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
        end
        
        function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
                local fp=it("Part")
                fp.formFactor=formfactor
                fp.Parent=parent
                fp.Reflectance=reflectance
                fp.Transparency=transparency
                fp.CanCollide=false
                fp.Locked=true
                fp.BrickColor=BrickColor.new(tostring(brickcolor))
                fp.Name=name
                fp.Size=size
                fp.Position=Character.Torso.Position
                nooutline(fp)
                fp.Material=material
                fp:BreakJoints()
                return fp
        end
        
        function mesh(Mesh,part,meshtype,meshid,offset,scale)
                local mesh=it(Mesh)
                mesh.Parent=part
                if Mesh=="SpecialMesh" then
                        mesh.MeshType=meshtype
                        mesh.MeshId=meshid
                end
                mesh.Offset=offset
                mesh.Scale=scale
                return mesh
        end
        
        function weld(parent,part0,part1,c0,c1)
                local weld=it("Weld")
                weld.Parent=parent
                weld.Part0=part0
                weld.Part1=part1
                weld.C0=c0
                weld.C1=c1
                return weld
        end

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Handle",Vector3.new(0.249872148, 0.251215011, 0.249872148))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000205993652, -0.360076904, -0.95643425, -0.99999994, -0.000225757583, -0.000720398675, 0.00072045275, -0.000239534784, -0.999999762, 0.000225584954, -1, 0.000239697489))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.249872148, 0.251215041))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, 0.0691184998, -0.314193964, 1.00000024, -5.92179131e-005, -1.29602695e-005, 5.92175056e-005, 1, -1.97537011e-005, 1.29613618e-005, 1.97527552e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000465393066, -0.45242691, 0.288010597, -0.999997497, 0.000725772523, 0.000227257871, -0.000725722872, -1.00000441, 0.000240282548, 0.000227538287, 0.000240116162, 1.00000548))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000473022461, 0.45243454, 0.0367903709, 0.999997497, -0.000720366137, -0.00022235082, 0.000720317767, 1.00000441, -0.000239741683, 0.000222629576, 0.000239580055, 1.00000548))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.376822561, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000473022461, 0.207035065, -0.17373085, 0.999997497, -0.00072160142, -0.00022359869, 0.00073676958, 0.866149008, 0.499794632, -0.000166879006, -0.499795169, 0.866149962))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000465393066, 0.45243454, 0.0888251066, -0.999997497, 0.000725971942, 0.00021874324, 0.000725924212, 1.00000441, -0.000240576948, -0.000219023961, -0.000240416673, -1.00000548))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.502430081, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-005, 0.131931305, -0.502456903, 1.00000024, -5.92213473e-005, -1.04527553e-005, 5.92209981e-005, 1, -1.97814952e-005, 1.04538531e-005, 1.97806949e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00016784668, -0.559078217, 0.125410795, 1.00000036, -5.56436135e-006, 5.70751354e-006, 5.56418672e-006, 1.00000012, -6.32018782e-007, -5.70759948e-006, 6.31829607e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.249872148, 0.251215011))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000114440918, -0.559070587, -0.0630459785, 1.00000036, -3.43425199e-009, 4.1882933e-007, 3.25962901e-009, 1.00000012, -5.07861841e-009, -4.18907319e-007, 4.86033969e-009, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000473022461, 0.326820374, 0.287996054, 0.999997497, -0.000720454438, -0.00022328952, 0.000720405835, 1.00000441, -0.000239729197, 0.000223568277, 0.000239566856, 1.00000548))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.249872148, 0.251215011, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000473022461, 0.389625549, 0.162387133, 0.999997497, -0.00072036538, -0.000222872448, 0.000720316893, 1.00000441, -0.000239734727, 0.000223151204, 0.000239572721, 1.00000548))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.251215011, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, 0.0062828064, -0.125666976, 1.00000036, -5.82076609e-011, -1.0415279e-007, -5.82076609e-011, 1.00000012, 1.92085281e-009, 1.04069201e-007, -2.12457962e-009, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.249872148, 0.320299208, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000480651855, 0.235279083, -0.0481357574, 0.999997497, -0.000721339951, -0.000224050062, 0.000736768707, 0.866149008, 0.499794632, -0.000166357378, -0.499795169, 0.866149962))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000114440918, 0.182186127, 0.12538743, -1.00000036, 9.11590178e-006, 1.74332206e-006, -9.11578536e-006, -1.00000012, 9.46136424e-007, 1.74326954e-006, 9.45903594e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.251215041, 0.628037632))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.433101654, -1.0681597, -0.000518798828, -0.000720398675, -0.999999762, 0.000239697489, 0.000225757554, 0.000239534755, 0.999999881, -0.99999994, 0.00072045275, 0.000225584954))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0791327506, 0.195947751, 2.49582171))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.251215041, 0.628037632))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.449054718, 1.06155396, -0.000518798828, 0.000349763839, 0.706936777, -0.707275927, -0.00066903315, -0.707275689, -0.706936777, -0.99999994, 0.00072045275, 0.000225584954))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0791327357, 0.195947766, 2.49582171))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.25121507, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000106811523, -0.370616913, 0.125349045, 1.00000036, 7.15954229e-009, -5.11285134e-006, -7.33416528e-009, 1.00000012, 6.86413841e-008, 5.11277858e-006, -6.88451109e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822501, 0.249872148, 0.628037453))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, -0.55904007, -0.628454924, 1.00000036, -3.20364488e-005, -2.10887192e-005, 3.20360414e-005, 1.00000012, -1.04982755e-005, 2.10889866e-005, 1.0497417e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822561, 0.249872148, 0.502430081))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-005, -0.433403015, -0.188618064, 1.00000036, 1.11758709e-008, -6.992203e-006, -1.13504939e-008, 1.00000012, 9.36706783e-008, 6.9921266e-006, -9.38744051e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000106811523, -1.00516951, 0.320278168, -1.00000024, 6.65510888e-005, 1.68400602e-005, 1.68413608e-005, 2.0647436e-005, 1, 6.65506232e-005, 1, -2.06487457e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.376822591, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-005, 0.0691642761, -1.00482428, 1.00000024, -5.9222104e-005, -9.93106914e-006, 5.92217548e-005, 1, -1.9788451e-005, 9.9321569e-006, 1.97876652e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822501, 0.249872148, 0.376822591))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-005, -0.433422089, -0.753872871, 1.00000036, 8.68557254e-006, -5.82381335e-006, -8.68568895e-006, 1.00000012, 2.99772364e-006, 5.8237415e-006, -2.99786916e-006, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.249872148, 0.376822591))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.34057617e-005, 0.32036972, -0.753610492, 1.00000024, -5.92212891e-005, -1.04526243e-005, 5.92209399e-005, 1, -1.97814952e-005, 1.04537221e-005, 1.97806949e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.249872148, 0.376822591, 0.376822591))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-005, 0.0691490173, -0.753605008, 1.00000024, -5.9221813e-005, -1.01400929e-005, 5.92214637e-005, 1, -1.97856716e-005, 1.01411933e-005, 1.97848713e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822501, 0.25121507, 0.502430022))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-005, -0.244979858, -0.188724279, 1.00000036, 1.11758709e-008, -6.99218845e-006, -1.13504939e-008, 1.00000012, 9.36706783e-008, 6.99211205e-006, -9.38744051e-008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822501, 0.376822591, 0.376822561))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.86645508e-005, -0.433349609, -1.38218713, 1.00000024, -5.91896242e-005, -2.39263682e-005, 5.92111028e-005, 1, -1.96207548e-005, 2.39328383e-005, 1.96265173e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000114440918, -0.559082031, 0.251346588, -1.00000024, -2.39079236e-005, -1.38423338e-005, -2.39082146e-005, 1, 9.51347465e-006, 1.38421719e-005, 9.51398397e-006, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000144958496, 0.559082031, -0.251361251, -1.00000024, -1.84752862e-005, -6.47418165e-006, 1.84755772e-005, -1, -9.59941826e-006, -6.47407114e-006, -9.59972385e-006, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000137329102, -0.43346405, 0.502572298, -1.00000036, 5.48030948e-006, -6.26139763e-006, 5.48013486e-006, 1.00000012, -2.82510882e-007, 6.26146448e-006, -2.82365363e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000137329102, 0.43346405, -0.502573967, -1.00000036, 1.09116663e-005, 1.524249e-006, -1.09114917e-005, -1.00000012, 1.91022991e-007, 1.52417022e-006, 1.90804712e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.249872148, 0.25121507))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.15527344e-005, -0.0565261841, -1.06798422, 1.00000024, -5.9191836e-005, -2.70642977e-005, 5.91911376e-005, 1, -1.95882458e-005, 2.70653727e-005, 1.95864559e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.376822591, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000495910645, -0.625137329, -0.67111969, 0.999997497, -0.00072721875, -0.000194401277, 0.000651851704, 0.707277596, 0.706942856, -0.000376532524, -0.70694226, 0.70727849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.502687335))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.249872148, 0.395663708))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000137329102, 0.144451141, -0.62521112, 1.00000024, -5.9185375e-005, -3.07253576e-005, 5.91846183e-005, 1, -1.95451576e-005, 3.07264309e-005, 1.95431639e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.376822591, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000106811523, -0.433422089, -1.63327813, 1.00000024, -5.919463e-005, -2.74966787e-005, 5.91939315e-005, 1, -1.95596949e-005, 2.74977483e-005, 1.95578905e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.376822591, 0.251215041))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.15527344e-005, -0.433334351, -1.0680908, 1.00000036, -4.52231034e-005, -2.28274512e-005, 4.52225795e-005, 1.00000012, -1.49286498e-005, 2.28280478e-005, 1.49274274e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.249872148, 0.376822591))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.43334198, 1.75898731, 0.000129699707, -2.69297161e-005, -1.00000012, 1.91715808e-005, -6.51740556e-005, -1.91696308e-005, -1, 1.00000036, -2.69311131e-005, -6.51736191e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000129699707, -0.684700012, -1.50741279, 1.00000024, -6.4982567e-005, -1.10206747e-005, 6.50263974e-005, 1, -1.95248285e-005, 1.10326419e-005, 1.95386674e-005, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.39233398e-005, -0.684638977, -1.63328862, 1.00000024, -5.919463e-005, -2.74966787e-005, 5.91939315e-005, 1, -1.95596949e-005, 2.74977483e-005, 1.95578905e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.251215041, 0.249872148, 0.376822591))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.244930267, 1.75896168, 0.000129699707, -2.69391458e-005, -1.00000012, 1.92259758e-005, -5.96150421e-005, -1.9224186e-005, -1, 1.00000036, -2.69404845e-005, -5.96145801e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.125732422, -0.684707642, -0.125760436, 1.00000036, -5.79509651e-006, 7.80390383e-006, 5.79492189e-006, 1.00000012, 1.72105501e-007, -7.80397568e-006, -1.72265572e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822501, 0.249872148, 0.502430081))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-005, -0.307754517, -0.6913836, 1.00000024, -1.13646965e-005, -1.22719966e-005, 1.13644637e-005, 1, -3.66875611e-006, 1.22719612e-005, 3.66842141e-006, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.125473022, -0.684703827, -0.125751019, 1.00000036, -5.79480547e-006, 7.69880899e-006, 5.79463085e-006, 1.00000012, 1.73502485e-007, -7.69889721e-006, -1.73648004e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.249872148, 1.13046777))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.91821289e-005, -0.182117462, -1.13084769, 1.00000024, -5.91959688e-005, -2.53911767e-005, 5.91952703e-005, 1, -1.96104957e-005, 2.53922535e-005, 1.96088076e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000198364258, 0.502620816, 0.182220459, -1.00000036, 3.14078643e-005, 2.9162622e-005, -2.91631495e-005, -1.99905044e-005, -1, -3.14071076e-005, -1.00000012, 1.99916249e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000198364258, -0.502616286, -0.182235718, -1.00000036, 3.87764885e-005, 2.37294116e-005, 2.37300956e-005, 1.99014321e-005, 1, 3.87758482e-005, 1.00000012, -1.99025526e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.125656128, -0.684650421, -0.251537204, 1.00000036, 1.50175765e-008, -8.97663449e-006, -1.51921995e-008, 1.00000012, 1.48662366e-007, 8.97656173e-006, -1.48866093e-007, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.125549316, -0.684650421, -0.251536846, 1.00000036, 1.51921995e-008, -9.08120455e-006, -1.53668225e-008, 1.00000012, 1.5005935e-007, 9.08113088e-006, -1.50248525e-007, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.251215041, 0.628037632))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.06815958, 0.433101654, -0.000518798828, -0.000225757482, -0.000239519795, -0.999999642, -0.000720398501, -0.999999523, 0.000239682529, -0.99999994, 0.00072045275, 0.000225584954))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0791327506, 0.195947751, 2.49582171))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.251215041, 0.628037632))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.06155396, -0.449050903, -0.000518798828, -0.000669033267, -0.707275808, -0.706936955, -0.000349763926, -0.706936955, 0.707276046, -0.99999994, 0.00072045275, 0.000225584954))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0791327506, 0.195947751, 2.49582171))
BarrelA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Barrel",Vector3.new(0.251214981, 0.249872148, 0.376822591))
BarrelAweld=weld(m,handle,BarrelA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.433361053, 1.76527333, 0.00016784668, -5.6413468e-005, -1, 1.91889267e-005, -7.36084621e-005, -1.91846048e-005, -1.00000024, 1.00000048, -5.64150396e-005, -7.36074362e-005))
mesh("CylinderMesh",BarrelA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
mesh("BlockMesh",handle,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))

handle2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","handle2",Vector3.new(0.249872148, 0.251215011, 0.249872148))
handle2weld=weld(m,Character["Left Arm"],handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000198364258, -0.36007309, -0.95643425, -0.99999994, -0.000225757583, -0.000720398675, 0.00072045275, -0.000239534784, -0.999999762, 0.000225584954, -1, 0.000239697489))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.249872148, 0.251215041))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, 0.0691146851, -0.314193964, 1.00000024, -5.92179131e-005, -1.29602695e-005, 5.92175056e-005, 1, -1.97537011e-005, 1.29613618e-005, 1.97527552e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000465393066, -0.452423096, 0.288010597, -0.999997497, 0.000725772523, 0.000227257871, -0.000725722872, -1.00000441, 0.000240282548, 0.000227538287, 0.000240116162, 1.00000548))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000473022461, 0.452430725, 0.0367903709, 0.999997497, -0.000720366137, -0.00022235082, 0.000720317767, 1.00000441, -0.000239741683, 0.000222629576, 0.000239580055, 1.00000548))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.376822561, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000473022461, 0.20703125, -0.173728943, 0.999997497, -0.00072160142, -0.00022359869, 0.00073676958, 0.866149008, 0.499794632, -0.000166879006, -0.499795169, 0.866149962))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000465393066, 0.452430725, 0.0888252258, -0.999997497, 0.000725971942, 0.00021874324, 0.000725924212, 1.00000441, -0.000240576948, -0.000219023961, -0.000240416673, -1.00000548))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.502430081, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-005, 0.13192749, -0.502457142, 1.00000024, -5.92213473e-005, -1.04527553e-005, 5.92209981e-005, 1, -1.97814952e-005, 1.04538531e-005, 1.97806949e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00016784668, -0.559078217, 0.125410557, 1.00000036, -5.56436135e-006, 5.70751354e-006, 5.56418672e-006, 1.00000012, -6.32018782e-007, -5.70759948e-006, 6.31829607e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.249872148, 0.251215011))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000114440918, -0.559074402, -0.0630459785, 1.00000036, -3.43425199e-009, 4.1882933e-007, 3.25962901e-009, 1.00000012, -5.07861841e-009, -4.18907319e-007, 4.86033969e-009, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000473022461, 0.326816559, 0.287996054, 0.999997497, -0.000720454438, -0.00022328952, 0.000720405835, 1.00000441, -0.000239729197, 0.000223568277, 0.000239566856, 1.00000548))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.249872148, 0.251215011, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000473022461, 0.389621735, 0.162387133, 0.999997497, -0.00072036538, -0.000222872448, 0.000720316893, 1.00000441, -0.000239734727, 0.000223151204, 0.000239572721, 1.00000548))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.251215011, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, 0.006275177, -0.125666976, 1.00000036, -5.82076609e-011, -1.0415279e-007, -5.82076609e-011, 1.00000012, 1.92085281e-009, 1.04069201e-007, -2.12457962e-009, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.249872148, 0.320299208, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000480651855, 0.235275269, -0.0481338501, 0.999997497, -0.000721339951, -0.000224050062, 0.000736768707, 0.866149008, 0.499794632, -0.000166357378, -0.499795169, 0.866149962))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000114440918, 0.182186127, 0.12538743, -1.00000036, 9.11590178e-006, 1.74332206e-006, -9.11578536e-006, -1.00000012, 9.46136424e-007, 1.74326954e-006, 9.45903594e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.251215041, 0.628037632))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.433105469, -1.0681597, -0.000518798828, -0.000720398675, -0.999999762, 0.000239697489, 0.000225757554, 0.000239534755, 0.999999881, -0.99999994, 0.00072045275, 0.000225584954))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0791327506, 0.195947751, 2.49582171))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.251215041, 0.628037632))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.449050903, 1.06155396, -0.000518798828, 0.000349763839, 0.706936777, -0.707275927, -0.00066903315, -0.707275689, -0.706936777, -0.99999994, 0.00072045275, 0.000225584954))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0791327357, 0.195947766, 2.49582171))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.25121507, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000106811523, -0.370620728, 0.125349045, 1.00000036, 7.15954229e-009, -5.11285134e-006, -7.33416528e-009, 1.00000012, 6.86413841e-008, 5.11277858e-006, -6.88451109e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822501, 0.249872148, 0.628037453))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, -0.559043884, -0.628455162, 1.00000036, -3.20364488e-005, -2.10887192e-005, 3.20360414e-005, 1.00000012, -1.04982755e-005, 2.10889866e-005, 1.0497417e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822561, 0.249872148, 0.502430081))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-005, -0.43340683, -0.188618183, 1.00000036, 1.11758709e-008, -6.992203e-006, -1.13504939e-008, 1.00000012, 9.36706783e-008, 6.9921266e-006, -9.38744051e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000106811523, -1.00516927, 0.320274353, -1.00000024, 6.65510888e-005, 1.68400602e-005, 1.68413608e-005, 2.0647436e-005, 1, 6.65506232e-005, 1, -2.06487457e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.376822591, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-005, 0.0691604614, -1.0048244, 1.00000024, -5.9222104e-005, -9.93106914e-006, 5.92217548e-005, 1, -1.9788451e-005, 9.9321569e-006, 1.97876652e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822501, 0.249872148, 0.376822591))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-005, -0.433425903, -0.753872871, 1.00000036, 8.68557254e-006, -5.82381335e-006, -8.68568895e-006, 1.00000012, 2.99772364e-006, 5.8237415e-006, -2.99786916e-006, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.249872148, 0.376822591))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.34057617e-005, 0.320365906, -0.75361073, 1.00000024, -5.92212891e-005, -1.04526243e-005, 5.92209399e-005, 1, -1.97814952e-005, 1.04537221e-005, 1.97806949e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.249872148, 0.376822591, 0.376822591))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-005, 0.0691452026, -0.753605008, 1.00000024, -5.9221813e-005, -1.01400929e-005, 5.92214637e-005, 1, -1.97856716e-005, 1.01411933e-005, 1.97848713e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822501, 0.25121507, 0.502430022))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-005, -0.244983673, -0.188724399, 1.00000036, 1.11758709e-008, -6.99218845e-006, -1.13504939e-008, 1.00000012, 9.36706783e-008, 6.99211205e-006, -9.38744051e-008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822501, 0.376822591, 0.376822561))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.86645508e-005, -0.433353424, -1.38218737, 1.00000024, -5.91896242e-005, -2.39263682e-005, 5.92111028e-005, 1, -1.96207548e-005, 2.39328383e-005, 1.96265173e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000114440918, -0.559089661, 0.251346469, -1.00000024, -2.39079236e-005, -1.38423338e-005, -2.39082146e-005, 1, 9.51347465e-006, 1.38421719e-005, 9.51398397e-006, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000144958496, 0.559089661, -0.251361251, -1.00000024, -1.84752862e-005, -6.47418165e-006, 1.84755772e-005, -1, -9.59941826e-006, -6.47407114e-006, -9.59972385e-006, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000137329102, -0.43347168, 0.502572179, -1.00000036, 5.48030948e-006, -6.26139763e-006, 5.48013486e-006, 1.00000012, -2.82510882e-007, 6.26146448e-006, -2.82365363e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000137329102, 0.433467865, -0.502573967, -1.00000036, 1.09116663e-005, 1.524249e-006, -1.09114917e-005, -1.00000012, 1.91022991e-007, 1.52417022e-006, 1.90804712e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.249872148, 0.25121507))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.15527344e-005, -0.0565299988, -1.0679841, 1.00000024, -5.9191836e-005, -2.70642977e-005, 5.91911376e-005, 1, -1.95882458e-005, 2.70653727e-005, 1.95864559e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.376822591, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000495910645, -0.625141144, -0.67111969, 0.999997497, -0.00072721875, -0.000194401277, 0.000651851704, 0.707277596, 0.706942856, -0.000376532524, -0.70694226, 0.70727849))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.502687335))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.249872148, 0.395663708))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000137329102, 0.144447327, -0.62521112, 1.00000024, -5.9185375e-005, -3.07253576e-005, 5.91846183e-005, 1, -1.95451576e-005, 3.07264309e-005, 1.95431639e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.376822591, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000106811523, -0.433425903, -1.63327825, 1.00000024, -5.919463e-005, -2.74966787e-005, 5.91939315e-005, 1, -1.95596949e-005, 2.74977483e-005, 1.95578905e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.376822591, 0.251215041))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.15527344e-005, -0.433338165, -1.06809092, 1.00000036, -4.52231034e-005, -2.28274512e-005, 4.52225795e-005, 1.00000012, -1.49286498e-005, 2.28280478e-005, 1.49274274e-005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.249872148, 0.376822591))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.433349609, 1.75898743, 0.000129699707, -2.69297161e-005, -1.00000012, 1.91715808e-005, -6.51740556e-005, -1.91696308e-005, -1, 1.00000036, -2.69311131e-005, -6.51736191e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000129699707, -0.684707642, -1.50741291, 1.00000024, -6.4982567e-005, -1.10206747e-005, 6.50263974e-005, 1, -1.95248285e-005, 1.10326419e-005, 1.95386674e-005, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.39233398e-005, -0.684642792, -1.63328874, 1.00000024, -5.919463e-005, -2.74966787e-005, 5.91939315e-005, 1, -1.95596949e-005, 2.74977483e-005, 1.95578905e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.251215041, 0.249872148, 0.376822591))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.244937897, 1.75896156, 0.000129699707, -2.69391458e-005, -1.00000012, 1.92259758e-005, -5.96150421e-005, -1.9224186e-005, -1, 1.00000036, -2.69404845e-005, -5.96145801e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.125732422, -0.684711456, -0.125760555, 1.00000036, -5.79509651e-006, 7.80390383e-006, 5.79492189e-006, 1.00000012, 1.72105501e-007, -7.80397568e-006, -1.72265572e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822501, 0.249872148, 0.502430081))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-005, -0.307758331, -0.691383839, 1.00000024, -1.13646965e-005, -1.22719966e-005, 1.13644637e-005, 1, -3.66875611e-006, 1.22719612e-005, 3.66842141e-006, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.125473022, -0.684707642, -0.125751138, 1.00000036, -5.79480547e-006, 7.69880899e-006, 5.79463085e-006, 1.00000012, 1.73502485e-007, -7.69889721e-006, -1.73648004e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822501, 0.249872148, 1.13046777))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.91821289e-005, -0.182121277, -1.13084757, 1.00000024, -5.91959688e-005, -2.53911767e-005, 5.91952703e-005, 1, -1.96104957e-005, 2.53922535e-005, 1.96088076e-005, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000198364258, 0.502620697, 0.182224274, -1.00000036, 3.14078643e-005, 2.9162622e-005, -2.91631495e-005, -1.99905044e-005, -1, -3.14071076e-005, -1.00000012, 1.99916249e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.376822591, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000198364258, -0.502616286, -0.182239532, -1.00000036, 3.87764885e-005, 2.37294116e-005, 2.37300956e-005, 1.99014321e-005, 1, 3.87758482e-005, 1.00000012, -1.99025526e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.125656128, -0.684658051, -0.251536965, 1.00000036, 1.50175765e-008, -8.97663449e-006, -1.51921995e-008, 1.00000012, 1.48662366e-007, 8.97656173e-006, -1.48866093e-007, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.249872148, 0.249872148, 0.249872148))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.125549316, -0.684654236, -0.251536846, 1.00000036, 1.51921995e-008, -9.08120455e-006, -1.53668225e-008, 1.00000012, 1.5005935e-007, 9.08113088e-006, -1.50248525e-007, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 0.502687216, 0.502687216))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.251215041, 0.628037632))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.06815958, 0.433105469, -0.000518798828, -0.000225757482, -0.000239519795, -0.999999642, -0.000720398501, -0.999999523, 0.000239682529, -0.99999994, 0.00072045275, 0.000225584954))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0791327506, 0.195947751, 2.49582171))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.249872148, 0.251215041, 0.628037632))
Partweld=weld(m,handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.06155396, -0.449050903, -0.000518798828, -0.000669033267, -0.707275808, -0.706936955, -0.000349763926, -0.706936955, 0.707276046, -0.99999994, 0.00072045275, 0.000225584954))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.0791327506, 0.195947751, 2.49582171))
BarrelB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Barrel",Vector3.new(0.251214981, 0.249872148, 0.376822591))
BarrelBweld=weld(m,handle2,BarrelB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.433368683, 1.76527357, 0.00016784668, -5.6413468e-005, -1, 1.91889267e-005, -7.36084621e-005, -1.91846048e-005, -1.00000024, 1.00000048, -5.64150396e-005, -7.36074362e-005))
mesh("CylinderMesh",BarrelB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.502687216, 1))
mesh("BlockMesh",handle2,"","",Vector3.new(0, 0, 0),Vector3.new(0.502687216, 1, 0.502687216))

function Laser(Part,Dmg) 
sp = Part.Position 
dirr = Part.CFrame * CFrame.fromEulerAnglesXYZ(-1.57,0,0) 
local hit,pos = rayCast(sp,dirr.lookVector,500,Character) 
local las=Instance.new("Part",Character) 
las.Anchored=true 
las.Locked=true 
las.CanCollide=false 
las.TopSurface=0 
las.BottomSurface=0 
las.FormFactor = "Custom" 
las.BrickColor=BrickColor.new("Light stone grey") 
las.Size=Vector3.new(1,1,1) 
las.CFrame=CFrame.new((Part.Position+pos)/2,pos) *CFrame.Angles(math.rad(90),0,0) 
local msh=Instance.new("SpecialMesh",las) 
mag = (Part.Position-pos).magnitude 
msh.Scale=Vector3.new(0.1,mag,0.1) 
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i = 0,1,0.1 do 
wait() 
Part.Transparency = Part.Transparency + 0.1 
Mesh.Scale = Mesh.Scale + Vector3.new(0.15,0.7,0.15) 
end 
Part.Parent = nil 
end),las,msh) 
if pos ~= nil then 
local las2=Instance.new("Part",Character) 
las2.Anchored=true 
las2.Locked=true 
las2.CanCollide=false 
las2.TopSurface=0 
las2.BottomSurface=0 
las2.FormFactor = "Custom" 
las2.BrickColor=BrickColor.new("Light stone grey") 
las2.Size=Vector3.new(1,1,1) 
--las2.CFrame=CFrame.new((Part.Position+pos)/2,pos) *CFrame.Angles(math.rad(90),0,0) 
las2.CFrame=CFrame.new(pos) *CFrame.Angles(math.rad(90),0,0) 
local msh=Instance.new("SpecialMesh",las2) 
msh.MeshType = "Sphere"
mag = (Part.Position-pos).magnitude 
msh.Scale=Vector3.new(0.1,0.1,0.1) 
coroutine.resume(coroutine.create(function(Part,Mesh) 
--wait(10) 
for i = 0,1,0.1 do 
wait() 
Part.Transparency = Part.Transparency + 0.1 
Mesh.Scale = Mesh.Scale + Vector3.new(0.5,0,0.5) 
end 
Part.Parent = nil 
end),las2,msh) 
end 
if hit ~= nil and pos ~= nil then 
if hit.Parent.className == "Hat" then 
hit:BreakJoints() 
hit.Velocity = Vector3.new(math.random(-5,5),20,math.random(-5,5)) 
end 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
hit.Parent.Humanoid:TakeDamage(Dmg) 
end 
end 
--[[if hit.className == "Part" and hit.Parent:findFirstChild("Humanoid") == nil then 
end ]] 
end 
end 

function attackone()
		attack=true
		for i=0,1,0.1 do
			swait()
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(50)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(50),math.rad(30),math.rad(-50)),.3)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(50)),.3)
		end
		Laser(BarrelA,20)
			so("http://www.roblox.com/asset/?id=149155476",Torso,1,1) 
		for i=0,1,0.2 do
			swait()
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(120),math.rad(50),math.rad(50)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(50),math.rad(30),math.rad(-50)),.3)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(10),math.rad(-50)),.3)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(50)),.3)
		end
		attack=false
end

function attacktwo()
		attack=true
		for i=0,1,0.1 do
			swait()
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-50),math.rad(30),math.rad(50)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(-50)),.3)
			--LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(50),math.rad(30),math.rad(-50)),.3)
			--RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(50)),.3)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(50)),.3)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
		end
		Laser(BarrelB,20)
			so("http://www.roblox.com/asset/?id=149155476",Torso,1,1) 
		for i=0,1,0.2 do
			swait()
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-50),math.rad(30),math.rad(50)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(120),math.rad(-50),math.rad(-50)),.3)
			--RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(120),math.rad(50),math.rad(50)),.3)
			--LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(50),math.rad(30),math.rad(-50)),.3)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(-10),math.rad(50)),.3)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
		end
		attack=false
	end

function attackthree()
	attack=true
	for i=0,1,0.1 do
			swait()
			RW.C0=clerp(RW.C0,cf(1,0.5,-1)*angles(math.rad(90),math.rad(0),math.rad(-50)),.3)
            LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(-50)),.3)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(50)),.3)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
		end
	for i=0,1,0.2 do
			swait()
					Laser(BarrelA,20)
					Laser(BarrelB,20)
		so("http://www.roblox.com/asset/?id=149155476",Torso,1,1) 
			RW.C0=clerp(RW.C0,cf(1,0.5,-1)*angles(math.rad(100),math.rad(-10),math.rad(-50)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(100),math.rad(-10),math.rad(-50)),.3)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(-10),math.rad(50)),.3)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
		end
	attack=false
end

mouse.Button1Down:connect(function()
	if attack==false then
		if attacktype==1 then
			attack=true
			attacktype=2
			attackone()
		elseif attacktype==2 then
			attack=true
			attacktype=3
			attacktwo()
			elseif attacktype==3 then
			attack=true
			attacktype=1
			attackthree()
		end
	end
end)

mouse.KeyDown:connect(function(k)
	k=k:lower()
	
end)


local sine = 0
local change = 1
local val = 0

while true do
swait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RW.C0=clerp(RW.C0,cf(1,0.5,-1)*angles(math.rad(90),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(50)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RW.C0=clerp(RW.C0,cf(.8,0.5,-1)*angles(math.rad(50),math.rad(30),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(50),math.rad(30),math.rad(-50)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(-10),math.rad(50)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(-50)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
end
end
end
end
end}

 
 

module[1] = {"Atlas Sword",function()

Wait(0.25)
math.randomseed(tick())
repeat Wait()until Game.Players.LocalPlayer ~= nil;Player = Game.Players.LocalPlayer Tool = script.Parent if not script.Parent:IsA("Tool")then Tool = Instance.new("Tool",Player.Backpack)script.Parent = Tool end
Character,PlayerGui,Power = Player.Character,Player.PlayerGui,0
RA,LA,RL,LL,H,T = Character["Right Arm"],Character["Left Arm"],Character["Right Leg"],Character["Left Leg"],Character.Head,Character.Torso
RS,LS,RH,LH,N = T["Right Shoulder"],T["Left Shoulder"],T["Right Hip"],T["Left Hip"],T.Neck
Settings,Pr0mMode,ArielMode,InternalMode,AmazingMode = {Colors = {BrickColor.new("Really black"),BrickColor.new("New Yeller")};ExplosionColors = {BrickColor.new("Really black"),BrickColor.new("New Yeller"),BrickColor.new("Really red"),BrickColor.new("Institutional white")}},Player.Name == "Fir3bl4ze",Player.Name == "paul072" or Player.Name == "KillBecca62",Player.Name == "InternalRecursion" or Player.Name == "RecursionAltInternal",Player.Name == "heartstar18"
local SpinCount,ChargeRot,ChargeMatrix,PoisonMode,GripC0 = 0,0,{},false
local Comboing,Mouse,InputTable,MaxBuffer,MaxFlow,CurrentKey,LastInput,xKey = false
if Pr0mMode then
Settings.Colors[1]= BrickColor.new("Institutional white")
Settings.Colors[2]= BrickColor.new("Navy blue")
end
if InternalMode then
Settings.Colors[1]= BrickColor.new("Really black")
Settings.Colors[2]= BrickColor.new("Really red")
end
if ArielMode then
Settings.Colors[1]= BrickColor.new("Teal")
Settings.Colors[2]= BrickColor.new("Hot pink")
end
if AmazingMode then
Settings.Colors[1]= BrickColor.new("Hot pink")
Settings.Colors[2]= BrickColor.new("Really black")
end
local function ByteToStr(ByteArray,Offset)
local s = ''
for i,v in pairs(ByteArray)do
s = s..string.char(v -Offset)
end
return s
end
local function StopJoints()
for i,v in pairs(T:GetChildren())do
if v:IsA("Moter6D")then
v.DesiredAngle = 0
v.CurrentAngle = 0
end end
N.MaxVelocity = 0.5
N.C0 = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
end
local DamageGui
function ShakeCam(numbor,waeittime)Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,numbor or 2,0)Wait(waeittime or 1/30)Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,numbor and -numbor or -2,0)end
function RandomDecimal(Dec,Dec2)
if not Dec or not Dec2 or Dec == Dec2 then return end
local Range,Round = {},"0."
for i = 1,#tostring(Dec2):sub(tostring(Dec2):find("%.")+1)do Round = Round..'0' end
Round = Round..'1'
for i = Dec,Dec2,tonumber(Round)do
table.insert(Range,i)
if i == Dec2 then
break
end end
return Range[math.random(1,#Range)]
end
local function MiniExplode(CF,Color)
local cf = CF
local f = Instance.new("Part",Character)
f.BrickColor = Color
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = cf
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(3,3,3)
Wait()
end
f:Destroy()
end)()
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(1,1,1)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = cf
ax.Anchored = true
coroutine.wrap(function()
for i = 1,10 do
ax.Size = ax.Size + Vector3.new(math.random(1,3)+1,math.random(1,3)+1,math.random(1,3)+1)
ax.Transparency = ax.Transparency +0.1
ax.CFrame = cf
Wait()
end
ax:Destroy()
end)()end
local function Implode(CF,Color)
local cf = CF
local f = Instance.new("Part",Character)
f.BrickColor = Color
f.Size = Vector3.new(1,1,1)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.Transparency = 1
f.BottomSurface = 0
f.CFrame = cf
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(30,30,30)
coroutine.wrap(function()
for i = 1,10 do
f.Transparency = f.Transparency -0.1
sm.Scale = sm.Scale - Vector3.new(3,3,3)
Wait()
end
f:Destroy()
end)()
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(30,30,30)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = cf
ax.Anchored = true
ax.Transparency = 1
coroutine.wrap(function()
for i = 1,10 do
ax.Size = ax.Size - Vector3.new(math.random(1,3)+1,math.random(1,3)+1,math.random(1,3)+1)
ax.Transparency = ax.Transparency -0.1
ax.CFrame = cf
Wait()
end
ax:Destroy()
end)()end
local function Explode(CF,Color,SMM,BBoom)
local cf = CF
local f = Instance.new("Part",Character)
f.BrickColor = Color
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = cf
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(10,10,10)
Wait()
end
f:Destroy()
end)()
if BBoom then do
local zs = BBoom
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(1,1,1)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = zs
ax.Anchored = true
local SMMx = Instance.new("SpecialMesh",ax)
SMMx.MeshId = "http://www.roblox.com/asset/?id=1323306"
SMMx.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for i = 1,20 do
SMMx.Scale = SMMx.Scale + Vector3.new(math.random(1,3)+2,math.random(1,3)+2,math.random(1,3)+2)
ax.Transparency = ax.Transparency +0.05
ax.CFrame = zs
Wait()
end
ax:Destroy()
end)()end end
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(1,1,1)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = cf
ax.Anchored = true
local SMMx do if SMM then
SMMx = Instance.new("SpecialMesh",ax)
SMMx.MeshId = SMM
SMMx.Scale = Vector3.new(1,1,1)
end end
coroutine.wrap(function()
for i = 1,20 do
if SMM then
SMMx.Scale = SMMx.Scale + Vector3.new(math.random(1,3)+2,math.random(1,3)+2,math.random(1,3)+2)
else
ax.Size = ax.Size + Vector3.new(math.random(1,3)+2,math.random(1,3)+2,math.random(1,3)+2)
end
ax.Transparency = ax.Transparency +0.05
ax.CFrame = cf
Wait()
end
ax:Destroy()
end)()end
local function SetHealth()
if RageMode then
Character.Humanoid.MaxHealth = 1250
delay(1,function()Character.Humanoid.Health = 1250 end)
else
Character.Humanoid.MaxHealth = 600
end end
local Prts = {}
H:findFirstChild("face").Texture = "http://www.roblox.com/asset/?id=135921683"
local Face,FaceTexture,IceTexture = H:findFirstChild("face"),H:findFirstChild("face").Texture,"http://www.roblox.com/asset/?id=135921715"
Cam,GuiTexture,_Mesh = Workspace.CurrentCamera,"",Instance.new("SpecialMesh")
Way = 0
local Trolling,ChosenColor,ChangeText,Descriptions = false
AttackState = "Melee"
Equipped,StopPower,StopTrail,StopRockTrail,StopSwordTrail,RageMode,RageWait,StopFlyTrail,StopJumpTrail = false,false,false,false,false,false,false,false,false
Debounces = {
IsHealing = false;
IsCharging = false;
Attacking = false;
Floating = false;
Shielding = false;
Flying = false}
local GripPos,RiseRate,HitDebounce,StanceGyro,Stance,rHandle,StcC = CFrame.new(0,0,0),1,false
function MediumParticleEmit(Object,Color)
coroutine.wrap(function()
while Wait(1.1)do
if not Object then break end
local p = Instance.new("Part",Object.Parent)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(0.01,0.01,0.01)
p.BrickColor = type(Color)== 'userdata' and Color or BrickColor.new(Color)
p.CFrame = Object.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
Wait()
end
p:Destroy()
end)()end end)()end
function Chat(Object,Text,Color)
local Color = type(Color)== 'string' and BrickColor.new(Color)or Color
pcall(function()Object:findFirstChild("AtlasText"):Destroy()end)
local G = Instance.new("BillboardGui",Object)
G.Name = "AtlasText"
G.Adornee = Object
G.Size = UDim2.new(3.5,0,2.5,0)
G.AlwaysOnTop = false
G.StudsOffset = Vector3.new(0,3,0)
local Txt = Instance.new("TextLabel",G)
Txt.Size = UDim2.new(1,0,1,0)
Txt.Text = Text
Txt.TextScaled = true
Txt.TextWrapped = false
Txt.Font = "SourceSansBold"
Txt.TextColor = Color
Txt.BackgroundTransparency = 1
Txt.ZIndex = 10
Game:GetService("Debris"):AddItem(G,3)
end
function MakeFloatMesh()
local s = Instance.new("Part",Character)
s.BrickColor = BrickColor.new("Institutional white")
s.Size = Vector3.new(5,5,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.Reflectance = 0.1
s.CFrame = T.CFrame * CFrame.new(0,-2,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(2,0.5,2)
local plat = Instance.new("Part",Character)
plat.Size = Vector3.new(5,1,5)
plat.Anchored = true
plat.Locked = true
plat.CanCollide = true
plat.Transparency = 1
plat.CFrame = T.CFrame * CFrame.new(0,-2,0)
coroutine.wrap(function()
for i = 1,10 do
sm.Scale = sm.Scale + Vector3.new(1,0.2,1)
s.Transparency = s.Transparency +0.1
s.CFrame = s.CFrame * CFrame.fromEulerAnglesXYZ(0,math.random(-6,6),0)
Wait()
end
plat:Destroy()
s:Destroy()
end)()end
function Tag(Humanoid)
local c = Instance.new("ObjectValue",Humanoid)
c.Value = Player
c.Name = "creator"
end
function Kill(Hit)
if pcall(function()
Tag(Hit.Parent.Humanoid)
Hit.Parent.Humanoid:TakeDamage(2400)
end)then
DamageGui("2400!!!!")
end end
function Damage(Vec,Object,Bool,Amt,DontDisplayDmg)
if Object.Parent:findFirstChild("AtlasRegistration")and Object.Parent.Name == Character.Name then return end
if Object.Parent == Character then return end
local Dmg,Humanoid = math.random(30,45),Object.Parent:findFirstChild("Humanoid")
if Bool then Dmg = math.random(15,25)end
if Amt then Dmg = Amt end
if Humanoid and not HitDebounce then
HitDebounce = true
if not RageMode then
if Humanoid.Health -Dmg <= 0 then Tag(Humanoid)end
Humanoid:TakeDamage(Dmg)
DamageGui(Dmg)
else
Kill(Object)
end
coroutine.wrap(function()
if DontDisplayDmg then return end
local Head = Object.Parent:findFirstChild("Head")
if not Head then return end
for i = 1,3 do
local clr = Color3.new(0,0,0)
local bg = Instance.new("BillboardGui",Object.Parent)
bg.Adornee = Head
bg.Size = UDim2.new(1,0,1,0)
bg.StudsOffset = Vector3.new(0,2,0)
local txt = Instance.new("TextLabel",bg)
txt.Size = UDim2.new(0.55,0,0.55,0)
txt.BackgroundTransparency = 1
txt.TextColor3 = clr
txt.TextTransparency = 1
txt.TextScaled = true
txt.Text = tostring(Dmg)
txt.TextWrapped = false
txt.Font = "SourceSansBold"
coroutine.wrap(function()
for i = 1,10 do
txt.TextTransparency = txt.TextTransparency -0.1
bg.StudsOffset = Vector3.new(0,i/2,0)
bg.Size = UDim2.new(bg.Size.X.Scale +i/6,0,bg.Size.Y.Scale +i/6,0)
clr = Color3.new(not Pr0mMode and clr.r +0.1 or 0,0,Pr0mMode and clr.b +0.1 or 0)
txt.TextColor3 = clr
Wait()
end
local d = false
coroutine.wrap(function()
while not d do
bg.StudsOffset = bg.StudsOffset + Vector3.new(0,0.1,0)
Wait()
end end)()
Wait(3)
d = true
for i = 1,11 do
bg.StudsOffset = bg.StudsOffset + Vector3.new(0,0.43,0)
clr = Color3.new(not Pr0mMode and clr.r -0.1 or 0,0,Pr0mMode and clr.b -0.1 or 0)
txt.TextColor3 = clr
bg.Size = UDim2.new(bg.Size.X.Scale -i/6,0,bg.Size.Y.Scale -i/6,0)
Wait()
if i >= 5 then
txt.TextTransparency = txt.TextTransparency +0.2
end end
bg:Destroy()
end)()
Wait()
end end)()
for i,v in pairs(Object.Parent:GetChildren())do
if v:IsA("BasePart")then
local BP = Instance.new("BodyForce",v)
BP.force = Vec.CFrame.lookVector *230
Game:GetService("Debris"):AddItem(BP,0.2)
end end
pcall(function()
Object.Parent:findFirstChild("Torso").RotVelocity = Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Object.Parent:findFirstChild("Torso").Velocity = Vector3.new(math.random(-100,100),math.random(-100,100),math.random(-100,100))
end)
Wait(0.1)
HitDebounce = false
end end
function CloneCharacter()
Character.Archivable = true
local Clone = Character:Clone()
Clone:findFirstChild("Atlas Sword"):Destroy()
for i,v in pairs(Clone:GetChildren())do
if v:IsA("BasePart")and v.Name == "Trail" then
v:Destroy()
end end
Character.Archivable = false
Clone.Parent = Workspace
Clone.Archivable = false
return Clone
end
function Direction()
if not Character then return{CFrame.new(0,0,0),CFrame.new(0,0,0)}end
return{CFrame.new(T.Position,Vector3.new(Cam.CoordinateFrame.x,T.Position.y,Cam.CoordinateFrame.z))* CFrame.fromEulerAnglesXYZ(0,math.pi,0),Vector3.new(Cam.CoordinateFrame.p.x,T.CFrame.p.y,Cam.CoordinateFrame.p.z)}
end
function FaceForward()
StanceGyro.cframe = Direction()[1]
return StanceGyro.cframe
end
function DamageNear(Pos,Mag,Dmg)
local Targets,HitAlready = {},{}
for i,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")and v ~= Character and v:findFirstChild("Humanoid")then
for _,x in pairs(v:GetChildren())do
if x:IsA("BasePart")then
if(Pos -x.Position).magnitude <= Mag then
table.insert(Targets,v)
end end end end end
for i,v in pairs(Targets)do
if not HitAlready[v.Name]then
ypcall(function()Damage(T,v.Torso,nil,Dmg,true)end)
HitAlready[v.Name]= true
end end end
function SwordTrail(Position,CF,Color)
coroutine.wrap(function()
local Old =(Position.CFrame *CF).p
while Wait()do
if StopSwordTrail then break end
local New =(Position.CFrame *CF).p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = Color
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
Wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()end
function FlyTrail(Position,CF)
coroutine.wrap(function()
local Old =(Position.CFrame *CF).p
while Wait(0.15)do
if StopFlyTrail then break end
local New =(Position.CFrame *CF).p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = Settings.Colors[2]
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
Wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()end
function JumpTrail(Position,CF)
coroutine.wrap(function()
local Old =(Position.CFrame *CF).p
while Wait()do
if StopJumpTrail then break end
for i,v in pairs(Debounces)do
if v then
StopJumpTrail = true
end end
local New =(Position.CFrame *CF).p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = not InternalMode and Settings.Colors[2]or BrickColor.new("Really black")
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
Wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()end
function UpperCutTrail(Position,CF,Color)
coroutine.wrap(function()
local st = false
delay(0.6,function()st = true end)
local Old =(Position.CFrame *CF).p
while Wait()do
if st then break end
local New =(Position.CFrame *CF).p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = Color
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
Wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()end
function Trail(Position,CF,Color)
coroutine.wrap(function()
local Old =(Position.CFrame *CF).p
while Wait()do
if StopTrail then break end
local New =(Position.CFrame *CF).p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = Color
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
Wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()end
function RockTrail(Position,CF,Color)
coroutine.wrap(function()
local Old =(Position.CFrame * CF).p
while Wait()do
if StopRockTrail then break end
local New =(Position.CFrame * CF).p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = Color
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1.5,1.5,1.5)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
Wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:Destroy()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()end
function TakeDamage(Humanoid,Amount)Humanoid:TakeDamage(Amount)end
function ChargePosition(Bool)
if Bool then
N.C0 = CFrame.new(0,1,0,-1,0,0,0,0,1,0,1,0)
N.C1 = CFrame.new(0,-0.5,0,-1,0,0,0,0,1,0,1,0)
RS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)
RS.C1 = CFrame.new(-0.5,0.5,0,0,0,1,0,1,0,-1,0,0)
LS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)
LS.C1 = CFrame.new(0.5,0.5,0,0,0,-1,0,1,0,1,0,0)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)
RH.C1 = CFrame.new(0.5,1,0,0,0,1,0,1,0,-1,0,0)
LH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)
LH.C1 = CFrame.new(-0.5,1,0,0,0,-1,0,1,0,1,0,0)
for i = 1,2 do
RS.C0 = RS.C0 * CFrame.new(0.01,0,0.25)* CFrame.Angles(-(i-0.5),0,0)
LS.C0 = LS.C0 * CFrame.new(0.01,0,0.25)* CFrame.Angles(-(i-0.5),0,0)
RH.C0 = RH.C0 * CFrame.new(0,0.015,0)* CFrame.Angles(-(i-1.4),0,0)
LH.C0 = LH.C0 * CFrame.new(0,0.015,0)* CFrame.Angles(-(i-1.4),0,0)
Wait()
end else
N.C0 = CFrame.new(0,1,0,-1,0,0,0,0,1,0,1,0)
N.C1 = CFrame.new(0,-0.5,0,-1,0,0,0,0,1,0,1,0)
RS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)
RS.C1 = CFrame.new(-0.5,0.5,0,0,0,1,0,1,0,-1,0,0)
LS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)
LS.C1 = CFrame.new(0.5,0.5,0,0,0,-1,0,1,0,1,0,0)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)
RH.C1 = CFrame.new(0.5,1,0,0,0,1,0,1,0,-1,0,0)
LH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)
LH.C1 = CFrame.new(-0.5,1,0,0,0,-1,0,1,0,1,0,0)
end end
function Charge(Color,Bool)
Stance = "Charging"
Character.Humanoid.WalkSpeed = 0
local l = T:findFirstChild("ChargeLight")or Instance.new("PointLight",T)
l.Name = "ChargeLight"
l.Color = Color.Color
l.Range = Way == 1 and l.Range -1 or l.Range +1
if l.Range == 60 then Way = 1 elseif l.Range == 0 then Way = 0 end
if Bool then
coroutine.wrap(function()
ChargeRot = ChargeRot ~= 360 and ChargeRot +1 or 0
for i,v in pairs(ChargeMatrix)do
if v.Parent ~= Character then v.Parent = Character end
if v.BrickColor ~= Color then v.BrickColor = Color end
v.CFrame = CFrame.new(T.Position)
* CFrame.Angles(0,math.rad((i* 360/#ChargeMatrix)+ChargeRot),0)
* CFrame.new(0,0,-30)
* CFrame.Angles(0,0,math.rad(63))
end end)()
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.formFactor = "Custom"
p.Anchored = true
p.CanCollide = false
p.BrickColor = math.random(1,2)%2 == 1 and Settings.Colors[1]or Color
p.Transparency = 0.5
p.Size = Vector3.new(1,1,1)
p.CFrame = T.CFrame * CFrame.new(0,-3,0)* CFrame.Angles(0,math.rad(math.random(-45,45)),0)
local ms = Instance.new("BlockMesh",p)
ms.Scale = Vector3.new(1,1,1)
local m = Instance.new("SpecialMesh",p)
m.Scale = Vector3.new(1,1,1)
m.MeshType = "FileMesh"
m.MeshId = ChargeRot %2 == 1 and "http://www.roblox.com/asset/?id=20329976" or "http://www.roblox.com/asset/?id=1323306"
coroutine.wrap(function()
for i = 0,3,0.2 do
Wait()
m.Scale = m.Scale + Vector3.new(i,i/2,i)
end
coroutine.wrap(function()
for i = 1,5 do
Wait()
p.Transparency = p.Transparency -0.1
end
p:Destroy()
end)()end)()end)()
return
end
local s = Instance.new("Part",Character)
s.BrickColor = Color
s.Size = Vector3.new(5,5,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.CFrame = T.CFrame * CFrame.new(0,-2,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for i = 1,10 do
sm.Scale = sm.Scale + Vector3.new(1,1,1)
s.Transparency = s.Transparency +0.1
s.CFrame = s.CFrame * CFrame.fromEulerAnglesXYZ(0,math.random(-6,6),0)
Wait()
end
s:Destroy()
end)()end
local Clones = {}
function ParticleEmit(Object,Color,Duration)
local Counter = 0
coroutine.wrap(function()
while Wait(0.3)do
if Counter == Duration then break end
local p = Instance.new("Part",Object.Parent)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(0.01,0.01,0.01)
p.BrickColor = type(Color)== 'userdata' and Color or BrickColor.new(Color)
p.CFrame = Object.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
Wait()
end
p:Destroy()
end)()end end)()
if Durration == math.huge then return end
coroutine.wrap(function()
while Wait(1)do
Counter = Counter +1
if Counter == Duration then
break
end end end)()end
function SlowParticleEmit(Object,Color)
coroutine.wrap(function()
while Wait(3.2)do
if not Object then break end
local p = Instance.new("Part",Object.Parent)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(0.01,0.01,0.01)
p.BrickColor = RageMode and(Pr0mMode and BrickColor.new("Navy blue")or BrickColor.new("Really red"))or type(Color)== 'userdata' and Color or BrickColor.new(Color)
p.CFrame = Object.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
Wait()
end
p:Destroy()
end)()end end)()end
function IsNear(Position,Distance,SinglePlayer)
if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
local List = {}
for i,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")then
if v:findFirstChild("Torso")then
if v ~= Character then
if(v.Torso.CFrame.p -Position).magnitude < Distance then
table.insert(List,v)
end end end end end
return List
end
local GetUpDebounce = false
GlobalKeys = {
[59]= function()
-- 0x01
end;
[32]= function()
-- Removed because of error
end;
h = function(Mouse)
if RageMode then return end
if Power <= 0 then return end
if Debounces.IsHealing or Debounces.IsCharging or Debounces.Attacking or Debounces.Shielding or Debounces.Flying then return end
Debounces.IsHealing = true
Stance = "Null"
Wait(1/30)
ChargePosition(true)
local BreakLoop,x = false;x = Mouse.KeyUp:connect(function(k)
if k == 'h' then
BreakLoop = true
x:disconnect()
end end)
while Wait(0.2)do
if Power <= 0 then break end
if Character.Humanoid.Health == Character.Humanoid.MaxHealth then break end
if BreakLoop then break end
Character.Humanoid.Health = Character.Humanoid.Health +15
Power = Power -1000
Charge(BrickColor.new("Lime green"),true)
Stance = "Null"
end
for i,v in pairs(ChargeMatrix)do v.Parent = nil end
Character.Humanoid.WalkSpeed = 45
pcall(function()T:findFirstChild("ChargeLight"):Destroy()end)
ChargePosition(false)
Stance = "Standing"
Debounces.IsHealing = false
end;
c = function(Mouse)
if RageMode then return end
if Debounces.IsHealing or Debounces.IsCharging or Debounces.Attacking or Debounces.Shielding or Debounces.Flying then return end
Debounces.IsCharging = true
Stance = "Null"
Wait(1/30)
ChargePosition(true)
local BreakLoop,x = false;x = Mouse.KeyUp:connect(function(k)
if k == 'c' then
BreakLoop = true
x:disconnect()
end end)
while Wait(0.1)do
if Power == 26000 then break end
if BreakLoop then break end
if Power > 26000 then Power = 26000 break end
Power = Power +250
Charge(Settings.Colors[2],true)
Stance = "Null"
end
for i,v in pairs(ChargeMatrix)do v.Parent = nil end
Character.Humanoid.WalkSpeed = 45
ChargePosition(false)
Stance = "Standing"
Debounces.IsCharging = false
pcall(function()
T:findFirstChild("ChargeLight"):Destroy()
end)end;
b = function()
if Power <= 0 then return end
if Power -1200 <= 0 then return end
if Debounces.IsHealing or Debounces.IsCharging or Debounces.Attacking or Debounces.Shielding or Debounces.Flying then return end
Debounces.Attacking = true
Power = Power -1200
for x,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
if v.Name:find("Arm")or v.Name:find("Head")or v.Name:find("Torso")or v.Name:find("Leg")then
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.Transparency = 0.5
p.BrickColor = BrickColor.new("Institutional white")
p.Size = v.Size
p.CFrame = v.CFrame
coroutine.wrap(function()
for i = 1,5 do
p.Transparency = p.Transparency +0.1
Wait(0.2)
end
p:Destroy()
end)()end end end
StopTrail = false
for i = 1,6 do
coroutine.wrap(function()
for l,v in pairs(IsNear(T.Position,65))do
pcall(function()v.Torso.CFrame = v.Torso.CFrame * CFrame.new(0,2,0)end)
pcall(function()v.Humanoid.PlatformStand = true end)
for n,x in pairs(v:GetChildren())do
if x:IsA("BasePart")then
local bf = Instance.new("BodyForce",x)
bf.force = T.CFrame.lookVector *-350
Game:GetService("Debris"):AddItem(bf,0.26)
end end end end)()
ShakeCam(0.2)
FaceForward()
T.CFrame = T.CFrame * CFrame.new(0,0,-45)
for x,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
if v.Name:find("Arm")or v.Name:find("Head")or v.Name:find("Torso")or v.Name:find("Leg")then
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.Transparency = 0.5
p.BrickColor = BrickColor.new("Institutional white")
p.Size = v.Size
p.CFrame = v.CFrame
coroutine.wrap(function()
for i = 1,5 do
p.Transparency = p.Transparency +0.1
Wait(0.2)
end
p:Destroy()
end)()end end end
local s = Instance.new("Part",Character)
s.BrickColor = i == 1 and BrickColor.new("Really black")or BrickColor.new("Institutional white")
s.Size = Vector3.new(5,1,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.CFrame = T.CFrame * CFrame.new(0,2.5,2)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for x = 1,10 do
s.Transparency = s.Transparency + 0.1
sm.Scale = sm.Scale + Vector3.new(3,0.6,3)
s.CFrame = s.CFrame * CFrame.new(0,0,1)
Wait()
end
s:Destroy()
end)()
Wait()
end
for x,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
if v.Name:find("Arm")or v.Name:find("Head")or v.Name:find("Torso")or v.Name:find("Leg")then
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.Transparency = 0.5
p.BrickColor = BrickColor.new("Institutional white")
p.Size = v.Size
p.CFrame = v.CFrame
coroutine.wrap(function()
for i = 1,5 do
p.Transparency = p.Transparency +0.1
Wait(0.2)
end
p:Destroy()
end)()end end end
T.CFrame = T.CFrame * CFrame.new(0,0,-10)
StopTrail = true
Wait(0.02)
Debounces.Attacking = false
end;
n = function(Mouse)if Debounces.Flying then return end Debounces.Floating = not Debounces.Floating end;
t = function(_Mouse,CxF,Bypass)
if not _Mouse.Target then return end
if not Bypass then if Debounces.Attacking or Debounces.Shielding then return end end
if Power -500 >= 0 then
Power = Power -500
Debounces.Attacking = true
for x,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
if v.Name:find("Arm")or v.Name:find("Head")or v.Name:find("Torso")or v.Name:find("Leg")then
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.Transparency = 0.5
p.BrickColor = BrickColor.new("Institutional white")
p.Size = v.Size
p.CFrame = v.CFrame
coroutine.wrap(function()
for i = 1,5 do
p.Transparency = p.Transparency +0.1
Wait(0.2)
end
p:Destroy()
end)()end end end
local CF = Bypess and CxF or _Mouse.Hit
local s = Instance.new("Part",Character)
s.BrickColor = i == 1 and BrickColor.new("Really black")or BrickColor.new("Institutional white")
s.Size = Vector3.new(5,1,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.CFrame = T.CFrame * CFrame.new(0,2.5,2)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for x = 1,10 do
s.Transparency = s.Transparency + 0.1
sm.Scale = sm.Scale + Vector3.new(3,0.6,3)
s.CFrame = s.CFrame * CFrame.new(0,0,1)
Wait()
end
s:Destroy()
end)()
for i = 1,3 do
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.formFactor = "Custom"
p.Anchored = true
p.CanCollide = false
p.BrickColor = math.random(1,2)%2 == 1 and Settings.Colors[1]or BrickColor.new("Institutional white")
p.Transparency = 0.5
p.Size = Vector3.new(1,1,1)
p.CFrame = CF * CFrame.new(0,-2,0)* CFrame.Angles(0,math.rad(math.random(-45,45)),0)
local ms = Instance.new("BlockMesh",p)
ms.Scale = Vector3.new(1,1,1)
local m = Instance.new("SpecialMesh",p)
m.Scale = Vector3.new(1,1,1)
m.MeshType = "FileMesh"
m.MeshId = "http://www.roblox.com/asset/?id=20329976"
coroutine.wrap(function()
for i = 0,3,0.2 do
Wait()
m.Scale = m.Scale + Vector3.new(i,i/2,i)
end
coroutine.wrap(function()
for i = 1,5 do
Wait()
p.Transparency = p.Transparency -0.1
end
p:Destroy()
end)()end)()Wait(0.1)end
T.CFrame = CF * CFrame.new(0,2,0)
Debounces.Attacking = false
end end;
q = function()Debounces.Flying = not Debounces.Flying end;
v = function()
if Trolling then return end
Trolling = true
local Taunts = {"uMaD bR0?","Do you even lift?","l0l","LeL","lawl","laol","lael","You seem quite mad.","Mad?"}
Chat(H,Taunts[math.random(1,#Taunts)],Settings.Colors[2])
local bg = Instance.new("BillboardGui",Character)
bg.Adornee = H
bg.Size = UDim2.new(2.2,0,2.2,0)
bg.AlwaysOnTop = true
local Img = Instance.new("ImageLabel",bg)
Img.Size = UDim2.new(1,0,1,0)
Img.Image = "http://www.roblox.com/asset/?id=38353935"
Img.BackgroundTransparency = 1
delay(3,function()
Trolling = false
bg:Destroy()
end)end;
m = function()
if Power -1000 < 0 then return end
if GetUpDebounce then return end
GetUpDebounce = true
Power = Power -1000
delay(5,function()GetUpDebounce = false end)
Chat(H,"Get the "..ByteToStr({422,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,447,437,447,447,419,447,427},320).." up.","Really red")
local Targets,Blocking = {},true
for i,v in pairs(IsNear(T.Position,80))do
for _,x in pairs(v:GetChildren())do
if x:IsA("Humanoid")then
coroutine.wrap(function()
while Wait()do
if not Blocking then
x.PlatformStand = false
break end
x.PlatformStand = true
end end)()end end
table.insert(Targets,v)
end
Wait(0.2)
local BodyPositions = {}
for i,v in pairs(Targets)do
local h = v:findFirstChild("Humanoid")
if not h then return end
if h and h.Health > 0 then
for _,x in pairs(v:GetChildren())do
if x:IsA("BasePart")then
local bp = Instance.new("BodyPosition",x)
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.P = 1500
bp.position = CFrame.new(x.Position).p + Vector3.new(0,10,0)
table.insert(BodyPositions,bp)
end end end end
Wait(4)
for i,v in pairs(BodyPositions)do
pcall(function()
v:Destroy()
end)end
Blocking = false
end;
p = function()
for i,v in pairs(Debounces)do
if v then
return
end end
if Power -1500 < 0 then return end
Chat(H,"Out of my way!","Really red")
local Targets,Blocking = {},true
for i,v in pairs(IsNear(T.Position,45))do table.insert(Targets,v)end
if #Targets < 1 then return end
Debounces.Attacking = true
Power = Power -1500
for i,v in pairs(Targets)do
for _,x in pairs(v:GetChildren())do
if x:IsA("Humanoid")then
coroutine.wrap(function()
while Wait()do
if not Blocking then break end
x.PlatformStand = true
end end)()
elseif x.Name == "Torso" and x:IsA("BasePart")then
coroutine.wrap(function()
while Wait(0.2)do
if not Blocking then break end
Effect2(x,4,4,4,0,0,0,Settings.Colors[1])
end end)()end end end
Wait(0.2)
local BodyPositions = {}
for i,v in pairs(Targets)do
local h = v:findFirstChild("Humanoid")
if not h then return end
if h and h.Health > 0 then
for _,x in pairs(v:GetChildren())do
if x:IsA("BasePart")then
local bp = Instance.new("BodyPosition",x)
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.P = 1500
bp.position = CFrame.new(x.Position).p + Vector3.new(0,10,0)
table.insert(BodyPositions,bp)
end end end end
for i,v in pairs(Targets)do ypcall(function()Damage(T,v.Torso,true,15)end)end
local ss = {}
for i = 1,#BodyPositions do
local bf = Instance.new("BodyForce",BodyPositions[i].Parent)
bf.force = T.CFrame.lookVector *3400
table.insert(ss,bf)
BodyPositions[i]:Destroy()
end
delay(0.1,function()for i,v in pairs(Targets)do ypcall(function()Damage(T,v.Torso,true,15)end)end end)
Wait(0.16)
for i,v in pairs(ss)do pcall(function()v:Destroy()end)end
Debounces.Attacking = false
Blocking = false
end;
}
KeyBindings = {
u = function(Mouse)
for i,v in pairs(Debounces)do if v then return end end
if Power -12000 < 0 then return end
Power = Power -12000
Debounces.Attacking = true
Chat(H,"Release the hounds...",BrickColor.new("Really red"))

Stance = "Standing"
Debounces.Attacking = false
end;
x = function(Mouse)
for i,v in pairs(Debounces)do if v then return end end
if Power -12000 < 0 then return end
Power = Power -12000
Debounces.Attacking = true
Stance = "Null"
ChargePosition(true)
for i,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = true
end end
StopPower = true
coroutine.wrap(function()local inc = 0 for i = 1,25 do inc = inc +0.2 Effect2(rHandle,inc,inc,inc,0,0,0,Settings.Colors[2])Charge(Settings.Colors[1],true)Wait(0.1)end end)()
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.formFactor = "Custom"
p.Anchored = true
p.CanCollide = false
p.BrickColor = Settings.Colors[2]
p.Transparency = 0.5
p.Size = Vector3.new(1,1,1)
p.CFrame = rHandle.CFrame
coroutine.wrap(function()for i = 1,54 do
p.Size = p.Size + Vector3.new(0.006,0.006,0.006)
p.CFrame = rHandle.CFrame
p.Transparency = i/54
Wait()
end end)()
-- 0x02
Wait(6)

StopPower = false
Stance = "Standing"
Debounces.Attacking = false
end;
g = function()PoisonMode = not PoisonMode end;
l = function(Mouse)
if Power <= 0 then return end
if Debounces.IsHealing or Debounces.IsCharging or Debounces.Attacking or Debounces.Shielding or Debounces.Flying then return end
if AttackState ~= "Laser" then AttackState = "Laser" else AttackState = "Melee" end
Debounces.Attacking = true
Stance = "Lasering"
local BreakLoop,x = false;x = Mouse.KeyUp:connect(function(k)
if k == "l" then
BreakLoop = true
x:disconnect()
end end)
local gp
coroutine.wrap(function()
while Wait()do
if BreakLoop then break end
if Stance ~= "Lasering" then break end
if Power <= 0 then break end
gp = Character:findFirstChild("GeneratedParts")or Instance.new("Model",Character);gp.Name = "GeneratedParts";gp.Archivable = true
local _Ray = Ray.new(rHandle.CFrame.p,(Mouse.Hit ~= nil and Mouse.Hit.p or Vector3.new(0,0,0)- rHandle.CFrame.p).unit *900)
local Hit,Pos = Workspace:FindPartOnRay(_Ray,Character)
local Distance =(Mouse.Hit.p -rHandle.CFrame.p).magnitude
local RayPart = gp:findFirstChild("AtlasLaser")or Instance.new("Part",gp)
RayPart.Name = "AtlasLaser"
RayPart.BrickColor = Settings.Colors[math.random(1,2)]
RayPart.Reflectance = 0.3
RayPart.CanCollide = false
RayPart.Anchored = true
RayPart.Locked = true
RayPart.formFactor = "Custom"
RayPart.Size = Vector3.new(0.1,0.1,Distance)
RayPart.CFrame = CFrame.new(Mouse.Hit.p,rHandle.CFrame.p)* CFrame.new(0,0,-Distance/2)
RayPart.Touched:connect(function(Hit_)
if Hit_.Parent ~= Character then
local H = Hit_.Parent:findFirstChild("Humanoid")
if H then TakeDamage(H,2)end
end end)
local cf = Mouse.Hit
local hp = Instance.new("Part",gp)
hp.Size = Vector3.new(1,1,1)
hp.Anchored = true
hp.Locked = true
hp.CanCollide = false
hp.BrickColor = RayPart.BrickColor
hp.TopSurface = 0
hp.BottomSurface = 0
hp.CFrame = cf
coroutine.wrap(function()
for i = 1,3 do
hp.Size = hp.Size + Vector3.new(2,2,2)
hp.Transparency = hp.Transparency +0.2
hp.CFrame = cf * CFrame.fromEulerAnglesXYZ(math.random(-6,6),math.random(-6,6),math.random(-6,6))
Wait(0.2)
end
hp:Destroy()
end)()
Power = Power -40
end
pcall(function()gp:Destroy()end)
Debounces.Attacking = false
Stance = "Standing"
end)()end;
y = function(Mouse)
if #Clones >= 5 then return end
if Debounces.IsCharging or Debounces.IsHealing or Debounces.Shielding or Debounces.Attacking or Debounces.Flying then return end
if Power -26000 >= 0 then
Power = Power -26000
StopPower = true
local x = Instance.new("Animation",Tool)
x.AnimationId = "http://www.roblox.com/asset/?id=128853357"
local anim = Character.Humanoid:LoadAnimation(x)
anim:Play()
for i = 1,5 do
Effect2(LA,i/2,i/2,i/2,0,-0.8,0,T.BrickColor,tonumber("0."..i))
Wait(0.2)
end
Wait(0.2)
local Clone = CloneCharacter()
for i,v in pairs(Clone:GetChildren())do
if v:IsA("BasePart")then
v.Touched:connect(function(Hit)
if Hit.Parent ~= Character and Hit.Parent ~= Workspace and Hit.Parent:findFirstChild("Humanoid")and Hit.Parent ~= Clone then
ParticleEmit(Hit,"Really red",2)
Kill(Hit)
end end)end end
Clone.Humanoid.WalkSpeed = 0
StopPower = false
Clone.Torso.CFrame = LA.CFrame * CFrame.new(0,-2,-2)
local con;con = Mouse.Button1Down:connect(function()
if not Clone then con:disconnect()return end
pcall(function()Clone.Torso.CFrame = Mouse.Hit * CFrame.new(0,10,0)end)
end)
local Registration = Instance.new("IntValue",Clone)
Registration.Name = "AtlasRegistered"
local ID = Instance.new("IntValue",Clone)
ID.Name = "IndexNumber"
ID.Value = #Clones == 0 and 1 or #Clones +1
Clones[#Clones == 0 and 1 or #Clones +1]= Clone
local Timer = 0
coroutine.wrap(function()
while Wait(1)do
if Timer == 15 then break end
Timer = Timer +1
end end)()
coroutine.wrap(function()
while Wait()do
if Timer == 15 then
Clones[Clone:findFirstChild("IndexNumber").Value]= nil
for i,v in pairs(Clone:GetChildren())do
if v:IsA("BasePart")then
coroutine.wrap(function()
for x = 1,10 do
v.Transparency = v.Transparency +0.1
Wait()
end end)()end end
delay(10 *(1/30),function()Clone:Destroy()end)
break
end end end)()end end;
r = function()
if Pr0mMode then
if not RageMode then
if RageWait then return end
RageMode = true
RageWait = true
SetHealth()
Chat(H,"Tundra!","Navy blue")
GuiTexture = IceTexture
_Mesh.TextureId = "http://www.roblox.com/asset/?id=135974753"
LA.Anchored = true
RA.Anchored = true
LL.Anchored = true
RL.Anchored = true
T.Anchored = true
local s = Instance.new("Part",Character)
s.Anchored = true
s.TopSurface = 0
s.BottomSurface = 0
s.Locked = true
s.Transparency = 1
s.CanCollide = false
s.Shape = "Ball"
s.Reflectance = 0
s.BrickColor = BrickColor.new("Navy blue")
s.CFrame = T.CFrame
coroutine.wrap(function()
for i = 1,5 do
s.Size = s.Size + Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency -0.2
Wait()
end
Wait(0.1)
s.BrickColor = BrickColor.new("Really black")
for i = 1,10 do
s.Size = s.Size - Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency +0.1
Wait()
end
s:Destroy()
end)()
local l = Instance.new("PointLight",s)
l.Color = s.Color
l.Range = 60
local f = Instance.new("Part",Character)
f.BrickColor = BrickColor.new("Navy blue")
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = T.CFrame * CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(4,4,4)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(2,2,2)
Wait()
end
f:Destroy()
end)()
delay(1,function()
LA.Anchored = false
RA.Anchored = false
LL.Anchored = false
RL.Anchored = false
T.Anchored = false
end)
delay(4 *60,function()RageWait = false end)
else
RageMode = false
GuiTexture = ""
SetHealth()
Chat(H,"Ugh!","Navy blue")
_Mesh.TextureId = "http://www.roblox.com/asset/?id=135974538"
LA.Anchored = true
RA.Anchored = true
LL.Anchored = true
RL.Anchored = true
T.Anchored = true
local s = Instance.new("Part",Character)
s.Anchored = true
s.TopSurface = 0
s.BottomSurface = 0
s.Locked = true
s.Transparency = 1
s.CanCollide = false
s.Shape = "Ball"
s.Reflectance = 0
s.BrickColor = BrickColor.new("Navy blue")
s.CFrame = T.CFrame
coroutine.wrap(function()
for i = 1,5 do
s.Size = s.Size + Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency -0.2
Wait()
end
Wait(0.1)
s.BrickColor = BrickColor.new("Really black")
for i = 1,10 do
s.Size = s.Size - Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency +0.1
Wait()
end
s:Destroy()
end)()
local l = Instance.new("PointLight",s)
l.Color = s.Color
l.Range = 60
local f = Instance.new("Part",Character)
f.BrickColor = BrickColor.new("Navy blue")
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = T.CFrame * CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(4,4,4)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(2,2,2)
Wait()
end
f:Destroy()
end)()
delay(1,function()
LA.Anchored = false
RA.Anchored = false
LL.Anchored = false
RL.Anchored = false
T.Anchored = false
end)end elseif not Pr0mMode then
if RageMode then
RageMode = false
SetHealth()
local Sayings = {"Ugh...","That was fun!"}
ypcall(function()
local sg = PlayerGui:findFirstChild("RedTintAtlas"):findFirstChild("Frame")
coroutine.wrap(function()
for i = 35,1,1 do
sg.BackgroundColor3 = Color3.new(i/35,0,0)
sg.BackgroundTransparency = sg.BackgroundTransparency +0.01
Wait()
end end)()
sg.Parent:Destroy()
end)
Chat(H,Sayings[math.random(1,#Sayings)],"Really black")
Face.Texture = FaceTexture
GuiTexture = ""
LA.Anchored = true
RA.Anchored = true
LL.Anchored = true
RL.Anchored = true
T.Anchored = true
local s = Instance.new("Part",Character)
s.Anchored = true
s.TopSurface = 0
s.BottomSurface = 0
s.Locked = true
s.Transparency = 1
s.CanCollide = false
s.Shape = "Ball"
s.Reflectance = 0
s.BrickColor = Settings.Colors[2]
s.CFrame = T.CFrame
coroutine.wrap(function()
for i = 1,5 do
s.Size = s.Size + Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency -0.2
Wait()
end
Wait(0.1)
s.BrickColor = BrickColor.new("Really black")
for i = 1,10 do
s.Size = s.Size - Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency +0.1
Wait()
end
s:Destroy()
end)()
local l = Instance.new("PointLight",s)
l.Color = s.Color
l.Range = 60
local f = Instance.new("Part",Character)
f.BrickColor = Settings.Colors[2]
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = T.CFrame * CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(4,4,4)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(2,2,2)
Wait()
end
f:Destroy()
end)()
delay(1,function()
LA.Anchored = false
RA.Anchored = false
LL.Anchored = false
RL.Anchored = false
T.Anchored = false
end)else
if RageWait then return end
RageWait = true
RageMode = true
SetHealth()
local Sayings = {"Rage!","Can't stop me now!"}
Face.Texture = "http://www.roblox.com/asset/?id=135921702"
GuiTexture = "http://www.roblox.com/asset/?id=136241211"
Chat(H,Sayings[math.random(1,#Sayings)],"Really black")
local s = Instance.new("ScreenGui",PlayerGui)
s.Name = "RedTintAtlas"
local sg = Instance.new("Frame",s)
sg.ZIndex = 10
sg.BackgroundTransparency = 1
sg.BackgroundColor3 = Color3.new(1,0,0)
sg.Size = UDim2.new(1,0,1,0)
sg.BorderSizePixel = 0
coroutine.wrap(function()
for i = 1,35 do
sg.BackgroundTransparency = sg.BackgroundTransparency -0.01
Wait()
end end)()
LA.Anchored = true
RA.Anchored = true
LL.Anchored = true
RL.Anchored = true
T.Anchored = true
local s = Instance.new("Part",Character)
s.Anchored = true
s.TopSurface = 0
s.BottomSurface = 0
s.Locked = true
s.Transparency = 1
s.CanCollide = false
s.Shape = "Ball"
s.Reflectance = 0
s.BrickColor = Settings.Colors[1]
s.CFrame = T.CFrame
coroutine.wrap(function()
for i = 1,5 do
s.Size = s.Size + Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency -0.2
Wait()
end
Wait(0.1)
s.BrickColor = BrickColor.new("Really red")
for i = 1,10 do
s.Size = s.Size - Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency +0.1
Wait()
end
s:Destroy()
end)()
local l = Instance.new("PointLight",s)
l.Color = s.Color
l.Range = 60
local f = Instance.new("Part",Character)
f.BrickColor = Settings.Colors[1]
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = T.CFrame * CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(4,4,4)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(2,2,2)
Wait()
end
f:Destroy()
end)()
delay(1,function()
LA.Anchored = false
RA.Anchored = false
LL.Anchored = false
RL.Anchored = false
T.Anchored = false
end)
delay(4 *60,function()RageWait = false end)
end end end;
k = function()
if Power -26000 < 0 then return end
for i,v in pairs(Debounces)do
if v then
return
end end
if Character.Humanoid.Health -300 < 0 then return end
Character.Humanoid:TakeDamage(300)
Power = Power -26000
Chat(H,"Welcome to hell...","Really red")
local a,b = Game.Lighting.Ambient,Game.Lighting.Brightness
Game.Lighting.Brightness = 0
Game.Lighting.Ambient = Color3.new(1,0,1)
Wait(0.02)
Game.Lighting.Ambient = Color3.new(1,0,0)
Game.Lighting.Brightness = 10000
Wait(0.23)
delay(0.5,function()Game.Lighting.Ambient = a end)
Game.Lighting.Brightness = b


end;

}
function Effect2(part,x1,y1,z1,x2,y2,z2,color,ref)
if part:IsDescendantOf(Workspace)then
local S = Instance.new("Part", Character)
S.FormFactor = 0
S.Size = Vector3.new(1,1,1)
S.BrickColor = color
S.Reflectance = ref or 0
S.TopSurface = 0
S.BottomSurface = 0
S.Transparency = 0.5
S.Anchored = true
S.CanCollide = false
S.CFrame = part.CFrame *CFrame.new(x2,y2,z2)* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2 = Instance.new("BlockMesh",S)
msh2.Scale = Vector3.new(x1,y1,z1)
coroutine.wrap(function()
for i = 1,9 do msh2.Scale = msh2.Scale + Vector3.new(0.1,0.1,0.1)
S.CFrame = S.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
S.Transparency = i *0.1
Wait()
end
S:Destroy()
end)()end end
local function EmberWave(CF,Color)
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.CFrame = CF
p.Transparency = 1
coroutine.wrap(function()
local x = CFrame.new(math.random(-6,6),math.abs(math.random(-6,6)),math.random(-6,6))
for i = 1,30 do
p.CFrame = p.CFrame *x
x = CFrame.new(math.random(-6,6),math.abs(math.random(-6,6)),math.random(-6,6))
Effect2(p,2.6,2.6,2.6,0,0,0,Color,0.3)
Wait(0.1)
end
p:Destroy()
end)()end
local function AbsVector(V)return Vector3.new(math.abs(V.X),math.abs(V.Y),math.abs(V.Z))end
NonSwordKeys = {

u = function(Mouse)
for i,v in pairs(Debounces)do if v then return end end
if Power -26000 < 0 then return end
Power = Power -26000
local Ended,End = false
Debounces.Attacking = true
Stance = "Null"
StopPower = true
local bv = Instance.new("BodyVelocity",T)
bv.Name = "FlyVelocityVector"
bv.maxForce = Vector3.new(0,math.huge,0)
bv.velocity = Vector3.new(0,0,0)
local bg = Instance.new("BodyGyro",T)
bg.Name = "FlyGyro"
bg.maxTorque = Vector3.new(0,0,0)
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bg.maxTorque = Vector3.new(9000,9000,9000)
bg.cframe = CFrame.new(T.Position,Mouse.Hit.p)* CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
bv.velocity = CFrame.new(T.Position,Mouse.Hit.p).lookVector *200
local MouseMoveConnection = Mouse.Move:connect(function()
bg.maxTorque = Vector3.new(9000,9000,9000)
bg.cframe = CFrame.new(T.Position,Mouse.Hit.p)* CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
bv.velocity = CFrame.new(T.Position,Mouse.Hit.p).lookVector *200
end)
local Tries,Connections,Grabbed = 0,{}
local function Touched(Hit)
if Hit.Parent ~= Character then
if Hit.Parent:findFirstChild("Humanoid")and Hit.Parent:findFirstChild("Humanoid").Health > 0 then
Grabbed = Hit.Parent:findFirstChild("Torso")
for i,v in pairs(Connections)do
v:disconnect()
end
pcall(function()MouseMoveConnection:disconnect()bg:Destroy()bv:Destroy()end)
coroutine.wrap(function()
print'got'
end)()end end end
table.foreach(Character:GetChildren(),function(_,v)if v:IsA("BasePart")then table.insert(Connections,v.Touched:connect(Touched))end end)
while Wait()do
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = LA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
if(not Grabbed and Tries == 2)or Grabbed then break end
Tries = Tries +1
end
End = function()
Ended = true
pcall(function()MouseMoveConnection:disconnect()bg:Destroy()bv:Destroy()end)
StopPower = false
Stance = "Standing"
Debounces.Attacking = false
end
if not Grabbed and not Ended then End()return end
pcall(function()MouseMoveConnection:disconnect()bg:Destroy()bv:Destroy()end)
print(Grabbed and "GAWTCHA" or "Missed")
local _ax,axx = true,true
coroutine.wrap(function()
while Wait()do
if axx then
Grabbed.CFrame = RA.CFrame * CFrame.new(0,-1,0)* CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi,0)
end if not _ax then break end
Wait()
end end)()
local Taunts = {"Out of my sight!","You'll end up just like Luna."}
table.insert(Taunts,ByteToStr({6385,6380,6333,6385,6373,6370,6333,6378,6380,6380,6379,6333,6378,6380,6385,6373,6370,6383,6371,6428,6386,6428,6368,6428,6428,6376,6428,6370,6428,6383,6428,6428,6334},6301))
Chat(H,Taunts[math.random(1,#Taunts)],BrickColor.new("Really red"))
_ax = false
Wait(0.6)
_ax = true
coroutine.wrap(function()
while Wait()do
if axx then
Grabbed.CFrame = RL.CFrame * CFrame.new(0,0,-1)* CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi,0)
end if not _ax then break end
Wait()
end end)()
StopTrail = false
Implode(RL.CFrame * CFrame.new(0,-1,-1),Settings.Colors[2])
Wait(0.6)
_ax = false
T.CFrame = CFrame.new(T.CFrame.p,RL.Position + Vector3.new(0,1000,2000))
local Bx = Instance.new("BodyPosition",Grabbed)
Bx.P = 600
Bx.maxForce = Vector3.new(500000,500000,500000)*50000000
Bx.position = RL.Position + Vector3.new(0,1000,2000)
Trail(Grabbed,CFrame.new(0,0,0),BrickColor.new("Really red"))
local Colors = {"Really red","Orange","New Yeller"}
local dn = true
coroutine.wrap(function()
while Wait(0.1)do
if not dn then break end
Effect2(Grabbed,Grabbed.Size.y *2,Grabbed.Size.y *2,Grabbed.Size.y *2,0,0,0,BrickColor.new(Colors[math.random(1,#Colors)]),0.32)
end end)()
delay(1,function()
dn = false
StopTrail = true
Implode(T.CFrame * CFrame.new(0,0,0),Settings.Colors[2])
Kill(Grabbed)
Explode(Grabbed.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),Settings.Colors[1])
Explode(Grabbed.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-6,6),math.random(-6,6),math.random(-6,6)),BrickColor.new(Colors[math.random(1,#Colors)]))
end)
if not Ended then
End()
end end;
j = function(Mouse)
if RageMode then return end
if Debounces.IsCharging or Debounces.IsHealing or Debounces.Attacking or Debounces.Flying then return end
Debounces.Shielding = not Debounces.Shielding
if not Debounces.Shielding then
T.Anchored = true
StopPower = false
RA.Anchored = false
LA.Anchored = false
LL.Anchored = false
RL.Anchored = false
H.Anchored = false
delay(0.2,function()T.Anchored = false end)
Stance = "Standing"
end
if Debounces.Shielding then
if Power -130 >= 0 then
Stance = "null"
ChargePosition(false)
Power = Power -130
RS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(0,0,1.57)
Wait(0.1)
LS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(0,0,-1.57)
Wait(0.1)
RS.C0 = RS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
Wait(0.1)
LS.C0 = LS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
Wait(0.1)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(-0.05,0,0)* CFrame.new(0,0.1,0)
Wait(0.1)
LH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(-0.05,0,0)* CFrame.new(0,0.1,0)
RA.Anchored = true
LA.Anchored = true
LL.Anchored = true
RL.Anchored = true
H.Anchored = true
StopPower = true
local Rot,Clr = 45
local s = Instance.new("Part",Character)
s.BrickColor = Clr or Settings.Colors[1]
s.Size = Vector3.new(1,1,1)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.CFrame = T.CFrame * CFrame.new(0,-2,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(33,1,33)
while Wait()do
if not Debounces.Shielding then break end
if Power -30 < 0 then break end
if Power == 0 then break end
Power = Power -30
s.CFrame = s.CFrame * CFrame.fromEulerAnglesXYZ(0,6,0)
local f = Instance.new("Part",Character)
f.BrickColor = Clr or Settings.Colors[1]
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = T.CFrame * CFrame.new(0,-2,0)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(20,20,20)
coroutine.wrap(function()
for i = 1,13 do
f.Transparency = i/13
sm.Scale = sm.Scale + Vector3.new(1,1,1)
Wait()
end
f:Destroy()
end)()
local Wind = Instance.new("Part",Character)
Wind.Anchored = true
Wind.CanCollide = true
Wind.Locked = true
Wind.BrickColor = Clr or Settings.Colors[1]
Wind.Transparency = 0.5
Wind.Shape = "Ball"
Wind.TopSurface = 0 
Wind.BottomSurface = 0
Wind.Size = Vector3.new(math.random(10,15),1,math.random(10,15))
Wind.CFrame = T.CFrame
for i,v in pairs(IsNear(Wind.Position,33))do Clr = BrickColor.new("Really red")Damage(T,v.Torso)delay(0.02,function()Clr = nil end)end
coroutine.wrap(function()
for i = 0.5,1,0.1 do
Wait()
Wind.Transparency = i
end
Wind:Destroy()
end)()end
T.Anchored = true
StopPower = false
RA.Anchored = false
LA.Anchored = false
LL.Anchored = false
RL.Anchored = false
H.Anchored = false
s:Destroy()
delay(0.2,function()T.Anchored = false end)
Stance = "Standing"
end end end;
g = function()
Wait(0.15)
for i,v in pairs(Debounces)do
if v then
return
end end
Debounces.Attacking = true
local C = math.random(1,2)== 2 and LA or RA
local Con;Con = C.Touched:connect(function(Hit)
if Hit.Parent ~= Workspace and Hit.Parent ~= Character then
Damage(C,Hit,true,46)
ParticleEmit(Hit,BrickColor.new("Really red"),2)
Con:disconnect()
end end)
local spinForce = Instance.new("BodyAngularVelocity",T)
spinForce.P = 1000000
spinForce.angularvelocity = Vector3.new(0,C == RA and 11 or -11,0)
spinForce.maxTorque = Vector3.new(spinForce.P,spinForce.P,spinForce.P)
Game:GetService("Debris"):AddItem(spinForce,0.6)
Character.Humanoid.Jump = true
UpperCutTrail(C,CFrame.new(0,-2,0),Settings.Colors[2])
Wait(0.6)
pcall(function()Con:disconnect()end)
Wait(0.1)
Debounces.Attacking = false
end;
l = function(Mouse)
ypcall(function()
if Power -26000 < 0 then return end
for i,v in pairs(Debounces)do
if v then
return
end end
Power = Power -26000
Debounces.Attacking = true
Chat(H,"Whatever you have to say, say it now because this is your last statement!","Really red")
StopPower = true
StanceGyro.maxTorque = Vector3.new(50000,50000,50000)*500000000000000000000000000000000000000000000
StanceGyro.P = 5000
StanceGyro.D = 200
Stance = "Null"
ChargePosition(false)
LS.MaxVelocity = 0.3
LS.MaxVelocity = 0.3
RH.MaxVelocity = 0.3
LH.MaxVelocity = 0.3
RS.DesiredAngle = 0
LS.DesiredAngle = 0
RH.DesiredAngle = 0
LH.DesiredAngle = 0
N.DesiredAngle = -1.4
N.C0 = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
local DIR = Direction()[1].lookVector
StanceGyro.cframe = Direction()[1]* CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
RH.DesiredAngle = 0.15
LH.DesiredAngle = 0.3
for i = 1,5 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/30,0,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/12.5,0,0)* CFrame.new(0,-0.1,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/10,0,0)* CFrame.new(0,-0.1,0)
Wait()
end
Wait(0.25)
local MaxDistance,Grabbed,HPos = 150
for i = 1,20 do
if Grabbed then break end
local r = Ray.new(RA.Position,DIR)
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
HPos = RA.Position
for i,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")and v ~= Character then
local h = v:findFirstChild("Humanoid")
if h then
if h.Health > 0 then
local t = v:findFirstChild("Torso")
if t then
if(t.Position - HPos).magnitude <= MaxDistance and r:Distance(t.Position)<= 8 then
h.PlatformStand = true
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15 p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
local p = Instance.new("BodyVelocity",t)
p.P = 3000
p.maxForce = Vector3.new(40000,40000,40000)
p.velocity = (t.Position - T.Position).unit *-(10 +(t.Position - T.Position).magnitude *0.75)
Game:GetService("Debris"):AddItem(p,0.25)
if(t.Position -HPos).magnitude < 3 then
Wait(0.15)
Grabbed = t
t.CFrame = CFrame.new(HPos + Vector3.new(0,0.5,0))
break
end end end end end end end
Wait(0.1)
end
if Grabbed then
local Target = Grabbed.Parent.Humanoid
Wait()
Chat(H,"Suffer!","Really red")
local BP = Instance.new("BodyPosition",T)
BP.P = 5000
BP.maxForce = Vector3.new(500000,500000,500000)*50000000
BP.position = T.Position
N.DesiredAngle = 1.6
RS.DesiredAngle = -0.4
LS.DesiredAngle = 0.4
local GR,_GR = true,true
coroutine.wrap(function()
while _GR do
if GR then
Grabbed.CFrame = RA.CFrame * CFrame.new(0,-1,0)* CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi,0)
end
Wait()
end end)()
for i = 1,10 do
Wait()
BP.position = BP.position +DIR *1
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,math.rad(360/10)*2,0)
T.CFrame = StanceGyro.cframe
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(math.pi/50,0,0)
end
local DesPos
N.DesiredAngle = -1.5
RS.DesiredAngle = 3.2
DesPos = BP.position +DIR *3.5 + Vector3.new(0,500.5,0)
local dp = Instance.new("BodyPosition")
dp.P = 5000
dp.maxForce = Vector3.new(50000,50000,50000)*50000000000000000
local rot,sta = CFrame.fromEulerAnglesXYZ(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/20),T.Position +DIR *3 + Vector3.new(0,1.5,0)
GR = false
for i = 1,5 do
Wait(0.5)
BP.position = BP.position +DIR *0.1
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,math.rad(360/5),0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/20,0,0)
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/50,0,0)
if i >= 3 then
dp.Parent = Grabbed
GR = false
Grabbed.CFrame = CFrame.new(sta:Lerp(DesPos,(-3 +i)*0.1),T.Position)*rot
dp.position = Grabbed.CFrame.p + Vector3.new(0,1,0)
end end
for i = 6,13 do
Wait(0.2)
dp.Parent = Grabbed
GR = false
Grabbed.CFrame = CFrame.new(sta:Lerp(DesPos,(-3 +i)*0.1),T.Position)* CFrame.fromEulerAnglesXYZ(i ^2/5,i/10,math.sin(2 *i))
dp.position = Grabbed.CFrame.p + Vector3.new(0,1,0)
end
ChargePosition(false)
RS.DesiredAngle = -0.2
LH.DesiredAngle = 0.2
RH.DesiredAngle = -0.2
LS.DesiredAngle = 0.2
N.DesiredAngle = 0
Chat(H,"Here comes the build up!","Really red")
local x = T.Position
for i = 1,40 do
T.CFrame = CFrame.new(x:Lerp(DesPos,i/40),Grabbed.Position)* CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)
StanceGyro.cframe = T.CFrame
BP.position = T.CFrame.p
if i > 20 then
RS.DesiredAngle = 3.2
end
Wait()
end
GR = true
dp:Destroy()
LS.DesiredAngle = 0
LH.DesiredAngle = 1
RH.DesiredAngle = 1
LS.DesiredAngle = 1
LS.C0 = CFrame.new(-1,0.5,0,-0.923879445,0,-0.382683426,0,1,0,0.382683426,0,-0.923879445)
N.DesiredAngle = 1.6
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/5,0,0)
ChargePosition(false)
Chat(H,"Drop the bass!","Really red")
for i = 1,5 do
BP.position = BP.position + Vector3.new(0,0.25,0)
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(math.pi/6,math.pi/6,0)
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/10,0,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/8.5,0,0)* CFrame.new(0,-0.1,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/10,0,0)* CFrame.new(0,-0.1,0)
Wait()
end
BP.D = 100
BP.P = 9000
x = BP.position
local Hit,Pos = Workspace:FindPartOnRay(Ray.new(T.Position - Vector3.new(0,5,0),(T.Position -(T.Position -Vector3.new(0,8,0))).unit *-500),Character)
for i = 1,25 do
BP.position = x:Lerp((DesPos -Vector3.new(0,499,0)),i/25)
Wait(0.03 -i *0.01)
end
for i = 1,5 do
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,math.pi/5,0)
RS.DesiredAngle = -0.8
Wait()
end
Chat(H,"Wub wub wu-DIE!","Really red")
DamageNear(T.Position,20,34)
if not Hit then local Hit = Instance.new("Part")Hit.BrickColor = BrickColor.new("Really black")end
if not Pos then Pos = Grabbed.Position end
coroutine.wrap(ShakeCam)(7.32,0.04)
for i = 1,30 do
local p = Instance.new("Part",Character)
p.FrontSurface = Hit.TopSurface
p.Material = Hit.Material
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = true
p.BrickColor = Hit.BrickColor
p.Size = Vector3.new(math.random(15,35),math.random(15,35),math.random(4,5))
p.CFrame = CFrame.new(Pos -Vector3.new(math.random(-i,i)/1,3,math.random(-i,i)/1),Pos + Vector3.new(0,1000 -i *20,0))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/30,math.random(-10,10)/30,math.random(-10,10)/30)
delay(2 +i *0.1,function()
for i = 1,10 do
p.Transparency = p.Transparency +0.1
Wait()
end
p:Destroy()
end)
if math.random(1,5)== 5 then
coroutine.wrap(function()
local f = Instance.new("Smoke",p)
f.Size = 30
f.RiseVelocity = 0
f.Opacity = 0.025
Wait(0.1)
f.Enabled = false
Wait(1)
f:Destroy()
end)()end end
GR = false
_GR = false
Explode(CFrame.new(Pos),Settings.Colors[2])
Explode(CFrame.new(Pos)* CFrame.Angles(0,math.rad(90),0),Settings.Colors[1])
Explode(CFrame.new(Pos)* CFrame.Angles(0,math.rad(45),0),Settings.Colors[1])
Explode(CFrame.new(Pos)* CFrame.Angles(0,math.rad(-45),0),Settings.Colors[2])
Kill(Grabbed)
for i = 1,10 do
for i = 1,4 do
local p = Instance.new("Part",Character)
p.TopSurface = Hit.TopSurface
p.BottomSurface = Hit.BottomSurface
p.Material = Hit.Material
p.BottomSurface = 0
p.Anchored = false
p.CanCollide = true
p.BrickColor = Hit.BrickColor
p.formFactor = "Custom"
p.Size = Vector3.new(math.random(15,35)/12,math.random(13,35)/12,math.random(15,35)/12)
p.CFrame = CFrame.new(Pos -Vector3.new(math.random(-4,4),-2,math.random(-4,4)))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/5,math.random(-10,10)/20)
Game:GetService("Debris"):AddItem(p,3 +i *0.1)
p.Velocity = Vector3.new(math.random(-10,10)*4,math.random(40,80),math.random(-10,10)*4)
p.RotVelocity = p.Velocity
if math.random(1,5)== 5 then
coroutine.wrap(function()
local f = Instance.new("Smoke",p)
f.Size = 30
f.RiseVelocity = 0
f.Opacity = 0.025
Wait(0.1)
f.Enabled = false
Wait(1)
f:Destroy()
end)()end end
Wait(0.025)
end
Wait(0.25)
BP:Remove()
end
Wait(0.25)
Stance = "Standing"
Debounces.Attacking = false
StopPower = false
ChargePosition(false)
end)end;
z = function()
if Power -3500 < 0 then return end
for i,v in pairs(Debounces)do
if v then
return
end end
Debounces.Attacking = true
Power = Power -3500
Chat(H,"You look a little... chilly.","Really blue")
local Colors = {"Navy blue","Really blue","White",Settings.Colors[2],"Really black"}
for i = 1,20 do
for _,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")and v ~= Character and not v:findFirstChild("Frozen")then
local h = v:findFirstChild("Humanoid")
if h then
if h.Health > 0 then
local t = v:findFirstChild("Torso")
if t then
if(t.Position -T.Position).magnitude <= 20 then
local f = Instance.new("StringValue",v)
f.Name = "Frozen"
for x,c in pairs(v:GetChildren())do
if c:IsA("BasePart")then
c.Anchored = true
local ss = Instance.new("Part",v)
ss.Size = Vector3.new(c.Size.x +0.2,c.Size.y +0.22,c.Size.z +0.19)
ss.Anchored = true
ss.CanCollide = true
ss.TopSurface = 0
ss.BottomSurface = 0
ss.Locked = true
ss.BrickColor = BrickColor.new("Really blue")
ss.Transparency = 1
ss.Reflectance = 0.95
ss.CFrame = c.CFrame * CFrame.Angles(math.rad(math.random(-45,45)),math.rad(math.random(-45,45)),math.rad(math.random(-45,45)))
coroutine.wrap(function()
for i = 1,25 do
ss.Transparency = ss.Transparency -0.01
Wait()
end end)()
Game:GetService("Debris"):AddItem(ss,10)
end end
delay(10,function()
for x,c in pairs(v:GetChildren())do
if c:IsA("BasePart")then
c.Anchored = false
end end end)
h.PlatformStand = true
h:TakeDamage(10)
Game:GetService("Debris"):AddItem(f,10)
end end end end end end
local Xf = T.CFrame * CFrame.new(math.rad(360/i),0,math.pi/2)
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(2,2,2)
local clr = Colors[math.random(1,#Colors)]
if type(clr)~= 'userdata' then clr = BrickColor.new(clr)end
p.BrickColor = clr
p.CFrame = Xf * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for n = 1,15 do
p.Transparency = n/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
Wait()
end
p:Destroy()
end)()
Wait(1/30)
end
Wait(3)
Debounces.Attacking = false
end;
x = function()
if Power -5500 < 0 then return end
for i,v in pairs(Debounces)do
if v then
return
end end
Debounces.Attacking = true
Power = Power -5500
Chat(H,"BURN!","Really red")
local Colors = {"Really red","Really black","Orange","New Yeller"}
for i = 1,20 do
for _,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")and v ~= Character and not v:findFirstChild("Burnt")then
local h = v:findFirstChild("Humanoid")
if h then
if h.Health > 0 then
local t = v:findFirstChild("Torso")
if t then
if(t.Position -T.Position).magnitude <= 20 then
local f = Instance.new("StringValue",v)
f.Name = "Burnt"
ParticleEmit(v.Torso,BrickColor.new("Really red"),10)
for m,c in pairs(v:GetChildren())do
if c:IsA("BasePart")then
local ss = Instance.new("Fire",c)
ss.Size = c.Size.y +2
ss.Color = BrickColor.new(Colors[math.random(1,#Colors)]).Color
ss.SecondaryColor = Color3.new(0,0,0)
ss.Heat = 100
delay(10,function()
local size = ss.Size
for i = size,0,-1 do
ss.Size = i
Wait()
end
ss:Destroy()
end)end end
h.PlatformStand = true
coroutine.wrap(function()
for i = 1,10 do
h:TakeDamage(5 * math.random(1,2))
Wait(1)
end end)()
Game:GetService("Debris"):AddItem(f,10)
end end end end end end
local Xf = T.CFrame * CFrame.new(math.rad(360/i),0,math.pi/2)
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(2,2,2)
local clr = Colors[math.random(1,#Colors)]
if type(clr)~= 'userdata' then clr = BrickColor.new(clr)end
p.BrickColor = clr
p.CFrame = Xf * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for n = 1,15 do
p.Transparency = n/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
Wait()
end
p:Destroy()
end)()
Wait(1/30)
end
Wait(3)
Debounces.Attacking = false
end;
e = function()
for i,v in pairs(Debounces)do
if v then
return
end end
if Power -26000 < 0 then return end
Debounces.Attacking = true
Power = Power -26000
Chat(H,"It will devour you!","Really red")
T.Anchored = true
Explode(T.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),Settings.Colors[2])
Wait(0.15)
Character.Humanoid.Health = Character.Humanoid.Health -(Character.Humanoid.Health -1)
local Parts = Instance.new("Model",Character)
local p = Instance.new("Part",Parts)
p.Size = Vector3.new(110,110,110)
p.Shape = "Ball"
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.BrickColor = Settings.Colors[2]
p.TopSurface = 0
p.BottomSurface = 0
p.CFrame = T.CFrame
local bm = Instance.new("Part",Parts)
bm.Size = Vector3.new(1,1,1)
bm.Anchored = true
bm.Locked = true
bm.CanCollide = false
bm.BrickColor = Settings.Colors[1]
bm.TopSurface = 0
bm.BottomSurface = 0
bm.CFrame = T.CFrame
local cm = Instance.new("CylinderMesh",bm)
cm.Scale = Vector3.new(50,1500,50)
coroutine.wrap(function()
for i = 1,50 do
cm.Scale = cm.Scale - Vector3.new(1,30,1)
bm.Transparency = i/50
bm.CFrame = T.CFrame
ShakeCam()
end end)()
for i = 1,55 do
p.Transparency = i/55
p.Size = p.Size - Vector3.new(2,2,2)
p.CFrame = T.CFrame
if math.random(1,2)== 2 then
p.Size = p.Size + Vector3.new(3.3,3.3,3.3)
p.CFrame = T.CFrame
Wait(0.01)
p.Size = p.Size - Vector3.new(3.3,3.3,3.3)
p.CFrame = T.CFrame
end
ShakeCam()
end
Explode(T.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),Settings.Colors[1])
coroutine.wrap(ShakeCam)(12,0.02)
bm:Destroy()
local ss = Instance.new("Part",Parts)
ss.Size = Vector3.new(10,10,10)
ss.Shape = "Ball"
ss.Anchored = true
ss.Locked = true
ss.CanCollide = false
ss.BrickColor = Settings.Colors[1]
ss.TopSurface = 0
ss.BottomSurface = 0
ss.CFrame = T.CFrame
local Targets,Blocking = {},true
local function CheckTargets(CCharacter)
for i,v in pairs(Targets)do
if v[1]== CCharacter then
return true
end end
return false
end
coroutine.wrap(function()
while Wait(0.5)do
if not Blocking then break end
for i,v in pairs(Targets)do
ypcall(function()
Effect2(v[1].Torso,4,4,4,0,0,0,v[2])
end)end end end)()
coroutine.wrap(function()
while Wait()do
if not Targets then break end
for i,v in pairs(Targets or {})do
v[2]= Settings.Colors[IsNear(T.Position,p.Size.X,v[1])and 2 or 1]
if IsNear(T.Position,p.Size.X,v[1])then
if not v[3]then
v[3]= true
ypcall(function()Damage(T,v[1].Torso,nil,300,true)end)
delay(0.6,function()
v[3]= false
end)end end end end end)()
for _ = 1,30 do
p.Transparency = p.Transparency -(1/36)
p.Size = p.Size + Vector3.new(15,15,15)
p.CFrame = T.CFrame
for o,x in pairs(IsNear(T.Position,p.Size.X *1.3))do
if not CheckTargets(x)then
table.insert(Targets,{x,Settings.Colors[1],false})
for i,v in pairs(x:GetChildren())do
if v:IsA("BasePart")then
local bp = Instance.new("BodyPosition",v)
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.P = 1500
bp.position = ss.Position
elseif v:IsA("Humanoid")then
v.PlatformStand = true
v.Sit = true
end end end end
Wait()
end
Targets = nil
Blocking = false
Parts:Destroy()
Debounces.Attacking = false
T.Anchored = false
end;
y = function(Mouse)
if not Mouse.Target then return end
for i,v in pairs(Debounces)do
if v then
return
end end
if Power -15000 < 0 then return end
Debounces.Attacking = true
Power = Power -15000
Stance = "Null"
ChargePosition(false)
FaceForward()
T.CFrame = StanceGyro.cframe
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)
N.DesiredAngle = -1.2
RS.DesiredAngle = 0.25
LS.DesiredAngle = 1
StopTrail = false
Trail(RA,CFrame.new(0,-0.8,0),Settings.Colors[2])
local n = StanceGyro.cframe
local Pos = Mouse.Hit * CFrame.new(0,26,0)
for i = 1,10 do
RS.C0 = RS.C0 * CFrame.new(0,-0.05,-0.025)* CFrame.fromEulerAnglesXYZ(-math.pi/20,0,0)
LS.C0 = LS.C0 * CFrame.new(0,-0.05,0.025)* CFrame.fromEulerAnglesXYZ(-math.pi/30,0,0)
LH.C0 = LH.C0 * CFrame.new(0,0,0)* CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
RH.C0 = RH.C0 * CFrame.new(0,0,0)* CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
StanceGyro.cframe = n * CFrame.fromEulerAnglesXYZ(0,0,-math.pi/80 *i)
Wait()
end
coroutine.wrap(function()
ChargePosition(false)
RS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(0,0,1.57)
Wait(0.1)
LS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(0,0,-1.57)
Wait(0.1)
RS.C0 = RS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
LS.C0 = LS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(-0.05,0,0)* CFrame.new(0,0.1,0)
Wait(0.1)
LH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(-0.05,0,0)* CFrame.new(0,0.1,0)
T.CFrame = CFrame.new(T.Position,_Mouse.Hit.p) 
end)()
T.CFrame = CFrame.new(T.Position,Pos.p)
StanceGyro.cframe = CFrame.new(T.Position,Pos.p)
Wait(0.3)
StopTrail = true
T.Anchored = true
local p = Instance.new("Part",Character)
p.Shape = "Ball"
p.Size = Vector3.new(4,4,4)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.BrickColor = Settings.Colors[1]
p.Reflectance = 0.3
p.TopSurface = 0
p.BottomSurface = 0
p.CFrame = Pos
MiniExplode(p.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),Settings.Colors[2])
local Done = false
coroutine.wrap(function()
while Wait(0.252)do
if Done then break end
Implode(p.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),Settings.Colors[math.random(1,2)])
end end)()
coroutine.wrap(function()
while Wait(0.23)do
if Done then break end
Effect2(p,5,5,5,0,0,0,Settings.Colors[2],0.23)
end end)()
local tagz,grabbed = {},{}
local Con;Con = Game:GetService("RunService").Stepped:connect(function()
for i,v in pairs(IsNear(p.Position,100))do
if not v:findFirstChild("Pulling@Atlas")then
local s = Instance.new("StringValue",v)
s.Name = "Pulling@Atlas"
table.insert(tagz,s)
table.insert(grabbed,v)
for _,x in pairs(v:GetChildren())do
if x:IsA("BasePart")then
x.Anchored = false
local bp = Instance.new("BodyPosition",x)
bp.position = p.Position
bp.P = 3000
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
table.insert(tagz,bp)
local cCon;cCon = x.Touched:connect(function(h)
if h == p then
pcall(function()
v.Humanoid:TakeDamage(11)
cCon:disconnect()
end)end end)end end end end end)
Wait(10)
for i,v in pairs(tagz)do v:Destroy()end
for _,x in pairs(grabbed)do
pcall(function()
for i,v in pairs(x:GetChildren())do
if v:IsA("BasePart")then
local bf = Instance.new("BodyForce",v)
bf.force = p.CFrame.lookVector *1200
Game:GetService("Debris"):AddItem(bf,0.64)
elseif v:IsA("Humanoid")then
v.PlatformStand = true
end end end)end
MiniExplode(p.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),Settings.Colors[1])
Con:disconnect()
for i = 1,10 do
p.Transparency = p.Transparency +0.1
Wait()
end
Done = true
Debounces.Attacking = false
T.Anchored = false
Stance = "Standing"
end;
k = function(_Mouse)
if Debounces.Attacking or Debounces.IsCharging or Debounces.IsHealing then return end
if Power -1000 >= 0 then
Power = Power -1000
Debounces.Attacking = true
ChangeText("Heal")
StopPower = true
local x = Instance.new("Animation",Tool)
x.AnimationId = "http://www.roblox.com/asset/?id=128853357"
local anim = Character.Humanoid:LoadAnimation(x)
anim:Play()
for i = 1,5 do
Effect2(LA,i/2,i/2,i/2,0,-0.8,0,BrickColor.new("Really black"),tonumber("0."..i))
Wait(0.2)
end
T.Anchored = true
local kcon = _Mouse.Move:connect(function()pcall(function()T.CFrame = CFrame.new(T.Position,_Mouse.Hit.p)end)end)
local CF = T.CFrame * CFrame.new(-2,2,-5)
local Rock = Instance.new("Part",Workspace)
Rock.Size = Vector3.new(1,1,1)
Rock.TopSurface = 0
Rock.BottomSurface = 0
Rock.Transparency = 1
Rock.Locked = true
Rock.BrickColor = BrickColor.new("Really black")
Rock.Shape = "Ball"
Rock.CanCollide = false
Rock.CFrame = CF
Rock.Anchored = true
StopRockTrail = false
RockTrail(Rock,CFrame.new(0,0,0),BrickColor.new("Lime green"))
for i = 1,3 do
Rock.Transparency = Rock.Transparency -0.3
Rock.Size = Rock.Size + Vector3.new(1,1,1)
Rock.CFrame = CF
Wait()
end
Rock.Size = Vector3.new(2.5,2.5,2.5)
local Rockx = Instance.new("Part",Workspace)
Rockx.Size = Vector3.new(2.5,2.5,2.5)
Rockx.TopSurface = 0
Rockx.BottomSurface = 0
Rockx.Transparency = 0
Rockx.Locked = true
Rockx.BrickColor = BrickColor.new("Really black")
Rockx.Shape = "Ball"
Rockx.CanCollide = false
Rockx.CFrame = Rock.CFrame
Rockx.Anchored = true
local w = Instance.new("Weld",Rock)
w.Part0 = Rock
w.Part1 = Rockx
local l = Instance.new("PointLight",Rock)
l.Color = Color3.new(1,0,0)
l.Range = 0
local ssss,asdd = false,0
coroutine.wrap(function()
while Wait(0.2)do
if not Rock then break end
Effect2(Rock,2.3,2.3,2.3,0,0,0,BrickColor.new("Lime green"),0.3)
end end)()
coroutine.wrap(function()
while Wait(0.12)do
if ssss then break end
asdd = asdd +1
coroutine.wrap(ShakeCam)(1.1,0.01)
l.Range = l.Range +0.5
local f = Instance.new("Part",Character)
f.BrickColor = asdd%2 == 1 and BrickColor.new("Really black")or BrickColor.new("Lime green")
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = Rock.CFrame * CFrame.fromEulerAnglesXYZ(asdd%2 == 1 and -6 or 6,asdd%2 == 1 and -6 or 6,asdd%2 == 1 and -6 or 6)
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(2.5,2.5,2.5)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(2,2,2)
Wait()
end
f:Destroy()
end)()end end)()
Wait(1.5)
ssss = true
coroutine.wrap(function()
for a = 1,3 do
local s = Instance.new("Part",Character)
s.BrickColor = BrickColor.new("Really black")
s.Size = Vector3.new(5,1,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.CFrame = Rock.CFrame * CFrame.new(0,2.5,2)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for x = 1,10 do
s.Transparency = s.Transparency + 0.1
sm.Scale = sm.Scale + Vector3.new(3,0.6,3)
s.CFrame = s.CFrame * CFrame.new(0,0,1)
Wait()
end
s:Destroy()
end)()
Wait(0.1)
end end)()
Rock.CanCollide = true
Rock.Anchored = false
Rockx.Anchored = false
coroutine.wrap(function()
while Wait()do
if not Rock then break end
local s = Rock:findFirstChild("1")or Instance.new("BodyVelocity",Rock)
s.P = 500
s.Name = "1"
s.maxForce = Vector3.new(math.huge,math.huge,math.huge)
s.velocity = CFrame.new(T.Position,_Mouse.Hit.p).lookVector *600
local b = Rock:findFirstChild("2")or Instance.new("BodyForce",Rock)
b.force = CFrame.new(T.Position,_Mouse.Hit.p).lookVector *600
b.Name = "2"
end end)()
local function Kll(Hit,Bool,con)
if Hit.Parent ~= Character then
if Hit.Parent ~= Workspace then
if not Hit.Parent:findFirstChild("Humanoid")then return end
ParticleEmit(Hit,"Lime green",2)
coroutine.wrap(ShakeCam)(6.6,0.24)
pcall(function()kcon:disconnect()end)
pcall(function()con:disconnect()end)
pcall(function()Hit.Parent.Humanoid.Health = Hit.Parent.Humanoid.Health +120 end)
if Bool then return end
T.Anchored = false
local cf = Rock.CFrame
local f = Instance.new("Part",Character)
f.BrickColor = BrickColor.new("Really black")
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = Hit.CFrame * CFrame.fromEulerAnglesXYZ(1.57,0,0)
StopRockTrail = true
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(20,20,20)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(10,10,10)
Wait()
end
f:Destroy()
end)()
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(1,1,1)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = BrickColor.new("Lime green")
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = cf
ax.Anchored = true
coroutine.wrap(function()
for i = 1,10 do
ax.Size = ax.Size + Vector3.new(math.random(1,3)+2,math.random(1,3)+2,math.random(1,3)+2)
ax.Transparency = ax.Transparency +0.1
ax.CFrame = cf
Wait()
end
ax:Destroy()
end)()
ax.Touched:connect(function(H)Kll(H,true)end)
pcall(function()
Rock:Destroy()
Rockx:Destroy()
end)
for i,v in pairs(Hit.Parent:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = false
end end end end end
local con;con = Rock.Touched:connect(function(h)Kll(h,false,con)end)
Game:GetService("Debris"):AddItem(Rock,5)
delay(5,function()T.Anchored = false kcon:disconnect()end)
StopPower = false
Debounces.Attacking = false
end

end;


}
local function Texture(Obj,Textur,Transparency)
for i = 0,5 do
local d = Instance.new("Decal",Obj)
d.Texture = Textur
d.Face = i
d.Transparency = Transparency
end end
Handle = Instance.new("Part",Tool)
Handle.Name = "Handle"
Handle.Locked = true
Handle.BrickColor = Settings.Colors[1]
Handle.CanCollide = false
Handle.FormFactor = "Custom"
Handle.TopSurface = 0
Handle.BottomSurface = 0
Handle.Size = Vector3.new(0.1,0.1,0.1)
Handle.CFrame = RA.CFrame
Handle.Anchored = true
xHandle = Instance.new("Part",Tool)
xHandle.Name = "1"
xHandle.Locked = true
xHandle.BrickColor = Settings.Colors[1]
xHandle.CanCollide = false
xHandle.FormFactor = "Custom"
xHandle.TopSurface = 0
xHandle.BottomSurface = 0
xHandle.Size = Vector3.new(0.15,1.7,0.15)
xHandle.CFrame = RA.CFrame
xHandle.Anchored = true
W1 = Instance.new("Weld",xHandle)
W1.Part0 = xHandle
W1.Part1 = Handle
W1.C1 = CFrame.Angles(0,23,0)* CFrame.new(0,0.35,0)
wHandle = Instance.new("Part",Tool)
wHandle.Name = "2"
wHandle.Locked = true
wHandle.BrickColor = Settings.Colors[2]
wHandle.CanCollide = false
wHandle.FormFactor = "Custom"
wHandle.TopSurface = 0
wHandle.BottomSurface = 0
wHandle.Size = Vector3.new(1,8,0.001)
wHandle.CFrame = RA.CFrame
wHandle.Anchored = true
wHandle.Reflectance = 0.3
BM = Instance.new("BlockMesh",wHandle)
BM.Scale = Vector3.new(1,1,0)
W2 = Instance.new("Weld",wHandle)
W2.Part0 = wHandle
W2.Part1 = xHandle
W2.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,4.3,0)
zHandle = Instance.new("Part",Tool)
zHandle.Name = "3"
zHandle.Locked = true
zHandle.BrickColor = Settings.Colors[1]
zHandle.CanCollide = false
zHandle.FormFactor = "Custom"
zHandle.TopSurface = 0
zHandle.BottomSurface = 0
zHandle.Size = Vector3.new(0.001,8,0.1)
zHandle.CFrame = RA.CFrame
zHandle.Anchored = true
zHandle.Reflectance = 0.1
W3 = Instance.new("Weld",zHandle)
W3.Part0 = zHandle
W3.Part1 = xHandle
W3.C1 = CFrame.Angles(0,90,0)* CFrame.new(0,4.3,0)
bHandle = Instance.new("Part",Tool)
bHandle.Name = "4"
bHandle.Locked = true
bHandle.BrickColor = Settings.Colors[1]
bHandle.CanCollide = false
bHandle.FormFactor = "Custom"
bHandle.TopSurface = 0
bHandle.BottomSurface = 0
bHandle.Size = Vector3.new(0.26,0.26,0.26)
bHandle.CFrame = RA.CFrame
bHandle.Anchored = true
bHandle.Reflectance = 0.1
W4 = Instance.new("Weld",bHandle)
W4.Part0 = bHandle
W4.Part1 = xHandle
W4.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,0.35,0)
aHandle = Instance.new("Part",Tool)
aHandle.Name = "5"
aHandle.Locked = true
aHandle.BrickColor = Settings.Colors[2]
aHandle.CanCollide = false
aHandle.FormFactor = "Custom"
aHandle.TopSurface = 0
aHandle.BottomSurface = 0
aHandle.Size = Vector3.new(0.25,1.3,0.25)
aHandle.CFrame = RA.CFrame * CFrame.Angles(0,0,90)
aHandle.Anchored = true
aHandle.Transparency = 0.8
W5 = Instance.new("Weld",aHandle)
W5.Part0 = aHandle
W5.Part1 = Handle
W5.C1 = CFrame.Angles(0,23,0)* CFrame.new(0,0.35,0)
rHandle = Instance.new("Part",Tool)
rHandle.Name = "6"
rHandle.Locked = true
rHandle.BrickColor = Settings.Colors[1]
rHandle.CanCollide = false
rHandle.FormFactor = "Custom"
rHandle.TopSurface = 0
rHandle.BottomSurface = 0
rHandle.Size = Vector3.new(1,0.001,0.001)
rHandle.CFrame = RA.CFrame
rHandle.Anchored = true
rHandle.Reflectance = 0.1
sm = Instance.new("SpecialMesh",rHandle)
sm.MeshType = "FileMesh"
sm.MeshId = "http://www.roblox.com/Asset/?id=9756362"
sm.Scale = Vector3.new(1,1,1)
W6 = Instance.new("Weld",rHandle)
W6.Part0 = rHandle
W6.Part1 = xHandle
W6.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,0.35,0)
fHandle = Instance.new("Part",Tool)
fHandle.Name = "7"
fHandle.Locked = true
fHandle.BrickColor = Settings.Colors[1]
fHandle.CanCollide = false
fHandle.FormFactor = "Custom"
fHandle.TopSurface = 0
fHandle.BottomSurface = 0
fHandle.Size = Vector3.new(1,0.001,0.001)
fHandle.CFrame = RA.CFrame
fHandle.Anchored = true
fHandle.Reflectance = 0.1
sm = Instance.new("SpecialMesh",fHandle)
sm.MeshType = "FileMesh"
sm.MeshId = "http://www.roblox.com/Asset/?id=9756362"
sm.Scale = Vector3.new(1,1,0.2)
W7 = Instance.new("Weld",fHandle)
W7.Part0 = fHandle
W7.Part1 = xHandle
W7.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,4.3,0)
qHandle = Instance.new("Part",Tool)
qHandle.Name = "8"
qHandle.Locked = true
qHandle.BrickColor = Settings.Colors[1]
qHandle.CanCollide = false
qHandle.FormFactor = "Custom"
qHandle.TopSurface = 0
qHandle.BottomSurface = 0
qHandle.Size = Vector3.new(1,0.001,0.001)
qHandle.CFrame = RA.CFrame
qHandle.Anchored = true
qHandle.Reflectance = 0.3
sm = Instance.new("SpecialMesh",qHandle)
sm.MeshType = "FileMesh"
sm.MeshId = "http://www.roblox.com/Asset/?id=9756362"
sm.Scale = Vector3.new(1,1.5,0.3)
W8 = Instance.new("Weld",qHandle)
W8.Part0 = qHandle
W8.Part1 = xHandle
W8.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,8,0)
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
Texture(v,"http://www.roblox.com/asset/?id=137372754",0.9)
end end
Tool.Name = "Atlas Sword"
Tool.Equipped:connect(function(m)
Equipped = true
Mouse = m
AttackState = "Melee"
W1 = Instance.new("Weld",xHandle)
W1.Part0 = xHandle
W1.Part1 = Handle
W1.C1 = CFrame.Angles(0,23,0)* CFrame.new(0,0.35,0)
W2 = Instance.new("Weld",wHandle)
W2.Part0 = wHandle
W2.Part1 = xHandle
W2.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,4.3,0)
W3 = Instance.new("Weld",zHandle)
W3.Part0 = zHandle
W3.Part1 = xHandle
W3.C1 = CFrame.Angles(0,90,0)* CFrame.new(0,4.3,0)
W4 = Instance.new("Weld",bHandle)
W4.Part0 = bHandle
W4.Part1 = xHandle
W4.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,0.35,0)
W5 = Instance.new("Weld",aHandle)
W5.Part0 = aHandle
W5.Part1 = Handle
W5.C1 = CFrame.Angles(0,23,0)* CFrame.new(0,0.35,0)
W6 = Instance.new("Weld",rHandle)
W6.Part0 = rHandle
W6.Part1 = xHandle
W6.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,0.35,0)
W7 = Instance.new("Weld",fHandle)
W7.Part0 = fHandle
W7.Part1 = xHandle
W7.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,4.3,0)
W8 = Instance.new("Weld",qHandle)
W8.Part0 = qHandle
W8.Part1 = xHandle
W8.C1 = CFrame.Angles(0,-23,0)* CFrame.new(0,8.6,0)
table.foreach(Tool:GetChildren(),function(_,v)
if v:IsA("BasePart")then
v.CanCollide = false
v.Touched:connect(function(Hit)
if PoisonMode and Power -1000 < 0 then return end
if not Debounces.Attacking then return end
if Hit.Parent == Character or HitDebounce then return end
if not Hit.Parent:findFirstChild("Humanoid")then return end
if Hit.Parent:findFirstChild("HitAlreadyAtlas")then return end
coroutine.wrap(ShakeCam)(1.1,0.01)
local sxs = Instance.new("StringValue",Hit.Parent)
sxs.Name = "HitAlreadyAtlas"
Game:GetService("Debris"):AddItem(sxs,1.5)
if PoisonMode then Power = Power -1000 end
pcall(function()Hit.Parent.Humanoid.PlatformStand = true end)
for n,x in pairs(Hit.Parent:GetChildren())do
if x:IsA("BasePart")then
local bf = Instance.new("BodyForce",x)
bf.force = T.CFrame.lookVector *325
Game:GetService("Debris"):AddItem(bf,0.26)
end end
for i,v in pairs(Prts)do
v.BrickColor = Settings.Colors[1]
delay(0.95,function()v.BrickColor = Settings.Colors[2]end)
pcall(function()
local spl = Instance.new("SelectionPartLasso",Speaker.Character)
spl.Humanoid = Hit.Parent:findFirstChild("Humanoid")
spl.Part = v
spl.Color = PoisonMode and BrickColor.new("Royal purple")or Settings.Colors[2]
end)end
if PoisonMode then
ParticleEmit(Hit.Parent:findFirstChild("Torso"),"Royal purple",13)
coroutine.wrap(function()
local Dlly = 0
while Wait(1)do
if Dlly == 13 then break end
Dlly = Dlly +1
Damage(T,Hit,nil,math.random(1,6))
end end)()end
if not PoisonMode then ParticleEmit(Hit,"Really red",2)end
local cf = Hit.CFrame
local s = Instance.new("Part",Character)
s.Anchored = true
s.TopSurface = 0
s.BottomSurface = 0
s.Locked = true
s.Transparency = 1
s.CanCollide = false
s.Shape = "Ball"
s.Reflectance = 0
s.BrickColor = Settings.Colors[2]
s.CFrame = cf
coroutine.wrap(function()
for i = 1,5 do
s.Size = s.Size + Vector3.new(2,2,2)
s.CFrame = cf
s.Transparency = s.Transparency -0.2
Wait()
end
Wait(0.1)
s.BrickColor = Settings.Colors[2]
if math.random(1,2)== 1 then pcall(function()Hit.Parent.Humanoid:TakeDamage(6)end)end
for i = 1,10 do
s.Size = s.Size - Vector3.new(2,2,2)
s.CFrame = cf
s.Transparency = s.Transparency +0.1
Wait()
end
s:Destroy()
end)()
local l = Instance.new("PointLight",s)
l.Color = s.Color
l.Range = 60
local f = Instance.new("Part",Character)
f.BrickColor = Settings.Colors[1]
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = Hit.CFrame * CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(4,4,4)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(2,2,2)
Wait()
end
f:Destroy()
end)()
Damage(v,Hit)end)
v.Anchored = false
end end)end)
Tool.Unequipped:connect(function()
table.foreach(Tool:GetChildren(),function(_,v)
if v:IsA("BasePart")then
v.Anchored = true
end end)
Equipped = false
end)
-- Health gui
if Game:GetService("StarterGui"):GetCoreGuiEnabled(1)then Game:GetService("StarterGui"):SetCoreGuiEnabled(1,false)end
HealthGui = Instance.new("ScreenGui",PlayerGui)
HealthGui.Name = "Atlas HealthGui"
_MainFr = Instance.new("Frame",HealthGui)
_MainFr.Size = UDim2.new(0.4,0,0.1,0)
_MainFr.Position = UDim2.new(0.3,0,0,0)
_MainFr.BackgroundColor = Settings.Colors[1]
_MainFr.BorderColor3 = Settings.Colors[1].Color
_MainFr.BorderSizePixel = 3
_MainFr.BorderColor3 = BrickColor.new("Royal purple").Color
Bar = Instance.new("Frame",_MainFr)
Bar.Size = UDim2.new(0,0,1,0)
Bar.ZIndex = 2
Bar.BackgroundColor = BrickColor.new("Royal purple")
Bar.BorderSizePixel = 0
_Shine = Instance.new("Frame",_MainFr)
_Shine.Size = UDim2.new(1,0,0.5,0)
_Shine.Position = UDim2.new(0,0,0.25,0)
_Shine.BackgroundTransparency = 0.5
_Shine.BackgroundColor = BrickColor.new("Royal purple")
_Shine.ZIndex = 3
_Shine.BorderSizePixel = 0
_LBL = Instance.new("ImageLabel",Bar)
_LBL.ZIndex = 4
_LBL.Size = UDim2.new(1,0,1,0)
_LBL.BorderSizePixel = 0
_LBL.BackgroundTransparency = 1
_LBL.Image = GuiTexture
coroutine.wrap(function()
while Wait()do
if _LBL.Image ~= GuiTexture then
_LBL.Image = GuiTexture
end end end)()
xTxt = Instance.new("TextLabel",_MainFr)
xTxt.Size = UDim2.new(1,0,1,0)
xTxt.Text = tostring(Character.Humanoid.Health)
xTxt.TextScaled = true
xTxt.Font = "SourceSansBold"
xTxt.TextColor = Settings.Colors[1]
xTxt.ZIndex = 5
xTxt.BackgroundTransparency = 1
HCCon = Character.Humanoid.HealthChanged:connect(function(Health)
if RageMode then
if Health > 1250 then
Health = 1250
end else
if Health > 600 then
Health = 600
end end
xTxt.Text = tostring(math.ceil(Health))
Bar:TweenSize(UDim2.new(Health/Character.Humanoid.MaxHealth,0,1,0),"InOut","Quad",0.6,true)
if Health < Character.Humanoid.MaxHealth/4 then
Bar.BackgroundColor = BrickColor.new("Really red")
else
if not RageMode then
Bar.BackgroundColor = BrickColor.new("Royal purple")
end end end)
SetHealth()
delay(1,function()Character.Humanoid.Health = 600 end)
Character.Humanoid.Died:connect(function()
HCCon:disconnect()
Bar:Destroy()
local _Txt = Instance.new("ImageLabel",_MainFr)
_Txt.BackgroundTransparency = 1
_Txt.Image = ""
_Txt.Size = UDim2.new(1,0,1,0)
_Txt.ZIndex = 2
local con;con = Player.CharacterAdded:connect(function()
Game:GetService("StarterGui"):SetCoreGuiEnabled(1,true)
con:disconnect()
end)end)
pcall(script.Destroy,Character:findFirstChild("Health"))
coroutine.wrap(function()
while Wait(0.54)do
if not pcall(function()Character.Humanoid.Health = Character.Humanoid.Health +math.random(0,4)end)then
break
end end end)()
-- 2D Damage
local dgg = Instance.new("ScreenGui",PlayerGui)
dgg.Name = "Atlas DamageGui"
local dgb = Instance.new("Frame",dgg)
dgb.Size = UDim2.new(0.2,0,0.1,0)
dgb.Position = UDim2.new(0.09,0,0.9,0)
dgb.BackgroundColor = Settings.Colors[1]
dgb.BorderSizePixel = 3
dgb.BorderColor3 = BrickColor.new("Royal purple").Color
local dgt = Instance.new("TextLabel",dgb)
dgt.Size = UDim2.new(1,0,1,0)
dgt.Font = "SourceSansBold"
dgt.BackgroundTransparency = 1
dgt.TextColor = BrickColor.new("Royal purple")
dgt.TextScaled = true
dgt.ZIndex = 2
dgt.Text = ByteToStr({401,442,435,422,357,430,440,357,423,426,440,441,357,437,436,435,446},325)
DamageGui = function(Text)
if dgt.Text == tostring(Text)then return end
coroutine.wrap(function()
for i = 1,6 do
dgb.Rotation = dgb.Rotation -120
Wait()
end end)()
coroutine.wrap(function()
dgt.Text = tostring(Text)
dgt.TextTransparency = 1
dgt.TextColor3 = Color3.new(0,0,0)
for i = 1,10 do
dgt.TextColor3 = Color3.new(dgt.TextColor3.r +0.1,dgt.TextColor3.g +0.1,dgt.TextColor3.b +0.1)
dgt.TextTransparency = dgt.TextTransparency -0.1
Wait()
end
dgt.TextTransparency = 0.55
dgt.TextColor = BrickColor.new("Royal purple")
end)()end
--Move Frame back
_MoveFrame = Instance.new("ScreenGui",PlayerGui)
_MoveFrame.Name = "Atlas Move"
_Backing = Instance.new("Frame",_MoveFrame)
_Backing.Size = UDim2.new(0.2,0,0.1,0)
_Backing.Position = UDim2.new(0.71,0,0.9,0)
_Backing.BackgroundColor = Settings.Colors[1]
_Backing.BorderSizePixel = 3
_Backing.BorderColor3 = BrickColor.new("Royal purple").Color
MoveTxt = Instance.new("TextLabel",_Backing)
MoveTxt.Size = UDim2.new(1,0,1,0)
MoveTxt.BorderSizePixel = 0
MoveTxt.Font = "SourceSansBold"
MoveTxt.BackgroundTransparency = 1
MoveTxt.Text = ByteToStr({240,260,263,264,195,261,284,195,249,214,277,272,268,271,271,268,274,273},163)
MoveTxt.TextColor = BrickColor.new("Royal purple")
MoveTxt.TextScaled = true
MoveTxt.ZIndex = 2
function ChangeText(Text)
coroutine.wrap(function()
for i = 1,6 do
_Backing.Rotation = _Backing.Rotation +120
Wait()
end end)()
coroutine.wrap(function()
MoveTxt.Text = Text
MoveTxt.TextTransparency = 1
for i = 1,10 do
MoveTxt.TextColor3 = Color3.new(MoveTxt.TextColor3.r +0.1,MoveTxt.TextColor3.g +0.1,MoveTxt.TextColor3.b +0.1)
MoveTxt.TextTransparency = MoveTxt.TextTransparency -0.1
Wait()
end
MoveTxt.TextTransparency = 0.55
MoveTxt.TextColor = BrickColor.new("Royal purple")
end)()end
--Power bar
Power = 26000
_Power = Instance.new("ScreenGui",PlayerGui)
_Power.Name = "Atlas Power"
PBar = Instance.new("Frame",_Power)
PBar.BackgroundColor = Settings.Colors[1]
PBar.Size = UDim2.new(0.4,0,0.1,0)
PBar.Position = UDim2.new(0.3,0,0.9,0)
PBar_back = Instance.new("Frame",PBar)
PBar_back.BackgroundColor = BrickColor.new("Royal purple")
PBar_back.Size = UDim2.new(0,0,1,0)
PBar_back.BorderSizePixel = 0
PBar_back.ZIndex = 2
PBar.BorderSizePixel = 3
PBar.BorderColor3 = BrickColor.new("Royal purple").Color
Txt = Instance.new("TextLabel",PBar)
Txt.Size = UDim2.new(1,0,1,0)
Txt.Text = tostring(Power)
Txt.TextScaled = true
Txt.Font = "SourceSansBold"
Txt.TextColor = Settings.Colors[1]
Txt.ZIndex = 5
Txt.BackgroundTransparency = 1
Txt.BorderSizePixel = 0
_Shine2 = Instance.new("Frame",PBar)
_Shine2.Size = UDim2.new(1,0,0.5,0)
_Shine2.Position = UDim2.new(0,0,0.25,0)
_Shine2.BackgroundTransparency = 0.5
_Shine2.BackgroundColor = BrickColor.new("Royal purple")
_Shine2.ZIndex = 3
_Shine2.BorderSizePixel = 0
_LBL2 = Instance.new("ImageLabel",PBar_back)
_LBL2.ZIndex = 4
_LBL2.Size = UDim2.new(1,0,1,0)
_LBL2.BackgroundTransparency = 1
_LBL2.BorderSizePixel = 0
_LBL2.Image = GuiTexture
coroutine.wrap(function()
while Wait()do
if _LBL2.Image ~= GuiTexture then
_LBL2.Image = GuiTexture
end end end)()
Spawn(function()
while wait()do
if Power <= 26000 then
if Power < 0 then Power = 0 end
PBar_back:TweenSize(UDim2.new(Power/26000,0,1,0),"InOut","Quad",0.2,true)
Txt.Text = tostring(Power)
if Power < 26000/4 then
PBar_back.BackgroundColor = BrickColor.new("Really red")
else
if not RageMode then
PBar_back.BackgroundColor = BrickColor.new("Royal purple")
end end end end end)
Character.Humanoid.Died:connect(function()
Power = 26000
for i = 1,9 do
PBar_back.BackgroundTransparency = PBar_back.BackgroundTransparency +0.1
Wait()
end
Power = 0
end)
Character.Humanoid.Died:connect(function()
local DeathPhraze = {"How could I lose?!","InternalRecursion will avenge me!","Avenge me, Internal!","All good things must come to an end I guess..."}
Chat(H,DeathPhraze[math.random(1,#DeathPhraze)],"Really black")
T.Anchored = true
pcall(function()Cam:Destroy()end)
coroutine.wrap(function()
repeat Wait()until Workspace.CurrentCamera ~= nil
Workspace.CurrentCamera.Focus = H.CFrame
end)()
pcall(function()H.face:Destroy()end)
StopPower = true
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = true
coroutine.wrap(function()
for i = 1,10 do
v.Transparency = v.Transparency +0.1
Wait()
end end)()end end
for i,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = true
coroutine.wrap(function()
for i = 1,10 do
v.Transparency = v.Transparency +0.1
Wait()
end end)()end end end)
SwordAttacks,HandAttacks = {"Spin","Slash","DoubleSwing"}
local StandardSwing,SwingLeft,DoubleSwing,SpinSwing
Stance = "Standing"
Tool.Equipped:connect(function(Mouse)
AttackState = "Melee"
table.foreach(Debounces,function(_,v)v = false end)
Equipped = true
Mouse.KeyDown:connect(function(Key)
xKey = Key
if Comboing then return end
if Debounces.Shielding then return end
if GlobalKeys[Key]or GlobalKeys[Key:byte()]then
coroutine.wrap(function()local f = GlobalKeys[Key]~= nil and GlobalKeys[Key](Mouse)or GlobalKeys[Key:byte()]~= nil and GlobalKeys[Key:byte()]()end)()
Wait()
Descriptions = {
h = "Healing!";
c = "Charging!";
b = "Boost!";
n = "Float!";
t = "Teleport!";
q = "Fly!";
v = "Taunt!";
m = "Get up...";
p = "OUT OF MY WAY!";
[32]= "Jump!";
[59]= "Flip!";
}
ChangeText(Descriptions[Key]~= nil and Descriptions[Key]or Descriptions[Key:byte()])
end
if KeyBindings[Key]~= nil then
KeyBindings[Key](Mouse)
Wait()
Descriptions = {
l = AttackState.."!";
y = "Clone attack!";
r = "Rage!";
g = "PoisonMode!";
x = "Die please.";
u = "Sword birth."}
ChangeText(Descriptions[Key])
end end)
local cntr = 1
Mouse.Button2Down:connect(function()
ChangeText("Sorry to mislead you...")
if Power -26000 < 0 then return end
for i,v in pairs(Debounces)do
if v then
return
end end
if AttackState == "Melee" then
local Target = Mouse.Target
if Target ~= nil then
if Target.Parent:IsA("Model")and Target.Parent ~= Character and Target.Parent:findFirstChild("Humanoid")then
Debounces.Attacking = true
local Hit = Target.Parent
for i,v in pairs(Hit:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = true
elseif v:IsA("Humanoid")then
v.PlatformStand = true
end end
Stance = "Null"
ParticleEmit(Hit.Torso,"Really black",2)
Power = Power -26000
Wait(0.7)
T.CFrame = Hit.Torso.CFrame * CFrame.new(0,0,-15)
Chat(H,"Did you really think that I would let you live?...","Really red")
Wait(0.25)
local Settings = {TimeOfDay = Game.Lighting.TimeOfDay,Ambient = Game.Lighting.Ambient,OutdoorAmbient = Game.Lighting.OutdoorAmbient,Brightness = Game.Lighting.Brightness}
Game.Lighting.TimeOfDay = 0
Game.Lighting.Ambient = Color3.new(1,0,0)
Game.Lighting.OutdoorAmbient = Color3.new(1,0,0)
Game.Lighting.Brightness = 0
Wait(1.5)
local s = Instance.new("Part",Character)
s.Anchored = true
s.TopSurface = 0
s.BottomSurface = 0
s.Locked = true
s.Transparency = 1
s.CanCollide = false
s.Shape = "Ball"
s.Reflectance = 0
s.BrickColor = BrickColor.new("Really black")
s.CFrame = T.CFrame
coroutine.wrap(function()
for i = 1,5 do
s.Size = s.Size + Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency -0.2
Wait()
end
Wait(0.1)
s.BrickColor = BrickColor.new("Really black")
for i = 1,100 do
s.Size = s.Size - Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency +0.01
Wait()
end
s:Destroy()
end)()
local l = Instance.new("PointLight",s)
l.Color = s.Color
l.Range = 60
local f = Instance.new("Part",Character)
f.BrickColor = BrickColor.new("Really black")
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = T.CFrame * CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(4,4,4)
coroutine.wrap(function()
for i = 1,100 do
f.Transparency = f.Transparency +0.01
sm.Scale = sm.Scale + Vector3.new(2,2,2)
Wait()
end
f:Destroy()
end)()
Kill(Hit.Torso)
Game.Lighting.Brightness = 10
delay(0.65,function()Game.Lighting.Brightness = 1 end)
Wait(1.6)
for i,v in pairs(Settings)do
pcall(function()
Game.Lighting[i]= v
end)end
Debounces.Attacking = false
Stance = "Standing"
end end end end)
Mouse.Button1Down:connect(function()
if Comboing then return end
if Debounces.Attacking or Debounces.IsCharging or Debounces.IsHealing or Debounces.Shielding then return end
if Debounces.Flying then
local Speed,DC = RageMode and 350 or 200
StopFlyTrail = false
FlyTrail(RA,CFrame.new(0,0,0))
FlyTrail(LA,CFrame.new(0,0,0))
coroutine.wrap(function()
while Wait(0.5)do
if Debounces.Flying then
Power = Power -200
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = LA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
if Power == 0 then pcall(DC)break end
Speed = RageMode and 350 or 200
else pcall(DC)break end end end)()
local bv = Instance.new("BodyVelocity",T)
bv.Name = "FlyVelocityVector"
bv.maxForce = Vector3.new(0,math.huge,0)
bv.velocity = Vector3.new(0,0,0)
local bg = Instance.new("BodyGyro",T)
bg.Name = "FlyGyro"
bg.maxTorque = Vector3.new(0,0,0)
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bg.maxTorque = Vector3.new(9000,9000,9000)
bg.cframe = CFrame.new(T.Position,Mouse.Hit.p)* CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
bv.velocity = CFrame.new(T.Position,Mouse.Hit.p).lookVector *Speed
local MouseMoveConnection = Mouse.Move:connect(function()
bg.maxTorque = Vector3.new(9000,9000,9000)
bg.cframe = CFrame.new(T.Position,Mouse.Hit.p)* CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
bv.velocity = CFrame.new(T.Position,Mouse.Hit.p).lookVector *Speed
end)
local Con;Con = Mouse.Button1Up:connect(DC)
DC = function()
Debounces.Flying = false
StopFlyTrail = true
bg:Destroy()
bv:Destroy()
MouseMoveConnection:disconnect()
Con:disconnect()
end return end
if AttackState == "Melee" then
if PoisonMode then
local Attack = SwordAttacks[cntr]
cntr = cntr == 3 and 1 or cntr +1
ChangeText(Attack)
if Attack == "DoubleSwing" then
Debounces.Attacking = true
StopSwordTrail = false
SwordTrail(qHandle,CFrame.new(0,0,0),BrickColor.new("Royal purple"))
Wait(0.1)
DoubleSwing:Play()
Wait(1)
Debounces.Attacking = false
StopSwordTrail = true
elseif Attack == "Spin" then
Debounces.Attacking = true
local spinForce = Instance.new("BodyAngularVelocity",T)
spinForce.P = 1000000
spinForce.angularvelocity = Vector3.new(0,20,0)
spinForce.maxTorque = Vector3.new(spinForce.P,spinForce.P,spinForce.P)
Game:GetService("Debris"):AddItem(spinForce,0.84)
StopSwordTrail = false
SwordTrail(qHandle,CFrame.new(0,0,0),BrickColor.new("Royal purple"))
Wait(0.1)
SpinSwing:Play()
Wait(1)
Debounces.Attacking = false
StopSwordTrail = true
elseif Attack == "Slash" then
Debounces.Attacking = true
StopSwordTrail = false
StandardSwing:Play()
SwordTrail(qHandle,CFrame.new(0,0,0),BrickColor.new("Royal purple"))
Wait(1)
StopSwordTrail = true
Debounces.Attacking = false
end return end
local Attack = SwordAttacks[cntr]
cntr = cntr == 3 and 1 or cntr +1
ChangeText(Attack)
if Attack == "DoubleSwing" then
Debounces.Attacking = true
StopSwordTrail = false
SwordTrail(qHandle,CFrame.new(0,0,0),Settings.Colors[2])
Wait(0.1)
DoubleSwing:Play()
Wait(1.5)
Debounces.Attacking = false
StopSwordTrail = true
elseif Attack == "Spin" then
Debounces.Attacking = true
local spinForce = Instance.new("BodyAngularVelocity",T)
spinForce.P = 1000000
spinForce.angularvelocity = Vector3.new(0,20,0)
spinForce.maxTorque = Vector3.new(spinForce.P,spinForce.P,spinForce.P)
Game:GetService("Debris"):AddItem(spinForce,0.84)
StopSwordTrail = false
SwordTrail(qHandle,CFrame.new(0,0,0),Settings.Colors[2])
Wait(0.1)
SpinSwing:Play()
Wait(1)
Debounces.Attacking = false
StopSwordTrail = true
elseif Attack == "Slash" then
Debounces.Attacking = true
StopSwordTrail = false
Stance = "Null"
ChargePosition(false)
StandardSwing:Play()
SwordTrail(qHandle,CFrame.new(0,0,0),Settings.Colors[2])
Wait(1)
StopSwordTrail = true
Stance = "Standing"
Debounces.Attacking = false
end

end end)end)
_Mouse = Player:GetMouse()
_Mouse.KeyDown:connect(function(Key)
xKey = Key
if Comboing then return end
if Debounces.Shielding then return end
if not Equipped then
if Key == 'f' then
local cn;cn = _Mouse.Button1Down:connect(function()
if Power -150 <= 0 then cn:disconnect()return end
if Debounces.Attacking or Debounces.IsCharging or Debounces.IsHealing then return end
local MouseMove = _Mouse.Move:connect(function()T.CFrame = CFrame.new(T.Position,_Mouse.Hit.p)end)
T.Anchored = true
Character.Humanoid.Jump = true
Wait(0.55)
for i = 1,10 do
T.CFrame = T.CFrame * CFrame.new(0,10,0)
Wait()
end
local JumpCon = Character.Humanoid.Jumping:connect(function()Character.Humanoid.Jump = false end)
ChangeText("Atlas's wrath!")
Stance = "Null"
Debounces.Attacking = true
pcall(function()Character.Humanoid.WalkSpeed = 0 end)
StopPower = true
coroutine.wrap(function()
ChargePosition(false)
RS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(0,0,1.57)
Wait(0.1)
LS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(0,0,-1.57)
Wait(0.1)
RS.C0 = RS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
LS.C0 = LS.C0 * CFrame.Angles(0.6,0,0)* CFrame.new(0,0,-0.3)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(-0.05,0,0)* CFrame.new(0,0.1,0)
Wait(0.1)
LH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(-0.05,0,0)* CFrame.new(0,0.1,0)
T.CFrame = CFrame.new(T.Position,_Mouse.Hit.p) 
end)()
local BlastModel = Instance.new("Model",Character)
local p = Instance.new("Part",BlastModel)
p.BrickColor = Settings.Colors[2]
p.Size = Vector3.new(10,10,10)
p.Shape = "Ball"
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.TopSurface = 0
p.BottomSurface = 0
p.FormFactor = "Custom"
p.Transparency = 1
local p2 = Instance.new("Part",BlastModel)
p2.BrickColor = Settings.Colors[2]
p2.Size = Vector3.new(10,10,10)
p2.Shape = "Ball"
p2.Anchored = true
p2.Locked = true
p2.CanCollide = false
p2.TopSurface = 0
p2.BottomSurface = 0
p2.FormFactor = "Custom"
p2.Transparency = 1
local x = Instance.new("Part",BlastModel)
x.BrickColor = Settings.Colors[2]
x.Size = Vector3.new(1,1,1)
x.Shape = "Ball"
x.Anchored = true
x.Locked = true
x.CanCollide = false
x.TopSurface = 0
x.BottomSurface = 0
x.FormFactor = "Custom"
x.Transparency = 1
x.CFrame = T.CFrame * CFrame.new(0,0,-5.1)* CFrame.fromEulerAnglesXYZ(-1.57,0,0)
local ktn = Instance.new("SpecialMesh",x)
ktn.Scale = Vector3.new(12,5,12)
ktn.MeshId = "http://www.roblox.com/asset/?id=1323306"
local a = Instance.new("Part",BlastModel)
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.BrickColor = Settings.Colors[InternalMode and 1 or 2]
a.Size = Vector3.new(10,1,10)
a.CFrame = T.CFrame * CFrame.new(0,0,-17)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
a.TopSurface = 0
a.BottomSurface = 0
local m = Instance.new("CylinderMesh",a)
m.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for _,v in pairs(BlastModel:GetChildren())do
for i = 1,9 do
v.Transparency = v.Transparency -0.1
Wait()
end end
x.Transparency = 0.6
end)()
local prtzz = {}
coroutine.wrap(function()
for i = 1,9 do
local n = Instance.new("Part",BlastModel)
n.Anchored = true
n.Locked = true
n.CanCollide = false
n.BrickColor = i%2 == 1 and Settings.Colors[1]or Settings.Colors[2]
n.Transparency = 0.54
n.TopSurface = 0
n.BottomSurface = 0
n.FormFactor = "Custom"
n.Size = Vector3.new(0.01,0.01,0.01)
local s3rl = Instance.new("SpecialMesh",n)
s3rl.MeshType = "FileMesh"
s3rl.MeshId = "http://www.roblox.com/Asset/?id=9756362"
s3rl.Scale = Vector3.new(4,4,4)
table.insert(prtzz,n)
end
local ssc = 0
while Wait()do
ssc = ssc ~= 360 and ssc +1 or 0
for i,v in pairs(prtzz)do
v.CFrame = p.CFrame
* CFrame.Angles(0,0,math.rad((i *360/#prtzz)+ssc))
* CFrame.new(-13,0,0)
* CFrame.Angles(0,0,math.rad(63))
end end end)()
local prtzz2 = {}
coroutine.wrap(function()
for i = 1,9 do
local n = Instance.new("Part",BlastModel)
n.Anchored = true
n.Locked = true
n.CanCollide = false
n.BrickColor = i%2 == 1 and Settings.Colors[1]or Settings.Colors[2]
n.Transparency = 0.54
n.TopSurface = 0
n.BottomSurface = 0
n.FormFactor = "Custom"
n.Size = Vector3.new(0.01,0.01,0.01)
local s3rl = Instance.new("SpecialMesh",n)
s3rl.MeshType = "FileMesh"
s3rl.MeshId = "http://www.roblox.com/Asset/?id=9756362"
s3rl.Scale = Vector3.new(4,4,4)
table.insert(prtzz2,n)
end
local ssc = 0
while Wait()do
ssc = ssc ~= 360 and ssc +1 or 0
for i,v in pairs(prtzz2)do
v.CFrame = p.CFrame
* CFrame.Angles(0,0,-math.rad((i *720/#prtzz2)+ssc)*2.5)
* CFrame.new(-6.5,0,0)
* CFrame.Angles(0,0,math.rad(63))
end end end)()
local StopBeam = false
local kcon;kcon = _Mouse.KeyDown:connect(function(k3y)
if k3y == 'f' then
StopBeam = true
kcon:disconnect()
end end)
local CantSendBoomBoom = false
local MB = _Mouse.Button1Down:connect(function()
if CantSendBoomBoom then return end
CantSendBoomBoom = true
local Boom = Instance.new("Part",BlastModel)
Boom.CanCollide = false
Boom.Locked = true
Boom.Anchored = true
Boom.Transparency = 1
Boom.TopSurface = "Smooth"
Boom.BottomSurface = "Smooth"
Boom.Shape = "Ball"
Boom.BrickColor = BrickColor.new("Really red")
Boom.FormFactor = "Custom"
Boom.CFrame = T.CFrame * CFrame.new(0,0,-5.2)
for i = 1,10 do
Boom.Transparency = Boom.Transparency -0.1
Boom.CFrame = T.CFrame * CFrame.new(0,0,-5.2)
Wait()
end
for i = 1,50 do Boom.Size = Boom.Size + Vector3.new(0.25,0.25,0.25)Boom.CFrame = T.CFrame * CFrame.new(0,0,-5.2)Wait()end
repeat
CurrentDistance = CurrentDistance -2
Boom.Size = Boom.Size + Vector3.new(2,2,2)
Boom.CFrame = p.CFrame * CFrame.new(0,0,CurrentDistance)
Wait()
if StopBeam then break end until Boom.CFrame == _Mouse.Hit
if not StopBeam then
coroutine.wrap(function()
Boom.CFrame = _Mouse.Hit
print 'explode'
end)()end
delay(1.2,function()
CantSendBoomBoom = false
end)end)
local prtzz3 = {}
coroutine.wrap(function()
for i = 1,9 do
local n = Instance.new("Part",BlastModel)
n.Anchored = true
n.Locked = true
n.CanCollide = false
n.BrickColor = i%2 == 1 and Settings.Colors[1]or Settings.Colors[2]
n.Transparency = 0.54
n.TopSurface = 0
n.BottomSurface = 0
n.FormFactor = "Custom"
n.Size = Vector3.new(0.01,0.01,0.01)
local s3rl = Instance.new("SpecialMesh",n)
s3rl.MeshType = "FileMesh"
s3rl.MeshId = "http://www.roblox.com/Asset/?id=9756362"
s3rl.Scale = Vector3.new(4,4,4)
table.insert(prtzz3,n)
end
local sscs = 0
while Wait()do
sscs = sscs ~= 360 and sscs +1 or 0
for i,v in pairs(prtzz3)do
v.CFrame = p.CFrame
* CFrame.Angles(0,0,-math.rad((i *1080/#prtzz3)+sscs)*5)
* CFrame.new(-36,0,0)
* CFrame.Angles(0,0,math.rad(63))
end end end)()
local CanHit = true
local cntrr = 0
while Wait()do
if not _Mouse.Target then break end
local sssss = math.random(8,10)
cntrr = cntrr ~= 360 and cntrr +1 or 0
p.CFrame = T.CFrame * CFrame.new(cntrr %2 == 1 and 0 or RandomDecimal(-0.6,0.6),cntrr %2 == 1 and 0 or RandomDecimal(-0.6,0.6),-10.2)
p.BrickColor = a.BrickColor
p.Transparency = RandomDecimal(0,0.3)
p2.Transparency = p.Transparency
p2.BrickColor = a.BrickColor
x.BrickColor = a.BrickColor
x.Transparency = p.Transparency
x.CFrame = T.CFrame * CFrame.new(0,0,-5.1)* CFrame.new(RandomDecimal(-0.2,0.2),RandomDecimal(-0.2,0.2),0)* CFrame.fromEulerAnglesXYZ(-1.57,cntrr,0)
a.Size = Vector3.new(sssss,(T.Position -_Mouse.Hit.p).magnitude,sssss)
a.Transparency = p.Transparency
a.CFrame = p.CFrame * CFrame.new(0,0,-(T.Position -_Mouse.Hit.p).magnitude/2)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
p2.CFrame = p.CFrame * CFrame.new(0,0,-(T.Position -_Mouse.Hit.p).magnitude)
if CanHit then
CanHit = false -- back
DamageNear(_Mouse.Hit.p,45,math.random(10,75))
Explode(p2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),math.random(1,2)== 1 and Settings.Colors[InternalMode and 2 or 1]or BrickColor.new("Really red"),math.random(1,2)== 1 and "http://www.roblox.com/asset/?id=20329976" or "http://www.roblox.com/Asset/?id=9756362",p2.CFrame * CFrame.new(0,-1,0))
Effect2(p,8,8,8,0,0,0,Settings.Colors[InternalMode and 2 or 1],0.7)
delay(0.2,function()CanHit = true end)
end
if StopBeam then break end
if Power -150 < 0 then break end
Power = Power -150
ShakeCam(0.2)
end
for _,v in pairs(BlastModel:GetChildren())do
coroutine.wrap(function()
for i = 1,9 do
v.Transparency = v.Transparency +0.1
Wait()
end end)()end
Wait(0.1)
BlastModel:Destroy()
MB:disconnect()
JumpCon:disconnect()
MouseMove:disconnect()
pcall(function()kcon:disconnect()end)
Debounces.Attacking = false
StopPower = false
T.Anchored = false
pcall(function()Character.Humanoid.WalkSpeed = 45 end)
Stance = "Standing"
end)
_Mouse.KeyDown:connect(function()cn:disconnect()end)
elseif Key == 'r' then
if Debounces.Attacking or Debounces.IsCharging or Debounces.IsHealing then return end
if Power -20000 >= 0 then
Power = Power -20000
Debounces.Attacking = true
ChangeText("Death ball")
StopPower = true
local x = Instance.new("Animation",Tool)
x.AnimationId = "http://www.roblox.com/asset/?id=128853357"
local anim = Character.Humanoid:LoadAnimation(x)
anim:Play()
for i = 1,5 do
Effect2(LA,i/2,i/2,i/2,0,-0.8,0,BrickColor.new("Really black"),tonumber("0."..i))
Wait(0.2)
end
T.Anchored = true
local kcon = _Mouse.Move:connect(function()pcall(function()T.CFrame = CFrame.new(T.Position,_Mouse.Hit.p)end)end)
local CF = T.CFrame * CFrame.new(-2,2,-5)
local Rock = Instance.new("Part",Workspace)
Rock.Size = Vector3.new(1,1,1)
Rock.TopSurface = 0
Rock.BottomSurface = 0
Rock.Transparency = 1
Rock.Locked = true
Rock.BrickColor = BrickColor.new("Really red")
Rock.Shape = "Ball"
Rock.CanCollide = false
Rock.CFrame = CF
Rock.Anchored = true
StopRockTrail = false
RockTrail(Rock,CFrame.new(0,0,0),BrickColor.new("Really red"))
for i = 1,3 do
Rock.Transparency = Rock.Transparency -0.3
Rock.Size = Rock.Size + Vector3.new(1,1,1)
Rock.CFrame = CF
Wait()
end
Rock.Size = Vector3.new(2.5,2.5,2.5)
local Rockx = Instance.new("Part",Workspace)
Rockx.Size = Vector3.new(2.5,2.5,2.5)
Rockx.TopSurface = 0
Rockx.BottomSurface = 0
Rockx.Transparency = 0
Rockx.Locked = true
Rockx.BrickColor = BrickColor.new("Really black")
Rockx.Shape = "Ball"
Rockx.CanCollide = false
Rockx.CFrame = Rock.CFrame
Rockx.Anchored = true
local w = Instance.new("Weld",Rock)
w.Part0 = Rock
w.Part1 = Rockx
local l = Instance.new("PointLight",Rock)
l.Color = Color3.new(1,0,0)
l.Range = 0
local ssss,asdd = false,0
coroutine.wrap(function()
while Wait(0.2)do
if not Rock then break end
Effect2(Rock,2.3,2.3,2.3,0,0,0,BrickColor.new("Really red"),0.3)
end end)()
coroutine.wrap(function()
while Wait(0.12)do
if ssss then break end
asdd = asdd +1
l.Range = l.Range +0.5
local f = Instance.new("Part",Character)
f.BrickColor = asdd%2 == 1 and BrickColor.new("Really black")or BrickColor.new("Really red")
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = Rock.CFrame * CFrame.fromEulerAnglesXYZ(asdd%2 == 1 and -6 or 6,asdd%2 == 1 and -6 or 6,asdd%2 == 1 and -6 or 6)
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(2.5,2.5,2.5)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(2,2,2)
Wait()
end
f:Destroy()
end)()end end)()
Wait(1.5)
ssss = true
coroutine.wrap(function()
for a = 1,3 do
local s = Instance.new("Part",Character)
s.BrickColor = BrickColor.new("Really red")
s.Size = Vector3.new(5,1,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.CFrame = Rock.CFrame * CFrame.new(0,2.5,2)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for x = 1,10 do
s.Transparency = s.Transparency + 0.1
sm.Scale = sm.Scale + Vector3.new(3,0.6,3)
s.CFrame = s.CFrame * CFrame.new(0,0,1)
Wait()
end
s:Destroy()
end)()
Wait(0.1)
end end)()
Rock.CanCollide = true
Rock.Anchored = false
Rockx.Anchored = false
coroutine.wrap(function()
while Wait()do
if not Rock then break end
local s = Rock:findFirstChild("1")or Instance.new("BodyVelocity",Rock)
s.P = 500
s.Name = "1"
s.maxForce = Vector3.new(math.huge,math.huge,math.huge)
s.velocity = CFrame.new(T.Position,_Mouse.Hit.p).lookVector *600
local b = Rock:findFirstChild("2")or Instance.new("BodyForce",Rock)
b.force = CFrame.new(T.Position,_Mouse.Hit.p).lookVector *600
b.Name = "2"
end end)()
local function Kll(Hit,Bool,con)
if Hit.Parent ~= Character then
if Hit.Parent ~= Workspace then
if not Hit.Parent:findFirstChild("Humanoid")then return end
ParticleEmit(Hit,"Really red",2)
coroutine.wrap(ShakeCam)(6.6,0.24)
pcall(function()Hit.Parent.Humanoid.PlatformStand = true end)
for n,x in pairs(Hit.Parent:GetChildren())do
if x:IsA("BasePart")then
local bf = Instance.new("BodyForce",x)
bf.force = T.CFrame.lookVector *130
Game:GetService("Debris"):AddItem(bf,0.26)
end end
if Bool then
Damage(Rock,Hit,true)
Damage(Rock,Hit,true)
return end
pcall(function()kcon:disconnect()end)
pcall(function()con:disconnect()end)
T.Anchored = false
local cf = Rock.CFrame
local f = Instance.new("Part",Character)
f.BrickColor = BrickColor.new("Really red")
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = Hit.CFrame * CFrame.fromEulerAnglesXYZ(1.57,0,0)
StopRockTrail = true
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(20,20,20)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(10,10,10)
Wait()
end
f:Destroy()
end)()
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(1,1,1)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = BrickColor.new("Really red")
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = cf
ax.Anchored = true
coroutine.wrap(function()
for i = 1,10 do
ax.Size = ax.Size + Vector3.new(math.random(1,3)+2,math.random(1,3)+2,math.random(1,3)+2)
ax.Transparency = ax.Transparency +0.1
ax.CFrame = cf
Wait()
end
ax:Destroy()
end)()
ax.Touched:connect(function(H)Kll(H,true)end)
Damage(Rock,Hit,false,122)
pcall(function()
Rock:Destroy()
Rockx:Destroy()
end)
for i,v in pairs(Hit.Parent:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = false
end end end end end
local con;con = Rock.Touched:connect(function(h)Kll(h,false,con)end)
Game:GetService("Debris"):AddItem(Rock,5)
delay(5,function()T.Anchored = false kcon:disconnect()end)
StopPower = false
Debounces.Attacking = false
end elseif Key:byte()== 32 then
local Con;Con = _Mouse.Button1Down:connect(function()
Character.Humanoid.Jump = true
local s = Instance.new("Part",Character)
s.BrickColor = BrickColor.new("Institutional white")
s.Size = Vector3.new(5,5,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.Reflectance = 0.1
s.CFrame = T.CFrame * CFrame.new(0,-2,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(2,0.5,2)
coroutine.wrap(function()
for i = 1,10 do
sm.Scale = sm.Scale + Vector3.new(1,0.2,1)
s.Transparency = s.Transparency +0.1
s.CFrame = s.CFrame * CFrame.fromEulerAnglesXYZ(0,math.random(-6,6),0)
Wait()
end
s:Destroy()
end)()
Con:disconnect()
end)
delay(0.6,function()if Con ~= nil then Con:disconnect()end end)
end
if NonSwordKeys[Key]then
coroutine.wrap(function()NonSwordKeys[Key](_Mouse)end)()
Wait()
Descriptions = {
j = "Shield!";
u = "Keep calm, and destroy!";
g = "Uppercut!";
l = "SUFFER!";
z = "Freeze!";
x = "Burn!";
e = ":D!";
y = "Banishment!";
u = "TO THE MOON!"
}
ChangeText(Descriptions[Key])
end
if GlobalKeys[Key]or GlobalKeys[Key:byte()]then
coroutine.wrap(function()local f = GlobalKeys[Key]~= nil and GlobalKeys[Key](_Mouse)or GlobalKeys[Key:byte()]~= nil and GlobalKeys[Key:byte()]()end)()
Wait()
Descriptions = {
h = "Healing!";
c = "Charging!";
b = "Boost!";
n = "Float!";
t = "Teleport!";
q = "Fly!";
v = "Taunt";
m = "Get up...";
p = "OUT OF MY WAY!";
[32]= "Jump!";
[59]= "Flip!";}
ChangeText(Descriptions[Key]~= nil and Descriptions[Key]or Descriptions[Key:byte()])
end end end)
_Mouse.Button1Down:connect(function()
if Comboing then return end
if Debounces.Shielding or Debounces.IsCharging or Debounces.Attacking or Debounces.IsHealing then return end
if not Equipped then
if Debounces.Flying then
local Speed,DC = RageMode and 350 or 200
StopFlyTrail = false
FlyTrail(RA,CFrame.new(0,0,0))
FlyTrail(LA,CFrame.new(0,0,0))
coroutine.wrap(function()
while Wait(0.5)do
if Debounces.Flying then
Power = Power -200
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = LA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
if Power == 0 then
pcall(function()DC()end)
break
end
Speed = RageMode and 350 or 200
else
pcall(function()DC()end)
break end end end)()
local bv = Instance.new("BodyVelocity",T)
bv.Name = "FlyVelocityVector"
bv.maxForce = Vector3.new(0,math.huge,0)
bv.velocity = Vector3.new(0,0,0)
local bg = Instance.new("BodyGyro",T)
bg.Name = "FlyGyro"
bg.maxTorque = Vector3.new(0,0,0)
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bg.maxTorque = Vector3.new(9000,9000,9000)
bg.cframe = CFrame.new(T.Position,_Mouse.Hit.p)* CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
bv.velocity = CFrame.new(T.Position,_Mouse.Hit.p).lookVector *Speed
local MouseMoveConnection = _Mouse.Move:connect(function()
bg.maxTorque = Vector3.new(9000,9000,9000)
bg.cframe = CFrame.new(T.Position,_Mouse.Hit.p)* CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
bv.velocity = CFrame.new(T.Position,_Mouse.Hit.p).lookVector *Speed
end)
local Con;Con = _Mouse.Button1Up:connect(DC)
DC = function()
Debounces.Flying = false
StopFlyTrail = true
bg:Destroy()
bv:Destroy()
MouseMoveConnection:disconnect()
Con:disconnect()
end
return
end
Debounces.Attacking = true
ChangeText("FALCON, PAWNCH!")
Stance = "NULL"
ChargePosition(false)
StopTrail = false
Trail(LA,CFrame.new(0,-1,0),Settings.Colors[2])
for i = 1,6 do
RS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(0,0,-0.15 *i)
LS.C0 = CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(0,-0.05 *i,-0.28*i)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(0,0,0.025 *i)
LH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(0,0,0.025 *i)
Wait(0.01)
end
local Con;Con = LA.Touched:connect(function(Hit)
if not Debounces.Attacking then return end
if Hit.Parent == Character or HitDebounce then return end
if not Hit.Parent:findFirstChild("Humanoid")then return end
pcall(function()Hit.Parent.Humanoid.PlatformStand = true end)
ParticleEmit(Hit,"Really red",2)
coroutine.wrap(ShakeCam)(1.1,0.01)
for n,x in pairs(Hit.Parent:GetChildren())do
if x:IsA("BasePart")then
local bf = Instance.new("BodyForce",x)
bf.force = T.CFrame.lookVector *130
Game:GetService("Debris"):AddItem(bf,0.26)
end end
local cf = Hit.CFrame
local s = Instance.new("Part",Character)
s.Anchored = true
s.TopSurface = 0
s.BottomSurface = 0
s.Locked = true
s.Transparency = 1
s.CanCollide = false
s.FormFactor = "Custom"
s.Shape = "Ball"
s.Reflectance = 0
s.BrickColor = Settings.Colors[2]
s.CFrame = cf
coroutine.wrap(function()
for i = 1,5 do
s.Size = s.Size + Vector3.new(0.5,0.5,0.5)
s.CFrame = cf
s.Transparency = s.Transparency -0.2
Wait()
end
Wait(0.1)
s.BrickColor = Settings.Colors[2]
if math.random(1,2)== 1 then pcall(function()Hit.Parent.Humanoid:TakeDamage(6)end)end
for i = 1,10 do
s.Size = s.Size - Vector3.new(1,1,1)
s.CFrame = cf
s.Transparency = s.Transparency +0.1
Wait()
end
s:Destroy()
end)()
local l = Instance.new("PointLight",s)
l.Color = s.Color
l.Range = 60
local f = Instance.new("Part",Character)
f.BrickColor = Settings.Colors[1]
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = Hit.CFrame * CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,10 do
f.Transparency = f.Transparency +0.1
sm.Scale = sm.Scale + Vector3.new(1,1,1)
Wait()
end
f:Destroy()
end)()
Damage(T,Hit,true)
Con:disconnect()
end)
local s = Instance.new("Part",Character)
s.BrickColor = Settings.Colors[2]
s.Size = Vector3.new(5,1,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.CFrame = LA.CFrame * CFrame.fromEulerAnglesXYZ(0,1.57,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for x = 1,10 do
s.Transparency = s.Transparency + 0.1
sm.Scale = sm.Scale + Vector3.new(3,0.6,3)
s.CFrame = s.CFrame * CFrame.new(0,0,1)
Wait()
end
s:Destroy()
end)()
Wait(0.3)
StopTrail = true
for i = 1,6 do
RS.C0 = RS.C0 * CFrame.Angles(0,0,0.15)
LS.C0 = LS.C0 * CFrame.Angles(0,0,0.28)
RH.C0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)* CFrame.Angles(0,0,-0.025 *i)
LH.C0 = CFrame.new(-1,-1,0,0,0,-1,0,1,0,1,0,0)* CFrame.Angles(0,0,-0.025 *i)
Wait(0.01)
end
delay(1/30,function()if Con ~= nil then Con:disconnect()end end)
ChargePosition(false)
Debounces.Attacking = false
Stance = "Standing"
end end)
--Animations
local A,B,C,D = Instance.new("Animation",Tool),Instance.new("Animation",Tool),Instance.new("Animation",Tool),Instance.new("Animation",Tool)
A.AnimationId = "http://www.roblox.com/Asset?ID=27761123"
B.AnimationId = "http://www.roblox.com/Asset?ID=27762691"
C.AnimationId = "http://www.roblox.com/Asset?ID=27763344"
D.AnimationId = "http://www.roblox.com/Asset?ID=27763939"
StandardSwing = Character.Humanoid:LoadAnimation(A)
SwingLeft = Character.Humanoid:LoadAnimation(B)
DoubleSwing = Character.Humanoid:LoadAnimation(C)
SpinSwing = Character.Humanoid:LoadAnimation(D)
Stance = "Standing"
StcC = "Standing"
local STCO = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
local StandRS = CFrame.new(1,0.5,0,0.707106709,0,0.707106709,0,1,0,-0.707106709,0,0.707106709)
local StandRH = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)
local StandLS = CFrame.new(-1,0.5,0,-0.923879445,0,-0.382683426,0,1,0,0.382683426,0,-0.923879445)
local StandLH = CFrame.new(-1,-1,0,0,0.0392597914,-0.999228895,0,0.999228895,0.0392597914,1,0,0)
StanceGyro = Instance.new("BodyGyro")
StanceGyro.maxTorque = Vector3.new(5000000000,5000000000,5000000000)*500000000000000
StanceGyro.P = 15000
StanceGyro.D = 750
StanceGyro.Name = "StanceGyro"
coroutine.wrap(function()
while Wait()do
if Power == 0 and RageMode then
KeyBindings.r()
end end end)()
local LastJump = tick()
Character.Humanoid.Jumping:connect(function()
LastJump = tick()
Debounces.Shielding = false
LH.DesiredAngle = -0.7
LS.DesiredAngle = 0.7
RH.DesiredAngle = -0.7
RS.DesiredAngle = 0.7
N.C0 = STCO * CFrame.fromEulerAnglesXYZ(-math.pi/12,0,0)
N.DesiredAngle = 0
StcC = "Jumping"
local spinForce = Instance.new("BodyAngularVelocity",T)
spinForce.P = 1000000
spinForce.angularvelocity = Vector3.new(0,20,0)
spinForce.maxTorque = Vector3.new(spinForce.P,spinForce.P,spinForce.P)
Game:GetService("Debris"):AddItem(spinForce,0.6)
if not Debounces.Attacking and not Debounces.IsCharging and not Debounces.IsHealing then
if not RageMode then
StopJumpTrail = false
JumpTrail(LA,CFrame.new(0,0,0))
JumpTrail(RA,CFrame.new(0,0,0))
end end
local vu = Instance.new("BodyVelocity",T)
vu.P = 5000
vu.maxForce = Vector3.new(0,5000000000000000000000,0)
vu.velocity = Vector3.new(0,70,0)
game:GetService("Debris"):AddItem(vu,0.267)
RiseRate = RiseRate +3
Wait(0.6)
StcC = "Standing"
local Con2,Con;Con2 = LL.Touched:connect(function(Hit)
Damage(Hit,Hit)
Con2:disconnect()
end)
Con = RL.Touched:connect(function(Hit)
Damage(Hit,Hit)
Con:disconnect()
end)
StopJumpTrail = true
RiseRate = RiseRate -3
ChargePosition(false)
LH.DesiredAngle = 0
LS.DesiredAngle = 0
RH.DesiredAngle = 0
RS.DesiredAngle = 0
end)
coroutine.wrap(function()
while Wait()do
if Stance == "Standing" then
RS.C0 = StandRS
RH.C0 = StandRH
LS.C0 = StandLS
LH.C0 = StandLH
local tb = math.cos(time()*3)
local tbs = math.sin(time()*3)
StanceGyro.cframe = FaceForward()* CFrame.fromEulerAnglesXYZ(0,-math.pi/4,0)
StanceGyro.Parent = T
StanceGyro.P = 10000
StanceGyro.maxTorque = Vector3.new(5000,5000,5000)*50000
N.C0 = STCO * CFrame.fromEulerAnglesXYZ(tb *0.05 +0.1,0,0)
N.DesiredAngle = 0.8
RS.DesiredAngle = -0.1
LS.DesiredAngle = 0.2
RH.DesiredAngle = 0
LH.DesiredAngle = 0
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-tb *0.01 -0.2,0,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-tbs *0.1 -0.8,0.8,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(-0.2,tbs *0.05,0)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(-0.15,0,0)
elseif Stance == "Lasering" then
RS.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0)
end end end)()
coroutine.wrap(function()
while Wait(0.5)do
if not StopPower then
Effect2(LA,1,1,1,0,-0.8,0,ChosenColor or Settings.Colors[1],0.1)
Effect2(RA,1,1,1,0,-0.8,0,ChosenColor or InternalMode and Settings.Colors[1]or Settings.Colors[2],0.1)
end end end)()
coroutine.wrap(function()
while Wait(0.25)do
if not Debounces.Shielding then
if not Debounces.Flying then
if Debounces.Floating then
if Power -25 >= 0 then
Power = Power -25
MakeFloatMesh()
local vu = T:findFirstChild("Float")or Instance.new("BodyVelocity",T)
vu.P = 5000
vu.maxForce = Vector3.new(0,5000000000000000000000,0)
vu.velocity = Vector3.new(0,2 *RiseRate,0)
vu.Name = "Float"
else
Debounces.IsFloating = false
end else
pcall(function()T:findFirstChild("Float"):Destroy()end)
end end end end end)()
Character.Humanoid.WalkSpeed = 45
local Cached = {Settings.Colors[1],Settings.Colors[2]}
coroutine.wrap(function()
while Wait()do
pcall(function()
if not Pr0mMode then
if RageMode then
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
if v.BrickColor == Cached[2]then
v.BrickColor = BrickColor.new("Really red")
end end end
Settings.Colors[1]= BrickColor.new("Really red")
Settings.Colors[2]= BrickColor.new("Really red")
Power = Power -32
else
if Character.Humanoid.Health > Character.Humanoid.MaxHealth/4 then Bar.BackgroundColor = BrickColor.new("Royal purple")end
if Power > 26000/4 then PBar_back.BackgroundColor = BrickColor.new("Royal purple")end
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
if v.BrickColor == BrickColor.new("Really red")then
v.BrickColor = Cached[2]
end end end
for i,v in pairs(Cached)do
Settings.Colors[i]= v
end end else
if RageMode then
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
if v.BrickColor == Cached[2]then
v.BrickColor = BrickColor.new("Navy blue")
end end end
Settings.Colors[1]= BrickColor.new("Navy blue")
Settings.Colors[2]= BrickColor.new("Navy blue")
Power = Power -45
else
if Character.Humanoid.Health > Character.Humanoid.MaxHealth/4 then Bar.BackgroundColor = BrickColor.new("Royal purple")end
if Power > 26000/4 then PBar_back.BackgroundColor = BrickColor.new("Royal purple")end
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
if v.BrickColor == BrickColor.new("Navy blue")then
v.BrickColor = Cached[2]
end end end
for i,v in pairs(Cached)do
Settings.Colors[i]= v
end end end end)end end)()
Player.Idled:connect(function()
ChargePosition(false)
local Sayings = {"Come on player! I want to kill things.","HEY PLAYER! IT'S TIME TO PLAY!","Come on already!","The player left me...again.","Don't make me break the fourth wall again!"}
Chat(H,Sayings[math.random(1,#Sayings)],"Really red")
Stance = "Null"
for i = 1,6 do
LS.DesiredAngle = -3
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/39,0,0)
Wait()
end
N.MaxVelocity = 0.07
coroutine.wrap(function()
for i = 1,2 *5 do
Wait(0.2/5)
LS.DesiredAngle = -2.8
end end)()
for i = 1,1 do
N.DesiredAngle = 0.5
Wait(0.25)
N.DesiredAngle = 1.3
Wait(0.2)
end
for i = 1,4 do
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/26,0,0)
Wait()
end
ChargePosition(false)
Stance = "Standing"
end)
for i,v in pairs(Character:GetChildren())do
if v:IsA("Hat")or v:IsA("Shirt")or v:IsA("Pants")or v:IsA("ShirtGraphic")then
v:Destroy()
end end
if ArielMode then Game:GetService("InsertService"):LoadAsset(26019701):GetChildren()[1].Parent = Character else Game:GetService("InsertService"):LoadAsset(74219283):GetChildren()[1].Parent = Character end
local l = Game:GetService("InsertService"):LoadAsset(128159229):GetChildren()[1]
l.Parent = Character
_Mesh = l:findFirstChild("Mesh",true)
_Mesh.MeshId = "http://www.roblox.com/asset/?id=1285237"
_Mesh.TextureId = "http://www.roblox.com/asset/?id=135974538"
local xss = Game:GetService("InsertService"):LoadAsset(99860652):GetChildren()[1]
xss.Parent = Character
local mss = xss:findFirstChild("Mesh",true)
mss.TextureId = "http://www.roblox.com/asset/?id=71162926"
Tool.CanBeDropped = false
Tool.ToolTip = "Forged from the fires of hell by InternalRecursion himself"
ParticleEmit(qHandle,Settings.Colors[2],math.huge)
ParticleEmit(rHandle,"Really black",math.huge)
for i,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
SlowParticleEmit(v,Settings.Colors[2])
end end
coroutine.wrap(function()
for i = 1,6 do
local p = Instance.new("Part",Tool)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.BrickColor = Settings.Colors[2]
p.Transparency = 0.54
p.TopSurface = 0
p.BottomSurface = 0
p.FormFactor = "Custom"
p.Size = Vector3.new(0.005,0.005,0.005)
table.insert(Prts,p)
end
coroutine.wrap(function()
while Wait()do
for i,v in pairs(Prts)do
v.Anchored = true
v.CanCollide = false
end end end)()
while Wait()do
SpinCount = SpinCount ~= 360 and SpinCount +1 or 0
for i,v in pairs(Prts)do
v.CFrame = CFrame.new(xHandle.Position)
* CFrame.Angles(0,math.rad((i *360/#Prts)+SpinCount),0)
* CFrame.new(0,0,-1.6)
* CFrame.Angles(math.rad(63),0,0)
end end end)()
for i = 1,5 do
local p = Instance.new("Part")
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.Shape = "Ball"
p.Locked = true
p.CanCollide = false
p.Transparency = 0.35
p.Size = Vector3.new(3,3,3)
table.insert(ChargeMatrix,p)
end
coroutine.wrap(function()while Wait()do pcall(function()Game.Lighting.Outlines = false end)end end)()
pcall(function()PlayerGui:findFirstChild("HealthGui"):Destroy()end)
do local SG = Instance.new("SurfaceGui",T)
SG.Adornee = T
local Txt = Instance.new("TextLabel")
Txt.Size = UDim2.new(0,800,0,600)
Txt.BackgroundTransparency = 1
Txt.Text = AmazingMode and ByteToStr({3096,3131,3138,3121,3052,3141,3131,3137,3052,3092,3121,3117,3134,3136,3066,3066,3066,3052,3080,3071},3020)or "V3rmillion"
Txt.TextScaled = true
Txt.Font = "SourceSansBold"
Txt.Parent = SG -- After being parented, it gets locked.
coroutine.wrap(function()
while Wait()do
Txt.TextColor = Settings.Colors[InternalMode and 1 or 2]
end end)()end
Chat(H,"I cannot express my rage!",BrickColor.new("Really red"))
--if Game.Players.LocalPlayer.Name == "muchiha" or Game.Players.LocalPlayer.Name == "lolkoninglol" or Game.Players.LocalPlayer.Name == "SpicyDucks" then Instance.new("ManualSurfaceJointInstance")end -- FM kids...
coroutine.wrap(function()
while Wait()do
if RageMode then
local CanChange = true
for i,v in pairs(Debounces)do
if v then
CanChange = false
end end
if CanChange then Character.Humanoid.WalkSpeed = 65 end
if Pr0mMode then
if H.BrickColor ~= BrickColor.new("Navy blue")then
for i,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
v.BrickColor = BrickColor.new("Navy blue")
end end end else
if H.BrickColor ~= BrickColor.new("Really red")then
for i,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
v.BrickColor = BrickColor.new("Really red")
end end end end else
local CanChange = true
for i,v in pairs(Debounces)do
if v then
CanChange = false
end end
if CanChange then Character.Humanoid.WalkSpeed = 45 end
if H.BrickColor ~= InternalMode and BrickColor.new("Really red")or Settings.Colors[1]then
for i,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")and(v.Name:find("Arm")or v.Name:find("Leg")or v.Name:find("Torso")or v.Name:find("Head"))then
v.BrickColor = InternalMode and BrickColor.new("Really red")or Settings.Colors[1]
end end end end
if Character.Humanoid.Health > 0 then
if not Debounces.Attacking then
H.Transparency = 0.2
LA.Transparency = 0.2
RA.Transparency = 0.2
LL.Transparency = 0.2
RL.Transparency = 0.2
else
H.Transparency = 0
LA.Transparency = 0
RA.Transparency = 0
LL.Transparency = 0
RL.Transparency = 0
end else break end end end)()
InputTable,MaxBuffer,MaxFlow,CurrentKey,LastInput,xKey,xCount,StopRunning = {},0.56,10,'',tick(),'',0,false
local function MidnightStrikeDmg(Obj,Connection)
if Obj.Parent ~= Character then
local Range,Range2 = {},{}
for i = 1,5 do Range[i]= i *1100 end
for i = 1,10 do Range2[i]= i *51 end
local Damage = Range[math.random(1,#Range)]-Range2[math.random(1,#Range2)]
if Obj.Parent ~= nil then
local Humanoid = Obj.Parent:findFirstChild("Humanoid")
if Humanoid then
local Torso = Obj.Parent:findFirstChild("Torso")
if Torso then
DamageGui("May "..Game.Players:GetPlayerFromCharacter(Obj.Parent).Name:sub(1,5).."'s nightmares come true... "..Damage.."!")
local KnockBack = Vector3.new(0,(Damage/1000)*23,(Damage/1000)*33)
local S = Instance.new("BodyVelocity",Torso)
S.velocity =(KnockBack *2)/1.2
S.P = 2000
S.maxForce = AbsVector(KnockBack)*5000000000000000000000
Game:GetService("Debris"):AddItem(S,1.6)
local R = Instance.new("BodyAngularVelocity",Torso)
R.P = 5000
R.maxTorque = Vector3.new(50000,50000,50000)*500000000
R.angularvelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
Game:GetService("Debris"):AddItem(R,1.2)
Connection:disconnect()
local Colors = {"Really black","Navy blue","Really blue","Black"}
for _ = 1,33 do
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.Locked = true
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
p.CFrame = Torso.CFrame
Game:GetService("Debris"):AddItem(p,3)
local ml = Instance.new("BlockMesh",p)
ml.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,13 do
ml.Scale = ml.Scale - Vector3.new(1.1,1.1,1.1)
p.Transparency = i/60
p.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
LastColor = p.BrickColor
p:Destroy()
end)()
Wait(0.01)
end
Humanoid:TakeDamage(Damage)
Implode(Torso.CFrame,LastColor)
end end end end end
local Combos = {
qeyt = {"Give me your health!";function()
for i,v in pairs(Debounces)do
if v then
delay(0.2,function()
Comboing = false
StopRunning = false
end)return end end
if Power -26000 < 0 then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
Power = Power -26000
Stance = ''
ChargePosition(false)
StopJoints()
FaceForward()
T.CFrame = StanceGyro.cframe
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)
N.DesiredAngle = -1.2
RS.DesiredAngle = 0.25
LS.DesiredAngle = 1
local nx = StanceGyro.cframe
for i = 1,10 do
RS.C0 = RS.C0 * CFrame.new(0,-0.05,-0.025) * CFrame.fromEulerAnglesXYZ(-math.pi/20,0,0)
LS.C0 = LS.C0 * CFrame.new(0,-0.05,0.025)* CFrame.fromEulerAnglesXYZ(-math.pi/30,0,0)
LH.C0 = LH.C0 * CFrame.new(0,0,0)* CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
RH.C0 = RH.C0 * CFrame.new(0,0,0)* CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
StanceGyro.cframe = nx * CFrame.fromEulerAnglesXYZ(0,0,-math.pi/80 *i)
Wait()
end
Wait(0.2)
for i = 1,5 do
RS.C0 = RS.C0 * CFrame.new(0,-0.1,0)* CFrame.fromEulerAnglesXYZ(-math.pi/25,0,0)
StanceGyro.cframe = nx * CFrame.fromEulerAnglesXYZ(0,math.pi/5 *i,0)
Wait()
end
Wait(0.2)
StopJoints()
StopPower = true
StanceGyro.maxTorque = Vector3.new(50000,50000,50000)*500000000000000000000000000000000000000000000
StanceGyro.P = 5000
StanceGyro.D = 200
LS.MaxVelocity = 0.3
LS.MaxVelocity = 0.3
RH.MaxVelocity = 0.3
LH.MaxVelocity = 0.3
RS.DesiredAngle = 0
LS.DesiredAngle = 0
RH.DesiredAngle = 0
LH.DesiredAngle = 0
N.DesiredAngle = -1.4
N.C0 = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
local DIR = Direction()[1].lookVector
StanceGyro.cframe = Direction()[1]* CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
RH.DesiredAngle = 0.15
LH.DesiredAngle = 0.3
Wait(0.25)
local MaxDistance,Grabbed,HPos = 150
for i = 1,20 do
if Grabbed then break end
local r = Ray.new(RA.Position,DIR)
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really black")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(3,3,3)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
HPos = RA.Position
for i,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")and v ~= Character then
local h = v:findFirstChild("Humanoid")
if h then
if h.Health > 0 then
local t = v:findFirstChild("Torso")
if t then
if(t.Position -HPos).magnitude <= MaxDistance and r:Distance(t.Position)<= 8 then
h.PlatformStand = true
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2.5,2.5,2.5)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
local p = Instance.new("BodyVelocity",t)
p.P = 3000
p.maxForce = Vector3.new(40000,40000,40000)
p.velocity =(t.Position - RA.Position).unit *-(10 +(t.Position - RA.Position).magnitude *1.27)
Game:GetService("Debris"):AddItem(p,0.25)
if(t.Position -HPos).magnitude < 3 then
Wait(0.15)
Grabbed = t
t.CFrame = CFrame.new(HPos + Vector3.new(0,0.5,0))
break end end end end end end end
Wait(0.1)
end
local BP if Grabbed then
local Target = Grabbed.Parent.Humanoid
Wait()
BP = Instance.new("BodyPosition",T)
BP.P = 5000
BP.maxForce = Vector3.new(500000,500000,500000)*50000000
BP.position = T.Position
local GR,_GR = true,true
coroutine.wrap(function()
while _GR do
if GR then
Grabbed.Parent.Head.CFrame = RA.CFrame * CFrame.new(0,-1,0)* CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi,0)
end
Wait()
end end)()
coroutine.wrap(ShakeCam)(7.32,0.04)
Implode(Grabbed.CFrame,BrickColor.new("Really black"))
local dn,cc = true,1
coroutine.wrap(function()
while Wait(0.1)do
if not dn then break end
Effect2(Grabbed,Grabbed.Size.y *cc,Grabbed.Size.y *cc,Grabbed.Size.y *cc,0,0,0,math.random(1,2)== 2 and BrickColor.new("Really red")or BrickColor.new("Really black"),0.32)
cc = cc +0.025
end end)()
delay(3.32,function()dn = false end)
for i = 1,100 do
for _,v in pairs(Grabbed.Parent:GetChildren())do
if v:IsA("Clothing")or v:IsA("Hat")then
v:Destroy()
elseif v:IsA("BasePart")then
v.Transparency = i/71
v.Reflectance = i/50
v.Color = Color3.new(v.Color.r/i/100,v.Color.g/i/100,v.Color.b/i/100)
end end
Wait()
if not dn then
break
end end
Explode(Grabbed.CFrame,BrickColor.new("Really red"))
Character.Humanoid.Health = Character.Humanoid.Health +Grabbed.Parent.Humanoid.Health
_GR,GR = false,false
Kill(Grabbed)
end
Debounces.Attacking = false
StopPower = false
ChargePosition(false)
pcall(function()BP:Destroy()end)
Stance = 'Standing'
delay(0.2,function()
Comboing = false
StopRunning = false
end)end;2};
qq = {"Quick step left!";function()
for i,v in pairs(Debounces)do
if v then
delay(0.2,function()
Comboing = false
StopRunning = false
end)return end end
if Power -2000 < 0 then
delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
Power = Power -2000
T.CFrame = T.CFrame * CFrame.new(-20,0,0)
delay(0.2,function()
Comboing = false
StopRunning = false
end)end;3};
ee = {"Quick step right!";function()
for i,v in pairs(Debounces)do
if v then
delay(0.2,function()
Comboing = false
StopRunning = false
end)return end end
if Power -2000 < 0 then
delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
Power = Power -2000
T.CFrame = T.CFrame * CFrame.new(20,0,0)
delay(0.2,function()
Comboing = false
StopRunning = false
end)end;3};
qrxc = {"Midnight strike!";function()
for i,v in pairs(Debounces)do
if v then
delay(0.2,function()
Comboing = false
StopRunning = false
end)return end end
if Power -26000 < 0 then delay(0.2,function()
Comboing = false
StopRunning = false
end)return end
Power = Power -26000
Debounces.Attacking = true
local Cached = {}
Cached.Ambient = Game.Lighting.Ambient
Cached.OutdoorAmbient = Game.Lighting.OutdoorAmbient
Cached.FogEnd = Game.Lighting.FogEnd
Cached.TimeOfDay = Game.Lighting.TimeOfDay
Cached.Sky = Game.Lighting:findFirstChild("Sky")
if Cached.Sky then Cached.Sky.CelestialBodiesShown = Game.Lighting.Sky.CelestialBodiesShown end
Cached.Brightness = Game.Lighting.Brightness
Cached.FogColor = Game.Lighting.FogColor
Game.Lighting.Ambient = Color3.new()
Game.Lighting.OutdoorAmbient = Color3.new(0.23,0,0)
Game.Lighting.FogColor = Color3.new(0,0,0.23)
Game.Lighting.FogEnd = 110
if Cached.Sky then Game.Lighting.Sky.CelestialBodiesShown = false end
Game.Lighting.Brightness = 0
Game.Lighting.TimeOfDay = 0
Stance = ''
ChargePosition(false)
StopJoints()
FaceForward()
T.CFrame = StanceGyro.cframe
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,-math.pi/2,0)
N.DesiredAngle = -1.2
RS.DesiredAngle = 0.25
LS.DesiredAngle = 1
local nx = StanceGyro.cframe
for i = 1,10 do
RS.C0 = RS.C0 * CFrame.new(0,-0.05,-0.025) * CFrame.fromEulerAnglesXYZ(-math.pi/20,0,0)
LS.C0 = LS.C0 * CFrame.new(0,-0.05,0.025)* CFrame.fromEulerAnglesXYZ(-math.pi/30,0,0)
LH.C0 = LH.C0 * CFrame.new(0,0,0)* CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
RH.C0 = RH.C0 * CFrame.new(0,0,0)* CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
StanceGyro.cframe = nx * CFrame.fromEulerAnglesXYZ(0,0,-math.pi/80 *i)
Wait()
end
Wait(0.2)
for i = 1,5 do
RS.C0 = RS.C0 * CFrame.new(0,-0.1,0)* CFrame.fromEulerAnglesXYZ(-math.pi/25,0,0)
StanceGyro.cframe = nx * CFrame.fromEulerAnglesXYZ(0,math.pi/5 *i,0)
Wait()
end
Wait(0.2)
StopJoints()
StopPower = true
StanceGyro.maxTorque = Vector3.new(50000,50000,50000)*500000000000000000000000000000000000000000000
StanceGyro.P = 5000
StanceGyro.D = 200
LS.MaxVelocity = 0.3
LS.MaxVelocity = 0.3
RH.MaxVelocity = 0.3
LH.MaxVelocity = 0.3
RS.DesiredAngle = 0
LS.DesiredAngle = 0
RH.DesiredAngle = 0
LH.DesiredAngle = 0
N.DesiredAngle = -1.4
N.C0 = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
local DIR = Direction()[1].lookVector
StanceGyro.cframe = Direction()[1]* CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
RH.DesiredAngle = 0.15
LH.DesiredAngle = 0.3
Wait(0.25)
local MaxDistance,Grabbed,HPos = 150
for i = 1,20 do
if Grabbed then break end
local r = Ray.new(RA.Position,DIR)
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really black")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(3,3,3)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
HPos = RA.Position
for i,v in pairs(Workspace:GetChildren())do
if v:IsA("Model")and v ~= Character then
local h = v:findFirstChild("Humanoid")
if h then
if h.Health > 0 then
local t = v:findFirstChild("Torso")
if t then
if(t.Position -HPos).magnitude <= MaxDistance and r:Distance(t.Position)<= 8 then
h.PlatformStand = true
coroutine.wrap(function()
local p = Instance.new("Part",Character)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
Game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2.5,2.5,2.5)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
Wait()
end
p:Destroy()
end)()
local p = Instance.new("BodyVelocity",t)
p.P = 3000
p.maxForce = Vector3.new(40000,40000,40000)
p.velocity =(t.Position - RA.Position).unit *-(10 +(t.Position - RA.Position).magnitude *1.27)
Game:GetService("Debris"):AddItem(p,0.25)
if(t.Position -HPos).magnitude < 3 then
Wait(0.15)
Grabbed = t
t.CFrame = CFrame.new(HPos + Vector3.new(0,0.5,0))
break end end end end end end end
Wait(0.1)
end
local BP if Grabbed then
local Target = Grabbed.Parent.Humanoid
Wait()
BP = Instance.new("BodyPosition",T)
BP.P = 5000
BP.maxForce = Vector3.new(500000,500000,500000)*50000000
BP.position = T.Position
Grabbed.Parent.Head.CFrame = RA.CFrame * CFrame.new(0,-1,0)* CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi,0)
Wait()
coroutine.wrap(ShakeCam)(7.32,0.04)

end
for i,v in pairs(Cached)do pcall(function()Game.Lighting[i]= v end)end
Debounces.Attacking = false
StopPower = false
ChargePosition(false)
pcall(function()BP:Destroy()end)
Stance = 'Standing'
delay(0.2,function()
Comboing = false
StopRunning = false
end)end;2}
}
-- MidnightStrikeDmg(Workspace.jonesj627.Torso,Workspace.ChildAdded:connect(function()end)) -- test
local function Input(Key)
if Key:byte()== 18 or Key:byte()== 17 or Key:byte()== 19 or Key:byte()== 20 or Key == 'a' or Key == 's' or Key == 'd' or Key == 'w' then
CurrentKey = Key
LastInput = tick()
return
end
local Keys = {'q','e','r','t','y','u','z','x','c'}
local x = false
for i,v in pairs(Keys)do
if Key == v then
x = true
break
end end
if not x then
ChangeText("Invalid key, combo failed.")
InputTable = {}
delay(0.6,function()Comboing = false end)
CurrentKey = ''
xKey = ''
xCount = 0
StopRunning = false
return end
if #InputTable > MaxFlow then
InputTable = {}
delay(0.6,function()Comboing = false end)
CurrentKey = ''
xKey = ''
ChangeText("Overflow, combo failed.")
xCount = 0
StopRunning = false
return end
for i,v in pairs(Keys)do
if v == Key then
xCount = xCount +1
InputTable[xCount]= v
if Combos[table.concat(InputTable)]then
if Combos[table.concat(InputTable)][3]== 3 then coroutine.wrap(Combos[table.concat(InputTable)][2])()end
if Combos[table.concat(InputTable)][3]== 2 and not Equipped then coroutine.wrap(Combos[table.concat(InputTable)][2])()end
if Combos[table.concat(InputTable)][3]== 1 and Equipped then coroutine.wrap(Combos[table.concat(InputTable)][2])()end
ChangeText(Combos[table.concat(InputTable)][1])
InputTable = {}
xCount = 0
xKey = ''
else
if LastInput -tick()< MaxBuffer then
CurrentKey = Key
LastInput = tick()
ChangeText(Key:upper()..'!')
end end break end end end
while Wait()do
if(xKey:byte()== 49 or xKey:byte()== 50)and not Comboing then
if not StopRunning then
Comboing = true
local Con;Con = _Mouse.KeyDown:connect(function(key)
Comboing = true
Input(key)
if #InputTable == 0 then
Con:disconnect()
end end)
if Mouse then
local Conx;Conx = Mouse.KeyDown:connect(function(key)
Comboing = true
Input(key)
if #InputTable == 0 then
Conx:disconnect()
end end)end ChangeText("Combo initiated!")LastInput = tick()StopRunning = true end end end


end}
module[2] = {"Ax of Doom",function()
Plrs = game:GetService("Players")

Name = "yfc"
me = Plrs[Name]
char = me.Character
Modelname = "Ax of Doom"
Toolname = "Ax of Doom"
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
selected = false
Hurt = false
Able = true

Add = {
    Sphere = function(P)
        local m = Instance.new("SpecialMesh",P)
        m.MeshType = "Sphere"
        return m
    end,
    BF = function(P)
        local bf = Instance.new("BodyForce",P)
        bf.force = Vector3.new(0, P:GetMass()*187, 0)
        return bf
    end,
    BP = function(P)
        local bp = Instance.new("BodyPosition",P)
        bp.maxForce = Vector3.new(math.huge, 0, math.huge)
        bp.P = 14000
        return bp
    end,
    BG = function(P)
        local bg = Instance.new("BodyGyro",P)
        bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
        bg.P = 14000
        return bg
    end,
    Mesh = function(P, ID, x, y, z)
        local m = Instance.new("SpecialMesh")
        m.MeshId = ID
        m.Scale = Vector3.new(x, y, z)
        m.Parent = P
        return m
    end,
    Sound = function(P, ID, vol, pitch)
        local s = Instance.new("Sound")
        s.SoundId = ID
        s.Volume = vol
        s.Pitch = pitch
        s.Parent = P
        return s
    end
}

function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)
    local p = Instance.new("Part")
    p.formFactor = "Custom"
    p.Anchored = Anchor
    p.CanCollide = Collide
    p.Transparency = Tran
    p.Reflectance = Ref
    p.BrickColor = BrickColor.new(Color)
    for _, Surf in pairs(Surfaces) do
        p[Surf] = "Smooth"
    end
    p.Size = Vector3.new(X, Y, Z)
    if Break then
        p:BreakJoints()
    else p:MakeJoints() end
    p.Parent = Parent
    return p
end

function Weld(p0, p1, x, y, z, a, b, c)
    local w = Instance.new("Weld")
    w.Parent = p0
    w.Part0 = p0
    w.Part1 = p1
    w.C1 = CFrame.new(x,y,z) * CFrame.Angles(a,b,c)
    return w
end

function ComputePos(pos1, pos2)
    local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
    return CFrame.new(pos1, pos3)
end

function getHumanoid(c)
    local h = nil
    for i,v in pairs(c:children()) do
        if v:IsA("Humanoid") and c ~= char then
            if v.Health > 0 then
                h = v
            end
        end
    end
    return h
end

for i,v in pairs(char:children()) do
    if v.Name == Modelname then
        v:remove()
    end
end

torso = char.Torso
neck = torso.Neck
hum = char.Humanoid
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
Rleg = char["Right Leg"]
Lleg = char["Left Leg"]

hc = Instance.new("Humanoid")
hc.Health = 0
hc.MaxHealth = 0

slash = Add.Sound(nil, "rbxasset://sounds//swordslash.wav", 0.9, 1)
hitsound = Add.Sound(nil, "http://www.roblox.com/asset/?id=2801263", 0.7, 0.6)
charge = Add.Sound(nil, "http://www.roblox.com/asset/?id=2101137", 0.8, 0.65)
boom = Add.Sound(nil, "http://www.roblox.com/asset/?id=2691586", 0.8, 0.3)

function PlaySound(sound)
    local s = sound:clone()
    s.Parent = torso
    s.PlayOnRemove = true
    coroutine.resume(coroutine.create(function()
        wait()
        s:remove()
    end))
end


--[[ PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS 
PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS 
PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS 
]]
Mo = Instance.new("Model")
Mo.Name = Modelname

RABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
RLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)

RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)
RLBW = Weld(torso, RLBrick, -0.5, 1.2, 0, 0, 0, 0)
LLBW = Weld(torso, LLBrick, 0.5, 1.2, 0, 0, 0, 0)

RAW = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
LAW = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)
RLW = Weld(RLBrick, nil, 0, 0.8, 0, 0, 0, 0)
LLW = Weld(LLBrick, nil, 0, 0.8, 0, 0, 0, 0)

HB = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
HBW = Weld(Rarm, HB, 0, 1, 0, 0, 0, 0)
HW = Weld(HB, nil, 0, -1, 0, math.pi/2, 0, 0)

TH = Weld(torso, nil, -0.75, 0.7, 0.4, 0, math.pi/2, math.rad(-140))
TH.C0 = CFrame.Angles(math.rad(-10), math.rad(10), 0)

handle = Part(Mo, false, false, 0, 0, "Black", 0.5, 6, 0.5, true)
Instance.new("SpecialMesh",handle)
handle.Name = "Handle"

dec1 = Part(Mo, false, false, 0, 0, "Dark grey", 0.2, 4, 0.2, true)
Add.Mesh(dec1, "http://www.roblox.com/asset/?id=16606212", 0.27, 0.27, 1.45)
Weld(handle, dec1, 0, 0, 0, math.pi/2, 0, 0)

dec2 = Part(Mo, false, false, 0, 0, "White", 0.8, 0.8, 0.3, true)
Add.Mesh(dec2, "http://www.roblox.com/asset/?id=4770583", 2, 2.5, 1.1)
Weld(handle, dec2, 0, -2.7, 0, 0, math.pi/2, 0)

for x = 0, 180, 180 do
    for i = -60, 70, 130/4 do
        local asd = (i+120)/85
        local p = Part(Mo, false, false, 0, 0, "Dark grey", 0.3, 0.8, 0.3, true)
        Add.Mesh(p, "http://www.roblox.com/asset/?id=1033714", 0.16, asd, 0.16)
        local w = Weld(dec2, p, 0, 0, 0, 0, 0, 0)
        w.C0 = CFrame.Angles(0, math.rad(x), math.rad(i))
        w.C1 = CFrame.new(0, -0.7, 0) * CFrame.Angles(math.pi/2, math.pi/2, 0)
    end
end

mainspike = Part(Mo, false, false, 0, 0, "Medium grey", 0.3, 0.8, 0.3, true)
Add.Mesh(mainspike, "http://www.roblox.com/asset/?id=1033714", 0.17, 3, 0.17)
Weld(dec2, mainspike, 0, -1.5, 0, 0, 0, 0)

blade = Part(Mo, false, false, 0, 0, "Medium grey", 3, 0.7, 0.2, true)
Weld(dec2, blade, 0, 0.4, 0, 0, 0, 0)
Instance.new("BlockMesh",blade).Scale = Vector3.new(1, 1, 0.4)

for i = 0, 180, 180 do
    for x = -45, 45, 90/6 do
        local p = Part(Mo, false, false, 0, 0, "Medium grey", 0.6, 0.6, 0.2, true)
        Instance.new("BlockMesh",p).Scale = Vector3.new(1, 1, 0.9)
        local w = Weld(blade, p, 0, 0, 0, 0, 0, 0)
        w.C0 = CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, math.rad(x))
        w.C1 = CFrame.new(-1.8, 0, 0)
    end
    for x = 0, -180, -90/4 do
        local p = Part(Mo, false, false, 0, 0, "Medium grey", 0.6, 0.6, 0.2, true)
        Instance.new("BlockMesh",p).Scale = Vector3.new(1, 1, 0.4)
        local w = Weld(blade, p, 0, 0, 0, 0, 0, 0)
        w.C0 = CFrame.new(0, -1.32, 0) * CFrame.Angles(0, 0, math.rad(x))
        w.C1 = CFrame.new(1.05, 0, 0)
    end
    for x = 0, 180, 90/4 do
        local p = Part(Mo, false, false, 0, 0, "Medium grey", 0.6, 0.6, 0.2, true)
        Instance.new("BlockMesh",p).Scale = Vector3.new(1, 1, 0.4)
        local w = Weld(blade, p, 0, 0, 0, 0, 0, 0)
        w.C0 = CFrame.new(0, 1.32, 0) * CFrame.Angles(0, 0, math.rad(x))
        w.C1 = CFrame.new(1.05, 0, 0)
    end
end

for x = 0, 180, 180 do
    for y = 0, 180, 180 do
        local p = Part(Mo, false, false, 0, 0, "Medium grey", 1, 1, 0.2, true)
        Instance.new("BlockMesh",p).Scale = Vector3.new(1, 1, 0.4)
        local w = Weld(blade, p, 0, 0, 0, 0, 0, 0)
        w.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(x), 0, math.rad(y))
        w.C1 = CFrame.new(-1.2, -0.5, 0)
    end
end

handletip1 = Part(Mo, false, false, 0, 0.2, "Really black", 0.5, 0.5, 0.5, true)
w1 = Weld(handle, handletip1, 0, 0, 0, 0, 0, 0)
w1.C0 = CFrame.new(0, -2.9, 0)
Add.Mesh(handletip1, "http://www.roblox.com/asset/?id=9756362", 0.8, 0.7, 0.8)

handletip2 = Part(Mo, false, false, 0, 0.2, "Dark grey", 0.5, 0.5, 0.5, true)
Weld(handletip1, handletip2, 0, 0, 0, 0, math.rad(45), 0)
Add.Mesh(handletip2, "http://www.roblox.com/asset/?id=9756362", 0.85, 0.55, 0.85)

Mo.Parent = char
TH.Part1 = handle

if script.Parent.className ~= "HopperBin" then
    h = Instance.new("HopperBin",me.Backpack)
    h.Name = Toolname
    script.Parent = h
end

bin = script.Parent

--[[ ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS 
ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS 
ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS 
]]

RAWStand, LAWStand, RLWStand, LLWStand, HWStand = nil


function detach(bool)
    LLW.C0 = CFrame.new(0, 0, 0)
    RLW.C0 = CFrame.new(0, 0, 0)
    LAW.C0 = CFrame.new(0, 0, 0)
    RAW.C0 = CFrame.new(0, 0, 0)
    if bool then
        LLW.Part1 = nil
        RLW.Part1 = nil
        RAW.Part1 = nil
        LAW.Part1 = nil
        TH.Part1 = handle
        HW.Part1 = nil
    end
end

function attach()
    RAW.Part1 = Rarm
    LAW.Part1 = Larm
    RLW.Part1 = Rleg
    LLW.Part1 = Lleg
end

function normal()
    neck.C0 = necko
    RAW.C0 = RAWStand
    LAW.C0 = LAWStand
    RLW.C0 = RLWStand
    LLW.C0 = LLWStand
    HW.C0 = HWStand
end

function idleanim()
    attach()
    for i = 0, 1, 0.015 do
        RAW.C0 = RAWStand * CFrame.Angles(math.rad(-3*i), math.rad(8*i), 0)
        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-16*i), 0, 0)
        RLW.C0 = RLWStand * CFrame.Angles(math.rad(-4*i), 0, math.rad(3*i))
        LLW.C0 = LLWStand * CFrame.Angles(math.rad(4*i), 0, math.rad(-3*i))
        neck.C0 = necko * CFrame.Angles(math.rad(7*i), 0, math.rad(6*i))
        if selected == false or torso.Velocity.magnitude > 4 or Able == false then break end
        wait()
    end
    wait()
    for i = 1, 0, -0.011 do
        RAW.C0 = RAWStand * CFrame.Angles(math.rad(-3*i), math.rad(8*i), 0)
        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-16*i), 0, 0)
        RLW.C0 = RLWStand * CFrame.Angles(math.rad(-4*i), 0, math.rad(3*i))
        LLW.C0 = LLWStand * CFrame.Angles(math.rad(4*i), 0, math.rad(-3*i))
        neck.C0 = necko * CFrame.Angles(math.rad(7*i), 0, math.rad(6*i))
        if selected == false or torso.Velocity.magnitude > 4 or Able == false then break end
        wait()
    end
    normal()
end

function runanim()
    RLW.Part1 = nil
    LLW.Part1 = nil
end

coroutine.resume(coroutine.create(function()
    while true do
        wait()
        if selected and Able == true then
            if torso.Velocity.magnitude < 0.1 then
                idleanim()
            else
                runanim()
            end
            wait()
        end
    end
end))

function selectanim()
    RAW.Part1 = Rarm
    LLW.Part1 = Lleg
    RLW.Part1 = Rleg
    for i = 0, 1, 0.2 do
        RAW.C0 = CFrame.Angles(math.rad(185*i), math.rad(70*i), 0)
        LLW.C0 = CFrame.Angles(math.rad(2*i), 0, math.rad(-5*i))
        RLW.C0 = CFrame.Angles(math.rad(-2*i), 0, math.rad(5*i))
        neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-40*i))
        wait()
    end
    TH.Part1 = nil
    HW.Part1 = handle
    HW.C0 = CFrame.Angles(math.rad(40), 0, math.rad(-20))
    for i = 0, 1, 0.08 do
        RAW.C0 = CFrame.Angles(math.rad(185-110*i), math.rad(70-60*i), math.rad(30*i))
        LLW.C0 = CFrame.Angles(math.rad(2-8*i), 0, math.rad(-5-10*i))
        RLW.C0 = CFrame.Angles(math.rad(-2+8*i), 0, math.rad(5+10*i))
        neck.C0 = necko * CFrame.Angles(math.rad(-15*i), 0, math.rad(-40+35*i))
        HW.C0 = CFrame.Angles(math.rad(40-70*i), 0, math.rad(-20+20*i))
        wait()
    end
    LAW.Part1 = Larm
    for i = 0, 1, 0.1 do
        RAW.C0 = CFrame.Angles(math.rad(185-110-5*i), math.rad(70-60+80*i), math.rad(30-30*i))
        LAW.C0 = CFrame.Angles(math.rad(70*i), 0, math.rad(8*i)) * CFrame.new(0.1*i, -0.1*i, 0)
        LLW.C0 = CFrame.Angles(math.rad(-6), 0, math.rad(-5-10+10*i))
        RLW.C0 = CFrame.Angles(math.rad(6), 0, math.rad(5+10-10*i))
        neck.C0 = necko * CFrame.Angles(math.rad(-15+15*i), 0, math.rad(-5+5*i))
        HW.C0 = CFrame.Angles(math.rad(-30+30*i), 0, math.rad(-60*i)) * CFrame.new(0, 0, -0.4*i)
        wait()
    end
    if RAWStand == nil then
        RAWStand = RAW.C0
        LAWStand = LAW.C0
        LLWStand = LLW.C0
        RLWStand = RLW.C0
        HWStand = HW.C0
    end
    selected = true
end

function deselanim()
    selected = false
    for i = 1, 0, -0.1 do
        RAW.C0 = CFrame.Angles(math.rad(185-110-5*i), math.rad(70-60+80*i), math.rad(30-30*i))
        LAW.C0 = CFrame.Angles(math.rad(70*i), 0, math.rad(8*i)) * CFrame.new(0.1*i, -0.1*i, 0)
        LLW.C0 = CFrame.Angles(math.rad(-6), 0, math.rad(-5-10+10*i))
        RLW.C0 = CFrame.Angles(math.rad(6), 0, math.rad(5+10-10*i))
        neck.C0 = necko * CFrame.Angles(math.rad(-15+15*i), 0, math.rad(-5+5*i))
        HW.C0 = CFrame.Angles(math.rad(-30+30*i), 0, math.rad(-60*i)) * CFrame.new(0, 0, -0.4*i)
        wait()
    end
    LAW.Part1 = nil
    for i = 1, 0, -0.08 do
        RAW.C0 = CFrame.Angles(math.rad(185-110*i), math.rad(70-60*i), math.rad(30*i))
        LLW.C0 = CFrame.Angles(math.rad(2-8*i), 0, math.rad(-5-10*i))
        RLW.C0 = CFrame.Angles(math.rad(-2+8*i), 0, math.rad(5+10*i))
        neck.C0 = necko * CFrame.Angles(math.rad(-15*i), 0, math.rad(-40+35*i))
        HW.C0 = CFrame.Angles(math.rad(40-70*i), 0, math.rad(-20+20*i))
        wait()
    end
    TH.Part1 = handle
    HW.Part1 = nil
    HW.C0 = CFrame.Angles(math.rad(40), 0, math.rad(-20))
    for i = 1, 0, -0.2 do
        RAW.C0 = CFrame.Angles(math.rad(185*i), math.rad(70*i), 0)
        LLW.C0 = CFrame.Angles(math.rad(2*i), 0, math.rad(-5*i))
        RLW.C0 = CFrame.Angles(math.rad(-2*i), 0, math.rad(5*i))
        neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-40*i))
        wait()
    end
    detach(true)
end

function slash(mp)
    attach()
    local Orig = torso.CFrame
    local bg = Add.BG(torso)
    local bp = Add.BP(torso)
    bp.position = Orig.p
    local CF = ComputePos(Orig.p, mp)
    bg.cframe = CF
    for i = 0, 1, 0.1 do
        wait()
    end
    normal()
    bg:remove()
    bp:remove()
end

function select(mouse)
    selectanim()
    mouse.Button1Down:connect(function()
        if Able then
            Able = false
            slash(mouse.Hit.p)
            Able = true
        end
    end)
end

function deselect(mouse)
    deselanim()
end

bin.Selected:connect(select)
bin.Deselected:connect(deselect)
--lego

end}
module[3] = {"Balloons",function()
--Balloon Fight Balloon for flight
plyr = game.Players.LocalPlayer
char = plyr.Character
torso = char.Torso
mouse = plyr:GetMouse()
Run = game:service'RunService'
deb = game:service'Debris'
ra = char["Right Arm"]
la = char["Left Arm"]
rs = char.Torso["Right Shoulder"]
ls = char.Torso["Left Shoulder"]
local platform = false
local idle = true
iliketrains = {}


part1 = Instance.new("Part", char)
part1.FormFactor = "Symmetric"
part1.Size = Vector3.new(1, 3, 1)
part1.TopSurface = 0
part1.BottomSurface = 0
part1:BreakJoints()
special = Instance.new("SpecialMesh", part1)
special.MeshId = "http://www.roblox.com/asset/?id=25498565"
special.TextureId = "http://www.roblox.com/asset/?id=26725707"
special.Scale = Vector3.new(2, 2, 2)
w = Instance.new("Weld", char)
w.Part0 = part1
w.Part1 = torso
w.C0 = CFrame.new(-0.4, -1.4, -0.5) * CFrame.Angles(-0.5, 0, 0.2)
part2 = Instance.new("Part", char)
part2.FormFactor = "Symmetric"
part2.Size = Vector3.new(1, 3, 1)
part2.TopSurface = 0
part2.BottomSurface = 0
part2:BreakJoints()
special2 = Instance.new("SpecialMesh", part2)
special2.MeshId = "http://www.roblox.com/asset/?id=25498565"
special2.TextureId = "http://www.roblox.com/asset/?id=26725707"
special2.Scale = Vector3.new(2, 2, 2)
w2 = Instance.new("Weld", char)
w2.Part0 = part2
w2.Part1 = torso
w2.C0 = CFrame.new(0.4, -1.4, -0.5) * CFrame.Angles(-0.5, 0, -0.2)



tool = Instance.new("HopperBin", plyr.Backpack)
tool.Name = " "
tool.TextureId = "http://www.roblox.com/asset/?id=27471616"
tool.Selected:connect(function(mouse)
	
	
mouse.Button1Down:connect(function(mouse)
	if equipped then return end
	equipped = true
		coroutine.wrap(function()
	while equipped do
		rs.DesiredAngle = 0
		rs.CurrentAngle = 0
		ls.DesiredAngle = 0
		ls.CurrentAngle = 0
		Run.Stepped:wait()
	end
		end)()
	coroutine.wrap(function()
		idle = false
		coroutine.wrap(function()
		for i = 0, 3 do
		w.C0 = w.C0 * CFrame.new(0, 0.05, 0)
		w2.C0 = w2.C0 * CFrame.new(0, 0.05, 0)
		Run.Stepped:wait()
		end
		wait(0.147)
		for i = 0, 3 do
		w.C0 = w.C0 * CFrame.new(0, -0.05, 0)
		w2.C0 = w2.C0 * CFrame.new(0, -0.05, 0)
		Run.Stepped:wait()
		end
		end)()
		local p = Instance.new("Part", char)
		p.FormFactor = "Custom"
		p.Name = "Platform"
		p.Transparency = 1
		p.Size = Vector3.new(4, 1, 4)
		p.Anchored = true
		for i = 2.5, 6, 0.05 do
		p.CFrame = CFrame.new(torso.CFrame.x, torso.CFrame.y-i, torso.CFrame.z)
		Run.Stepped:wait()
		end
		coroutine.wrap(function()
		p:Destroy()
		end)()
		end)()
for i = 0, 4 do
ls.C0 = ls.C0 * CFrame.Angles(-0.25, 0, 0)
rs.C0 = rs.C0 * CFrame.Angles(-0.25, 0, 0)
Run.Stepped:wait()
end
wait(0.02)
for i = 0, 4 do
	ls.C0 = ls.C0 * CFrame.Angles(0.25, 0, 0)
	rs.C0 = rs.C0 * CFrame.Angles(0.25, 0, 0)
	Run.Stepped:wait()
end
idle = true
equipped = false
end)
end)

	
	
		while idle do
			for i = 0, 3 do
			w.C0 = w.C0 * CFrame.Angles(0, 0.002 * i, 0)
			w2.C0 = w2.C0 * CFrame.Angles(0, -0.002 * i, 0)
			Run.Stepped:wait()
			end
			wait(0.112687)
			for i = 0, 3 do
			w.C0 = w.C0 * CFrame.Angles(0, -0.002 * i, 0)
			w2.C0 = w2.C0 * CFrame.Angles(0, 0.002 * i, 0)
			Run.Stepped:wait()
			end
			wait(0.312687)
		end
	


end}

 
 

module[1] = {"Banana",function()

Plrs = game:GetService("Players")
me = Plrs.LocalPlayer
char = me.Character
Modelname = "xBananaz"
Toolname = "Banana"
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
selected = false
Able = true
Prop = {Damage = 30}

ToolIcon = ""
MouseIc = ""
MouseDo = ""

function Notime(func, tim)
	coroutine.resume(coroutine.create(function()
		if tim then
			wait(tim)
		end
		func()
	end))
end

Add = {
	Sphere = function(P)
		local m = Instance.new("SpecialMesh",P)
		m.MeshType = "Sphere"
		return m
	end,
	BF = function(P)
		local bf = Instance.new("BodyForce",P)
		bf.force = Vector3.new(0, P:GetMass()*187, 0)
		return bf
	end,
	BP = function(P)
		local bp = Instance.new("BodyPosition",P)
		bp.maxForce = Vector3.new(math.huge, 0, math.huge)
		bp.P = 14000
		return bp
	end,
	BG = function(P)
		local bg = Instance.new("BodyGyro",P)
		bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
		bg.P = 14000
		return bg
	end,
	Mesh = function(P, ID, x, y, z)
		local m = Instance.new("SpecialMesh")
		m.MeshId = ID
		m.Scale = Vector3.new(x, y, z)
		m.Parent = P
		return m
	end,
	Sound = function(P, ID, vol, pitch)
		local s = Instance.new("Sound")
		s.SoundId = ID
		s.Volume = vol
		s.Pitch = pitch
		s.Parent = P
		return s
	end
}

function find(tab, arg)
	local ah = nil
	for i,v in pairs(tab) do
		if v == arg then
			ah = v
		end
	end
	return ah
end

function getAllParts(from)
	local t = {}
	function getParts(where)
		for i, v in pairs(where:children()) do
			if v:IsA("BasePart") then
				if v.Parent ~= char and v.Parent.Parent ~= char then
					table.insert(t, v)
				end
			end
			getParts(v)
		end
	end
	getParts(workspace)
	return t
end

function RayCast(pos1, pos2, maxDist, forward)
	local list = getAllParts(workspace)
	local pos0 = pos1
	for dist = 1, maxDist, forward do
		pos0 = (CFrame.new(pos1, pos2) * CFrame.new(0, 0, -dist)).p
		for _, v in pairs(list) do
			local pos3 = v.CFrame:pointToObjectSpace(pos0)
			local s = v.Size
			if pos3.x > -(s.x/2) and pos3.x < (s.x/2) and pos3.y > -(s.y/2) and pos3.y < (s.y/2) and pos3.z > -(s.z/2) and pos3.x < (s.z/2) and v.CanCollide == true then
				return pos0, v
			end
		end
	end
	return pos0, nil
end

function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)
	local p = Instance.new("Part")
	p.formFactor = "Custom"
	p.Anchored = Anchor
	p.CanCollide = Collide
	p.Transparency = Tran
	p.Reflectance = Ref
	p.BrickColor = BrickColor.new(Color)
	for _, Surf in pairs(Surfaces) do
		p[Surf] = "Smooth"
	end
	p.Size = Vector3.new(X, Y, Z)
	if Break then
		p:BreakJoints()
	else p:MakeJoints() end
	p.Parent = Parent
	return p
end

function Weld(p0, p1, x, y, z, a, b, c)
	local w = Instance.new("Weld")
	w.Parent = p0
	w.Part0 = p0
	w.Part1 = p1
	w.C1 = CFrame.new(x,y,z) * CFrame.Angles(a,b,c)
	return w
end

function ComputePos(pos1, pos2)
	local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
	return CFrame.new(pos1, pos3)
end

function getHumanoid(c)
	local h = nil
	for i,v in pairs(c:children()) do
		if v:IsA("Humanoid") then
			if v.Health > 0 then
				h = v
			end
		end
	end
	return h
end

for i,v in pairs(char:children()) do
	if v.Name == Modelname then
		v:remove()
	end
end

torso = char.Torso
neck = torso.Neck
hum = char.Humanoid
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
Rleg = char["Right Leg"]
Lleg = char["Left Leg"]

hc = Instance.new("Humanoid")
hc.Health = 0
hc.MaxHealth = 0

slash = Add.Sound(nil, "rbxasset://sounds//swordslash.wav", 0.9, 0.8)
hitsound = Add.Sound(nil, "http://www.roblox.com/asset/?id=2801263", 0.7, 0.6)
charge = Add.Sound(nil, "http://www.roblox.com/asset/?id=2101137", 0.8, 0.65)
boom = Add.Sound(nil, "http://www.roblox.com/asset/?id=2691586", 0.8, 0.3)
smashsound = Add.Sound(nil, "http://www.roblox.com/asset/?id=2692806", 0.8, 0.35)
boomboom = Add.Sound(nil, "http://www.roblox.com/asset/?id=2760979", 1, 0.18)

function PlaySound(sound, pitch, vol)
	local s = sound:clone()
	if pitch ~= nil then
		if tonumber(pitch) then
			s.Pitch = tonumber(pitch)
		end
	end
	if vol ~= nil then
		if tonumber(vol) then
			s.Volume = tonumber(vol)
		end
	end
	s.Parent = torso
	s.PlayOnRemove = true
	coroutine.resume(coroutine.create(function()
		wait()
		s:remove()
	end))
end

Mo = Instance.new("Model")
Mo.Name = Modelname

RABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
RLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)

RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)
RLBW = Weld(torso, RLBrick, -0.5, 1.2, 0, 0, 0, 0)
LLBW = Weld(torso, LLBrick, 0.5, 1.2, 0, 0, 0, 0)

RAW = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
LAW = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)
RLW = Weld(RLBrick, nil, 0, 0.8, 0, 0, 0, 0)
LLW = Weld(LLBrick, nil, 0, 0.8, 0, 0, 0, 0)

HB = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
HBW = Weld(Rarm, HB, 0, 1, 0, 0, 0, 0)
HW = Weld(HB, nil, 0, 0.3, 0, math.pi/2, math.pi, 0)

Mo.Parent = char

function MakeBanana()
	local Banana = Part(workspace, false, true, 0, 0, "Bright yellow", 0.9, 0.95, 0.9, true)
	Banana.Friction = 0.8
	Banana.Elasticity = 0
	local mes = Add.Mesh(Banana, "http://www.roblox.com/asset/?id=28937301", 1.3, 0.8, 1.3)
	mes.TextureId = "http://www.roblox.com/asset/?id=28937670"
	HW.Part1 = Banana
	return Banana
end

if script.Parent.className ~= "HopperBin" then
	h = Instance.new("HopperBin",me.Backpack)
	h.Name = Toolname
	h.TextureId = ToolIcon
	script.Parent = h
end

bin = script.Parent

function detach(bool)
	LLW.C0 = CFrame.new(0, 0, 0)
	RLW.C0 = CFrame.new(0, 0, 0)
	LAW.C0 = CFrame.new(0,0,0)
	RAW.C0 = CFrame.new(0, 0, 0)
	if bool then
		LLW.Part1 = nil
		RLW.Part1 = nil
		RAW.Part1 = nil
		LAW.Part1 = nil
	end
end

function attach()
	RAW.Part1 = Rarm
	LAW.Part1 = Larm
	RLW.Part1 = Rleg
	LLW.Part1 = Lleg
end

function normal()
	neck.C0 = NeckStand
	RAW.C0 = RAWStand
	LAW.C0 = LAWStand
	RLW.C0 = RLWStand
	LLW.C0 = LLWStand
	RAW.C1 = CFrame.new(0, 0.5, 0)
	LAW.C1 = CFrame.new(0, 0.5, 0)
	RLW.C1 = CFrame.new(0, 0.8, 0)
	LLW.C1 = CFrame.new(0, 0.8, 0)
	HW.C0 = HWStand
end

function throw(mousepos)
	RAW.Part1 = Rarm
	for i = 0, 1, 0.2 do
		RAW.C0 = CFrame.Angles(math.rad(-5*i), 0, math.rad(-15*i)) * CFrame.new(0, -0.2*i, -0.5*i)
		wait()
	end
	local banana = MakeBanana()
	for i = 0, 1, 0.14 do
		RAW.C0 = CFrame.Angles(math.rad(-5+185*i), 0, math.rad(-15+35*i)) * CFrame.new(0, -0.2+0.1*i, -0.5+0.8*i)
		wait()
	end
	for i = 0, 1, 0.25 do
		RAW.C0 = CFrame.Angles(math.rad(-5+185-90*i), 0, math.rad(-15+35-45*i)) * CFrame.new(0, -0.2+0.1-0.4*i, -0.5+0.8-0.3*i)
		wait()
	end
	local pos = CFrame.new(banana.Position, mousepos) * CFrame.Angles(math.rad(25),0,0)
	local mag = (torso.Position - mousepos).magnitude
	mag = mag - (mag/5)
	if mag > 25 then mag = 25 end
	local kert = (40+(mag*2))
	Notime(function()
		HW.Part1 = nil
		wait()
		banana.Velocity = pos.lookVector * kert
		local bg = Add.BG(banana)
		bg.P = 4500
		bg.maxTorque = Vector3.new(math.huge, 0, math.huge)
		wait(0.5)
		repeat wait() until banana.Velocity.magnitude < 13
		local ablez = true
		local con = banana.Touched:connect(function(hit)
			local hu = getHumanoid(hit.Parent)
			if hu then
				local to = hu.Parent:findFirstChild("Torso")
				if to and ablez then
					ablez = false
					local bg = Add.BG(to)
					hu.PlatformStand = true
					local cf1 = to.CFrame
					local cf2 = CFrame.new(cf1.p, (cf1 * CFrame.new(0, 0, -2).p))
					to.Velocity = to.Velocity + (cf1.lookVector * -15) + Vector3.new(0, 35, 0)
					local ah = math.random(260,280)
					local mm = math.random(5,8)/100
					Notime(function()
						wait(0.25)
						ablez = true
					end)
					banana.Velocity = cf1.lookVector * 35
					for i = 0, 1, mm do
						bg.cframe = cf2 * CFrame.Angles(math.rad(ah*i), 0, 0)
						wait()
					end
					wait()
					bg:remove()
					wait(0.4)
					hu.PlatformStand = false
				end
			end
		end)
		wait(math.random(18,22))
		con:disconnect()
		for i = 0, 1, 0.033 do
			banana.Transparency = i
			wait()
		end
		banana:remove()
	end)
	for i = 0, 1, 0.16 do
		RAW.C0 = CFrame.Angles(math.rad(-5+185-90-90*i), 0, math.rad(-15+35-45+25*i)) * CFrame.new(0, -0.2+0.1-0.4+0.5*i, 0)
		wait()
	end
	detach(true)
end

function select(mouse)
	selected = true
	mouse.Button1Down:connect(function()
		if Able then
			Able = false
			throw(mouse.Hit.p)
			wait(0.5)
			Able = true
		end
	end)
end

function deselect(mouse)
	selected = false
end

bin.Selected:connect(select)
bin.Deselected:connect(deselect)

end}
module[2] = {"BatMobile",function()
print("Loaded")
local modelName="BatMobile"
local player
local torso
--#Local Functions
local c=function(f) coroutine.resume(coroutine.create(f)) end
--#Settings
local inf=math.huge
local pi=math.pi
local mr=math.rad
local ms=math.sin
local mc=math.cos
local mrand=math.random
local cn=CFrame.new
local ca=CFrame.Angles
local ti=table.insert
local tr=table.remove
local model2=Instance.new("Model", workspace) model2.Name=modelName
local gui=Instance.new("ScreenGui") gui.Name=modelName
local skincolor="Really black"
local body={}
local animate={}
local obj={}
local dmg=mrand(10000, 10000)
local mouse
local walkSpeed=100
local combo=0
local switch=0
local key=false
local hit=false
local block=false
local trails
local speed=0
local add={
        Part=function(par, a, c, col, t, s, cf, ms)
                local p=Instance.new("Part", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or cn()  end)
                local m=Instance.new("BlockMesh", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) end)
                return p
        end;
        Cylinder=function(par, a, c, col, t, s, cf, ms)
                local p=Instance.new("Part", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or cn()  end)
                local m=Instance.new("CylinderMesh", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) end)
                return p
        end;
        Wedge=function(par, a, c, col, t, s, cf, ms)
                local p=Instance.new("WedgePart", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or cn()  end)
                local m=Instance.new("SpecialMesh", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) m.MeshType="Wedge" end)
                return p
        end;
        Gui=function(ins, par, bc, bg, tc, fs, text, t, s, pos)
                local g=Instance.new(ins, par) pcall(function() g.BorderColor=BrickColor.new(bc) g.BackgroundColor=BrickColor.new(bg) g.TextColor=BrickColor.new(tc) g.FontSize=fs g.Font="ArialBold" g.Text=text g.BackgroundTransparency=t g.Size=s g.Position=pos  end)
                return g
        end;
        Weld=function(par, p1, cf)
                local w=Instance.new("Weld", par) pcall(function() w.Part0=w.Parent or par w.Part1=p1 w.C1=cf or cn() end)
                return w
        end;
        Mesh=function(ins, par, s, t, id, tid, of)
                pcall(function() for i, v in pairs(par:children()) do if v:isA("BlockMesh") or v:isA("CylinderMesh") or v:isA("SpecialMesh") then v:remove() end end end)
                local m=Instance.new(ins, par) pcall(function() m.Scale=s or Vector3.new(1, 1, 1) m.Offset=of or Vector3.new() m.MeshId=id or "" m.TextureId=tid or "" m.MeshType=t end)
                return m
        end;
        Sound=function(parent, id, pitch, volume)
                local s=Instance.new("Sound", parent) pcall(function() s.SoundId=id s.Volume=volume or 1 s.Pitch=pitch or 1 end)
                return s
        end;
}
local Sounds={
        Slash="rbxasset://sounds//swordslash.wav";
        Hit="http://www.roblox.com/asset/?id=11113679 ";
        Equip="rbxasset://sounds/unsheath.wav";
        Charge="http://www.roblox.com/asset/?id=2101137";
        ElectricShortage="http://roblox.com/asset/?id=10209481";
        ElectricSound="http://www.roblox.com/asset/?id=10756118";
        Electric="http://www.roblox.com/asset/?id=2800815";
        Abscond="http://www.roblox.com/asset/?id=2767090";
        Cannon="http://www.roblox.com/asset/?id=2920959";
        Bash="http://www.roblox.com/asset/?id=25270310";
        Suirize="http://roblox.com/asset/?id=10209605";
        Heli="http://www.roblox.com/asset/?id=27112125";
}
local Decals={
}
local Meshes={
        Charge="http://www.roblox.com/asset/?id=20329976";
        Noob="http://www.roblox.com/asset/?id=29515710";
        Ring="http://www.roblox.com/asset/?id=3270017";
        Crown="http://www.roblox.com/asset/?id=1323306";
        Spring="http://www.roblox.com/Asset/?id=9753878";
        Sword="rbxasset://fonts/sword.mesh";
        Shield="http://www.roblox.com/asset/?id=50798797";
        Diamond="http://www.roblox.com/Asset/?id=9756362";
        Shuriken="http://www.roblox.com/asset/?id=11112101";
        ShurikenT="http://www.roblox.com/asset/?id=11112112"
}
function createParts()
        --#GuiDescendants
        obj.AL=add.Gui("TextLabel", gui, "Really black", "Really black", "White", "Size18", "Speed(speed)", 0, UDim2.new(0, 150, 0, 50), UDim2.new(0, 0, 0, 150))
        obj.AL2=add.Gui("TextLabel", obj.AL, "Really black", "Really black", "White", "Size18", "HeavyBreak(V)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
        obj.AL3=add.Gui("TextLabel", obj.AL2, "Really black", "Really black", "White", "Size18", "Rocket(R)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
        obj.AL4=add.Gui("TextLabel", obj.AL3, "Really black", "Really black", "White", "Size18", "MachineGun(F)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
        obj.AL5=add.Gui("TextLabel", obj.AL4, "Really black", "Really black", "White", "Size18", "Boost(B)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
        obj.AL6=add.Gui("TextLabel", obj.AL5, "Really black", "Really black", "White", "Size18", "Blade(C)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
        obj.AL7=add.Gui("TextLabel", obj.AL6, "Really black", "Really black", "White", "Size18", "Hover(X)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
        obj.AL8=add.Gui("TextLabel", obj.AL7, "Really black", "Really black", "White", "Size18", "SelfDestruct(G)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
--        obj.AL9=add.Gui("TextLabel", obj.AL8, "Really black", "Really black", "White", "Size18", "MaximumArmor(Z)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
        --#CarDesgin
        for i, v in pairs(model2:children()) do
                if i~=1 then return end
        end
        obj.Frame=add.Part(model2, false, true, "Really black", 0, Vector3.new(5, 1, 10))
        obj.sup=add.Part(model2, false, true, "Really black", 0, Vector3.new(1, 1, 5))
        obj.supW=add.Weld(obj.sup, obj.Frame, cn(-3, 0, -5))
        obj.Wheels=add.Cylinder(model2, false, true, "White", 0, Vector3.new(3, 1.5, 3))
        obj.WheelsW=add.Weld(obj.Wheels, obj.sup, cn(1.25, 0, -3)*ca(0, 0, mr(90)))
        obj.w=add.Wedge(model2, false, true, "Really black", 0, Vector3.new(1, 1, 1))
        obj.wW=add.Weld(obj.w, obj.sup, cn(0, 0, -3)*ca(0, 0, mr(90)))
        obj.w=add.Wedge(model2, false, true, "Really black", 0, Vector3.new(1, 1, 5))
        obj.wW=add.Weld(obj.w, obj.sup, cn(0, 1, 0))
        obj.w=add.Wedge(model2, false, true, "Really black", 0, Vector3.new(1, 1, 5))
        obj.wW=add.Weld(obj.w, obj.sup, cn(0, -1, 0)*ca(0, 0, pi))
        obj.w=add.Wedge(model2, false, true, "Really black", 0, Vector3.new(.5, 1, 2))
        obj.wW=add.Weld(obj.w, obj.Frame, cn(-2, 0, -6)*ca(0, 0, -mr(90)))
        obj.sup=add.Part(model2, false, true, "Really black", 0, Vector3.new(1, 1, 5))
        obj.supW=add.Weld(obj.sup, obj.Frame, cn(3, 0, -5))
        obj.Wheels2=add.Cylinder(model2, false, true, "White", 0, Vector3.new(3, 1.5, 3))
        obj.Wheels2W=add.Weld(obj.Wheels2, obj.sup, cn(-1.25, 0, -3)*ca(0, 0, mr(90)))
        obj.w=add.Wedge(model2, false, true, "Really black", 0, Vector3.new(1, 1, 1))
        obj.wW=add.Weld(obj.w, obj.sup, cn(0, 0, -3)*ca(0, 0, mr(-90)))
        obj.w=add.Wedge(model2, false, true, "Really black",0, Vector3.new(1, 1, 5))
        obj.wW=add.Weld(obj.w, obj.sup, cn(0, 1, 0))
        obj.w=add.Wedge(model2, false, true, "Really black", 0, Vector3.new(1, 1, 5))
        obj.wW=add.Weld(obj.w, obj.sup, cn(0, -1, 0)*ca(0, 0, pi))
        obj.w=add.Wedge(model2, false, true, "Really black", 0, Vector3.new(.5, 1, 2))
        obj.wW=add.Weld(obj.w, obj.Frame, cn(2, 0, -6)*ca(0, 0, mr(90)))
        obj.Wheel3=add.Cylinder(model2, false, true, "White", 0, Vector3.new(4.5, 2, 4.5))
        obj.Wheel3W=add.Weld(obj.Wheel3, obj.Frame, cn(3.5, .5, 5)*ca(0, 0, mr(90)))
        obj.Wheel4=add.Cylinder(model2, false, true, "White", 0, Vector3.new(4.5, 2, 4.5))
        obj.Wheel4W=add.Weld(obj.Wheel4, obj.Frame, cn(-3.5, .5, 5)*ca(0, 0, mr(-90)))
        obj.sR=add.Cylinder(model2, false, true, "Really black", 0, Vector3.new(3.5, 6, 3.5))
        obj.sRW=add.Weld(obj.sR, obj.Frame, cn(2.6, 0, 0)*ca(mr(90), 0, 0))
        obj.sL=add.Cylinder(model2, false, true, "Really black", 0, Vector3.new(3.5, 6, 3.5))
        obj.sLW=add.Weld(obj.sL, obj.Frame, cn(-2.6, 0, 0)*ca(mr(90), 0, 0))
        obj.VC=Instance.new("VehicleSeat", model2) obj.VC.HeadsUpDisplay=false obj.VC.CanCollide=false
        obj.VC.Size=Vector3.new(2, 1, 2)
        obj.VC.BottomSurface="Weld"
        obj.VCW=add.Weld(obj.VC, obj.Frame, cn(0, .2, 0))
        obj.w=add.Wedge(model2, false, true, "Really black", 0, Vector3.new(1, 1, 5))
        obj.wW=add.Weld(obj.w, obj.Frame, cn(0, 0, -5.5)*ca(0, pi/2, -pi/2))
        obj.w=add.Wedge(model2, false, true, "Really black",0, Vector3.new(1, 1, 5))
        obj.wW=add.Weld(obj.w, obj.Frame, cn(0, 0, -5.5)*ca(0, -pi/2, pi/2))
        obj.w=add.Wedge(model2, false, true, "Really black", 0, Vector3.new(1.5, 1, 3))
        obj.wW=add.Weld(obj.w, obj.Frame, cn(0, 0, -7)*ca(0, 0, 0))
        obj.p=add.Part(model2, false, true, "Really black", 0, Vector3.new(4, .5, 1))
        obj.pW=add.Weld(obj.p, obj.Frame, cn(0, .5, -5))
        obj.w=add.Wedge(model2, false, true, "Really black", 0, Vector3.new(.5, 3, 4))
        obj.wW=add.Weld(obj.w, obj.Frame, cn(.5, .6, -4.5)*ca(0, pi/2, -pi/2))
        obj.w=add.Wedge(model2, false, false, "Really black", .5, Vector3.new(1, 2, 1.5))
        obj.wW=add.Weld(obj.w, obj.Frame, cn(2, 1.25, -3.25)*ca(0, 0, -pi/2))
        obj.w=add.Wedge(model2, false, true, "Really black", 0, Vector3.new(.5, 3, 4))
        obj.wW=add.Weld(obj.w, obj.Frame, cn(-.5, .6, -4.5)*ca(0, -pi/2, pi/2))
        obj.w=add.Wedge(model2, false, false, "Really black", .5, Vector3.new(1, 2, 1.5))
        obj.wW=add.Weld(obj.w, obj.Frame, cn(-2, 1.25, -3.25)*ca(0, 0, pi/2))
        obj.w=add.Wedge(model2, false, true, "Really black", 0, Vector3.new(2, 1, 1.5))
        obj.wW=add.Weld(obj.w, obj.Frame, cn(0, 1.25, -4.75)*ca(0, 0, 0))
        obj.ps=add.Part(model2, false, false, "Really black", 0, Vector3.new(4, 1, 5))
        obj.psW=add.Weld(obj.ps, obj.Frame, cn(0, 2, 0))
        obj.w=add.Wedge(model2, false, false, "Really black", 0, Vector3.new(2, 1, 1.5))
        obj.wW=add.Weld(obj.w, obj.ps, cn(0, 0, -3.25)*ca(0, 0, 0))
        obj.w=add.Wedge(model2, false, false, "Really black", 0, Vector3.new(5, 1, 2))
        obj.wW=add.Weld(obj.w, obj.ps, cn(3, 0, 0)*ca(0, -pi/2, 0))
        obj.w=add.Wedge(model2, false, true, "Really black", 0, Vector3.new(5, 2, 1))
        obj.wW=add.Weld(obj.w, obj.ps, cn(3.5, -1.5, 0)*ca(pi, -pi/2, 0))
        obj.w=add.Wedge(model2, false, false, "Really black", 0, Vector3.new(5, 1, 2))
        obj.wW=add.Weld(obj.w, obj.ps, cn(-3, 0, 0)*ca(0, pi/2, 0))
        obj.w=add.Wedge(model2, false, true, "Really black", 0, Vector3.new(5, 2, 1))
        obj.wW=add.Weld(obj.w, obj.ps, cn(3.5, -1.5, 0)*ca(pi, -pi/2, 0))
        obj.csupt=add.Cylinder(model2, false, true, "Really black", 0, Vector3.new(1, 2.5, 1))
        obj.csuptW=add.Weld(obj.csupt, obj.Frame, cn(-3, 2, 2.5)*ca(mr(15), 0, 0))
        obj.csupt=add.Cylinder(model2, false, true, "Really black", 0, Vector3.new(1, 2.5, 1))
        obj.csuptW=add.Weld(obj.csupt, obj.Frame, cn(-2, 2, 2.5)*ca(mr(15), 0, 0))
        obj.p=add.Part(model2, false, false, "Really black", 0, Vector3.new(3.5, .2, 3))
        obj.pW=add.Weld(obj.p, obj.Frame, cn(-2.5, 3, 4))
        obj.csupt=add.Cylinder(model2, false, true, "Really black", 0, Vector3.new(1, 2.5, 1))
        obj.csuptW=add.Weld(obj.csupt, obj.Frame, cn(3, 2, 2.5)*ca(mr(15), 0, 0))
        obj.csupt=add.Cylinder(model2, false, true, "Really black", 0, Vector3.new(1, 2.5, 1))
        obj.csuptW=add.Weld(obj.csupt, obj.Frame, cn(2, 2, 2.5)*ca(mr(15), 0, 0))
        obj.p=add.Part(model2, false, false, "Really black", 0, Vector3.new(3.5, .2, 3))
        obj.pW=add.Weld(obj.p, obj.Frame, cn(2.5, 3, 4))
        obj.w=add.Wedge(model2, false, false, "Really black", 0, Vector3.new(5, 2, 2.5))
        obj.wW=add.Weld(obj.w, obj.ps, cn(0, -.5, 3.75)*ca(0, pi, 0))
        obj.c=add.Cylinder(model2, false, false, "Really black", 0, Vector3.new(3.5, 2, 3.5))
        obj.cW=add.Weld(obj.c, obj.Frame, cn(0, 1, 5)*ca(mr(90), 0, 0))
        obj.TS=add.Cylinder(model2, false, true, "Really black", 0, Vector3.new(3, 2, 3))
        obj.TSW=add.Weld(obj.TS, obj.c, cn(0, 1, 0)*ca(0, 0, 0))
        obj.TSM=add.Mesh("SpecialMesh", obj.TS, Vector3.new(.75, .1, .75), nil, "http://www.roblox.com/Asset/?id=10207677")
        obj.top=add.Part(model2, false, false, "Really black", 0, Vector3.new(4, 1.5, 4))
        obj.topW=add.Weld(obj.top, obj.ps, cn(0, .5, 0))
        obj.topM=add.Mesh("SpecialMesh", obj.top, Vector3.new(1, 1, 1), "Sphere")
        --Machine Gun
        obj.mr=add.Part(model2, false, false, "Really black", 0, Vector3.new(1, 1, 2))
        obj.mrw=add.Weld(obj.mr, obj.Frame, cn(0, 0, 0))
        obj.br=add.Part(model2, false, false, "Really black", 0, Vector3.new(1.5, 1.5, 2.5))
        obj.brw=add.Weld(obj.br, obj.mr, cn(1, 0, 0))
        obj.gr=add.Part(model2, false, false, "Really black", 0, Vector3.new(.5, .5, 1))
        obj.grw=add.Weld(obj.gr, obj.br, cn(0, 0, -1))
        obj.ml=add.Part(model2, false, false, "Really black", 0, Vector3.new(1, 1, 2))
        obj.mlw=add.Weld(obj.ml, obj.Frame, cn(0, 0, 0))
        obj.bl=add.Part(model2, false, false, "Really black", 0, Vector3.new(1.5, 1.5, 2.5))
        obj.blw=add.Weld(obj.bl, obj.ml, cn(-1, 0, 0))
        obj.gl=add.Part(model2, false, false, "Really black", 0, Vector3.new(.5, .5, 1))
        obj.glw=add.Weld(obj.gl, obj.bl, cn(0, 0, -1))
        --Rocket
        obj.rck=add.Cylinder(model2, false, false, "Really black", 0, Vector3.new(1, 4, 1))
        obj.rckw=add.Weld(obj.rck, obj.Frame, cn(0, 0, 0)*ca(-pi/2, 0, 0))
        obj.rock=add.Part(model2, false, false, "Really black", 1, Vector3.new(1, 1, 1))
        obj.rockw=add.Weld(obj.rock, obj.rck, cn(0, 1.5, 0)*ca(pi/2, 0, 0))
        --Blade
        obj.p1=add.Part(model2, false, false, "White", 0, Vector3.new(3, .2, 1))
        obj.p1w=add.Weld(obj.p1, obj.Frame, cn(0, 0, 0))
        obj.br=add.Wedge(model2,false, false, "White", 0, Vector3.new(.2, 2, 1))
        obj.brW=add.Weld(obj.br, obj.p1, cn(2.5, 0, 0)*ca(0, 0, -pi/2))
        
        obj.p2=add.Part(model2, false, false, "White", 0, Vector3.new(3, .2, 1))
        obj.p2w=add.Weld(obj.p2, obj.Frame, cn(0, 0, 0))
        obj.bl=add.Wedge(model2,false, false, "White", 0, Vector3.new(.2, 2, 1))
        obj.blW=add.Weld(obj.bl, obj.p2, cn(-2.5, 0, 0)*ca(0, 0, pi/2))
        --Animate
        animate={
                ["Wheel"]=function(cf)
                        obj.Wheels2W.C1=cn(-1.25, 0, -3)*ca(0, 0, mr(90))*cf
                end,
                ["Wheel2"]=function(cf)
                        obj.WheelsW.C1=cn(1.25, 0, -3)*ca(0, 0, mr(90))*cf
                end,
                ["Wheel3"]=function(cf)
                        obj.Wheel3W.C1=cn(3.5, .5, 5)*ca(0, 0, mr(90))*cf
                end,
                ["Wheel4"]=function(cf)
                        obj.Wheel4W.C1=cn(-3.5, .5, 5)*ca(0, 0, mr(-90))*cf
                end,
                ["MachineGunR"]=function(cf)
                        obj.mrw.C1=cf
                end,
                ["MachineGunL"]=function(cf)
                        obj.mlw.C1=cf
                end,
                ["MachineGunL"]=function(cf)
                        obj.mlw.C1=cf
                end,
                ["Rocket"]=function(cf)
                        obj.rckw.C1=cf*ca(-pi/2, 0, 0)
                end,
                ["BladeR"]=function(cf)
                        obj.p1w.C1=cf
                end,
                ["BladeL"]=function(cf)
                        obj.p2w.C1=cf
                end,
                ["Booster"]=function(cf)
                        obj.cW.C1=cn(0, 1, 5)*ca(mr(90), 0, 0)*cf
                end,
        }
end
function play(soundid, pitch, volume)
        local sound=add.Sound(workspace, soundid, pitch, volume)
        sound:play()
        c(function() wait(5) sound:remove() end)
end
function fade(part, incr)
        if part:isA("BasePart") then
                for i=part.Transparency, 1, incr do part.Transparency=i wait() end
        elseif part:isA("Model") then
                for i, v in pairs(part:children() or part) do
                        if v:isA("BasePart") then
                                c(function()for i=v.Transparency, 1, incr do v.Transparency=i wait() end end)
                        end
                end
        end
end
function appear(part, incr)
        if part:isA("BasePart") then
                for i=part.Transparency, 0, -incr do v.Transparency=i wait() end
        elseif part:isA("Model") then
                for i, v in pairs(part:children() or part) do
                        if v:isA("BasePart") then
                                c(function()for i=v.Transparency, 0, -incr do v.Transparency=i wait() end end)
                        end
                end
        end
end
function computePos(pos, pos2)
        local pos3=Vector3.new(pos2.x, pos.y, pos2.z) 
        return cn(pos, pos3)
end
function rayCast(pos, dir, max, ingore)
        return workspace:findPartOnRay(Ray.new(pos, dir.unit*(max or 999)), ignore)
end
function nearObj(pos, dis)
        local temp
        local distance=dis
        for i, v in pairs(workspace:children()) do
                if v:isA("Model") then
                        temp=v:findFirstChild("Torso")
                        local humanoid=v:findFirstChild("Humanoid")
                        if temp and humanoid and v~=char and (temp.CFrame.p-pos).magnitude<distance then
                                distance=(temp.CFrame.p-pos).magnitude
                                return temp.Parent
                        end
                end
        end
end
function trail(prt, cf, thick, col)
        c(function()
                trails=true
                local old=(prt.CFrame*(cf or cn())).p
                local trm=Instance.new("Model", workspace)
                while trails do
                        local new=(prt.CFrame*(cf or cn())).p
                        local mag=(old-new).magnitude
                        local dis=(old+new)/2 
                        local trail=add.Cylinder(trm, true, false, col or "White", .2, Vector3.new(1, 1, 1), cn(dis, new)*ca(pi/2, 0, 0), Vector3.new(thick, mag, thick))
                        old=new
                        c(function()
                                for i=1, 0, -.1 do trail.Mesh.Scale=trail.Mesh.Scale*Vector3.new(i, 1, i) wait() end
                                trail:remove()
                        end)
                        wait()
                end
                trm:remove()
        end)
end
boosts=false
function boost(prt, thick, col)
        c(function()
                boosts=true
                local trm=Instance.new("Model", workspace)
                while boosts do
                        local ef=add.Part(trm, false, false, "Bright yellow", .2, Vector3.new(1, .5, 1))
                        local efm=add.Mesh("SpecialMesh", ef, Vector3.new(thick, thick, thick), nil, Meshes.Crown)
                        add.Weld(ef, prt, cn(0, 4, 0)*ca(0, mr(mrand(-360, 360)), 0))
                        game.Debris:addItem(ef, .2)
                        local trail=add.Part(trm, true, false, col or "White", .2, Vector3.new(1, 1, 1), prt.CFrame*cn(0, 2, 0)*ca(mr(mrand(-360, 360)), mr(mrand(-360, 360)), mr(mrand(-360, 360))), Vector3.new(thick, thick, thick))
                        c(function()
                                for i=1, 0, -.1 do trail.Mesh.Scale=trail.Mesh.Scale*Vector3.new(i, i, i) wait() end
                                trail:remove()
                        end)
                        wait()
                end
                trm:remove()
        end)
end
function stickHit(from, to)
        local stickW=add.Weld(from, to, to.CFrame:inverse()*from.CFrame)
        stickW.C0=from.CFrame:inverse()*from.CFrame
        return stickW
end
function glowMesh(prt, size, speed)
        local glow=prt:clone() add.Weld(prt, glow)
        glow.Parent=workspace
        glow.Anchored=false
        glow.CanCollide=false
        for i, v in pairs(glow:children()) do
                if v:isA("SpecialMesh") or v:isA("BlockMesh") or v:isA("CylinderMesh") then
                        c(function()
                                for i=0, size, speed do v.Scale=v.Scale+Vector3.new(i, i, i) wait() end
                        end)
                        c(function()
                                fade(glow, .1) glow:remove()
                        end)
                end
        end
end
function sliceHit(prt)
        prt.Touched:connect(function(h)
                if key==true and not hit and h.Parent~=player.Character then
                        hit=true
                        pcall(function()
                                print("Slicing")
                                local pYPos=h.Position.y-(h.Size.y/2)
                                local sYPos=prt.Position.y
                                if sYPos<=pYPos or sYPos>=(pYPos+h.Size.y) then return end
                                local p=h:clone() p.Parent=workspace p.Anchored=false p.CanCollide=true
                                local p2=h:clone() p2.Parent=workspace p2.Anchored=false p2.CanCollide=true
                                h:remove()
                                p.formFactor="Custom"
                                p2.formFactor="Custom"
                                p.TopSurface="Smooth"
                                p.BottomSurface="Smooth"
                                p.Friction=0
                                p2.Friction=0
                                p.Size=Vector3.new(h.Size.x, sYPos-pYPos, h.Size.z)
                                p2.Size=Vector3.new(h.Size.x, p2.Size.y-(sYPos-pYPos), h.Size.z)
                                p.CFrame=h.CFrame*CFrame.new(0, -p2.Size.y/2, 0)
                                p2.CFrame=h.CFrame*CFrame.new(0, p.Size.y/2, 0)
                                c(function()
                                        wait(5)
                                        p:remove() p2:remove()
                                end)
                        end)
                        wait(.1)
                        hit=false
                end
        end)
end
function dmgHit(prt)
        prt.Touched:connect(function(h)
                if key==true and h.Parent:findFirstChild("Humanoid") and not hit and h.Parent~=player.Character then
                        hit=true
                        local fakeM=Instance.new("Model", workspace)
                        fakeM.Name=-dmg*mrand(1, 1.5)
                        local hHuman=h.Parent:findFirstChild("Humanoid")
                        local hTorso=h.Parent:findFirstChild("Torso")
                        local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
                        local label=add.Part(fakeM, false, false, "Bright red", 0, Vector3.new(.2, .2, .2), h.CFrame*cn(mrand(-2, 2), 4, mrand(-2, 2)), Vector3.new(.1, .1, .1)) label.Name="Head"
                        c(function()
                                local bv=Instance.new("BodyVelocity", label)
                                bv.maxForce=Vector3.new(inf, inf, inf)
                                bv.velocity=Vector3.new(0, 4.5, 0)
                                Game.Debris:addItem(fakeM, 1)
                        end)
                        hHuman.Health=hHuman.Health-dmg
                        wait(.1)
                        hit=false
                end
        end)
end
function rockHit(prt)
        prt.Touched:connect(function(h)
                if key==true and not hit and h.Parent~=player.Character then
                        hit=true
                        if h.Parent:findFirstChild("Humanoid") then
                        local fakeM=Instance.new("Model", workspace)
                        fakeM.Name=-dmg*mrand(2, 5.5)
                        local hHuman=h.Parent:findFirstChild("Humanoid")
                        local hTorso=h.Parent:findFirstChild("Torso")
                        local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
                        local label=add.Part(fakeM, false, false, "Bright red", 0, Vector3.new(.2, .2, .2), h.CFrame*cn(mrand(-2, 2), 4, mrand(-2, 2)), Vector3.new(.1, .1, .1)) label.Name="Head"
                        c(function()
                                local bv=Instance.new("BodyVelocity", label)
                                bv.maxForce=Vector3.new(inf, inf, inf)
                                bv.velocity=Vector3.new(0, 4.5, 0)
                                Game.Debris:addItem(fakeM, 1)
                        end)
                        hHuman.Health=hHuman.Health-dmg
                        end
                        local e=Instance.new("Explosion", workspace)
                        e.BlastPressure=2
                        e.BlastRadius=4
                        e.Position=h.Position
                        prt:remove()
                        wait()
                        hit=false
                end
        end)
end
function makeCrater(cf, size)
        local to=cf.p-(cf.p+Vector3.new(0, 200, 0))
        local hit, pos=rayCast(cf.p, to)
        if hit and pos then
                for i=1, 3 do
                        local cr=add.Part(workspace, true, false, hit.Color or "Brown", 0, Vector3.new(1+size, size, 2+size), cn(pos+Vector3.new(mrand(-2+size/2, 2+size/2), 0, mrand(-2+size/2, 2+size/2)))*ca(mr(mrand(-4, 4)), mr(mrand(-360, 360)), mr(mrand(-35, 35))))
                end
        end
end
function makeLightning(from, to, thick, col)
        local magnitude=(from.p-to.p).magnitude
        local distance=(from.p+to.p)/2
        local pattern=add.Part(workspace, true, false, "White", 1, Vector3.new(.2, .2, magnitude), cn(distance, from.p))
        local fromPosProx=from.p
        local lim=Instance.new("Model", workspace)
        for i=1, 4 do
                local fromPosProx2=fromPosProx
                local random=Vector3.new(mrand(-1, 1), mrand(-1, 1), mrand(-1, 1))
                local findSize=pattern.Size.z/4
                local findOffSet=pattern.CFrame.lookVector*-1
                local compute=i*findSize*findOffSet
                local newfromPos=from.p
                local newEndPos=cn(random+compute+newfromPos).p
                local magnitude=(fromPosProx2-newEndPos).magnitude
                local distance=(fromPosProx2+newEndPos)/2
                local lightning=add.Part(lim, true, false, col or "Bright yellow", 0, Vector3.new(1, 1, 1), cn(distance, fromPosProx2), Vector3.new(thick, thick, magnitude))
                fromPosProx=newEndPos
                game.Debris:addItem(lim, 1)
        end
        pattern:remove()
end
function makeCircle(prt ,dis, rep, angle)
        local cm=Instance.new("Model", prt.Parent)
        for i=angle*2/rep, angle*2 do
                local prt2=prt:clone()
                prt2.Parent=cm
                prt2.CFrame=prt.CFrame*cn(dis*ms(i), 0, dis*mc(i))
        end
        prt:remove()
        return cm
end
local bv=Instance.new("BodyVelocity") bv.maxForce=Vector3.new(inf, 0, inf)
local bav=Instance.new("BodyAngularVelocity") bav.maxTorque=Vector3.new(inf, inf, inf)
function startBoost()
        boost(obj.TS, 3, "Bright orange")
        while boosts do
                if speed<150 then
                        speed=speed+2
                        bv.velocity=obj.Frame.CFrame.lookVector*speed
                end
                wait()
        end
end
local fire=false
function startMG()
        fire=true
        for i=0, 1, .1 do
                animate.MachineGunR(cn(4.5*i, 0, 0))
                animate.MachineGunL(cn(-4.5*i, 0, 0))
                wait()
        end
        while fire do
                local mb=add.Part(workspace, false, false, "Bright yellow", 0, Vector3.new(.2, .2, 1), obj.gr.CFrame+obj.gr.CFrame.lookVector)
                dmgHit(mb)
                local f=Instance.new("BodyForce", mb) f.force=Vector3.new(0, mb:getMass()*196.25, 0)
                local v=Instance.new("BodyVelocity", mb) v.maxForce=Vector3.new(inf, inf, inf) v.velocity=mb.CFrame.lookVector*200
                local ef=add.Part(workspace, false, false, "Bright yellow", .2, Vector3.new(1, .5, 1))
                local efm=add.Mesh("SpecialMesh", ef, Vector3.new(1, 1, 1), nil, Meshes.Crown)
                add.Weld(ef, obj.gr, cn(0, 0, -1)*ca(-pi/2, 0, 0))
                game.Debris:addItem(ef, .1)
                game.Debris:addItem(mb, 1.5)
                
                local mb2=add.Part(workspace, false, false, "Bright yellow", 0, Vector3.new(.2, .2, 1), obj.gl.CFrame+obj.gl.CFrame.lookVector)
                dmgHit(mb2)
                local f=Instance.new("BodyForce", mb2) f.force=Vector3.new(0, mb2:getMass()*196.25, 0)
                local v=Instance.new("BodyVelocity", mb2) v.maxForce=Vector3.new(inf, inf, inf) v.velocity=mb2.CFrame.lookVector*200
                local ef=add.Part(workspace, false, false, "Bright yellow", .2, Vector3.new(1, .5, 1))
                local efm=add.Mesh("SpecialMesh", ef, Vector3.new(1, 1, 1), nil, Meshes.Crown)
                add.Weld(ef, obj.gl, cn(0, 0, -1)*ca(-pi/2, 0, 0))
                game.Debris:addItem(ef, .1)
                game.Debris:addItem(mb2, 1.5)
                wait(.1)
        end
        for i=1, 0, -.1 do
                animate.MachineGunR(cn(4.5*i, 0, 0))
                animate.MachineGunL(cn(-4.5*i, 0, 0))
                wait()
        end
end
function startRocket()
                for i=0, 1, .1 do
                        animate.Rocket(cn(0, 0, -8*i))
                        wait()
                end
                wait(.2)
                local mb=add.Part(workspace, false, false, "Bright yellow", 0, Vector3.new(1, 1, 2), obj.rock.CFrame+obj.rock.CFrame.lookVector*2)
                rockHit(mb)
                local f=Instance.new("BodyForce", mb) f.force=Vector3.new(0, mb:getMass()*196.25, 0)
                local v=Instance.new("BodyVelocity", mb) v.maxForce=Vector3.new(inf, inf, inf) v.velocity=mb.CFrame.lookVector*300
                local ef=add.Part(workspace, false, false, "Bright yellow", .2, Vector3.new(1, .5, 1))
                local efm=add.Mesh("SpecialMesh", ef, Vector3.new(1.5, 1.5, 1.5), nil, Meshes.Crown)
                add.Weld(ef, obj.rock, cn(0, 0, -.5)*ca(-pi/2, 0, 0))
                game.Debris:addItem(ef, .1)
                game.Debris:addItem(mb, 1.5)
                wait(.2)
                for i=1, 0, -.1 do
                        animate.Rocket(cn(0, 0, -8*i))
                        wait()
                end
end
function startSelfDestruct()
        obj.VCW:remove()
        obj.VC.CanCollide=false
        local p=Instance.new("BodyPosition", obj.VC) p.maxForce=Vector3.new(inf, inf, inf) p.position=obj.VC.Position+Vector3.new(0, 300, 0)
        wait(1)
        local e=Instance.new("Explosion", workspace)
        e.BlastPressure=500
        e.BlastRadius=500
        e.Position=obj.Frame.Position
end
local slice=false
function startSlice()
        slice=true
        for i=0, 1, .1 do
                animate.BladeR(cn(5.5*i, 0, 0))
                animate.BladeL(cn(-5.5*i, 0, 0))
                wait()
        end
        sliceHit(obj.p1) sliceHit(obj.p2)
        sliceHit(obj.br) sliceHit(obj.bl)
        while slice do wait() end
        for i=1, 0, -.1 do
                animate.BladeR(cn(5.5*i, 0, 0))
                animate.BladeL(cn(-5.5*i, 0, 0))
                wait()
        end
end
local hover=false
function startHover()
        bv.maxForce=Vector3.new(inf, inf, inf)
        for i=0, 1, .05 do
                animate.Wheel(ca(0, 0, mr(90*i)))
                animate.Wheel2(ca(0, 0, mr(-90*i)))
                animate.Wheel3(ca(0, 0, mr(90*i)))
                animate.Wheel4(ca(0, 0, mr(-90*i)))
                animate.Booster(ca(mr(90*i), 0, 0))
                bv.velocity=bv.velocity+Vector3.new(0, 10*i, 0)
                wait()
        end
        boost(obj.TS, 3, "Bright orange")
        bv.velocity=Vector3.new(0, 0, 0)
        while hover do bv.velocity=bv.velocity+Vector3.new(0, 10, 0) wait(1) bv.velocity=Vector3.new(0, 0, 0) wait(.5) bv.velocity=bv.velocity-Vector3.new(0, 10, 0) wait(1) bv.velocity=Vector3.new(0, 0, 0) wait(.5) end
        for i=1, 0, -.05 do
                animate.Wheel(ca(0, 0, mr(90*i)))
                animate.Wheel2(ca(0, 0, mr(-90*i)))
                animate.Wheel3(ca(0, 0, mr(90*i)))
                animate.Wheel4(ca(0, 0, mr(-90*i)))
                animate.Booster(ca(mr(90*i), 0, 0))
                bv.velocity=bv.velocity-Vector3.new(0, 5-5*i, 0)
                wait()
        end
        bv.maxForce=Vector3.new(inf, 0, inf)
        boosts=false
end
function KeyDown(k)
        if k=="b" and not key and not boosts then
                key=true
                startBoost()
        end
        if k=="x" and not hover then
                hover=true
                startHover()
        elseif k=="x" and hover then
                hover=false
        end
        if k=="c" and not key and not slice then
                key=true
                startSlice()
        end
        if k=="r" and not key then
                key=true
                startRocket()
                key=false
        end
        if k=="g" and not key then
                key=true
                startSelfDestruct()
                key=false
        end
        if k=="f" and not key and not fire then
                key=true
                startMG()
        end
        if k=="v" and not key then
                key=true
                speed=0
                key=false
        end
end
function KeyUp(k)
        if k=="b" and boosts and key then
                key=false
                boosts=false
        end
        if k=="f" and fire and key then
                key=false
                fire=false
        end
        if k=="c" and slice and key then
                key=false
                slice=false
        end
end
local engine=false
createParts()
obj.VC.ChildAdded:connect(function(ad)
        if ad.Name=="SeatWeld" then
                torso=ad.Part1
                local vc=obj.VC
                if torso then print("Found")
                        player=game.Players:getPlayerFromCharacter(torso.Parent)
                        mouse=player:GetMouse()
                        ad.C1=ad.C1*CFrame.new(0, 0, 1.5)
                        bv.Parent=obj.Frame
                        bav.Parent=obj.Frame
                        gui.Parent=player.PlayerGui
                        mouse.KeyDown:connect(KeyDown)
                        mouse.KeyUp:connect(KeyUp)
                        engine=true
                        while torso and vc and engine do print("working")
                                obj.AL.Text="Speed("..speed..")"
                                if vc.Throttle==1 and speed<100 then
                                        speed=speed+1
                                        bv.velocity=obj.Frame.CFrame.lookVector*speed
                                end
                                if vc.Throttle==-1 and speed>-100 then
                                        speed=speed-1
                                        bv.velocity=obj.Frame.CFrame.lookVector*speed
                                end
                                if vc.Throttle==0 and speed>0 then
                                        speed=speed-1
                                        bv.velocity=obj.Frame.CFrame.lookVector*speed
                                end
                                if vc.Throttle==0 and speed<0 then
                                        speed=speed+1
                                        bv.velocity=obj.Frame.CFrame.lookVector*speed
                                end
                                if vc.Steer==1 then
                                        bav.angularvelocity=Vector3.new(0, -2, 0)
                                        if not hover then
                                                animate.Wheel2(ca(mr(-25), 0, 0))
                                                animate.Wheel(ca(mr(-25), 0, 0))
                                        end
                                end
                                if vc.Steer==-1 then
                                        bav.angularvelocity=Vector3.new(0, 2, 0)
                                        if not hover then
                                                animate.Wheel2(ca(mr(25), 0, 0))
                                                animate.Wheel(ca(mr(25), 0, 0))
                                        end
                                end
                                if vc.Steer==0 then
                                        bav.angularvelocity=Vector3.new(0, 0, 0)
                                        if not hover then
                                                animate.Wheel2(ca(0, 0, 0))
                                                animate.Wheel(ca(0, 0, 0))
                                        end
                                end
                                wait()
                        end
                end
        end
end)
obj.VC.ChildRemoved:connect(function()
        bv.Parent=nil bav.Parent=nil gui.Parent=nil engine=false
end)
 
end}
module[3] = {"Batman",function()
--MADE BY OneLegend (NOT THE SCRIPT) LOCAL SCRIPT: Go to line 4 and put your name where it says "YOUR NAME HERE"


me = game.Players.LocalPlayer

h = Instance.new("HopperBin",me.Backpack)

h.Name = "Batman"

script.Parent = h



bin = script.Parent

hold = false



deb = false



torso = me.Character.Torso

rarm = torso["Right Shoulder"]

larm = torso["Left Shoulder"]

leftnorm = larm.C0

rightnorm = rarm.C0



part = Instance.new("Part",me.Character)

part.Size = Vector3.new(1,1,1)

part.Position = Vector3.new(0,10,0)

part.CanCollide = false

part.Transparency = 1



weld = Instance.new("Weld",torso)

weld.Part0 = torso

weld.Part1 = part

weld.C1 = CFrame.fromEulerAnglesXYZ(-1.57,0,0) * CFrame.new(0,0,0)



wings = part:clone()

wings.Parent = me.Character

wings.Transparency = 0



mesh = Instance.new("SpecialMesh",wings)

mesh.MeshType = "FileMesh"

mesh.MeshId = "http://www.roblox.com/asset/?id=19367744"

mesh.TextureId = "http://www.roblox.com/asset/?id=19367734"

mesh.Scale = Vector3.new(2,2,2)



w2 = Instance.new("Weld",torso)

w2.Part0 = w2.Parent

w2.Part1 = wings

w2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.2,-2)



brick = part:clone()

brick.Parent = me.Character



wah = Instance.new("Weld",torso)

wah.Part0 = torso

wah.Part1 = brick

wah.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-1.2,-0.5,0)



rw = Instance.new("Weld",brick)

rw.Part0 = nil

rw.Part1 = nil

rw.C1 = CFrame.fromEulerAnglesXYZ(-0.6,-0.1,-0.2) * CFrame.new(0,0.5,0.3)



star = Instance.new("Part",game.Lighting)

star.formFactor = "Plate"

star.Size = Vector3.new(1,0.4,1)

star.CanCollide = false

star:BreakJoints()



starmesh = Instance.new("SpecialMesh",star)

starmesh.MeshType = "FileMesh"

starmesh.MeshId = "http://www.roblox.com/asset/?id=11376946"

starmesh.TextureId = "http://www.roblox.com/asset/?id=11376931"

starmesh.Scale = Vector3.new(3,3,3)



speed = 0

maxspeed = 100



bin.Selected:connect(function(mouse)

speed = 0

rw.Part0 = brick

rw.Part1 = me.Character["Right Arm"]

star.Parent = me.Character

wepweld = Instance.new("Weld",me.Character["Right Arm"])

wepweld.Part0 = wepweld.Parent

wepweld.Part1 = star

wepweld.C1 = CFrame.fromEulerAnglesXYZ(1.57,1,0) * CFrame.new(0,1.4,0)

mouse.Button1Down:connect(function()

if deb then return end

deb = true

hold = true

me.Character.Humanoid.PlatformStand = true

bg = Instance.new("BodyGyro",part)

bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)

bv = Instance.new("BodyVelocity",part)

bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)

bg.cframe = CFrame.new(part.Position, mouse.Hit.p)

bv.velocity = part.CFrame.lookVector * speed

while hold do

wait()

speed = speed + 2

if speed >= maxspeed then

speed = maxspeed

end

bg.cframe = CFrame.new(part.Position, mouse.Hit.p) 

bv.velocity = part.CFrame.lookVector * speed

end

end)

mouse.Button1Up:connect(function()

hold = false

me.Character.Humanoid.PlatformStand = false

for i = speed, 0, -8 do

wait()

speed = i

bv.velocity = part.CFrame.lookVector * speed

end

bg:remove()

bv:remove()

deb = false

end)

mouse.KeyDown:connect(function(key)

key = key:lower()

if key == "q" then

local bav = Instance.new("BodyAngularVelocity",torso)

bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge)

bav.angularvelocity = torso.CFrame.lookVector * -10

wait(0.6)

bav:remove()

elseif key == "e" then

local bav = Instance.new("BodyAngularVelocity",torso)

bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge)

bav.angularvelocity = torso.CFrame.lookVector * 10

wait(0.6)

bav:remove()

elseif key == "f" then

for i=1, 4 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.1,0.05,-0.3)

wait()

end

for i=1, 3 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.05,0.1,0.4)

wait()

end

local throw = star:clone()

throw.Parent = workspace

throw.CanCollide = true

throw.CFrame = star.CFrame * CFrame.new(0,0,-2)

throw.CFrame = CFrame.new(throw.Position, mouse.Hit.p)

throw.Velocity = throw.CFrame.lookVector * 230

for i=1, 3 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.05,0.1,0.4)

wait()

end

for i=1, 4 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.1,-0.1,-0.3)

wait()

end

rw.C0 = CFrame.new(0,0,0)

end

end)

end)



bin.Deselected:connect(function()

rw.Part0 = nil

rw.Part1 = nil

star.Parent = game.Lighting

speed = 0

end)


end}
module[4] = {"Bird Script",function()

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



function bird(pos)

	local mod = Instance.new("Model")

	mod.Name = "Bird"

	local main = Instance.new("Part")

	prop(main,mod,true,0,0,1.5,1.4,2.5,"Black",false,"Custom")

	main.CFrame = CFrame.new(pos) * CFrame.Angles(0,math.random(-32,32)/10,0)

	main.Name = "Torso"

	Instance.new("SpecialMesh",main).MeshType = "Sphere"



	local pa1 = Instance.new("Part")

	prop(pa1,mod,false,0,0,0.9,1,0.9,"Black",false,"Custom")

	pa1.CFrame = main.CFrame

	pa1.Name = "Head"

	Instance.new("SpecialMesh",pa1).MeshType = "Sphere"



	local pa2 = Instance.new("Part")

	prop(pa2,mod,false,0,0,0.2,0.4,0.7,"Neon orange",false,"Custom")

	pa2.CFrame = main.CFrame

	Instance.new("SpecialMesh",pa2).MeshType = "Wedge"



	local wing1 = Instance.new("Part")

	prop(wing1,mod,false,0,0,0.2,1.8,1.1,"Black",false,"Custom")

	wing1.CFrame = main.CFrame



	local wing2 = Instance.new("Part")

	prop(wing2,mod,false,0,0,0.2,1.8,1.1,"Black",false,"Custom")

	wing2.CFrame = main.CFrame





	local w1 = Instance.new("Weld")

	weld(w1,main,pa1,0.5,0,0,0,-0.6,1.2)

	w1.Name = "Neck"



	local w2 = Instance.new("Weld")

	weld(w2,main,pa2,-0.2,0,0,0,-0.6,1.7)



	local wi1 = Instance.new("Weld")

	weld(wi1,main,wing1,0,0,math.pi/2,-1,-0.1,0.1)

	local worig1 = CFrame.new(0.4,0,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.4)

	wi1.C0 = worig1



	local wi2 = Instance.new("Weld")

	weld(wi2,main,wing2,0,0,-math.pi/2,1,-0.1,0.1)

	local worig2 = CFrame.new(-0.4,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0.4)

	wi2.C0 = worig2



	local hum = Instance.new("Humanoid",mod)

	hum.Name = "Humanoid"

	hum.MaxHealth = 30

	hum.Health = 30



	local bv = Instance.new("BodyVelocity",main)

	bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)

	bv.P = 5000

	bv.velocity = main.CFrame.lookVector * 6



	local bav = Instance.new("BodyAngularVelocity",main)

	bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge)

	bav.P = 5000

	bav.angularvelocity = Vector3.new(0,0,0)



	hum.Died:connect(function()

		bv:remove()

		bav:remove()

		wait(4)

		mod:remove()

	end)

	mod.Parent = workspace

	mod:MakeJoints()

	coroutine.resume(coroutine.create(function()

		while true do

			for i=0.4,-0.4,-0.15 do

				wait()

				wi1.C0 = worig1 * CFrame.fromEulerAnglesXYZ(0,0,i)

				wi2.C0 = worig2 * CFrame.fromEulerAnglesXYZ(0,0,-i)

			end

			for i=0.4,-0.4,-0.15 do

				wait()

				wi1.C0 = worig1 * CFrame.fromEulerAnglesXYZ(0,0,-i)

				wi2.C0 = worig2 * CFrame.fromEulerAnglesXYZ(0,0,i)

			end

		end

	end))

	coroutine.resume(coroutine.create(function()

		while true do

			wait(0.1)

			local turn = math.random(1,6)

			coroutine.resume(coroutine.create(function()

				if turn == 1 then

					bav.angularvelocity = Vector3.new(0,6,0)

					wait(1)

					bav.angularvelocity = Vector3.new(0,0,0)

					bv.velocity = main.CFrame.lookVector * 6

				elseif turn == 2 then

					bav.angularvelocity = Vector3.new(0,-6,0)

					wait(1)

					bav.angularvelocity = Vector3.new(0,0,0)

					bv.velocity = main.CFrame.lookVector * 6

				end

			end))

		end

	end))

end



for i=1, math.random(4,11) do

	local poz = Vector3.new(math.random(-100,100),math.random(60,80),math.random(-100,100))

	bird(poz)

end


end}
module[5] = {"Bird Wings",function()


function fly()

for i,v in pairs(script:GetChildren()) do

        pcall(function() v.Value = "" end)

        game:GetService("Debris"):AddItem(v,.1)

end

function weld(p0,p1,c0,c1,par)

        local w = Instance.new("Weld",p0 or par)

        w.Part0 = p0

        w.Part1 = p1

        w.C0 = c0 or CFrame.new()

        w.C1 = c1 or CFrame.new()

        return w

end

local motors = {}

function motor(p0,p1,c0,c1,des,vel,par)

        local w = Instance.new("Motor6D",p0 or par)

        w.Part0 = p0

        w.Part1 = p1

        w.C0 = c0 or CFrame.new()

        w.C1 = c1 or CFrame.new()

        w.MaxVelocity = tonumber(vel) or .05

        w.DesiredAngle = tonumber(des) or 0

        return w

end

function lerp(a,b,c)

    return a+(b-a)*c

end

function clerp(c1,c2,al)

        local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}

        local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}

        for i,v in pairs(com1) do

                com1[i] = lerp(v,com2[i],al)

        end

        return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))

end

function ccomplerp(c1,c2,al)

        local com1 = {c1:components()}

        local com2 = {c2:components()}

        for i,v in pairs(com1) do

                com1[i] = lerp(v,com2[i],al)

        end

        return CFrame.new(unpack(com1))

end

function tickwave(time,length,offset)

        return (math.abs((tick()+(offset or 0))%time-time/2)*2-time/2)/time/2*length

end

function invcol(c)

        c = c.Color

        return BrickColor.new(Color3.new(1-c.b,1-c.g,1-c.r))

end

local oc = oc or function(...) return ... end

local plr = game.Players.LocalPlayer

local char = plr.Character

local tor = char.Torso

local hum = char.Humanoid

hum.PlatformStand = false

pcall(function()

        char.Wings:Destroy()

end)

pcall(function()

        char.Angel:Destroy() -- hat

end)

local mod = Instance.new("Model",char)

mod.Name = "Wings"

local special = {

        --antiboomz0r = {"Really black","Institutional white",0,0,false,Color3.new(1,1,.95),Color3.new(1,1,.6)},

        antiboomz0r = {"New Yeller",nil,0.4,0.7,true,Color3.new(1,1,.95),Color3.new(1,1,.6)},

        --antiboomz0r = {"Cyan","Toothpaste",0,0,false,Color3.new(1,0,0),Color3.new(0,0,0)},

        taart = {"Royal purple",nil,.4,.4,true},

        mitta = {"Black",nil,0,0,false},

        penjuin3 = {"White",nil,0,0,false},

        thepc8110 = {"Black","Bright red",.5,0,false,Color3.new(1,0,0),Color3.new(0,0,0)},

        nonspeaker = {"Cyan","Toothpaste",0,0,false,Color3.new(1,0,0),Color3.new(0,0,0)},

        littleau999 = {"Reddish brown",1030,0,0,false},

        unscripter = {"Really black","Really black",.2,0,true,Color3.new(0,0,0),Color3.new(0,0,0)},

        oxcool1 = {"Really black","White",.2,0,false,Color3.new(0,0,0),Color3.new(0,0,0)},

        krodmiss = {"Really black",nil,0,0,false},

}

local topcolor = invcol(char.Torso.BrickColor)

local feacolor = char.Torso.BrickColor

local ptrans = 0

local pref = 0

local fire = false

local fmcol = Color3.new()

local fscol = Color3.new()

local spec = special[plr.Name:lower()]

if spec then

        topcolor,feacolor,ptrans,pref,fire,fmcol,fscol = spec[1] and BrickColor.new(spec[1]) or topcolor,spec[2] and BrickColor.new(spec[2]) or feacolor,spec[3],spec[4],spec[5],spec[6],spec[7]

end

local part = Instance.new("Part")

part.FormFactor = "Custom"

part.Size = Vector3.new(.2,.2,.2)

part.TopSurface,part.BottomSurface = 0,0

part.CanCollide = false

part.BrickColor = topcolor

part.Transparency = ptrans

part.Reflectance = pref

local ef = Instance.new("Fire",fire and part or nil)

ef.Size = .15

ef.Color = fmcol or Color3.new()

ef.SecondaryColor = fscol or Color3.new()

part:BreakJoints()


function newpart()

        local clone = part:Clone()

        clone.Parent = mod

        clone:BreakJoints()

        return clone

end

local feath = newpart()

feath.BrickColor = feacolor

feath.Transparency = 0

Instance.new("SpecialMesh",feath).MeshType = "Sphere"

function newfeather()

        local clone = feath:Clone()

        clone.Parent = mod

        clone:BreakJoints()

        return clone

end


---------- RIGHT WING

local r1 = newpart()

r1.Size = Vector3.new(.3,1.5,.3)*1.2

local rm1 = motor(tor,r1,CFrame.new(.35,.6,.4) * CFrame.Angles(0,0,math.rad(-60)) * CFrame.Angles(math.rad(30),math.rad(-25),0),CFrame.new(0,-.8,0),.1)

local r2 = newpart()

r2.Size = Vector3.new(.4,1.8,.4)*1.2

local rm2 = motor(r1,r2,CFrame.new(0,.75,0) * CFrame.Angles(0,0,math.rad(50)) * CFrame.Angles(math.rad(-30),math.rad(15),0),CFrame.new(0,-.9,0),.1)

local r3 = newpart()

r3.Size = Vector3.new(.3,2.2,.3)*1.2

local rm3 = motor(r2,r3,CFrame.new(.1,.9,0) * CFrame.Angles(0,0,math.rad(-140)) * CFrame.Angles(math.rad(-3),0,0),CFrame.new(0,-1.1,0),.1)

local r4 = newpart()

r4.Size = Vector3.new(.25,1.2,.25)*1.2

local rm4 = motor(r3,r4,CFrame.new(0,1.1,0) * CFrame.Angles(0,0,math.rad(-10)) * CFrame.Angles(math.rad(-3),0,0),CFrame.new(0,-.6,0),.1)

local feather = newfeather()

feather.Mesh.Scale = Vector3.new(1,1,1)

feather.Size = Vector3.new(.4,3,.3)

weld(r4,feather,CFrame.new(-.1,-.3,0),CFrame.new(0,-1.5,0))

feather = newfeather()

feather.Mesh.Scale = Vector3.new(1,1,1)

feather.Size = Vector3.new(.4,2.3,.3)

weld(r4,feather,CFrame.new(.1,-.1,0) * CFrame.Angles(0,math.random()*.1,0),CFrame.new(0,-1.1,0))

feather = newfeather()

feather.Mesh.Scale = Vector3.new(1,1,1)

feather.Size = Vector3.new(.35,2.2,.25)

weld(r4,feather,CFrame.new(.1,-.3,0) * CFrame.Angles(0,math.random()*.1,math.rad(-10)),CFrame.new(0,-1.1,0))

local rf3 = {}

for i=0,7 do

        feather = newfeather()

        feather.Mesh.Scale = Vector3.new(1,1,1)

        feather.Size = Vector3.new(.45,2.2,.35)

        table.insert(rf3,motor(r3,feather,CFrame.new(.05,1-i*.285,0) * CFrame.Angles(0,math.random()*.1,math.rad(-25-i*2)),CFrame.new(0,-feather.Size.Y/2,0)))

end

local rf2 = {}

for i=0,6 do

        feather = newfeather()

        feather.Mesh.Scale = Vector3.new(1,1,1)

        feather.Size = Vector3.new(.45,2.2-i*.08,.3)

        table.insert(rf2,motor(r2,feather,CFrame.new(.05,.75-i*.26,0) * CFrame.Angles(0,math.random()*.1,math.rad(-75-i*4)),CFrame.new(0,-feather.Size.Y/2,0)))

end

local rf1 = {}

for i=0,6 do

        feather = newfeather()

        feather.Mesh.Scale = Vector3.new(1,1,1)

        feather.Size = Vector3.new(.37,1.65-i*.06,.25)

        table.insert(rf1,motor(r1,feather,CFrame.new(.05,.63-i*.21,0) * CFrame.Angles(0,math.random()*.05,math.rad(-75)),CFrame.new(0,-feather.Size.Y/2,0)))

end

---------- LEFT WING

local l1 = newpart()

l1.Size = Vector3.new(.3,1.5,.3)*1.2

local lm1 = motor(tor,l1,CFrame.new(-.35,.6,.4) * CFrame.Angles(0,0,math.rad(60)) * CFrame.Angles(math.rad(30),math.rad(25),0) * CFrame.Angles(0,-math.pi,0),CFrame.new(0,-.8,0) ,.1)

local l2 = newpart()

l2.Size = Vector3.new(.4,1.8,.4)*1.2

local lm2 = motor(l1,l2,CFrame.new(0,.75,0) * CFrame.Angles(0,0,math.rad(50)) * CFrame.Angles(math.rad(30),math.rad(-15),0),CFrame.new(0,-.9,0),.1)

local l3 = newpart()

l3.Size = Vector3.new(.3,2.2,.3)*1.2

local lm3 = motor(l2,l3,CFrame.new(.1,.9,0) * CFrame.Angles(0,0,math.rad(-140)) * CFrame.Angles(math.rad(3),0,0),CFrame.new(0,-1.1,0),.1)

local l4 = newpart()

l4.Size = Vector3.new(.25,1.2,.25)*1.2

local lm4 = motor(l3,l4,CFrame.new(0,1.1,0) * CFrame.Angles(0,0,math.rad(-10)) * CFrame.Angles(math.rad(3),0,0),CFrame.new(0,-.6,0),.1)

local feather = newfeather()

feather.Mesh.Scale = Vector3.new(1,1,1)

feather.Size = Vector3.new(.4,3,.3)

weld(l4,feather,CFrame.new(-.1,-.3,0),CFrame.new(0,-1.5,0))

feather = newfeather()

feather.Mesh.Scale = Vector3.new(1,1,1)

feather.Size = Vector3.new(.4,2.3,.3)

weld(l4,feather,CFrame.new(.1,-.1,0) * CFrame.Angles(0,math.random()*.1,0),CFrame.new(0,-1.1,0))

feather = newfeather()

feather.Mesh.Scale = Vector3.new(1,1,1)

feather.Size = Vector3.new(.35,2.2,.25)

weld(l4,feather,CFrame.new(.1,-.3,0) * CFrame.Angles(0,math.random()*.1,math.rad(-10)),CFrame.new(0,-1.1,0))

local lf3 = {}

for i=0,7 do

        feather = newfeather()

        feather.Mesh.Scale = Vector3.new(1,1,1)

        feather.Size = Vector3.new(.45,2.2,.35)

        table.insert(lf3,motor(l3,feather,CFrame.new(.05,1-i*.285,0) * CFrame.Angles(0,math.random()*.1,math.rad(-25-i*2)),CFrame.new(0,-feather.Size.Y/2,0)))

end

local lf2 = {}

for i=0,6 do

        feather = newfeather()

        feather.Mesh.Scale = Vector3.new(1,1,1)

        feather.Size = Vector3.new(.45,2.2-i*.08,.3)

        table.insert(lf2,motor(l2,feather,CFrame.new(.05,.75-i*.26,0) * CFrame.Angles(0,math.random()*.1,math.rad(-75-i*4)),CFrame.new(0,-feather.Size.Y/2,0)))

end

local lf1 = {}

for i=0,6 do

        feather = newfeather()

        feather.Mesh.Scale = Vector3.new(1,1,1)

        feather.Size = Vector3.new(.37,1.65-i*.06,.25)

        table.insert(lf1,motor(l1,feather,CFrame.new(.05,.63-i*.21,0) * CFrame.Angles(0,math.random()*.05,math.rad(-75)),CFrame.new(0,-feather.Size.Y/2,0)))

end

local rwing = {rm1,rm2,rm3,rm4}

local lwing = {lm1,lm2,lm3,lm4}

local oc0 = {}

for i,v in pairs(rwing) do

        oc0[v] = v.C0

end

for i,v in pairs(lwing) do

        oc0[v] = v.C0

end

function gotResized()

        if lastsize then

                if tor.Size == lastsize then return end -- This shouldn't happen?

                local scaleVec = tor.Size/lastsize

                for i,v in pairs(oc0) do

                        oc0[i] = v-v.p+scaleVec*v.p

                end

                lastsize = tor.Size

        end

        lastsize = tor.Size

end

tor.Changed:connect(function(p)

        if p == "Size" then

                gotResized()

        end

end)

gotResized()

local idle = {0,0.5,-.2,0; .05,.05,.1,.05; -.6,-1.5,.1,0;}--0,.3,0,0

local outlow = {-.7,-.2,1.8,0; .3,.05,.1,.05; .2,0,0,0}

local outhigh = {.5,-.2,1.8,0; .3,.05,.1,.05; .2,0,0,0}

local veryhigh = {.9,-.3,1.9,0; .3,.05,.1,.05; .2,0,0,0}

local flap1 = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}

local divebomb = {0,.2,.4,-.7; .3,.05,.1,.05; 0,-.5,-.6,0}


function setwings(tab,time)

        time = time or 10

        for i=1,4 do

                rwing[i].DesiredAngle = tab[i]

                lwing[i].DesiredAngle = tab[i]

                rwing[i].MaxVelocity = math.abs(tab[i]-rwing[i].CurrentAngle)/time

                lwing[i].MaxVelocity = math.abs(tab[i]-lwing[i].CurrentAngle)/time

                local rcf = oc0[rwing[i]] * (tab[12+i] or CFrame.new())

                local lcf = oc0[lwing[i]] * (tab[12+i] or CFrame.new())

        end

        for i,v in pairs(rf1) do

                v.DesiredAngle = tab[9]

                v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

        end

        for i,v in pairs(lf1) do

                v.DesiredAngle = tab[9]

                v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

        end

        for i,v in pairs(rf2) do

                v.DesiredAngle = tab[10]

                v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

        end

        for i,v in pairs(lf2) do

                v.DesiredAngle = tab[10]

                v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

        end

        for i,v in pairs(rf3) do

                v.DesiredAngle = tab[11]

                v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

        end

        for i,v in pairs(lf3) do

                v.DesiredAngle = tab[11]

                v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time

        end

end

setwings(outhigh,1)

flying = false

moving = false

for i,v in pairs(tor:GetChildren()) do

        if v.ClassName:lower():match("body") then

                v:Destroy()

        end

end

local ctor = tor:Clone()

ctor:ClearAllChildren()

ctor.Name = "cTorso"

ctor.Transparency = 1

ctor.CanCollide = false

ctor.FormFactor = "Custom"

ctor.Size = Vector3.new(.2,.2,.2)

ctor.Parent = mod

weld(tor,ctor)

local bg = Instance.new("BodyGyro",ctor)

bg.maxTorque = Vector3.new()

bg.P = 15000

bg.D = 1000

local bv = Instance.new("BodyVelocity",ctor)

bv.maxForce = Vector3.new()

bv.P = 15000

vel = Vector3.new()

cf = CFrame.new()

flspd = 0


keysdown = {}

keypressed = {}

ktime = {}

descendtimer = 0

jumptime = tick()

hum.Jumping:connect(function()

        jumptime = tick()

end)

cam = workspace.CurrentCamera

kd = plr:GetMouse().KeyDown:connect(oc(function(key) 

        keysdown[key] = true 

        keypressed[key] = true 

        if key == "q" then 

                descendtimer = tick() 

        elseif key == " " and not hum.Jump then 

                jumptime = tick()

        elseif (key == "a" or key == "d") and ktime[key] and tick()-ktime[key] < .3 and math.abs(reqrotx) < .3 then

                reqrotx = key == "a" and math.pi*2 or -math.pi*2

        end

        ktime[key] = tick() 

end))

ku = plr:GetMouse().KeyUp:connect(function(key) 

        keysdown[key] = false 

        if key == " " then 

                descendtimer = tick() 

        end 

end)

function mid(a,b,c)

        return math.max(a,math.min(b,c or -a))

end

function bn(a)

        return a and 1 or 0

end

function gm(tar)

        local m = 0

        for i,v in pairs(tar:GetChildren()) do

                if v:IsA("BasePart") then

                        m = m + v:GetMass()

                end

                        m = m + gm(v)

        end

        return m

end

reqrotx = 0

local grav = 196.2

local con

con = game:GetService("RunService").Stepped:connect(oc(function()

        --[[if not mod:IsDescendantOf(workspace) then

                pcall(function() kd:disconnect() end)

                pcall(function() ku:disconnect() end)

                bg:Destroy()

                bv:Destroy()

                con:disconnect()

                script:Destroy()

                return

        end]]

        local obvel = tor.CFrame:vectorToObjectSpace(tor.Velocity)

        local sspd, uspd,fspd = obvel.X,obvel.Y,obvel.Z

        if flying then

                local lfldir = fldir

                fldir = cam.CoordinateFrame:vectorToWorldSpace(Vector3.new(bn(keysdown.d)-bn(keysdown.a),0,bn(keysdown.s)-bn(keysdown.w))).unit

                local lmoving = moving

                moving = fldir.magnitude > .1

                if lmoving and not moving then

                        idledir = lfldir*Vector3.new(1,0,1)

                        descendtimer = tick()

                end

                local dbomb = fldir.Y < -.6 or (moving and keysdown["1"])

                if moving and keysdown["0"] and lmoving then

                        fldir = (Vector3.new(lfldir.X,math.min(fldir.Y,lfldir.Y+.01)-.1,lfldir.Z)+(fldir*Vector3.new(1,0,1))*.05).unit

                end

                local down = tor.CFrame:vectorToWorldSpace(Vector3.new(0,-1,0))

                local descending = (not moving and keysdown["q"] and not keysdown[" "])

                cf = ccomplerp(cf,CFrame.new(tor.Position,tor.Position+(not moving and idledir or fldir)),keysdown["0"] and .02 or .07)

                local gdown = not dbomb and cf.lookVector.Y < -.2 and tor.Velocity.unit.Y < .05

                hum.PlatformStand = true

                bg.maxTorque = Vector3.new(1,1,1)*9e5

                local rotvel = CFrame.new(Vector3.new(),tor.Velocity):toObjectSpace(CFrame.new(Vector3.new(),fldir)).lookVector

                bg.cframe = cf * CFrame.Angles(not moving and -.1 or -math.pi/2+.2,moving and mid(-2.5,rotvel.X/1.5) + reqrotx or 0,0)

                reqrotx = reqrotx - reqrotx/10

                bv.maxForce = Vector3.new(1,1,1)*9e4*.5

                local anioff =(bn(keysdown[" "])-bn(keysdown["q"]))/2

                local ani = tickwave(1.5-anioff,1)

                bv.velocity = bv.velocity:Lerp(Vector3.new(0,bn(not moving)*-ani*15+(descending and math.min(20,tick()-descendtimer)*-8 or bn(keysdown[" "])-bn(keysdown["q"]))*15,0)+vel,.6) 

                vel = moving and cf.lookVector*flspd or Vector3.new()

                flspd = math.min(120,lerp(flspd,moving and (fldir.Y<0 and flspd+(-fldir.Y)*grav/60 or math.max(50,flspd-fldir.Y*grav/300)) or 60,.4))

                setwings(moving and (gdown and outlow or dbomb and divebomb) or (descending and veryhigh or flap1),15)

                for i=1,4 do

                        --CFrame.Angles(-.5+bn(i==3)*2.4+bn(i==4)*.5,.1+bn(i==2)*.5-bn(i==3)*1.1,bn(i==3)*.1)

                        rwing[i].C0 = clerp(rwing[i].C0,oc0[rwing[i]] * (gdown and CFrame.new() or dbomb and CFrame.Angles(-.5+bn(i==3)*.4+bn(i==4)*.5,.1+bn(i==2)*.5-bn(i==3)*1.1,bn(i==3)*.1) or descending and CFrame.Angles(.3,0,0) or CFrame.Angles((i*.1+1.5)*ani,ani*-.5,1*ani)),descending and .8 or .2)

                        lwing[i].C0 = clerp(lwing[i].C0,oc0[lwing[i]] * (gdown and CFrame.new() or dbomb and CFrame.Angles(-(-.5+bn(i==3)*.4+bn(i==4)*.5),-(.1+bn(i==2)*.5-bn(i==3)*1.1),bn(i==3)*.1) or descending and CFrame.Angles(-.3,0,0) or CFrame.Angles(-(i*.1+1.5)*ani,ani*.5,1*ani)),descending and .8 or .2)

                end

                local hit,ray = workspace:FindPartOnRayWithIgnoreList(Ray.new(tor.Position,Vector3.new(0,-3.5+math.min(0,bv.velocity.y)/30,0)),{char})

                if hit and down.Y < -.85 and tick()-flystart > 1 then

                        flying = false

                        hum.PlatformStand = false

                        tor.Velocity = Vector3.new()

                end

        else

                bg.maxTorque = Vector3.new()

                bv.maxForce = Vector3.new()

                local ani = tickwave(walking and .8 or 4.5,1)

                setwings(idle,10)

                local x,y,z = fspd/160,uspd/700,sspd/900

                for i=1,4 do

                        rwing[i].C0 = clerp(rwing[i].C0,oc0[rwing[i]] * CFrame.Angles(ani*.1 + -mid(-.1,x),0 + -mid(-.1,y) + bn(i==2)*.6,ani*.02 + -mid(-.1,z)),.2)

                        lwing[i].C0 = clerp(lwing[i].C0,oc0[lwing[i]] * CFrame.Angles(ani*-.05 + mid(-.1,x),0 + mid(-.1,y) + -bn(i==2)*.6,ani*.02 + mid(-.1,z)),.2)

                end

                if keypressed[" "] and not flying and (tick()-jumptime > .05 and (tick()-jumptime < 3 or hum.Jump)) then

                        vel = Vector3.new(0,50,0)

                        bv.velocity = vel

                        idledir = cam.CoordinateFrame.lookVector*Vector3.new(1,0,1)

                        cf = tor.CFrame * CFrame.Angles(-.01,0,0)

                        tor.CFrame = cf

                        bg.cframe = cf

                        flystart = tick()

                        flying = true

                end

        end

        keypressed = {}

end))



end fly()


end}
module[6] = {"Black Dragon",function()
I = game.Players.LocalPlayer.Name
game.Players[I].Character.Head.Transparency = 1 
local p = Instance.new("Part") 
p.Parent = game.Players[I].Character.Torso 
p.Position = Vector3.new(0, 50, 0) 
p.BrickColor = BrickColor.new("Really black") 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1, 1, 2) 
p.CanCollide = False 
local w = Instance.new("Weld") 
w.Parent = game.Players[I].Character 
w.Part1 = game.Players[I].Character.Head 
w.Part0 = p 
w.C0 = CFrame.new(0,0,1.5) * CFrame.fromEulerAnglesXYZ(0,0,0) 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = p 
A.Scale = Vector3.new(1.5, 0.8, 1) 
local p = Instance.new("Part") 
p.Parent = game.Players[I].Character.Torso 
p.Position = Vector3.new(0, 50, 0) 
p.BrickColor = BrickColor.new("Really black") 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1, 1, 1.5) 
p.CanCollide = False 
local w = Instance.new("Weld") 
w.Parent = game.Players[I].Character 
w.Part1 = game.Players[I].Character.Head 
w.Part0 = p 
w.C0 = CFrame.new(0,-1.1,0) * CFrame.fromEulerAnglesXYZ(math.pi/4, 0,0) 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = p 
A.Scale = Vector3.new(1.5, 1, 1) 
local p = Instance.new("Part") 
p.Parent = game.Players[I].Character.Torso 
p.Position = Vector3.new(0, 50, 0) 
p.BrickColor = BrickColor.new("Really black") 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1, 1, 1.5) 
p.CanCollide = False 
local w = Instance.new("Weld") 
w.Parent = game.Players[I].Character 
w.Part1 = game.Players[I].Character.Head 
w.Part0 = p 
w.C0 = CFrame.new(0.4,-1.4,-1.3) * CFrame.fromEulerAnglesXYZ(math.pi/4, 0,0) 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = p 
A.Scale = Vector3.new(0.5, 0.5, 0.5) 
local p = Instance.new("Part") 
p.Parent = game.Players[I].Character.Torso 
p.Position = Vector3.new(0, 50, 0) 
p.BrickColor = BrickColor.new("Really black") 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1, 1, 1.5) 
p.CanCollide = False 
local w = Instance.new("Weld") 
w.Parent = game.Players[I].Character 
w.Part1 = game.Players[I].Character.Head 
w.Part0 = p 
w.C0 = CFrame.new(-0.4,-1.4,-1.3) * CFrame.fromEulerAnglesXYZ(math.pi/4, 0,0) 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = p 
A.Scale = Vector3.new(0.5, 0.5, 0.5) 
local p = Instance.new("Part") 
p.Parent = game.Players[I].Character.Torso 
p.Position = Vector3.new(0, 50, 0) 
p.BrickColor = BrickColor.new("Really black") 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Size = Vector3.new(1, 1, 1.5) 
p.CanCollide = False 
local w = Instance.new("Weld") 
w.Parent = game.Players[I].Character 
w.Part1 = game.Players[I].Character.Head 
w.Part0 = p 
w.C0 = CFrame.new(0,0.2,-0.1) * CFrame.fromEulerAnglesXYZ(math.pi/-3,0,0) 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = p 
A.Scale = Vector3.new(1.5, 1.5, 1.5) 
for c = 1, #game.Players[I].Character:GetChildren()do 
char = game.Players[I].Character:GetChildren() 
if char[c]:IsA("Part") then 
char[c].Transparency = 1 
elseif char[c]:IsA("Hat") then 
char[c].Handle:Remove() 
end 
end 
if game.Players[I].Character.Head:FindFirstChild("face") then 
game.Players[I].Character.Head.face:Remove() 
end 
--[[------------------------------------------------------------------------]] 
Player = game.Players[I] 
local h = Instance.new("HopperBin") 
h.Name = "Fly" 
h.Parent = Player.Backpack 
local s = Instance.new("Script") 
s.Parent = h 
s.Name = "Script" 
local bin = s.Parent 
length = 3 
away = 2 
gap = 0 
segs = 40 
distance = length/3 
speed = 1 
Wave = 0 
local Tail = {} 
local part0 = Instance.new("Part") 
part0.BrickColor = BrickColor.new("Really black") 
part0.TopSurface = 0 
part0.BottomSurface = 0 
part0.Locked = true 
part0.FormFactor = "Symmetric" 
part0.Size = Vector3.new(2,2,2) 
part0.Anchored = true 
part0.Shape = 1 
part0.CanCollide = true 
part0.Parent = nil 
part0.Name = "Part0" 
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick" 
A.Parent = part0 
A.Name = "Mesh" 
A.Scale = Vector3.new(1.1, 1.1, 1.1) 
for p = 1,segs do 
Tail[p] = part0:Clone() 
Tail[p].Parent = nil 
Tail[p].Name = "Part"..p 
Tail[p].CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 
Tail[p].Mesh.Scale = Vector3.new(1.1 - (p/1000), 1.1 - (p/1000), 1.1 - (p/1000)) 
end 
function onButton1Down(mouse) 
local player = game.Players.LocalPlayer 
if player == nil then return end 
me1 = bin.Parent.Parent 
me = bin.Parent.Parent.Character 
for p = 1,segs do 
Tail[p].Parent = me 
end 
main = part0 
part1 = Tail[1] 
follow = true 
while follow do 
Wave = Wave + 0.02 
distance = length/3 
mousehit = mouse.Hit.p 
if (main.Position - mousehit).magnitude >speed then 
main_mousehit = (main.Position - mousehit).unit*speed 
else 
main_mousehit = (main.Position - mousehit).unit*1 
end 
start1 = main.Position-main_mousehit 
main.CFrame = CFrame.new(start1.x, start1.y, start1.z) 
p1pos = part1.Position 
start1_p1pos = (start1 - p1pos).unit 
spreadp1 = start1_p1pos*(distance+away) 
part1.CFrame = CFrame.new(start1-spreadp1, start1) 
me.Torso.CFrame=Tail[1].CFrame*CFrame.new(0,-0.5,-4)*CFrame.fromEulerAnglesXYZ(-math.pi/5,0,0) 
me.Torso.Anchored = true 
Wave = Wave + 0.02 
pc = me.Torso.CFrame 
starti = me.Torso.Position-(pc.lookVector*distance) 
pipos = Tail[1].Position 
starti_pipos = (starti - pipos).unit 
spreadpi = starti_pipos*(distance+gap) 
Tail[1].CFrame = CFrame.new(starti-spreadpi, starti) + (part0.CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6)/4 
--[[ 
for i = 1,39 do 
wait() 
print("p2c = Tail["..i.."].CFrame\ 
start3 = Tail["..i.."].Position-(p2c.lookVector*distance)\ 
p3pos = Tail["..(i+1).."].Position\ 
start3_p3pos = (start3 - p3pos).unit\ 
spreadp3 = start3_p3pos*(distance+gap)\ 
Tail["..(i+1).."].CFrame = CFrame.new(start3-spreadp3, start3 - Vector3.new(0,math.sin(Wave*6+"..((i-1)/100)..")/4,0) ) + Vector3.new(0,math.sin(Wave*6+"..((i)/100)..")/4,0)\ 
" ) 
end 
]] 
p2c = Tail[1].CFrame start3 = Tail[1].Position-(p2c.lookVector*distance) p3pos = Tail[2].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[2].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[1].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0)/4 ) + (Tail[2].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.01)/4 
p2c = Tail[2].CFrame start3 = Tail[2].Position-(p2c.lookVector*distance) p3pos = Tail[3].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[3].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[2].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.01)/4 ) + (Tail[3].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.02)/4 
p2c = Tail[3].CFrame start3 = Tail[3].Position-(p2c.lookVector*distance) p3pos = Tail[4].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[4].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[3].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.02)/4 ) + (Tail[4].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.03)/4 
p2c = Tail[4].CFrame start3 = Tail[4].Position-(p2c.lookVector*distance) p3pos = Tail[5].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[5].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[4].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.03)/4 ) + (Tail[5].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.04)/4 
p2c = Tail[5].CFrame start3 = Tail[5].Position-(p2c.lookVector*distance) p3pos = Tail[6].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[6].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[5].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.04)/4 ) + (Tail[6].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.05)/4 
p2c = Tail[6].CFrame start3 = Tail[6].Position-(p2c.lookVector*distance) p3pos = Tail[7].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[7].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[6].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.05)/4 ) + (Tail[7].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.06)/4 
p2c = Tail[7].CFrame start3 = Tail[7].Position-(p2c.lookVector*distance) p3pos = Tail[8].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[8].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[7].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.06)/4 ) + (Tail[8].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.07)/4 
p2c = Tail[8].CFrame start3 = Tail[8].Position-(p2c.lookVector*distance) p3pos = Tail[9].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[9].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[8].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.07)/4 ) + (Tail[9].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.08)/4 
p2c = Tail[9].CFrame start3 = Tail[9].Position-(p2c.lookVector*distance) p3pos = Tail[10].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[10].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[9].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.08)/4 ) + (Tail[10].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.09)/4 
p2c = Tail[10].CFrame start3 = Tail[10].Position-(p2c.lookVector*distance) p3pos = Tail[11].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[11].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[10].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.09)/4 ) + (Tail[11].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.1)/4 
p2c = Tail[11].CFrame start3 = Tail[11].Position-(p2c.lookVector*distance) p3pos = Tail[12].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[12].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[11].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.1)/4 ) + (Tail[12].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.11)/4 
p2c = Tail[12].CFrame start3 = Tail[12].Position-(p2c.lookVector*distance) p3pos = Tail[13].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[13].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[12].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.11)/4 ) + (Tail[13].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.12)/4 
p2c = Tail[13].CFrame start3 = Tail[13].Position-(p2c.lookVector*distance) p3pos = Tail[14].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[14].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[13].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.12)/4 ) + (Tail[14].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.13)/4 
p2c = Tail[14].CFrame start3 = Tail[14].Position-(p2c.lookVector*distance) p3pos = Tail[15].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[15].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[14].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.13)/4 ) + (Tail[15].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.14)/4 
p2c = Tail[15].CFrame start3 = Tail[15].Position-(p2c.lookVector*distance) p3pos = Tail[16].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[16].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[15].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.14)/4 ) + (Tail[16].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.15)/4 
p2c = Tail[16].CFrame start3 = Tail[16].Position-(p2c.lookVector*distance) p3pos = Tail[17].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[17].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[16].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.15)/4 ) + (Tail[17].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.16)/4 
p2c = Tail[17].CFrame start3 = Tail[17].Position-(p2c.lookVector*distance) p3pos = Tail[18].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[18].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[17].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.16)/4 ) + (Tail[18].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.17)/4 
p2c = Tail[18].CFrame start3 = Tail[18].Position-(p2c.lookVector*distance) p3pos = Tail[19].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[19].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[18].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.17)/4 ) + (Tail[19].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.18)/4 
p2c = Tail[19].CFrame start3 = Tail[19].Position-(p2c.lookVector*distance) p3pos = Tail[20].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[20].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[19].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.18)/4 ) + (Tail[20].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.19)/4 
p2c = Tail[20].CFrame start3 = Tail[20].Position-(p2c.lookVector*distance) p3pos = Tail[21].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[21].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[20].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.19)/4 ) + (Tail[21].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.2)/4 
p2c = Tail[21].CFrame start3 = Tail[21].Position-(p2c.lookVector*distance) p3pos = Tail[22].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[22].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[21].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.2)/4 ) + (Tail[22].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.21)/4 
p2c = Tail[22].CFrame start3 = Tail[22].Position-(p2c.lookVector*distance) p3pos = Tail[23].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[23].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[22].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.21)/4 ) + (Tail[23].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.22)/4 
p2c = Tail[23].CFrame start3 = Tail[23].Position-(p2c.lookVector*distance) p3pos = Tail[24].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[24].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[23].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.22)/4 ) + (Tail[24].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.23)/4 
p2c = Tail[24].CFrame start3 = Tail[24].Position-(p2c.lookVector*distance) p3pos = Tail[25].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[25].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[24].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.23)/4 ) + (Tail[25].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.24)/4 
p2c = Tail[25].CFrame start3 = Tail[25].Position-(p2c.lookVector*distance) p3pos = Tail[26].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[26].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[25].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.24)/4 ) + (Tail[26].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.25)/4 
p2c = Tail[26].CFrame start3 = Tail[26].Position-(p2c.lookVector*distance) p3pos = Tail[27].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[27].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[26].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.25)/4 ) + (Tail[27].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.26)/4 
p2c = Tail[27].CFrame start3 = Tail[27].Position-(p2c.lookVector*distance) p3pos = Tail[28].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[28].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[27].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.26)/4 ) + (Tail[28].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.27)/4 
p2c = Tail[28].CFrame start3 = Tail[28].Position-(p2c.lookVector*distance) p3pos = Tail[29].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[29].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[28].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.27)/4 ) + (Tail[29].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.28)/4 
p2c = Tail[29].CFrame start3 = Tail[29].Position-(p2c.lookVector*distance) p3pos = Tail[30].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[30].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[29].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.28)/4 ) + (Tail[30].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.29)/4 
p2c = Tail[30].CFrame start3 = Tail[30].Position-(p2c.lookVector*distance) p3pos = Tail[31].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[31].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[30].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.29)/4 ) + (Tail[31].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.3)/4 
p2c = Tail[31].CFrame start3 = Tail[31].Position-(p2c.lookVector*distance) p3pos = Tail[32].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[32].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[31].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.3)/4 ) + (Tail[32].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.31)/4 
p2c = Tail[32].CFrame start3 = Tail[32].Position-(p2c.lookVector*distance) p3pos = Tail[33].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[33].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[32].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.31)/4 ) + (Tail[33].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.32)/4 
p2c = Tail[33].CFrame start3 = Tail[33].Position-(p2c.lookVector*distance) p3pos = Tail[34].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[34].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[33].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.32)/4 ) + (Tail[34].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.33)/4 
p2c = Tail[34].CFrame start3 = Tail[34].Position-(p2c.lookVector*distance) p3pos = Tail[35].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[35].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[34].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.33)/4 ) + (Tail[35].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.34)/4 
p2c = Tail[35].CFrame start3 = Tail[35].Position-(p2c.lookVector*distance) p3pos = Tail[36].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[36].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[35].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.34)/4 ) + (Tail[36].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.35)/4 
p2c = Tail[36].CFrame start3 = Tail[36].Position-(p2c.lookVector*distance) p3pos = Tail[37].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[37].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[36].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.35)/4 ) + (Tail[37].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.36)/4 
p2c = Tail[37].CFrame start3 = Tail[37].Position-(p2c.lookVector*distance) p3pos = Tail[38].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[38].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[37].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.36)/4 ) + (Tail[38].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.37)/4 
p2c = Tail[38].CFrame start3 = Tail[38].Position-(p2c.lookVector*distance) p3pos = Tail[39].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[39].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[38].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.37)/4 ) + (Tail[39].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.38)/4 
p2c = Tail[39].CFrame start3 = Tail[39].Position-(p2c.lookVector*distance) p3pos = Tail[40].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[40].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[39].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.38)/4 ) + (Tail[40].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.39)/4 
wait() 
end 
end 
function onButton1Up(mouse) 
follow = false 
end 
function onSelected(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(onKeyDown) 
end 
bin.Selected:connect(onSelected) 
end}
module[7] = {"Blast Blade",function()
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
damage = 5 
oridamage = 50 
BladeNumb=0.8
GyroNumb=0
attackdebounce = false 
ssdebounce=false
MMouse=nil
Mode="Sword"
cannonmode=false
combo=0
spinning=false
shootmode=true
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"


if Character:findFirstChild("Blast Blade",true) ~= nil then 
Character:findFirstChild("Blast Blade",true).Parent = nil 
end 
if Character:findFirstChild("Block",true) ~= nil then 
Character:findFirstChild("Block",true).Parent = nil 
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
modelzorz.Name = "Blast Blade" 

local prt1=part(3,modelzorz,0,0,Torso.BrickColor,"Part1",vt(1,1,1))
local prt2=part(3,modelzorz,0,0,BrickColor.new("Gold"),"Part2",vt(1,1,1))
local prt3=part(3,modelzorz,0,0,BrickColor.new("Silver"),"Part3",vt(0.8,0.5,0.8))
local prt5=part(3,modelzorz,0,0,BrickColor.new("Silver"),"Part5",vt(1,1,1))
local prt6=part(3,modelzorz,0,0,BrickColor.new("Silver"),"Part6",vt(1,1,1))
local prt7=part(3,modelzorz,0,0,BrickColor.new("Gold"),"Part7",vt(1,1,1))
local prt8=part(3,modelzorz,0,0,BrickColor.new("Gold"),"Part8",vt(1,1,1))
local hitbox=part(3,modelzorz,0,1,BrickColor.new("Gold"),"Hitbox",vt(1,5,3))

local msh1=mesh("CylinderMesh",prt1,"","",vt(0,0,0),vt(0.45,1,0.45))
local msh2=mesh("CylinderMesh",prt2,"","",vt(0,0,0),vt(0.4,2,0.4))
local msh3=mesh("SpecialMesh",prt3,"Head","",vt(0,0,0),vt(1,1,1))
local msh5=mesh("SpecialMesh",prt5,"Head","",vt(0,0,0),vt(0.8,0.5,0.8))
local msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(0.5,0.5,1.3))
local msh7=mesh("SpecialMesh",prt7,"Sphere","",vt(0,0,0),vt(1.4,1.4,1.4))
local msh8=mesh("SpecialMesh",prt8,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(1.5,1.5,1.5))

local wld1=weld(prt1,prt1,Torso,euler(-2.5,1.57,0)*cf(-2,-3,-0.6))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,0,0))
local wld3=weld(prt3,prt3,prt2,euler(0,0,0)*cf(0,1.2,0))
local wld5=weld(prt5,prt5,prt2,euler(0,0,0)*cf(0,-1,0))
local wld6=weld(prt6,prt6,prt5,euler(0,0,0)*cf(0,-0.2,0))
local wld7=weld(prt7,prt7,prt6,euler(0,0,0)*cf(0,-1,0))
local wld8=weld(prt8,prt8,prt7,euler(0,1.57,0)*cf(0,0,0))
local hitboxwld=weld(hitbox,hitbox,prt7,euler(0,0,0)*cf(0,-1.5,0))

numb=0
for i=1,8 do
local prt4=part(3,modelzorz,0.2,0,BrickColor.new("Silver"),"Part4",vt(1,1,1))
local msh4=mesh("SpecialMesh",prt4,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(0.3,0.2,0.3))
local wld4=weld(prt4,prt4,prt3,cf(0,-0.4,0)*euler(1.57,numb,0))
numb=numb+0.785
end
numb=0
for i=1,4 do
local prt9=part(3,modelzorz,0,0,BrickColor.new("Gold"),"Part9",vt(1,1,1))
local msh9=mesh("CylinderMesh",prt9,"","",vt(0,0,0),vt(0.2,2,0.2))
local wld9=weld(prt9,prt9,prt8,cf(0,0,0)*euler(0,0,numb))
numb=numb+0.785
end
numb=0
numb2=0
numb3=0
for i=1,8 do
local prt10=part(3,modelzorz,0.4,0,BrickColor.new("White"),"Part10",vt(1,1,1))
local msh10=mesh("SpecialMesh",prt10,"Wedge","",vt(0,0,0),vt(0.3-numb2,1.5+numb3,1.5-numb3))
local wld10=weld(prt10,prt10,prt6,euler(0,3.14,0)*cf(0,-0.6-numb,-0.8))
coroutine.resume(coroutine.create(function(Weld,Number,Number3)
while true do
wait(0)
wld10.C0=euler(0,3.14,0)*cf(0,-0.6-Number,-BladeNumb+(Number3/2))
end
end),wld10,numb,numb3)
local prt11=part(3,modelzorz,0.4,0,BrickColor.new("White"),"Part11",vt(1,1,1))
local msh11=mesh("SpecialMesh",prt11,"Wedge","",vt(0,0,0),vt(0.3-numb2,1.5+numb3,1.5-numb3))
local wld11=weld(prt11,prt11,prt6,cf(0,-0.6-numb,0.8))
coroutine.resume(coroutine.create(function(Weld,Number,Number3)
while true do
wait(0)
wld11.C0=cf(0,-0.6-Number,BladeNumb-(Number3/2))
end
end),wld11,numb,numb3)
numb=numb+0.6
numb2=numb2+0.01
numb3=numb3-0.1
end
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Blast Blade" 
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
wld1.C0=euler(-2.5,1.57,0)*cf(-2,-3,-0.6)
wld1.C1=cf(0,0,0)
end 

function equipweld() 
wld1.Part1=RightArm
wld1.C0=euler(1.57+0.4,0,0)*cf(0,1,0)
end 

function hideanim() 
equipped=false
wait(0.1) 
bg.Parent=nil
Neck.C0=necko
unequipweld() 
end 

function equipanim() 
equipped=true
wait(0.1) 
equipweld() 
if Mode=="Sword" then
Neck.C0=necko
RW.C0=cf(0.5, 0.5, -0.5) * euler(1,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0.4)
LW.C0=cf(-1, 0.5, -0.5) * euler(1,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
elseif Mode=="Cannon" then
coroutine.resume(coroutine.create(function()
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 9000
bg.Parent = Torso
--wld1.C0 = euler(0,0,0) * cf(0,0,0) 
while cannonmode==true do
wait()
local pos4 = vt(workspace.CurrentCamera.CoordinateFrame.X,Head.Position.Y,workspace.CurrentCamera.CoordinateFrame.Z)
bg.cframe = cf(Head.Position,pos4) * euler(0,3.14+GyroNumb,0) * cf(0,0,0) --cf(Torso.Position,MMouse.Hit.p) * 
bg.Parent = Head
local pos5 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
end
for i=0,1,0.1 do
wait()
bg.Parent=nil
end
end))
Neck.C0=necko*euler(0,0,1)
wld1.C0=euler(1.57,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,1,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, -0.5) * euler(1,1,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
end 

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

spread=0
range=100
rangepower=25
function shoottrail(mouse,baseprt)
coroutine.resume(coroutine.create(function(v) 
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))) * (baseprt.Position-MMouse.Hit.p).magnitude/100
local dir = CFrame.new((baseprt.Position+MMouse.Hit.p)/2,MMouse.Hit.p+spreadvector)
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,Character)
local rangepos = range
local function drawtrail(From,To)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Gold")
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(5,mg*5,5)
if shootmode==true then
Lightning(LP,point1,5,1,"Gold",0.3,0.1)
end
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.2 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(3-3*i,mg*5,3-3*i)
end 
effectsg.Parent = nil 
end))
end
local newpos = baseprt.Position
local inc = rangepower
repeat
wait() 
rangepos = rangepos - 10
--dir = dir * CFrame.Angles(math.rad(-1),0,0)
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir.lookVector * inc)
if hit ~= nil then
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Humanoid
tTorso=hit.Parent.Torso
Damagefunc1(hit,10,30)
attackdebounce=false
--ADmg(hum,hit)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Parent.Humanoid
tTorso=hit.Parent.Parent.Torso
Damagefunc1(hit.Parent.Parent.Torso,10,30)
attackdebounce=false
--ADmg(hum,hit)
end
MagicCircle(BrickColor.new("Gold"),CFrame.new(newpos),2,2,2,3,3,3)
MagicBlock(BrickColor.new("Gold"),CFrame.new(newpos),2,2,2,2,2,2)
end
until rangepos <= 0
end))
end

function shoottrail2(mouse,baseprt)
coroutine.resume(coroutine.create(function(v) 
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))) * (baseprt.Position-MMouse.Hit.p).magnitude/100
local dir = CFrame.new((baseprt.Position+MMouse.Hit.p)/2,MMouse.Hit.p+spreadvector)
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,Character)
local rangepos = range*5
local function drawtrail(From,To)
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
effectsmsh.MeshType = "Sphere"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Gold")
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(7,7,7)
--for i=1,3 do
Lightning(LP,point1,5,1,"Gold",0.3,0.1)
--end
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(10-10*i,mg*5,10-10*i)
end 
effectsg.Parent = nil 
end))
end
local newpos = baseprt.Position
local inc = rangepower/5
repeat
--wait() 
rangepos = rangepos - 10
--dir = dir * CFrame.Angles(math.rad(-1),0,0)
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir.lookVector * inc)
if hit ~= nil then
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Humanoid
tTorso=hit.Parent.Torso
Damagefunc1(hit,20,40)
attackdebounce=false
--ADmg(hum,hit)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Parent.Humanoid
tTorso=hit.Parent.Parent.Torso
Damagefunc1(hit.Parent.Parent.Torso,20,40)
attackdebounce=false
--ADmg(hum,hit)
end
MagicCircle(BrickColor.new("Gold"),CFrame.new(newpos),2,2,2,3,3,3)
MagicBlock(BrickColor.new("Gold"),CFrame.new(newpos),2,2,2,2,2,2)
end
until rangepos <= 0
end))
end

function shoottrail3(mouse,baseprt)
coroutine.resume(coroutine.create(function(v) 
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))) * (baseprt.Position-MMouse.Hit.p).magnitude/100
local dir = CFrame.new((baseprt.Position+MMouse.Hit.p)/2,MMouse.Hit.p+spreadvector)
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,Character)
local rangepos = range*50
local function drawtrail(From,To)
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
effectsmsh.MeshType = "FileMesh"
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=3270017"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Gold")
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(2,2,4)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
wait()
effectsg.Parent = nil 
end))
end
local newpos = baseprt.Position
local inc = rangepower/10
repeat
wait() 
rangepos = rangepos - 10
--dir = dir * CFrame.Angles(math.rad(-1),0,0)
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
        local list = game.Workspace:children()
        local torso = nil
        local dist = 100
        local temp = nil
        local human = nil
        local temp2 = nil
        for x = 1, #list do
                temp2 = list[x]
                if (temp2.className == "Model") and (temp2.Name~=Character.Name) then
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
if torso~=nil then
dir=CFrame.new(pos,torso.Position)
end
newpos = newpos + (dir.lookVector * inc)
if hit ~= nil then
rangepos = 0
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Humanoid
tTorso=hit.Parent.Torso
Damagefunc1(hit,20,30)
attackdebounce=false
--ADmg(hum,hit)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Parent.Humanoid
tTorso=hit.Parent.Parent.Torso
Damagefunc1(hit.Parent.Parent.Torso,20,30)
attackdebounce=false
--ADmg(hum,hit)
end
        for i=1,math.random(3,6) do
        BreakEffect(BrickColor.new("Gold"),CFrame.new(newpos),0.5,math.random(5,20),0.5)
        end
        so("http://roblox.com/asset/?id=3264793",hit,1,math.random()+math.random()+1) 
MagicCircle(BrickColor.new("Gold"),CFrame.new(newpos),2,2,2,3,3,3)
MagicBlock(BrickColor.new("Gold"),CFrame.new(newpos),2,2,2,2,2,2)
end
until rangepos <= 0
end))
end

function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function() 
for i=0,1,0.1 do
wait()
prt.CFrame=prt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
prt.Transparency=i
msh.Scale=msh.Scale+vt(x3,y3,z3)
end
prt.Parent=nil
end))
end

function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
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

function BlastEffect(brickcolor,cframe,x1,y1,z1,x2,y2,z2)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function() 
for i=0,1,0.05 do
wait()
prt.Transparency=i
msh.Scale=msh.Scale+vt(x2,y2,z2)
end
prt.Parent=nil
end))
end

function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()-math.random()
for i=0,1,0.05 do
wait()
CF=CF*cf(0,1,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt,CF,Numbb,randnumb)
end

function SpecialEffect() 
local prt=part(3,workspace,1,0,BrickColor.new("White"),"Part",vt(1,1,1))
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

function Lightning(p0,p1,tym,ofs,col,th,tra)
local magz = (p0 - p1).magnitude local curpos = p0 local trz = {-ofs,ofs}
for i=1,tym do 
local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = tra or 0.4 li.BrickColor = BrickColor.new(col)
li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(th,th,magz/tym) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
local trolpos = CFrame.new(curpos,p1)*CFrame.new(0,0,magz/tym).p+ofz
if tym == i then 
local magz2 = (curpos - p1).magnitude li.Size = Vector3.new(th,th,magz2)
li.CFrame = CFrame.new(curpos,p1)*CFrame.new(0,0,-magz2/2)
else
li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/tym/2)
end
curpos = li.CFrame*CFrame.new(0,0,magz/tym/2).p game.Debris:AddItem(li,.5)
end
end

function effect(Color,Ref,LP,P1,returnn)
local effectsmsh = Instance.new("BlockMesh")
effectsmsh.Scale = Vector3.new(0.4,1,0.4)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,1,0.2)
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new(Color)
effectsg.Reflectance = Ref
local point1 = P1
local mg = (LP.p - point1.p).magnitude
effectsg.Size = Vector3.new(0.4,mg,0.4)
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
if returnn then return effectsg end
coroutine.resume(coroutine.create(function()
if not returnn then
for i = 0 , 1 , 0.2 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(0.4-0.4*i,1,0.4-0.4*i)
end
wait()
effectsg.Parent = nil
end
end))
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
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print("herp")
                if block.Value>0 then
                blocked=true
                block.Value=block.Value-1
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
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Head.CFrame.lookVector*Knockback+Head.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
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
Damagefuncbr=function(hit,Damage,Knockback)
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
        for i=1,math.random(3,6) do
        BreakEffect(BrickColor.new("Gold"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
        end
        coroutine.resume(coroutine.create(function(Part) 
        for i=1,5 do
        wait()
        Part.CFrame=Head.CFrame*cf(0,0,-3)
        MagicBlock(BrickColor.new("Gold"),Part.CFrame*cf(0,0,0),1,1,1,1,1,1)
        end
        end),hit.Parent.Torso)
        so("http://roblox.com/asset/?id=3264793",hit.Parent.Torso,1,math.random()+math.random()+1) 
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
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print("herp")
                if block.Value>0 then
                blocked=true
                block.Value=block.Value-1
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
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Head.CFrame.lookVector*Knockback
                        vp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(vp,1)
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
--        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.1) 
        attackdebounce = false 
        end)) 
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
                blocked=false
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
local angle = (hit.Position-(Torso.Position+Vector3.new(0,0,0))).unit
print(angle)
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
                rl.Parent=hit
coroutine.resume(coroutine.create(function(vel) 
wait(0.5) 
vel:Remove() 
end),rl) 
--end
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,0,0)
bodyVelocity.P=5000
bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodyVelocity.Parent=hit
coroutine.resume(coroutine.create(function(Vel) 
wait(0.2) 
Vel:Remove() 
end),bodyVelocity) 
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
                c.BrickColor=BrickColor.new("Silver")
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

function oneslash()
attack=true
combo=1
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,1*i)
RW.C0=cf(0.5+1*i, 0.5, -0.5+0.5*i) * euler(1+2*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+1.5*i,0.4-0.4*i)
LW.C0=cf(-1+1*i, 0.5+0.6*i, -0.5) * euler(1+2*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,-1*i)
end
so("http://roblox.com/asset/?id=10209640",prt7,1,0.6) 
con1=hitbox.Touched:connect(function(hit) Damagefunc1(hit,25,20) end) 
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,1-2*i)
RW.C0=cf(1.5, 0.5, 0) * euler(3-3*i,-0.2*i,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(0.5*i, 1.1-1*i, -0.5) * euler(3-3.5*i,0.5*i,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,-1)
end
con1:disconnect()
wait(0.2)
--Neck.C0=necko
attack=false
end

function twoslash()
attack=true
combo=2
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,-1)
RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(1.5*i,-0.2+1.77*i,0)
RW.C1=cf(0, 0.5, 0) * euler(-0.5*i,0,0)
LW.C0=cf(0.5-1*i, 0.1+0.4*i, -0.5+0.5*i) * euler(-0.5+2.07*i,0.5+1.07*i,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,-1+1*i)
end
so("http://roblox.com/asset/?id=10209640",prt7,1,0.7) 
con1=hitbox.Touched:connect(function(hit) Damagefunc1(hit,25,30) end) 
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,-1+2*i)
RW.C0=cf(1.5-0.5, 0.5, -0.5) * euler(1.5,1.57,0)
RW.C1=cf(0, 0.5, 0) * euler(-0.5+2*i,0,0)
LW.C0=cf(-0.5+1*i, 0.5, -1*i) * euler(1.57,1.57,0)
LW.C1=cf(0, 0.5, 0) * euler(1*i,0,0)
end
con1:disconnect()
attack=false
end

function Shoot()
attack=true
shoottrail(mouse,prt7)
so("rbxasset://sounds/Launching rocket.wav",prt7,1,3) 
for i=0,1,0.2 do
wait()
wld1.C0=euler(1.57,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,1,0)
RW.C1=cf(0, 0.5, 0) * euler(0.3*i,0,0)
LW.C0=cf(-1.5, 0.5, -0.5) * euler(1-0.3*i,1,0)
end
for i=0,1,0.2 do
wait()
wld1.C0=euler(1.57,0,0)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,1,0)
RW.C1=cf(0, 0.5, 0) * euler(0.3-0.3*i,0,0)
LW.C0=cf(-1.5, 0.5, -0.5) * euler(1-0.3+0.3*i,1,0)
end
attack=false
end

function GroundBlast()
attack=true
Humanoid.WalkSpeed=0
for i=0,1,0.1 do
wait()
Neck.C0=necko
wld1.C0=euler(1.57+0.4+2.64*i,0,0)*cf(0,1,0)
RW.C0=cf(0.5+1*i, 0.5, -0.5+0.5*i) * euler(1+2.5*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+1.5*i,0.4-0.4*i)
LW.C0=cf(-1+1*i, 0.5+0.5*i, -0.5) * euler(1+2.5*i,0,1*i)
end
so("http://www.roblox.com/asset/?id=2101137",prt7,1,0.75) 
for i=1,25 do
wait()
MagicCircle(BrickColor.new("Gold"),prt7.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),0.1,2,0.1,0.5,5,0.5)
end
for i=0,1,0.2 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(3.5-2*i,0,0)
LW.C0=cf(0.3*i, 1-0.5*i, -0.5) * euler(3.5-2.3*i,0,1)
end
so("http://www.roblox.com/asset/?id=2697431",prt7,1,0.2) 
BlastPos=prt7.Position+vt(0,-1,0)
MagicCircle(BrickColor.new("Gold"),prt7.CFrame*cf(0,1,0),1,1,1,10,10,10)
MagicBlock(BrickColor.new("Silver"),prt7.CFrame*cf(0,1,0),1,1,1,5,5,5)
MagicBlock(BrickColor.new("Gold"),prt7.CFrame*cf(0,1,0),1,1,1,7,7,7)
local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - BlastPos
local mag = targ.magnitude
if mag <= 20 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc2(head,25,30)
end
end
end
end
wait(0.5)
for i=0,1,0.1 do
wait()
wld1.C0=euler(4.61-2.64*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5-1*i, 0.5, -0.5*i) * euler(1.5-0.5*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5*i,0.4*i)
LW.C0=cf(0.3-1.3*i, 0.5, -0.5) * euler(1.2-0.2*i,0,1-1*i)
end
Humanoid.WalkSpeed=16
attack=false
end

function BreakSlash()
attack=true
coroutine.resume(coroutine.create(function()
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 20000
bg.Parent = Torso
--wld1.C0 = euler(0,0,0) * cf(0,0,0) 
while attack==true and spinning==false do
wait()
local pos4 = vt(workspace.CurrentCamera.CoordinateFrame.X,Head.Position.Y,workspace.CurrentCamera.CoordinateFrame.Z)
bg.cframe = cf(Head.Position,pos4) * euler(0,3.14+GyroNumb,0) * cf(0,0,0) --cf(Torso.Position,MMouse.Hit.p) * 
bg.Parent = Head
local pos5 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
end
for i=0,1,0.1 do
wait()
bg.Parent=nil
end
end))
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,-1*i)
RW.C0=cf(0.5, 0.5, -0.5) * euler(1+0.57*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0.4+0.4*i)
LW.C0=cf(-1, 0.5, -0.5+0.5*i) * euler(1+0.57*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
wait(0.3)
so("http://roblox.com/asset/?id=10209640",prt7,1,0.7) 
con1=hitbox.Touched:connect(function(hit) Damagefuncbr(hit,25,1) end) 
for i=0,1,0.1 do
wait()
MagicBlock(BrickColor.new("Silver"),hitbox.CFrame*cf(math.random()+math.random(-1,0),math.random()+math.random(-2,1),math.random()+math.random(-1,0)),1,1,1,0.5,0.5,0.5)
wld1.C0=euler(1.57+0.4+0.4*i,0,0)*cf(0,1,0)
Neck.C0=necko*euler(0,0,-1+2.57*i)
RW.C0=cf(0.5+1*i, 0.5, -0.5+0.5*i) * euler(1.57,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0.8-1.6*i)
LW.C0=cf(-1+1.5*i, 0.5, -0.5*i) * euler(1.57,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,-1*i)
end
con1:disconnect()
DoBreak=false
for i=1,10 do
wait()
if BreakNumb==1 then
DoBreak=true
end
end
if DoBreak==true then
for i=0,1,0.2 do
wait()
wld1.C0=euler(1.57+0.4+0.4-0.4*i,0,0)*cf(0,1,0)
Neck.C0=necko*euler(0,0,-1+2.57-2.57*i)
RW.C0=cf(1.5-1*i, 0.5, -0.5*i) * euler(1.57,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0.8-1.6+1.6*i)
LW.C0=cf(-1+1.5-1.5*i, 0.5, -0.5+0.5*i) * euler(1.57,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,-1+1*i)
end
so("http://www.roblox.com/asset/?id=2101137",prt7,1,0.8) 
for i=0,10 do
wait()
MagicBlock(BrickColor.new("Silver"),hitbox.CFrame,1,1,1,2,2,2)
end
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Torso
vel2.maxForce = vt(4e+005,4e+005,4e+005)*1
vel2.velocity = Head.CFrame.lookVector*20
bg.Parent=Torso 
CF = Torso.CFrame 
con1=hitbox.Touched:connect(function(hit) Damagefuncbr(hit,10,10) end) 
spinning=true
durnumb=0
for i=1,5 do
for i=0,1,0.1 do
if durnumb==7 then
so("rbxasset://sounds\\swordlunge.wav",prt7,0.5,0.7) 
durnumb=0
end
bg.Parent=Torso 
bg.cframe=CF*euler(0,-6.283*i,0) 
MagicBlock(BrickColor.new("Silver"),hitbox.CFrame*cf(math.random()+math.random(-1,0),math.random()+math.random(-2,1),math.random()+math.random(-1,0)),1,1,1,0.5,0.5,0.5)
durnumb=durnumb+1
wait()
end
end
spinning=false
con1:disconnect()
vel2.Parent=nil
bg.Parent=nil
end
wait(1)
bg.P = 9000
wld1.C0=euler(1.57+0.4,0,0)*cf(0,1,0)
Neck.C0=necko
RW.C0=cf(0.5, 0.5, -0.5) * euler(1,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0.4)
LW.C0=cf(-1, 0.5, -0.5) * euler(1,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
attack=false
end

function GroundWave()
attack=true
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57+0.4+2.64*i,0,-0.4*i)*cf(0,1,0)
RW.C0=cf(0.5, 0.5+1*i, -0.5) * euler(1+2.5*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+1.5*i,0.4)
LW.C0=cf(-1+0.5*i, 0.5+1*i, -0.5) * euler(1+2.5*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,-0.4*i)
end
so("http://roblox.com/asset/?id=10209640",prt7,1,0.6) 
for i=0,1,0.1 do
wait()
RW.C0=cf(0.5, 1.5-1*i, -0.5) * euler(3.5-2*i,0,0)
LW.C0=cf(-0.5, 1.5-1*i, -0.5) * euler(3.5-2*i,0,0)
end
coroutine.resume(coroutine.create(function()
CF=Torso.CFrame
numb=-5
BaseCF=CF
for i=1,8 do
BaseCF=CF*cf(0,-2,numb)
local baseprt=part(3,workspace,0,1,BrickColor.new("Gold"),"Part1",vt(1,1,1))
baseprt.Anchored=true
baseprt.CFrame=BaseCF
game:GetService("Debris"):AddItem(baseprt,.5)
local c = game.Workspace:GetChildren()
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - baseprt.Position
local mag = targ.magnitude
if mag <= 7 and c[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc1(head,10,30)
end
end
end
end
so("http://www.roblox.com/asset/?id=2697431",baseprt,5,0.4) 
MagicBlock(BrickColor.new("Gold"),BaseCF,0.5,0.5,0.5,2,2,2)
BlastEffect(BrickColor.new("Gold"),BaseCF,0.5,0.5,0.5,0.5,0.5,0.5)
numb=numb-3
wait(0.2)
end
end))
wait(1)
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57+0.4+2.64-2.64*i,0,-0.4+0.4*i)*cf(0,1,0)
RW.C0=cf(0.5, 0.5, -0.5) * euler(1.5-0.5*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5*i,0.4)
LW.C0=cf(-0.5-0.5*i, 0.5, -0.5) * euler(1.5-0.5*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,-0.4+0.4*i)
end
attack=false
end

function MegaBlast()
attack=true
so("http://www.roblox.com/asset/?id=2974000",prt7,1,0.6) 
MagicCircle(BrickColor.new("Gold"),prt7.CFrame,1,1,1,2,2,2)
for i=1,10 do
wait(0.1)
MagicBlock(BrickColor.new("Gold"),prt7.CFrame*cf(math.random(-1,1),math.random(-1,1),math.random(-1,1)),0,0,0,0.5,0.5,0.5)
end
wait(0.5)
so("http://www.roblox.com/asset/?id=2974249",prt7,1,0.6) 
so("http://www.roblox.com/asset?id=1369158",prt7,1,2) 
shoottrail2(mouse,prt7)
MagicCircle(BrickColor.new("Gold"),prt7.CFrame,1,1,1,3,3,3)
attack=false
end

function BreakStab()
attack=true
doringeffect=true
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,1+1*i)
RW.C0=cf(1.5, 0.5, 0) * euler(0,1,0.5*i)
LW.C0=cf(-1.5, 0.5, -0.5) * euler(1,1,0.5*i)
end
so("http://www.roblox.com/asset/?id=2101137",prt7,1,0.75) 
MagicCircle(BrickColor.new("Gold"),prt7.CFrame,1,1,1,2,2,2)
local ring=part(3,modelzorz,0,1,BrickColor.new("Gold"),"Ring",vt(1,1,1))
local ringmsh=mesh("SpecialMesh",ring,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(2,2,4))
local ringwld=weld(ring,ring,prt7,euler(0,1.57,0))
coroutine.resume(coroutine.create(function(Part,Weld)
for i=1,0,-0.02 do
wait()
Part.Transparency=i
Weld.C0=Weld.C0*euler(1,0,0)
MagicBlock(BrickColor.new("Gold"),Part.CFrame*cf(0,1,0),0,0,0,0.5,0.5,0.5)
end
while doringeffect==true do
wait()
Weld.C0=Weld.C0*euler(1,0,0)
MagicBlock(BrickColor.new("Gold"),Part.CFrame*cf(0,1,0),0,0,0,0.5,0.5,0.5)
end
end),ring,ringwld)
wait(2)
doringeffect=false
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,2)
RW.C0=cf(1.5, 0.5, 0) * euler(1.57*i,1+0.57*i,0.5-0.5*i)
RW.C1=cf(0, 0.5, 0) * euler(0.5*i,0,0)
LW.C0=cf(-1.5, 0.5, -0.5) * euler(1+0.57*i,1+0.57*i,0.5-0.5*i)
end
so("http://roblox.com/asset/?id=10209640",prt7,1,0.7) 
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,2-2*i)
end
ring.Parent=nil
shoottrail3(mouse,prt7)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,-2*i)
end
wait(1)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,-2+3*i)
RW.C0=cf(1.5, 0.5, 0) * euler(1.57-1.57*i,1.57-0.57*i,0)
RW.C1=cf(0, 0.5, 0) * euler(0.5-0.5*i,0,0)
LW.C0=cf(-1.5, 0.5, -0.5) * euler(1.57-0.57*i,1.57-0.57*i,0)
end
attack=false
end

function ob1d(mouse) 
if attack == true then return end 
hold=true
if Mode=="Sword" then
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
end
for i=0,1,0.1 do
wait()
bg.Parent=nil
end
end))
if combo==0 then
oneslash()
elseif combo==1 then
twoslash()
else
wait(0.3)
Neck.C0=necko
RW.C0=cf(0.5, 0.5, -0.5) * euler(1,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0.4)
LW.C0=cf(-1, 0.5, -0.5) * euler(1,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
attack=false
end
coroutine.resume(coroutine.create(function() 
wait(0.5)
if attack==false then
combo=0
Neck.C0=necko
RW.C0=cf(0.5, 0.5, -0.5) * euler(1,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0.4)
LW.C0=cf(-1, 0.5, -0.5) * euler(1,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
end))
elseif Mode=="Cannon" then
Shoot()
end
end 

function ob1u(mouse) 
hold = false 
end 

buttonhold = false 

eul=0
BreakNumb=0
function key(key) 
if key=="x" then
BreakNumb=BreakNumb+1
coroutine.resume(coroutine.create(function()
wait()
BreakNumb=0
end))
end
if attack == true then return end 
if key=="f" then
BreakEffect(BrickColor.new("Gold"),Torso.CFrame,0.5,math.random(5,20),0.5)
end
if Mode=="Sword" then
if key=="z" then
GroundBlast()
end
if key=="x" then
BreakSlash()
end
if key=="c" then
GroundWave()
end
elseif Mode=="Cannon" then
if key=="z" then
MegaBlast()
end
if key=="x" then
BreakStab()
end
end
if key=="v" then
if Mode=="Sword" then
Mode="Cannon"
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57+0.4-0.4*i,0,0)*cf(0,1,0)
RW.C0=cf(0.5+1*i, 0.5, -0.5+0.5*i) * euler(1+1.5*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+1.5*i,0.4-0.4*i)
LW.C0=cf(-1+1.3*i, 0.5, -0.5-0.3*i) * euler(1+1.7*i,0,1*i)
end
so("rbxasset://sounds\\unsheath.wav",prt7,1,0.5) 
for i=0,1,0.2 do
wait()
BladeNumb=0.8+0.7*i
msh6.Scale=vt(0.5,0.5,1.3+1.4*i)
RW.C0=cf(1.5, 0.5, 0) * euler(2.5-1*i,0,0)
LW.C0=cf(0.3, 0.5, -0.8) * euler(2.7-1.2*i,0,1)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(2.5-1+0.3*i,0,0)
LW.C0=cf(0.3, 0.5, -0.8) * euler(2.7-1.2+0.4*i,0,1)
end
cannonmode=true
coroutine.resume(coroutine.create(function()
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 9000
bg.Parent = Torso
--wld1.C0 = euler(0,0,0) * cf(0,0,0) 
while cannonmode==true do
wait()
local pos4 = vt(workspace.CurrentCamera.CoordinateFrame.X,Head.Position.Y,workspace.CurrentCamera.CoordinateFrame.Z)
bg.cframe = cf(Head.Position,pos4) * euler(0,3.14+GyroNumb,0) * cf(0,0,0) --cf(Torso.Position,MMouse.Hit.p) * 
bg.Parent = Head
local pos5 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
end
for i=0,1,0.1 do
wait()
bg.Parent=nil
end
end))
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,1*i)
RW.C0=cf(1.5, 0.5, 0) * euler(1.8-1.8*i,1*i,0)
LW.C0=cf(0.3-1.8*i, 0.5, -0.8+0.3*i) * euler(1.9-0.9*i,1*i,1-1*i)
end
elseif Mode=="Cannon" then
Mode="Sword"
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,1-1*i)
RW.C0=cf(1.5, 0.5, 0) * euler(1.5*i,1-1*i,0)
LW.C0=cf(-1.5+1.7*i, 0.5, -0.5-0.1*i) * euler(1+0.2*i,1-1*i,1*i)
end
cannonmode=false
so("rbxasset://sounds\\unsheath.wav",prt7,1,0.7) 
for i=0,1,0.1 do
wait()
BladeNumb=1.5-0.7*i
msh6.Scale=vt(0.5,0.5,2.7-1.4*i)
RW.C0=cf(1.5, 0.5, 0) * euler(1.5+0.5*i,0,0)
LW.C0=cf(0.2, 0.5+0.2*i, -0.6) * euler(1.2+0.6*i,0,1)
end
for i=0,1,0.1 do
wait()
wld1.C0=euler(1.57+0.4*i,0,0)*cf(0,1,0)
RW.C0=cf(1.5-1*i, 0.5, -0.5*i) * euler(2-1*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5*i,0.4*i)
LW.C0=cf(0.2-1.2*i, 0.7-0.2*i, -0.6+0.1*i) * euler(1.8-0.8*i,0,1-1*i)
end
end
end
wait(5)
combo=0
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
print("Blast Blade loaded.")




end}
module[8] = {"Block-O-Fire",function()
--block-o-fire, handle with care cause it burns! by madiik
plr = game:service'Players'.LocalPlayer
char = plr.Character
mouse = plr:GetMouse()
colors = {"Br. yellowish orange", "Bright red"}
sizes = {1.5, 1.2, 1.4, 1.3, 1.6, 1.7}
local firing = false
local torso = char.Torso
local head = char.Head

mouse.Button1Down:connect(function()
	firing = true
	coroutine.wrap(function()
	while firing do
		coroutine.wrap(function()
		cube = sizes[math.random(1, #sizes)]
	local fire = Instance.new("Part", char)
		local fireparticle = Instance.new("Fire", fire)
	fire.FormFactor = "Custom"
	fire.Transparency = 0.4
	fire.BottomSurface = 0; fire.TopSurface = 0
	fire.Size = Vector3.new(cube, cube, cube)
	fire.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
	fire.CFrame = head.CFrame * CFrame.new(math.random(-2, 2), math.random(-1, 1), -2) * CFrame.Angles(math.random(-4, 4), math.random(-4, 4),math.random(-4, 4))
	fire.Velocity = CFrame.new(fire.Position,game.Players.LocalPlayer:GetMouse().Hit.p).lookVector * 50
	bodyforc = Instance.new("BodyForce", fire)
	bodyforc.force = Vector3.new(0, fire:GetMass() * 196, 0)
	Instance.new("PointLight", fire).Color = Color3.new(1, 0, 0)
	fire.Touched:connect(function(hit)
		if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= plr.Name then
			if hit.Parent:IsA("Hat") then
				hit.Parent.Parent.Humanoid:takeDamage(2)
				hit.Parent.Parent.Humanoid.Sit = true
			end
			hit.Parent.Humanoid:takeDamage(2)
			hit.Parent.Humanoid.Sit = true
		end
	end)
	
	wait(1)
	fire:Destroy()
end)()
wait(0.1)
	end
	end)()
end)
mouse.Button1Up:connect(function()
	firing = false
	end)
end}

 
 

module[1] = {"Blood Wand",function()
Player = game:GetService("Players").LocalPlayer
selected = false
dropped = false
Button1Down = false
canFire = true
spell = 0
spellText = "None"
power = 100
spellGui = Instance.new("ScreenGui")
spellGui.Name = Name
local frame = Instance.new("Frame")
frame.Name = "Frame"
frame.Size = UDim2.new(0, 165, 0, 60)
frame.Position = UDim2.new(0, 0, 1, -60)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.Parent = spellGui
local label = Instance.new("TextLabel")
label.Name = "Weapon"
label.Text = "Weapon: " ..Name
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, 0, 0, 0)
label.BackgroundColor3 = Color3.new(1, 0, 0)
label.BorderColor3 = Color3.new(0, 0, 0)
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "SpellPrefix"
label.Text = "    Spell:"
label.TextXAlignment = "Left"
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, 0, 0, 20)
label.BackgroundColor3 = Color3.new(1, 1, 1)
label.BorderColor3 = Color3.new(0, 0, 0)
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "Spell"
label.Text = "None"
label.TextXAlignment = "Right"
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, -10, 0, 20)
label.BackgroundTransparency = 1
label.BorderSizePixel = 0
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "PowerPrefix"
label.Text = "    Power:"
label.TextXAlignment = "Left"
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, 0, 0, 40)
label.BackgroundColor3 = Color3.new(1, 1, 1)
label.BorderColor3 = Color3.new(0, 0, 0)
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "Power"
label.Text = "100"
label.TextXAlignment = "Right"
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, -10, 0, 40)
label.BackgroundTransparency = 1
label.BorderSizePixel = 0
label.Parent = frame
function updateGui(format)
        if selected == false then return end
        if Player:FindFirstChild("PlayerGui") == nil then Instance.new("PlayerGui").Parent = Player end
        if Player.PlayerGui:FindFirstChild(Name) == nil then
                spellGui:Clone().Parent = Player.PlayerGui
        end
        Player.PlayerGui[Name].Frame.Spell.Text = spellText
        if power <= 0 then
                Player.PlayerGui[Name].Frame.Power.Text = "OVERHEAT (" ..math.abs(power).. ")"
        else
                Player.PlayerGui[Name].Frame.Power.Text = power
        end
end
function makeParts(format)
        local model = Instance.new("Model")
        model.Name = Name
        model.Parent = Player.Character
        local pm = Instance.new("Part")
        pm.Name = "Handle"
        pm.formFactor = "Symmetric"
        pm.Size = Vector3.new(1, 1, 1)
        pm.BrickColor = BrickColor.new("Really red")
        pm.Locked = true
        pm.TopSurface = 0
        pm.BottomSurface = 0
        pm.Parent = model
        local m = Instance.new("SpecialMesh")
        m.MeshType = "Head"
        m.Scale = Vector3.new(0.3, 2, 0.3)
        m.Parent = pm
        if format ~= nil then
                local w = Instance.new("Weld")
                w.Part0 = pm
                if format == "hand" then
                        w.Part1 = Player.Character:FindFirstChild("Right Arm")
                        w.C0 = CFrame.new(0, -0.75, 0.9) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
                        w.C1 = CFrame.new()
                        w.Parent = pm
                elseif format == "holster" then
                        w.Part1 = Player.Character:FindFirstChild("Right Leg")
                        w.C0 = CFrame.new(0, 0.1, -0.55) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                        w.C1 = CFrame.new()
                        w.Parent = pm
                        model.Name = Name.. " (Holstered)"
                else
                        print("Error: Incorrect format string!")
                end
        end
        local s = Instance.new("Sound")
        s.Name = "Shine"
        s.SoundId = "http://www.roblox.com/asset/?id=2101144"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Bolt"
        s.SoundId = "http://www.roblox.com/asset/?id=2974000"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Impact1"
        s.SoundId = "http://roblox.com/asset/?id=10209596"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Charge1"
        s.SoundId = "http://www.roblox.com/asset/?id=1369158"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Charge2"
        s.SoundId = "http://www.roblox.com/asset/?id=2101137"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Charge3"
        s.SoundId = "http://www.roblox.com/asset/?id=2785493"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Charge4"
        s.SoundId = "http://www.roblox.com/asset/?id=35275769"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Fire1"
        s.SoundId = "http://roblox.com/asset/?id=10209268"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Fire2"
        s.SoundId = "http://www.roblox.com/asset/?id=13775466"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Fire3"
        s.SoundId = "http://www.roblox.com/asset/?id=2767090"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Fire4"
        s.SoundId = "http://www.roblox.com/asset/?id=2800815"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Fire5"
        s.SoundId = "http://www.roblox.com/asset/?id=2974249"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local p = Instance.new("Part")
        p.Name = "Source"
        p.formFactor = "Symmetric"
        p.Size = Vector3.new(1, 1, 1)
        p.Transparency = 1
        p.BrickColor = BrickColor.new("Really red")
        p.CanCollide = false
        p.Locked = true
        p.TopSurface = 0
        p.BottomSurface = 0
        p.Parent = model
        local m = Instance.new("SpecialMesh")
        m.MeshType = "Sphere"
        m.Scale = Vector3.new(1, 1, 1)
        m.Parent = p
        local w = Instance.new("Weld")
        w.Part0 = p
        w.Part1 = pm
        w.C0 = CFrame.new()
        w.C1 = CFrame.new(0, 1, 0)
        w.Parent = p
        local f = Instance.new("Fire")
        f.Enabled = false
        f.Name = "Fire"
        f.Heat = 0
        f.Size = 1
        f.Parent = p
        --for i, p in pairs(model.Handle:GetChildren()) do if p.className == "Sound" then p:Play() m = Instance.new("Message") m.Parent = model m.Text = p.Name wait(2) m:Remove() end end
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
        Animate = Character:FindFirstChild("Animate")
        if Animate == nil then return false end
        Animate = Animate:Clone()
        Character.Animate:Remove()
        Animate.Parent = Character
end
function Weld(x, y)
        local weld = Instance.new("Weld")
        weld.Part0 = x
        weld.Part1 = y
        CJ = CFrame.new(x.Position)
        C0 = x.CFrame:inverse() * CJ
        C1 = y.CFrame:inverse() * CJ
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
        tag.Value = "killed with magic"
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
function onButton1Down(mouse)
        if selected == false or canFire == false or power <= 0 then return end
        if Player.Character == nil then return end
        if Player.Character:FindFirstChild("Humanoid") == nil then return end
        if Player.Character.Humanoid.Health <= 0 then return end
        if Player.Character:FindFirstChild(Name) == nil then return end
        if Player.Character[Name]:FindFirstChild("Handle") == nil then return end
        if Player.Character[Name]:FindFirstChild("Source") == nil then return end
        if mouse == nil then return end
        Button1Down = true
        if spell == 1 then
                --Arefu Slash, projectile class. Uses hardened air particles to create razor-sharp projectiles.
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(6, 6, 6)
                Player.Character[Name].Source.Transparency = 0.25
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Source.Fire.Enabled = true
                Player.Character[Name].Source.Fire.Heat = math.random(5, 10)
                Player.Character[Name].Source.Fire.Size = math.random(5, 10)
                Player.Character[Name].Source.Fire.Color = Color3.new(0, 1, 0)
                Player.Character[Name].Source.Fire.SecondaryColor = Color3.new(1, 1, 1)
                while Button1Down == true do
                        if power <= 0 then break end
                        coroutine.resume(coroutine.create(function()
                                for i = 0, 1, 0.1 do
                                        Player.Character[Name].Source.Mesh.Scale = (Vector3.new(i, i, i) * 5) + Vector3.new(1, 1, 1)
                                        Player.Character[Name].Source.Transparency = i
                                        wait()
                                end
                                Player.Character[Name].Source.Transparency = 1
                                Player.Character[Name].Source.Fire.Enabled = false
                        end))
                        Player.Character[Name].Handle.Fire2.Looped = false
                        Player.Character[Name].Handle.Fire2.Volume = 1
                        Player.Character[Name].Handle.Fire2.Pitch = 1
                        Player.Character[Name].Handle.Fire2:Play()
                        power = power - 1
                        local air = Instance.new("Part")
                        air.Name = "Air"
                        air.formFactor = "Symmetric"
                        air.Size = Vector3.new(1, 1, 2)
                        air.TopSurface = "Smooth"
                        air.BottomSurface = "Smooth"
                        air.BrickColor = BrickColor.new("Really red")
                        air.CanCollide = false
                        air.Anchored = true
                        air.Transparency = math.random(0, 5) / 10
                        air.CFrame = CFrame.new(mouse.Hit.p + Vector3.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)), mouse.Hit.p)
                        air.Parent = workspace
                        air:BreakJoints()
                        local m = Instance.new("SpecialMesh")
                        m.MeshType = "Sphere"
                        m.Scale = Vector3.new(0.5, 0.5, 1)
                        m.Parent = air
                        coroutine.resume(coroutine.create(function()
                                while air.Parent ~= nil do
                                        air.CFrame = CFrame.new(air.CFrame.p  + (air.CFrame.lookVector * 5)) * CFrame.fromEulerAnglesXYZ(air.CFrame:toEulerAnglesXYZ())
                                        for _, model in pairs(game:GetService("Workspace"):GetChildren()) do
                                                if model.className == "Part" then
                                                        if (air.Position - model.Position).magnitude <= 5 and model.Anchored == false then
                                                                model.Velocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
                                                                if math.random(1, 10) == 1 then model:BreakJoints() end
                                                                air:Remove()
                                                                return
                                                        end
                                                elseif model.className == "Model" and model ~= Player.Character then
                                                        for _, x in pairs(model:GetChildren()) do
                                                                if x.className == "Part" then
                                                                        if (air.Position - x.Position).magnitude <= 5 and x.Anchored == false then
                                                                                x.Velocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
                                                                                if math.random(1, 10) == 1 then x:BreakJoints() end
                                                                                if model:FindFirstChild("Humanoid") ~= nil then
                                                                                        model.Humanoid:TakeDamage(77777777)
                                                                                        model.Humanoid.Sit = true
                                                                                end
                                                                                air:Remove()
                                                                                return
                                                                        end
                                                                end
                                                        end
                                                end
                                        end
                                        local shock = Instance.new("Part")
                                        shock.formFactor = "Symmetric"
                                        shock.Size = Vector3.new(1, 1, 1)
                                        shock.BrickColor = BrickColor.new("Really red")
                                        shock.Anchored = true
                                        shock.Name = "Shock Ring"
                                        shock.CanCollide = false
                                        shock.Parent = game:GetService("Workspace")
                                        local mesh = Instance.new("SpecialMesh")
                                        mesh.MeshType = "FileMesh"
                                        mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
                                        mesh.Scale = Vector3.new(55, 55, 55)
                                        mesh.Parent = shock
                                        shock.CFrame = CFrame.new(air.CFrame.p + (air.CFrame.lookVector * 10), air.CFrame.p + (air.CFrame.lookVector * 50)) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
                                        coroutine.resume(coroutine.create(function()
                                                for i = 0, 10 do
                                                        shock.Mesh.Scale = Vector3.new(i / 5, i, i / 5)
                                                        shock.Transparency = i / 10
                                                        wait()
                                                end
                                                shock:Remove()
                                        end))
                                        wait()
                                end
                        end))
                        coroutine.resume(coroutine.create(function(part)
                                wait(10)
                                part:Remove()
                        end), air)
                        wait()
                end
                canFire = true
        elseif spell == 2 then
                --Arefu Metoria, projectile class. Uses meteors.
                local position, target = mouse.Hit.p, mouse.Target
                if target == nil then return end
                if target.Parent == nil then return end
                canFire = false
                power = power - 50
                local offset = position - target.Position
                local size = math.random(10, 30)
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(6, 6, 6)
                Player.Character[Name].Source.Transparency = 0
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Handle.Charge2.Looped = false
                Player.Character[Name].Handle.Charge2.Volume = 1
                Player.Character[Name].Handle.Charge2.Pitch = 0.35
                Player.Character[Name].Handle.Charge2:Play()
                local beam = Instance.new("Part")
                beam.BrickColor = BrickColor.new("Really red")
                beam.TopSurface = 0
                beam.BottomSurface = 0
                beam.Size = Vector3.new(23, 23, 22)
                beam.Transparency = 0.5
                beam.Anchored = true
                beam.CanCollide = false
                beam.CFrame = CFrame.new(position)
                beam.Parent = game:GetService("Workspace")
                local mesh = Instance.new("CylinderMesh")
                mesh.Parent = beam
                for i = 0, 60, 1 do
                        local shine = Instance.new("Part")
                        shine.Name = "Shine"
                        shine.formFactor = "Symmetric"
                        shine.Shape = "Ball"
                        shine.CanCollide = false
                        shine.BrickColor = BrickColor.new("Really red")
                        shine.TopSurface = 0
                        shine.BottomSurface = 0
                        shine.Size = Vector3.new(15, 11, 11)
                        shine.Transparency = 0.25
                        shine.CFrame = CFrame.new(Player.Character[Name].Source.Position + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)))
                        shine.Parent = game:GetService("Workspace")
                        local force = Instance.new("BodyPosition")
                        force.D = 7000000
                        force.P = 7000000
                        force.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                        force.position = Player.Character[Name].Source.Position
                        force.Parent = shine
                        coroutine.resume(coroutine.create(function(part1, part2) for i = 0, 10 do if part1 ~= nil and part2 ~= nil then part1.BodyPosition.position = part2.Position wait() end end part1:Remove() end), shine, Player.Character[Name].Source)
                        mesh.Scale = Vector3.new(size * (i / 60), 10000, size * (i / 60))
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(i / 10, i / 10, i / 10)
                        Player.Character[Name].Source.Transparency = Player.Character[Name].Source.Transparency - 0.015
                        wait()
                end
                for i = 0, 10 do
                        beam.Transparency = beam.Transparency + 0.1
                        Player.Character[Name].Source.Transparency = Player.Character[Name].Source.Transparency + 0.1
                        wait()
                end
                if beam ~= nil then beam:Remove() end
                Player.Character[Name].Source.Transparency = 1
                canFire = true
                local meteor = Instance.new("Part")
                meteor.BrickColor = BrickColor.new("Really red")
                meteor.Name = "Meteor"
                meteor.CanCollide = true
                meteor.Locked = true
                meteor.formFactor = "Symmetric"
                meteor.Shape = "Ball"
                meteor.Size = Vector3.new(size, size, size)
                meteor.RotVelocity = Vector3.new(math.random(-1000, 1000), math.random(-1000, 1000), math.random(-1000, 1000))
                meteor.Parent = game:GetService("Workspace")
                meteor:BreakJoints()
                local fire = Instance.new("Fire")
                fire.Heat = 777
                fire.Size = 507
                fire.Parent = meteor
                local smoke = Instance.new("Smoke")
                smoke.RiseVelocity = 0
                smoke.Size = size + 3
                smoke.Color = Color3.new(50 / 255, 50 / 255, 50 / 255)
                smoke.Opacity = 0.5
                smoke.Parent = meteor
                local mesh = Instance.new("SpecialMesh")
                mesh.MeshType = "FileMesh"
                mesh.MeshId = "http://www.roblox.com/asset/?id=1290033"
                mesh.TextureId = "http://www.roblox.com/asset/?id=1290030"
                mesh.Scale = meteor.Size / 1.5
                mesh.VertexColor = Vector3.new(1, 0, 0)
                mesh.Parent = meteor
                for i = 5000, 0, -100 do
                        meteor.CFrame = CFrame.new((target.Position + offset) + Vector3.new(0, i, 0))
                        meteor.Velocity = Vector3.new(0, 0, 0)
                        wait()
                end
                meteor.CFrame = CFrame.new((target.Position + offset) + Vector3.new(0, size / 2, 0))
                delay(0.1, function() Weld(target, meteor) meteor.Velocity = Vector3.new(0, 0, 0) end)
                meteor.Anchored = true
                local s = Instance.new("Sound")
                s.SoundId = "rbxasset://sounds\\Launching rocket.wav"
                s.Pitch = (30 - size) / 25
                s.Parent = game:GetService("Workspace")
                s:Play()
                local shards = {}
                for i = 0, math.random(10, 30) do
                        local shard = Instance.new("Part")
                        shard.Name = "Ground Shard"
                        shard.Anchored = true
                        shard.Locked = true
                        shard.BrickColor = target.BrickColor
                        shard.Size = Vector3.new(size + 10, 2, size)
                        shard.CFrame = CFrame.new(meteor.Position - Vector3.new(0, size / 2, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(math.random(0, 360)), math.rad(math.random(0, 25)))
                        shard.Parent = game:GetService("Workspace")
                        table.insert(shards, shard)
                end
                local new = Instance.new("Part")
                new.Name = "Meteor"
                new.Transparency = 1
                new.CanCollide = false
                new.Anchored = true
                new.CFrame = CFrame.new(meteor.Position)
                new.Parent = game:GetService("Workspace")
                local fire = Instance.new("Fire")
                fire.Heat = 500
                fire.Size = 500
                fire.Parent = new
                meteor.Fire:Remove()
                local shock = Instance.new("Part")
                shock.formFactor = "Symmetric"
                shock.Size = Vector3.new(20, 26, 26)
                shock.BrickColor = BrickColor.new("Really red")
                shock.Anchored = true
                shock.Name = "Shock Ring"
                shock.CanCollide = false
                shock.Parent = game:GetService("Workspace")
                local mesh = Instance.new("SpecialMesh")
                mesh.MeshType = "FileMesh"
                mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
                mesh.Parent = shock
                local tilt1 = math.random(-10, 10)
                local tilt2 = math.random(-10, 10)
                local tiltChance = math.random(1, 3)
                for i = 433, 500 do
                        shock.Mesh.Scale = Vector3.new(i, i, i)
                        if tiltChance == 1 then
                                shock.CFrame = CFrame.new(meteor.Position - Vector3.new(0, meteor.Size.y / 3, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90 + tilt1), 0, 0)
                        elseif tiltChance == 2 then
                                shock.CFrame = CFrame.new(meteor.Position - Vector3.new(0, meteor.Size.y / 3, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(tilt2), 0)
                        elseif tiltChance == 3 then
                                shock.CFrame = CFrame.new(meteor.Position - Vector3.new(0, meteor.Size.y / 3, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90 + tilt1), math.rad(tilt2), 0)
                        end
                        wait()
                end
                for i = 0, 1, 0.1 do
                        shock.Transparency = i
                        wait()
                end
                shock:Remove()
                wait(math.random(1, 10))
                if new ~= nil then new:Remove() end
                if meteor == nil then return end
                local e = Instance.new("Explosion")
                e.BlastPressure = 3000000
                e.Position = meteor.Position
                e.BlastRadius = meteor.Size.y * 5000
                e.Parent = game:GetService("Workspace")
                local s = Instance.new("Sound")
                s.Name = "Explosion"
                s.Pitch = (30 - size) / 20
                s.SoundId = "http://www.roblox.com/asset/?id=2101148"
                s.Parent = game:GetService("Workspace")
                s:Play()
                for i = 0, math.random(2, 10) do
                        local size = math.random(1, 5)
                        local new = meteor:Clone()
                        if new:FindFirstChild("Weld") ~= nil then new.Weld:Remove() end
                        new.Size = Vector3.new(100, 100, 100)
                        new.Mesh.Scale = Vector3.new(100, 100, 100)
                        new.CanCollide = false
                        new.Anchored = false
                        new.CFrame = CFrame.new(meteor.Position + Vector3.new(math.random(-meteor.Size.x / 2, meteor.Size.x / 2), math.random(-meteor.Size.y / 2, meteor.Size.y / 2), math.random(-meteor.Size.z / 2, meteor.Size.z / 2))) * CFrame.fromEulerAnglesXYZ(math.random(0, 360), math.random(0, 360), math.random(0, 360))
                        new.Velocity = Vector3.new(math.random(-100, 100), math.random(10, 250), math.random(-100, 100))
                        new.RotVelocity = Vector3.new(math.random(-500, 500), math.random(-500, 500), math.random(-500, 500))
                        new.Smoke:Remove()
                        new.Parent = game:GetService("Workspace")
                end
                for i = 1, #shards do
                        if shards[i] ~= nil then
                                if math.random(1, 2) == 1 then
                                        shards[i]:Remove()
                                else
                                        shards[i].CanCollide = false
                                        shards[i].Anchored = false
                                        shards[i].RotVelocity = Vector3.new(math.random(-500, 500), math.random(-500, 500), math.random(-500, 500))
                                        shards[i].Velocity = Vector3.new(math.random(-100, 100), math.random(10, 250), math.random(-100, 100))
                                end
                        end
                end
                meteor:Remove()
        elseif spell == 3 then
                --Eccrando Bolt, energy class. Fires a charged bolt of energy gathered in your wand.
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(45, 55, 45)
                Player.Character[Name].Source.Transparency = 0
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Handle.Charge1.Looped = false
                Player.Character[Name].Handle.Charge1.Volume = 1
                Player.Character[Name].Handle.Charge1.Pitch = 1
                Player.Character[Name].Handle.Charge1:Play()
                for i = 0, 10 do
                        local shine = Instance.new("Part")
                        shine.Name = "Shine"
                        shine.formFactor = "Symmetric"
                        shine.Shape = "Ball"
                        shine.CanCollide = false
                        shine.BrickColor = BrickColor.new("Really red")
                        shine.TopSurface = 0
                        shine.BottomSurface = 0
                        shine.Size = Vector3.new(30, 33, 33)
                        shine.Transparency = 0.25
                        shine.CFrame = CFrame.new(Player.Character[Name].Source.Position + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)))
                        shine.Parent = game:GetService("Workspace")
                        local force = Instance.new("BodyPosition")
                        force.D = 70000
                        force.P = 100000
                        force.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                        force.position = Player.Character[Name].Source.Position
                        force.Parent = shine
                        coroutine.resume(coroutine.create(function(part1, part2) for i = 0, 10 do if part1 ~= nil and part2 ~= nil then part1.BodyPosition.position = part2.Position wait() end end part1:Remove() end), shine, Player.Character[Name].Source)
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(i / 7.5, i / 7.5, i / 7.5)
                        wait()
                        power = power - 1
                end
                for i = 10, 20 do
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(i / 7.5, i / 7.5, i / 7.5)
                        power = power - 1
                        wait()
                end
                local first = true
                while Button1Down == true or first == true do
                        first = false
                        if power < 0 then break end
                        power = power - 5
                        if Player.Character == nil then break end
                        if Player.Character:FindFirstChild("Humanoid") == nil then break end
                        if Player.Character.Humanoid.Health <= 0 then break end
                        if Player.Character:FindFirstChild(Name) == nil then break end
                        if Player.Character[Name]:FindFirstChild("Handle") == nil then break end
                        if Player.Character[Name]:FindFirstChild("Source") == nil then break end
                        if selected == false then break end
                        Player.Character[Name].Handle.Fire1.Looped = false
                        Player.Character[Name].Handle.Fire1.Volume = 1
                        Player.Character[Name].Handle.Fire1.Pitch = 1
                        Player.Character[Name].Handle.Fire1:Play()
                        local position = mouse.Hit.p
                        local e = Instance.new("Explosion")
                        e.BlastPressure = 500000
                        e.BlastRadius = 100000
                        e.Position = position
                        e.Parent = game:GetService("Workspace")
                        for i = 1, math.random(5, 25) do
                                local shine = Instance.new("Part")
                                shine.Name = "Shine"
                                shine.formFactor = "Symmetric"
                                shine.Shape = "Block"
                                shine.CanCollide = false
                                shine.Anchored = true
                                shine.BrickColor = BrickColor.new("Really red")
                                shine.TopSurface = 0
                                shine.BottomSurface = 0
                                shine.Size = Vector3.new(12, 13, 14)
                                shine.Transparency = 0.25
                                shine.CFrame = CFrame.new(mouse.Hit.p)
                                shine.Parent = game:GetService("Workspace")
                                local mesh = Instance.new("SpecialMesh")
                                mesh.MeshType = "Brick"
                                local random = math.random(3, 10) / 10
                                mesh.Scale = Vector3.new(random, random, random)
                                mesh.Parent = shine
                                coroutine.resume(coroutine.create(function(part)
                                        for i = 0.25 * 25, 25 do
                                                part.Transparency = i / 25
                                                part.CFrame = CFrame.new(part.CFrame.p + Vector3.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10)) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
                                                wait(math.random(1, 5) / 100)
                                        end
                                        part:Remove()
                                end), shine)
                        end
                        for i = 1, math.random(2, 5) do
                                local shine = Instance.new("Part")
                                shine.Name = "Shine"
                                shine.formFactor = "Symmetric"
                                shine.Shape = "Block"
                                shine.CanCollide = false
                                shine.Anchored = true
                                shine.BrickColor = BrickColor.new("Really red")
                                shine.TopSurface = 0
                                shine.BottomSurface = 0
                                shine.Size = Vector3.new(11, 11, 11)
                                shine.Transparency = 0.25
                                shine.CFrame = CFrame.new(mouse.Hit.p + Vector3.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10))
                                shine.Parent = game:GetService("Workspace")
                                local mesh = Instance.new("SpecialMesh")
                                mesh.MeshType = "Sphere"
                                local random = math.random(3, 10) / 10
                                mesh.Scale = Vector3.new(random, random, random)
                                mesh.Parent = shine
                                coroutine.resume(coroutine.create(function(part)
                                        for i = 0.25, 1, 0.05 do
                                                part.Transparency = i
                                                part.Mesh.Scale = part.Mesh.Scale + Vector3.new(1, 1, 1)
                                                wait()
                                        end
                                        part:Remove()
                                end), shine)
                        end
                        local trail = Instance.new("Part")
                        trail.BrickColor = BrickColor.new("Really red")
                        trail.TopSurface = 0
                        trail.BottomSurface = 0
                        trail.Size = Vector3.new(11, 11, 11)
                        trail.Transparency = 0.4
                        trail.Anchored = true
                        trail.CanCollide = false
                        trail.CFrame = CFrame.new((Player.Character[Name].Source.Position + position) / 2, position)
                        trail.Parent = game:GetService("Workspace")
                        local mesh = Instance.new("SpecialMesh")
                        mesh.MeshType = "Brick"
                        mesh.Scale = Vector3.new(math.random(2, 5) / 10, math.random(2, 5) / 10, (position - Player.Character[Name].Source.Position).magnitude)
                        mesh.Parent = trail
                        coroutine.resume(coroutine.create(function(part) wait(0.1) for i = 1, 10 do part.Transparency = part.Transparency + 0.1 wait(0.1) end part:Remove() end), trail)
                        coroutine.resume(coroutine.create(function()
                                for i = 10, 0, -1 do
                                        Player.Character[Name].Source.Transparency = (10 - i) / 10
                                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(i / 1.5, i / 1.5, i / 1.5)
                                        wait()
                                end
                        end))
                        wait(0.3)
                end
                Player.Character[Name].Source.Transparency = 1
                canFire = true
        elseif spell == 4 then
                --Eccrando Strike, energy class. Use the clouds to your advantage and fire bolts of lightning at the ground.
                while Button1Down == true do
                        if Player.Character == nil then break end
                        if Player.Character:FindFirstChild("Humanoid") == nil then break end
                        if Player.Character.Humanoid.Health <= 0 then break end
                        if Player.Character:FindFirstChild(Name) == nil then break end
                        if Player.Character[Name]:FindFirstChild("Handle") == nil then break end
                        if Player.Character[Name]:FindFirstChild("Source") == nil then break end
                        if selected == false then break end
                        while power <= 25 and Button1Down == true do
                                wait()
                        end
                        if power <= 0 then break end
                        canFire = false
                        Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(21, 21, 21)
                        Player.Character[Name].Source.Transparency = 0
                        Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                        Player.Character[Name].Handle.Charge1.Looped = false
                        Player.Character[Name].Handle.Charge1.Volume = 1
                        Player.Character[Name].Handle.Charge1.Pitch = 0.4
                        Player.Character[Name].Handle.Charge1:Play()
                        for i = 0, 50 do
                                local shine = Instance.new("Part")
                                shine.Name = "Shine"
                                shine.formFactor = "Symmetric"
                                shine.Shape = "Ball"
                                shine.CanCollide = false
                                shine.BrickColor = BrickColor.new("Really red")
                                shine.TopSurface = 0
                                shine.BottomSurface = 0
                                shine.Size = Vector3.new(44, 41, 44)
                                shine.Transparency = 0.25
                                shine.CFrame = CFrame.new(Player.Character[Name].Source.Position + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)))
                                shine.Parent = game:GetService("Workspace")
                                local force = Instance.new("BodyPosition")
                                force.D = 7000000
                                force.P = 1000000
                                force.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                force.position = Player.Character[Name].Source.Position
                                force.Parent = shine
                                coroutine.resume(coroutine.create(function(part1, part2) for i = 0, 10 do if part1 ~= nil and part2 ~= nil then part1.BodyPosition.position = part2.Position wait() end end part1:Remove() end), shine, Player.Character[Name].Source)
                                Player.Character[Name].Source.Mesh.Scale = Vector3.new(i / 7.5, i / 7.5, i / 7.5)
                                power = power - 1
                                wait()
                        end
                        power = power - 10
                        if math.random(1, 2) == 1 then id = "Thunder" else id = "Lightning" end
                        local s = Instance.new("Sound")
                        s.Volume = math.random(10, 50) / 10
                        s.SoundId = "rbxasset://sounds\\Halloween" ..id.. ".wav"
                        s.Pitch = math.random(9, 11) / 10
                        s.Parent = game:GetService("Workspace")
                        s:Play()
                        if math.random(1, 2) == 1 then id = "Thunder" else id = "Lightning" end
                        local s = Instance.new("Sound")
                        s.Volume = math.random(1, 10) / 10
                        s.SoundId = "rbxasset://sounds\\Halloween" ..id.. ".wav"
                        s.Pitch = math.random(1, 30) / 10
                        s.Parent = game:GetService("Workspace")
                        s:Play()
                        if selected == false then break end
                        local e = Instance.new("Explosion")
                        e.BlastPressure = 10000000
                        e.BlastRadius = 25000000
                        e.Position = mouse.Hit.p
                        e.Parent = game:GetService("Workspace")
                        local pos = (mouse.Hit.p + Vector3.new(math.random(-100, 100), 1000, math.random(-100, 100)))
                        local trail = Instance.new("Part")
                        trail.BrickColor = BrickColor.new("Really red")
                        trail.TopSurface = 0
                        trail.BottomSurface = 0
                        trail.Size = Vector3.new(14, 15, 14)
                        trail.Transparency = 0.4
                        trail.Anchored = true
                        trail.CanCollide = false
                        trail.CFrame = CFrame.new((pos + mouse.Hit.p) / 2, mouse.Hit.p)
                        trail.Parent = game:GetService("Workspace")
                        local mesh = Instance.new("SpecialMesh")
                        mesh.MeshType = "Brick"
                        mesh.Scale = Vector3.new(math.random(40, 50) / 10, math.random(40, 50) / 10, (mouse.Hit.p - pos).magnitude + 10)
                        mesh.Parent = trail
                        coroutine.resume(coroutine.create(function(part) wait(0.1) for i = 1, 10 do part.Transparency = part.Transparency + 0.1 wait(0.1) end part:Remove() end), trail)
                        for i = 10, 0, -1 do
                                Player.Character[Name].Source.Transparency = Player.Character[Name].Source.Transparency + 0.1
                                Player.Character[Name].Source.Mesh.Scale = Vector3.new(i / 1.5, i / 1.5, i / 1.5)
                                wait()
                        end
                        Player.Character[Name].Source.Transparency = 1
                        wait(0.1)
                        canFire = true
                end
        elseif spell == 5 then
                --Thius Dae, health-based class. Seep life from your enemies to save yourself. Works as a general defense against multiple enemies.
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Brick"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(13, 13, 13)
                Player.Character[Name].Source.Transparency = 0.25
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Handle.Charge4.Looped = true
                Player.Character[Name].Handle.Charge4.Volume = 1
                Player.Character[Name].Handle.Charge4.Pitch = 1
                Player.Character[Name].Handle.Charge4:Play()
                for i = 0, 10 do
                        Player.Character[Name].Source.Mesh.Scale = Player.Character[Name].Source.Mesh.Scale * 1.11
                        Player.Character[Name].Source.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
                        wait()
                end
                for i = 0, math.huge, 0.1 do
                        if Button1Down == false then break end
                        if Player.Character == nil then break end
                        if Player.Character:FindFirstChild("Humanoid") == nil then break end
                        if Player.Character.Humanoid.Health <= 0 then break end
                        if Player.Character:FindFirstChild(Name) == nil then break end
                        if Player.Character[Name]:FindFirstChild("Handle") == nil then break end
                        if Player.Character[Name]:FindFirstChild("Source") == nil then break end
                        if power <= 0 then break end
                        local endstr = string.sub(tostring(i), string.len(tostring(i)), string.len(tostring(i)))
                        if endstr == "0" or endstr == "2" or endstr == "4" or endstr == "6" or endstr == "8" then
                                power = power - 1
                        end
                        Player.Character[Name].Source.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(math.sin(i) + 3, math.sin(i) + 3, math.sin(i) + 3)
                        local shine = Instance.new("Part")
                        shine.Name = "Shine"
                        shine.formFactor = "Symmetric"
                        shine.Shape = "Block"
                        shine.CanCollide = false
                        shine.Anchored = true
                        shine.BrickColor = BrickColor.new("Really red")
                        shine.TopSurface = 0
                        shine.BottomSurface = 0
                        shine.Size = Vector3.new(1, 1, 1)
                        shine.Transparency = 0.25
                        shine.CFrame = CFrame.new(Player.Character[Name].Source.Position)
                        shine.Parent = game:GetService("Workspace")
                        local mesh = Instance.new("SpecialMesh")
                        mesh.MeshType = "Brick"
                        local random = math.random(3, 10) / 10
                        mesh.Scale = Vector3.new(random, random, random)
                        mesh.Parent = shine
                        coroutine.resume(coroutine.create(function(part)
                                for i = 0.25 * 25, 25 do
                                        part.Transparency = i / 25
                                        part.CFrame = CFrame.new(part.CFrame.p + Vector3.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10)) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
                                        wait(math.random(1, 5) / 100)
                                end
                                part:Remove()
                        end), shine)
                        for _, model in pairs(game:GetService("Workspace"):GetChildren()) do
                                if model ~= Player.Character then
                                        if model:FindFirstChild("Torso") ~= nil and model:FindFirstChild("Humanoid") ~= nil then
                                                if (Player.Character.Torso.Position - model.Torso.Position).magnitude <= 25 then
                                                        local trail = Instance.new("Part")
                                                        trail.BrickColor = BrickColor.new("Really red")
                                                        trail.TopSurface = 0
                                                        trail.BottomSurface = 0
                                                        trail.Size = Vector3.new(4, 3, 4)
                                                        trail.Transparency = 0.4
                                                        trail.Anchored = true
                                                        trail.CanCollide = false
                                                        trail.CFrame = CFrame.new((Player.Character[Name].Source.Position + model.Torso.Position) / 2, model.Torso.Position)
                                                        trail.Parent = game:GetService("Workspace")
                                                        local mesh = Instance.new("SpecialMesh")
                                                        mesh.MeshType = "Brick"
                                                        mesh.Scale = Vector3.new(math.random(2, 5) / 10, math.random(2, 5) / 10, (model.Torso.Position - Player.Character[Name].Source.Position).magnitude)
                                                        mesh.Parent = trail
                                                        coroutine.resume(coroutine.create(function(part) wait() part:Remove() end), trail)
                                                        if model.Humanoid.Health > 0 then
                                                                model.Humanoid:TakeDamage(7777777.25)
                                                                Player.Character.Humanoid.Health = Player.Character.Humanoid.Health + (3432432.25 / 1)
                                                        elseif model.Humanoid.Health <= 0 then
                                                                model.Humanoid.Health = 0
                                                                model.Humanoid.Name = "HumanoidAbsorbed"
                                                                for _, part in pairs(model:GetChildren()) do
                                                                        if part.className == "Part" then
                                                                                local position = Instance.new("BodyPosition")
                                                                                position.Name = "Thius Dae"
                                                                                position.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                                                                position.P = 100
                                                                                position.D = 50
                                                                                position.Parent = part
                                                                                position.position = Player.Character[Name].Source.Position
                                                                                coroutine.resume(coroutine.create(function() while position.Parent ~= nil do position.position = Player.Character[Name].Source.Position part.CanCollide = false wait() end end))
                                                                                coroutine.resume(coroutine.create(function() wait(3.5) position:Remove() end))
                                                                        end
                                                                end
                                                                Player.Character.Humanoid.Health = Player.Character.Humanoid.Health + 5432221
                                                                power = power + 25
                                                                Player.Character[Name].Handle.Fire4.Looped = false
                                                                Player.Character[Name].Handle.Fire4.Volume = 1
                                                                Player.Character[Name].Handle.Fire4.Pitch = 1
                                                                Player.Character[Name].Handle.Fire4:Play()
                                                        end
                                                end
                                        end
                                end
                        end
                        wait()
                end
                for i = 0, 25 do
                        Player.Character[Name].Source.Mesh.Scale = Player.Character[Name].Source.Mesh.Scale / 1.15
                        Player.Character[Name].Source.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
                        Player.Character[Name].Handle.Charge4.Volume = (25 - i) / 25
                        wait()
                end
                Player.Character[Name].Handle.Charge4:Stop()
                Player.Character[Name].Source.Transparency = 1
                Player.Character[Name].Source.Weld.C0 = CFrame.new()
                canFire = true
        elseif spell == 6 then
                --Thius Heed, health-based class. Heal people around you and sheild them.
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(1, 1, 1)
                Player.Character[Name].Source.Transparency = 0.25
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Source.Fire.Enabled = true
                Player.Character[Name].Source.Fire.Heat = 10
                Player.Character[Name].Source.Fire.Size = 1
                Player.Character[Name].Source.Fire.Color = Color3.new(1, 1, 1)
                Player.Character[Name].Source.Fire.SecondaryColor = Color3.new(1, 1, 1)
                Player.Character[Name].Handle.Shine.Looped = true
                Player.Character[Name].Handle.Shine.Volume = 1
                Player.Character[Name].Handle.Shine.Pitch = 1
                Player.Character[Name].Handle.Shine:Play()
                for i = 0, 5 do
                        Player.Character[Name].Source.Mesh.Scale = Player.Character[Name].Source.Mesh.Scale * 1.2
                        Player.Character[Name].Source.Fire.Size = Player.Character[Name].Source.Fire.Size * 1.2
                        wait()
                end
                local heed = Instance.new("ForceField")
                heed.Name = "HeedShield"
                for i = 0, math.huge, 0.1 do
                        if Button1Down == false then break end
                        if Player.Character == nil then break end
                        if Player.Character:FindFirstChild("Humanoid") == nil then break end
                        if Player.Character.Humanoid.Health <= 0 then break end
                        if Player.Character:FindFirstChild(Name) == nil then break end
                        if Player.Character[Name]:FindFirstChild("Handle") == nil then break end
                        if Player.Character[Name]:FindFirstChild("Source") == nil then break end
                        if power <= 0 then break end
                        local endstr = string.sub(tostring(i), string.len(tostring(i)), string.len(tostring(i)))
                        if endstr == "0" or endstr == "2" or endstr == "4" or endstr == "6" or endstr == "8" then
                                power = power - 1
                        end
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(math.sin(i) + 3, math.sin(i) + 3, math.sin(i) + 3)
                        Player.Character[Name].Source.Fire.Size = math.sin(i) + 10
                        Player.Character[Name].Source.Fire.Heat = math.sin(i) + 10
                        for _, model in pairs(game:GetService("Workspace"):GetChildren()) do
                                if model:FindFirstChild("Torso") ~= nil and model:FindFirstChild("Humanoid") ~= nil then
                                        if (Player.Character.Torso.Position - model.Torso.Position).magnitude <= 25 then
                                                local trail = Instance.new("Part")
                                                trail.BrickColor = BrickColor.new("Really red")
                                                trail.TopSurface = 0
                                                trail.BottomSurface = 0
                                                trail.Size = Vector3.new(3, 5, 4)
                                                trail.Transparency = 0.4
                                                trail.Anchored = true
                                                trail.CanCollide = false
                                                trail.CFrame = CFrame.new((Player.Character[Name].Source.Position + model.Torso.Position) / 2, model.Torso.Position)
                                                trail.Parent = game:GetService("Workspace")
                                                local mesh = Instance.new("SpecialMesh")
                                                mesh.MeshType = "Brick"
                                                mesh.Scale = Vector3.new(math.random(2, 5) / 10, math.random(2, 5) / 10, (model.Torso.Position - Player.Character[Name].Source.Position).magnitude)
                                                mesh.Parent = trail
                                                coroutine.resume(coroutine.create(function(part) wait() part:Remove() end), trail)
                                                model.Humanoid.Health = model.Humanoid.Health + 1.25
                                                heed:Clone().Parent = model
                                                coroutine.resume(coroutine.create(function(part) wait() part:Remove() end), model.HeedShield)
                                        end
                                end
                        end
                        wait()
                end
                for i = 0, 25 do
                        Player.Character[Name].Source.Mesh.Scale = Player.Character[Name].Source.Mesh.Scale / 1.15
                        Player.Character[Name].Source.Fire.Size = Player.Character[Name].Source.Fire.Size / 1.15
                        Player.Character[Name].Source.Fire.Heat = Player.Character[Name].Source.Fire.Heat / 1.15
                        Player.Character[Name].Handle.Shine.Volume = (25 - i) / 25
                        wait()
                end
                Player.Character[Name].Handle.Shine:Stop()
                Player.Character[Name].Source.Transparency = 1
                Player.Character[Name].Source.Fire.Enabled = false
                canFire = true
        elseif spell == 7 then
                --Combuscus Phore, fire/explosives class. A small explosion with a bit of magic makes to be a spectacular performance.
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(24, 24, 24)
                Player.Character[Name].Source.Transparency = 0.25
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Source.Fire.Enabled = true
                Player.Character[Name].Source.Fire.Heat = 10
                Player.Character[Name].Source.Fire.Size = 10
                Player.Character[Name].Source.Fire.Color = Color3.new(1, 0, 0)
                Player.Character[Name].Source.Fire.SecondaryColor = Color3.new(1, 1, 1)
                Player.Character[Name].Handle.Bolt.Looped = false
                Player.Character[Name].Handle.Bolt.Volume = 1
                Player.Character[Name].Handle.Bolt.Pitch = 1.5
                Player.Character[Name].Handle.Bolt:Play()
                power = power - 75
                local shock = Instance.new("Part")
                shock.formFactor = "Symmetric"
                shock.Size = Vector3.new(25, 24, 25)
                shock.BrickColor = BrickColor.new("Really red")
                shock.Anchored = true
                shock.Name = "Shock Ring"
                shock.CanCollide = false
                shock.Parent = game:GetService("Workspace")
                local mesh = Instance.new("SpecialMesh")
                mesh.MeshType = "FileMesh"
                mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
                mesh.Parent = shock
                local tilt1 = math.random(-10, 10)
                local tilt2 = math.random(-10, 10)
                local tiltChance = math.random(1, 3)
                for i = 0, 25 do
                        Player.Character[Name].Handle.Bolt.Pitch = Player.Character[Name].Handle.Bolt.Pitch - 0.1
                        shock.Mesh.Scale =  Vector3.new(i, i, i) * (25 - i)
                        if tiltChance == 1 then
                                shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90 + tilt1), 0, 0)
                        elseif tiltChance == 2 then
                                shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(tilt2), 0)
                        elseif tiltChance == 3 then
                                shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90 + tilt1), math.rad(tilt2), 0)
                        end
                        Player.Character[Name].Source.Mesh.Scale = (Vector3.new(i, i, i) / 5) * (25 - i)
                        Player.Character[Name].Source.Fire.Size = (i / 5) * (25 - i)
                        Player.Character[Name].Source.Fire.Heat = (i / 5) * (25 - i)
                        for _, model in pairs(game:GetService("Workspace"):GetChildren()) do
                                if model.className == "Part" then
                                        if (Player.Character.Torso.Position - model.Position).magnitude <= (i * (25 - i)) / 2 and model.Anchored == false then
                                                model.Velocity = ((model.Position - Player.Character.Torso.Position) * (math.sin(i / 4) * 10)) + Vector3.new(0, 25, 0)
                                                if math.random(1, 10) == 1 then model:BreakJoints() end
                                        end
                                elseif model.className == "Model" and model ~= Player.Character then
                                        for _, x in pairs(model:GetChildren()) do
                                                if x.className == "Part" then
                                                        if (Player.Character.Torso.Position - x.Position).magnitude <= (i * (25 - i)) / 2 and x.Anchored == false then
                                                                x.Velocity = ((x.Position - Player.Character.Torso.Position) * (math.sin(i / 4) * 10)) + Vector3.new(0, 25, 0)
                                                                if math.random(1, 10) == 1 then x:BreakJoints() end
                                                                if model:FindFirstChild("Humanoid") ~= nil then
                                                                        model.Humanoid:TakeDamage(10000000)
                                                                        model.Humanoid.Sit = true
                                                                end
                                                        end
                                                end
                                        end
                                end
                        end
                        wait(0.03)
                end
                shock:Remove()
                Player.Character[Name].Source.Transparency = 1
                Player.Character[Name].Source.Fire.Enabled = false
                canFire = true
        elseif spell == 8 then
                --Combuscus Burn, fire/explosives class. Basically, light things on fire.
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(21, 21, 21)
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Handle.Fire3.Looped = false
                Player.Character[Name].Handle.Fire3.Volume = 1
                Player.Character[Name].Handle.Fire3.Pitch = 1
                Player.Character[Name].Handle.Fire3:Play()
                Player.Character[Name].Handle.Fire4.Looped = false
                Player.Character[Name].Handle.Fire4.Volume = 1
                Player.Character[Name].Handle.Fire4.Pitch = 1
                Player.Character[Name].Handle.Fire4:Play()
                coroutine.resume(coroutine.create(function()
                        for i = 0, 1, 0.1 do
                                Player.Character[Name].Source.Mesh.Scale = (Vector3.new(i, i, i) * 5) + Vector3.new(24, 25, 23)
                                Player.Character[Name].Source.Transparency = i
                        wait()
                        end
                        Player.Character[Name].Source.Transparency = 1
                end))
                if mouse.Target == nil then return end
                if mouse.Target.Parent == nil then return end
                local function SetFire(target, offset)
                        if target == nil then return end
                        if offset == nil then offset = Vector3.new(0, 0, 0) end
                        if target:getMass() > 3500 then return end
                        if target.Name == "CombuscusBurnFire" then return end
                        if target:FindFirstChild("CombuscusBurnFire") ~= nil then return end
                        if target:FindFirstChild("ForceField") ~= nil then return end
                        if target.Parent == nil then return end
                        if target.Parent:FindFirstChild("ForceField") ~= nil then return end
                        if target.Parent:FindFirstChild("HeedShield") ~= nil then return end
                        local check = Instance.new("Model")
                        check.Name = "CombuscusBurnFire"
                        check.Parent = target
                        delay(math.random(0.1, 2), function() if target ~= nil then target.Touched:connect(function(hit) if target:FindFirstChild("CombuscusBurnFire") ~= nil then SetFire(hit) end end) end end)
                        local part = Instance.new("Part")
                        part.Name = "CombuscusBurnFire"
                        part.CanCollide = false
                        part.Anchored = true
                        part.formFactor = "Symmetric"
                        part.Size = Vector3.new(4, 4, 3)
                        part.TopSurface = 0
                        part.BottomSurface = 0
                        part.Transparency = 1
                        part.Parent = game:GetService("Workspace")
                        local fire = Instance.new("Fire")
                        fire.Color = Color3.new(1, math.random(10, 30) / 100, 0)
                        fire.SecondaryColor = Color3.new(1, 1, 1)
                        fire.Size = math.random(4, 15)
                        fire.Heat = fire.Size + 3
                        fire.Parent = part
                        local smoke = Instance.new("Smoke")
                        smoke.Color = Color3.new(0.5, 0.5, 0.5)
                        smoke.Size = fire.Size + 3
                        smoke.RiseVelocity = fire.Heat / 5
                        smoke.Opacity = math.random(1, 15) / 100
                        smoke.Parent = part
                        local sound = Instance.new("Sound")
                        sound.SoundId = "http://www.roblox.com/asset/?id=31760113"
                        sound.Volume = 1
                        sound.Pitch = 1
                        sound.Looped = true
                        sound.Parent = part
                        sound:Play()
                        coroutine.resume(coroutine.create(function()
                                for i = 1, math.random(100, 1000) do
                                        if part.Parent == nil then break end
                                        if target.Parent == nil then break end
                                        if target.Parent.Parent == nil then break end
                                        if target:FindFirstChild("CombuscusBurnFire") == nil then break end
                                        if Player.Character == nil then break end
                                        if Player.Character:FindFirstChild("Humanoid") == nil then break end
                                        if Player.Character.Humanoid.Health <= 0 then break end
                                        part.CFrame = CFrame.new(target.CFrame.p + offset)
                                        if target.Parent:FindFirstChild("Humanoid") ~= nil then
                                                target.Parent.Humanoid:TakeDamage(44324.25)
                                        end
                                        if math.random(1, 100) == 1 then target:BreakJoints() end
                                        if math.random(1, 25) == 1 and target.Anchored == false then target.BrickColor = BrickColor.new("Really black") end
                                        if math.random(1, 50) == 1 and target.Anchored == false then target.Velocity = target.Velocity + Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)) end
                                        wait()
                                end
                                for i = 1, 0, -0.05 do
                                        sound.Volume = i
                                        fire.Size = fire.Size / 1.025
                                        fire.Heat = fire.Heat / 1.01
                                        fire.Color = Color3.new(1 * i, 0.25 * i, 0)
                                        fire.SecondaryColor = Color3.new(1 * i, 1 * i, 1 * i)
                                        smoke.Size = smoke.Size / 1.05
                                        smoke.RiseVelocity = smoke.RiseVelocity / 1.05
                                        smoke.Opacity = smoke.Opacity / 1.05
                                        wait()
                                end
                                sound:Stop()
                                fire.Enabled = false
                                smoke.Enabled = false
                                if target ~= nil then if target:FindFirstChild("CombuscusBurnFire") ~= nil then target.CombuscusBurnFire:Remove() end end
                                wait(3)
                                part:Remove()
                        end))
                end
                SetFire(mouse.Target, mouse.Hit.p - mouse.Target.CFrame.p)
                canFire = true
        elseif spell == 9 then
                --Combuscus Vortex, fire/explosives class. A tornado in a can.
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(25, 24, 25)
                Player.Character[Name].Source.Transparency = 0.25
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Source.Fire.Enabled = true
                Player.Character[Name].Source.Fire.Heat = 100
                Player.Character[Name].Source.Fire.Size = 100
                Player.Character[Name].Source.Fire.Color = Color3.new(1, 0, 0)
                Player.Character[Name].Source.Fire.SecondaryColor = Color3.new(1, 1, 1)
                Player.Character[Name].Handle.Charge2.Looped = false
                Player.Character[Name].Handle.Charge2.Volume = 1
                Player.Character[Name].Handle.Charge2.Pitch = 0.125
                Player.Character[Name].Handle.Charge2:Play()
                power = power - 50
                for i = 0, 75 do
                        if math.random(1, 3) == 1 then
                                local shock = Instance.new("Part")
                                shock.formFactor = "Symmetric"
                                shock.Size = Vector3.new(21, 21, 21)
                                shock.BrickColor = BrickColor.new("Really red")
                                shock.Anchored = true
                                shock.Name = "Shock Ring"
                                shock.CanCollide = false
                                shock.Parent = game:GetService("Workspace")
                                local mesh = Instance.new("SpecialMesh")
                                mesh.MeshType = "FileMesh"
                                mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
                                mesh.Parent = shock
                                coroutine.resume(coroutine.create(function()
                                        local tilt1 = math.random(-10, 10)
                                        local tilt2 = math.random(-10, 10)
                                        local tiltChance = math.random(1, 3)
                                        local randomSize = math.random(-10, 10)
                                        for x = 1, 25 do
                                                shock.Mesh.Scale = Vector3.new(5 + x, 5 + x, 5 + (x / 5)) + Vector3.new(randomSize, randomSize, randomSize)
                                                if tiltChance == 1 then
                                                        shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0) + Vector3.new(0, x, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90 + (tilt1 / (25 - x))), 0, 0)
                                                elseif tiltChance == 2 then
                                                        shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0) + Vector3.new(0, x, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(tilt2 / (25 - x)), 0)
                                                elseif tiltChance == 3 then
                                                        shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0) + Vector3.new(0, x, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90 + (tilt1 / (25 - x))), math.rad(tilt2 / (25 - x)), 0)
                                                end
                                                wait()
                                        end
                                end))
                        end
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(i, i, i) / 5
                        Player.Character[Name].Source.Fire.Size = i / 5
                        Player.Character[Name].Source.Fire.Heat = i / 5
                        for _, model in pairs(game:GetService("Workspace"):GetChildren()) do
                                if model.className == "Part" then
                                        if (Player.Character.Torso.Position - model.Position).magnitude <= 50 and model.Anchored == false then
                                                model.CanCollide = false
                                                model.Transparency = 0.5
                                                local Position = Instance.new("BodyPosition")
                                                Position.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                                Position.P = 100
                                                Position.D = 10
                                                Position.position = Player.Character.Torso.Position + Vector3.new(math.sin(i / (math.random(500, 750) / 100)) * (i / 2) + 4, (i / (math.random(800, 1200) / 100)) + 5, math.cos(i / (math.random(500, 750) / 100)) * (i / 2) + 4)
                                                Position.Parent = model
                                                coroutine.resume(coroutine.create(function() wait(0.1) Position:Remove() end))
                                                if math.random(1, 10) == 1 then model:BreakJoints() end
                                        end
                                elseif model.className == "Model" and model ~= Player.Character then
                                        for _, x in pairs(model:GetChildren()) do
                                                if x.className == "Part" then
                                                        if (Player.Character.Torso.Position - x.Position).magnitude <= 50 and x.Anchored == false then
                                                                x.CanCollide = false
                                                                local Position = Instance.new("BodyPosition")
                                                                Position.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                                                Position.P = 500
                                                                Position.D = 10
                                                                Position.position = Player.Character.Torso.Position + Vector3.new(math.sin(i / (math.random(500, 750) / 100)) * (i / 2) + 4, (i / (math.random(800, 1200) / 100)) + 7.5, math.cos(i / (math.random(500, 750) / 100)) * (i / 2) + 4)
                                                                Position.Parent = x
                                                                coroutine.resume(coroutine.create(function() wait(0.1) Position:Remove() end))
                                                                if math.random(1, 10) == 1 then x:BreakJoints() end
                                                                if model:FindFirstChild("Humanoid") ~= nil then
                                                                        model.Humanoid:TakeDamage(10000000)
                                                                        model.Humanoid.Sit = true
                                                                end
                                                        end
                                                end
                                        end
                                end
                        end
                        wait(0.03)
                end
                Player.Character[Name].Handle.Fire2.Looped = false
                Player.Character[Name].Handle.Fire2.Volume = 1
                Player.Character[Name].Handle.Fire2.Pitch = 0.3
                Player.Character[Name].Handle.Fire2:Play()
                Player.Character[Name].Source.Fire.Enabled = false
                for i = 0.25, 1, 0.05 do
                        Player.Character[Name].Source.Transparency = i
                        wait()
                end
                Player.Character[Name].Source.Transparency = 1
                canFire = true
        elseif spell == 10 then
                --Combuscus Phore Nexus, fire/explosives class. Basically the outcome is similar to that of a nuclear warhead.
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(24, 24, 25)
                Player.Character[Name].Source.Transparency = 0.25
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Source.Fire.Enabled = true
                Player.Character[Name].Source.Fire.Heat = 10
                Player.Character[Name].Source.Fire.Size = 10
                Player.Character[Name].Source.Fire.Color = Color3.new(1, 0, 0)
                Player.Character[Name].Source.Fire.SecondaryColor = Color3.new(1, 1, 1)
                Player.Character[Name].Handle.Fire1.Looped = false
                Player.Character[Name].Handle.Fire1.Volume = 1
                Player.Character[Name].Handle.Fire1.Pitch = math.random(3, 6) / 10
                local new = Player.Character[Name].Handle.Fire1:Clone()
                new.Parent = game:GetService("Workspace")
                new:Play()
                Player.Character[Name].Handle.Charge3.Looped = false
                Player.Character[Name].Handle.Charge3.Volume = 1
                Player.Character[Name].Handle.Charge3.Pitch = math.random(15, 20) / 10
                local new = Player.Character[Name].Handle.Charge3:Clone()
                new.Parent = game:GetService("Workspace")
                new:Play()
                Player.Character[Name].Handle.Fire4.Looped = false
                Player.Character[Name].Handle.Fire4.Volume = 1
                Player.Character[Name].Handle.Fire4.Pitch = math.random(2, 4) / 10
                local new = Player.Character[Name].Handle.Fire4:Clone()
                new.Parent = game:GetService("Workspace")
                new:Play()
                power = power - 100
                local shock = Instance.new("Part")
                shock.formFactor = "Symmetric"
                shock.Size = Vector3.new(24, 24, 24)
                shock.BrickColor = BrickColor.new("Really red")
                shock.Anchored = true
                shock.Name = "Shock Ring"
                shock.CanCollide = false
                shock.Parent = game:GetService("Workspace")
                local mesh = Instance.new("SpecialMesh")
                mesh.MeshType = "FileMesh"
                mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
                mesh.Parent = shock
                local shock2 = shock:Clone()
                shock2.Parent = game:GetService("Workspace")
                local shock3 = shock:Clone()
                shock3.Parent = game:GetService("Workspace")
                local shockAngle = CFrame.fromEulerAnglesXYZ(math.rad(90 + math.random(-5, 5)), math.rad(math.random(-5, 5)), math.rad(math.random(-5, 5)))
                local shock2Angle = CFrame.fromEulerAnglesXYZ(math.rad(90 + math.random(-5, 5)), math.rad(math.random(-5, 5)), math.rad(math.random(-5, 5)))
                local shock3Angle = CFrame.fromEulerAnglesXYZ(math.rad(90 + math.random(-5, 5)), math.rad(math.random(-5, 5)), math.rad(math.random(-5, 5)))
                local shock2Size = math.random(2, 3)
                local shock3Size = math.random(4, 6)
                for i = 0, 500, 10 do
                        if string.sub(tostring(i), string.len(tostring(i)), string.len(tostring(i))) == "0" then
                                local shock4 = Instance.new("Part")
                                shock4.formFactor = "Symmetric"
                                shock4.Size = Vector3.new(1, 1, 1)
                                shock4.BrickColor = BrickColor.new("Really red")
                                shock4.Anchored = true
                                shock4.Name = "Shock Ring"
                                shock4.CanCollide = false
                                shock4.Parent = game:GetService("Workspace")
                                shock4.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 2, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-25, 25)), math.rad(math.random(-25, 25)), math.rad(math.random(-25, 25)))
                                local mesh = Instance.new("SpecialMesh")
                                mesh.MeshType = "FileMesh"
                                mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
                                mesh.Parent = shock4
                                coroutine.resume(coroutine.create(function(part)
                                        for i = 0, 1, 0.05 do
                                                part.Transparency = i
                                                part.Mesh.Scale = Vector3.new(i * 25, i * 25, i * 25)
                                                wait()
                                        end
                                        part:Remove()
                                end), shock4)
                        end
                        shock.Transparency = i / 500
                        shock2.Transparency = i / 500
                        shock3.Transparency = i / 500
                        Player.Character[Name].Source.Transparency = i / 250
                        shock.Mesh.Scale = Vector3.new(i, i, i)
                        shock2.Mesh.Scale = Vector3.new(i, i, i) / shock2Size
                        shock3.Mesh.Scale = Vector3.new(i, i, i) / shock3Size
                        shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * shockAngle
                        shock2.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * shock2Angle
                        shock3.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * shock3Angle
                        Player.Character[Name].Source.Mesh.Scale = (Vector3.new(i, i, i) / 15)
                        Player.Character[Name].Source.Fire.Size = (i / 15)
                        Player.Character[Name].Source.Fire.Heat = (i / 15)
                        for _, model in pairs(game:GetService("Workspace"):GetChildren()) do
                                if model.className == "Part" then
                                        if (Player.Character.Torso.Position - model.Position).magnitude <= i / 2 and model.Anchored == false then
                                                model.Velocity = (model.Position - Player.Character.Torso.Position) * 10 + Vector3.new(0, 25, 0)
                                                if math.random(1, 10) == 1 then model:BreakJoints() end
                                        end
                                elseif model.className == "Model" and model ~= Player.Character then
                                        for _, x in pairs(model:GetChildren()) do
                                                if x.className == "Part" then
                                                        if (Player.Character.Torso.Position - x.Position).magnitude <= i / 2 and x.Anchored == false then
                                                                x.Velocity = (x.Position - Player.Character.Torso.Position) * 10 + Vector3.new(0, 25, 0)
                                                                if math.random(1, 10) == 1 then x:BreakJoints() end
                                                                if model:FindFirstChild("Humanoid") ~= nil then
                                                                        model.Humanoid:TakeDamage(10)
                                                                        model.Humanoid.Sit = true
                                                                end
                                                        end
                                                end
                                        end
                                end
                        end
                        wait(0.03)
                end
                shock:Remove()
                shock2:Remove()
                shock3:Remove()
                Player.Character[Name].Source.Transparency = 1
                Player.Character[Name].Source.Fire.Enabled = false
                canFire = true
        elseif spell == 11 then
                --Kanamla Cysis, object manipulation class. The easiest spell in it's class allows you to lightly pick things up.
                local target = mouse.Target
                if target == nil then return end
                if target.Parent == nil then return end
                if target.Anchored == true then return end
                if (target.Position - Player.Character[Name].Source.Position).magnitude > 2555555555 then return end
                if game:GetService("Players"):getPlayerFromCharacter(target.Parent) ~= nil then
                        if game:GetService("Players"):getPlayerFromCharacter(target.Parent).Character:FindFirstChild("Torso") ~= nil then
                                target = game:GetService("Players"):getPlayerFromCharacter(target.Parent).Character.Torso
                                if game:GetService("Players"):getPlayerFromCharacter(target.Parent).Character:FindFirstChild("Humanoid") ~= nil then
                                        game:GetService("Players"):getPlayerFromCharacter(target.Parent).Character.Humanoid.PlatformStand = true
                                end
                        end
                end
                local position = Instance.new("BodyPosition")
                position.Name = "Cysis"
                position.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                position.P = 100
                position.D = 55
                position.Parent = target
                position.position = Player.Character[Name].Source.Position + ((mouse.Hit.p - Player.Character[Name].Source.Position).unit * 100)
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(24, 24, 24)
                Player.Character[Name].Source.Transparency = 0.25
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Source.Fire.Enabled = true
                Player.Character[Name].Source.Fire.Heat = 10
                Player.Character[Name].Source.Fire.Size = 2
                Player.Character[Name].Source.Fire.Color = Color3.new(0, 0, 1)
                Player.Character[Name].Source.Fire.SecondaryColor = Color3.new(0.5, 0.5, 1)
                Player.Character[Name].Handle.Shine.Looped = false
                Player.Character[Name].Handle.Shine.Volume = 1
                Player.Character[Name].Handle.Shine.Pitch = 0.75
                Player.Character[Name].Handle.Shine:Play()
                for i = 0, math.huge do
                        if Button1Down == false then break end
                        if Player.Character == nil then break end
                        if Player.Character:FindFirstChild("Humanoid") == nil then break end
                        if Player.Character.Humanoid.Health <= 0 then break end
                        if Player.Character:FindFirstChild(Name) == nil then break end
                        if Player.Character[Name]:FindFirstChild("Handle") == nil then break end
                        if Player.Character[Name]:FindFirstChild("Source") == nil then break end
                        if power <= 0 then break end
                        if string.sub(tostring(i), string.len(tostring(i)), string.len(tostring(i))) == "0" then
                                power = power - 1
                        end
                        if target ~= nil and position ~= nil then
                                position.position = Player.Character[Name].Source.Position + ((mouse.Hit.p - Player.Character[Name].Source.Position).unit * 100)
                        end
                        wait()
                end
                if position ~= nil then position:Remove() end
                if target ~= nil then
                        if target.Parent:FindFirstChild("Humanoid") ~= nil then
                                target.Parent.Humanoid.PlatformStand = false
                                target.Parent.Humanoid.Sit = true
                        end
                end
                for i = 0.25, 1, 0.05 do
                        Player.Character[Name].Source.Transparency = i
                        wait()
                end
                Player.Character[Name].Source.Transparency = 1
                Player.Character[Name].Source.Fire.Enabled = false
                canFire = true
        elseif spell == 12 then
                --Kanamla Tepidift, object manipulation class. Allows you to teleport from one area to another.
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Source.Fire.Enabled = true
                Player.Character[Name].Source.Fire.Heat = 0
                Player.Character[Name].Source.Fire.Color = Color3.new(0, 0, 1)
                Player.Character[Name].Source.Fire.SecondaryColor = Color3.new(1, 1, 1)
                Player.Character[Name].Handle.Shine.Looped = true
                Player.Character[Name].Handle.Shine.Pitch = 1.5
                Player.Character[Name].Handle.Shine.Volume = 1
                Player.Character[Name].Handle.Shine:Play()
                for i = 1, 0, -0.05 do
                        Player.Character[Name].Source.Transparency = i
                        Player.Character[Name].Source.Mesh.Scale = (Vector3.new(1 - i, 1 - i, 1 - i) * 15)
                        Player.Character[Name].Source.Fire.Size = (1 - i) * 15
                        wait()
                end
                local maxDistance = (Player.Character.Torso.CFrame.p - mouse.Hit.p).magnitude
                if maxDistance < 500000 then 
                        local pos1 = Player.Character.Torso.CFrame.p
                        local pos2 = mouse.Hit.p + Vector3.new(0, 3, 0)
                        local pos0 = pos1
                        for distance = 1, maxDistance, 5 do
                                pos0 = (CFrame.new(pos1, pos2) * CFrame.new(0, 0, -distance)).p
                                Player.Character.Torso.CFrame = CFrame.new(pos0, pos2)
                                Player.Character.Torso.Velocity = Vector3.new()
                                power = power - 1
                                wait()
                        end
                        Player.Character.Torso.CFrame = CFrame.new(pos2)
                        for i = 0, 1, 0.05 do
                                Player.Character[Name].Source.Transparency = i
                                Player.Character[Name].Source.Mesh.Scale = (Vector3.new(1 - i, 1 - i, 1 - i) * 15)
                                Player.Character[Name].Source.Fire.Size = (1 - i) * 15
                                Player.Character[Name].Handle.Shine.Volume = (1 - i)
                                wait()
                        end
                        Player.Character[Name].Handle.Shine:Stop()
                else
                        for i = 0, 1, 0.05 do
                                Player.Character[Name].Source.BrickColor = Player.Character[Name].Source.BrickColor == BrickColor.new("Really red") and BrickColor.new("Really red") or BrickColor.new("Bright blue")
                                Player.Character[Name].Source.Transparency = i
                                Player.Character[Name].Source.Mesh.Scale = (Vector3.new(1 - i, 1 - i, 1 - i) * 15)
                                Player.Character[Name].Source.Fire.Size = (1 - i) * 15
                                Player.Character[Name].Source.Fire.Color = Player.Character[Name].Source.Fire.Color == Color3.new(0, 0, 1) and Color3.new(1, 0, 0) or Color3.new(0, 0, 1)
                                Player.Character[Name].Source.Fire.SecondaryColor = Player.Character[Name].Source.Fire.SecondaryColor == Color3.new(1, 1, 1) and Color3.new(1, 0, 0) or Color3.new(1, 1, 1)
                                Player.Character[Name].Handle.Shine.Pitch = (1 - i) + 0.5
                                wait()
                        end
                        Player.Character[Name].Handle.Shine:Stop()
                end
                Player.Character[Name].Source.Transparency = 1
                Player.Character[Name].Source.Fire.Enabled = false
                canFire = true
        elseif spell == 13 then
                --Kanamla Jump, object manipulation class. Allows you to jump really high.
                canFire = false
                while Button1Down == true do
                        if power <= 0 then break end
                        Player.Character[Name].Handle.Fire3.Looped = false
                        Player.Character[Name].Handle.Fire3.Pitch = 1
                        Player.Character[Name].Handle.Fire3.Volume = 1
                        for i = 1, 2 do Player.Character[Name].Handle.Fire3:Play() end
                        Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                        Player.Character.Humanoid.PlatformStand = true
                        Player.Character.Torso.Velocity = Vector3.new(Player.Character.Torso.Velocity.x, (Player.Character.Torso.Velocity.y / 2) + 200, Player.Character.Torso.Velocity.z)
                        power = power - 5
                        local shock = Instance.new("Part")
                        shock.formFactor = "Symmetric"
                        shock.Size = Vector3.new(1, 1, 1)
                        shock.BrickColor = BrickColor.new("Really red")
                        shock.Anchored = true
                        shock.Name = "Shock Ring"
                        shock.CanCollide = false
                        shock.Parent = game:GetService("Workspace")
                        local mesh = Instance.new("SpecialMesh")
                        mesh.MeshType = "FileMesh"
                        mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
                        mesh.Scale = Vector3.new(6, 6, 6)
                        mesh.Parent = shock
                        shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(2, 2.5, 3))
                        coroutine.resume(coroutine.create(function()
                                for i = 0, 50 do
                                        mesh.Scale = Vector3.new(i, i / 5, i)
                                        shock.Transparency = i / 50
                                        wait()
                                end
                                shock:Remove()
                        end))
                        for i = 0, 1, 0.2 do
                                Player.Character[Name].Source.Transparency = i
                                Player.Character[Name].Source.Mesh.Scale = (Vector3.new(i, i, i) * 5)
                                wait()
                        end
                        Player.Character[Name].Source.Transparency = 1
                        Player.Character.Humanoid.PlatformStand = false
                end
                canFire = true
        elseif spell == 14 then
                --Candora Hide, light manipulation class. The Hide spell makes you and your wand seem invisible to the naked eye by bending light around your limbs.
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(1, 1, 1)
                Player.Character[Name].Source.Transparency = 0.25
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                for i = 1, 0, -0.05 do
                        Player.Character[Name].Source.Transparency = i
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(1 - i, 1 - i, 1 - i) * 2
                        wait()
                end
                Player.Character[Name].Source.Transparency = 0
                if Player.Character:FindFirstChild("Head") ~= nil then
                        if Player.Character.Head:FindFirstChild("face") ~= nil then
                                Player.Character.Head.face.Face = "Bottom"
                        end
                end
                Player.Character[Name].Handle.Shine.Looped = false
                Player.Character[Name].Handle.Shine.Volume = 1
                Player.Character[Name].Handle.Shine:Play()
                for i = 0, 1.1, 0.01 do
                        Player.Character[Name].Handle.Shine.Pitch = math.sin(i)
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(math.sin(i), math.sin(i), math.sin(i)) + Vector3.new(2, 2, 2)
                        for _, children in pairs(Player.Character:GetChildren()) do
                                if children.className == "Part" and children.Name ~= "" then
                                        children.Transparency = i
                                end
                                if children.Name == Name then
                                        for _, children2 in pairs(children:GetChildren()) do
                                                if children2.className == "Part" then
                                                        children2.Transparency = i
                                                end
                                        end
                                end
                        end
                        wait()
                end
                while Button1Down == true do
                        if Player.Character == nil then break end
                        if Player.Character:FindFirstChild("Humanoid") == nil then break end
                        if Player.Character.Humanoid.Health <= 0 then break end
                        if Player.Character:FindFirstChild(Name) == nil then break end
                        if Player.Character[Name]:FindFirstChild("Handle") == nil then break end
                        if Player.Character[Name]:FindFirstChild("Source") == nil then break end
                        if power <= 0 then break end
                        power = power - 1
                        wait(5)
                end
                Player.Character[Name].Handle.Shine:Play()
                for i = 1, -0.1, -0.01 do
                        Player.Character[Name].Handle.Shine.Pitch = math.sin(i)
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(math.sin(i), math.sin(i), math.sin(i)) + Vector3.new(2, 2, 2)
                        for _, children in pairs(Player.Character:GetChildren()) do
                                if children.className == "Part" and children.Name ~= "" then
                                        children.Transparency = i
                                end
                                if children.Name == Name then
                                        for _, children2 in pairs(children:GetChildren()) do
                                                if children2.className == "Part" then
                                                        children2.Transparency = i
                                                end
                                        end
                                end
                        end
                        wait()
                end
                Player.Character[Name].Handle.Shine:Stop()
                if Player.Character:FindFirstChild("Head") ~= nil then
                        if Player.Character.Head:FindFirstChild("face") ~= nil then
                                Player.Character.Head.face.Face = "Front"
                        end
                end
                for i = 0, 1, 0.05 do
                        Player.Character[Name].Source.Transparency = i
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(1 - i, 1 - i, 1 - i) * 2
                        wait()
                end
                Player.Character[Name].Source.Transparency = 1
                canFire = true
        end
end
function onButton1Up(mouse)
        if selected == false then return end
        Button1Down = false
        while canFire == false do wait() end
        mouse.Icon = "rbxasset://textures\\GunCursor.png"
end
function onMove(mouse)
        --Stuffs.
end
function onKeyDown(key, mouse)
        if selected == false or canFire == false or Button1Down == true then return end
        key = key:lower()
        if key == "q" then
                if mouse.Target == nil then return end
                if game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent) ~= nil then
                        onDeselected(mouse)
                        removeParts("holster")
                        script.Parent.Parent = game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent).Backpack
                end
        end
        if key == "e" then
                spell = spell - 1
                if spell < 0 then
                        spell = 14
                end
        end
        if key == "r" then
                spell = spell + 1
                if spell > 14 then
                        spell = 0
                end
        end
        if spell == 1 then
                spellText = "Blood Slash (1P)"
        elseif spell == 2 then
                spellText = "Blood Meteor (50P)"
        elseif spell == 3 then
                spellText = "Blood Bolt (25P)"
        elseif spell == 4 then
                spellText = "Blood Strike (~60P)"
        elseif spell == 5 then
                spellText = "Blood Sucker (1P/2ms)"
        elseif spell == 6 then
                spellText = "Blood Heal (1P/2ms)"
        elseif spell == 7 then
                spellText = "Blood Explosion (75P)"
        elseif spell == 8 then
                spellText = "Blood Burn (10P)"
        elseif spell == 9 then
                spellText = "Blood Vortex (50P)"
        elseif spell == 10 then
                spellText = "Blood Nuke (100P)"
        elseif spell == 11 then
                spellText = "Blood Pull (2P/1sec)"
        elseif spell == 12 then
                spellText = "Blood Teleport (50P)"
        elseif spell == 13 then
                spellText = "Blood Jump (5P)"
        elseif spell == 14 then
                spellText = "Blood Diguise (2P/1sec)"
        else
                spellText = "Blood Wand"
        end
        updateGui()
end
function onSelected(mouse)
        if selected == true or dropped == true then return end
        selected = true
        mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
        while Player.Character:FindFirstChild("WeaponActivated") ~= nil do
                if Player.Character.WeaponActivated.Value == nil then break end
                if Player.Character.WeaponActivated.Value.Parent == nil then break end
                wait()
        end
        mouse.Icon = "rbxasset://textures\\GunCursor.png"
        updateGui()
        removeParts("holster")
        makeParts("hand")
        local weapon = Instance.new("ObjectValue")
        weapon.Name = "WeaponActivated"
        weapon.Value = script.Parent
        weapon.Parent = Player.Character
        DisableLimb(1, Player.Character)
        SetAngle(1, math.rad(90), Player.Character)
        mouse.Button1Down:connect(function() onButton1Down(mouse) end)
        mouse.Button1Up:connect(function() onButton1Up(mouse) end)
        mouse.Move:connect(function() onMove(mouse) end)
        mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
        while selected == true do
                if canFire == true then
                        if power < 100 and power >= 0 then
                                power = power + 1111111
                                wait(0.05)
                        elseif power < 0 then
                                power = power + 1111111
                                wait(0.3)
                        else
                                power = 67000000
                        end
                end
                updateGui()
                wait()
        end
end
function onDeselected(mouse)
        if selected == false then return end
        selected = false
        Button1Down = false
        while canFire == false do
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
        if Player.PlayerGui:FindFirstChild(Name) ~= nil then Player.PlayerGui[Name]:Remove() end
        removeParts("hand")
        makeParts("holster")
        SetAngle(1, 0, Player.Character)
        EnableLimb(1, Player.Character)
end
if script.Parent.className ~= "HopperBin" then
        if Player == nil then print("Error: Player not found!") return end
        local Tool = Instance.new("HopperBin")
        Tool.Name = Name
        Tool.Parent = Player.Backpack
        script.Name = "Main"
        script.Parent = Tool
elseif script.Parent.className == "HopperBin" then
        while script.Parent.Parent.className ~= "Backpack" do
                wait()
        end
        Player = script.Parent.Parent.Parent
        makeParts("holster")
        script.Parent.Selected:connect(onSelected)
        script.Parent.Deselected:connect(onDeselected)
end
end}
module[2] = {"Blue Blade",function()
plr = game.Players.LocalPlayer
char = plr.Character
mouse = plr:GetMouse()
torso = char.Torso
head = char.Head
ra = char["Right Arm"]
la = char["Left Arm"]
rs = char.Torso["Right Shoulder"]
ls = char.Torso["Left Shoulder"]
humanoid = char:findFirstChild("Humanoid")
local damage = math.random(16, 22)
local debounce = false
local attack = false
local healing = false
local touched = false
Run = game:service'RunService'

hndl = Instance.new("Part", char)
hndl.FormFactor = "Custom"
hndl.Size = Vector3.new(0.51, 5, 0.21)
hndl.BottomSurface = "SmoothNoOutlines"
hndl.FrontSurface = "SmoothNoOutlines"
hndl.RightSurface = "SmoothNoOutlines"
hndl.LeftSurface = "SmoothNoOutlines"
hndl.TopSurface = "SmoothNoOutlines"
hndl.BackSurface = "SmoothNoOutlines"
hndl.Locked = true
hndl.CanCollide = false
hndl.Reflectance = 0.5
hndl:BreakJoints()
w = Instance.new("Weld", char)
w.C0 = CFrame.new(0, 0, -0.6) * CFrame.Angles(0, 0, math.pi/4)
w.Part0 = hndl
w.Part1 = torso
hndl2 = Instance.new("Part", char)
hndl2.FormFactor = "Custom"
hndl2.Size = Vector3.new(0.53, 1.5, 0.23)
hndl2.BrickColor = BrickColor.Blue()
hndl2.BottomSurface = "SmoothNoOutlines"
hndl2.FrontSurface = "SmoothNoOutlines"
hndl2.RightSurface = "SmoothNoOutlines"
hndl2.LeftSurface = "SmoothNoOutlines"
hndl2.TopSurface = "SmoothNoOutlines"
hndl2.BackSurface = "SmoothNoOutlines"
hndl2.CanCollide = false
hndl2.Locked = true
hndl2:BreakJoints()
w2 = Instance.new("Weld", char)
w2.C0 = CFrame.new(0, -1.8, 0) * CFrame.Angles(0, 0, 0)
w2.Part0 = hndl2
w2.Part1 = hndl
hndl3 = Instance.new("Part", char)
hndl3.FormFactor = "Custom"
hndl3.Size = Vector3.new(0.73, 0.4, 0.23)
hndl3.BrickColor = BrickColor.Blue()
hndl3.BottomSurface = "SmoothNoOutlines"
hndl3.FrontSurface = "SmoothNoOutlines"
hndl3.RightSurface = "SmoothNoOutlines"
hndl3.LeftSurface = "SmoothNoOutlines"
hndl3.TopSurface = "SmoothNoOutlines"
hndl3.BackSurface = "SmoothNoOutlines"
hndl3.CanCollide = false
hndl3.Locked = true
hndl3:BreakJoints()
w3 = Instance.new("Weld", char)
w3.C0 = CFrame.new(0, -1.2, 0) * CFrame.Angles(0, 0, 0)
w3.Part0 = hndl3
w3.Part1 = hndl
hndl4 = Instance.new("Part", char)
hndl4.FormFactor = "Custom"
hndl4.Size = Vector3.new(0.36, 0.36, 0.21)
hndl4.BottomSurface = "SmoothNoOutlines"
hndl4.FrontSurface = "SmoothNoOutlines"
hndl4.RightSurface = "SmoothNoOutlines"
hndl4.LeftSurface = "SmoothNoOutlines"
hndl4.TopSurface = "SmoothNoOutlines"
hndl4.BackSurface = "SmoothNoOutlines"
hndl4.CanCollide = false
hndl4.Reflectance = 0.5
hndl4.Locked = true
hndl4:BreakJoints()
w4 = Instance.new("Weld", char)
w4.C0 = CFrame.new(-1.77, 1.77, 0) * CFrame.Angles(0, 0, math.pi/4)
w4.Part0 = hndl4
w4.Part1 = hndl

sound = Instance.new("Sound", head)
sound.SoundId = "http://roblox.com/asset/?id=10209850"
sound.Volume = 1

tool = Instance.new("HopperBin", plr.Backpack)
tool.Name = "Sword"

tool.Selected:connect(function(mouse)
rs.Part0 = nil
rs.Part1 = nil
ls.Part0 = nil
ls.Part1 = nil


ar = Instance.new("Part", char)
ar.FormFactor = "Custom"
ar.Size = Vector3.new(1, 1, 1)
ar.Transparency = 1
ar.Locked = true
ar.CanCollide = false
ar:BreakJoints()

fake = Instance.new("Weld", char)
fake.Part0 = char.Torso
fake.C0 = CFrame.new(1.48,0.45,0)
fake.Part1 = ar

ws = Instance.new("Weld", char)
ws.C0 = CFrame.new(0, 0.45, 0)
ws.Part0 = ra
ws.C1 = CFrame.new()
ws.Part1 = ar


ar2 = Instance.new("Part", char)
ar2.FormFactor = "Custom"
ar2.Size = Vector3.new(1, 1, 1)
ar2.Transparency = 1
ar2.Locked = true
ar2.CanCollide = false
ar2:BreakJoints()

fake2 = Instance.new("Weld", char)
fake2.Part0 = char.Torso
fake2.C0 = CFrame.new(-1.48,0.45,0)
fake2.Part1 = ar2

ws2 = Instance.new("Weld", char)
ws2.C0 = CFrame.new(0, 0.45, 0)
ws2.Part0 = la
ws2.C1 = CFrame.new()
ws2.Part1 = ar2

for i = 0, 160, 12 do
fake.C0 = CFrame.new(1.48, 0.45, 0) * CFrame.Angles(math.rad(i), 0, 0)
wait()
end
w.C0 = CFrame.new(-0.6, 2, -0.8) * CFrame.Angles(-math.pi/2, 0, math.pi/4)
w.Part0 = hndl
w.Part1 = ra
coroutine.wrap(function()
for i = 160, 70, -10 do
fake.C0 = CFrame.new(1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, -math.rad(i/1.8))
wait()
end
end)()
for i = 0, 70, 10 do
fake2.C0 = CFrame.new(-1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, math.rad(i/1.8))
wait()
end
mouse.Button1Down:connect(function(mouse)
if attack then return end
if debounce then return end
if healing then return end
attack = true
for i = 70, 120, 10 do
fake2.C0 = CFrame.new(-1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, math.rad(50/1.8))
fake.C0 = CFrame.new(1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, -math.rad(90/1.8))
wait()
end
sound:play()
for i = 125, 30, -15 do
fake2.C0 = CFrame.new(-1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, math.rad(50/1.8))
fake.C0 = CFrame.new(1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, -math.rad(90/1.8))
wait()
end
for i = 30, 70, 10 do
fake2.C0 = CFrame.new(-1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, math.rad(70/1.8))
fake.C0 = CFrame.new(1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, -math.rad(70/1.8))
wait()
end
attack = false

end)
mouse.KeyDown:connect(function(key)
if key == "e" then
if attack then return end
if debounce then return end
if healing then return end
debounce = true
super1()
end
if key == "q" then
if attack then return end
if debounce then return end
healing = true
coroutine.wrap(function()
while healing do
coroutine.wrap(function()
if char:findFirstChild("Humanoid") then
char.Humanoid.Health = char.Humanoid.Health + 10
end
local pow = Instance.new("Part", char)
pow.BrickColor = BrickColor.Blue()
pow.FormFactor = "Custom"
pow.CanCollide = false
pow.Size = Vector3.new(0.2, 0.6, 0.2)
pow.Anchored = true
pow.TopSurface = 0
pow.BottomSurface = 0
pow.BottomSurface = "SmoothNoOutlines"
pow.FrontSurface = "SmoothNoOutlines"
pow.RightSurface = "SmoothNoOutlines"
pow.LeftSurface = "SmoothNoOutlines"
pow.TopSurface = "SmoothNoOutlines"
pow.BackSurface = "SmoothNoOutlines"
pow.CFrame = torso.CFrame * CFrame.new(math.random(-4, 4), -4, math.random(-4, 4))
Instance.new("PointLight", pow).Color = Color3.new(0, 0, 1)
coroutine.wrap(function()
while pow ~= nil do
pow.CFrame = pow.CFrame * CFrame.new(0, 0.5, 0)
Run.Stepped:wait()
end
end)()
wait(0.5)
for transpar = 0, 1, 0.1 do
pow.Transparency = transpar
wait()
end
pow:Destroy()


end)()
Run.Stepped:wait(0.2)
end
end)()
end
if key == "r" then
if debounce then return end
if healing then return end
if attack then return end
debounce = true
super2()
end
end)

mouse.KeyUp:connect(function(key)
if key == "q" then
healing = false
end
end)

end)

tool.Deselected:connect(function()
fake2.C0 = CFrame.new(-1.2, 0.45, -0.4)
fake.C0 = CFrame.new(1.2, 0.45, -0.4)
w.C0 = CFrame.new(0, 0, -0.6) * CFrame.Angles(0, 0, math.pi/4)
w.Part0 = hndl
w.Part1 = torso
ws:Destroy()
ws2:Destroy()
fake:Destroy()
fake2:Destroy()
ar2:Destroy()
ar:Destroy()
rs.Part0 = torso
rs.Part1 = ra
ls.Part0 = torso
ls.Part1 = la
end)


function super1()
for i = 70, 150, 10 do
fake2.C0 = CFrame.new(-1.2, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, -math.rad(i/1.8))
wait()
end



for i = 0, 60 do
coroutine.wrap(function()
local charge = Instance.new("Part", char)
charge.FormFactor = "Custom"
charge.TopSurface = 0
charge.BottomSurface = 0
charge.Transparency = 0.4
charge.BrickColor = BrickColor.White()
charge.Anchored = true
charge.CanCollide = false
charge.Size = Vector3.new(2, 2, 2)
charge.BottomSurface = "SmoothNoOutlines"
charge.FrontSurface = "SmoothNoOutlines"
charge.RightSurface = "SmoothNoOutlines"
charge.LeftSurface = "SmoothNoOutlines"
charge.TopSurface = "SmoothNoOutlines"
charge.BackSurface = "SmoothNoOutlines"
charge.CFrame = la.CFrame * CFrame.new(0, -0.8, 0) * CFrame.Angles(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2))
wait()
for tra = 0.4, 1, 0.1 do
charge.Transparency = tra
wait()
end
charge:Destroy()
end)()
wait(0.06)
end
for i = 150, 70, -10 do
fake2.C0 = CFrame.new(-1.2, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, -math.rad(i/1.8))
wait()
end
fake2.C0 = CFrame.new(-1.2, 0.45, -0.4) * CFrame.Angles(math.rad(70), 0, math.rad(70/1.8))
local powa = Instance.new("Part", char)
powa.FormFactor = "Custom"
powa.BrickColor = BrickColor.White()
powa.Size = Vector3.new(4, 200, 4)
powa.Transparency = 0.6
powa.CanCollide = false
powa.Locked = true
powa.Anchored = true
powa.CFrame = torso.CFrame * CFrame.new(0, 0, 0)
Instance.new("CylinderMesh", powa)
coroutine.wrap(function()
powa.Touched:connect(function(hit)
if hit.Parent ~= nil and hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= plr.Name then
hit.Parent:BreakJoints()
end
end)
end)()
coroutine.wrap(function()
for size = 4, 70, 2 do
powa.Size = Vector3.new(size, 200, size)
powa.CFrame = torso.CFrame * CFrame.new(0, 0, 0)
wait()
end
end)()
wait(0.4)
for trans = 0.6, 1, 0.02 do
powa.Transparency = trans
wait()
end
powa:Destroy()


debounce = false
end

function super2()
for i = 70, 0, -10 do
fake2.C0 = CFrame.new(-1.2, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, math.rad(i/1.8))
wait()
end

bodyG = Instance.new("BodyGyro", torso)
bodyG.maxTorque = Vector3.new(0, math.huge, 0)
bodyG.P = 9999999
bodyG.cframe = torso.CFrame
neck = torso.Neck
neck.C0 = neck.C0 * CFrame.Angles(0, math.rad(0), math.rad(90))
coroutine.wrap(function()
game:service'RunService'.Stepped:connect(function()
bodyG.cframe = CFrame.new(torso.Position,Vector3.new(mouse.Hit.p.x,torso.Position.y,mouse.Hit.p.z)) * CFrame.Angles(0, math.rad(-90), 0)
end)
end)()
for i = 0, 90, 10 do
fake2.C0 = CFrame.new(-1.45, 0.45, -0) * CFrame.Angles(0, 0, -math.rad(i))
wait()
end
for i = 0, 20 do
coroutine.wrap(function()
local charge = Instance.new("Part", char)
charge.FormFactor = "Custom"
charge.TopSurface = 0
charge.BottomSurface = 0
charge.Transparency = 0.4
charge.BrickColor = BrickColor.White()
charge.Anchored = true
charge.CanCollide = false
charge.Size = Vector3.new(2, 2, 2)
charge.BottomSurface = "SmoothNoOutlines"
charge.FrontSurface = "SmoothNoOutlines"
charge.RightSurface = "SmoothNoOutlines"
charge.LeftSurface = "SmoothNoOutlines"
charge.TopSurface = "SmoothNoOutlines"
charge.BackSurface = "SmoothNoOutlines"

charge.CFrame = la.CFrame * CFrame.new(0, -0.8, 0) * CFrame.Angles(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2))
wait()
for tra = 0.4, 1, 0.1 do
charge.Transparency = tra
wait()
end
charge:Destroy()
end)()
wait(0.06)
end
local ball = Instance.new("Part", char)
ball.FormFactor = "Custom"
ball.Size = Vector3.new(4, 4, 4)
ball.Shape = "Ball"
ball.Transparency = 0.4
ball.BottomSurface = 0
ball.TopSurface = 0
ball.CanCollide = true
ball.Anchored = true
ball:breakJoints()
coroutine.wrap(function()
for i = 0, 100, 2 do
if touched then return end
ball.CFrame = la.CFrame * CFrame.new(0, -7, 0) *CFrame.new(0, -i, 0)
wait()
end
if touched then return end
ball.Size = Vector3.new(5, 5, 5)
wait(0.1)
ball.Transparency = 0.6
ball.Size = Vector3.new(6, 6, 6)
wait(0.1)
ball.Size = Vector3.new(7, 7, 7)
ball.Transparency = 0.8
wait(0.1)
ball.Transparency = 1
ball:Destroy()
end)()
ball.BrickColor = BrickColor.White()

ball.Touched:connect(function(hit)
if touched then return end
if hit.Parent ~= nil then
touched = true
if hit.Parent:findFirstChild("Humanoid") ~= nil then
hit.Parent:BreakJoints()
end
ball.Transparency = 0.6
ball.Size = Vector3.new(6, 6, 6)
wait(0.1)
ball.Size = Vector3.new(7, 7, 7)
ball.Transparency = 0.8
wait(0.1)
ball.Transparency = 1
ball:Destroy()
wait(1)
touched = false
end
end)

wait(2)	
bodyG:Destroy()
neck.C0 = neck.C0 * CFrame.Angles(0, math.rad(0), math.rad(-90))
for i = 90, 0, -10 do
fake2.C0 = CFrame.new(-1.2, 0.45, -0.4) * CFrame.Angles(0, 0, -math.rad(i))
wait()
end
for i = 0, 70, 10 do
fake2.C0 = CFrame.new(-1.2, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, math.rad(i/1.8))
wait()
end
debounce = false
end


hndl.Touched:connect(function(hit)
if attack then
if debounce then return end
debounce = true
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(damage)
end
wait(0.1)
debounce = false
end
end)
end}
module[3] = {"Book Of Wisdom",function()
-- Book Of Wisdom --
-- Local Script --

for i, v in pairs(game:service("Players").LocalPlayer.Backpack:children()) do 
 
if v.className == "HopperBin" and v.Name == "Book" then 
 
v:remove() 
 
end 
 
end 
 
for i, v in pairs(game:service("Players").LocalPlayer.Character.Head:children()) do 
 
if v.Name == "PTS" and v.className == "Sound" then 
 
v:remove() 
 
end 
 
end 
 
wait(0.3) 
 
bin = Instance.new("HopperBin") 
 
bin.Name = "Book" 
 
bin.Parent = game.Players.LocalPlayer.Backpack 
 
 
 
 
local player = game:service("Players").LocalPlayer
 
local char = player.Character 
 
local Torsoz = char:findFirstChild("Torso") 
 
local RA = char:findFirstChild("Right Arm") 
 
local LA = char:findFirstChild("Left Arm") 
 
local RL = char:findFirstChild("Right Leg") 
 
local LL = char:findFirstChild("Left Leg") 
 
local H = char:findFirstChild("Head") 
 
local RS = Torsoz:findFirstChild("Right Shoulder") 
 
local LS = Torsoz:findFirstChild("Left Shoulder") 
 
local RH = Torsoz:findFirstChild("Right Hip") 
 
local LH = Torsoz:findFirstChild("Left Hip") 
 
local N = Torsoz:findFirstChild("Neck") 
 
local Main 
 
local Page = 1 
 
local Glows = {} 
 
local RiseEffects = {} 
 
local GroundSymbols = {} 
 
local prevpage = 0 
 
local Joint 
 
local Animating = false 
 
local Casting = false 
 
local PTS = Instance.new("Sound", H) 
 
PTS.Name = "PTS" 
 
PTS.SoundId = "http://www.roblox.com/asset/?id=3931318" 
 
PTS.Pitch = 1.1 
 
PTS.Volume = 0.25 
 
 
 
 
local s = 1 
 
local numofpages = 10 
 
local spellids = {"78036587", "132611096", "12579755","116835157","127817360","112716066","112670381","112671903","112724208"} 
 
 
 
 
local P = Instance.new("Part") 
 
P.Anchored = false 
 
P.CanCollide = false 
 
P.Name = "Part" 
 
P.formFactor = "Custom" 
 
P.BrickColor = BrickColor.new("Brick yellow") 
 
P.Size = Vector3.new(0.5,0.5,0.5) 
 
P.Locked = true 
 
P.TopSurface = 0 
 
P.BottomSurface = 0 
 
 
 
 
function Build() 
 
for i, v in pairs(char:children()) do 
 
if v.className == "Model" and v.Name == "Book" then 
 
v:remove() 
 
end 
 
end 
 
local mdl = Instance.new("Model", char) 
 
mdl.Name = "Book" 
 
 
 
 
local h = P:Clone() 
 
h.Parent = mdl 
 
h.Transparency = 1  
 
local mesh = Instance.new("SpecialMesh", h) 
 
mesh.MeshType = "Brick" 
 
mesh.Scale = Vector3.new(3*s,4*s,1.4*s) 
 
local w = Instance.new("Motor", h) 
 
w.Part0 = Torsoz 
 
w.Part1 = h 
 
w.C0 = CFrame.new(1,-1,0*s) * CFrame.Angles(-3.5,4.5,0.5) 
 
Main = w 
 
 
 
 
---- Book ----------
 
 
 
 
local c = P:Clone() 
 
c.Parent = mdl 
 
c.BrickColor = BrickColor.new("Navy blue") 
 
local mesh = Instance.new("BlockMesh", c) 
 
mesh.Scale = Vector3.new(0.3*s,4*s,1.6*s) 
 
local w = Instance.new("Motor", c) 
 
w.Part0 = h 
 
w.Part1 = c 
 
w.C0 = CFrame.new(-0.75*s,0,0) 
 
local W = P:Clone() 
 
W.Parent = mdl 
 
local mesh = Instance.new("BlockMesh", W) 
 
mesh.Scale = Vector3.new(0.25*s,3.6*s,1.5*s) 
 
local w = Instance.new("Motor", W) 
 
w.Part0 = c 
 
w.Part1 = W 
 
w.C0 = CFrame.new(0.07*s,0,0) 
 
 
 
 
pages = {} 
 
for i = 1, numofpages do 
 
local p = P:Clone() 
 
p.Parent = mdl 
 
p.Name = "Page"..i 
 
local mesh = Instance.new("BlockMesh", p) 
 
mesh.Scale = Vector3.new(2.8*s, 3.6*s, (1.3/numofpages)*s) 
 
local w = Instance.new("Motor", p) 
 
w.Name = "PageW"..i 
 
w.Part0 = c 
 
w.Part1 = p 
 
w.C0 = CFrame.new(0,0,(0.4*s)-(((0.7*s)/numofpages)*i)) * CFrame.Angles(math.pi/2,0,0)
 
w.C1 = CFrame.new(-0.7*s,0,0) * CFrame.Angles(math.pi/2,0,0) 
 
w.MaxVelocity = 0.03 
 
table.insert(pages, w) 
 
local b = P:Clone() 
 
b.Parent = mdl 
 
b.Name = "PageSymbol"..i 
 
b.Transparency = 1 
 
local mesh = Instance.new("SpecialMesh", b) 
 
mesh.MeshType = "Brick" 
 
mesh.Scale = Vector3.new(2.2*s,2.2*s,((1.3/numofpages)+0.05)*s) 
 
local w = Instance.new("Motor", b) 
 
w.Part0 = p 
 
w.Part1 = b 
 
w.C0 = CFrame.new(0.05*s,0,0) 
 
local d = Instance.new("Decal", b) 
 
d.Face = "Front" 
 
if spellids[i] ~= nil then 
 
d.Texture = "http://www.roblox.com/asset/?id="..spellids[i] 
 
end 
 
if i > 1 and spellids[i-1] ~= nil then 
 
local d = Instance.new("Decal", b) 
 
d.Face = "Back" 
 
d.Texture = "http://www.roblox.com/asset/?id="..spellids[i-1] 
 
end 
 
end 
 
 
 
 
local c1 = P:Clone() 
 
c1.Parent = mdl 
 
c1.Name = "Cover" 
 
c1.BrickColor = BrickColor.new("Navy blue") 
 
local mesh = Instance.new("BlockMesh", c1) 
 
mesh.Scale = Vector3.new(3*s, 4*s, 0.24*s) 
 
local w = Instance.new("Motor", c1) 
 
w.Part0 = c 
 
w.Part1 = c1 
 
w.C0 = CFrame.new(0,0,0.4*s) * CFrame.Angles(math.pi/2,0,0) 
 
w.C1 = CFrame.new(-0.75*s,0,0) * CFrame.Angles(math.pi/2,0,0) 
 
w.MaxVelocity = 0.03 
 
Cover1 = w 
 
local c2 = P:Clone() 
 
c2.Parent = mdl 
 
c2.Name = "Cover" 
 
c2.BrickColor = BrickColor.new("Navy blue") 
 
local mesh = Instance.new("BlockMesh", c2) 
 
mesh.Scale = Vector3.new(3*s, 4*s, 0.24*s) 
 
local w = Instance.new("Motor", c2) 
 
w.Part0 = c 
 
w.Part1 = c2 
 
w.C0 = CFrame.new(0,0,-0.4*s) * CFrame.Angles(math.pi/2,0,0) 
 
w.C1 = CFrame.new(-0.75*s,0,0) * CFrame.Angles(math.pi/2,0,0) 
 
w.MaxVelocity = 0.03 
 
Cover2 = w 
 
 
 
 
local e = P:Clone() 
 
e.Parent = mdl 
 
e.BrickColor = BrickColor.new("Black") 
 
local mesh = Instance.new("CylinderMesh", e) 
 
mesh.Scale = Vector3.new(0.3*s,3.98*s,0.3*s) 
 
local e2 = e:Clone() 
 
e2.Parent = mdl 
 
e2.BrickColor = BrickColor.new("Really black") 
 
e2.Reflectance = 0.32 
 
e2.Transparency = 0.22 
 
e2.Mesh.Scale = Vector3.new(0.31*s,2*s,0.31*s) 
 
local w = Instance.new("Motor", e) 
 
w.Part0 = c 
 
w.Part1 = e 
 
w.C0 = CFrame.new(0,0,0.4*s) 
 
local w = Instance.new("Motor", e) 
 
w.Part0 = c 
 
w.Part1 = e2 
 
w.C0 = CFrame.new(0,0,0.4*s) 
 
local e = P:Clone() 
 
e.Parent = mdl 
 
e.BrickColor = BrickColor.new("Black") 
 
local mesh = Instance.new("CylinderMesh", e) 
 
mesh.Scale = Vector3.new(0.3*s,3.98*s,0.3*s) 
 
local e2 = e:Clone() 
 
e2.Parent = mdl 
 
e2.BrickColor = BrickColor.new("Really black") 
 
e2.Reflectance = 0.32 
 
e2.Transparency = 0.22 
 
e2.Mesh.Scale = Vector3.new(0.31*s,2*s,0.31*s) 
 
local w = Instance.new("Motor", e) 
 
w.Part0 = c 
 
w.Part1 = e 
 
w.C0 = CFrame.new(0,0,-0.4*s) 
 
local w = Instance.new("Motor", e2) 
 
w.Part0 = c 
 
w.Part1 = e2 
 
w.C0 = CFrame.new(0,0,-0.4*s) 
 
 
 
 
Glows = {} 
 
for i = 1, 9 do 
 
local p = P:Clone() 
 
p.Parent = mdl 
 
p.Name = "DesignPart" 
 
p.BrickColor = BrickColor.new("Black") 
 
local w = Instance.new("Motor", p) 
 
w.Part0 = c1 
 
w.Part1 = p 
 
w.C0 = CFrame.new(0,0,0.06*s) 
 
local p2 = P:Clone() 
 
p2.Parent = mdl 
 
p2.Name = "DesignPart2" 
 
p2.BrickColor = BrickColor.new("White") 
 
local w2 = Instance.new("Motor", p2) 
 
w2.Part0 = c1 
 
w2.Part1 = p2 
 
w2.C0 = CFrame.new(0,0,0.06*s) 
 
table.insert(Glows, p2) 
 
if i == 1 then 
 
local mesh = Instance.new("CylinderMesh",p) 
 
mesh.Scale = Vector3.new(0.6*s,0.1*s,0.6*s) 
 
w.C0 = w.C0 * CFrame.Angles(math.pi/2,0,0) 
 
local mesh = Instance.new("CylinderMesh",p2) 
 
mesh.Scale = Vector3.new(0.2*s,0.11*s,0.2*s) 
 
w2.C0 = w2.C0 * CFrame.Angles(math.pi/2,0,0) 
 
else 
 
local mesh = Instance.new("BlockMesh", p) 
 
mesh.Scale = Vector3.new(0.3*s,1.2*s,0.1*s) 
 
w.C1 = CFrame.new(0.4*s,0,0) * CFrame.Angles(0,0,(math.pi*2/8)*i)
 
local mesh = Instance.new("BlockMesh", p2) 
 
mesh.Scale = Vector3.new(0.09*s,0.7*s,0.11*s) 
 
w2.C1 = CFrame.new(0.4*s,0,0) * CFrame.Angles(0,0,(math.pi*2/8)*i)
 
end 
 
end 
 
 
 
 
end 
 
Build() 
 
 
 
 
function TurnToPage(page) 
 
if Casting == false and Animating == false then 
 
if (page == 1 and prevpage == 2) or (page == numofpages-2 and prevpage == numofpages-1) or (page ~= 0 and page ~= 1 and prevpage ~= numofpages-1) then 
 
PTS:Play() 
 
end 
 
for i, v in pairs(pages) do 
 
if page == 0 then 
 
v.MaxVelocity = 0.08 
 
v.DesiredAngle = 0 
 
else 
 
if i > page then 
 
v.MaxVelocity = 0.1 
 
v.DesiredAngle = -math.pi/4.6 
 
else 
 
v.MaxVelocity = 0.1 
 
v.DesiredAngle = math.pi/4.6 
 
end 
 
end 
 
end 
 
if page == 0 then 
 
Cover1.MaxVelocity = 0.08 
 
Cover1.DesiredAngle = 0 
 
Cover2.MaxVelocity = 0.08 
 
Cover2.DesiredAngle = 0 
 
if prevpage == 1 then 
 
Unequip(true) 
 
end 
 
else 
 
Cover1.MaxVelocity = 0.1 
 
Cover1.DesiredAngle = math.pi/4.6 
 
Cover2.MaxVelocity = 0.1 
 
Cover2.DesiredAngle = -math.pi/4.6 
 
if prevpage == 0 then 
 
Equip(true) 
 
end 
 
end 
 
prevpage = page 
 
end 
 
end 
 
 
 
 
function CastHeal() 
 
Casting = true 
 
local nmdl = Instance.new("Model", char) 
 
nmdl.Name = "HeallSpellEffects" 
 
local p = P:Clone() 
 
p.Parent = nmdl 
 
p.Anchored = true 
 
p.Transparency = 1 
 
p.CFrame = CFrame.new(Torsoz.Position+Vector3.new(0,-3,0)) 
 
local mesh = Instance.new("SpecialMesh", p) 
 
mesh.MeshType = "Brick" 
 
mesh.Scale = Vector3.new(28,0.6,28) 
 
local de = Instance.new("Decal", p) 
 
de.Name = "Symbol" 
 
de.Face = "Top" 
 
de.Transparency = 1 
 
de.Texture = "http://www.roblox.com/asset/?id="..spellids[Page] 
 
table.insert(GroundSymbols, p) 
 
wait(0.2) 
 
local loopnum = 0 
 
local makeeffect = true 
 
local Cont = true 
 
 
 
 
while Cont == true do 
 
loopnum = loopnum + 1 
 
if makeeffect == true and loopnum%3 == 0 then 
 
local g = P:Clone() 
 
g.Parent = nmdl 
 
g.Name = "RiseEffect" 
 
g.BrickColor = BrickColor.new("White") 
 
local W = Instance.new("Motor", g) 
 
W.Part0 = Torsoz 
 
W.Part1 = g 
 
W.C1 = CFrame.new(0,0,math.random(20, 80)/10) 
 
W.C0 = CFrame.new(0,-4,0) * CFrame.Angles(0,(math.pi*2/100)*math.random(0, 100),0) 
 
local meshz = Instance.new("SpecialMesh", g) 
 
local ran = math.random(1, 3) 
 
meshz.Scale = Vector3.new(math.random(15, 34)/10,math.random(15, 34)/10,math.random(15, 34)/10) 
 
if ran == 1 then 
 
meshz.MeshType = "Sphere" 
 
elseif ran == 2 then 
 
meshz.MeshId = "http://www.roblox.com/asset/?id=9756362" 
 
meshz.Scale = Vector3.new(math.random(12, 30)/15,math.random(12, 30)/15,math.random(12, 30)/15) 
 
elseif ran == 3 then 
 
meshz.MeshType = "Head" 
 
end 
 
table.insert(RiseEffects, {W, math.random(10,130)/1000}) 
 
if #RiseEffects > 15 then 
 
print("Stopped making effects") 
 
makeeffect = false 
 
end 
 
end 
 
 
 
 
for i, v in pairs(RiseEffects) do 
 
v[1].Parent.Transparency = v[1].Parent.Transparency + 0.016 
 
v[1].C0 = v[1].C0 * CFrame.new(0,0.12,0) * CFrame.Angles(0,v[2],0) 
 
v[1].C1 = v[1].C1 * CFrame.new(0,0,v[2]/3) 
 
if v[1].Parent.Transparency > 0.9 then 
 
v[1].Parent:remove() 
 
table.remove(RiseEffects,i) 
 
end 
 
end 
 
 
 
 
if loopnum > 4 then 
 
if #RiseEffects == 0 then 
 
print("Stopped loop") 
 
Cont = false 
 
end 
 
end 
 
 
 
 
wait(0.03) 
 
end 
 
nmdl:remove() 
 
Casting = false 
 
end 
 
function CastAttack() 
 
Casting2 = true 
 
local mndl = Instance.new("Model", char) 
 
mndl.Name = "AttackSpellEffects" 
 
local d = P:Clone() 
 
d.Parent = mndl 
 
d.Anchored = true 
 
d.Transparency = 1 
 
d.CFrame = CFrame.new(Torsoz.Position+Vector3.new(0,-3,0)) 
 
local mesh2 = Instance.new("SpecialMesh", d) 
 
mesh2.MeshType = "Brick" 
 
mesh2.Scale = Vector3.new(28,0.6,28) 
 
local df = Instance.new("Decal", d) 
 
df.Name = "Symbol2" 
 
df.Face = "Top" 
 
df.Transparency = 1 
 
df.Texture = "http://www.roblox.com/asset/?id="..spellids[Page] 
 
table.insert(GroundSymbols, d) 
 
wait(0.2) 
 
local loopnum2 = 0 
 
local makeeffect2 = true 
 
local Cont2 = true 
 
 
 
 
while Cont2 == true do 
 
loopnum2 = loopnum2 + 1 
 
if makeeffect2 == true and loopnum2%3 == 0 then 
 
local g = P:Clone() 
 
k.Parent = mndl 
 
k.Name = "RiseEffect2" 
 
k.BrickColor = BrickColor.new("White") 
 
local L = Instance.new("Motor", k) 
 
L.Part0 = Torsoz 
 
L.Part1 = k 
 
L.C1 = CFrame.new(0,0,math.random(20, 80)/10) 
 
L.C0 = CFrame.new(0,-4,0) * CFrame.Angles(0,(math.pi*2/100)*math.random(0, 100),0) 
 
local meshx = Instance.new("SpecialMesh", k) 
 
local ran2 = math.random(4, 6) 
 
meshx.Scale = Vector3.new(math.random(15, 34)/10,math.random(15, 34)/10,math.random(15, 34)/10) 
 
if ran2 == 4 then 
 
meshx.MeshType = "Sphere" 
 
elseif ran2 == 5 then 
 
meshx.MeshId = "http://www.roblox.com/asset/?id=9756362" 
 
meshx.Scale = Vector3.new(math.random(12, 30)/15,math.random(12, 30)/15,math.random(12, 30)/15) 
 
elseif ran2 == 6 then 
 
meshx.MeshType = "Cylinder" 
 
end 
 
table.insert(RiseEffects2, {L, math.random(10,130)/1000}) 
 
if #RiseEffects2 > 15 then 
 
print("Stopped making effects") 
 
makeeffect2 = false 
 
end 
 
end 
 
 
 
 
for i, v in pairs(RiseEffects2) do 
 
v[1].Parent.Transparency = v[1].Parent.Transparency + 0.016 
 
v[1].C0 = v[1].C0 * CFrame.new(0,0.12,0) * CFrame.Angles(0,v[2],0) 
 
v[1].C1 = v[1].C1 * CFrame.new(0,0,v[2]/3) 
 
if v[1].Parent.Transparency > 0.9 then 
 
v[1].Parent:remove() 
 
table.remove(RiseEffects2,i) 
 
end 
 
end 
 
 
 
 
if loopnum2 > 4 then 
 
if #RiseEffects2 == 0 then 
 
print("Stopped loop") 
 
Cont2 = false 
 
end 
 
end 
 
 
 
 
wait(0.03) 
 
end 
 
mndl:remove() 
 
Casting2 = false 
 
end 
 
 
function onButton1Down(mouse) 
 
print("Trying to cast page: "..Page)--IT WORKED :D
if Casting == false then 
 
if Page == 1 then 
 
CastHeal() 
 
end
 
if Casting == false then
 
if Page == 3 then  
print("Casting:"..Page)
CastAttack() 
 
end 
 
end 
 
end 
 
end
 
 
 
 
function onKeyDown(key, mouse) 
 
if key ~= nil then 
 
key:lower() 
 
if Casting == false and Animating == false then 
 
if key == "e" then 
 
if Page ~= numofpages-1 then 
 
Page = Page + 1 
 
end 
 
TurnToPage(Page) 
 
elseif key == "q" then 
 
if Page ~= 0 then 
 
Page = Page - 1 
 
end 
 
TurnToPage(Page) 
 
end 
 
end --- animating = false end
 
end 
 
end 
 
 
 
 
function Equip(anim) 
 
if anim == true then 
 
Animating = true 
 
local joint = Instance.new("Motor", Torsoz) 
 
joint.Part0 = Torsoz 
 
joint.Part1 = RA 
 
joint.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(0,math.pi/2,0) 
 
joint.C1 = CFrame.new(0,0.5,0) * CFrame.Angles(0,math.pi/2,-1) 
 
joint.MaxVelocity = 0.06 
 
joint.DesiredAngle = math.pi/3 
 
Joint = joint 
 
Main.Part0 = RA 
 
Main.C0 = CFrame.new(0,-1.5*s,0) * CFrame.Angles(0,math.pi/2,-math.pi/2) 
 
for i = 1, 16 do 
 
Main.C0 = CFrame.new((-1*s/16)*i,(-1.5*s)+((0.25*s/16)*i),(-0.65*s/16)*i) * CFrame.Angles((math.pi/16)*i,(math.pi/2)-((math.pi/16)*i),-math.pi/2) 
 
wait(0.02) 
 
end 
 
Animating = false 
 
else 
 
Main.Part0 = RA 
 
Main.C0 = CFrame.new(0,-1.5*s,0) * CFrame.Angles(0,math.pi/2,-math.pi/2) 
 
end 
 
end 
 
 
 
 
function Unequip(anim) 
 
if anim == true then 
 
Animating = true 
 
local joint = Joint 
 
joint.MaxVelocity = 0.06 
 
joint.DesiredAngle = 0 
 
for i = 1, 16 do 
 
Main.C0 = CFrame.new((-1*s)+((1*s/16)*i),(-1.25*s)-((0.25*s/16)*i),(-0.65*s)+((0.65*s/16)*i)) * CFrame.Angles(math.pi-((math.pi/16)*i),(-math.pi/2)+((math.pi/16)*i),-math.pi/2) 
 
wait(0.02) 
 
end 
 
Animating = false 
 
end 
 
for i, v in pairs(Torsoz:children()) do 
 
if v.className == "Motor" then 
 
v:remove() 
 
end 
 
end 
 
RS.Parent = Torsoz 
 
RS.Part0 = Torsoz 
 
RS.Part1 = RA 
 
end 
 
 
 
 
bin.Selected:connect(function(mouse) 
 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
 
Page = 0 
 
prevpage = 0 
 
Equip(false) 
 
end) 
 
 
 
 
bin.Deselected:connect(function() 
 
Unequip(false) 
 
Build() 
 
end) 
 
 
 
 
local num = 0 
 
local plus = true 
 
local trans = 0 
 
while bin.Parent == player.Backpack do 
 
num = num + 1 
 
 
 
 
if #Glows == 0 then 
 
trans = 0 
 
else 
 
for i, v in pairs(Glows) do 
 
v.Transparency = trans 
 
end 
 
if plus == true then 
 
trans = trans + 0.032 
 
elseif plus == false then 
 
trans = trans - 0.032 
 
end 
 
if trans > 0.65 then 
 
plus = false 
 
elseif trans < 0.06 then 
 
plus = true 
 
end 
 
end 
 
 
 
 
for i, v in pairs(GroundSymbols) do 
 
if v.Parent == nil then 
 
table.remove(GroundSymbols, i) 
 
break 
 
else 
 
v.CFrame = v.CFrame * CFrame.Angles(0,0.02,0) 
 
v.CFrame = v.CFrame - v.Position + (Torsoz.Position-Vector3.new(0,3,0))
 
if plus == true then 
 
v.Mesh.Scale = v.Mesh.Scale + Vector3.new(0.2,0,0.2) 
 
else 
 
v.Mesh.Scale = v.Mesh.Scale - Vector3.new(0.2,0,0.2) 
 
end 
 
if v.Symbol.Transparency > 0.1 then 
 
v.Symbol.Transparency = v.Symbol.Transparency - 0.008 
 
end 
 
end 
 
end 
 
 
 
 
wait(0.03) 
 
end 
 
 
 
 
--mediafire gtfo password[

end}
module[4] = {"Bridge Tool",function()

me = game.Players.LocalPlayer
h = Instance.new("HopperBin")
h.Parent = me.Backpack
h.Name = "Bridge Tool"
bridges = {}
hold = false
using = false
holdkey = false
polesize = 5
function selected(mouse, key)
	mouse.Button1Down:connect(function()
		if mouse.Target == nil then return end
		if using == true then return end
		using = true
		hold = true
		pos = mouse.Hit.p
		p = Instance.new("Part")
		p.Parent = workspace
		p.formFactor = 0
		p.Size = Vector3.new(5,1,1)
		p.Anchored = true
		p.Transparency = 0.6
		p.TopSurface = 0
		p.BrickColor = BrickColor.new("Brown")
		p.BottomSurface = 0
		p.CFrame = CFrame.new(pos)
		mes = Instance.new("SpecialMesh")
		mes.Parent = p
		mes.MeshType = "Brick"
		mes.Scale = Vector3.new(1,1,1)
		table.insert(bridges, p)
		mouse.Move:connect(function()
			if mouse.Target == nil then return end
			if hold == true then
				local dist = (p.Position - mouse.Hit.p).magnitude
				p.CFrame = CFrame.new((mouse.Hit.p + pos)/2, pos)
				mes.Scale = Vector3.new(1,1,dist*2)
			end
		end)
	end)
	mouse.Button1Up:connect(function()
		hold = false
		local duh = p.CFrame
		p.Size = Vector3.new(5,1,mes.Scale.Z)
		p.CFrame = duh
		mes:remove()
		for i=1, 5 do
			wait()
			p.Transparency = p.Transparency - 0.12
		end
		p.Material = "Wood"
		using = false
	end)
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if (key == "r") then
			for i=1, #bridges do
				bridges[i]:remove()
			end
		elseif (key == "q") then
			polesize = polesize - 1
			local ms = Instance.new("Message")
			ms.Parent = me
			ms.Text = "Pole size decreased to "..polesize
			wait(0.4)
			ms:remove()
		elseif (key == "e") then
			polesize = polesize + 1
			local ms = Instance.new("Message")
			ms.Parent = me
			ms.Text = "Pole size increased to "..polesize
			wait(0.4)
			ms:remove()
		elseif (key == "f") then
			if mouse.Target == nil then return end
			if using == true then return end
			using = true
			holdkey = true
			po = Instance.new("Part")
			po.Parent = workspace
			po.formFactor = 0
			po.Size = Vector3.new(1,1,1)
			po.Anchored = true
			po.Transparency = 0.5
			po.TopSurface = 0
			po.BrickColor = BrickColor.new("Brown")
			po.BottomSurface = 0
			mesh = Instance.new("SpecialMesh")
			mesh.Parent = po
			mesh.Scale = Vector3.new(1,polesize,1)
			po.CFrame = CFrame.new(mouse.Hit.p.X, mouse.Hit.p.Y + mesh.Scale.Y/2, mouse.Hit.p.Z)
			table.insert(bridges,po)
		end
	end)
	mouse.KeyUp:connect(function(key)
		key = key:lower()
		if (key == "f") then
			holdkey = false
			for i=1, 5 do
				wait()
				po.Transparency = po.Transparency - 0.1
			end
			local posi = po.CFrame
			po.Material = "Wood"
			po.Size = mesh.Scale
			mesh:remove()
			po.CFrame = posi
			using = false
		end
	end)
end
function deselected()
end
h.Selected:connect(selected)
h.Deselected:connect(deselected)

end}

 
 

module[1] = {"Brock",function()

v3 = Vector3.new
cn = CFrame.new
ca2 = CFrame.Angles
mf = math.floor
mran = math.random
mrad = math.rad
mdeg = math.deg
ca = function(x,y,z) return ca2(mrad(x),mrad(y),mrad(z)) end 
mran2 = function(a,b) return mran(a*1000,b*1000)/1000 end 
ud=UDim2.new
bn = BrickColor.new
c3 = Color3.new
-----
--Player='PerfectTrollz'
Players=game:service'Players'
Player=Players.LocalPlayer --[Player] 
PChar=Player.Character

as,so={},{'metal','Block','Slash','Slash2','Hit','Kick'}
as.corner='11294911'
as.cone='1033714'
as.ring="3270017"
as.Chakram='47260990'
as.ring2='18430887'
as.blast='20329976'
as.missile='10207677'
as.fire='2693346'
as.boom='3264793'
as.slash='10209645'
as.abscond='2767090'
as.firelaser='13775494'
as.diamond='9756362'
as.metal='rbxasset://sounds\\unsheath.wav'
as.Block = 'rbxasset://sounds\\metal.ogg'
as.Slash = '10209645'
as.Slash2 = '46760716'
as.Hit='10209583'
as.Kick='46153268'
as.cast='2101137'
as.rockhead= '21629626'
as.rockheadt='21629620'


for i,v in pairs(as) do 
if type(tonumber(v:sub(1,3)))=="number" then
as[i]="http://www.roblox.com/asset/?id="..v
end
end

LastMade=nil
iNew=function(tab)
local v=Instance.new(tab[1])
for Ind,Val in pairs(tab) do
if Ind~=1 and Ind~=2 then 
v[Ind] = Val
end
end
v.Parent=tab[2]==0 and LastMade or tab[2]
LastMade=v
return v
end
iPart=function(tab)
local v=Instance.new(tab.type or 'Part')
if tab.type~='CornerWedgePart' then v.formFactor='Custom' end
v.TopSurface=0 v.BottomSurface=0
if tab.sc then
v.Size=v3(tab[2]*tab.sc,tab[3]*tab.sc,tab[4]*tab.sc)
else
v.Size=v3(tab[2],tab[3],tab[4])
end
if tab.co then v.BrickColor=bn(tab.co) end
if tab.tr then v.Transparency=tab.tr end
if tab.rf then v.Reflectance=tab.rf end
if tab.can then v.CanCollide=tab.can end
if tab.cf then v.CFrame=tab.cf end
if tab.an then v.Anchored=tab.an end
if tab.na then v.Name=tab.na end
if tab.ma then v.Material=tab.ma end
v.Parent=tab[1]
v:BreakJoints()
LastMade=v
return v
end
function getoutline(x,z,i)
return math.sqrt(x^2+z^2)+(i or 0.05),mdeg(math.atan2(x,z))
end
function v32(cf)
local x,y,z=cf:toEulerAnglesXYZ()
return v3(mdeg(x),mdeg(y),mdeg(z))
end
WeldLib={}
function GetWeld(weld,CO) 
if not WeldLib[weld] then 
local x0,y0,z0=weld.C0:toEulerAnglesXYZ()
local x1,y1,z1=weld.C1:toEulerAnglesXYZ()
WeldLib[weld]={[0]=v3(mdeg(x0),mdeg(y0),mdeg(z0)),[1]=v3(mdeg(x1),mdeg(y1),mdeg(z1))}
end 
return weld['C'..CO].p,WeldLib[weld][CO]
end 
function ClearWeld(weld)
if WeldLib[weld] then WeldLib[weld]=nil end 
end
function TweenNum(i,loops,i1,i2,smooth)
smooth = smooth or 1 
local perc 
if smooth == 1 then perc = math.sin((math.pi/2)/loops*i) else perc = i/loops end 
local ton
if i1 > i2 then 
ton = -math.abs(i1 - i2) *perc 
else 
ton = math.abs(i1 - i2) *perc 
end 
return i1+ton
end
function TweenV3(i,loops,v1,v2,smooth)
smooth = smooth or 1 
local perc 
if smooth == 1 then perc = math.sin((math.pi/2)/loops*i) else perc = i/loops end 
local tox2,toy2,toz2 = 0,0,0 
if v1.x > v2.x then 
tox2 = -math.abs(v1.x - v2.x) *perc 
else 
tox2 = math.abs(v1.x - v2.x) *perc 
end 
if v1.y > v2.y then 
toy2 = -math.abs(v1.y - v2.y) *perc 
else 
toy2 = math.abs(v1.y - v2.y) *perc 
end 
if v1.z > v2.z then 
toz2 = -math.abs(v1.z - v2.z) *perc 
else 
toz2 = math.abs(v1.z - v2.z) *perc 
end
return v3(v1.x + tox2,v1.y + toy2,v1.z + toz2)
end
function TweenCF(i,loops,origpos,origangle,nextpos,nextangle,smooth) 
smooth = smooth or 1 
local perc 
if smooth == 1 then perc = math.sin((math.pi/2)/loops*i) else perc = i/loops end 
local tox,toy,toz = 0,0,0 
if origangle.x > nextangle.x then tox = -math.abs(origangle.x - nextangle.x) *perc 
else tox = math.abs(origangle.x - nextangle.x) *perc end 
if origangle.y > nextangle.y then toy = -math.abs(origangle.y - nextangle.y) *perc 
else toy = math.abs(origangle.y - nextangle.y) *perc end 
if origangle.z > nextangle.z then toz = -math.abs(origangle.z - nextangle.z) *perc 
else toz = math.abs(origangle.z - nextangle.z) *perc end 
local tox2,toy2,toz2 = 0,0,0 
if origpos.x > nextpos.x then 
tox2 = -math.abs(origpos.x - nextpos.x) *perc 
else tox2 = math.abs(origpos.x - nextpos.x) *perc end 
if origpos.y > nextpos.y then 
toy2 = -math.abs(origpos.y - nextpos.y) *perc 
else toy2 = math.abs(origpos.y - nextpos.y) *perc end 
if origpos.z > nextpos.z then 
toz2 = -math.abs(origpos.z - nextpos.z) *perc 
else toz2 = math.abs(origpos.z - nextpos.z) *perc end
return cn(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2)*ca(origangle.x + tox,origangle.y + toy,origangle.z + toz) 
end 
function SetWeld(weld,CO,i, loops, origpos,origangle, nextpos,nextangle,smooth) 
loops=math.floor(loops)
smooth = smooth or 1 
if not WeldLib[weld] then 
local x0,y0,z0=weld.C0:toEulerAnglesXYZ()
local x1,y1,z1=weld.C1:toEulerAnglesXYZ()
WeldLib[weld]={[0]=v3(mdeg(x0),mdeg(y0),mdeg(z0)),[1]=v3(mdeg(x1),mdeg(y1),mdeg(z1))}
end 
local perc =smooth==1 and math.sin((math.pi/2)/loops*i) or i/loops 
--print(weld.Part1)
local tox,toy,toz = 0,0,0 
tox = origangle.x > nextangle.x and -math.abs(origangle.x - nextangle.x) *perc or math.abs(origangle.x - nextangle.x) *perc 
toy = origangle.y > nextangle.y and -math.abs(origangle.y - nextangle.y) *perc or math.abs(origangle.y - nextangle.y) *perc 
toz = origangle.z > nextangle.z and -math.abs(origangle.z - nextangle.z) *perc or math.abs(origangle.z - nextangle.z) *perc 
local tox2,toy2,toz2 = 0,0,0 
tox2= origpos.x > nextpos.x and -math.abs(origpos.x - nextpos.x) *perc or math.abs(origpos.x - nextpos.x) *perc 
toy2= origpos.y > nextpos.y and -math.abs(origpos.y - nextpos.y) *perc or math.abs(origpos.y - nextpos.y) *perc
toz2= origpos.z > nextpos.z and -math.abs(origpos.z - nextpos.z) *perc or math.abs(origpos.z - nextpos.z) *perc 
WeldLib[weld][CO] = v3(origangle.x + tox,origangle.y + toy,origangle.z + toz)
weld['C'..CO] = cn(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2)*ca(origangle.x + tox,origangle.y + toy,origangle.z + toz) 
end 
function se(Key,Text) 
local Values = {} 
for value in (Text..Key):gmatch("(.-)"..Key) do 
table.insert(Values,value)
end 
local Values2={}
for i,v in pairs(Values) do Values2[i]=Values[i]:lower() end
return Values,Values2
end
findplayer=function(nn)
if not nn then return nil end 
local found 
for i,v in pairs(Players:GetPlayers()) do 
if string.find(v.Name:lower(),nn:lower()) and not found then found=v end 
end
return found
end
LoopFunctions={}
iLoopFunctions=-9000
function DoLoop(times,func)
iLoopFunctions=iLoopFunctions+1
LoopFunctions[tonumber(iLoopFunctions)]={times,0,func}
end
function MeshEffect(times,cf1,cf2,scale1,scale2,tr1,tr2,col,type)
local cf2=cf2 or cf1
local v=iPart{Char,0.2,0.2,0.2,co=col,cf=cf1,na='Mesh',an=true,ca=false,tr=tr1} 
local mesh=iNew{'SpecialMesh',v,Scale=scale1}
if type=='Brick' or type=='Sphere' then 
mesh.MeshType=type
else
mesh.MeshId=type
end
local x1,y1,z1 = cf1:toEulerAnglesXYZ()
local x2,y2,z2 = cf2:toEulerAnglesXYZ()
local count=0
DoLoop(times,function(i) count=count+1 
mesh.Scale=TweenV3(count,times,scale1,scale2,1)*((type=='Brick' or type=='Sphere') and 5 or 1)
v.Transparency=TweenNum(count,times,tr1,tr2,1) 
v.CFrame=TweenCF(count,times,cf1.p,v3(mdeg(x1),mdeg(y1),mdeg(z1)),cf2.p,v3(mdeg(x2),mdeg(y2),mdeg(z2)),1) 
if i==1 then v:Remove() end end)
end
Dmgv={8,16}
HitDebounce={}
Damage=function(Hum,Mult,Sound) 
if not Hum or Hum.Parent==Char then return end 
if not Hum.Parent:findFirstChild'Torso' then return end 
local HName=Hum.Parent.Name
if HitDebounce[HName] and HitDebounce[HName]>tick() then return end 
HitDebounce[HName]=tick()+0.2
local Mult=Mult or 1
local Dealt=mran(Dmgv[1],Dmgv[2])*Mult
local col=''
if Hum.Parent:findFirstChild'Block' and Hum.Parent.Block.Value>0 then 
Hum.Parent.Block.Value=Hum.Parent.Block.Value-1
col='Bright blue'
else
Hum.Health=Hum.Health-Dealt
col='Bright red'
end
if Sound then so[col=='Bright blue' and 'Block' or 'Hit']:Play() end
local DoH=iNew{'Model',Char,Name=col=='Bright blue' and 'Block' or Dealt}
iNew{'Humanoid',DoH,MaxHealth=1/0,Health=1/0,Name=''}
local Doh=iPart{DoH,0.6,0.2,0.6,co=col,an=true} Doh.Name='Head' iNew{'CylinderMesh',Doh}
local dofs=Hum.Parent.Torso.CFrame*cn(mran2(-1.5,1.5),2.5,mran2(-1,1)) Doh.CFrame=dofs
DoLoop(40,function(i) Doh.CFrame=dofs*cn(0,i*2,0) Doh.Transparency=i-0.5 if i==1 then DoH:Remove() end end)
end
AOEFind = function(pos,ra,f,f2) -- range get 
local p0,p1=pos-v3(ra/2,ra/2,ra/2),pos+v3(ra/2,ra/2,ra/2)
pcall(function()
for i,v in pairs(workspace:FindPartsInRegion3(Region3.new(p0,p1),nil,100)) do 
local Hum=v.Parent:findFirstChild'Humanoid' 
if v.Name=='Torso' and Hum and Hum.Health>0 and v.Parent~=Char then
pcall(function() f(Hum,v) end) 
elseif f2 and not Hum then 
pcall(function() f2(v) end) 
end 
end
end) 
end 
function FindSurface(part, position) 
local obj = part.CFrame:pointToObjectSpace(position) 
local siz = part.Size/2 
for i,v in pairs(Enum.NormalId:GetEnumItems()) do 
local vec = Vector3.FromNormalId(v) 
local wvec = part.CFrame:vectorToWorldSpace(vec) 
local vz = (obj)/(siz*vec) 
if (math.abs(vz.X-1) < 0.01 or math.abs(vz.Y-1) < 0.01 or math.abs(vz.Z-1) < 0.01) then
return wvec,vec 
end 
end 
if part.className == "WedgePart" then 
return part.CFrame:vectorToWorldSpace(Vector3.new(0,0.707,-0.707)), Vector3.new(0,0.707,-0.707) 
end 
end
function FaceBG(pos)
BG.maxTorque=v3(1,1,1)/0
BG.cframe=cn(Torso.Position,v3(pos.x,Torso.Position.y,pos.z))*cn(0,0,-1)
end
ray = function(Pos, Dir,tab,length) -- ray cast
return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *(length or 999)),tab) 
end 
function Projectile(ofs,speed,part,adj,fhit,fnohit)
part.CFrame=ofs*adj
local stop=false
DoLoop(50,function(x) 
local i=x
if not stop then 
local hit,pos=ray(ofs.p,ofs.p-ofs*cn(0,0,-1).p,Char,speed+1)
if hit then 
--Hit
if fhit then i=1 stop=true
----
local cof=FindSurface(hit,pos)
--iPart{workspace,2,2,0.2,cf=cn(pos,pos+cof),an=true,co='Black'}
----
local x,y,z=ofs:toEulerAnglesXYZ()
ofs=cn(pos)*ca(mdeg(x),mdeg(y),mdeg(z))*cn(0,0,-part.Size.y/2)
part.CFrame=ofs*adj
fhit(hit,pos) end 
else
ofs=ofs*cn(0,0,speed)
part.CFrame=ofs*adj
end
if i==1 then 
if fnohit then fnohit(ofs.p) else part:Remove() end
end 
end
end)
end

CC={'','Bright yellow','Flame reddish orange'}
Scale=5
Mat='Marble'

SpawnPoint=PChar.Torso.CFrame*cn(0,1+Scale*3,-20-Scale*1.5)
name='Brock'
pcall(function() _G.OldMod00:Remove() end)

---------------
UNDYING=function()
pcall(function() fUNDYING:disconnect() end)
pcall(function() local hum=Grabbing.Part1.Parent.Humanoid Grabbing:Remove() Grabbing=nil hum.PlatformStand=false end)
Torso.Anchored=true Torso.Transparency=1 Torso.CanCollide=false
Stand:Remove() Head:Remove()
local RespawnPos=cn(Torso.CFrame.p+v3(0,Scale*5,0))*ca(0,mran(-360,360),0)
wait(4)
Anim='Reviving'
local oldChar=Char
local oldRootLimbs=RootLimbs
for i,v in pairs(oldRootLimbs) do v.Anchored=true end
fMarble(Char,function(v) v.Anchored=true end) 
MakeAI(RespawnPos) Anim='Reviving' 
fMarble(Char,function(v) v.Transparency=1 end) 
for i,v in pairs(RootLimbs) do v.Transparency=1 end 
wait(0.1) Torso.Anchored=true
local Reconstruct={} 
fMarble(oldChar,function(v) 
local x1,y1,z1=v.CFrame:toEulerAnglesXYZ() 
local x2,y2,z2=Char[v.Parent.Name][v.Name].CFrame:toEulerAnglesXYZ()
Reconstruct[#Reconstruct+1]={v,Char[v.Parent.Name][v.Name],v.Position,v3(mdeg(x1),mdeg(y1),mdeg(z1)),v3(mdeg(x2),mdeg(y2),mdeg(z2))} end) 
for i,v in pairs(oldRootLimbs) do 
local x1,y1,z1=v.CFrame:toEulerAnglesXYZ() 
local x2,y2,z2=Char[v.Name].CFrame:toEulerAnglesXYZ()
Reconstruct[#Reconstruct+1]={v,Char[v.Name],v.Position,v3(mdeg(x1),mdeg(y1),mdeg(z1)),v3(mdeg(x2),mdeg(y2),mdeg(z2))} end
local tweens=100
for tween=1,tweens do 
for i,v in pairs(Reconstruct) do v[1].CFrame=TweenCF(tween,tweens,v[3],v[4],v[2].Position,v[5],1)*ca(360*(tween/tweens),720*(tween/tweens),0) end
wait()
end
oldChar:Remove()
fMarble(Char,function(v) v.Transparency=0 end)
for i,v in pairs(RootLimbs) do v.Transparency=0 end
Torso.Anchored=false wait()
BG.maxTorque=v3(1,1,1)/0 BG.cframe=Torso.CFrame
ReturnAnim()
wait(2)
BG.maxTorque=nov3
Anim,ArmAnim,LegAnim='None','None','None'
end
------

function MakeAI(SpawnPoint2)
Char=iNew{'Model',workspace,Name=name,archivable=false} _G.OldMod00=Char
Torso=iPart{Char,2,2,1,sc=Scale,co=CC[1],cf=SpawnPoint2,na='Torso'} 
pTorso=iPart{Char,2,2,1,sc=Scale,co=CC[1],cf=SpawnPoint2,na='pTorso'} 
Head=iPart{Char,1,1,1,sc=Scale,co=CC[1],na='Head'} 
pHead=iPart{Char,1,1,1,sc=Scale,co=CC[1],na='pHead'} iNew{'SpecialMesh',pHead,Scale=v3(1,1,1)*Scale/1.4,VertexColor=v3(1,1,1)/1.65,MeshId=as.rockhead,TextureId=as.rockheadt}
Stand=iPart{Char,1.5,2.9,1.1,sc=Scale,co=CC[1],na='Stand'}

for i,n in pairs(so) do 
local v=iNew{'Sound',Torso,Volume=1,Pitch=1,Looped=false,Name=v,SoundId=as[n]}
so[n]=v
end


LSho=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='LSho'} 
LArm=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='LArm'} 

RSho=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='RSho'} 
RArm=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='RArm'} 

LThi=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='LThi'} 
LLeg=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='LLeg'} 

RThi=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='RThi'} 
RLeg=iPart{Char,1,1.5,1,sc=Scale,co=CC[1],na='RLeg'} 



nov3=v3(0,0,0)
Marble={}
MarbleSpeed=0.2
MarbleMax=12
for i,v in pairs({pTorso,LSho,RSho,LArm,RArm,LThi,RThi,LLeg,RLeg}) do 
v.Material=Mat 
local VS=v.Size
local va=1.2
--v.Size=v.Size/1.5
local vv=v:Clone()
for x=-1,1,2 do 
for y=-1,1,2 do 
for z=-1,1,2 do
local marb=vv:Clone() marb.Size=VS/mran2(1.8,2.2) marb.Parent=v marb.Name=x..y..z
local wmarb=iNew{'Weld',marb,Part0=v,Part1=marb,C0=cn(VS.x/4*x/va,VS.y/4*y,VS.z/4*z/va)*ca(mran(-MarbleMax,MarbleMax),mran(-MarbleMax,MarbleMax),mran(-MarbleMax,MarbleMax))}
Marble[#Marble+1]={wmarb,mran(-1,1),mran(-1,1),mran(-1,1)}
end end end 
iNew{'BlockMesh',v,Scale=v3(1,1,1)/1.5}
v.Transparency=0 --.995
end 

for i,v in pairs(Char:children()) do if v:IsA'BasePart' and v.Name~='Torso' then v.CFrame=Torso.CFrame end end

Head.Transparency=0.99
Head.CanCollide=false
Neck=iNew{'Weld',Torso,Part0=Torso,Part1=Head,C0=cn(0,0,0)}
pNeck=iNew{'Weld',Torso,Part0=pTorso,Part1=pHead,C0=cn(0,1.5*Scale,0)}
Hum=iNew{'Humanoid',Char} 


Torso.Transparency=1
wTorso=iNew{'Weld',Torso,Part0=Torso,Part1=pTorso,C0=cn(0,-2.5*Scale,0)*ca(0,0,0)}
oTorso=cn(0,0,0)

Stand.Transparency=1
wStand=iNew{'Weld',Torso,Part0=Torso,Part1=Stand,C0=cn(0,-2.5*Scale,0)}

wLSho=iNew{'Weld',LSho,Part0=pTorso,Part1=LSho,C0=cn(-1.5*Scale,0.75*Scale,0),C1=cn(0,0.25*Scale,0)}
wLArm=iNew{'Weld',LArm,Part0=LSho,Part1=LArm,C0=cn(0,-0.75*Scale,0),C1=cn(0,0.75*Scale,0)}

wRSho=iNew{'Weld',RSho,Part0=pTorso,Part1=RSho,C0=cn(1.5*Scale,0.75*Scale,0),C1=cn(0,0.25*Scale,0)}
wRArm=iNew{'Weld',RArm,Part0=RSho,Part1=RArm,C0=cn(0,-0.75*Scale,0),C1=cn(0,0.75*Scale,0)}

wLThi=iNew{'Weld',LThi,Part0=pTorso,Part1=LThi,C0=cn(-0.5*Scale,-1*Scale,0),C1=cn(0,0.75*Scale,0)}
wLLeg=iNew{'Weld',LLeg,Part0=LThi,Part1=LLeg,C0=cn(1,-0.75*Scale,0),C1=cn(0,0.75*Scale,0)}

wRThi=iNew{'Weld',RThi,Part0=pTorso,Part1=RThi,C0=cn(0.5*Scale,-1*Scale,0),C1=cn(0,0.75*Scale,0)}
wRLeg=iNew{'Weld',RLeg,Part0=RThi,Part1=RLeg,C0=cn(0,-0.75*Scale,0),C1=cn(0,0.75*Scale,0)}

wLSho.C0=cn(-1.5*Scale,0.75*Scale,0)*ca(0,0,-135) --a,b
wLArm.C0=cn(0,-0.75*Scale,0)*ca(0,0,0) --c,d
wRSho.C0=cn(1.5*Scale,0.75*Scale,0)*ca(0,0,135) --e,f
wRArm.C0=cn(0,-0.75*Scale,0)*ca(0,0,0) --g,h
----
wLThi.C0=cn(-0.5*Scale,-1*Scale,0)*ca(0,0,-45) --i,j
wLLeg.C0=cn(0,-0.75*Scale,0)*ca(0,0,0) --k,l
wRThi.C0=cn(0.5*Scale,-1*Scale,0)*ca(0,0,45) --m,n
wRLeg.C0=cn(0,-0.75*Scale,0)*ca(0,0,0) --o,p

BG=iNew{'BodyGyro',Torso,maxTorque=nov3}
BP=iNew{'BodyPosition',Torso,maxForce=nov3}
fUNDYING=Hum.Died:connect(UNDYING)
LimbNames={'LSho','RSho','LArm','RArm','RThi','LThi','RLeg','LLeg'}
for i=1,8 do local v=LimbNames[i] LimbNames[v]=getfenv()["w"..v] end 
RootLimbs={pHead,pTorso,LSho,RSho,LArm,RArm,RThi,LThi,RLeg,LLeg}
Anim,LegAnim,ArmAnim='Sit','Sit','Sit'
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p=GetPose() 
SetWeld(wLSho,0,1,1,a,b,v3(-1.5*Scale,0.5*Scale,0),v3(0,0,-10),1) 
SetWeld(wLArm,0,1,1,c,d,v3(0,-0.75*Scale,0),v3(10,0,10),1)
SetWeld(wRSho,0,1,1,e,f,v3(1.5*Scale,0.5*Scale,0),v3(0,0,10),1)
SetWeld(wRArm,0,1,1,g,h,v3(0,-0.75*Scale,0),v3(10,0,-10),1) 
SetWeld(wLThi,0,1,1,i,j,v3(-0.5*Scale,-1*Scale,0),v3(15,0,-5),1) 
SetWeld(wLLeg,0,1,1,k,l,v3(0,-0.75*Scale,0),v3(-15,0,5),1)
SetWeld(wRThi,0,1,1,m,n,v3(0.5*Scale,-1*Scale,0),v3(15,0,5),1) 
SetWeld(wRLeg,0,1,1,o,p,v3(0,-0.75*Scale,0),v3(-15,0,-5),1)
Oa,Ob,Oc,Od,Oe,Of,Og,Oh,Oi,Oj,Ok,Ol,Om,On,Oo,Op=GetPose() 
SetWeld(wLSho,0,1,1,nov3,nov3,a,b,1) 
SetWeld(wLArm,0,1,1,nov3,nov3,c,d,1)
SetWeld(wRSho,0,1,1,nov3,nov3,e,f,1)
SetWeld(wRArm,0,1,1,nov3,nov3,g,h,1) 
SetWeld(wLThi,0,1,1,nov3,nov3,i,j,1) 
SetWeld(wLLeg,0,1,1,nov3,nov3,k,l,1)
SetWeld(wRThi,0,1,1,nov3,nov3,m,n,1) 
SetWeld(wRLeg,0,1,1,nov3,nov3,o,p,1)
end

function GetPose() 
local a,b=GetWeld(wLSho,0) 
local c,d=GetWeld(wLArm,0)
local e,f=GetWeld(wRSho,0)
local g,h=GetWeld(wRArm,0) 
local i,j=GetWeld(wLThi,0)
local k,l=GetWeld(wLLeg,0)
local m,n=GetWeld(wRThi,0)
local o,p=GetWeld(wRLeg,0)
local q,r=GetWeld(wTorso,0)
return a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r
end

MakeAI(SpawnPoint)

ASpeed=28
coroutine.resume(coroutine.create(function()
SetWeld(wLSho,0,1,1,nov3,nov3,wLSho.C0.p,v3(45,0,-10),1) 
SetWeld(wLArm,0,1,1,nov3,nov3,wLArm.C0.p,v3(45,0,10),1)
SetWeld(wRSho,0,1,1,nov3,nov3,wRSho.C0.p,v3(45,0,10),1) 
SetWeld(wRArm,0,1,1,nov3,nov3,wRArm.C0.p,v3(45,0,-10),1) 
SetWeld(wLThi,0,1,1,nov3,nov3,v3(-0.5*Scale,-0.6*Scale,-0.5*Scale),v3(125,0,-12),1) 
SetWeld(wLLeg,0,1,1,nov3,nov3,wLLeg.C0.p,v3(-70,0,12),1) 
SetWeld(wRThi,0,1,1,nov3,nov3,v3( 0.5*Scale,-0.6*Scale,-0.5*Scale),v3(125,0,12),1) 
SetWeld(wRLeg,0,1,1,nov3,nov3,wRLeg.C0.p,v3(-70,0,-12),1) 
SetWeld(wTorso,0,1,1,oTorso,nov3,v3(0,-3*Scale,0),nov3,1)
wait(1)
Anim='Standing'
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p=GetPose() 
for x=1,ASpeed do 
SetWeld(wTorso,0,x,ASpeed,wTorso.C0.p,nov3,oTorso,nov3,1) 
SetWeld(wLSho,0,x,ASpeed,a,b,v3(-1.5*Scale,0.5*Scale,0),v3(0,0,-10),1) 
SetWeld(wLArm,0,x,ASpeed,c,d,v3(0,-0.75*Scale,0),v3(10,0,10),1)
SetWeld(wRSho,0,x,ASpeed,e,f,v3(1.5*Scale,0.5*Scale,0),v3(0,0,10),1)
SetWeld(wRArm,0,x,ASpeed,g,h,v3(0,-0.75*Scale,0),v3(10,0,-10),1) 
SetWeld(wLThi,0,x,ASpeed,i,j,v3(-0.5*Scale,-1*Scale,0),v3(15,0,-5),1) 
SetWeld(wLLeg,0,x,ASpeed,k,l,v3(0,-0.75*Scale,0),v3(-15,0,5),1)
SetWeld(wRThi,0,x,ASpeed,m,n,v3(0.5*Scale,-1*Scale,0),v3(15,0,5),1) 
SetWeld(wRLeg,0,x,ASpeed,o,p,v3(0,-0.75*Scale,0),v3(-15,0,-5),1)
wait() 
end 
ArmAnim='None'
LegAnim='None'
Anim='None'
end))
--Target=PChar
function Stay(bool,cff)
BG.maxTorque=bool and v3(1,1,1)/0 or nov3 BG.cframe=cff or Torso.CFrame
BP.maxForce=BG.maxTorque BP.position=Torso.Position
end
function fMarble(Ch,func)
for i,v in pairs(Ch:children()) do 
for x=-1,1,2 do 
for y=-1,1,2 do 
for z=-1,1,2 do 
if v:findFirstChild(x..y..z) then func(v[x..y..z]) end
end end end 
end
end
function ReturnAnim()
local ne1,ne2=GetWeld(pNeck,0)
local wt1,wt2=GetWeld(wTorso,0)
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p=GetPose() 
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,a,b,Oa,Ob,1) 
SetWeld(wLArm,0,x,ASpeed,c,d,Oc,Od,1)
SetWeld(wRSho,0,x,ASpeed,e,f,Oe,Of,1) 
SetWeld(wRArm,0,x,ASpeed,g,h,Og,Oh,1) 
SetWeld(wLThi,0,x,ASpeed,i,j,Oi,Oj,1) 
SetWeld(wLLeg,0,x,ASpeed,k,l,Ok,Ol,1) 
SetWeld(wRThi,0,x,ASpeed,m,n,Om,On,1) 
SetWeld(wRLeg,0,x,ASpeed,o,p,Oo,Op,1) 
SetWeld(wTorso,0,x,ASpeed,wt1,wt2,oTorso,nov3,1) 
SetWeld(pNeck,0,x,ASpeed,ne1,ne2,v3(0,1.5,0)*Scale,nov3,1)
wait()
end
end

ChatConnection=Player.Chatted:connect(function(msg)
coroutine.resume(coroutine.create(function()
if not Char.Parent then return end
local Sep,sep=se(';',msg)
local p1,p2=findplayer(Sep[2]),findplayer(Sep[3])
local cmd=sep[1]
--print(Sep[1])
--print(LimbNames[Sep[1]])
Tt=(p1 and p1.Character and p1.Character:findFirstChild'Torso') and p1.Character.Torso or nil
if cmd=='sit' and (Anim=='None' or Anim=='Follow') then 
Anim='Sitting'
Hum:MoveTo(Torso.Position,Torso)
LegAnim,ArmAnim='Sit','Sit'
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,Oa,Ob,Oa,v3(45,0,-10),1) 
SetWeld(wLArm,0,x,ASpeed,Oc,Od,Oc,v3(45,0,10),1)
SetWeld(wRSho,0,x,ASpeed,Oe,Of,Oe,v3(45,0,10),1) 
SetWeld(wRArm,0,x,ASpeed,Og,Oh,Og,v3(45,0,-10),1) 
SetWeld(wLThi,0,x,ASpeed,Oi,Oj,v3(-0.5*Scale,-0.6*Scale,-0.5*Scale),v3(125,0,-12),1) 
SetWeld(wLLeg,0,x,ASpeed,Ok,Ol,Ok,v3(-70,0,12),1) 
SetWeld(wRThi,0,x,ASpeed,Om,On,v3( 0.5*Scale,-0.6*Scale,-0.5*Scale),v3(125,0,12),1) 
SetWeld(wRLeg,0,x,ASpeed,Oo,Op,Oo,v3(-70,0,-12),1) 
SetWeld(wTorso,0,x,ASpeed,oTorso,nov3,v3(0,-3*Scale,0),nov3,1) 
wait()
end
Anim='Sit'
elseif (cmd=='stand' or cmd=='stop') and (Anim=='Roll' or Anim=='Sit' or Anim=='Follow' or Anim=='Form' or Anim=='Dance' or Anim=='Grab') then 
if Anim=='Sit' or Anim=='Form' or Anim=='Dance' or Anim=='Roll' then 
Anim='Returning'
ReturnAnim()
else
Target=nil
wait(0.2)
Hum:MoveTo(Torso.Position,Torso)
end
LegAnim,ArmAnim,Anim='None','None','None'
elseif cmd=='follow' and Tt and Anim=='None' then 
Anim='Follow'
Target=p1.Character
elseif cmd=='shoot' and Tt and RArm['1-11'].Transparency~=1 and ArmAnim=='None' then 
Target=p1.Character
ArmAnim='Shoot'
FaceBG(Tt.Position)
wait(0.1) 
local cff=cn(pTorso.CFrame.p,v3(Tt.Position.x,pTorso.Position.y,Tt.Position.z))
local ofs=cff:toObjectSpace(cn(cff*cn(1.5*Scale,0.5*Scale,0).p,Tt.CFrame*cn(0,2,0).p)*ca(90,0,0)*cn(0,-0.25*Scale,0))
local x,y,z=ofs:toEulerAnglesXYZ() 
local rot=v3(mdeg(x),mdeg(y),mdeg(z))
for q=1,ASpeed do 
SetWeld(wRArm,0,q,ASpeed,Og,Oh,Og,nov3,1)
SetWeld(wRSho,0,q,ASpeed,Oe,Of,ofs.p,rot,1)
SetWeld(wRSho,1,q,ASpeed,v3(0,0.25*Scale,0),nov3,nov3,nov3,1) 
wait()
end
for y=-1,1,2 do for x=-1,1,2 do for z=-1,1,2 do 
local new=RArm[x..y..z]:Clone() new.Parent=RArm game.Debris:AddItem(new,8) new.Touched:connect(function(hit) Damage(hit.Parent:findFirstChild'Humanoid') end)
new.CFrame=RArm[x..y..z].CFrame*cn(0,-Scale*1.5,0) new.CanCollide=true new.Velocity=cn(new.Position,Target.Torso.Position).lookVector*((new.Position-Target.Torso.Position).magnitude*20+900)
RArm[x..y..z].Transparency=1 so.Block:Play() wait(0.06)
end end end
RArm.Transparency=1
delay(1,function() 
for x=-1,1,2 do for y=-1,1,2 do for z=-1,1,2 do local new=RArm[x..y..z]:Clone() new.Transparency=0 new.CanCollide=false new.Name='f'..new.Name new.Parent=RArm new.CFrame=RArm.CFrame*cn(Scale*x*2,Scale*-3,Scale*z*2)
iNew{'BodyPosition',new,maxForce=v3(1,1,1)/0,position=RArm[x..y..z].Position} wait(0.14) end end end
DoLoop(35,function(i) for x=-1,1,2 do for y=-1,1,2 do for z=-1,1,2 do RArm['f'..x..y..z].BodyPosition.position=RArm[x..y..z].Position if i==1 then RArm['f'..x..y..z]:Remove() RArm[x..y..z].Transparency=0 RArm.Transparency=0 end end end end end)
end)
for q=1,ASpeed do 
SetWeld(wRArm,0,q,ASpeed,Og,nov3,Og,Oh,1)
SetWeld(wRSho,0,q,ASpeed,ofs.p,rot,Oe,Of,1) 
SetWeld(wRSho,1,q,ASpeed,nov3,nov3,v3(0,0.25*Scale,0),nov3,1) 
wait()
end
BG.maxTorque=nov3
ArmAnim='None'
elseif cmd=='slam' and (Anim=='None' or Anim=='Follow') and Tt then 
Target=p1
local lTt=Tt
Anim='Follow'
repeat Hum:MoveTo(Tt.Position+v3(0.5,0.5,0.5),Tt) wait(0.2) until lTt~=Tt or (Tt.Position-pTorso.Position).magnitude<10+Scale*5.5 or Anim~='Follow'
if Anim~='Follow' then BG.maxTorque=nov3 return end 
if lTt~=Tt then return end 
Anim,LegAnim,ArmAnim='Slam','',''
Hum:MoveTo(Torso.Position,Torso)
FaceBG(Tt.Position) 
Stay(true,BG.cframe)
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p=GetPose() 
ASpeed2=15
for x=1,ASpeed2 do 
SetWeld(wLSho,0,x,ASpeed2,a,b,Oa,v3(180,0,0),1) 
SetWeld(wRSho,0,x,ASpeed2,e,f,Oe,v3(180,0,0),1) 
SetWeld(wTorso,0,x,ASpeed2,nov3,nov3,v3(0,3,0)*Scale,nov3,1) 
wait()
end
for x=1,ASpeed2 do 
SetWeld(wTorso,0,x,ASpeed2,v3(0,3,0)*Scale,nov3,v3(0,-3*Scale+2.5,-6*Scale),v3(-89,0,0),1) 
wait()
end
AOEFind(pTorso.Position,6.5*Scale,function(Hum) Damage(Hum,3,true) Hum.Sit=true end)
MeshEffect(35,Torso.CFrame*cn(0,-3.5*Scale,-6*Scale)*ca(90,0,0),nil,v3(2,2,1)*Scale,v3(12,12,5)*Scale,0.2,1,'Light stone grey',as.ring)
wait(0.5)
for x=1,ASpeed do 
SetWeld(wTorso,0,x,ASpeed,v3(0,-3*Scale+2.5,-6*Scale),v3(-90,0,0),nov3,nov3,1) 
SetWeld(wLSho,0,x,ASpeed,Oa,v3(180,0,0),Oa,Ob,1) 
SetWeld(wRSho,0,x,ASpeed,Oe,v3(180,0,0),Oe,Of,1) 
wait()
end
Stay(false)
Anim,LegAnim,ArmAnim='None','None','None'
elseif cmd=='boulder' and Anim=='None' then 
Target=p1.Character
Anim,LegAnim,ArmAnim='','',''
Stay(true)
FaceBG(Tt.Position)
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,Oa,Ob,Oa,v3(135,0,0),1) 
SetWeld(wLArm,0,x,ASpeed,Oc,Od,Oc,v3(0,0,0),1)
SetWeld(wRSho,0,x,ASpeed,Oe,Of,Oe,v3(135,0,0),1) 
SetWeld(wRArm,0,x,ASpeed,Og,Oh,Og,v3(0,0,-10),1) 
SetWeld(wLThi,0,x,ASpeed,Oi,Oj,v3(-0.5,-0.5,0.25)*Scale,v3(45,0,-15),1) 
SetWeld(wLLeg,0,x,ASpeed,Ok,Ol,Ok,v3(0,0,0),1) 
SetWeld(wRThi,0,x,ASpeed,Om,On,v3( 0.5,-0.5,0.25)*Scale,v3(45,0,15),1) 
SetWeld(wRLeg,0,x,ASpeed,Oo,Op,Oo,v3(0,0,0),1) 
SetWeld(wTorso,0,x,ASpeed,oTorso,nov3,v3(0,-1.5,-1.5)*Scale,v3(-90,0,0),1) 
wait()
end
wait(0.2)
local boulder=iPart{Char,1,1,1,type='WedgePart'} boulder.Material=Mat 
local wm=iNew{'SpecialMesh',boulder,Scale=v3(4,3,4)*Scale,MeshType='Wedge'}
local wb=iNew{'Weld',boulder,Part0=RArm,Part1=boulder,C0=cn(-1.5*Scale,-2.3*Scale,0)*ca(180,180,0)}
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r=GetPose() 
for x=1,ASpeed*2 do 
SetWeld(wLSho,0,x,ASpeed*2,a,b,a,v3(225,0,0),1) 
SetWeld(wLArm,0,x,ASpeed*2,c,d,c,v3(45,0,0),1)
SetWeld(wRSho,0,x,ASpeed*2,e,f,e,v3(225,0,0),1) 
SetWeld(wRArm,0,x,ASpeed*2,g,h,g,v3(45,0,0),1) 
SetWeld(wLThi,0,x,ASpeed*2,i,j,Oi,v3(0,0,-15),1) 
SetWeld(wLLeg,0,x,ASpeed*2,k,l,k,v3(0,0,0),1) 
SetWeld(wRThi,0,x,ASpeed*2,m,n,Om,v3(0,0,15),1) 
SetWeld(wRLeg,0,x,ASpeed*2,o,p,o,v3(0,0,0),1) 
SetWeld(wTorso,0,x,ASpeed*2,q,r,nov3,nov3,1) 
wait()
end
FaceBG(Tt.Position)
for x=1,ASpeed/2 do 
SetWeld(wLSho,0,x,math.floor(ASpeed/2),a,v3(225,0,0),a,v3(90,0,0),1) 
SetWeld(wLArm,0,x,math.floor(ASpeed/2),c,v3(45,0,0),c,v3(45,0,0),1)
SetWeld(wRSho,0,x,math.floor(ASpeed/2),e,v3(225,0,0),e,v3(90,0,0),1) 
SetWeld(wRArm,0,x,math.floor(ASpeed/2),g,v3(45,0,0),g,v3(45,0,0),1) 
wait()
end
local bcf=boulder.CFrame
wb:Remove()
wm:Remove() 
boulder.Size=wm.Scale 
boulder.CFrame=cn(boulder.Position,Target.Torso.Position)*cn(0,3,-1)*ca(0,180,0)
--boulder.Friction=0.1
boulder.Elasticity=0
boulder.Velocity=(boulder.CFrame*ca(0,180,0)).lookVector*((boulder.Position-Target.Torso.Position).magnitude*1+90)
boulder.RotVelocity=nov3
game.Debris:AddItem(boulder,8)
Stay(false)
ReturnAnim()
Anim,LegAnim,ArmAnim='None','None','None'
elseif cmd=='grab' and Tt and not Grabbing then 
Target=p1
local lTt=Tt
Anim='Follow'
repeat Hum:MoveTo(Tt.Position+v3(0.5,0.5,0.5),Tt) wait(0.2) until lTt~=Tt or (Tt.Position-Stand.CFrame*cn(0,-Stand.Size.y/2+1,-2.8*Scale).p).magnitude<10 or Anim~='Follow'
if Anim~='Follow' then BG.maxTorque=nov3 return end 
if lTt~=Tt then return end 
pcall(function() Tt.Parent.Humanoid.PlatformStand=true end)
Hum:MoveTo(Torso.Position,Torso) 
Anim,LegAnim,ArmAnim='Grab','',''
FaceBG(Tt.Position)
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,Oa,Ob,Oa,v3(-30,0,-30),1) 
SetWeld(wLArm,0,x,ASpeed,Oc,Od,Oc,v3(0,0,0),1)
SetWeld(wRSho,0,x,ASpeed,Oe,Of,Oe,v3(145,0,-30),1) 
SetWeld(wRArm,0,x,ASpeed,Og,Oh,Og,v3(0,0,0),1) 
SetWeld(wLThi,0,x,ASpeed,Oi,Oj,v3(-0.5,-0.4,0.3)*Scale,v3(70,0,0),1) 
SetWeld(wLLeg,0,x,ASpeed,Ok,Ol,Ok,v3(-20,0,0),1) 
SetWeld(wRThi,0,x,ASpeed,Om,On,v3(0.5,-0.5,-0.3)*Scale,v3(135,0,0),1) 
SetWeld(wRLeg,0,x,ASpeed,Oo,Op,Oo,v3(-90,0,0),1) 
SetWeld(wTorso,0,x,ASpeed,oTorso,nov3,v3(0,-2,-1.5)*Scale,v3(-90,0,0),1) 
wait()
end
local ofs=RArm.CFrame:toObjectSpace(Tt.CFrame) 
Tt.Parent.Humanoid.PlatformStand=true 
Grabbing=iNew{'Weld',RArm,Part0=RArm,Part1=Tt,C0=ofs} 
local a,b=GetWeld(Grabbing,0) 
for x=1,ASpeed do 
SetWeld(Grabbing,0,x,ASpeed,a,b,v3(0,-0.75*Scale-1,0),v3(-90,0,0),1) 
wait()
end
Stay(false)
ReturnAnim()
Anim,LegAnim,ArmAnim='None','None','None'
elseif cmd=='dance' and (Anim=='None' or Anim=='Follow') then 
Hum:MoveTo(pTorso.Position,pTorso)
Anim,ArmAnim,LegAnim='Dance','Dance','Dance'
local ASpeed=math.floor(ASpeed/2)
repeat
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r=GetPose() 
for x=1,ASpeed do 
if Anim~='Dance' then break end 
SetWeld(wLSho,0,x,ASpeed,a,b,v3(-1.2,0.5,-0.25)*Scale,v3(35,0,30),1) 
SetWeld(wLArm,0,x,ASpeed,c,d,c,v3(25,0,0),1)
SetWeld(wRSho,0,x,ASpeed,e,f,v3( 1.2,0.5,-0.25)*Scale,v3(45,0,-30),1) 
SetWeld(wRArm,0,x,ASpeed,g,h,g,v3(25,0,0),1) 
SetWeld(wLThi,0,x,ASpeed,i,j,i,v3(0,0,0),1) 
SetWeld(wLLeg,0,x,ASpeed,k,l,k,v3(0,0,0),1) 
SetWeld(wRThi,0,x,ASpeed,m,n,m,v3(45,0,20),1) 
SetWeld(wRLeg,0,x,ASpeed,o,p,o,v3(-45,0,-20),1) 
wait()
end
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r=GetPose() 
for x=1,ASpeed do 
if Anim~='Dance' then break end 
SetWeld(wLSho,0,x,ASpeed,a,b,v3(-1.2,0.5,-0.25)*Scale,v3(95,0,30),1) 
SetWeld(wLArm,0,x,ASpeed,c,d,c,v3(-10,0,0),1)
SetWeld(wRSho,0,x,ASpeed,e,f,v3( 1.2,0.5,-0.25)*Scale,v3(105,0,-30),1) 
SetWeld(wRArm,0,x,ASpeed,g,h,g,v3(-10,0,0),1) 
SetWeld(wLThi,0,x,ASpeed,i,j,i,v3(45,0,-20),1) 
SetWeld(wLLeg,0,x,ASpeed,k,l,k,v3(-45,0,20),1) 
SetWeld(wRThi,0,x,ASpeed,m,n,m,v3(0,0,0),1) 
SetWeld(wRLeg,0,x,ASpeed,o,p,o,v3(0,0,0),1) 
wait()
end
until Anim~='Dance'
elseif cmd=='roll' and (Anim=='None' or Anim=='Follow') then 
Target=p1
local lTt=Tt
Anim,ArmAnim,LegAnim='Roll','',''
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r=GetPose() 
local n1,n2=GetWeld(pNeck,0)
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,a,b,v3(-1.5,0.5,0)*Scale,v3(0,0,-45),1) 
SetWeld(wLArm,0,x,ASpeed,c,d,c,v3(0,0,90),1)
SetWeld(wRSho,0,x,ASpeed,e,f,v3( 1.5,0.5,0)*Scale,v3(0,0,45),1) 
SetWeld(wRArm,0,x,ASpeed,g,h,g,v3(0,0,-90),1) 
SetWeld(wLThi,0,x,ASpeed,i,j,v3(0,1, 0.5)*Scale,v3(-30,0,0),1) 
SetWeld(wLLeg,0,x,ASpeed,k,l,k,v3(60,0,0),1) 
SetWeld(wRThi,0,x,ASpeed,m,n,v3(0,1,-0.5)*Scale,v3(30,0,0),1) 
SetWeld(wRLeg,0,x,ASpeed,o,p,o,v3(-60,0,0),1) 
SetWeld(pNeck,0,x,ASpeed,n1,n2,v3(0,0,0),n2,1) 
SetWeld(wTorso,0,x,ASpeed,oTorso,nov3,v3(0,-2,0)*Scale,nov3,1) 
wait()
end
tWS[2]=3
repeat 
local cf=Torso.CFrame*cn(mran2(-1,1)*Scale,-4*Scale,0.5*Scale)*ca(90+mran(-20,20),mran(-30,30),0)
MeshEffect(24,cf,cf*cn(0,4*Scale,0),v3(0.5,0.5,0.5)*Scale,v3(mran2(1,4),mran2(3,5),mran2(1,3))*Scale,0.1,1,'Dark stone grey','Brick') 
Hum:MoveTo(Tt.CFrame*cn(0,0,Scale).p,Tt) wTorso.C0=wTorso.C0*ca(-20,0,0) wait(0.035) until lTt~=Tt or (Tt.Position-Stand.CFrame*cn(0,-Stand.Size.y/2+1,-2.8*Scale).p).magnitude<6 or Anim~='Roll'
tWS[2]=1
ClearWeld(wTorso)
if Anim~='Roll' then return end 
Hum:MoveTo(Torso.Position+v3(0,1,0),Torso)
Torso.Anchored=true Torso.Velocity=nov3
local cf=Stand.CFrame*cn(0,0,-1.5*Scale)*ca(-45,0,0) --iPart{Char,1,1,1,co='Black',cf=cf,an=true}
MeshEffect(50,cf,nil,v3(3.5,3.5,2)*Scale,v3(11,11,6)*Scale,0.1,1,'White',as.ring) 
for i=1,16 do 
local cf=cf*ca(90,360*(i/16),0)*ca(45,0,0)
MeshEffect(40,cf,cf*cn(0,10*Scale,0),v3(0.2,2,0.2)*Scale,v3(1,5,1)*Scale,0.1,1,'','Sphere') 
end
AOEFind(cf.p,6.5*Scale,function(Hum,v) Damage(Hum,2,true) Hum.Sit=true v.Velocity=cn(pTorso.Position,v.Position).lookVector*50 end)
wait(0.2)
Torso.Anchored=false
ReturnAnim()
Hum:MoveTo(Torso.Position,Torso) 
Anim,LegAnim,ArmAnim='None','None','None'
elseif cmd=='beam' and (Anim=='None' or Anim=='Follow') then 
Anim='beam'
local che =iPart{Char,1,1,1,sc=Scale,co=CC[1],ma=Mat} local chew=iNew{'Weld',che ,Part0=pTorso,Part1=che}
local che2=iPart{che ,0.8*Scale,0.2,0.8*Scale,co='Really black'} local che2w=iNew{'Weld',che2,Part0=che,Part1=che2}
local chem=iNew{'CylinderMesh',che} iNew{'CylinderMesh',che2}
local chest,chex,i={},0,0
for x=-1,1,2 do for y=-1,1,2 do i=i+1 chest[i]={pTorso[x..y..'-1']} chest[i][2]=chest[i][1].Weld chest[i][3]=chest[i][2].C0
local xx,yy,zz=chest[i][2].C0:toEulerAnglesXYZ() chest[i][4]=v3(mdeg(xx),mdeg(yy),mdeg(zz))
chest[i][5]=cn(0.45*x*Scale,0,-0.5*Scale)*chest[i][3] chest[i][6]=chest[i][4]+v3(0,-105*x,0) end end
local len=1.75
local dochest=function(v,chexx,adj)
local p=v/ASpeed
chex=adj*p
chem.Scale=v3(1,len*p,1) 
chew.C0=ca(chexx+chex,0,0)*cn(0,len/2*p*Scale,0)
che2w.C0=cn(0,len/2*p*Scale,0)
for i=1,4 do SetWeld(chest[i][2],0,v,ASpeed,chest[i][3],chest[i][4],chest[i][5],chest[i][6],1) end 
end
for v=1,ASpeed do if Tt then FaceBG(Tt.Position) end dochest(v,-90,-45) wait() end
local beam=iPart{Char,0.7*Scale,1,0.7*Scale,co='New Yeller',an=true,tr=0.3} beamm=iNew{'CylinderMesh',beam}
for i=1,ASpeed*3 do 
local p=i/ASpeed*3
chex=90*math.sin((math.pi/2)/(ASpeed*3)*i)
chew.C0=ca(-135+chex,0,0)*cn(0,len/2*Scale,0)
local hit,pos=ray(che2.Position,che2.Position-che2.CFrame*cn(0,-1,0).p,Char)
local mag=(che2.Position-pos).magnitude local p1,p2=che2.Position+v3(mran2(-1,1),mran2(-1,1),mran2(-1,1))/3,pos+v3(mran2(-1,1),mran2(-1,1),mran2(-1,1))/3
beam.CFrame=cn(p1,p2)*cn(0,0,-mag/2)*ca(90,0,0) beamm.Scale=v3(1,mag+(Scale/3),1)
AOEFind(pos,Scale*2,function(Hum) Damage(Hum,2.5) end)
if i%2==0 then for i=1,5 do local cf=cn(pos)*ca(0,mran(-180,180),mran(-95,95)) MeshEffect(8,cf,cf*cn(0,Scale*2.2,0),v3(0.1,0.4,0.1)*Scale,v3(0.4,3,0.4)*Scale,0.2,1,CC[mran(2,3)],as.cone) end
MeshEffect(8,cn(pos),nil,v3(0.8,0.8,0.8)*Scale,v3(4,4,4)*Scale,0.2,1,CC[mran(2,3)],'Sphere') end
if Tt then FaceBG(Tt.Position) end
wait()
end
DoLoop(12,function(i) beam.Transparency=0.3+i*0.7 if i==1 then beam:Remove() end end)
for v=ASpeed,0,-1 do dochest(v,-90,45) wait() end
Stay(false)
che:Remove()
Anim='None'
---------------------------------------------------------------------------=---WWWWWWWWWWWWWWWWWW
elseif cmd=='box' and (Anim=='None' or Anim=='Follow') then 
Anim,ArmAnim='cart','cart'
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,Oa,Ob,Oa,v3(90,0,10),1) 
SetWeld(wLArm,0,x,ASpeed,Oc,Od,Oc,v3(0,0,25),1) 
SetWeld(wRSho,0,x,ASpeed,Oe,Of,Oe,v3(90,0,-10),1) 
SetWeld(wRArm,0,x,ASpeed,Og,Oh,Og,v3(0,0,-25),1) 
wait()
end
Stay(true)
local spawn=RArm.CFrame*cn(0,-0.75*Scale-2,0)*ca(-90,0,0)
local des=iPart{Char,1,1,1,an=true,ma=Mat,cf=spawn,ca=false}
for i=1,6,0.2 do des.Size=v3(i,i,i) des.CFrame=spawn*cn(0,0,-i/2) wait() end
local cart=iNew{'Model',workspace,Name='Cart'}
local base=iPart{cart,4,1,5,ma=Mat,cf=des.CFrame} iNew{'BodyGyro',base}
for x=-1,1,2 do 
local new=iPart{cart,0.5,4,5,ma=Mat,cf=base.CFrame} iNew{'Weld',new,Part0=base,Part1=new,C0=cn(1.75*x,2.5,0)}
local new=iPart{cart,3.5,4,0.5,ma=Mat,cf=base.CFrame} iNew{'Weld',new,Part0=base,Part1=new,C0=cn(0,2.5,2.25*x)}
end
for i=6,0.8,-0.2 do des.Size=v3(i,i,i) des.CFrame=spawn*cn(0,0,-i/2) wait() end des:Remove()
Stay(false)
ReturnAnim()
Anim,ArmAnim='None','None'
elseif cmd=='crush' and Grabbing and (Anim=='None' or Anim=='Follow') then 
Anim,ArmAnim='crush','crush'
for x=1,ASpeed do 
SetWeld(wLSho,0,x,ASpeed,Oa,Ob,Oa,v3(80,0,-160),1) 
SetWeld(wLArm,0,x,ASpeed,Oc,Od,Oc,v3(0,0,80),1) 
SetWeld(wRSho,0,x,ASpeed,Oe,Of,Oe,v3(80,0,160),1) 
SetWeld(wRArm,0,x,ASpeed,Og,Oh,Og,v3(0,0,-80),1) 
wait()
end
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r=GetPose() 
wait(0.2)
for x=1,ASpeed/2 do 
SetWeld(wLSho,0,x,ASpeed/2,a,b,Oa,v3(80,0,-14),1) 
SetWeld(wLArm,0,x,ASpeed/2,c,d,Oc,v3(0,0,80),1) 
SetWeld(wRSho,0,x,ASpeed/2,e,f,Oe,v3(80,0,14),1) 
SetWeld(wRArm,0,x,ASpeed/2,g,h,Og,v3(0,0,-80),1) 
wait()
end
MeshEffect(35,Grabbing.Part1.CFrame,nil,v3(2,2,1)*Scale,v3(7,7,3)*Scale,0.3,1,'Light stone grey',as.ring)
local crushjo=60
pcall(function() for i,v in pairs({'Neck','Left Shoulder','Right Shoulder','Left Hip','Right Hip'}) do local w=Grabbing.Part1.Parent.Torso[v] w.C1=w.C1*ca(mran(-crushjo,crushjo),mran(-crushjo,crushjo),mran(-crushjo,crushjo)) end end)
local hit=Grabbing.Part1
Grabbing:Remove() Grabbing=nil
wait(2)
pcall(function() hit.Parent.Humanoid.PlatformStand=false end)
ReturnAnim()
Anim,ArmAnim='None','None'
elseif cmd=='eat' and Grabbing and (Anim=='None' or Anim=='Follow') then 
Anim,ArmAnim='Eat','Eat'
for x=1,ASpeed*2 do 
SetWeld(wRSho,0,x,ASpeed*2,Oe,Of,Oe,v3(135,0,15),1) 
SetWeld(wRArm,0,x,ASpeed*2,Og,Oh,Og,v3(45,-10,-100),1) 
wait()
end
wait(1)
for x=1,40 do 
SetWeld(wRSho,0,1,1,Oe,Of,Oe,v3(135+mran(-3,3),0,15+mran(-3,3)),1) 
SetWeld(wRArm,0,1,1,Og,Oh,Og,v3(45,-10+mran(-12,12),-100+mran(-3,3)),1) 
wait(0.05)
if x%2==0 then 
local cf=Grabbing.Part1.CFrame*ca(180,mran(-180,180),mran(-40,40))*cn(0,1.5,0)
MeshEffect(24,cf,cf*cn(0,10,0),v3(0.2,2,0.2),v3(0.4,5,0.4),0.1,1,'Really red','Sphere') 
end
end
Grabbing.Part1:BreakJoints()
pcall(function() Grabbing.Part1.Parent.Head:Remove() end)
Grabbing:Remove() Grabbing=nil
wait(2)
ReturnAnim()
Anim,ArmAnim='None','None'
elseif cmd=='drop' and Grabbing then 
local hum=Grabbing.Part1.Parent.Humanoid Grabbing:Remove() Grabbing=nil hum.PlatformStand=false
elseif LimbNames[Sep[1]] and (Anim=='None' or Anim=='Form') then
Anim,ArmAnim,LegAnim='Form','Form','Form'
local v1,v2=GetWeld(LimbNames[Sep[1]],0)
local sepx=se(',',Sep[2])
for x=1,ASpeed*2 do 
SetWeld(LimbNames[Sep[1]],0,x,ASpeed*2,v1,v2,v1,v3(tonumber(sepx[1]),tonumber(sepx[2]),tonumber(sepx[3])),1) 
wait()
end
elseif cmd=='plode' then 
Char:BreakJoints() wait()
local Pressure=tonumber(sep[2]) or 50
fMarble(Char,function(v) v.Velocity=cn(Torso.Position,v.Position).lookVector*Pressure end)
for i,v in pairs(RootLimbs) do v.Velocity=cn(Torso.Position,v.Position).lookVector*Pressure end
elseif cmd=='explode' then 
iNew{'Explosion',pTorso,Position=pTorso.Position,BlastRadius=Scale*20}
elseif cmd=='goto' then
pcall(function()
Hum:MoveTo(Player:GetMouse().Hit.p,Player:GetMouse().Target) end)
elseif cmd=='newscale' and tonumber(sep[2]) then 
Char:BreakJoints()
Scale=tonumber(sep[2])
if Scale<0.5 then Scale=0.5 end 
if Scale>=100 then Scale=100 end 
elseif cmd=='nobox' then
for i,v in pairs(workspace:children()) do if v.Name=='Cart' then v:Remove() end end 
elseif cmd=='die' then 
Char:BreakJoints()
elseif cmd=='brick' then 
iPart{workspace,12,30,30,cf=Player.Character.Torso.CFrame*cn(0,10,-20),tr=0.5,an=true}
elseif cmd=='test' then 
local pt=Player.Character.Torso.CFrame
MeshEffect(35,pt*cn(0,5,0)*ca(90,0,0),nil,v3(2,2,1)*Scale,v3(7,7,3)*Scale,0.2,1,'Light stone grey',as.ring)
else
end
end))
end)
keys={}
NewAnim={}
Player:GetMouse().KeyDown:connect(function(k)
coroutine.resume(coroutine.create(function() keys[k]=true 
if (k=='q' or k=='e') and (Anim=='None' or Anim=='Laser') and (ArmAnim=='None' or ArmAnim=='Laser') and not NewAnim[k] then
NewAnim[k]=true 
local w1,w2=k=='q' and wLSho or wRSho,k=='q' and wLArm or wRArm
local x=k=='q' and -1 or 1
local aa,bb=GetWeld(w1,0)
local cc,dd=GetWeld(w2,0)
local targ=w1.Part1.CFrame*cn(0,-333,0)
local tips={}
local co=0
local sho1=iPart{Char,0.35,RArm.Size.y/Scale+0.15 ,0.35,sc=Scale,co=CC[1]} iNew{'Weld',sho1,Part0=k=='q' and LArm or RArm,Part1=sho1} iNew{'CylinderMesh',sho1} 
local sho2=iPart{Char,0.3,RArm.Size.y/Scale+0.16,0.3,sc=Scale,co='Really black'} iNew{'Weld',sho2,Part0=sho1,Part1=sho2} iNew{'CylinderMesh',sho2} 
for x=-1,1,2 do for z=-1,1,2 do tips[#tips+1]={(k=='q' and LArm or RArm)[x..'-1'..z].Weld} 
co=co+0.25
local asd=tips[#tips]
asd[2],asd[3]=GetWeld(asd[1],0)
local cf=ca(0,360*co,0)*cn(0,asd[2].y*1.8,-0.75*Scale)*ca(-20,0,0)
asd[4]=cf.p
local a,b,c=cf:toEulerAnglesXYZ()
asd[5]=v3(mdeg(a),mdeg(b),mdeg(c))
end end
for u=1,ASpeed/2 do 
for i=1,4 do local asd=tips[i]
SetWeld(asd[1],0,u,ASpeed/2,asd[2],asd[3],asd[4],asd[5],1) 
end wait()
end 
repeat Anim,ArmAnim,LaserOn='Laser','Laser',true wait()
for i=1,4 do tips[i][1].C0=ca(0,15*x,0)*tips[i][1].C0 end
targ=TweenV3(1,12,targ,Player:GetMouse().Hit.p)
w1.C0=pTorso.CFrame:toObjectSpace(cn(pTorso.CFrame*cn(1.5*Scale*x,0.5*Scale,0).p,targ))*ca(90,0,0)
w2.C0=cn(0,-0.75*Scale,0)
until not keys[k]
ClearWeld(w1) ClearWeld(w2) for i=1,4 do ClearWeld(tips[i][1]) tips[i][6],tips[i][7]=GetWeld(tips[i][1],0) end 
local a,b=GetWeld(w1,0)
local c,d=GetWeld(w2,0)
for z=1,ASpeed/2 do 
for i=1,4 do SetWeld(tips[i][1],0,z,ASpeed/2,tips[i][6],tips[i][7],tips[i][2],tips[i][3],1) end
SetWeld(w1,0,z,ASpeed/2,a,b,aa,bb,1) 
SetWeld(w2,0,z,ASpeed/2,c,d,cc,dd,1) 
wait()
end
sho1:Remove() sho2:Remove()
NewAnim[k]=false 
Anim,ArmAnim,LaserOn='None','None',false
end
end)) end)
Player:GetMouse().KeyUp:connect(function(k) keys[k]=false end)
Player:GetMouse().Button1Down:connect(function()
Button=true
if keys.f and Player:GetMouse().Target and Anim=='None' then 
Hum:MoveTo(Player:GetMouse().Hit.p,Player:GetMouse().Target)
elseif (keys.q or keys.e) and LaserOn then
local pick=keys.q and 'q' or 'e'
repeat
local ofs=(pick=='q' and LArm or RArm).CFrame*ca(90,0,0)
if pick=='q' and keys.e then pick='e' 
elseif pick=='e' and keys.q then pick='q' end 
local part=iPart{Char,0.2,0.5,0.2,sc=Scale,co=CC[mran(2,3)],an=true,ma=Mat} iNew{'CylinderMesh',part}
Projectile(ofs,2*Scale,part,ca(-90,0,0),function(hit,pos) 
AOEFind(pos,Scale*2,function(Hum,v) Damage(Hum) end)
end,
function(pos) 
for i=1,5 do local cf=cn(pos)*ca(0,mran(-180,180),mran(-95,95)) MeshEffect(8,cf,cf*cn(0,Scale*2.2,0),v3(0.07,0.3,0.07)*Scale,v3(0.4,3,0.4)*Scale,0.2,1,CC[mran(2,3)],as.cone) end
MeshEffect(8,cn(pos),nil,v3(0.1,0.1,0.1)*Scale,v3(3,3,3)*Scale,0.2,1,CC[mran(2,3)],'Sphere') part:Remove() end) 
wait((keys.q and keys.e) and 0.2 or 0.4)
until not Button or (not keys.q and not keys.e) 
elseif 'swag'=='sweg' then 
end
end)
Player:GetMouse().Button1Up:connect(function()
Button=false
end)

WalkAnim=0
Walking=false
WalkMulp=1
WalkMax=16
Hum.WalkSpeed=18
tWS={1,1,1,1,1,1,1}

Marbler=0
local cou=0
while Char.Parent do 
cou=cou+1
--if cou%2==0 then print(cou) end 
if Hum.Health>0 then 
if Torso.Velocity.y>5 then Torso.Velocity=v3(Torso.Velocity.x,5,Torso.Velocity.z) end 
Walking=v3(Torso.Velocity.x,0,Torso.Velocity.z).magnitude>Hum.WalkSpeed-2 and true or false
if Walking and LegAnim=='None' then 
WalkAnim=WalkAnim+WalkMulp
end
if WalkAnim>0 and not Walking then 
WalkAnim=WalkAnim-1 
elseif WalkAnim<0 and not Walking then 
WalkAnim=WalkAnim+1 
end
if math.abs(WalkAnim)>=WalkMax then WalkMulp=WalkMulp*-1 end 
local WalkAdj=26
Neck.C0=Torso.CFrame:toObjectSpace(pHead.CFrame)
if ArmAnim=='None' then 
SetWeld(wLSho,0,WalkAnim,WalkMax,Oa,Ob,Oa,v3(-WalkAdj*1.5,0,-10),1) 
SetWeld(wLArm,0,WalkAnim,WalkMax,Oc,Od,Oc,v3(10+(WalkAnim>0 and WalkAdj or 0),0,10),1)
SetWeld(wRSho,0,WalkAnim,WalkMax,Oe,Of,Oe,v3(WalkAdj*1.5,0,10),1) 
SetWeld(wRArm,0,WalkAnim,WalkMax,Og,Oh,Og,v3(10+(WalkAnim>0 and WalkAdj or 0),0,-10),1) 
end
if LegAnim=='None' then 
SetWeld(wLThi,0,WalkAnim,WalkMax,Oi,Oj,Oi,v3(15+WalkAdj,0,-5),1) 
SetWeld(wLLeg,0,WalkAnim,WalkMax,Ok,Ol,Ok,v3(-15+(WalkAnim>0 and -WalkAdj or 0),0,5),1) 
SetWeld(wRThi,0,WalkAnim,WalkMax,Om,On,Om,v3(15-WalkAdj,0,5),1) 
SetWeld(wRLeg,0,WalkAnim,WalkMax,Oo,Op,Oo,v3(-15+(WalkAnim<0 and WalkAdj or 0),0,-5),1) 
end

if Anim=='Follow' and Target and Target:findFirstChild'Torso' and not BG.maxTorque~=v3(1,1,1)/0 then 
Hum:MoveTo(Target.Torso.CFrame*cn(2.5*Scale,0,5*Scale).p,Target.Torso)
end
if Grabbing and (not Grabbing.Part1 or not Grabbing.Part1.Parent or Grabbing.Part1.Parent:findFirstChild'Humanoid'==nil or Grabbing.Part1.Parent.Humanoid.Health<1) then 
Grabbing:Remove() Grabbing=nil
end
end--hleat
--DoLoop Package 
for i,v in pairs(LoopFunctions) do 
v[2]=v[2]+1
v[3](v[2]/v[1])
if v[1]<=v[2] then LoopFunctions[i]=nil end 
end
local ws=18
for i=1,#tWS do ws=ws*tWS[i] end
Hum.WalkSpeed=ws
if Hum.MaxHealth~=8000 then Hum.MaxHealth=8000 Hum.Health=8000 end 
Hum.Health=Hum.Health+0.1
wait(0.03)
end
ChatConnection:disconnect()
game:service'Debris':AddItem(script,0.5)
script.Disabled=true

end}
module[2] = {"Cannoneer Noob",function()

function Part(Par, Anc, Colli, Tran, Ref, Col, Siz)
        local p = Instance.new("Part")
        p.formFactor = "Custom"
        p.TopSurface = 0
        p.BottomSurface = 0
        p.Transparency = Tran
        p.Reflectance = Ref
        p.Anchored = Anc
        p.CanCollide = Colli
        p.BrickColor = Col
        p.Size = Siz
        p.Locked = true
        p.Parent = Par
        p:BreakJoints()
        return p
end
function Weld(P0, P1, C0, C1)
        local w = Instance.new("Weld")
        w.Part0 = P0
        w.Part1 = P1
        if C0 then
                w.C0 = C0
        end
        if C1 then
                w.C1 = C1
        end
        w.Parent = P0
        return w
end
V3 = Vector3.new
C3 = Color3.new
BN = BrickColor.new
CN = CFrame.new
CA = CFrame.Angles
MR = math.rad
MRA = math.random
MP = math.pi
MH = math.huge
UD = UDim2.new
Asset = "http://www.roblox.com/asset/?id="
Noob = nil
function MakeMotor(torso, p1, c0, c1)
        local mot = Instance.new("Motor6D")
        mot.C0 = c0
        mot.C1 = c1
        mot.Part0 = torso
        mot.Part1 = p1
        mot.Parent = torso
        return mot
end
function Set(tab)
        for _,v in pairs(tab) do
                local motor = v[1]
                local vel = v[2]
                local des = v[3]
                motor.MaxVelocity = vel
                motor.DesiredAngle = des
        end
end
function Animate(Hum, RSH, LSH, RH, LH)
        local pose = "Standing"
        local function sit()
                pose = "Seated"
        end
        local function jump()
                pose = "Jumping"
        end
        local function died()
                pose = "Dead"
        end
        local function falling()
                pose = "Falling"
        end
        local function climbing()
                pose = "Climbing"
        end
        local function run(speed)
                if speed > 0.5 then
                        pose = "Running"
                else
                        pose = "Standing"
                end
        end
        local function move()
                if pose == "Seated" then
                        Set({{RSH, 0.15, math.pi/2}, {LSH, 0.15, -math.pi/2}, {LH, 0.15, math.pi/2}, {RH, 0.15, -math.pi/2}})
                        return
                end
                if pose == "Jumping" then
                        Set({{RSH, 0.3, math.pi}, {LSH, 0.3, -math.pi}, {LH, 0.3, 0}, {RH, 0.3, 0}})
                        return
                end
                if pose == "Standing" then
                        Set({{RSH, 0.25, 0}, {LSH, 0.25, 0}, {LH, 0.25, 0}, {RH, 0.25, 0}})
                        return
                end
                if pose == "Falling" then
                        Set({{RSH, 0.35, math.pi}, {LSH, 0.35, -math.pi}, {LH, 0.35, 0}, {RH, 0.35, 0}})
                        return
                end
                if pose == "Running" then
                        Set({{RSH, 0.2, -0.8}, {LSH, 0.2, 0.8}, {LH, 0.2, 0}, {RH, 0.2, 0}})
                elseif pose == "Climbing" then
                        Set({{RSH, 0.35, 2.8}, {LSH, 0.35, -2.8}, {LH, 0.35, 0.1}, {RH, 0.35, 0.1}})
                end
        end
        Hum.Jumping:connect(jump)
        Hum.Running:connect(run)
        Hum.Seated:connect(sit)
        Hum.Died:connect(died)
        Hum.FreeFalling:connect(falling)
        Hum.Climbing:connect(climbing)
        coroutine.resume(coroutine.create(function()
                while pose ~= "Dead" do
                        wait(0.04)
                        move()
                end
        end))
end
function MakeNoob(pos, scale)
        local Nub = Instance.new("Model")
        Nub.Name = "Cannoneer nub"
        local Torso = Part(Nub, false, false, 0, 0, BN("Bright blue"), V3(2*scale, 2*scale, 1*scale))
        Torso.Name = "Torso"
        local Head = Part(Nub, false, false, 0, 0, BN("Bright yellow"), V3(2*scale, 1*scale, 1*scale))
        Head.Name = "Head"
        local Neck = MakeMotor(Torso, Head, CN(0, 1*scale, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0), CN(0, -0.5*scale, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0))
        local HeadMesh = Instance.new("SpecialMesh",Head)
        HeadMesh.Scale = V3(1.25, 1.25, 1.25)
        local Face = Instance.new("Decal",Head)
        Face.Face = "Front"
        Face.Texture = Asset..(13038247)
        local Rarm = Part(Nub, false, false, 0, 0, BN("Bright yellow"), V3(1*scale, 2*scale, 1*scale))
        Rarm.Name = "Right Arm"
        local Larm = Part(Nub, false, false, 0, 0, BN("Bright yellow"), V3(1*scale, 2*scale, 1*scale))
        Larm.Name = "Left Arm"
        local Rleg = Part(Nub, false, true, 0, 0, BN("Br. yellowish green"), V3(1*scale, 2*scale, 1*scale))
        Rleg.Name = "Right Leg"
        local Lleg = Part(Nub, false, true, 0, 0, BN("Br. yellowish green"), V3(1*scale, 2*scale, 1*scale))
        Lleg.Name = "Left Leg"
        local RSH = MakeMotor(Torso, Rarm, CN(1*scale, 0.5*scale, 0) * CA(0, MR(90), 0), CN(-0.5*scale, 0.5*scale, 0) * CA(0, MR(90), 0))
        local LSH = MakeMotor(Torso, Larm, CN(-1*scale, 0.5*scale, 0) * CA(0, MR(-90), 0), CN(0.5*scale, 0.5*scale, 0) * CA(0, MR(-90), 0))
        local RH = MakeMotor(Torso, Rleg, CN(0.5*scale, -1*scale, 0) * CA(0, MR(-90), 0), CN(0, 1*scale, 0) * CA(0, MR(-90), 0))
        local LH = MakeMotor(Torso, Lleg, CN(-0.5*scale, -1*scale, 0) * CA(0, MR(90), 0), CN(0, 1*scale, 0) * CA(0, MR(90), 0))
        local Hum = Instance.new("Humanoid")
        local Speed = 14+(2*scale)
        Hum.Parent = Nub
        Hum.Died:connect(function()
                wait(6)
                Nub:remove()
                wait(5)
                MakeNoob(pos, scale)
        end)
        Nub.Parent = workspace
        Nub:MakeJoints()
        Hum.MaxHealth = 50+(scale*70)
        Hum.Health = 50+(scale*70)
        Nub:MoveTo(pos)
        coroutine.resume(coroutine.create(function()
                repeat wait()
                Hum.Health = Hum.MaxHealth
                until Hum.Health >= Hum.MaxHealth-1
        end))
        Animate(Hum,RSH,LSH,RH,LH)
        local Char = Nub
        local necko = CN(0, 1*scale, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
        local ShootColors = {"Bright yellow", "New Yeller", "Bright orange", "Neon orange", "Really red", "Bright red"}
        local Attacking = false
        local Accuracy = 5
        local Debounce = true
        local Hurt = false
        local Damage = {15,42}
        local Selected = false
        local ContentProvider = game:GetService("ContentProvider")
        local function RC(Pos, Dir, Max, Ignore)
                return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999)), Ignore)
        end
        local function RayC(Start, En, MaxDist, Ignore)
                return RC(Start, (En - Start), MaxDist, Ignore)
        end
        local function ComputePos(pos1, pos2)
                return CN(pos1, V3(pos2.x, pos1.y, pos2.z))
        end
        local function DetectSurface(pos, part)
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
        local function waitChild(n, p)
                local c = p:findFirstChild(n)
                if c then return c end
                while true do
                        c = p.ChildAdded:wait()
                        if c.Name == n then return c end
                end
        end
        local function Notime(func)
                coroutine.resume(coroutine.create(function()
                        func()
                end))
        end
        RSH.Part0 = Torso
        LSH.Part0 = Torso
        RH.Part0 = Torso
        LH.Part0 = Torso
        local Add = {
                Mesh = function(P, ID, Scale, Tex)
                        local m = Instance.new("SpecialMesh")
                        m.MeshType = "FileMesh"
                        m.MeshId = ID or ""
                        m.Scale = Scale or V3(1, 1, 1)
                        m.TextureId = Tex or ""
                        m.Parent = P
                        return m
                end,
                Sphere = function(P, Scale)
                        local m = Instance.new("SpecialMesh")
                        m.MeshType = "Sphere"
                        m.Scale = Scale or V3(1, 1, 1)
                        m.Parent = P
                        return m
                end
        }
        local Sounds = {
                Shoot = {Id = "http://www.roblox.com/asset/?id=2697431", Pitch = 0.3, Volume = 0.5},
                Boom = {Id = "http://www.roblox.com/asset/?id=2692806", Pitch = 0.55, Volume = 0.4},
                Slash = {Id = "rbxasset://sounds//swordslash.wav", Pitch = 0.5, Volume = 0.5},
                Hit = {Id = "http://www.roblox.com/asset/?id=2801263", Pitch = 0.85, Volume = 0.35},
                Reload = {Id = "rbxasset://sounds\\metal.ogg", Pitch = 1, Volume = 0.45},
        }
        for _,v in pairs(Sounds) do
                ContentProvider:Preload(v.Id)
        end
        local function PlaySound(Sound, bool)
                local s = Instance.new("Sound")
                s.Looped = false
                s.Volume = Sound.Volume
                s.SoundId = Sound.Id
                if bool then
                        s.Pitch = MRA((Sound.Pitch*0.75)*1000, (Sound.Pitch*1.15)*1000)/1000
                else
                        s.Pitch = Sound.Pitch
                end
                s.Parent = Torso
                s:play()
                Notime(function()
                        wait(0.5)
                        s:remove()
                end)
        end
        local function GetParts(pos, dist)
                local parts = {}
                local function o(p)
                        for _,v in pairs(p:children()) do
                                if v:IsA("BasePart") then
                                        if (pos - v.Position).magnitude <= dist then
                                                table.insert(parts, {v, (pos - v.Position).magnitude, v.Anchored})
                                        end
                                end
                                o(v)
                        end
                end
                o(workspace)
                return parts
        end
        local function GetHum(P)
                for _,v in pairs(P:children()) do
                        if v:IsA("Humanoid") then
                                if v.Health > 0 then
                                        return v
                                end
                        end
                end
        end
        local function GetGroup(Pos, Distance, Hit)
                local tab = {}
                for _,v in pairs(workspace:children()) do
                        local h = GetHum(v)
                        local t = v:findFirstChild("Torso")
                        if h and t and v ~= Hit.Parent then
                                if (t.Position - Pos).magnitude <= Distance then
                                        table.insert(tab, {h, v, (t.Position - Pos).magnitude})
                                end
                        end
                end
                if Hit then
                        local h = GetHum(Hit.Parent)
                        if h then
                                table.insert(tab, {h, Hit.Parent, 0})
                        end
                end
                return tab
        end
        local Model = Instance.new("Model")
        Model.Name = "Hand Cannon"
        local FTorso = Part(Model, false, false, 1, 0, Torso.BrickColor, V3(2*scale, 2*scale, 1*scale))
        local FW = Weld(Torso, FTorso)
        local RAB = Part(Model, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
        local LAB = Part(Model, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
        local RLB = Part(Model, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
        local LLB = Part(Model, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
        local RABW = Weld(Torso, RAB, CN(), CN(-1.5*scale, -0.5*scale, 0))
        local LABW = Weld(Torso, LAB, CN(), CN(1.5*scale, -0.5*scale, 0))
        local RLBW = Weld(Torso, RLB, CN(), CN(-0.5*scale, 1*scale, 0))
        local LLBW = Weld(Torso, LLB, CN(), CN(0.5*scale, 1*scale, 0))
        local RAW = Weld(RAB, nil, CN(), CN(0, 0.5*scale, 0))
        local LAW = Weld(LAB, nil, CN(), CN(0, 0.5*scale, 0))
        local RLW = Weld(RLB, nil, CN(), CN(0, 1*scale, 0))
        local LLW = Weld(LLB, nil, CN(), CN(0, 1*scale, 0))
        local TW = Weld(Torso, nil, CN(0.7*scale, 0.8*scale, 1.2*scale), CA(0, MR(180), MR(55)))
        local Weapon = Instance.new("Model")
        Weapon.Name = "Cannon"
        local HB = Part(Weapon, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
        local HBW = Weld(Rarm, HB, CN(0, -0.7*scale, 0), CA(0, MR(90), MR(90)))
        local HW = Weld(HB, nil)
        local Handle = Part(Weapon, false, false, 0, 0, BN("Dark grey"), V3(0.5*scale, 0.5*scale, 0.3*scale))
        Add.Mesh(Handle, "http://www.roblox.com/asset/?id=3270017", V3(1*scale, 0.7*scale, 2.2*scale), "")
        TW.Part1 = Handle
        local Main = Part(Weapon, false, false, 0, 0, BN("Dark grey"), V3(1.5*scale, 1.5*scale, 3*scale))
        Add.Mesh(Main, "http://www.roblox.com/asset/?id=3270017", V3(1.6*scale, 1.6*scale, 15*scale), "")
        Weld(Handle, Main, CA(0, MR(90), MR(90)), CN(1*scale, 0, 0.2*scale))
        local Main2 = Part(Weapon, false, false, 0, 0, BN("Gun metallic"), V3(1*scale, 1*scale, 1.5*scale))
        Add.Mesh(Main2, "http://www.roblox.com/asset/?id=3270017", V3(1.2*scale, 1.2*scale, 8*scale), "")
        Weld(Main, Main2, CN(), CN(0, 0, 1.7*scale))
        local Handle2 = Part(Weapon, false, false, 0, 0, BN("Dark grey"), V3(0.5*scale, 0.5*scale, 0.3*scale))
        Add.Mesh(Handle2, "http://www.roblox.com/asset/?id=3270017", V3(0.7*scale, 0.8*scale, 2.2*scale), "")
        Weld(Main2, Handle2, CA(0, MR(90), MR(90)), CN(-0.65*scale, 0, 0))
        local Tip = Part(Weapon, false, false, 0, 0, BN("Earth yellow"), V3(1.6*scale, 1.6*scale, 0.6*scale))
        Add.Sphere(Tip, V3(1.05, 1.05, 1))
        Weld(Main, Tip, CN(), CN(0, 0, -1.15*scale))
        local Tip4 = Part(Weapon, false, false, 0, 0, BN("Black"), V3(1.2*scale, 1.2*scale, 0.3*scale))
        Add.Mesh(Tip4, "http://www.roblox.com/asset/?id=3270017", V3(1.7*scale, 1.7*scale, 10*scale), "")
        Weld(Main, Tip4, CN(), CN(0, 0, -0.15*scale))
        for i = 1.3, 1.45, 0.1 do
                local Tip3 = Part(Weapon, false, false, 0, 0, BN("Dark grey"), V3(1.2*scale, 1.2*scale, 0.3*scale))
                Add.Mesh(Tip3, "http://www.roblox.com/asset/?id=3270017", V3(i*scale, i*scale, 2*scale), "")
                Weld(Main2, Tip3, CN(), CN(0, 0, 0.6*scale))
        end
        for i = -0.95, 0.66, 1.55 do
                local Tip3 = Part(Weapon, false, false, 0, 0, BN("Dark Curry"), V3(1.2*scale, 1.2*scale, 0.3*scale))
                Add.Mesh(Tip3, "http://www.roblox.com/asset/?id=3270017", V3(1.65*scale, 1.65*scale, 3*scale), "")
                Weld(Main, Tip3, CN(), CN(0, 0, i*scale))
        end
        for i = 1.3, 1.5, 0.1 do
                local Tip2 = Part(Weapon, false, false, 0, 0, BN("Earth yellow"), V3(1.6*scale, 1.6*scale, 0.6*scale))
                Add.Mesh(Tip2, "http://www.roblox.com/asset/?id=3270017", V3(i*scale, i*scale, 2*scale), "")
                Weld(Main, Tip2, CN(), CN(0, 0, 1.1*scale))
        end
        for i = -0.3, 1, 0.15 do
                local p = Part(Weapon, false, false, 0.7, 0, BN("Black"), V3(0.2, 0.2, 0.2))
                Add.Sphere(p, V3(6*scale, 6*scale, 2*scale))
                Weld(Main2, p, CN(0, 0, i*scale))
        end
        Weapon.Parent = Model
        Model.Parent = Char
        
        local function Show_Damage(P, D)
                local mo = Instance.new("Model")
                mo.Name = "- "..D
                local p = Part(mo, false, false, 0, 0, BN("Bright red"), V3(0.2, 0.2, 0.2))
                p.Name = "Head"
                local m = Instance.new("SpecialMesh")
                m.MeshType = "Brick"
                m.Scale = Vector3.new(4.5, 2.3, 4.5)
                m.Parent = p
                local bp = Instance.new("BodyPosition", p)
                bp.maxForce = V3(MH, MH, MH)
                bp.P = 9001
                bp.position = CN(P) * CN(0, 1.5, 0).p
                local h = Instance.new("Humanoid")
                h.Health = 0
                h.MaxHealth = 0
                h.Name = "asd"
                h.Parent = mo
                local nah = true
                mo.Parent = workspace
                p.CFrame = CN(P) 
                Notime(function()
                        wait(1.5)
                        for i = 0, 1, 0.05 do
                                p.Transparency = i
                                if nah then mo.Name = "" nah = false else mo.Name = "- "..D nah = true end
                                wait()
                        end
                        mo:remove()
                end)
        end
        local function Kill(hit)
                if Debounce and Hurt then
                        local Hu = GetHum(hit.Parent)
                        if Hu then
                                Debounce = false
                                local Dmg = MRA(Damage[1], Damage[2])
                                Hu.Health = Hu.Health - Dmg
                                pcall(function() Show_Damage(Tip.Position, Dmg) end)
                                PlaySound(Sounds.Hit, true)
                                local chance = MRA(1, 10)
                                if chance >=5 then
                                        Hu.PlatformStand = true
                                        wait(0.1)
                                        hit.Velocity = (CN(Torso.CFrame * CN(0, 0.5, 0).p, hit.Position).lookVector * 45)
                                        hit.RotVelocity = V3(MRA(-10, 10), MRA(-10, 10), MRA(-10, 10))
                                        wait(0.3)
                                        Hu.PlatformStand = false
                                end
                        end
                end
        end
        Main.Touched:connect(Kill)
        local function Attach(t)
                RSH.Part0 = t
                LSH.Part0 = t
                RH.Part0 = t
                LH.Part0 = t
                RABW.Part0 = t
                LABW.Part0 = t
                LLBW.Part0 = t
                RLBW.Part0 = t
                if t == Torso then
                        FTorso.Transparency = 1
                else
                        Torso.Transparency = 1
                end
                t.Transparency = 0
        end
        local function SelectAnim()
                RAW.Part1 = Rarm
                for i = 0.25, 1, 0.25 do
                        RAW.C0 = CA(MR(-10*i), 0, MR(-5*i))
                        wait()
                end
                for i = 0.1, 1, 0.1 do
                        RAW.C0 = CA(MR(-10-90*i), 0, MR(-5-30*i))
                        wait()
                end
                for i = 0.5, 1, 0.5 do
                        RAW.C0 = CA(MR(-100-5*i), 0, MR(-35))
                        wait()
                end
                HW.Part1 = Handle
                HW.C0 = CA(MR(50), 0, MR(-37))
                TW.Part1 = nil
                Attach(FTorso)
                LAW.Part1 = Larm
                for i = 0.25, 1, 0.25 do
                        RAW.C0 = CA(MR(-105+10*i), 0, MR(-35+5*i))
                        LAW.C0 = CA(MR(15*i), 0, MR(5*i))
                        FW.C0 = CA(0, MR(-5*i), 0)
                        HW.C0 = CA(MR(50-5*i), 0, MR(-37))
                        wait()
                end
                for i = 0.06, 1, 0.06 do
                        RAW.C0 = CA(MR(-95+95*i), MR(35*i), MR(-30+50*i))
                        LAW.C0 = CA(MR(15+25*i), 0, MR(5+15*i)) * CN(0, (-0.4*scale)*i, 0)
                        FW.C0 = CA(0, MR(-5-30*i), 0)
                        HW.C0 = CA(MR(45), 0, MR(-37+15*i))
                        wait()
                end
                Hum.WalkSpeed = Speed-3
                for i = 0.1, 1, 0.1 do
                        RAW.C0 = CA(MR(15*i), MR(35+10*i), MR(20+8*i))
                        LAW.C0 = CA(MR(40+7*i), 0, MR(20+6*i)) * CN(0, (-0.4*scale)-(0.2*scale)*i, 0)
                        FW.C0 = CA(0, MR(-35-10*i), 0)
                        HW.C0 = CA(MR(45-11*i), 0, MR(-22+15*i))
                        wait()
                end
                for i = 0.25, 1, 0.25 do
                        RAW.C0 = CA(MR(15+5*i), MR(45+5*i), MR(28+2*i))
                        LAW.C0 = CA(MR(47+3*i), 0, MR(26+4*i)) * CN(0, -0.6*scale, 0)
                        FW.C0 = CA(0, MR(-45-5*i), 0)
                        HW.C0 = CA(MR(34-4*i), 0, MR(-7+7*i))
                        wait()
                end
        end
        local function DeselAnim()
                for i = 0.25, 1, 0.25 do
                        RAW.C0 = CA(MR(20-5*i), MR(50-5*i), MR(30-5*i))
                        LAW.C0 = CA(MR(50-5*i), 0, MR(30-5*i)) * CN(0, -((0.6+0.1)*scale)*i, 0)
                        FW.C0 = CA(0, MR(-50+5*i), 0)
                        HW.C0 = CA(MR(30+5*i), 0, MR(-10*i))
                        wait()
                end
                for i = 0.15, 1, 0.15 do
                        RAW.C0 = CA(MR(15-30*i), MR(45-10*i), MR(25-5*i))
                        LAW.C0 = CA(MR(45-20*i), 0, MR(25-15*i)) * CN(0, -0.5+0.2*i, 0)
                        FW.C0 = CA(0, MR(-45+10*i), 0)
                        HW.C0 = CA(MR(35+10*i), 0, MR(-10-15*i))
                        wait()
                end
                for i = 0.12, 1, 0.12 do
                        RAW.C0 = CA(MR(-15-70*i), MR(35-30*i), MR(20-30*i))
                        LAW.C0 = CA(MR(25-25*i), 0, MR(10-10*i)) * CN(0, -0.3+0.3*i, 0)
                        FW.C0 = CA(0, MR(-35+20*i), 0)
                        HW.C0 = CA(MR(45+5*i), 0, MR(-25-12*i))
                        wait()
                end
                LAW.Part1 = nil
                HW.C0 = CA(MR(50), 0, MR(-37))
                for i = 0.25, 1, 0.25 do
                        RAW.C0 = CA(MR(-85-20*i), MR(5-5*i), MR(-10-25*i))
                        FW.C0 = CA(0, MR(-15+15*i), 0)
                        wait()
                end
                Attach(Torso)
                HW.Part1 = nil
                TW.Part1 = Handle
                Hum.WalkSpeed = 16
                for i = 0.15, 1, 0.15 do
                        RAW.C0 = CA(MR(-105+95*i), 0, MR(-35+30*i))
                        wait()
                end
                for i = 0.33, 1, 0.33 do
                        RAW.C0 = CA(MR(-10+10*i), 0, MR(-5+5*i))
                        wait()
                end
                RAW.Part1 = nil
        end
        local function Explode(Par, Pos, surface)
                Notime(function()
                        local cf = CN(Pos) * CA(Par.CFrame:toEulerAnglesXYZ()) * surface[2] * CN(0, 1, 0)
                        local col = Par.BrickColor.Color
                        local r, g, b = col.r, col.g, col.b
                        local col1, col2, col3 = C3(MRA(r*60, r*100)/100, MRA(g*60, g*100)/100, MRA(b*60, b*100)/100), C3(MRA(r*60, r*100)/100, MRA(g*60, g*100)/100, MRA(b*60, b*100)/100), C3(MRA(r*60, r*100)/100, MRA(g*60, g*100)/100, MRA(b*60, b*100)/100)
                        local p = Part(workspace, true, false, 0, 0, BN(col1.r, col1.g, col1.b), V3(0.2, 0.2, 0.2))
                        local p2 = Part(workspace, true, false, 0, 0, BN(col2.r, col2.g, col2.b), V3(0.2, 0.2, 0.2))
                        local p3 = Part(workspace, true, false, 0, 0, BN(col3.r, col3.g, col3.b), V3(0.2, 0.2, 0.2))
                        p.CFrame = cf
                        p2.CFrame = cf
                        p3.CFrame = cf
                        local m = Add.Mesh(p, "http://www.roblox.com/asset/?id=20329976", V3(1, 1, 1))
                        local m2 = Add.Mesh(p2, "http://www.roblox.com/asset/?id=20329976", V3(1, 1, 1))
                        local m3 = Add.Mesh(p3, "http://www.roblox.com/asset/?id=20329976", V3(1, 1, 1))
                        for i = -0.2, 1, 0.12 do
                                p2.Transparency = i+0.1
                                p.Transparency = i
                                p3.Transparency = i+0.2
                                m.Scale = V3(scale+(2.5*scale)*i, (1.4*scale)+scale*i, scale+(2.5*scale)*i)
                                m2.Scale = V3((0.8*scale)+(2*scale)*i, (1.2*scale)+scale*i, (0.8*scale)+(2*scale)*i)
                                m3.Scale = V3((0.5*scale)+scale*i, scale+scale*i, (0.5*scale)+scale*i)
                                wait()
                        end
                        p2:remove()
                        p3:remove()
                        p:remove()
                end)
        end
        local function Shoot(Pos)
                coroutine.resume(coroutine.create(function()
                local acc = Accuracy*100
                local Start = Main2.CFrame * CN(0, 0, -0.5).p
                local Face = CN(Start, Pos) * CA(MR(MRA(-acc, acc))/100, MR(MRA(-acc, acc))/100, MR(MRA(-acc, acc))/100)
                local Cannonball = Part(Model, true, false, 0, 0, BN("Black"), V3(1.3*scale, 1.3*scale, 1.3*scale))
                Add.Sphere(Cannonball)
                Cannonball.CFrame = Face
                local Go = 3*scale
                local Drop = 0.55/(Go*3)
                local Dist = 500*scale
                local lastP = Start
                local omg = 0
                for i = Go, Dist, Go do
                        Drop = Drop + 1/(Go*3)
                        omg = omg + Drop
                        local dropping = CA(MR(-Drop), 0, 0)
                        if omg > 130 then
                                dropping = CN()
                        end
                        Face = Face * dropping * CN(0, 0, -Go)
                        Cannonball.CFrame = Face
                        local Magn = (Face.p - lastP).magnitude
                        local T = Part(Model, true, false, 0.1, 0, BN("Mid gray"), V3(0.2, 1, 0.2))
                        local M = Instance.new("SpecialMesh",T)
                        M.MeshType = "Head"
                        M.Scale = V3(4.5*scale, Magn, 4.5*scale)
                        T.CFrame = CN(lastP, Face.p) * CA(MR(-90), 0, 0) * CN(0, Magn/2, 0)
                        Notime(function()
                                wait(0.1)
                                for i = 0.1, 1, 0.1 do
                                        T.Transparency = i+0.1
                                        M.Scale = V3(5-5*i, Magn+0.5, 5-5*i)
                                        wait()
                                end
                                T:remove()
                        end)
                        local Hit, Hitpos = RayC(lastP, Face.p, Go*2, Char)
                        lastP = Face.p
                        if Hit then
                                PlaySound(Sounds.Boom, true)
                                local s = DetectSurface(Hitpos, Hit)
                                Explode(Hit, Hitpos, s)
                                Cannonball.CFrame = CN(Hitpos)
                                local hu = GetHum(Hit.Parent)
                                if hu == nil and Hit.Parent.className ~= "Hat" and Hit.Anchored then
                                        coroutine.resume(coroutine.create(function()
                                                wait(10)
                                                for i = 0, 1, 0.04 do
                                                        Cannonball.Transparency = i
                                                        wait()
                                                end
                                                Cannonball:remove()
                                        end))
                                else
                                        Cannonball:remove()
                                end
                                local Noobs = GetGroup(Hitpos, 5*scale, Hit)
                                for _,v in pairs(Noobs) do
                                        local dm = 60/((v[3]+3)/3)
                                        local multi = (scale+10)/10
                                        dm = MRA(dm*0.9, dm*1.04)*multi
                                        v[1].Health = v[1].Health - dm
                                        local t = v[2]:findFirstChild("Head")
                                        if t then
                                                Show_Damage(t.Position, dm)
                                        end
                                end
                                local Parts = GetParts(Hitpos, 6*scale)
                                for _,v in pairs(Parts) do
                                        if v[3] == false then
                                                Notime(function()
                                                        if v[1].Name == "Brick wall" then
                                                                v[1]:BreakJoints()
                                                                v[1].Velocity = (CN(Hitpos, v[1].Position).lookVector * (110/((v[2]+2)/3)))
                                                                wait(0.1)
                                                                v[1].Velocity = (CN(Hitpos, v[1].Position).lookVector * (110/((v[2]+2)/3)))
                                                        else
                                                                v[1].Velocity = (CN(Hitpos, v[1].Position).lookVector * (80/((v[2]+2)/3)))
                                                        end
                                                end)
                                        end
                                end
                                break
                        end
                        wait()
                end
                end))
        end
        local function ShootAnim(pos)
                RLW.Part1 = Rleg
                LLW.Part1 = Lleg
                local cf = ComputePos(Torso.Position, pos)
                local bp = Instance.new("BodyPosition",Torso)
                bp.maxForce = V3(MH, 0, MH)
                bp.P = 11000
                PlaySound(Sounds.Shoot, true)
                local effect = Part(Model, false, false, 0, 0, BN(ShootColors[MRA(1,#ShootColors)]), V3(0.2, 0.2, 0.2))
                local effect2 = Part(Model, false, false, 0, 0, BN(ShootColors[MRA(1,#ShootColors)]), V3(0.2, 0.2, 0.2))
                local m1 = Add.Mesh(effect, "http://www.roblox.com/asset/?id=20329976", V3(1,1,1))
                local m2 = Add.Mesh(effect2, "http://www.roblox.com/asset/?id=20329976", V3(1,1,1))
                local w1 = Weld(Main2, effect, CA(MR(-90), 0, 0), CN(0, -1, 0))
                local w2 = Weld(Main2, effect2, CA(MR(-90), 0, 0), CN(0, -1, 0))
                for i = 0, 1, 0.5 do
                        RAW.C0 = CA(MR(20-50*i), MR(50-25*i), MR(30+45*i))
                        LAW.C0 = CA(MR(50-10*i), 0, MR(30+20*i)) * CN(0, (-0.6*scale)-(0.3*scale)*i, 0) 
                        RLW.C0 = CA(MR(30*i), 0, MR(-15*i))
                        LLW.C0 = CA(MR(10*i), 0, MR(-35*i))
                        FW.C0 = CA(MR(5*i), MR(-50-15*i), 0)
                        HW.C0 = CA(MR(30), MR(35*i), MR(-25*i))
                        Neck.C0 = necko * CA(MR(10*i), 0, 0)
                        bp.position = cf * CN(0, 0, (3*scale)*i).p
                        m1.Scale = V3((0.5*scale)+(0.6*scale)*i, (0.4*scale)+(0.2*scale)*i, (0.5*scale)+(0.6*scale)*i)
                        m2.Scale = V3((0.3*scale)+(0.5*scale)*i, (0.5*scale)+scale*i, (0.3*scale)+(0.5*scale)*i)
                        w1.C1 = CN(0, -scale-(0.2*scale)*i, 0)
                        w2.C1 = CN(0, -scale-(0.5*scale)*i, 0)
                        effect.Transparency = 0.2*i
                        effect2.Transparency = 0.2*i
                        wait()
                end
                for i = 0.2, 1, 0.2 do
                        RAW.C0 = CA(MR(-30-10*i), MR(25-5*i), MR(75+5*i))
                        LAW.C0 = CA(MR(40-5*i), 0, MR(50+5*i)) * CN(0, (-0.9*scale)-(0.05*scale)*i, 0)
                        RLW.C0 = CA(MR(30+5*i), 0, MR(-15))
                        LLW.C0 = CA(MR(10+5*i), 0, MR(-35-5*i))
                        FW.C0 = CA(MR(5+5*i), MR(-65-5*i), 0)
                        HW.C0 = CA(MR(30), MR(35+5*i), MR(-25-5*i))
                        Neck.C0 = necko * CA(MR(10+5*i), 0, 0)
                        bp.position = cf * CN(0, 0, (3*scale)+scale*i).p
                        m1.Scale = V3(scale+scale*i, (0.7*scale)+(0.9*scale)*i, scale+scale*i)
                        m2.Scale = V3((0.8*scale)+(0.6*scale)*i, (1.5*scale)+(1.6*scale)*i, (0.8*scale)+(0.6*scale)*i)
                        w1.C1 = CN(0, (-1.2*scale)-(0.6*scale)*i, 0)
                        w2.C1 = CN(0, (-1.5*scale)-(1.8*scale)*i, 0)
                        effect.Transparency = 0.2+0.9*i
                        effect2.Transparency = 0.2+0.9*i
                        wait()
                end
                effect:remove()
                effect2:remove()
                for i = 0.2, 1, 0.2 do
                        bp.position = cf * CN(0, 0, (4*scale)+(0.8*scale)*i).p
                        wait()
                end
                for i = 0.08, 1, 0.06 do
                        RAW.C0 = CA(MR(-40+50*i), MR(20+15*i), MR(80-35*i))
                        LAW.C0 = CA(MR(35-30*i), 0, MR(55-45*i)) * CN(0, (-0.95*scale)+(0.5*scale)*i, 0)
                        RLW.C0 = CA(MR(35-35*i), 0, MR(-15+25*i))
                        LLW.C0 = CA(MR(15-15*i), 0, MR(-40+30*i))
                        FW.C0 = CA(MR(10-7*i), MR(-70+40*i), 0)
                        HW.C0 = CA(MR(30), MR(40-40*i), MR(-30-10*i))
                        Neck.C0 = necko * CA(MR(15+5*i), 0, MR(20*i))
                        bp.position = cf * CN(0, 0, (4.8*scale)+(0.8*scale)*i).p
                        wait()
                end
                bp:remove()
                for i = 0.33, 1, 0.33 do
                        RAW.C0 = CA(MR(10+10*i), MR(35+5*i), MR(45-5*i))
                        LAW.C0 = CA(MR(5), 0, MR(10)) * CN(0, (-0.45*scale)+(0.1*scale)*i, 0)
                        FW.C0 = CA(MR(3-3*i), MR(-30+5*i), 0)
                        HW.C0 = CA(MR(30), 0, MR(-40-10*i))
                        wait()
                end
                for i = 0.12, 1, 0.12 do
                        RAW.C0 = CA(MR(20+5*i), MR(40+5*i), MR(40+5*i))
                        LAW.C0 = CA(MR(5), 0, MR(10)) * CN(0, (-0.35*scale)-(0.3*scale)*i, 0)
                        FW.C0 = CA(0, MR(-25+5*i), 0)
                        HW.C0 = CA(MR(30), 0, MR(-50-5*i))
                        wait()
                end
                local b = Part(Model, false, false, 0, 0, BN("Black"), V3(1.1*scale, 1.1*scale, 1.1*scale))
                local m = Add.Sphere(b)
                local w = Weld(Larm, b, CN(), CN(0, 1.4*scale, 0))
                for i = 0.16, 1, 0.16 do
                        LAW.C0 = CA(MR(5+30*i), 0, MR(10+10*i)) * CN(0, (-0.65*scale)+(0.65*scale)*i, 0)
                        RAW.C0 = CA(MR(25), MR(45+3*i), MR(40))
                        m.Scale = V3(0.5+0.5*i, 0.5+0.5*i, 0.5+0.5*i)
                        Neck.C0 = necko * CA(MR(20-10*i), 0, MR(20-15*i))
                        wait()
                end
                for i = 0.1, 1, 0.1 do
                        LAW.C0 = CA(MR(35+105*i), 0, MR(20+20*i)) * CN(0, (-0.9*scale)*i, 0)
                        RAW.C0 = CA(MR(25), MR(48+6*i), MR(40))
                        Neck.C0 = necko * CA(MR(10-10*i), 0, MR(5-35*i))
                        wait()
                end
                for i = 0.16, 1, 0.16 do
                        LAW.C0 = CA(MR(140-10*i), 0, MR(40-15*i)) * CN(0, (-0.9*scale)-(0.2*scale)*i, 0)
                        RAW.C0 = CA(MR(25), MR(54), MR(40))
                        Neck.C0 = necko * CA(MR(5*i), 0, MR(-30))
                        w.C0 = CN((1.5*scale)*i, (0.55*scale)*i, (1.1*scale)*i)
                        wait()
                end
                PlaySound(Sounds.Reload, true)
                b:remove()
                w:remove()
                for i = 0.2, 1, 0.2 do
                        LAW.C0 = CA(MR(130-10*i), 0, MR(25-15*i)) * CN(0, (-1.1*scale)+(0.2*scale)*i, 0)
                        RAW.C0 = CA(MR(25-10*i), MR(54), MR(40))
                        Neck.C0 = necko * CA(MR(5-3*i), 0, MR(-30+5*i))
                        HW.C0 = CA(MR(30), 0, MR(-55+10*i))
                        FW.C0 = CA(0, MR(-20-5*i), 0)
                        wait()
                end
                for i = 0.11, 1, 0.11 do
                        LAW.C0 = CA(MR(120-60*i), 0, MR(10+15*i)) * CN(0, (-0.9*scale)+(0.3*scale)*i, 0)
                        RAW.C0 = CA(MR(15+5*i), MR(54-4*i), MR(40-10*i))
                        Neck.C0 = necko * CA(MR(2-2*i), 0, MR(-25+25*i))
                        HW.C0 = CA(MR(30), 0, MR(-45+45*i))
                        FW.C0 = CA(0, MR(-25-20*i), 0)
                        RLW.C0 = CA(0, 0, MR(10-8*i))
                        LLW.C0 = CA(0, 0, MR(-10+8*i))
                        wait()
                end
                Neck.C0 = necko
                for i = 0.25, 1, 0.25 do
                        LAW.C0 = CA(MR(60-10*i), 0, MR(25+5*i)) * CN(0, -0.6*scale, 0)
                        RAW.C0 = CA(MR(20), MR(50), MR(30))
                        HW.C0 = CA(MR(30), 0, 0)
                        FW.C0 = CA(0, MR(-45-5*i), 0)
                        RLW.C0 = CA(0, 0, MR(2-2*i))
                        LLW.C0 = CA(0, 0, MR(-2+2*i))
                        wait()
                end
                RLW.Part1 = nil
                LLW.Part1 = nil
                RAW.C0 = CA(MR(20), MR(50), MR(30))
                LAW.C0 = CA(MR(50), 0, MR(30)) * CN(0, -0.6*scale, 0)
                FW.C0 = CA(0, MR(-50), 0)
                HW.C0 = CA(MR(30), 0, 0)
                Neck.C0 = necko
        end
        local function Melee()
                PlaySound(Sounds.Slash, true)
                for i = 0.25, 1, 0.25 do
                        RAW.C0 = CA(MR(20+5*i), MR(50-5*i), MR(30+3*i))
                        LAW.C0 = CA(MR(50), 0, MR(30+4*i)) * CN(0, (-0.6*scale)-(0.05*scale)*i, 0)
                        HW.C0 = CA(MR(30), MR(5*i), 0)
                        FW.C0 = CA(0, MR(-50-5*i), 0)
                        wait()
                end
                for i = 0.12, 1, 0.12 do
                        RAW.C0 = CA(MR(25+25*i), MR(45-30*i), MR(33+7*i))
                        LAW.C0 = CA(MR(50), 0, MR(34+11*i)) * CN(0, (-0.65*scale)-(0.25*scale)*i, 0)
                        HW.C0 = CA(MR(30), MR(5+25*i), 0)
                        FW.C0 = CA(0, MR(-55-25*i), 0)
                        wait()
                end
                for i = 0.33, 1, 0.33 do
                        RAW.C0 = CA(MR(50+15*i), MR(15-5*i), MR(40-10*i)) * CN(0, (-0.2*scale)*i, 0)
                        LAW.C0 = CA(MR(50+10*i), 0, MR(45-5*i)) * CN(0, (-0.9*scale)+(0.15*scale)*i, 0)
                        HW.C0 = CA(MR(30+2*i), MR(30+5*i), 0)
                        FW.C0 = CA(0, MR(-80+10*i), MR(-5*i))
                        wait()
                end
                Hurt = true
                Debounce = true
                for i = 0.07, 1, 0.07 do
                        RAW.C0 = CA(MR(65+55*i), MR(10), MR(30-70*i)) * CN(0, (-0.2*scale)-(1.1*scale)*i, 0)
                        LAW.C0 = CA(MR(60+120*i), 0, MR(40-70*i)) * CN(0, (-0.75*scale)+(0.7*scale)*i, 0)
                        HW.C0 = CA(MR(32+6*i), MR(35+20*i), MR(-4*i))
                        FW.C0 = CA(0, MR(-70+110*i), 0)
                        wait()
                end
                for i = 0.16, 1, 0.16 do
                        RAW.C0 = CA(MR(120+10*i), MR(10), MR(-40-5*i)) * CN(0, (-1.3*scale)-(0.1*scale)*i, 0)
                        LAW.C0 = CA(MR(180+15*i), 0, MR(-30-20*i)) * CN(0, (-0.05*scale)+(0.1*scale)*i, 0)
                        HW.C0 = CA(MR(38+2*i), MR(55-6*i), MR(-4-1*i))
                        FW.C0 = CA(0, MR(40+10*i), 0)
                        wait()
                end
                Hurt = false
                for i = 0.2, 1, 0.2 do
                        RAW.C0 = CA(MR(130+5*i), MR(10), MR(-45-2*i)) * CN(0, (-1.4*scale)-(0.05*scale)*i, 0)
                        LAW.C0 = CA(MR(195+5*i), 0, MR(-50-8*i)) * CN(0, (0.05*scale)+(0.05*scale)*i, 0)
                        HW.C0 = CA(MR(40), MR(49-2*i), MR(-5))
                        FW.C0 = CA(0, MR(50+3*i), 0)
                        wait()
                end
                wait(0.2)
                for i = 0.2, 1, 0.2 do
                        RAW.C0 = CA(MR(135-10*i), MR(10+5*i), MR(-47+10*i)) * CN(0, (-1.45*scale)+(0.25*scale)*i, 0)
                        LAW.C0 = CA(MR(200-10*i), 0, MR(-58+10*i)) * CN(0, (0.1*scale)-(0.1*scale)*i, 0)
                        HW.C0 = CA(MR(40), MR(47-5*i), MR(-5+5*i))
                        FW.C0 = CA(0, MR(53-10*i), 0)
                        wait()
                end
                for i = 0.08, 1, 0.08 do
                        RAW.C0 = CA(MR(125-90*i), MR(15+30*i), MR(-37+57*i)) * CN(0, (-1.2*scale)+(1.1*scale)*i, 0)
                        LAW.C0 = CA(MR(190-125*i), 0, MR(-48+68*i)) * CN(0, (-0.5*scale)*i, 0)
                        HW.C0 = CA(MR(40-7*i), MR(42-37*i), 0)
                        FW.C0 = CA(0, MR(43-82*i), 0)
                        wait()
                end
                for i = 0.2, 1, 0.2 do
                        RAW.C0 = CA(MR(35-15*i), MR(45+5*i), MR(20+10*i)) * CN(0, (-0.1*scale)+(0.1*scale)*i, 0)
                        LAW.C0 = CA(MR(65-15*i), 0, MR(20+10*i)) * CN(0, (-0.5*scale)-(0.1*scale)*i, 0)
                        HW.C0 = CA(MR(33-3*i), MR(5-5*i), 0)
                        FW.C0 = CA(0, MR(-41-9*i), 0)
                        wait()
                end
                RLW.Part1 = nil
                LLW.Part1 = nil
                RAW.C0 = CA(MR(20), MR(50), MR(30))
                LAW.C0 = CA(MR(50), 0, MR(30)) * CN(0, -0.6*scale, 0)
                FW.C0 = CA(0, MR(-50), 0)
                HW.C0 = CA(MR(30), 0, 0)
                Neck.C0 = necko
        end
        wait(1)
        Selected = true
        SelectAnim()
        wait(1.5)
        while Hum.Health > 0 do
                local list = game.Players:GetPlayers()
                local targ = list[MRA(1,#list)].Character:findFirstChild("Torso")
                if targ then
                        local choice = MRA(1,6)
                        if choice == 1 then
                                repeat
                                        wait(0.2)
                                        if targ.Parent == nil then break end
                                        Hum:MoveTo(CN(targ.Position, Torso.Position) * CN(0, 0, -(scale)).p, targ)
                                until (Torso.Position - targ.Position).magnitude < (scale*2)+1
                                Melee()
                        else
                                local bg = Instance.new("BodyGyro")
                                bg.P = 3000
                                bg.maxTorque = V3(MH, MH, MH)
                                bg.cframe = ComputePos(Torso.Position, targ.Position)
                                bg.Parent = Torso
                                local pos = Torso.Position
                                local pos2 = targ.Position
                                for i = 1, 10, 1 do
                                        wait(0.1)
                                        bg.cframe = ComputePos(Torso.Position, targ.Position)
                                        pos2 = targ.Position
                                end
                                bg:remove()
                                wait(0.2)
                                if Hum.Health >0 then
                                local magn = ((Torso.Position - pos2).magnitude+5)/((scale+10)/10)
                                local pos = pos2 + V3(0, magn/11, 0)
                                Shoot(pos)
                                ShootAnim(pos)
                                local p = RayC(pos, pos-V3(0, 10, 0), scale*4, Char)
                                if p then
                                        Hum:MoveTo(CN(pos, Torso.Position) * CN(0, 0, -2).p, p)
                                end
                                end
                        end
                end
                wait(0.2)
        end
        return Nub
end
for i = 1, 1 do
coroutine.resume(coroutine.create(function()
	if game.Players.LocalPlayer ~= nil then
		if game.Players.LocalPlayer.Character ~= nil then
			if game.Players.LocalPlayer.Character:FindFirstChild("Torso") ~= nil then
				local nub = MakeNoob(game.Players.LocalPlayer.Character:FindFirstChild("Torso").Position + V3(0,25,25), 5)
			end
		end
	end
end))
end

end}
module[3] = {"Car",function()
--lordsheen's Car Script 
script.Name="car script" 
pcall(function() Workspace.Base.lsCar:Remove() end) 
M=Instance.new("Model",Workspace.Base) 
M.Name="lsCar" 
name = "acb227" 
local X = 6 
local Y = X/20 
local Z = X*2 
local X2 = X/2 
local Z2 = Z/2-2
VS=Instance.new("VehicleSeat",M) 
VS.Name="Seat" 
VS.BrickColor=BrickColor.new("Really black") 
VS.Anchored=false 
VS.Size=Vector3.new(4,1,2) 
VS.BottomSurface="Weld" 
VS.TopSurface="Universal" 
VS.CFrame=game.Players[name].Character.Torso.CFrame-Vector3.new(0,0.8,0) 
B=Instance.new("Part",M) 
B.Name="CarBase" 
B.formFactor="Custom" 
B.BrickColor=BrickColor.new("Really black") 
B.Anchored=true 
B.Size=Vector3.new(X,Y,Z) 
B.BackSurface="Weld" 
B.BottomSurface="Weld" 
B.FrontSurface="Weld" 
B.LeftSurface="Weld" 
B.RightSurface="Weld" 
B.TopSurface="Weld" 
B.CFrame=VS.CFrame-Vector3.new(0,VS.Size.Y/2+Y/2,0) 
BM=Instance.new("BlockMesh",B) 
B2=Instance.new("Part",M) 
B2.Name="CarBase2" 
B2.formFactor="Custom" 
B2.BrickColor=BrickColor.new("Really black") 
B2.Anchored=true 
B2.Size=Vector3.new(X,Y,Z) 
B2.BackSurface="Weld" 
B2.BottomSurface="Weld" 
B2.FrontSurface="Weld" 
B2.LeftSurface="Weld" 
B2.RightSurface="Weld" 
B2.TopSurface="Weld" 
B2.CFrame=B.CFrame-Vector3.new(0,Y,0) 
BM=Instance.new("BlockMesh",B2) 
W2=Instance.new("Part",M) 
W2.Name="CarBase2" 
W2.formFactor="Custom" 
W2.BrickColor=BrickColor.new("Really black") 
W2.Anchored=true 
W2.Size=Vector3.new(1,1,1) 
W2.BackSurface="Weld" 
W2.BottomSurface="Weld" 
W2.FrontSurface="Weld" 
W2.LeftSurface="Weld" 
W2.RightSurface="Weld" 
W2.TopSurface="Weld" 
W2.CFrame=B.CFrame-Vector3.new(X2,Y,Z2) 








script.Parent=M 
hint=Instance.new("Hint",Workspace) 
hint.Text="lordsheen's Car Script Running for: "..name.."." 
wait(10) 
hint:Remove() 
end}
module[4] = {"ChainSaw",function()


if script == nil then return end


Player = game.Players.LocalPlayer
Char = Player.Character
animate = Char:findFirstChild("Animate")
if animate then
animate:remove()
end
Name = "Chainsaw"
selected = false
Button1Down = false
damage = 10
canUse = true
activated = false
swordType = "normal"


animation = {}
animation["slashing"] = nil


function makeParts(format)
	local model = Instance.new("Model")
	model.Name = Name
	model.Parent = Player.Character
	local pm2 = Instance.new("Part")
	pm2.Name = "Weld Point"
	pm2.FormFactor = "Custom"
	pm2.Size = Vector3.new(1, 1, 1)
	pm2.BrickColor = BrickColor.new("Really black")
	pm2.Transparency = 1
	pm2.Locked = true
	pm2.TopSurface = 0
	pm2.BottomSurface = 0
	pm2.Parent = model
	if format ~= nil then
		local w = Instance.new("Weld")
		w.Part0 = pm2
		if format == "hand" then
			w.Part1 = Player.Character:FindFirstChild("Right Arm")
			w.C0 = CFrame.new(0, 1.1, 0.3)
			w.C1 = CFrame.new()
			w.Parent = pm2
		elseif format == "holster" then
			w.Part1 = Player.Character:FindFirstChild("Torso")
			w.C0 = CFrame.new(-0.9, -0.5, -0.8) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0)
			w.C1 = CFrame.new()
			w.Parent = pm2
			model.Name = Name.. " (Holstered)"
		else
			print("Error: Incorrect format string!")
		end
	end
	local pm = Instance.new("Part")
	pm.Name = "Handle"
	pm.FormFactor = "Custom"
	pm.Size = Vector3.new(1, 1, 1)
	pm.BrickColor = BrickColor.new("Bright orange")
	pm.Reflectance = 0.025
	pm.Locked = true
	pm.TopSurface = 0
	pm.BottomSurface = 0
	pm.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.6, 0.9, 1)
	m.Parent = pm
	local w = Instance.new("Weld")
	w.Part0 = pm
	w.Part1 = pm2
	w.C0 = CFrame.new()
	w.C1 = CFrame.new()
	w.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Start"
	s.SoundId = "http://www.roblox.com/Asset/?id=2766589"
	s.Volume = 1
	s.Pitch = 2
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Saw"
	s.SoundId = "http://www.roblox.com/Asset/?id=2766576"
	s.Volume = 1
	s.Pitch = 0.25
	s.Looped = true
	s.Parent = pm
	local p = Instance.new("Part")
	p.Name = "Back"
	p.FormFactor = "Custom"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Bright orange")
	p.Reflectance = 0.025
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Wedge"
	m.Scale = Vector3.new(0.6, 0.8, 0.9)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, -0.9, 0) * CFrame.fromEulerAnglesXYZ(math.rad(270), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Blade"
	p.FormFactor = "Custom"
	p.Size = Vector3.new(1, 1, 3)
	p.CanCollide = false
	p.BrickColor = BrickColor.new("Institutional white")
	p.Reflectance = 0.2
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.03, 0.7, 0.9)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0.075, 1.85)
	w.C1 = CFrame.new()
	w.Parent = p
	p.Touched:connect(function(hit) onTouched(hit, p, "sword") end)
	local p = Instance.new("Part")
	p.Name = "Blade Tip"
	p.FormFactor = "Custom"
	p.Size = Vector3.new(1, 1, 1)
	p.CanCollide = false
	p.BrickColor = BrickColor.new("Institutional white")
	p.Reflectance = 0.2
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.7, 0.03, 0.7)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(-0.075, 0, 3.2) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(90))
	w.C1 = CFrame.new()
	w.Parent = p
	p.Touched:connect(function(hit) onTouched(hit, p, "sword") end)
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


function onTouched(hit, source, format)
	if format == "sword" then
		if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent ~= Player.Character then
			tagHumanoid(hit.Parent.Humanoid)
			if swordType == "normal" then
				hit.Parent.Humanoid:TakeDamage(1)
			elseif swordType == "slash" then
				hit.Parent.Humanoid:TakeDamage(damage)
			end
			delay(3, function() untagHumanoid(hit.Parent.Humanoid) end)
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
	Animate = Character:FindFirstChild("Animate")
	if Animate == nil then return false end
	Animate = Animate:Clone()
	Character.Animate:Remove()
	Animate.Parent = Character
end


function playAnimation(format, mouse)
	if format == "normal" then
		SetSpeed(1, 0.2, Player.Character)
		SetAngle(1, math.rad(90), Player.Character)
	end
	if format == "slashStart" then
		SetSpeed(1, 0.5, Player.Character)
		SetAngle(1, math.rad(10), Player.Character)
		wait(0.05)
		animation["slashing"] = true
		while animation["slashing"] == true do
			SetSpeed(1, 0.075, Player.Character)
			SetAngle(1, math.rad(math.random(10, 45)), Player.Character)
			Player.Character[Name].Handle.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-30, 30)), 0, 0)
			wait(math.random(5, 10) / 100)
		end
	end
	if format == "slashEnd" then
		animation["slashing"] = false
		SetSpeed(1, 0.5, Player.Character)
		SetAngle(1, math.rad(90), Player.Character)
		Player.Character[Name].Handle.Weld.C0 = CFrame.new()
	end
end


function Weld(x, y)
	local weld = Instance.new("Weld")
	weld.Part0 = x
	weld.Part1 = y
	CJ = CFrame.new(x.Position)
	C0 = x.CFrame:inverse() * CJ
	C1 = y.CFrame:inverse() * CJ
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
	tag.Value = "cut into pieces"
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


function onButton1Down(mouse)
	if selected == false then return end
	if Player.Character:FindFirstChild(Name) ~= nil and Button1Down == false and canUse == true and activated == true then
		if Player.Character[Name]:FindFirstChild("Handle") == nil then return end
		mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
		Button1Down = true
		canUse = false
		coroutine.resume(coroutine.create(function() playAnimation("slashStart") end))
		for i = 0.25, 1, 0.1 do
			Player.Character[Name].Handle.Saw.Pitch = i
			wait()
		end
		swordType = "slash"
		canUse = true
	end
end


function onButton1Up(mouse)
	if selected == false or Button1Down == false then return end
	Button1Down = false
	while canUse == false do wait() end
	canUse = false
	coroutine.resume(coroutine.create(function() playAnimation("slashEnd") end))
	for i = 1, 0.25, -0.05 do
		Player.Character[Name].Handle.Saw.Pitch = i
		wait()
	end
	Player.Character[Name].Handle.Saw.Pitch = 0.25
	swordType = "normal"
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	canUse = true
end


function onKeyDown(key, mouse)
	if selected == false then return end
	key = key:lower()
	if key == "q" and Button1Down == false and canUse == true then
		if mouse.Target == nil then return end
		if game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent) ~= nil then
			onDeselected(mouse)
			removeParts("holster")
			script.Parent.Parent = game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent).Backpack
		end
	end
	if key == "e" and Button1Down == false and canUse == true then
		if activated == true then
			canUse = false
			for i = 1, 0, -0.05 do
				Player.Character[Name].Handle.Saw.Volume = i
				Player.Character[Name].Handle.Saw.Pitch = Player.Character[Name].Handle.Saw.Pitch / 1.05
				wait()
			end
			Player.Character[Name].Handle.Saw:Stop()
			Player.Character[Name].Handle.Start.Pitch = 1
			Player.Character[Name].Handle.Start.Volume = 1
			Player.Character[Name].Handle.Start:Play()
			activated = false
			wait(0.3)
			canUse = true
		elseif activated == false then
			canUse = false
			Player.Character[Name].Handle.Start.Volume = 1
			Player.Character[Name].Handle.Start.Pitch = 1
			Player.Character[Name].Handle.Start:Play()
			wait(0.2)
			activated = true
			Player.Character[Name].Handle.Saw:Play()
			for i = 0, 1, 0.05 do
				Player.Character[Name].Handle.Saw.Volume = i
				Player.Character[Name].Handle.Saw.Pitch = i / 4
				wait()
			end
			Player.Character[Name].Handle.Saw.Volume = 1
			Player.Character[Name].Handle.Saw.Pitch = 0.25
			canUse = true
		end
	end
	if key == "r" and Button1Down == false and canUse == true and activated == true then
		canUse = false
		Player.Character[Name].Handle.Start.Pitch = math.random(9, 15) / 10
		Player.Character[Name].Handle.Start.Volume = 1
		Player.Character[Name].Handle.Start:Play()
		for i = 0, 1.5, 0.1 do
			Player.Character[Name].Handle.Saw.Pitch = (math.sin(i) / 1.25) + 0.25
			wait()
		end
		for i = 1.5, 3.1, 0.05 do
			Player.Character[Name].Handle.Saw.Pitch = (math.sin(i) / 1.25) + 0.25
			wait()
		end
		Player.Character[Name].Handle.Saw.Pitch = 0.25
		canUse = true
	end
	if key == "t" and Button1Down == false and canUse == true and activated == true then
		canUse = false
		Player.Character[Name].Handle.Start.Pitch = math.random(9, 15) / 10
		Player.Character[Name].Handle.Start.Volume = 1
		Player.Character[Name].Handle.Start:Play()
		wait(0.2)
		canUse = true
	end
end


function onSelected(mouse)
	if selected == true then return end
	selected = true
	mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
	while Player.Character:FindFirstChild("WeaponActivated") ~= nil do
		if Player.Character.WeaponActivated.Value == nil then break end
		if Player.Character.WeaponActivated.Value.Parent == nil then break end
		wait()
	end
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	local weapon = Instance.new("ObjectValue")
	weapon.Name = "WeaponActivated"
	weapon.Value = script.Parent
	weapon.Parent = Player.Character
	DisableLimb(1, Player.Character)
	removeParts("holster")
	makeParts("hand")
	playAnimation("normal")
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.Button1Up:connect(function() onButton1Up(mouse) end)
	mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
	if connection ~= nil then connection:disconnect() end
	connection = Player.Character.Humanoid.Died:connect(function() canUse = true onDeselected(mouse) end)
end


function onDeselected(mouse)
	if selected == false then return end
	if Button1Down == true then
		coroutine.resume(coroutine.create(function() playAnimation("slashEnd") end))
		for i = 1, 0.25, -0.05 do
			Player.Character[Name].Handle.Saw.Pitch = i
			wait()
		end
		Player.Character[Name].Handle.Saw.Pitch = 0.25
		Button1Down = false
	end
	if activated == true then onKeyDown("e", mouse) end
	selected = false
	while canUse == false do
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
	swordType = "normal"
	EnableLimb(1, Player.Character)
	removeParts("hand")
	makeParts("holster")
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = Name
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
	Player = game.Players.LocalPlayer
	makeParts("holster")
	Tool.Selected:connect(onSelected)
	Tool.Deselected:connect(onDeselected)
end wait()

end}

 
 

module[1] = {"CheckMate",function()
Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
mana=0
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Heartbeat:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Heartbeat:wait(0)
    end
    end
	    end
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end
	
	
local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}

local TrailColor = ("Institutional white")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(TrailColor)
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new(TrailColor)
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
	
	
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
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
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
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
 
function QuaternionSlerp(a, b, t) 
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

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Damagefunc=function(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        local h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        local c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                local Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                local blocked=false
                local block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
                end
                if Type=="Knockdown" then
                local hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
local rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                local vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                local rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                local bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
	            local Targetting = false
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                local TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                local  targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                local targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                local dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        local debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
        end
end


function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part("Custom",workspace,"SmoothPlastic",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
	EffectPart.Anchored = true
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	BillboardGui.Adornee = EffectPart
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.Parent = BillboardGui
	BillboardGui.Parent = EffectPart
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	Delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

HandleA=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Institutional white","HandleA",Vector3.new(0.200000003, 0.924000025, 0.251999974))
HandleAweld=weld(m,Character["Right Arm"],HandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0840759277, -0.00163650513, 0.993845463, 0.999998212, -1.10852261e-005, -0, 0, 1.09631201e-017, -0.999998212, 1.09064322e-005, 0.999996305, 1.38777878e-016))
mesh("BlockMesh",HandleA,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 1))
FakeHandleA=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Institutional white","FakeHandleA",Vector3.new(0.200000003, 0.420000017, 0.251999974))
FakeHandleAweld=weld(m,HandleA,FakeHandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.90734863e-006, -4.76837158e-007, 0.999998212, 2.13162126e-014, -5.3632084e-007, -2.13162126e-014, 0.999998212, -1.27329857e-016, 3.57546924e-007, -4.73488936e-019, 0.999996424))
mesh("BlockMesh",FakeHandleA,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 1))
HitboxA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HitboxA",Vector3.new(0.260399997, 2.26800036, 0.671999991))
HitboxAweld=weld(m,FakeHandleA,HitboxA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.01556396, 0.0198795795, 0.999996424, 1.79766672e-012, -1.26029063e-005, -1.79766672e-012, 0.999996424, -1.14722063e-016, 1.22454048e-005, -1.16638766e-016, 0.999992847))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000106811523, -0.671827316, 0.313827038, 0.999993801, -3.54627962e-014, -8.19193701e-007, 4.97018401e-014, 0.99999404, -1.09530813e-013, 7.89339538e-007, 9.65395366e-014, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.798000038, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.671999991))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.503871918, 0.0200036764, 0.999996424, 5.32912303e-015, -2.68159965e-007, -5.32912473e-015, 0.999996424, -1.26083356e-016, -8.93851393e-008, -1.26327738e-016, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.252000004, 0.503999949))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.671840668, 0.019996047, 0.999986649, -2.4655126e-012, 4.32561137e-007, 2.59496005e-012, 0.999986768, -1.49009139e-007, 2.52821337e-007, 8.94055319e-008, 0.999984741))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 1.17600012, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.47001648, 0.0187937021, 0.999996424, 1.93773531e-007, -9.44143176e-005, -1.93700657e-007, 0.999996424, 7.7484583e-007, 9.40571117e-005, -7.74830198e-007, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.504000008, 1, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.17600012, 0.335999995))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.46961975, 0.0198013783, 0.999996424, 2.38440322e-007, -1.83236498e-005, -2.38423183e-007, 0.999996424, 9.53646634e-007, 1.79661693e-005, -9.53645667e-007, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.462000072, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.671999991))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -0.83972168, 0.0198941231, 0.999996424, 1.72305952e-012, -1.13515125e-005, -1.72305952e-012, 0.999996424, -1.15788623e-016, 1.09940074e-005, -1.15460199e-016, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 1.42800009, 0.671999991))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.59558105, 0.0198942423, 0.999996424, 1.79766672e-012, -1.14408977e-005, -1.79766672e-012, 0.999996424, -1.1639756e-016, 1.10833907e-005, -1.1500975e-016, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.420000017, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, 0.335924149, 0.0199792385, 0.999992847, 1.81186826e-013, -4.11162546e-006, -1.81186826e-013, 0.999992847, -7.58573273e-016, 3.39656435e-006, 2.54499572e-016, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.15527344e-005, -0.756420135, -0.277666092, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.335924149, -0.0639793873, 0.999992847, 1.81186826e-013, -4.11162546e-006, -1.81186826e-013, 0.999992847, -7.58573273e-016, 3.39656435e-006, 2.54499572e-016, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.756376266, -0.193712234, 0.999991059, -2.13160618e-014, 1.78773007e-007, 7.5838625e-007, 0.707176268, -0.707018554, -7.58550868e-007, 0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999915, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.083984375, -0.0200240612, 0.671857834, -0.999994636, 3.04961617e-007, -1.53258661e-005, 1.58622697e-005, 1.03287621e-005, -0.999989271, -3.04797936e-007, -0.999994636, -1.03287111e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.152879983, 0.215039983, 0.145319983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.251999974))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -1.90734863e-006, 0.0200020075, 0.999994516, -4.8679409e-013, 1.78781193e-007, -4.44161797e-013, 0.99999392, -1.42889402e-016, -7.15082933e-007, -1.14757771e-016, 0.999988675))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.937992096, 0.137899399, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.728122711, 0.305858612, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.672348022, 0.0161781311, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.252000004))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.125961304, 0.0200021267, 0.999992847, -2.13160991e-014, -2.68156327e-007, 2.13160974e-014, 0.999992847, -1.25976285e-016, -4.46930244e-007, -2.53540519e-016, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -1.10586548, 0.221845627, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000212, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.728130341, 0.13794899, 0.999996424, -2.13161753e-014, 1.78773917e-007, -3.79196507e-007, 0.707181871, 0.707024157, -3.79278418e-007, -0.70702672, 0.707179308))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.840242386, 0.184112549, 0.999991059, -2.13160618e-014, 1.78773007e-007, 7.5838625e-007, 0.707176268, -0.707018554, -7.58550868e-007, 0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999676))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.335924149, 0.103946805, 0.999992847, 1.81186826e-013, -4.11162546e-006, -1.81186826e-013, 0.999992847, -7.58573273e-016, 3.39656435e-006, 2.54499572e-016, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999915, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0840148926, -0.671857834, -0.0200095177, -0.999994636, 6.84303503e-009, -1.58898201e-005, 6.67440903e-009, 0.999994636, 1.02837303e-005, 1.64262219e-005, 1.02837857e-005, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.152879983, 0.215039983, 0.145319983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999915, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.083984375, -0.671857834, -0.020023942, -0.999994636, 6.84303503e-009, -1.58898201e-005, 6.67440903e-009, 0.999994636, 1.02837303e-005, 1.64262219e-005, 1.02837857e-005, -0.999989271))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.152879983, 0.215039983, 0.145319983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, -0.335899353, -0.0639851093, 0.999992847, 2.0783188e-013, -4.55852023e-006, -2.0783188e-013, 0.999992847, -7.57696859e-016, 3.84346276e-006, 2.53825546e-016, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.7563591, -0.109758377, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.10351563e-005, -1.10585403, 0.305786133, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000212, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-005, -0.728031158, 0.221849442, 0.999996424, -2.13161753e-014, 1.78773917e-007, -3.79196507e-007, 0.707181871, 0.707024157, -3.79278418e-007, -0.70702672, 0.707179308))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.252000004))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.15527344e-005, -0.67241478, -0.19370079, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, -0.756313324, 0.0161876678, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.672306061, 0.184104919, 0.999991059, -2.13160618e-014, 1.78773007e-007, 7.5838625e-007, 0.707176268, -0.707018554, -7.58550868e-007, 0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999676))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, -0.335899353, 0.0199739933, 0.999992847, 2.18489967e-013, -4.73727596e-006, -2.18489967e-013, 0.999992847, -7.57336287e-016, 4.02222031e-006, 2.53552589e-016, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -1.1057682, 0.137836456, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000212, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -0.9379673, 0.305826187, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.812028885, 0.221828461, 0.999996424, -2.13161753e-014, 1.78773917e-007, -3.79196507e-007, 0.707181871, 0.707024157, -3.79278418e-007, -0.70702672, 0.707179308))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.252000004))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.840332031, -0.193758011, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999915, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0840148926, 0.0200095177, -0.671857834, -0.999994636, -5.05518983e-007, -1.59908777e-005, -1.65272759e-005, -1.03287639e-005, 0.999989271, -5.05689968e-007, 0.999994636, 1.03287002e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.152879983, 0.215039983, 0.145319983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.644088745, 0.22183609, 0.99999547, -1.31308614e-012, 1.78738446e-007, -3.79217425e-007, 0.707180977, 0.707023621, -3.79301156e-007, -0.707025945, 0.707178891))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.756282806, 0.184106827, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999676))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -0.937936783, 0.221797943, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.840261459, 0.016160965, 0.999991059, -2.13160618e-014, 1.78773007e-007, 7.5838625e-007, 0.707176268, -0.707018554, -7.58550868e-007, 0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.335899353, 0.103938103, 0.999992847, 2.29148081e-013, -4.9160335e-006, -2.29148081e-013, 0.999992847, -7.56970052e-016, 4.20097967e-006, 2.53277833e-016, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.251999974))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, 0.125974655, 0.0200021267, 0.999992728, 2.21486258e-014, 1.78859409e-007, 7.54365239e-014, 0.999992132, -2.98020169e-008, -1.78682967e-007, -2.9802127e-008, 0.999985099))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000033, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.671825409, -0.27389431, 0.999993801, 1.20855067e-013, -2.82897417e-007, -1.17359681e-013, 0.99999404, -5.96041865e-008, 2.53045073e-007, 5.96042469e-008, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.798000038, 1, 0.420000017))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.200000003, 0.336000025, 0.335999936))
Wedgeweld=weld(m,FakeHandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.22543144, 0.0199115276, 0.999995947, 1.79766672e-012, -1.49265943e-005, -1.79766672e-012, 0.999995947, -1.04389876e-016, 1.4569111e-005, -1.1508405e-016, 0.999992847))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.461999953, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Institutional white","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=weld(m,FakeHandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.14149475, 0.0199415684, 0.999996424, 1.79766672e-012, -1.2781531e-005, -1.79766672e-012, 0.999996424, -1.11779232e-016, 1.24240314e-005, -1.15038324e-016, 0.999992847))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.504000008, 0.840000212, 0.839999676))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Institutional white","Wedge",Vector3.new(0.200000003, 0.840000033, 0.671999991))
Wedgeweld=weld(m,FakeHandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -2.72929573, 0.0198169947, 0.999996424, 3.1294465e-007, -1.93064552e-005, -3.12920946e-007, 0.999996424, 1.25165718e-006, 1.89489765e-005, -1.2516557e-006, 0.999992847))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.420000017, 1, 1))

HandleB=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Institutional white","HandleB",Vector3.new(0.200000003, 0.924000025, 0.251999974))
HandleBweld=weld(m,Character["Left Arm"],HandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.115982056, 0.0891990662, 0.993835926, -0.999997854, -1.10417595e-005, 4.54747297e-013, 4.4408921e-016, -1.49011505e-008, 0.999997795, -1.09821558e-005, 0.999995708, -1.49011541e-008))
mesh("BlockMesh",HandleB,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 1))
FakeHandleB=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Institutional white","FakeHandleB",Vector3.new(0.200000003, 0.420000017, 0.251999974))
FakeHandleBweld=weld(m,HandleB,FakeHandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -0.047870636, 5.41210175e-005, 0.999996543, 7.45058131e-008, -5.81111635e-007, -7.45051949e-008, 0.999997199, -1.49019623e-008, 3.5760695e-007, -1.49009205e-008, 0.99999553))
mesh("BlockMesh",FakeHandleB,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 1))
HitboxB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HitboxB",Vector3.new(0.260399997, 2.26800036, 0.671999991))
HitboxBweld=weld(m,FakeHandleB,HitboxB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -2.01556969, 0.01980865, 0.999993443, 1.02318154e-012, -1.27701678e-005, 6.82121026e-013, 0.999994397, -2.98027985e-008, 1.22934016e-005, -2.98057792e-008, 0.999991059))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000106811523, -0.671806335, 0.313799143, 0.99999249, -3.12912107e-007, 8.53831443e-006, 3.12901221e-007, 0.999993801, 1.22185497e-006, -9.2088394e-006, -1.28146849e-006, 0.999990761))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.798000038, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.671999991))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.503873825, 0.0199302435, 0.999991298, 7.03437308e-013, -4.47016646e-007, 7.10542736e-013, 0.999993205, -2.98063618e-008, -2.38406756e-007, -2.98045819e-008, 0.999990702))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.252000004, 0.503999949))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-005, -0.671850204, 0.0200046301, 0.999992192, -4.61934746e-007, 1.15483172e-005, 4.61917068e-007, 0.999993801, 1.43046918e-006, -1.22188476e-005, -1.49008054e-006, 0.999990463))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 1.17600012, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.47002983, 0.0187981129, 0.999992311, 3.26139116e-012, -9.10005256e-005, 8.38440428e-013, 0.999993801, -2.98064791e-008, 9.0330177e-005, -2.98056761e-008, 0.999990582))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.504000008, 1, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.17600012, 0.335999995))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -1.46959877, 0.0198251009, 0.999991536, 1.05870868e-012, -1.29638747e-005, 7.10542736e-013, 0.999993205, -2.98063618e-008, 1.20996647e-005, -2.98093603e-008, 0.999990463))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.462000072, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.671999991))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.839723587, 0.0198229551, 0.999991536, 9.45021839e-013, -1.17124828e-005, 7.88702437e-013, 0.999993205, -2.98063618e-008, 1.08482727e-005, -2.98093568e-008, 0.999990463))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 1.42800009, 0.671999991))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.59558678, 0.0198256969, 0.999991596, 1.00897068e-012, -1.13843653e-005, 7.10542736e-013, 0.999993205, -2.98063618e-008, 1.08330742e-005, -2.9807449e-008, 0.999990523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.420000017, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, 0.335920334, 0.0199792385, 0.99998498, 1.77635684e-012, -4.42457076e-006, 1.20081722e-012, 0.999987602, -5.96116934e-008, 3.08357539e-006, -5.96116863e-008, 0.999981523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -0.756378174, -0.277729034, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.335920334, -0.0639791489, 0.99998498, 1.77635684e-012, -4.42457076e-006, 1.20081722e-012, 0.999987602, -5.96116934e-008, 3.08357539e-006, -5.96116863e-008, 0.999981523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -0.756343842, -0.193767548, 0.999986172, -4.47021336e-008, 2.97595744e-008, 9.12016958e-007, 0.707174182, -0.707016647, -8.68045106e-007, 0.707022667, 0.707168221))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999915, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.083984375, -0.019960165, 0.671865463, -0.999989688, 3.12922083e-007, -1.50947335e-005, 1.59142619e-005, 1.03585389e-005, -0.999986649, -3.1279896e-007, -0.999991477, -1.02988779e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.152879983, 0.215039983, 0.145319983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.251999974))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -7.62939453e-006, 0.0199067593, 0.999989629, -2.98013205e-008, 5.96000973e-008, 7.45057989e-008, 0.999991119, -2.98054701e-008, -8.64197318e-007, -2.98050864e-008, 0.999986231))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -0.938070297, 0.137874603, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -0.728212357, 0.305807114, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -0.672271729, 0.0161094666, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.252000004))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.125976563, 0.0199372768, 0.999988139, -1.04306544e-007, -2.23536517e-007, 1.04307773e-007, 0.999989748, -2.98051006e-008, -5.51243829e-007, -2.98054808e-008, 0.999983549))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -1.10592842, 0.221801758, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000212, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.10351563e-005, -0.728153229, 0.137924194, 0.999991596, 6.67910172e-013, 4.47207604e-008, -7.02402133e-007, 0.707179785, 0.707022667, -7.05294042e-007, -0.707024634, 0.707177639))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.84018898, 0.184049606, 0.999986172, -4.47021336e-008, 2.97595744e-008, 9.12016958e-007, 0.707174182, -0.707016647, -8.68045106e-007, 0.707022667, 0.707168221))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999676))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.335920334, 0.103946328, 0.99998498, 1.77635684e-012, -4.42457076e-006, 1.20081722e-012, 0.999987602, -5.96116934e-008, 3.08357539e-006, -5.96116863e-008, 0.999981523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999915, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0840606689, -0.671867371, -0.019955039, -0.999989748, 4.47028654e-008, -1.57354771e-005, 4.45826664e-008, 0.999991477, 1.02539025e-005, 1.65997171e-005, 1.03135581e-005, -0.999987185))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.152879983, 0.215039983, 0.145319983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999915, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0839691162, -0.671863556, -0.0199602842, -0.999989748, 4.47028654e-008, -1.57354771e-005, 4.45826664e-008, 0.999991477, 1.02539025e-005, 1.65997171e-005, 1.03135581e-005, -0.999987185))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.152879983, 0.215039983, 0.145319983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, -0.335897446, -0.0639851093, 0.99998498, 1.83320026e-012, -4.87146372e-006, 1.17239551e-012, 0.999987602, -5.96116934e-008, 3.53046926e-006, -5.96116934e-008, 0.999981523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.756332397, -0.109825134, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-005, -1.10591888, 0.305747986, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000212, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -0.728061676, 0.221828461, 0.999991596, 6.67910172e-013, 4.47207604e-008, -7.02402133e-007, 0.707179785, 0.707022667, -7.05294042e-007, -0.707024634, 0.707177639))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.252000004))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000106811523, -0.67234993, -0.193754196, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -0.756284714, 0.0161113739, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.672286987, 0.18406105, 0.999986172, -4.47021336e-008, 2.97595744e-008, 9.12016958e-007, 0.707174182, -0.707016647, -8.68045106e-007, 0.707022667, 0.707168221))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999676))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, -0.335897446, 0.0199738741, 0.99998498, 1.85451654e-012, -5.05021944e-006, 1.15818466e-012, 0.999987602, -5.96116934e-008, 3.7092268e-006, -5.96116934e-008, 0.999981523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -1.10585022, 0.137811661, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000212, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-005, -0.938016891, 0.30575943, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.812088013, 0.221776962, 0.999991596, 6.67910172e-013, 4.47207604e-008, -7.02402133e-007, 0.707179785, 0.707022667, -7.05294042e-007, -0.707024634, 0.707177639))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.252000004))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -0.840309143, -0.193778992, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.251999915, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0840606689, 0.0199552774, -0.671869278, -0.999990344, -6.10944085e-007, -1.58993953e-005, -1.67040234e-005, -1.03585407e-005, 0.999987066, -6.11064024e-007, 0.999991655, 1.02988724e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.152879983, 0.215039983, 0.145319983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -0.644163132, 0.22177124, 0.999991596, -1.63911096e-007, 4.47207675e-008, -4.63979092e-007, 0.707178771, 0.707022071, -4.51969669e-007, -0.70702374, 0.707177103))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.756244659, 0.184059143, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999676))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -0.937994003, 0.221740723, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.84022522, 0.0160942078, 0.999986172, -4.47021336e-008, 2.97595744e-008, 9.12016958e-007, 0.707174182, -0.707016647, -8.68045106e-007, 0.707022667, 0.707168221))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.335897446, 0.103937507, 0.99998498, 1.87583282e-012, -5.22897699e-006, 1.15107923e-012, 0.999987602, -5.96116934e-008, 3.88798253e-006, -5.96116863e-008, 0.999981523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.251999974))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.125947952, 0.019931674, 0.999988019, -7.45044133e-008, 1.19185643e-007, 7.45060262e-008, 0.99998939, -5.96073733e-008, -3.724208e-007, -5.96076077e-008, 0.999982655))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000033, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -0.671842575, -0.273898602, 0.999992251, 6.75015599e-013, 3.53156747e-006, 8.73967565e-013, 0.999993801, -8.93913352e-008, -4.2020838e-006, 2.97793719e-008, 0.999990523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.798000038, 1, 0.420000017))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.200000003, 0.336000025, 0.335999936))
Wedgeweld=weld(m,FakeHandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -2.22545815, 0.019826293, 0.999991477, -1.19207421e-007, -1.51692248e-005, 1.19209091e-007, 0.999993205, -2.98050331e-008, 1.44987343e-005, -2.9807719e-008, 0.999990404))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.461999953, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Institutional white","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=weld(m,FakeHandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -2.1415081, 0.0198848248, 0.999991477, 1.07291953e-012, -1.30532799e-005, 7.10542736e-013, 0.999993205, -2.98063618e-008, 1.21592684e-005, -2.98089127e-008, 0.999990523))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.504000008, 0.840000212, 0.839999676))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Institutional white","Wedge",Vector3.new(0.200000003, 0.840000033, 0.671999991))
Wedgeweld=weld(m,FakeHandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.72933006, 0.0198259354, 0.999991477, 1.04449782e-012, -1.20996147e-005, 7.10542736e-013, 0.999993205, -2.98063618e-008, 1.11906975e-005, -2.98092999e-008, 0.999990761))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.420000017, 1, 1))

function attackone()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.3)* angles(math.rad(20),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(-5),math.rad(60)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(-150), math.rad(-100)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.6,0)*angles(math.rad(0),math.rad(-40),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(6*i,math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(40),math.rad(0),math.rad(0)),.3)
end
so('http://roblox.com/asset/?id=243711414',HitboxA,1,1)
for i = 0,1,0.1 do
swait()
local blcf = HitboxA.CFrame*CFrame.new(0,.5,0)
if scfr and (HitboxA.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(-30), math.rad(0), math.rad(-40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(40),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(30))*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-90),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(40),math.rad(0),math.rad(0)),.3)
end
scfr = nil
attack = false
end

function attacktwo()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.3)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(-100)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(40))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(30))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
so('http://roblox.com/asset/?id=243711427',HitboxB,1,1)
for i = 0,1,0.1 do
swait()
local blcf = HitboxB.CFrame*CFrame.new(0,.5,0)
if scfr and (HitboxB.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.3)* angles(math.rad(20),math.rad(0),math.rad(-90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-70), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -.5) * angles(math.rad(0), math.rad(-150), math.rad(-100)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.6,0)*angles(math.rad(0),math.rad(-50),math.rad(-30))*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
end
scfr = nil
attack = false
end

function attackthree()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.5) * angles(math.rad(0), math.rad(120), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -.5) * angles(math.rad(0), math.rad(-120), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-50),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(50),math.rad(0),math.rad(0)),.3)
end
so('http://roblox.com/asset/?id=243711414',HitboxA,1,1)
so('http://roblox.com/asset/?id=243711427',HitboxB,1,1)
for i = 0,1,0.1 do
swait()
local blcf = HitboxA.CFrame*CFrame.new(0,.5,0)
if scfr and (HitboxA.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
local blcf2 = HitboxB.CFrame*CFrame.new(0,.5,0)
if scfr2 and (HitboxB.Position-scfr2.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr2*CFrame.new(0,h/2,0)).p,(scfr2*CFrame.new(0,-h/2,0)).p,(blcf2*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf2*CFrame.new(0,h/2,0)).p,(blcf2*CFrame.new(0,-h/2,0)).p,(scfr2*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr2 = blcf2
elseif not scfr2 then
scfr2 = blcf2
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(50)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(50)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-90),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(-90),math.rad(0),math.rad(0)),.3)
Torso.Velocity=Head.CFrame.lookVector*100
end
scfr = nil
scfr2 = nil
attack = false
end

mouse.Button1Down:connect(function()
if attack == false and attacktype == 1 then
attacktype = 2
attackone()
elseif attack == false and attacktype == 2 then
attacktype = 3
attacktwo()
elseif attack == false and attacktype == 3 then
attacktype = 1
attackthree()
end
end)

mouse.KeyDown:connect(function(k)
k=k:lower()
if attack == false and k == '' then

end
end)

local sine = 0
local change = 1
local val = 0

while true do
swait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-180),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(-0),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(60)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-60)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-180),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(-0),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.3)* angles(math.rad(20),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(-10),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(-130), math.rad(-100)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.6,0)*angles(math.rad(0),math.rad(-50),math.rad(-30)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(30),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-180),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(-0),math.rad(0),math.rad(0)),.3)
end
end
end
if #Effects>0 then
for e=1,#Effects do
if Effects[e]~=nil then
local Thing=Effects[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects,e)
end
end
end
end
end
end
end}
module[2] = {"CheeseMan",function()
-----------------------------------------------------
name = 'Cheeseman'
PLAYERS = game:GetService('Players')
ply = PLAYERS.LocalPlayer
char = ply.Character
pcall(function() char:FindFirstChild("legetdg"):Remove() end)
m = Instance.new("Model",char) m.Name = "legetdg"
hop = Instance.new("HopperBin",ply.Backpack)
hop.Name = name
debris = game:GetService("Debris")
cfn,ang,v3n,ud2n,V2 = CFrame.new,CFrame.Angles,Vector3.new,UDim2.new,Vector2.new
floatforce = 196.25
torso,head = char.Torso,char.Head
attacking = false
rs = torso["Right Shoulder"]
ls = torso["Left Shoulder"]
rh = torso["Right Hip"]
lh = torso["Right Hip"]
neck = torso["Neck"]
rw,lw = nil,nil
rhw,lhw = nil,nil
local orgc1 = rs.C1
rarm = char["Right Arm"]
larm = char["Left Arm"]
rleg = char["Right Leg"]
lleg = char["Left Leg"]
normposr = cfn(1.5,.5,0)
normposl = cfn(-1.5,.5,0)
normposl2 = cfn(.5,-1.5,0)
normposr2 = cfn(-.5,-1.5,0)
normposn = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
holdpos = normposr*ang(math.pi/2,0,0)
holdpos2 = normposl*ang(math.pi/2,0,0)
function genNew(ClassName, Parent, Properties)
local nObj = Instance.new(ClassName, Parent)
if Properties["FormFactor"] then
nObj["FormFactor"] = Properties["FormFactor"]
end
for Prop, Value in pairs(Properties) do
nObj[Prop] = Value
end
return nObj
end
T = {["P"] = function(x,y,z,color,transparency,cancollide,anchored,parent,typee)
if typee == 'wedge' then
c = Instance.new("WedgePart",m)
elseif typee == 'seat' then
c = Instance.new("Seat",m)
elseif typee == 'vseat' then
c = Instance.new("VehicleSeat",m)
else
c = Instance.new("Part",m)
end
c.TopSurface,c.BottomSurface = 0,0
c.Locked = true
c.formFactor = "Custom"
c.Size = Vector3.new(x,y,z)
if color ~= "random" then
c.BrickColor = BrickColor.new(color)
else c.BrickColor = BrickColor:random()
end
c.Transparency = transparency
c.CanCollide = cancollide
if anchored ~= nil then c.Anchored = anchored end
if parent ~= nil then c.Parent = parent end
return c
end
,
["C"] = function(func) coroutine.resume(coroutine.create(func)) end
,
["W"] = function(part0,part1,x,y,z,rx,ry,rz,parent)
w = Instance.new("Motor",m)
if parent ~= nil then w.Parent = parent end
w.Part0,w.Part1 = part0,part1
w.C1 = CFrame.new(x,y,z) * CFrame.Angles(rx,ry,rz)
return w
end
,
["BG"] = function(parent)
local c = Instance.new("BodyGyro",parent)
c.P = 20e+003
c.cframe = parent.CFrame
c.maxTorque = Vector3.new(c.P,c.P,c.P)
return c
end
,
["BP"] = function(parent,position)
local bp = Instance.new("BodyPosition",parent)
bp.maxForce = Vector3.new()*math.huge
bp.position = position
return bp
end
,
["F"] = function(parent,size,heat,color,secondcolor,enabled)
f = Instance.new("Fire",parent)
f.Size = size
f.Heat = heat
if enabled ~= nil then f.Enabled = enabled end
if color ~= nil then f.Color = BrickColor.new(color).Color end
if secondcolor ~= nil then f.SecondaryColor = BrickColor.new(secondcolor).Color end
return f
end
,
["FM"] = function(parent,meshid,x,y,z,meshtexture)
if meshid == "cylinder" then
mesh = Instance.new("CylinderMesh",parent)
mesh.Scale = Vector3.new(x,y,z)
return mesh
elseif meshid == 'block' then
mesh = Instance.new("BlockMesh",parent)
mesh.Scale = Vector3.new(x,y,z)
return mesh
end
mesh = Instance.new("SpecialMesh",parent)
if meshid == 'wedge' then
mesh.MeshType = 'Wedge'
elseif meshid == 'sphere' then
mesh.MeshType = 3
elseif type(meshid) == "number" then
mesh.MeshId = "rbxassetid://"..meshid
else
mesh.MeshId = "rbxassetid://"..meshids[meshid]
end
mesh.Scale = Vector3.new(x,y,z)
if meshtexture then
if type(meshtexture) == "number" then mesh.TextureId = "rbxassetid://"..meshtexture else
mesh.TextureId = "rbxassetid://"..textureids[meshtexture] end
end
return mesh
end,
["Dec"] = function(parent,face,id,transparency)
c = Instance.new("Decal",parent)
c.Face = face
c.Texture = id
if transparency then c.Transparency = transparency end
return c
end,
["S"] = function(id,pitch,volume,parent)
cur = nil
found = false
if type(id) == 'string' then
for i,v in pairs(char.Head:children()) do
if v:IsA("Sound") and v.Name == id and not found then
cur = v
if parent then cur = v:Clone() cur.Parent = parent end
cur.Pitch = pitch
if volume then cur.Volume = volume end
cur:Play()
found = true
return cur
end
end
elseif type(id) == 'number' then
local a = char.Head:FindFirstChild('exteo')
a.SoundId = 'rbxassetid://'..id
a.Pitch = pitch
if volume then a.Volume = volume end
a:Play()
return a
end
end
}
function spaas(position,radius,number,number2,color)
mode = Instance.new("Model",m)
for i = 1,number2 do
pos = position+v3n(M.R(-radius,radius),M.R(-radius,radius),M.R(-radius,radius))
mag = (position-pos).magnitude
col = color or 'Toothpaste'
local laz = T.P(.1,mag,.1,col,0,false,true,mode)
T.FM(laz,'cylinder',.3,1,.3)
laz.CFrame = (cfn(position,pos)*cfn(0,0,-mag/2))*ang(math.pi/2,0,0)
cframe = (laz.CFrame*cfn(0,-mag/2,0)).p
pos2 = cframe+v3n(M.R(-radius,radius),M.R(-radius,radius),M.R(-radius,radius))
mag2 = (cframe-pos2).magnitude
local laz2 = T.P(.1,mag2,.1,col,0,false,true,mode)
T.FM(laz2,'cylinder',.3,1,.3)
laz2.CFrame = (cfn(cframe,pos2)*cfn(0,0,-mag2/2))*ang(math.pi/2,0,0)
previo = laz2
for i = 1,number do
cframe = (previo.CFrame*cfn(0,-mag/2,0)).p
pos2 = cframe+v3n(M.R(-radius,radius),M.R(-radius,radius),M.R(-radius,radius))
mag2 = (cframe-pos2).magnitude
local laz2 = T.P(.1,mag2,.1,col,0,false,true,mode)
T.FM(laz2,'cylinder',.3,1,.3)
laz2.CFrame = (cfn(cframe,pos2)*cfn(0,0,-mag2/2))*ang(math.pi/2,0,0)
previo = laz2
end
end
debris:AddItem(mode,.1)
end
function lightning(startpos,endpos,times,offse,livetime,col,dmg)
local curpos = startpos
for i = 1,times do
mag = (startpos-endpos).magnitude offs = {-offse,offse}
offset = v3n(offs[M.R(1,2)],offs[M.R(1,2)],offs[M.R(1,2)])
laz = T.P(.1,.1,mag/times,col,0,false,true,m)
if dmg then laz.Touched:connect(function(hit) damage(hit.Parent,dmg[1],dmg[2]) end) end
apos = (cfn(curpos,endpos)*cfn(0,0,-mag/times)).p+offset
if times == i then
mag2 = (curpos-endpos).magnitude
laz.Size = v3n(.1,.1,mag2)
laz.CFrame = cfn(curpos,endpos)*cfn(0,0,-mag2/2)
else
laz.CFrame = cfn(curpos,apos)*cfn(0,0,-mag/times/2)
end
curpos = laz.CFrame*cfn(0,0,-mag/times/2).p debris:AddItem(laz,livetime)
end
end
------MESHIDS---
meshids = {["penguin"] = 15853464, ["ring"] = 3270017,
["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["crossbow"] = 15886761,
["cloud"] = 1095708,["mjolnir"] = 1279013,["diamond"] = 9756362, ["hand"] = 37241605,
["fist"] = 65322375,["skull"] = 36869983,["totem"] = 35624068,["spikeb"] = 9982590,["dragon"] = 58430372,["fish"] = 31221717, ["coffee"] = 15929962,["spiral"] = 1051557,
["ramen"] = 19380188,["lightning"] = 72583597,["bullet"]=2697549,['cheese'] = 1090700,["pan"] = 24342877,["ketchup"] = 29690481,
["duck"] = 9419831}---some meshids
textureids = {["cone"] = 1082804,["rainbow"] = 28488599,["fish"] = 31221733, ["coffee"] = 24181455,["monster"] = 33366441,["ramen"] = 19380153,
["cheese"] = 1090703} 
soundids = {["bell"] = 20005706,["flintlock"] = 13510352,["falcon"] = 1387390,['sensa'] = 4700455,
['midas'] = 17385513;
['spark'] = 10756118;
['boom'] = 10730819;
['plank'] = 10548112;
['harmonica1'] = 33069371;
['harmonica2'] = 33069412;
['thump'] = 10730819;
}
for i,v in pairs(soundids) do
for _,q in pairs(char.Head:children()) do
if q.Name == i then q:Remove() end
end
end
for i,v in pairs(soundids) do
sound = Instance.new("Sound")
sound.SoundId = "http://www.roblox.com/asset/?id="..v
sound.Name = i
sound.Parent = char.Head
end
M = {["R"] = function(a,b) return math.random(a,b) end,
["Cos"] = function(a) return math.cos(a) end,
["Sin"] = function(a) return math.sin(a) end,
["D"] = function(a) return math.rad(a) end
}
for i,v in pairs(char:children()) do
if v:IsA("Hat") then v:Remove() end
end
hat = T.P(1,1,1,'White',0,false,false)
T.FM(hat,57475891,1,1,1,'cheese')
T.W(hat,char.Head,0,1,0,0,0,0)
hat = T.P(1,1,1,'White',0,false,false)
T.FM(hat,28165956,1.05,1,1.1,'cheese')
T.W(hat,char.Head,0,0,0,0,0,0)
torso.Transparency = 1
p = T.P(1,2,2,'Black',0,false,false,m,'wedge') p.formFactor = 'Symmetric'
T.W(p,torso,0,0,0,-math.pi/2,0,-math.pi/2)
p2 = T.P(1,2,2,'New Yeller',0,false,false,m,'wedge') p2.formFactor = 'Symmetric'
T.W(p2,torso,0,0,0,math.pi/2,0,math.pi/2)
r = .6
o = 55
for e = -.5,.5,1 do
for i = o,180+o,40 do
q = T.P(.1,.3,.1,'New Yeller',0,false,false)
T.FM(q,'block',.99,1,.99)
T.W(q,torso,M.Cos(M.D(i))*r,M.Sin(M.D(i))*r,e,0,0,M.D(i))
end
for i = o+180,360+o,40 do
q = T.P(.1,.3,.1,'Black',0,false,false)
T.FM(q,'block',1,1,1)
T.W(q,torso,M.Cos(M.D(i))*r,M.Sin(M.D(i))*r,e,0,0,M.D(i))
end
end
q = T.P(1,1,1,'White',0,false,false)
T.W(q,lleg,0,-.8,-.3,-math.pi/2,0,0)
T.FM(q,48880435,1,1,1,'cheese')
q = T.P(1,1,1,'White',0,false,false)
T.W(q,rleg,0,-.8,-.3,-math.pi/2,0,0)
T.FM(q,48880435,1,1,1,'cheese')
staff = T.P(.3,4,.3,'Brown',0,false,false)
hw = T.W(staff,torso,0,0,.5,0,0,M.D(-45)) normh = hw.C1
ball = T.P(1,1,1,'Black',0,false,false) ball.Shape = 0
mot = T.W(ball,staff,0,2.45,0,0,math.pi/2,0)
mot.C0 = cfn()*ang(0,math.pi/2,0)
eye = T.P(.1,.1,.1,'New Yeller',0,false,false) T.FM(eye,'sphere',1,1,1)
T.W(eye,ball,.25,.2,-.35,0,0,0)
eye = T.P(.1,.1,.1,'New Yeller',0,false,false) T.FM(eye,'sphere',1,1,1)
T.W(eye,ball,-.25,.2,-.35,0,0,0)
hat = T.P(1,1,1,'New Yeller',0,false,false)
T.FM(hat,16627529,1,1,1)
T.W(hat,ball,0,.4,0,M.D(5),0,0)
mot.MaxVelocity = .1
function zeero(mot,a) local oldvelocity = mot.MaxVelocity mot.MaxVelocity = 1.7E+308
if a == nil then mot.DesiredAngle = 0
else mot.DesiredAngle = a
end
while mot.DesiredAngle ~= mot.CurrentAngle do wait() end
mot.MaxVelocity = oldvelocity
end
function ventta(mot)
while mot.DesiredAngle ~= mot.CurrentAngle do wait() end
end
function findplayers(a,b)
list = {}
for _,v in pairs(Workspace:children()) do
if v:IsA("Model") then
for _,child in pairs(v:children()) do
if child:IsA("Humanoid") then
if (a-child.Torso.Position).magnitude < b then
table.insert(list,child.Parent)
end
end
end
end
end
return list
end
function l(a,x,y,z,b)
if b == nil then
return a.CFrame*cfn(x,y,z)
else
return a*cfn(x,y,z)
end
end
function damage(hit,amount,delay)
for i,v in pairs(hit:children()) do
if v:IsA("Humanoid") and v.Parent ~= char then
if delay then
local found = v:FindFirstChild('tag')
if not found then
local a = Instance.new("StringValue",v)
a.Name = 'tag'
debris:AddItem(a,delay)
v.Health = v.Health - amount
end
else v.Health = v.Health - amount
end
end
end
end
lock = {["R"] =
function(a)
if a == 1 then
rabrick = T.P(1,1,1,"White",1,false,false)
rw = T.W(rabrick,torso,1.5,.5,0,0,0,0)
T.W(rarm,rabrick,0,-.5,0,0,0,0)
elseif a == 2 then
rlbrick = T.P(1,1,1,"White",1,false,false)
rhw = T.W(rlbrick,torso,-.5,-1.5,0,0,0,0)
T.W(rleg,rlbrick,0,-.5,0,0,0,0)
elseif a == 0 then
rs.Parent = torso
rw.Parent = nil
rabrick:Destroy() rabrick = nil
elseif a == -1 then
rhw.Parent = nil
rh.Parent = torso
rlbrick:Destroy() rlbrick = nil
end
end
, ["L"] = function(a)
if a == 1 then
labrick = T.P(1,1,1,"White",1,false,false)
lw = T.W(labrick,torso,-1.5,.5,0,0,0,0)
T.W(larm,labrick,0,-.5,0,0,0,0)
elseif a == 2 then
llbrick = T.P(1,1,1,"White",1,false,false)
lhw = T.W(llbrick,torso,.5,-1.5,0,0,0,0)
T.W(lleg,llbrick,0,-.5,0,0,0,0)
elseif a == 0 then
ls.Parent = torso
lw.Parent = nil
labrick:Destroy() labrick = nil
elseif a == -1 then
lhw.Parent = nil
lh.Parent = torso
llbrick:Destroy() llbrick = nil
end
end
}
function equip()
if not equipped then
equipped = true
hw.Part1 = rarm
hw.C1 = cfn(0,-1,0)*ang(-math.pi/2,0,0)
elseif equipped then
equipped = false
hw.Part1 = torso
hw.C1 = cfn(0,0,.5)*ang(0,0,M.D(-45))
end
normh = hw.C1
end
mag = _
function findground(position)
local ray = Ray.new(position.p,position.p+(position.p-v3n(0,200,0)).unit*200)
local obj,pos2 = Workspace:FindPartOnRay(ray,m)
if obj and pos2 then return obj,pos2 else return nil end
end
function attack()
lock.R(1)
for i = 0,1,.1 do
rw.C1 = normposr*ang(M.D(90*i),0,0)
hw.C1 = normh*ang(M.D(-90*i),0,0)*cfn(0,2*i,0)
wait()
end
mot.DesiredAngle = math.pi/2
ventta(mot)
cannon = T.P(.3,.1,.3,'White',0,false,false)
T.FM(cannon,'cylinder',1,1,1)
wld = T.W(cannon,ball,0,-.2,-.5,math.pi/2,0,0)
for i = 0,1,.1 do
cannon.Size = v3n(.3,2*i,.3)
wld.Parent,wld.Part1 = m,ball
wld.C1 = cfn(0,-.2,-1*i)*ang(math.pi/2,0,0)
wait()
end
local bullet = T.P(1,1,1,'New Yeller',0,true,true) T.FM(bullet,'sphere',1,1,1)
bullet.CFrame = cannon.CFrame*cfn(0,-2,0) 
local ray = Ray.new(cannon.Position,cannon.Position+torso.CFrame.lookVector*50)
local obj,pos = Workspace:FindPartOnRay(ray,m)
if obj and pos then mag = (cannon.Position-pos).magnitude else mag = 50 end
cf = cannon.CFrame*cfn(0,-2,0)
T.C(function()
while bullet.Parent ~= nil do
local obj,pos2 = findground(bullet.CFrame)
if pos2 then
T.C(function()
local ef = T.P(1,1,1,'Magenta',0,false,true)
ef.CFrame = cfn(pos2)
local msh = T.FM(ef,'crown',1,1,1)
for i = 1,10 do
msh.Scale = v3n(i,1,i)
ef.Transparency = i/10
wait()
end
ef:Remove()
end)
end
wait(.1)
end
end)
T.C(function()
for i = 0,mag,1 do
bullet.CFrame = cf*cfn(0,-i,0)
wait()
end
local p = T.P(1,1,1,'Black',0,false,true)
p.CFrame = bullet.CFrame
bullet:Remove()
local msh = T.FM(p,'sphere',1,1,1)
ring = T.P(1,1,1,'Black',0,false,true)
ring.CFrame = p.CFrame
ringm = T.FM(ring,'ring',1,1,1)
local sw = T.P(1,1,1,'New Yeller',1,false,true)
sw.CFrame = p.CFrame
ground,groundp = findground(p.CFrame)
if ground then
for i = 1,5 do
p2 = T.P(20,1,20,ground.BrickColor.Name,ground.Transparency,true,true)
p2.TopSurface,p2.BottomSurface = ground.TopSurface,ground.BottomSurface
p2.CFrame = cfn(groundp)*cfn(0,-1,0)*ang(M.D(M.R(-20,20)),M.D(M.R(-20,20)),M.D(M.R(-20,20)))
end
end
for i = 0,1,.05 do
msh.Scale = v3n(60*i,60*i,60*i)
ringm.Scale = v3n(60*i,60*i,0)
ring.CFrame = p.CFrame*ang(M.D(360*i),0,0)
ring.Transparency = i
p.Transparency = i
wait()
end
ring:Remove()
p:Remove()
end)
for i = 1,0,-.1 do
rw.C1 = normposr*ang(M.D(90*i),0,0)
hw.C1 = normh*ang(M.D(-90*i),0,0)*cfn(0,2*i,0)
cannon.Size = v3n(.3,2*i,.3)
wld.Parent,wld.Part1 = m,ball
wld.C1 = cfn(0,-.2,-1*i)*ang(math.pi/2,0,0)
wait()
end
cannon:Remove()
lock.R(0)
end
function lasso(mouse)
bg = T.BG(head) cf = bg.cframe
lock.L(1) lock.R(1)
rw.C1 = normposr*ang(0,0,M.D(10))
lw.C1 = normposl*ang(0,0,-math.pi/2)
cheese = T.P(1,1,1,'White',0,true,false)
wld = T.W(cheese,larm,0,-1,0,0,0,0)
T.FM(cheese,'cheese',1,1,1,'cheese').VertexColor = v3n(.1,.5,0)
holding = true
while holding do wait() bg.cframe = cfn(head.Position,v3n(mouse.hit.p.x,char.Head.Position.y,mouse.hit.p.z))*ang(0,-math.pi/2,0) end
wld:Remove()
cf = (larm.CFrame*cfn(0,-4,0))
cheese.CFrame = cf
genNew('Smoke',cheese,{
Color = Color3.new(0,.5,0);
Size = 1;
RiseVelocity = 10;
})
debris:AddItem(cheese,3)
Instance.new("BodyForce",cheese).force = cfn(cf.p,(cf*cfn(0,-4,0)).p).lookVector*100 + v3n(0,cheese:GetMass()+floatforce,0)
lw.C1 = normposl*ang(0,0,M.D(-120))
wait(.1)
lw.C1 = normposl*ang(0,0,-math.pi/2)
bg:Remove()
lock.L(0) lock.R(0)
end
hum = char.Humanoid
restbp = nil
restbg = nil
function rest()
if not restbp then
lock.R(1) lock.L(1) lock.R(2) lock.L(2)
tyu = cfn(.2,.2,-.2)
tyu1 = cfn(-.2,.2,-.2)
tyu2 = cfn(-.1,.2,-.2)
rw.C1 = (holdpos*tyu1)*ang(M.D(100),0,M.D(-30))
lw.C1 = (holdpos2*tyu)*ang(M.D(100),0,M.D(30))
neck.C0 = normposn*ang(M.D(20),0,0)
lhw.C1 = (normposl2*tyu2)*ang(M.D(20),0,M.D(-20))
rhw.C1 = (normposr2)*ang(M.D(5),0,M.D(10))
pos = torso.CFrame
restbp = T.BP(torso,pos.p)
cloud = T.P(5,2,5,'White',0,false,false) T.FM(cloud,'cheese',6,2,6,'cheese').VertexColor = v3n(1,1,0)
cloud.Position = pos.p
T.W(cloud,torso,0,1,.8,-math.pi/2,M.D(-22.5),0)
T.C(function()
while wait() do
for i = 0,.5,.05 do
restbp.position = pos.p+v3n(0,i,0)
wait(.2)
end
for i = .5,0,-.05 do
restbp.position = pos.p+v3n(0,i,0)
wait(.2)
end
end
end)
restbg = T.BG(torso)
restbg.cframe = pos*ang(math.pi/2,0,0)
hum.PlatformStand = true
else
hum.PlatformStand = false
for i = -1,0 do lock.R(i) lock.L(i) end
cloud:Remove()
restbp:Remove() 
restbg:Remove()
neck.C0 = normposn 
torso.CFrame = pos
restbp,restbg = nil,nil
end
end
function dance()
lock.R(1) lock.L(1) lock.R(2) lock.L(2)
for _ = 0,3 do
for i = 0,1,.2 do
lhw.C1 = normposl2*ang(M.D(50*i),0,M.D(50*i))
rhw.C1 = normposr2*ang(M.D(50*-i),0,M.D(50*-i))
lw.C1 = holdpos2*ang(0,0,M.D(50*-i))
rw.C1 = holdpos*ang(0,0,M.D(50*-i))
neck.C0 = normposn*ang(M.D(30*i),0,0)
wait()
end
for i = 1,-1,-.2 do
lhw.C1 = normposl2*ang(M.D(50*i),0,M.D(50*i))
rhw.C1 = normposr2*ang(M.D(50*-i),0,M.D(50*-i))
lw.C1 = holdpos2*ang(0,0,M.D(50*-i))
rw.C1 = holdpos*ang(0,0,M.D(50*-i))
neck.C0 = normposn*ang(M.D(30*i),0,0)
wait()
end
for i = -1,0,.2 do
lhw.C1 = normposl2*ang(M.D(50*i),0,M.D(50*i))
rhw.C1 = normposr2*ang(M.D(50*-i),0,M.D(50*-i))
lw.C1 = holdpos2*ang(0,0,M.D(50*-i))
rw.C1 = holdpos*ang(0,0,M.D(50*-i))
neck.C0 = normposn*ang(M.D(30*i),0,0)
wait()
end
end
lock.R(0) lock.L(0) lock.R(-1) lock.L(-1)
end
levbg = nil
function levitate()
if not levbp then
levbp = T.BP(torso,torso.Position)
else levbp:Remove() levbp = nil
end
end
function test()
lock.R(1)
for i = 0,1,.1 do
wait()
rw.C1 = holdpos*ang(0,0,M.D(45+90*i))
end
for i = 1,0,-.1 do
wait()
rw.C1 = holdpos*ang(0,0,M.D(45+90*i))
end
lock.R(0)
end
function fly(mouse)
levbg = T.BG(torso)
holding = true
lock.R(1) lock.L(1)
T.C(function()
while holding do
for i = 0,1,.1 do
wait()
rw.C1 = holdpos*ang(0,0,M.D(45+90*i))
lw.C1 = holdpos2*ang(0,0,-M.D(45+90*i))
end
for i = 1,0,-.1 do
wait()
rw.C1 = holdpos*ang(0,0,M.D(45+90*i))
lw.C1 = holdpos2*ang(0,0,-M.D(45+90*i))
end
end
end)
while holding do
ches = T.P(1,1,1,'White',0,true,false)
T.FM(ches,'cheese',1,1,1,'cheese')
debris:AddItem(ches,1)
Instance.new("Sparkles",ches)
ches.CFrame = torso.CFrame*cfn(0,-3,0)
levbg.cframe = cfn(torso.Position,mouse.hit.p)*ang(-math.pi/2,0,0)
levbp.position = torso.Position + (torso.Position-mouse.hit.p).unit*-10
wait()
end
lock.R(0) lock.L(0)
levbg:Remove() levbg = nil
end
function sel(mouse)
if levbp then
fly(mouse)
elseif equipped then attack()
else
lasso(mouse)
end
end
klist = {
{'c',function() rest() end};
{'f',function() dance() end};
{'q',function() levitate() end};
{'r',function() equip() end};
}
hop.Deselected:connect(function() lock.R(0) lock.L(0) end)
hop.Selected:connect(function(mouse)
mouse.Button1Up:connect(function() holding = false end)
mouse.KeyUp:connect(function(a) for i,v in pairs(klist) do if a == v[1] and v[3] ~= nil then holding = false end end end)
mouse.KeyDown:connect(function(key)
if attacking then return end
for i,v in pairs(klist) do
if key == v[1] then attacking = true v[2](mouse) attacking = false end
end
end)
mouse.Button1Down:connect(function() if attacking then return end attacking = true sel(mouse) attacking = false end)
end)
--mediafire

end}
module[3] = {"Chocobo",function()



Player = game.Players.LocalPlayer

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

ModelName = "Chocobo"

attack = false 

attacktype = 1

Hitdeb = 0

value1=0

Neck = Torso.Neck

local neckcf0 = Neck.C0


----------------------------

--Customize

Energy = 200

MaxEnergy = 200

ChocoboHP = 500


Alive = false


mindamage = 20

maxdamage = 40

crtmaxdamage = 50

omindamage = mindamage

omaxdamage = maxdamage 

ocrtmaxdamage = crtmaxdamage

crtrate = 100/5

--100%/critpercentage


oblkbrkr = 2

blockbreaker = oblkbrkr


speed = 30

jump = 60


if Character.Name=="Name" then

ColorVariation = "Name her" 

elseif Character.Name=="DahNoob" then

ColorVariation = "DahNoob" 

elseif Character.Name=="Robloxshathelper" then

ColorVariation = "Robloxshathelper"

else

ColorVariation = "Yellow"

end


if ColorVariation == "Yellow" then

handlecolor = BrickColor.new("Bright yellow")

bcolor = BrickColor.new("Bright orange") 

beakcolor = BrickColor.new("Bright orange")

ropecolor = BrickColor.new("Brown")

eyecolor = BrickColor.new("Bright blue")

elseif                                 ColorVariation == "Red" then

handlecolor =BrickColor.new("Bright red")

bcolor = BrickColor.new("Black")

beakcolor = BrickColor.new("Really red")

ropecolor = BrickColor.new("Brown")

eyecolor = BrickColor.new("Bright blue")

elseif                                 ColorVariation == "Black" then

handlecolor = BrickColor.new("Black")

bcolor = BrickColor.new("Brown")

beakcolor = BrickColor.new("Bright orange")

ropecolor = BrickColor.new("Brown")

eyecolor = BrickColor.new("Bright blue")

elseif                                 ColorVariation == "Purple" then

handlecolor = BrickColor.new("Alder")

bcolor = BrickColor.new("Bright violet")

beakcolor = BrickColor.new("Bright orange")

ropecolor = BrickColor.new("Brown")

eyecolor = BrickColor.new("Bright blue")

elseif                                 ColorVariation == "Name" then

handlecolor =BrickColor.new("White")

bcolor = BrickColor.new("Bright orange")

beakcolor = BrickColor.new("Bright orange")

ropecolor = BrickColor.new("Brown")

eyecolor = BrickColor.new("Navy blue")

elseif                                 ColorVariation == "Orange" then

handlecolor =BrickColor.new("Neon orange")

bcolor = BrickColor.new("Brown")

beakcolor = BrickColor.new("Brown")

ropecolor = BrickColor.new("Bright yellow")

eyecolor = BrickColor.new("Royal purple")

elseif                                 ColorVariation == "DahNoob" then

handlecolor = BrickColor.new("Black")

bcolor = BrickColor.new("Medium stone grey") 

beakcolor = BrickColor.new("Medium stone grey")

ropecolor = BrickColor.new("Brown")

eyecolor = BrickColor.new("Really black")

elseif                                 ColorVariation == "Robloxshathelper" then

handlecolor = BrickColor.new("Bright blue")

bcolor = BrickColor.new("Bright orange") 

beakcolor = BrickColor.new("Bright orange")

ropecolor = BrickColor.new("Brown")

eyecolor = BrickColor.new("Bright blue")

else

--Custom

handlecolor =BrickColor.new("Bright blue")

bcolor = BrickColor.new("Medium blue")

beakcolor = BrickColor.new("Medium blue")

ropecolor = BrickColor.new("White")

end


Ride = true

Rope = true



ToolName = "Chocobo"


--------------------------------------------------------------------------------------------------------------------
-------------------

if Character:findFirstChild("EquippedVal",true) ~= nil then

Character:findFirstChild("EquippedVal",true).Parent = nil

end

ev = Instance.new("BoolValue",Character)

ev.Name = "EquippedVal"

ev.Value = false

if Character:findFirstChild("Block",true) ~= nil then

Character:findFirstChild("Block",true).Parent = nil

end



--player

player = nil

--welds

RW, LW , RWL, LWL = Instance.new("Weld"), Instance.new("Weld"), Instance.new("Weld"), Instance.new("Weld")

--what anim

anim = "none"

--other var

player = Player

ch = Character

--save shoulders

AoETrue = {}

RSH, LSH , RHL, LHL = ch.Torso["Right Shoulder"], ch.Torso["Left Shoulder"] , ch.Torso["Right Hip"] , ch.Torso["Left Hip"]



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

        RightLeg.CanCollide = false

end


function LWLFunc()

        LWL.Part1 = ch["Left Leg"]

        LHL.Part1 = nil

        LeftLeg.CanCollide = true

end


function RWLRem()

        RWL.Part1 = nil

        RHL.Part1 = ch["Right Leg"]

        RightLeg.CanCollide = false

end

function LWLRem()

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





if Character:findFirstChild(ModelName,true) ~= nil then

Character:findFirstChild(ModelName,true).Parent = nil

        RHL.Part1 = ch["Right Leg"]

        LHL.Part1 = ch["Left Leg"]

        RSH.Part1 = ch["Right Arm"]

        LSH.Part1 = ch["Left Arm"]

end







local swordholder = Instance.new("Model")

swordholder.Name = ModelName

swordholder.Parent = Character


--derp

        RW.Part0 = ch.Torso

        RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

        RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

        RW.Parent = swordholder

        --

        LW.Part0 = ch.Torso

        LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)

        LW.C1 = CFrame.new(0, 0.5, 0)

        LW.Parent = swordholder

        --

        RWL.Part0 = ch.Torso

        RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(0, 0, 0)

        RWL.C1 = CFrame.new(0.5, 1, 0)

        RWL.Parent = swordholder

        --

        LWL.Part0 = ch.Torso

        LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(0, 0, 0)

        LWL.C1 = CFrame.new(-0.5, 1, 0)

        LWL.Parent = swordholder





local msh1 = Instance.new("SpecialMesh")

msh1.Scale = Vector3.new(1,1.2,1.2)

msh1.MeshType = "Sphere"

local msh2 = Instance.new("CylinderMesh")

local msh3 = Instance.new("CylinderMesh")

local msh4 = Instance.new("SpecialMesh")

msh4.Scale = Vector3.new(1,1,1)

msh4.MeshType = "Sphere"

local msh5 = Instance.new("SpecialMesh")

msh5.Scale = Vector3.new(1,0.75,1.2)

msh5.MeshId = "http://www.roblox.com/asset/?id=1778999"

local msh6 = Instance.new("SpecialMesh")

msh6.Scale = Vector3.new(1,1,1)

msh6.MeshType = "Sphere"

local msh7 = Instance.new("SpecialMesh")

msh7.Scale = Vector3.new(1,1,1)

msh7.MeshType = "Sphere"

local msh6a = Instance.new("SpecialMesh")

msh6a.Scale = Vector3.new(1,1,1)

msh6a.MeshType = "Sphere"

local msh7a = Instance.new("SpecialMesh")

msh7a.Scale = Vector3.new(1,1,1)

msh7a.MeshType = "Sphere"

local msh8 = Instance.new("SpecialMesh")

msh8.Scale = Vector3.new(1,1,1)

msh8.MeshType = "Sphere"

local msh9 = Instance.new("SpecialMesh")

msh9.Scale = Vector3.new(1,1,1)

msh9.MeshType = "Sphere"

local msh10 = Instance.new("SpecialMesh")

msh10.Scale = Vector3.new(1,1,1)

msh10.MeshType = "Sphere"

local msh11 = Instance.new("SpecialMesh")

msh11.Scale = Vector3.new(1,1,1)

msh11.MeshType = "Sphere"

local msh12 = Instance.new("SpecialMesh")

msh12.Scale = Vector3.new(1,1,1)

msh12.MeshType = "Sphere"

local msh13 = Instance.new("SpecialMesh")

msh13.Scale = Vector3.new(1,1,1)

msh13.MeshType = "Sphere"

local msh14 = Instance.new("SpecialMesh")

msh14.Scale = Vector3.new(1,1,1)

msh14.MeshType = "Sphere"

local msh15 = Instance.new("SpecialMesh")

msh15.Scale = Vector3.new(1,1,1)

msh15.MeshType = "Sphere"

local msh16 = Instance.new("SpecialMesh")

msh16.Scale = Vector3.new(1,1,1)

msh16.MeshType = "Sphere"

local msh17 = Instance.new("SpecialMesh")

msh17.Scale = Vector3.new(1,1,1)

msh17.MeshType = "Sphere"

local msh18 = Instance.new("SpecialMesh")

msh18.Scale = Vector3.new(1,1,1)

msh18.MeshType = "Sphere"

local msh19 = Instance.new("SpecialMesh")

msh19.Scale = Vector3.new(1,1,1)

msh19.MeshType = "Sphere"

local msh20 = Instance.new("SpecialMesh")

msh20.Scale = Vector3.new(1,1,1)

msh20.MeshType = "Sphere"

local msh21 = Instance.new("SpecialMesh")

msh21.Scale = Vector3.new(1,1,1)

msh21.MeshType = "Sphere"

local msh22 = Instance.new("CylinderMesh")

local msh23 = Instance.new("CylinderMesh")

local msh24 = Instance.new("BlockMesh")

local msh25 = Instance.new("BlockMesh")

local msh26 = Instance.new("BlockMesh")

local msh27 = Instance.new("BlockMesh")

local msh28 = Instance.new("CylinderMesh")

local msh29 = Instance.new("CylinderMesh")

local msh30 = Instance.new("BlockMesh")

local msh31 = Instance.new("BlockMesh")

local msh32 = Instance.new("BlockMesh")

local msh33 = Instance.new("BlockMesh")


local prt1 = Instance.new("Part")

prt1.formFactor = 3

prt1.CanCollide = true

prt1.Name = "ChocoboBody"

prt1.Locked = true

prt1.Size = Vector3.new(3.5,2.5,5) 

prt1.Parent = swordholder

msh1.Parent = prt1

prt1.BrickColor = handlecolor

local prt2 = Instance.new("Part")

prt2.formFactor = 3

prt2.CanCollide = true

prt2.Name = "ChocoboNeck"

prt2.Locked = true

prt2.Size = Vector3.new(1.25,2,1.25)

prt2.Parent = swordholder

msh2.Parent = prt2

prt2.BrickColor = handlecolor

local prt3 = Instance.new("Part")

prt3.formFactor = 3

prt3.CanCollide = true

prt3.Name = "ChocoboNeck2"

prt3.Locked = true

prt3.Size = Vector3.new(1.25,2,1.25)

prt3.Parent = swordholder

msh3.Parent = prt3

prt3.BrickColor = handlecolor

local prt3a = Instance.new("Part")

prt3a.formFactor = 3

prt3a.CanCollide = false

prt3a.Name = "ChocoboNeck2Joint"

prt3a.Locked = true

prt3a.Size = Vector3.new(0.2,0.2,0.2)

prt3a.Parent = swordholder

prt3a.Transparency = 1

local prt4 = Instance.new("Part")

prt4.formFactor = 3

prt4.CanCollide = true

prt4.Name = "Head"

prt4.Locked = true 

prt4.Size = Vector3.new(2,2,3)

prt4.Parent = swordholder

msh4.Parent = prt4 

prt4.BrickColor = handlecolor

local trs = Instance.new("Part")

trs.formFactor = 3

trs.CanCollide = true

trs.Name = "Torso"

trs.Locked = true 

trs.Size = Vector3.new(0.2,0.2,0.2)

trs.Parent = swordholder

trs.Transparency = 1

local wt = Instance.new("Weld")

wt.Parent = trs

wt.Part0 = trs

wt.Part1 = prt4

wt.C0 = CFrame.Angles(math.rad(25),0,0)

local prt5 = Instance.new("Part")

prt5.formFactor = 3

prt5.CanCollide = false

prt5.Name = "Beak"

prt5.Locked = true

prt5.Size = Vector3.new(1,1.5,1)

prt5.Parent = swordholder

msh5.Parent = prt5

prt5.BrickColor = beakcolor


local prt6 = Instance.new("Part")

prt6.formFactor = 3

prt6.CanCollide = false

prt6.Name = "Eye1"

prt6.Locked = true

prt6.Size = Vector3.new(0.3,0.3,0.6)

prt6.Parent = swordholder

msh6.Parent = prt6

prt6.BrickColor = BrickColor.new("White")

local prt7 = Instance.new("Part")

prt7.formFactor = 3

prt7.CanCollide = false

prt7.Name = "Eye2"

prt7.Locked = true

prt7.Size = Vector3.new(0.3,0.3,0.6)

prt7.Parent = swordholder

msh7.Parent = prt7

prt7.BrickColor = BrickColor.new("White")

local prt6a = Instance.new("Part")

prt6a.formFactor = 3

prt6a.CanCollide = false

prt6a.Name = "Eye1a"

prt6a.Locked = true

prt6a.Size = Vector3.new(0.2,0.2,0.3)

prt6a.Parent = swordholder

msh6a.Parent = prt6a

prt6a.BrickColor = eyecolor

local prt7a = Instance.new("Part")

prt7a.formFactor = 3

prt7a.CanCollide = false

prt7a.Name = "Eye2a"

prt7a.Locked = true

prt7a.Size = Vector3.new(0.2,0.2,0.3)

prt7a.Parent = swordholder

msh7a.Parent = prt7a

prt7a.BrickColor = eyecolor


local prt8 = Instance.new("Part")

prt8.formFactor = 3

prt8.CanCollide = false

prt8.Name = "HeadFeathers" 

prt8.Locked = true

prt8.Size = Vector3.new(1,0.2,3)

prt8.Parent = swordholder

msh8.Parent = prt8

prt8.BrickColor = handlecolor

local prt9 = Instance.new("Part")

prt9.formFactor = 3

prt9.CanCollide = false

prt9.Name = "HeadFeathers"

prt9.Locked = true

prt9.Size = Vector3.new(1,0.2,3)

prt9.Parent = swordholder

msh9.Parent = prt9

prt9.BrickColor = handlecolor 

local prt10 = Instance.new("Part")

prt10.formFactor = 3

prt10.CanCollide = false

prt10.Name = "HeadFeathers"

prt10.Locked = true

prt10.Size = Vector3.new(1,0.2,3)

prt10.Parent = swordholder

msh10.Parent = prt10

prt10.BrickColor = handlecolor


--Wings!!

local prt11 = Instance.new("Part")

prt11.formFactor = 3

prt11.CanCollide = false

prt11.Name = "RightWing"

prt11.Locked = true

prt11.Size = Vector3.new(1,3,5)

prt11.Parent = swordholder

msh11.Parent = prt11

prt11.BrickColor = handlecolor

local prt12 = Instance.new("Part")

prt12.formFactor = 3

prt12.CanCollide = false

prt12.Name = "RightWing1"

prt12.Locked = true

prt12.Size = Vector3.new(0.5,1,2)

prt12.Parent = swordholder

msh12.Parent = prt12

prt12.BrickColor = handlecolor

local prt13 = Instance.new("Part")

prt13.formFactor = 3

prt13.CanCollide = false

prt13.Name = "RightWing2"

prt13.Locked = true

prt13.Size = Vector3.new(0.5,1,2)

prt13.Parent = swordholder

msh13.Parent = prt13

prt13.BrickColor = handlecolor

local prt14 = Instance.new("Part")

prt14.formFactor = 3

prt14.CanCollide = false

prt14.Name = "RightWing3"

prt14.Locked = true

prt14.Size = Vector3.new(0.5,1,2)

prt14.Parent = swordholder

msh14.Parent = prt14

prt14.BrickColor = handlecolor

local prt15 = Instance.new("Part")

prt15.formFactor = 3

prt15.CanCollide = false

prt15.Name = "RightWing4"

prt15.Locked = true

prt15.Size = Vector3.new(0.5,1,2)

prt15.Parent = swordholder

msh15.Parent = prt15

prt15.BrickColor = handlecolor


local prt16 = Instance.new("Part")

prt16.formFactor = 3

prt16.CanCollide = false

prt16.Name = "LeftWing"

prt16.Locked = true

prt16.Size = Vector3.new(1,3,5)

prt16.Parent = swordholder

msh16.Parent = prt16

prt16.BrickColor = handlecolor

local prt17 = Instance.new("Part")

prt17.formFactor = 3

prt17.CanCollide = false

prt17.Name = "LeftWing1"

prt17.Locked = true

prt17.Size = Vector3.new(0.5,1,2)

prt17.Parent = swordholder

msh17.Parent = prt17

prt17.BrickColor = handlecolor

local prt18 = Instance.new("Part")

prt18.formFactor = 3

prt18.CanCollide = false

prt18.Name = "LeftWing2"

prt18.Locked = true

prt18.Size = Vector3.new(0.5,1,2)

prt18.Parent = swordholder

msh18.Parent = prt18

prt18.BrickColor = handlecolor

local prt19 = Instance.new("Part") 

prt19.formFactor = 3

prt19.CanCollide = false

prt19.Name = "LeftWing3"

prt19.Locked = true

prt19.Size = Vector3.new(0.5,1,2)

prt19.Parent = swordholder

msh19.Parent = prt19

prt19.BrickColor = handlecolor

local prt20 = Instance.new("Part")

prt20.formFactor = 3

prt20.CanCollide = false

prt20.Name = "LeftWing4"

prt20.Locked = true

prt20.Size = Vector3.new(0.5,1,2)

prt20.Parent = swordholder

msh20.Parent = prt20

prt20.BrickColor = handlecolor


--Tail

local prt21 = Instance.new("Part")

prt21.formFactor = 3

prt21.CanCollide = false

prt21.Name = "Tail"

prt21.Locked = true

prt21.Size = Vector3.new(3,6,1)

prt21.Parent = swordholder

msh21.Parent = prt21

prt21.BrickColor = handlecolor


--Legs

local prt22 = Instance.new("Part")

prt22.formFactor = 3

prt22.CanCollide = true

prt22.Name = "RightLeg"

prt22.Locked = true

prt22.Size = Vector3.new(1,2,1)

prt22.Parent = swordholder

msh22.Parent = prt22

prt22.BrickColor = handlecolor

local prt22a = Instance.new("Part")

prt22a.formFactor = 3

prt22a.CanCollide = false

prt22a.Name = "RightLega"

prt22a.Locked = true

prt22a.Size = Vector3.new(0.2,0.2,0.2)

prt22a.Parent = swordholder

prt22a.Transparency = 1

local prt23 = Instance.new("Part")

prt23.formFactor = 3

prt23.CanCollide = false

prt23.Name = "RightLeg2"

prt23.Locked = true

prt23.Size = Vector3.new(0.75,2,0.75)

prt23.Parent = swordholder

msh23.Parent = prt23

prt23.BrickColor = bcolor

local prt24 = Instance.new("Part")

prt24.formFactor = 3

prt24.CanCollide = false

prt24.Name = "RightFeet"

prt24.Locked = true

prt24.Size = Vector3.new(1,0.75,2.5)

prt24.Parent = swordholder

msh24.Parent = prt24

prt24.BrickColor = bcolor

local prt25 = Instance.new("Part")

prt25.formFactor = 3

prt25.CanCollide = false

prt25.Name = "RightFeet1"

prt25.Locked = true 

prt25.Size = Vector3.new(0.3,0.3,1.5)

prt25.Parent = swordholder

msh25.Parent = prt25

prt25.BrickColor = bcolor

local prt26 = Instance.new("Part")

prt26.formFactor = 3

prt26.CanCollide = false

prt26.Name = "RightFeet2"

prt26.Locked = true 

prt26.Size = Vector3.new(0.5,0.5,1.5)

prt26.Parent = swordholder

msh26.Parent = prt26

prt26.BrickColor = bcolor

local prt27 = Instance.new("Part")

prt27.formFactor = 3

prt27.CanCollide = false

prt27.Name = "RightFeet3"

prt27.Locked = true 

prt27.Size = Vector3.new(0.5,0.5,1.5)

prt27.Parent = swordholder

msh27.Parent = prt27

prt27.BrickColor = bcolor


local prt28 = Instance.new("Part")

prt28.formFactor = 3

prt28.CanCollide = true

prt28.Name = "LeftLeg"

prt28.Locked = true

prt28.Size = Vector3.new(1,2,1)

prt28.Parent = swordholder

msh28.Parent = prt28

prt28.BrickColor = handlecolor

local prt28a = Instance.new("Part")

prt28a.formFactor = 3

prt28a.CanCollide = false

prt28a.Name = "LeftLega"

prt28a.Locked = true

prt28a.Size = Vector3.new(0.2,0.2,0.2)

prt28a.Parent = swordholder

prt28a.Transparency = 1

local prt29 = Instance.new("Part")

prt29.formFactor = 3

prt29.CanCollide = false

prt29.Name = "LeftLeg2"

prt29.Locked = true

prt29.Size = Vector3.new(0.75,2,0.75)

prt29.Parent = swordholder

msh29.Parent = prt29

prt29.BrickColor = bcolor

local prt30 = Instance.new("Part")

prt30.formFactor = 3

prt30.CanCollide = false

prt30.Name = "LeftFeet"

prt30.Locked = true

prt30.Size = Vector3.new(1,0.75,2.5)

prt30.Parent = swordholder

msh30.Parent = prt30

prt30.BrickColor = bcolor

local prt31 = Instance.new("Part")

prt31.formFactor = 3

prt31.CanCollide = false

prt31.Name = "LeftFeet1"

prt31.Locked = true 

prt31.Size = Vector3.new(0.3,0.3,1.5)

prt31.Parent = swordholder

msh31.Parent = prt31

prt31.BrickColor = bcolor

local prt32 = Instance.new("Part")

prt32.formFactor = 3

prt32.CanCollide = false

prt32.Name = "LeftFeet2"

prt32.Locked = true 

prt32.Size = Vector3.new(0.5,0.5,1.5)

prt32.Parent = swordholder

msh32.Parent = prt32

prt32.BrickColor = bcolor

local prt33 = Instance.new("Part")

prt33.formFactor = 3

prt33.CanCollide = false

prt33.Name = "RightFeet3"

prt33.Locked = true 

prt33.Size = Vector3.new(0.5,0.5,1.5)

prt33.Parent = swordholder

msh33.Parent = prt33

prt33.BrickColor = bcolor


--Backseat :D

local prt34 = Instance.new("Seat")

prt34.formFactor = 3

prt34.CanCollide = false

prt34.Name = "Backseat"

prt34.Locked = true 

prt34.Size = Vector3.new(0.2,1,0.2)

prt34.Parent = swordholder

prt34.Transparency = 1


--

local prt35 = Instance.new("Part")

prt35.formFactor = 3

prt35.CanCollide = true

prt35.Name = "Stand"

prt35.Locked = true 

prt35.Size = Vector3.new(1,4,1)

prt35.Parent = swordholder

prt35.Transparency = 1

local w35 = Instance.new("Weld")

w35.Parent = prt35

w35.Part0 = prt35

w35.Part1 = prt1

w35.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w35.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 2,0)  


--Torso

local w1 = Instance.new("Weld")

w1.Parent = prt1 

w1.Part0 = prt1

w1.Part1 = Torso 

w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), math.rad(0)) * CFrame.new(0, 0,0)

w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(-0), math.rad(0)) * CFrame.new(0, 3, -1)

--Neck

local w2 = Instance.new("Weld")

w2.Parent = prt2

w2.Part0 = prt2

w2.Part1 = prt1

w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)

w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5)

local w3a = Instance.new("Weld")

w3a.Parent = prt3a

w3a.Part0 = prt3a

w3a.Part1 = prt1

w3a.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0) 

w3a.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -1.5,3)

local w3 = Instance.new("Weld")

w3.Parent = prt3

w3.Part0 = prt3

w3.Part1 = prt3a

w3.C1 = CFrame.Angles(math.rad(-20), 0, 0) * CFrame.new(0, 0.465,0) 

w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)

--Head

local w4 = Instance.new("Weld")

w4.Parent = prt4

w4.Part0 = prt4

w4.Part1 = prt3

w4.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0) 

w4.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -2.5/2,0.25)

local w5 = Instance.new("Weld")

w5.Parent = prt5 

w5.Part0 = prt5

w5.Part1 = prt4

w5.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0) 

w5.C0 = CFrame.Angles(math.rad(100), 0, 0) * CFrame.new(0, 0.25,1.45)

local w6 = Instance.new("Weld")

w6.Parent = prt6

w6.Part0 = prt6

w6.Part1 = prt4

w6.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0) 

w6.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0.75, -0.25,0.75)

local w7 = Instance.new("Weld")

w7.Parent = prt7

w7.Part0 = prt7

w7.Part1 = prt4

w7.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0) 

w7.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(-0.75, -0.25,0.75)

local w6a = Instance.new("Weld")

w6a.Parent = prt6a

w6a.Part0 = prt6a

w6a.Part1 = prt4

w6a.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0) 

w6a.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0.775, -0.25,0.91)

local w7a = Instance.new("Weld")

w7a.Parent = prt7a

w7a.Part0 = prt7a

w7a.Part1 = prt4

w7a.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0) 

w7a.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(-0.775, -0.25,0.91)

local w8 = Instance.new("Weld")

w8.Parent = prt8

w8.Part0 = prt8

w8.Part1 = prt4

w8.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0) 

w8.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.9,-1)

local w9 = Instance.new("Weld")

w9.Parent = prt9

w9.Part0 = prt9

w9.Part1 = prt4

w9.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0) 

w9.C0 = CFrame.Angles(math.rad(0), math.rad(20), math.rad(-40)) * CFrame.new(0.75, -0.5,-1)

local w10 = Instance.new("Weld")

w10.Parent = prt10

w10.Part0 = prt10

w10.Part1 = prt4

w10.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w10.C0 = CFrame.Angles(math.rad(0), math.rad(-20), math.rad(40)) * CFrame.new(-0.75, -0.5,-1)

--Right Wing

local w11 = Instance.new("Weld")

w11.Parent = prt11

w11.Part0 = prt11

w11.Part1 = prt1

w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(-1.5, 0,0)

local w12 = Instance.new("Weld")

w12.Parent = prt12

w12.Part0 = prt12

w12.Part1 = prt11

w12.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w12.C0 = CFrame.Angles(math.rad(45), math.rad(0), math.rad(0)) * CFrame.new(0, 0,-2.5)

local w13 = Instance.new("Weld")

w13.Parent = prt13

w13.Part0 = prt13

w13.Part1 = prt11

w13.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w13.C0 = CFrame.Angles(math.rad(55), math.rad(0), math.rad(0)) * CFrame.new(0, -0.25,-2.25)

local w14 = Instance.new("Weld")

w14.Parent = prt14

w14.Part0 = prt14

w14.Part1 = prt11

w14.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w14.C0 = CFrame.Angles(math.rad(65), math.rad(0), math.rad(0)) * CFrame.new(0, -0.5,-2)

local w15 = Instance.new("Weld")

w15.Parent = prt15

w15.Part0 = prt15

w15.Part1 = prt11

w15.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w15.C0 = CFrame.Angles(math.rad(75), math.rad(0), math.rad(0)) * CFrame.new(0, -0.75,-1.5)

--Left Wing

local w16 = Instance.new("Weld")

w16.Parent = prt16

w16.Part0 = prt16

w16.Part1 = prt1

w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(1.5, 0,0)

local w17 = Instance.new("Weld")

w17.Parent = prt17

w17.Part0 = prt17

w17.Part1 = prt16

w17.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w17.C0 = CFrame.Angles(math.rad(45), math.rad(0), math.rad(0)) * CFrame.new(0, 0,-2.5)

local w18 = Instance.new("Weld")

w18.Parent = prt18

w18.Part0 = prt18

w18.Part1 = prt16

w18.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w18.C0 = CFrame.Angles(math.rad(55), math.rad(0), math.rad(0)) * CFrame.new(0, -0.25,-2.25)

local w19 = Instance.new("Weld")

w19.Parent = prt19

w19.Part0 = prt19

w19.Part1 = prt16

w19.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w19.C0 = CFrame.Angles(math.rad(65), math.rad(0), math.rad(0)) * CFrame.new(0, -0.5,-2)

local w20 = Instance.new("Weld")

w20.Parent = prt20

w20.Part0 = prt20

w20.Part1 = prt16

w20.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w20.C0 = CFrame.Angles(math.rad(75), math.rad(0), math.rad(0)) * CFrame.new(0, -0.75,-1.5)

--Tail

local w21 = Instance.new("Weld")

w21.Parent = prt21 

w21.Part0 = prt21

w21.Part1 = prt1

w21.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w21.C0 = CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)) * CFrame.new(0, -1.5,-3.5)

--Right Leg

local w22 = Instance.new("Weld")

w22.Parent = prt22

w22.Part0 = prt22

w22.Part1 = prt1

w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w22.C0 = CFrame.Angles(math.rad(20), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 

local w22a = Instance.new("Weld")

w22a.Parent = prt22a

w22a.Part0 = prt22a

w22a.Part1 = prt22

w22a.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w22a.C0 = CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)) * CFrame.new(0, 1,0) 

local w23 = Instance.new("Weld")

w23.Parent = prt23

w23.Part0 = prt23

w23.Part1 = prt22a

w23.C1 = CFrame.Angles(math.rad(80), 0, 0) * CFrame.new(0, -0.25,0)  

w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 

local w24 = Instance.new("Weld")

w24.Parent = prt24

w24.Part0 = prt24

w24.Part1 = prt23

w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

local w25 = Instance.new("Weld")

w25.Parent = prt25

w25.Part0 = prt25

w25.Part1 = prt24

w25.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w25.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.1,-1.5) 

local w26 = Instance.new("Weld")

w26.Parent = prt26

w26.Part0 = prt26

w26.Part1 = prt24

w26.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w26.C0 = CFrame.Angles(math.rad(0), math.rad(45), math.rad(0)) * CFrame.new(-0.75, 0.1,1.5) 

local w27 = Instance.new("Weld")

w27.Parent = prt27

w27.Part0 = prt27

w27.Part1 = prt24

w27.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w27.C0 = CFrame.Angles(math.rad(0), math.rad(-45), math.rad(0)) * CFrame.new(0.75, 0.1,1.5)  

--Left Leg

local w28 = Instance.new("Weld")

w28.Parent = prt28

w28.Part0 = prt28

w28.Part1 = prt1

w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w28.C0 = CFrame.Angles(math.rad(20), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 

local w28a = Instance.new("Weld")

w28a.Parent = prt28a

w28a.Part0 = prt28a

w28a.Part1 = prt28

w28a.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w28a.C0 = CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)) * CFrame.new(0, 1,0) 

local w29 = Instance.new("Weld")

w29.Parent = prt29

w29.Part0 = prt29

w29.Part1 = prt28a

w29.C1 = CFrame.Angles(math.rad(80), 0, 0) * CFrame.new(0, -0.25,0)  

w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 

local w30 = Instance.new("Weld")

w30.Parent = prt30

w30.Part0 = prt30

w30.Part1 = prt29

w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

local w31 = Instance.new("Weld")

w31.Parent = prt31

w31.Part0 = prt31

w31.Part1 = prt30

w31.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w31.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.1,-1.5) 

local w32 = Instance.new("Weld")

w32.Parent = prt32

w32.Part0 = prt32

w32.Part1 = prt30

w32.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w32.C0 = CFrame.Angles(math.rad(0), math.rad(45), math.rad(0)) * CFrame.new(-0.75, 0.1,1.5) 

local w33 = Instance.new("Weld")

w33.Parent = prt33

w33.Part0 = prt33

w33.Part1 = prt30

w33.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w33.C0 = CFrame.Angles(math.rad(0), math.rad(-45), math.rad(0)) * CFrame.new(0.75, 0.1,1.5) 

--Backseat 

local w34 = Instance.new("Weld")

w34.Parent = prt1

w34.Part0 = prt34

w34.Part1 = prt1

w34.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w34.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, -1,-1.5)  

if Alive then

local hum = Instance.new("Humanoid")

hum.Parent = swordholder

hum.MaxHealth = ChocoboHP

hum.Health = ChocoboHP

hum.PlatformStand = true

end


local w36 = Instance.new("Weld")

local w37 = Instance.new("Weld")

--[[if Rope then

local msh36 = Instance.new("BlockMesh")

local prt36 = Instance.new("Part")

prt36.formFactor = 3

prt36.CanCollide = true

prt36.Name = "MouthRope"

prt36.Locked = true 

prt36.Size = Vector3.new(1,0.2,0.2)

prt36.Parent = swordholder

msh36.Parent = prt36

prt36.BrickColor = ropecolor

w36.Parent = prt36

w36.Part0 = prt36

w36.Part1 = prt5

w36.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w36.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0,0)  

local msh37 = Instance.new("BlockMesh")

local prt37 = Instance.new("Part")

prt37.formFactor = 3

prt37.CanCollide = true

prt37.Name = "MouthRope2"

prt37.Locked = true 

prt37.Size = Vector3.new(3,0.2,0.2)

prt37.Parent = swordholder

msh37.Parent = prt37

prt37.BrickColor = ropecolor

w37.Parent = prt37

w37.Part0 = prt37

w37.Part1 = Torso

w37.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w37.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0,-1)  

local prt38a = Instance.new("Part")

prt38a.formFactor = 3

prt38a.CanCollide = false

prt38a.Name = "MouthRope3Joint"

prt38a.Locked = true 

prt38a.Size = Vector3.new(0.2,0.2,0.2)

prt38a.Parent = swordholder

prt38a.Transparency = 1

local w38a = Instance.new("Weld")

w38a.Parent = prt38a

w38a.Part0 = prt38a

w38a.Part1 = prt3

w38a.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w38a.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0.5, 1.5,0.5)  

local prt39a = Instance.new("Part")

prt39a.formFactor = 3 

prt39a.CanCollide = false

prt39a.Name = "MouthRope4Joint"

prt39a.Locked = true 

prt39a.Size = Vector3.new(0.2,0.2,0.2)

prt39a.Parent = swordholder

prt39a.Transparency = 1

local w39a = Instance.new("Weld")

w39a.Parent = prt39a

w39a.Part0 = prt39a

w39a.Part1 = prt3

w39a.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w39a.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(-0.5, 1.5,0.5)  

local msh38 = Instance.new("BlockMesh")

local prt38 = Instance.new("Part")

prt38.formFactor = 3

prt38.Name = "MouthRope3"

prt38.Locked = true 

prt38.Size = Vector3.new(0.2,0.2,0.2)

prt38.Parent = swordholder

msh38.Parent = prt38

prt38.BrickColor = ropecolor

prt38.CanCollide = false

prt38.Anchored = true

local msh39 = Instance.new("BlockMesh")

local prt39 = Instance.new("Part")

prt39.formFactor = 3

prt39.Name = "MouthRope4"

prt39.Locked = true 

prt39.Size = Vector3.new(0.2,0.2,0.2)

prt39.Parent = swordholder

msh39.Parent = prt39

prt39.BrickColor = ropecolor

prt39.CanCollide = false

prt39.Anchored = true

local msh40 = Instance.new("BlockMesh")

local prt40 = Instance.new("Part")

prt40.formFactor = 3

prt40.Name = "MouthRope5"

prt40.Locked = true 

prt40.Size = Vector3.new(0.2,0.2,0.2)

prt40.Parent = swordholder

msh40.Parent = prt40

prt40.BrickColor = ropecolor

prt40.CanCollide = false

prt40.Anchored = true

local msh41 = Instance.new("BlockMesh")

local prt41 = Instance.new("Part")

prt41.formFactor = 3

prt41.Name = "MouthRope6"

prt41.Locked = true 

prt41.Size = Vector3.new(0.2,0.2,0.2)

prt41.Parent = swordholder

msh41.Parent = prt41

prt41.BrickColor = ropecolor

prt41.CanCollide = false

prt41.Anchored = true

coroutine.resume(coroutine.create(function()

repeat

wait()

local ll = prt37.CFrame * CFrame.new(prt37.Size.x/-2,0,0)

local rr = prt37.CFrame * CFrame.new(prt37.Size.x/2,0,0)

local oristrpos1 = prt38a.CFrame

local oristrpos2 = prt39a.CFrame

local oristrpos3 = prt36.CFrame*CFrame.new((prt36.Size.x/-2)+0.1,0,0)

local oristrpos4 = prt36.CFrame*CFrame.new((prt36.Size.x/2)-0.1,0,0)

local mg1 = (ll.p - oristrpos1.p).magnitude

local mg2 = (rr.p - oristrpos2.p).magnitude

local mg3 = (oristrpos1.p - oristrpos3.p).magnitude

local mg4 = (oristrpos2.p - oristrpos4.p).magnitude

prt38.Size = Vector3.new(0.2,mg1,0.2) 

prt38.CFrame = CFrame.new((ll.p+oristrpos1.p)/2,oristrpos1.p) * CFrame.Angles(math.rad(90),0,0)

prt39.Size = Vector3.new(0.2,mg2,0.2)

prt39.CFrame = CFrame.new((rr.p+oristrpos2.p)/2,oristrpos2.p) * CFrame.Angles(math.rad(90),0,0)

prt40.Size = Vector3.new(0.2,mg3,0.2)

prt40.CFrame = CFrame.new((oristrpos1.p+oristrpos3.p)/2,oristrpos3.p) * CFrame.Angles(math.rad(90),0,0)

prt41.Size = Vector3.new(0.2,mg3,0.2)

prt41.CFrame = CFrame.new((oristrpos2.p+oristrpos4.p)/2,oristrpos4.p) * CFrame.Angles(math.rad(90),0,0)

until false

end))

end]]



local function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants

return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 

end 


local bg = Instance.new("BodyGyro")

bg.maxTorque = bg.maxTorque * math.huge

local bp = Instance.new("BodyPosition")

bp.maxForce = Vector3.new(math.huge,0,math.huge)

bp.P = bp.p * 10


function unequipweld()

w1.Part1 = nil

bg.Parent = prt1

bg.cframe = prt1.CFrame

local hit,pos = rayCast(Torso.Position+Vector3.new(0,10,0), Vector3.new(0,-2,0), 1000, Character)

bp.position = pos + Vector3.new(0,4,0)

bp.Parent = prt1

w37.Part1 = prt2

w37.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.5,-0.6)  

end


unequipweld()

bp.position = (Head.CFrame*CFrame.new(10,0,0)).p

bg.cframe = Head.CFrame


function equipweld()

w1.Part1 = Torso 

bg.Parent = nil

bp.Parent = nil

w37.Part1 = Torso 

w37.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,1.25)  

end

  



function ss(parent,p) --Slash


local SlashSound = Instance.new("Sound")

SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav"

SlashSound.Parent = parent

SlashSound.Volume = .7

SlashSound.Pitch = p

SlashSound.PlayOnRemove = true

coroutine.resume(coroutine.create(function()

wait() 

SlashSound.Parent = nil

end))

end

function uss(parent,p) --unsheath


local SlashSound = Instance.new("Sound")

SlashSound.SoundId = "rbxasset://sounds\\unsheath.wav"

SlashSound.Parent = parent

SlashSound.Volume = .7

SlashSound.Pitch = p

SlashSound.PlayOnRemove = true

coroutine.resume(coroutine.create(function()

wait() 

SlashSound.Parent = nil

end))

end

function fs(parent,p) --Fire Sound


local SlashSound = Instance.new("Sound")

SlashSound.SoundId = "http://www.roblox.com/asset/?id=31758982"

SlashSound.Parent = parent

SlashSound.Volume = .7

SlashSound.Pitch = p

SlashSound.PlayOnRemove = true

coroutine.resume(coroutine.create(function()

wait()

SlashSound.Parent = nil

end))

end

function ms(parent,p) --Metal Cling Sound


local SlashSound = Instance.new("Sound")

SlashSound.SoundId = "rbxasset://sounds\\metal.ogg"

SlashSound.Parent = parent

SlashSound.Volume = 5

SlashSound.Pitch = p

SlashSound.PlayOnRemove = true

coroutine.resume(coroutine.create(function()

wait()

SlashSound.Parent = nil

end))

end

function ws(parent,p) --Walk Sound


local SlashSound = Instance.new("Sound")

SlashSound.SoundId = "rbxasset://sounds\\bfsl-minifigfoots1.mp3"

SlashSound.Parent = parent

SlashSound.Volume = 1

SlashSound.Pitch = p

SlashSound.PlayOnRemove = true

coroutine.resume(coroutine.create(function()

wait()

SlashSound.Parent = nil

end))

end

--

--


function returndmg()

mindamage = omindamage

maxdamage = omaxdamage

crtmaxdamage = ocrtmaxdamage

end


function subdmg(sub)

mindamage = omindamage - sub

maxdamage = omaxdamage - sub

crtmaxdamage = ocrtmaxdamage - sub

end


function prcntdmg(sub)

mindamage = math.floor(omindamage - (omindamage*(sub/100)))

maxdamage = math.floor(omaxdamage - (omaxdamage*(sub/100)))

crtmaxdamage = math.floor(ocrtmaxdamage - (ocrtmaxdamage*(sub/100)))

end


function tagHumanoid(humanoid, player)

        local creator_tag = Instance.new("ObjectValue")

        creator_tag.Value = player

        creator_tag.Name = "creator"

        creator_tag.Parent = humanoid

end


function untagHumanoid(humanoid)

        if humanoid ~= nil then

                local tag = humanoid:findFirstChild("creator")

                if tag ~= nil then

                        tag.Parent = nil

                end

        end

end





function hideanim()

attack = true

RWRem()

LWRem()        

RWLRem()

LWLRem()

unequipweld()

attack = false

end



function equipanim()

attack = true

RWFunc()

RWLFunc()

LWLFunc()

LWFunc()

equipweld()

for i = 0.1 ,1 ,0.1 do

wait()

RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45*i),math.rad(0),math.rad(-20*i))

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)

LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45*i),math.rad(0),math.rad(20*i))

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0) 

RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(45*i), 0, math.rad(25*i))

RWL.C1 = CFrame.new(0.5, 1, 0)

LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(45*i), 0, math.rad(-25*i))

LWL.C1 = CFrame.new(-0.5, 1, 0)

Neck.C0 = neckcf0 * CFrame.Angles(math.rad(0),0,math.rad(0))

end 


attack = false

end


function noarms()

RWRem()

LWRem()

w37.Part1 = prt2

w37.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.5,-0.6)  

end


function arms()

RWFunc()

LWFunc()

w37.Part1 = Torso 

w37.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,1.25)  

end


function faketors()

local T = Instance.new("Part")

T.formFactor = 0

T.CanCollide = false

T.Name = "FakeTorso"

T.Locked = true

T.Size = Torso.Size

T.Parent = swordholder

T.Transparency = 1

T.BrickColor = Torso.BrickColor

for i,z in pairs(Character:GetChildren()) do

if z.className == "CharacterMesh" then

if z.BodyPart == Enum.BodyPart.Torso then

local SM = Instance.new("SpecialMesh",T)

SM.MeshId = "http://www.roblox.com/asset/?id=" .. z.MeshId

if z.BaseTextureId ~= 0 then

SM.TextureId = z.BaseTextureId

elseif z.OverlayTextureId ~= 0 then

SM.TextureId = z.OverlayTextureId

else

SM.TextureId = ""

end

end

end

end

local wt = Instance.new("Weld")

wt.Parent = T

wt.Part0 = T

wt.Part1 = Torso

RW.Part0 = T

LW.Part0 = T

T.Transparency = 0

Torso.Transparency = 1

RHL.Part0 = T

LHL.Part0 = T

return wt,T

end



if (script.Parent.className ~= "HopperBin") then 

Tool = Instance.new("HopperBin") 

Tool.Parent = Backpack 

Tool.Name = ToolName

script.Parent = Tool 

end 

Bin = Tool 

 

function damagesplat(dmg,hit,crit,blocked)

    local mo = Instance.new("Model")

    mo.Name = dmg

    local pa = Instance.new("Part",mo)

    pa.formFactor = 3

    pa.Size = Vector3.new(0.8,0.3,0.8)

    if crit then

    pa.BrickColor = BrickColor.new("Bright yellow")

    elseif not crit then

    pa.BrickColor = BrickColor.new("Bright red")

    end

    if blocked then pa.BrickColor = BrickColor.new("Bright blue") end

    pa.CFrame = CFrame.new(hit.Position) * CFrame.new(0, 3, 0)

    pa.Name = "Head"

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

    return pa

end


function damage(hum,dmg,critornot)

local pa = damagesplat(dmg,hum.Torso,critornot)

hum:TakeDamage(dmg)

coroutine.resume(coroutine.create(function()

tagHumanoid(hum,Player)

wait(1)

untagHumanoid(hum)

end))

return pa

end


function AddEnergy(add)

Energy = Energy + add

if Energy > MaxEnergy then

Energy = MaxEnergy

end

end




function OT(hit) --Normal Damage

if Hitdeb == 1 then return end

if hit.Parent == nil then return end

local hum = hit.Parent:findFirstChild("Humanoid") if hum ~= nil and hum ~= Character.Humanoid then

if hum.Health <= 0 then return end

if hit.Parent:findFirstChild("Block") ~= nil then 

if hit.Parent.Block.Value then 

damagesplat(0,hum.Torso,false,true) 

Hitdeb = 1

if hit.Parent.Block:findFirstChild("BlockPower") ~= nil then

if hit.Parent.Block.BlockPower.Value <= 1 then

hit.Parent.Block.Value = false 

elseif hit.Parent.Block.BlockPower.Value > 1 then

local critrandomizer = math.random(crtrate)

if critrandomizer ~= 1 then

hit.Parent.Block.BlockPower.Value = hit.Parent.Block.BlockPower.Value - blockbreaker 

elseif critrandomizer == 1 then

hit.Parent.Block.BlockPower.Value = hit.Parent.Block.BlockPower.Value - blockbreaker + 2

end

end

end

return end end

local critrandomizer = math.random(crtrate)

if critrandomizer ~= 1 then

local rndmdamage = math.random(mindamage,maxdamage)

damage(hum,rndmdamage,false)

elseif critrandomizer == 1 then

local rndmdamage = math.random(maxdamage,crtmaxdamage)

damage(hum,rndmdamage,true)

end

Hitdeb = 1

end

end



function AoE(p,magnitude) 

        local c = game.Workspace:GetChildren();

        for i = 1, #c do

                local hum = c[i]:findFirstChild("Humanoid")

                if hum ~= nil and hum.Health ~= 0 then

                local head = c[i]:findFirstChild("Head");

                if head ~= nil then

                local mag = (head.Position - p).magnitude;

                if mag <= magnitude and c[i].Name ~= Character.Name then

                local foundd = false

                for ii = 1 , #AoETrue do

                if AoETrue[ii] == c[i].Name then


                foundd = true

                end

                end

                if foundd then


                end

                --

                if not foundd then

local critrandomizer = math.random(crtrate)

if critrandomizer ~= 1 then

local rndmdamage = math.random(mindamage,maxdamage)

damage(hum,rndmdamage,false)

elseif critrandomizer == 1 then

local rndmdamage = math.random(maxdamage,crtmaxdamage)

damage(hum,rndmdamage,true)

end

                table.insert(AoETrue,c[i].Name)

                end

                end

                end

                end

        end

                for ii = 1 , #AoETrue do

                table.remove(AoETrue,#AoETrue)

                end

end


--



--


function effect(Color,Ref,LP,P1)

local effectsmsh = Instance.new("BlockMesh")

effectsmsh.Scale = Vector3.new(1,1,1)

effectsmsh.Name = "Mesh"

local effectsg = Instance.new("Part")

effectsg.formFactor = 3

effectsg.CanCollide = false

effectsg.Name = "Eff"

effectsg.Locked = true

effectsg.Anchored = true

effectsg.Size = Vector3.new(0.2,1,0.2)

effectsg.Parent = swordholder

effectsmsh.Parent = effectsg

effectsg.BrickColor = BrickColor.new(Color)

effectsg.Reflectance = Ref

local point1 = P1

local mg = (LP.p - point1.p).magnitude

effectsg.Size = Vector3.new(0.2,mg,0.2)

effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)

coroutine.resume(coroutine.create(function()

for i = 0 , 1 , 0.1 do

wait()

effectsg.Transparency = 1*i

effectsmsh.Scale = Vector3.new(1-1*i,1,1-1*i)

end

wait()

effectsg.Parent = nil

end))

end

--



con = nil



function dmgcnnct()

if con ~= nil then

con:disconnect()

Hitdeb = 0

end

con = prt4.Touched:connect(OT)

end


function dmgdc() 

if con ~= nil then

con:disconnect()

Hitdeb = 0

end

end


function rptddmg(value,des,inc)

coroutine.resume(coroutine.create(function()

repeat

wait(inc)

Hitdeb = 0

until value == des

end))

end


function atktype(s,e)

coroutine.resume(coroutine.create(function ()

attacktype = e

wait(0.25)

attacktype = s

end))

end


jumping = false

walking = false

function Walk()

if walking or jumping then return end

walking = true

for i = 0.2 , 1, 0.2 do

wait()

w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w22.C0 = CFrame.Angles(math.rad(20-80*i), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 

w23.C1 = CFrame.Angles(math.rad(80-40*i), 0, 0) * CFrame.new(0, -0.25,0)  

w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2-0.2*i) 

w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

-- 

w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w28.C0 = CFrame.Angles(math.rad(20+60*i), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 

w29.C1 = CFrame.Angles(math.rad(80-100*i), 0, 0) * CFrame.new(0, -0.25,0)  

w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2-0.2*i) 

w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

--

w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(-1.5, 0,0)

w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(1.5, 0,0)

end

repeat 


for i = 0.1 , 1, 0.1 do

if not walking or jumping then break end

wait()

w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w22.C0 = CFrame.Angles(math.rad(-60+140*i), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 

w23.C1 = CFrame.Angles(math.rad(40-60*i), 0, 0) * CFrame.new(0, -0.25,0)  

w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0) 

w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

-- 

w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w28.C0 = CFrame.Angles(math.rad(80-140*i), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 

w29.C1 = CFrame.Angles(math.rad(-20+60*i), 0, 0) * CFrame.new(0, -0.25,0)  

w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0) 

w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

--

w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(-1.5, 0,0)

w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(1.5, 0,0)

end

for i = 0.1 , 1, 0.1 do

if not walking or jumping then break end

wait()

w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w22.C0 = CFrame.Angles(math.rad(80-140*i), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 

w23.C1 = CFrame.Angles(math.rad(-20+60*i), 0, 0) * CFrame.new(0, -0.25,0)  

w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 

w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

-- 

w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w28.C0 = CFrame.Angles(math.rad(-60+140*i), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 

w29.C1 = CFrame.Angles(math.rad(40-60*i), 0, 0) * CFrame.new(0, -0.25,0)  

w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 

w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

--

w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(-1.5, 0,0)

w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(1.5, 0,0)

end 

until not walking or jumping

for i = 0.2 , 1, 0.2 do

if not walking or jumping then break end

wait()

w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w22.C0 = CFrame.Angles(math.rad(-60+80*i), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 

w23.C1 = CFrame.Angles(math.rad(40+40*i), 0, 0) * CFrame.new(0, -0.25,0)  

w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2*i) 

w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

-- 

w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w28.C0 = CFrame.Angles(math.rad(80-60*i), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 

w29.C1 = CFrame.Angles(math.rad(-20+100*i), 0, 0) * CFrame.new(0, -0.25,0)  

w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2*i) 

w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

--

w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(-1.5, 0,0)

w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(1.5, 0,0)

end 

w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w22.C0 = CFrame.Angles(math.rad(20), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 

w23.C1 = CFrame.Angles(math.rad(80), 0, 0) * CFrame.new(0, -0.25,0)  

w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 

w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

-- 

w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w28.C0 = CFrame.Angles(math.rad(20), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 

w29.C1 = CFrame.Angles(math.rad(80), 0, 0) * CFrame.new(0, -0.25,0)  

w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 

w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

end



function Jump()

if jumping then return end

jumping = true 

local vel = Instance.new("BodyVelocity",prt1)

vel.maxForce = Vector3.new(0,1,0) * math.huge

vel.P = vel.P * 5

vel.velocity = Vector3.new(0,jump,0)

coroutine.resume(coroutine.create(function()

wait() wait() wait() wait()

vel.Parent=nil

end))

ss(Head,1)

for i = 0.2 , 1 , 0.2 do

wait()

w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w22.C0 = CFrame.Angles(math.rad(20), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 

w23.C1 = CFrame.Angles(math.rad(80-80*i), 0, 0) * CFrame.new(0, -0.25,0)  

w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2-0.2*i) 

w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

-- 

w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w28.C0 = CFrame.Angles(math.rad(20), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 

w29.C1 = CFrame.Angles(math.rad(80-80*i), 0, 0) * CFrame.new(0, -0.25,0)  

w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2-0.2*i) 

w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

--Neck

w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)

w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5)

w3.C1 = CFrame.Angles(math.rad(-20+20*i), 0, 0) * CFrame.new(0, 0.465,0) 

w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)

--Wings

w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(-45*i)) * CFrame.new(-1.5-0.5*i, 0,0)

w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(45*i)) * CFrame.new(1.5+0.5*i, 0,0)

end

wait(0.5)

for i = 0.2 , 1 , 0.2 do

wait()

w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w22.C0 = CFrame.Angles(math.rad(20), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 

w23.C1 = CFrame.Angles(math.rad(80*i), 0, 0) * CFrame.new(0, -0.25,0)  

w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2*i) 

w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

-- 

w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w28.C0 = CFrame.Angles(math.rad(20), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 

w29.C1 = CFrame.Angles(math.rad(80*i), 0, 0) * CFrame.new(0, -0.25,0)  

w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2*i) 

w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

--Neck

w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)

w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5) 

w3.C1 = CFrame.Angles(math.rad(-20*i), 0, 0) * CFrame.new(0, 0.465,0) 

w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)

--Wings

w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(-45+45*i)) * CFrame.new(-2+0.5*i, 0,0)

w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(45-45*i)) * CFrame.new(2-0.5*i, 0,0)

end

jumping = false

if prt1.Velocity.magnitude > 5 then

walking = true

for i = 0.2 , 1, 0.2 do

wait()

w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w22.C0 = CFrame.Angles(math.rad(20-80*i), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 

w23.C1 = CFrame.Angles(math.rad(80-40*i), 0, 0) * CFrame.new(0, -0.25,0)  

w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2-0.2*i) 

w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

-- 

w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w28.C0 = CFrame.Angles(math.rad(20+60*i), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 

w29.C1 = CFrame.Angles(math.rad(80-100*i), 0, 0) * CFrame.new(0, -0.25,0)  

w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2-0.2*i) 

w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

end

repeat 

for i = 0.1 , 1, 0.1 do

if not walking or jumping then break end

wait()

w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w22.C0 = CFrame.Angles(math.rad(-60+140*i), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 

w23.C1 = CFrame.Angles(math.rad(40-60*i), 0, 0) * CFrame.new(0, -0.25,0)  

w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0) 

w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

-- 

w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w28.C0 = CFrame.Angles(math.rad(80-140*i), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 

w29.C1 = CFrame.Angles(math.rad(-20+60*i), 0, 0) * CFrame.new(0, -0.25,0)  

w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0) 

w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

end

for i = 0.1 , 1, 0.1 do

if not walking or jumping then  break end

wait()

w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w22.C0 = CFrame.Angles(math.rad(80-140*i), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 

w23.C1 = CFrame.Angles(math.rad(-20+60*i), 0, 0) * CFrame.new(0, -0.25,0)  

w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 

w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

-- 

w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w28.C0 = CFrame.Angles(math.rad(-60+140*i), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 

w29.C1 = CFrame.Angles(math.rad(40-60*i), 0, 0) * CFrame.new(0, -0.25,0)  

w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 

w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

end 

until not walking or jumping 

for i = 0.2 , 1, 0.2 do

if jumping then break end

wait()

w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w22.C0 = CFrame.Angles(math.rad(-60+80*i), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 

w23.C1 = CFrame.Angles(math.rad(40+40*i), 0, 0) * CFrame.new(0, -0.25,0)  

w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2*i) 

w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

-- 

w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w28.C0 = CFrame.Angles(math.rad(80-60*i), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 

w29.C1 = CFrame.Angles(math.rad(-20+100*i), 0, 0) * CFrame.new(0, -0.25,0)  

w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2*i) 

w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

end 

w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w22.C0 = CFrame.Angles(math.rad(20), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 

w23.C1 = CFrame.Angles(math.rad(80), 0, 0) * CFrame.new(0, -0.25,0)  

w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 

w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

-- 

w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w28.C0 = CFrame.Angles(math.rad(20), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 

w29.C1 = CFrame.Angles(math.rad(80), 0, 0) * CFrame.new(0, -0.25,0)  

w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 

w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

end

end 


 


dashing = false

function Dash()

dashing = true

for i = 0.1 ,1 , 0.1 do

wait()

--Neck

w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)

w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5) 

w3.C1 = CFrame.Angles(math.rad(-20-60*i), 0, 0) * CFrame.new(0, 0.465,0) 

w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)

end

dmgcnnct()

rptddmg(dashing,false,1)

LastPoint = prt4.CFrame * CFrame.new(0,0,prt4.Size.Y/2)

repeat

local Point = prt4.CFrame * CFrame.new(0,0,prt4.Size.Y/2)

effect("White",0.5,LastPoint,Point)

LastPoint = Point

wait(0.1)

if Energy >= 1 then

Energy = Energy - 1

end

until not buttonhold or Energy < 3

dmgdc()

dashing = false

for i = 0.1 ,1 , 0.1 do

wait()

--Neck

w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)

w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5) 

w3.C1 = CFrame.Angles(math.rad(-80+60*i), 0, 0) * CFrame.new(0, 0.465,0) 

w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)

end

end 


idleez = false

function Idle()

if idleez then return end

idleez = true

local rndm = math.random(1,3)

for i = 0.05, 1 , 0.05 do

if not walking and not dashing and not jumping then

wait()

w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)

w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5) 

w3.C1 = CFrame.Angles(math.rad(-20+5*i), 0, 0) * CFrame.new(0, 0.465,0) 

w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)

if rndm ~= 1 then

w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10*i)) * CFrame.new(-1.5-0.2*i, 0,0)

w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(10*i)) * CFrame.new(1.5+0.2*i, 0,0)

else

w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(-45*i)) * CFrame.new(-1.5-0.5*i, 0,0)

w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(45*i)) * CFrame.new(1.5+0.5*i, 0,0)

end

end

end

if rndm == 1 then

for i = 0.1 , 1 , 0.1 do

if not walking and not dashing and not jumping then 

wait()

w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)

w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5) 

w3.C1 = CFrame.Angles(math.rad(-15+5*i) ,math.rad(0), 0) * CFrame.new(0, 0.465,0) 

w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)

w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(-45-45*i)) * CFrame.new(-2, -1*i,0)

w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(45+45*i)) * CFrame.new(2, -1*i,0)

end

end

for i = 0.2 , 1 , 0.2 do

if not walking and not dashing and not jumping then 

wait()

w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)

w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5) 

w3.C1 = CFrame.Angles(math.rad(-10+5*i),math.rad(0), 0) * CFrame.new(0, 0.465,0) 

w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)

w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90+30*i)) * CFrame.new(-2, -1,0)

w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(90-30*i)) * CFrame.new(2, -1,0)

end

end

for i = 0.2 , 1 , 0.2 do

if not walking and not dashing and not jumping then 

wait()

w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)

w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5) 

w3.C1 = CFrame.Angles(math.rad(-5+5*i),math.rad(0), 0) * CFrame.new(0, 0.465,0) 

w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)

w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(-60-30*i)) * CFrame.new(-2, -1,0)

w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(60+30*i)) * CFrame.new(2, -1,0)

end

end

for i = 0.1 , 1 , 0.1 do

if not walking and not dashing and not jumping then 

wait()

w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)

w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5) 

w3.C1 = CFrame.Angles(math.rad(-15*i),math.rad(0), 0) * CFrame.new(0, 0.465,0) 

w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)

w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90+45*i)) * CFrame.new(-2, -1+1*i,0)

w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(90-45*i)) * CFrame.new(2, -1+1*i,0)

end

end

end

for i = 0.025, 1 , 0.025 do

if not walking and not dashing and not jumping then 

wait()

w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)

w2.C0 = CFrame.Angles(math.rad(45), 0, 0) * CFrame.new(0, -1,2.5) 

w3.C1 = CFrame.Angles(math.rad(-15-5*i), 0, 0) * CFrame.new(0, 0.465,0) 

w3.C0 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.465,0)

if rndm ~= 1 then

w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10+10*i)) * CFrame.new(-1.7+0.2*i, 0,0)

w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(10-10*i)) * CFrame.new(1.7-0.2*i, 0,0)

else

w11.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w11.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(-45+45*i)) * CFrame.new(-2+0.5*i, 0,0)

w16.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w16.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(45-45*i)) * CFrame.new(2-0.5*i, 0,0)

end

end

 end

idleez = false

end


function returnwelds()

RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(-20))

RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)

LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(20))

LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0) 

RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(45), 0, math.rad(25))

RWL.C1 = CFrame.new(0.5, 1, 0)

LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(45), 0, math.rad(-25))

LWL.C1 = CFrame.new(-0.5, 1, 0)

Neck.C0 = neckcf0

--

w22.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w22.C0 = CFrame.Angles(math.rad(20), math.rad(10), math.rad(0)) * CFrame.new(-0.75, 1.5,0) 

w23.C1 = CFrame.Angles(math.rad(80), 0, 0) * CFrame.new(0, -0.25,0)  

w23.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 

w24.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w24.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

-- 

w28.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, 0,0)  

w28.C0 = CFrame.Angles(math.rad(20), math.rad(-10), math.rad(0)) * CFrame.new(0.75, 1.5,0) 

w29.C1 = CFrame.Angles(math.rad(80), 0, 0) * CFrame.new(0, -0.25,0)  

w29.C0 = CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 0.25,0.2) 

w30.C1 = CFrame.Angles(math.rad(0), 0, 0) * CFrame.new(0, -0.725,0)  

w30.C0 = CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 0.725,0.25) 

--

end


function ride()

Ride = true

equipanim()

end

function unride()

Ride = false

hideanim()

end


function RemoveSeater()

if #prt34:GetChildren() > 0 then

prt34:GetChildren()[1].Parent = nil

end

end


function onFreeFall()

unride()

print("Fell")

value1=value1+1

end


keyhold = false

function ob1d(mouse) 

hold = true 

if attack then return end

keyhold = true


end 


function ob1u(mouse)   

keyhold = false

end 


buttonhold = false


function key(key,mouse)

if attack then return end

if Ride then

if key == "f" then

buttonhold = true

Dash()

end

if key == " " then

coroutine.resume(coroutine.create(Jump))

end

end

if key == "q" then

if Ride then

unride()

else

--prt4

mag=Torso.Position-prt4.Position

magni=mag.magnitude

if magni <=3 then 

swordholder:MoveTo(Head.Position+Vector3.new(0,5,0))

ride()

end

end

end

if key == "x" then

RemoveSeater()

end

end



function key2(key) 

if key == "f" then

buttonhold = false

end

end 


function s(mouse)  

repeat wait() until not attack

repeat wait() until not ev.Value

arms()

mouse.Button1Down:connect(function() ob1d(mouse) end) 

mouse.Button1Up:connect(function() ob1u(mouse) end) 

mouse.KeyDown:connect(function(ke) key(ke,mouse) end) 

mouse.KeyUp:connect(key2) 

ev.Value = true

end 


function ds(mouse) 

keyhold = false

repeat wait() until not attack

repeat wait() until ev.Value

noarms()

wait(0.1)

ev.Value = false 

end 


Bin.Selected:connect(s) 

Bin.Deselected:connect(ds) 




if PlayerGui:findFirstChild("EnergyMeter") ~= nil then

PlayerGui:findFirstChild("EnergyMeter").Parent = nil

end


coroutine.resume(coroutine.create(function()

repeat

wait(0.1)

if Ride then

if dashing then

Character.Humanoid.WalkSpeed = speed * 1.5

else

Character.Humanoid.WalkSpeed = speed

end

if (prt1.Velocity * Vector3.new(1,0,1)).magnitude > 5 then

coroutine.resume(coroutine.create(Walk))

walking = true

elseif (prt1.Velocity * Vector3.new(1,0,1)).magnitude < 5 then

walking = false

AddEnergy(1)

coroutine.resume(coroutine.create(function() Idle() end))

end

else

Character.Humanoid.WalkSpeed = 16 

coroutine.resume(coroutine.create(function() Idle() end))

walking = false

end

until false

end))


coroutine.resume(coroutine.create(function()

local SG = Instance.new("ScreenGui",PlayerGui)

SG.Name = "EnergyMeter"

local frame = Instance.new("Frame",SG)

frame.Size = UDim2.new(0.2,0,0.1,0)

frame.Position = UDim2.new(0.6,0,0.05,0)

frame.BackgroundColor3 = BrickColor.new("Bright blue").Color

local Energytext = Instance.new("TextLabel",frame)

Energytext.Size = UDim2.new(1,0,0.35,0)

Energytext.BackgroundTransparency = 1

Energytext.Text = "Energy"

Energytext.FontSize = "Size18"

Energytext.TextColor3 = BrickColor.new("White").Color

local backing = Instance.new("ImageLabel",frame)

backing.Size = UDim2.new(0.8,0,0.45,0)

backing.Image = "http://www.roblox.com/asset/?id=48965808"

backing.Position = UDim2.new(0.1,0,0.45,0)

backing.BackgroundColor3 = BrickColor.new("Black").Color

local img = Instance.new("ImageLabel",backing)

img.Size = UDim2.new(1,0,1,0)

img.Image = "http://www.roblox.com/asset/?id=48965808"

img.Position = UDim2.new(0,0,0,0)

img.BackgroundColor3 = BrickColor.new("Bright blue").Color

local percent = Instance.new("TextLabel",backing)

percent.Size = UDim2.new(1,0,1,0)

percent.BackgroundTransparency = 1

percent.TextColor3 = BrickColor.new("White").Color

percent.Text = Energy.."/".. MaxEnergy

percent.FontSize = "Size18"

repeat

wait()

pcall(function()

img.Size = UDim2.new(1*(Energy/MaxEnergy),0,1,0)

percent.Text = Energy.."/".. MaxEnergy

end)

until SG.Parent == nil

end))



Character:MoveTo(Head.Position+Vector3.new(0,5,0))

Character.Torso.CFrame = Character.Torso.CFrame + Vector3.new(0,5,0)

swordholder:MoveTo(Head.Position+Vector3.new(0,5,0))

ride()

noarms()

end}

 
 

module[1] = {"CombatKnife",function()

Players = game:GetService("Players")
script.Name = "UpLocal"
 
do
        local type = Instance.new("StringValue",script)
        type.Name = "hopper"
        type.Value = "knife"
end
 
me = Players.LocalPlayer
char = me.Character
 
Toolname = "Knife"
Modelname = "Knife"
 
selected = false
effect = false
hurt = false
debounce = true
able = true
oable = true
charge =  false
soundable = true
cancharge = true
cam = game.Workspace.CurrentCamera
 
local surfaces = {"TopSurface", "BottomSurface", "LeftSurface", "RightSurface", "FrontSurface", "BackSurface"}
 
local New = {
        Gyro = function(P)
                local bg = Instance.new("BodyGyro", P)
                bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                bg.P = 14000
                return bg
        end,
        Position = function(P)
                local bp = Instance.new("BodyPosition", P)
                bp.maxForce = Vector3.new(math.huge, 0, math.huge)
                bp.P = 14000
                return bp
        end,
        Force = function(P)
                local bf = Instance.new("BodyForce", P)
                bf.force = Vector3.new(0, P:GetMass()*187, 0)
                return bf
        end,
        Sound = function(P, ID, vol, pitch)
                local s = Instance.new("Sound")
                s.SoundId = ID
                s.Volume = vol
                s.Pitch = pitch
                s.Parent = P
                return s
        end
}
 
torso = char.Torso
neck = torso.Neck
human = char.Humanoid
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
Rleg = char["Right Leg"]
Lleg = char["Left Leg"]
 
local Sounds = {
        slash = "http://roblox.com/asset/?id=10209645",
        slash2 = "http://roblox.com/asset/?id=10209640",
        unsheath = "rbxasset://sounds//unsheath.wav",
        hitsound = "http://www.roblox.com/asset/?id=2801263", --0.5
        charge = "http://www.roblox.com/asset/?id=2101137", --0.5
        boom = "http://www.roblox.com/asset/?id=2691586", --0.3
        bewm = "http://www.roblox.com/asset/?id=2760979", --0.3
        splat = "http://roblox.com/asset/?id=10209590"
}
 
local tsound = {
        slash = Instance.new("Sound"),
        slash2 = Instance.new("Sound"),
        hitsound = Instance.new("Sound"),
        splat = Instance.new("Sound"),
        unsheath = Instance.new("Sound")
}
 
tsound["slash"].SoundId = "http://roblox.com/asset/?id=10209645"
tsound["slash2"].SoundId = "http://roblox.com/asset/?id=10209640"
tsound["hitsound"].SoundId = "http://www.roblox.com/asset/?id=2801263"
tsound["splat"].SoundId = "http://roblox.com/asset/?id=10209590"
tsound["unsheath"].SoundId = "rbxasset://sounds//unsheath.wav"
 
function EnableSound(time)
        coroutine.resume(coroutine.create(function()
                wait(time)
                soundable = true
        end))
end
 
function PlaySound(soundname, pitch)
        coroutine.resume(coroutine.create(function()
        if soundable then
                soundable = false
                tsound[soundname].Parent = char
                tsound[soundname].Pitch = pitch
                tsound[soundname]:Play()
                EnableSound(0.12)
        end
        end))
end
 
function Weld(p0, p1, x, y, z, a, b, c)
        local w = Instance.new("Weld")
        w.Parent = p0
        w.Part0 = p0
        w.Part1 = p1
        w.C1 = CFrame.new(x, y, z) * CFrame.Angles(a, b, c)
        return w
end
 
function Part(parent, anchor, collide, tran, ref, color, x, y, z, Break, lifetime)
        local p = Instance.new("Part")
        p.formFactor = "Custom"
        p.Anchored = anchor
        p.CanCollide = collide
        p.Transparency = tran
        p.Reflectance = ref
        p.BrickColor = BrickColor.new(color)
        for _, Surf in pairs(surfaces) do
                p[Surf] = "Smooth"
        end
        p.Size = Vector3.new(x, y, z)
        if Break then
                p:BreakJoints()
        else
                p:MakeJoints()
        end
        p.Parent = parent
        p.Locked = true
        if lifetime then
                game:GetService("Debris"):AddItem(p, lifetime)
        end
        return p
end
 
function getHum(c)
        local h = nil
        for i,v in pairs(c:GetChildren()) do
                if v:IsA("Humanoid") and c ~= char then
                        if v.Health > 0 then
                                h = v
                        end
                end
        end
        return h
end
 
function FindAllParts(ignore)
        local PartTable = {}
        local function FindPartsIn(object, ign)
                for i,v in pairs(object:GetChildren()) do
                        if v:IsA("BasePart") and v ~= ign then
                                table.insert(PartTable, v)
                        elseif v:IsA("Model") and v ~= ign then
                                FindPartsIn(v, ign)
                        elseif v:IsA("Hat") and v ~= ignore then
                                FindPartsIn(v, ignore)
                        elseif v:IsA("Tool") and v ~= ignore then
                                FindPartsIn(v, ignore)
                        end
                end
        end
        for i,v in pairs(game.Workspace:GetChildren()) do
                if v:IsA("BasePart") and v ~= ignore then
                        table.insert(PartTable, v)
                elseif v:IsA("Model") and v ~= ignore then
                        FindPartsIn(v, ignore)
                elseif v:IsA("Hat") and v ~= ignore then
                        FindPartsIn(v, ignore)
                elseif v:IsA("Tool") and v ~= ignore then
                        FindPartsIn(v, ignore)
                end
        end
        return PartTable
end
 
for i, v in pairs(char:children()) do
        if v.Name == Modelname then
                v:remove()
        end
end
 
for i, v in pairs(me.Backpack:GetChildren()) do
        if v.Name == Toolname then
                v:remove()
        end
end
 
Mo = Instance.new("Model")
Mo.Name = Modelname
 
RABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
RLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
gripBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
Weld(Rarm, gripBrick, 0, 1, 0, 0, 0, 0)
 
RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)
RLBW = Weld(torso, RLBrick, -0.5, 1.2, 0, 0, 0, 0)
LLBW = Weld(torso, LLBrick, 0.5, 1.2, 0, 0, 0, 0)
 
TH = Weld(Rleg, nil, -0.6, -0.2, -0.4, math.rad(60), math.rad(20), 0)
 
RABW2 = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
LABW2 = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)
RLBW2 = Weld(RLBrick, nil, 0, 0.77, 0, 0, 0, 0)
LLBW2 = Weld(LLBrick, nil, 0, 0.77, 0, 0, 0, 0)
 
handle = Part(Mo, false, false, 0, 0, "Really black", 0.2, 0.8, 0.2, true)
handle.Name = "Handle"
Instance.new("BlockMesh", handle).Scale = Vector3.new(0.6, 1, 0.8)
 
gaurd = Part(Mo, false, false, 0, 0, "Really black", 0.25, 0.2, 0.3, true)
gaurd.Name = "Gaurd"
Instance.new("BlockMesh", gaurd).Scale = Vector3.new(0.8, 0.5, 0.8)
 
blade = Part(Mo, false, false, 0, 0.1, "Silver", 0.2, 0.8, 0.2, true)
blade.Name = "Blade"
Instance.new("BlockMesh", blade).Scale = Vector3.new(0.1, 1, 0.8)
 
bladetip = Part(Mo, false, false, 0, 0.1, "Silver", 0.2, 0.2, 0.2, true)
bladetip.Name = "Tip"
bladetipmesh = Instance.new("SpecialMesh", bladetip)
bladetipmesh.MeshType = "Wedge"
bladetipmesh.Scale = Vector3.new(0.1, 1, 0.8)
 
sheath = Part(Mo, false, false, 0, 0, "Black", 0.2, 1, 0.2, true)
sheath.Name = "Sheath"
Instance.new("BlockMesh", sheath)
 
sheathweld = Weld(sheath, blade, 0, 0.16, 0, math.pi, 0, 0)
grip = Weld(gripBrick, nil, 0, 0, 0, -math.pi/2, 0, 0)
Weld(handle, gaurd, 0, -0.4, 0, 0, 0, 0)
Weld(gaurd, blade, 0, -0.45, 0, 0, 0, 0)
Weld(blade, bladetip, 0, -0.5, 0, 0, 0, 0)
 
Mo.Parent = char
TH.Part1 = sheath
 
if not script.Parent:IsA("HopperBin") then
        bin = Instance.new("HopperBin", me.Backpack)
        bin.Name = Toolname
        script.Parent = bin
end
 
function dmgdeb(time)
        coroutine.resume(coroutine.create(function()
                wait(time)
                debounce = true
        end))
end
 
function dmg(hum, dm1, dm2)
        if debounce then
                local dmg = math.random(dm1 * 10, dm2 * 10)
                if math.random(1, 20) == 1 then
                        dmg = dmg * 3
                end
                local ko = Instance.new("ObjectValue", hum)
                ko.Name = "creator"
                ko.Value = me
                hum:TakeDamage(dmg)
                coroutine.resume(coroutine.create(function()
                        wait()
                        ko:remove()
                end))
                for i = 0, dmg/5 do
                        local blood = Part(workspace, false, false, 0, 0, "Really red", 0.2, 0.2, 0.2, true)
                        blood.CFrame = hum.Parent.Torso.CFrame
                        blood.RotVelocity = Vector3.new(math.random(-10,10), math.random(-10,10),math.random(-10,10))
                        blood.Velocity = Vector3.new(math.random(-20,20), math.random(5,20), math.random(-20,20))
                        --Instance.new("SpecialMesh", blood).MeshType = "Sphere"
                        coroutine.resume(coroutine.create(function()
                                for i = 0, 3, 0.1 do
                                        --blood.SpecialMesh.Scale = Vector3.new(1 - i, 1 - i, 1 - i)
                                        blood.Transparency = i / 3
                                        wait()
                                end
                        end))
                end
                debounce = false
                return dmg
        end
end
 
function unsheath()
        PlaySound("unsheath", 5)
        coroutine.resume(coroutine.create(function()
                for i = 0, 30, 10 do
                        RABW2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
                wait()
        end))
        coroutine.resume(coroutine.create(function()
                wait()
                wait()
                for _, part in pairs(FindAllParts(char)) do
                        if (part.Position - blade.Position).magnitude < 1 then
                                if getHum(part.Parent) then
                                        local hum = getHum(part.Parent)
                                        dmg(hum, 0.5, 1)
                                        dmgdeb(0.1)
                                        PlaySound("splat", 1.2)
                                end
                        end
                end
        end))
        for i = 0, 30, 10 do
                wait()
        end
        sheathweld.Part1 = nil
        grip.Part1 = handle
        for i = 0, -180, -30 do
                wait()
                grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), math.rad(20 + i/9),0) --(math.sin(i/59)/6)
        end
end
 
function sheath()
        PlaySound("unsheath", 5)
        for i = -180, -30, 35 do
                grip.C1 = CFrame.new(0