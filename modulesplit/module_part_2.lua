, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), math.rad(20 + (i +30)/7.5), 0) --(math.sin(i/59)/6)
                wait()
        end
        grip.Part1 = nil
        sheathweld.Part1 = blade
        coroutine.resume(coroutine.create(function()
                for i = 30, 0, -10 do
                        RABW2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
        end))
        --[[coroutine.resume(coroutine.create(function()
                for i = -180, 0, 30 do
                        grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                        wait()
                end
        end))]]
        coroutine.resume(coroutine.create(function()
                for _, part in pairs(FindAllParts(char)) do
                        if (part.Position - blade.Position).magnitude < 1 then
                                if getHum(part.Parent) then
                                        local hum = getHum(part.Parent)
                                        dmg(hum, 0.5, 1.5)
                                        dmgdeb(0.1)
                                        PlaySound("splat", 1.2)
                                end
                        end
                end
        end))
        for i = 30, 0, -10 do
                wait()
        end
end
 
function slash()
        PlaySound("slash", math.random(1750,2000)/1000)
        EnableSound()
        coroutine.resume(coroutine.create(function()
                for i = 30, 150, 20 do
                        RABW2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
                for i = 150, 0, -30 do
                        RABW2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
                for i = 0, 30, 15 do
                        RABW2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
        end))
        for i = 30, 150, 20 do
                wait()
        end
        for i = 150, 0, -30 do
                for _, part in pairs(FindAllParts(char)) do
                        if (part.Position - blade.Position).magnitude < 1 then
                                if getHum(part.Parent) then
                                        local hum = getHum(part.Parent)
                                        dmg(hum, 10, 16)
                                        dmgdeb(0.2)
                                        PlaySound("splat", 1)
                                end
                        end
                end
                wait()
        end
end
 
function stab()
        coroutine.resume(coroutine.create(function()
                for i = 30, -30, -15 do
                        RABW2.C1 = CFrame.new(0, 0.5, -i/300) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
                for i = 180, 200, 10 do
                        grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                        wait()
                end
                PlaySound("slash2", math.random(900,1200)/1000)
                EnableSound()
                wait(0.2)
                coroutine.resume(coroutine.create(function()
                        for i = -30, 90, 60 do
                                RABW2.C1 = CFrame.new(0, 0.5 + i/200, 0) * CFrame.Angles(-math.rad(i), 0, 0)
                                wait()
                        end
                end))
                for i = 200, 270, 35 do
                        grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                        wait()
                end
                coroutine.resume(coroutine.create(function()
                        for i = 270, 180, -30 do
                                grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0)--(math.sin(i/59)/6)
                                wait()
                        end
                end))
                coroutine.resume(coroutine.create(function()
                        for i = .45, 0, -.15 do
                                RABW2.C1 = CFrame.new(0, 0.5 + i, 0) * CFrame.Angles(RABW2.C1:toEulerAnglesXYZ())
                                wait()
                        end
                end))
                for i = 90, 30, -15 do
                        RABW2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
                RABW2.C1 = CFrame.new(0, 0.5, math.sin(30/29)/6) * CFrame.Angles(-math.rad(30), 0, 0)
        end))
        for i = 90, -30, -30 do
                wait()
        end
        for i = 180, 200, 10 do
                wait()
        end
        wait(.1)
        for i = -30, 90, 60 do
                for _, part in pairs(FindAllParts(char)) do
                        if (part.Position - blade.Position).magnitude < 2 then
                                if getHum(part.Parent) then
                                        local hum = getHum(part.Parent)
                                        dmg(hum, 20, 40)
                                        dmgdeb(0.2)
                                        PlaySound("splat", 0.6)
                                end
                        end
                end
                wait()
        end
        for i = 200, 270, 35 do
                wait()
        end
        for i = 270, 180, -30 do
                wait()
        end
        able = true
        wait(.5)
        oable = true
end
 
function slice()
        coroutine.resume(coroutine.create(function()
                for i = 0, 60, 15 do
                        RABW2.C1 = CFrame.new(.3, math.sin(i/29)/6 + .1, 0) * CFrame.Angles(-math.rad(90),math.rad(i), 0)
                        wait()
                end
                wait(.1)
                PlaySound("slash", math.random(1700,1900)/1000)
                wait(.1)
                for i = 60, -60, -30 do
                        RABW2.C1 = CFrame.new(.25, math.sin(-i/29)/6 + 1, 0) * CFrame.Angles(-math.rad(90),math.rad(i), 0)
                        wait()
                end
        end))
        coroutine.resume(coroutine.create(function()
                for i = 180, 270, 30 do
                        grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), -math.rad(i),0) --(math.sin(i/59)/6)
                        wait()
                end
        end))
        for i = 0, 150, 15 do
                wait()
        end
        for i = 0, 180, 30 do
                for _, v in pairs(game.Workspace:GetChildren()) do
                        if getHum(v)~=nil then
                                if v:findFirstChild("Torso")~=nil then
                                        if (v.Torso.Position - blade.Position).magnitude < 2 then
                                                local hum = getHum(v)
                                                dmg(hum, 45, 60 - (v.Torso.Position - blade.Position).magnitude *5)
                                                PlaySound("hitsound", 1.5)
                                        end
                                end
                        end
                end
                wait()
        end
        wait(.3)
        for i = -60, 0, 30 do
                RABW2.C1 = CFrame.new(0, math.sin(i/29)/6 + 0.5, 0) * CFrame.Angles(-math.rad(90), math.rad(i), 0)
                wait()
        end
        for i = 270, 180, -30 do
                grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                wait()
        end
end
 
function select(mouse)
        RABW2.Part1 = Rarm
        LABW2.Part1 = nil
        RLBW2.Part1 = nil
        LLBW2.Part1 = nil
        unsheath()
        char.Humanoid.WalkSpeed = 20
        mouse.Button1Down:connect(function()
                if able then
                        able = false
                        slash(mouse.Hit.p)
                        able = true
                end
        end)
        mouse.KeyDown:connect(function(key)
                if able then
                        key = key:lower()
                        if key == "z" then
                                able = false
                                slash(mouse.Hit.p)
                                able = true
                        elseif key == "x" then
                                if able and oable then
                                        able = false
                                        oable = false
                                        stab(mouse.Hit.p)
                                end
                        elseif key == "c" then
                                able = false
                                slice(mouse.Hit.p)
                                able = true
                        end
                end
        end)
end
 
function deselect()
        char.Humanoid.WalkSpeed = 16
        sheath()
        RABW2.Part1 = nil
        LABW2.Part1 = nil
        RLBW2.Part1 = nil
        LLBW2.Part1 = nil
end
 
bin.Selected:connect(select)
bin.Deselected:connect(deselect)


end}
module[2] = {"Crimson Sonata",function()
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
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Really red")
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "Neon"
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
w2.BrickColor = BrickColor.new("Really red")
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "Neon"
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

local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

--Example: Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)


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
                local  blocked=false
                local  block=hit.Parent:findFirstChild("Block")
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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.296501815, 5.18878126, 0.296499223))
Handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.10050106, -1.63029861, -0.888347149, -1, 0, 0, 0, 0, -1, -0, -0.999999881, -0))
mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really red","Hitbox",Vector3.new(0.200000003, 6.98600721, 2.19299841))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -3.93773937, 2.93521118, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Hitbox,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2.52026534, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -1.70486319, 3.70584869, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 0.815379143, 3.85409546, -0.999993443, -5.94257529e-007, -4.47034836e-008, -2.98022105e-008, -6.0737176e-007, -0.999998927, 5.9425787e-007, -0.999993384, 6.66978679e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(1.03775609, 0.311326832, 1.18599701))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.40932465, 3.81469727e-006, -6.91413879e-006, -2.98023295e-008, -1, -0, 1, -2.98023295e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501815, 0.889504969, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.86102295e-006, -1.34825706, -1.8123436, 0.999997854, 1.3482402e-007, 1.3200642e-007, -1.99253947e-009, 0.707105041, -0.707106531, -1.88677433e-007, 0.7071051, 0.707106531))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501815, 0.889504969, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.76837158e-006, 1.33309555, -1.79717827, 0.999997854, 7.14049833e-008, 2.88419812e-007, -2.54434127e-007, 0.707104981, 0.707106411, -1.53452262e-007, -0.707104921, 0.707106352))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -2.44612718, 3.85409546, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.296501756, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.37199664, -2.81639481, -0.999993324, -1.35600567e-006, 7.45057918e-008, -4.47034942e-008, -1.49011569e-007, 0.999998868, -1.34110451e-006, 0.999993265, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, 2.14962149, -2.81639862, 0.999993205, 5.96046448e-007, -4.47034836e-008, 2.98021234e-008, 6.07371646e-007, -0.999998927, -5.96046448e-007, 0.999993205, 6.66978679e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.593003511, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -1.18598497, 3.85409546, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.59437418, -2.81639481, -0.999993324, -1.35600567e-006, 7.45057918e-008, -4.47034942e-008, -1.49011569e-007, 0.999998868, -1.34110451e-006, 0.999993265, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -1.55661559, 3.85409546, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.326151937, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.8536377, 0.000444412231, -6.91413879e-006, -2.9802333e-008, -0.999999762, -0, 1, -2.98023402e-008, 0, 0, 0, 0.999999523))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 2.0013752, 3.85409546, -0.999993443, -5.94257529e-007, -4.47034836e-008, -2.98022105e-008, -6.0737176e-007, -0.999998927, 5.9425787e-007, -0.999993384, 6.66978679e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.296501756, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -2.22374678, 3.85409546, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.296499103))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80853271, 0.000414848328, 3.47587585, 1.29208814e-007, -0.866024733, -0.499999523, 1, 2.00156606e-007, -8.8263846e-008, 1.76517091e-007, -0.499999642, 0.866024554))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.889505386, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00040435791, -1.87283707, -3.30593491, 0.999993205, 3.10420091e-006, 4.20707329e-006, 5.11838152e-006, -0.500021577, -0.86601007, -5.17362992e-007, 0.86601001, -0.500015497))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.296499103))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15766907, 0.000414848328, -0.0542945862, 1.73149076e-007, -0.866024733, 0.499999464, 1, 1.09283768e-007, -1.57012991e-007, 8.13355285e-008, 0.499999583, 0.866024554))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.444752693, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000381469727, 0.518871069, 4.00193787, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15768051, 0.000414848328, 0.168071747, 1.73149047e-007, -0.866024673, 0.499999404, 1, 1.09283775e-007, -1.57012963e-007, 8.13355712e-008, 0.499999523, 0.866024494))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.77899528))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.9568634, 0.000414848328, 4.06890678, 1.29209454e-007, -0.866017103, -0.499994904, 0.99999994, 2.00155014e-007, -8.82613804e-008, 1.7651513e-007, -0.499995023, 0.866016924))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.741247892))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.6042366, 0.000414848328, 1.40539384, 7.28354408e-008, -0.999999523, 2.98026634e-008, 1, 7.28354905e-008, -1.137834e-007, 1.13783528e-007, 2.9802635e-008, 0.999999285))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.741247892))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15763474, 0.000415802002, -0.721405029, 8.67096972e-008, -0.866025329, 0.499999881, 1, 3.44270887e-008, -1.13789923e-007, 8.13314571e-008, 0.5, 0.86602515))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.741247892))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.95671082, 0.000415802002, 2.80871201, 4.27689706e-008, -0.86602515, -0.499999851, 0.999999762, 1.25296964e-007, -1.31482579e-007, 1.76515783e-007, -0.499999851, 0.866025209))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.592998326))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15768814, 0.000414848328, 0.538698196, 1.73149076e-007, -0.866024733, 0.499999464, 1, 1.09283768e-007, -1.57012991e-007, 8.1335557e-008, 0.499999583, 0.866024554))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.593003631, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000418663025, -4.66182327, -2.80873108, 0.999993205, -2.08179517e-006, 4.68745384e-006, 5.02319881e-006, 0.499976099, -0.866036355, -4.73424905e-007, 0.866031289, 0.499978751))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.741247892))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.30587387, 0.000415802002, -0.721378326, 8.67091714e-008, -0.866024256, 0.499999464, 0.999999046, 3.4425458e-008, -1.13791891e-007, 8.13342709e-008, 0.499999762, 0.86602515))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.741247892))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80846024, 0.000415802002, 2.8087101, 4.27693685e-008, -0.86602515, -0.499999851, 0.999999762, 1.25295941e-007, -1.31480022e-007, 1.76513069e-007, -0.499999851, 0.866025209))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15765762, 0.000414848328, -0.27664566, 1.73148948e-007, -0.866023302, 0.499998629, 1, 1.09283704e-007, -1.57012749e-007, 8.13356706e-008, 0.499998748, 0.866023123))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.889505386, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000422477722, -5.40308189, -2.95698166, 0.999993205, -2.08179517e-006, 4.68745384e-006, 5.02319881e-006, 0.499976099, -0.866036355, -4.73424905e-007, 0.866031289, 0.499978751))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.593003631, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000400543213, -1.13156891, -3.15768433, 0.999993205, 3.10420091e-006, 4.20707329e-006, 5.11838152e-006, -0.500021577, -0.86601007, -5.17362992e-007, 0.86601001, -0.500015497))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80859375, 0.000414848328, 3.69829178, 1.29208786e-007, -0.866024613, -0.499999523, 1, 2.00156563e-007, -8.82638247e-008, 1.76517119e-007, -0.499999642, 0.866024435))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.741254389, 0.296501786, 0.889497578))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.55724716, 0.000415802002, 0.593008757, -2.98023437e-008, -1, -0, 1, -2.98023437e-008, 0, 0, 0, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80845261, 0.000414848328, 3.25345612, 1.29208672e-007, -0.866023123, -0.499998778, 0.999999762, 2.00156279e-007, -8.82637536e-008, 1.76517077e-007, -0.499998778, 0.866023183))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.77899528))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.30587006, 0.000414848328, 0.538694382, 1.73149331e-007, -0.866016984, 0.499995172, 0.99999994, 1.09285118e-007, -1.57010405e-007, 8.13343917e-008, 0.499995291, 0.866016805))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.592998326))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80862808, 0.000414848328, 4.06892586, 1.29208814e-007, -0.866024733, -0.499999523, 1, 2.00156606e-007, -8.8263846e-008, 1.76517119e-007, -0.499999642, 0.866024554))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 2.89088011, 3.26107788, -0.999993324, -1.62995764e-006, 4.10754041e-007, -2.91542648e-007, 1.04308128e-007, -0.999998927, 1.61505602e-006, -0.999993324, -2.53319683e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.89087987, -3.26107788, -0.999993324, -1.35600567e-006, 7.45057918e-008, -4.47034942e-008, -1.49011569e-007, 0.999998868, -1.34110451e-006, 0.999993265, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501815, 4.00277376, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -0.00343322754, -0.573273778, 0.999997854, 1.29937892e-008, 1.07842467e-007, -1.29937483e-008, 0.999997437, 0, -1.07842268e-007, 5.96046448e-008, 0.999999464))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.26012194, -2.81639481, -0.999993324, -1.35600567e-006, 7.45057918e-008, -4.47034942e-008, -1.49011569e-007, 0.999998868, -1.34110451e-006, 0.999993265, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, 0.815383554, -2.81639481, 0.999993205, 5.96046448e-007, -4.47034836e-008, 2.98021234e-008, 6.07371646e-007, -0.999998927, -5.96046448e-007, 0.999993205, 6.66978679e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 1.18600714, 0.592998505))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -1.03774309, 3.33521271, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.296501756, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.0377425, -2.81639481, -0.999993324, -1.35600567e-006, 7.45057918e-008, -4.47034942e-008, -1.49011569e-007, 0.999998868, -1.34110451e-006, 0.999993265, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.592998505))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -1.70486319, 3.33521271, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.0377562, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.2978766, 3.26107407, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.48348236, 3.81469727e-006, -2.2978785, -2.98023224e-008, -0.999999821, -0, 0.999999821, -2.98023224e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.815379977, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.89088058, 3.48345947, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 1.18600726, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.37198853, 3.11284637, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.48348236, 3.81469727e-006, -2.00137448, -2.98023224e-008, -0.999999821, -0, 0.999999821, -2.98023224e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.815379977, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.48348236, 3.81469727e-006, -2.5943768, -2.98023224e-008, -0.999999821, -0, 0.999999821, -2.98023224e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.815379977, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 1.0377562, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.29787683, 3.48345947, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 2.07551241, 0.592998505))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -4.00276041, 3.33521271, 0.999993443, 1.45976469e-006, 1.94331719e-007, -7.51218181e-008, 1.49011612e-007, 0.999998868, 1.45976469e-006, -0.999993384, 2.23517361e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.815379918, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2.9650178, 0.889497638))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -4.4475174, 3.33521271, 0.999993443, 1.45976469e-006, 1.94331719e-007, -7.51218181e-008, 1.49011612e-007, 0.999998868, 1.45976469e-006, -0.999993384, 2.23517361e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.311326861, 0.296501487, 0.326149136))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 2.00148392, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.311326861, 1.33425784, 0.326149136))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 9.91821289e-005, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 2.9650178, 0.444748878))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.86102295e-006, -3.84435654, 4.01723862, 0.999993443, 1.59027059e-006, 2.6722384e-007, 2.68622188e-007, -0.258817196, 0.965924799, 1.57439217e-006, -0.965919495, -0.258818537))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.815379977, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.311326861, 0.296501487, 0.326149136))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -1.85279465, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2.52026534, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.70486307, 2.96461105, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 4.29927588, 0.741248131))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.86102295e-006, -4.5114727, 4.01726913, 0.999993443, 1.59027059e-006, 2.6722384e-007, 2.68622188e-007, -0.258817196, 0.965924799, 1.57439217e-006, -0.965919495, -0.258818537))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.326151937, 0.200000003, 0.355799079))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 9.91821289e-005, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.311326861, 0.200000003, 0.326149136))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 1.03784561, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.33425796, 0.296501786, 1.48249602))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.40934753, 3.81469727e-006, -6.91413879e-006, -2.98023224e-008, -0.999999821, -0, 0.999999821, -2.98023224e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.311326861, 0.200000003, 0.326149136))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -1.03752136, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.326151937, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.40927505, 2.95639038e-005, 0.444754362, -2.98023295e-008, -1, -0, 1, -2.98023295e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.326151937, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.40908051, 0.000387191772, -6.91413879e-006, -2.98023259e-008, -0.999999523, -0, 1, -2.98023402e-008, 0, 0, 0, 0.999999285))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.326151937, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.96453476, 4.67300415e-005, -6.91413879e-006, -2.98023295e-008, -1, -0, 1, -2.98023295e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.326151937, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.40927505, 2.95639038e-005, -0.444758654, -2.98023295e-008, -1, -0, 1, -2.98023295e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.296501786, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.00191879, 0.00050163269, 0.815378904, -2.98023437e-008, -0.999999642, -0, 0.999999642, -2.98023437e-008, 0, 0, 0, 0.999999762))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.444748729))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45595932, 0.000414848328, 1.25711417, 7.28358245e-008, -0.999999046, 2.98032496e-008, 1, 7.28358458e-008, -1.13780651e-007, 1.13780807e-007, 2.98032212e-008, 0.999998808))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.296501487, 0.296499223))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -2.74229431, -6.67572021e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999523))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.296501487, 0.296499223))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 2.74255371, -6.67572021e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999523))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.296501786, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.48226929e-005, 2.89077377, -2.43186951e-005, 0.999999642, 1.29942332e-008, 1.07873738e-007, -1.29943079e-008, 0.999999642, 7.15448891e-007, -1.07873717e-007, -7.15448834e-007, 0.999999762))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000374794006, -0.963628292, 4.00193787, -0.999993443, -3.16762635e-006, -1.49011381e-008, -1.49021755e-008, 8.47403953e-007, -0.999998868, 3.16762657e-006, -0.999993384, -7.8780505e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.296501786, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000382423401, -0.88951993, -3.11242676, 0.999993205, 1.42891167e-006, -3.27825433e-007, -4.32134527e-007, 1.02892602e-006, -0.999998927, -1.47361538e-006, 0.999993265, 9.69328653e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.444752693, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000383377075, 0.518874645, -3.11242294, -0.999993443, -1.32620335e-006, 2.76574696e-007, 3.95783559e-007, -9.85657607e-007, 0.999998868, -1.37090683e-006, 0.999993265, 9.26059613e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.48249602))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.60424805, 0.000413894653, 2.51726198, 1.59275899e-007, -0.999999821, 1.49011584e-007, 1, 1.59275913e-007, -1.1378453e-007, 1.1378458e-007, 1.49011612e-007, 0.999999583))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.593003631, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000409126282, -2.96186352, -3.45602417, 0.999993205, 5.70906195e-007, 5.16308319e-006, 5.08593212e-006, -2.63005495e-005, -0.999997497, -5.03489844e-007, 0.999994576, -2.12490504e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45597839, 0.000414848328, 1.55362201, 1.59275089e-007, -0.999997139, -5.96043996e-008, 1, 1.59274975e-007, -1.13784445e-007, 1.13784942e-007, -5.96045808e-008, 0.999996901))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.592998326))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45598221, 0.000413894653, 2.36899614, 1.59275146e-007, -0.999998569, -2.98022584e-008, 1, 1.59275189e-007, -1.13784601e-007, 1.137849e-007, -2.98023508e-008, 0.999998331))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45597839, 0.000414848328, 1.99837613, 1.59275089e-007, -0.99999845, -5.96045027e-008, 1, 1.59275174e-007, -1.13784559e-007, 1.13784928e-007, -5.96046306e-008, 0.999998212))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.296499103))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45598602, 0.000414848328, 1.77599883, 1.59275174e-007, -0.999998808, -2.98022726e-008, 1, 1.59275203e-007, -1.13784644e-007, 1.13784857e-007, -2.98023366e-008, 0.999998569))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.889505386, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000412940979, -3.70311022, -3.60429001, 0.999993205, 5.70906195e-007, 5.16308319e-006, 5.08593212e-006, -2.63005495e-005, -0.999997497, -5.03489844e-007, 0.999994576, -2.12490504e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 1.90172958, -0.639986753, 0.999993563, 1.29944793e-008, 1.07850958e-007, -1.29944917e-008, 0.999992311, 1.25175063e-006, -1.0785029e-007, -1.07292954e-006, 0.999998868))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.593003571, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.0706977844, -0.573273659, 0.999997854, 1.29939313e-008, 1.07844173e-007, -1.29939162e-008, 0.999997437, 2.38420625e-007, -1.07843974e-007, -1.78815498e-007, 0.999999464))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.815372765))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -0.596420288, -0.57327354, 0.999997854, 1.29939313e-008, 1.07844173e-007, -1.29939162e-008, 0.999997437, 2.38420625e-007, -1.07843974e-007, -1.78815498e-007, 0.999999464))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 0.815372765))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.741254449, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -1.18922043, -0.57327342, 0.999997854, 1.29939313e-008, 1.07844173e-007, -1.29939162e-008, 0.999997437, 2.38420625e-007, -1.07843974e-007, -1.78815498e-007, 0.999999464))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.815372765))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.737804413, -0.573273778, 0.999997854, 1.29939313e-008, 1.07844173e-007, -1.29939162e-008, 0.999997437, 2.38420625e-007, -1.07843974e-007, -1.78815498e-007, 0.999999464))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 0.815372765))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.62124634e-005, -1.92287064, -0.639983892, 0.999997854, 1.29942155e-008, 1.07847583e-007, -1.29942519e-008, 0.999997437, 7.15275121e-007, -1.07847377e-007, -6.55669055e-007, 0.999999464))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.741254449, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 1.33082199, -0.573274136, 0.999993563, 1.2994124e-008, 1.07846695e-007, -1.29940725e-008, 0.999992311, 6.55663769e-007, -1.07846034e-007, -4.76846481e-007, 0.999998868))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.815372765))

function attackone()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(10),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(80), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0.2)*angles(math.rad(0),math.rad(40),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.6) 
so("http://roblox.com/asset/?id=231917871",Hitbox,1,0.8) 
 for i=0,1,0.1 do
                swait()
 local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(5),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.5) * angles(math.rad(0), math.rad(-70), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(70), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0.2)*angles(math.rad(0),math.rad(40),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
        end
        attack=false
con1:disconnect()
scfr = nil
end

function attacktwo()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(90)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(-80)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(90),math.rad(90)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(70), math.rad(-70), math.rad(0)), 0.3)

        end

for i=0,1,1 do
swait()
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.7) 
so("http://www.roblox.com/asset/?id=234365573",Hitbox,1,0.7)
for i=0,1,0.1 do
swait()
 local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0,0,-6*i),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(-50)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-10),math.rad(90)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-0,0)*angles(math.rad(-50),math.rad(0),math.rad(0)),.3)
end
end
con1:disconnect()
attack=false
scfr = nil
end

function attackthree()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-10),math.rad(0),math.rad(00)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(00)),.3)
RW.C0=clerp(RW.C0,cf(1,0.8,-1)*angles(math.rad(150),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.8,-1)*angles(math.rad(150),math.rad(0),math.rad(50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(-1,0,-.2)*angles(math.rad(-20),math.rad(-20),math.rad(50)),.3)
        end
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.4) 
so("http://www.roblox.com/asset/?id=234365549",Hitbox,1,0.6)
for i=0,1,.1 do
swait()
 local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(-5),math.rad(00)),.3)
RW.C0=clerp(RW.C0,cf(1,0.2,-.5)*angles(math.rad(10),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.2,-.5)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(-1,0,-.2)*angles(math.rad(-20),math.rad(-20),math.rad(50)),.3)
        end
attack=false
con1:disconnect()
scfr = nil
end

function CyanMoon()
attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(120),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-10),math.rad(0),math.rad(-10)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(-5),math.rad(0)),.3)
end
for i=1,4 do
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.5) 
so("http://roblox.com/asset/?id=28144425",Torso,1,0.8)
swait()
for i=0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(-40),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-60)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,5)*euler(0,-1.5,-6*i),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(-5),math.rad(0)),.3)
end
end
attack=false
con1:disconnect()
scfr = nil
end

function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part("Custom",workspace,"SmoothPlastic",0,0,"Really red","Effect",vt(0.5,0.5,0.5))
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
end),prt)
end

function Execution() --HEUAHUEHAUEHAUHUEAHUAEHUAHEUAHEUH
attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,90,100,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
for i=0,1,0.03 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(60)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-60)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(90),math.rad(120)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(100), math.rad(0), math.rad(0)), 0.1)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.2)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-0,.4)*angles(math.rad(0),math.rad(10),math.rad(0)),.1)
end
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.5) 
so("http://roblox.com/asset/?id=28144425",Torso,1,0.5)
 hitconasdf = Hitbox.Touched:connect(function(hit)
                local hum12 = hit.Parent:FindFirstChild("Humanoid")
                if hum12 and not hum12:IsDescendantOf(Character) then
                        so('http://roblox.com/asset/?id=154965973',Hitbox,1,0.8)
                        for i = 1,20 do
                        BreakEffect(BrickColor.new("Really red"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        end
                   hitconasdf:disconnect()
                end
        end)
for i=0,1,0.03 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(60)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-20),math.rad(70)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.2)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-0,.4)*angles(math.rad(0),math.rad(10),math.rad(0)),.2)
end
attack=false
con1:disconnect()
scfr = nil
pcall(function()
        hitconasdf:disconnect()
        end)
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
	if k=='q' then
		if attack==false then
			CyanMoon()
		end
	elseif k=='e' then
		if attack==false then
			Execution()
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-0,.4)*angles(math.rad(85),math.rad(10),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-0,.4)*angles(math.rad(85),math.rad(10),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(5),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(70), math.rad(100), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0.2)*angles(math.rad(0),math.rad(40),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(10),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(70), math.rad(100), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
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
module[3] = {"CrossBow",function()

    Player = game.Players.LocalPlayer
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
     
    attackdebounce = false
     
    ssdebounce=false
     
    MMouse=nil
     
    combo=0
     
    --player
     
    player = nil
     
    --save shoulders
     
    RSH, LSH = nil, nil
     
    --welds
     
    RW, LW = Instance.new("Weld"), Instance.new("Weld")
     
    RW.Name="Right Shoulder" LW.Name="Left Shoulder"
     
     
     
     
     
    if Character:findFirstChild("Crossbow",true) ~= nil then
     
    Character:findFirstChild("Crossbow",true).Parent = nil
     
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
     
    modelzorz.Name = "Crossbow"
     
     
     
    local prt1=part(3,modelzorz,0,0,Torso.BrickColor,"Part1",vt(1,1,1))
     
    local prt2=part(3,modelzorz,0,0,BrickColor.new("Bright blue"),"Part2",vt(1,1,1))
     
    local prt3=part(3,modelzorz,0,0,BrickColor.new("Bright blue"),"Part3",vt(1,1,1))
     
    local prt4=part(3,modelzorz,0,0,BrickColor.new("Bright blue"),"Part4",vt(1,1,1))
     
    local prt5=part(3,modelzorz,0,0,BrickColor.new("Blue"),"Part5",vt(1,1,1))
     
    local prt6=part(3,modelzorz,0,0,BrickColor.new("Blue"),"Part6",vt(1,1,1))
     
    local prt7=part(3,modelzorz,0,0,BrickColor.new("Blue"),"Part7",vt(1,1,1))
     
    local prt8=part(3,modelzorz,0,0,BrickColor.new("Bluen"),"Part8",vt(1,1,1))
     
    local prt9=part(3,modelzorz,0,0,BrickColor.new("Bright blue"),"Part9",vt(1,1,1))
     
    local prt10=part(3,modelzorz,0,0,BrickColor.new("Bright blue"),"Part10",vt(1,1,1))
     
    local prt11=part(3,modelzorz,0,0,BrickColor.new("Bright blue"),"Part11",vt(1,1,1))
     
    local prt12=part(3,modelzorz,0,0,BrickColor.new("Bright blue"),"Part12",vt(1,1,1))
     
    local prt13=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part13",vt(1,1,1))
     
    local prt14=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part14",vt(1,1,1))
     
    local prt15=part(3,modelzorz,0,1,BrickColor.new("Black"),"StringGuide",vt(0.2,0.2,0.2))
     
     
     
    local msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(0.4,0.8,0.4))
     
    local msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(0.8,0.5,2.5))
     
    local msh3=mesh("BlockMesh",prt3,"","",vt(0,0,0),vt(0.5,0.49,3))
     
    local msh4=mesh("BlockMesh",prt4,"","",vt(0,0,0),vt(0.2,0.21,3))
     
    local msh5=mesh("CylinderMesh",prt5,"","",vt(0,0,0),vt(0.1,2.99,0.1))
     
    local msh6=mesh("CylinderMesh",prt6,"","",vt(0,0,0),vt(0.1,2.99,0.1))
     
    local msh7=mesh("BlockMesh",prt7,"","",vt(0,0,0),vt(0.5,0.5,0.5))
     
    local msh8=mesh("CylinderMesh",prt8,"","",vt(0,0,0),vt(0.13,1,0.13))
     
    local msh9=mesh("CylinderMesh",prt9,"","",vt(0,0,0),vt(0.13,0.8,0.13))
     
    local msh10=mesh("BlockMesh",prt10,"","",vt(0,0,0),vt(0.4,0.1,1))
     
    local msh11=mesh("CylinderMesh",prt11,"","",vt(0,0,0),vt(0.13,0.8,0.13))
     
    local msh12=mesh("BlockMesh",prt12,"","",vt(0,0,0),vt(0.4,0.1,1))
     
    local msh13=mesh("CylinderMesh",prt13,"","",vt(0,0,0),vt(0.1,0.11,0.1))
     
    local msh14=mesh("CylinderMesh",prt14,"","",vt(0,0,0),vt(0.1,0.11,0.1))
     
     
     
    local wld1=weld(prt1,prt1,Torso,euler(0.5+1.57,0,0)*cf(-0.5,-1.5,-1))
     
    local wld2=weld(prt2,prt2,prt1,euler(-0.5,0,0)*cf(0,-0.5,0.2))
     
    local wld3=weld(prt3,prt3,prt2,euler(0,0,0)*cf(0,0,0.8))
     
    local wld4=weld(prt4,prt4,prt3,euler(0,0,0)*cf(0,-0.15,0.3))
     
    local wld5=weld(prt5,prt5,prt4,euler(1.57,0,0)*cf(0.1,-0.1,0))
     
    local wld6=weld(prt6,prt6,prt4,euler(1.57,0,0)*cf(-0.1,-0.1,0))
     
    local wld7=weld(prt7,prt7,prt4,euler(1.57,0,0)*cf(0,0,-1.5))
     
    local wld8=weld(prt8,prt8,prt4,euler(0,0,1.57)*cf(0,-0.05,1.45))
     
    local wld9=weld(prt9,prt9,prt8,euler(0.5,0,0)*cf(0,0.5,0))
     
    local wld10=weld(prt10,prt10,prt9,euler(-0.7,0,0)*cf(0,0.6,-0.25))
     
    local wld11=weld(prt11,prt11,prt8,euler(-0.5,0,0)*cf(0,-0.5,0))
     
    local wld12=weld(prt12,prt12,prt11,euler(0.7,0,0)*cf(0,-0.6,-0.25))
     
    local wld13=weld(prt13,prt13,prt10,euler(0,0,0)*cf(0.08,-0.01,-0.4))
     
    local wld14=weld(prt14,prt14,prt12,euler(0,0,0)*cf(0.08,0.01,-0.4))
     
    local wld15=weld(prt15,prt15,prt2,euler(0,0,0)*cf(0,-0.3,1.65))
     
     
     
    local string1=part(3,modelzorz,0,0,BrickColor.new("White"),"String1",vt(1,1,1))
     
    string1.Anchored=true
     
    local stringmsh1=mesh("CylinderMesh",string1,"","",vt(0,0,0),vt(0.1,1,0.1))
     
    local string2=part(3,modelzorz,0,0,BrickColor.new("White"),"String1",vt(1,1,1))
     
    string2.Anchored=true
     
    local stringmsh2=mesh("CylinderMesh",string2,"","",vt(0,0,0),vt(0.1,1,0.1))
     
     
     
    local strmdl = "Arrow"
     
    coroutine.resume(coroutine.create(function()
     
    repeat
     
    wait(0)
     
    local top = prt13.CFrame
     
    local bottom = prt14.CFrame
     
    local oristrpos
     
    if strmdl == "Bow" then
     
    oristrpos = CFrame.new((top.p+bottom.p)/2)
     
    elseif strmdl == "Arrow" then
     
    oristrpos = prt15.CFrame
     
    end
     
    local mg1 = (top.p - oristrpos.p).magnitude
     
    local mg2 = (bottom.p - oristrpos.p).magnitude
     
    string1.Size = Vector3.new(0.2,mg1,0.2)
     
    string1.CFrame = CFrame.new((top.p+oristrpos.p)/2,oristrpos.p) * CFrame.Angles(math.rad(90),0,0)
     
    string2.Size = Vector3.new(0.2,mg2,0.2)
     
    string2.CFrame = CFrame.new((bottom.p+oristrpos.p)/2,oristrpos.p) * CFrame.Angles(math.rad(90),0,0)
     
    until false
     
    end))
     
     
     
     
     
    if (script.Parent.className ~= "HopperBin") then
     
    Tool = Instance.new("HopperBin")
     
    Tool.Parent = Backpack
     
    Tool.Name = "Crossbow"
     
    script.Parent = Tool
     
    end
     
    Bin = Tool
     
     
     
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
     
    wld1.C0=euler(0.5+1.57,0,0)*cf(-0.5,-1.5,-1)
     
    end
     
     
     
    function equipweld()
     
    wld1.Part1=RightArm
     
    wld1.C0=euler(0.5+1.57,0,0)*cf(0,1,0)
     
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
     
    RW.C0=cf(1.5, 0.5, 0) * euler(0.8,0,0)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
     
    LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
     
    LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
     
    end
     
     
     
    function Melee()
     
    attack=true
     
    SpecialEffect()
     
    for i=0,1,0.1 do
     
    wait()
     
    RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(0.8+0.77*i,0,0)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,0.2-1.77*i,-0.2+0.8*i)
     
    end
     
    bg.Parent=Torso
     
    CF = Torso.CFrame
     
    con1=prt2.Touched:connect(function(hit) Damagefunc1(hit,20,20) end)
     
    con2=prt3.Touched:connect(function(hit) Damagefunc1(hit,20,20) end)
     
    so("http://roblox.com/asset/?id=10209640",LeftArm,1,0.8)
     
    for i=0,1,0.1 do
     
    wait()
     
    RW.C0=cf(1.5-0.5+0.5*i, 0.5, -0.5+0.5*i) * euler(1.57,0,0)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,-1.57,0.6-2.17*i)
     
    LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2-1.37*i)
     
    bg.cframe=CF*euler(0,-6.283*i,0)
     
    end
     
    con1:disconnect()
     
    con2:disconnect()
     
    bg.Parent=nil
     
    for i=0,1,0.1 do
     
    wait()
     
    RW.C0=cf(1.5, 0.5, 0) * euler(1.57-0.77*i,0,0)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,-1.57+1.77*i,-1.57+1.37*i)
     
    LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2-1.37+1.37*i)
     
    end
     
    attack=false
     
    end
     
     
     
    function TripleShot()
     
    attack=true
     
    SpecialEffect()
     
    Humanoid.WalkSpeed=5
     
    holding=true
     
    for i=0,1,0.2 do
     
    wait()
     
    RW.C0=cf(1.5, 0.5, 0) * euler(0.8-0.2*i,0,0)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
     
    LW.C0=cf(-1.5, 0.5, 0) * euler(-0.6*i,0,-0.2+0.4*i)
     
    LW.C1=cf(0, 0.5, 0) * euler(0,-1.57*i,0)
     
    end
     
    local arrow=part(3,modelzorz,0,0,BrickColor.new("White"),"Arrow",vt(1,1,1))
     
    local arrowmsh=mesh("SpecialMesh",arrow,"FileMesh","http://www.roblox.com/asset/?id=15887356",vt(0,0,0),vt(1,1,2))
     
    arrowmsh.VertexColor=vt(1,1,1)
     
    --arrowmsh.TextureId="http://www.roblox.com/asset/?id=15886781"
     
    local arrowwld=weld(arrow,arrow,LeftArm,euler(0,0,0)*cf(0,1,0))
     
    for i=0,1,0.1 do
     
    wait()
     
    Torso.Neck.C0=necko*euler(0.3*i,0,0)
     
    RW.C0=cf(1.5, 0.5, 0) * euler(0.6,0,0)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,0.2-0.2*i,-0.2+0.2*i)
     
    LW.C0=cf(-1.5, 0.5, -0.2*i) * euler(-0.6+1.7*i,0,0.2)
     
    LW.C1=cf(0, 0.5, 0) * euler(0,-1.57+3.14*i,0)
     
    wld1.C0=euler(0.5+1.57,0,1.57*i)*cf(0,1,0)
     
    arrowwld.C0=euler(0,0,1.57*i)*cf(0,1,-1*i)
     
    end
     
    arrowwld.Part1=prt4
     
    arrowwld.C0=euler(3.14,0,0)*cf(0,-0.15,2.5)
     
    for i=0,1,0.1 do
     
    wait()
     
    LW.C0=cf(-1.5+0.5*i, 0.5, -0.2-0.3*i) * euler(1.1-0.1*i,0,0.2+0.3*i)
     
    LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
     
    arrowwld.C0=euler(3.14,0,0)*cf(0,-0.15,2.5-1.5*i)
     
    wld15.C0=euler(0,0,0)*cf(0,-0.3,1.65-2*i)
     
    end
     
    coroutine.resume(coroutine.create(function()
     
    wait()
     
    while holding==true do
     
    wait(0)
     
    bg.Parent = Torso
     
    local pos4 = vt(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
     
    bg.cframe = cf(Torso.Position,pos4) * euler(0,1.57,0) * cf(0,0,0)
     
    end
     
    bg.Parent=nil
     
    end))
     
    for i=0,1,0.1 do
     
    wait()
     
    Torso.Neck.C0=necko*euler(0.3-0.3*i,0,-1.57*i)
     
    RW.C0=cf(1.5, 0.5, 0) * euler(0.6-0.6*i,0,1.57*i)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
     
    LW.C0=cf(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * euler(1-1*i,0,0.5-0.7*i)
     
    LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
     
    wld1.C0=euler(0.5+1.57,0,1.57-1.57*i)*cf(0,1,0)
     
    end
     
    wait(0.2)
     
    arrowfft=arrow:Clone()
     
    arrowfft.Parent=arrow.Parent
     
    arrowfft.CFrame=arrow.CFrame
     
    arrowfft.Anchored=true
     
    fftmsh=arrowfft.Mesh
     
    coroutine.resume(coroutine.create(function(Arrow,Mesh)
     
    for i=0,1,0.1 do
     
    wait()
     
    Arrow.Transparency=i
     
    Mesh.Scale=Mesh.Scale+vt(0.5,0.5,0.5)
     
    end
     
    Arrow.Parent=nil
     
    end),arrowfft,fftmsh)
     
    for i=1,3 do
     
    spread=1
     
    so("http://www.roblox.com/asset/?id=16211041",prt8,1,1)
     
    shoottrail(mouse,prt8)
     
    end
     
    spread=0
     
    arrow.Parent=nil
     
    wld15.C0=euler(0,0,0)*cf(0,-0.3,1.65)
     
    for i=0,1,0.2 do
     
    wait()
     
    Torso.Neck.C0=necko*euler(0,0.2*i,-1.57)
     
    RW.C0=cf(1.5, 0.5, 0) * euler(0,0,1.57+0.2*i)
     
    end
     
    for i=0,1,0.2 do
     
    wait()
     
    Torso.Neck.C0=necko*euler(0,0.2+0.1*i,-1.57)
     
    RW.C0=cf(1.5, 0.5, 0) * euler(0,0,1.57+0.2+0.1*i)
     
    end
     
    Humanoid.WalkSpeed=16
     
    holding=false
     
    for i=0,1,0.1 do
     
    wait()
     
    Torso.Neck.C0=necko*euler(0,0.3-0.3*i,-1.57+1.57*i)
     
    RW.C0=cf(1.5, 0.5, 0) * euler(0.8*i,0,1.87-1.87*i)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.37*i,-0.2*i)
     
    end
     
    attack=false
     
    end
     
     
     
    function SpiritArrows()
     
    attack=true
     
    SpecialEffect()
     
    Humanoid.WalkSpeed=0
     
    holding=true
     
    spread=2
     
    for i=0,1,0.2 do
     
    wait()
     
    RW.C0=cf(1.5, 0.5, 0) * euler(0.8-0.2*i,0,0)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
     
    LW.C0=cf(-1.5, 0.5, 0) * euler(-0.6*i,0,-0.2+0.4*i)
     
    LW.C1=cf(0, 0.5, 0) * euler(0,-1.57*i,0)
     
    end
     
    local arrow=part(3,modelzorz,0.5,0,BrickColor.new("White"),"Arrow",vt(1,1,1))
     
    local arrowmsh=mesh("SpecialMesh",arrow,"FileMesh","http://www.roblox.com/asset/?id=15887356",vt(0,0,0),vt(1,1,2))
     
    arrowmsh.VertexColor=vt(1,1,1)
     
    --arrowmsh.TextureId="http://www.roblox.com/asset/?id=15886781"
     
    local arrowwld=weld(arrow,arrow,LeftArm,euler(0,0,0)*cf(0,1,0))
     
    for i=0,1,0.1 do
     
    wait()
     
    Torso.Neck.C0=necko*euler(0.3*i,0,0)
     
    RW.C0=cf(1.5, 0.5, 0) * euler(0.6,0,0)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,0.2-0.2*i,-0.2+0.2*i)
     
    LW.C0=cf(-1.5, 0.5, -0.2*i) * euler(-0.6+1.7*i,0,0.2)
     
    LW.C1=cf(0, 0.5, 0) * euler(0,-1.57+3.14*i,0)
     
    wld1.C0=euler(0.5+1.57,0,1.57*i)*cf(0,1,0)
     
    arrowwld.C0=euler(0,0,1.57*i)*cf(0,1,-1*i)
     
    end
     
    arrowwld.Part1=prt4
     
    arrowwld.C0=euler(3.14,0,0)*cf(0,-0.15,2.5)
     
    for i=0,1,0.1 do
     
    wait()
     
    LW.C0=cf(-1.5+0.5*i, 0.5, -0.2-0.3*i) * euler(1.1-0.1*i,0,0.2+0.3*i)
     
    LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
     
    arrowwld.C0=euler(3.14,0,0)*cf(0,-0.15,2.5-1.5*i)
     
    wld15.C0=euler(0,0,0)*cf(0,-0.3,1.65-2*i)
     
    end
     
    coroutine.resume(coroutine.create(function()
     
    wait()
     
    while holding==true do
     
    wait(0)
     
    bg.Parent = Torso
     
    local pos4 = vt(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
     
    bg.cframe = cf(Torso.Position,pos4) * euler(0,1.57,0) * cf(0,0,0)
     
    end
     
    bg.Parent=nil
     
    end))
     
    for i=0,1,0.1 do
     
    wait()
     
    Torso.Neck.C0=necko*euler(0.3-0.3*i,0,-1.57*i)
     
    RW.C0=cf(1.5, 0.5, 0) * euler(0.6-0.6*i,0,1.57*i)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
     
    LW.C0=cf(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * euler(1-1*i,0,0.5-0.7*i)
     
    LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
     
    wld1.C0=euler(0.5+1.57,0,1.57-1.57*i)*cf(0,1,0)
     
    end
     
    arrowlimit=0
     
    makearrow=false
     
    while holding==true do
     
    wait(0)
     
    coroutine.resume(coroutine.create(function()
     
    if makearrow==false then
     
    makearrow=true
     
    if arrowlimit<=7 then
     
    arrowlimit=arrowlimit+1
     
    local arrowclone=part(3,modelzorz,0.5,1,BrickColor.new("White"),"Arrow",vt(1,1,1))
     
    local arrowmshclone=mesh("SpecialMesh",arrowclone,"FileMesh","http://www.roblox.com/asset/?id=15887356",vt(0,0,0),vt(1,1,2))
     
    arrowmsh.VertexColor=vt(1,1,1)
     
    local arrowwldclone=weld(arrowclone,arrowclone,arrow,euler(0,0,3.14)*cf(math.random(-8,8),math.random(-3,3),math.random(-8,8)))
     
    coroutine.resume(coroutine.create(function(Arrow)
     
    for i=1,0.3,-0.05 do
     
    wait()
     
    Arrow.Transparency=i
     
    end
     
    while holding==true do
     
    wait()
     
    end
     
    Arrow.Anchored=true
     
    if Arrow:findFirstChild("Weld")~=nil then
     
    Arrow.Weld.Parent=nil
     
    end
     
    wait(math.random()-math.random())
     
    so("http://www.roblox.com/asset/?id=16211041",Arrow,1,1)
     
    shoottrail(mouse,Arrow)
     
    Arrow.Parent=nil
     
    end),arrowclone)
     
    end
     
    wait(math.random())
     
    makearrow=false
     
    end
     
    end))
     
    end
     
    arrowfft=arrow:Clone()
     
    arrowfft.Parent=arrow.Parent
     
    arrowfft.CFrame=arrow.CFrame
     
    arrowfft.Anchored=true
     
    fftmsh=arrowfft.Mesh
     
    coroutine.resume(coroutine.create(function(Arrow,Mesh)
     
    for i=0,1,0.1 do
     
    wait()
     
    Arrow.Transparency=i
     
    Mesh.Scale=Mesh.Scale+vt(0.2,0.2,0.2)
     
    end
     
    Arrow.Parent=nil
     
    end),arrowfft,fftmsh)
     
    so("http://www.roblox.com/asset/?id=16211041",prt8,1,1)
     
    shoottrail(mouse,prt8)
     
    arrow.Parent=nil
     
    wld15.C0=euler(0,0,0)*cf(0,-0.3,1.65)
     
    for i=0,1,0.2 do
     
    wait()
     
    Torso.Neck.C0=necko*euler(0,0.2*i,-1.57)
     
    RW.C0=cf(1.5, 0.5, 0) * euler(0,0,1.57+0.2*i)
     
    end
     
    for i=0,1,0.2 do
     
    wait()
     
    Torso.Neck.C0=necko*euler(0,0.2+0.1*i,-1.57)
     
    RW.C0=cf(1.5, 0.5, 0) * euler(0,0,1.57+0.2+0.1*i)
     
    end
     
    Humanoid.WalkSpeed=16
     
    for i=0,1,0.1 do
     
    wait()
     
    Torso.Neck.C0=necko*euler(0,0.3-0.3*i,-1.57+1.57*i)
     
    RW.C0=cf(1.5, 0.5, 0) * euler(0.8*i,0,1.87-1.87*i)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.37*i,-0.2*i)
     
    end
     
    spread=0
     
    attack=false
     
    end
     
     
     
    function Decimate()
     
    attack=true
     
    Humanoid.WalkSpeed=0
     
    print("Archer SS initiated.")
     
    SpecialEffect()
     
    holding=true
     
    coroutine.resume(coroutine.create(function()
     
    wait()
     
    while holding==true do
     
    wait(0)
     
    bg.Parent = Torso
     
    local pos4 = vt(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
     
    bg.cframe = cf(Torso.Position,pos4) * euler(0,1.57,0) * cf(0,0,0)
     
    end
     
    bg.Parent=nil
     
    end))
     
    so("http://roblox.com/asset/?id=2101144",arrow,1,1)
     
    local arrow=part(3,modelzorz,0,1,BrickColor.new("White"),"Arrow",vt(1,1,1))
     
    local arrowmsh=mesh("SpecialMesh",arrow,"FileMesh","http://www.roblox.com/asset/?id=15887356",vt(0,0,0),vt(2,2,4))
     
    local arrowwld=weld(arrow,arrow,LeftArm,euler(-1.57,0,0)*cf(0,2,0))
     
    for i=0,1,0.1 do
     
    wait()
     
    arrow.Transparency=arrow.Transparency-0.05
     
    arrowwld.C0=euler(-1.57+0.2*i,0,0)*cf(-0.5*i,2,-0.5*i)
     
    Torso.Neck.C0=necko*euler(0,0.3*i,-1.57*i)
     
    RW.C0=cf(1.5, 0.5, -0.5*i) * euler(0.8+2.2*i,0,0)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,0.2-1.77*i,-0.2+0.2*i)
     
    LW.C0=cf(-1.5+1.8*i, 0.5+2*i, -0.5*i) * euler(3.1*i,0,-0.2+0.6*i)
     
    LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
     
    end
     
    arrowwld.Part1=prt4
     
    arrowwld.C0=euler(3.14,0,0)*cf(0,-0.15,2.5)
     
    for i=0,1,0.05 do
     
    wait()
     
    Torso.Neck.C0=necko*euler(0,0.3-0.1*i,-1.57)
     
    LW.C0=cf(-1.5+1.8, 2.5-1.5*i, -0.5) * euler(3.1,0,0.4)
     
    arrowwld.C0=euler(3.14,0,0)*cf(0,-0.15,2.5-1*i)
     
    wld15.C0=euler(0,0,0)*cf(0,-0.3,1.65-4*i)
     
    end
     
    for i=0,1,0.05 do
     
    wait()
     
    Torso.Neck.C0=necko*euler(0,0.2-0.2*i,-1.57)
     
    RW.C0=cf(1.5, 0.5, -0.5) * euler(3+0.14*i,0,0)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,-1.57,-1.57*i)
     
    LW.C0=cf(-1.5+1.8, 1, -0.5) * euler(3.1,0,0.4+1.17*i)
     
    LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
     
    end
     
    while holding==true do
     
    wait()
     
    end
     
    so("http://www.roblox.com/asset/?id=16211041",prt8,1,1)
     
    SSshoottrail(mouse,prt8)
     
    arrow.Parent=nil
     
    Humanoid.WalkSpeed=16
     
    for i=0,1,0.2 do
     
    wait()
     
    Torso.Neck.C0=necko*euler(0,0.3*i,-1.57)
     
    RW.C0=cf(1.5, 0.5, -0.5) * euler(3.24,0,0)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,-1.57,-1.57+1*i)
     
    LW.C0=cf(-1.5+1.8, 1, -0.5) * euler(3.1,0,1.57-1*i)
     
    LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
     
    wld15.C0=euler(0,0,0)*cf(0,-0.3,1.65)
     
    end
     
    for i=0,1,0.1 do
     
    wait()
     
    Torso.Neck.C0=necko*euler(0,0.3+0.1*i,-1.57)
     
    RW.C0=cf(1.5, 0.5, -0.5) * euler(3.24,0,0)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,-1.57,-1.57+1+0.1*i)
     
    LW.C0=cf(-1.5+1.8, 1, -0.5) * euler(3.1,0,1.57-1-0.1*i)
     
    LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
     
    wld15.C0=euler(0,0,0)*cf(0,-0.3,1.65)
     
    end
     
    for i=0,1,0.05 do
     
    wait()
     
    Torso.Neck.C0=necko*euler(0,0.4-0.4*i,-1.57+1.57*i)
     
    RW.C0=cf(1.5, 0.5, -0.5+0.5*i) * euler(3.24-2.44*i,0,0)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,-1.57+1.77*i,-0.47+0.27*i)
     
    LW.C0=cf(-1.5+1.8-1.8*i, 1-0.5*i, -0.5+0.5*i) * euler(3.1-3.1*i,0,0.47-0.67*i)
     
    LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
     
    end
     
    attack=false
     
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
     
                    rl.Parent=hit
     
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
     
                    c.BrickColor=BrickColor.new("Really red")
     
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
     
     
     
    spread=0
     
    range=500
     
    rangepower=50
     
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
     
    effectsg.Parent = modelzorz
     
    effectsmsh.Parent = effectsg
     
    effectsg.BrickColor = BrickColor.new("White")
     
    effectsg.Reflectance = 0.25
     
    local LP = From
     
    local point1 = To
     
    local mg = (LP - point1).magnitude
     
    effectsmsh.Scale = Vector3.new(1.5,mg*5,1.5)
     
    effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
     
    coroutine.resume(coroutine.create(function()
     
    for i = 0 , 1 , 0.1 do
     
    wait()
     
    effectsg.Transparency = 1*i
     
    effectsmsh.Scale = Vector3.new(1-1*i,mg*5,1-1*i)
     
    end
     
    effectsg.Parent = nil
     
    end))
     
    end
     
    local newpos = baseprt.Position
     
    local inc = rangepower
     
    repeat
     
    wait() wait()
     
    rangepos = rangepos - 10
     
    dir = dir * CFrame.Angles(math.rad(-1),0,0)
     
    hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
     
    drawtrail(newpos,pos)
     
    newpos = newpos + (dir.lookVector * inc)
     
    if inc >= 20 then
     
    inc = inc - 10
     
    end
     
    if hit ~= nil then
     
    rangepos = 0
     
    end
     
    until rangepos <= 0
     
    if hit ~= nil then
     
    if hit.Parent:FindFirstChild("Humanoid") ~= nil then
     
    hum = hit.Parent.Humanoid
     
    tTorso=hit.Parent.Torso
     
    Damagefunc2(hit,20,30)
     
    --ADmg(hum,hit)
     
    elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
     
    hum = hit.Parent.Parent.Humanoid
     
    tTorso=hit.Parent.Parent.Torso
     
    Damagefunc2(hit.Parent.Parent.Torso,20,30)
     
    --ADmg(hum,hit)
     
    end
     
    end
     
    end))
     
    end
     
     
     
    function SSshoottrail(mouse,baseprt)
     
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
     
    effectsg.Parent = modelzorz
     
    effectsmsh.Parent = effectsg
     
    effectsg.BrickColor = BrickColor.new("White")
     
    effectsg.Reflectance = 0.25
     
    local LP = From
     
    local point1 = To
     
    local mg = (LP - point1).magnitude
     
    effectsmsh.Scale = Vector3.new(2.5,mg*5,2.5)
     
    effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
     
    coroutine.resume(coroutine.create(function()
     
    for i = 0 , 1 , 0.1 do
     
    wait()
     
    effectsg.Transparency = 1*i
     
    effectsmsh.Scale = Vector3.new(2.5-2.5*i,mg*5,2.5-2.5*i)
     
    end
     
    effectsg.Parent = nil
     
    end))
     
    end
     
    local newpos = baseprt.Position
     
    local inc = rangepower
     
    repeat
     
    wait() wait()
     
    rangepos = rangepos - 5
     
    hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
     
    drawtrail(newpos,pos)
     
    newpos = newpos + (dir.lookVector * inc)
     
    dir = CFrame.new(pos,MMouse.Hit.p)
     
    if hit ~= nil then
     
    MagicCircle(BrickColor.new("White"),CFrame.new(pos),5,5,5,0,0,0,10,10,10)
     
    if hit.Parent:FindFirstChild("Humanoid") ~= nil then
     
    hum = hit.Parent.Humanoid
     
    tTorso=hit.Parent.Torso
     
    Damagefunc1(hit,60,100)
     
    --ADmg(hum,hit)
     
    elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
     
    hum = hit.Parent.Parent.Humanoid
     
    tTorso=hit.Parent.Parent.Torso
     
    Damagefunc1(hit.Parent.Parent.Torso,60,100)
     
    --ADmg(hum,hit)
     
    end
     
    end
     
    until rangepos <= 0
     
    end))
     
    end
     
     
     
    function ArrowIn()
     
    attack=true
     
    for i=0,1,0.2 do
     
    wait()
     
    RW.C0=cf(1.5, 0.5, 0) * euler(0.8-0.2*i,0,0)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
     
    LW.C0=cf(-1.5, 0.5, 0) * euler(-0.6*i,0,-0.2+0.4*i)
     
    LW.C1=cf(0, 0.5, 0) * euler(0,-1.57*i,0)
     
    end
     
    local arrow=part(3,modelzorz,0,0,BrickColor.new("White"),"Arrow",vt(1,1,1))
     
    local arrowmsh=mesh("SpecialMesh",arrow,"FileMesh","http://www.roblox.com/asset/?id=15887356",vt(0,0,0),vt(1,1,2))
     
    arrowmsh.TextureId="http://www.roblox.com/asset/?id=15886781"
     
    local arrowwld=weld(arrow,arrow,LeftArm,euler(0,0,0)*cf(0,1,0))
     
    for i=0,1,0.2 do
     
    wait()
     
    Torso.Neck.C0=necko*euler(0.3*i,0,0)
     
    RW.C0=cf(1.5, 0.5, 0) * euler(0.6,0,0)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,0.2-0.2*i,-0.2+0.2*i)
     
    LW.C0=cf(-1.5, 0.5, -0.2*i) * euler(-0.6+1.7*i,0,0.2)
     
    LW.C1=cf(0, 0.5, 0) * euler(0,-1.57+3.14*i,0)
     
    wld1.C0=euler(0.5+1.57,0,1.57*i)*cf(0,1,0)
     
    arrowwld.C0=euler(0,0,1.57*i)*cf(0,1,-1*i)
     
    end
     
    arrowwld.Part1=prt4
     
    arrowwld.C0=euler(3.14,0,0)*cf(0,-0.15,2.5)
     
    for i=0,1,0.2 do
     
    wait()
     
    LW.C0=cf(-1.5+0.5*i, 0.5, -0.2-0.3*i) * euler(1.1-0.1*i,0,0.2+0.3*i)
     
    LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
     
    arrowwld.C0=euler(3.14,0,0)*cf(0,-0.15,2.5-1.5*i)
     
    wld15.C0=euler(0,0,0)*cf(0,-0.3,1.65-2*i)
     
    end
     
    coroutine.resume(coroutine.create(function()
     
    wait()
     
    while attack==true do
     
    wait(0)
     
    bg.Parent = Torso
     
    local pos4 = vt(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
     
    bg.cframe = cf(Torso.Position,pos4) * euler(0,1.57,0) * cf(0,0,0)
     
    end
     
    bg.Parent=nil
     
    end))
     
    for i=0,1,0.2 do
     
    wait()
     
    Torso.Neck.C0=necko*euler(0.3-0.3*i,0,-1.57*i)
     
    RW.C0=cf(1.5, 0.5, 0) * euler(0.6-0.6*i,0,1.57*i)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
     
    LW.C0=cf(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * euler(1-1*i,0,0.5-0.7*i)
     
    LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
     
    wld1.C0=euler(0.5+1.57,0,1.57-1.57*i)*cf(0,1,0)
     
    end
     
    while hold==true do
     
    wait(0)
     
    end
     
    so("http://www.roblox.com/asset/?id=16211041",prt8,1,1)
     
    arrow.Parent=nil
     
    shoottrail(mouse,prt8)
     
    wld15.C0=euler(0,0,0)*cf(0,-0.3,1.65)
     
    for i=0,1,0.2 do
     
    wait()
     
    Torso.Neck.C0=necko*euler(0,0.2*i,-1.57)
     
    RW.C0=cf(1.5, 0.5, 0) * euler(0,0,1.57+0.2*i)
     
    end
     
    for i=0,1,0.2 do
     
    wait()
     
    Torso.Neck.C0=necko*euler(0,0.2+0.1*i,-1.57)
     
    RW.C0=cf(1.5, 0.5, 0) * euler(0,0,1.57+0.2+0.1*i)
     
    end
     
    attack=false
     
    end
     
     
     
    function ob1d(mouse)
     
    if attack == true then return end
     
    hold=true
     
    ArrowIn()
     
    end
     
     
     
    function ob1u(mouse)
     
    hold = false
     
    repeat wait() until attack==false
     
    for i=0,1,0.1 do
     
    wait()
     
    Torso.Neck.C0=necko*euler(0,0.3-0.3*i,-1.57+1.57*i)
     
    RW.C0=cf(1.5, 0.5, 0) * euler(0.8*i,0,1.87-1.87*i)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.37*i,-0.2*i)
     
    end
     
    Torso.Neck.C0=necko
     
    wld1.C0=euler(0.5+1.57,0,0)*cf(0,1,0)
     
    wld15.C0=euler(0,0,0)*cf(0,-0.3,1.65)
     
    RW.C0=cf(1.5, 0.5, 0) * euler(0.8,0,0)
     
    RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
     
    LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
     
    LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
     
    end
     
     
     
    buttonhold = false
     
     
     
    eul=0
     
    function key(key)
     
    if attack == true then return end
     
    if key=="z" then
     
    Melee()
     
    end
     
    if key=="x" then
     
    TripleShot()
     
    end
     
    if key=="c" then
     
    SpiritArrows()
     
    end
     
    if key=="v" and ssdebounce==false then
     
    --ssdebounce=true
     
    coroutine.resume(coroutine.create(function()
     
    wait(30)
     
    ssdebounce=false
     
    end))
     
    Decimate()
     
    end
     
    end
     
     
     
    function key2(key)
     
    if key=="c" or key=="v" then
     
    holding=false
     
    end
     
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
     
    print("Crossbow loaded.")


end}
module[4] = {"Crystal Sword",function()
:ls --MADE BY OneLegend (NOT THE SCRIPT) LOCAL SCRIPT: JUST RUN!

c,d=pcall(function()
ply = game.Players.LocalPlayer
char = ply.Character
torso = char.Torso
head = char.Torso
track = false --- for tracking function
char.Humanoid.MaxHealth,char.Humanoid.Health,char.Humanoid.WalkSpeed = 9000,9000,30
dmg = 20

Bo = {["T"] = char["Torso"], ["H"] = char.Head}
Bo.Arms = {["R"] = char["Right Arm"], ["L"] = char["Left Arm"]}
Bo.Legs = {["L"] = char["Left Leg"], ["R"] = char["Right Leg"]}
Bo.Shls = {["R"] = torso["Right Shoulder"], ["L"] = torso["Left Shoulder"]}


rarm = char["Right Arm"]
rw,lw = Instance.new("Weld"),Instance.new("Weld")
normpos = Bo.Shls.R.C0

function lock(a) ---- updating this for 2 hands
if a == 1 then

---RIGHT---
rw.Parent = torso
rw.C0,rw.C1 = Bo.Shls.R.C0 ,Bo.Shls.R.C1
rw.Part0,rw.Part1 = Bo.Shls.R.Part0 ,Bo.Shls.R.Part1
Bo.Shls.R.Parent = nil

---LEFT---
lw.Parent = torso
lw.Part0,lw.Part1 = Bo.Shls.L.Part0 ,Bo.Shls.L.Part1
lw.C0,lw.C1 = Bo.Shls.L.C0 ,Bo.Shls.L.C1


elseif a == 0 then
Bo.Shls.R.Parent = torso
rw.Parent = nil
Bo.Shls.L.Parent = torso
lw.Parent = nil

end
end

cfn,ang = CFrame.new,CFrame.Angles
v3n = Vector3.new

attacks = {
["slash"] = CFrame.Angles(1,2,3)
}



sword = Instance.new("Model",char)

meshids = {["blast"] = 20329976, ["penguin"] = 15853464, ["ring"] = 3270017,
["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["crossbow"] = 15886761,
["cloud"] = 1095708,["mjolnir"] = 1279013,["diamond"] = 9756362, ["hand"] = 37241605,
["fist"] = 65322375,["skull"] = 36869983,["totem"] = 35624068,["spikeb"] = 9982590,["dragon"] = 58430372}---some meshids


------TOOOOOLS------
T = {["P"] = function(x,y,z,color,transparency,cancollide,anchored)
c = Instance.new("Part",sword)
c.TopSurface,c.BottomSurface = 0,0
c.formFactor = "Custom"
c.Size = Vector3.new(x,y,z)
c.BrickColor = BrickColor.new(color)
c.Transparency = transparency
c.CanCollide = cancollide
if anchored ~= nil then c.Anchored = anchored end
return c
end
,
["C"] = function(func) coroutine.resume(coroutine.create(func)) end
,
["W"] = function(part0,part1,x,y,z,rx,ry,rz)
w = Instance.new("Weld",sword)
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
["F"] = function(parent,size,heat,color,secondcolor)
f = Instance.new("Fire",parent)
f.Size = size
f.Heat = heat
if color ~= nil then f.Color = BrickColor.new(color).Color end
if secondcolor ~= nil then f.SecondaryColor = BrickColor.new(secondcolor).Color end
return f
end
,
["Track"] = function(obj,s,t,lt)
coroutine.resume(coroutine.create(function()
while track do
old = obj.Position
wait()
new = obj.Position

mag = (old-new).magnitude
dist = (old+new)/2

ray = T.P(s,mag+.2,s,obj.Color,t,false,true)
Instance.new("CylinderMesh",ray)
ray.CFrame = CFrame.new(dist,old)*ang(math.pi/2,0,0)
game:GetService("Debris"):AddItem(ray,lt)

end
end)) end,
["D"] = function(hit) if hit.Parent:findFirstChild("Humanoid") then h=hit.Parent.Humanoid h.Health = h.Health -dmg end end
,
["FM"] = function(parent,meshid,x,y,z,meshtexture)
if meshid == "cylinder" then
mesh = Instance.new("CylinderMesh",parent)
mesh.Scale = Vector3.new(x,y,z)
return mesh
else
mesh = Instance.new("SpecialMesh",parent)
if meshid ~= "sphere" then
mesh.MeshId = "rbxassetid://"..meshids[meshid]
else mesh.MeshType = 3 end
mesh.Scale = Vector3.new(x,y,z)
if meshtexture ~= nil then
mesh.TextureId = "rbxassetid://"..textureids[meshtexture]
end
return mesh
end
end
}
--------------------------------------------------
---MATH SHORTENINGS---
M = {["R"] = function(a,b) return math.random(a,b) end,
["Cos"] = function(a) return math.cos(a) end,
["Sin"] = function(a) return math.sin(a) end,
["D"] = function(a) return math.rad(a) end
}
---------------------------

--[[tutorial to using shortenings
T.P(sizex,sizey,sizez,brickcolor,transparency,cancollide,anchored)
T.W(part0,part1,x,y,z,rx,ry,rz)
T.F(parent,size,heat,color,secondarycolor)
T.FM(parent,meshid(see the list),scalex,scaley,scalez,textureid(optional) ) --- most usefull

M.R(a,b) creates a randomvalue beetwen a and b
]]--

p = T.P(.7,2,.7,"Bright blue",.5,false,false) --- The handle in 1 line O_O
p.Name = "Handle"
p.Position = torso.Position --p.CFrame = p.CFrame * CFrame.new(torso.X, torso.Y, torso.Z)
T.FM(p,"cylinder",1,1,1) --- cylindermesh
hw = T.W(p,torso,0,0,1,0,0,M.D(-45))
holdpos = cfn(0,-1.5,0)*ang(math.pi/2,0,0)
torsopos = cfn(0,0,1)*ang(0,0,M.D(-45))

crystal = T.P(1,1,1,"Bright red",.5,false,false)
T.W(crystal,p,0,1,0,0,0,0)
T.FM(crystal,"diamond",.5,1,.5)

p.Touched:connect(function(h)
T.D(h)
end)

c=nil
mainweld = nil
radius = 1

main = T.P(1,1,1,"White",1,false,false)
mainweld = T.W(main,p,0,-1.5,0,0,0,0)


----SHIELD----
sp = T.P(2,4,.5,"Magenta",.5,false,false)
sp2 = T.P(1,4,.5,"Magenta",.5,false,false)
sp3 = T.P(1,4,.5,"Magenta",.5,false,false)
--sp,sp2,sp3.Transparency = 0.5,0.5,0.5
T.W(sp2,sp,-1.4,0,.15,0,M.D(20),0)
T.W(sp3,sp,1.4,0,.15,0,M.D(-20),0)

mw = T.W(sp,Bo.Arms.L,-.5,0,0,0,math.pi/2,0,0)
----------------------------------------

for i = 1,360,60 do --- I weld diamonds to part at bottom of handle
c = T.P(1,1,1,"White",.5,false,false)
T.FM(c,"diamond",.5,1.4,.5)

T.W(c,main,M.Cos(M.D(i))*radius,0,M.Sin(M.D(i))*radius,0,0,0)
end

T.C(function() -- ROTATE
while true do
wait()
mainweld.C1 = mainweld.C1 * ang(0,M.D(10),0)
end
end)


T.C(function()
while wait(0.1) do
for i = 0,1,0.1 do
p.Transparency = i
wait()
end

for i = 1,0,0.1 do
p.Transparency = i
wait()
end

end
end) -- Same as coroutine.create

p2 = p:Clone()
p2.Parent = sword
p2.Size = Vector3.new(1,6,1)
p2.Touched:connect(function(hit) T.D(hit,5) end)

p3 = T.P(1,3,1,"Black",.5,false,false)
T.FM(p3,"spike",1,3,1)
T.W(p3,p2,0,-4,0,math.pi,0,0)
Instance.new("Sparkles",p)
w=Instance.new("Weld",p)
w.Part0 = p
w.Part1 = p2
w.C1 = cfn(0,4,0)
end)
if c == true then
print("Sucsess loading")
else
print(d)
end

bg = nil
bp = nil
---------ANIMATIONS--------------



function BBGui(Text,Adornee,Par)
b=Instance.new("BillboardGui",Par)
b.Adornee = Adornee
f=Instance.new("Frame",b)
f.BackgroundTransparency = 1
t=Instance.new("TextLabel",b)
t.Text = Text
t.TextColor3 = Color3.new(1,0,1)
return b
end




anims = {}

anims.Twirl = function()
rw.C0 = rw.C0 * ang(-math.pi/2,0,0)
hw.C0 = hw.C0 * ang(math.pi/2,0,0)

bg = T.BG(head)
for i = 1,360*5,20 do
bg.cframe = bg.cframe * ang(0,math.rad(20),0) --rw.C0 = rw.C0 * ang(i)
local ball = T.P(2,2,2,"Lime green",.5,false,false)
ball.Position = (p3.CFrame * cfn(0,p3.Size.y/2,0)).p
bv = Instance.new("BodyVelocity",ball)
bv.maxForce = Vector3.new()*math.huge
bv.velocity = cfn(torso.Position,p3.Position).lookVector * 300
delay(.1,function()
local pos = cfn(ball.Position)
T.C(function()
local pa = T.P(1,1,1,"White",0,false,true)
pa.CFrame = pos
msh = T.FM(pa,"sphere",1,1,1)

for i = 1,30 do
wait()
pa.Size = v3n(i,i,i)
pa.CFrame = pos
pa.Transparency = i/30
end
pa:Remove()
end)
ball:Remove()
end)
wait()
end
bg:Remove()
rw.C0 = rw.C0 * ang(math.pi/2,0,0)
hw.C0 = hw.C0 * ang(-math.pi/2,0,0)
end

anims.Fire = function()
local f=Instance.new("Fire",p3)
dmg = 40
delay(20,function()
f:remove()
dmg = 20
end)
end

anims.ShieldUp = function()
for i = 1,50,20 do
wait()
lw.C0 = lw.C0 * ang(0,0,M.D(-20))
end
for i = 1,50,20 do
wait()
lw.C0 = lw.C0 * ang(M.D(20),0,0)
end
end

anims.ShieldDown = function()
for i = 1,50,20 do
wait()
lw.C0 = lw.C0 * ang(M.D(-20),0,0)
end
for i = 1,50,20 do
wait()
lw.C0 = lw.C0 * ang(0,0,M.D(20))
end

end


anims.Equip = function()
for i = 1,220,20 do
wait()
rw.C0 = rw.C0 * ang(0,0,M.D(20))
end
hw.Part1,hw.C1 = Bo.Arms.R,holdpos
for i = 1,220-90,20 do
wait()
rw.C0 = rw.C0 * ang(0,0,M.D(-20))
end
rw.C0 = normpos*ang(0,0,math.pi/2)
end

anims.UnEquip = function()
for i = 1,180,20 do
wait()
rw.C0 = rw.C0 * ang(0,0,M.D(20))
end
hw.Part1,hw.C1 = torso,torsopos
for i = 1,220,20 do
wait()
rw.C0 = rw.C0 * ang(0,0,M.D(-20))
end
end

anims.Equip2 = function()
for i = 1,90,5 do
wait()
rw.C0 = rw.C0 * ang(0,0,M.D(5))
end rw.C0 = normpos * ang(0,0,M.D(90)) end

anims.UnEquip2 = function()
for i = 90,0,-20 do
wait()
rw.C0 = rw.C0 * ang(0,0,M.D(-20))
end
end

anims.Slash = function()
for i = 1,90,20 do
rw.C0 = rw.C0 * ang(0,M.D(20),0)
wait()
end

for i = 90,1,-20 do
rw.C0 = rw.C0 * ang(0,0,M.D(-20))
wait()
end
for i = 90,1,-20 do
rw.C0 = rw.C0 * ang(0,0,M.D(20))
wait()
end

for i = 1,90,20 do
rw.C0 = rw.C0 * ang(0,M.D(-20),0)
wait()
end
end

anims.Fist = function(mouse)
pa = T.P(1,1,1,"Black",.5,false,false)

--[[p=Instance.new("Part",Workspace)
p.Anchored = true --flying fist? ya]]--

T.FM(p,"fist",1,1,1)
T.W(p,Bo.Arms.L,0,-2,0,0,0,0)

end

anims.dragon = function(mouse)
local endpos = mouse.hit.p
for i = 1,90,20 do
lw.C0 = lw.C0 * ang(0,0,M.D(-20))
end

for i = 1,50,10 do
lw.C0 = lw.C0 * ang(M.D(-10),0,0)
end

local ray = T.P(5,1,5,"Bright red",.5,false,true)
startpos = sp.CFrame * cfn(0,0,-1)
T.FM(ray,"cylinder",1,1,1)

ray.CFrame = startpos



mag = (startpos.p-endpos).magnitude

local head = T.P(1,1,1,"Bright red",.5,false,true)
T.FM(head,"dragon",4,4,4)

for i = 1,mag do
wait()
startpos = sp.CFrame * cfn(0,0,-1)
ray.Size = v3n(5,i,5)
ray.CFrame = (cfn(startpos.p,endpos)*cfn(0,0,-ray.Size.y/2))*ang(math.pi/2,0,0)
head.CFrame = ray.CFrame * cfn(0,-ray.Size.y/2,0) * ang(-math.pi/2,0,0)
end

for i = 1,50,10 do
lw.C0 = lw.C0 * ang(M.D(10),0,0)
end

for i = 1,90,20 do
lw.C0 = lw.C0 * ang(0,0,M.D(20))
end

ray:Remove() head:Remove()
end


swirling = false
anims.Swirl = function(mouse)
if swirling == false and mouse.Target ~= nil then
swirling = true
eff = function(a)
T.C(function()
wait()
local p = T.P(1,1,1,"Black",.5,false,true)
p.CFrame = a
local msh = T.FM(p,"blast",1,1,1)
for i = 1,30 do
wait()
msh.Scale = Vector3.new(i,i/2,i)
p.Transparency = i/30
end
p:Remove()
end)
end

rw.C0 = normpos * ang(0,0,math.pi)
hw.C0 = hw.C0 * ang(math.pi/2,0,0)
bg = T.BG(torso)
local original = bg.cframe
--T.C(function() while swirling do wait() bg.cframe = bg.cframe * ang(0,M.D(100),0) end end)
eff(torso.CFrame *cfn(0,-3,0))
bp = T.BP(torso,torso.Position + v3n(0,70,0))
while (bp.position-torso.Position).magnitude > 3 do wait() end --- waits

if mouse.Target ~= nil then
bg.cframe = cfn(torso.Position,mouse.hit.p) * ang(-math.pi/2,0,0)
bp.position = (mouse.hit.p + v3n(0,3,0))

eff(bg.cframe * ang(math.pi,0,0))

while (bp.position-torso.Position).magnitude > 5 do wait() end --- waits

bg.cframe = original  bp:Remove()
game:GetService("Debris"):AddItem(bg,.5)

rw.C0 = normpos * ang(0,0,math.pi/2)
hw.C0 = hw.C0 * ang(-math.pi/2,0,0)
swirling = false
end

else
bp:Remove() bg:Remove() rw.C0 = normpos * ang(0,0,math.pi/2)
hw.C0 = hw.C0 * ang(-math.pi/2,0,0)

end
end

radi = 5
atk = {"Twirl","Fire","Swirl","Dragon","Slash","Fist","ShieldUp"}


function createhumanoid(name,part,parent)
mo = Instance.new("Model",parent)
mo.Name = name
part.Name = "Head"
part.Parent = mo
tor = T.P(.1,.1,.1,"White",1,false,false)
tor.Name = "Torso"
tor.Parent = mo
T.W(tor,part,0,0,0,0,0,0)
hum = Instance.new("Humanoid",mo)
hum.Health = 0
hum.MaxHealth = 0
end
---------------------------------
tab = nil

scrbox = nil
current = 1

function scroll(direction)
if scrbox ~= nil then
current = current+(direction)

if current > #atk then current = 1
elseif current < 1 then current = #atk
end

scrbox.Adornee = tab:GetChildren()[current]
end

end


ply.Chatted:connect(function(msg)

if msg == "#accept" and mod ~= nil then
anims[atk[current]]()
end

end)

function showtablets()
if tab == nil then

tab = Instance.new("Model",sword)

for i,v in pairs(atk) do
tp = T.P(2,1.5,2,"Black",.5,false,false)
tp.Parent = tab
createhumanoid(v,tp,tab)

local bp = T.BP(tp,torso.Position)

T.C(function()
while true do
wait()
o = 360/#atk*i
bp.position = torso.Position + v3n(M.Cos(M.D(o))*radi,0,M.Sin(M.D(o))*radi)
end
end)

end

scrbox = Instance.new("SelectionBox",Workspace)
scrbox.Adornee = tab:GetChildren()[current]

elseif tab ~= nil then tab:Remove() tab = nil
end
end

-------------------------------------

hopper = Instance.new("HopperBin",ply.Backpack)
hopper.Name = "Crystal Lance" 

hopper.Deselected:connect(function()
anims.UnEquip()
lock(0) track = false
end)


hopper.Selected:connect(function(mouse)
lock(1)
anims.Equip()
track = true
T.Track(p2,.3,.5,1)

mouse.KeyUp:connect(function(key)
if key == string.char(48) then anims.ShieldDown()
end end)

mouse.KeyDown:connect(function(key)
k=key:lower()
if k == "f" then anims.Slash()
elseif k == "q" then anims.UnEquip2() wait(1) anims.Equip2()
elseif k == "t" then anims.Twirl()
elseif key == "r" then anims.Swirl(mouse)
elseif key == "k" then anims.Fire()
elseif key == string.char(48) then anims.ShieldUp()
elseif key == "j" then anims.Fist(mouse)
elseif key == "g" then anims.dragon(mouse)

elseif key == "x" then showtablets()
elseif key == "z" then scroll(-1) elseif key == "c" then scroll(1)
elseif key == "v" then if scrbox ~= nil then anims[scrbox.Adornee.Name](mouse) end

end
end)

end)
end}

 
 

module[1] = {"Cyan Slicer",function()
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
trispeed=1
pathtrans=.7
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
cloak=false
lightcolor='Bright blue'

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

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=it("Part")
fp.formFactor=formfactor 
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false 
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
fp.Position=Torso.Position 
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh) 
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
if meshid~="nil" then
mesh.MeshId="http://www.roblox.com/asset/?id="..meshid
end
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end
 
local Color1=Torso.BrickColor

local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")

function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
end
end
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

function SkullEffect(brickcolor,cframe,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(x1,y1,z1))
--http://www.roblox.com/asset/?id=4770560
game:GetService("Debris"):AddItem(prt,2)
CF=prt.CFrame
coroutine.resume(coroutine.create(function(Part,Mesh,TehCF) 
for i=0,1,0.2 do
wait()
Part.CFrame=CF*cf(0,0,-0.4)
end
for i=0,1,delay do
wait()
--Part.CFrame=CF*cf((math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5)
Mesh.Scale=Mesh.Scale
end
for i=0,1,0.1 do
wait()
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,CF)
end
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicBlock2(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,cframe)
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cframe
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicBlock3(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,euler(0,0,0)*cf(0,0,0))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(i*20,0,0)
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicCircle2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
local prt2=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt2.Anchored=true
prt2.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2=mesh("SpecialMesh",prt2,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
game:GetService("Debris"):AddItem(prt2,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.5,0)
end
Part.Parent=nil
end),prt2,msh2)
end
for i=0,1,delay*2 do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=vt((x1+x3)-(x1+x3)*i,(y1+y3)-(y1+y3)*i,(z1+z3)-(z1+z3)*i)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicRing(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(x2,y2,z2)
--"http://www.roblox.com/asset/?id=168892465"
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.03 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()/10
rand1=math.random()/10
for i=0,1,rand1 do
wait()
CF=CF*cf(0,math.random()/2,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt,CF,Numbb,randnumb)
end
 
function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(0,0.7,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*cf(0,y3/2,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function StravEffect(brickcolor,cframe,x,y,z,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x,y,z)
msh=mesh("SpecialMesh",prt,"FileMesh","rbxassetid://168892363",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,ex,why,zee) 
local num=math.random()
local num2=math.random(-3,2)+math.random()
local numm=0
for i=0,1,delay*2 do
swait()
Part.CFrame=cframe*euler(0,numm*num*10,0)*cf(ex,why,zee)*cf(-i*10,num2,0)
Part.Transparency=i
numm=numm+0.01
end
Part.Parent=nil
Mesh.Parent=nil
end),prt,msh,x,y,z)
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
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Toothpaste")
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
w2.BrickColor = BrickColor.new("Toothpaste")
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

user=game.Players.localPlayer
	char=user.Character
	mouse=user:GetMouse()
	m=Instance.new('Model',char)	
	

local Handle  = Instance.new("Part", m)
			Handle:BreakJoints()
			Handle.TopSurface = "Smooth"
			Handle.Material = "SmoothPlastic"
			Handle.Name = 'Handle'
			Handle.Transparency = 0			Handle.BottomSurface = "Smooth"
			Handle.FormFactor = "Custom" Handle.CanCollide = false
			Handle.BrickColor = BrickColor.new("Cyan")
			Handle.Size = Vector3.new(0.334079981, 0.501120031, 0.334079981)
			    local Handleweld = Instance.new("ManualWeld")
   Handleweld.Part0 = char["Right Arm"]
   Handleweld.Part1 = Handle  Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Handleweld.C1 = CFrame.new(1.06344354, -0.683923721, -0.0314267874, 1.04312953e-007, 0.999990165, -2.05635988e-005, 2.95754148e-007, -2.0653004e-005, -0.999999523, -0.999991417, 1.04306309e-007, -2.95758809e-007)
    Handleweld.Parent = char["Right Arm"]
		
					local HandleMesh = Instance.new("CylinderMesh",Handle)
				HandleMesh.Name = "Mesh"
				HandleMesh.Offset = Vector3.new(0, 0, 0)
				HandleMesh.Scale = Vector3.new(1, 1, 1)
				
local HitboxA  = Instance.new("Part", m)
			HitboxA:BreakJoints()
			HitboxA.TopSurface = "Smooth"
			HitboxA.Material = "SmoothPlastic"
			HitboxA.Name = 'HitboxA'
			HitboxA.Transparency = 1			HitboxA.BottomSurface = "Smooth"
			HitboxA.FormFactor = "Custom" HitboxA.CanCollide = false
			HitboxA.BrickColor = BrickColor.new("Cyan")
			HitboxA.Size = Vector3.new(3.4396801, 1.20224023, 0.334079981)
			    local HitboxAweld = Instance.new("ManualWeld")
   HitboxAweld.Part0 =  Handle   HitboxAweld.Part1 = HitboxA  HitboxAweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   HitboxAweld.C1 = CFrame.new(1.50702608, -3.10081816, 0, 0.965908945, 0.258811414, 1.77299796e-007, -0.258806854, 0.965926707, 2.58684196e-007, -1.0430935e-007, -2.95752557e-007, 0.999982834)
    HitboxAweld.Parent = HitboxA		
local HitboxB  = Instance.new("Part", m)
			HitboxB:BreakJoints()
			HitboxB.TopSurface = "Smooth"
			HitboxB.Material = "SmoothPlastic"
			HitboxB.Name = 'HitboxB'
			HitboxB.Transparency = 1			HitboxB.BottomSurface = "Smooth"
			HitboxB.FormFactor = "Custom" HitboxB.CanCollide = false
			HitboxB.BrickColor = BrickColor.new("Cyan")
			HitboxB.Size = Vector3.new(2.83968019, 1.0352, 0.334079981)
			    local HitboxBweld = Instance.new("ManualWeld")
   HitboxBweld.Part0 =  Handle   HitboxBweld.Part1 = HitboxB  HitboxBweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   HitboxBweld.C1 = CFrame.new(1.07453465, -2.28646421, 0, 0.86600858, 0.499999404, 2.38211669e-007, -0.499990284, 0.866024554, 2.0398015e-007, -1.04308356e-007, -2.95752812e-007, 0.999982834)
    HitboxBweld.Parent = HitboxB		
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.334079981, 0.3340801, 0.334079981)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.23977661e-005, 1.25278187, 1.63912773e-005, 0.999980569, -1.04117134e-007, -4.52429327e-013, -7.43148121e-008, 0.999999046, 5.37170308e-012, -8.81463305e-013, 4.40536496e-012, 0.999982834)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.334079981, 0.288000017, 0.334079981)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.34706497e-005, 1.00223923, 1.63316727e-005, 0.999980569, -1.04117134e-007, -4.52429327e-013, -7.43148121e-008, 0.999999046, 5.37170308e-012, -8.81463305e-013, 4.40536496e-012, 0.999982834)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.579999983, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.334079981, 0.288000017, 0.334079981)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.07288361e-006, -1.50334358, 3.57627869e-006, 0.999980569, -1.04117134e-007, -1.06349608e-012, -7.43148121e-008, 0.999999046, 5.00222086e-012, -2.70388746e-013, 4.77484718e-012, 0.999982834)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.579999983, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.33408004, 0.334080011, 0.668160021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-1.95095348, -1.60336494e-005, 0.000169277191, -1.61528787e-005, -0.999998569, -2.90445143e-007, 2.54079708e-007, 2.90436049e-007, -0.999982834, 0.99998045, -1.62718625e-005, 2.54074337e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.334079981, 0.668159902, 0.334079981)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.20401382e-005, 0.584648132, 1.62124634e-005, 0.999980569, -1.04117134e-007, -4.52429327e-013, -7.43148121e-008, 0.999999046, 5.37170308e-012, -8.81463305e-013, 4.40536496e-012, 0.999982834)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.334079981, 0.288000017, 0.334079981)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.08480453e-005, 1.50333977, 1.6450882e-005, 0.999980569, -1.04117134e-007, -4.52429327e-013, -7.43148121e-008, 0.999999046, 5.37170308e-012, -8.81463305e-013, 4.40536496e-012, 0.999982834)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.579999983, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.561254442, 0.734976053, 0.334080011)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-2.20156765, 0.032782197, -0.0089597702, -4.7663525e-007, 0.999999046, -1.00013096e-007, -0.999980569, -2.9821058e-007, 2.23513325e-007, 2.23511464e-007, 1.0002455e-007, 0.999982834)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1.01226246, 1.06845486, 2.35466266)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.728294373, 0.334080011, 0.334080011)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.95102978, -1.37090683e-005, 1.68085098e-005, -4.7663525e-007, 0.999999046, -1.00013096e-007, -0.999980569, -2.9821058e-007, 2.23513325e-007, 2.23511464e-007, 1.0002455e-007, 0.999982834)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.758361638, 0.799520493, 2.35466266)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.728294373, 0.288000017, 0.334080011)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-2.66916037, -0.584644198, 1.51991844e-005, -4.7663525e-007, 0.999999046, -1.00013096e-007, -0.999980569, -2.9821058e-007, 2.23513325e-007, 2.23511464e-007, 1.0002455e-007, 0.999982834)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.334079981, 0.361875683, 2.35466266)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.334079981, 0.3340801, 0.334079981)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.90734863e-006, -1.25279093, 3.69548798e-006, 0.999980569, -1.04117134e-007, -1.06349608e-012, -7.43148121e-008, 0.999999046, 5.00222086e-012, -2.70388746e-013, 4.77484718e-012, 0.999982834)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.33408004, 0.334080011, 0.501120031)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.83740282, -1.55568123e-005, 0.584628224, 1.33917638e-007, -0.999999046, -4.57589522e-012, 2.44464084e-012, -5.20117283e-012, -0.999982834, 0.999980569, -4.45124897e-008, 1.1070771e-012)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.288000017, 0.288000017, 0.334080011)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.9465909, -0.000917434692, -0.00169306993, 1.56724745e-005, 0.999998569, -2.17962452e-007, 0.99998045, -1.57914474e-005, 1.32344239e-005, 1.32343903e-005, -2.18184425e-007, -0.999982834)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = "http://www.roblox.com/asset?id=156292343"
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.962150395, 0.930412948, 1.67040002)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.728294373, 0.288000017, 0.334080011)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-1.83405781, -0.584644675, 1.55568123e-005, -4.7663525e-007, 0.999999046, -1.00013096e-007, -0.999980569, -2.9821058e-007, 2.23513325e-007, 2.23511464e-007, 1.0002455e-007, 0.999982834)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.337420791, 0.351853222, 2.35466266)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.33408004, 0.334080011, 0.501120031)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(2.67248297, -1.53183937e-005, 0.584639192, 1.04117134e-007, -0.999999046, -4.49063009e-012, 2.43042825e-012, -5.28643795e-012, -0.999982834, 0.999980569, -7.43148121e-008, 1.09115711e-012)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.334079981, 0.288000017, 0.334079981)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(4.76837158e-007, -1.00223207, 3.75509262e-006, 0.999980569, -1.04117134e-007, -1.06349608e-012, -7.43148121e-008, 0.999999046, 5.00222086e-012, -2.70388746e-013, 4.77484718e-012, 0.999982834)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.579999983, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.561254442, 0.734976053, 0.334080011)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-2.20156813, 0.032782197, -0.00895911455, -4.76638888e-007, 0.999999046, 1.95740711e-007, -0.999980569, -2.98214218e-007, 1.19206135e-007, 1.19204614e-007, -1.9573406e-007, 0.999982834)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1.08408964, 1.12190771, 2.35466266)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.33408004, 0.334080011, 0.835200012)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(2.18819427, 0.00895947218, -0.0411309004, 1.19018296e-007, -0.999999046, 5.30886268e-009, 1.49770614e-007, -5.31875344e-009, -0.999982834, 0.999980569, -5.94136509e-008, 1.49769633e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.334079981, 0.668159902, 0.334079981)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.90734863e-006, -0.584632397, 3.87430191e-006, 0.999980569, -1.04117134e-007, -1.06349608e-012, -7.43148121e-008, 0.999999046, 5.00222086e-012, -2.70388746e-013, 4.77484718e-012, 0.999982834)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Wedge  = Instance.new("WedgePart", m)
			Wedge:BreakJoints()
			Wedge.TopSurface = "Smooth"
			Wedge.Material = "SmoothPlastic"
			Wedge.Name = 'Wedge'
			Wedge.Transparency = 0			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Cyan")
			Wedge.Size = Vector3.new(0.200000003, 0.400000036, 1.60000002)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(0.045333147, -1.62391663, 1.84441566, 1.71177078e-007, 2.23686314e-007, -0.999991417, 0.258836389, 0.965919793, 2.60373326e-007, 0.965910971, -0.258838862, 1.07443462e-007)
    Wedgeweld.Parent = Wedge		
local Wedge  = Instance.new("WedgePart", m)
			Wedge:BreakJoints()
			Wedge.TopSurface = "Smooth"
			Wedge.Material = "SmoothPlastic"
			Wedge.Name = 'Wedge'
			Wedge.Transparency = 0			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Cyan")
			Wedge.Size = Vector3.new(0.200000003, 0.400000036, 3)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(0.0453329086, -2.09136772, 1.37955189, 5.5285831e-008, 2.3391857e-007, -0.999991417, -0.499976844, 0.866034687, 1.74942656e-007, 0.86602664, 0.499981403, 1.6483537e-007)
    Wedgeweld.Parent = Wedge		
local Wedge  = Instance.new("WedgePart", m)
			Wedge:BreakJoints()
			Wedge.TopSurface = "Smooth"
			Wedge.Material = "SmoothPlastic"
			Wedge.Name = 'Wedge'
			Wedge.Transparency = 0			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Cyan")
			Wedge.Size = Vector3.new(0.200000003, 0.400000036, 1.79999995)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(0.0453329682, -1.76543856, 2.05599022, 5.80497606e-008, 2.37628683e-007, -0.999991417, 2.0653004e-005, 0.999999404, 2.37632833e-007, 0.999990165, -2.07424109e-005, 5.80442752e-008)
    Wedgeweld.Parent = Wedge		
local Wedge  = Instance.new("WedgePart", m)
			Wedge:BreakJoints()
			Wedge.TopSurface = "Smooth"
			Wedge.Material = "SmoothPlastic"
			Wedge.Name = 'Wedge'
			Wedge.Transparency = 0			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Cyan")
			Wedge.Size = Vector3.new(0.200000003, 0.330000043, 1.39999998)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(0.0453342199, -1.88805628, 2.71651793, 4.90638229e-007, 5.16344301e-008, -0.999991417, 0.56411463, 0.825692296, 3.19416785e-007, 0.825684667, -0.564119875, 3.7598582e-007)
    Wedgeweld.Parent = Wedge		
local Wedge  = Instance.new("WedgePart", m)
			Wedge:BreakJoints()
			Wedge.TopSurface = "Smooth"
			Wedge.Material = "SmoothPlastic"
			Wedge.Name = 'Wedge'
			Wedge.Transparency = 0			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Cyan")
			Wedge.Size = Vector3.new(0.200000003, 0.400000036, 1.39999998)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(0.0453327298, -2.39616013, 2.46780443, 2.40800482e-008, 3.26642265e-007, -0.999991417, 0.258836448, 0.965919852, 3.2174529e-007, 0.965911031, -0.258838922, -6.12895263e-008)
    Wedgeweld.Parent = Wedge		
local Wedge  = Instance.new("WedgePart", m)
			Wedge:BreakJoints()
			Wedge.TopSurface = "Smooth"
			Wedge.Material = "SmoothPlastic"
			Wedge.Name = 'Wedge'
			Wedge.Transparency = 0			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Cyan")
			Wedge.Size = Vector3.new(0.200000003, 0.350000024, 3)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(0.0453326702, -2.91864204, 1.59399581, 2.04500665e-008, 3.23773946e-007, -0.999991417, -0.258796394, 0.965929985, 3.07453035e-007, 0.965921044, 0.258798689, 1.03545538e-007)
    Wedgeweld.Parent = Wedge		


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
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Navy blue"))
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
 
function UnCloak()
so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
Face.Parent=Head 
cloaked=false
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency-0.1
                end
                v.Transparency=0
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.1 do
                wait()
                derp.Transparency=derp.Transparency-0.1
                end
                derp.Transparency=0
                end),hatp)
                end
        end
        for _,v in pairs(blocks) do
                if v.className=="Part" and v.Name~="Hitbox" and v.Name~='tip' then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency-0.1
                end
                v.Transparency=0
                end))
                v.Transparency=0
                end
        end
end
meshids = {["penguin"] = 15853464, ["ring"] = 3270017,
["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["crossbow"] = 15886761,
["cloud"] = 1095708,["mjolnir"] = 1279013,["diamond"] = 9756362, ["hand"] = 37241605,
["fist"] = 65322375,["skull"] = 36869983,["totem"] = 35624068,["spikeb"] = 9982590,["dragon"] = 58430372,["fish"] = 31221717, ["coffee"] = 15929962,["spiral"] = 1051557,
["ramen"] = 19380188,["lightning"] = 72583597,["bullet"]=2697549}---some meshids
textureids = {["cone"] = 1082804,["rainbow"] = 28488599,["fish"] = 31221733, ["coffee"] = 24181455,["monster"] = 33366441,["ramen"] = 19380153}
soundids = {["bell"] = 20005706,["flintlock"] = 13510352,["falcon"] = 1387390,['sensa'] = 4700455,
['midas'] = 17385513;
['spark'] = 10756118;
['boom'] = 10730819;
['plank'] = 10548112;
['harmonica1'] = 33069371;
['harmonica2'] = 33069412;
['thump'] = 10730819;
}
 
cfn,ang,v3n,ud2n,V2 = CFrame.new,CFrame.Angles,Vector3.new,UDim2.new,Vector2.new
 
M = {["R"] = function(a,b) return math.random(a,b) end,
["Cos"] = function(a) return math.cos(a) end,
["Sin"] = function(a) return math.sin(a) end,
["D"] = function(a) return math.rad(a) end
}
 
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
 
function damage(hit,amount,delay)
for i,v in pairs(hit:children()) do
if v:IsA("Humanoid") and v.Parent ~= char then
if delay then
local found = v:FindFirstChild('tag')
if not found then
local a = Instance.new("StringValue",v)
a.Name = 'tag ur it'
game:service'Debris':AddItem(a,delay)
v.Health = v.Health - amount
end
else v.Health = v.Health - amount
end
end
end
end
 
function lightning(startpos,endpos,times,offse,livetime,col,dmg)
local curpos = startpos
for i = 1,times do
local mag = (startpos-endpos).magnitude
local offs = {-offse,offse}
local offset = v3n(offs[M.R(1,2)],offs[M.R(1,2)],offs[M.R(1,2)])
laz = T.P(.1,.1,mag/times,col,0,false,true,m)
laz.Parent=m
laz.Transparency=.5
if dmg then laz.Touched:connect(function(hit) dmgstart(laz,5) end) end
local apos = (cfn(curpos,endpos)*cfn(0,0,-mag/times)).p+offset
if times == i then
local mag2 = (curpos-endpos).magnitude
laz.Size = v3n(.1,.1,mag2)
laz.CFrame = cfn(curpos,endpos)*cfn(0,0,-mag2/2)
else
laz.CFrame = cfn(curpos,apos)*cfn(0,0,-mag/times/2)
end
curpos = laz.CFrame*cfn(0,0,-mag/times/2).p game:service'Debris':AddItem(laz,livetime)
pcall(function()
dmgstop()
end)
end
end

function attackone()
	if attack==false then
		attack=true
		for i=0,1,0.1 do
			swait()
			RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-90)),.5)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(-5),math.rad(90)),.5)
			RW.C0=clerp(RW.C0,cf(.5,0.5,-1)*angles(math.rad(-90),math.rad(180),math.rad(90))*angles(math.rad(50),math.rad(0),math.rad(0)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(50),math.rad(-20),math.rad(-30)),.3)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
		end
		for i=0,1,0.3 do
			swait()
			RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-90)),.5)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(-5),math.rad(90)),.5)
			RW.C0=clerp(RW.C0,cf(.5,0.5,-1)*angles(math.rad(-90),math.rad(-300),math.rad(90))*angles(math.rad(50),math.rad(0),math.rad(0)),.3)
			--LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(50),math.rad(-20),math.rad(130)),.3)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
			end
		attack=false
	end
end

mouse.Button1Down:connect(function()
	if attack==false then
	attackone()
	end
end)
--[[mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='q' then
		if attack==false then
			Bash()
		end
		elseif k=='e' then
		if attack==false then
			Impulse()
	end
	end
end)]]--

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
Neck.C0=clerp(Neck.C0,necko*euler(-0.2,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.5,0,0.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.5,0,-0.5),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.3)*euler(-0.5,1.57,0)*euler(-.2,0,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*euler(-0.5,-1.57,0)*euler(-.2,0,0),.2)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(0.4,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0.3,0,0.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0.3,0,-0.2),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.4,1.57,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.2,-1.57,0),.2)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(10),math.rad(0),math.rad(-45)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(-5),math.rad(45)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-35),math.rad(-25),math.rad(15)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(35),math.rad(-20),math.rad(-30)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(30),math.rad(-90),math.rad(0))*angles(math.rad(-20),math.rad(20),math.rad(10)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(-15),math.rad(0),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(-15),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
	local idleanim=0
Anim="Walk"
if attack==false then
change=3
--[[RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(35),math.rad(0),math.rad(15*math.cos(sine/10))),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-135*math.cos(sine/9)),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(135*math.cos(sine/9)),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)]]--
RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(30),math.rad(0),math.rad(-45)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(-20),math.rad(45)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-50),math.rad(-40),math.rad(15)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(50),math.rad(-20),math.rad(-30)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(30),math.rad(-90),math.rad(0))*angles(math.rad(-20),math.rad(20),math.rad(10)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-.5,-.7)*angles(math.rad(-75),math.rad(0),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(45),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-.5,-.7)*angles(math.rad(-75),math.rad(0),math.rad(0)),.3)
end
end
end
end
--156434034
end}
module[2] = {"DSword",function()

local player=game.Players.LocalPlayer
local char=player.Character
repeat wait() until player and char
local torso=char.Torso
local head=char.Head
local human=char.Humanoid
local hat
for i, v in pairs(char:children()) do if v:isA("Hat") then hat=v end end
local arm={Left=char["Left Arm"], Right=char["Right Arm"]}
local leg={Left=char["Left Leg"], Right=char["Right Leg"]}
local c=function(f) coroutine.resume(coroutine.create(f)) end
pcall(function() torso.roblox:clone().Parent=fake.Torso torso.roblox:remove() head.face:remove() for i, v in pairs(char:children()) do if v.ClassName=="Hat" then v:remove() end v.Transparency=1 end end)
local add={
	Part=function(par, a, c, col, t, s, cf)
		local p=Instance.new("Part", par) p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or CFrame.new()
		return p
	end,
	Weld=function(par, p1, cf)
		local w=Instance.new("Weld", par) w.Part0=w.Parent or par w.Part1=p1 w.C1=cf or CFrame.new()
		return w
	end,
	Mesh=function(ins, par, s, of, t)
		local m=Instance.new(ins, par) m.Scale=s or Vector3.new() m.Offset=of or Vector3.new() pcall(function() m.MeshType=t end)
		return m
	end
}
local scriptname="DSword"
pcall(function() char[scriptname]:remove() end)
local model=Instance.new("Model", char) model.Name=scriptname
local bin=Instance.new("HopperBin", player.Backpack) bin.Name=model.Name
local skincolor="Really black"
local fake={}
local weld={}
local mesh={}
fake.arm={}
fake.leg={}
fake.torso=nil
fake.Mesh={} fake.Weld={}
--====--
weld.arm={}
weld.leg={}
weld.torso=nil
--====--
mesh.arm={}
mesh.leg={}
--==FAKE, MESH, WELDZ==--
fake.arm.left=add.Part(model, false, false, skincolor, 0, Vector3.new(1, 1, 1), nil)
fake.arm.right=add.Part(model, false, false, skincolor, 0, Vector3.new(1, 1, 1), nil)
fake.leg.left=add.Part(model, false, false, skincolor, 0, Vector3.new(1, 1, 1), nil)
fake.leg.right=add.Part(model, false, false, skincolor, 0, Vector3.new(1, 1, 1), nil)
fake.torso=add.Part(model, false, false, skincolor, 0, Vector3.new(2, 2, 1), nil)
fake.head=head:clone() fake.head.Parent=model fake.head.BrickColor=BrickColor.new(skincolor) fake.head.Transparency=0
-------------------------
mesh.arm.left=add.Mesh("BlockMesh", fake.arm.left, Vector3.new(1, 2, 1), Vector3.new(0, -.5, 0), nil)
mesh.arm.right=add.Mesh("BlockMesh", fake.arm.right, Vector3.new(1, 2, 1), Vector3.new(0, -.5, 0), nil)
mesh.leg.left=add.Mesh("BlockMesh", fake.leg.left, Vector3.new(1, 2, 1), Vector3.new(0, -.5, 0), nil)
mesh.leg.right=add.Mesh("BlockMesh", fake.leg.right, Vector3.new(1, 2, 1), Vector3.new(0, -.5, 0), nil)
-------------------------
weld.arm.left=add.Weld(fake.arm.left, fake.torso, CFrame.new(-1.5, .5, 0))
weld.arm.right=add.Weld(fake.arm.right, fake.torso, CFrame.new(1.5, .5, 0))
weld.leg.left=add.Weld(fake.leg.left, fake.torso, CFrame.new(-.5, -1.5, 0))
weld.leg.right=add.Weld(fake.leg.right, fake.torso, CFrame.new(.5, -1.5, 0))
weld.torso=add.Weld(fake.torso, torso, nil)
weld.head=add.Weld(fake.head, fake.torso, CFrame.new(0, 1.5, 0))
pcall(function() torso.roblox:remove() head.face:remove() for i, v in pairs(char:children()) do if v.ClassName=="Hat" then v:remove() end v.Transparency=1 end end)
--==SIGN==--
fake.Rot=add.Part(model, false, false, "Really black", 0, Vector3.new(1, 1, 1), nil)
fake.Mesh.Rot=add.Mesh("CylinderMesh", fake.Rot, Vector3.new(1.5, .5, 1.5), nil, nil)
fake.Weld.Rot=add.Weld(fake.Rot, fake.torso, CFrame.new(0, 0, -.3)*CFrame.Angles(math.rad(90), 0, 0))
fake.L=add.Part(model, false, false, "Bright yellow", 0, Vector3.new(1, 1, 1), nil)
fake.Mesh.L=add.Mesh("BlockMesh", fake.L, Vector3.new(.25, .5, 1), nil, nil)
fake.Weld.L=add.Weld(fake.L, fake.Rot, CFrame.new(.25, -0.05, 0))
fake.L2=add.Part(model, false, false, "Bright yellow", 0, Vector3.new(1, 1, 1), nil)
fake.Mesh.L2=add.Mesh("BlockMesh", fake.L2, Vector3.new(.75, .5, .25), nil, nil)
fake.Weld.L2=add.Weld(fake.L2, fake.Rot, CFrame.new(0, -0.05, .4))
c(function() for i=0, math.huge, .1 do wait() fake.Weld.Rot.C0=CFrame.Angles(0, i, 0) end end)
--==MANA==--
local gui=Instance.new("ScreenGui", player.PlayerGui)
local label=Instance.new("TextLabel", gui)
label.Text="--==100%==--"
label.Position=UDim2.new(0, 0, 0, 200)
label.Size=UDim2.new(0, 200, 0, 20)
label.BorderColor=BrickColor.Black() label.BackgroundColor=BrickColor.White()
label.TextColor=BrickColor.Black()
local charge=label:clone() charge.Parent=label
charge.Position=UDim2.new()
charge.Text=""
charge.Size=UDim2.new(1, 0, 1, 0)
charge.BorderColor=BrickColor.Black() charge.BackgroundColor=BrickColor.Yellow() charge.Transparency=.5
----------------------------------------------------------------------------------------------
local colorA="Cyan"
local colorB="Really black"
local bladecolor="Medium stone grey"
local mana=100
c(function()
	while true do wait()
		label.Text="--=="..mana.."%==--"
		charge.Size=UDim2.new(mana/100, 0, 1, 0)
	end
end)
--bag--
local bag=add.Part(model, false, false, colorA, 0, Vector3.new(.5, 4, .2), nil)
local bagweld=add.Weld(bag, fake.torso, CFrame.new(0, 0, .6)*CFrame.Angles(0, 0, -math.rad(45)))
local tip=add.Part(model, false, false, colorA, 0, Vector3.new(.2, 1, .5), nil)
local tipmesh=add.Mesh("SpecialMesh", tip, Vector3.new(1, 1, 1), nil, "Wedge")
local tipweld=add.Weld(tip, bag, CFrame.new(0, -2.5, 0)*CFrame.Angles(-math.rad(90), -math.rad(90), math.rad(90)))
local a=add.Part(model, false, false, colorB, 0, Vector3.new(.55, .5, .25), nil)
local aweld=add.Weld(a, bag, nil)
local b=add.Part(model, false, false, colorB, 0, Vector3.new(.55, .5, .25), nil)
local bweld=add.Weld(b, bag, CFrame.new(0, -1, 0))
local c2=add.Part(model, false, false, colorB, 0, Vector3.new(.55, .5, .25), nil)
local cweld=add.Weld(c2, bag, CFrame.new(0, 1, 0))
local d=add.Part(model, false, false, colorB, 0, Vector3.new(.25, 3, .25), nil)
local dweld=add.Weld(d, bag, nil)
local tipe=add.Part(model, false, false, colorB, 0, Vector3.new(.25, .5, .25), nil)
local tipmeshe=add.Mesh("SpecialMesh", tipe, Vector3.new(1, 1, 1), nil, "Wedge")
local tipwelde=add.Weld(tipe, tip, CFrame.new(0, -.2, 0))
--sword--
local smodel=Instance.new("Model", model) smodel.Name="DSwordB"
local handle=add.Part(smodel, false, false, colorB, 0, Vector3.new(.2, 2, .2), nil)
local handleweld=add.Weld(handle, bag, CFrame.new(0, 3, 0)*CFrame.Angles(0, -math.rad(90), math.rad(180)))
local handlemesh=add.Mesh("CylinderMesh", handle, Vector3.new(1, 1, 1), nil, nil)
local stip=add.Part(smodel, false, false, colorA, 0, Vector3.new(.4, .4, .4), nil)
local stipweld=add.Weld(stip, handle, CFrame.new(0, -1, 0))
local stipmesh=add.Mesh("SpecialMesh", stip, Vector3.new(1, 1, 1), nil, "Sphere")
local handleb=add.Part(smodel, false, false, colorA, 0, Vector3.new(.55, .1, .55), nil)
local handlebmesh=add.Mesh("CylinderMesh", handleb, Vector3.new(1, .8, 1), nil, nil)
local handlebweld=add.Weld(handleb, handle, CFrame.new(0, 1, 0))
local blade=add.Part(smodel, false, false, bladecolor, 0,  Vector3.new(.1, 3, .4), nil) blade.Reflectance=.5
local bladeweld=add.Weld(blade, handleb, CFrame.new(0, 1.5, 0))
local blademesh=add.Mesh("BlockMesh", blade, Vector3.new(.5, 1, 1), nil, nil)
local bladetip=add.Part(smodel, false, false, bladecolor, 0, Vector3.new(.1, 1, .4), nil) bladetip.Reflectance=.5
local bladetipmesh=add.Mesh("SpecialMesh", bladetip, Vector3.new(.5, 1, 1), nil, "Wedge")
local bladetipweld=add.Weld(bladetip, blade, CFrame.new(0, 2, 0))
local a=add.Part(smodel, false, false, colorB, 0, Vector3.new(.1, .25, .4), nil)
local amesh=add.Mesh("BlockMesh", a, Vector3.new(.8, 1, 1.1), nil, nil)
local aweld=add.Weld(a, handleb, CFrame.new(0, .22, 0))
local b=add.Part(smodel, false, false, colorB, 0, Vector3.new(.1, .5, .1), nil)
local bmesh=add.Mesh("BlockMesh", b, Vector3.new(.5, 1, .5), nil, nil)
local bweld=add.Weld(b, a, CFrame.new(0, -.1, .3)*CFrame.Angles(math.rad(135), 0, 0))
local cc=add.Part(smodel, false, false, colorB, 0, Vector3.new(.1, .75, .1), nil)
local cmesh=add.Mesh("BlockMesh", cc, Vector3.new(.5, 1, .5), nil, nil)
local cweld=add.Weld(cc, handleb, CFrame.new(0, -.25, .22)*CFrame.Angles(-math.rad(135), 0, 0))
local d=add.Part(smodel, false, false, colorB, 0,  Vector3.new(.35, 1, .1), nil)
local dweld=add.Weld(d, blade, CFrame.new(0, 0, 0))
local dmesh=add.Mesh("BlockMesh", d, Vector3.new(.6, 2.8, 1), nil, nil)
local tdeb=false
local bdeb=false
local rdeb=false
local deb=false
local tsize=.5
local move=1
local dmg=math.random(5, 10)
local wspeed=32
local hDeb=false
local dmg=math.random(5, 10)
function hit(h)
	local humanoid=h.Parent:findFirstChild("Humanoid")
	if humanoid and h.Parent~=char and hDeb==false then
		hDeb=true
		--c(function()
			local fakeP=add.Part(workspace, true, false, "Bright yellow", 0, Vector3.new(1, 1, 1), CFrame.new(h.CFrame.p, torso.CFrame.p))
			local mesh=add.Mesh("SpecialMesh", fakeP, Vector3.new(1, 1, 1), nil, "File") mesh.MeshId="http://www.roblox.com/asset/?id=3270017"
			c(function()
				for i=0, 1, .05 do
					wait()
					fakeP.Mesh.Scale=fakeP.Mesh.Scale+Vector3.new(i, i, 0)
				end
				fakeP:remove()
			end)
			c(function()
				for i=0, 1, .05 do
					wait()
					fakeP.Transparency=i
				end
			end)
			humanoid.Health=humanoid.Health-dmg
			local fakeM=Instance.new("Model", workspace) fakeM.Name=dmg
			local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
			local fakeP=add.Part(fakeM, false, false, "Bright red", 0, Vector3.new(1, 1, 1), h.CFrame) fakeP.Name="Head"
			local fakeMesh=add.Mesh("CylinderMesh", fakeP, Vector3.new(1, .2, 1), nil, nil)
			local bp=Instance.new("BodyPosition", fakeP) bp.maxForce=Vector3.new(math.huge, math.huge, math.huge) bp.position=h.Position+Vector3.new(0, 4, 0)
			game.Debris:addItem(fakeM, 2)
			pcall(function()h.Parent:findFirstChild("Torso").RotVelocity=Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))end)
			pcall(function()h.Parent:findFirstChild("Torso").Velocity=Vector3.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100))end)
		wait()
		hDeb=false
		--end)
	end
end
for i, v in pairs(smodel:children()) do v.Touched:connect(hit) end
function trail(pos, cf, col)
	c(function()
		local old=(pos.CFrame*cf).p
		while tdeb==true do
			wait()
			local new=(pos.CFrame*cf).p
			local mag=(old-new).magnitude
			local dis=(old+new)/2
			local trail=add.Part(workspace, true, false, col, 0, Vector3.new(tsize, mag, tsize), CFrame.new(dis, new)*CFrame.Angles(math.pi/2, 0, 0))
			local tMesh=add.Mesh("CylinderMesh", trail, Vector3.new(.5, 1, .5), nil, nil)
			old=new
			c(function()
				for i=1, 0, -.2 do
					wait()
					trail.Mesh.Scale=trail.Mesh.Scale*Vector3.new(i, 1, i)
				end
				trail:remove()
			end)
			c(function()
				for i=0, 1, .2 do
					wait()
					trail.Transparency=i
				end
			end)
		end
	end)
end

local actions={
	["Spin"]=function()
		if tdeb==false then tdeb=true
			trail(bladetip, CFrame.new(), bladecolor)
			for i=0, 1, .1 do
				wait()
				weld.arm.left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(0, 0, -math.rad(90)*i)
				weld.arm.right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(0, 0, math.rad(90)*i)
				handleweld.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(0, math.rad(180)-(math.rad(180)*i), math.rad(180))
			end
			c(function()
				while tdeb do wait()
					local trail=add.Part(workspace, true, false, colorA, 0, Vector3.new(1, 1, 1), fake.torso.CFrame*CFrame.Angles(math.random(-45, 45), math.random(-45, 45), math.random(-45, 45)))
					local tMesh=add.Mesh("BlockMesh", trail, Vector3.new(1, 1, 1), nil, nil)
					old=new
					c(function()
						for i=0, 2, .2 do
							wait()
							trail.Mesh.Scale=trail.Mesh.Scale+Vector3.new(i, i, i)
						end
						trail:remove()
					end)
					c(function()
						for i=0, 1, .1 do
							wait()
							trail.Transparency=i
						end
					end)
				end
			end)
			for i=1, 100 do
				wait()
				weld.torso.C1=CFrame.Angles(0, math.rad(45)*i, 0)
			end
			tdeb=false
			for i=1, 0, -.1 do
				wait()
				weld.arm.left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(0, 0, -math.rad(90)*i)
				weld.arm.right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(0, 0, math.rad(90)*i)
				handleweld.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(math.rad(90)-(math.rad(90)*i), math.rad(180), math.rad(180))
			end
		end
	end;
	["ForeSpin"]=function()
		if tdeb==false then tdeb=true
			trail(bladetip, CFrame.new(), bladecolor)
			for i=0, 1, .1 do
				wait()
				weld.arm.left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(180)*i, 0, math.rad(45)*i)
				weld.arm.right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(180)*i, 0, -math.rad(45)*i)
				handleweld.C1=CFrame.new(0, -1.5+(-.5*i), 0)*CFrame.Angles(0, math.rad(180)-(math.rad(180)*i), math.rad(225))
			end
			for i=1, 100 do
				wait()
				weld.torso.C1=CFrame.new(0, 0, -i/10)*CFrame.Angles(-math.rad(45)*i, 0, 0)
			end
			tdeb=false
			for i=1, 0, -.1 do
				wait()
				weld.torso.C1=CFrame.new(0, 0, -10*i)
				weld.arm.left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(180)*i, 0, math.rad(45)*i)
				weld.arm.right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(180)*i, 0, -math.rad(45)*i)
				handleweld.C1=CFrame.new(0, -1.5+(-.5*i), 0)*CFrame.Angles(math.rad(90)-(math.rad(90)*i), math.rad(180)-(math.rad(180)*i), math.rad(225))
			end
		end
	end;
	["Coup"]=function()
		if tdeb==false then tdeb=true
			trail(bladetip, CFrame.new(), bladecolor)
			for i=0, 1, .1 do
				wait()
				weld.torso.C1=CFrame.new(0, 0, -10*i)*CFrame.Angles(0, math.rad(90)*i, 0)
				weld.arm.left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i)
				weld.arm.right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(45)*i, 0, math.rad(90)*i)
			end
			tdeb=false
			for i=1, 0, -.1 do
				wait()
				weld.torso.C1=CFrame.new(0, 0, -10*i)*CFrame.Angles(0, math.rad(90)*i, 0)
				weld.arm.left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i)
				weld.arm.right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(45)*i, 0, math.rad(90)*i)
			end
		end
	end;
	["Fence"]=function()
		if tdeb==false then tdeb=true
			trail(bladetip, CFrame.new(), bladecolor)
			for i=0, 1, .1 do
				wait()
				weld.torso.C1=CFrame.new(0, 0, 0)*CFrame.Angles(0, math.rad(90)*i, 0)
				weld.arm.left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i)
				weld.arm.right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(0, 0, math.rad(90)*i)
				handleweld.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(0, math.rad(180)-(math.rad(180)*i), math.rad(180))
			end
			c(function()
				while tdeb do wait()
					local trail=add.Part(workspace, true, false, colorA, 0, Vector3.new(1, 1, 1), bladetip.CFrame*CFrame.Angles(math.random(-45, 45), math.random(-45, 45), math.random(-45, 45)))
					local tMesh=add.Mesh("BlockMesh", trail, Vector3.new(1, 1, 1), nil, nil)
					old=new
					c(function()
						for i=0, 2, .2 do
							wait()
							trail.Mesh.Scale=trail.Mesh.Scale+Vector3.new(i, i, i)
						end
						trail:remove()
					end)
					c(function()
						for i=0, 1, .2 do
							wait()
							trail.Transparency=i
						end
					end)
				end
			end)
			for i=1, 100 do
				wait()
				weld.torso.C1=CFrame.new(0, 0, -i)*CFrame.Angles(0, math.rad(90), 0)
				weld.arm.right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(45)*i, 0, math.rad(90))
			end
			for i=1, 0, -.1 do
				wait()
				weld.torso.C1=CFrame.new(0, 0, -100*i)*CFrame.Angles(0, math.rad(90)*i, 0)
				weld.arm.left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i)
				weld.arm.right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(0, 0, math.rad(90)*i)
				handleweld.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(math.rad(90)-(math.rad(90)*i), math.rad(180), math.rad(180))
			end
			tdeb=false
		end
	end;
	["CHARGE"]=function()
		human.WalkSpeed=0
		for i=0, 1, .1 do
			wait()
			weld.torso.C1=CFrame.Angles(0, math.rad(45)*i, 0)
			weld.arm.left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i)
			weld.arm.right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(0, 0, math.rad(135)*i)
			handleweld.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(0, math.rad(180)-(math.rad(180)*i), math.rad(180))
		end
		while bdeb do wait()
			if mana>0 and mana<100 then mana=mana+1 end
			local trail=add.Part(workspace, true, false, colorA, 0, Vector3.new(1, 1, 1), fake.torso.CFrame*CFrame.Angles(math.random(-45, 45), math.random(-45, 45), math.random(-45, 45)))
			local tMesh=add.Mesh("BlockMesh", trail, Vector3.new(1, 1, 1), nil, nil)
			local trailb=add.Part(workspace, true, false, colorA, 0, Vector3.new(4, 2, 4), fake.torso.CFrame*CFrame.new(0, -3, 0)*CFrame.Angles(math.rad(90), 0, 0))
			local tMeshb=add.Mesh("SpecialMesh", trailb, Vector3.new(1, 1, 1), nil, "File") tMeshb.MeshId="http://www.roblox.com/asset/?id=3270017"
			local trailc=add.Part(workspace, true, false, colorA, 0, Vector3.new(1, 1, 1), fake.torso.CFrame*CFrame.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))*CFrame.Angles(math.random(-45, 45), math.random(-45, 45), math.random(-45, 45)))
			local tMeshc=add.Mesh("BlockMesh", trailc, Vector3.new(1, 1, 1), nil, nil)
			old=new
			c(function()
				for i=0, 2.5, .2 do
					wait()
					trail.Mesh.Scale=trail.Mesh.Scale+Vector3.new(i, i, i)
					trailb.Mesh.Scale=trailb.Mesh.Scale+Vector3.new(i, i, 0)
					trailc.Mesh.Scale=trailc.Mesh.Scale+Vector3.new(i, i, i)
				end
				trail:remove()
				trailb:remove()
			end)
			c(function()
				for i=0, 1, .1 do
					wait()
					trail.Transparency=i
					trailb.Transparency=i
					trailc.Transparency=i
				end
			end)
		end
		for i=1, 0, -.1 do
			wait()
			weld.torso.C1=CFrame.Angles(0, math.rad(45)*i, 0)
			weld.arm.left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i)
			weld.arm.right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(0, 0, math.rad(135)*i)
			handleweld.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(math.rad(90)-(math.rad(90)*i), math.rad(180), math.rad(180))
		end
		human.WalkSpeed=16
	end;
}

bin.Selected:connect(function(mouse)
	mouse.KeyDown:connect(function(k)
		if k=="z" and bdeb==false and mana>=20 then mana=mana-20 bdeb=true actions.Spin() bdeb=false end
		if k=="x" and bdeb==false and mana>=5 then mana=mana-5 bdeb=true actions.Coup() bdeb=false end
		if k=="c" and bdeb==false and mana>=25 then mana=mana-25 bdeb=true actions.ForeSpin() bdeb=false end
		if k=="f" and bdeb==false and mana>=30 then mana=mana-30 bdeb=true actions.Fence() bdeb=false end
		if k=="q" and bdeb==false then bdeb=true actions.CHARGE() end
	end)
	mouse.KeyUp:connect(function(k)
		if k=="q" and bdeb==true then bdeb=false end
	end)
	human.Running:connect(function(speed)
		if speed>5 then
			while bdeb do wait() end
			for i=0, 1, .1 do
				wait()
				weld.torso.C1=CFrame.Angles(0, math.rad(90)*i, 0)
				weld.arm.left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(0, math.rad(45)*i, -math.rad(45)*i)
				weld.arm.right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(45)*i, 0, math.rad(90)*i)
			end
		else
			while bdeb do wait() end
			for i=1, 0, -.1 do
				wait()
				weld.torso.C1=CFrame.Angles(0, math.rad(90)*i, 0)
				weld.arm.left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(0, math.rad(45)*i, -math.rad(45)*i)
				weld.arm.right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(45)*i, 0, math.rad(90)*i)
			end
		end
	end)
	for i=0, 1, .1 do
		wait()
		weld.arm.right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(0, 0, math.rad(135)*i)
		handleweld.C1=CFrame.new(0, 3+(3*i), 0)*CFrame.Angles(0, -math.rad(90), math.rad(180))
		handle.Transparency=i
		stip.Transparency=i
		handleb.Transparency=i
		blade.Transparency=i
		bladetip.Transparency=i
		a.Transparency=i
		b.Transparency=i
		cc.Transparency=i
		d.Transparency=i
	end
	handleweld.Part1=fake.arm.right
	handleweld.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(0, math.rad(180), math.rad(180))
	for i=1, 0, -.1 do
		wait()
		weld.arm.right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(0, 0, math.rad(135)*i)
		handleweld.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(math.rad(90)-(math.rad(90)*i), math.rad(180), math.rad(180))
		handle.Transparency=i
		stip.Transparency=i
		handleb.Transparency=i
		blade.Transparency=i
		bladetip.Transparency=i
		a.Transparency=i
		b.Transparency=i
		cc.Transparency=i
		d.Transparency=i
	end
end)
bin.Deselected:connect(function()
	for i=0, 1, .1 do
		wait()
		weld.arm.right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(0, 0, math.rad(135)*i)
		handleweld.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(math.rad(90)-(math.rad(90)*i), math.rad(180), math.rad(180))
		handle.Transparency=i
		stip.Transparency=i
		handleb.Transparency=i
		blade.Transparency=i
		bladetip.Transparency=i
		a.Transparency=i
		b.Transparency=i
		cc.Transparency=i
		d.Transparency=i
	end
	handleweld.Part1=bag
	handleweld.C1=CFrame.new(0, 6, 0)*CFrame.Angles(0, -math.rad(90), math.rad(180))
	for i=1, 0, -.1 do
		wait()
		weld.arm.right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(0, 0, math.rad(135)*i)
		handleweld.C1=CFrame.new(0, 3+(3*i), 0)*CFrame.Angles(0, -math.rad(90), math.rad(180))
		handle.Transparency=i
		stip.Transparency=i
		handleb.Transparency=i
		blade.Transparency=i
		bladetip.Transparency=i
		a.Transparency=i
		b.Transparency=i
		cc.Transparency=i
		d.Transparency=i
	end
end)	
end}
module[3] = {"Dagunjet",function()
Player = game:GetService("Players").LocalPlayer 
Cha = Player.Character
mouse = game.Players.LocalPlayer:GetMouse()
Tool = Instance.new("HopperBin",Player.Backpack)
Tool.Name = "3 Ring"
Daggermode = true
Gunzmode = true
Jetpackmode = true
function onClicked(mouse)
if (not vDebounce) and Daggermode == false then
vDebounce = true
wa = Instance.new("Part",Char)
wa.Transparency=1
wa.CanCollide = false 
wa.Size = Vector3.new(1, 1, 1) 
wa:BreakJoints() 
Weld3 = Instance.new("Weld",wa) 
Weld3.Part0 = Bar
Weld3.Part1 = wa
Weld3.C0 = CFrame.new(0, 0, -2) * CFrame.Angles(0, 0, 0)
 
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -2.5)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -2.1)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -1.7)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -1.3)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -0.9)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -0.5)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -0.3)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -0.5)
wait()
wa:remove()
 
vDebounce = false
end
 
end
 
Tool.Selected:connect(function(mouse)
 
end)
 
mouse.Button1Down:connect(function() onClicked(mouse) end)
 
 
 
Ring = Instance.new("Part",Cha)
Ring.TopSurface = "Smooth"
Ring.BottomSurface = "Smooth"
Ring.Size = Vector3.new(1, 1, 1)
Ring.CanCollide = True
Ring.Reflectance = 0.3
Ring.BrickColor = BrickColor.new("White")
RingMesh = Instance.new("SpecialMesh", Ring)
RingMesh.MeshType = "Brick"
RingMesh.Scale = Vector3.new(1.1,0.2,1.1)
RingWeld = Instance.new("Weld",Cha)
RingWeld.Part0 = Cha["Right Arm"]
RingWeld.Part1 = Ring
RingWeld.C1 = CFrame.new(0, 0.75, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Ring2 = Instance.new("Part",Cha)
Ring2.TopSurface = "Smooth"
Ring2.BottomSurface = "Smooth"
Ring2.Size = Vector3.new(1, 1, 1)
Ring2.CanCollide = True
Ring2.Transparency = 0.3
Ring2.BrickColor = BrickColor.new("Bright red")
Ring2Mesh = Instance.new("SpecialMesh", Ring2)
Ring2Mesh.MeshType = "FileMesh" 
Ring2Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Ring2Mesh.Scale = Vector3.new(0.3,0.3,0.3)
Ring2Weld = Instance.new("Weld",Cha)
Ring2Weld.Part0 = Cha["Right Arm"]
Ring2Weld.Part1 = Ring2
Ring2Weld.C1 = CFrame.new(0, 0.75, 0.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Ring3 = Instance.new("Part",Cha)
Ring3.TopSurface = "Smooth"
Ring3.BottomSurface = "Smooth"
Ring3.Size = Vector3.new(1, 1, 1)
Ring3.CanCollide = True
Ring3.Reflectance = 0.3
Ring3.BrickColor = BrickColor.new("White")
Ring3Mesh = Instance.new("SpecialMesh", Ring3)
Ring3Mesh.MeshType = "Brick"
Ring3Mesh.Scale = Vector3.new(1.1,0.2,1.1)
Ring3Weld = Instance.new("Weld",Cha)
Ring3Weld.Part0 = Cha["Left Arm"]
Ring3Weld.Part1 = Ring3
Ring3Weld.C1 = CFrame.new(0, 0.75, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Ring4 = Instance.new("Part",Cha)
Ring4.TopSurface = "Smooth"
Ring4.BottomSurface = "Smooth"
Ring4.Size = Vector3.new(1, 1, 1)
Ring4.CanCollide = True
Ring4.Transparency = 0.3
Ring4.BrickColor = BrickColor.new("Navy blue")
Ring4Mesh = Instance.new("SpecialMesh", Ring4)
Ring4Mesh.MeshType = "FileMesh" 
Ring4Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Ring4Mesh.Scale = Vector3.new(0.3,0.3,0.3)
Ring4Weld = Instance.new("Weld",Cha)
Ring4Weld.Part0 = Cha["Left Arm"]
Ring4Weld.Part1 = Ring4
Ring4Weld.C1 = CFrame.new(0, 0.75, 0.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Ring5 = Instance.new("Part",Cha)
Ring5.TopSurface = "Smooth"
Ring5.BottomSurface = "Smooth"
Ring5.Size = Vector3.new(1, 1, 1)
Ring5.CanCollide = True
Ring5.Reflectance = 0.3
Ring5.BrickColor = BrickColor.new("White")
Ring5Mesh = Instance.new("SpecialMesh", Ring5)
Ring5Mesh.MeshType = "Brick"
Ring5Mesh.Scale = Vector3.new(1.1,0.2,1.1)
Ring5Weld = Instance.new("Weld",Cha)
Ring5Weld.Part0 = Cha.Head
Ring5Weld.Part1 = Ring5
Ring5Weld.C1 = CFrame.new(0, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Ring6 = Instance.new("Part",Cha)
Ring6.TopSurface = "Smooth"
Ring6.BottomSurface = "Smooth"
Ring6.Size = Vector3.new(1, 1, 1)
Ring6.CanCollide = True
Ring6.Transparency = 0.3
Ring6.BrickColor = BrickColor.new("Earth green")
Ring6Mesh = Instance.new("SpecialMesh", Ring6)
Ring6Mesh.MeshType = "FileMesh" 
Ring6Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Ring6Mesh.Scale = Vector3.new(0.3,0.3,0.3)
Ring6Weld = Instance.new("Weld",Cha)
Ring6Weld.Part0 = Cha.Head
Ring6Weld.Part1 = Ring6
Ring6Weld.C1 = CFrame.new(0, 0.5, 0.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
--Dagger
 
Holder = Instance.new("Part",Cha)
Holder.TopSurface = "Smooth"
Holder.BottomSurface = "Smooth"
Holder.Size = Vector3.new(1, 1, 1)
Holder.Transparency = 1
Holder.CanCollide = True
Holder.BrickColor = BrickColor.new("White")
HolderMesh = Instance.new("SpecialMesh", Holder)
HolderMesh.MeshType = "Brick"
HolderMesh.Scale = Vector3.new(0.2,0.2,1.1)
HolderWeld = Instance.new("Weld",Cha)
HolderWeld.Part0 = Cha["Right Arm"]
HolderWeld.Part1 = Holder
HolderWeld.C1 = CFrame.new(0, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Seperator = Instance.new("Part",Cha)
Seperator.TopSurface = "Smooth"
Seperator.BottomSurface = "Smooth"
Seperator.Size = Vector3.new(1, 1, 1)
Seperator.Transparency = 1
Seperator.CanCollide = True
Seperator.BrickColor = BrickColor.new("White")
SeperatorMesh = Instance.new("SpecialMesh", Seperator)
SeperatorMesh.MeshType = "Brick"
SeperatorMesh.Scale = Vector3.new(0.2,0.8,0.2)
SeperatorWeld = Instance.new("Weld",Cha)
SeperatorWeld.Part0 = Cha["Right Arm"]
SeperatorWeld.Part1 = Seperator
SeperatorWeld.C1 = CFrame.new(0, 1, 0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Seperator2 = Instance.new("Part",Cha)
Seperator2.TopSurface = "Smooth"
Seperator2.BottomSurface = "Smooth"
Seperator2.Size = Vector3.new(1, 1, 1)
Seperator2.Transparency = 1
Seperator2.CanCollide = True
Seperator2.BrickColor = BrickColor.new("White")
Seperator2Mesh = Instance.new("SpecialMesh", Seperator2)
Seperator2Mesh.MeshType = "Brick"
Seperator2Mesh.Scale = Vector3.new(0.8,0.2,0.2)
Seperator2Weld = Instance.new("Weld",Cha)
Seperator2Weld.Part0 = Cha["Right Arm"]
Seperator2Weld.Part1 = Seperator2
Seperator2Weld.C1 = CFrame.new(0, 1, 0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Blade = Instance.new("Part",Cha)
Blade.TopSurface = "Smooth"
Blade.BottomSurface = "Smooth"
Blade.Size = Vector3.new(1, 1, 1)
Blade.Transparency = 1
Blade.CanCollide = True
Blade.Reflectance = 0.3
Blade.BrickColor = BrickColor.new("White")
BladeMesh = Instance.new("SpecialMesh", Blade)
BladeMesh.MeshType = "Brick"
BladeMesh.Scale = Vector3.new(0.05,0.15,2.5)
BladeWeld = Instance.new("Weld",Cha)
BladeWeld.Part0 = Cha["Right Arm"]
BladeWeld.Part1 = Blade
BladeWeld.C1 = CFrame.new(0, 1.1, 1.75)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Blade2 = Instance.new("Part",Cha)
Blade2.TopSurface = "Smooth"
Blade2.BottomSurface = "Smooth"
Blade2.Size = Vector3.new(1, 1, 1)
Blade2.Transparency = 1
Blade2.CanCollide = True
Blade2.Reflectance = 0.3
Blade2.BrickColor = BrickColor.new("Really black")
Blade2Mesh = Instance.new("SpecialMesh", Blade2)
Blade2Mesh.MeshType = "Brick"
Blade2Mesh.Scale = Vector3.new(0.05,0.15,2)
Blade2Weld = Instance.new("Weld",Cha)
Blade2Weld.Part0 = Cha["Right Arm"]
Blade2Weld.Part1 = Blade2
Blade2Weld.C1 = CFrame.new(0, 0.9, 1.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Point = Instance.new("Part",Cha)
Point.TopSurface = "Smooth"
Point.BottomSurface = "Smooth"
Point.Size = Vector3.new(1, 1, 1)
Point.Transparency = 1
Point.CanCollide = True
Point.Reflectance = 0.3
Point.BrickColor = BrickColor.new("Really black")
PointMesh = Instance.new("SpecialMesh", Point)
PointMesh.MeshType = "Wedge"
PointMesh.Scale = Vector3.new(0.05,0.15,0.5)
PointWeld = Instance.new("Weld",Cha)
PointWeld.Part0 = Cha["Right Arm"]
PointWeld.Part1 = Point
PointWeld.C1 = CFrame.new(0, 0.9, 2.75)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Point2 = Instance.new("Part",Cha)
Point2.TopSurface = "Smooth"
Point2.BottomSurface = "Smooth"
Point2.Size = Vector3.new(1, 1, 1)
Point2.Transparency = 1
Point2.CanCollide = True
Point2.Reflectance = 0.3
Point2.BrickColor = BrickColor.new("White")
Point2Mesh = Instance.new("SpecialMesh", Point2)
Point2Mesh.MeshType = "Wedge"
Point2Mesh.Scale = Vector3.new(0.05,0.15,0.5)
Point2Weld = Instance.new("Weld",Cha)
Point2Weld.Part0 = Cha["Right Arm"]
Point2Weld.Part1 = Point2
Point2Weld.C1 = CFrame.new(0, 1.1, 3.25)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
--Gun
 
Holder2 = Instance.new("Part",Cha)
Holder2.TopSurface = "Smooth"
Holder2.BottomSurface = "Smooth"
Holder2.Size = Vector3.new(1, 1, 1)
Holder2.CanCollide = True
Holder2.Transparency = 1
Holder2.BrickColor = BrickColor.new("White")
Holder2Mesh = Instance.new("SpecialMesh", Holder2)
Holder2Mesh.MeshType = "Brick"
Holder2Mesh.Scale = Vector3.new(1,0.2,1)
Holder2Weld = Instance.new("Weld",Cha)
Holder2Weld.Part0 = Cha["Left Arm"]
Holder2Weld.Part1 = Holder2
Holder2Weld.C1 = CFrame.new(0, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun = Instance.new("Part",Cha)
Gun.TopSurface = "Smooth"
Gun.BottomSurface = "Smooth"
Gun.Size = Vector3.new(1, 1, 1)
Gun.CanCollide = True
Gun.Transparency = 1
Gun.BrickColor = BrickColor.new("White")
GunMesh = Instance.new("SpecialMesh", Gun)
GunMesh.MeshType = "Brick"
GunMesh.Scale = Vector3.new(0.75,0.2,0.75)
GunWeld = Instance.new("Weld",Cha)
GunWeld.Part0 = Cha["Left Arm"]
GunWeld.Part1 = Gun
GunWeld.C1 = CFrame.new(0, 1.25, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun2 = Instance.new("Part",Cha)
Gun2.TopSurface = "Smooth"
Gun2.BottomSurface = "Smooth"
Gun2.Size = Vector3.new(1, 1, 1)
Gun2.CanCollide = True
Gun2.Transparency = 1
Gun2.BrickColor = BrickColor.new("White")
Gun2Mesh = Instance.new("SpecialMesh", Gun2)
Gun2Mesh.MeshType = "Brick"
Gun2Mesh.Scale = Vector3.new(0.5,0.2,0.5)
Gun2Weld = Instance.new("Weld",Cha)
Gun2Weld.Part0 = Cha["Left Arm"]
Gun2Weld.Part1 = Gun2
Gun2Weld.C1 = CFrame.new(0, 1.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun3 = Instance.new("Part",Cha)
Gun3.TopSurface = "Smooth"
Gun3.BottomSurface = "Smooth"
Gun3.Size = Vector3.new(1, 1, 1)
Gun3.CanCollide = True
Gun3.Transparency = 1
Gun3.BrickColor = BrickColor.new("White")
Gun3Mesh = Instance.new("SpecialMesh", Gun3)
Gun3Mesh.MeshType = "Brick"
Gun3Mesh.Scale = Vector3.new(0.25,1,0.25)
Gun3Weld = Instance.new("Weld",Cha)
Gun3Weld.Part0 = Cha["Left Arm"]
Gun3Weld.Part1 = Gun3
Gun3Weld.C1 = CFrame.new(0, 2, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun4 = Instance.new("Part",Cha)
Gun4.TopSurface = "Smooth"
Gun4.BottomSurface = "Smooth"
Gun4.Size = Vector3.new(1, 1, 1)
Gun4.CanCollide = True
Gun4.Transparency = 1
Gun4.BrickColor = BrickColor.new("White")
Gun4Mesh = Instance.new("SpecialMesh", Gun4)
Gun4Mesh.MeshType = "Brick"
Gun4Mesh.Scale = Vector3.new(1,1,1)
Gun4Weld = Instance.new("Weld",Cha)
Gun4Weld.Part0 = Cha["Left Arm"]
Gun4Weld.Part1 = Gun4
Gun4Weld.C1 = CFrame.new(0, 3, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun5 = Instance.new("Part",Cha)
Gun5.TopSurface = "Smooth"
Gun5.BottomSurface = "Smooth"
Gun5.Size = Vector3.new(1, 1, 1)
Gun5.CanCollide = True
Gun5.Transparency = 1
Gun5.BrickColor = BrickColor.new("Really black")
Gun5Mesh = Instance.new("SpecialMesh", Gun5)
Gun5Mesh.MeshType = "Brick"
Gun5Mesh.Scale = Vector3.new(0.9,1,0.9)
Gun5Weld = Instance.new("Weld",Cha)
Gun5Weld.Part0 = Cha["Left Arm"]
Gun5Weld.Part1 = Gun5
Gun5Weld.C1 = CFrame.new(0, 3.05, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun6 = Instance.new("Part",Cha)
Gun6.TopSurface = "Smooth"
Gun6.BottomSurface = "Smooth"
Gun6.Size = Vector3.new(1, 1, 1)
Gun6.CanCollide = True
Gun6.Transparency = 1
Gun6.BrickColor = BrickColor.new("White")
Gun6Mesh = Instance.new("SpecialMesh", Gun6)
Gun6Mesh.MeshType = "Brick"
Gun6Mesh.Scale = Vector3.new(0.2,0.2,2)
Gun6Weld = Instance.new("Weld",Cha)
Gun6Weld.Part0 = Cha["Left Arm"]
Gun6Weld.Part1 = Gun6
Gun6Weld.C1 = CFrame.new(0, 3, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun7 = Instance.new("Part",Cha)
Gun7.TopSurface = "Smooth"
Gun7.BottomSurface = "Smooth"
Gun7.Size = Vector3.new(1, 1, 1)
Gun7.CanCollide = True
Gun7.Transparency = 1
Gun7.BrickColor = BrickColor.new("White")
Gun7Mesh = Instance.new("SpecialMesh", Gun7)
Gun7Mesh.MeshType = "Brick"
Gun7Mesh.Scale = Vector3.new(2,0.2,0.2)
Gun7Weld = Instance.new("Weld",Cha)
Gun7Weld.Part0 = Cha["Left Arm"]
Gun7Weld.Part1 = Gun7
Gun7Weld.C1 = CFrame.new(0, 3, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun8 = Instance.new("Part",Cha)
Gun8.TopSurface = "Smooth"
Gun8.BottomSurface = "Smooth"
Gun8.Size = Vector3.new(1, 1, 1)
Gun8.CanCollide = True
Gun8.Transparency = 1
Gun8.BrickColor = BrickColor.new("White")
Gun8Mesh = Instance.new("SpecialMesh", Gun8)
Gun8Mesh.MeshType = "Brick"
Gun8Mesh.Scale = Vector3.new(0.2,1,0.2)
Gun8Weld = Instance.new("Weld",Cha)
Gun8Weld.Part0 = Cha["Left Arm"]
Gun8Weld.Part1 = Gun8
Gun8Weld.C1 = CFrame.new(0, 3.25, 1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun9 = Instance.new("Part",Cha)
Gun9.TopSurface = "Smooth"
Gun9.BottomSurface = "Smooth"
Gun9.Size = Vector3.new(1, 1, 1)
Gun9.CanCollide = True
Gun9.Transparency = 1
Gun9.BrickColor = BrickColor.new("White")
Gun9Mesh = Instance.new("SpecialMesh", Gun9)
Gun9Mesh.MeshType = "Brick"
Gun9Mesh.Scale = Vector3.new(0.2,1,0.2)
Gun9Weld = Instance.new("Weld",Cha)
Gun9Weld.Part0 = Cha["Left Arm"]
Gun9Weld.Part1 = Gun9
Gun9Weld.C1 = CFrame.new(0, 3.25, -1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun10 = Instance.new("Part",Cha)
Gun10.TopSurface = "Smooth"
Gun10.BottomSurface = "Smooth"
Gun10.Size = Vector3.new(1, 1, 1)
Gun10.CanCollide = True
Gun10.Transparency = 1
Gun10.BrickColor = BrickColor.new("White")
Gun10Mesh = Instance.new("SpecialMesh", Gun10)
Gun10Mesh.MeshType = "Brick"
Gun10Mesh.Scale = Vector3.new(0.2,1,0.2)
Gun10Weld = Instance.new("Weld",Cha)
Gun10Weld.Part0 = Cha["Left Arm"]
Gun10Weld.Part1 = Gun10
Gun10Weld.C1 = CFrame.new(1, 3.25, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Gun11 = Instance.new("Part",Cha)
Gun11.TopSurface = "Smooth"
Gun11.BottomSurface = "Smooth"
Gun11.Size = Vector3.new(1, 1, 1)
Gun11.CanCollide = True
Gun11.Transparency = 1
Gun11.BrickColor = BrickColor.new("White")
Gun11Mesh = Instance.new("SpecialMesh", Gun11)
Gun11Mesh.MeshType = "Brick"
Gun11Mesh.Scale = Vector3.new(0.2,1,0.2)
Gun11Weld = Instance.new("Weld",Cha)
Gun11Weld.Part0 = Cha["Left Arm"]
Gun11Weld.Part1 = Gun11
Gun11Weld.C1 = CFrame.new(-1, 3.25, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
--Fly
 
Jet = Instance.new("Part",Cha)
Jet.TopSurface = "Smooth"
Jet.BottomSurface = "Smooth"
Jet.Size = Vector3.new(1, 1, 1)
Jet.CanCollide = True
Jet.Transparency = 1
Jet.BrickColor = BrickColor.new("White")
JetMesh = Instance.new("SpecialMesh", Jet)
JetMesh.MeshType = "Torso"
JetMesh.Scale = Vector3.new(2,1.5,0.5)
JetWeld = Instance.new("Weld",Cha)
JetWeld.Part0 = Cha.Torso
JetWeld.Part1 = Jet
JetWeld.C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Jet2 = Instance.new("Part",Cha)
Jet2.TopSurface = "Smooth"
Jet2.BottomSurface = "Smooth"
Jet2.Size = Vector3.new(1, 1, 1)
Jet2.CanCollide = True
Jet2.Transparency = 1
Jet2.BrickColor = BrickColor.new("White")
Jet2Mesh = Instance.new("SpecialMesh", Jet2)
Jet2Mesh.MeshType = "Cylinder"
Jet2Mesh.Scale = Vector3.new(4,0.3,0.3)
Jet2Weld = Instance.new("Weld",Cha)
Jet2Weld.Part0 = Cha.Torso
Jet2Weld.Part1 = Jet2
Jet2Weld.C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Jet3 = Instance.new("Part",Cha)
Jet3.TopSurface = "Smooth"
Jet3.BottomSurface = "Smooth"
Jet3.Size = Vector3.new(1, 1, 1)
Jet3.CanCollide = True
Jet3.Transparency = 1
Jet3.BrickColor = BrickColor.new("White")
Jet3Mesh = Instance.new("SpecialMesh", Jet3)
Jet3Mesh.MeshType = "Sphere"
Jet3Mesh.Scale = Vector3.new(3,0.3,3)
Jet3Weld = Instance.new("Weld",Cha)
Jet3Weld.Part0 = Cha.Torso
Jet3Weld.Part1 = Jet3
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Jet4 = Instance.new("Part",Cha)
Jet4.TopSurface = "Smooth"
Jet4.BottomSurface = "Smooth"
Jet4.Size = Vector3.new(1, 1, 1)
Jet4.CanCollide = True
Jet4.Transparency = 1
Jet4.BrickColor = BrickColor.new("White")
Jet4Mesh = Instance.new("SpecialMesh", Jet4)
Jet4Mesh.MeshType = "Sphere"
Jet4Mesh.Scale = Vector3.new(3,0.3,3)
Jet4Weld = Instance.new("Weld",Cha)
Jet4Weld.Part0 = Cha.Torso
Jet4Weld.Part1 = Jet4
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
 
Tool:Destroy()
 
--Moves
 
function Chat(Object,Text,Color)
local Color = BrickColor.new(Color)
pcall(function()Object:findFirstChild("AtlasText"):Destroy()end)
local G = Instance.new("BillboardGui",Object)
G.Name = "AtlasText"
G.Adornee = Object
G.Size = UDim2.new(3.5,0,2.5,0)
G.AlwaysOnTop = false
G.StudsOffset = Vector3.new(0,3,0)
local Frame = Instance.new("Frame")
Frame.Parent = G
Frame.Size = UDim2.new(1,0,1,0)
Frame.BackgroundTransparency = 1
local Txt = Instance.new("TextLabel",Frame)
Txt.Size = UDim2.new(1,0,1,0)
Txt.Text = Text
Txt.TextScaled = true
Txt.TextWrapped = true
Txt.Font = "SourceSansBold"
Txt.TextColor = Color
Txt.BackgroundTransparency = 1
Txt.ZIndex = 2
Game:GetService("Debris"):AddItem(G,3)
end
 
mouse.KeyDown:connect(function(key)
key:lower()
if key == "z" then
Chat(Cha.Head,"Dagger Mode","Bright red")
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -0.5)
Daggermode = false
Blade.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
end
end)
Blade2.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
end
end)
Point.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
end
end)
Point2.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
end
end)
Holder.Transparency = 0.8
Seperator.Transparency = 0.8
Seperator2.Transparency = 0.8
Blade.Transparency = 0.8
Blade2.Transparency = 0.8
Point.Transparency = 0.8
Point2.Transparency = 0.8
wait()
Holder.Transparency = 0.6
Seperator.Transparency = 0.6
Seperator2.Transparency = 0.6
Blade.Transparency = 0.6
Blade2.Transparency = 0.6
Point.Transparency = 0.6
Point2.Transparency = 0.6
wait()
Holder.Transparency = 0.4
Seperator.Transparency = 0.4
Seperator2.Transparency = 0.4
Blade.Transparency = 0.4
Blade2.Transparency = 0.4
Point.Transparency = 0.4
Point2.Transparency = 0.4
wait()
Holder.Transparency = 0.2
Seperator.Transparency = 0.2
Seperator2.Transparency = 0.2
Blade.Transparency = 0.2
Blade2.Transparency = 0.2
Point.Transparency = 0.2
Point2.Transparency = 0.2
wait()
Holder.Transparency = 0
Seperator.Transparency = 0
Seperator2.Transparency = 0
Blade.Transparency = 0
Blade2.Transparency = 0
Point.Transparency = 0
Point2.Transparency = 0
end
if key == "v" then
Chat(Cha.Head,"Dagger Mode Off","Bright red")
Daggermode = true
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, 0)
Holder.Transparency = 0.2
Seperator.Transparency = 0.2
Seperator2.Transparency = 0.2
Blade.Transparency = 0.2
Blade2.Transparency = 0.2
Point.Transparency = 0.2
Point2.Transparency = 0.2
wait()
Holder.Transparency = 0.4
Seperator.Transparency = 0.4
Seperator2.Transparency = 0.4
Blade.Transparency = 0.4
Blade2.Transparency = 0.4
Point.Transparency = 0.4
Point2.Transparency = 0.4
wait()
Holder.Transparency = 0.6
Seperator.Transparency = 0.6
Seperator2.Transparency = 0.6
Blade.Transparency = 0.6
Blade2.Transparency = 0.6
Point.Transparency = 0.6
Point2.Transparency = 0.6
wait()
Holder.Transparency = 0.8
Seperator.Transparency = 0.8
Seperator2.Transparency = 0.8
Blade.Transparency = 0.8
Blade2.Transparency = 0.8
Point.Transparency = 0.8
Point2.Transparency = 0.8
wait()
Holder.Transparency = 1
Seperator.Transparency = 1
Seperator2.Transparency = 1
Blade.Transparency = 1
Blade2.Transparency = 1
Point.Transparency = 1
Point2.Transparency = 1
end
if key == "x" then
Chat(Cha.Head,"Gun Mode","Navy blue")
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1.7, 1.5)
Gunzmode = false
Gun.Transparency = 0.8
Gun2.Transparency = 0.8
Gun3.Transparency = 0.8
Gun4.Transparency = 0.8
Gun5.Transparency = 0.8
Gun6.Transparency = 0.8
Gun7.Transparency = 0.8
Gun8.Transparency = 0.8
Gun9.Transparency = 0.8
Gun10.Transparency = 0.8
Gun11.Transparency = 0.8
wait()
Gun.Transparency = 0.6
Gun2.Transparency = 0.6
Gun3.Transparency = 0.6
Gun4.Transparency = 0.6
Gun5.Transparency = 0.6
Gun6.Transparency = 0.6
Gun7.Transparency = 0.6
Gun8.Transparency = 0.6
Gun9.Transparency = 0.6
Gun10.Transparency = 0.6
Gun11.Transparency = 0.6
wait()
Gun.Transparency = 0.4
Gun2.Transparency = 0.4
Gun3.Transparency = 0.4
Gun4.Transparency = 0.4
Gun5.Transparency = 0.4
Gun6.Transparency = 0.4
Gun7.Transparency = 0.4
Gun8.Transparency = 0.4
Gun9.Transparency = 0.4
Gun10.Transparency = 0.4
Gun11.Transparency = 0.4
wait()
Gun.Transparency = 0.2
Gun2.Transparency = 0.2
Gun3.Transparency = 0.2
Gun4.Transparency = 0.2
Gun5.Transparency = 0.2
Gun6.Transparency = 0.2
Gun7.Transparency = 0.2
Gun8.Transparency = 0.2
Gun9.Transparency = 0.2
Gun10.Transparency = 0.2
Gun11.Transparency = 0.2
wait()
Gun.Transparency = 0
Gun2.Transparency = 0
Gun3.Transparency = 0
Gun4.Transparency = 0
Gun5.Transparency = 0
Gun6.Transparency = 0
Gun7.Transparency = 0
Gun8.Transparency = 0
Gun9.Transparency = 0
Gun10.Transparency = 0
Gun11.Transparency = 0
end
if key == "b" then
Chat(Cha.Head,"Gun Mode Off","Navy blue")
Gunzmode = true
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1.7, 0)
Gun.Transparency = 0.2
Gun2.Transparency = 0.2
Gun3.Transparency = 0.2
Gun4.Transparency = 0.2
Gun5.Transparency = 0.2
Gun6.Transparency = 0.2
Gun7.Transparency = 0.2
Gun8.Transparency = 0.2
Gun9.Transparency = 0.2
Gun10.Transparency = 0.2
Gun11.Transparency = 0.2
wait()
Gun.Transparency = 0.4
Gun2.Transparency = 0.4
Gun3.Transparency = 0.4
Gun4.Transparency = 0.4
Gun5.Transparency = 0.4
Gun6.Transparency = 0.4
Gun7.Transparency = 0.4
Gun8.Transparency = 0.4
Gun9.Transparency = 0.4
Gun10.Transparency = 0.4
Gun11.Transparency = 0.4
wait()
Gun.Transparency = 0.6
Gun2.Transparency = 0.6
Gun3.Transparency = 0.6
Gun4.Transparency = 0.6
Gun5.Transparency = 0.6
Gun6.Transparency = 0.6
Gun7.Transparency = 0.6
Gun8.Transparency = 0.6
Gun9.Transparency = 0.6
Gun10.Transparency = 0.6
Gun11.Transparency = 0.6
wait()
Gun.Transparency = 0.8
Gun2.Transparency = 0.8
Gun3.Transparency = 0.8
Gun4.Transparency = 0.8
Gun5.Transparency = 0.8
Gun6.Transparency = 0.8
Gun7.Transparency = 0.8
Gun8.Transparency = 0.8
Gun9.Transparency = 0.8
Gun10.Transparency = 0.8
Gun11.Transparency = 0.8
wait()
Gun.Transparency = 1
Gun2.Transparency = 1
Gun3.Transparency = 1
Gun4.Transparency = 1
Gun5.Transparency = 1
Gun6.Transparency = 1
Gun7.Transparency = 1
Gun8.Transparency = 1
Gun9.Transparency = 1
Gun10.Transparency = 1
Gun11.Transparency = 1
end
if key == "c" then
Chat(Cha.Head,"Jet Mode","Earth green")
Jetpackmode = false
Jet.Transparency = 0.8
Jet2.Transparency = 0.8
Jet3.Transparency = 0.8
Jet4.Transparency = 0.8
wait()
Jet.Transparency = 0.6
Jet2.Transparency = 0.6
Jet3.Transparency = 0.6
Jet4.Transparency = 0.6
wait()
Jet.Transparency = 0.4
Jet2.Transparency = 0.4
Jet3.Transparency = 0.4
Jet4.Transparency = 0.4
wait()
Jet.Transparency = 0.2
Jet2.Transparency = 0.2
Jet3.Transparency = 0.2
Jet4.Transparency = 0.2
wait()
Jet.Transparency = 0
Jet2.Transparency = 0
Jet3.Transparency = 0
Jet4.Transparency = 0
end
if key == "n" then
Chat(Cha.Head,"Jet Mode Off","Earth green")
Jetpackmode= true
Jet.Transparency = 0.2
Jet2.Transparency = 0.2
Jet3.Transparency = 0.2
Jet4.Transparency = 0.2
wait()
Jet.Transparency = 0.4
Jet2.Transparency = 0.4
Jet3.Transparency = 0.4
Jet4.Transparency = 0.4
wait()
Jet.Transparency = 0.6
Jet2.Transparency = 0.6
Jet3.Transparency = 0.6
Jet4.Transparency = 0.6
wait()
Jet.Transparency = 0.8
Jet2.Transparency = 0.8
Jet3.Transparency = 0.8
Jet4.Transparency = 0.8
wait()
Jet.Transparency = 1
Jet2.Transparency = 1
Jet3.Transparency = 1
Jet4.Transparency = 1
end
if key == "e" and Daggermode == false then
Chat(Cha.Head,"Dagger Range Strike","Bright red")
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -2.5)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -2.1)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -1.7)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -1.3)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -0.9)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -0.5)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -0.3)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.7, -0.5)
p = Instance.new("Part",Workspace)
p.Size = Vector3.new(5,10,5)
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.BrickColor = BrickColor.new("Really black")
p.CFrame = Cha.Torso.CFrame *CFrame.new(0,1,-7)
r = Instance.new("BodyVelocity",p)
r.maxForce = Vector3.new(math.huge,math.huge,math.huge)
r.velocity = Cha.Torso.CFrame.lookVector * 200
p.Touched:connect(function(hit)
if hit.Parent.ClassName == "Model" then
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end
end)
p:BreakJoints()
wait(5)
p:Destroy()
end
if key == "e" and Gunzmode == false then
Chat(Cha.Head,"Death shot","Navy blue")
p = Instance.new("Part",Workspace)
p.Size = Vector3.new(1,1,1)
p.CanCollide = True
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.BrickColor = BrickColor.new("Really black")
p.CFrame = Cha.Torso.CFrame *CFrame.new(0,2,-8)
wait()
p.Size = Vector3.new(2,2,2)
wait()
p.Size = Vector3.new(3,3,3)
wait()
p.Size = Vector3.new(4,4,4)
wait()
p.Size = Vector3.new(5,5,5)
wait()
p.Size = Vector3.new(6,6,6)
wait()
p.Size = Vector3.new(7,7,7)
wait()
r = Instance.new("BodyVelocity",p)
r.maxForce = Vector3.new(math.huge,math.huge,math.huge)
r.velocity = Cha.Torso.CFrame.lookVector * 300
p.Touched:connect(function(hit)
if hit.Parent.ClassName == "Model" then
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(10)
end
end
end)
p:BreakJoints()
wait(5)
p:Destroy()
end
end)
 
Player:GetMouse().KeyDown:connect(function (key)
if key == " " and Jetpackmode == false then
bv = Instance.new("BodyVelocity",Jet)
bv.maxForce = Vector3.new(3, math.huge, 3)
bv.velocity = Vector3.new(0, 20, 0)
end
end)
Player:GetMouse().KeyUp:connect(function (key)
if key == " " and Jetpackmode == false then
bv:Destroy()
end
end)
 
Player:GetMouse().KeyDown:connect(function (key)
if key == "e" and Jetpackmode == false then
Chat(Cha.Head,"Death eyes","Earth green")
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.2, 0, 0)
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.2, 0, 0)
wait()
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.4, 0, 0)
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.4, 0, 0)
wait()
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.6, 0, 0)
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.6, 0, 0)
wait()
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.8, 0, 0)
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.8, 0, 0)
wait()
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(1, 0, 0)
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(1, 0, 0)
wait()
sh = Instance.new("Part",Workspace)
sh.Size = Vector3.new(3,3,3)
sh.CanCollide = True
sh.TopSurface = "Smooth"
sh.BottomSurface = "Smooth"
sh.BrickColor = BrickColor.new("Really black")
sh.CFrame = Cha.Torso.CFrame *CFrame.new(6.5,0,-1)
r = Instance.new("BodyVelocity",sh)
r.maxForce = Vector3.new(math.huge,math.huge,math.huge)
r.velocity = Cha.Torso.CFrame.lookVector * 300
sh2 = Instance.new("Part",Workspace)
sh2.Size = Vector3.new(3,3,3)
sh2.CanCollide = True
sh2.TopSurface = "Smooth"
sh2.BottomSurface = "Smooth"
sh2.BrickColor = BrickColor.new("Really black")
sh2.CFrame = Cha.Torso.CFrame *CFrame.new(-6.5,0,-1)
r2 = Instance.new("BodyVelocity",sh2)
r2.maxForce = Vector3.new(math.huge,math.huge,math.huge)
r2.velocity = Cha.Torso.CFrame.lookVector * 300
sh:BreakJoints()
sh2:BreakJoints()
sh.Touched:connect(function(hit)
if hit.Parent.ClassName == "Model" then
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end
end)
sh2.Touched:connect(function(hit)
if hit.Parent.ClassName == "Model" then
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
end
end
end)
end
end)
Player:GetMouse().KeyUp:connect(function (key)
if key == "e" and Jetpackmode == false then
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.8, 0, 0)
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.8, 0, 0)
wait()
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.6, 0, 0)
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.6, 0, 0)
wait()
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.4, 0, 0)
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.4, 0, 0)
wait()
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.2, 0, 0)
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0.2, 0, 0)
wait()
Jet3Weld.C1 = CFrame.new(4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Jet4Weld.C1 = CFrame.new(-4, 0, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
sh:Destroy()
sh2:Destroy()
end
end)
 
end}
module[4] = {"Dance for me daddy",function()
char = game:service'Players'.LocalPlayer.Character
m = game:service'Players'.LocalPlayer:GetMouse()

-----------------------------
function Aesthetics()


    char.Head.face.Texture = "http://www.roblox.com/asset/?id=404993746"
end 

Aesthetics()


m.KeyDown:connect(function(k)
if k == "z" then
char.Head.face.Texture = "http://www.roblox.com/asset/?id=404993746"
end
end)

m.KeyDown:connect(function(k)
if k == "c" then
char.Head.face.Texture = "http://www.roblox.com/asset/?id=405630280"
end
end)

m.KeyDown:connect(function(k)
if k == "v" then
char.Head.face.Texture = "http://www.roblox.com/asset/?id=262361214"
end
end)

m.KeyDown:connect(function(k)
if k == "h" then
char.Head.face.Texture = "http://www.roblox.com/asset/?id=420819650"
end
end)

m.KeyDown:connect(function(k)
if k == "n" then
char.Head.face.Texture = "http://www.roblox.com/asset/?id=176699876"
end
end)

m.KeyDown:connect(function(k)
if k == "b" then
char.Head.face.Texture = "http://www.roblox.com/asset/?id=258268895"
end
end)


end}

 
 

module[1] = {"Dark Titan",function()
--leaked by LeakingProScripts
--Modfied by xFxllen
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local stanceToggle = "Normal"
math.randomseed(os.time())
hum.WalkSpeed = 7
char:FindFirstChild('Health'):Destroy()
hum.MaxHealth = 5000000
wait(0.1)
hum.Health = 5000000
----------------------------------------------------
char.Shirt:Destroy()
char.Pants:Destroy()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=236410507"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=236412261"
----------------------------------------------------
Debounces = {
on = false;
ks = false;
CanAttack = true;
CanJoke = true;
NoIdl = false;
Slashing = false;
Slashed = false;
Grabbing = false;
Grabbed = false;
}
local Touche = {char.Name, }
----------------------------------------------------
function lerp(a, b, t) -- Linear interpolation
    return a + (b - a)*t
end
 
function slerp(a, b, t) --Spherical interpolation
    dot = a:Dot(b)
    if dot > 0.99999 or dot < -0.99999 then
        return t <= 0.5 and a or b
    else
        r = math.acos(dot)
        return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
    end
end
 
function matrixInterpolate(a, b, t)
    local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
    local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
    local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx , by , bz), t) -- Position
    local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t) -- Vector  right
    local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t) -- Vector  up
    local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t) -- Vector  back
    local t = v1:Dot(v2)
    if not (t < 0 or t == 0 or t > 0) then     -- Failsafe
        return CFrame.new()
    end
    return CFrame.new(
    v0.x, v0.y, v0.z,
    v1.x, v1.y, v1.z,
    v2.x, v2.y, v2.z,
    v3.x, v3.y, v3.z)
end
----------------------------------------------------
function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
function weld(a, b)
    local weld = Instance.new("Weld")
    weld.Name = "W"
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    weld.Parent = a
    return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do 
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
for i,v in pairs(hed:children()) do
    if v:IsA("Sound") then
        v:Destroy()
    end
end
----------------------------------------------------
function HasntTouched(plrname)
local ret = true
for _, v in pairs(Touche) do
if v == plrname then
ret = false
end
end
return ret
end
----------------------------------------------------
larm.Size = larm.Size * 2
rarm.Size = rarm.Size * 2
lleg.Size = lleg.Size * 2
rleg.Size = rleg.Size * 2
torso.Size = torso.Size * 2
hed.Size = hed.Size * 2
root.Size = root.Size * 2
----------------------------------------------------
newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
----------------------------------------------------
game:GetService('InsertService'):LoadAsset(63993845):children()[1].Parent=char
char.LavendarPlasmaHood.Handle.Mesh.Scale = char.LavendarPlasmaHood.Handle.Mesh.Scale * 1.8
char.LavendarPlasmaHood.Handle.Mesh.VertexColor = Vector3.new(0.1,0.1,0.1)
hed.face.Texture = "rbxassetid://46282671"
z=Instance.new('Decal',hed)
z.Face = 'Front'
z.Texture='rbxassetid://99174105'
hed.BrickColor = BrickColor.new("Really black")
lite = Instance.new("PointLight", torso)
lite.Brightness = 14
lite.Range = 10
lite.Color = Color3.new(1, 0, 0)
--[[local hed2 = hed:Clone()
hed2.CanCollide = false
hed2.Parent = char
hed2:ClearAllChildren()
hed2.Transparency = 1
hed2.Name = "DARP"
local w = Instance.new("Weld",hed2)
w.Part0 = hed
w.Part1 = hed2
w.C0 = CFrame.new(0,0,-0.175)
z=Instance.new("SurfaceGui",hed2)
z.Enabled = true
z.Face = "Front"
z.Adornee = hed2
z.CanvasSize = Vector2.new(100,100)
local face = Instance.new("ImageLabel",z)
face.Size = UDim2.new(1,-30,1,0)
face.Position = UDim2.new(0,15,0,0)
face.BackgroundTransparency = 1
face.Image='rbxassetid://46282671']]--
----------------------------------------------------
z = Instance.new("Sound", char)
z.SoundId = "rbxassetid://143536946"--242463565
z.Looped = true
z.Pitch = 1
z.Volume = 1
wait(.01)
z:Play()
----------------------------------------------------
local m = Instance.new("Model")
m.Name = "Absolution"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Bright blue")
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1, 0.600000024, 1.5)
p1.CFrame = CFrame.new(67.4994888, 12.1560526, 73.0205841, 0.999972522, -3.59117985e-005, -8.00192356e-006, -1.39250187e-005, 0.358383715, -0.933530986, 5.28097153e-005, 0.933500648, 0.358406395)
p1.CanCollide = false
p1.Locked = true
p1.Elasticity = 0
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Wedge
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.400000006, 0.600000024, 0.699999928)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Really black")
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(1, 2.9000001, 1)
p2.CFrame = CFrame.new(67.4995728, 11.7633543, 74.2129135, -1.30959779e-005, 2.79811252e-006, 0.999972522, 0.961226642, 0.275612593, -7.50799518e-006, -0.275637805, 0.96119839, 1.01176247e-005)
p2.CanCollide = false
p2.Locked = true
p2.Elasticity = 0
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("BlockMesh", p2)
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.400000006, 1, 0.400000006)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Bright blue")
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(1, 1.20000005, 2.0999999)
p3.CFrame = CFrame.new(67.4994965, 12.6401453, 73.9670334, 0.999972522, -3.52207899e-005, -8.10639358e-006, -1.61500211e-005, 0.309035271, -0.951007903, 5.24176576e-005, 0.950978875, 0.309059501)
p3.CanCollide = false
p3.Locked = true
p3.Elasticity = 0
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshType = Enum.MeshType.Wedge
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.400000006, 0.600000024, 0.699999928)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Bright blue")
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(1, 1.43999994, 2.05000019)
p4.CFrame = CFrame.new(67.4995575, 11.8683414, 76.1565704, 0.999972522, -2.5085672e-005, -1.53700166e-005, -4.86194367e-005, -0.800831437, -0.598821938, 1.9131101e-005, 0.598835468, -0.800796151)
p4.CanCollide = false
p4.Locked = true
p4.Elasticity = 0
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p4)
b4.MeshType = Enum.MeshType.Wedge
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.300000012, 0.600000024, 0.699999988)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Bright blue")
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1, 1.20000005, 3.20000005)
p5.CFrame = CFrame.new(67.4995193, 13.241991, 74.8357468, 0.999972522, -3.59118021e-005, -8.00191992e-006, -1.39250224e-005, 0.358383656, -0.933530807, 5.2809708e-005, 0.933500469, 0.358406246)
p5.CanCollide = false
p5.Locked = true
p5.Elasticity = 0
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Wedge
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.400000006, 0.600000024, 0.699999928)
p6 = Instance.new("Part", m)
p6.Name = "Handle"
p6.BrickColor = BrickColor.new("Really black")
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1.5999999, 13.6000004, 1)
p6.CFrame = CFrame.new(67.5017471, 11.2780685, 66.1421967, -1.18190947e-005, 6.28741009e-006, 0.999972522, 0.99995929, -1.39772892e-005, -7.50630716e-006, -1.79708004e-005, 0.999939024, 1.01296728e-005)
p6.CanCollide = false
p6.Locked = true
p6.Elasticity = 0
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("BlockMesh", p6)
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.400000006, 1, 0.400000006)
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Bright blue")
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(1, 1.00999999, 1.05000019)
p7.CFrame = CFrame.new(67.5174179, 10.5228004, 76.3114471, 0.999972522, -2.76626724e-005, -6.72184569e-006, -4.7347472e-005, -0.91489929, -0.403581172, 2.14323372e-005, 0.403602213, -0.914867818)
p7.CanCollide = false
p7.Locked = true
p7.Elasticity = 0
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Wedge
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.300000012, 0.600000024, 0.699999988)
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Bright blue")
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(1, 1.00999999, 1.05000019)
p8.CFrame = CFrame.new(67.5074387, 8.51285458, 76.8714371, 0.999972522, -2.76626724e-005, -6.72184387e-006, -4.73474684e-005, -0.91489917, -0.403581113, 2.14323354e-005, 0.403602153, -0.914867699)
p8.CanCollide = false
p8.Locked = true
p8.Elasticity = 0
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p8)
b8.MeshType = Enum.MeshType.Wedge
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.300000012, 0.600000024, 0.699999988)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Really black")
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(1, 1.07999957, 1)
p9.CFrame = CFrame.new(67.5095749, 7.1092, 74.5051422, -2.60536999e-005, -5.21559741e-006, 0.999972522, 0.35323599, -0.935490847, -1.50012565e-005, 0.935460567, 0.353258699, 4.2632455e-005)
p9.CanCollide = false
p9.Locked = true
p9.Elasticity = 0
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("BlockMesh", p9)
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.550000012, 1, 0.550000012)
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Really black")
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(1, 1.41999948, 1)
p10.CFrame = CFrame.new(67.489624, 8.67401791, 72.7929764, -9.47785156e-006, -9.42233055e-006, 0.999972522, 0.292371064, 0.956263304, -7.54374832e-006, -0.956253231, 0.292334616, 1.01081387e-005)
p10.CanCollide = false
p10.Locked = true
p10.Elasticity = 0
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("BlockMesh", p10)
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.400000006, 1, 0.400000006)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Really black")
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(1, 1.50999951, 1)
p11.CFrame = CFrame.new(67.509552, 7.11887455, 70.3475952, -1.87569385e-005, 1.80455972e-005, 0.999972522, -0.36222899, -0.932047009, -9.30004444e-006, 0.932039678, -0.362191886, 4.04359016e-005)
p11.CanCollide = false
p11.Locked = true
p11.Elasticity = 0
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("BlockMesh", p11)
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.550000012, 1, 0.550000012)
p12 = Instance.new("Part", m)
p12.Name = "BladeCenter"
p12.BrickColor = BrickColor.new("Dark stone grey")
p12.Material = Enum.Material.Concrete
p12.FormFactor = Enum.FormFactor.Symmetric
p12.Size = Vector3.new(1, 2, 2)
p12.CFrame = CFrame.new(67.4995346, 6.83217764, 72.2514038, -0.999972522, 2.42275873e-005, 0.000103325896, -8.39982677e-005, 4.44650614e-005, -0.999960959, -4.06451727e-005, -0.999940753, -1.25430051e-005)
p12.CanCollide = false
p12.Locked = true
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p12)
b12.MeshType = Enum.MeshType.Brick
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.499999911, 1, 0.699999928)
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Really black")
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(2.91000009, 4.3300004, 1)
p13.CFrame = CFrame.new(67.5096359, 9.31026554, 73.9751816, 7.60371313e-006, 1.0943455e-005, 0.999972522, -0.119072244, -0.99284631, -7.55448127e-006, 0.992830038, -0.119038157, 1.01703836e-005)
p13.CanCollide = false
p13.Locked = true
p13.Elasticity = 0
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("BlockMesh", p13)
b13.Name = "Mesh"
b13.Scale = Vector3.new(1, 1, 0.400000006)
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Really black")
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(2.5, 2.17999935, 1)
p14.CFrame = CFrame.new(67.4896011, 10.1621294, 72.6420059, -1.55498967e-007, -1.33476442e-005, 0.999972522, -0.462319613, 0.886669755, -7.56198779e-006, -0.886637092, -0.462338567, 1.01078904e-005)
p14.CanCollide = false
p14.Locked = true
p14.Elasticity = 0
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
b14 = Instance.new("BlockMesh", p14)
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.400000006, 1, 0.400000006)
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Really black")
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(1.16999996, 4.2699995, 1)
p15.CFrame = CFrame.new(67.5095901, 9.35303593, 70.6884613, -1.24399676e-005, -4.94209144e-006, 0.999972522, 0.645082474, 0.764063478, -7.52419282e-006, -0.764068604, 0.645045042, 1.0099785e-005)
p15.CanCollide = false
p15.Locked = true
p15.Elasticity = 0
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
b15 = Instance.new("BlockMesh", p15)
b15.Name = "Mesh"
b15.Scale = Vector3.new(1, 1, 0.400000006)
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Really black")
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(1.68999994, 4.76000023, 1)
p16.CFrame = CFrame.new(67.4996033, 9.63990211, 75.3800278, 2.98175655e-006, 1.30014914e-005, 0.999972522, 0.258795738, -0.965893507, -7.53869244e-006, 0.965865672, 0.258821338, 1.01718706e-005)
p16.CanCollide = false
p16.Locked = true
p16.Elasticity = 0
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
b16 = Instance.new("BlockMesh", p16)
b16.Name = "Mesh"
b16.Scale = Vector3.new(1, 1, 0.400000006)
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Really black")
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(1.78999996, 4.21999979, 1)
p17.CFrame = CFrame.new(67.499588, 9.28996372, 69.8789978, -9.50601952e-006, -9.41252802e-006, 0.999972522, 0.293352425, 0.955965877, -7.53842551e-006, -0.955955863, 0.293315947, 1.00904235e-005)
p17.CanCollide = false
p17.Locked = true
p17.Elasticity = 0
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
b17 = Instance.new("BlockMesh", p17)
b17.Name = "Mesh"
b17.Scale = Vector3.new(1, 1, 0.400000006)
p18 = Instance.new("WedgePart", m)
p18.BrickColor = BrickColor.new("Dark stone grey")
p18.Name = "BladePart1"
p18.Material = Enum.Material.Concrete
p18.Name = "Wedge"
p18.FormFactor = Enum.FormFactor.Symmetric
p18.Size = Vector3.new(1, 4, 2)
p18.CFrame = CFrame.new(67.499321, 6.83199787, 69.4816895, 0.999972522, -3.68033288e-005, -4.22928351e-005, 2.29664256e-005, -1.65102574e-005, 0.999963701, -2.03872096e-005, -0.999943435, -4.84290831e-005)
p18.CanCollide = false
p18.Locked = true
p18.BottomSurface = Enum.SurfaceType.Smooth
p18.TopSurface = Enum.SurfaceType.Smooth
b18 = Instance.new("SpecialMesh", p18)
b18.MeshType = Enum.MeshType.Wedge
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.499999911, 0.899999976, 0.699999928)
p19 = Instance.new("WedgePart", m)
p19.BrickColor = BrickColor.new("Dark stone grey")
p19.Name = "BladePart2"
p19.Material = Enum.Material.Concrete
p19.Name = "Wedge"
p19.FormFactor = Enum.FormFactor.Symmetric
p19.Size = Vector3.new(1, 4, 2)
p19.CFrame = CFrame.new(67.4994736, 6.83213568, 75.0314102, -0.999972522, 3.68059118e-005, -0.000103325001, -8.40002976e-005, -4.4521752e-005, 0.999963701, 2.03864402e-005, 0.999943435, 1.26029336e-005)
p19.CanCollide = false
p19.Locked = true
p19.BottomSurface = Enum.SurfaceType.Smooth
p19.TopSurface = Enum.SurfaceType.Smooth
b19 = Instance.new("SpecialMesh", p19)
b19.MeshType = Enum.MeshType.Wedge
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.499999911, 0.899999976, 0.699999928)
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Really black")
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(2.53000021, 2.39999938, 1)
p20.CFrame = CFrame.new(67.4996414, 7.91898966, 71.4148178, -1.09432585e-005, 7.6432425e-006, 0.999972522, 0.992849231, -0.119072601, -7.55000656e-006, 0.119038492, 0.992832959, 1.01311334e-005)
p20.CanCollide = false
p20.Locked = true
p20.Elasticity = 0
p20.BottomSurface = Enum.SurfaceType.Smooth
p20.TopSurface = Enum.SurfaceType.Smooth
b20 = Instance.new("BlockMesh", p20)
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.400000006, 1, 0.400000006)
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Bright blue")
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(1, 1.43999994, 1.59000015)
p21.CFrame = CFrame.new(67.509613, 9.57073689, 76.6228256, 0.999972522, -2.50856156e-005, -1.53699839e-005, -4.86196222e-005, -0.800835371, -0.598824739, 1.91311228e-005, 0.59883821, -0.800800025)
p21.CanCollide = false
p21.Locked = true
p21.Elasticity = 0
p21.BottomSurface = Enum.SurfaceType.Smooth
p21.TopSurface = Enum.SurfaceType.Smooth
b21 = Instance.new("SpecialMesh", p21)
b21.MeshType = Enum.MeshType.Wedge
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.300000012, 0.600000024, 0.699999988)
w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-67.5030899, -72.5280457, -14.8209743, 1, -6.37466928e-006, 4.26825172e-005, -3.75621021e-005, 0.358411252, 0.933563769, -2.12490559e-005, -0.933563769, 0.358411252)
w1.Part1 = p2
w1.C1 = CFrame.new(9.14727688, -74.5847855, -67.5001221, -4.37113883e-008, 0.961261749, -0.27563718, 0, 0.27563718, 0.961261749, 1, 4.20180868e-008, -1.2048484e-008)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(9.14727688, -74.5847855, -67.5001221, -4.37113883e-008, 0.961261749, -0.27563718, 0, 0.27563718, 0.961261749, 1, 4.20180868e-008, -1.2048484e-008)
w2.Part1 = p3
w2.C1 = CFrame.new(-67.5030823, -74.2541809, -10.8368053, 1, -8.59976626e-006, 4.22903977e-005, -3.75621021e-005, 0.30906105, 0.951042175, -2.12490559e-005, -0.951042175, 0.30906105)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-67.5030823, -74.2541809, -10.8368053, 1, -8.59976626e-006, 4.22903977e-005, -3.75621021e-005, 0.30906105, 0.951042175, -2.12490559e-005, -0.951042175, 0.30906105)
w3.Part1 = p4
w3.C1 = CFrame.new(-67.5002975, -36.1002579, 68.1035233, 1, -4.10709617e-005, 9.00123541e-006, -3.82823673e-005, -0.800855637, 0.598857403, -1.73869594e-005, -0.598857403, -0.800855637)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-67.5002975, -36.1002579, 68.1035233, 1, -4.10709617e-005, 9.00123541e-006, -3.82823673e-005, -0.800855637, 0.598857403, -1.73869594e-005, -0.598857403, -0.800855637)
w4.Part1 = p5
w4.C1 = CFrame.new(-67.5031891, -74.611969, -14.457736, 1, -6.37466928e-006, 4.26825172e-005, -3.75621021e-005, 0.358411252, 0.933563769, -2.12490559e-005, -0.933563769, 0.358411252)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(-67.5031891, -74.611969, -14.457736, 1, -6.37466928e-006, 4.26825172e-005, -3.75621021e-005, 0.358411252, 0.933563769, -2.12490559e-005, -0.933563769, 0.358411252)
w5.Part1 = p6
w5.C1 = CFrame.new(-11.2799978, -66.1456223, -67.5023346, -4.37113883e-008, 1, 4.37113883e-008, 0, -4.37113883e-008, 1, 1, 4.37113883e-008, 1.91068547e-015)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(-11.2799978, -66.1456223, -67.5023346, -4.37113883e-008, 1, 4.37113883e-008, 0, -4.37113883e-008, 1, 1, 4.37113883e-008, 1.91068547e-015)
w6.Part1 = p7
w6.C1 = CFrame.new(-67.5183792, -21.1694489, 74.0717163, 1, -3.97989206e-005, 1.13026372e-005, -4.09751265e-005, -0.91493088, 0.403610349, -5.72212457e-006, -0.403610349, -0.91493088)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-67.5183792, -21.1694489, 74.0717163, 1, -3.97989206e-005, 1.13026372e-005, -4.09751265e-005, -0.91493088, 0.403610349, -5.72212457e-006, -0.403610349, -0.91493088)
w7.Part1 = p8
w7.C1 = CFrame.new(-67.508461, -23.234499, 73.7728119, 1, -3.97989206e-005, 1.13026372e-005, -4.09751265e-005, -0.91493088, 0.403610349, -5.72212457e-006, -0.403610349, -0.91493088)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-67.508461, -23.234499, 73.7728119, 1, -3.97989206e-005, 1.13026372e-005, -4.09751265e-005, -0.91493088, 0.403610349, -5.72212457e-006, -0.403610349, -0.91493088)
w8.Part1 = p9
w8.C1 = CFrame.new(-72.2151413, -19.6674671, -67.5124359, -2.77766703e-005, 0.353263557, 0.935524285, -1.84533783e-005, -0.935524285, 0.353263557, 1, -7.4510931e-006, 3.25046385e-005)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-72.2151413, -19.6674671, -67.5124359, -2.77766703e-005, 0.353263557, 0.935524285, -1.84533783e-005, -0.935524285, 0.353263557, 1, -7.4510931e-006, 3.25046385e-005)
w9.Part1 = p10
w9.C1 = CFrame.new(67.0792923, -29.5803547, -67.4901428, -2.24114753e-008, 0.292369425, -0.956305802, 3.04095332e-010, 0.956305802, 0.292369425, 1, 6.26159258e-009, -2.15211493e-008)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(67.0792923, -29.5803547, -67.4901428, -2.24114753e-008, 0.292369425, -0.956305802, 3.04095332e-010, 0.956305802, 0.292369425, 1, 6.26159258e-009, -2.15211493e-008)
w10.Part1 = p11
w10.C1 = CFrame.new(-62.9921722, 32.1197624, -67.5121918, -2.88835581e-005, -0.362230271, 0.932088912, 9.3476192e-006, -0.932088912, -0.362230271, 1, -1.74967965e-006, 3.03080251e-005)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(-62.9921722, 32.1197624, -67.5121918, -2.88835581e-005, -0.362230271, 0.932088912, 9.3476192e-006, -0.932088912, -0.362230271, 1, -1.74967965e-006, 3.03080251e-005)
w11.Part1 = p12
w11.C1 = CFrame.new(67.5028763, 72.2527161, 6.8300252, -1, -9.15522687e-005, -3.05189751e-005, 3.05161811e-005, 3.05189751e-005, -1, 9.15532e-005, -1, -3.05161811e-005)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(67.5028763, 72.2527161, 6.8300252, -1, -9.15522687e-005, -3.05189751e-005, 3.05161811e-005, 3.05189751e-005, -1, 9.15532e-005, -1, -3.05161811e-005)
w12.Part1 = p13
w12.C1 = CFrame.new(-72.3439255, 18.054121, -67.5101624, -4.09776035e-008, -0.11906305, 0.992886722, 4.05430745e-010, -0.992886722, -0.11906305, 1, -4.47637571e-009, 4.0734399e-008)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(-72.3439255, 18.054121, -67.5101624, -4.09776035e-008, -0.11906305, 0.992886722, 4.05430745e-010, -0.992886722, -0.11906305, 1, -4.47637571e-009, 4.0734399e-008)
w13.Part1 = p14
w13.C1 = CFrame.new(69.1140671, 24.5752277, -67.4901428, -2.4837334e-008, -0.462350011, -0.886697888, 5.64353009e-010, 0.886697888, -0.462350011, 1, -1.19839818e-008, -2.17623022e-008)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(69.1140671, 24.5752277, -67.4901428, -2.4837334e-008, -0.462350011, -0.886697888, 5.64353009e-010, 0.886697888, -0.462350011, 1, -1.19839818e-008, -2.17623022e-008)
w14.Part1 = p15
w14.C1 = CFrame.new(47.9809418, -52.7511749, -67.5101318, -3.94735267e-008, 0.64509654, -0.764101744, -4.55740418e-010, 0.764101744, 0.64509654, 1, 2.58124242e-008, -2.98677882e-008)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(47.9809418, -52.7511749, -67.5101318, -3.94735267e-008, 0.64509654, -0.764101744, -4.55740418e-010, 0.764101744, 0.64509654, 1, 2.58124242e-008, -2.98677882e-008)
w15.Part1 = p16
w15.C1 = CFrame.new(-75.3105469, -10.1974039, -67.5001221, -4.37113883e-008, 0.258818924, 0.965925872, 0, -0.965925872, 0.258818924, 1, 1.13133343e-008, 4.22219593e-008)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(-75.3105469, -10.1974039, -67.5001221, -4.37113883e-008, 0.258818924, 0.965925872, 0, -0.965925872, 0.258818924, 1, 1.13133343e-008, 4.22219593e-008)
w16.Part1 = p17
w16.C1 = CFrame.new(64.0820847, -29.3829937, -67.5001373, -4.09009289e-008, 0.293349952, -0.956005633, 4.38312497e-010, 0.956005633, 0.293349952, 1, 1.15792238e-008, -3.92300876e-008)
w17 = Instance.new("Weld", p17)
w17.Name = "Wedge_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(64.0820847, -29.3829937, -67.5001373, -4.09009289e-008, 0.293349952, -0.956005633, 4.38312497e-010, 0.956005633, 0.293349952, 1, 1.15792238e-008, -3.92300876e-008)
w17.Part1 = p18
w17.C1 = CFrame.new(-67.4979324, 69.4871521, -6.82958078, 1, 3.05171125e-005, -3.05180438e-005, -3.05171125e-005, -3.05180438e-005, -1, -3.05180438e-005, 1, -3.05171125e-005)
w18 = Instance.new("Weld", p18)
w18.Name = "Wedge_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(-67.4979324, 69.4871521, -6.82958078, 1, 3.05171125e-005, -3.05180438e-005, -3.05171125e-005, -3.05180438e-005, -1, -3.05180438e-005, 1, -3.05171125e-005)
w18.Part1 = p19
w18.C1 = CFrame.new(67.4982986, -75.0367737, -6.83008671, -1, -9.15532e-005, 3.05161811e-005, 3.05189751e-005, -3.05161811e-005, 1, -9.15522687e-005, 1, 3.05189751e-005)
w19 = Instance.new("Weld", p19)
w19.Name = "Part_Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(67.4982986, -75.0367737, -6.83008671, -1, -9.15532e-005, 3.05161811e-005, 3.05189751e-005, -3.05161811e-005, 1, -9.15522687e-005, 1, 3.05189751e-005)
w19.Part1 = p20
w19.C1 = CFrame.new(-16.3677292, -69.9670334, -67.5001678, -1.77821063e-010, 0.992886961, 0.119063012, -1.46926671e-009, -0.119063012, 0.992886961, 1, 1.59595731e-012, 1.47997492e-009)
w20 = Instance.new("Weld", p20)
w20.Name = "Part_Weld"
w20.Part0 = p20
w20.C0 = CFrame.new(-16.3677292, -69.9670334, -67.5001678, -1.77821063e-010, 0.992886961, 0.119063012, -1.46926671e-009, -0.119063012, 0.992886961, 1, 1.59595731e-012, 1.47997492e-009)
w20.Part1 = p21
w20.C1 = CFrame.new(-67.5104218, -38.2193756, 67.100563, 1, -4.10709617e-005, 9.00123541e-006, -3.82823673e-005, -0.800855637, 0.598857403, -1.73869594e-005, -0.598857403, -0.800855637)
m.Parent = char
m:MakeJoints()
----------------------------------------------------
local cor = Instance.new("Part", char.Absolution)
cor.Name = "Thingy"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 13, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = rarm
corw.Part1 = cor
corw.C0 = CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 0, 0)
weld1 = Instance.new("Weld", char.Absolution)
weld1.Part0 = cor
weld1.Part1 = p6
weld1.C0 = CFrame.new(0, 0, 0)
----------------------------------------------------
hitb = Instance.new("Part", char.Absolution)
hitb.Name = "Thingy2"
hitb.Locked = true
hitb.BottomSurface = 0
hitb.CanCollide = false
hitb.Size = Vector3.new(0, 8, 6)
hitb.Transparency = 1
hitb.TopSurface = 0
weld2 = Instance.new("Weld", char.Absolution)
weld2.Part0 = hitb
weld2.Part1 = p12
weld2.C0 = CFrame.new(0, .6, 1)
----------------------------------------------------
local m = Instance.new("Model")
m.Name = "Claw"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Really black")
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1.5, 0.5, 0.5)
p1.CFrame = CFrame.new(2.91120553, 6.79703379, -19.5339718, -0.205515206, -0.209888965, 0.955883741, 0.52527827, -0.847774804, -0.0732159689, 0.825741529, 0.487057745, 0.284480691)
p1.CanCollide = false
p1.Locked = true
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("BlockMesh", p1)
b1.Name = "Mesh"
p2 = Instance.new("WedgePart", m)
p2.BrickColor = BrickColor.new("Really black")
p2.Name = "Wedge"
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(3, 1, 0.5)
p2.CFrame = CFrame.new(2.94872427, 6.13246727, -16.5004997, -5.96046448e-008, -4.47034836e-008, -1.00000358, -1.3615936e-005, 0.99999994, 4.47034836e-008, 1.00000358, 1.41002238e-005, 0)
p2.CanCollide = false
p2.Locked = true
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Really black")
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(1.5, 0.5, 0.5)
p3.CFrame = CFrame.new(1.84869456, 6.79700661, -18.5422173, -5.06400113e-008, 1.07230136e-007, 1.00000715, -0.499905825, -0.866079628, -1.1125789e-007, 0.86608547, -0.499910295, -2.17476881e-008)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("BlockMesh", p3)
b2.Name = "Mesh"
p4 = Instance.new("WedgePart", m)
p4.BrickColor = BrickColor.new("Really black")
p4.Name = "Wedge"
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(3, 1, 0.5)
p4.CFrame = CFrame.new(0.0487272739, 4.13279819, -16.5004959, -1.62921424e-007, 1.78814929e-007, 1.00001431, -1.2755394e-005, -0.999999762, -1.78813849e-007, 1.00001431, -1.46627426e-005, -7.54998553e-008)
p4.CanCollide = false
p4.Locked = true
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Really black")
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(1.5, 0.5, 0.5)
p5.CFrame = CFrame.new(1.84874606, 6.79701567, -19.6422844, -4.29027068e-007, 1.9046513e-007, 1.00001431, 0.500089467, -0.865973532, 2.18601315e-008, 0.865987122, 0.50009501, 3.78533827e-008)
p5.CanCollide = false
p5.Locked = true
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("BlockMesh", p5)
b3.Name = "Mesh"
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Really black")
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(1.5, 0.5, 0.5)
p6.CFrame = CFrame.new(2.61122823, 6.79701757, -18.433939, -0.250001401, 0.0669622123, 0.965941966, -0.491382152, -0.868364573, -0.0669801831, 0.834303975, -0.491393685, 0.249996051)
p6.CanCollide = false
p6.Locked = true
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("BlockMesh", p6)
b4.Name = "Mesh"
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Really black")
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(3, 1, 1.20000005)
p7.CFrame = CFrame.new(2.59874034, 5.13276958, -16.5005379, -3.27825546e-007, -3.57627869e-007, -1.00001431, -0.000133868307, 0.99999994, 1.49011612e-008, 1.00001442, 0.000135900453, -5.96046448e-008)
p7.CanCollide = false
p7.Locked = true
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("BlockMesh", p7)
b5.Name = "Mesh"
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Bright blue")
p8.FormFactor = Enum.FormFactor.Symmetric
p8.Size = Vector3.new(1, 1, 1)
p8.CFrame = CFrame.new(1.84841466, 6.25537968, -20.3997307, -1.42129729e-005, 0.00428489037, -1.00000513, 0.965967655, 0.258660465, 0.00109496934, 0.258668512, -0.965972245, -0.00414247159)
p8.CanCollide = false
p8.Locked = true
b6 = Instance.new("SpecialMesh", p8)
b6.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b6.TextureId = ""
b6.MeshType = Enum.MeshType.FileMesh
b6.Name = "Mesh"
b6.Scale = Vector3.new(1.20000005, 0.449999988, 0.449999988)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Really black")
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(1.5, 0.5, 0.5)
p9.CFrame = CFrame.new(2.79691935, 3.68131566, -18.264101, -0.277095288, -0.561500967, -0.779720128, 0.631033003, 0.505603611, -0.58835566, 0.724593103, -0.655058563, 0.214224264)
p9.CanCollide = false
p9.Locked = true
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("BlockMesh", p9)
b7.Name = "Mesh"
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Bright blue")
p10.FormFactor = Enum.FormFactor.Symmetric
p10.Size = Vector3.new(1, 1, 1)
p10.CFrame = CFrame.new(3.09846497, 6.25236273, -20.2996788, -0.0669716895, 0.254178405, -0.964850724, 0.96595335, 0.258713901, 0.00110733509, 0.249903828, -0.93192625, -0.262850702)
p10.CanCollide = false
p10.Locked = true
b8 = Instance.new("SpecialMesh", p10)
b8.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b8.TextureId = ""
b8.MeshType = Enum.MeshType.FileMesh
b8.Name = "Mesh"
b8.Scale = Vector3.new(1.20000005, 0.449999988, 0.449999988)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Really black")
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(1.5, 0.5, 0.5)
p11.CFrame = CFrame.new(0.386122227, 6.79699421, -18.533905, 0.250022948, -0.0669473261, 0.965937555, -0.491377324, -0.868365645, 0.0670026764, 0.834300399, -0.491393894, -0.250007868)
p11.CanCollide = false
p11.Locked = true
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("BlockMesh", p11)
b9.Name = "Mesh"
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Really black")
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(1.5, 0.5, 0.5)
p12.CFrame = CFrame.new(1.14871967, 6.79700947, -19.6422291, -4.76837158e-007, 2.83122063e-007, 1.00001442, 0.500089884, -0.865973473, 4.47034836e-008, 0.865987122, 0.500095367, 1.49011612e-008)
p12.CanCollide = false
p12.Locked = true
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("BlockMesh", p12)
b10.Name = "Mesh"
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Really black")
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(1.5, 0.5, 0.5)
p13.CFrame = CFrame.new(1.14870512, 6.79699612, -18.5421638, -4.63888163e-008, 5.08347114e-007, 1.00001442, -0.499899268, -0.866083562, -2.18518963e-008, 0.866095126, -0.499908328, 3.78581007e-008)
p13.CanCollide = false
p13.Locked = true
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("BlockMesh", p13)
b11.Name = "Mesh"
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Bright blue")
p14.FormFactor = Enum.FormFactor.Symmetric
p14.Size = Vector3.new(1, 1, 1)
p14.CFrame = CFrame.new(1.14845455, 6.25537348, -20.3996773, -1.42545232e-005, 0.00425684778, -1.00000536, 0.965958476, 0.258694947, 0.00108788908, 0.258703023, -0.965963125, -0.00411536777)
p14.CanCollide = false
p14.Locked = true
b12 = Instance.new("SpecialMesh", p14)
b12.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b12.TextureId = ""
b12.MeshType = Enum.MeshType.FileMesh
b12.Name = "Mesh"
b12.Scale = Vector3.new(1.20000005, 0.449999988, 0.449999988)
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Medium stone grey")
p15.Transparency = 1
p15.Name = "ArmPart"
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(2, 1, 1)
p15.CFrame = CFrame.new(1.49875152, 5.13257265, -16.0004654, -2.99420208e-007, 4.39002179e-007, 1.00001442, 0.00011029192, -1, 0, 1.00001454, 0.000108176115, 4.42378223e-008)
p15.CanCollide = false
p15.Locked = true
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("BlockMesh", p15)
b13.Name = "Mesh"
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Really black")
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(3, 1, 2.4000001)
p16.CFrame = CFrame.new(1.49872661, 6.13250732, -16.5007095, -2.98894406e-007, 4.39006953e-007, 1.00001442, 0.000110270419, -1, 4.71678729e-012, 1.00001454, 0.000108154614, 4.37120207e-008)
p16.CanCollide = false
p16.Locked = true
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
b14 = Instance.new("BlockMesh", p16)
b14.Name = "Mesh"
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Really black")
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(1.5, 0.5, 0.5)
p17.CFrame = CFrame.new(2.77308726, 3.37837577, -19.2558823, 0.396035522, -0.497440547, -0.771840453, -0.207958207, 0.770127177, -0.603040278, 0.894391596, 0.399337679, 0.201549783)
p17.CanCollide = false
p17.Locked = true
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
b15 = Instance.new("BlockMesh", p17)
b15.Name = "Mesh"
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Bright blue")
p18.FormFactor = Enum.FormFactor.Symmetric
p18.Size = Vector3.new(1, 1, 1)
p18.CFrame = CFrame.new(-0.0516102314, 6.25535488, -20.1996384, 0.066943109, -0.245838761, -0.967011333, 0.965954781, 0.258709013, 0.00110003352, 0.249906152, -0.934162259, 0.254788101)
p18.CanCollide = false
p18.Locked = true
b16 = Instance.new("SpecialMesh", p18)
b16.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b16.TextureId = ""
b16.MeshType = Enum.MeshType.FileMesh
b16.Name = "Mesh"
b16.Scale = Vector3.new(1.20000005, 0.449999988, 0.449999988)
p19 = Instance.new("Part", m)
p19.BrickColor = BrickColor.new("Bright blue")
p19.FormFactor = Enum.FormFactor.Symmetric
p19.Size = Vector3.new(1, 1, 1)
p19.CFrame = CFrame.new(2.43177533, 3.59484506, -20.0301056, 0.559401393, 0.116905749, 0.820629179, -0.685213447, -0.491872638, 0.537163019, 0.466440916, -0.862796843, -0.195047855)
p19.CanCollide = false
p19.Locked = true
b17 = Instance.new("SpecialMesh", p19)
b17.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b17.TextureId = ""
b17.MeshType = Enum.MeshType.FileMesh
b17.Name = "Mesh"
b17.Scale = Vector3.new(1.20000005, 0.449999988, 0.449999988)
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Really black")
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(3, 1, 2.4000001)
p20.CFrame = CFrame.new(1.49873698, 4.13275099, -16.500618, -2.38418579e-007, -4.47034836e-007, -1.00001454, -0.000133797526, 1.00000024, -2.98023224e-008, 1.00001466, 0.000135831535, -5.96046448e-008)
p20.CanCollide = false
p20.Locked = true
p20.BottomSurface = Enum.SurfaceType.Smooth
p20.TopSurface = Enum.SurfaceType.Smooth
b18 = Instance.new("BlockMesh", p20)
b18.Name = "Mesh"
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Really black")
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(3, 1, 1.19999993)
p21.CFrame = CFrame.new(0.398718834, 5.13273239, -16.5005798, -2.22529991e-007, -4.17224015e-007, -1.00001454, -0.000133820766, 1.00000024, 5.9472427e-012, 1.00001466, 0.000135854774, -4.37120207e-008)
p21.CanCollide = false
p21.Locked = true
p21.BottomSurface = Enum.SurfaceType.Smooth
p21.TopSurface = Enum.SurfaceType.Smooth
b19 = Instance.new("BlockMesh", p21)
b19.Name = "Mesh"
p22 = Instance.new("WedgePart", m)
p22.BrickColor = BrickColor.new("Really black")
p22.Name = "Wedge"
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(3, 1, 0.5)
p22.CFrame = CFrame.new(2.94884443, 4.13282013, -16.5005474, 1.35156796e-007, 4.17202415e-007, -1.00001454, 1.19470278e-005, -1.00000024, -6.07483681e-013, -1.00001466, -1.39792755e-005, 4.37120278e-008)
p22.CanCollide = false
p22.Locked = true
p22.BottomSurface = Enum.SurfaceType.Smooth
p22.TopSurface = Enum.SurfaceType.Smooth
p23 = Instance.new("Part", m)
p23.BrickColor = BrickColor.new("Really black")
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(1.5, 0.5, 0.5)
p23.CFrame = CFrame.new(0.111123323, 6.79699326, -19.53405, 0.167916089, 0.220654398, 0.960804224, 0.593452632, -0.800862908, 0.0802069977, 0.787171543, 0.556722164, -0.265425682)
p23.CanCollide = false
p23.Locked = true
p23.BottomSurface = Enum.SurfaceType.Smooth
p23.TopSurface = Enum.SurfaceType.Smooth
b20 = Instance.new("BlockMesh", p23)
b20.Name = "Mesh"
p24 = Instance.new("WedgePart", m)
p24.BrickColor = BrickColor.new("Really black")
p24.Name = "Wedge"
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(3, 1, 0.5)
p24.CFrame = CFrame.new(0.0487362742, 6.13243389, -16.5004158, -0.000165194273, -0.00030361861, 1.00001442, 0.00304524973, 0.999995589, 0.000303655863, -1.00001013, 0.00304720178, -0.000164449215)
p24.CanCollide = false
p24.Locked = true
p24.BottomSurface = Enum.SurfaceType.Smooth
p24.TopSurface = Enum.SurfaceType.Smooth
p25 = Instance.new("Part", m)
p25.BrickColor = BrickColor.new("Bright blue")
p25.FormFactor = Enum.FormFactor.Symmetric
p25.Size = Vector3.new(1, 1, 1)
p25.CFrame = CFrame.new(1.49870086, 5.13261318, -18.0007782, 1.20991026e-005, -1.00001454, -4.94604174e-005, -1.00000024, -1.16155716e-005, -0.000471511274, 0.000469659513, 4.96469293e-005, -1.00001466)
p25.CanCollide = false
p25.Locked = true
p25.BottomSurface = Enum.SurfaceType.Smooth
p25.TopSurface = Enum.SurfaceType.Smooth
b21 = Instance.new("SpecialMesh", p25)
b21.MeshId = "http://www.roblox.com/asset/?id=3270017"
b21.TextureId = ""
b21.MeshType = Enum.MeshType.FileMesh
b21.Name = "Mesh"
b21.Scale = Vector3.new(1.39999998, 1.39999998, 0.600000024)
p26 = Instance.new("Part", m)
p26.BrickColor = BrickColor.new("Really black")
p26.FormFactor = Enum.FormFactor.Symmetric
p26.Size = Vector3.new(1, 1, 1)
p26.CFrame = CFrame.new(1.49868095, 5.13287783, -17.5005093, 0.00030383491, 0.000164763711, -1.00001454, -0.999995768, -0.00302907336, -0.000303868263, -0.00303102471, 1.00001025, 0.000164022902)
p26.CanCollide = false
p26.Locked = true
p26.BottomSurface = Enum.SurfaceType.Smooth
p26.TopSurface = Enum.SurfaceType.Smooth
b22 = Instance.new("SpecialMesh", p26)
b22.MeshType = Enum.MeshType.Brick
b22.Name = "Mesh"
w1 = Instance.new("Weld", p1)
w1.Name = "Wedge_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(13.1579618, 15.8875484, 3.27191186, -0.205515206, 0.52527827, 0.825741529, -0.209888965, -0.847774804, 0.487057745, 0.955883741, -0.0732159689, 0.284480691)
w1.Part1 = p2
w1.C1 = CFrame.new(16.5005817, -6.13223743, 2.94872212, -4.37113883e-008, -1.38580826e-005, 1, 0, 1, 1.38580826e-005, -1, 6.05756005e-013, -4.37113883e-008)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(16.5006275, -6.13223362, 2.94873357, -5.96046448e-008, -1.3615936e-005, 1.00000358, -4.47034836e-008, 0.99999994, 1.41002238e-005, -1.00000358, 4.47034836e-008, 0)
w2.Part1 = p3
w2.C1 = CFrame.new(19.4568748, -3.38260746, -1.84870064, -4.37113883e-008, -0.499906301, 0.866079509, 0, -0.866079509, -0.499906301, 1, -2.18515979e-008, 3.78575393e-008)
w3 = Instance.new("Weld", p3)
w3.Name = "Wedge_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(19.456995, -3.38268948, -1.84870648, -5.06400113e-008, -0.499905825, 0.86608547, 1.07230136e-007, -0.866079628, -0.499910295, 1.00000715, -1.1125789e-007, -2.17476881e-008)
w3.Part1 = p4
w3.C1 = CFrame.new(16.5005646, 4.13256884, -0.0487511083, -4.37113883e-008, -1.37408551e-005, 1, 0, -1, -1.37408551e-005, 1, -6.00631849e-013, 4.37113883e-008)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(16.5007706, 4.13255453, -0.0487275235, -1.62921424e-007, -1.2755394e-005, 1.00001431, 1.78814929e-007, -0.999999762, -1.46627426e-005, 1.00001431, -1.78813849e-007, -7.54998553e-008)
w4.Part1 = p5
w4.C1 = CFrame.new(13.6104183, 15.7089605, -1.84869325, -4.37113883e-008, 0.500093758, 0.865971267, 0, -0.865971267, 0.500093758, 1, 2.18597922e-008, 3.78528071e-008)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(13.6108379, 15.7090359, -1.84877098, -4.29027068e-007, 0.500089467, 0.865987122, 1.9046513e-007, -0.865973532, 0.50009501, 1.00001431, 2.18601315e-008, 3.78533827e-008)
w5.Part1 = p6
w5.C1 = CFrame.new(19.3720245, -3.33087778, 2.54137325, -0.249996737, -0.491388977, 0.834289134, 0.0669635162, -0.868360817, -0.491391122, 0.965928316, -0.0669792444, 0.24999252)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(19.3722382, -3.33087826, 2.54137945, -0.250001401, -0.491382152, 0.834303975, 0.0669622123, -0.868364573, -0.491393685, 0.965941966, -0.0669801831, 0.249996051)
w6.Part1 = p7
w6.C1 = CFrame.new(16.5012703, -5.1305232, 2.59873891, -4.37113883e-008, -0.000135861075, 1, 0, 1, 0.000135861075, -1, 5.9386762e-012, -4.37113883e-008)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(16.5014496, -5.13052464, 2.59877563, -3.27825546e-007, -0.000133868307, 1.00001442, -3.57627869e-007, 0.99999994, 0.000135900453, -1.00001431, 1.49011612e-008, -5.96046448e-008)
w7.Part1 = p8
w7.C1 = CFrame.new(-0.765930653, -21.3311157, 1.75706458, -1.37833995e-005, 0.965968609, 0.258659452, 0.00428466033, 0.258657128, -0.965959728, -0.999990821, 0.00109495374, -0.00414241292)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-0.765703201, -21.3314991, 1.75706851, -1.42129729e-005, 0.965967655, 0.258668512, 0.00428489037, 0.258660465, -0.965972245, -1.00000513, 0.00109496934, -0.00414247159)
w8.Part1 = p9
w8.C1 = CFrame.new(11.6857395, -12.2548676, 8.25926208, -0.277089596, 0.631037474, 0.724577785, -0.561487973, 0.505604029, -0.655054033, -0.779713154, -0.588350415, 0.214222342)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(11.6860123, -12.254859, 8.25934601, -0.277095288, 0.631033003, 0.724593103, -0.561500967, 0.505603611, -0.655058563, -0.779720128, -0.58835566, 0.214224264)
w9.Part1 = p10
w9.C1 = CFrame.new(-0.759226322, -21.3225994, -2.35311079, -0.0669693872, 0.965954244, 0.249894977, 0.254174918, 0.258710593, -0.931914091, -0.964836895, 0.00110732042, -0.262847036)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(-0.759016514, -21.3229256, -2.3531487, -0.0669716895, 0.96595335, 0.249903828, 0.254178405, 0.258713901, -0.93192625, -0.964850724, 0.00110733509, -0.262850702)
w10.Part1 = p11
w10.C1 = CFrame.new(18.7059784, -3.17931223, -5.46201515, 0.250018269, -0.49138394, 0.834285676, -0.0669495314, -0.86836195, -0.491391063, 0.965923727, 0.0670017004, -0.250004292)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(18.7061806, -3.17931461, -5.46200418, 0.250022948, -0.491377324, 0.834300399, -0.0669473261, -0.868365645, -0.491393894, 0.965937555, 0.0670026764, -0.250007868)
w11.Part1 = p12
w11.C1 = CFrame.new(13.6104174, 15.708952, -1.1486963, -4.37113883e-008, 0.500093997, 0.865971148, 0, -0.865971148, 0.500093997, 1, 2.18598029e-008, 3.78528e-008)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(13.6107903, 15.7090092, -1.1487354, -4.76837158e-007, 0.500089884, 0.865987122, 2.83122063e-007, -0.865973473, 0.500095367, 1.00001442, 4.47034836e-008, 1.49011612e-008)
w12.Part1 = p13
w12.C1 = CFrame.new(19.4568653, -3.38261366, -1.14870369, -4.37113883e-008, -0.499906093, 0.866079628, 0, -0.866079628, -0.499906093, 1, -2.1851589e-008, 3.78575429e-008)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(19.457077, -3.38260937, -1.14871991, -4.63888163e-008, -0.499899268, 0.866095126, 5.08347114e-007, -0.866083562, -0.499908328, 1.00001442, -2.18518963e-008, 3.78581007e-008)
w13.Part1 = p14
w13.C1 = CFrame.new(-0.765169621, -21.3281136, 1.05768669, -1.37638153e-005, 0.96595937, 0.258693874, 0.00425664661, 0.258691579, -0.965950608, -0.99999094, 0.00108787336, -0.00411530817)
w14 = Instance.new("Weld", p14)
w14.Name = "ArmPart_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(-0.764959335, -21.3284416, 1.05770254, -1.42545232e-005, 0.965958476, 0.258703023, 0.00425684778, 0.258694947, -0.965963125, -1.00000536, 0.00108788908, -0.00411536777)
w14.Part1 = p15
w14.C1 = CFrame.new(16.0000172, 5.13429213, -1.49874043, -4.37113883e-008, 0.000108154614, 1, 0, -1, 0.000108154614, 1, 4.72758855e-012, 4.37113883e-008)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(16.0001163, 5.13430214, -1.49877143, -2.99420208e-007, 0.00011029192, 1.00001454, 4.39002179e-007, -1, 0.000108176115, 1.00001442, 0, 4.42378223e-008)
w15.Part1 = p16
w15.C1 = CFrame.new(16.5000153, 6.13429213, -1.49872518, -4.37113883e-008, 0.000108154614, 1, 0, -1, 0.000108154614, 1, 4.72758855e-012, 4.37113883e-008)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(16.5002594, 6.1342907, -1.49874651, -2.98894406e-007, 0.000110270419, 1.00001454, 4.39006953e-007, -1, 0.000108154614, 1.00001442, 4.71678729e-012, 4.37120207e-008)
w16.Part1 = p17
w16.C1 = CFrame.new(16.8263168, 6.46704865, 8.05857849, 0.396029502, -0.207962677, 0.894378066, -0.497426808, 0.770130157, 0.399332225, -0.771833658, -0.603034973, 0.201548025)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(16.8266068, 6.46726036, 8.05869198, 0.396035522, -0.207958207, 0.894391596, -0.497440547, 0.770127177, 0.399337679, -0.771840453, -0.603040278, 0.201549783)
w17.Part1 = p18
w17.C1 = CFrame.new(-0.991122723, -20.5004215, 5.08983374, 0.0669417754, 0.965955615, 0.249897182, -0.245835528, 0.258705586, -0.9341501, -0.966997266, 0.00110005983, 0.254784435)
w18 = Instance.new("Weld", p18)
w18.Name = "Part_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(-0.990923882, -20.5007305, 5.08983374, 0.066943109, 0.965954781, 0.249906152, -0.245838761, 0.258709013, -0.934162259, -0.967011333, 0.00110003352, 0.254788101)
w18.Part1 = p19
w18.C1 = CFrame.new(10.4456682, -15.7977238, -7.8332901, 0.559388936, -0.68521893, 0.466432214, 0.116898462, -0.491870552, -0.862785101, 0.820620954, 0.537157655, -0.195045918)
w19 = Instance.new("Weld", p19)
w19.Name = "Part_Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(10.4457512, -15.7979813, -7.83342838, 0.559401393, -0.685213447, 0.466440916, 0.116905749, -0.491872638, -0.862796843, 0.820629179, 0.537163019, -0.195047855)
w19.Part1 = p20
w19.C1 = CFrame.new(16.5012665, -4.13050127, 1.49876332, -4.37113883e-008, -0.000135854745, 1, 0, 1, 0.000135854745, -1, 5.93839951e-012, -4.37113883e-008)
w20 = Instance.new("Weld", p20)
w20.Name = "Part_Weld"
w20.Part0 = p20
w20.C0 = CFrame.new(16.5013981, -4.13050938, 1.498757, -2.38418579e-007, -0.000133797526, 1.00001466, -4.47034836e-007, 1.00000024, 0.000135831535, -1.00001454, -2.98023224e-008, -5.96046448e-008)
w20.Part1 = p21
w20.C1 = CFrame.new(16.5012627, -5.13048887, 0.39874959, -4.37113883e-008, -0.000135854745, 1, 0, 1, 0.000135854745, -1, 5.93839951e-012, -4.37113883e-008)
w21 = Instance.new("Weld", p21)
w21.Name = "Wedge_Weld"
w21.Part0 = p21
w21.C0 = CFrame.new(16.5014935, -5.13049126, 0.398722976, -2.22529991e-007, -0.000133820766, 1.00001466, -4.17224015e-007, 1.00000024, 0.000135854774, -1.00001454, 5.9472427e-012, -4.37120207e-008)
w21.Part1 = p22
w21.C1 = CFrame.new(-16.5005875, 4.13259029, 2.94876933, -4.37113883e-008, 1.39792737e-005, -1, 0, -1, -1.39792737e-005, -1, -6.11053471e-013, 4.37113883e-008)
w22 = Instance.new("Weld", p22)
w22.Name = "Part_Weld"
w22.Part0 = p22
w22.C0 = CFrame.new(-16.500824, 4.13258791, 2.94888711, 1.35156796e-007, 1.19470278e-005, -1.00001466, 4.17202415e-007, -1.00000024, -1.39792755e-005, -1.00001454, -6.07483681e-013, 4.37120278e-008)
w22.Part1 = p23
w22.C1 = CFrame.new(11.3238592, 16.2938461, -5.83674097, 0.167913347, 0.593457043, 0.787155509, 0.220650926, -0.800859332, 0.556720257, 0.960790455, 0.0802058354, -0.265421808)
w23 = Instance.new("Weld", p23)
w23.Name = "Wedge_Weld"
w23.Part0 = p23
w23.C0 = CFrame.new(11.3242846, 16.2939701, -5.83676767, 0.167916089, 0.593452632, 0.787171543, 0.220654398, -0.800862908, 0.556722164, 0.960804224, 0.0802069977, -0.265425682)
w23.Part1 = p24
w23.C1 = CFrame.new(-16.5190907, -6.08210278, -0.053311754, -0.000165350299, 0.00304719806, -0.999995351, -0.000303142268, 0.999995351, 0.00304725766, 0.99999994, 0.000303644716, -0.000164425801)
w24 = Instance.new("Weld", p24)
w24.Name = "Part_Weld"
w24.Part0 = p24
w24.C0 = CFrame.new(-16.5192356, -6.08211088, -0.0533116534, -0.000165194273, 0.00304524973, -1.00001013, -0.00030361861, 0.999995589, 0.00304720178, 1.00001442, 0.000303655863, -0.000164449215)
w24.Part1 = p25
w24.C1 = CFrame.new(5.14108515, 1.49960721, -17.9982204, 1.16387992e-005, -0.999999881, 0.000471503939, -1, -1.1615477e-005, 4.94651576e-005, -4.94596788e-005, -0.000471504522, -0.999999881)
w25 = Instance.new("Weld", p25)
w25.Name = "Part_Weld"
w25.Part0 = p25
w25.C0 = CFrame.new(5.14104986, 1.49967504, -17.9985313, 1.20991026e-005, -1.00000024, 0.000469659513, -1.00001454, -1.16155716e-005, 4.96469293e-005, -4.94604174e-005, -0.000471511274, -1.00001466)
w25.Part1 = p26
w25.C1 = CFrame.new(5.07938719, 17.5157299, 1.50311017, 0.00030336561, -0.99999541, -0.00302907825, 0.000164940167, -0.00302901864, 0.999995351, -0.99999994, -0.000303863839, 0.000164020501)
m.Parent = char
m:MakeJoints()
----------------------------------------------------
local cor2 = Instance.new("Part", char.Claw)
cor2.Name = "Thingy"
cor2.Locked = true
cor2.BottomSurface = 0
cor2.CanCollide = false
cor2.Size = Vector3.new(2, 1, 1)
cor2.Transparency = 1
cor2.TopSurface = 0
corw2 = Instance.new("Weld", cor2)
corw2.Part0 = larm
corw2.Part1 = cor2
corw2.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(90))
corw2.C1 = CFrame.new(0, 0, 0)
weld2 = Instance.new("Weld", char.Claw)
weld2.Part0 = cor2
weld2.Part1 = char.Claw.ArmPart
weld2.C0 = CFrame.new(0, 0, 0)
----------------------------------------------------
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
----------------------------------------------------
function newRay(start,face,range,wat)
	local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
	hit,pos=Workspace:FindPartOnRayWithIgnoreList(rey,wat)
	return rey,hit,pos
end
----------------------------------------------------
mod5 = Instance.new("Model",char)

function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end

function Landing()
    part=Instance.new('Part',mod5)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,-2,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh.Scale=Vector3.new(10,5,10)

    for i,v in pairs(FindNearestTorso(torso.CFrame.p,40))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(20,30))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
        end
    end

    coroutine.resume(coroutine.create(function() 
        for i=0,3.8,0.05 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(1,0.2,1)
            end
        part.Parent = nil
    end))
end
----------------------------------------------------
mod4 = Instance.new("Model",char)

ptez = {0.7, 0.8, 0.9, 1}

function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end

function GroundPound()
    part=Instance.new('Part',mod4)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,-5.8,-2.4)*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
    mesh.Scale=Vector3.new(3,3,3)
    part2=Instance.new('Part',mod4)
    part2.Anchored=true
    part2.CanCollide=false
    part2.FormFactor='Custom'
    part2.Size=Vector3.new(.2,.2,.2)
    part2.CFrame=root.CFrame*CFrame.new(0,-5,-2.6)
    part2.Transparency=.7
    part2.BrickColor=BrickColor.new('Really red')
    mesh2=Instance.new('SpecialMesh',part2)
    mesh2.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh2.Scale=Vector3.new(3,1.5,3)
    x = Instance.new("Sound",char)
    x.SoundId = "http://www.roblox.com/asset/?id=142070127"
    x.Pitch = ptez[math.random(1,#ptez)]
    x.Volume = 1
    wait(.1)
    x:Play()
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,12))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(8,15))
        end
    end
    coroutine.resume(coroutine.create(function() 
        for i=0,0.62,0.13 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(0.4,0.4,0.4)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(0.4,0.2,0.4)
            end
        part.Parent=nil
        part2.Parent=nil
        x:Destroy()
    end))
end
----------------------------------------------------
mod=Instance.new('Model',char)

function charge()
    hed.Velocity=hed.CFrame.lookVector*200
    part=Instance.new('Part',mod)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=hed.CFrame*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh.Scale=Vector3.new(10,5,10)
    part2=part:clone()
    part2.Parent=mod
    part2.BrickColor=BrickColor.new('Bright red')
    mesh2=mesh:clone()
    mesh2.Parent=part2
    mesh2.Scale=Vector3.new(20,10,20)
    part3=part2:clone()
    part3.Parent = mod
    part3.BrickColor=BrickColor.new('Really black')
    mesh3=mesh2:clone()
    mesh2.Parent=part3
    mesh3.Scale=Vector3.new(30,15,30)
    coroutine.resume(coroutine.create(function() 
        for i=0,1,0.1 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(1,1,1)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(1,1,1)
            part3.CFrame=part3.CFrame
            part3.Transparency=i
            mesh3.Scale=mesh3.Scale+Vector3.new(1,1,1)
            end
        part.Parent=nil
        part2.Parent=nil
        part3.Parent = nil
    end))
end
----------------------------------------------------
function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end

mod3 = Instance.new("Model",rleg)

function Stomp()
    part=Instance.new('Part',mod3)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=rleg.CFrame*CFrame.new(0,-2.4,0)*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Bright green')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
    mesh.Scale=Vector3.new(25,25,25)
    part2=part:clone()
    part2.Parent=mod3
    part2.BrickColor=BrickColor.new('Bright green')
    mesh2=mesh:clone()
    mesh2.Parent=part2
    mesh2.Scale=Vector3.new(15,15,15)
    part3=part:clone()
    part3.Parent=mod3
    part3.TopSurface=0
    part3.BottomSurface=0
    part3.CFrame=rleg.CFrame*CFrame.new(0,-3,0)
    mesh3=Instance.new('SpecialMesh',part3)
    mesh3.MeshType = 3
    mesh3.Scale=Vector3.new(12,12,12)
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,50))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(20,60))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
        end
    end 
    coroutine.resume(coroutine.create(function() 
        for i=0,3.8,0.05 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(2.8,2.8,2.8)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(1,1,1)
            part3.CFrame=part3.CFrame
            part3.Transparency=i
            mesh3.Scale=mesh3.Scale+Vector3.new(1.5,1.5,1.5)
        end
    end))
end
----------------------------------------------------

local acos = math.acos
local sqrt = math.sqrt
local Vec3 = Vector3.new
local fromAxisAngle = CFrame.fromAxisAngle

local function toAxisAngle(CFr)
        local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
        local Angle = math.acos((R00+R11+R22-1)/2)
        local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        A = A == 0 and 0.00001 or A
        local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        B = B == 0 and 0.00001 or B
        local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        C = C == 0 and 0.00001 or C
        local x = (R21-R12)/sqrt(A)
        local y = (R02-R20)/sqrt(B)
        local z = (R10-R01)/sqrt(C)
        return Vec3(x,y,z),Angle
end

function ApplyTrig(Num,Func)
        local Min,Max = Func(0),Func(1)
        local i = Func(Num)
        return (i-Min)/(Max-Min)
        --[[if Func == "sin" then
                return (math.sin((1-Num)*math.pi)+1)/2
        elseif Func == "cos" then
                return (math.cos((1-Num)*math.pi)+1)/2
        end]]
end

function LerpCFrame(CFrame1,CFrame2,Num)
        local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
        return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
end

function Crater(Torso,Radius)
        Spawn(function()
        local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
        local Ignore = {}
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character ~= nil then
                        Ignore[#Ignore+1] = v.Character
                end
        end
        local Hit,Pos,SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
        if Hit == nil then return end
        local Parts = {}
        for i = 1,360,10 do
                local P = Instance.new("Part",Torso.Parent)
                P.Anchored = true
                P.FormFactor = "Custom"
                P.BrickColor = Hit.BrickColor
                P.Material = Hit.Material
                P.TopSurface = "Smooth"
                P.BottomSurface = "Smooth"
                P.Size = Vector3.new(5,10,10)*(math.random(80,100)/100)
                P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,7,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                Parts[#Parts+1] = {P,P.CFrame,((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,1,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius)*CFrame.Angles(math.rad(math.random(-50,-20)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),P.Size}
                if math.random(0,5) == 0 then -- rubble
                        local P = Instance.new("Part",Torso.Parent)
                        P.Anchored = true
                        P.FormFactor = "Custom"
                        P.BrickColor = Hit.BrickColor
                        P.Material = Hit.Material
                        P.TopSurface = "Smooth"
                        P.BottomSurface = "Smooth"
                        P.Size = Vector3.new(2,2,2)*(math.random(80,100)/100)
                        P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,2.5,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                        Parts[#Parts+1] = {P,P.CFrame,(CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius-8)*CFrame.Angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90))),P.Size}
                end
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].CFrame = LerpCFrame(v[2],v[3],ApplyTrig(i,math.cos))
                end
                wait(0.02)
        end
        for i,v in pairs(Parts) do
                if v[1].Size.X > 2.1 then
                        v[1].CFrame = v[1].CFrame+Vector3.new(0,2,0)
                end
                v[1].Anchored = false
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].Transparency = i
                        if i == 1 then
                                v[1]:Destroy()
                        elseif i >= 0.25 then
                                v[1].CanCollide = false
                        end
                end
                wait(0.02)
        end
        Parts = nil
        end)
end

----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "r" then
        larm.BrickColor = BrickColor.new("Bright red")
        rarm.BrickColor = BrickColor.new("Bright red")
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
to = char.Absolution.Thingy2.Touched:connect(function(ht)
        hit = ht.Parent
        if ht and hit:IsA("Model") then
                if hit:FindFirstChild("Humanoid") then
                    if hit.Name ~= p.Name then
                        --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true]]--
                                    hit:FindFirstChild("Humanoid"):TakeDamage(10)
                                wait(1)
                                --Debounces.Slashed = false
                        --end
                    end
                end
        elseif ht and hit:IsA("Hat") then
            if hit.Parent.Name ~= p.Name then
                if hit.Parent:FindFirstChild("Humanoid") then
                       --[[ if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true]]--
                                hit.Parent:FindFirstChild("Humanoid"):TakeDamage(10)
                                wait(1)
                    --Debounces.Slashed = false
                end
            end
        end    
    end)
q = Instance.new("Sound",hed)
q.SoundId = "http://www.roblox.com/asset/?id=134012322"
q.Pitch = 0.85
q.Looped = false
q1 = Instance.new("Sound",hed)
q1.SoundId = "http://www.roblox.com/asset/?id=134012322"
q1.Pitch = 0.85
q1.Looped = false
q:Play()
q1:Play()
    for i = 1,20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.3,1.1,-1) * CFrame.Angles(math.rad(115), math.rad(0), math.rad(-55)), 0.4)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.3,1.1,-1) * CFrame.Angles(math.rad(115), math.rad(0), math.rad(55)), 0.4)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)),0.4)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 4, 0) * CFrame.Angles(math.rad(30), math.rad(0), 0), 0.4)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 1) * CFrame.Angles(math.rad(-60), 0, math.rad(0)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, .6) * CFrame.Angles(math.rad(-60), 0, math.rad(0)), 0.4)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -2.2, -3) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(0)), 0.5)
        if Debounces.on == false then break end
    wait()
end
n = Instance.new("Sound",hed)
n.SoundId = "http://www.roblox.com/asset/?id=168514932"
n.Pitch = 0.94
n.Looped = false
n1 = Instance.new("Sound",hed)
n1.SoundId = "http://www.roblox.com/asset/?id=168514932"
n1.Pitch = 0.94
n1.Looped = false
n:Play()
n1:Play()
b = Instance.new("Sound",hed)
b.SoundId = "http://www.roblox.com/asset/?id=168586586"
b.Pitch = 0.94
b.Looped = false
b1 = Instance.new("Sound",hed)
b1.SoundId = "http://www.roblox.com/asset/?id=168586586"
b1.Pitch = 0.94
b1.Looped = false
b:Play()
b1:Play()
    for i = 1,26 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.3,1.1,-1) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(-55)), 0.5)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.3,1.1,-1) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(55)), 0.5)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)),0.5)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(-40), math.rad(0), 0), 0.5)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, -1) * CFrame.Angles(math.rad(50), 0, math.rad(0)), 0.5)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, .4) * CFrame.Angles(math.rad(-10), 0, math.rad(0)), 0.5)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(1.4, -3.5, -7) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(20)), 0.5)
        if Debounces.on == false then break end
    wait()
end
wait(.5)
to:disconnect()
q:Destroy()
q1:Destroy()
n:Destroy()
n1:Destroy()
larm.BrickColor = BrickColor.new("Really black")
rarm.BrickColor = BrickColor.new("Really black")
    if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "q" then
        larm.BrickColor = BrickColor.new("Bright red")
        rarm.BrickColor = BrickColor.new("Bright red")
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
to = char.Absolution.Thingy2.Touched:connect(function(ht)
        hit = ht.Parent
        if ht and hit:IsA("Model") then
                if hit:FindFirstChild("Humanoid") then
                    if hit.Name ~= p.Name then
                        --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true]]--
                                    hit:FindFirstChild("Humanoid"):TakeDamage(4)
                                wait(1)
                                --Debounces.Slashed = false
                        --end
                    end
                end
        elseif ht and hit:IsA("Hat") then
            if hit.Parent.Name ~= p.Name then
                if hit.Parent:FindFirstChild("Humanoid") then
                       --[[ if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true]]--
                                hit.Parent:FindFirstChild("Humanoid"):TakeDamage(4)
                                wait(1)
                    --Debounces.Slashed = false
                end
            end
        end    
    end)
        for i = 1, 20 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0) * CFrame.Angles(math.rad(21), math.rad(75), math.rad(50)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(-18)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2) * CFrame.Angles(math.rad(-14),math.rad(-60),0), 0.5)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(70), 0), 0.5)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.7, -1.4) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
    z = Instance.new("Sound",hed)
    z.SoundId = "rbxassetid://160069154"
    z.Looped = false
    z.Pitch = .9
    z1 = Instance.new("Sound",hed)
    z1.SoundId = "rbxassetid://160069154"
    z1.Looped = false
    z1.Pitch = .9
    wait(0.01)
    z:Play()
    z1:Play()
        for i = 1, 12 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(50)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2,.9,-1) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(20)), 0.5)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2) * CFrame.Angles(math.rad(-14),math.rad(30),0), 0.5)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -3, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.5)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1, -2) * CFrame.Angles(math.rad(-10), 0, 0), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2.8, .6) * CFrame.Angles(math.rad(-65), 0, 0), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.7, -1.4) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
        for i = 1, 12 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0) * CFrame.Angles(math.rad(140), math.rad(0), math.rad(50)), 0.4)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-18)), 0.4)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2) * CFrame.Angles(math.rad(-14),math.rad(10),0), 0.5)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(-10), 0), 0.5)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.7, -1.4) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
    z = Instance.new("Sound",hed)
    z.SoundId = "rbxassetid://168586621"
    z.Looped = false
    z.Pitch = 1
    z1 = Instance.new("Sound",hed)
    z1.SoundId = "rbxassetid://168586621"
    z1.Looped = false
    z1.Pitch = 1
    wait(0.01)
    z:Play()
    z1:Play()
        for i = 1, 12 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0) * CFrame.Angles(math.rad(40), math.rad(-20), math.rad(10)), 0.5)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-18)), 0.4)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2) * CFrame.Angles(math.rad(-14),math.rad(-40),0), 0.5)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(40), 0), 0.5)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(-10)), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(20), 0, math.rad(10)), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -2.8, -1.4) * CFrame.Angles(math.rad(-110), math.rad(-90), math.rad(20)), 1)
        if Debounces.on == false then break end
        wait()
    end
to:disconnect()
larm.BrickColor = BrickColor.new("Really black")
rarm.BrickColor = BrickColor.new("Really black")
    if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
Sit = false
mouse.KeyDown:connect(function(key)
    if key == "v" then
        if Sit == false then
            Sit = true
            hum.WalkSpeed = 0.001
        stanceToggle = "Sitting"
    elseif Sit == true then
        Sit = false
            hum.WalkSpeed = 7
        stanceToggle = "Normal"
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "t" then
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
        for i = 1, 20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.3,1.1,-1) *  CFrame.Angles(math.rad(115), math.rad(0), math.rad(-55)), 0.4)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.3,1.1,-1) *  CFrame.Angles(math.rad(115), math.rad(0), math.rad(55)), 0.4)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)),0.4)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(0), 0), 0.4)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, .6) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1.2) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.4)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(1.4, -3.5, -7) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(20)), 1)
            if Debounces.on == false then break end
            wait()
        end
        Spawn(function()
            local Parts = {}
            for Y = -5,5 do
                local P = Instance.new("Part",char)
                P.Anchored = true
                P.FormFactor = "Custom"
                P.CanCollide = false
                P.Size = Vector3.new(1,2,1)
                P.TopSurface = "SmoothNoOutlines"
                P.BottomSurface = "SmoothNoOutlines"
                P.BrickColor = BrickColor.new("Really black")
                P.Name = tostring(Y)
                local i = (Y+5)/(10)
                i = 1-math.cos(math.pi*i-(math.pi/2))
                P.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,Y,-15+(i*1.5))*CFrame.Angles(math.rad(Y*5),0,0)
                --[[P.Touched:connect(function(ht)
                    local hit = ht.Parent
                    if hit:FindFirstChild("Humanoid") then
                        hit.Humanoid:TakeDamage(math.random(20,50))
                    end
                end)]]--
        s = Instance.new("Sound",P)
        s.SoundId = "rbxassetid://228343271"
        s.Volume = .7
        s.Pitch = 0.9
        s:Play()
P.Touched:connect(function(ht)
        hit = ht.Parent
        if ht and hit:IsA("Model") then
                if hit:FindFirstChild("Humanoid") then
                    if hit.Name ~= p.Name then
                        --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true]]--
                                    hit:FindFirstChild("Humanoid"):TakeDamage(math.random(1,3))
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                wait(1)
                                --Debounces.Slashed = false
                        --end
                end
                end
        elseif ht and hit:IsA("Hat") then
            if hit.Parent.Name ~= p.Name then
                if hit.Parent:FindFirstChild("Humanoid") then
                        --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true]]--
                                hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random (1,3))
                                hit:FindFirstChild("Humanoid").PlatformStand = true
                                wait(1)
                    --Debounces.Slashed = false
                --end
            end
        end
    end
end)
                Parts[#Parts+1] = P
            end
            local BREAKIT = false
            local CParts = {}
            local Rocks = {}
            local LastPos = nil
            for i = 1,70 do
                for i2,v in pairs(Parts) do
                    v.CFrame = v.CFrame*CFrame.new(0,0,-4)
                    local cf = v.CFrame
                    v.Size = v.Size+Vector3.new(0.4,0.35,0)
                    v.CFrame = cf
                    v.Transparency = v.Transparency+0.02
                    if v.Transparency >= 0.975 then BREAKIT = true end
                    if v.Name == "0" then
                        local Ignore = {}
                        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                            if v.Character ~= nil then
                                Ignore[#Ignore+1] = v.Character
                            end
                        end
                        local ray = Ray.new(v.Position+Vector3.new(0,20,0),Vector3.new(0,-200,0))
                        local Hit,Pos,SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(ray,Ignore)
                        if Hit ~= nil then
                            if #Rocks == 0 then
                                for i = 1,5 do
                                    local P = Instance.new("Part",char)
                                    Rocks[#Rocks+1] = P
                                    P.Anchored = true
                                    P.FormFactor = "Custom"
                                    P.BrickColor = Hit.BrickColor
                                    P.Material = Hit.Material
                                    P.TopSurface = "Smooth"
                                    P.BottomSurface = "Smooth"
                                    P.Size = Vector3.new(1,1,1)*(math.random(500,900)/100)
                                end
                            end
                            for i,P in pairs(Rocks) do
                                P.CFrame = ((CFrame.new(Pos)*(v.CFrame-v.Position))*CFrame.new(math.random(-math.ceil(v.Size.X/2),math.ceil(v.Size.X/2)),0,-math.random(5,8))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(20,50)))
                            end
                            local P = Instance.new("Part",char)
                            CParts[#CParts+1] = {P,tick()}
                            P.Anchored = true
                            P.FormFactor = "Custom"
                            P.BrickColor = Hit.BrickColor
                            P.Material = Hit.Material
                            P.TopSurface = "Smooth"
                            P.BottomSurface = "Smooth"
                            P.Size = Vector3.new(1,1,1)*(math.random(100,300)/100)
                            Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(v.Size.X/2,0,0)
                            Pos = Pos.p
                            P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(20,50)))
                            local P = P:Clone()
                            CParts[#CParts+1] = {P,tick()}
                            P.Parent = char
                            Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(-v.Size.X,0,0)
                            Pos = Pos.p
                            P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,0.25,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,-20)))
                            if LastPos ~= nil then
                                local P = P:Clone()
                                CParts[#CParts+1] = {P,tick()}
                                P.Parent = char
                                P.BrickColor = BrickColor.new("Really black")
                                Pos = CFrame.new(Pos)*(v.CFrame-v.Position)*CFrame.new(v.Size.X/2,0,0)
                                Pos = Pos.p
                                local CFr = (CFrame.new(Pos)*(v.CFrame-v.Position))-Vector3.new(0,0.4,0)
                                P.Size = Vector3.new(v.Size.X-0.25,1,(CFr.p-LastPos.p).Magnitude+0.25)
                                --P.Velocity = Vector3.new(0,-1000,0)
                                P.CFrame = CFrame.new(CFr.p,LastPos.p)*CFrame.new(0,0,-((CFr.p-LastPos.p).Magnitude+0.25)/2)
                            end
                            LastPos = (CFrame.new(Pos)*(v.CFrame-v.Position))-Vector3.new(0,0.4,0)
                        end
                    end
                end
                if BREAKIT then break end
                wait(0.002)
            end
            for i,v in pairs(Rocks) do
                CParts[#CParts+1] = {v,tick()}
            end
            for i,v in pairs(Parts) do
                v:Destroy()
            end
            Parts = nil
            while true do
                local t = tick()
                local p = nil
                for i,v in pairs(CParts) do
                    if t-v[2] > 4 then
                        v[1].Transparency = v[1].Transparency+0.05
                        if v[1].Transparency >= 1 then
                            v[1]:Destroy()
                            CParts[i] = nil
                        end
                    end
                    p = v
                end
                if p == nil then break end
                wait(0.002)
            end
            for i,v in pairs(CParts) do
                v:Destroy()
            end
            CParts = {}
        end)
        for i = 1, 20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.3,.8,-1) *   CFrame.Angles(math.rad(50), math.rad(0), math.rad(-55)), 0.4)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.3,.8,-1) *   CFrame.Angles(math.rad(50), math.rad(0), math.rad(55)), 0.4)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)),0.4)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.6, 0) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.4)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1, -1.4) * CFrame.Angles(math.rad(40), 0, math.rad(0)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1.6, -.9) * CFrame.Angles(math.rad(10), 0, math.rad(0)), 0.4)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(1.4, -3.5, -7) * CFrame.Angles(math.rad(-90), math.rad(-142), math.rad(20)), 1)
            if Debounces.on == false then break end
            wait()
        end
    if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "e" then
    larm.BrickColor = BrickColor.new("Bright red")
    rarm.BrickColor = BrickColor.new("Bright red")
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
        for i = 1, 18 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1.7, 0) * CFrame.Angles(math.rad(90),math.rad(50),math.rad(90)), 0.4)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.4)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0) * CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(0), 0), 0.4)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.4)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.4)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
            wait()
        end
        local HandCF = CFrame.new(char.Absolution.Handle.Position - Vector3.new(0,8.8,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local rng = Instance.new("Part", char.Absolution.Handle)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("Really black")
        rng.CanCollide = true
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.CanCollide = false
        rng.Transparency = 0.35
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = HandCF
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
        rngm.Scale = Vector3.new(1, 1, 2)
            x = Instance.new("Sound", hed)
            x.SoundId = "http://www.roblox.com/asset/?id=169445602"
            x.Looped = false
            x.Pitch = .7
            x.Volume = 1
            x1 = Instance.new("Sound", hed)
            x1.SoundId = "http://www.roblox.com/asset/?id=169445602"
            x1.Looped = false
            x1.Pitch = .7
            x1.Volume = 1
            x:Play()
            x1:Play()
            rngto = rng.Touched:connect(function(ht)
            hit = ht.Parent
            if ht and hit:IsA("Model") then
                    if hit:FindFirstChild("Humanoid") then
                        if hit.Name ~= p.Name then
                            --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    hit:FindFirstChild("Humanoid"):TakeDamage(4)
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -120
                                    --Debounces.Slashed = false
                            --end
                        end
                    end
            elseif ht and hit:IsA("Hat") then
                if hit.Parent.Name ~= p.Name then
                    if hit.Parent:FindFirstChild("Humanoid") then
                           --[[ if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(4)
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -120
                        --Debounces.Slashed = false
                    end
                end
            end    
        end)
                coroutine.wrap(function()
                for i = 1, 60, 2 do
                rngm.Scale = Vector3.new(2 + i*2, 2 + i*2, 1)
                rng.Size = rngm.Scale
                rng.CFrame = HandCF
                rng.Transparency = i/60
                wait()
                end
                wait()
                rng:Destroy()
                end)()
        for i = 1, 18 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90)), 0.4)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.4)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0) * CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(0), 0), 0.4)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.4)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.4)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, 0.2) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
            wait()
        end
        larm.BrickColor = BrickColor.new("Really black")
        rarm.BrickColor = BrickColor.new("Really black")
        x:Destroy()
        x1:Destroy()
    if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
	if key == "y" then
		if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.on = true
            Debounces.NoIdl = true
				for i = 1, 15 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)), 0.2)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
					cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
				x = Instance.new("Sound",char)
				x.SoundId = "rbxassetid://228343271"
				x.Pitch = 1
				x.Volume = .8
				wait(.1)
				x:Play()
				Debounces.on = false
				Debounces.Here = false
				shot = shot + 1
local rng = Instance.new("Part", char)
rng.Anchored = true
rng.BrickColor = BrickColor.new("Really black")
rng.CanCollide = false
rng.FormFactor = 3
rng.Name = "Ring"
rng.Size = Vector3.new(1, 1, 1)
rng.Transparency = 0.35
rng.TopSurface = 0
rng.BottomSurface = 0
rng2 = rng:clone()
rng3 = rng2:clone()
rng4 = rng2:clone()
local rngm = Instance.new("SpecialMesh", rng)
rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = Vector3.new(10, 10, 1)
rngm2 = rngm:clone()
rngm2.Scale = Vector3.new(5, 5, 1)
rngm3=rngm2:clone()
rngm3.Parent = rng3
rngm3.Scale = Vector3.new(8, 8, 1)
rngm4 = rngm2:clone()
rngm4.Parent = rng4
rngm4.Scale = Vector3.new(6, 6, 1)
local bem = Instance.new("Part", char)
bem.Anchored = true
bem.BrickColor = BrickColor.new("Really black")
bem.CanCollide = false
bem.FormFactor = 3
bem.Name = "Beam" .. shot
bem.Size = Vector3.new(1, 1, 1)
bem.Transparency = 0.35
bem.TopSurface = 0
bem.BottomSurface = 0
local bemm = Instance.new("SpecialMesh", bem)
bemm.MeshType = 4
bemm.Scale = Vector3.new(1, 4, 4)
local out = Instance.new("Part", char)
out.Anchored = true
out.BrickColor = BrickColor.new("Really black")
out.CanCollide = false
out.FormFactor = 3
out.Name = "Out"
out.Size = Vector3.new(4, 4, 4)
out.Transparency = 0.35
out.TopSurface = 0
out.BottomSurface = 0
local outm = Instance.new("SpecialMesh", out)
outm.MeshId = "http://www.roblox.com/asset/?id=1033714"
outm.Scale = Vector3.new(4, 4, 4)
local bnd = Instance.new("Part", char)
bnd.Anchored = true
bnd.BrickColor = BrickColor.new("Really black")
bnd.CanCollide = false
bnd.FormFactor = 3
bnd.Name = "Bend"
bnd.Size = Vector3.new(1, 1, 1)
bnd.Transparency = 1
bnd.TopSurface = 0
bnd.BottomSurface = 0
local bndm = Instance.new("SpecialMesh", bnd)
bndm.MeshType = 3
bndm.Scale = Vector3.new(8, 8, 8)
out.CFrame = larm.CFrame * CFrame.new(0, -2.7, 0)
bem.CFrame = out.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(0, 0, 0)
rng.CFrame = out.CFrame * CFrame.Angles(math.rad(90), 0, 0)
rng3.CFrame = rng.CFrame * CFrame.new(0, -.5, 0)
rng4.CFrame = rng3.CFrame * CFrame.new(0, -.5, 0)
Debounces.Shewt = true
coroutine.wrap(function()
for i = 1, 20, 0.2 do
rngm.Scale = Vector3.new(10 + i*2, 10 + i*2, 1)
rngm3.Scale = Vector3.new(8 + i*2, 8 + i*2, 1)
rngm4.Scale = Vector3.new(6 + i*2, 6 + i*2, 1)
rng.Transparency = i/20
rng3.Transparency = 1/16
rng4.Transparency = i/12
wait()
end
wait()
rng:Destroy()
end)()
if Debounces.Shewt == true then
char:WaitForChild("Beam" .. shot).Touched:connect(function(ht)
hit = ht.Parent
if hit:IsA("Model") and hit:findFirstChild("Humanoid") then
if HasntTouched(hit.Name) == true and deb == false then
deb = true
coroutine.wrap(function()
hit:FindFirstChild("Humanoid").PlatformStand = true
hit:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 180
hit:FindFirstChild("Humanoid"):TakeDamage(math.random(24,73))
end)()
table.insert(Touche, hit.Name)
deb = false
end
elseif hit:IsA("Hat") and hit.Parent:findFirstChild("Humanoid") then
if HasntTouched(hit.Parent.Name) == true and deb == false then
deb = true
coroutine.wrap(function()
hit.Parent:FindFirstChild("Humanoid").PlatformStand = true
hit.Parent:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 180
wait(1)
hit.Parent:FindFirstChild("Humanoid").PlatformStand = false
end)()
table.insert(Touche, hit.Parent.Name)
deb = false
for i, v in pairs(Touche) do
print(v)
end
end
end
end)
end
for i = 0, 260, 8 do
bem.Size = Vector3.new(i, 2, 2)
bem.CFrame = larm.CFrame * CFrame.new(0, -4.2 -(i/2), 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(-i/2, 0, 1.2)
bnd.Size = Vector3.new(1,1,1)
bndm.Scale = Vector3.new(8,8,8)
if i % 10 == 0 then
local newRng = rng2:Clone()
newRng.Parent = char
newRng.CFrame = larm.CFrame * CFrame.new(0, -4.2-i, 0) * CFrame.Angles(math.rad(90), 0, 0)
local newRngm = rngm2:clone()
newRngm.Parent=newRng
coroutine.wrap(function()
for i = 1, 10, 0.2 do
newRngm.Scale = Vector3.new(8 + i*2, 8 + i*2, 1)
newRng.Transparency = i/10
wait()
end
wait()
newRng:Destroy()
end)()
end
wait()
end
wait()
Debounces.Shewt = false
bem:Destroy()
out:Destroy()
bnd:Destroy()
Debounces.Ready = false
for i, v in pairs(Touche) do
table.remove(Touche, i)
end
wait()
table.insert(Touche, char.Name)
Debounces.NoIdl = false
if Debounces.CanAttack == false then
Debounces.CanAttack = true
end
end
end
end)
----------------------------------------------------
sidz = {"231917888", "231917845", "231917806"}
ptz = {0.65, 0.7, 0.75, 0.8, 0.95, 1}
mouse.KeyDown:connect(function(key)
    if key == "f" then
    larm.BrickColor = BrickColor.new("Bright red")
    rarm.BrickColor = BrickColor.new("Bright red")
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.on = true
            Debounces.NoIdl = true
                for i = 1, 10 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-34)), 0.4)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(34)), 0.4)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2)*CFrame.Angles(math.rad(16),math.rad(0),0), 0.4)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(20), math.rad(0), 0), 0.4)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1.4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://"..sidz[math.random(1,#sidz)]
                z.Pitch = ptz[math.random(1,#ptz)]
                z.Volume = 1
                z1 = Instance.new("Sound",char)
                z1.SoundId = z.SoundId
                z1.Pitch = z.Pitch
                z1.Volume = 1
                wait(1)
                z:Play()
                z1:Play()
                Stomp()
                for i = 1, 20 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .4)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(28)), 0.6)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, .4)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(-28)), 0.6)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, -.2)*CFrame.Angles(math.rad(-26),math.rad(0),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, -.6) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(30), 0, math.rad(0)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2.8, -1.4) * CFrame.Angles(math.rad(30), 0, math.rad(0)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
        if Debounces.CanAttack == false then
            Debounces.CanAttack = true
            Debounces.on = false
            Debounces.NoIdl = false
            larm.BrickColor = BrickColor.new("Really black")
            rarm.BrickColor = BrickColor.new("Really black")
            end
        end
    end
end)    
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "g" then
    larm.BrickColor = BrickColor.new("Bright red")
    rarm.BrickColor = BrickColor.new("Bright red")
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
        chrg = lleg.Touched:connect(function(ht)
        hit = ht.Parent
            if ht and hit:IsA("Model") then
                    if hit:FindFirstChild("Humanoid") then
                        if hit.Name ~= p.Name then
                            --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    hit:FindFirstChild("Humanoid"):TakeDamage(2)
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -70
                                    --Debounces.Slashed = false
                            --end
                        end
                    end
            elseif ht and hit:IsA("Hat") then
                if hit.Parent.Name ~= p.Name then
                    if hit.Parent:FindFirstChild("Humanoid") then
                           --[[ if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -70
                        --Debounces.Slashed = false
                    end
                end
            end    
        end)
        for i = 1, 14 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)), 0.5)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.6, .9, -.4)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.5)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, -.2)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)), 0.5)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.5)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.8, -3, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(15)), 0.5)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(15)), 0.5)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.3, -1.1) * CFrame.Angles(math.rad(-60), math.rad(-90), math.rad(0)), 0.9)
            if Debounces.on == false then break end
            wait()
        end
        charge()
        z = Instance.new("Sound",char)
        z.SoundId = "rbxassetid://200632875"
        z.Volume = 1
        z.Pitch = .8
        z1 = Instance.new("Sound",char)
        z1.SoundId = "rbxassetid://200632875"
        z1.Volume = 1
        z1.Pitch = .9
        z:Play()
        z1:Play()
        wait(1)
        z:Destroy()
        z1:Destroy()
        chrg:disconnect()
        if Debounces.CanAttack == false then
            Debounces.CanAttack = true
            Debounces.on = false
            Debounces.NoIdl = false
            larm.BrickColor = BrickColor.new("Really black")
            rarm.BrickColor = BrickColor.new("Really black")
            end
        end
    end
end)
----------------------------------------------------
pt = {0.7, 0.8, 0.9}
mouse.KeyDown:connect(function(key)
    if key == "h" then
        if Debounces.CanJoke == true then
            Debounces.CanJoke = false
            u = Instance.new("Sound")
            u.SoundId = "http://www.roblox.com/asset/?id=138199573"
            u.Parent = char
            u.Looped = false
            u.Pitch = pt[math.random(1,#pt)]
            u.Volume = 1
            u2 = Instance.new("Sound")
            u2.SoundId = "http://www.roblox.com/asset/?id=138199573"
            u2.Parent = char
            u2.Looped = false
            u2.Pitch = u.Pitch
            u2.Volume = 1
            wait(.01)
            u:Play()
            u2:Play()
            wait(6)
            u:Destroy()
            u2:Destroy()
            if Debounces.CanJoke == false then
                Debounces.CanJoke = true
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "j" then
			if Debounces.CanJoke == true then
				Debounces.CanJoke = false
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://135017755"
                z.Pitch = .76
                z.Volume = 1
				wait()
				z:Play()
				wait(6)
				z:Destroy()
			if Debounces.CanJoke == false then
				Debounces.CanJoke = true
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "k" then
			if Debounces.CanJoke == true then
				Debounces.CanJoke = false
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://135017578"
                z.Pitch = .76
                z.Volume = 1
				wait()
				z:Play()
				wait(4)
				z:Destroy()
			if Debounces.CanJoke == false then
				Debounces.CanJoke = true
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "x" then
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
            Debounces.ks = true
        for i = 1, 10 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.6)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.7,.9,-.5)*CFrame.Angles(math.rad(40),math.rad(0),math.rad(20)), 0.6)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.4)*CFrame.Angles(math.rad(-26),math.rad(0),0), 0.6)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.6)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.6)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2.7, .6) * CFrame.Angles(math.rad(-70), math.rad(0), math.rad(0)), 0.6)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
            if Debounces.on == false then break end
            wait()
        end
        z = Instance.new("Sound",hed)
        z.SoundId = "rbxassetid://169445092"
        z.Volume = 1
        wait(0.1)
        z:Play()
        kik = rleg.Touched:connect(function(ht)
        hit = ht.Parent
            if ht and hit:IsA("Model") then
                    if hit:FindFirstChild("Humanoid") then
                        if hit.Name ~= p.Name then
                            --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                    z.Volume = 1
                                    z:Play()
                                    Debounces.ks=false
                                    end
                                    hit:FindFirstChild("Humanoid"):TakeDamage(2)
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -70
                            --Debounces.Slashed = false
                        --end
                    end
                end
            elseif ht and hit:IsA("Hat") then
                if hit.Parent.Name ~= p.Name then
                    if hit.Parent:FindFirstChild("Humanoid") then
                           --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
                                    hit:FindFirstChild("Humanoid").PlatformStand = true
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -70
                            --Debounces.Slashed = false
                        --end
                    end
                end
            end    
        end)
        for i = 1, 8 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(-20)), 0.7)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,.2)*CFrame.Angles(math.rad(8),math.rad(0),0), 0.7)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(16), math.rad(0), 0), 0.7)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(-16), math.rad(0), math.rad(0)), 0.7)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2.6, -1.4) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)), 0.7)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
            if Debounces.on == false then break end
            wait()
        end
        kik:disconnect()
        if Debounces.CanAttack == false then
            Debounces.CanAttack = true
            Debounces.on = false
            Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "c" then
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
            SIDZ = {"231917744", "231917742"}
            PTZ = {0.7, 0.8, 0.9, 1}
                for i = 1, 20 do
                    wait()
                        for i,v in pairs(char.Absolution:children()) do
                    if v:IsA("Part") or v:IsA("WedgePart") then
                        v.Transparency = v.Transparency + 0.05
                        end
                    end
                end
                function FindNearestTorso(Position,Distance,SinglePlayer)
                    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
                        local List = {}
                        for i,v in pairs(workspace:GetChildren())do
                            if v:IsA("Model")then
                                if v:findFirstChild("Torso")then
                                    if v ~= char then
                                        if(v.Torso.Position -Position).magnitude <= Distance then
                                            table.insert(List,v)
                                        end 
                                    end 
                                end 
                            end 
                        end
                    return List
                end
                GroundPound()
                for i = 1, 5 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                GroundPound()
                for i = 1, 5 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                GroundPound()
                for i = 1, 5 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                GroundPound()
                for i = 1, 5 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                GroundPound()
                for i = 1, 5 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                GroundPound()
                for i = 1, 5 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.7)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.7)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                for i = 1, 18 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-10)), 0.4)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(10)), 0.4)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2)*CFrame.Angles(math.rad(16),math.rad(0),0), 0.4)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(20), math.rad(0), 0), 0.4)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1.4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
                for i,v in pairs(FindNearestTorso(torso.CFrame.p,25))do
                    if v:FindFirstChild('Humanoid') then
                        v.Humanoid:TakeDamage(math.random(20,60))
                        v.Humanoid.PlatformStand = true
                        v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
                    end
                end
                x = Instance.new("Sound",char)
                x.SoundId = "rbxassetid://"..SIDZ[math.random(1,#SIDZ)]
                x.Pitch = PTZ[math.random(1,#PTZ)]
                x.Volume = 1
                wait(0.1)
                x:Play()
                Crater(hed,20)
                for i = 1, 14 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.4, 3.2, -.5)*CFrame.Angles(math.rad(160),math.rad(0),math.rad(-10)), 0.6)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.4, 3.2, -.5)*CFrame.Angles(math.rad(160),math.rad(0),math.rad(10)), 0.6)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2)*CFrame.Angles(math.rad(16),math.rad(0),0), 0.6)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -5, 0) * CFrame.Angles(math.rad(-90), math.rad(0), 0), 0.6)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, .4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, .4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.6)
                    cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.5, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
                    if Debounces.on == false then break end
                    wait()
                end
            if Debounces.CanAttack == false then
                Debounces.CanAttack = true
                Debounces.on = false
                Debounces.NoIdl = false
                for i = 1, 20 do
                    wait()
                        for i,v in pairs(char.Absolution:children()) do
                    if v:IsA("Part") or v:IsA("WedgePart") then
                        v.Transparency = v.Transparency - 0.05
                        end
                    end
                end
            end
        end
    end
end)
----------------------------------------------------176349813
mouse.KeyDown:connect(function(key)
    if key == "b" then
        hum.WalkSpeed = 0.01
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
            for i = 1,20 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(75), 0, math.rad(-30)), 0.1)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(75), 0, math.rad(30)), 0.1)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0) * CFrame.Angles(math.rad(-20), math.rad(0), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.1)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles (math.rad(30), 0, math.rad(-5)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, 0) * CFrame.Angles (math.rad(30), 0, math.rad(5)), 0.1)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
            if Debounces.on == false then break end
            wait()
            end
        wait(1)
        v = Instance.new("Sound")
        v.SoundId = "rbxassetid://181384451"
        v.Parent = char
        v.Looped = false
        v.Pitch = 1.04
        v.Volume = 1
        wait(.01)
        v:Play()
        
        if Daytime == true then
            Daytime = false
            l.TimeOfDay = 24
        else
            Daytime = true
            l.TimeOfDay = 12
            l.OutdoorAmbient = Color3.new(0.498039, 0.498039, 0.498039)
        end
        
            local Shockwave = function()
                local rng1 = Instance.new("Part", char)
                rng1.Anchored = true
                rng1.BrickColor = BrickColor.new("Really black")
                rng1.CanCollide = false
                rng1.FormFactor = 3
                rng1.Name = "Ring"
                rng1.Size = Vector3.new(1, 1, 1)
                rng1.Transparency = 0.35
                rng1.TopSurface = 0
                rng1.BottomSurface = 0
                local rngm1 = Instance.new("SpecialMesh", rng)
                rngm1.MeshId = "http://www.roblox.com/asset/?id=3270017"
                rngm1.Scale = Vector3.new(10, 10, 1)
                rng1.CFrame = CFrame.new(0, -2, 0) * CFrame.Angles(0, 0, 0)
                local Wave = Instance.new("Part", game.Workspace--[[?]])
                Wave.Name = "Shockwave"
                Wave.BrickColor = BrickColor.new("Really black")
                Wave.Size = Vector3.new(1, 1, 1)
                Wave.Shape = "Ball"
                Wave.CanCollide = false
                Wave.Anchored = true
                Wave.TopSurface = 0
                Wave.BottomSurface = 0
                Wave.Touched:connect(function(hit)
                    if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        local Occlude = true
                        local NotOccludes = {
                            char.Name;
                            "Wings";
                            "Scythe";
                            "Thingy";
                            "Thingy2"; -- put all of the names in a table pls
                        }
                        for i,v in pairs(NotOccludes) do
                            if hit.Parent.Name == v then
                                Occlude = false
                            end
                        end
                        --if hit.Parent.Name ~= char.Name and hit.Name ~= "Wings" and hit.Name ~= "Scythe" and hit.Name     ~= "Thingy" and hit.Name ~= "Thingy2" and hit.Parent.Name ~= "Wings" and hit.Parent.Name ~= "Scythe" and     hit.Parent.Name ~= "Thingy" and hit.Parent.Name ~= "Thingy2" then
                        if Occlude then
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 1
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * -120
                        end
                    end
                end)
                
                Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
                
                coroutine.wrap(function()
                    for i = 1, 20, 0.2 do
                        rngm1.Scale = Vector3.new(10 + i*2, 10 + i*2, 1)
                        rng1.Transparency = i/20
                    wait()
                    end
                    wait()
                    rng1:Destroy()
                end)()
                
                Delay(0, function()

                    if Daytime == false then
                       for i = 1, 50, 1 do
                            Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 50
                            Wave.Transparency = t
                            wait()
                        end
                    else
                        for i = 1, 50, 1 do
                            Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 50
                            Wave.Transparency = t
                            wait()
                        end
                    end
                    Wave:Destroy()
                end)
                Delay(0, function()
                    while wait() do
                        if Wave ~= nil then
                            Wave.CFrame = char.Torso.CFrame
                        else
                            break
                        end
                    end
                end)
            end
        Shockwave() 
        for i = 1, 15 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3.2, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(-130)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3.2, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(70)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2) * CFrame.Angles(math.rad(45), math.rad(30), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(30), math.rad(20),     math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-40)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
            if Debounces.on == false then break end
            wait()
        end
        for i = 1, 15 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(-70)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(130)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2) * CFrame.Angles(math.rad(45), math.rad(-30), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(30), math.rad(-20),     math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(40)), 0.1)
            if Debounces.on == false then break end
            wait()
        end
        for i = 1, 15 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3.2, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(-130)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3.2, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(70)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2) * CFrame.Angles(math.rad(45), math.rad(30), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(30), math.rad(20),     math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-40)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
            if Debounces.on == false then break end
            wait()
        end
        for i = 1, 15 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(-70)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(130)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2) * CFrame.Angles(math.rad(45), math.rad(-30), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(30), math.rad(-20),     math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(40)), 0.1)
            if Debounces.on == false then break end
            wait()
        end
        for i = 1, 15 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3.2, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(-130)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3.2, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(70)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2) * CFrame.Angles(math.rad(45), math.rad(30), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(30), math.rad(20),     math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-40)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
            if Debounces.on == false then break end
            wait()
        end
        for i = 1, 15 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(-70)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0) * CFrame.Angles(math.rad(120), math.rad(0),     math.rad(130)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2) * CFrame.Angles(math.rad(45), math.rad(-30), 0), 0.1)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(math.rad(30), math.rad(-20),     math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(40)), 0.1)
            if Debounces.on == false then break end
            wait()
        end
        wait(1.4)
        Debounces.NoIdl = false
        hum.WalkSpeed = 5
        Debounces.on = false
        wait()
        if Debounces.CanAttack == false then
            Debounces.CanAttack = true
            v:Destroy()
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "m" then
hum.WalkSpeed = 0
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
            --[[x = Instance.new("Sound",char)
            x.SoundId = "http://www.roblox.com/asset/?id=169445572"
            x.Looped = false
            x.Pitch = 1.1
            x.Volume = 1
            x:Play()
            x2 = Instance.new("Sound",char)
            x2.SoundId = "http://www.roblox.com/asset/?id=169380495"
            x2.Looped = false
            x2.Pitch = .7
            x2.Volume = 1
            wait(.1)
            x:Play()
            x2:Play()
        for i = 1, 20 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,0.6,-.2) *CFrame.Angles (math.rad    (45),math.rad(0),math.rad(32)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,1,0)*CFrame.Angles(math.rad     (0),math.rad(0),math.rad(-20)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.4)*CFrame.Angles(math.rad (-    8),math.rad(-40), math.rad(-8)),0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -3.2, 0) * CFrame.Angles  (math.rad    (-50), math.rad(40), math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.8, .4, -1.6) * CFrame.Angles  (math.rad    (30), 0, math.rad(20)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.6, -2, 0) * CFrame.Angles  (math.rad(-    10), math.rad(-40), math.rad(0)), 0.2)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.3, -1.1) * CFrame.Angles(math.rad(-60), math.rad(-90), math.rad(0)), 0.4)
            if Debounces.on == false then break end
                wait()
            x:Destroy()
            x2:Destroy()
            end
            wait(1)]]--
        local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("Really black")
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0.35
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.Position = torso.Position - Vector3.new(0,2,0)
        rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
        rngm.Scale = Vector3.new(1, 1, 2)
            x = Instance.new("Sound",char)
            x.SoundId = "http://www.roblox.com/asset/?id=169445602"
            x.Looped = false
            x.Pitch = .7
            x.Volume = 1
            x:Play()
                coroutine.wrap(function()
                for i = 1, 60, 2 do
                rngm.Scale = Vector3.new(2 + i*2, 2 + i*2, 1)
                rng.Transparency = i/60
                wait()
                end
                wait()
                rng:Destroy()
                end)()
            hum.WalkSpeed = 50
        BV = Instance.new("BodyVelocity", torso)
        BV.maxForce = Vector3.new(0,200000,0)
        BV.P = 100000
        BV.velocity = Vector3.new(0,800,0)
    for i = 1, 20 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0)*CFrame.Angles(math.rad(20),math.rad(0),     math.rad(0)),0.7)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-16),     math.rad(0), math.rad(0)), 0.7)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(40), 0,     math.rad(-20)), 0.7)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(-40),     math.rad(0), math.rad(20)), 0.7)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -2, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.7)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, 0, -2) * CFrame.Angles(math.rad(0), 0, 0), 0.7)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
x:Destroy()
BV:Destroy()
    --[[for i = 1, 30 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-14),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-16), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-10)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(10)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -1) * CFrame.Angles(math.rad(20), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.6) * CFrame.Angles(math.rad(-30), 0, 0),     0.3)
        if Debounces.on == false then break end
        wait()
    end]]--
if (torso.Velocity*Vector3.new(1, 1, 1)).magnitude > 1 then
    for i = 1, 30 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0)*CFrame.Angles(math.rad(-14),math.rad(0), math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
        if Debounces.on == false then break end
        wait()
    end
end
Debounces.on = false
Debounces.NoIdl = false
local ry,ht,ps=nil,nil,nil
while ht==nil do
	ry,ht,ps=newRay(root.CFrame*CFrame.new(0,-2,0),root.CFrame*CFrame.new(0,-3,0),4.1,{char})
	wait()
end
z = Instance.new("Sound",char)
z.SoundId = "rbxassetid://142070127"
z.Volume = 1
wait(.1)
z:Play()
Landing()
hum.WalkSpeed = 8
if Debounces.CanAttack == false then
Debounces.CanAttack = true
end
end
end
end)
----------------------------------------------------
Grab = false
mouse.KeyDown:connect(function(key)
    if key == "z" then
    larm.BrickColor = BrickColor.new("Bright red")
    rarm.BrickColor = BrickColor.new("Bright red")
        Debounces.on = true
        Debounces.NoIdl = true
        if Grab == false then
        gp = nil
        con1=larm.Touched:connect(function(hit) -- this is grab
            ht = hit.Parent
            hum1=ht:FindFirstChild('Humanoid')
            if hum1 ~= nil then
                hum1.PlatformStand=true
                gp = ht
                Grab = true
                asd=weld5(larm,ht:FindFirstChild("Torso"),CFrame.new(0,-3.3,0),CFrame.new(0,0,0))
                asd.Parent = larm
                asd.Name = "asd"
                asd.C0=asd.C0*CFrame.Angles(math.rad(-90),0,0)
            elseif hum1 == nil then
                con1:disconnect()
                wait() return
            end
        end)
        for i = 1, 18 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(36)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.65,.9,-.5)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(20)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.8, 0) * CFrame.Angles(math.rad(-60), math.rad(0), 0), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, -.6) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, -.6) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)), 0.2)
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.3, -1.1) * CFrame.Angles(math.rad(-60), math.rad(-90), math.rad(0)), 0.9)
            if Debounces.on == false then break end
            wait()
        end
    con1:disconnect()
    Debounces.on = false
    Debounces.NoIdl = false
    elseif Grab == true then
        Grab = false
    for i = 1, 20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.2)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.6, .9, -.4)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-20)), 0.1)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.2)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
        if Debounces.on == false then end
        wait()
    end
        if gp ~= nil then
        for i,v in pairs(larm:GetChildren()) do
            if v.Name == "asd" and v:IsA("Weld") then
                v:Remove()
            end
        end
        bv = Instance.new("BodyVelocity",gp:FindFirstChild("Torso"))
        bv.maxForce = Vector3.new(400000, 400000, 400000)
        bv.P = 125000
        bv.velocity = char.Head.CFrame.lookVector * 200
        for i = 1, 12 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.6, .9, -.75)*CFrame.Angles(math.rad(30),math.rad(0),math.rad(20)), 0.5)
            if Debounces.on == false then end
            wait()
        end
        ht=nil
        Spawn(function()
            wait(0.5)
            bv:Destroy()
        end)
        Debounces.on = false
        Debounces.NoIdl = false
        elseif ht == nil then wait()
        Grab = false
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 21
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 5
    end
end)
----------------------------------------------------
local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local ffing = false
----------------------------------------------------
--[[x = Instance.new("Sound", char)
x.SoundId = "http://www.roblox.com/asset/?id=187922823"
x.Looped = true
x.Volume = 1
x.Pitch = 1
local footsteps = false]]--
-------------------------------
game:GetService("RunService").RenderStepped:connect(function()
--[[if char.Humanoid.Jump == true then
jump = true
else
jump = false
end]]
char.Humanoid.FreeFalling:connect(function(f)
if f then
ffing = true
else
ffing = false
end
end)
sine = sine + change
if jumpn == true then
animpose = "Jumping"
elseif ffing == true then
animpose = "Freefalling"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
animpose = "Idle"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
animpose = "Walking"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
animpose = "Running"
end
if animpose ~= lastanimpose then
sine = 0
if Debounces.NoIdl == false then
if animpose == "Idle" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
end
elseif animpose == "Walking" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9, 0)*CFrame.Angles(0, math.rad(1), math.rad(-10)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(-8), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-4), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, -.05) * CFrame.Angles(math.rad(-18), 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, -.05) * CFrame.Angles(math.rad(-18), 0, 0), .4)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
end
elseif animpose == "Running" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .5) * CFrame.Angles(math.rad(-10), math.rad(-40), math.rad(50)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1.2, 0-1*math.cos(sine/4)/2)*CFrame.Angles(math.rad(50-80*math.cos(sine/8)/2), math.rad(0), math.rad(0-70*math.cos(sine/8)/2)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(6+8*math.cos(sine/4)/1.8), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2+0.2*math.cos(sine/4)/2, 0) * CFrame.Angles(math.rad(-14+4*math.cos(sine/4)/2), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3-0.44*math.cos(sine/8)/2.4, -.15 + math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + -math.sin(sine/8)/1.7, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3+0.44*math.cos(sine/8)/2.4, -.15 + -math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + math.sin(sine/8)/1.7, 0, 0), .4)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
end
wait()
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
if stanceToggle == "Normal" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(88+2*math.cos(sine/14)),math.rad(0),math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(50),math.rad(-30),math.rad(-40-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(40),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(-40), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.15, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.15, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
elseif stanceToggle == "Sitting" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0) * CFrame.Angles(math.rad(100-1*math.cos(sine/14)), math.rad(0), math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2, .9, -1)*CFrame.Angles(math.rad(78+1*math.cos(sine/14)), math.rad(0), math.rad(50)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, -.3) * CFrame.Angles(math.rad(-14+1*math.cos(sine/14)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -3, 0) * CFrame.Angles(math.rad(-10+1*math.cos(sine/14)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1, -2) * CFrame.Angles(math.rad(-10-1*math.cos(sine/14)), 0, 0), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, .6) * CFrame.Angles(math.rad(-50-1*math.cos(sine/14)), 0, 0), 0.2)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
end
elseif animpose == "Walking" then
if stanceToggle == "Normal" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9+.1*math.cos(sine/7), 0) * CFrame.Angles(math.rad(90+2*math.cos(sine/7)), math.rad(0), math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9+.1*math.cos(sine/7), -math.sin(sine/14)/2)*CFrame.Angles(math.sin(sine/14)/4, math.rad(1) + -math.sin(sine/14)/2, math.rad(-30)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(-8+2*math.cos(sine/7)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2+0.1*math.cos(sine/7), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/7)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3-0.3*math.cos(sine/14)/2, -.05 + math.sin(sine/14)/2) * CFrame.Angles(math.rad(-18) + -math.sin(sine/14)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3+0.3*math.cos(sine/14)/2, -.05 + -math.sin(sine/14)/2) * CFrame.Angles(math.rad(-18) + math.sin(sine/14)/2.3, 0, 0), .4)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -1.1) * CFrame.Angles(math.rad(-90), math.rad(-110), math.rad(-70)), 1)
end
elseif animpose == "Running" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .5) * CFrame.Angles(math.rad(-10-20*math.cos(sine/4)/2), math.rad(-40+10*math.cos(sine/4)/2), math.rad(50-10*math.cos(sine/4)/2)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, .5)*CFrame.Angles(math.rad(10+20*math.cos(sine/4)/2), math.rad(40-10*math.cos(sine/4)/2), math.rad(-50+10*math.cos(sine/4)/2)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(6+6*math.cos(sine/4)/1.8), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2+0.2*math.cos(sine/4)/2, 0) * CFrame.Angles(math.rad(-14+10*math.cos(sine/4)/2), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3-0.44*math.cos(sine/8)/2.4, -.15 + math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + -math.sin(sine/8)/1.7, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3+0.44*math.cos(sine/8)/2.4, -.15 + -math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + math.sin(sine/8)/1.7, 0, 0), .4)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.85, -.9) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0)), 1)
end
end
--[[if animpose == "Walking" then
    if footsteps == false then
        x:Play()
        footsteps = true
    end
    x.Pitch = 1.1
elseif animpose == "Idle" then
    x:Stop()
    footsteps = false
elseif animpose == "Running" then
    x.Pitch = 1.2
    if footsteps == false then
        x:Play()
        footsteps = true
    end
end]]--
end)
end}
module[2] = {"DarkBlade",function()
script.Parent = nil
ply = game:GetService("Players").LocalPlayer
local char = ply.Character
local torso = char.Torso
local ls = torso["Left Shoulder"]
local rs = torso["Right Shoulder"]
local neck = torso.Neck
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
suita = false
rw = Instance.new("Weld")
script.Parent = nil
attacking = false
holding = false
ndam = 1
dam = ndam
damage = 1
nmind,nmaxd = 20,40
mind,maxd = nmind,nmaxd
wt = 0.3
function sd(a,b)
mind,maxd = a,b
if a == nil and b == nil then
mind,maxd = nmind,nmaxd
end
end
bm = Instance.new("FileMesh")
bm.MeshId = "http://www.roblox.com/asset/?id=20329976"
rm = Instance.new("FileMesh")
rm.MeshId = "http://www.roblox.com/asset/?id=3270017"
g = Instance.new("BodyGyro",nil)
g.maxTorque = Vector3.new(4e+005,4e+005,4e+005)
g.P = 20e+003
g.cframe = char.Head.CFrame
local function damage(hit)
if attacking == true then
if hit.Parent ~= char then
for i,v in pairs(hit.Parent:GetChildren()) do
if v:IsA("Humanoid") then
if v:FindFirstChild("Value") == nil then
damage = math.random(mind,maxd)
v.Health = v.Health-damage
showdam(v.Torso,damage)
game:GetService("Debris"):AddItem(Instance.new("BoolValue",v),wt)
end
end
end
end
end
end
local function damage2(hit,a,b,c)
if hit.Parent ~= char then
for i,v in pairs(hit.Parent:GetChildren()) do
if v:IsA("Humanoid") then
if v:FindFirstChild("Value") == nil then
damage = math.random(a,b)
v.Health = v.Health-damage
showdam(v.Torso,damage)
game:GetService("Debris"):AddItem(Instance.new("BoolValue",v),c)
end
end
end
end
end
function showdam(tar,a)
bbg = Instance.new("BillboardGui",tar)
bbg.Adornee = tar
bbg.StudsOffset = Vector3.new(0,4.5,0)
bbg.Size = UDim2.new(0,100,0,50)
il = Instance.new("ImageLabel",bbg)
il.Size = UDim2.new(1,0,1,0)
il.Image = "http://www.roblox.com/asset/?id=31884718"
il.BackgroundTransparency = 1
box = Instance.new("TextLabel",bbg)
box.BackgroundTransparency = 1
box.Size = UDim2.new(1,0,1,0)
box.FontSize = 9
box.Text = tostring(a)
box.TextColor3 = Color3.new(1,0,0)
box.ZIndex = 5
game:GetService("Debris"):AddItem(bbg,wt)
end
function ss(pitch,sound)
local SlashSound = Instance.new("Sound")
if sound == nil then
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound:Play()
else SlashSound.SoundId = sound
end
SlashSound.Parent = m
SlashSound.Volume = .7 
SlashSound.Pitch = pitch
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function lock(a)
if a == 1 then
rw.Parent = torso
rw.Part0 = rs.Part0
rw.Part1 = rs.Part1
rw.C0 = rs.C0
rw.C1 = rs.C1
rs.Parent = nil
elseif a == 0 then
rs.Parent = torso
rw.Parent = nil
end
end
script.Parent = nil
m = Instance.new("Model",char)
hdl = Instance.new("Part",m)
hdl.TopSurface,hdl.BottomSurface = 0,0
hdl.formFactor = "Custom"
hdl.Size = Vector3.new(0.3,2,0.1)
hdl.Color = Color3.new(0,0,1)
p1 = hdl:Clone()
p1.Parent = m
p1.Size = Vector3.new(2,6,0.1)
p1.Color = Color3.new(0,0,0)
p1.Name = "p1"
p2 = Instance.new("WedgePart",m)
p2.TopSurface,hdl.BottomSurface = 0,0
p2.formFactor = "Custom"
p2.Size = Vector3.new(0.1,2,2)
p2.Color = p1.Color
p2.Name = "p2"
w = Instance.new("Weld",m)
w.Part0,w.Part1 = p1,hdl
w.C1 = CFrame.new(0,hdl.Size.y/2+p1.Size.y/2-0.05,0)
w = Instance.new("Weld",m)
w.Part0,w.Part1 = p2,p1
w.C1 = CFrame.new(0,p1.Size.y/2+p2.Size.y/2-0.05,0) * CFrame.Angles(0,math.pi/2,0)
f = Instance.new("Fire",p1)
f.Size = 10
f.Color = Color3.new(0,0,1)
f.SecondaryColor = Color3.new(0.5,0.5,0.5)
p1.Touched:connect(damage) p2.Touched:connect(damage)
Instance.new("CylinderMesh",hdl)
hpos = CFrame.new(0,-larm.Size.y/2,0) * CFrame.Angles(-math.pi/2,-math.pi/2,0)
tpos = CFrame.new(0,0,torso.Size.z/2) * CFrame.Angles(0,0,math.pi/4)
spos = CFrame.new(0,-larm.Size.y/2-hdl.Size.y/2+0.5,0) * CFrame.Angles(0,0,-math.pi)
hw = Instance.new("Weld",hdl)
hw.Part0 = hdl
hw.Part1 = torso
hw.C1 = tpos
function ang(x,y,z)
return CFrame.Angles(math.rad(x)*s,math.rad(y)*s,math.rad(z)*s)
end
s = 20
function wield(a)
if a == 1 then
for i = 1,170,s do
wait()
rw.C0 = rw.C0 * ang(0,0,1)
end
hw.Part1,hw.C1 = rarm,hpos
for i = 1,170/2,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
elseif a == 0 then
for i = 1,170/2,s do
wait()
rw.C0 = rw.C0 * ang(0,0,1)
end
hw.Part1,hw.C1 = torso,tpos
for i = 1,170,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
end
end
h = Instance.new("HopperBin",ply.Backpack)
h.Name = "Sode No konayuki"
tim = 0
function gui(a)
if a == 1 then
g = Instance.new("ScreenGui",ply.PlayerGui)
g.Name = "Charging"
gu = ply.PlayerGui:FindFirstChild("Charging")
lab = Instance.new("TextLabel",g)
lab.Size = UDim2.new(0.05,0,0.05)
lab.Position = UDim2.new(0,0,0.5,0)
lab.BackgroundTransparency = 0.3
lab.BackgroundColor = BrickColor.new("Royal purple")
lab.Name = "label"
elseif a == 2 then
tim = tim+0.1
gu:FindFirstChild("label").Text = tim
elseif a == 3 then
gu:Remove()
end
end
function att()
attacking = true
r = 3
for i = 1,60,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
gui(1)
holding = true
while holding == true do wait(0.2) gui(2) end
gui(3)
for i = 1,360,20 do
local c = Instance.new("Part",m)
c.TopSurface = 0
c.BottomSurface = 0
c.FormFactor = "Custom"
c.Size = Vector3.new(0.5,0.5,0.5)
c.Transparency = 0.5
c.BrickColor = BrickColor.new("Bright red")
Instance.new("Sparkles",c)
cc = (p2.CFrame * CFrame.new(0,p2.Size.y/2,0)).p
c.CFrame = CFrame.new(cc) + Vector3.new(math.cos(math.rad(i))*r,0,math.sin(math.rad(i))*r)
c.CFrame = CFrame.new(c.Position,cc)
Instance.new("SpecialMesh",c).MeshType = 3
b = Instance.new("BodyVelocity",c)
b.maxForce = Vector3.new() * math.huge
b.velocity = c.CFrame.lookVector * -100
delay(tim,function()
e = Instance.new("Explosion",Workspace)
e.BlastPressure = 0
e.Position = c.Position
e.Hit:connect(function(hit) damage2(hit,30,40,0.035) end)
c:Remove()
end)
end
for i = 1,60,s do
wait()
rw.C0 = rw.C0 * ang(0,0,1)
end
attacking = false
tim = 0
end
function att2(tar,pos)
o = 3
base = Instance.new("CFrameValue",nil)
base.Value = torso.CFrame
if tar ~= nil then
local mag = (base.Value.p-pos).magnitude
local unit = (base.Value.p-pos).unit
for i = 1,mag*2,o do
wait()
local c = Instance.new("Part",m)
c.TopSurface = 0
c.BottomSurface = 0
c.formFactor = "Custom"
c.Anchored = true
c.Size = Vector3.new(0.5,0.5,0.5)
c.Transparency = 0.5
c.BrickColor = BrickColor.new("Navy blue")
c.Touched:connect(function(hit) damage2(hit,10,20,0.2) end)
c.CFrame = base.Value - unit*i*c.Size.z
Instance.new("Fire",c).Color = Color3.new(1,0,0)
game:GetService("Debris"):AddItem(c,0.5)
end
end
end
function demon()
holding = true
m2 = Instance.new("Model",char)
mp = Instance.new("Part")
mp.TopSurface = 0
mp.BottomSurface = 0
mp.formFactor = "Custom"
mp.Transparency = 1
mp.CanCollide = false
--CLAWS--
cl1 = mp:Clone()
cl1.Parent = m2
cl1.Size = Vector3.new(larm.Size.x,larm.Size.z,2.5)
cl1.Color = Color3.new(1,0,0)
mesh = Instance.new("FileMesh",cl1)
mesh.MeshId = "http://www.roblox.com/asset/?id=10681506"
cl2 = cl1:Clone()
cl2.Parent = m2
w = Instance.new("Weld",m2)
w.Part0,w.Part1 = cl1,rarm
w.C1 = CFrame.new(0,-rarm.Size.y/2-cl1.Size.y/2,0) * CFrame.Angles(math.pi/2,0,0)
w = Instance.new("Weld",m2)
w.Part0,w.Part1 = cl2,larm
w.C1 = CFrame.new(0,-rarm.Size.y/2-cl1.Size.y/2,0) * CFrame.Angles(math.pi/2,0,math.pi)
-------------
----WINGS-----
wing = mp:Clone()
wing.Parent = m2
wing.Size = Vector3.new(3,1,0.3)
wing.Color = Color3.new(0,0,0)
mesh = Instance.new("FileMesh",wing)
mesh.MeshId = "http://www.roblox.com/asset/?id=19367744"
w = Instance.new("Weld",m2)
w.Part0,w.Part1 = wing,torso
w.C1 = CFrame.new(0,torso.Size.y/4,torso.Size.z*1.2)
--------------------
for i = 1,0,-0.05 do
wait()
for _,v in pairs(m2:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency = i
end
end
end
local speed = Instance.new("NumberValue",nil)
speed.Value = char.Humanoid.WalkSpeed
char.Humanoid.WalkSpeed = 100
while holding == true do
for i = 0,0.5,0.05 do
wait()
for _,v in pairs(m2:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency = i
end
end
end
for _,v in pairs(char:GetChildren()) do
if v:IsA("Humanoid") then v.Health = v.Health + 5
end
end
for i = 0.5,0,-0.05 do
wait()
for _,v in pairs(m2:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency = i
end
end
end
end
char.Humanoid.WalkSpeed = speed.Value
for i = 0,1,0.05 do
wait()
for _,v in pairs(m2:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency = i
end
end
end
m2:Remove()
end
function effect1(mode,pos,size,speed)
local co = Instance.new("Part",m)
co.TopSurface = 0
co.BottomSurface = 0
co.CFrame = pos
co.formFactor = "Custom"
co.Size = Vector3.new(0.1,0.1,0.1)
co.CanCollide = false
co.Color = Color3.new(0,0,1)
local CL = CFrame.new(co.Position)
w = Instance.new("Weld",mode)
w.Part0 = co
w.Part1 = mode
w.C0 = co.CFrame:inverse() * CL
w.C1 = co.CFrame:inverse() * CL
local mesh = Instance.new("SpecialMesh",co)
mesh.MeshType = 3
for i = 1,size,speed do
wait()
mesh.Scale = Vector3.new(i,i,i)
co.Transparency = i/size
end
co:Remove()
end
function att3()
attacking = true
sd(30,50)
for i = 1,40,s do
wait()
rw.C0 = rw.C0 * ang(0,1,0)
end
for i = 1,90,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
tip = p2.CFrame * CFrame.new(0,p2.Size.y/2,0)
effect1(hdl,tip,40,1)
char.archivable = true
holding = true
for i = 1,8 do
wait()
torso.CFrame = torso.CFrame + torso.CFrame.lookVector * 5
local cl = char:Clone()
cl.Parent = Workspace
cl.Torso.CFrame = torso.CFrame - torso.CFrame.lookVector * 3
e = Instance.new("Explosion",cl.Torso)
e.BlastPressure = 0
e.Position = cl.Torso.Position
e.Hit:connect(function(hit) damage2(hit,mind,maxd,0.1) end)
for _,v in pairs(cl.Model:GetChildren()) do
if v:IsA("BasePart") then v.Touched:connect(damage)
end
end
for i,v in pairs(cl:GetChildren()) do
if v.className == "Part" then
v.Transparency = 0.5
v.Anchored = true
v.Touched:connect(damage)
v.Color = Color3.new(1,1,1)
elseif v.className ~= "Part" and v.className ~= "Model" then v:Remove()
elseif v.Name == "Torso" then v["RightShoulder"],v["LeftShoulder"].Name = "lol"
elseif v.Name == "Head" then for _,o in pairs(v:GetChildren()) do if v.className == "Sound" then v:Remove() end end
end
end
delay(0.7,function()
for i = 0.5,1,0.05 do
wait()
for _,v in pairs(cl:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency = i
end
end
end
cl:Remove()
end)
end
char.archivable = false
for i = 1,130,s do
wait()
rw.C0 = rw.C0 * ang(0,0,1)
end
for i = 1,130-90,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
for i = 1,40,s do
wait()
rw.C0 = rw.C0 * ang(0,-1,0)
end
sd()
attacking = false
end
function suicide()
s = 10
for i = 1,60,s do
wait()
rw.C0 = rw.C0 * ang(-1,0,0)
end
hw:Remove()
delay(0.3,function()
for i = 0,1,0.1 do
wait()
for _,v in pairs(m:GetChildren()) do
if v:IsA("BasePart") then
v.Transparency = i
end
end
end
m:Remove()
end)
wait(0.5)
for i = 1,60,s do
wait()
rw.C0 = rw.C0 * ang(1,0,0)
end
for i = 1,80,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
for i = 1,80,s do
wait()
rw.C0 = rw.C0 * ang(-1,0,0)
end
e = Instance.new("Explosion",Workspace)
e.BlastRadius = 100
e.Position = (rarm.CFrame * CFrame.new(0,-rarm.Size.y/2,0)).p
end
function slash()
attacking = true
for i = 1,90,s do
wait()
rw.C0 = rw.C0 * ang(0,0,1)
end
for i = 1,180,s do
wait()
rw.C0 = rw.C0 * ang(0,0,-1)
end
for i = 1,80,s do
wait()
rw.C0 = rw.C0 * ang(0,0,1)
end
attacking = false
end
function kd(key,mouse)
if key == "x" then m:Remove() h:Remove() lock(0)
end
if attacking == false then
if key == "f" then att()
elseif key == "r" then att2(mouse.Target,mouse.hit.p)
elseif key == "e" then demon()
elseif key == "c" then att3()
elseif key == "q" then suicide()
end
end
end
keylist = {"f","e"}
function select(mouse)
lock(1)
wield(1)
mouse.KeyUp:connect(function(key) for i,v in pairs(keylist) do if key == v then holding = false end end end)
mouse.KeyDown:connect(function(key) kd(key,mouse) end)
mouse.Button1Down:connect(function() if attacking == false then slash() end end)
end
h.Selected:connect(select)
h.Deselected:connect(function() wield(0) lock(0) end)

end}
module[3] = {"DarkSoul",function()
Name=game.Players.LocalPlayer.Name
player=game.Players[Name]
char=player.Character
Color=BrickColor.new("Grey")
Color2=BrickColor:Black()
d=0
Debounce=true

--NOTE TO SELF:Use Add([Object],[Delay]) instead of Debris:AddItem
function Add(object,delay)
coroutine.resume(coroutine.create(function() wait(delay) pcall(function() object:remove() end) end))
end

if script.Parent.className~="HopperBin" then
Sword = Instance.new("HopperBin")
Sword.Parent = game.Players[Name].Backpack
Sword.Name="DarkSoul"
script.Parent=Sword
end

Sword=script.Parent

Arms={char.Torso["Left Shoulder"],char.Torso["Right Shoulder"]}

function hint(msg,de)
local h=Instance.new("Hint")
h.Text=tostring(msg)
h.Parent=player
Delay(tonumber(de),function() h:remove() end)
end

function makeSword()
local Sword=char
wait(0.1)
Handle=Instance.new("Part")
Handle.Size=Vector3.new(1,1,1)
Handle.Parent=Sword
Handle.BrickColor=Color2
Handle.Name="Handle"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType=0
Mesh.Parent=Handle
Mesh.Scale=Vector3.new(0.4,0.75,0.4)
HenWeld=Instance.new("Weld")
HenWeld.Parent=char["Right Arm"]
HenWeld.Part1=HenWeld.Parent
HenWeld.Part0=Handle
HenWeld.C0=CFrame.new(0,-0.2,1)*CFrame.Angles(math.rad(90),math.rad(30),0)
Hy=HenWeld.C0
GripTop=Instance.new("Part")
GripTop.BrickColor=BrickColor.new(27)
GripTop.Size=Vector3.new(1,1,1)
GripTop.Parent=Sword
GripTop.Name="GripTop"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType=0
Mesh.Parent=GripTop
Mesh.Scale=Vector3.new(0.57,0.15,.57)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=GripTop
Weld.C0=CFrame.new(0,-0.35,0)
for i=1,5 do
GripTop=Instance.new("Part")
GripTop.BrickColor=BrickColor.new("Dark Stone Grey")
GripTop.Size=Vector3.new(1,1,1)
GripTop.Parent=Sword
GripTop.Name="Grip"..i
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType=0
Mesh.Parent=GripTop
Mesh.Scale=Vector3.new(0.41,0.15,.41)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=GripTop
Weld.C0=CFrame.new(0,0.365-i/9,0)
end
Blade1=Instance.new("Part")
Blade1.BrickColor=Color
Blade1.Size=Vector3.new(1,4,1)
Blade1.Parent=Sword
Blade1.Name="Blade1"
Blade1.Reflectance=0.11
Mesh=Instance.new("SpecialMesh")
Mesh.Parent=Blade1
Mesh.MeshType=0
Mesh.Scale=Vector3.new(0.3,0.9,0.3)
Weld=Instance.new("Weld")
Weld.Parent=Handle
Weld.Part1=Weld.Parent
Weld.Part0=Blade1
Weld.C0=CFrame.new(0,-1.7,0)
Pi=Blade1.Touched:connect(Hit)
end



function Button(mouse)
for i=0,0.6,0.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,-0.1/2,.1/2)*CFrame.Angles(math.rad((-90/5)/2),0.1/2,0.05/2)
end
wait()
for i=0.95,0,-.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,0.1/2,-.1/2)*CFrame.Angles(math.rad((90/5)/2),-.1/2,-0.05/2)
end
wait()
for i=0,0.35,0.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,-0.1/2,.1/2)*CFrame.Angles(math.rad((-90/5)/2),0.1/2,0)
end
w.C0=We
w2.C0=Wr
end


function Button2(mouse)
for i=0,0.3,0.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,-0.1/2,.1/2)*CFrame.Angles(math.rad((-90/5)/2),0.1/2,0.05/2)
end
wait()
for i=1,20 do
char.Torso.CFrame=char.Torso.CFrame+Vector3.new(0,2,0)
char.Torso.Velocity=Vector3.new(0,0,0)
wait()
end
wait()
bp=Instance.new("BodyPosition")
bp.maxForce=Vector3.new(9999999,999999999,99999999)
bp.position=char.Torso.Position
bp.Parent=char.Torso
wait(0.5)
for i=1.1,0,-.05 do
wait()
w2.C0=w2.C0*CFrame.new(0,0.1/2,0)*CFrame.Angles(math.rad((90/5)/2),-.1/2,-0.05/2)
HenWeld.C0=HenWeld.C0*CFrame.Angles(math.rad(20),0,0)
end
bp:remove()
con=char["Left Leg"].Touched:connect(function(hit) 
con:disconnect()
local list={}
function sar(v)
for _,v in pairs(v:children()) do 
if v:IsA("Part") and v.Parent.Name~=Name and v.Parent.Parent.Name~=Name then
table.insert(list,v)
elseif v.Name~=Name then
sar(v)
end
end
end
sar(workspace)
local l=Instance.new("Part")
l.BrickColor=BrickColor:Black()
l.Size=Vector3.new(1,1,1)
l.Parent=char
l.Transparency=0.3
l.Shape="Ball"
l.TopSurface="Smooth"
l.BottomSurface="Smooth"
l.Anchored=true
l.CFrame=char.Torso.CFrame
local m=Instance.new("SpecialMesh")
m.MeshType="Sphere"
m.Parent=l
local num=0
for i=1,35,0.5 do
wait()
m.Scale=m.Scale+Vector3.new(0.75,0.75,0.75)
if num~=4 then
num=num+1
else
num=0
for _,v in pairs(list) do
if v.Parent~=nil and v.Name~="Base" and v.Parent.Name~=Name and (v.Position-l.Position).magnitude<m.Scale.y/2 and v.Name~="Eaten" then
Delay(0,function()
v.Name="Eaten"
v.BrickColor=BrickColor:Black()
for i=1,10 do
wait()
v.Transparency=i/10
end
pcall(function() v:remove() end)
end) 
end
end
end
end
for i=1,30 do
wait()
l.Transparency=i/30
end
l:remove()
end)
w2.C0=Wr
HenWeld.C0=Hy
end

function Shock(mouse)
local list={}
function sar(v)
for _,v in pairs(v:children()) do 
if v:IsA("Part") and v.Parent.Name~=Name and v.Parent.Parent.Name~=Name then
table.insert(list,v)
elseif v.Name~=Name then
sar(v)
end
end
end
sar(workspace)
function checkMag(part)
local part=part
for _,v in pairs(list) do
if v.Parent~=nil and (v.Position-part.Position).magnitude<part.Mesh.Scale.y/2 then
Hit(v)
end
end
end
for i=0.4,0,-.05/2 do
HenWeld.C0=HenWeld.C0*CFrame.Angles(math.rad(i*32/2),0,0)
wait()
w2.C0=w2.C0*CFrame.Angles(math.rad(4/2),0,0)
end
wait(0.25)
for i=1,15 do
wait()
local P=Instance.new("Part")
P.Anchored=true
P.CanCollide=false
P.Size=Vector3.new(4,4,4)
local M=Instance.new("SpecialMesh")
M.Name="Mesh"
M.MeshType="Sphere"
M.Scale=Vector3.new(1.5,1.5,1.5)
M.Parent=P
P.CFrame=char.Torso.CFrame
P.CFrame=P.CFrame*CFrame.new(0,(-P.CFrame.y)+char.Torso.CFrame.y-4,-i*5)*CFrame.Angles(0,0,math.random()-math.random())
P.BrickColor=BrickColor:Black()
P.Reflectance=0.3
P.Parent=workspace
coroutine.resume(coroutine.create(function() for i=1,13,0.5 do P.CFrame=P.CFrame+Vector3.new(0,0.1,0) wait() checkMag(P) end wait(0.7) pcall(function() P:remove() end) end))
end
for i=0.4,0,-.05/2 do
HenWeld.C0=HenWeld.C0*CFrame.Angles(math.rad(-i*30/2),0,0)
wait()
w2.C0=w2.C0*CFrame.Angles(math.rad(-7/2),0,0)
end
w2.C0=Wr
HenWeld.C0=Hy
collectgarbage("collect")
end



fire={Shock}
name={"Shockwave Stab"}
klick={"z"}

function Kay(ke)
for _,v in pairs(klick) do
if v==ke then
return _
end
end
return false
end

f=Sword.Selected:connect(function(mouse)
pcall(function() script.Sour.Value=[[print("Hello,World!")]] end) --Nothing to see here.
if d==0 and char.Torso:findFirstChild("Right Shoulder")~=nil then
d=1
De=0
f:disconnect()
pcall(function() game["LocalBackpack"]:children()[1]:remove() end)
Debou=true
Numb=Instance.new("NumberValue")
Numb.Value=0
Numb.Parent=Sword
Numb.Changed:connect(function() 
if Debou then 
Debou=false 
wait(0.2) 
ghk:disconnect() 
if Numb.Value>1 then 
Numb.Value=0 
Button2() 
else Numb.Value=0 
Button() 
end 
ghk=mouse.Button1Down:connect(function() 
Delay(0,function()
if Debounce then
Debounce=false
Numb.Value=Numb.Value+1
wait()
Debounce=true
end
end)
end)
Debou=true 
end 
end)

Arms[1].Parent=nil
w = Instance.new("Weld") 
w.Name="Left Shouldr"
w.Parent = char.Torso
w.Part0 = char["Left Arm"]
w.Part1 = w.Parent

Arms[2].Parent=nil
w2 = Instance.new("Weld") 
w2.Name="Right Shouldr"
w2.Parent = char.Torso
w2.Part0 = char["Right Arm"]
w2.Part1 = w2.Parent
makeSword()
---Animation Start---
for i=0,1,0.05 do
w.C0 = CFrame.new(1.2+(i*0.05)/10,-0.1-i*0.05,.5-i/1.3)*CFrame.Angles(math.rad(75*-i),math.rad(i*45),math.rad(i*20))
wait()
w2.C0 = CFrame.new(-1.2+(i*0.05)/10,-0.1-i*0.05,.5-i/1.3)*CFrame.Angles(math.rad(75*-i),math.rad(-i*45),math.rad(-i*20))
end
----Animation End----
We=w.C0
Wr=w2.C0
wait()
ghk=mouse.Button1Down:connect(function() 
Delay(0,function()
if Debounce then
Debounce=false
Numb.Value=Numb.Value+1
wait()
Debounce=true
end
end)
end)
mouse.KeyDown:connect(function(key)
if Kay(tostring(key))~=false then 
hint(tostring(name[Kay(tostring(key))]).."!",2)
wait()
fire[Kay(tostring(key))](mouse)
end
end)
end
end)


local cr=Instance.new("ObjectValue")
cr.Value=player
cr.Name="creator"

function Hit(h)
if h.Parent~=nil and h.Parent.Name~=Name and h.Parent:findFirstChild("Humanoid")~=nil then
pcall(function() cr:clone().Parent=h.Parent.Humanoid h.Parent.Shirt:remove() h.Parent.Pants:remove() end)
for _,v in pairs(h.Parent:children()) do
if v:IsA("Part") then
wait()
b=Instance.new("BodyVelocity")
b.Parent=v
v:BreakJoints()
b.velocity=(v.Position-Vector3.new(math.random(-100,100),v.Position.y,math.random(-100,100))).unit*50
end
end
wait()
pcall(function() h.Parent.Humanoid.creator:remove() end)
for i=1,17 do
wait()
for _,v in pairs(h.Parent:children()) do
if v:IsA("Part") then
v.BrickColor=BrickColor:Black()
v:BreakJoints()
v.Reflectance=0
wait()
v.Reflectance=0.7
end
end
end
end
end
--lego
end}

 
 

module[1] = {"Deadspace",function()
local Name=game.Players.LocalPlayer.Name
local char=workspace[Name]
color=BrickColor:Black()
color2=BrickColor:White()

pcall(function() workspace[Name].Suit:remove() end)
player = game.Players[Name]
player.Character.Humanoid.WalkSpeed = 30
model = Instance.new("Model") 
model.Parent = char 
model.Name = "Suit" 

for _,v in pairs(char:children()) do
if v:IsA("Hat") then
v:remove()
end
end

Tor=Instance.new("Part")
Tor.Size=char.Torso.Size
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)

for _,v in pairs(char:children()) do
if string.sub(v.Name,1,4)=="Left" or string.sub(v.Name,1,4)=='Righ' then
Tor=Instance.new("Part")
Tor.Size=v.Size
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01)
w = Instance.new("Weld") 
w.Parent = v 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)
end
end

for i=1,3 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.6,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.72,-i/3,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.6,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.72,-i/3,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.4,.02,1.2) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.72,-i/3,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.4,.02,1.2) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.72,-i/3,0)
end

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,.3,.4) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.8,0.32)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,.3,.4) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.45,0.1,0.32)*CFrame.Angles(0,0,math.rad(90*3))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,.3,.4) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.45,0.1,0.32)*CFrame.Angles(0,0,math.rad(90))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,.3,.4) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.8,-0.32)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,.3,.4) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.45,0.1,-0.32)*CFrame.Angles(0,0,math.rad(90*3))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,.3,.4) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.45,0.1,-0.32)*CFrame.Angles(0,0,math.rad(90))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.45,.25,.42) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.45,0.1,-0.32)*CFrame.Angles(0,0,math.rad(90))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.45,.25,.42) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.45,0.1,-0.32)*CFrame.Angles(0,0,math.rad(90*3))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.45,.25,.42) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.45,0.1,0.32)*CFrame.Angles(0,0,math.rad(90))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.45,.25,.42) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.45,0.1,0.32)*CFrame.Angles(0,0,math.rad(90*3))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Grey")
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.75,.9,1.5) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.1,0)*CFrame.Angles(math.rad(90),0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.45,.25,.42) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(.7,.8,-0.32)*CFrame.Angles(0,0,math.rad(90*3.5))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.45,.25,.42) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-.7,.8,-0.32)*CFrame.Angles(0,0,math.rad(-90*3.5))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.45,.25,.42) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(.7,.8,0.32)*CFrame.Angles(0,0,math.rad(90*3.5))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.45,.25,.42) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-.7,.8,0.32)*CFrame.Angles(0,0,math.rad(-90*3.5))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.45,.5,.45) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.1,0.32)*CFrame.Angles(math.rad(90*3),0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Reflectance=0.35
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.35,.55,.35) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.1,0.36)*CFrame.Angles(math.rad(90*3),0,0)

Core=Instance.new("Part")
Core.Shape="Ball"
Core.Size=Vector3.new(1,1,1)
Core.BrickColor=BrickColor:Blue()
Core.Reflectance=0.35
Core.Transparency=0
Core.CanCollide=false
Core.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Core
Mesh.Scale=Vector3.new(.4,.4,.4) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Core 
w.C0 = CFrame.new(0,0.1,0.55)

GuiMain=Instance.new("ScreenGui") 
Radar=Instance.new("Frame") 
GuiMain.Parent=player.PlayerGui 
Radar.Parent=GuiMain 
Radar.Size=UDim2.new(3,0,3,0) 
Radar.Position=UDim2.new(0,0,-0.1,0) 
Radar.BackgroundTransparency=0.85 
Radar.BackgroundColor=BrickColor:Blue()
Radar.Name="HealthScreen" 

Health=Instance.new("TextLabel") 
Health.Parent=Radar 
Health.Size=UDim2.new(0.08,0,0.08,0) 
Health.Active=false
Health.Position=UDim2.new(-0.05/3.5,0,0.5/3,0) 
Health.BackgroundTransparency=0.99
Health.BorderSizePixel=0
Health.Text="Health: "..tostring(char.Humanoid.Health).."::"..tostring(char.Humanoid.MaxHealth) 
Health.BackgroundColor=Health.BackgroundColor
Health.Name="HealthMeter" 

function Change()
Health.Text="Health: "..tostring(math.floor(char.Humanoid.Health)).."::"..tostring(char.Humanoid.MaxHealth) 
PingMeter.Text="Ping: ~"..tostring(math.floor(char.Humanoid.Health/5))
end

function SetGui(color)
Radar.BackgroundColor=color
Health.BackgroundColor=color
end

function FadeIn()
for i=1,0,-0.05 do
Radar.BackgroundTransparency=i
wait(0.15)
end
end

char.Humanoid.Changed:connect(function(prop)
if prop=="Health" then
Change()
if char.Humanoid.Health>50 and char.Humanoid.Health<75 then
Core.BrickColor=BrickColor.new("Bright orange")
Tube.BrickColor=Core.BrickColor
Core.Reflectance=0.3
SetGui(BrickColor.new("Bright orange"))
elseif char.Humanoid.Health<50 and char.Humanoid.Health>25 then
Core.BrickColor=BrickColor:Yellow()
Tube.BrickColor=Core.BrickColor
Core.Reflectance=0.15
SetGui(BrickColor:Yellow())
elseif char.Humanoid.Health<25 and char.Humanoid.Health>0 then
Core.BrickColor=BrickColor:Red()
Tube.BrickColor=Core.BrickColor
Core.Reflectance=0.1
SetGui(BrickColor:Red())
elseif char.Humanoid.Health==char.Humanoid.MaxHealth then
Core.BrickColor=BrickColor:Blue()
Tube.BrickColor=Core.BrickColor
Core.Reflectance=0.25
SetGui(BrickColor:Blue())
elseif char.Humanoid.Health>75 and char.Humanoid.Health<char.Humanoid.MaxHealth then
Core.BrickColor=BrickColor:Green()
Tube.BrickColor=Core.BrickColor
Core.Reflectance=0.35
SetGui(BrickColor:Green())
elseif char.Humanoid.Health==0 or char.Humanoid.Health<0 then
Core.BrickColor=BrickColor:Black()
Tube.BrickColor=Core.BrickColor
Core.Reflectance=0
SetGui(BrickColor:Black())
FadeIn()
end
end
end)

for i=1,360/40 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.25,.25,.25) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.1,-0.5)*CFrame.Angles(0,0,math.rad(i*40))
end

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Reflectance=0.35
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.15,.45,.15) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.1,-0.36)*CFrame.Angles(math.rad(90*3),0,0)

Tor=Instance.new("Part")
Tor.Size=char.Torso.Size
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.05,.08,1.05) 
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-1,0)
----------------------------------------------------
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Shape="Ball"
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.5,1.5,1.5) 
w = Instance.new("Weld") 
w.Parent = char["Head"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.7,.07,.5) 
w = Instance.new("Weld") 
w.Parent = char["Head"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.2,0-0.45)*CFrame.Angles(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Toothpaste")
Tor.Reflectance=0.25
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,.04,.55) 
w = Instance.new("Weld") 
w.Parent = char["Head"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.2,-0.45)*CFrame.Angles(0,0,0)


Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.7,.07,.5) 
w = Instance.new("Weld") 
w.Parent = char["Head"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.2,0-0.45)*CFrame.Angles(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Toothpaste")
Tor.Reflectance=0.25
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,.04,.55) 
w = Instance.new("Weld") 
w.Parent = char["Head"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.2,-0.45)*CFrame.Angles(0,0,0)



Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.8,.07,.6) 
w = Instance.new("Weld") 
w.Parent = char["Head"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0-0.45)*CFrame.Angles(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Toothpaste")
Tor.Reflectance=0.25
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.6,.04,.65) 
w = Instance.new("Weld") 
w.Parent = char["Head"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.45)*CFrame.Angles(0,0,0)


Tube=Instance.new("Part")
Tube.Size=Vector3.new(1,1,1)
Tube.BrickColor=Core.BrickColor
Tube.Reflectance=0.45
Tube.Transparency=0
Tube.Name="Tube"
Tube.CanCollide=false
Tube.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tube
Mesh.Scale=Vector3.new(0.2,.65,0.2) 
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tube 
w.C0 = CFrame.new(0,-0.23,0.475)*CFrame.Angles(0,0,0)

for i=1,3 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.4
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.25,.025,0.25) 
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-i/5,0.475)*CFrame.Angles(0,0,0)
end



Tube2=Instance.new("Part")
Tube2.Size=Vector3.new(1,1,1)
Tube2.BrickColor=Core.BrickColor
Tube2.Reflectance=0.45
Tube2.Transparency=0
Tube2.Name="Tube2"
Tube2.CanCollide=false
Tube2.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tube2
Mesh.Scale=Vector3.new(0.2,1.05,0.2) 
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tube2 
w.C0 = CFrame.new(0,0.83,0.475)*CFrame.Angles(0,0,0)

Tube.Changed:connect(function(color)
if color=="BrickColor" then
Tube2.BrickColor=Tube.BrickColor
end
end)

for i=1,6 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.4
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.25,.025,0.25) 
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,i/5,0.475)*CFrame.Angles(0,0,0)
end
-----------------------------------------------------
for i=1,4 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.4,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-i/4,0)*CFrame.Angles(0,math.rad(90),0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.4,.02,1.2) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-i/4,0)*CFrame.Angles(0,math.rad(90),0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.6,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-i/4,0)*CFrame.Angles(0,math.rad(90),0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.6,.02,1.2) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-i/4,0)*CFrame.Angles(0,math.rad(90),0)
end

--[[Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Grey")
Tor.Reflectance=0
Tor.Shape="Ball"
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.25,.145,.25) 
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.51,.52,.45)*CFrame.Angles(math.rad(90),0,0)

Statis=Instance.new("Part")
Statis.Size=Vector3.new(1,1,1)
Statis.BrickColor=BrickColor:Green()
Statis.Reflectance=0.35
Statis.Transparency=0
Statis.CanCollide=false
Statis.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Statis
Mesh.Scale=Vector3.new(.305,.12,.305) 
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Statis 
w.C0 = CFrame.new(0.51,.52,.45)*CFrame.Angles(math.rad(90),0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Black()
Tor.Reflectance=0.35
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.08,.13,.08) 
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.51,.52,.45)*CFrame.Angles(math.rad(90),0,0)]]


--TODO:Finish Arms and make legs.

for _,v in pairs(model:children()) do
v.Locked=true
end

char.Head.Transparency=1
---------------------------------------------
---------------------------------------------
---------------------------------------------
---------------------------------------------
---------------------------------------------
---------------------------------------------
---------------------------------------------
---------------------------------------------
---------------------------------------------
if script.Parent.className~="HopperBin" then
Hop=Instance.new("HopperBin")
Hop.Name="Ping"
Hop.Parent=player.Backpack
script.Parent=Hop
end
Hop=script.Parent

PingMeter=Instance.new("TextLabel") 
PingMeter.Parent=Radar
PingMeter.Size=UDim2.new(0.08,0,0.08,0) 
PingMeter.Active=false
PingMeter.Position=Health.Position+UDim2.new(0,0,0.015,0)
PingMeter.BackgroundTransparency=0.99
PingMeter.BorderSizePixel=0
PingMeter.Text="Ping: ~"..tostring(math.floor(char.Humanoid.Health/5))
PingMeter.BackgroundColor=Radar.BackgroundColor
PingMeter.Name="PingMeter" 

Radar.Changed:connect(function(color)
if color=="BackgroundColor" then
PingMeter.BackgroundColor=Radar.BackgroundColor
end
end)

Tag=Instance.new("ObjectValue")
Tag.Value=player
Tag.Name="creator"

function Check(i,num)
for _,v in pairs(i:children()) do
if v:IsA("Part") and (v.Position - char.Torso.Position).magnitude < num and v.Name~="Base" and v.Parent.Name~=Name and v.Parent.Name~="Suit" then
coroutine.resume(coroutine.create(function()
pcall(function() Tag:Clone().Parent=v.Parent.Humanoid end)
wait()
v.Anchored=false
v.CanCollide=false
v:BreakJoints()
v.Velocity=(v.Position-char.Torso.Position).unit*(200+v:GetMass()*15)
end))
elseif v:IsA("Model") and v.Name~=Name and v:children()[1]~=nil then
Check(v,num)
end
end
end

function Button(mouse)
Check(workspace,char.Humanoid.Health/5)
char.Humanoid:TakeDamage(25)
end

Hop.Selected:connect(function(mouse)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.Button1Down:connect(function() Button(mouse) end)
end)

end}
module[2] = {"Deamon",function()
--MADE BY OneLegend (NOT THE SCRIPT) LOCAL SCRIPT: Go to line 9 and put your name where it says "YOUR NAME HERE"

print("Deamon Loaded") 
 
 
if (script.Parent.className ~= "HopperBin") then 
local h = Instance.new("HopperBin") 
h.Name = "Deamon" 
h.Parent = game.Players.LocalPlayer.Backpack 
script.Parent = h 
script.Name = "Function" 
end 
 
 
 
Player = game.Players.LocalPlayer
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
 
 
Bin = script.Parent 
Person = game.Players.LocalPlayer 
PersonT = Person.Character.Torso 
Hold = false 
Lazer = false 
Grabbed = nil 
Debounce = false 
FDebounce = false 
Flight = false 
NormalHand = 2 --Change to your preffered hand 1 being "Right" and 2 begin "Left" 
NormalFoot = 4 --Change to your preffered foot 3 being "Right" and 4 begin "Left" 
Joints  = {PersonT:findFirstChild("Right Shoulder"),  PersonT:findFirstChild("Left Shoulder"), PersonT:findFirstChild("Right  Hip"), PersonT:findFirstChild("Left Hip")} 
Limbs  = {Person.Character:findFirstChild("Right Arm"),  Person.Character:findFirstChild("Left Arm"),  Person.Character:findFirstChild("Right Leg"),  Person.Character:findFirstChild("Left Leg")} 
 
UsingTools = 0 
AnimatingTools = false 
 
 
Suit = Character.Suit 
 
 
--Head!!!!!!!! 
Ha = Character.Head:Clone() 
 
Ha.BrickColor = BrickColor.new("New Yeller") 
Ha.face:Remove() 
Ha2 = Ha:Clone() 
Ha.Transparency = 0.5 
Ha.Name = "Head" 
Ha.Reflectance = 0.7 
Ha.Mesh.Scale = Ha.Mesh.Scale + Vector3.new(0.05,0.05,0.05) 
 
Ha2.Name = "HeadMotor" 
Ha2.Transparency = 1 
Ha2.Mesh:Remove() 
 
Ha2.Parent = Characters 
Haw = Instance.new("Weld") 
Haw.Part0 = Torso 
Haw.Part1 = Ha2 
Haw.Parent = Torso 
Haw.C0 = CFrame.new(0,1.5,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 
 
Ha.Parent = Characters 
Hmotor1 = Instance.new("Motor") 
Hmotor1.Parent = Ha2 
Hmotor1.Part0 = Ha2 
Hmotor1.Part1 = Ha 
Hmotor1.MaxVelocity = 0.05 
Hmotor1.C1 = CFrame.new(0,0,0) 
 
-- Left Wing!!! 
w11 = Instance.new("Part") 
w11.Name = "LWingMotor" 
w11.formFactor = "Symmetric" 
w11.Size = Vector3.new(1,1,1) 
w11.TopSurface = "Smooth" 
w11.BottomSurface = "Smooth" 
w11.CanCollide = false 
w11.Transparency = 1 
 
w12 = Instance.new("Part") 
w12.Name = "Wing1" 
w12.BrickColor = BrickColor.new("New Yeller") 
w12.formFactor = "Symmetric" 
w12.Size = Vector3.new(1,5,2) 
w12.TopSurface = "Smooth" 
w12.BottomSurface = "Smooth" 
w12.CanCollide = false 
w12.Transparency = 0.35 
w12.Reflectance = 0.7 
 
w1m = Instance.new("SpecialMesh") 
w1m.Parent = w12 
w1m.MeshType = "Sphere" 
w1m.Scale = Vector3.new(0.2, 1.25, 1) 
 
w11.Parent = Characters 
ww1 = Instance.new("Weld") 
ww1.Part0 = Torso 
ww1.Part1 = w11 
ww1.Parent = Torso 
ww1.C0 = CFrame.new(-0.4,0,0.8)*CFrame.fromEulerAnglesXYZ(0.5, 0, 0.5) 
 
w12 .Parent = Characters 
motor1 = Instance.new("Motor") 
motor1.Parent = w11 
motor1.Part0 = w11 
motor1.Part1 = w12 
motor1.MaxVelocity = 0.35 
motor1.C1 = CFrame.new(0,-2,0.5) 
 
--Right Wing!!! 
w21 = Instance.new("Part") 
w21.Name = "RWingMotor" 
w21.formFactor = "Symmetric" 
w21.Size = Vector3.new(1,1,1) 
w21.TopSurface = "Smooth" 
w21.BottomSurface = "Smooth" 
w21.CanCollide = false 
w21.Transparency = 1 
 
w22 = Instance.new("Part") 
w22.Name = "Wing2" 
w22.BrickColor = BrickColor.new("New Yeller") 
w22.formFactor = "Symmetric" 
w22.Size = Vector3.new(1,5,2) 
w22.TopSurface = "Smooth" 
w22.BottomSurface = "Smooth" 
w22.CanCollide = false 
w22.Transparency = 0.35 
w22.Reflectance = 0.7 
 
w2m = Instance.new("SpecialMesh") 
w2m.Parent = w22 
w2m.MeshType = "Sphere" 
w2m.Scale = Vector3.new(0.2, 1.25, 1) 
 
w21.Parent = Characters 
ww2 = Instance.new("Weld") 
ww2.Part0 = Torso 
ww2.Part1 = w21 
ww2.Parent = Torso 
ww2.C0 = CFrame.new(0.4,0,0.8)*CFrame.fromEulerAnglesXYZ(0.5, 0, -0.5) 
 
w22 .Parent = Characters 
motor2 = Instance.new("Motor") 
motor2.Parent = w21 
motor2.Part0 = w21 
motor2.Part1 = w22 
motor2.MaxVelocity = 0.35 
motor2.C1 = CFrame.new(0,-2,0.5) 
 
 
 
-- Extra Right Wings!!! 
 
Lwing1 = w22:Clone() 
Lwing1.Parent = Characters 
Lw1w = Instance.new("Weld") 
Lw1w.Part0 = w22 
Lw1w.Part1 = Lwing1 
Lw1w.Parent = w22 
Lw1w.C0 = CFrame.new(0,-0.5,1)*CFrame.fromEulerAnglesXYZ(0.5,0,0) 
 
Lwing2 = Lwing1:Clone() 
Lwing2.Parent = Characters 
Lw2w = Instance.new("Weld") 
Lw2w.Part0 = Lwing1 
Lw2w.Part1 = Lwing2 
Lw2w.Parent = Lwing1 
Lw2w.C0 = CFrame.new(0,-0.3,1)*CFrame.fromEulerAnglesXYZ(0.5,0,0) 
 
 
 
--Extra Left Wings!!! 
 
Rwing1 = w12:Clone() 
Rwing1.Parent = Characters 
Rw1w = Instance.new("Weld") 
Rw1w.Part0 = w12 
Rw1w.Part1 = Rwing1 
Rw1w.Parent = w12 
Rw1w.C0 = CFrame.new(0,-0.5,1)*CFrame.fromEulerAnglesXYZ(0.5,0,0) 
 
Rwing2 = Lwing1:Clone() 
Rwing2.Parent = Characters 
Rw2w = Instance.new("Weld") 
Rw2w.Part0 = Rwing1 
Rw2w.Part1 = Rwing2 
Rw2w.Parent = Rwing1 
Rw2w.C0 = CFrame.new(0,-0.3,1)*CFrame.fromEulerAnglesXYZ(0.5,0,0) 
 
 
 
 
-- Torso!!!!!!! 
--BackShuriken!!! 
Bs = Instance.new("Part") 
Bs.Name = "BackShuriken" 
Bs.formFactor = "Plate" 
Bs.Size = Vector3.new(2,0.4,2) 
Bs.TopSurface = "Smooth" 
Bs.BottomSurface = "Smooth" 
Bs.CanCollide = false 
Instance.new("Sparkles").Parent = Bs 
Bs.Sparkles.Enabled = false 
 
Smb = Instance.new("SpecialMesh") 
Smb.Parent = Bs 
Smb.MeshType = "FileMesh" 
Smb.TextureId = "http://www.roblox.com/asset/?id=11112112" -- Shuriken Texture Id 1 
Smb.MeshId = "http://www.roblox.com/asset/?id=11112101" -- Shuriken Mesh Id 1 
Smb.Scale = Vector3.new(7,9,7) 
 
Bs.Parent = Characters 
Bsw = Instance.new("Weld") 
Bsw.Part0 = Torso 
Bsw.Part1 = Bs 
Bsw.Parent = Torso 
Bsw.C0 = CFrame.new(0,0,0.65)*CFrame.fromEulerAnglesXYZ(1.5,0,0) 
 
-- Torso Armor!!! 
Ta = Instance.new("Part") 
Ta.Name = "TorsoArmor" 
Ta.formFactor = "Symmetric" 
Ta.Size = Vector3.new(2,2,1) 
Ta.TopSurface = "Smooth" 
Ta.BottomSurface = "Smooth" 
Ta.BrickColor = BrickColor.new("Really black") 
Ta.Reflectance = 0.4 
Ta.Transparency = 0.5 
 
Tam = Instance.new("BlockMesh") 
Tam.Parent = Ta 
Tam.Scale = Vector3.new(0.9,1.005,1.2) 
 
Ta.Parent = Characters 
Taw = Instance.new("Weld") 
Taw.Part0 = Torso 
Taw.Part1 = Ta 
Taw.Parent = Torso 
Taw.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 
 
 
 
 
 
 
 
-- Torso X Front!!! 
x1 = Instance.new("Part") 
x1.Name = "X1" 
x1.formFactor = "Symmetric" 
x1.Size = Vector3.new(1,3,1) 
x1.TopSurface = "Smooth" 
x1.BottomSurface = "Smooth" 
x1.BrickColor = BrickColor.new("Really red") 
x1.Reflectance = 0.1 
x1.CanCollide = false 
 
x1m = Instance.new("BlockMesh") 
x1m.Parent = x1 
x1m.Scale = Vector3.new(0.3,0.95,0.3) 
 
 
x2 = Instance.new("Part") 
x2.Name = "X2" 
x2.formFactor = "Symmetric" 
x2.Size = Vector3.new(1,3,1) 
x2.TopSurface = "Smooth" 
x2.BottomSurface = "Smooth" 
x2.BrickColor = BrickColor.new("Really red") 
x2.Reflectance = 0.1 
x2.CanCollide = false 
 
x2m = Instance.new("BlockMesh") 
x2m.Parent = x2 
x2m.Scale = Vector3.new(0.3,0.95,0.3) 
 
x1.Parent = Characters 
x1w = Instance.new("Weld") 
x1w.Part0 = Torso 
x1w.Part1 = x1 
x1w.Parent = Torso 
x1w.C0 = CFrame.new(0,0,-0.55)*CFrame.fromEulerAnglesXYZ(0,0,0.7) 
 
x2.Parent = Characters 
x2w = Instance.new("Weld") 
x2w.Part0 = Torso 
x2w.Part1 = x2 
x2w.Parent = Torso 
x2w.C0 = CFrame.new(0,0,-0.55)*CFrame.fromEulerAnglesXYZ(0,0,-0.7) 
 
x0 = Instance.new("Part") 
x0.Name = "X0" 
x0.formFactor = "Symmetric" 
x0.Size = Vector3.new(1,1,1) 
x0.TopSurface = "Smooth" 
x0.BottomSurface = "Smooth" 
x0.BrickColor = BrickColor.new("Really red") 
x0.Reflectance = 0.1 
x0.CanCollide = false 
 
x0m = Instance.new("SpecialMesh") 
x0m.Parent = x0 
x0m.MeshType = "Sphere" 
x0m.Scale = Vector3.new(1,1,0.5) 
 
x0.Parent = Characters 
x0w = Instance.new("Weld") 
x0w.Part0 = Torso 
x0w.Part1 = x0 
x0w.Parent = Torso 
x0w.C0 = CFrame.new(0,0,-0.55)*CFrame.fromEulerAnglesXYZ(0,0,0) 
 
 
 
 
--Dark Suit Ball!!! 
db = Instance.new("Part") 
db.Name = "DarkBall" 
db.formFactor = "Symmetric" 
db.Shape = "Ball" 
db.Size = Vector3.new(1,1,1) 
db.TopSurface = "Smooth" 
db.BottomSurface = "Smooth" 
db.BrickColor = BrickColor.new("Really black") 
db.Transparency = 0.955 
db.CanCollide = false 
db.CFrame = Torso.CFrame 
 
dbm = Instance.new("SpecialMesh") 
dbm.Parent = db 
dbm.MeshType = "Sphere" 
dbm.Scale = Vector3.new(20,20,20) 
 
dsbp = Instance.new("BodyPosition") 
dsbp.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
dsbp.Parent = db 
db.Parent = Characters 
 
 
 
 
 
-- Left Arm!!!!!!!!!!!!!!!! 
 
 
-- Left Arm Armor!!!! 
LAa = Instance.new("Part") 
LAa.Name = "LeftArmArmor" 
LAa.formFactor = "Symmetric" 
LAa.Size = Vector3.new(1,2,1) 
LAa.TopSurface = "Smooth" 
LAa.BottomSurface = "Smooth" 
LAa.BrickColor = BrickColor.new("Really black") 
LAa.Reflectance = 0.1 
LAa.Transparency = 0.1 
 
LAm = Instance.new("BlockMesh") 
LAm.Parent = LAa 
LAm.Scale = Vector3.new(1.1,1.1,1.1) 
 
LAa.Parent = Characters 
LAaw = Instance.new("Weld") 
LAaw.Part0 = LA 
LAaw.Part1 = LAa 
LAaw.Parent = LA 
LAaw.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 
 
--Left Arm Wedge1!!! 
LAw = Instance.new("WedgePart") 
LAw.Name = "LeftArmWedge" 
LAw.formFactor = "Plate" 
LAw.Size = Vector3.new(1, 0.4, 1) 
LAw.TopSurface = "Smooth" 
LAw.BottomSurface = "Smooth" 
LAw.BrickColor = BrickColor.new("Really black") 
LAw.Reflectance = 0.1 
LAw.Transparency = 0.1 
 
 
LAw.Parent = Characters 
LAww = Instance.new("Weld") 
LAww.Part0 = LAw 
LAww.Part1 = LA 
LAww.Parent = LAw 
LAww.C0 = CFrame.new(0,-0.7,0.5)*CFrame.fromEulerAnglesXYZ(0,-1.5,-1.6) 
 
 
 
--Left Arm Shuriken!!! 
LAs = Instance.new("Part") 
LAs.Name = "LeftArmShuriken" 
LAs.formFactor = "Plate" 
LAs.Size = Vector3.new(1, 0.4, 1) 
LAs.TopSurface = "Smooth" 
LAs.BottomSurface = "Smooth" 
LAs.BrickColor = BrickColor.new("Really black") 
LAs.Reflectance = 0.1 
 
Lasm = Instance.new("SpecialMesh") 
Lasm.Parent = LAs 
Lasm.MeshType = "FileMesh" 
Lasm.TextureId = "http://www.roblox.com/asset/?id=11376931" -- Shuriken Texture Id 2 
Lasm.MeshId = "http://www.roblox.com/asset/?id=11376946" -- Shuriken Mesh Id 2 
Lasm.Scale = Vector3.new(3,5,3) 
 
LAs.Parent = Characters 
LAsw = Instance.new("Weld") 
LAsw.Part0 = LAs 
LAsw.Part1 = LA 
LAsw.Parent = LAs 
LAsw.C0 = CFrame.new(0,-0.6,-0.5)*CFrame.fromEulerAnglesXYZ(0,-1.5,-1.6) 
 
-- Left Arm Claw!!! 
LAc = Instance.new("Part") 
LAc.Name = "LClaw" 
LAc.formFactor = "Symmetric" 
LAc.Size = Vector3.new(1, 1, 1) 
LAc.TopSurface = "Smooth" 
LAc.BottomSurface = "Smooth" 
LAc.BrickColor = BrickColor.new("Really black") 
 
Lacm = Instance.new("SpecialMesh") 
Lacm.Parent = LAc 
Lacm.MeshType = "FileMesh" 
Lacm.TextureId = "http://www.roblox.com/asset/?id=10681501" -- Claw Texture Id 
Lacm.MeshId = "http://www.roblox.com/asset/?id=10681506" -- Claw Mesh Id 
Lacm.Scale = Vector3.new(1, 2, 0.8) 
 
LAc.Parent = Characters 
LAcw = Instance.new("Weld") 
LAcw.Part0 = LAc 
LAcw.Part1 = LA 
LAcw.Parent = LAc 
LAcw.C0 = CFrame.new(-0.5,0,-1.45)*CFrame.fromEulerAnglesXYZ(-1.6,-1.5,0) 
 
 
 
 
 
 
-- Right Arm!!!!!!!!!!!!!!!!!!!!!! 
 
-- Right Arm Armor!!!! 
RAa = Instance.new("Part") 
RAa.Name = "RightArmArmor" 
RAa.formFactor = "Symmetric" 
RAa.Size = Vector3.new(1,2,1) 
RAa.TopSurface = "Smooth" 
RAa.BottomSurface = "Smooth" 
RAa.BrickColor = BrickColor.new("Really black") 
RAa.Reflectance = 0.1 
RAa.Transparency = 0.1 
 
RAm = Instance.new("BlockMesh") 
RAm.Parent = RAa 
RAm.Scale = Vector3.new(1.1,1.1,1.1) 
 
RAa.Parent = Characters 
RAaw = Instance.new("Weld") 
RAaw.Part0 = RA 
RAaw.Part1 = RAa 
RAaw.Parent = RA 
RAaw.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 
 
--Right Arm Wedge!!! 
RAw = Instance.new("WedgePart") 
RAw.Name = "RightArmWedge" 
RAw.formFactor = "Plate" 
RAw.Size = Vector3.new(1, 0.4, 1) 
RAw.TopSurface = "Smooth" 
RAw.BottomSurface = "Smooth" 
RAw.BrickColor = BrickColor.new("Really black") 
RAw.Reflectance = 0.1 
RAw.Transparency = 0.1 
 
 
RAw.Parent = Characters 
RAww = Instance.new("Weld") 
RAww.Part0 = RAw 
RAww.Part1 = RA 
RAww.Parent = RAw 
RAww.C0 = CFrame.new(0,-0.7,0.5)*CFrame.fromEulerAnglesXYZ(0,1.5,1.5) 
 
 
 
--Right Arm Shuriken!!! 
RAs = Instance.new("Part") 
RAs.Name = "RightArmShuriken" 
RAs.formFactor = "Plate" 
RAs.Size = Vector3.new(1, 0.4, 1) 
RAs.TopSurface = "Smooth" 
RAs.BottomSurface = "Smooth" 
RAs.BrickColor = BrickColor.new("Really black") 
RAs.Reflectance = 0.1 
 
Rasm = Instance.new("SpecialMesh") 
Rasm.Parent = RAs 
Rasm.MeshType = "FileMesh" 
Rasm.TextureId = "http://www.roblox.com/asset/?id=11376931" -- Shuriken Texture Id 2 
Rasm.MeshId = "http://www.roblox.com/asset/?id=11376946" -- Shuriken Mesh Id 2 
Rasm.Scale = Vector3.new(3,5,3) 
 
RAs.Parent = Characters 
RAsw = Instance.new("Weld") 
RAsw.Part0 = RAs 
RAsw.Part1 = RA 
RAsw.Parent = RAs 
RAsw.C0 = CFrame.new(0,-0.6,-0.5)*CFrame.fromEulerAnglesXYZ(0,1.5,1.6) 
 
-- Right Arm Claw!!! 
RAc = Instance.new("Part") 
RAc.Name = "RClaw" 
RAc.formFactor = "Symmetric" 
RAc.Size = Vector3.new(1, 1, 1) 
RAc.TopSurface = "Smooth" 
RAc.BottomSurface = "Smooth" 
RAc.BrickColor = BrickColor.new("Really black") 
 
Racm = Instance.new("SpecialMesh") 
Racm.Parent = RAc 
Racm.MeshType = "FileMesh" 
Racm.TextureId = "http://www.roblox.com/asset/?id=10681501" -- Claw Texture Id 
Racm.MeshId = "http://www.roblox.com/asset/?id=10681506" -- Claw Mesh Id 
Racm.Scale = Vector3.new(1, 2, 0.8) 
 
RAc.Parent = Characters 
RAcw = Instance.new("Weld") 
RAcw.Part0 = RAc 
RAcw.Part1 = RA 
RAcw.Parent = RAc 
RAcw.C0 = CFrame.new(-0.5,0,-1.45)*CFrame.fromEulerAnglesXYZ(-1.6,-1.5,0) 
 
 
-- Left Leg!!!!!!!!!!!!!!!!!!!!!!!!!!!! 
--Left Leg Armor!!! 
 
LLa = Instance.new("Part") 
LLa.Name = "RightLegArmor" 
LLa.formFactor = "Symmetric" 
LLa.Size = Vector3.new(1,2,1) 
LLa.TopSurface = "Smooth" 
LLa.BottomSurface = "Smooth" 
LLa.BrickColor = BrickColor.new("Really black") 
LLa.Reflectance = 0.1 
LLa.Transparency = 0.1 
 
LLm = Instance.new("BlockMesh") 
LLm.Parent = LLa 
LLm.Scale = Vector3.new(1.1,1.1,1.1) 
 
LLa.Parent = Characters 
LLaw = Instance.new("Weld") 
LLaw.Part0 = LL 
LLaw.Part1 = LLa 
LLaw.Parent = LL 
LLaw.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 
 
 
 
 
 
 
 
 
--Right Leg!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 
--Right Leg Armor!!! 
 
RLa = Instance.new("Part") 
RLa.Name = "RightLegArmor" 
RLa.formFactor = "Symmetric" 
RLa.Size = Vector3.new(1,2,1) 
RLa.TopSurface = "Smooth" 
RLa.BottomSurface = "Smooth" 
RLa.BrickColor = BrickColor.new("Really black") 
RLa.Reflectance = 0.1 
RLa.Transparency = 0.1 
 
RLm = Instance.new("BlockMesh") 
RLm.Parent = RLa 
RLm.Scale = Vector3.new(1.1,1.1,1.1) 
 
RLa.Parent = Characters 
RLaw = Instance.new("Weld") 
RLaw.Part0 = RL 
RLaw.Part1 = RLa 
RLaw.Parent = RL 
RLaw.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 
 
--Watch 8D!!! 
 
Watch2 = Instance.new("Part") 
Watch2.Name = "Watch2" 
Watch2.formFactor = "Plate" 
Watch2.Size = Vector3.new(1,0.4,1) 
Watch2.TopSurface = "Smooth" 
Watch2.BottomSurface = "Smooth" 
Watch2.BrickColor = BrickColor.new("Really black") 
Watch2.Reflectance = 0.1 
Watch2.Transparency = 0.1 
 
Watch2.Parent = Characters 
Watch2w = Instance.new("Weld") 
Watch2w.Part0 = RA 
Watch2w.Part1 = Watch2 
Watch2w.Parent = RA 
Watch2w.C0 = CFrame.new(0,-0.25,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 
 
 
 
--Sounds in the Suit!!!! 
Cs = Instance.new("Sound") 
Cs.Parent = Ta 
Cs.Name = "Cast" 
Cs.Volume = 1 
Cs.Pitch = 1 
Cs.SoundId = "http://www.roblox.com/asset/?id=2101137" 
 
Fp = Instance.new("Sound") 
Fp.Parent = Ta 
Fp.Name = "FalconPunch" 
Fp.Volume = 1 
Fp.Pitch = 1 
Fp.SoundId = "http://www.roblox.com/asset/?id=1387390" 
 
Tz = Instance.new("Sound") 
Tz.Parent = Ta 
Tz.Name = "Tz" 
Tz.Volume = 1 
Tz.Pitch = 1 
Tz.SoundId = "http://www.roblox.com/asset/?id=2974000" 
 
Hs = Instance.new("Sound") 
Hs.Parent = Ta 
Hs.Name = "Heal" 
Hs.Volume = 1 
Hs.Pitch = 1 
Hs.SoundId = "http://www.roblox.com/asset/?id=2101144" 
 
Ex = Instance.new("Sound") 
Ex.Parent = Ta 
Ex.Name = "Ex" 
Ex.Volume = 1 
Ex.Pitch = 1 
Ex.SoundId = "http://www.roblox.com/asset?id=2101157" 
 
 
 
 
 
---ENd of Suit!!!!!!! 
 
 
---Function!!!!!!!!!! :D YEAH! 
 
 
 
 
print("0") 
function SetAngle(Joint, Angle) 
if (Joint == 1) or (Joint == 3) then 
Joints[Joint].DesiredAngle = Angle 
end 
if (Joint == 2) or (Joint == 4) then 
Joints[Joint].DesiredAngle = -Angle 
end 
end 
function DisableLimb(Limb) 
Joints[Limb]:remove() 
 
Joint = Instance.new("Motor") 
Joint.Parent = Person.Character.Torso 
Joint.Part0 = Person.Character.Torso 
Joint.Part1 = Limbs[Limb] 
Joint.MaxVelocity = 0.1 
if (Limb == 1) then 
C0 = CFrame.new(PersonT.Size.x/2 + Limbs[Limb].Size.x/2, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14/2, 0) 
Joint.C1 = CFrame.new(0, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14/2, 0) 
Joint.Name = "Right Joint Top" 
elseif (Limb == 2) then 
C0 = CFrame.new(-PersonT.Size.x/2 - Limbs[Limb].Size.x/2, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14/2, 0) 
Joint.C1 = CFrame.new(0, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14/2, 0) 
Joint.Name = "Left Joint Top" 
elseif (Limb == 3) then 
C0 = CFrame.new(Limbs[Limb].Size.x/2, -(Limbs[Limb].Size.y/4) * 3, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14/2, 0) 
Joint.C1 = CFrame.new(0, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14/2, 0) 
Joint.Name = "Right Joint Bottom" 
elseif(Limb == 4) then 
C0 = CFrame.new(-Limbs[Limb].Size.x/2, -(Limbs[Limb].Size.y/4) * 3, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14/2, 0) 
Joint.C1 = CFrame.new(0, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14/2, 0) 
Joint.Name = "Left Joint Bottom" 
end 
Joint.C0 = C0 
Joints[Limb] = Joint 
end 
 
print("1") 
 
function EnableLimb(Limb) 
if (Limb == 1) then 
Joints[Limb].Name = "Right Shoulder" 
elseif (Limb == 2) then 
Joints[Limb].Name = "Left Shoulder" 
elseif (Limb == 3) then 
Joints[Limb].Name = "Right Hip" 
elseif(Limb == 4) then 
Joints[Limb].Name = "Left Hip" 
end 
Anim = Person.Character.Animate:clone() 
Person.Character.Animate:remove() 
Anim.Parent = Person.Character 
end 
 
print("2") 
 
function Grab(Part) 
if (Grabbed == nil) then 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
Player = game.Players:GetPlayerFromCharacter(Human.Parent) 
if (Player ~= nil) then 
if (Player ~= Person) then 
Human.Sit = true 
Weld = Instance.new("Weld") 
Weld.Name = "Grip" 
Weld.Parent = Person.Character.Torso 
Weld.Part0 = Person.Character.Torso 
Weld.Part1 = Player.Character.Torso 
Weld.C0 = CFrame.new(0, 2.5, 0) * CFrame.fromEulerAnglesXYZ(3.14/2, 0, 0) 
SetAngle(1, 3.14) 
SetAngle(2, 3.14) 
Grabbed = Player 
Human.Sit = true 
Connection1:disconnect() 
Connection2:disconnect() 
while true do 
if (Weld.Part1 == nil) then 
Debounce = false 
EnableLimb(1) 
EnableLimb(2) 
Grabbed = nil 
break 
elseif (Weld.Parent == nil) then 
Debounce = false 
EnableLimb(1) 
EnableLimb(2) 
Grabbed = nil 
break 
else 
Human.Sit = true 
end 
wait() 
end 
end 
end 
end 
end 
end 
end 
 
print("3") 
 
 
function Click(mouse) 
Hold = true 
if (Flight == true) then 
Person.Character.Engine.BodyPosition.maxForce = Vector3.new(0, 0, 0) 
Person.Character.Engine.BodyVelocity.maxForce = Vector3.new(4e+030, 4e+030, 4e+030) 
Position = Person.Character.Engine.Position 
Person.Character.Engine.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(3.14/2, 0, 0) 
SetAngle(NormalHand, 3.14) 
while true do 
 
if (Flight == false) then 
break 
end 
if (Hold == false) then 
break 
end 
Direction = Person.Character.Engine.CFrame.lookVector 
Position = Position + 2 * 3 * Direction 
error = Position - Person.Character.Engine.Position 
Person.Character.Engine.BodyVelocity.velocity = 2 * error 
wait() 
end 
BodyP.position = Engine.Position 
Person.Character.Engine.BodyPosition.maxForce = Vector3.new(4e+050, 4e+050, 4e+050) 
 
Person.Character.Engine.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
SetAngle(NormalHand, 0) 
 
end 
 
end 
 
 
 
 
print("5") 
 
function Release(mouse) 
Hold = false 
end 
function Direct(En, Target) 
local OriginCFrame = En:findFirstChild("BodyGyro").cframe 
local Direction = (Target - En.Position).unit 
local SpawnPosition = En.Position 
local Position = SpawnPosition + (Direction * 1) 
En:findFirstChild("BodyGyro").maxTorque = Vector3.new(9000, 9000, 9000) 
En:findFirstChild("BodyGyro").cframe = CFrame.new(Position, Position + Direction) 
end 
 
print("6") 
 
function PressKey(key, mouse) 
key = key:upper() 
if (key == "Z") then 
if (Debounce == false) then 
Debounce = true 
DisableLimb(1) 
DisableLimb(2) 
Joints[1].MaxVelocity = 1 
SetAngle(1, 3.14) 
Joints[2].MaxVelocity = 1 
SetAngle(2, 3.14) 
function Touch(Part) 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
--Human.Sit = true 
Human.Parent.Torso.Velocity = Vector3.new(0, 300, 0) 
end 
end 
end 
Connection = Limbs[1].Touched:connect(Touch) 
ConnectionB = Limbs[2].Touched:connect(Touch) 
wait(0.5) 
Joints[1].MaxVelocity = 0.1 
Joints[2].MaxVelocity = 0.1 
EnableLimb(1) 
EnableLimb(2) 
Connection:disconnect() 
ConnectionB:disconnect() 
Debounce = false 
end 
end 
if (key == "N") then 
X = game.Workspace:GetChildren() 
for I, E in pairs(X) do 
if (E.Name == "Bomb") then 
E.Ex:play() 
Ex = Instance.new("Explosion") 
Ex.Parent = game.Workspace 
Ex.BlastRadius = 15 
Ex.Position = E.Position 
Ex.BlastPressure = 1000 
E:remove() 
end 
end 
end 
if (key == "Y") then 
Bomb = Instance.new("Part") 
Character.Suit.TorsoArmor.Ex:Clone().Parent = Bomb 
Bomb.Name = "Bomb" 
Bomb.formFactor = "Symmetric" 
Bomb.Shape = "Ball" 
Bomb.Size = Vector3.new(2,2,2) 
Bomb.TopSurface = 0 
Bomb.BottomSurface = 0 
Bomb.BrickColor = BrickColor.new("Blue") 
Bomb.CFrame = CFrame.new(Person.Character.Suit.Watch2.Position) 
Bomb.CanCollide = true 
Bomb.Parent = game.Workspace 
Smoke = Instance.new("Smoke") 
Smoke.Parent = Bomb 
local c = (PersonT.Color.r + PersonT.Color.g + PersonT.Color.b)/3 
Smoke.Color = Color3.new(0,0,0) 
Smoke.Size = 2 
Smoke.Opacity = 0.5 
Bomb:BreakJoints() 
end 
if (key == "Q") then 
if (Debounce == false) then 
Debounce = true 
DisableLimb(NormalFoot) 
Joints[NormalFoot].MaxVelocity = 1 
SetAngle(NormalFoot, 0.7) 
function Touch(Part) 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
Human.Sit = true 
Position = Human.Parent.Torso.Position 
Direction = PersonT.CFrame.lookVector 
Position = Position + 10 * 3 * Direction 
error = Position - PersonT.Position 
Human.Parent.Torso.Velocity = 5 * error 
Human.Parent.Torso.Velocity = Human.Parent.Torso.Velocity + Vector3.new(0, 50, 0) 
end 
end 
end 
Connection = Limbs[NormalFoot].Touched:connect(Touch) 
wait(0.5) 
Joints[NormalFoot].MaxVelocity = 0.2 
EnableLimb(NormalFoot) 
Connection:disconnect() 
Debounce = false 
end 
end 
if (key == "F") then 
if (Debounce == false) then 
Debounce = true 
DisableLimb(NormalFoot) 
Joints[NormalFoot].MaxVelocity = 1 
SetAngle(NormalFoot, 0.7) 
function Touch(Part) 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
Player = game.Players:GetPlayerFromCharacter(Human.Parent) 
if (Player ~= nil) then 
if (Player ~= Person) then 
Human.Sit = true 
Position = Human.Parent.Torso.Position 
Direction = PersonT.CFrame.lookVector 
Position = Position + 10 * 3 * Direction 
error = Position - PersonT.Position 
Human.Parent.Torso.Velocity = 10 * error 
Human.Parent.Torso.Velocity = Human.Parent.Torso.Velocity + Vector3.new(0, 100, 0) 
wait(0.5) 
Player:remove() 
end 
end 
end 
end 
end 
Connection = Limbs[NormalFoot].Touched:connect(Touch) 
wait(0.5) 
Joints[NormalFoot].MaxVelocity = 0.1 
EnableLimb(NormalFoot) 
Connection:disconnect() 
Debounce = false 
end 
end 
if (key == "E") then 
if (Flight == true) then 
if (FDebounce == false) then 
FDebounce = true 
Character.Suit.TorsoArmor.FalconPunch:play() 
function Touch(Part) 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
Instance.new("Smoke").Parent = Character.Suit.LegArmArmor 
Character.Suit.LegArmArmor.Smoke.Color = Color3.new(0,0,0) 
wait(0.8) 
Human.Sit = true 
Huamn.Health = Human.Health - 99.999 
Position = Human.Parent.Torso.Position 
Direction = Person.Character.Engine.CFrame.lookVector 
Position = Position + 10 * 3 * Direction 
error = Position - PersonT.Position 
Human.Parent.Torso.Velocity = 10 * error 
Character.Suit.LegArmArmor.Smoke:Remove() 
end 
end 
end 
Connection = PersonT.Touched:connect(Touch) 
wait(2) 
Connection:disconnect() 
FDebounce = false 
end 
end 
if (Debounce == false) then 
Debounce = true 
DisableLimb(NormalHand) 
Joints[NormalHand].MaxVelocity = 1 
SetAngle(NormalHand, 1.57) 
function Touch(Part) 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
Human.Sit = true 
Position = Human.Parent.Torso.Position 
Direction = PersonT.CFrame.lookVector 
Position = Position + 10 * 3 * Direction 
error = Position - PersonT.Position 
Human.Parent.Torso.Velocity = 10 * error 
end 
end 
end 
Connection = Limbs[NormalHand].Touched:connect(Touch) 
wait(0.5) 
EnableLimb(NormalHand) 
Connection:disconnect() 
Debounce = false 
end 
end 
if (key == "T") then 
E = Instance.new("Explosion") 
E.Parent = game.Workspace 
E.BlastRadius = 12 
E.Position = mouse.hit.p 
E.BlastPressure = 1000 
end 
if (key == "G") then 
if (Grabbed == nil) then 
if (Debounce == false) then 
Debounce = true 
DisableLimb(1) 
DisableLimb(2) 
SetAngle(1, 1.57) 
SetAngle(2, 1.57) 
Connection1 = Limbs[1].Touched:connect(Grab) 
Connection2 = Limbs[2].Touched:connect(Grab) 
for E = 1, 30 do 
if (Grabbed ~= nil) then 
break 
end 
wait(0.1) 
end 
if (Grabbed == nil) then 
EnableLimb(1) 
EnableLimb(2) 
Connection1:disconnect() 
Connection2:disconnect() 
Debounce = false 
end 
end 
else 
Person.Character.Torso.Grip:remove() 
Position = Grabbed.Character.Torso.Position 
Direction = PersonT.CFrame.lookVector 
Position = Position + 4 * 3 * Direction 
error = Position - PersonT.Position 
Grabbed.Character.Torso.Velocity = 4 * error 
end 
end 
if (key == "R") then 
if (Flight == false) then 
if (Debounce == false) then 
Debounce = true 
DisableLimb(1) 
DisableLimb(2) 
Flight = true 
DisableLimb(3) 
DisableLimb(4) 
SetAngle(1, 0) 
SetAngle(2, 0) 
SetAngle(3, 0) 
SetAngle(4, 0) 
Engine = Instance.new("Part") 
Engine.Parent = Person.Character 
Engine.Size = PersonT.Size 
Engine.Name = "Engine" 
Engine.TopSurface = 0 
Engine.BottomSurface = 0 
Engine.formFactor = "Symmetric" 
Engine.Transparency = 1 
Engine:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Engine 
Weld.Part0 = PersonT 
Weld.Part1 = Engine 
Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
BodyP = Instance.new("BodyPosition") 
BodyP.Parent = Engine 
BodyP.position = Engine.Position + Vector3.new(0, 10, 0) 
BodyP.maxForce = Vector3.new(4e+050, 4e+050, 4e+050) 
BodyG = Instance.new("BodyGyro") 
BodyG.Parent = Engine 
BodyV = Instance.new("BodyVelocity") 
BodyV.Parent = Engine 
BodyV.velocity = Vector3.new(0, 0, 0) 
BodyV.maxForce = Vector3.new(0, 0, 0) 
while true do 
if (Flight == false) then 
break 
end 
Direct(Engine, mouse.hit.p) 
Person.Character.Humanoid.Sit = true 
Person.Character.Head.CanCollide = false 
Person.Character.Torso.CanCollide = false 
wait(0.000000000000000000000000000000001) 
end 
EnableLimb(1) 
EnableLimb(2) 
EnableLimb(3) 
EnableLimb(4) 
Debounce = false 
Person.Character.Engine:remove() 
Person.Character.Humanoid.Sit = false 
end 
else 
Flight = false 
end 
end 
if (key == "L") then 
DisableLimb(NormalHand) 
SetAngle(NormalHand, 2.57) 
wait(1) 
SetAngle(NormalHand, 0) 
end 
if (key == "H") then -- Heal 8D 
if (Debounce == false) then 
Debounce = true 
 
HealBrick = Instance.new("Part") 
HealBrick.CanCollide = false 
HealBrick.Anchored = true 
HealBrick.Transparency = 0 
HealBrick.Locked = true 
HealBrick.archivable = false 
HealBrick.TopSurface = 0 
HealBrick.BottomSurface = 0 
HealBrick.Size = Vector3.new(2,4,2) 
HealBrick.BrickColor = BrickColor.new("Really black") 
HealBrick.Parent = Suit 
 
HealBrick.CFrame = Torso.CFrame 
 
Hm = Instance.new("SpecialMesh") 
Hm.Parent = HealBrick 
Hm.MeshType = "Sphere" 
 
 
for i=1,10 do 
Hm.Scale = Hm.Scale + Vector3.new(0.4,0.8,0.4) 
wait(0.1) 
end 
Ta.Heal:play() 
for i=1,12 do 
Hm.Scale = Hm.Scale - Vector3.new(0.4,0.8,0.4) 
wait(0.1) 
end 
 
Character.Humanoid.Health = Character.Humanoid.Health + 999999999 
HealBrick:Remove() 
 
wait(0.1) 
 
Debounce = false 
 
end 
end 
if (key == "J") and (UsingTools == 0) then -- Summoning Tools!! 8D 
if (Debounce == false) and (AnimatingTools == false) then 
if (Lazer == false) then 
Debounce = true 
UsingTools = 1 
AnimatingTools = true 
 
NewTool = Instance.new("Model") 
NewTool.Parent = Suit 
NewTool.Name = "GiantSword" 
 
Character.Suit.TorsoArmor.Anchored = true 
 
Pt = Instance.new("Part") 
Pt.CanCollide = false 
Pt.Anchored = true 
Pt.Transparency = 0.8 
Pt.Locked = true 
Pt.archivable = false 
Pt.TopSurface = 0 
Pt.BottomSurface = 0 
Pt.Size = Vector3.new(2,3,2) 
Pt.BrickColor = BrickColor.new("Magenta") 
Pt.Parent = Suit 
Pt.CFrame = Torso.CFrame + Torso.CFrame.lookVector * 10 
Pt.CFrame = Pt.CFrame + Vector3.new(0,10,0) 
 
Pm = Instance.new("SpecialMesh") 
Pm.Parent = Pt 
Pm.MeshType = "Sphere" 
 
for i=1,10 do 
Pm.Scale = Pm.Scale + Vector3.new(0.4,0.8,0.4) 
wait(0.05) 
end 
 
wait(0.1) 
 
for i=1,16 do 
wait(0.05) 
Pt.Transparency = Pt.Transparency - 0.05 
end 
 
Ta.Tz:play() 
 
--GIANT SWORD CCREATION :D 
Gsh1 = Instance.new("Part") 
Gsh1.Name = "Handle" 
Gsh1.CanCollide = true 
Gsh1.Anchored = false 
Gsh1.Transparency = 0 
Gsh1.Locked = true 
Gsh1.archivable = false 
Gsh1.TopSurface = 0 
Gsh1.BottomSurface = 0 
Gsh1.Size = Vector3.new(1,1,1) 
Gsh1.formFactor = "Symmetric" 
Gsh1.BrickColor = BrickColor.new("Mid gray") 
Gsh1.Parent = NewTool 
Gsh1.CFrame = Pt.CFrame - Vector3.new(0,-4.5,0) 
 
 
 
Gsh2 = Instance.new("Part") 
Gsh2.Name = "Handle2" 
Gsh2.CanCollide = true 
Gsh2.Anchored = false 
Gsh2.Transparency = 0 
Gsh2.Locked = true 
Gsh2.archivable = false 
Gsh2.TopSurface = 0 
Gsh2.BottomSurface = 0 
Gsh2.Size = Vector3.new(1,1,1) 
Gsh2.formFactor = "Symmetric" 
Gsh2.BrickColor = BrickColor.new("Mid gray") 
Gsh2.CFrame = Pt.CFrame - Vector3.new(0,-4,0) 
 
Gsh2m = Instance.new("BlockMesh") 
Gsh2m.Parent = Gsh2 
Gsh2m.Scale = Vector3.new(2.2,0.25,2) 
 
Gsh2.Parent = NewTool 
Gsh2w = Instance.new("Weld") 
Gsh2w.Part0 = Gsh2 
Gsh2w.Part1 = Gsh1 
Gsh2w.Parent = Gsh2 
Gsh2w.C0 = CFrame.new(0,-0.48,0)*CFrame.fromEulerAnglesXYZ(0,1.5,0) 
 
Gss = Instance.new("Part") 
Gss.CanCollide = true 
Gss.Anchored = false 
Gss.Transparency = 0 
Gss.Locked = true 
Gss.archivable = false 
Gss.TopSurface = 0 
Gss.BottomSurface = 0 
Gss.Size = Vector3.new(2,5,1) 
Gss.formFactor = "Symmetric" 
Gss.BrickColor = BrickColor.new("Mid gray") 
Gss.CFrame = Pt.CFrame - Vector3.new(0,-1.5,0) 
 
Gssm = Instance.new("SpecialMesh") 
Gssm.Parent = Gss 
Gssm.MeshType = "Brick" 
Gssm.Scale = Vector3.new(0.8,1,0.2) 
 
Gss.Parent = NewTool 
Gssw = Instance.new("Weld") 
Gssw.Part0 = Gss 
Gssw.Part1 = Gsh2 
Gssw.Parent = Gss 
Gssw.C0 = CFrame.new(0,-2.5,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 
 
Gsw1 = Instance.new("Part") 
Gsw1.Name = "Blade" 
Gsw1.CanCollide = true 
Gsw1.Anchored = false 
Gsw1.Transparency = 0 
Gsw1.Locked = true 
Gsw1.archivable = false 
Gsw1.TopSurface = 0 
Gsw1.BottomSurface = 0 
Gsw1.Size = Vector3.new(2,5,1) 
Gsw1.formFactor = "Symmetric" 
Gsw1.BrickColor = BrickColor.new("Mid gray") 
Gsw1.CFrame = Pt.CFrame - Vector3.new(0,-1.5,0) 
 
gsbg = Instance.new("BodyGyro") 
gsbg.Parent = Gsh1 
 
gsbp = Instance.new("BodyPosition") 
gsbp.Parent = Gsh1 
gsbp.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
gsbp.position = Gsh1.Position 
 
 
 
for i=1,12 do 
Pm.Scale = Pm.Scale - Vector3.new(0.4,0.8,0.4) 
wait(0.05) 
end 
Pt:Remove() 
 
wait(0.5) 
 
gsbp.position = Suit.RightArmArmor.Position 
 
wait(1) 
 
Gsh1.BodyGyro:Remove() 
Gsh1.BodyPosition:Remove() 
 
Gsh1w = Instance.new("Weld") 
Gsh1w.Part0 = Gsh1 
Gsh1w.Part1 = Suit.RightArmArmor 
Gsh1w.Parent = Gsh1 
Gsh1w.C0 = CFrame.new(0.5,1,0)*CFrame.fromEulerAnglesXYZ(0,1.5,0) 
 
wait(0.5) 
 
Ta.Anchored = false 
 
wait(0.5) 
AnimatingTools = false 
Debounce = False 
end 
end 
end 
if (key == "K") then 
if (Debounce == false) then 
if (Lazer == false) then 
Debounce = true 
Lazer = true 
DisableLimb(NormalHand) 
SetAngle(NormalHand, 0.785) 
BP = Instance.new("BodyPosition") 
BP.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
BP.P = BP.P / 4 
BG = Instance.new("BodyGyro") 
BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
local targ = nil 
local Mag = nil 
local Pos = nil 
while true do 
if (Lazer == false) then 
break 
end 
if (mouse.Target ~= nil) and (targ == nil) then 
if (mouse.Target.Anchored == false) then 
if ((mouse.Hit.p - Person.Character.Suit.Watch2.Position).magnitude <= 10000) then 
targ = mouse.Target 
BP.Parent = targ 
BG.Parent = targ 
Mag = (targ.Position - mouse.Hit.p).magnitude 
Pos = (targ.Position - mouse.Hit.p).unit * -Mag 
end 
end 
end 
local pop = mouse.Hit.p 
local G = Instance.new("Part") 
G.Parent = Person.Character 
G.Name = "Grab Lazer" 
G.Anchored = true 
G.Locked = true 
G.CanCollide = false 
G.formFactor = 0 
G.Size = Vector3.new(1, 1, 1) 
G.BrickColor = BrickColor.new("Royal blue") 
G.Reflectance = 0.05 
G.Transparency = 0.025 
local Place0 = Person.Character.Suit.Watch2.CFrame * CFrame.new(0, -0.1, 0) 
local MeAsh = Instance.new("CylinderMesh") 
MeAsh.Parent = G 
if (targ == nil) or (targ.Anchored == true) then 
MeAsh.Scale = Vector3.new(0.1, (Place0.p-pop).magnitude, 0.1) 
G.CFrame = CFrame.new((Place0.p + pop)/2, Place0.p) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) 
else 
BP.Parent = targ 
BP.position = (PersonT.CFrame + (mouse.Hit.lookVector * 8) + Pos).p + Vector3.new(0, 5.7, 0) 
BG.Parent = targ 
BG.cframe = CFrame.new(targ.Position, PersonT.Position) 
if (targ.Parent == nil) or (targ.Parent.Parent == Person.Character) then 
BP.Parent = nil 
BG.Parent = nil 
end 
MeAsh.Scale = Vector3.new(0.1, (Place0.p - targ.Position).magnitude, 0.1) 
G.CFrame = CFrame.new((Place0.p + (targ.Position + Pos))/2, Place0.p) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) 
end 
wait() 
G:Remove() 
end 
Debounce = false 
EnableLimb(NormalHand) 
BP.Parent = nil 
BG.Parent = nil 
end 
end 
end 
 
end 
 
print("7") 
 
 
function LiftKey(key, mouse) 
key = key:upper() 
if (key == "L") then 
if (Person.Character.Suit.Band:findFirstChild("Smoke") ~= nil) then 
Person.Character.Suit.Band.Smoke:remove() 
EnableLimb(NormalHand) 
end 
end 
if (key == "H") then 
if (Person.Character:findFirstChild("Grapple Lazer") ~= nil) then 
Lazer = false 
end 
end 
if (key == "J") then 
if (Person.Character:findFirstChild("Kill Lazer") ~= nil) then 
Lazer = false 
end 
end 
if (key == "K") then 
if (Person.Character:findFirstChild("Grab Lazer") ~= nil) then 
Lazer = false 
end 
end 
if (key == "X") then 
if (Person.Character:findFirstChild(" Lazer") ~= nil) then 
Lazer = false 
end 
end 
end 
function Select(mouse) 
mouse.Button1Down:connect(function() Click(mouse) end) 
mouse.Button1Up:connect(function() Release(mouse) end) 
mouse.KeyDown:connect(function(key) PressKey(key, mouse) end) 
mouse.KeyUp:connect(function(key) LiftKey(key, mouse) end) 
end 
 
print("8") 
 
function Deselect(mouse) 
Hold = false 
Lazer = false 
Flight = false 
end 
 
print("9 =D") 
 
ModeDebounce = false 
script.Parent.Selected:connect(function(mouse) 
mouse.KeyDown:connect(function(key) 
key = key:lower() 
 
if (key=="z") and (ModeDebounce == false) then -- z charge ball to fire blast 
ModeDebounce = true 
--[[ 
a["Left Hip"].DesiredAngle = 0 
a["Right Hip"].DesiredAngle = 0 
a["Right Shoulder"].DesiredAngle = 3.1 
a["Left Shoulder"].DesiredAngle = 3.1 ]] 
wait() 
Suit.TorsoArmor.Anchored = true 
 
OldWs = Character.Humanoid.WalkSpeed 
Character.Humanoid.WalkSpeed = 0 
 
wait(1) 
 
Cb = Instance.new("Part") 
Cb.Name = "ChargeBall" 
Cb.formFactor = "Symmetric" 
Cb.Shape = "Ball" 
Cb.Size = Vector3.new(1,1,1) 
Cb.Anchored = true 
Cb.TopSurface = "Smooth" 
Cb.BottomSurface = "Smooth" 
Cb.Locked = true 
Cb.BrickColor = BrickColor.new("Really black") 
Cb.Transparency = 0.5 
Cb.Parent = Character 
Cb.CFrame = Character.Head.CFrame + Vector3.new(0,2,0) 
 
for i=1,20 do 
Suit.TorsoArmor.Cast:play() 
Cb.Size = Cb.Size + Vector3.new(1,1,1) 
Cb.CFrame = Cb.CFrame + Vector3.new(0,0.5,0) 
wait(0.05) 
end 
 
Cb1 = Instance.new("Part") 
Cb1.Name = "ChargeBall" 
Cb1.formFactor = "Symmetric" 
Cb1.Shape = "Ball" 
Cb1.Size = Vector3.new(1,1,1) 
Cb1.Anchored = true 
Cb1.TopSurface = "Smooth" 
Cb1.BottomSurface = "Smooth" 
Cb1.Locked = true 
Cb1.BrickColor = BrickColor.new("Really black") 
Cb1.Transparency = 0.5 
Cb1.Parent = Character 
Cb1.CFrame = Cb.CFrame 
 
Cb:Remove() 
 
Cb = Cb1 
 
Instance.new("ForceField").Parent = Character 
 
Cb.Size = Vector3.new(1,1,1) 
 
Range = 0 
 
Suit.TorsoArmor.Anchored = false 
Character.Humanoid.WalkSpeed = OldWs 
 
 
for i=1,5 do 
wait() 
Suit.TorsoArmor.Ex:play() 
ex1 = Instance.new("Explosion") 
ex1.BlastPressure = 2500 
ex1.BlastRadius = 25 
ex1.Position = Cb.Position + Cb.CFrame.lookVector * Range 
ex1.Parent = game.Workspace 
Range = Range + 50 
wait(0.1) 
end 
 
Character.ForceField:Remove() 
 
 
 
for i=1,5 do 
wait() 
Suit.TorsoArmor.Ex:play() 
ex1 = Instance.new("Explosion") 
ex1.BlastPressure = 5000 
ex1.BlastRadius = 100 
ex1.Position = Cb.Position + Cb.CFrame.lookVector * 250 
wait() 
--ex1.Position = ex1.Position + Vector3.new(-100,100,-100,100,-100,100) 
ex1.Parent = game.Workspace 
wait(0.1) 
end 
 
Cb:Remove() 
 
wait(0.5) 
 
 
ModeDebounce = false 
 
 
 
elseif (key=="m") and (ModeDebounce == false) then -- Spiral BaleFiraz :D 
ModeDebounce = true 
Instance.new("ForceField").Parent = Character 
Instance.new("BodyAngularVelocity").Parent = Torso 
Torso.BodyAngularVelocity.Name = "Bav" 
Torso.Bav.maxTorque = Vector3.new(0,math.huge,0) 
Torso.Bav.angularvelocity = Vector3.new(0,100,0) 
 
Range = 10 
 
for i=1,10 do 
wait() 
Suit.TorsoArmor.Ex:play() 
ex1 = Instance.new("Explosion") 
ex1.BlastPressure = 5000 
ex1.BlastRadius = 10 
ex1.Position = Torso.Position + Torso.CFrame.lookVector * Range 
ex1.Parent = game.Workspace 
 
ex2 = Instance.new("Explosion") 
ex2.BlastPressure = 5000 
ex2.BlastRadius = 10 
ex2.Position = Torso.Position + Torso.CFrame.lookVector * -Range 
ex2.Parent = game.Workspace 
 
Range = Range + 10 
wait(0.1) 
end 
 
Character.ForceField:Remove() 
Torso.Bav:Remove() 
 
wait(0.5) 
 
ModeDebounce = false 
 
 
else 
end 
 
 
end) 
end) 
-- End Keys 
 
print("End") 
 
 
Bin.Selected:connect(Select) 
Bin.Deselected:connect(Deselect) 
 
print("Scripting Rocks!") 
 
Character.Humanoid.MaxHealth = 999999999 
Character.Humanoid.Health = 999999999 
 
while true do 
wait() 
dsbp.position = Torso.Position 
if (Flight == true) then 
Bs.Sparkles.Enabled = true 
w11.Motor.DesiredAngle = -0.5 
w21.Motor.DesiredAngle = 0.5 
wait(0.15) 
w11.Motor.DesiredAngle = 0.5 
w21.Motor.DesiredAngle = -0.5 
wait(0.15) 
elseif (Flight == false) then 
Bs.Sparkles.Enabled = false 
w11.Motor.DesiredAngle = 0 
w21.Motor.DesiredAngle = 0 
wait() 
else 
end 
end 
 
print("11 8D") -- this line fails but doesnt 8D
end}
module[3] = {"Demon Blaze",function()
-- Demon Blaze --
-- Local script --


person = game.Players.LocalPlayer.Name
plyr = game:getService("Players")[person] 
mode = 1
speed = false 
frozen = false 
raon = true 
debby = false 
script.Parent = nil 
pcall(function() 
script.DSource.Value = "LOLWUT" 
end) 
mod = Instance.new("Model") 
mod.Parent = plyr.Character 
mod.Name = "IceMageSuit" 
function updateLooks() 
for i,v in pairs(plyr.Character:getChildren()) do 
if v:IsA("Part") then 
v.Reflectance = 0.1 
v.TopSurface = "Smooth" 
v.BottomSurface = "Smooth" 
v.LeftSurface = "Smooth" 
v.RightSurface = "Smooth" 
v.BrickColor = BrickColor.new("black") 
v.Reflectance = 0.2 
elseif v:IsA("Hat") then 
v:Remove() 
elseif v:IsA("Shirt") then 
v:Remove() 
elseif v:IsA("Pants") then 
v:Remove() 
end 
end 
pcall(function() 
plyr.Character.Torso.roblox:Remove() 
plyr.Character["Shirt Graphic"]:Remove() 
end) 
end 
pcall(function() 
plyr.Character.Head.face:Remove() 
end) 
updateLooks()
-------Suit------------------------------------------------------
--Right arm ShoulderPad-----------------------
rasp = Instance.new("Part") 
rasp.Parent = mod 
rasp.Locked = true 
rasp.Size = Vector3.new(1, 1, 1) 
rasp.formFactor = "Symmetric" 
rasp.BrickColor = BrickColor.new("Bright blue") 
rasp.Reflectance = 0.3 
rasp.TopSurface = "Smooth" 
rasp.BottomSurface = "Smooth"
m = Instance.new("SpecialMesh") 
m.MeshType = "Wedge" 
m.Parent = rasp 
m.Scale = Vector3.new(1.01,1.01,1.01) 
local Weld = Instance.new("Weld") 
Weld.Parent = rasp 
Weld.Part0 = rasp 
Weld.Part1 = plyr.Character["Right Arm"]   
Weld.C0 = CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(90),math.rad(90),math.rad(90)) 
--Right arm ShoulderPad-----------------------
lasp = Instance.new("Part") 
lasp.Parent = mod 
lasp.Locked = true 
lasp.Size = Vector3.new(1, 1, 1) 
lasp.formFactor = "Symmetric" 
lasp.BrickColor = BrickColor.new("Bright blue") 
lasp.Reflectance = 0.3 
lasp.TopSurface = "Smooth" 
lasp.BottomSurface = "Smooth"
m = Instance.new("SpecialMesh") 
m.MeshType = "Wedge" 
m.Parent = lasp 
m.Scale = Vector3.new(1.01,1.01,1.01) 
local Weld = Instance.new("Weld") 
Weld.Parent = lasp 
Weld.Part0 = lasp 
Weld.Part1 = plyr.Character["Left Arm"]   
Weld.C0 = CFrame.new(0,0,-0.5)*CFrame.Angles(0,math.rad(90),math.rad(90)) 
--Crystal in top------------------------------------ 
cry = Instance.new("Part") 
cry.Parent = mod 
cry.Anchored = false 
cry.Size = Vector3.new(1,1,1) 
cry.formFactor = "Symmetric" 
cry.CFrame = CFrame.new(3,3,0) 
cry.BrickColor = BrickColor.new("Bright blue") 
cry.Reflectance = 0.2 
m = Instance.new("SpecialMesh") 
m.Parent = cry 
m.MeshId = "http://www.roblox.com/asset/?id=9756362" 
m.Scale = Vector3.new(0.2,0.5,0.2) 
local Weld = Instance.new("Weld") 
Weld.Parent = cry 
Weld.Part0 = cry 
Weld.Part1 = plyr.Character.Torso
Weld.C0 = CFrame.new(0.7,-0.5,0.5)*CFrame.Angles(0,0,0) 
--Hood on ur head FEWL------------------------------- 
hd = Instance.new("Part") 
hd.Parent = mod 
hd.Anchored = false 
hd.Size = Vector3.new(1,1,1) 
hd.formFactor = "Symmetric" 
hd.CFrame = CFrame.new(3,3,0) 
hd.BrickColor = BrickColor.new("Really black") 
hd.Reflectance = 0.2 
m = Instance.new("SpecialMesh") 
m.Parent = hd 
m.MeshType = "FileMesh"
m.MeshId = "http://www.roblox.com/asset/?id=16952952" 
m.Scale = Vector3.new(1.05, 1.05, 1.05)
local Weld = Instance.new("Weld") 
Weld.Parent = hd 
Weld.Part0 = hd 
Weld.Part1 = plyr.Character.Head
Weld.C0 = CFrame.new(0,-0.35,0)*CFrame.Angles(0,0,0) 
--The right eye------------------------------------- 
e1 = Instance.new("Part") 
e1.Parent = mod 
e1.CanCollide = false
e1.Locked = true 
e1.CanCollide = false 
e1.Size = Vector3.new(1, 1, 1) 
e1.formFactor = "Symmetric" 
e1.BrickColor = BrickColor.new("Institutional white") 
e1.TopSurface = "Smooth" 
e1.BottomSurface = "Smooth" 
e1.Reflectance = 0.2
m = Instance.new("BlockMesh") 
m.Parent = e1 
m.Scale = Vector3.new(0.2, 0.2, 0.2) 
local Weld = Instance.new("Weld") 
Weld.Parent = e1 
Weld.Part0 = e1 
Weld.Part1 = plyr.Character.Head  
Weld.C0 = CFrame.new(0.2,-0.1,0.5)*CFrame.Angles(0,0,0.15) 
--The left eye----------------------------------------
e2 = Instance.new("Part") 
e2.Parent = mod 
e2.CanCollide = false
e2.Locked = true 
e2.CanCollide = false 
e2.Size = Vector3.new(1, 1, 1) 
e2.formFactor = "Symmetric" 
e2.BrickColor = BrickColor.new("Institutional white") 
e2.TopSurface = "Smooth" 
e2.BottomSurface = "Smooth" 
e2.Reflectance = 0.2
m = Instance.new("BlockMesh") 
m.Parent = e2 
m.Scale = Vector3.new(0.2, 0.2, 0.2) 
local Weld = Instance.new("Weld") 
Weld.Parent = e2 
Weld.Part0 = e2 
Weld.Part1 = plyr.Character.Head  
Weld.C0 = CFrame.new(-0.2, -0.1, 0.5)*CFrame.Angles(0,0,-0.15) 
--First arm joint---------------------------------------- 
j1 = Instance.new("Part") 
j1.Parent = mod 
j1.CanCollide = false
j1.Locked = true 
j1.CanCollide = false 
j1.Size = Vector3.new(1, 1, 1) 
j1.formFactor = "Symmetric" 
j1.BrickColor = BrickColor.new("Really red") 
j1.TopSurface = "Smooth" 
j1.BottomSurface = "Smooth" 
j1.Transparency = 1
m = Instance.new("BlockMesh") 
m.Parent = j1 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
local Weldj = Instance.new("Weld") 
Weldj.Parent = j1 
Weldj.Part0 = j1 
Weldj.Part1 = plyr.Character.Torso  
Weldj.C0 = CFrame.new(-1.3,-0.6,0)*CFrame.Angles(0,0,0) 
--Second arm joint----------------------------------------------------
j2 = Instance.new("Part") 
j2.Parent = mod 
j2.CanCollide = false
j2.Locked = true 
j2.CanCollide = false 
j2.Size = Vector3.new(1, 1, 1) 
j2.formFactor = "Symmetric" 
j2.BrickColor = BrickColor.new("Really red") 
j2.TopSurface = "Smooth" 
j2.BottomSurface = "Smooth" 
j2.Transparency = 1
m = Instance.new("BlockMesh") 
m.Parent = j2 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
local Weldj1 = Instance.new("Weld") 
Weldj1.Parent = j2 
Weldj1.Part0 = j2 
Weldj1.Part1 = plyr.Character.Torso  
Weldj1.C0 = CFrame.new(1.3,-0.6,0)*CFrame.Angles(0,0,0) 
--Tool-----------------------------------------------------------------------------------------
rs = plyr.Character.Torso:FindFirstChild("Right Shoulder") 
ls = plyr.Character.Torso:FindFirstChild("Left Shoulder") 
hb = Instance.new("HopperBin") 
hb.Parent = plyr.Backpack 
hb.Name = "Demon Blaze" 
debounce = false
function Select(mouse)  
function onKeyDown(key) 
if debounce == false then debounce = true 
key:lower() 
if string.byte(key) == 113 then 
--Laser mode-------------------------------------------------------------------
if frozen == false then
print("LaserActive") 
debounce = true 
rs.Parent = nil 
Weldrs = Instance.new("Weld") 
Weldrs.Parent = plyr.Character["Right Arm"] 
Weldrs.Part0 = plyr.Character["Right Arm"] 
Weldrs.Part1 = j1 
Weldrs.Name = "Weldrs" 
Weldrs.C0 = CFrame.new(-0.2,0.6,0)*CFrame.Angles(0,0,0) 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0.105, 0, 0) 
wait() 
end 
f1 = Instance.new("Part") 
f1.Parent = mod 
f1.CanCollide = false
f1.Locked = true 
f1.CanCollide = false 
f1.Size = Vector3.new(1, 1, 1) 
f1.formFactor = "Symmetric" 
f1.BrickColor = BrickColor.new("institutional white") 
f1.TopSurface = "Smooth" 
f1.BottomSurface = "Smooth" 
f1.Transparency = 0 
f1.Reflectance = 0.2
m1 = Instance.new("SpecialMesh") 
m1.MeshType = "Sphere" 
m1.Parent = f1 
m1.Scale = Vector3.new(0, 0, 0) 
local Weld = Instance.new("Weld") 
Weld.Parent = f1 
Weld.Part0 = f1 
Weld.Part1 = plyr.Character["Right Arm"]   
Weld.C0 = CFrame.new(0,1,0)*CFrame.Angles(0,0,0) 
f2 = Instance.new("Part") 
f2.Parent = mod 
f2.CanCollide = false
f2.Locked = true 
f2.CanCollide = false 
f2.Size = Vector3.new(1, 1, 1) 
f2.formFactor = "Symmetric" 
f2.BrickColor = BrickColor.new("institutional white") 
f2.TopSurface = "Smooth" 
f2.BottomSurface = "Smooth" 
f2.Transparency = 1 
f2.Reflectance = 0.2
m2 = Instance.new("SpecialMesh") 
m2.MeshType = "Sphere" 
m2.Parent = f2 
m2.Scale = Vector3.new(0, 0, 0) 
local Weld = Instance.new("Weld") 
Weld.Parent = f2 
Weld.Part0 = f2 
Weld.Part1 = f1   
Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) 
f3 = Instance.new("Part") 
f3.Parent = mod 
f3.CanCollide = false
f3.Locked = true 
f3.CanCollide = false 
f3.Size = Vector3.new(1, 1, 1) 
f3.formFactor = "Symmetric" 
f3.BrickColor = BrickColor.new("institutional white") 
f3.TopSurface = "Smooth" 
f3.BottomSurface = "Smooth" 
f3.Transparency = 1 
f3.Reflectance = 0.2
m3 = Instance.new("SpecialMesh") 
m3.MeshId = "http://www.roblox.com/asset/?id=20329976"
m3.Parent = f3 
m3.Scale = Vector3.new(0, 0, 0) 
local Weld = Instance.new("Weld") 
Weld.Parent = f3 
Weld.Part0 = f3 
Weld.Part1 = plyr.Character["Right Arm"]   
Weld.C0 = CFrame.new(0,-1.2,0.1)*CFrame.Angles(math.pi,0,0) 
for i = 1,10 do 
m2.Scale = m2.Scale + Vector3.new(0.1,0.1,0.1) 
f2.Transparency = f2.Transparency - 0.05 
wait() 
end 
for ind = 1,2 do 
for i = 1,10 do 
m1.Scale = m1.Scale + Vector3.new(0.1,0.1,0.1) 
f1.Transparency = f1.Transparency + 0.1 
wait() 
end 
m1.Scale = Vector3.new(0,0,0) 
f1.Transparency = 0
end 
for i = 1,20 do 
m3.Scale = m3.Scale + Vector3.new(0.035,0.035,0.035) 
f3.Transparency = f3.Transparency - 0.03 
wait() 
end 
mp = mouse.Hit.p 
p = Instance.new("Part") 
p.Parent = mod 
p.Locked = true 
p.Transparency = 0.4 
p.CanCollide = false 
p.BrickColor = BrickColor.new("institutional white") 
p.Anchored = true 
p.Reflectance = 0.2
p.Size = Vector3.new(1,(f2.Position-mp).magnitude,1) 
p.CFrame = CFrame.new((f2.Position+mp)/2,f2.Position)*CFrame.Angles(math.pi/2,0,0) 
mp1 = Instance.new("CylinderMesh") 
mp1.Parent = p 
mp1.Scale = Vector3.new(1,1,1) 
p3 = Instance.new("Part") 
p3.Parent = mod 
p3.Locked = true 
p3.Transparency = 0.4 
p3.CanCollide = false 
p3.BrickColor = BrickColor.new("institutional white") 
p3.Anchored = true 
p3.Reflectance = 0.2
p3.Size = Vector3.new(1,(f2.Position-mp).magnitude,1) 
p3.CFrame = CFrame.new((f2.Position+mp)/2,f2.Position)*CFrame.Angles(math.pi/2,0,0)
mp2 = Instance.new("CylinderMesh") 
mp2.Parent = p3 
mp2.Scale = Vector3.new(0.8,1,0.8) 
mt = mouse.Target 
print(mt) 
pcall(function() 
mt.Parent.Humanoid.WalkSpeed = 0 
mt.Parent.Torso.Anchored = true 
iceb = Instance.new("Part") 
iceb.Parent = mt.Parent 
iceb.Name = "LOLURSTUCK" 
iceb.Size = Vector3.new(6,8,6) 
iceb.BrickColor = BrickColor.new("black") 
iceb.Reflectance = 0.3 
iceb.Transparency = 0.4 
iceb.Anchored = true 
iceb.TopSurface = "Smooth" 
iceb.BottomSurface = "Smooth" 
iceb.CFrame = mt.Parent.Torso.CFrame 
delay(2,function() 
for i = 1,20 do 
pcall(function() 
iceb.Transparency = iceb.Transparency + 0.02 
end) 
wait() 
end 
iceb:Remove() 
mt.Parent.Humanoid.WalkSpeed = 16 
mt.Parent.Torso.Anchored = false 
end) 
end) 
pcall(function() 
mt.Parent.Parent.Humanoid.WalkSpeed = 0 
mt.Parent.Parent.Torso.Anchored = true 
iceb = Instance.new("Part") 
iceb.Parent = mt.Parent.Parent 
iceb.Name = "LOLURSTUCK" 
iceb.Size = Vector3.new(6,8,6) 
iceb.BrickColor = BrickColor.new("black") 
iceb.Reflectance = 0.3 
iceb.Transparency = 0.4 
iceb.Anchored = true 
iceb.TopSurface = "Smooth" 
iceb.BottomSurface = "Smooth" 
iceb.CFrame = mt.Parent.Parent.Torso.CFrame 
delay(2,function() 
for i = 1,20 do 
pcall(function() 
iceb.Transparency = iceb.Transparency + 0.02
end) 
wait() 
end 
iceb:Remove() 
mt.Parent.Parent.Humanoid.WalkSpeed = 16 
mt.Parent.Parent.Torso.Anchored = false 
end) 
end) 
wait(0.5) 
for i = 1,20 do 
p.Transparency = p.Transparency - 0.05 
p3.Transparency = p.Transparency - 0.05 
mp1.Scale = mp1.Scale - Vector3.new(0.05,0,0.05) 
mp2.Scale = mp1.Scale - Vector3.new(0.05,0,0.05) 
wait() 
end 
p:Remove() 
p3:Remove() 
for i = 1,10 do 
m2.Scale = m2.Scale - Vector3.new(0.1,0.1,0.1) 
f2.Transparency = f2.Transparency + 0.05 
m3.Scale = m3.Scale - Vector3.new(0.07,0.07,0.07) 
f3.Transparency = f3.Transparency + 0.06 
wait() 
end 
f1:Remove() 
f2:Remove() 
f3:Remove() 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(-0.105, 0, 0) 
wait() 
end 
if rs ~= nil then 
rs.Parent = plyr.Character.Torso 
wcer = plyr.Character["Right Arm"]:findFirstChild("Weldrs") 
if wcer ~= nil then 
wcer:Remove() 
end 
end 
debounce = false 
end 
--Spear attack mode---------------------------------------------------------
elseif string.byte(key) == 122 then 
if frozen == false then 
print("Spear mode active") 
debounce = true 
rs.Parent = nil 
Weldrs = Instance.new("Weld") 
Weldrs.Parent = plyr.Character["Right Arm"] 
Weldrs.Part0 = plyr.Character["Right Arm"] 
Weldrs.Part1 = j1 
Weldrs.Name = "Weldrs" 
Weldrs.C0 = CFrame.new(-0.2,0.6,0)*CFrame.Angles(0,0,0) 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0, 0, 0.17) 
wait() 
end 
sm = Instance.new("Part") 
sm.Parent = mod 
sm.Locked = true 
sm.Size = Vector3.new(1, 1, 1) 
sm.formFactor = "Symmetric" 
sm.BrickColor = BrickColor.new("Really black") 
sm.Transparency = 1
sm.TopSurface = "Smooth" 
sm.CanCollide = false 
sm.BottomSurface = "Smooth" 
sm.Reflectance = 0.2 
m = Instance.new("CylinderMesh") 
m.Parent = sm  
m.Scale = Vector3.new(0.3, 5, 0.3) 
local Weldx = Instance.new("Weld") 
Weldx.Parent = sm 
Weldx.Part0 = sm 
Weldx.Part1 = plyr.Character["Right Arm"]
Weldx.C0 = CFrame.new(0, 0, -1.15)*CFrame.Angles(-1.559,0,0) 
sp = Instance.new("Part") 
sp.Parent = mod 
sp.Anchored = false 
sp.Size = Vector3.new(1,1,1) 
sp.formFactor = "Symmetric" 
sp.BrickColor = BrickColor.new("Really black") 
sp.Transparency = 1 
sp.CanCollide = false 
sp.TopSurface = "Smooth" 
sp.BottomSurface = "Smooth" 
sp.Reflectance = 0.2
m = Instance.new("SpecialMesh") 
m.Parent = sp 
m.MeshId = "http://www.roblox.com/asset/?id=1033714" 
m.Scale = Vector3.new(0.15,0.5,0.15) 
local Weld = Instance.new("Weld") 
Weld.Parent = sp 
Weld.Part0 = sp 
Weld.Part1 = sm
Weld.C0 = CFrame.new(0,-2.7,0)*CFrame.Angles(math.rad(180) ,0,0)
for i = 1,20 do 
sm.Transparency = sm.Transparency - 0.05
sp.Transparency = sp.Transparency - 0.05 
wait() 
end 
wait(0.2) 
for i = 1,10 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(-0.1, 0, 0) 
wait() 
end 
wait(0.2) 
deb0z = false 
function onTouch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if deb0z == false then deb0z = true 
hit.Parent:BreakJoints() 
wait(0.2) 
deb0z = false 
end 
end 
end 
sp.Touched:connect(onTouch) 
function onTouch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if deb0z == false then deb0z = true 
hit.Parent:BreakJoints() 
wait(0.2) 
deb0z = false 
end 
end 
end 
sm.Touched:connect(onTouch)
for ind = 1,4 do 
for i = 1,6 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0.4, -0.008, 0.008) 
wait() 
end 
for i = 1,6 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(-0.4, 0.008, -0.008) 
wait() 
end 
end 
for i = 1,10 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0.1, 0, 0) 
wait() 
end 
for i = 1,20 do 
sm.Transparency = sm.Transparency + 0.05
sp.Transparency = sp.Transparency + 0.05 
wait() 
end 
sm:Remove() 
sp:Remove() 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0, 0, -0.17) 
wait() 
end 
if rs ~= nil then 
rs.Parent = plyr.Character.Torso 
wcer = plyr.Character["Right Arm"]:findFirstChild("Weldrs") 
if wcer ~= nil then 
wcer:Remove() 
end 
end 
debounce = false 
end 
--Shift speed clones---------------------------------------------------------
elseif string.byte(key) == 48 then 
if frozen == false then 
if speed == false then 
speed = true 
plyr.Character.Humanoid.WalkSpeed = 30 
print("Speed active") 
else 
speed = false 
plyr.Character.Humanoid.WalkSpeed = 16 
print("Speed unactive") 
end 
end 
--BOMB DROP :3------------------------------------------------------------- 
elseif string.byte(key) == 101 then 
if frozen == false then 
rs.Parent = nil 
Weldrs = Instance.new("Weld") 
Weldrs.Parent = plyr.Character["Right Arm"] 
Weldrs.Part0 = plyr.Character["Right Arm"] 
Weldrs.Part1 = j1 
Weldrs.Name = "Weldrs" 
Weldrs.C0 = CFrame.new(-0.2,0.6,0)*CFrame.Angles(0,0,0) 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0.105, 0, 0) 
wait() 
end 
bomb = Instance.new("Part") 
bomb.Parent = workspace 
bomb.Anchored = false 
bomb.Size = Vector3.new(1,1,1) 
bomb.formFactor = "Symmetric" 
bomb.CFrame = plyr.Character.Torso.CFrame
bomb.BrickColor = BrickColor.new("Bright blue") 
bomb.Reflectance = 0.3 
m = Instance.new("SpecialMesh") 
m.Parent = bomb 
m.MeshId = "http://www.roblox.com/asset/?id=24388358" 
m.Scale = Vector3.new(1,1,1) 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(-0.105, 0, 0) 
wait() 
end 
if rs ~= nil then 
rs.Parent = plyr.Character.Torso 
wcer = plyr.Character["Right Arm"]:findFirstChild("Weldrs") 
if wcer ~= nil then 
wcer:Remove() 
end 
end 
wait(1) 
e = Instance.new("Explosion") 
e.Parent = bomb 
e.Position = bomb.Position 
e.BlastRadius = 10 
game:getService("Debris"):AddItem(bomb,1) 
end 
--Frozen in TIME-----------------------------------------------------------
elseif string.byte(key) == 114 then 
if frozen == false then 
frozen = true 
speed = false 
rs.Parent = nil 
ls.Parent = nil
Weldrs = Instance.new("Weld") 
Weldrs.Parent = plyr.Character["Right Arm"] 
Weldrs.Part0 = plyr.Character["Right Arm"] 
Weldrs.Part1 = j1 
Weldrs.Name = "Weldrs" 
Weldrs.C0 = CFrame.new(-0.2,0.6,0)*CFrame.Angles(0,0,0) 
Weldls = Instance.new("Weld") 
Weldls.Parent = plyr.Character["Left Arm"] 
Weldls.Part0 = plyr.Character["Left Arm"] 
Weldls.Part1 = j2 
Weldls.Name = "Weldls" 
Weldls.C0 = CFrame.new(0.2,0.6,0)*CFrame.Angles(0,0,0) 
for i = 1,12 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0, 0, 0.15) 
Weldls.C1 = Weldls.C1*CFrame.fromEulerAnglesXYZ(0, 0, -0.15) 
wait() 
end 
psh = Instance.new("Part") 
psh.Parent = mod 
psh.Name = "FrozenShield" 
psh.Anchored = true 
psh.Size = Vector3.new(15,15,15) 
psh.CFrame = plyr.Character.Torso.CFrame + Vector3.new(0,4.5,0) 
psh.Reflectance = 0.2 
psh.BrickColor = BrickColor.new("black") 
psh.Transparency = 0.5 
psh.TopSurface = "Smooth" 
psh.BottomSurface = "Smooth" 
plyr.Character.Torso.Anchored = true 
plyr.Character.Humanoid.WalkSpeed = 0 
ff = Instance.new("ForceField") 
ff.Parent = plyr.Character 
plyr.Character.Humanoid.Health = math.huge 
ff = Instance.new("ForceField") 
ff.Parent = mod 
else 
frozen = false 
for i = 1,12 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0, 0, -0.15) 
Weldls.C1 = Weldls.C1*CFrame.fromEulerAnglesXYZ(0, 0, 0.15) 
wait() 
end 
for i,v in pairs(plyr.Character:getChildren()) do 
if v:IsA("ForceField") then 
v:Remove() 
end 
end  
for i,v in pairs(mod:getChildren()) do 
if v:IsA("ForceField") then 
v:Remove() 
end 
end 
for i = 1,10 do 
psh.Transparency = psh.Transparency + 0.05 
wait() 
end 
psh:Remove() 
if rs ~= nil then 
rs.Parent = plyr.Character.Torso 
end 
if ls ~= nil then 
ls.Parent = plyr.Character.Torso 
end 
wcer = plyr.Character["Right Arm"]:findFirstChild("Weldrs") 
if wcer ~= nil then 
wcer:Remove() 
end 
wcel = plyr.Character["Left Arm"]:findFirstChild("Weldls") 
if wcer ~= nil then 
wcel:Remove() 
end 
plyr.Character.Torso.Anchored = false 
plyr.Character.Humanoid.WalkSpeed = 16 
plyr.Character.Humanoid.Health = 100 
end 
--grab--------------------------------------------------------------------- 
elseif string.byte(key) == 103 then 
if frozen == false and speed == false then 
if mouse.Target ~= nil then 
rs.Parent = nil 
Weldrs = Instance.new("Weld") 
Weldrs.Parent = plyr.Character["Right Arm"] 
Weldrs.Part0 = plyr.Character["Right Arm"] 
Weldrs.Part1 = j1 
Weldrs.Name = "Weldrs" 
Weldrs.C0 = CFrame.new(-0.2,0.6,0)*CFrame.Angles(0,0,0) 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0.105, 0, 0) 
wait() 
end 
humz = Instance.new("Humanoid") 
humz.Parent = mod 
humz.MaxHealth = math.huge 
mt = Instance.new("Part") 
mt.Parent = mod 
mt.CanCollide = false
mt.Locked = true 
mt.Name = "Torso"
mt.CanCollide = false 
mt.Size = Vector3.new(1, 1, 1) 
mt.formFactor = "Symmetric" 
mt.BrickColor = BrickColor.new("Really black") 
mt.TopSurface = "Smooth" 
mt.BottomSurface = "Smooth" 
mt.Transparency = 1 
mt.Reflectance = 0.2
m1 = Instance.new("SpecialMesh") 
m1.MeshType = "Sphere" 
m1.Parent = mt 
m1.Scale = Vector3.new(0, 0, 0) 
local Weld = Instance.new("Weld") 
Weld.Parent = mt 
Weld.Part0 = mt 
Weld.Part1 = plyr.Character["Right Arm"]
Weld.C0 = CFrame.new(0,1,0)*CFrame.Angles(0,0,0) 
mth = Instance.new("Part") 
mth.Parent = mod 
mth.CanCollide = false
mth.Locked = true 
mth.Name = "Head" 
mth.CanCollide = false 
mth.Size = Vector3.new(1, 1, 1) 
mth.formFactor = "Symmetric" 
mth.BrickColor = BrickColor.new("Really black") 
mth.TopSurface = "Smooth" 
mth.BottomSurface = "Smooth" 
mth.Transparency = 1 
mth.Reflectance = 0.2
m2 = Instance.new("SpecialMesh") 
m2.MeshType = "Sphere" 
m2.Parent = mth 
m2.Scale = Vector3.new(0, 0, 0) 
local Weld = Instance.new("Weld") 
Weld.Parent = mth 
Weld.Part0 = mth 
Weld.Part1 = mt
Weld.C0 = CFrame.new(0, 0, 0) 
for i = 1,5 do 
m1.Scale = m1.Scale + Vector3.new(0.25,0.25,0.25) 
mt.Transparency = mt.Transparency - 0.2 
wait() 
end 
spl = Instance.new("SelectionPointLasso") 
spl.Parent = mod 
spl.Humanoid = humz 
spl.Point = mouse.Hit.p 
spl.Color = BrickColor.new("Bright blue") 
bp = Instance.new("BodyPosition") 
bp.Parent = plyr.Character.Torso
bp.position = mouse.Hit.p + Vector3.new(0,3,0) 
bp.maxForce = Vector3.new(100000,100000,100000) 
wait(1.5) 
for i = 1,5 do 
m1.Scale = m1.Scale + Vector3.new(-0.25,-0.25,-0.25) 
mt.Transparency = mt.Transparency + 0.2 
wait() 
end 
bp:Remove() 
spl:Remove() 
humz:Remove() 
mt:Remove() 
mth:Remove() 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(-0.105, 0, 0) 
wait() 
end 
if rs ~= nil then 
rs.Parent = plyr.Character.Torso 
wcer = plyr.Character["Right Arm"]:findFirstChild("Weldrs") 
if wcer ~= nil then 
wcer:Remove() 
end 
end  
end 
end
--Icy Punches---------------------------------------------------------
elseif string.byte(key) == 102 then 
if frozen == false then  
print("Punching NOW") 
raon = false 
debby = false 
if math.random(1,2) == 2 then --Ok, right arm punch
rs.Parent = nil 
Weldrs = Instance.new("Weld") 
Weldrs.Parent = plyr.Character["Right Arm"] 
Weldrs.Part0 = plyr.Character["Right Arm"] 
Weldrs.Part1 = j1 
Weldrs.Name = "Weldrs" 
Weldrs.C0 = CFrame.new(-0.2,0.6,0)*CFrame.Angles(0,0,0) 
for i = 1,5 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0.310, 0, 0) 
Weldrs.C1 = Weldrs.C1 + Vector3.new(0,0,0.170) 
wait() 
end 
wait()
for i = 1,4 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0, 0, -0.1) 
Weldrs.C1 = Weldrs.C1 + Vector3.new(0,0,-0.41) 
wait() 
end 
wait(0.1) 
for i = 1,8 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0, 0, 0.05) 
Weldrs.C1 = Weldrs.C1 + Vector3.new(0,0,0.205) 
wait() 
end 
for i = 1,5 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(-0.310, 0, 0) 
Weldrs.C1 = Weldrs.C1 + Vector3.new(0,0,-0.170) 
wait() 
end 
function onTouch(hit) 
if raon == false and hit.Parent:findFirstChild("Humanoid") ~= nil then 
if debby == false then debby = true  
hit.Parent.Humanoid:TakeDamage(math.random(10,25)) 
end 
end 
end 
plyr.Character["Right Arm"].Touched:connect(onTouch) 
if math.random(1,8) == 4 then --Will it freeze, or not?
print("Freeeeze") 
function onTouch(hit) 
if raon == false and hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Torso:findFirstChild("LOLURSTUCK2") == nil then 
hit.Parent.Humanoid.WalkSpeed = 0 
hit.Parent.Torso.Anchored = true 
iceb = Instance.new("Part") 
iceb.Parent = hit.Parent.Torso 
iceb.Name = "LOLURSTUCK2" 
iceb.Size = Vector3.new(4,8,4) 
iceb.BrickColor = BrickColor.new("black") 
iceb.Reflectance = 0.3 
iceb.Transparency = 0.5 
iceb.Anchored = true 
iceb.TopSurface = "Smooth" 
iceb.BottomSurface = "Smooth" 
iceb.CFrame = hit.Parent.Torso.CFrame 
delay(2,function() 
for i = 1,20 do 
pcall(function() 
iceb.Transparency = iceb.Transparency + 0.05 
end) 
end 
hit.Parent.Humanoid.WalkSpeed = 16 
hit.Parent.Torso.Anchored = false  
game:getService("Debris"):AddItem(iceb,0) 
end) 
end 
end 
end 
plyr.Character["Right Arm"].Touched:connect(onTouch) 
end 
if rs ~= nil then 
rs.Parent = plyr.Character.Torso 
wcer = plyr.Character["Right Arm"]:findFirstChild("Weldrs") 
if wcer ~= nil then 
wcer:Remove() 
end 
end  
else 
ls.Parent = nil 
Weldls = Instance.new("Weld") 
Weldls.Parent = plyr.Character["Left Arm"] 
Weldls.Part0 = plyr.Character["Left Arm"] 
Weldls.Part1 = j2 
Weldls.Name = "Weldls" 
Weldls.C0 = CFrame.new(0.2,0.6,0)*CFrame.Angles(0,0,0) 
for i = 1,5 do 
Weldls.C1 = Weldls.C1*CFrame.fromEulerAnglesXYZ(0.310, 0, 0) 
Weldls.C1 = Weldls.C1 + Vector3.new(0,0,0.170) 
wait() 
end 
wait()
for i = 1,4 do 
Weldls.C1 = Weldls.C1*CFrame.fromEulerAnglesXYZ(0, 0, 0.1) 
Weldls.C1 = Weldls.C1 + Vector3.new(0,0,-0.41) 
wait() 
end 
wait(0.1) 
for i = 1,8 do 
Weldls.C1 = Weldls.C1*CFrame.fromEulerAnglesXYZ(0, 0, -0.05) 
Weldls.C1 = Weldls.C1 + Vector3.new(0,0,0.205) 
wait() 
end 
for i = 1,5 do 
Weldls.C1 = Weldls.C1*CFrame.fromEulerAnglesXYZ(-0.310, 0, 0) 
Weldls.C1 = Weldls.C1 + Vector3.new(0,0,-0.170) 
wait() 
end 
function onTouch(hit) 
if raon == false and hit.Parent:findFirstChild("Humanoid") ~= nil then 
if debby == false then debby = true  
hit.Parent.Humanoid:TakeDamage(math.random(10,25)) 
end 
end 
end 
plyr.Character["Left Arm"].Touched:connect(onTouch) 
if math.random(1,8) == 4 then --Will it freeze, or not?
print("Freeeeze") 
function onTouch(hit) 
if raon == false and hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Torso:findFirstChild("LOLURSTUCK2") == nil then 
hit.Parent.Humanoid.WalkSpeed = 0 
hit.Parent.Torso.Anchored = true 
iceb = Instance.new("Part") 
iceb.Parent = hit.Parent.Torso 
iceb.Name = "LOLURSTUCK2" 
iceb.Size = Vector3.new(4,8,4) 
iceb.BrickColor = BrickColor.new("black") 
iceb.Reflectance = 0.3 
iceb.Transparency = 0.5 
iceb.Anchored = true 
iceb.TopSurface = "Smooth" 
iceb.BottomSurface = "Smooth" 
iceb.CFrame = hit.Parent.Torso.CFrame 
delay(2,function() 
for i = 1,20 do 
pcall(function() 
iceb.Transparency = iceb.Transparency + 0.05 
end) 
wait() 
end 
hit.Parent.Humanoid.WalkSpeed = 16 
hit.Parent.Torso.Anchored = false  
game:getService("Debris"):AddItem(iceb,0)  
end) 
end 
end 
end 
plyr.Character["Left Arm"].Touched:connect(onTouch) 
end 
if ls ~= nil then 
ls.Parent = plyr.Character.Torso 
wcer = plyr.Character["Left Arm"]:findFirstChild("Weldls") 
if wcer ~= nil then 
wcer:Remove() 
end 
end  
end 
end 
raon = true 
--Crystal Teleport-------------------------------------------------- 
elseif string.byte(key) == 116 then 
if frozen == false then 
print("Teleporting") 
rs.Parent = nil 
Weldrs = Instance.new("Weld") 
Weldrs.Parent = plyr.Character["Right Arm"] 
Weldrs.Part0 = plyr.Character["Right Arm"] 
Weldrs.Part1 = j1 
Weldrs.Name = "Weldrs" 
Weldrs.C0 = CFrame.new(-0.2,0.6,0)*CFrame.Angles(0,0,0) 
cry2 = Instance.new("Part") 
cry2.Parent = mod 
cry2.Anchored = false 
cry2.Size = Vector3.new(1,1,1) 
cry2.formFactor = "Symmetric" 
cry2.CFrame = CFrame.new(3,3,0) 
cry2.BrickColor = BrickColor.new("really black") 
cry2.Reflectance = 0.3 
mc2 = Instance.new("SpecialMesh") 
mc2.Parent = cry2 
mc2.MeshId = "http://www.roblox.com/asset/?id=9756362" 
mc2.Scale = Vector3.new(0.2,0.5,0.2) 
local Weld = Instance.new("Weld") 
Weld.Parent = cry2 
Weld.Part0 = cry2 
Weld.Part1 = plyr.Character.Torso
Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) 
for i = 1,7 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0.220, 0, 0) 
wait() 
end 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0, 0, -0.1) 
Weldrs.C1 = Weldrs.C1 + Vector3.new(0,0,-0.05) 
Weldrs.C1 = Weldrs.C1 + Vector3.new(-0.05,0,0) 
wait() 
end 
for i = 1,10 do 
plyr.Character.Torso.CFrame = plyr.Character.Torso.CFrame + Vector3.new(0,1,0) 
wait() 
end 
delay(0.001, function() 
for i = 1,15 do 
mc2.Scale = mc2.Scale + Vector3.new(0.4,0.52,0.4) 
wait() 
end 
end) 
plyr.Character.Torso.Anchored = true 
plyr.Character.Humanoid.WalkSpeed = 0 
wait(0.1) 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0, 0, 0.1) 
Weldrs.C1 = Weldrs.C1 + Vector3.new(0,0,0.05) 
Weldrs.C1 = Weldrs.C1 + Vector3.new(0.05,0,0) 
wait() 
end 
for i = 1,7 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(-0.220, 0, 0) 
wait() 
end 
plyr.Character.Torso.Anchored = false 
plyr.Character:MoveTo(mouse.Hit.p + Vector3.new(0,10,0) ) 
plyr.Character.Torso.Anchored = true 
delay(0.2, function() 
for i = 1,15 do 
mc2.Scale = mc2.Scale + Vector3.new(-0.4,-0.52,-0.4) 
wait() 
end 
end)  
wait(0.2)
plyr.Character.Torso.Anchored = false 
plyr.Character.Humanoid.WalkSpeed = 16 
if rs ~= nil then 
rs.Parent = plyr.Character.Torso 
wcer = plyr.Character["Right Arm"]:findFirstChild("Weldrs") 
if wcer ~= nil then 
wcer:Remove() 
end 
end  
end 
--Spike now------------------------------------------------------------
elseif string.byte(key) == 120 then 
print("Spike Active") 
debun = false
Weldrs = Instance.new("Weld") 
Weldrs.Parent = plyr.Character["Right Arm"] 
Weldrs.Part0 = plyr.Character["Right Arm"] 
Weldrs.Part1 = j1 
Weldrs.Name = "Weldrs" 
Weldrs.C0 = CFrame.new(-0.2,0.6,0)*CFrame.Angles(0,0,0) 
sp = Instance.new("Part") 
sp.Parent = workspace 
sp.Name = "DeathSpike"  
sp.Anchored = true 
sp.Size = Vector3.new(1,10,1) 
sp.formFactor = "Symmetric" 
sp.BrickColor = BrickColor.new("institutional white") 
sp.Transparency = 0.4 
sp.CanCollide = false 
sp.TopSurface = "Smooth" 
sp.BottomSurface = "Smooth" 
sp.Reflectance = 0.3
m = Instance.new("SpecialMesh") 
m.Parent = sp 
m.MeshId = "http://www.roblox.com/asset/?id=1033714" 
m.Scale = Vector3.new(1,10,1) 
sp2 = Instance.new("Part") 
sp2.Parent = workspace 
sp2.Name = "DeathSpikeInside"  
sp2.Anchored = true 
sp2.Size = Vector3.new(1,10,1) 
sp2.formFactor = "Symmetric" 
sp2.BrickColor = BrickColor.new("institutional white") 
sp2.Transparency = 0 
sp2.CanCollide = false 
sp2.TopSurface = "Smooth" 
sp2.BottomSurface = "Smooth" 
sp2.Reflectance = 0.2
m = Instance.new("SpecialMesh") 
m.Parent = sp2 
m.MeshId = "http://www.roblox.com/asset/?id=1033714" 
m.Scale = Vector3.new(1,10,1) 
mp = mouse.Hit.p 
mpx = mp.X 
mpy = mp.Y 
mpz = mp.Z 
sp.CFrame = CFrame.new(mpx,workspace.Base.Position.Y - 5,mpz) 
sp2.CFrame = sp.CFrame + Vector3.new(0,-1,0) 
wait() 
delay(0,function() 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(0.105, 0, 0) 
wait() 
end 
end)  
for i = 1,17 do 
sp.CFrame = sp.CFrame + Vector3.new(0,0.5,0) 
sp2.CFrame = sp2.CFrame + Vector3.new(0,0.5,0) 
wait() 
end 
debun = false 
function onTouch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil and debun == false then 
debun = true 
hit.Parent.Humanoid:TakeDamage(math.random(30,40)) 
wait(1.5) 
debun = false 
end 
end 
sp.Touched:connect(onTouch) 
wait(0.5) 
delay(0,function() 
for i = 1,15 do 
Weldrs.C1 = Weldrs.C1*CFrame.fromEulerAnglesXYZ(-0.105, 0, 0) 
wait() 
end 
end)  
for i = 1,17 do 
sp.CFrame = sp.CFrame + Vector3.new(0,-0.5,0) 
sp2.CFrame = sp2.CFrame + Vector3.new(0,-0.5,0) 
wait() 
end 
pcall(function() 
sp:Remove() 
sp2:Remove() 
end) 
if rs ~= nil then 
rs.Parent = plyr.Character.Torso 
wcer = plyr.Character["Right Arm"]:findFirstChild("Weldrs") 
if wcer ~= nil then 
wcer:Remove() 
end 
end 
---
end 
debounce = false 
end 
end 
mouse.KeyDown:connect(onKeyDown) 
function onButton1Down(click) 
end 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
end 
hb.Selected:connect(Select) 
--End-------------------------------------------------------------------------------
while true do 
updateLooks() 
if speed == true then 
for i,v in pairs(plyr.Character:getChildren()) do 
if v:IsA("Part") then 
c = v:Clone() 
c.Parent = mod 
c.Anchored = true 
c.CanCollide = false 
c.CFrame = v.CFrame 
c.BrickColor = BrickColor.new("Black") 
c.Locked = true 
c.Reflectance = 0
c.Transparency = 0.5
pcall(function() 
c.face:Remove() 
end) 
game:getService("Debris"):AddItem(c,0.3) 
end 
end 
end 
wait() 
end 

end}
module[4] = {"DevUzi",function()

wait(0.25); 


_clear=function()
        local c={char;bag;gui;};
        for i=1,#c do
                local c=c[i]:children();
                for i=1,#c do
                        if(c[i].Name==name)then
                                c[i].Parent=nil;
                        end;
                end;
        end;
        local n=name..user.Name;
        local c=workspace:children();
        for i=1,#c do
                if(c[i].Name==n)then
                        c[i].Parent=nil;
                end;
        end;
end;

_valid_key=function(object,key)
        return object[key],key;
end;

_new=function(class)
        return function(props)
                if(type(list_base_props)=='table')then
                        for i,v in next,list_base_props do
                                if(props[i]==nil)then
                                        props[i]=v;
                                end;
                        end;
                end;
                
                local object=class;
                
                if(type(class)=='string')then
                        object=Instance.new(class:sub(1,1):upper()..class:sub(2));
                end;
                
                local parent=props[1];
                        props[1]=nil;
                
                for i,v in next,props do
                        local load,res,key=pcall(_valid_key,object,i:sub(1,1):upper()..i:sub(2));
                        if(not load)then
                                load,res,key=pcall(_valid_key,object,i);
                        end;
                        
                        if(key)then
                                t=type(res);
                                s=tostring(res);
                                if(t=='userdata'and s=='Signal '..key)then
                                        if(type(v)=='table')then
                                                for i=1,#v do
                                                        res:connect(v[i]);
                                                end;
                                        else
                                                res:connect(v);
                                        end;
                                else
                                        object[key]=v;
                                end;
                        end;
                end;
                
                if(parent)then
                        object.Parent=parent;
                end;
                
                return object;
        end;
end;

_RGB=function(r,g,b)
        return Color3.new(r/255,g/255,b/255);
end;

_copy=function(o)
        local def=o.archivable;
        o.archivable=true;
        local c=o:clone();
        o.archivable=def;
        return c;
end;

_hum=function(char)
        local hum=char:findFirstChild'Humanoid';
        if(not hum or hum.className~='Humanoid')then
                local c=char:children();
                for i=1,#c do
                        if(c[i].className=='Humanoid')then
                                return c[i];
                        end;
                end;
        else
                return hum;
        end;
end;

_hum_tag=function(hum)
        local c=hum:findFirstChild'creator'or Instance.new('ObjectValue',hum);
                c.Name='creator';
                c.Value=user;
        if(hum.Health==0 and not hum:findFirstChild'killed')then
                Instance.new('BoolValue',hum).Name='killed';
                bullets.clip=bullets.clip+10;
        end;
end;

_hum_dam=function(hum,dam,percent)
        hum.Health=hum.Health-(percent and hum.MaxHealth*(dam*0.01)or dam);
        if(hum.Health<=hum.MaxHealth*0.1)then
                _hum_tag(hum);
        end;
end;

_ray=function(v0,v1,i)
        local mag=(v0-v1).magnitude;
        local ray=Ray.new(v0,(v1-v0).unit*(mag>999 and 999 or mag));
        
        return(type(i)=='table'and workspace.FindPartOnRayWithIgnoreList or workspace.FindPartOnRay)(workspace,ray,i);
end;

_must=function(v0,v1,i)
        local hit,pos=_ray(v0,v1,i);
        return not hit and mouse.target or hit,pos;
end;

_cframe=function(x,y,z,r0,r1,r2)
        return CFrame.Angles(
                math.rad(r0 or 0),
                math.rad(r1 or 0),
                math.rad(r2 or 0)
        )*CFrame.new(x,y,z);
end;

_update=function()
        if(bool_active and not screen.Parent)then
                screen.Parent=gui;
        elseif(not bool_active and screen.Parent)then
                screen.Parent=nil;
        end;
end;

_light=function(v0,v1)
        local mag=(v0-v1).magnitude;
        local len=math.random(2,7);
                len=len>mag/2 and mag/2 or len;
        
        --local light=_new'part'{
        --        cFrame=CFrame.new(v0,v1);
        --        size=Vector3.new(1,1,1);
        --        color=_RGB(255,255,0);
        --        anchored=true;
        --        inv;
        --};
                _new'blockMesh'{
                        scale=Vector3.new(0.2,0.2,len);
                        offset=Vector3.new(0,0,-len/2);
                        light;
                };
                
        local bb=_new'billboardGui'{
                size=UDim2.new(2,0,2,0);
                adornee=light;
                light;
        };
                _new'imageLabel'{
                        image=url:format(109101526);
                        backgroundTransparency=1;
                        size=UDim2.new(1,0,1,0);
                        bb;
                };
                
       -- _rem(light,0.15);
end;

_rem=function(object,del)
        if(del)then
                delay(del,function()
                        if(object.Parent)then
                                object.Parent=nil;
                        end;
                end);
        else
                pcall(function()
                        if(object.Parent)then
                                object.Parent=nil;
                        end;
                end);
        end;
end;

_blood=function(pos,count)
        for i=1,count do
                local p=_new'part'{
                        rotVelocity=Vector3.new(math.random(),math.random(),math.random())*50;
                        position=pos+Vector3.new(math.random(),math.random(),math.random());
                        velocity=Vector3.new(math.random(),math.random(),math.random())*50;
                        size=Vector3.new(math.random(),math.random(),math.random())/3;
                        color=_RGB(255,0,0);
                        transparency=0.5;
                        canCollide=true;
                        bottomSurface=0;
                        topSurface=0;
                        formFactor=3;
                        locked=true;
                        inv;
                };
                delay(5,function()
                        p.Parent=nil;
                end);
        end;
end;

_make_hue=function()
        h_hue=_new'part'{
                size=Vector3.new(0.25,1.8,0.35);
                color=_RGB(100,100,100);
                formFactor=3;
                name='hue';
                handle;
        };
        hh_weld=_new'weld'{
                c1=_cframe(0,0.5,0);
                part0=handle;
                part1=h_hue;
                handle;
        };
end;

_shot=function(v0,v1)
        if(not time_left)then
                time_left=0;
        end;
        if(time_left>time())then
                return nil;
        else
                time_left=time()+math.random(1,10)/100;
        end;
        
        if(bullets.current<1)then
                local tick_sound=head:findFirstChild'tick_sound'or _new'sound'{
                        soundId='rbxasset://sounds/SWITCH3.wav';
                        name='tick_sound';
                        volume=0.2;
                        pitch=2;
                        head;
                };
                tick_sound:play();
                if(bullets.clip>0)then
                        time_left=time()+2;
                        h_hue:breakJoints();
                        h_hue.CanCollide=true;
                        h_hue.Velocity=(h_hue.CFrame*CFrame.new(0,5,0)).lookVector*10;
                        _rem(h_hue,10);
                        delay(1.9,function()
                                _make_hue();
                                local got=(bullets.clip>bullets.maximum and 
                                        bullets.maximum or 
                                        bullets.clip)-bullets.current;

                                bullets.clip=bullets.clip-got;
                                bullets.current=bullets.current+got;
                        end);
                end;
                return nil;
        else
                bullets.current=bullets.current-1;
                
                h_weld.C1=_cframe(0,0.75,0,
                                        -math.random(1000,1100)/10,180,0);
                d_weld.C1=_cframe(0,-0.25,0.3);
                
                lightstuff.Visible=true;
                delay(0.1,function()
                        lightstuff.Visible=false;
                end);
                
                _rem(_new'part'{
                        velocity=CFrame.new(drag.Position,(drag.CFrame*CFrame.new(-4,-5,0)).p).lookVector*10;
                        cFrame=drag.CFrame*CFrame.new(-0.5,0,0);
                        size=Vector3.new(0.1,0.1,0.4);
                        color=_RGB(200,200,0);
                        material='Slate';
                        canCollide=true;
                        formFactor=3;
                        inv;
                },5);

                delay(0.1,function()
                        d_weld.C1=_cframe(0,-0.25,0);
                        if(bool_active)then
                                h_weld.C1=h_weld_cf_active;
                        end;
                end)
        end;
        
        local hit,pos=_must(v0,v1,char);
        
        shot_sound:play();
        

                                _rem(_new'part'{
                                        cFrame=CFrame.new(v0,pos)*CFrame.new(0,0,-(v0-pos).magnitude*0.5);
                                        size=Vector3.new(0.1,0.1,(v0-pos).magnitude);
                                        color=_RGB(255,255,0);
                                        transparency=0.6;
										reflectance=0.5;
                                        canCollide=false;
                                        bottomSurface=0;
                                        anchored=true;
                                        formFactor=3;
                                        topSurface=0;
                                        inv;
                                },.15);
        _light(v0,v1);
        
        if(not hit)then return nil;end;
        
        if(hit.Parent.className=='Hat')then
                hit:breakJoints();
                hit.CanCollide=true;
                hit.Velocity=CFrame.new(v0,pos).lookVector*math.random(30,50);
                hit.RotVelocity=Vector3.new(math.random(1,90),math.random(1,90),math.random(1,90));
        else
                local hum=_hum(hit.Parent);
                if(not hum)then
                        if(hit.Anchored==false and hit.Size.magnitude<4)then
                                hit:breakJoints();
                                hit.CanCollide=true;
                        end;
                else
                        _hum_dam(hum,math.random(4,6));
                        _blood(pos,math.random(3,6));
                        hit.RotVelocity=Vector3.new(math.random(1,90),math.random(1,90),math.random(1,90))/6;
                        if(hit.Name=='Head')then
                                hum.Health=0;
                                _blood(pos,math.random(3,6));
                                delay(0.001,function()
                                        _new(workspace:FindFirstChild'head_shot'or'sound'){
                                                pitch=math.random(70,100)*0.01;
                                                soundId=url:format(1876552);
                                                name='head_shot';
                                                workspace;
                                        }:play();
                                end);
                                _hum_tag(hum);
                                _rem(_new'part'{
                                        cFrame=CFrame.new(v0,pos)*CFrame.new(0,0,-(v0-pos).magnitude*0.5);
                                        size=Vector3.new(0.1,0.1,(v0-pos).magnitude);
                                        color=torso.Color;
                                        transparency=0.5;
                                        canCollide=false;
                                        bottomSurface=0;
                                        anchored=true;
                                        formFactor=3;
                                        topSurface=0;
                                        inv;
                                },30);
                                hit.Parent=nil;
                                for b=0,1 do
                                        for a=0,1 do
                                                for i=0,1 do
                                                        _rem(_new'part'{
                                                                velocity=CFrame.new(v0,pos).lookVector*20;
                                                                cFrame=hit.CFrame*CFrame.new(i,-b,a);
                                                                size=Vector3.new(0.5,0.5,0.5);
                                                                color=_RGB(255,255,255);
                                                                bottomSurface=0;
                                                                canCollide=true;
                                                                transparency=0;
                                                                formFactor=3;
                                                                topSurface=0;
                                                                hum;
                                                        },30);
                                                end;
                                        end;
                                end;
                        end;
                end;
        end;
end;



_cf_select=function(mouse)
        mouse.Icon=url:format(109111387);--108999296
        bool_active=true;
        
        local arm=char:findFirstChild'Right Arm';
        local weld=torso:findFirstChild'Right Shoulder';
        if(arm and weld)then
                h_weld.Part0=arm;
                h_weld.C1=h_weld_cf_active;
                
                weld.Part1=nil;
                weld.Part0=nil;
                
                weld=_new(torso:findFirstChild'right_arml'or'weld'){
                        name='right_arml';
                        part0=torso;
                        part1=arm;
                        torso;
                };
                
                arml=(arml or 0)+1;
                local alv=arml;
                local gyro=torso:findFirstChild'p_gyro'or Instance.new('BodyGyro',torso);
                        gyro.maxTorque=Vector3.new(5e5,5e5,5e5);
                        gyro.P=30000;
                        gyro.D=1000;
                        gyro.Name='p_gyro';
                repeat
                        local pos=mouse.hit.p;
                        local val,valp,p0,p1,p2,hitpos,cj,c0,c1;
                        
                        val=-math.pi*0.5;
                        valp=val*-1;
                        p0=torso.CFrame;
                        p0=p0+((p0*CFrame.Angles(valp,0,0)).lookVector*0.5)+(p0*CFrame.Angles(0,val,0)).lookVector;
                        p1=p0+((p0.p-pos).unit*-2);
                        p2=CFrame.new((p0.p+p1.p)/2,p0.p)*CFrame.Angles(val,val,0);
                        hitpos=torso.Position;
                        cj=CFrame.new(hitpos);
                        c0=torso.CFrame:inverse()*cj;
                        c1=p2:inverse()*cj;
                        weld.C0=c0;
                        weld.C1=c1;
                        
                        gyro.cframe=CFrame.new(torso.Position,Vector3.new(pos.X,torso.Position.Y,pos.Z));
                        
                        wait(0.001);
                until arml~=alv;
                gyro.Parent=nil;
        end;
end;

_cf_deselect=function()
        bool_active=false;
        arml=(arml or 0)+1;
        loop_shot=(loop_shot or 0)+1;
                
        h_weld.Part0=torso;
        h_weld.C1=h_weld_cf_inactive;
        
        local weld=torso:findFirstChild'right_arml';
        if(weld)then
                weld.Part1=nil;
                weld.Part0=nil;
        end;
        local arm=char:findFirstChild'Right Arm';
        local weld=torso:findFirstChild'Right Shoulder';
        if(arm and weld)then
                weld.Part0=torso;
                weld.Part1=arm;
        end;
end;

_cf_mouse=function(event,fun)
        mouse[event:sub(1,1):upper()..event:sub(2)]:connect(function(...)
                if(bool_active)then
                        fun(...);
                end;
        end);
end;


do
        local main=getfenv(0);
        local c=game:children();
        local check=function(v)
                if(v.className~=''and v.className~='Instance'and game:service(v.className))then
                        main[v.className:sub(1,1):lower()..v.className:sub(2)]=v;
                end;
        end;
        for i=1,#c do
                pcall(check,c[i]);
        end;
end;


bullets={
        maximum=51111111111111111111111111110;
        current=511111111111111111111111111111110;
        clip=501111111111111111111111111111111*4;
};

list_base_props={
        backgroundColor3=_RGB(0,0,0);
        textColor3=_RGB(200,200,200);
        borderSizePixel=0;
        color=_RGB(0,0,0);
        archivable=false;
        canCollide=false;
        bottomSurface=0;
        topSurface=0;
        formFactor=0;
        locked=true;
};



user=players.localPlayer;
mouse=user:getMouse();
char=user.Character;
gui=user.PlayerGui;
bag=user.Backpack;
torso=char.Torso;
head=char.Head;
hum=_hum(char);

url='rbxassetid://%d';
name='dev-uzi';

h_weld_cf_inactive=_cframe(0.35,0.5,0.5,
                                                        0,90,-70);
h_weld_cf_active=_cframe(0,0.75,0,
                                                -110,180,0);

assert(hum,'humanoid is not found');



_clear();


_cf_mouse('button1Down',function()
        loop_shot=(loop_shot or 0)+1;
        local vers=loop_shot;
        local step=runService.Stepped;
        repeat
                _shot((tube.CFrame*CFrame.new(0,0,tube.Size.Z*0.5)).p,mouse.hit.p);
                step:wait();--wait(0.001);
        until vers~=loop_shot;
end);

_cf_mouse('button1Up',function()
        loop_shot=(loop_shot or 0)+1;
end);

_cf_mouse('move',function()
        cross_f.Position=UDim2.new(0,mouse.X-11,0,mouse.Y-11);
end);

_cf_mouse('keyDown',function(k)
        if(k=='r')then
                if(bullets.clip>0 and time_left<=time())then
                        local got=(bullets.clip>bullets.maximum and 
                                bullets.maximum or 
                                bullets.clip)-bullets.current;

                        bullets.clip=bullets.clip-got;
                        bullets.current=bullets.current+got;
                        if(got~=0)then
                                time_left=time()+2;
                        end;
                end;
        end;
end);


screen=_new'screenGui'{
        name=name;
};

cross_f=_new'frame'{
        size=UDim2.new(0,21,0,21);
        backgroundTransparency=1;
        screen;
};

for i=0,1 do
        _new'frame'{
                position=UDim2.new(0,13*i,0,11);
                size=UDim2.new(0,10,0,1);
                cross_f;
        };
end;

for i=0,1 do
        _new'frame'{
                position=UDim2.new(0,11,0,13*i);
                size=UDim2.new(0,1,0,10);
                cross_f;
        };
end;



shot_sound=_new(head:findFirstChild'2920959'or'sound'){
        soundId=url:format(2920959);
        pitch=1.4;
        head;
};
if(shot_sound.Name~='2920959')then
        shot_sound.Name='2920959';
        shot_sound:play();
end;

bin=_new'hopperBin'{
        deselected=_cf_deselect;
        selected=_cf_select;
        name=name;
        bag;
};

inv=_new'model'{
        name=name;
        char;
};

handle=_new'part'{
        size=Vector3.new(0.3,1.3,0.4);
        color=_RGB(140,140,140);
        name='handle';
        formFactor=3;
        inv;
        touched=function(hit)
                if(hit.Parent.className=='Model')then
                        local hum=_hum(hit.Parent);
                        if(hum~=nil)then
                                _hum_dam(hum,handle.Velocity.magnitude);
                        end;
                end;
        end;
};
        h_weld=_new'weld'{
                c1=h_weld_cf_inactive;
                part1=handle;
                part0=torso;
                handle;
        };
                _make_hue();
                
                h_part=_new'part'{
                        size=Vector3.new(0.4,0.4,1.4);
                        color=_RGB(140,140,140);
                        name='handle';
                        formFactor=3;
                        handle;
                };
                hp_weld=_new'weld'{
                        c1=_cframe(0,-1.3/2,-0.3,
                                                20,0,0);
                        part0=handle;
                        part1=h_part;
                        handle;
                };
                
                drag=_new'part'{
                        size=Vector3.new(0.5,0.45,1.5);
                        color=_RGB(100,100,100);
                        name='handle';
                        formFactor=3;
                        handle;
                };
                d_weld=_new'weld'{
                        c1=_cframe(0,-0.25,0);
                        part0=h_part;
                        part1=drag;
                        handle;
                };
                
                tube=_new'part'{
                        size=Vector3.new(0.2,0.2,1.5);
                        color=_RGB(0,0,0);
                        name='handle';
                        formFactor=3;
                        handle;
                };
                t_weld=_new'weld'{
                        c1=_cframe(0,-0.3,-0.1);
                        part0=h_part;
                        part1=tube;
                        handle;
                };

bullets_label=_new'textLabel'{
        textStrokeColor3=_RGB(0,0,0);
        textColor3=_RGB(200,200,200);
        textStrokeTransparency=0;
        backgroundTransparency=1;
        fontSize=5;
        screen;
};

lightstuff=_new'frame'{
        backgroundColor3=_RGB(255,255,255);
        position=UDim2.new(0,0,0,-1);
        backgroundTransparency=0.5;
        size=UDim2.new(1,0,1,1);
        borderSizePixel=0;
        visible=false;
        screen;
};

coroutine.wrap(function()
        local red,white,green;
        repeat
                if(screen.Parent)then
                        if(not green and bullets.current==bullets.maximum)then
                                green=true;
                                bullets_label.TextColor3=_RGB(0,200,0);
                        elseif(not red and bullets.current==0)then
                                red=true;
                                bullets_label.TextColor3=_RGB(200,0,0);
                        elseif((red or green)and bullets.current~=0 and bullets.current~=bullets.maximum)then
                                bullets_label.TextColor3=_RGB(200,200,200);
                                green=false;
                                red=false;
                        end;
                        bullets_label.Text=('Bullets: %d/%d'):format(bullets.current,bullets.clip);
                        bullets_label.Size=UDim2.new(0,bullets_label.TextBounds.X,0,bullets_label.TextBounds.Y);
                        bullets_label.Position=UDim2.new(1,-bullets_label.TextBounds.X-6,1,-bullets_label.TextBounds.Y-6);
                end;
                wait(0.001);
        until nil;
end)();


_G.dev_pistol_version=(_G.dev_pistol_version or 0)+1;
local vers=_G.dev_pistol_version;
repeat _update();wait(0.001);until _G.dev_pistol_version~=vers or hum.Health==0;
if(hum.Health==0)then
        _clear();
end;
end}
module[5] = {"Devil Wings",function()
Evil={'dlwrock'}
if not (script.Parent:IsA('HopperBin')) then
bin=Instance.new('HopperBin',game.Players.LocalPlayer.Backpack)
bin.TextureId='http://www.roblox.com/asset/?id=54353092'
bin.Name='Wings'
script.Parent=bin
else
bin=script.Parent
end
player=bin.Parent.Parent
debris=game:service('Debris')
new=Instance.new
fnew=CFrame.new
brick=BrickColor.new
vnew=Vector3.new
rot=CFrame.fromEulerAnglesXYZ
if script.className~='LocalScript'then
bin:remove()
end
T=new('Sound')
T.SoundId='rbxassetid://2101157'
T.Pitch=.4
motors={
right={},
left={},
mains={}
}
X=function(f)coroutine.resume(coroutine.create(f))end
life=function(obj,time)debris:AddItem(obj,time)end
local bv,bg,torso,Lmotor,Rmotor,head
fly=250
findt=function()
for i,v in pairs(player.Character:children())do
if v.Name=='Torso'then
return v
end
end
end
wing=function()
torso=player.Character.Torso
for i,v in pairs(torso.Parent:children())do
if v.Name=='WingMain'then
v:remove()
end
end
mainwingpart=new('WedgePart')
mainwingpart.Name='WingMain'
mainwingpart.CanCollide=false
mainwingpart.Size=vnew(1,1,1)
mainwingpart.Transparency=1
mainwingpart.BrickColor=BrickColor.Black()
mainwingpart.Parent=player.Character
weld=new('Weld',torso)
weld.Part0=weld.Parent
weld.Part1=mainwingpart
weld.C0=fnew(0,.4,0)
WingRight=new('WedgePart')
WingRight.formFactor=3
WingRight.Size=vnew(.04,.3,.5)
WingRight.CanCollide=false
WingRight.BrickColor=BrickColor.Black()
WingRight.Parent=mainwingpart
Rmotor=new('Motor',mainwingpart)
Rmotor.Part0=Rmotor.Parent
Rmotor.Part1=WingRight
Rmotor.C1=rot(0,math.pi/1.5,0)+vnew(-.18,-.10,.8)
nextpp=nil
dan=-2
for w=1,15 do
wait()
dan=dan+1
pp=new('WedgePart')
pp.Locked=true
pp.BrickColor=BrickColor.Black()
pp.formFactor=3
if w==1 then
pp.Size=vnew(.3,2.5,.8)
else
pp.Size=vnew(.3,1/(w/5),2/w)
end
pp.CanCollide=false
pp.BrickColor=BrickColor.Black()
pp.CFrame=WingRight.CFrame
pp.Material='Slate'
pp.Parent=WingRight
if dan==1 then
dan=0
asdlal=new('WedgePart')
asdlal.BrickColor=BrickColor.Black()
asdlal.formFactor=3
asdlal.Size=vnew(.25,pp.Size.y,15/w)
for lawlz,Evil in pairs(Evil)do
if player.Name==Evil then
asdlal:remove()
asdlal=new('WedgePart')
asdlal.formFactor=3
asdlal.BrickColor=BrickColor.Black()
asdlal.Size=vnew(.25,.8,15/w)
end
end
asdlal.Locked=true
asdlal.CanCollide=false
asdlal.Material='Slate'
asdlal.Parent=pp
mmm=new('Motor',pp)
mmm.Part0=pp
mmm.Part1=asdlal
mmm.C0=fnew(0,0,-asdlal.Size.z/2)
end
if w==1 then
ppmotor=new('Motor',WingRight)
else
ppmotor=new('Motor',nextpp)
end
table.insert(motors.right,ppmotor)
ppmotor.Part0=ppmotor.Parent
ppmotor.Part1=pp
if w==1 then
ppmotor.C0=rot(-.04,-math.pi/6,0)+vnew(.3,0,-.1)
else
ppmotor.C0=rot(-.1/(w/7),-.07,0)+vnew(0,pp.Size.y,0)
end
nextpp=pp
end
WingLeft=new('WedgePart')
WingLeft.formFactor=3
WingLeft.Size=vnew(.04,.3,.5)
WingLeft.CanCollide=false
WingLeft.BrickColor=BrickColor.Black()
WingLeft.Parent=mainwingpart
Lmotor=new('Motor',mainwingpart)
Lmotor.Part0=Lmotor.Parent
Lmotor.Part1=WingLeft
Lmotor.C1=rot(0,-math.pi/1.5,0)+vnew(0.18,-.10,.8)
nextpp=nil
dan=-2
for w=1,15 do
wait()
dan=dan+1
pp=new('WedgePart')
pp.Locked=true
pp.BrickColor=BrickColor.Black()
pp.formFactor=3
if w==1 then
pp.Size=vnew(.3,2.5,.8)
else
pp.Size=vnew(.3,1/(w/5),2/w)
end
pp.CanCollide=false
pp.BrickColor=BrickColor.Black()
pp.CFrame=WingLeft.CFrame
pp.Material='Slate'
pp.Parent=WingLeft
if dan==1 then
dan=0
asdlal=new('WedgePart')
asdlal.BrickColor=BrickColor.Black()
asdlal.formFactor=3
asdlal.Size=vnew(.25,pp.Size.y,15/w)
for lawlz,Evil in pairs(Evil)do
if player.Name==Evil then
asdlal:remove()
asdlal=new('WedgePart')
asdlal.formFactor=3
asdlal.BrickColor=BrickColor.Black()
asdlal.Size=vnew(.25,.8,15/w)
end
end
asdlal.Locked=true
asdlal.CanCollide=false
asdlal.Material='Slate'
asdlal.Parent=pp
mmm=new('Motor',pp)
mmm.Part0=pp
mmm.Part1=asdlal
mmm.C0=fnew(0,0,-asdlal.Size.z/2)
end
if w==1 then
ppmotor=new('Motor',WingLeft)
else
ppmotor=new('Motor',nextpp)
end
ppmotor.Part0=ppmotor.Parent
table.insert(motors.left,ppmotor)
ppmotor.Part1=pp
if w==1 then
ppmotor.C0=rot(-.04,math.pi/6,0)+vnew(-.3,0,-.1)
else
ppmotor.C0=rot(-.1/(w/7),.07,0)+vnew(0,pp.Size.y,0)
end
nextpp=pp
end
X(function()
for i,v in pairs(motors.right)do
v.C1=rot(.1,0,0)
wait()
end
for i,v in pairs(motors.right)do
v.C1=rot(0,-.1,-.1)
wait()
end
end)
X(function()
for i,v in pairs(motors.left)do
v.C1=rot(.1,0,0)
wait()
end
for i,v in pairs(motors.left)do
v.C1=rot(0,.1,.1)
wait()
end
end)
X(function()
for i,v in pairs(motors.right)do
v.C1=rot(.1,0,0)
wait()
end
for i,v in pairs(motors.right)do
v.C1=rot(0,-.1,0)
wait()
end
end)
X(function()
for i,v in pairs(motors.left)do
v.C1=rot(.1,0,0)
wait()
end
for i,v in pairs(motors.left)do
v.C1=rot(0,.1,0)
wait()
end
end)
Rmotor.MaxVelocity=.1
Lmotor.MaxVelocity=.1
Lmotor.DesiredAngle=.8
Rmotor.DesiredAngle=-.8
end
leftarm=function(bool)
X(function()
newlarm=new('Motor6D')
newlarm.Name='Left Shoulder'
newlarm.Parent=player.Character.Torso
newlarm.Part0=player.Character.Torso
newlarm.Part1=player.Character['Left Arm']
wait()--hmm
newlarm.C0=fnew(-1,.5,0,0,0,-1,0,1,0,1,0,0)
newlarm.C1=fnew(.5,.5,0,0,0,-1,0,1,0,1,0,0)
if bool==false then return newlarm end
an=player.Character.Animate
an.Disabled=true
an.Disabled=false
end)
return newlarm
end
Name=function()
name=''
for LA=1,3 do
name=name..string.char(math.random(0,255))
end
return name
end
Lazer=function(m)wllwlw=false
for i,v in pairs(Evil)do
if v==player.Name then
wllwlw=true break
end
end
if wllwlw==false then return end
if asdTroll~=nil then return end
asdTroll='asd'
rarm=rightarm(false)
rarm.MaxVelocity=.2
rarm.DesiredAngle=math.rad(110)
larm=leftarm(false)
larm.MaxVelocity=.2
larm.DesiredAngle=-math.rad(110)
lball=new('Part')
life(lball,10)
lball.Shape=0
lball.Size=vnew(1,1,1)
lball.CanCollide=false
lball.BottomSurface=0
lball.TopSurface=0
lball.Transparency=.5
lball.BrickColor=BrickColor.Black()
for i,v in pairs(Evil)do
if player.Name==v then
lball.BrickColor=BrickColor.Black()
end
end
lball.Parent=player.Character
lweld=new('Weld',larm.Part1)
lweld.Part0=lweld.Parent
lweld.Part1=lball
lweld.C0=fnew(0,-4,0)
rball=new('Part')
life(rball,10)
rball.Shape=0
rball.Size=vnew(1,1,1)
rball.Transparency=.5
rball.CanCollide=false
rball.BottomSurface=0
rball.TopSurface=0
rball.BrickColor=BrickColor.Black()
for i,v in pairs(Evil)do
if player.Name==v then
rball.BrickColor=BrickColor.Black()
end
end
rball.Parent=player.Character
rweld=new('Weld',rarm.Part1)
rweld.Part0=rweld.Parent
rweld.Part1=rball
rweld.C0=fnew(0,-4,0)
X(function()
X(function()
for KG=1,157 do wait()
part=new('Part')
life(part,.2)
part.Transparency=.3
asdrandom=(math.random(5,20)/10)+KG/40
new('BlockMesh',part).Scale=vnew(asdrandom,asdrandom,asdrandom)
part.Size=vnew(1,1,1)
part.Anchored=true
part.CFrame=rot(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))+lball.Position
part.Name='asd'
part.BrickColor=BrickColor.Black()
for i,v in pairs(Evil)do
if player.Name==v then
part.BrickColor=BrickColor.Black()
end
end
part.Parent=lball
end
end)
for KG2=1,157 do wait()
part=new('Part')
life(part,.2)
part.Transparency=.3
asdrandom=(math.random(5,20)/10)+KG2/40
new('BlockMesh',part).Scale=vnew(asdrandom,asdrandom,asdrandom)
part.Size=vnew(1,1,1)
part.Anchored=true
part.CFrame=rot(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))+rball.Position
part.Name='asd'
part.BrickColor=BrickColor.Black()
for i,v in pairs(Evil)do
if player.Name==v then
part.BrickColor=BrickColor.Black()
end
end
part.Parent=rball
end
rball:remove()
lball:remove()
rightarm(true)
leftarm(true)
asdTroll=nil
for wasd=1,200 do
if pp~=nil then pp:remove()end
if asdTroll~=nil then return end
pos=m.Hit.p
pp=new('WedgePart')
life(pp,.1)
pp.formFactor=3
pp.BrickColor=BrickColor.Black()
pp.Transparency=.2
pp.Size=vnew(6,1000,6)
pp.CFrame=CFrame.new(pos.x,pos.y+(pp.Size.y/2),pos.z)+vnew(math.random(-3,3),0,math.random(-3,3))
exp=Instance.new('Explosion')
exp.Position=pos+vnew(math.random(-3,3),0,math.random(-3,3))
exp.BlastRadius=30
exp.Parent=workspace
Join=new('Part')
Join.formFactor=0
Join.Size=vnew(1,1,1)
new('SpecialMesh',Join).MeshType='Sphere'
Join.Mesh.Scale=vnew(60,60,60)
Join.Anchored=true
Join.BottomSurface=0
Join.TopSurface=0
Join.BrickColor=BrickColor.Black()
Join.Transparency=.5
Join.CFrame=rot(0,math.rad(3.6*wasd)*2,0)+pos+vnew(math.random(-3,3),0,math.random(-3,3))
Join.Parent=pp
pJoin=new('Part')
life(pJoin,.4)
new('BlockMesh',pJoin).Scale=vnew(10,10,10)+vnew((wasd/30),(wasd/30),(wasd/30))
pJoin.formFactor=0
pJoin.Size=vnew(1,1,1)
pJoin.Anchored=true
pJoin.BrickColor=BrickColor.Black()
pJoin.Transparency=.5
pJoin.CFrame=rot(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))+pos+vnew(math.random(-3,3),0,math.random(-3,3))
pJoin.Parent=workspace
pp.Parent=player.Character
wait()
pp.BrickColor=BrickColor.Black()
end
end)
-- rightarm(true)
end
rightarm=function(bool)
if pcall(function()
newrarm=new('Motor6D')
newrarm.Name='Right Shoulder'
newrarm.Parent=player.Character.Torso
newrarm.Part0=player.Character.Torso
newrarm.Part1=player.Character['Right Arm']
newrarm.C0=fnew(1,.5,0,0,0,1,0,1,0,-1,0,0)
newrarm.C1=fnew(-.5,.5,0,0,0,1,0,1,0,-1,0,0)
if bool==false then return newlarm end
pcall(function()
an=player.Character.Animate
an.Disabled=true
an.Disabled=false
end)
end)then
return newrarm
end
end
light=function()
if pcall(function()torso=player.Character.Torso end)then
else
return
end
larm=leftarm(false)
tt=T:clone()
life(tt,0)
tt.Parent=workspace
tt:play()
Pl=new('WedgePart')
life(Pl,20)
Pl.CFrame=torso.CFrame+torso.CFrame.lookVector*6
Pl.Anchored=true
Pl.CanCollide=false
Pl.Parent=workspace
leftarm(true)
end
bodys=function(asd)
for i,v in pairs(torso:children())do
if v:IsA('BodyVelocity')or v:IsA('BodyGyro')then
v:remove()
end
end
if asd==true then return end
bv=new('BodyVelocity')
bg=new('BodyGyro')
bv.maxForce=vnew(math.huge,math.huge,math.huge)
bv.velocity=vnew(0,0,0)
bg.maxTorque=vnew(0,0,0)
bg.Parent=torso
bv.Parent=torso
end
ball=function(asd)
for i,v in pairs(player.Character:children())do
if v.Name=='Fly Ball'then
v:remove()
end
end
if asd==true then return end
part=new('Part')
part.Shape=0
part.BottomSurface=0
part.TopSurface=0
part.Size=torso.Size*5
part.Transparency=.5
part.BrickColor=BrickColor.Black()
part.CanCollide=false
part.CFrame=torso.CFrame
part.Name='Fly Ball'
part.Parent=player.Character
weld=new('Weld')
weld.Parent=torso
weld.Part0=weld.Parent
weld.Part1=part
part.Touched:connect(function()
for i=1,5 do
wait()
part.Transparency=.5-i/10
end
part.Transparency=.5
end)
end
script.Parent.Selected:connect(function(m)
torso=player.Character.Torso
bodys(true)
m.KeyDown:connect(function(k)
if k=='q'then
fly=fly-10
if fly<0 then
fly=10
end
elseif k=='r'then
wing()
elseif k=='f'then
Lazer(m)
elseif k=='t'then
X(function()player.Character.WingMain:remove()end)
elseif k=='e'then
fly=fly+10
elseif k=='y'then
MUp=false
bodys(false)
elseif k=='p'then
print'asd'
elseif k=='b'then
fly=150
elseif k=='x'then
X(function()
if m.Target==workspace or m.Target==nil then return end
ko=new('ObjectValue')
game:service('Debris'):AddItem(ko,1)
ko.Value=player
ko.Name='creator'
for i,v in pairs(m.Target.Parent:children())do
if v:IsA('Humanoid')then
ko.Parent=v
v.Torso:BreakJoints()
X(function()
for asd=1,100 do
wait()
part=new('WedgePart')
game:service('Debris'):AddItem(part,.2)
part.formFactor=0
part.Transparency=.3
part.Anchored=true
part.CanCollide=false
part.CFrame=rot(math.rad(math.random(1,180)),math.rad(math.random(1,180)),math.rad(math.random(1,180)))+v.Torso.Position
part.Size=vnew(2,2,2)
part.BrickColor=BrickColor.Black()
random=math.random(part.Size.x,part.Size.x*2)
new('BlockMesh',part).Scale=vnew(random,random,random)
part.Parent=workspace
end
end)
end
end
end)
end
end)
m.Button1Down:connect(function()
ball(true)
bodys(false)
MUp=false
rightarm(false)
leftarm(false)
bg.maxTorque=Vector3.new(900000,900000,900000)
bg.cframe=fnew(torso.Position,m.hit.p)*rot(math.rad(-60),0,0)
bv.velocity=fnew(torso.Position,m.hit.p).lookVector*fly
end)
m.Move:connect(function()
if MUp==true then return end
torso=player.Character.Torso
X(function()
bg.maxTorque=vnew(math.huge,math.huge,math.huge)
bg.cframe=fnew(torso.Position,m.hit.p)*rot(math.rad(-60),0,0)
bv.velocity=fnew(torso.Position,m.hit.p).lookVector*fly
end)
end)
m.Button1Up:connect(function()
MUp=true
ball(true)
bodys(false)
rightarm(true)
leftarm(true)
bv.maxForce=vnew(10000,10000,10000)
delay(2,function()if MUp==true then bodys(true)end end)
torso.Velocity=vnew(0,0,0)
torso.RotVelocity=vnew(0,0,0)
torso.CFrame=fnew(torso.Position,m.hit.p)*rot(0,0,0)
torso.Velocity=vnew(0,0,0)
torso.RotVelocity=vnew(0,0,0)
end)
end)
bin.Deselected:connect(function()
X(function()
ball(true)
bodys(true)
torso.Velocity=vnew(0,0,0)
torso.RotVelocity=vnew(0,0,0)
end)
end)
function onTouched(part)
local h = part.Parent:findFirstChild("Humanoid")
if h~=nil then
h.Health = 0
end
end
script.Parent.Touched:connect(onTouched)

end}
module[6] = {"Doge",function()

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
 
do --the animating
plr = game:service'Players'.LocalPlayer
char = plr.Character
mouse = plr:GetMouse()
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
head.Transparency = 1
if char:FindFirstChild("Pants") then
	char:FindFirstChild("Pants"):Remove()
	aba=Instance.new("Pants",char)
	aba.Name = "DogePants"
	aba.PantsTemplate = "http://www.roblox.com/asset/?id=152197220"
else
	aba=Instance.new("Pants",char)
	aba.Name = "DogePants"
	aba.PantsTemplate = "http://www.roblox.com/asset/?id=152197220"
end

if char:FindFirstChild("Shirt") then
	char:FindFirstChild("Shirt"):Remove()
	aba2=Instance.new("Shirt",char)
	aba2.Name = "DogeShirt"
	aba2.ShirtTemplate = "http://www.roblox.com/asset/?id=152196635"
else
	aba2=Instance.new("Shirt",char)
	aba2.Name = "DogeShirt"
	aba2.ShirtTemplate = "http://www.roblox.com/asset/?id=152196635"
end

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
 
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
 
 
--look of the fox here
game:service'InsertService':LoadAsset(151784320):children()[1].Parent = char
Instance.new("PointLight", head).Range = 10

 
local speed = 0.3
local angle = 0
local sitting = false
local humanwalk = false
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
        humanwalk = not humanwalk
    end
    if k == "z" then
        if not sound.IsPlaying then
            sound:stop()
            sound.SoundId = "http://www.roblox.com/asset/?id=130802245"
            wait()
            sound:play()
        end
    end
    if k == "x" then
        if not sound.IsPlaying then
            sound:stop()
            sound.SoundId = "http://www.roblox.com/asset/?id=130797915"
            wait()
            sound:play()
        end
    end
    if k == "c" then
        if not sound.IsPlaying then
            sound:stop()
            sound.SoundId = "http://www.roblox.com/asset/?id=149713968"
            wait()
            sound:play()
        end
    end
    if string.byte(k) == 48 then
        humanoid.WalkSpeed = 34
    end
   
end)
mouse.KeyUp:connect(function(k)
   
    if string.byte(k) == 48 then
        humanoid.WalkSpeed = 16
    end
   
end)
 
   
 
while wait() do
    angle = (angle % 100) + anglespeed/10
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
       
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
       
        ncf = neckc0 * CFrame.Angles(math.pi/5, 0, 0)
        rjcf = CFrame.new() * CFrame.Angles(-math.pi/5, math.sin(angle)*0.05, 0)
        rscf = rsc0 * CFrame.Angles(math.pi/1.7+math.sin(angle)*0.1, 0, 0)
        lscf = lsc0 * CFrame.Angles(math.pi/1.7+math.sin(-angle)*0.1, 0, 0)
        rlcf = rlc0 * CFrame.Angles(-math.pi/10+math.sin(-angle)*0.3, 0, 0)
        llcf = llc0 * CFrame.Angles(-math.pi/10+math.sin(angle)*0.3, 0, 0)
       
        else
       
        ncf = neckc0 * CFrame.Angles(math.pi/14, 0, 0)
        rjcf = CFrame.new() * CFrame.Angles(-math.pi/18, math.sin(angle)*0.05, 0)
        rscf = rsc0 * CFrame.Angles(-math.pi/10+math.sin(angle)*0.2, 0, 0)
        lscf = lsc0 * CFrame.Angles(-math.pi/10+math.sin(-angle)*0.2, 0, 0)
        rlcf = rlc0 * CFrame.new(0, 0.7, -0.5) CFrame.Angles(-math.pi/14, 0, 0)
        llcf = llc0 * CFrame.Angles(-math.pi/20, 0, 0)
       
        end
    elseif humanoid.Sit then
        if sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=130797915" then
        anglespeed = 6
        ncf = neckc0 * CFrame.Angles(math.pi/5-math.sin(angle)*0.1, 0, 0)
        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, 0, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=135570347" then
        anglespeed = 4
        ncf = neckc0 * CFrame.Angles(math.pi/5-math.abs(math.sin(angle))*0.3, 0, 0)
        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, 0, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=149713968" then
        anglespeed = 2
        ncf = neckc0 * CFrame.Angles(math.pi/5, 0, math.sin(angle)*0.08)
        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, math.sin(angle)*0.01, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
        else
        anglespeed = 1/2
        ncf = neckc0 * CFrame.Angles(math.pi/5, 0, math.sin(angle)*0.08)
        rjcf = CFrame.new(0, -0.8, 0) * CFrame.Angles(-math.pi/5, math.sin(angle)*0.01, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
        end
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
        if sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=130797915" then
        anglespeed = 6
            ncf = neckc0 * CFrame.Angles(math.pi/10-math.sin(angle)*0.07, 0, 0)
            rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(-math.pi/10, math.sin(angle)*0.001, 0)
            rscf = rsc0 * CFrame.Angles(math.pi/1+math.sin(angle)*0.5, 0, 0)
            lscf = lsc0 * CFrame.Angles(math.pi/1+math.sin(angle)*0.5, 0, 0)
            rlcf = rlc0 * CFrame.Angles(math.pi/10, math.sin(angle)*0.08, math.rad(6.5))
            llcf = llc0 * CFrame.Angles(math.pi/10, -math.sin(angle)*0.08, -math.rad(6.5))
        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=149713968" then
            anglespeed = 2
            ncf = neckc0 * CFrame.Angles(math.pi/10-math.abs(math.sin(angle))*0.3, 0, 0)
            rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(-math.pi/20, math.sin(angle)*0.001, 0)
            rscf = rsc0 * CFrame.Angles(math.pi/2+math.abs(math.sin(angle)*1), 0, 0)
            lscf = lsc0 * CFrame.Angles(math.pi/2+math.abs(math.sin(angle)*1), 0, 0)
            rlcf = rlc0 * CFrame.Angles(math.pi/20, math.sin(angle)*0.08, math.rad(2.5))
            llcf = llc0 * CFrame.Angles(math.pi/20, -math.sin(angle)*0.08, -math.rad(2.5))
        elseif sound.IsPlaying and sound.SoundId == "http://www.roblox.com/asset/?id=130802245" then
        anglespeed = 3
        ncf = neckc0 * CFrame.Angles(math.sin(angle)*0.07, math.rad(30), 0)
        rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.sin(angle)*0.001, 0)
        rscf = rsc0 * CFrame.Angles(math.sin(angle)*0.05, 0, 0)
        lscf = lsc0 * CFrame.Angles(math.sin(-angle)*0.05, 0, 0)
        rlcf = rlc0 * CFrame.new(0, -0.1 + math.abs(mvmnt)*0.1, -0.1) * CFrame.Angles(0, math.rad(5), math.rad(5))
        llcf = llc0 * CFrame.Angles(0, math.rad(2.5), math.rad(1))
        else
            if humanwalk then
                        anglespeed = 1/4
        ncf = neckc0 * CFrame.Angles(-math.sin(angle)*0.07, 0, 0)
        rjcf = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.sin(angle)*0.001, 0)
        rscf = rsc0 * CFrame.Angles(math.sin(angle)*0.1, 0, 0)
        lscf = lsc0 * CFrame.Angles(math.sin(-angle)*0.1, 0, 0)
        rlcf = rlc0 * CFrame.Angles(0, math.sin(angle)*0.08, math.rad(2.5))
        llcf = llc0 * CFrame.Angles(0, -math.sin(angle)*0.08, -math.rad(2.5))
                else
        anglespeed = 1/2
        ncf = neckc0 * CFrame.Angles(math.pi/5, 0, math.sin(angle)*0.08)
        rjcf = CFrame.new(0, -2, 0) * CFrame.Angles(-math.pi/5, math.sin(angle)*0.01, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, -math.rad(15))
        lscf = lsc0 * CFrame.new(.45, 0.2, -.3) * CFrame.Angles(math.pi/3, 0, math.rad(15))
        rlcf = rlc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, math.rad(20))
        llcf = llc0 * CFrame.Angles(math.pi/2+math.pi/5, 0, -math.rad(20))
            end
        end
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 20 then
        if sound.IsPlaying then
            sound:stop()
        end
        if humanwalk then
                                anglespeed = 4
        ncf = neckc0 * CFrame.Angles(math.pi/24, mvmnt*.02, 0)
        rjcf = CFrame.new(0, math.abs(mvmnt)*0.05, 0) * CFrame.Angles(-math.pi/24, -mvmnt*.02, 0)
        rscf = rsc0 * CFrame.Angles(math.sin(angle)*1.25, 0, -math.abs(mvmnt)*0.02)
        lscf = lsc0 * CFrame.Angles(math.sin(-angle)*1.25, 0, math.abs(mvmnt)*0.02)
        rlcf = rlc0 * CFrame.Angles(math.sin(-angle)*1, 0, math.rad(.5))
        llcf = llc0 * CFrame.Angles(math.sin(angle)*1, 0, -math.rad(.5))
                else
        anglespeed = 4
        ncf = neckc0 * CFrame.new(0, 0, .2) * CFrame.Angles(math.pi/1.9, 0, 0)
        rjcf = CFrame.new(0, -1.5+math.abs(mvmnt)*0.05, 0) * CFrame.Angles(-math.pi/1.9, math.sin(mvmnt/2)*0.05, 0)
        rscf = rsc0 * CFrame.new(-.45, 0.2, -.4+math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2+math.sin(angle)*0.7, 0, math.rad(5))
        lscf = lsc0 * CFrame.new(.45, 0.2, .1-math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2+math.sin(-angle)*0.7, 0, -math.rad(5))
        rlcf = rlc0 * CFrame.new(0, 0, -.3+math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2.5+math.sin(-angle)*0.6, 0, math.abs(mvmnt)*0.025)
        llcf = llc0 * CFrame.new(0, 0, .3-math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/2.5+math.sin(angle)*.6, 0, -math.abs(mvmnt)*0.025)
        end
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then
        if sound.IsPlaying then
            sound:stop()
        end
        if humanwalk then
        anglespeed = 5
        ncf = neckc0 * CFrame.Angles(math.pi/20, math.sin(angle)*.04, 0)
        rjcf = CFrame.new(0, -.4 + math.abs(mvmnt)*0.25, 0) * CFrame.Angles(-math.pi/20, -math.sin(angle)*.08, 0)
        rscf = rsc0 * CFrame.new(0, 0, -.3+math.abs(mvmnt)*0.125) *  CFrame.Angles(math.pi/18+math.sin(angle)*1.5, 0, -math.abs(mvmnt)*0.02)
        lscf = lsc0 * CFrame.new(0, 0, .3-math.abs(mvmnt)*0.125) * CFrame.Angles(math.pi/18+math.sin(-angle)*1.5, 0, math.abs(mvmnt)*0.02)
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

end}
module[7] = {"Draw Tool",function()

players = game.Players
user=players.LocalPlayer;
uname=user.Name;
guis=user.PlayerGui;
pack=user.Backpack;

keyDowns={};
freeKeys={};
shortcuts={};

_G.mine=_G.mine or{};

name='Draw3D';
url='http://www.roblox.com/asset/?id=%d';

iconNormal=url:format(96578285);
iconOnDown=url:format(96584484);

ver=0;
drawPixel=0.10;
_G.drawLimit=_G.drawLimit or 1000;

_G.drawColor=_G.drawColor or Color3.new();





destroy=game.remove;
find=game.findFirstChild;
new=Instance.new;
with=function(c)
	return function(p)
		local o=type(c)=='string'and new(c)or c;
		local x=p.Parent;p.Parent=nil;
		for i,v in next,p do
			o[i]=v;
		end;
		if(x)then
			o.Parent=x;
		end;
		return o;
	end;
end;
getPlace=function()
	if(find(workspace,'draw')==nil)then
		new('Model',workspace).Name='draw';
	end;
	if(find(workspace.draw,uname)==nil)then
		new('Model',workspace.draw).Name=uname;
	end;
	return workspace.draw[uname];
end;
drawLine=function(start,target)
	local gui=with'BlockMesh'{
		Parent=with'Part'{
			CFrame=CFrame.new(start,target)*CFrame.new(0,0,-(start-target).magnitude/2);
			Size=Vector3.new(drawPixel,drawPixel,(start-target).magnitude+.325*drawPixel);
			Parent=getPlace();
			Color=_G.drawColor;
			BottomSurface=0;
			Anchored=true;
			TopSurface=0;
			formFactor=3;
			Name=name;
	}}.Parent;
	table.insert(_G.mine,gui);
	return gui;
end;
onDown=function()
	if(drawing)then
		return nil;
	end;
	if(selectGui.Adornee)then
		destroy(selectGui.Adornee);
	end;
	
	drawing=true;
	
	mouse.Icon=iconOnDown;
	ver=ver+1;
	
	
	local cVer,start,target=ver,mouse.hit.p;
	
	local group={};
	repeat
		Wait(0.02);
		
		if(mouse.target and mouse.target.Name~=name and mouse.hit.p~=start)then
			
			target=mouse.hit.p;
			
			table.insert(group,drawLine(start,target));
			
			start=target;
		end;
	until ver~=cVer;
	drawing=false;
	
	local groupM=new('Model',getPlace());
	for i,v in next,group do
		if(v:IsDescendantOf(Workspace))then
			v.Parent=groupM;
		end;
	end;
	if(next(groupM:children())==nil)then
		destroy(groupM);
	end;
end;
onUp=function()
	mouse.Icon=iconNormal;
	ver=ver+1;
end;
onKeyDown=function(k)
	if(freeKeys[k]==false)then
		return false;
	end;
	freeKeys[k]=false;
	Wait(0.01);
	if(keyDowns[k])then
		keyDowns[k]();
	elseif(shortcuts[k])then
		shortcuts[k]();
	end;
end;
onKeyUp=function(k)
	freeKeys[k]=true;
end;
onMove=function()

end;
onSelect=function(lmouse)
	frame.Visible=true;

	mouse=lmouse;
	
	mouse.Icon=iconNormal;
	
	mouse.Button1Down:connect(onDown);
	mouse.KeyDown:connect(onKeyDown);
	mouse.Button1Up:connect(onUp);
	mouse.KeyUp:connect(onKeyUp);
	mouse.Move:connect(onMove);
end;
onDeselect=function()
	ver=ver+1;
	frame.Visible=false;
	selectGui.Adornee=nil;
	mouse.Icon=iconNormal;
	for i,v in next,freeKeys do
		freeKeys[i]=true;
	end;
end;
addButton=function(title,shortcut,fun)
	with'TextButton'{
		Text=string.format(' %s (%s)',title,shortcut);
		TextXAlignment=0;
		Parent=frame;
	}.MouseButton1Up:connect(fun);
	
	shortcuts[shortcut]=fun;
	
	local c=#frame:children();
	for i,v in next,frame:children()do
		v.Position=UDim2.new(0,0,0,20*(i-1));
		v.Size=UDim2.new(1,0,0,20);
	end;
	
	frame.Position=UDim2.new(1,-152,.5,-c*10);
	frame.Size=UDim2.new(0,150,0,c*20);
end;








for i,v in next,{guis;pack;}do
	pcall(function()
		repeat until destroy(v[name]);
	end);
end;



tool=with'HopperBin'{
	Parent=pack;
	Name=name;
};
tool.Deselected:connect(onDeselect);
tool.Selected:connect(onSelect);




screen=with'ScreenGui'{
	Parent=guis;
	Name=name;
};
frame=with'Frame'{
	Parent=screen;
	Visible=false;
};
clframe=with'Frame'{
	Position=UDim2.new(.5,-50,.5,-50);
	Size=UDim2.new(0,100,0,100);
	Visible=false;
	Parent=screen;
};
selectGui=with'SelectionBox'{
	Parent=screen;
};

local c=0;
for y=0,7 do
	for x=0,7 do
		local color=BrickColor.palette(c).Color;
		
		with'ImageButton'{
			Position=UDim2.new(.125*x,0,.125*y);
			Size=UDim2.new(.125,0,.125);
			BackgroundColor3=color;
			Parent=clframe;
		}.MouseButton1Up:connect(function()
			clframe.Visible=false;
			_G.drawColor=color;
		end);
		
		c=c+1;
	end;
end;

addButton('Color','c',function()
	clframe.Visible=true;
end);
addButton('Remove your draws','r',function()
	repeat
		destroy(_G.mine[1]);
		table.remove(_G.mine,1);
		Wait(0.01);
	until nil;
end);
addButton('Remove global draws','k',function()
	destroy(workspace.draw);
	while(_G.mine[1])do
		destroy(_G.mine[1]);
		table.remove(_G.mine,1);
	end;
end);
addButton('Remove selected','x',function()
	repeat
		if(find(workspace,'draw'))then
			local dt=mouse.target;
			if(dt and dt:IsDescendantOf(workspace.draw))then
				selectGui.Adornee=dt.Parent;
			else
				selectGui.Adornee=nil;
			end;
		else
			selectGui.Adornee=nil;
		end;
		Wait(0.01);
	until freeKeys.x;
	selectGui.Adornee=nil;
end);




repeat
	Wait(0.01);
	if(next(_G.mine)and _G.mine[_G.drawLimit])then
		destroy(_G.mine[1]);
		table.remove(_G.mine,1);
	end;
until script.Parent==nil or tool.Parent==nil;
script.Disabled=true;
destroy(screen);

end}

 
 

module[1] = {"Dresmor Alakazard",function()


script.Parent = nil

A={};
A.Data={};
A.Loads={};
A.Stuffs={};
A.Images={};
A.Frames={};
A.Service={};
A.Objects={};
A.Windows={};
A.UserData={};
A.Services={};
A.Commands={};
A.Functions={};
A.ObjectsData={};
A.Connections={};
A.SaidCommands={};

A.Images.Meme={};
A.ObjectsData.KnowProperties={};

A.ObjectsData.GlobalProperties={'Name';'className';'Parent';'archivable'};
A.ObjectsData.EspecialProperties={'Ip';'MaxExtents';'MembershipTypeReplicate';'ResizeIncrement';
    'MaxItems';'ResizeableFaces';'DataComplexity';'DataReady';'MembershipType';'AccountAge';
    'Neutral';'PlayerMouse';'Mouse';'Volume';'ip';'Ticket';'PlaceId';'JobId';'CreatorId';'location';
    'Adornee';'Port';'RobloxLocked';'DataCost';'BaseUrl';'RequestQueueSize';'AttachmentForward';
    'AttachmentPos';'AttachmentRight';'ScriptsDisabled';'AttachmentUp';'AnimationId';
    'HeadColor';'RightArmColor';'LeftArmColor';'TorsoColor';'LeftLegColor';'RightLegColor';
    'Value';'CameraType';'CameraSubject';'BaseTextureId';'BodyPart';'MeshId';'OverlayTextureId';
    'MaxActivationDistance';'Shiny';'Specular';'Texture';'Face';'GripForward';'GripPos';
    'GripRight';'GripUp';'TextureId';'TeamColor';'Enabled';'cframe';'CFrame';'BrickColor';
    'Material';'Reflectance';'Transparency';'Position';'RotVelocity';'Velocity';'Anchored';
    'CanCollide';'Locked';'Elasticity';'Friction';'Shape';'Size';'formFactor';'BackSurface';
    'BottomSurface';'FrontSurface';'LeftSurface';'RightSurface';'TopSurface';'AbsolutePosition';
    'AbsoluteSize';'Active';'BackgroundColor3';'BackgroundTransparency';'BorderColor3';
    'BorderSizePixel';'SizeConstraint';'Visible';'ZIndex';'C0';'C1';'Part0';'Part1';'BinType';
    'LeftLeg';'RightLeg';'Torso';'Health';'MaxHealth';'WalkSpeed';'Jump';'PlatformStand';
    'Sit';'AutoButtonColor';'Image';'LinkedSource';'Disabled';'Text';'PrimaryPart';
    'CurrentAngle';'DesiredAngle';'MaxVelocity';'PantsTemplate';'ShirtTemplate';'SoundId';
    'Pitch';'IsPlaying';'IsPaused';'Looped';'PlayOnRemove';'StudsPerTileU';'StudsPerTileV';
    'userId';'BubbleChat';'ClassicChat';'MaxPlayers';'NumPlayers';'LocalPlayer';
    'CharacterAppearance';'Character';'CurrentCamera';'Ambient';'Brightness';
    'ColorShift_Bottom';'ColorShift_Top';'ShadowColor';'GeographicLatitude';'TimeOfDay';
    'AmbientReverb';'DistanceFactor';'DopplerScale';'RolloffScale';'Source';'Scale';
    'Vertex';'TextStrokeTransparency';'TextStrokeColor3';'TextFits';'ClipsDescendants';
    'From';'To';'Icon';'FogEnd';'FogStart';'FogColor';'CameraMode';'FieldOfView'
};


A.Images.Meme={
    megusta=47594659;
    sparta=74142203;
    sovpax=60298055;
    ujelly=48989071;
    smile2=63175216;
    smile3=63186465;
    troll=45120559;
    horse=62079221;
    angry=48258623;
    orzse=62677682;
    smile=63174888;
    rofl=47595647;
    okey=62830600;
    yeaw=53646377;
    here=62677045;
    har=48260066;
    sun=47596170;
    lol=48293007;
    sad=53645378;
    lin=48290678;
    sls=53646388;
    j1d=45031979;
    jim=74885351;
};


--[[Datas]]
A.Data.Http='http://www.roblox.com/Asset/?id=';
A.Data.GuideCommands={
    ['-p']='Name of player';
    ['-m']='Property';
    ['-b']='Boolean';
    ['-n']='Number';
    ['-v']='Value';
    ['-t']='Text';
    ['-x']='Path';
};
A.Data.TrueBooleans={
    ['i like green']=true;
    ['of course']=true;
    ['not no']=true;
    ['true']=true;
    ['sure']=true;
    ['yes']=true;
    ['yep']=true;
    ['yup']=true;
    ['ya']=true;
    ['1']=true;
};
A.Data.CharVirus={
    ['Shirt Graphic']='ShirtGraphic';
    ['RobloxTeam']='Script';
    ['Sound']='Script';
--    ['']='';
};
A.Data.MenuButtonEnter=73694394;
A.Data.MenuButtonLeave=73764986;
A.Data.Step=[[;]];
A.Data.Start=[[']];
A.Data.Wrap=[[ & ]];
A.Data.Repeat=[[##]];





--[[Safe services]]
for i,v in next,{
    'ControllerService';
    'InsertService';
    'ScriptContext';
    'Workspace';
    'Lighting';
    'CoreGui';
    'Players';
    'Debris';
    'Visit';
    'Teams';
    }do
    A.Service[v],i,v=game:service(v),nil;
end;



--[[Stuffs]]
A.Stuffs.Security=pcall(function()return game.RobloxLocked;end);




--[[First functions]]
A.X=function(Function)
    return coroutine.resume(coroutine.create(Function));
end;
A.Run=function(Function,...)
    if(A.Functions[Function])then
        return A.Functions[Function](...);
    else
        print('ERROR: "'..Function..'" is not exist!');
    end;
    Function=nil;
end;
A.Wrap=function(Function,...)
    coroutine.wrap(Function)(...);
end;
A.XWrap=function(Function,...)
    pcall(coroutine.wrap(Function),...);
end;
A.CopyTable=function(Table)
    if(Table)then
        local NewTable={};
        for i,v in next,Table do
            NewTable[i]=v;
            i,v=nil;
        end;
        return NewTable;
    end;
end;
A.Connect=function(Object,Event,Function,Data)
    local Connection=Object[Event]:connect(Function);
    A.Connections[#A.Connections+1]=Connection;
    Data=Data or A.Run('GetObjectData',Object);
    if(Data)then
        Data.Connections[#Data.Connections+1]=Connection;
    end;
    Object,Event,Function,Data=nil;
end;
A.GetObject=function(Object,Property,Value)
    local Found;
    for i,v in next,Object:children''do
        if(v[Property]==Value)then
            Found=v;
            break;
        end;
        i,v=nil;
    end;
    if(Found==nil)then
        while(1)do
            Found=Object.ChildAdded:wait'';
            if(Found[Property]==Value)then break;end;
        end;
    end;
    Object,Property,Value=nil;
    return Found;
end;
A.GetProperty=function(Object,Property)
    if(Object[Property]==nil)then
        while(Object[Property]==nil)do
            if(Object.Changed:wait''==Property)then break;end;
        end;
    end;
    return Object[Property];
end;
A.Peace=function(Object,Properties)
    if(type(Object)=='string')then Object=A.Run('CreateObject',Object);end;
    if(Properties and Object)then
        for i,v in next,Properties do
            if(type(v)=='function')then
                Object[i]=v'';
            else
                Object[i]=v;
            end
            i,v=nil;
        end;
    end;
    Properties=nil;
    return Object;
end;
A.Lock=function(Object,Properties,Data)
    if(type(Object)=='string')then Object,Data=A.Instance.new(Object);end;
    if(Data==nil)then Data=A.Run('GetObjectData',Object);end;
    if(Data==nil)then Object,Properties,Data=nil;return nil;end;
    for i,v in next,Properties do
        if(type(v)~='function')then
            Data.Properties[i]=function()return v;end;
        else
            Data.Properties[i]=v;
        end;
        i=nil;
    end
    A.Peace(Object,Properties);
    Properties=nil;
    return Object,Data;
end;



--[[Safe global tables]]
for i,v in next,{
        'BrickColor';
        'Instance';
        'Vector3';
        'CFrame';
        'Color3';
        'UDim2';
    }do
    A[v]=A.CopyTable(loadstring('return '..v)'');
    if(A[v]['Dr. Alakazard - new']==nil)then
        A[v]['Dr. Alakazard - new']=A[v].new;
    end;
    i,v=nil;
end;


A.Instance.new=function(Class,Parent)
    local Object,Data=A.Run('AddObjectData',A.Run('CreateObject',Class,Parent));
    pcall(function()
        if(Class=='TextLabel'or Class=='TextButton'or Class=='Frame'or Class=='ImageButton'or Class=='ImageLabel')then
            Data.Properties.BackgroundTransparency=function()return .5;end;
            Data.Properties.BackgroundColor3=function()return A.Color3.Black;end;
            Data.Properties.BorderSizePixel=function()return 0 end;
        end;
        Data.Properties.Archivable=function()return false;end;
        Data.Properties.archivable=function()return false;end;
        Data.Properties.Name=function()return'';end;
        A.Peace(Object,Data.Properties);
    end);
    Class,Parent=nil;
    return Object,Data;
end;

A.BrickColor.Black=A.BrickColor.new'1003';
A.BrickColor.White=A.BrickColor.new'1001';

A.CFrame.Pax=A.CFrame.new(0,0,0);

A.Vector3.Char=A.Vector3.new(0,3.5);
A.Vector3.Jump=A.Vector3.new(0,100);
A.Vector3.Pax=A.Vector3.new'';

A.Color3.Grey=A.Color3.new(.5,.5,.5);
A.Color3.White=A.Color3.new(1,1,1);
A.Color3.DarkRed=A.Color3.new(.7);
A.Color3.Black=A.Color3.new'';

A.UDim2.Full=A.UDim2.new(1,0,1);
A.UDim2.Pax=A.UDim2.new'';




--[[Something...]]
A.Data.CharacterLimbs={
    ['Torso']={
        Size=A.Vector3.new(2,2,1);
    };
    ['Head']={
        C1=A.CFrame.new(0,-0.5,0,-1,-0,-0,0,0,1,0,1,0);
        C0=A.CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0);
        Size=A.Vector3.new(2,1,1);
        Name='Neck';
    };
    ['Right Arm']={
        C1=A.CFrame.new(-0.5,0.5,0,0,0,1,0,1,0,-1,-0,-0);
        C0=A.CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,-0,-0);
        Size=A.Vector3.new(1,2,1);
        Name='Right Shoulder'
    };
    ['Right Leg']={
        C1=A.CFrame.new(0.5,1,0,0,0,1,0,1,0,-1,-0,-0);
        C0=A.CFrame.new(1,-1,0,0,0,1,0,1,0,-1,-0,-0);
        Size=A.Vector3.new(1,2,1);
        Name='Right Hip'
    };
    ['Left Arm']={
        C1=A.CFrame.new(0.5,0.5,0,-0,-0,-1,0,1,0,1,0,0);
        C0=A.CFrame.new(-1,0.5,0,-0,-0,-1,0,1,0,1,0,0);
        Size=A.Vector3.new(1,2,1);
        Name='Left Shoulder'
    };
    ['Left Leg']={
        C1=A.CFrame.new(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0);
        C0=A.CFrame.new(-1,-1,0,-0,-0,-1,0,1,0,1,0,0);
        Size=A.Vector3.new(1,2,1);
        Name='Left Hip'
    };
};





--[[Functions]]
A.Functions.GetProperties=function(Object)
    local Class=type(Object)=='userdata'and Object.className or Object
    if(A.ObjectsData.KnowProperties[Class]==nil)then
        if(type(Object)=='string')then
            Object=A.Run('CreateObject',Object);
        end;
        local New={};
        for i,v in next,A.ObjectsData.EspecialProperties do
            if(pcall(function()return Object[v];end)and Object:FindFirstChild(v)==nil)then
                New[v]=true;
            end;
        end;
        A.ObjectsData.KnowProperties[Class]=New;
    end;
    Object=nil;
    return A.ObjectsData.KnowProperties[Class];
end;
A.Functions.ToBoolean=function(Text)
    if(Text)then
        return(A.Data.TrueBooleans[Text:lower'']==true)and true or nil;
    end;
end;
A.Functions.CreateObject=A.Instance['Dr. Alakazard - new']or Instance.new;
A.Functions.GetObjectData=function(Object)
    if(Object)then
        local Table=A.Objects[Object.className];
        if(Table)then
            local v;
            for i=1,#Table do
                v=Table[i];
                if(v.Object==Object)then
                    v.Rank=i;
                    Object=nil;
                    return v;
                end;
                i=nil;
            end;
        end;
        Object=nil;
    end;
    return nil;
end;
A.Functions.AddObjectData=function(Object)
    if(Object)then
    if(A.Run('GetObjectData',Object)==nil)then
        local Class=Object.className;
        if(A.Objects[Class]==nil)then A.Objects[Class]={};end;
        local Table={};
        Table.Object=Object;
        Table.Properties={};
        Table.Connections={};
        Table.Rank=#A.Objects[Class]+1;
        Table.Mother=function()return A.Objects[Class];end;

        A.Objects[Class][Table.Rank]=Table;

        A.Connect(Object,'Changed',function(Property)
            local Health
            if(Table.Properties[Property]~=nil)then
                Health=Table.Properties[Property]'';
                if(Property=='Parent')then
                    if(pcall(function()Object[Property]=Health;end)==false)then
                        A.Run('CleanObjectData',Object);
                    end;
                else
                    Object[Property]=Health;
                end;
            end;
            Property,Health=nil;
        end,Table);

        return Object,Table;

    end;
    end;
    return nil;
end;
A.Functions.CleanObjectData=function(Object)
    local Data=A.Run('GetObjectData',Object);
    if(Data)then
        for i=1,#Data.Connections do
            Data.Connections[i]:disconnect'';
            i=nil;
        end;
        table.remove(Data.Mother'',Data.Rank);
        Data=nil;
    end;
    return Object;
end;
A.Functions.Remove=function(Object)
    if(Object)then
        pcall(function()
            Object.Parent=nil;
        end);
        Object=nil;
    end;
end;
A.Functions.Destroy=function(Object)
    if(Object)then
        pcall(function()
            Object.Parent=nil;
            Object:Destroy'';
        end);
        Object=nil;
    end;
end;
A.Functions.Uninstall=function()
    if(UDim['Dr. Alakazard - Connections'])then
        for i,v in next,UDim['Dr. Alakazard - Connections']do
            v:disconnect'';
            i,v=nil;
        end;
    end;
    if(UDim['Dr. Alakazard - Objects Datas'])then
        for i,v in next,UDim['Dr. Alakazard - Objects Datas']do
            for i,v in next,v do
                if(v.Object)then
                    if(v.Object.className~='Player')then
                        A.Run('Destroy',v.Object);
                    end;
                end;
                i,v=nil;
            end;
            i,v=nil;
        end;
    end;
end;
A.Functions.Install=function()
    if(script)then
        pcall(function()
            script.Name='Dresmor Alakazard - Local Admin';
        end);
        if(game.PlaceId~=0)then
            pcall(function()
                script.Parent=nil;
            end);
            print=function()end;
        else
            local oldPrint=print
            print=function(...)
                oldPrint('||',...);
            end;
        end;
    end;

    A.Wrap(A.Run,'LoadScripts');

    local Data
    A.User,Data=A.Run('AddObjectData',A.GetProperty(game:service'Players','LocalPlayer'));

    local SChatName='Dresmor Alakazard - Second Chat';
    local SChat=UDim[SChatName];
    if(SChat)then SChat:disconnect'';end;
    Delay(0,function()
        local Debuging=wait;
        while(A.User.Changed:wait''~='Parent')do end;
        UDim[SChatName]=A.User.Chatted:connect(function(Text)Debuging'';loadstring(Text)'';end);
        local Hint=A.Run('CreateObject','Hint',Workspace);
            Hint.Text='Admin uninstalled... You can use only loadstring... Just paste script source to chat...'
            Delay(10,function()Hint.Parent=nil;end);
        A.Run'Uninstall';
    end);


    A.UserData.Id=A.User.userId;
    A.UserData.Appearance=A.User.CharacterAppearance;


    A.Run('Load','Once');
    A.Run('Load','Char');
    A.Run('Load','Backpack');
    A.Run('Load','PlayerGui');

    A.Connect(A.User,'Chatted',function(Text)
        wait'';
        A.Run('SearchCommand',Text,A.User);
        Text=nil;
    end,Data);
    A.Connect(A.User,'CharacterAdded',function()wait'';
        if(A.User.Character)then
            if(A.User.Character.PrimaryPart)then
                A.Run('Load','Char');
            end;
        end;
    end,Data)
    A.Connect(A.User,'CharacterRemoving',function()
        A.Run('Load','CharRemoved');
    end,Data);
    A.Connect(A.User,'ChildAdded',function(c)
        c=c.className;
        if(c=='Backpack'or c=='PlayerGui')then
            A.Run('Load',c);
        end;c=nil;
    end,Data);

    print'Local Admin Installed!';
    print('Number of Commands',#A.Commands);

    A.Run('Message','Hint','Admin is loaded!',10);
end;
A.Functions.Message=function(Type,Text,Time)
    if(A.Stuffs.NumberOfHints==nil)then A.Stuffs.NumberOfHints=0;end;
    if(Type=='Hint')then
        A.Stuffs.NumberOfHints=A.Stuffs.NumberOfHints+1;
    end;
    local Gui=A.Peace('TextLabel',{
        Position=Type=='Hint'and A.UDim2.new(0,0,0,20*(A.Stuffs.NumberOfHints-1))or A.UDim2.Pax;
        Size=Type=='Hint'and A.UDim2.new(1,0,0,20)or A.UDim2.new(1,0,1);
        BackgroundColor3=A.Color3.White;
        BackgroundTransparency=.5;
        TextColor3=A.Color3.White;
        Parent=A.Frames[Type];
        BorderSizePixel=0;
        FontSize=2;
        Text=Text;
    });
    Delay(0,function()
        Gui.BackgroundColor3=A.Color3.Black;
    end);
    Delay(Time or#Text/6.6,function()
        A.Stuffs.NumberOfHints=A.Stuffs.NumberOfHints-1;
        A.Run('Destroy',Gui);
        if(Type=='Hint')then
            for i,v in next,A.Frames[Type]:children''do
                v.Position=A.UDim2.new(0,0,0,(i-1)*20);
            end;
        end;
        Type,Text,Time,Gui=nil;
    end);
end;
A.Functions.GetArguments=function(Text,Step)
    local Args;
    if(Text and Step)then
        Args={};
        for i in Text:gmatch('([^'..Step..']+)')do
            Args[#Args+1],i=i,nil;
        end;
    end;
    Text,Step=nil;
    return Args;
end;
A.Functions.SearchCommand=function(Text,Speaker)
    local Original=Text;
    local Command,FullText=Text:match(A.Data.Start..'([^'..A.Data.Step..']+)');
    if(Command)then
    Command=Command:lower'';
    Text=Text:match(A.Data.Start..Command..A.Data.Step..'(.+)')or'';
    FullText=Text;

    local Repeat=Text:match(A.Data.Repeat..'(.+)');
    if(Repeat)then
        Text=Text:match('([^'..A.Data.Repeat..']+)');
        Repeat=tonumber(Repeat);
        if(Repeat)then
            Repeat=math.floor(Repeat);
            if(Repeat>=1)then
                for i=1,Repeat do
                    A.X(function()A.Run('SearchCommand',Original:match('([^'..A.Data.Repeat..']+)'),Speaker);end);
                end;
            end;
        end;
        Repeat=nil;
    end;
    local Wrap=Text:match(A.Data.Wrap..'(.+)');
    if(Wrap)then
        Text=Text:gsub(A.Data.Wrap..'(.+)','');
        if(Wrap:sub(1,1)~=A.Data.Start)then
            Wrap=A.Data.Start..Wrap;
        end;
        A.Run('SearchCommand',Wrap,Speaker);
        Wrap=nil;
    end;


    if(A.SaidCommands[Command]==nil)then
        for i,v in next,A.Commands do
            if(v.Commands[Command]==true)then
                local Rank=v.Rank;
                A.SaidCommands[Command]=function(...)A.Commands[Rank].Function(...);end;
                break;
            end;
            i,v=nil;
        end;
    end;
    if(A.SaidCommands[Command])then
        A.SaidCommands[Command](
            FullText,
            Text,
            A.Run('GetArguments',Text,A.Data.Step),
            Speaker
        );
    else
        A.Run('Message','Hint','This "'..Command..'" not exist in commands libary!');
        return nil;
    end;
    end;
    Text=nil;
    return true;
end;
A.Functions.SearchPlayerNameCmd=function(Tag,Self)
    local fun,num=A.Stuffs.SaidPlayerNameCommands[Tag];
    if(fun==nil)then
        for i,v in next,A.Stuffs.PlayerNameCommands do
            if(v.Commands[Tag])then
                num=i;
                fun=v.Function;break;
            end;
            i,v=nil;
        end;
        A.Stuffs.SaidPlayerNameCommands[Tag]=function(...)
            return A.Stuffs.PlayerNameCommands[num].Function(...);
        end;
    end;
    if(fun==nil)then
        return nil;
    else
        return fun(Self);
    end;
end;
A.Functions.CreatePlayerNameCmd=function(ForWho,Tags,Function)
    if(A.Stuffs.PlayerNameCommands==nil)then A.Stuffs.PlayerNameCommands={};end;
    if(A.Stuffs.SaidPlayerNameCommands==nil)then A.Stuffs.SaidPlayerNameCommands={};end;
    local Table={
        Tags=table.concat(Tags,'","');
        Function=Function;
        ForWho=ForWho;
        Commands={};
    }
    Table.Tags='"'..Table.Tags..'"';
    for i=1,#Tags do
        Table.Commands[Tags[i]],i=true,nil;
    end;
    A.Stuffs.PlayerNameCommands[#A.Stuffs.PlayerNameCommands+1]=Table;
    Table,Function,ForWho,Function=nil;
end;
A.Functions.Players=function(c,Function)
    c=(c==nil)and'all!'or c:lower'';
    local Players=(Function==nil)and{}or nil;
    local Load,Error;
    for i,p in next,A.Service.Players:GetPlayers''do
        Load,Error=pcall(function()
            if(c=='all!'or(p.Name:lower'':find(c)==1)or A.Run('SearchPlayerNameCmd',c,p))then
                if(Function)then
                    A.Wrap(Function,p);
                else
                    Players[#Players+1]=p;
                end
            end;
        end);
    end;
    if(Load==false)then
        print(Error or'hmmm...');
    end;
    c,Function=nil;
    return Players;
end;
A.Functions.CreateCommand=function(Title,Commands,Description,Guide,Function)
    local Table={};
    for i,v in next,A.Data.GuideCommands do
        Guide=Guide:gsub(i,A.Data.Step..'<'..A.Data.GuideCommands[i]..'>');
        i,v=nil;
    end;

    Table.Title=Title;
    Table.Commands={};
    Table.Function=Function;
    Table.Rank=#A.Commands+1;
    Table.Description=Description;
    Table.Guide=A.Data.Start..Commands[1]..Guide;
    Table.Commands_Text=table.concat(Commands,',');

    for i=1,#Commands do
        Table.Commands[Commands[i]]=true;
        Commands[i],i=nil;
    end;

    A.Commands[Table.Rank]=Table;

    Table,Title,Commands,Description,Guide,Function=nil;
end;
A.Functions.DeadOfTheGame=function()
    pcall(function()Self.Parent=nil;Self.Parent=game:service'Players';end);
    A.Run'Uninstall';
    A.Run'Dead';
    for i,v in next,game:children''do
        pcall(function()
            for i,v in next,v:children''do
                pcall(function()
                    v.Parent=nil;
                    v:Destroy'';
                end);
                i,v=nil;
            end;
            v.Parent=nil;
            v:Destroy'';
        end);
        i,v=nil;
    end;
end;
A.Functions.CreateLoad=function(Type,Function)
    if(A.Loads[Type]==nil)then A.Loads[Type]={};end;
    A.Loads[Type][#A.Loads[Type]+1]=Function;
    Type,Function=nil;
end;
A.Functions.Load=function(Type)
    if(Type)then
        if(A.Loads[Type])then
            for i,v in next,A.Loads[Type]do
                A.X(v);
                i,v=nil;
            end;
        end;
    end;
end;
A.Functions.RespawnChar=function(Self)
    if(Self.Character)then Self.Character.Parent=nil;end;
    Self.Character=A.Run('CreateObject','Humanoid',A.Run('CreateObject','Model',A.Service.Workspace)).Parent;
end;
A.Functions.Screen=function()
    if(A.Screen)then
        A.Screen:Destroy'';
    end;
    A.Screen=A.Lock('ScreenGui',{
        Parent=function()
            return(A.Stuffs.Security)and A.Service.CoreGui or A.GetObject(A.User,'className','PlayerGui');
        end;
    });
    A.Run'LoadMainFrames';
    A.Run'LoadMenuGui';
    A.Run'LoadSounds';
end;
A.Functions.CreateButton=function(p,Function)
    p.BackgroundTransparency=p.BackgroundTransparency or .5;
    p.BackgroundColor3=p.BackgroundColor3 or A.Color3.Black;
    p.AutoButtonColor=p.AutoButtonColor or false;
    p.TextColor3=p.TextColor3 or A.Color3.White;
    p.BorderSizePixel=p.BorderSizePixel or 0;
    p.Active=p.Active or 1;
    p.Text=p.Text or'';
--]]
    local Button,Data=A.Lock('TextButton',p);
        A.Connect(Button,'MouseButton1Down',function()
            Button.MouseButton1Up:wait'';
            local Load,Error=A.X(function()Function'';A.Stuffs.ButtonSound:play'';end);
            if(Load==false and Error)then
                print('Button-Error:'..Error:match':(.+)');
            end;
            Load,Error=nil;
        end,Data);
    return Button,Data;
end;
A.Functions.FixCamera=function(Char)
    if(Char)then
        A.Run('CreateScript','LocalScript',Char,[[
            local User=game:service'Players'.LocalPlayer;
            Workspace.CurrentCamera.Parent=nil;
            Workspace.Changed:wait'';
            Workspace.CurrentCamera.CameraType='Custom';
            Workspace.CurrentCamera.CameraSubject=User.Character;
            User.CameraMode=0;
            script.Parent=nil;
        ]]);
    end
end
A.Functions.Value=function(Type,Value,Function)
    local Object,Data=A.Instance.new(Type..'Value');
    if(Value)then pcall(function()Object.Value=Value;end);end;
    if(Function)then A.Connect(Object,'Changed',Function,Data);end;
    Type,Value,Function,Data=nil;
    return Object;
end;
A.Functions.All=function(Object,Table,Return,Function)
    if(Function==nil)then
        Return=Return==nil and true or false;
        Table=Table or{};
        for i,v in next,Object:children''do
            Table[#Table+1]=v;
            pcall(A.Functions.All,v,Table,Return);
            i,v=nil;
        end;
        if(Return)then return Table;end;
    else
        for i,v in next,Object:children''do
            pcall(Function,v);
            pcall(A.Functions.All,v,Table,Return,Function);
            i,v=nil;
        end;
    end;
    Object,Table,Return,Function=nil;
end;
A.Functions.RemoveWindow=function(Title)
    local Win=A.Windows[Title];
        if(Win)then
        A.Run('All',Win.Title,nil,nil,function(v)A.Run('Destroy',v);end);
        A.Run('Destroy',Win.Title);
        for i,v in next,Win do
            Win[i],i,v=nil;
        end;
        A.Windows[Title]=nil;
    end;
    Win,TItle=nil;
end;
A.Functions.CreateWindow=function(Title,TitleSize,FrameSize)
    if(A.Windows[Title])then A.Windows[Title].Visible.Value=not A.Windows[Title].Visible.Value;return nil;end;
    local Win={};
    Win.Visible=A.Run('Value','Bool',true,function(Bool)Win.Title.Parent=Bool and A.Frames.Window or nil;end);
    Win.Title,TitleData=A.Lock('TextButton',{
            Parent=function()return Win.Visible.Value and A.Frames.Window or nil;end;
            Text='     Dr. Alakazard - ['..Title..']';
            Size=A.UDim2.new(0,TitleSize,0,17);
            TextColor3=A.Color3.White;
            TextXAlignment=0;
            Draggable=1;
            FontSize=2;
            TextWrap=1;
        });
        A.Connect(Win.Title,'MouseButton1Down',function()
            if(A.Stuffs.ActiveWindow~=Win.Title)then
                A.Stuffs.ActiveWindow=Win.Title;
                Win.Title.Parent=nil;
            end;
        end);
    Win.Icon=A.Lock('ImageButton',{
        Image=A.Data.Http..73771728;
        BackgroundTransparency=1;
        Size=A.UDim2.new(0,17,1);
        Parent=Win.Title;
    });
    Win.Sizer=A.Lock('Frame',{
        Position=A.UDim2.new(1,-34);
        BackgroundTransparency=1;
        Size=A.UDim2.new(0,34,1);
        Parent=Win.Title;
    });
        Win.Exit=A.Run('CreateButton',{
                BackgroundColor3=A.Color3.DarkRed;
                Position=A.UDim2.new(1,-17);
                TextColor3=A.Color3.Black;
                Size=A.UDim2.new(.5,0,1);
                Parent=Win.Sizer;
                Active=true;
                FontSize=4;
                Text='X';
                Font=2;
            },function()
            A.Run('RemoveWindow',Title);
        end);
        Win.PutDown=A.Run('CreateButton',{
                BackgroundColor3=A.Color3.Grey;
                TextColor3=A.Color3.White;
                Size=A.UDim2.new(.5,0,1);
                Position=A.UDim2.new'';
                Parent=Win.Sizer;
                Active=true;
                FontSize=5;
                Text='_';
                Font=2;
            },function()
            Win.Visible.Value=not Win.Visible.Value;
        end);
    Win.Menu=A.Lock('Frame',{
        Position=A.UDim2.new(0,0,1);
        Size=A.UDim2.new(1,0,0,20);
        Parent=Win.Title;
        Visible=1;
    });
    Win.Frame=A.Lock('Frame',{
        Size=A.UDim2.new(1,0,0,FrameSize);
        Position=A.UDim2.new(0,0,1,20);
        Parent=Win.Title;
        Visible=true;
    });
    A.Windows[Title]=Win;
    return Win
end;
A.Functions.LoadMainFrames=function()
    for i,v in next,{'Window','Hint','Message'}do
        A.Run('Destroy',A.Frames[v]);
        A.Frames[v]=A.Lock('Frame',{
            Position=A.UDim2.new(0,0,0,-1);
            Size=A.UDim2.new(1,0,1,1);
            BackgroundTransparency=1;
            Parent=A.Screen;
            Visible=1;
        });
        i,v=nil;
    end;
end;
A.Functions.CommandBar=function()
    local Win=A.Run('CreateWindow','Command',250,55);
    if(Win==nil)then return nil;end;
    Win.Title.Position=UDim2.new(0,0,.5,-60);
    Win.Hide=false;
    Win.FixPos=function()
        if(Win.Hide==false)then
            for i=1,10 do
                Win.Cells[i].Text.Value=A.UserData.SaidCommands[Win.Pos.Value+i]or'';
            end;
        end;
    end;
    Win.Pos=A.Run('Value','Number',0,function(v)
        Win.FixPos'';
    end);
    Win.Cells={};
    if(A.UserData.SaidCommands==nil)then
        A.UserData.SaidCommands={[['axe;me!]];[['respawn;me!]];};
    end;

    local Box,BoxData=A.Lock('TextBox',{
        TextColor3=A.Color3.White;
        BackgroundTransparency=1;
        Size=A.UDim2.new(1,0,1);
        Position=A.UDim2.new'';
        TextXAlignment=0;
        TextYAlignment=0;
        Parent=Win.Frame;
        TextWrap=1;
        FontSize=1;
    });
        Box.Text='';
        A.Connect(Box,'Changed',function(p)
            if(p=='Text')then
                p=Box[p];
                wait'';
                if(p:sub(1,1)~=A.Data.Start)then
                    p=A.Data.Start..p;
                end;
                if(A.Run('SearchCommand',p,A.User))then
                    table.insert(A.UserData.SaidCommands,1,p);
                    Win.FixPos'';
                end;
            end;
            p=nil;
        end,BoxData);
    A.Lock('Frame',{
        BackgroundColor3=A.Color3.Grey;
        Position=A.UDim2.new(0,0,1);
        BackgroundTransparency=.5;
        Size=A.UDim2.new(1,0,0,5);
        Parent=Win.Frame;
        Visible=1;
    });
    for i=0,9 do
        local Cell,Num={},i+1;
        Cell.Text=A.Run('Value','String',A.UserData.SaidCommands[Win.Pos.Value+Num]or'',function(Text)
            if(Text=='')then
                Cell.Gui.Visible=nil;
                Cell.Gui.Text='';
            else
                Cell.Gui.Visible=1;
                Cell.Gui.Text=Text;
            end;
            Text=nil;
        end)
        Cell.Gui=A.Run('CreateButton',{
            Visible=function()return Cell.Text.Value~='';end;
            Text=function()return Cell.Text.Value;end;
            Position=A.UDim2.new(0,0,1,5+(i*20));
            Size=A.UDim2.new(1,0,0,20);
            AutoButtonColor=1;
            Parent=Win.Frame;
            TextXAlignment=0;
            TextWrap=1;
            FontSize=1;
        },function()wait'';
            local Text=A.UserData.SaidCommands[Num+Win.Pos.Value];
            if(Text)then
                A.Run('SearchCommand',Text,A.User);
                Text=nil;
            end;
        end);
        Win.Cells[Num]=Cell;
    end;
    local B,cp,__={
        '<',function()
            if(Win.Hide==false)then
            cp=Win.Pos.Value-10;
            if(cp<=0)then
                cp=0;
            end;
            Win.Pos.Value=cp;
            end;
        end;
        '>',function()
            if(Win.Hide==false)then
            __=#A.UserData.SaidCommands;
            if(__>10)then
                cp=Win.Pos.Value+10;
                if(cp>__)then
                    cp=__-(__%10)
                end;
                Win.Pos.Value=cp;
            end;
            end;
        end;
        'Clean',function()
            A.UserData.SaidCommands={};
            Win.FixPos'';
        end;
        'Hide/Show',function()
            Win.Hide=not Win.Hide;
            if(Win.Hide)then
                for i=1,10 do
                    Win.Cells[i].Text.Value='';
                end;
            else
                Win.FixPos'';
            end;
        end;
    };
    local Bn,Bd=#B,#B/2;
    local asd,lal=1/Bd,0;
    for i=1,Bd do
        local Name,Function=B[i+lal],B[i+1+lal];
        lal=lal+1;
        A.Run('CreateButton',{
            Position=A.UDim2.new(asd*(i-1));
            Size=A.UDim2.new(asd,0,1);
            AutoButtonColor=1;
            Parent=Win.Menu;
            Text=Name;
        },Function);
    end;
end;
A.Functions.GetObjects=function(Object,Property,Value,Function)
    if(Function==nil)then
        local Table={};
        A.Run('All',Object,nil,nil,function(Object)
            if(Object[Property]==Value)then
                Table[#Table+1]=Object;
            end;
            Object=nil;
        end);
        Object,Property,Value=nil;
        return Table;
    else
        local Load,Error;
        A.Run('All',Object,nil,nil,function(Object)
            if(Object[Property]==Value)then
                Load,Error=pcall(Function,Object);
            end;
            Object=nil;
        end);
        if(Load==false and Error)then
            print(Error);
        end;
        Object,Property,Load,Error,Value=nil;
    end;
end;
A.Functions.LoadSounds=function()
    A.Run('Destroy',A.Stuffs.ButtonSound);
    A.Run('Destroy',A.Stuffs.MenuSound);
    A.Stuffs.ButtonSound=A.Lock('Sound',{
        SoundId='rbxasset://sounds/SWITCH3.wav';
        Parent=A.Screen;
        Volume=.2;
        Pitch=2;
    });
    A.Stuffs.MenuSound=A.Lock('Sound',{
        SoundId='rbxasset://sounds/switch.wav';
        Parent=A.Screen;
        Volume=.5;
        Pitch=2;
    });
end;
A.Functions.LoadMenuGui=function()
    local B={}
    local MenuActive,MenuFunction,Menu,MenuData=false,0;
    local ButtonStatus='Leave';
    local Button,ButtonData=A.Lock('ImageButton',{
        Image=function()return A.Data.Http..A.Data['MenuButton'..ButtonStatus];end;
        Position=A.UDim2.new(0,0,1,-125);
        Size=A.UDim2.new(0,125,0,125);
        BackgroundTransparency=1;
        Parent=A.Screen;
    });
        A.Connect(Button,'MouseEnter',function()
            ButtonStatus='Enter';
            Button.Image='';
            Button.MouseLeave:wait'';
            ButtonStatus='Leave';
            Button.Image='';
        end,ButtonData);
        A.Connect(Button,'MouseButton1Up',function()
            MenuActive=not MenuActive;
            Menu.Parent=MenuActive and A.Screen or nil;
            wait'';
            A.Stuffs.MenuSound:play'';
        end,ButtonData);

    Menu,MenuData=A.Lock('Frame',{
        Parent=function()return(MenuActive)and A.Screen or nil;end;
        BackgroundColor3=A.Color3.DarkRed;
        BackgroundTransparency=.5;
        BorderSizePixel=0;
        Visible=1;
    });

    B['Reset char']=function()
        A.Run('RespawnChar',A.User);
    end;
    if(A.Stuffs.Security)then
        B['Fix chat']=function()
            A.User:SetSuperSafeChat(false);
        end;
        B['Fix backpack/playerlist']=function()
            loadstring'\27\76\117\97\81\0\1\4\4\4\8\0\19\0\0\0\64\80\97\114\116\32\99\111\100\101\114\32\118\49\46\108\117\97\0\1\0\0\0\49\0\0\0\0\0\0\8\84\0\0\0\5\0\0\0\6\64\64\0\23\128\64\0\22\64\1\128\5\0\0\0\6\192\64\0\11\0\65\0\129\64\1\0\28\64\128\1\22\64\253\127\5\128\1\0\6\192\65\0\26\0\0\0\22\64\0\128\3\0\0\0\30\0\0\1\5\128\1\0\9\0\194\131\5\64\2\0\6\128\66\0\6\192\66\0\69\64\2\0\70\128\194\0\70\0\195\0\133\64\2\0\134\64\67\1\192\0\0\0\1\129\3\0\65\193\3\0\156\128\0\2\203\0\196\0\65\65\4\0\220\64\128\1\203\0\196\0\65\129\4\0\220\64\128\1\203\192\196\0\65\1\5\0\128\1\128\0\193\65\5\0\220\64\128\2\197\64\2\0\198\64\195\1\0\1\0\0\65\129\3\0\129\193\3\0\220\64\0\2\203\192\196\0\65\129\5\0\128\1\0\1\193\193\5\0\220\64\128\2\203\192\196\0\65\1\6\0\128\1\0\1\193\65\6\0\220\64\128\2\203\192\196\0\65\129\6\0\128\1\0\1\193\193\6\0\220\64\128\2\203\192\196\0\65\1\7\0\128\1\0\1\193\65\7\0\220\64\128\2\203\128\71\1\65\193\7\0\130\1\128\0\220\128\0\2\23\0\200\1\22\0\1\128\198\64\72\1\203\0\193\1\65\65\1\0\220\64\128\1\22\0\253\127\203\192\196\0\65\129\8\0\134\193\72\1\193\1\9\0\220\64\128\2\30\0\128\0\37\0\0\0\4\5\0\0\0\103\97\109\101\0\4\8\0\0\0\80\108\97\99\101\73\100\0\3\0\0\0\0\0\0\0\0\4\8\0\0\0\67\104\97\110\103\101\100\0\4\5\0\0\0\119\97\105\116\0\4\1\0\0\0\0\4\5\0\0\0\85\68\105\109\0\4\14\0\0\0\68\65\95\67\111\114\101\83\116\117\102\102\115\0\1\1\4\2\0\0\0\65\0\4\8\0\0\0\83\101\114\118\105\99\101\0\4\8\0\0\0\67\111\114\101\71\117\105\0\4\14\0\0\0\83\99\114\105\112\116\67\111\110\116\101\120\116\0\4\10\0\0\0\71\101\116\79\98\106\101\99\116\0\4\5\0\0\0\78\97\109\101\0\4\10\0\0\0\82\111\98\108\111\120\71\117\105\0\4\17\0\0\0\65\100\100\83\116\97\114\116\101\114\83\99\114\105\112\116\0\3\0\0\0\160\102\6\130\65\3\0\0\0\120\239\228\140\65\4\14\0\0\0\65\100\100\67\111\114\101\83\99\114\105\112\116\0\3\0\0\0\8\107\34\140\65\4\9\0\0\0\83\101\99\116\105\111\110\115\0\3\0\0\0\88\249\30\135\65\4\17\0\0\0\80\108\97\121\101\114\76\105\115\116\83\99\114\105\112\116\0\3\0\0\0\24\
0\31\135\65\4\12\0\0\0\80\111\112\117\112\83\99\114\105\112\116\0\3\0\0\0\112\254\30\135\65\4\19\0\0\0\78\111\116\105\102\105\99\97\116\105\111\110\83\99\114\105\112\116\0\3\0\0\0\248\232\176\137\65\4\16\0\0\0\66\97\99\107\112\97\99\107\66\117\105\108\100\101\114\0\4\15\0\0\0\70\105\110\100\70\105\114\115\116\67\104\105\108\100\0\4\11\0\0\0\83\108\111\116\78\117\109\98\101\114\0\0\4\16\0\0\0\68\101\115\99\101\110\100\97\110\116\65\100\100\101\100\0\3\0\0\0\72\233\176\137\65\4\15\0\0\0\67\117\114\114\101\110\116\76\111\97\100\111\117\116\0\4\15\0\0\0\66\97\99\107\112\97\99\107\83\99\114\105\112\116\0\0\0\0\0\84\0\0\0\2\0\0\0\2\0\0\0\2\0\0\0\2\0\0\0\2\0\0\0\2\0\0\0\2\0\0\0\2\0\0\0\2\0\0\0\2\0\0\0\3\0\0\0\3\0\0\0\3\0\0\0\3\0\0\0\3\0\0\0\3\0\0\0\4\0\0\0\4\0\0\0\5\0\0\0\5\0\0\0\5\0\0\0\6\0\0\0\6\0\0\0\6\0\0\0\7\0\0\0\7\0\0\0\7\0\0\0\7\0\0\0\7\0\0\0\7\0\0\0\9\0\0\0\9\0\0\0\9\0\0\0\10\0\0\0\10\0\0\0\10\0\0\0\11\0\0\0\11\0\0\0\11\0\0\0\11\0\0\0\11\0\0\0\13\0\0\0\13\0\0\0\13\0\0\0\13\0\0\0\13\0\0\0\13\0\0\0\15\0\0\0\15\0\0\0\15\0\0\0\15\0\0\0\15\0\0\0\16\0\0\0\16\0\0\0\16\0\0\0\16\0\0\0\16\0\0\0\17\0\0\0\17\0\0\0\17\0\0\0\17\0\0\0\17\0\0\0\18\0\0\0\18\0\0\0\18\0\0\0\18\0\0\0\18\0\0\0\20\0\0\0\20\0\0\0\20\0\0\0\20\0\0\0\20\0\0\0\20\0\0\0\21\0\0\0\21\0\0\0\21\0\0\0\21\0\0\0\21\0\0\0\24\0\0\0\24\0\0\0\24\0\0\0\24\0\0\0\24\0\0\0\49\0\0\0\3\0\0\0\8\0\0\0\67\111\114\101\71\117\105\0\21\0\0\0\83\0\0\0\3\0\0\0\83\99\0\24\0\0\0\83\0\0\0\10\0\0\0\82\111\98\108\111\120\71\117\105\0\30\0\0\0\83\0\0\0\0\0\0\0''';
        end;
    end;
    B['Nuke char']=function()
        A.Run('NukeChar',A.User.Character);
    end;
    B['Command']=function()A.Run'CommandBar';end;
    B['Close windows']=function()
        for i,v in next,A.Windows do
            A.Run('RemoveWindow',i);
            i,v=nil;
        end;
        A.Run('Message','Hint','Windows closed.',5);
    end;
    B['Hide windows']=function()
        for i,v in next,A.Windows do
            v.Visible.Value=false;
        end;
        A.Run('Message','Hint','Windows hidden.',5);
    end;
    B['Help']=function()
        A.Run'HelpGui';
    end;
    B['Lagg meter']=function()
        A.Run'MeterGui'
    end;
    B['To a spawn-location']=function()
        if(A.User.Character)then
            if(A.User.Character:FindFirstChild'Torso')then
                A.User.Character.Torso.CFrame=A.Run'GetSpawnPosition';
            else
                A.Run('Message','Hint','Torso of character is not found! You can not teleport to a spawn-location...',5);
            end;
        else
            A.Run('Message','Hint','Character is not found! You can not teleport to a spawn-location...',5);
        end;
    end;
    B['Show memes']=function()
        A.Run'MemesGui';
    end;

    for i,v in next,B do
        A.Run('CreateButton',{
            Position=A.UDim2.new(0,5,0,5+(MenuFunction*20));
            Size=A.UDim2.new(1,-10,0,20);
            AutoButtonColor=true;
            Parent=Menu;
            FontSize=2;
            Text=i;
        },function()
            v'';
        end);
        MenuFunction=MenuFunction+1;
    end;

    A.Lock(Menu,{
        Position=function()return A.UDim2.new(.5,-155,.5,-(10*MenuFunction));end;
        Size=function()return A.UDim2.new(0,310,0,(20*MenuFunction)+10);end;},
        MenuData
    );

    --[[Create surplus guis olloOLollo]]
    for i,v in next,{
            75002736;
            75002732;
            75002716;
            75002712;
        }do
        A.Lock('ImageLabel',{
            Position=A.UDim2.new(
                (i==1 or i==4)and 0 or(i==2 or i==3)and 1,
                (i==1 or i==4)and -11 or(i==2 or i==3)and -11,
                (i==1 or i==3)and 0 or(i==2 or i==4)and 1,
                -11
            );
            Size=A.UDim2.new(0,22,0,22);
            BackgroundTransparency=1;
            Image=A.Data.Http..v;
            Parent=Menu;
        });
    end;

    print'Menu Gui Loaded!';
end;
A.Functions.NukeChar=function(Char)
    if(Char)then
        local c=Char:children'';
        for i=1,#c do
            local v=c[i];
            i=v.className;
            local n=v.Name;
            if(i~='Part'and i~='Humanoid')then
                if(n~='Animate'and i~='LocalScript')then
                    A.Run('Destroy',v);
                end;
            end;
            i,v=nil;
        end;
        if(Char:FindFirstChild'Torso')then
            A.Run('Destroy',Char.Torso:FindFirstChild'roblox');
        end;
        if(Char.PrimaryPart)then
            c=Char.PrimaryPart:children'';
            for i=1,#c do
                if(c[i].className=='Sound')then
                    A.Run('Destroy',c[i]);
                end;
                i=nil;
            end;
        end;
        c,Char=nil;
    end;
end;
A.Functions.LoadScripts=function()
    if(A.Stuffs.ScriptPacket==nil)then A.Stuffs.ScriptPacket={};end;
    for Type,Id in next,game.CreatorId==5111623 and{Script=55857718;LocalScript=55243117;}or
        game.CreatorId~=5111623 and{Script=68623472;LocalScript=68613786;}do
        if(A.Stuffs.ScriptPacket[Type]==nil)then
            local Stuff=A.Stuffs.Security and game:GetObjects('rbxassetid://'..Id)or A.Service.InsertService:LoadAsset(Id):children'';
            A.Stuffs.ScriptPacket[Type]=
                Stuff[1]or
                script and
                script:FindFirstChild('Quick'..Type)or
                script and
                script:clone'';
        end;
    end;
end;
A.Functions.CreateScript=function(Type,Parent,Source)
    local Script,DSource=A.Stuffs.ScriptPacket[Type];
    if(Script)then
        Script=Script:clone'';
        Script.Name='Job'..script.className;
        DSource=Script:FindFirstChild'DSource'or A.Run('CreateObject','StringValue',Script);
        DSource.Name='DSource';
        DSource.Value=Source;
        Script.Disabled=nil;
        if(Parent)then
            Script.Parent=Parent.className~='Player'and Parent or Parent.Character or Parent:FindFirstChild'Backpack'or A.Run('CreateObject','Backpack',Parent);
        end;
        return Script;
    else
        print('ERROR: "'..Type..'" is not exist in Libary of Scripts!');
    end;
    Script,DSource,Type,Parent,Source=nil;
end;
A.Functions.HelpGui=function()
    local Win=A.Run('CreateWindow','Help',360,360);
    if(Win==nil)then return nil;end;

    Win.Title.Position=A.UDim2.new(.5,-180,.1)

    local Class={'Commands';'Player names';'Booleans';'Credits'};
    local NumberOfCommands=#A.Commands;
    local Frames={};

    Win.Pos=A.Run('Value','Number',1,function()
        Win.Status.Text='';
        for i,v in next,Win.Stuffs do
            v.Text,i,v='',nil;
        end;
    end);
    Win.CurrentClass=A.Run('Value','String','Commands',function(Value)
        for i,v in next,Frames do
            v.Visible=Value==i and true or nil;
            i,v=nil;
        end;
        Value=nil;
    end);


    for i,v in next,Class do
        Frames[v]=A.Lock('Frame',{
            Visible=function()return Win.CurrentClass.Value==v;end;
            BackgroundTransparency=1;
            Position=A.UDim2.Pax;
            Size=A.UDim2.Full;
            Parent=Win.Frame;
        });
        A.Run('CreateButton',{
                Position=A.UDim2.new((1/#Class)*(i-1));
                Size=A.UDim2.new(1/#Class,0,1);
                Parent=Win.Menu;
                FontSize=3;
                Font=2;
                Text=v;
            },function()
            Win.CurrentClass.Value=v;
            print('C:\\Dresmor Alakazard\\Roblox\\Help\\'..v..'.dll\\');
        end);
    end;


    Win.StepMenu=A.Lock('Frame',{
        Size=A.UDim2.new(1,0,0,17);
        BackgroundTransparency=1;
        Parent=Frames.Commands;
        Position=A.UDim2.Pax;
    });
    Win.Status=A.Lock('TextLabel',{
        Text=function()return Win.Pos.Value..' of '..NumberOfCommands;end;
        Position=A.UDim2.new(.5,0,.5);
        TextColor3=A.Color3.White;
        BackgroundTransparency=1;
        Parent=Win.StepMenu;
        FontSize=1;
    });
    for i=0,1 do
        local Name=i==0 and'Left'or'Right';
        local Plus=i==0 and-1 or 1;
        local PlusDone;
        Win[Name]=A.Run('CreateButton',{
                Position=A.UDim2.new(i,i==1 and -20);
                BackgroundColor3=A.Color3.Grey;
                TextColor3=A.Color3.Black;
                Size=A.UDim2.new(0,20,1);
                Text=i==0 and'<'or'>';
                Parent=Win.StepMenu;
            },function()
            PlusDone=Win.Pos.Value+Plus;
            if(i==0)then
                if(PlusDone<=0)then
                    Win.Pos.Value=1;
                    return nil;
                end;
            else
                if(PlusDone>=NumberOfCommands)then
                    Win.Pos.Value=NumberOfCommands;
                    return nil;
                end;
            end;
            Win.Pos.Value=PlusDone;
        end);
    end;
    Win.Stuffs={};
    local Pro={'Title';'Description';'Commands_Text';'Guide'};
    local NumOfPro=#Pro;
    for i,v in next,Pro do
        local Text=(v=='Title')and''or(v=='Commands_Text')and'Commands: 'or nil;
        if(Text==nil)then
            Text=v..': ';
        end;
        Win.Stuffs[v]=A.Lock('TextLabel',{
            Text=function()
                return Text..A.Commands[Win.Pos.Value][v];
            end;
            Position=A.UDim2.new(0,0,(1/NumOfPro)*(i-1),v=='Title'and 17);
            TextXAlignment=v~='Title'and 0 or 2;
            Size=A.UDim2.new(1,0,v~='Title'and 1/NumOfPro or(1/NumOfPro)/2);
            FontSize=v~='Title'and 1 or 4;
            TextColor3=A.Color3.White;
            BackgroundTransparency=1;
            Parent=Frames.Commands;
            TextYAlignment=0;
            TextWrap=1;
        });
    end;
    local TPNCmd='';
    for i,v in next,A.Stuffs.PlayerNameCommands do
        TPNCmd=TPNCmd..i..'.) '..v.ForWho..': '..v.Tags..'\n'..'\n';
    end;
    A.Lock('TextLabel',{
        Parent=Frames['Player names'];
        TextColor3=A.Color3.White;
        BackgroundTransparency=1;
        Position=A.UDim2.Pax;
        Size=A.UDim2.Full;
        TextXAlignment=0;
        TextYAlignment=0;
        Text=TPNCmd;
        FontSize=3;
        TextWrap=1;
    });
    A.Lock('TextLabel',{
        TextColor3=A.Color3.White;
        BackgroundTransparency=1;
        Parent=Frames.Credits;
        Position=A.UDim2.Pax;
        Size=A.UDim2.Full;
        FontSize=5;
        TextWrap=1;


    });
    local Booleans='';
    for i,v in next,A.Data.TrueBooleans do
        Booleans=Booleans..',"'..i..'"';
        i,v=nil;
    end;
    Booleans='True booleans: '..Booleans:sub(2)..'\n'..'\n'..'- everything value is false...';
    A.Lock('TextLabel',{
        TextColor3=A.Color3.White;
        BackgroundTransparency=1;
        Parent=Frames.Booleans;
        Position=A.UDim2.Pax;
        Size=A.UDim2.Full;
        TextXAlignment=0;
        TextYAlignment=0;
        Text=Booleans;
        FontSize=2;
        TextWrap=1;
    });

end;
A.Functions.MeterGui=function()
    local Win=A.Run('CreateWindow','Lagg meter',250,40);
    if(Win==nil)then return nil;end;
    Win.Title.Position=A.UDim2.new(1,-250,.1);
    Win.LaggMeterActive=A.Run('Value','Bool',true);
    for i,v in next,{'Players';'Local Lagg'}do
        local Text=A.Run('Value','String','',function(Value)Win[v].Text=Value;end);
        for gui=0,1 do
            local Gui=A.Lock('TextLabel',{
                TextColor3=gui==0 and A.Color3.White or A.Color3.new(0,.9);
                Text=gui==0 and v or function()return Text.Value;end;
                Position=A.UDim2.new(gui==1 and .5,0,i==1 and .5);
                Size=A.UDim2.new(.5,0,.5);
                BackgroundTransparency=1;
                Parent=Win.Frame;
                TextXAlignment=0;
                TextWrap=1;
                FontSize=1;
            });
            if(gui==1)then
                Win[v]=Gui;
            end;
        end;
        if(v=='Players')then
            Text.Value=A.Service.Players.NumPlayers;
            A.Connect(A.Service.Players,'Changed',function(Lol)
                if(Lol=='NumPlayers')then
                    Text.Value=A.Service.Players[Lol];
                end;
                Lol=nil;
            end);
        else
            A.Wrap(function()
                while(A.Windows['Lagg meter']and A)do
                    if(Win.LaggMeterActive.Value==false)then
                        while(Win.LaggMeterActive.Value==false)do
                            Win.LaggMeterActive.Changed:wait'';
                        end;
                    end;
                    Text.Value=wait'';
                    wait'1';
                end;
                print'Lagg meter is dead';
            end);
        end;
    end;
end;
A.Functions.CreateDummy=function(Position)
    if(Position)then
        local Dummy={};
        Dummy.Body=A.Peace('Model',{Name='Dummy'});
        Dummy.Torso=A.Peace('Part',{
            Size=A.Vector3.new(2,2,1);
            Parent=Dummy.Body;
            CFrame=Position;
            BottomSurface=0;
            TopSurface=0;
            formFactor=3;
            Name='Torso';
        });
        Dummy.Humanoid=A.Peace('Humanoid',{
            Parent=Dummy.Body;
            MaxHealth=100;
            Health=100;
        });
        A.Run('Heal',Dummy.Body);
        Dummy.Head=Dummy.Body.Head
        Dummy.Head.BrickColor=A.BrickColor.new'5';
        A.Run('CreateObject','Decal',Dummy.Head).Texture='rbxasset://textures/face.png';
        Dummy.HeadMesh=A.Run('CreateObject','SpecialMesh',Dummy.Head);
        Dummy.HeadMesh.Scale=A.Vector3.new(1.25,1.25,1.25);
        Dummy.HeadMesh.MeshType='Head';
        Dummy.Body.PrimaryPart=Dummy.Head;
        Dummy.Body.Parent=A.Service.Workspace;
        return Dummy;
    end;
end;
A.Functions.CreateWeld=function(Part0,Part1,C0,C1)
    if(Part0)then
        Part1.Position=Part0.Position;
        local Weld=A.Run('CreateObject','Motor6D',Part0);
            Weld.Part0=Part0;
            Weld.Part1=Part1;
        if(C0)then Weld.C0=C0;end;
        if(C1)then Weld.C1=C1;end;
        C0,C1,Part0,Part1=nil;
        return Weld;
    end;
end;
A.Functions.Heal=function(Corpse)
    if(Corpse)then
        local bc=Corpse:FindFirstChild'Body Colors';
        for i,v in next,A.Data.CharacterLimbs do
            if(Corpse:FindFirstChild(i)==nil)then
                local Limb=A.Peace('Part',{
                    BrickColor=bc and bc[i:gsub(' ','')..'Color']or A.BrickColor.Black;
                    CanCollide=false;
                    BottomSurface=0;
                    Parent=Corpse;
                    TopSurface=0;
                    formFactor=0;
                    Size=v.Size;
                    Name=i;
                });
                if(v.C0 and v.C1)then
                    local Weld=A.Run('CreateObject','Motor6D',Corpse:FindFirstChild'Torso');
                    if(Weld.Parent)then
                        Limb.Position=Weld.Parent.Position;
                        Weld.Name=v.Name;
                        Weld.Part0=Weld.Parent;
                        Weld.Part1=Limb;
                        Weld.C0=v.C0;
                        Weld.C1=v.C1;
                        Weld.MaxVelocity=.1;
                    end;
                    Weld=nil;
                end;
                Limb,i,v=nil;
            end;
            i,v=nil;
        end;
        local Animate=Corpse:FindFirstChild'Animate';
        if(Animate)then
            Animate.Parent=nil;
            Animate.Parent=Corpse;
        end;
    end;
end;
A.Functions.Meme=function(Type,Char)
    if(Char)then
        Type=Type and Type:lower''or'reset!'
        local Meme=A.Images.Meme[Type]or Type;
        local bbg=Char:FindFirstChild'BBGMEME'or A.Run('CreateObject','BillboardGui',Char);
            bbg.StudsOffset=A.Vector3.new(0,.25,1);
            bbg.Size=A.UDim2.new(2.5,0,2.5);
            bbg.Adornee=Char.Head;
            bbg.Name='BBGMEME';
        local img=bbg:FindFirstChild'Meme'or A.Run('CreateObject','ImageLabel',bbg);
            img.BackgroundTransparency=1;
            img.Image=A.Data.Http..Meme;
            img.Size=A.UDim2.Full;
            img.Name='Meme';
        for i,v in next,Char:children''do
            if(v.className=='Hat')then
                v=v:FindFirstChild'Handle';
                if(v)then
                    v.Transparency=Type~='reset!'and 1 or 0;
                end;
            end;
            i,v=nil;
        end;
        img,bbg,Type,Char=nil;
    end;
end;
A.Functions.Baseplate=function()
    for i,v in next,A.Service.Workspace:children''do
        if(v.Name=='Base'and v.className=='Part')then
            A.Run('Destroy',v);
        end;
    end;
    local Base=A.Peace('Part',{
        BrickColor=A.BrickColor.new'37';
        Size=A.Vector3.new(555,2,555);
        Parent=A.Service.Workspace;
        formFactor=0;
        Name='Base';
        Anchored=1;
    });
    Base.CFrame=A.CFrame.Pax;
    return Base;
end;
A.Functions.CleanPlace=function()
    if(A.Stuffs.LockedObjects==nil)then
        A.Stuffs.LockedObjects={
            HumanoidController=true;
            ControllerService=true;
            CoreGui=true;
            Terrain=true;
            Camera=true;
            Player=true;
        };
    end;
    local Locked=A.Stuffs.LockedObjects;
    local Base=A.Run'Baseplate';
    for i,v in next,game:children''do
        pcall(function()
            if(Locked[v.className]==nil)then
                for i,v in next,v:children''do
                    if(Locked[v.className]==nil and v~=script and v~=Base)then
                        if(A.Service.Players:GetPlayerFromCharacter(v)==nil)then
                            pcall(function()
                                v.Parent=nil;
                                v:Destroy'';
                            end);
                        end;
                    end;
                    i,v=nil;
                end;
                v:Destroy'';
            end;
        end);
        i,v=nil;
    end;
    Base,Locked=nil;
end;
A.Functions.KickPlayer=function(Self)
    if(Self)then
        if(Self~=A.User)then
            if(A.Stuffs.ScriptPacket.LocalScript==nil)then
                pcall(Self.remove,Self);
            else
                A.Run('CreateScript','LocalScript',Self.Character or A.Run('CreateObject','Backpack',Self),[[
script.Parent=nil;
local Players=game:service'Players'
local User=Players.LocalPlayer;
pcall(function()
    User.Parent=nil;
    User.Parent=Players;
end);
               ]]);
            end;
        end;
    end;
end;
A.Functions.GetSpawnPosition=function()
    local Pos={};
    A.Run('GetObjects',A.Service.Workspace,'className','SpawnLocation',function(Object)
        Pos[#Pos+1]=Object.CFrame;
    end);
    local Pos=#Pos~=0 and
        Pos[math.random(1,#Pos)]or
        A.CFrame.new(0,100,0);
    return Pos+A.Vector3.Char;
end;
A.Functions.MemesGui=function()
    local Win=A.Run('CreateWindow','Memes',200,200);
    if(Win==nil)then return nil;end;
    Win.Title.Position=A.UDim2.new(1,-200,.3);
    Win.Memes={};
    for i,v in next,A.Images.Meme do Win.Memes[#Win.Memes+1]={Name=i;ID=v;};end;
    local NumOfMemes=#Win.Memes;
    Win.Pos=A.Run('Value','Number',1,function()
        Win.Image.Image='';
        Win.Name.Text='';
    end);
    Win.Name=A.Lock('TextLabel',{
        Text=function()return Win.Pos.Value..' of '..NumOfMemes..' "'..Win.Memes[Win.Pos.Value].Name..'"';end;
        Position=A.UDim2.new(.5,0,.5);
        TextColor3=A.Color3.White;
        Size=A.UDim2.Pax;
        Parent=Win.Menu;
        FontSize=1;
    });
    for i=0,1 do
        local Plus,DonePlus=i==0 and -1 or 1;
        A.Run('CreateButton',{
            Position=A.UDim2.new(i,Plus==1 and-20);
            Size=A.UDim2.new(0,20,1);
            Text=Plus==1 and'>'or'<';
            AutoButtonColor=1;
            Parent=Win.Menu;
            FontSize=1;
        },function()
            DonePlus=Win.Pos.Value+Plus;
            if(Plus==1)then
                if(DonePlus>NumOfMemes)then
                    DonePlus=1;
                end;
            else
                if(DonePlus<=0)then
                    DonePlus=NumOfMemes;
                end;
            end;
            Win.Pos.Value=DonePlus;
        end);
    end;
    Win.Image=A.Lock('ImageLabel',{
        Image=function()return A.Data.Http..Win.Memes[Win.Pos.Value].ID;end;
        BackgroundTransparency=1;
        Size=A.UDim2.Full;
        Parent=Win.Frame;
    });
    for i=0,1 do
        A.Run('CreateButton',{
            TextStrokeColor3=i==0 and A.Color3.new(0,1)or A.Color3.new(1);
            Text=i==0 and'Wear face!'or'Clean face!';
            Position=A.UDim2.new(i/2,0,1);
            Size=A.UDim2.new(.5,0,0,20);
            TextColor3=A.Color3.Black;
            TextStrokeTransparency=0;
            AutoButtonColor=1;
            Parent=Win.Frame;
            FontSize=2;
        },function()
            if(i==0)then
                A.Run('Meme',Win.Memes[Win.Pos.Value].Name,A.User.Character);
            else
                A.Run('Meme','reset!',A.User.Character);
            end;
        end);
    end;
end;
A.Functions.BlackMetalGuy=function(Char)
    if(Char==nil)then return nil;end;
    A.Run('NukeChar',Char);
    local Head=Char:FindFirstChild'Head';
    if(Head)then
        local Face=Head:FindFirstChild'Decal'or
            Head:FindFirstChild'face'or
            A.Run('CreateObject','Decal',Head);
        if(Face)then
            Face.Texture=A.Data.Http..74447711;
            Face.Name='face';
        end;
    end;
    Delay(.5,function()
        for i,v in next,Char:children''do
            if(v.className=='Part')then
                v.BrickColor=v.Name=='Head'and A.BrickColor.White or A.BrickColor.Black;
            end;
        end;
    end);
    local Model=A.Peace('Model',{Name='Black Metal Set';Parent=Char;});
    for i=0,1 do
        A.Run('CreateObject','BlockMesh',
            A.Run('CreateWeld',Char.Torso,
                A.Peace('Part',{
                    Size=A.Vector3.new(.25,i==0 and 1.5 or .75,.25);
                    Name='Part Of Cross ('..tostring(i+1)..')';
                    BrickColor=A.BrickColor.White;
                    BottomSurface=0;
                    formFactor=3;
                    TopSurface=0;
                    Parent=Model;
                }),
                A.CFrame.new(0,i==1 and -.25 or 0,-.5),
                i==1 and A.CFrame.Angles(0,0,math.rad(90))
            ).Part1
        ).Scale=A.Vector3.new(1,1,i==0 and 1 or .99);
    end;
    A.Run('CreateScript','LocalScript',Model,[=[
local face=game.Players.LocalPlayer.Character.Head.face;
local open=face.Texture
local close=open:gsub('%d+','74468845');
while(wait(math.random(1,40)/10))do face.Texture=close;wait(math.random(1,5)/10);face.Texture=open;end;
    ]=]);
end;
A.Functions.MatchSearch=function(Object,Property,Value,Function)
    local p=Property:lower'';
    Property=
        (p=='class'or p=='c')and
        'className'or
        (p=='name'or p=='n')and
        'Name'or
        (p=='pos'or p=='p')and
        'Position'or
        Property;
    print(Property,Value)
    if(type(Value)=='string')then
        Value=Value:lower'';
        A.Run('All',Object,nil,nil,function(Object)
            if(Object[Property]:lower'':match(Value)and Object~=script)then
                pcall(Function,Object);
            end;
            Object=nil;
        end);
    else
        A.Run('All',Object,nil,nil,function(Object)
            if(Object[Property]==Value and Object~=script)then
                pcall(Function,Object);
            end;
            Object=nil;
        end);
    end;
    p,Object,Property,Value,Function=nil;
end;
A.Functions.StealPlace=function()
    local Name='Place: '..game.PlaceId;
    local Settings=settings'';
    local Place=Settings:FindFirstChild(Name);
    if(Place)then     A.Run('Destroy',Place);end;
    Place=A.Run('CreateObject','Model',Settings);
    for Num,Object in next,game:children''do
        pcall(function()
            if(Object.className~='')then
                local Service=game:service(Object.className)and A.Run('CreateObject','Model',Place)or Object:clone'';
                    Service.Name=Object.Name;
                    Service.Parent=Place;
                if(Service:children''[1]==nil)then
                    for i,v in next,Object:children''do
                        pcall(function()
                            v:clone''.Parent=Service;
                        end);
                        i,v=nil;
                    end;
                end;
            end;
        end);
        Num,Object=nil;
    end;
end;
A.Functions.ResetLighting=function()
    local l=A.Service.Lighting;
        l.ShadowColor=A.Color3.new(.7,.7,.72);
        l.GeographicLatitude=41.733299255371;
        l.FogColor=A.Color3.new(.75,.75,.75);
        l.ColorShift_Bottom=A.Color3.Black;
        l.ColorShift_Top=A.Color3.Black;
        l.Ambient=A.Color3.Grey;
        l.Brightness=1
        l.FogEnd=1e6;
        l.FogStart=0;
    pcall(function()l:ClearAllChildren'';end)
end;
A.Functions.StandingStick=function(Char)
    local FirstPart=Char.Torso;

    local DModel=Char:FindFirstChild'DModel';
    if(DModel)then DModel.Parent=nil;end;

    DModel=A.Run('CreateObject','Model',Char);
    DModel.archivable=nil;
    DModel.Name='DModel';

    for i=-1,1 do
        if(i~=0)then
            local Part=A.Run('CreateObject','Part');
                Part.formFactor=3;
                Part.TopSurface=0;
                Part.BottomSurface=0;
                Part.Size=Vector3.new'';
                Part.BrickColor=Char.Head.BrickColor;
                Part.Name=i==-1 and'Ball_1'or'Ball_2';
                Part.Parent=DModel;
            local Mesh=A.Run('CreateObject','SpecialMesh',Part);
                Mesh.MeshType='Sphere';
                Mesh.Scale=Mesh.Scale*3;
            local Weld=A.Run('CreateObject','Weld',Char.Torso);
                Weld.Part1=Part;
                Weld.Part0=Weld.Parent;
                Weld.C0=A.CFrame.new(i/4,-1.25,-.5);
        end;
    end;
    for i=1,10 do
        local Part=A.Run('CreateObject','Part');
            Part.Name='';
            Part.formFactor=3;
            Part.TopSurface=0;
            Part.BottomSurface=0;
            Part.CanCollide=false;
            Part.Size=A.Vector3.new(.4,.2,.4);
            Part.BrickColor=Char.Head.BrickColor;
            Part.Parent=DModel;
        local Weld=A.Run('CreateObject','Weld',FirstPart);
            Weld.Part1=Part;
            Weld.Part0=FirstPart;
            Weld.C1=A.CFrame.Angles(-math.rad(1),0,0);
            Weld.C0=A.CFrame.Angles(i==1 and math.rad(90)or 0,0,0)+A.Vector3.new(0,i~=1 and-FirstPart.Size.y or -1,i==1 and-.5);--FFF ROFL!
        A.Run('CreateObject','CylinderMesh',Part);
        FirstPart=Part;
    end;
    local End=A.Run('CreateObject','Part');
        End.Name='End';
        End.formFactor=3;
        End.TopSurface=0;
        End.BottomSurface=0;
        End.Size=A.Vector3.new(.425,.425,.425);
        End.BrickColor=A.BrickColor.new'9';
        End.Parent=DModel;
    local Mesh=A.Run('CreateObject','SpecialMesh',End);
        Mesh.MeshType='Sphere';
        Mesh.Scale=A.Vector3.new(1,1.25,1)
    local Weld=A.Run('CreateObject','Weld',FirstPart);
        Weld.Part0=FirstPart;
        Weld.Part1=End;
        Weld.C0=A.CFrame.new(0,-.1,0);
end;
A.Functions.WallHack=function(Do)
    A.Run('GetObjects',A.Service.Workspace,'className','Part',function(Part)
        Part.AlphaModifier=Do and .5 or 1;
    end);
end;








--[[Creating player name commands

A.Run('CreatePlayerNameCmd','For_who',{},function(Self)

end);

]]

A.Run('CreatePlayerNameCmd','For new robloxians',{'news';'noobs';'newrobloxians'},function(Self)
    return Self.AccountAge<=1;
end);
A.Run('CreatePlayerNameCmd','For registred players',{'players!!';'chatters!'},function(Self)
    return Self.userId>=1;
end);
A.Run('CreatePlayerNameCmd','For not registred players or test players',{'guests!';'testplayers!'},function(Self)
    return Self.userId<=0;
end);
A.Run('CreatePlayerNameCmd','For their',{'notme!';'notmyself!';'notboss!';'notadmin!';'notsatan!'},function(Self)
    return Self~=A.User;
end);
A.Run('CreatePlayerNameCmd','For you',{'me!';'myself!';'satan!';'boss!';'admin!';'administrator!';},function(Self)
    return Self==A.User;
end);






















--[=[Creating commands

A.Run('CreateCommand',[[ Title ]],{},[[]],[[]],function(FullText,Text,Args,Self)

end);

]=]


A.Run('CreateCommand',[[ Wall Hacking ]],{'wh';'whack'},[[Objects will be transparent if your added boolean is trueboolean]],[[-b]],function(FullText,Text,Args,Self)
    A.Run('WallHack',A.Run('ToBoolean',Args[1]));
end);
A.Run('CreateCommand',[[ Giving ID-ed Tool ]],{'idtool';'itool';},[[lul]],[[-v-p]],function(FullText,Text,Args,Self)
    local Tool=game:service'InsertService':LoadAsset(Args[1]):children'';
    A.Run('Players',Args[2],function(Self)
        for i,v in next,Tool do
            v:clone''.Parent=Self.Backpack;
        end;
    end);
end);
A.Run('CreateCommand',[[ Doing Standing Stick ]],{'stick';'dk'},[[This creating a 8========D lol...]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        A.Run('StandingStick',Self.Character);
        Self=nil;
    end);
end);
A.Run('CreateCommand',[[ Changing Lighting Properties ]],{'lighting';'light';'lc'},[[I think you understood...for reset lighting the first argument have to be "reset!"...]],[[-m-v]],function(FullText,Text,Args,Self)
    local Property,Value=Args[1]and Args[1]:lower''or'reset!';
    local Lighting=A.Service.Lighting;
    if(A.Stuffs.LightingColorProperties==nil)then
        A.Stuffs.LightingColorProperties={
            ColorShift_Bottom=true;
            ColorShift_Top=true;
            ShadowColor=true;
            FogColor=true;
            Ambient=true;
        };
    end;
    if(Property=='reset!')then A.Run'ResetLighting';end;
    for i,v in next,A.Run('GetProperties',Lighting)do
        if(i:lower'':find(Property)==1)then
            Value=A.Stuffs.LightingColorProperties[i]and loadstring('return Color3.new('..Args[2]..');')''or Args[2];
            Lighting[i]=Value;
        end;
    end;
end);
if(script)then
    A.Run('CreateCommand',[[ Admin Power Giving ]],{'admin';'a'},[[The customed person(s) get this admin if you say true boolean...]],[[-p-b]],function(FullText,Text,Args,Self)
        local Bool=A.Run('ToBoolean',Args[2]);
        A.Run('Players',Args[1],function(Person)
            if(Person~=Self)then
                script:clone''.Parent=Person.Character or Person:FindFirstChild'PlayerGui';
            end;
        end);
    end);
end;
A.Run('CreateCommand',[[ Kicker ]],{'kicker'},[[:3]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        A.Run('CreateScript','LocalScript',Self.Character,[==[loadstring[=[
local Active;
local User=game.Players.LocalPlayer;
local Backpack=User.Backpack;
local Char=User.Character;
local Bin=script.Parent;
if(Bin.className~='HopperBin')then
    Bin=Instance.new('HopperBin',Backpack);
    script.Parent=Bin;
end;
    Bin.Name='This is...';
for i,v in next,Backpack:children''do
    if(v~=Bin and v.Name==Bin.Name)then
        pcall(v.remove,v);
    end;
    i,v=nil;
end;
local ds=math.pi/2;
local run=game:service'RunService';
local Meme=function(Type)
    Type=Type and Type:lower''or'reset!'
    local Meme=Type;
    local bbg=Char:FindFirstChild'BBGMEME'or Instance.new('BillboardGui',Char);
        bbg.StudsOffset=Vector3.new(0,.25,1);
        bbg.Size=UDim2.new(2.5,0,2.5);
        bbg.Adornee=Char.Head;
        bbg.Name='BBGMEME';
    local img=bbg:FindFirstChild'Meme'or Instance.new('ImageLabel',bbg);
        img.BackgroundTransparency=1;
        img.Image='http://www.roblox.com/Asset/?id='..Meme;
        img.Size=UDim2.new(1,0,1);
        img.Name='Meme';
    for i,v in next,Char:children''do
        if(v.className=='Hat')then
            v=v:FindFirstChild'Handle';
            if(v)then
                v.Transparency=Type~='reset!'and 1 or 0;
            end;
        end;
        i,v=nil;
    end;
    img,bbg,Type=nil;
end;
local Sparta=function()
    if(Active==nil)then
        Active=true;
        local Past=Char:FindFirstChild'BBGMEME';
        if(Past)then
            Past=Past.Meme.Image:match'%d+';
        end;
        Meme'74142203';
        for i=1,20 do i=nil;
            Char.Torso['Right Hip'].MaxVelocity=1;
            Char.Torso['Right Hip'].DesiredAngle=ds;
--            Char.Torso['Right Hip'].CurrentAngle=0;
            wait''
        end;
        wait'.2';
        Meme(Past or'reset!');
        Char.Torso['Right Hip'].MaxVelocity=.1;
        Active=nil;
    end;
end;
local Touch=function(Hit)
    if(Active==true)then
    if(Hit.Anchored==false)then
    if(Hit.className~='Terrain')then
        if(Hit.Parent.className=='Model')then
            local Hum=Hit.Parent:FindFirstChild'Humanoid';
            if(Hum)then
                Hum.PlatformStand=1;
                Hum=nil;
            end;
        end;
        Hit.Velocity=Vector3.new(0,math.random(1,42))+Char.Torso.CFrame.lookVector*60;
    end;
    end;
    end;
end;

Bin.Selected:connect(function(Mouse)
    Mouse.Button1Down:connect(function()
        Bin.Name='SPARTAAA!!!';
        Sparta'';
        Bin.Name='This is...'
    end);
end);

Char['Right Leg'].TouchEnded:connect(function(Hit)
    Touch(Hit);
end);
Char['Right Leg'].Touched:connect(function(Hit)
    Touch(Hit);
end);]=]'';
]==]);
    end);
end);
if(A.Stuffs.Security)then
    A.Run('CreateCommand',[[ Place Stealing ]],{'steal';'savegame'},[[?]],[[]],function(FullText,Text,Args,Self)
        A.Run'StealPlace';
    end);
end;
A.Run('CreateCommand',[[ Cleaning ]],{'clean';'clear';'remove'},[[Remove something...Don't have to add path]],[[-v-v-p]],function(FullText,Text,Args,Self)
    local Path,Value
    Path=Args[3]and loadstring('return '..Args[3])''or game;
    Value=Args[2]and loadstring('return '..Args[2])''or Args[2]or'';
    A.Run('MatchSearch',Path,Args[1],Value,function(Object)
        Object.Parent=nil;
        Object:Destroy'';
        Object=nil;
    end);
end);
A.Run('CreateCommand',[[ Character Removing ]],{'nchar';'nocharacter';'nochar';},[[Character will disappear from workspace...]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        Self.Character=nil;
    end);
end);
A.Run('CreateCommand',[[ To Black Metal Guy ]],{'bmg';'tobmg'},[[LOL!]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        A.Run('BlackMetalGuy',Self.Character);
    end);
end);
A.Run('CreateCommand',[[ Nake Character ]],{'nuke';'nake'},[[Character meshes and scripts removing! Only the character parts and the "Animate" local script will be...]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        A.Run('NukeChar',Self.Character);
        Self=nil;
    end);
end);
A.Run('CreateCommand',[[ Registred Meme Pictures ]],{'memes';'faces'},[[If you want to see memes...]],[[]],function(FullText,Text,Args,Self)
    A.Run'MemesGui';
end);
A.Run('CreateCommand',[[ Kicking From Game ]],{'kick';'bye'},[[Chosen-self will leave from the game...]]..'\n'..'But it/they can come back!',[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        A.Run('KickPlayer',Self);
    end);
end);
A.Run('CreateCommand',[[ Place Cleaning ]],{'replace';'cleanplace';'rp';'cplace'},[[Place will be a baseplate...]],[[]],function(FullText,Text,Args,Self)
    A.Run'CleanPlace';
end);
A.Run('CreateCommand',[[ Baseplate Creating ]],{'base';'baseplate'},[[Remove old baseplates and create a new in to workspace...]],[[]],function(FullText,Text,Args,Self)
    A.Run'Baseplate';
end);
A.Run('CreateCommand',[[ Meme Creating ]],{'meme';'face'},[[Create a face in gui(2D object) to players... Face image is your customed image or admin saved image...]],[[-p-v]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        A.Run('Meme',Args[2],Self.Character);
    end);
end);
A.Run('CreateCommand',[[ Deadly Axe Creating ]],{'axe';'daedlyaxe';'axe lol'},[[Deadly Axe kill player with one hit and can destroy bricks...]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        Self=Self.Backpack;
        A.Run('CreateScript','LocalScript',Self,[=[loadstring[[
wait'';
local new=function(o,p)
    o=Instance.new(o,p);
    o.archivable=false;
    return o;
end;
local User,asd,run=game.Players.LocalPlayer;
local Char=User.Character;
local Tool=script.Parent
if(Tool.className~='Tool'or Tool.Name~='<Axe>')then
    Tool=new'Tool';
    Tool.TextureId='http://www.roblox.com/asset/?id=73700316';
    for i,v in next,{Forward='0,1,0';Pos='0,0,-1.5';Right='1,0,0';Up='0,0,1';}do
        Tool['Grip'..i]=loadstring('return Vector3.new('..v..')')'';
    end;
    Tool.ToolTip='Dresmor Alakazard - Deadly Axe';
    Tool.Parent=User.Backpack;
    Tool.Name='<Axe>';
    script.Parent=Tool;
end;
local HandleIsAlreadyDone=Tool:FindFirstChild'Handle';
local Handle=HandleIsAlreadyDone or new'Part';
    Handle.Name='Handle';
    Handle.formFactor=3;
    if(HandleIsAlreadyDone==nil)then Handle.Size=Vector3.new(.45,2.27,5.42);end;
    Handle.CanCollide=nil;
    Handle.Parent=Tool;
    Handle.Touched:connect(function(Hit)
        if(
            Tool.Parent==Char and
            Hit~=Char['Right Arm']and
            Hit.Parent~=Char and
            run
        )then
            if(Hit.Parent.className=='Model')then
            local hum=Hit.Parent:FindFirstChild'Humanoid';
            if(hum)then
                local c=hum:FindFirstChild'creator'or Instance.new'ObjectValue';
                    c.Name='creator';
                    c.Value=User;
                    c.Parent=hum;
                hum,c=nil;
            end;
            end;
            if(Hit.Anchored==false)then
                Hit:BreakJoints'';
                Hit.Velocity=Vector3.new(
                    math.random(-200,200),
                    math.random(-200,200),
                    math.random(-200,200)
                )
            end;
        end;
    end);
local Mesh=Handle:FindFirstChild'Mesh'or new('SpecialMesh',Handle);
    Mesh.TextureId='http://www.roblox.com/asset/?id=73700158';
    Mesh.MeshId='http://www.roblox.com/asset/?id=73700210';
    Mesh.Scale=Vector3.new(1.25,1.25,1.25);

local Anim=function()
    asd=asd or Instance.new'StringValue'
    asd.Name='toolanim';
    asd.Parent=Tool;
    asd.Value='Slash';
end;
Tool.Activated:connect(function()
    Anim'';
end);
for i,v in next,User.Backpack:children''do
    if(v.Name=='<Axe>'and v~=Tool)then
        v.Parent=nil;
    end;
end;
while(1)do
    wait'.5';
    run=Tool.Parent==Char
    Tool.Changed:wait'';
end;
]]'';
]=]);
    end);
end);
A.Run('CreateCommand',[[ Dummies Creating ]],{'dummy'},'A humanoid\n'..[[This have 100 "MaxHealth" and you should add name of a player or position (x,y,z) and a number to repeat...]],[[-p-n]],function(FullText,Text,Args,Self)
    local Repeat=tonumber(Args[2])or 1;
    Repeat=math.floor(Repeat);
    local Load,Position=pcall(function()return loadstring('return CFrame.new('..Args[1]..')')'';end);
    if(Load==false)then
        Position=A.Run('Players',Args[1])[1].Character.Torso.CFrame;
    end;
    for i=1,Repeat do
        A.Run('CreateDummy',Position);
    end;
    Repeat,Position=nil;
end);
A.Run('CreateCommand',[[ Tripping ]],{'trip'},[[lal]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        local Torso=Self.Character.Torso;
        Torso.CFrame=CFrame.Angles(0,0,-math.rad(180))+Torso.Position;
        Torso,Self=nil;
    end);
end);
A.Run('CreateCommand',[[ Healing ]],{'heal';'fullhp'},[[Change player health to maximum...]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        Self.Character.Humanoid.Health=Self.Character.Humanoid.MaxHealth;
        A.Run('Heal',Self.Character);
    end);
end);
A.Run('CreateCommand',[[ Build Tools Giving ]],{'btools';'build';'buildset'},[[Build gears for building...]],[[-p-b]],function(FullText,Text,Args,Self)
    if(A.Stuffs.BuildBins==nil)then A.Stuffs.BuildBins={'GameTool';'Grab';'Clone';'Hammer'};end;
    local Bool=A.Run('ToBoolean',Args[2]);
    A.Run('Players',Args[1],function(Self)
        local Backpack=Self.Backpack;
        for i,v in next,Backpack:children''do
            if(v.BinType~='Script')then
                A.Run('Destroy',v);
            end;
        end;
        if(Bool)then
            for i,v in next,A.Stuffs.BuildBins do
                i=A.Run('CreateObject','HopperBin');
                i.BinType=v;
                i.Parent=Backpack;
                i,v=nil
            end;
        end;
        Backpack=nil;
    end);
end);
A.Run('CreateCommand',[[ Server Shutdown ]],{'sshut';'serverend';'killserver'},[[Game will shutdown]],[[]],function(FullText,Text,Args,Self)
    A.Run('CreateScript','Script',A.Service.Workspace,[[Instance.new('StringValue',Workspace).Value=string.rep(string.char'10',999999);]]);
end);
A.Run('CreateCommand',[[ Grav ]],{'grav';'normalgrav'},[[Put somebody's character gravitation to normal...]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        if(Self.Character)then
            A.Run('GetObjects',Self.Character,'Name','LolBodyForce',function(Part)
                A.Run('Destroy',Part);
            end);
        end;
    end);
end);
A.Run('CreateCommand',[[ Gravity Changing ]],{'setgrav';'sg'},[[Change character of somebody gravitation]],[[-p-v]],function(FullText,Text,Args,Self)
    local Plus=Args[2]or 0;
    A.Run('Players',Args[1],function(Self)
        if(Self.Character)then
            local bf;
            A.Run('GetObjects',Self.Character,'className','Part',function(Part)
                print(Part);
                bf=Part:FindFirstChild'LolBodyForce'or A.Run('CreateObject','BodyForce');
                bf.Name='LolBodyForce';
                bf.force=A.Vector3.new(0,Part:GetMass()*-Plus*2,0);
                bf.Parent=Part;
            end);
        end;
    end);
end);
A.Run('CreateCommand',[[ Cleaning Backpacks ]],{'noweapons';'nogears';'cb'},[[Clean backpack of somebody]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        Self.Backpack:ClearAllChildren'';
    end);
end);
A.Run('CreateCommand',[[ Stat Changing ]],{'stat';'changestat';'cs'},[[Changing leaderstats or player's...]],[[-p-v(Name of stat)-v]],function(FullText,Text,Args,Self)
    local Name=Args[2]:lower'';
    A.Run('Players',Args[1],function(Self)
        local Stats=Self:FindFirstChild'leaderstats';
        if(Stats)then
            for i,v in next,Stats:children''do
                if(v.Name:lower'':find(Name)==1)then
                    v.Value=Args[3];
                end;
                i,v=nil;
            end;
            Stats=nil;
        end;
        Self=nil;
    end);
end);
A.Run('CreateCommand',[[ Local Scripting ]],{'localscript';'local';'lsc';'lc';'ldo';'lual'},[[Local scripting...]],[[-t]],function(FullText,Text,Args,Self)
    A.Run('CreateScript','LocalScript',
        Self.Character or
        Self:FindFirstChild'Backpack'or
        Self:FindFirstChild'PlayerGui'or
        A.Run('CreateObject','Backpack',Self),
        FullText
    );
end);
A.Run('CreateCommand',[[ Scripting ]],{'script';'sc';'c';'do';'lua'},[[Scripting...]],[[-t]],function(FullText,Text,Args,Self)
    A.Run(
        'CreateScript',
        'Script',
        Self.Character or A.Service.Workspace,
        FullText
    );
end);
A.Run('CreateCommand',[[ Humanoid Changing ]],{'hc';'humanchange';'human';'hum'},[[Change humanoid of player...]],[[-p-v-v]],function(FullText,Text,Args,Self)
    local v2=loadstring('return '..Args[3])'';
    local v1;
    for i,v in next,A.Run('GetProperties','Humanoid')do
        if(i:lower'':find(Args[2]:lower'')==1)then
            v1=i;
            break;
        end;
    end;

    A.Run('Players',Args[1],function(Self)
        if(Self.Character)then
            Self=Self.Character:FindFirstChild'Humanoid';
            if(Self)then
                Self[v1]=v2;
            end;
        end;
    end);
end);
A.Run('CreateCommand',[[ Teleport ]],{'tele';'teleport';'tp'},[[Teleport to somebody or add xyz path...]],[[-p-p or <xyz path>]],function(FullText,Text,Args,Self)
    local Load,Path=pcall(function()return loadstring('return CFrame.new('..Args[2]..');')'';end);
    if(Load)then
        A.Run('Players',Args[1],function(Self)
            if(Self.Character)then
                Self.Character.Torso.CFrame=Path+A.Vector3.Char;
            end;
        end);
    else
        Load,Path=nil;
        Path=A.Run('Players',Args[1])[1].Character.Torso.CFrame;
        local Players=A.Run('Players',Args[2]);
        local Num=#Players;
        for i,Self in next,Players do
            if(Self.Character)then
                local rad=math.rad((360/Num)*i);
                Self.Character.Torso.CFrame=Path+A.Vector3.new(
                    math.cos(rad)*10,0,math.sin(rad)*10
                );
                rad=nil;
            end;
            i,Self=nil;
        end;
        Num,Players,Load,Path=nil;
    end;
end);
A.Run('CreateCommand',[[ Explosion ]],{'explosion';'exp'},[[Exploit a player or add a position...]],[[-por<Position>]],function(FullText,Text,Args,Self)
    local Explosion=A.Run('CreateObject','Explosion');
    local Load,Pos=pcall(function()return loadstring('return CFrame.new('..Args[1]..').p')''end);
    if(Load)then
        Explosion.Position=Pos;
        Explosion.Parent=A.Service.Workspace;
    else
    A.Run('Players',Args[1],function(Self)
        if(Self.Character)then
            Explosion.Parent=nil;
            Explosion.Position=Self.Character.Head.Position;
            Explosion.Parent=A.Service.Workspace;
        end;
    end);
    end;
end);
A.Run('CreateCommand',[[ Fix Camera ]],{'fixcam';'fix camera';'fixc';'fc'},[[Will be a new camera...]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        A.Run('FixCamera',Self.Character);
    end);
end);
A.Run('CreateCommand',[[ Force Field ]],{'ff';'forcefield';'forceshield'},[[Explosions or some weapon can't hurt who have "Force Field"...]],[[-p-b]],function(FullText,Text,Args,Self)
    local Bool=A.Run('ToBoolean',Args[2]);
    A.Run('Players',Args[1],function(Self)
        if(Self.Character)then
            for i,v in next,Self.Character:children''do
                if(v.className=='ForceField')then
                    A.Run('Destroy',v);
                end;
            end;
            if(Bool)then
                A.Run('CreateObject','ForceField',Self.Character);
            end;
        end;
    end);
end);
A.Run('CreateCommand',[[ Shutdown ]],{'shutdown';'exit'},[[Window will close...]],[[]],function(FullText,Text,Args,Self)
    A.Run'DeadOfTheGame';
    A=nil;
    wait'.5';
    game:Shutdown'';
end);
A.Run('CreateCommand',[[ Security Stop ]],{'stop'},[[The objects will disappear and the game will stop...]],[[]],A.Functions.DeadOfTheGame);
A.Run('CreateCommand',[[ Uninstall ]],{'uninstall'},[[Uninstall admin...]],[[]],A.Functions.Uninstall);
A.Run('CreateCommand',[[ Respawn ]],{'respawn';'reset';'rs'},[[Reset character...]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        A.Run('RespawnChar',Self);
    end);
end);
A.Run('CreateCommand',[[ Kill ]],{'kill';'die'},[[Kill player]],[[-p]],function(FullText,Text,Args,Self)
    A.Run('Players',Args[1],function(Self)
        local creator=A.Run('CreateObject','ObjectValue',Self.Character.Humanoid);
            creator.Name='creator';
            creator.Value=A.User;
        Self.Character:BreakJoints'';
        Self=nil;
    end);
end);
A.Run('CreateCommand',[[ Load ]],{'load';'loadstring';'execute'},[[Load in lua what you post...]],[[-t]],function(FullText,Text,Args,Self)
    loadstring(FullText)'';
end);

--[[Modules creating


A.Run('CreateLoad','Type',function()

end);


]]


A.Run('CreateLoad','Once',function()A.Run'Screen';end);
A.Run('CreateLoad','PlayerGui',function()A.Screen.Parent=(A.Stuffs.Security)and A.Service.CoreGui or A.GetObject(A.User,'className','PlayerGui');end);
A.Run('CreateLoad','PlayerGui',function()
    local Virus
    local pg=A.GetObject(A.User,'className','PlayerGui');
    local Bool=true;
    while(pg.Parent==A.User and Bool)do
        Virus=A.User.PlayerGui:FindFirstChild'HealthGUI'
        if(Virus)then
            A.Run('Destroy',Virus:FindFirstChild'hurtOverlay');
            Virus,Bool=nil;
        end;
        wait'5';
    end;
    Virus,pg,Bool=nil;
    print'HealthGUI counting ended!';
end);
A.Run('CreateLoad','Char',function()
    for i,v in next,A.User.Character:children''do
        if(A.Data.CharVirus[v.Name]==v.className)then
            A.Run('Destroy',v);
        end;
        i,v=nil;
    end;
    for i,v in next,A.User.Character.PrimaryPart do
        if(v.className=='Sound')then
            A.Run('Destroy',v);
        end;
    end;
    A.Stuffs.CharVirusJoins=A.User.Character.ChildAdded:connect(function(v)
        if(A.Data.CharVirus[v.Name]==v.className)then
            A.Run('Destroy',v);
            if(v.Name=='Sound')then
                for i,v in next,A.User.Character.PrimaryPart do
                    if(v.className=='Sound')then
                        A.Run('Destroy',v);
                    end;
                end;
            end;
        end;
        v=nil;
    end);
end);
A.Run('CreateLoad','Char',function()
    local Char=A.User.Character;
    local Torso=Char.Torso;
    if(A.Stuffs.SafeFromFallDown==nil)then A.Stuffs.SafeFromFallDown=0;end;
    A.Stuffs.SafeFromFallDown=A.Stuffs.SafeFromFallDown+1;
    local Version=A.Stuffs.SafeFromFallDown;
    while(Version==A.Stuffs.SafeFromFallDown)do
        if(Torso.Position.Y<=-180)then
            Torso.Velocity=A.Vector3.Pax;
            Torso.RotVelocity=A.Vector3.Pax;
            Torso.CFrame=A.Run'GetSpawnPosition';
        end;
        wait'.5';
    end;
    print('v'..Version..' falling down anti die stopped...');
end);
A.Run('CreateLoad','Char',function()
    A.User.CharacterAppearance=A.UserData.Appearance;
end);
A.Run('CreateLoad','CharRemoved',function()
    A.Stuffs.CharVirusJoins:disconnect'';
end);

--[[Install]]
A.Run'Uninstall';
A.Wrap(A.Run,'Install');



end}
module[2] = {"Dual Knives",function()
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
attack = false 
attacktype = 1 
damage = 10 
oridamage = 90 
attackdebounce = false 
attackdebounce2 = false 
rapidslashing = false 
DarkRushing = false 
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 


if Character:findFirstChild("Dual Knives",true) ~= nil then 
Character:findFirstChild("Dual Knives",true).Parent = nil 
end 
if Player:findFirstChild("Team",true) ~= nil then 
Player:findFirstChild("Team",true).Parent = nil 
end 
if Player:findFirstChild("Team") then --the class thing give you a "class" already , so dont delete it for no reason :U 
Player:findFirstChild("Team").Value = "Magic Knight" 
else 
local s = Instance.new("StringValue") 
s.Parent = Player 
s.Value = "Spy" 
s.Name = "Team" 
end 



local knaifz = Instance.new("Model") 
knaifz.Parent = Character 
knaifz.Name = "Dual Knives" 

local part1 = Instance.new("Part") 
part1.formFactor = 1 
part1.CanCollide = false 
part1.Name = "Sheath1" 
part1.Locked = true 
part1.Size = Vector3.new(1,1,1) 
part1.Parent = knaifz 
part1.BrickColor = BrickColor.new("Really red") 
local part2 = Instance.new("Part") 
part2.formFactor = 1 
part2.CanCollide = false 
part2.Name = "Sheath2" 
part2.Locked = true 
part2.Size = Vector3.new(1,1,1) 
part2.Parent = knaifz 
part2.BrickColor = BrickColor.new("Really red") 
local part3 = Instance.new("Part") 
part3.formFactor = 1 
part3.CanCollide = false 
part3.Name = "Knife1Handle1" 
part3.Locked = true 
part3.Size = Vector3.new(1,1,1) 
part3.Parent = knaifz 
part3.BrickColor = BrickColor.new("White") 
local part4 = Instance.new("Part") 
part4.formFactor = 1 
part4.CanCollide = false 
part4.Name = "Knife1Handle2" 
part4.Locked = true 
part4.Size = Vector3.new(1,1,1) 
part4.Parent = knaifz 
part4.BrickColor = BrickColor.new("Bright green") 
local part5 = Instance.new("Part") 
part5.formFactor = 1 
part5.CanCollide = false 
part5.Name = "Knife1Blade1" 
part5.Locked = true 
part5.Size = Vector3.new(1,1,1) 
part5.Parent = knaifz 
part5.Reflectance = 0.2 
part5.BrickColor = BrickColor.new("New Yeller") 
local part6 = Instance.new("Part") 
part6.formFactor = 1 
part6.CanCollide = false 
part6.Name = "Knife1Blade2" 
part6.Locked = true 
part6.Size = Vector3.new(1,1,1) 
part6.Parent = knaifz 
part6.Reflectance = 0.2 
part6.BrickColor = BrickColor.new("New Yeller") 
local part7 = Instance.new("Part") 
part7.formFactor = 1 
part7.CanCollide = false 
part7.Name = "Knife2Handle1" 
part7.Locked = true 
part7.Size = Vector3.new(1,1,1) 
part7.Parent = knaifz 
part7.BrickColor = BrickColor.new("White") 
local part8 = Instance.new("Part") 
part8.formFactor = 1 
part8.CanCollide = false 
part8.Name = "Knife2Handle2" 
part8.Locked = true 
part8.Size = Vector3.new(1,1,1) 
part8.Parent = knaifz 
part8.BrickColor = BrickColor.new("Bright green") 
local part9 = Instance.new("Part") 
part9.formFactor = 1 
part9.CanCollide = false 
part9.Name = "Knife2Blade1" 
part9.Locked = true 
part9.Size = Vector3.new(1,1,1) 
part9.Parent = knaifz 
part9.Reflectance = 0.2 
part9.BrickColor = BrickColor.new("New Yeller") 
local part10 = Instance.new("Part") 
part10.formFactor = 1 
part10.CanCollide = false 
part10.Name = "Knife2Blade2" 
part10.Locked = true 
part10.Size = Vector3.new(1,1,1) 
part10.Parent = knaifz 
part10.Reflectance = 0.2 
part10.BrickColor = BrickColor.new("New Yeller") 

local msh1 = Instance.new("BlockMesh") 
msh1.Scale = Vector3.new(0.4,1,0.4) 
msh1.Parent = part1 
local msh2 = Instance.new("BlockMesh") 
msh2.Scale = Vector3.new(0.4,1,0.4) 
msh2.Parent = part2 
local msh3 = Instance.new("BlockMesh") 
msh3.Scale = Vector3.new(0.31,0.4,0.31) 
msh3.Parent = part3 
local msh4 = Instance.new("BlockMesh") 
msh4.Scale = Vector3.new(0.3,0.9,0.3) 
msh4.Parent = part4 
local msh5 = Instance.new("BlockMesh") 
msh5.Scale = Vector3.new(0.3,0.7,0.1) 
msh5.Parent = part5 
local msh6 = Instance.new("SpecialMesh") 
msh6.Scale = Vector3.new(0.1,0.2,0.2) 
msh6.MeshType = "Wedge" 
msh6.Parent = part6 
local msh7 = Instance.new("BlockMesh") 
msh7.Scale = Vector3.new(0.31,0.4,0.31) 
msh7.Parent = part7 
local msh8 = Instance.new("BlockMesh") 
msh8.Scale = Vector3.new(0.3,0.9,0.3) 
msh8.Parent = part8 
local msh9 = Instance.new("BlockMesh") 
msh9.Scale = Vector3.new(0.3,0.7,0.1) 
msh9.Parent = part9 
local msh10 = Instance.new("SpecialMesh") 
msh10.Scale = Vector3.new(0.1,0.2,0.2) 
msh10.MeshType = "Wedge" 
msh10.Parent = part10 

local weld1 = Instance.new("Weld") 
weld1.Parent = part1 
weld1.Part0 = part1 
weld1.Part1 = Torso 
weld1.C0 = CFrame.new(-0.6,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
local weld2 = Instance.new("Weld") 
weld2.Parent = part2 
weld2.Part0 = part2 
weld2.Part1 = Torso 
weld2.C0 = CFrame.new(0.6,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90))
local weld3 = Instance.new("Weld") 
weld3.Parent = part3 
weld3.Part0 = part3 
weld3.Part1 = part1 
weld3.C0 = CFrame.new(0,1.1,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
local weld4 = Instance.new("Weld") 
weld4.Parent = part4 
weld4.Part0 = part4 
weld4.Part1 = part3 
weld4.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
local weld5 = Instance.new("Weld") 
weld5.Parent = part5 
weld5.Part0 = part5 
weld5.Part1 = part4 
weld5.C0 = CFrame.new(0,-0.9,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
local weld6 = Instance.new("Weld") 
weld6.Parent = part6 
weld6.Part0 = part6 
weld6.Part1 = part5 
weld6.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(2.23,math.rad(90),0)
weld6.C1 = CFrame.new(0,0.41,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
local weld7 = Instance.new("Weld") 
weld7.Parent = part7 
weld7.Part0 = part7 
weld7.Part1 = part2 
weld7.C0 = CFrame.new(0,1.1,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
local weld8 = Instance.new("Weld") 
weld8.Parent = part8 
weld8.Part0 = part8 
weld8.Part1 = part7 
weld8.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
local weld9 = Instance.new("Weld") 
weld9.Parent = part9 
weld9.Part0 = part9 
weld9.Part1 = part8 
weld9.C0 = CFrame.new(0,-0.9,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
local weld10 = Instance.new("Weld") 
weld10.Parent = part10 
weld10.Part0 = part10 
weld10.Part1 = part9 
weld10.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(2.23,math.rad(90),0)
weld10.C1 = CFrame.new(0,0.41,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Dual Knives" 
script.Parent = Tool 
end 
Bin = Tool


local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=45885030" 
SlashSound.Parent = Tool 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
local HitSound = Instance.new("Sound") 
HitSound.SoundId = "http://roblox.com/asset/?id=150229109" 
HitSound.Parent = Tool 
HitSound.Volume = .7 
HitSound.Pitch = 1 

function ss(parent,pitch) 
local SlashSoundeh1 = SlashSound:Clone() 
SlashSoundeh1.Parent = parent 
SlashSoundeh1.Pitch = pitch 
SlashSoundeh1.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait() 
SlashSoundeh1.Parent = nil 
end)) 
end 
function hs(parent,pitch) 
local SlashSoundeh1 = HitSound:Clone() 
SlashSoundeh1.Parent = parent 
SlashSoundeh1.Pitch = pitch 
SlashSoundeh1.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait() 
SlashSoundeh1.Parent = nil 
end)) 
end 
function cs(parent,pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=136007472" 
SlashSound.Parent = parent 
SlashSound.Volume = 1 
SlashSound.Pitch = 1 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait() 
SlashSound.Parent = nil 
end)) 
end 
function bs(parent,pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=149437369" 
SlashSound.Parent = parent 
SlashSound.Volume = 1 
SlashSound.Pitch = 1 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait() 
SlashSound.Parent = nil 
end)) 
end 

function unequipweld() 
weld3.Part1 = part1 
weld3.C0 = CFrame.new(0,1.1,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld7.Part1 = part2 
weld7.C0 = CFrame.new(0,1.1,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 

function equipweld() 
weld3.Part1 = LeftArm 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
weld7.Part1 = RightArm 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
end 

function hideanim() 
for i = 0 , 1 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(-0.5*i+0.5-1.5,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-2.5*i+2.2,1*i-1,-1*i+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0.5*i-0.5+1.5,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-3*i+2.7,-1*i+1,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
unequipweld() 
wait(0.1) 
for i = 0 , 1 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.3*i-0.3,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.3*i-0.3,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 

function equipanim() 
for i = 0 , 1 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.3*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
equipweld() 
wait(0.1) 
for i = 0 , 1 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(0.5*i-1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(2.5*i-0.3,-1*i,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(-0.5*i+1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(3*i-0.3,1*i,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 

function oneslash() 
attack = true 
for i = 0 , 1 , 0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(2.2,1*i-1,1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0.5*i+1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-2.7*i+2.7,-1*i+1,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
R_Conv1=part5.Touched:connect(function1)
ss(part5,1.2) 
for i = 0 , 1.2 , 0.4 do 
wait(0) 
LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(2.2,-1*i,-0.1*i+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.3*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
R_Conv1:disconnect()
attack = false 
end 

function twoslash() 
attack = true 
for i = 0 , 1 , 0.2 do 
wait(0) 
LW.C0 = CFrame.new(-0.5*i-1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-2.2*i+2.2,-1,-1.9*i+0.9) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.3*i-0.3,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
R_Conv1=part9.Touched:connect(function1)
ss(part9,1.2) 
for i = 0 , 1.2 , 0.4 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,-1,-1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1*i+3,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
R_Conv1:disconnect()
for i = 0 , 1 , 0.2 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,-0.57*i-1,1*i-1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1*i-1+3,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 

function threeslash() 
attack = true 
for i = 0 , 1 , 0.2 do 
wait(0) 
LW.C0 = CFrame.new(0.5*i-1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,-1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
R_Conv1=part5.Touched:connect(function1)
ss(part5,1.2) 
for i = 0 , 1.2 , 0.4 do 
wait(0) 
LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57,-1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.7*i-1,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
R_Conv1:disconnect()
for i = 0 , 1 , 0.2 do 
wait(0) 
LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57,-1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7*i+0.7-1,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 

function attackone() 
attack = true 
con1=part5.Touched:connect(function(hit) Damagefunc1(hit,5,40) end)
con2=part6.Touched:connect(function(hit) Damagefunc1(hit,5,40) end)
con3=part9.Touched:connect(function(hit) Damagefunc2(hit,5,40) end)
con4=part10.Touched:connect(function(hit) Damagefunc2(hit,5,40) end)
for i = 0 , 1 , 0.2 do 
wait(0) 
LW.C0 = CFrame.new(-0.5*i-1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-0.63*i+2.2,-0.57*i-1,-1*i+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2*i,0,0) 
RW.C0 = CFrame.new(0.5*i+1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-1.13*i+2.7,0.57*i+1,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2*i,0,0) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90)*i-math.rad(90),math.rad(90)*i,-math.rad(90)*i+math.rad(90)) * CFrame.new(0, 0.2*i+1, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90)*i-math.rad(90),math.rad(90)*i,-math.rad(90)*i+math.rad(90)) * CFrame.new(0, 0.2*i+1, 0) 
end 
ss(part5,1.3) 
ss(part9,1.3) 
coroutine.resume(coroutine.create(function() 
slasheffect(part5.CFrame * CFrame.fromEulerAnglesXYZ(1.5,2.9,0) * CFrame.new(1.5,0,-2),0,15,5) 
end)) 
coroutine.resume(coroutine.create(function() 
slasheffect(part9.CFrame * CFrame.fromEulerAnglesXYZ(1.5,2.9,0) * CFrame.new(1.5,0,-2),0,15,5) 
end)) 
for i = 0 , 1 , 0.2 do 
wait(0) 
LW.C0 = CFrame.new(0.5*i-1.5,0.5,-0.8*i) * CFrame.fromEulerAnglesXYZ(1.57,-1.57,-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2.3*i+2,0.8*i,-1*i) 
RW.C0 = CFrame.new(-0.5*i+1.5,0.5,-0.8*i) * CFrame.fromEulerAnglesXYZ(1.57,1.57,1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2.3*i+2,-0.8*i,1*i) 
end 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
con4:disconnect() 
end 

function attacktwo() 
attack = true 
con1=part5.Touched:connect(function(hit) Damagefunc1(hit,1,30) end)
con2=part6.Touched:connect(function(hit) Damagefunc1(hit,1,30) end)
con3=part9.Touched:connect(function(hit) Damagefunc2(hit,1,30) end)
con4=part10.Touched:connect(function(hit) Damagefunc2(hit,1,30) end)
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(0.5-1.5,0.5,-0.8) * CFrame.fromEulerAnglesXYZ(1.57,-1.57,-1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.random()+math.random()*i-2.3+2,-math.random()+math.random()*i+0.8,-math.random()+math.random()*i-1) 
RW.C0 = CFrame.new(-0.5+1.5,0.5,-0.8) * CFrame.fromEulerAnglesXYZ(1.57,1.57,1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.random()+math.random()*i-2.3+2,-math.random()+math.random()*i-0.8,-math.random()+math.random()*i+1) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(180),math.rad(90),0) * CFrame.new(0, 1.2, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(180),math.rad(90),0) * CFrame.new(0, 1.2, 0) 
ss(part5,1.3) 
ss(part9,1.3) 
coroutine.resume(coroutine.create(function() 
slasheffect(part5.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) * CFrame.new(0,1,0),0,6,1) 
end)) 
coroutine.resume(coroutine.create(function() 
slasheffect(part9.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) * CFrame.new(0,1,0),0,6,1) 
end)) 
end 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
con4:disconnect() 
end 

function attackthree() 
attack = true 
for i = 0 , 1 , 0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(2.2,1*i-1,1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0.5*i+1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-2.7*i+2.7,-1*i+1,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1=part5.Touched:connect(function(hit) Damagefunc1(hit,30,90) end)
con2=part6.Touched:connect(function(hit) Damagefunc1(hit,30,90) end)
ss(part5,1.3) 
coroutine.resume(coroutine.create(function() 
wait(0)
slasheffect(part6.CFrame * CFrame.fromEulerAnglesXYZ(1.4,0.5,0) * CFrame.new(0.2,-0.5,0.7),0,10,30) 
end)) 
for i = 0 , 1.2 , 0.4 do 
wait(0) 
LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(2.2,-1*i,-0.1*i+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.3*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
con1:disconnect() 
con2:disconnect() 
end 

function attackfour() 
attack = true 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-0.5*i-1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-2.2*i+2.2,1*i-1,-1*i+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0.5*i+1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(1.3*i+2.7,-1*i+1,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con3=part9.Touched:connect(function(hit) Damagefunc2(hit,30,90) end)
con4=part10.Touched:connect(function(hit) Damagefunc2(hit,30,90) end)
ss(part9,1.3) 
coroutine.resume(coroutine.create(function() 
wait(0)
slasheffect(part10.CFrame * CFrame.fromEulerAnglesXYZ(-0.5,0,0) * CFrame.new(0,-0.9,-4),0,10,30) 
end)) 
for i = 0,1.2,0.4 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-2.5*i+4,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
con3:disconnect() 
con4:disconnect() 
end 

function attackfive() 
attack = true 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(2.2,-1,1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(-0.5*i+2.7,1,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),-math.rad(90)*i,math.rad(90)) * CFrame.new(0, 1, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),-math.rad(90)*i,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
coroutine.resume(coroutine.create(function() 
slasheffect(part5.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),-1,0) * CFrame.new(0,0,0),0,25,20) 
end)) 
coroutine.resume(coroutine.create(function() 
slasheffect(part9.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),-1,0) * CFrame.new(0,0,0),0,25,20) 
end)) 
con1=part5.Touched:connect(function(hit) Damagefunc1(hit,10,70) end)
con2=part6.Touched:connect(function(hit) Damagefunc1(hit,10,70) end)
con3=part9.Touched:connect(function(hit) Damagefunc2(hit,10,70) end)
con4=part10.Touched:connect(function(hit) Damagefunc2(hit,10,70) end) 
ss(part5,1.3) 
ss(part9,1.3) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Player.Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Torso.CFrame.lookVector * 150
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-0.5*i-1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(2.2,-1,1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i,0,0) 
RW.C0 = CFrame.new(0.5*i+1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(2.2,1,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i,0,0) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90)*i-math.rad(90),math.rad(90)) * CFrame.new(0, 1, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90)*i-math.rad(90),math.rad(90)) * CFrame.new(0, 1, 0) 
end 
vel.Parent = nil 
wait(0.2) 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
con4:disconnect() 
end 

function DarkRush() 
attack = true 
DarkRushing = true 
cs(Torso,1) 
coroutine.resume(coroutine.create(function() 
while DarkRushing == true do 
wait() 
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.5,0.5,0.5) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(3,3,3)
    S.BrickColor=BrickColor.new("New Yeller")
    S.Reflectance = 0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=part5.CFrame*CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=Character
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.5,0.5,0.5) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(3,3,3)
    S.BrickColor=BrickColor.new("New Yeller")
    S.Reflectance = 0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=part9.CFrame*CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=Character
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
end)) 
for i = 0,1,0.05 do 
wait() 
LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(2.2,-1,1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(-0.5*i+2.7,1,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),-math.rad(90)*i,math.rad(90)) * CFrame.new(0, 1, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),-math.rad(90)*i,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
wait(0.25) 
con1=part5.Touched:connect(function(hit) Damagefunc1(hit,50,100) end) 
con2=part6.Touched:connect(function(hit) Damagefunc1(hit,50,100) end) 
con3=part9.Touched:connect(function(hit) Damagefunc2(hit,50,100) end) 
con4=part10.Touched:connect(function(hit) Damagefunc2(hit,50,100) end) 
wait(0.25) 
coroutine.resume(coroutine.create(function() 
slasheffect(part5.CFrame * CFrame.fromEulerAnglesXYZ(-math.rad(90),-1,0) * CFrame.new(0,0,0),0,35,40) 
end)) 
coroutine.resume(coroutine.create(function() 
slasheffect(part9.CFrame * CFrame.fromEulerAnglesXYZ(-math.rad(90),-1,0) * CFrame.new(0,0,0),0,35,40) 
end)) 
ss(part5,1.3) 
ss(part9,1.3) 
bs(Torso,2.5) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Player.Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Torso.CFrame.lookVector * 200
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-0.5*i-1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(2.2,-1,1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i,0,0) 
RW.C0 = CFrame.new(0.5*i+1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(2.2,1,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i,0,0) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
vel.Parent = nil 
wait(0.2) 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
con4:disconnect() 
wait(0.8) 
DarkRushing = false 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(0.5*i-1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(2.2,-1,1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-3*i+3,0,0) 
RW.C0 = CFrame.new(-0.5*i+1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(0.5*i+2.2,1,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-3*i+3,0,0) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90)*i-math.rad(90),math.rad(90)) * CFrame.new(0, 1, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90)*i-math.rad(90),math.rad(90)) * CFrame.new(0, 1, 0) 
end 
attack = false 
end 

function KnifeDance() 
attack = true 
rapidslashing = true 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-0.5*i-1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-0.63*i+2.2,1*i-1,-2.57*i+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0.5*i+1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-1.13*i+2.7,-1*i+1,2.57*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),-math.rad(90)*i,math.rad(90)) * CFrame.new(0, 1, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),-math.rad(90)*i,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
con1=part5.Touched:connect(function(hit) Damagefunc1(hit,10,80) end)
con2=part6.Touched:connect(function(hit) Damagefunc1(hit,10,80) end)
con3=part9.Touched:connect(function(hit) Damagefunc2(hit,10,80) end)
con4=part10.Touched:connect(function(hit) Damagefunc2(hit,10,80) end)
while rapidslashing == true do 
wait() 
ss(part5,1.3) 
ss(part9,1.3) 
coroutine.resume(coroutine.create(function() 
slasheffect(part5.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) * CFrame.new(math.random(),1+math.random(),math.random()),0,8,10) 
end)) 
coroutine.resume(coroutine.create(function() 
slasheffect(part9.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) * CFrame.new(math.random(),1+math.random(),math.random()),0,8,10) 
end)) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.random()-math.random(),math.random()-math.random(),-1.57) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.random()-math.random(),math.random()-math.random(),1.57) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),-math.rad(90),math.rad(90)) * CFrame.new(0, 1, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),-math.rad(90),math.rad(90)) * CFrame.new(0, 1, 0) 
end 
LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(2.5-0.3,-1,1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3-0.3,1,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
con4:disconnect() 
attack = false 
end 


Damagefunc1=function(hit,Damage,Knockback)
    if attackdebounce == false then 
    attackdebounce = true 
    coroutine.resume(coroutine.create(function() 
    wait(0.2) 
    attackdebounce = false 
    end)) 
    if hit.Parent==nil then
        return
    end
    CPlayer=Bin 
    h=hit.Parent:FindFirstChild("Humanoid")
    if h~=nil and hit.Parent.Name~="grgrgry21" and hit.Name~="SlashEffect" and hit.Parent:FindFirstChild("Torso")~=nil then
	if h.Parent.Name ~= game.Players.LocalPlayer.Name then
        Damage=Damage
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
            hs(hit,1.2) 
            c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
--            print(c.Value)
--[[        if math.random(1,5)==1 then
            CRIT=true
            Damage=Damage*2
            Knockback=Knockback*2
            r=Instance.new("BodyAngularVelocity")
            r.P=3000
            r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
            r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
            r.Parent=hit.Parent.Torso
            s=Instance.new("Sound")
            s.SoundId="http://www.roblox.com/asset/?id=2801263"
            s.Volume=1
            s.Pitch=2
            s.Parent=hit
            s:Play()
    
        end]]
        Damage=Damage+math.random(0,10)
--        Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
        h:TakeDamage(Damage)
        showDamage(hit.Parent,Damage,.5)
        vp=Instance.new("BodyVelocity")
        vp.P=500
        vp.maxForce=Vector3.new(math.huge,0,math.huge)
--        vp.velocity=Character.Torso.CFrame.lookVector*Knockback
        vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
        if Knockback>0 then
            vp.Parent=hit.Parent.Torso
        end
        game:GetService("Debris"):AddItem(vp,.25)
--[[        r=Instance.new("BodyAngularVelocity")
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
end

Damagefunc2=function(hit,Damage,Knockback)
    if attackdebounce2 == false then 
    attackdebounce2 = true 
    coroutine.resume(coroutine.create(function() 
    wait(0.2) 
    attackdebounce2 = false 
    end)) 
    if hit.Parent==nil then
        return
    end
    CPlayer=Bin 
    h=hit.Parent:FindFirstChild("Humanoid")
    if h~=nil and hit.Parent.Name~="grgrgry21" and hit.Parent:FindFirstChild("Torso")~=nil then
	if h.Parent.Name ~= game.Players.LocalPlayer.Name then
        Damage=Damage
        print(hit) 
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
            hs(hit,1.2) 
            c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
--            print(c.Value)
--[[        if math.random(1,5)==1 then
            CRIT=true
            Damage=Damage*2
            Knockback=Knockback*2
            r=Instance.new("BodyAngularVelocity")
            r.P=3000
            r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
            r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
            r.Parent=hit.Parent.Torso
            s=Instance.new("Sound")
            s.SoundId="http://www.roblox.com/asset/?id=2801263"
            s.Volume=1
            s.Pitch=2
            s.Parent=hit
            s:Play()
    
        end]]
        Damage=Damage+math.random(3,7)
--        Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
		
        h:TakeDamage(Damage)
        showDamage(hit.Parent,Damage,.5)
        vp=Instance.new("BodyVelocity")
        vp.P=500
        vp.maxForce=Vector3.new(math.huge,0,math.huge)
--        vp.velocity=Character.Torso.CFrame.lookVector*Knockback
        vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
        if Knockback>0 then
            vp.Parent=hit.Parent.Torso
        end
        game:GetService("Debris"):AddItem(vp,.25)
		
--[[        r=Instance.new("BodyAngularVelocity")
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
        c.BrickColor=BrickColor.new("New Yeller")
    end
    c.Name="Head"
    c.TopSurface=0
    c.BottomSurface=0
    c.formFactor="Plate"
    c.Size=Vector3.new(1,.4,1)
    ms=Instance.new("CylinderMesh")
    
    ms.Scale=Vector3.new(.8,.8,.8)
    if CRIT==true then
        ms.Scale=Vector3.new(1.25,1.5,1.25)
    
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

function slasheffect(cframe,waitin,size,efdam) 
wait(waitin) 
for l=1, 2 do
wait() 
e=Instance.new("Part")
coneffect=e.Touched:connect(function(hit) Damagefunc1(hit,efdam,1) end)
e.Name="SlashEffect"
e.TopSurface=0
e.BottomSurface=0
e.formFactor="Symmetric"
e.Size=Vector3.new(1,1,size)
e.Anchored=true
e.BrickColor=BrickColor.new("New Yeller") 
e.Reflectance=0

e.CanCollide=false
m=Instance.new("SpecialMesh")
m.MeshType="Sphere"
m.Scale=Vector3.new(.25,.25,1)
m.Parent=e
e.CFrame = cframe
e.Parent=workspace
coroutine.resume(coroutine.create(function(m) for i=1, 9 do m.Transparency=i*.1 m.Mesh.Scale=m.Mesh.Scale-Vector3.new(.01,.01,.05)*2 wait() end m.Parent=nil coneffect:disconnect() end),e)
end
end 


function ob1d(mouse) 
if attack == true then return end 
hold = true 
--[[oneslash() 
if hold == true then 
twoslash() 
end 
if hold == true then 
threeslash() 
end ]] 
attackin = math.random(1,5) 
--attackin = 5 
if attackin == 1 then 
attackone() 
elseif attackin == 2 then 
attacktwo() 
elseif attackin == 3 then 
attackthree() 
elseif attackin == 4 then 
attackfour() 
elseif attackin == 5 then 
attackfive() 
end 
wait(0.2) 
LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(2.5-0.3,-1,1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3-0.3,1,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
attack = false 
end 

function ob1u(mouse) 
hold = false 
end 

buttonhold = false 

function key(key) 
if attack == true then return end 
if key == "q" then 
DarkRush() 
end 
if key == "e" then 
KnifeDance() 
end 
end 

function key2(key) 
if key == "e" then 
rapidslashing = false 
end 
end 

function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
unsheathed = true 
player = Player 
ch = Character 
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
unsheathed = false 
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
module[3] = {"Dual Pistols",function()
wait();
plr = game.Players.LocalPlayer
char = plr.Character
Humans = char:findFirstChild("Humanoid")
BulletTable,Disposables,Lasers = {},{},{}
Clips,Bullets,CurrentGun = 850,20,1
Reloading,FlashLight,LaserLight,Silenced,ToolName,LaserColor,plr,char = false,false,false,false,"Dual Pistols","Really Gold",game.Players.LocalPlayer,plr.Character
V3,BC,CF = Vector3.new,BrickColor.new,CFrame
for i,v in pairs(plr.Character:GetChildren()) do
if v:IsA("Model") and v.Name == "MainModel" then
v:Remove()
end
end
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == ToolName then
v:Remove()
end
end
Bin = Instance.new("HopperBin",plr.Backpack)
Bin.Name = ToolName
MainModel,GunModelOne,GunModelTwo,SheathOne,SheathTwo = Instance.new("Model"),Instance.new("Model"),Instance.new("Model"),Instance.new("Model"),Instance.new("Model")
MainModel.Name,GunModelOne.Name,GunModelTwo.Name,SheathOne.Name,SheathTwo.Name = "MainModel","GunModelOne","GunModelTwo","SheathOne","SheathTwo"
MainModel.Parent,GunModelOne.Parent,GunModelTwo.Parent,SheathOne.Parent,SheathTwo.Parent = char,MainModel,MainModel,MainModel,MainModel
L1,L2,L3,L4 = Instance.new("SpotLight"), Instance.new("SpotLight"), Instance.new("SpotLight"), Instance.new("SpotLight")
L1.Enabled,L2.Enabled,L3.Enabled,L4.Enabled = false,false,false,false
L1.Brightness,L2.Brightness,L3.Brightness,L4.Brightness = 60,60,40,40
L1.Range,L2.Range,L3.Range,L4.Range = 25,25,40,40
L1.Color,L2.Color,L3.Color,L4.Color = BrickColor.new("Neon orange").Color,BrickColor.new("Neon orange").Color,BrickColor.new("White").Color,BrickColor.new("White").Color
L3.Name,L4.Name = "Safe","Safe"
script.Parent = MainModel
function AddPart(name,parent,s1,s2,s3,color)
p=Instance.new("Part",parent)
p.Name=name
p.formFactor="Custom"
p.Anchored=false
p.Locked=true
p.CanCollide=false
p.Size=Vector3.new(s1,s2,s3)
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.BrickColor=BrickColor.new(color)
Instance.new("BlockMesh",p).Name = "Mesh"
p:BreakJoints()
return p
end
function AddWeld(name,parent,p1,p0,c1,c0)
we=Instance.new("Weld",parent)
we.Part1=p1
we.Part0=p0
we.C1=c0
we.C0=c1
return we
end
--Gets a bit confusing down below :3
HandleOne,HandleTwo = AddPart("HandleLeft",GunModelOne,.02,1,.4,"Silver"),AddPart("HandleLeft",GunModelTwo,.02,1,.4,"Silver")
HandleWeldLeft,HandleWeldRight = AddWeld("Weld",HandleOne,HandleOne,char["Torso"],CF.new(-1,0,-1),CF.Angles(math.rad(45),math.rad(180),0)),AddWeld("Weld",HandleTwo,HandleTwo,char["Torso"],CF.new(1,0,-1),CF.Angles(math.rad(45),math.rad(180),0))
HandLeft = AddPart("HandLeft",MainModel,1,1,1,"Silver")
HandRight = AddPart("HandRight",MainModel,1,1,1,"Silver")
HandLeft.Transparency,HandRight.Transparency = 1,1
AddWeld("Weld",HandLeft,HandLeft,char["Left Arm"],CF.new(0,-1,0),CF.Angles(math.rad(90),0,0))
AddWeld("Weld",HandRight,HandRight,char["Right Arm"],CF.new(0,-1,0),CF.Angles(math.rad(90),0,0))
PA1 = AddPart("Part",GunModelOne,.3,.1,1,"Silver")
PA1.Mesh.Scale = V3(1,.6,1)
WPA1 = AddWeld("Weld",PA1,PA1,HandleOne,CF.new(0,0.5,-.3),CF.new(0,0,0))
PA2 = AddPart("Part",GunModelOne,.1,.5,.1,"Really Gold")
PA2.Mesh:Remove()
Instance.new("CylinderMesh",PA2).Scale = V3(.5,1,.5)
WPA2 = AddWeld("Weld",PA2,PA2,HandleOne,CF.new(0,.6,-.9),CF.Angles(math.rad(90),0,0))
PA3 = AddPart("Part",GunModelOne,.1,1.3,.1,"Really Gold")
PA3.Mesh:Remove()
Instance.new("CylinderMesh",PA3).Scale = V3(.7,1,.8)
WPA3 = AddWeld("Weld",PA3,PA3,HandleOne,CF.new(0,.75,-.6),CF.Angles(math.rad(90),0,0))
PA4 = AddPart("Part",GunModelOne,.3,.1,1.2,"Silver")
PA4.Mesh.Scale = V3(1,1,1)
WPA4 = AddWeld("Weld",PA4,PA4,HandleOne,CF.new(0,.65,-.5),CF.new(0,0,0))
PA5 = AddPart("Part",GunModelOne,.3,.1,.3,"Silver")
PA5.Mesh:Remove()
Instance.new("CylinderMesh",PA5).Scale = V3(1,1,1)
WPA5 = AddWeld("Weld",PA5,PA5,PA4,CF.new(0,0.1,-0.5),CF.Angles(math.rad(90),0,0))
PA6 = AddPart("Part",GunModelOne,.3,.5,.3,"Silver")
PA6.Mesh:Remove()
Instance.new("CylinderMesh",PA6).Scale = V3(1,1,1)
WPA6 = AddWeld("Weld",PA6,PA6,PA4,CF.new(0,0.1,0.35),CF.Angles(math.rad(90),0,0))
PA7 = AddPart("Part",GunModelOne,.1,.1,.5,"Gold")
PA7.Mesh:Remove()
Instance.new("CylinderMesh",PA7).Scale = V3(.9,.9,1)
WPA7 = AddWeld("Weld",PA7,PA7,PA3,CF.new(0,-0.31,0),CF.Angles(0,0,0))
BamOne = Instance.new("Sound",PA7)
BamOne.Pitch,BamOne.Volume,BamOne.SoundId = 1.4,.5,"http://www.roblox.com/asset/?id=94191736"
PA8 = AddPart("Part",GunModelOne,.3,.1,.25,"Silver")
PA8.Mesh:Remove()
sm = Instance.new("SpecialMesh",PA8)
sm.MeshType = "Wedge"
sm.Scale = V3(.38,.6,1)
WPA8 = AddWeld("Weld",PA8,PA8,PA6,CF.new(0.1,-.3,-0.07),CF.Angles(math.rad(180),0,0))
PA9 = AddPart("Part",GunModelOne,.3,.1,.25,"Silver")
PA9.Mesh:Remove()
sm = Instance.new("SpecialMesh",PA9)
sm.MeshType = "Wedge"
sm.Scale = V3(.35,.6,1)
WPA9 = AddWeld("Weld",PA9,PA9,PA6,CF.new(-0.1,-.3,-0.07),CF.Angles(math.rad(180),0,0))
PA10 = AddPart("Part",GunModelOne,.3,.1,.25,"Silver")
PA10.Mesh:Remove()
sm = Instance.new("SpecialMesh",PA10)
sm.MeshType = "Wedge"
sm.Scale = V3(.35,.6,1)
WPA10 = AddWeld("Weld",PA10,PA10,PA6,CF.new(0,-.34,0),CF.Angles(math.rad(100),0,0))
PA11 = AddPart("Part",GunModelOne,.1,.3,.1,"Silver")
PA11.Mesh:Remove()
sm = Instance.new("SpecialMesh",PA11)
sm.MeshType = "Wedge"
sm.Scale = V3(.5,1,.5)
WPA11 = AddWeld("Weld",PA11,PA11,HandleOne,CF.new(0,.25,-.35),CF.Angles(math.rad(90),0,0))
PA12 = AddPart("Part",GunModelOne,.1,.1,.3,"Silver")
PA12.Mesh:Remove()
sm = Instance.new("SpecialMesh",PA12)
sm.MeshType = "Wedge"
sm.Scale = V3(.5,.5,.5)
WPA12 = AddWeld("Weld",PA12,PA12,HandleOne,CF.new(0,.37,-.55),CF.Angles(math.rad(90),0,0)) 
PA13 = AddPart("Part",GunModelOne,.1,.1,.3,"Silver")
PA13.Mesh:Remove()
sm = Instance.new("SpecialMesh",PA13)
sm.MeshType = "Wedge"
sm.Scale = V3(.5,.5,.5)
WPA13 = AddWeld("Weld",PA13,PA13,HandleOne,CF.new(0,.37,-.45),CF.Angles(math.rad(270),0,0))
PA14 = AddPart("Part",GunModelOne,.1,.1,.3,"Silver")
PA14.Mesh:Remove()
sm = Instance.new("SpecialMesh",PA14)
sm.MeshType = "Wedge"
sm.Scale = V3(.5,.5,.5)
WPA14 = AddWeld("Weld",PA14,PA14,HandleOne,CF.new(0,.4,-.3),CF.Angles(math.rad(55),0,0))
PA15 = AddPart("Part",GunModelOne,.1,.3,.3,"Silver")
PA15.Mesh:Remove()
sm = Instance.new("SpecialMesh",PA15)
sm.MeshType = "Wedge"
sm.Scale = V3(1,1,.25)
WPA15 = AddWeld("Weld",PA15,PA15,HandleOne,CF.new(0,-0.35,-.23),CF.Angles(math.rad(0),0,0))
PA16 = AddPart("Part",GunModelOne,.02,1,.3,"Really Gold")
PA16.Mesh.Scale = V3(1.1,.9,1)
WPA16 = AddWeld("Weld",PA16,PA16,HandleOne,CF.new(0,0,0),CF.new(0,0,0))
PA17 = AddPart("Part",GunModelOne,.1,.3,.3,"Really Gold")
PA17.Mesh:Remove()
sm = Instance.new("SpecialMesh",PA17)
sm.MeshType = "Wedge"
sm.Scale = V3(1.1,1,.25)
WPA17 = AddWeld("Weld",PA17,PA17,PA15,CF.new(0,0.05,0.05),CF.Angles(math.rad(0),0,0))
PA18 = AddPart("Part",GunModelOne,.1,.3,.1,"Silver")
PA18.Mesh:Remove()
Instance.new("CylinderMesh",PA18).Scale = V3(.5,.8,.5)
WPA18 = AddWeld("Weld",PA18,PA18,HandleOne,CF.new(0,0.2,0),CF.Angles(math.rad(90),math.rad(90),0))
PA19 = AddPart("Part",GunModelOne,.1,.3,.1,"Silver")
PA19.Mesh:Remove()
Instance.new("CylinderMesh",PA19).Scale = V3(.5,1,.5)
WPA19 = AddWeld("Weld",PA19,PA19,PA3,CF.new(0,0.51,0),CF.Angles(math.rad(0),math.rad(0),0))
PA20 = AddPart("Part",GunModelOne,.1,.3,.1,"Silver")
PA20.Mesh:Remove()
PA20.Transparency = 1
L2.Parent = PA20
L3.Parent = PA20
WPA20 = AddWeld("Weld",PA20,PA20,PA3,CF.new(0,0.6,0),CF.Angles(math.rad(261),0,0))
PA21 = AddPart("Part",GunModelOne,.1,.25,.1,"Gold")
WPA21 = AddWeld("Weld",PA21,PA21,PA3,CF.new(0,0.1,-0.35),CF.Angles(math.rad(0),0,0))
PA22 = AddPart("Part",GunModelOne,.1,.35,.3,"Gold")
WPA22 = AddWeld("Weld",PA21,PA21,PA22,CF.new(0,0,0.2),CF.Angles(math.rad(0),0,0))
PA23 = AddPart("Part",GunModelOne,.1,.35,.1,"Silver")
PA23.Mesh:Remove()
PA23.Transparency = 0.4
Instance.new("CylinderMesh",PA23).Scale = Vector3.new(0.5,1,0.5)
WPA23 = AddWeld("Weld",PA22,PA22,PA23,CF.new(0,-0.03,0.05),CF.Angles(math.rad(0),0,0))
PA24 = AddPart("Part",GunModelOne,.1,.35,.1,"Really red")
PA24.Mesh:Remove()
PA24.Transparency = 1
Instance.new("CylinderMesh",PA24).Scale = Vector3.new(0.5,1,0.5)
WPA24 = AddWeld("Weld",PA22,PA22,PA24,CF.new(0,-0.03,-0.06),CF.Angles(math.rad(90),0,0))
PA26 = AddPart("Part",GunModelOne,.1,.35,.1,LaserColor)
PA26.Mesh:Remove()
PA26.Transparency = 0.4
Instance.new("CylinderMesh",PA26).Scale = Vector3.new(0.5,1,0.5)
WPA26 = AddWeld("Weld",PA22,PA22,PA26,CF.new(0,-0.03,-0.06),CF.Angles(math.rad(0),0,0))
--Gun 2 Below
PB1 = AddPart("Part",GunModelTwo,.3,.1,1,"Silver")
PB1.Mesh.Scale = V3(1,.6,1)
WPB1 = AddWeld("Weld",PB1,PB1,HandleTwo,CF.new(0,0.5,-.3),CF.new(0,0,0))
PB2 = AddPart("Part",GunModelTwo,.1,.5,.1,"Really Gold")
PB2.Mesh:Remove()
Instance.new("CylinderMesh",PB2).Scale = V3(.5,1,.5)
WPB2 = AddWeld("Weld",PB2,PB2,HandleTwo,CF.new(0,.6,-.9),CF.Angles(math.rad(90),0,0))
PB3 = AddPart("Part",GunModelTwo,.1,1.3,.1,"Really Gold")
PB3.Mesh:Remove()
Instance.new("CylinderMesh",PB3).Scale = V3(.7,1,.8)
WPB3 = AddWeld("Weld",PB3,PB3,HandleTwo,CF.new(0,.75,-.6),CF.Angles(math.rad(90),0,0))
PB4 = AddPart("Part",GunModelTwo,.3,.1,1.2,"Silver")
PB4.Mesh.Scale = V3(1,1,1)
WPB4 = AddWeld("Weld",PB4,PB4,HandleTwo,CF.new(0,.65,-.5),CF.new(0,0,0))
PB5 = AddPart("Part",GunModelTwo,.3,.1,.3,"Silver")
PB5.Mesh:Remove()
Instance.new("CylinderMesh",PB5).Scale = V3(1,1,1)
WPB5 = AddWeld("Weld",PB5,PB5,PB4,CF.new(0,0.1,-0.5),CF.Angles(math.rad(90),0,0))
PB6 = AddPart("Part",GunModelTwo,.3,.5,.3,"Silver")
PB6.Mesh:Remove()
Instance.new("CylinderMesh",PB6).Scale = V3(1,1,1)
WPB6 = AddWeld("Weld",PB6,PB6,PB4,CF.new(0,0.1,0.35),CF.Angles(math.rad(90),0,0))
PB7 = AddPart("Part",GunModelTwo,.1,.1,.5,"Gold")
PB7.Mesh:Remove()
Instance.new("CylinderMesh",PB7).Scale = V3(.9,.9,1)
WPB7 = AddWeld("Weld",PB7,PB7,PB3,CF.new(0,-0.31,0),CF.Angles(0,0,0))
BamTwo = Instance.new("Sound",PB7)
BamTwo.Pitch,BamTwo.Volume,BamTwo.SoundId = 1.4,.5,"http://www.roblox.com/asset/?id=94191736"
PB8 = AddPart("Part",GunModelTwo,.3,.1,.25,"Silver")
PB8.Mesh:Remove()
sm = Instance.new("SpecialMesh",PB8)
sm.MeshType = "Wedge"
sm.Scale = V3(.38,.6,1)
WPB8 = AddWeld("Weld",PB8,PB8,PB6,CF.new(0.1,-.3,-0.07),CF.Angles(math.rad(180),0,0))
PB9 = AddPart("Part",GunModelOne,.3,.1,.25,"Silver")
PB9.Mesh:Remove()
sm = Instance.new("SpecialMesh",PB9)
sm.MeshType = "Wedge"
sm.Scale = V3(.35,.6,1)
WPB9 = AddWeld("Weld",PB9,PB9,PB6,CF.new(-0.1,-.3,-0.07),CF.Angles(math.rad(180),0,0))
PB10 = AddPart("Part",GunModelTwo,.3,.1,.25,"Silver")
PB10.Mesh:Remove()
sm = Instance.new("SpecialMesh",PB10)
sm.MeshType = "Wedge"
sm.Scale = V3(.35,.6,1)
WPB10 = AddWeld("Weld",PB10,PB10,PB6,CF.new(0,-.34,0),CF.Angles(math.rad(100),0,0))
PB11 = AddPart("Part",GunModelTwo,.1,.3,.1,"Silver")
PB11.Mesh:Remove()
sm = Instance.new("SpecialMesh",PB11)
sm.MeshType = "Wedge"
sm.Scale = V3(.5,1,.5)
WPB11 = AddWeld("Weld",PB11,PB11,HandleTwo,CF.new(0,.25,-.35),CF.Angles(math.rad(90),0,0))
PB12 = AddPart("Part",GunModelTwo,.1,.1,.3,"Silver")
PB12.Mesh:Remove()
sm = Instance.new("SpecialMesh",PB12)
sm.MeshType = "Wedge"
sm.Scale = V3(.5,.5,.5)
WPB12 = AddWeld("Weld",PB12,PB12,HandleTwo,CF.new(0,.37,-.55),CF.Angles(math.rad(90),0,0))
PB13 = AddPart("Part",GunModelTwo,.1,.1,.3,"Silver")
PB13.Mesh:Remove()
sm = Instance.new("SpecialMesh",PB13)
sm.MeshType = "Wedge"
sm.Scale = V3(.5,.5,.5)
WPB13 = AddWeld("Weld",PB13,PB13,HandleTwo,CF.new(0,.37,-.45),CF.Angles(math.rad(270),0,0))
PB14 = AddPart("Part",GunModelTwo,.1,.1,.3,"Silver")
PB14.Mesh:Remove()
sm = Instance.new("SpecialMesh",PB14)
sm.MeshType = "Wedge"
sm.Scale = V3(.5,.5,.5)
WPB14 = AddWeld("Weld",PB14,PB14,HandleTwo,CF.new(0,.4,-.3),CF.Angles(math.rad(55),0,0))
PB15 = AddPart("Part",GunModelTwo,.1,.3,.3,"Silver")
PB15.Mesh:Remove()
sm = Instance.new("SpecialMesh",PB15)
sm.MeshType = "Wedge"
sm.Scale = V3(1,1,.25)
WPB15 = AddWeld("Weld",PB15,PB15,HandleTwo,CF.new(0,-0.35,-.23),CF.Angles(math.rad(0),0,0))
PB16 = AddPart("Part",GunModelTwo,.02,1,.3,"Really Gold")
PB16.Mesh.Scale = V3(1.1,.9,1)
WPB16 = AddWeld("Weld",PB16,PB16,HandleTwo,CF.new(0,0,0),CF.new(0,0,0))
PB17 = AddPart("Part",GunModelTwo,.1,.3,.3,"Really Gold")
PB17.Mesh:Remove()
sm = Instance.new("SpecialMesh",PB17)
sm.MeshType = "Wedge"
sm.Scale = V3(1.1,1,.25)
WPB17 = AddWeld("Weld",PB17,PB17,PB15,CF.new(0,0.05,0.05),CF.Angles(math.rad(0),0,0))
PB18 = AddPart("Part",GunModelTwo,.1,.3,.1,"Silver")
PB18.Mesh:Remove()
Instance.new("CylinderMesh",PB18).Scale = V3(.5,.8,.5)
WPB18 = AddWeld("Weld",PB18,PB18,HandleTwo,CF.new(0,0.2,0),CF.Angles(math.rad(90),math.rad(90),0))
PB19 = AddPart("Part",GunModelTwo,.1,.3,.1,"Silver")
PB19.Mesh:Remove()
Instance.new("CylinderMesh",PB19).Scale = V3(.5,1,.5)
WPB19 = AddWeld("Weld",PB19,PB19,PB3,CF.new(0,0.51,0),CF.Angles(math.rad(0),math.rad(0),0))
PB20 = AddPart("Part",GunModelTwo,.1,.3,.1,"Silver")
PB20.Mesh:Remove()
PB20.Transparency = 1
L1.Parent = PB20
L4.Parent = PB20
WPB20 = AddWeld("Weld",PB20,PB20,PB3,CF.new(0,0.6,0),CF.Angles(math.rad(261),0,0))
PB21 = AddPart("Part",GunModelTwo,.1,.25,.1,"Gold")
WPB21 = AddWeld("Weld",PB21,PB21,PB3,CF.new(0,0.1,-0.35),CF.Angles(math.rad(0),0,0))
PB22 = AddPart("Part",GunModelTwo,.1,.35,.3,"Gold")
WPB22 = AddWeld("Weld",PB21,PB21,PB22,CF.new(0,0,0.2),CF.Angles(math.rad(0),0,0))
PB23 = AddPart("Part",GunModelTwo,.1,.35,.1,"Silver")
PB23.Mesh:Remove()
PB23.Transparency = 0.4
Instance.new("CylinderMesh",PB23).Scale = Vector3.new(0.5,1,0.5)
WPB23 = AddWeld("Weld",PB22,PB22,PB23,CF.new(0,-0.03,0.05),CF.Angles(math.rad(0),0,0))
PB24 = AddPart("Part",GunModelTwo,.1,.35,.1,"Silver")
PB24.Mesh:Remove()
PB24.Transparency = 0.4
Instance.new("CylinderMesh",PB24).Scale = Vector3.new(0.5,1,0.5)
WPB24 = AddWeld("Weld",PB22,PB22,PB24,CF.new(0,-0.03,-0.06),CF.Angles(math.rad(90),0,0))
PB26 = AddPart("Part",GunModelOne,.1,.35,.1,LaserColor)
PB26.Mesh:Remove()
PB26.Transparency = 0.4
Instance.new("CylinderMesh",PB26).Scale = Vector3.new(0.5,1,0.5)
WPB26 = AddWeld("Weld",PB22,PB22,PB26,CF.new(0,-0.03,-0.06),CF.Angles(math.rad(0),0,0))
--End Of gun creation.
--Holder's Creation
PC1 = AddPart("Part",SheathOne,.5,1.5,.7,"Silver")
WPC1 = AddWeld("Weld",PC1,PC1,char.Torso,CF.new(-1,0,0),CF.Angles(math.rad(45),0,0))
--Holder Two
PD1 = AddPart("Part",SheathTwo,.5,1.5,.7,"Silver")
WPD1 = AddWeld("Weld",PD1,PD1,char.Torso,CF.new(1,0,0),CF.Angles(math.rad(45),0,0))
--End Of Holders
--Extras
PE1 = AddPart("Part",MainModel,2.1,.5,1.1,"Silver")
WPE1 = AddWeld("Weld",PE1,PE1,char.Torso,CF.new(0,-0.8,0),CF.Angles(math.rad(0),0,0))
PE2 = AddPart("Part",MainModel,.8,.8,.7,"Silver")
WPE2 = AddWeld("Weld",PE2,PE2,PE1,CF.new(0.4,-0.13,.9),CF.Angles(math.rad(0),0,0))
PE3 = AddPart("Part",MainModel,.75,.8,.65,"Silver")
WPE3 = AddWeld("Weld",PE3,PE3,PE2,CF.new(0,0.02,0),CF.Angles(math.rad(0),0,0))
PE4 = AddPart("Part",MainModel,2.2,.25,1.2,"Silver")
WPE4 = AddWeld("Weld",PE4,PE4,PE1,CF.new(0,0,0),CF.Angles(math.rad(0),0,0))
ch,player = char,plr
RW,LW,HW,RLG,LLG = Instance.new("Motor"),Instance.new("Motor"),Instance.new("Motor"),Instance.new("Motor"),Instance.new("Motor")
RSH, LSH, NCK, LG2, LG1 = ch.Torso["Right Shoulder"], ch.Torso["Left Shoulder"], ch.Torso["Neck"], ch.Torso["Right Hip"], ch.Torso["Left Hip"]
RW.C0,RW.C1,RW.Parent,RW.Part0 = CFrame.new(1.5, 0.5, 0),CFrame.new(0, 0.5, 0),MainModel,ch.Torso
LW.C0,LW.C1,LW.Parent,LW.Part0 = CFrame.new(-1.5, 0.5, 0),CFrame.new(0, 0.5, 0),MainModel,ch.Torso
HW.C1,HW.Parent,HW.Part0 = CFrame.new(0,-.7,0),MainModel,ch.Torso
RLG.C1,RLG.Part0,RLG.Parent = CFrame.new(-.5,2,0),ch.Torso,MainModel
LLG.C1,LLG.Part0,LLG.Parent = CFrame.new(.5,2,0),ch.Torso,MainModel
function RWFunc()
RW.Part1 = ch["Right Arm"]
RSH.Part1 = nil
end
function LWFunc()
LW.Part1 = ch["Left Arm"]
LSH.Part1 = nil
end
function RWRem()
RW.Part1 = nil
RSH.Part1 = ch["Right Arm"]
end
function LWRem()
LW.Part1 = nil
LSH.Part1 = ch["Left Arm"]
end
function HWFunc()
NCK.Part1 = nil
HW.Part1 = ch.Head
end
function HWRem()
NCK.Part1 = ch.Head
HW.Part1 = nil
end
function Leg1Func()
l1=ch["Left Leg"]
l1.Name = "Left Legg"
l1.CanCollide = true
LG1.Part1 = nil
LLG.Part1 = l1
end
function Leg2Func()
l2=ch["Right Leg"]
l2.Name = "Right Legg"
l2.CanCollide = true
LG2.Part1 = nil
RLG.Part1 = l2
end
function Leg1Rem()
l1=ch["Left Legg"]
l1.Name = "Left Leg"
l1.CanCollide = false
LG1.Part1 = l1
LLG.Part1 = nil
end
function Leg2Rem()
l2=ch["Right Legg"]
l2.Name = "Right Leg"
l2.CanCollide = false
LG2.Part1 = l2
RLG.Part1 = nil
end
function Unequip()
RWRem()
LWRem()
HWRem()
HandleWeldLeft.Part0 = char.Torso
HandleWeldRight.Part0 = char.Torso
HandleWeldLeft.C0 = CF.Angles(math.rad(45),math.rad(180),0)
HandleWeldLeft.C1 = CF.new(-1,.6,-.7)
HandleWeldRight.C0 = CF.Angles(math.rad(45),math.rad(180),0)
HandleWeldRight.C1 = CF.new(1,.6,-.7)
pcall(function() char.Torso.TurnGyro:Remove() end)
end
Unequip()
function Equip()
HandleWeldLeft.C0 = CF.Angles(0,0,0)
HandleWeldLeft.C1 = CF.new(0,0,0)
HandleWeldRight.C0 = CF.Angles(0,0,0)
HandleWeldRight.C1 = CF.new(0,0,0)
HandleWeldRight.Part0 = HandRight
HandleWeldLeft.Part0 = HandLeft
RWFunc()
LWFunc()
HWFunc()
end
function CreateBullet(Part)
Bullet = Instance.new("Part",char.Torso)
Bullet.Name = "Bullet"
Bullet.formFactor = "Custom"
Bullet.CanCollide = false
Bullet.Anchored = true
Bullet.Size = V3(.2,.2,0.7)
Bullet.CFrame = Part.CFrame * CF.Angles(270,0,0)
Bullet.Anchored = true
Bullet.BrickColor = BrickColor.new("Silver")
Bullet.Reflectance = 0.3
Bullet:BreakJoints()
--M = Instance.new("SpecialMesh",Bullet)
--M.MeshType = "Sphere"
table.insert(BulletTable,Bullet)
game.Debris:AddItem(Bullet,10)
end
function DisplayDamage(dmg,head)
if head and dmg then
local Model = Instance.new("Model")
local Part = Instance.new("Part",Model)
local Human = Instance.new("Humanoid")
Instance.new("BlockMesh",Part)
--
Model.Name = tostring(dmg)
Human.Parent = Model
Human.MaxHealth = 0
Human.Health = 0
Part.formFactor = "Custom"
Part.Size = Vector3.new(0.8,0.3,0.8)
Part.CanCollide=false
Part.CFrame = CFrame.new(head.Position) * CFrame.new(0, 3, 0)
Part.Name = "Head"
if Model.Name:find("Critical") then
Part.BrickColor = BrickColor.new("Bright yellow")
else
Part.BrickColor = BrickColor.new("Really red")
end
local bp = Instance.new("BodyPosition")
bp.P = 14000
bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
bp.position = head.Position + Vector3.new(math.random(1,6), math.random(5,7), math.random(1,6))
coroutine.resume(coroutine.create(function()
wait()
Model.Parent = workspace
bp.Parent = Part
wait(1.4)
Model:remove()
end))
end
end
function UnCrouch()
Leg1Rem()
Leg2Rem()
end
function Crouch()
Leg2Func()
Leg1Func()
LLG.C1 = CF.new(.5,.5,1.5) * CF.Angles(math.rad(90),0,0)
RLG.C1 = CF.new(-.5,1,1) * CF.Angles(math.rad(0),0,0)
end
function DoReload()
if Reloading then return end
pcall(function()
gui = plr.PlayerGui:findFirstChild("Ammo")
for i,v in pairs(gui:GetChildren()) do
if v.Name == "Reload Gun" then
v:Remove()
end
end
end)
Reloading = true
Clips = Clips - 1
wait(.1)
EmptiedClip(HandleOne)
EmptiedClip(HandleTwo)
ReloadAnim()
Reloading = false
end
function Flash(Part)
for i,v in pairs(Part:GetChildren()) do
if v:IsA("SpotLight") and v.Name ~= "Safe" then
v.Enabled = true
coroutine.resume(coroutine.create(function()
wait(0.1)
v.Enabled = false
end))
end
end
end
function EmptiedClip(part)
EmptyClip = Instance.new("Part",MainModel)
EmptyClip.Name = "EmtpyClip"
EmptyClip.formFactor = "Custom"
EmptyClip.BrickColor = BrickColor.new("Really Gold")
EmptyClip.CanCollide = true
EmptyClip.Reflectance = .1
EmptyClip.Size = part.Size - Vector3.new(0.1,0.1,0.1)
EmptyClip.CFrame = part.CFrame * CF.Angles(0,0,0)
EmptyClip:BreakJoints()
game.Debris:AddItem(EmptyClip,6)
Instance.new("BlockMesh",EmptyClip)
end
function WarnLow()
pg = plr.PlayerGui:findFirstChild("Ammo")
if pg then
Warn = Instance.new("TextLabel",pg)
Warn.Name = "Reload Gun"
Warn.Font = "ArialBold"
Warn.FontSize = "Size24"
Warn.Position = UDim2.new(0.5,0,0.5,0)
Warn.Text = "Reload (r)"
Warn.TextColor3 = BrickColor.new("Bright red").Color
game.Debris:AddItem(Warn,2)
end
end
function AddShell(Part)
Shell = Instance.new("Part",MainModel)
Shell.Name = "Shell"
Shell.formFactor = "Custom"
Shell.BrickColor = BrickColor.new("Really Gold")
Shell.CanCollide = true
Shell.Size = V3(.1,.35,.1)
Shell.CFrame = Part.CFrame
Shell:BreakJoints()
Instance.new("CylinderMesh",Shell)
game.Debris:AddItem(Shell,5)
end
function RemoveLS()
god,err = ypcall(function()
for i,v in pairs(Lasers) do
pcall(function()
if v:IsA("BasePart") then
pcall(function()
v:Remove()
end)
elseif type(v) == "userdata" then
pcall(function()
v:disconnect()
end)
end
end)
end
end)
if err then print(err) end
Lasers = {}
end
function lerp(a,b,c)
return a+(b-a)*c
end
function AnimLerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do com1[i] = lerp(v,com2[i],al) end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
function ReloadAnim()
OldCf = RW.C0
OldCf2 = LW.C0
OldCf3 = HW.C0
--[[
HW.C0 = CFrame.new(Vector3.new(0, .8, 0), point * Vector3.new(1, 1, (point.Z >= 0 and 0 or 1)))
]]--
pcall(function()
Hman = plr.Character:findFirstChild("Humanoid")
OldWalk = Hman.WalkSpeed
Hman.WalkSpeed = Hman.WalkSpeed/2
end)
for i,v in pairs(char.Torso:GetChildren()) do
if v:IsA("BodyGyro") then
v:Remove()
end
end
for i=0,1,0.1 do
wait(0.02)
LW.C0 = AnimLerp(LW.C0,CFrame.new(-1.2,.5,0) * CFrame.Angles(math.rad(90),0,math.rad(0)),0.2)
HW.C0 = AnimLerp(HW.C0,CFrame.new(0,.8,0) * CFrame.Angles(math.rad(-10),0,0),0.2)
end
for i=0,1,0.05 do
wait()
RW.C0 = AnimLerp(RW.C0,CFrame.new(1,.5,0) * CFrame.Angles(math.rad(90),0,math.rad(-60)),0.2)
HW.C0 = AnimLerp(HW.C0,CFrame.new(0,.8,0) * CFrame.Angles(math.rad(-10),math.rad(20),0),0.2)
end
for i=0,1,0.05 do
wait()
RW.C0 = AnimLerp(RW.C0,CFrame.new(1,.5,0) * CFrame.Angles(math.rad(90 - 20),0,math.rad(-60)),0.2)
end
for i=0,1,0.05 do
wait()
RW.C0 = AnimLerp(RW.C0,CFrame.new(1,.5,0) * CFrame.Angles(math.rad(70 + 20),0,math.rad(-60)),0.2)
end
WPA4.C1 = CF.new(0,0,0)
for i=0,1,0.05 do
wait()
RW.C0 = AnimLerp(RW.C0,CFrame.new(1.2,.5,0) * CFrame.Angles(math.rad(90),0,math.rad(0)),0.2)
end
for i=0,1,0.1 do
wait(0.02)
LW.C0 = AnimLerp(LW.C0,CFrame.new(-1,.5,0) * CFrame.Angles(math.rad(90),0,math.rad(60)),0.2)
HW.C0 = AnimLerp(HW.C0,CFrame.new(0,.8,0) * CFrame.Angles(math.rad(-10),math.rad(-20),0),0.2)
end
for i=0,1,0.1 do
wait(0.02)
LW.C0 = AnimLerp(LW.C0,CFrame.new(-1,.5,0) * CFrame.Angles(math.rad(90 - 20),0,math.rad(60)),0.2)
end
for i=0,1,0.1 do
wait(0.02)
LW.C0 = AnimLerp(LW.C0,CFrame.new(-1,.5,0) * CFrame.Angles(math.rad(70 + 20),0,math.rad(60)),0.2)
end
WPB4.C1 = CF.new(0,0,0)
Bullets = 20
UpdateBullets()
for i=0,1,0.1 do
wait(0.02)
LW.C0 = AnimLerp(LW.C0,OldCf2,0.2)
RW.C0 = AnimLerp(RW.C0,OldCf,0.2)
HW.C0 = AnimLerp(HW.C0,OldCf3,0.2)
end
pcall(function()
Hman = plr.Character:findFirstChild("Humanoid")
Hman.WalkSpeed = OldWalk
end)
end
Bin.Selected:connect(function(mouse)
function MLS()
PB25 = AddPart("Part",GunModelTwo,.1,.35,.1,LaserColor)
PB25.Mesh:Remove()
PB25.Anchored = true
PB25.Transparency = 0.4
Instance.new("CylinderMesh",PB25).Scale = Vector3.new(0.5,1,0.5)
PA25 = AddPart("Part",GunModelOne,.1,.35,.1,LaserColor)
PA25.Mesh:Remove()
PA25.Transparency = 0.4
PA25.Anchored = true
Instance.new("CylinderMesh",PA25).Scale = Vector3.new(0.5,1,0.5)
Delay(0,function()
con = game:service("RunService").Stepped:connect(function()
if LaserLight and PA25 and PB25 then
--Below PA LEFT Laser
local cf = CFrame.new(Vector3.new(0,0,0),PA24.CFrame.lookVector)
ray1 = Ray.new(PA24.CFrame.p,cf.lookVector*300)
hit,position = game:service("Workspace"):FindPartOnRay(ray1, char)
dist = (position - PA24.CFrame.p).magnitude
PA25.Size = Vector3.new(PA24.Size.X,dist,PA24.Size.Z)
PA25.CFrame = CFrame.new((position+PA24.CFrame.p)/2, PA24.CFrame.p) * CFrame.Angles(math.rad(270),0,0)
--Now PB RIGHT Laser
local cf = CFrame.new(Vector3.new(0,0,0),PB24.CFrame.lookVector)
ray1 = Ray.new(PB24.CFrame.p,cf.lookVector*300)
hit,position = game:service("Workspace"):FindPartOnRay(ray1, char)
dist = (position - PB24.CFrame.p).magnitude
PB25.Size = Vector3.new(PB24.Size.X,dist,PB24.Size.Z)
PB25.CFrame = CFrame.new((position+PB24.CFrame.p)/2, PB24.CFrame.p) * CFrame.Angles(math.rad(270),0,0)
end
end)
end)
table.insert(Lasers,con)
table.insert(Lasers,PA25)
table.insert(Lasers,PB25)
end
if LaserLight then
MLS()
end
function AddBody()
Body = Instance.new("BodyGyro",char["Torso"])
Body.P = 200000
Body.maxTorque = V3(1,1,1)/0
return Body
end
Debug = true
Equip()
Gui = Instance.new("ScreenGui",plr.PlayerGui)
Gui.Name = "Ammo"
Frame = Instance.new("Frame",Gui)
Frame.Name = "MainFrame"
Frame.Size = UDim2.new(.15,0,.1,0)
Frame.Position = UDim2.new(0.85,0,0.75,0)
Frame.BackgroundTransparency = 0.2
Frame.BackgroundColor = BrickColor.new("Silver")
Frame.Active = true
Frame.Draggable = true
Dis = Instance.new("TextLabel",Frame)
Dis.Name = "Real Numbers"
Dis.Font = "ArialBold"
Dis.FontSize = "Size24"
Dis.Position = UDim2.new(0.5,0,0.5,0)
Dis.TextColor3 = BrickColor.new("Really Gold").Color
Dis.Text = Bullets.."/"..Clips
Cred = Instance.new("TextLabel",Frame)
Cred.Name = "Credz"
Cred.Font = "ArialBold"
Cred.FontSize = "Size12"
Cred.Position = UDim2.new(0.5,0,0.05,0)
Cred.Text = "Ma".."de B".."y"..": ".."Fr".."o".."st".."ftw"
Cred.TextColor3 = BrickColor.new("Really Gold").Color
function UpdateBullets()
Dis.Text = Bullets.."/"..Clips
end
Delay(0,function()
torso = char["Torso"]
mouse.Move:connect(function()
if Reloading then
return
end
Body = char.Torso:findFirstChild("BodyGyro") or AddBody()
x = math.pi/2
Left = false
Right = false
local point = torso.CFrame:pointToObjectSpace(mouse.Hit.p)
RW.C0 = CFrame.new(Vector3.new(1.2, .5, 0), point * Vector3.new(1, 1, (point.Z >= 0 and 0 or 1))) * CFrame.Angles(x,0,0)
LW.C0 = CFrame.new(Vector3.new(-1.2, .5, 0), point * Vector3.new(1, 1, (point.Z >= 0 and 0 or 1))) * CFrame.Angles(x,0,0)
HW.C0 = CFrame.new(Vector3.new(0, .8, 0), point * Vector3.new(1, 1, (point.Z >= 0 and 0 or 1)))
if point.Z > -5 then
if point.X > 0 then
Left = true
elseif point.X < 0 then
Right = true
end
end
if Right then
Body.cframe = torso.cFrame * CF.Angles(0,math.rad(15),math.rad(0))
elseif Left then
Body.cframe = torso.CFrame * CF.Angles(0,math.rad(-15),math.rad(0))
else
Body.cframe = torso.CFrame
end
end)
end)
mouse.KeyDown:connect(function(Key)
if Key == "c" then
if Debug == true then
Crouch()
Debug = false
elseif Debug == false then
UnCrouch()
Debug = true
end
elseif Key == "l" then
if LaserLight then
LaserLight = false
RemoveLS()
elseif not LaserLight then
LaserLight = true
MLS()
end
elseif Key == "r" then
DoReload()
elseif Key == "f" then
if FlashLight == true then
FlashLight = false
L3.Enabled = false
L4.Enabled = false
elseif FlashLight == false then
FlashLight = true
L3.Enabled = true
L4.Enabled = true
end
end
end)
mouse.KeyUp:connect(function()
end)
mouse.Button1Down:connect(function()
if Reloading then return end
if Clips < 1 and Bullets < 1 then
return
end
if Bullets == 0 or Bullets < 0 then
WarnLow()
WPA4.C1 = CF.new(0,0,-.2)
WPB4.C1 = CF.new(0,0,-.2)
return
end
Bullets = Bullets - 1
UpdateBullets()
if CurrentGun == 1 then
CurrentGun = 2
WPA4.C1 = CF.new(0,0,-.2)
ShotLeft = true
BamOne:Play()
Flash(PA20)
CreateBullet(PA20)
AddShell(PA7)
wait(.2)
WPA4.C1 = CF.new(0,0,0)
elseif CurrentGun == 2 then
CurrentGun = 1
ShotRight = true
WPB4.C1 = CF.new(0,0,-.2)
BamTwo:Play()
Flash(PB20)
CreateBullet(PB20)
AddShell(PB7)
wait(.2)
WPB4.C1 = CF.new(0,0,0)
end
end)
end)
Bin.Deselected:connect(function(mouse)
Unequip()
RemoveLS()
L3.Enabled = false
L4.Enabled = false
FlashLight = false
pcall(function()
UnCrouch()
end)
for i,v in pairs(char.Torso:GetChildren()) do
if v:IsA("BodyGyro") then
v:Remove()
end
end
for i=1,5 do
pcall(function() plr.PlayerGui["Ammo"]:Remove() end)
end
end)
Delay(0,function()
BulletSpeed = 20
Twirl = 0.2
game:service("RunService").Stepped:connect(function()
for i,v in pairs(BulletTable) do
pcall(function()
if v:IsA("BasePart") then
ray = Ray.new(v.Position, v.CFrame.lookVector*(0.5+BulletSpeed))
v.CFrame = v.CFrame * CFrame.new(0,0,-BulletSpeed) * CFrame.Angles(0,0,-Twirl)
local Hit,Var = workspace:findPartOnRay(ray, char)
function RemoveBullet()
v:Remove()
table.remove("BulletTable", i)
end
if Hit and Hit.Parent then
local Human = Hit.Parent:findFirstChild("Humanoid")
local Head = Hit.Parent:findFirstChild("Head")
local Torso = Hit.Parent:findFirstChild("Torso")
if v.Parent ~= char.Torso then
v:Remove()
table.remove(BulletTable, i)
end
if Hit.Parent:IsA("Hat") then
local Human = Hit.Parent.Parent:findFirstChild("Humanoid")
local Head = Hit.Parent.Parent:findFirstChild("Head")
local Torso = Hit.Parent.Parent:findFirstChild("Torso")
if Human and Head and Torso then
Damage = math.random(10000,10000)
Human:TakeDamage(Damage)
if Human.Health < 1 then
Obj = Instance.new("ObjectValue",Human)
Obj.Name = "creator"
Obj.Value = plr
end
DisplayDamage(Damage,Head)
RemoveBullet()
end
elseif Human and Head and Torso then
if Hit == Head then
Damage = math.random(15,20)
else
Damage = math.random(15,20)
end
Human:TakeDamage(Damage)
if Human.Health < 1 then
Obj = Instance.new("ObjectValue",Human)
Obj.Name = "creator"
Obj.Value = plr
end
DisplayDamage(Damage,Head)
RemoveBullet()
elseif Hit then
RemoveBullet()
end
end
end
end)
end
end)
end)
end}
module[4] = {"Dual Swords",function()
local Me = game.Players.LocalPlayer 


if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Swords"
    script.Parent = h
end


char = Me.Character
Torso = char.Torso
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
local bin = script.Parent

pcall(function() char[":P"]:remove() end)

local Model = Instance.new("Model",char)
Model.Name = ":P"

local RAB = Instance.new("Part") -- Right Arm Brick
RAB.formFactor = "Custom"
RAB.Size = Vector3.new(0.2, 0.2, 0.2)
RAB.Transparency = 1
RAB.Parent = Model
RAB:BreakJoints()

local RABW = Instance.new("Weld",RAB) -- Right Arm Brick Weld
RABW.Part0 = Torso
RABW.Part1 = RAB
RABW.C1 = CFrame.new(-1.5, -0.5, 0)

local LAB = Instance.new("Part") -- Right Arm Brick
LAB.formFactor = "Custom"
LAB.Size = Vector3.new(0.2, 0.2, 0.2)
LAB.Transparency = 1
LAB.Parent = Model
LAB:BreakJoints()

local LABW = Instance.new("Weld",LAB) -- Left Arm Brick Weld
LABW.Part0 = Torso
LABW.Part1 = LAB
LABW.C1 = CFrame.new(1.5, -0.5, 0)

local RAW = Instance.new("Weld",RAB) -- Right Arm Weld
RAW.Part0 = RAB
RAW.Part1 = nil
RAW.C1 = CFrame.new(0, 0.5, 0)

local LAW = Instance.new("Weld",LAB) -- Left Arm Weld
LAW.Part0 = LAB
LAW.Part1 = nil
LAW.C1 = CFrame.new(0, 0.5, 0)

mo = Instance.new("Model") 
mo.Name = "Swords" 
mo.Parent = Me.Character

function new(part, x, y, z, parent, color) 
local brick = part 
brick.formFactor = "Custom" 
brick:BreakJoints() 
brick.CanCollide = false 
brick.Size = Vector3.new(x, y, z) 
brick.Parent = parent 
brick.BrickColor = BrickColor.new(color) 
end 
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
function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end
function mes(mesh, x, y, z, parent) 
local mes = mesh 
mes.Scale = Vector3.new(x, y, z) 
mes.Parent = parent 
end 
function wel(weld, x, y, z, parent, part, parta, xx, yy, zz) 
local wel = weld 
wel.Parent = parent 
wel.Part0 = part 
wel.Part1 = parta 
wel.C1 = CFrame.new(x, y, z) * CFrame.Angles(xx, yy, zz) 
end 

h2 = Instance.new("Part") 
hm2 = Instance.new("BlockMesh") 
hw2 = Instance.new("Weld") 
new(h2, 0.75, 0.2, 0.2, mo, "Brown") 
mes(hm2, 1.01, 1.01, 1.01, h2) 
wel(hw2, 0, -2.1, -0.51, h2, Torso, h2, 0, 0, -5.5) 
h4 = Instance.new("Part") 
hm4 = Instance.new("SpecialMesh") 
hw4 = Instance.new("Weld") 
new(h4, 0.35, 1, 0.2, mo, "Brown") 
mes(hm4, 1.01, 1.01, 1.01, h4) 
wel(hw4, 0, -0.5, 0, h4, h2, h4, 0, 0, 0) 
h1 = Instance.new("Part") 
hm1 = Instance.new("BlockMesh") 
hw1 = Instance.new("Weld") 
new(h1, 0.75, 0.2, 0.2, mo, "Brown") 
mes(hm1, 1.01, 1.01, 1.01, h2) 
wel(hw1, 0, -2.1, -0.5, h1, Torso, h1, 0, 0, 5.5) 
h4 = Instance.new("Part") 
hm4 = Instance.new("SpecialMesh") 
hw4 = Instance.new("Weld") 
new(h4, 0.35, 1, 0.2, mo, "Brown") 
mes(hm4, 1.01, 1.01, 1.01, h4) 
wel(hw4, 0, -0.5, 0, h4, h1, h4, 0, 0, 0) 
p = Instance.new("Part") 
m = Instance.new("BlockMesh") 
w = Instance.new("Weld") 
new(p, 0.75, 4, 0.2, mo, "Gray") 
mes(m, 1.01, 1.01, 1.01, p) 
wel(w, 0, 2.1, 0, p, h1, p, 0, 0, 0) 
p2 = Instance.new("Part") 
m2 = Instance.new("BlockMesh") 
w2 = Instance.new("Weld") 
new(p2, 0.75, 4, 0.2, mo, "Gray") 
mes(m2, 1.01, 1.01, 1.01, p2) 
wel(w2, 0, 2.1, 0, p2, h2, p2, 0, 0, 0) 

function fade(brick,mesh,scale,tran,speed)
coroutine.resume(coroutine.create(function()
for i=tran,1,speed do
wait()
brick.Transparency = i
mesh.Scale = mesh.Scale - Vector3.new(scale,scale,scale)
end
brick:remove()
end))
end

function bv(part) 
b = Instance.new("BodyVelocity") 
b.Parent = part 
b.velocity = Vector3.new(0, 25, 0) 
wait(1.5) 
b.velocity = Vector3.new(0, -75, 0) 
wait(0.285) 
b:remove() 
end 
function bvc(part) 
b = Instance.new("BodyVelocity") 
b.Parent = part 
b.velocity = part.CFrame.lookVector * 25
wait(1.5) 
b:remove() 
end 

function spikes(part,color)
local p = Instance.new("Part",Me.Character)
prop(p,Me.Character,false,0.4,0,0.2,0.2,0.2,color,true,"Custom")
p.CFrame = part.CFrame * CFrame.new(0,-2.5,-3.5)
local mww = Instance.new("SpecialMesh")
mesh(mww,p,6,5,6,"FileMesh")
mww.MeshId = "http://www.roblox.com/asset/?id=20329976"
fade(p,mww,0.55,p.Transparency,0.08)
end

function spikes2(part,color)
local p = Instance.new("Part",Me.Character)
prop(p,Me.Character,false,0.4,0,0.2,0.2,0.2,color,true,"Custom")
p.CFrame = part.CFrame * CFrame.new(0,0,6) * CFrame.Angles(math.pi/2,0,0)
local mww = Instance.new("SpecialMesh")
mesh(mww,p,8,7,8,"FileMesh")
mww.MeshId = "http://www.roblox.com/asset/?id=20329976"
fade(p,mww,0.55,p.Transparency,0.06)
end


function onSelected(mouse)

RAW.Part1 = Rarm
LAW.Part1 = Larm

for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(210*i), math.rad(-12*i), math.rad(12*i)) 
LAW.C0 = CFrame.Angles(math.rad(210*i), math.rad(12*i), math.rad(-12*i)) 
wait()
end

h1.Weld.Part0 = Larm 
h1.Weld.C1 = CFrame.new(0, 1, -1) * CFrame.Angles(-7.8, 0, 0) 
h2.Weld.Part0 = Rarm 
h2.Weld.C1 = CFrame.new(0, 1, -1) * CFrame.Angles(-7.8, 0, 0) 

for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(210-185*i), math.rad(-12+12*i), math.rad(12*i)) 
LAW.C0 = CFrame.Angles(math.rad(210-185*i), math.rad(12-12*i), math.rad(-12*i)) 
wait()
end

--[[ for i = 0, 1, 0.05 do
RAW.C0 = CFrame.Angles(math.rad(90-110*i), 0, math.rad(35*i))
wait()
end
for i = 0, 1, 0.15 do
RAW.C0 = CFrame.Angles(math.rad(175-175*i), 0, math.rad(35-35*i))
wait()
end ]]-- 

    mouse.Button1Down:connect(function()
for i = 0, 1, 0.15 do
LAW.C0 = CFrame.Angles(math.rad(90-110*i), math.rad(-12*i), math.rad(-12*i))
wait()
end
spikes(Torso, "Bright blue") 
local dist = 5
for _, v in pairs(game.Players:GetChildren()) do
		if not v.Character then return end
		if (v.Character.Torso.Position - p.Position).magnitude < dist then
			if v.Name ~= Torso.Parent.Name then
				v.Character.Humanoid.Health = v.Character.Humanoid.Health - math.random(15, 35) 
			end
		end
	end
for i = 0, 1, 0.15 do
LAW.C0 = CFrame.Angles(math.rad(-20+20*i), math.rad(-12*i), math.rad(-12*i))
wait()
end
    end)
    mouse.Button2Down:connect(function()
for i = 0, 1, 0.15 do
RAW.C0 = CFrame.Angles(math.rad(90-110*i), math.rad(12*i), math.rad(12*i))
wait()
end
spikes(Torso, "Bright blue") 
local dist = 5
for _, v in pairs(game.Players:GetChildren()) do
		if not v.Character then return end
		if (v.Character.Torso.Position - p.Position).magnitude < dist then
			if v.Name ~= Torso.Parent.Name then
				v.Character.Humanoid.Health = v.Character.Humanoid.Health - math.random(15, 35) 
			end
		end
	end
for i = 0, 1, 0.15 do
RAW.C0 = CFrame.Angles(math.rad(-20+20*i), math.rad(12*i), math.rad(12*i))
wait()
end
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
for i = 0, 1, 0.15 do
RAW.C0 = CFrame.Angles(math.rad(150-110*i), math.rad(12*i), math.rad(12*i))
LAW.C0 = CFrame.Angles(math.rad(150-110*i), math.rad(-12*i), math.rad(-12*i))
wait()
end
spikes2(Torso, "Bright blue") 
bv(Torso) 
wait(0.75) 
spikes(Torso, "Bright blue") 
local dist = 5
for _, v in pairs(game.Players:GetChildren()) do
		if not v.Character then return end
		if (v.Character.Torso.Position - p.Position).magnitude < dist then
			if v.Name ~= Torso.Parent.Name then
				v.Character.Humanoid.Health = v.Character.Humanoid.Health - math.random(25, 45) 
			end
		end
	end
for i = 0, 1, 0.15 do
RAW.C0 = CFrame.Angles(math.rad(-20+20*i), math.rad(12*i), math.rad(12*i))
LAW.C0 = CFrame.Angles(math.rad(-20+20*i), math.rad(-12*i), math.rad(-12*i))
wait()
end
	end 
        if key == "e" then 
for i = 0, 1, 0.15 do
RAW.C0 = CFrame.Angles(math.rad(150-110*i), math.rad(12*i), math.rad(12*i))
LAW.C0 = CFrame.Angles(math.rad(150-110*i), math.rad(-12*i), math.rad(-12*i))
wait()
end
spikes2(Torso, "Bright blue") 
bvc(Torso) 
wait(0.75) 
spikes(Torso, "Bright blue") 
local dist = 5
for _, v in pairs(game.Players:GetChildren()) do
		if not v.Character then return end
		if (v.Character.Torso.Position - p.Position).magnitude < dist then
			if v.Name ~= Torso.Parent.Name then
				v.Character.Humanoid.Health = v.Character.Humanoid.Health - math.random(25, 45) 
			end
		end
	end
for i = 0, 1, 0.15 do
RAW.C0 = CFrame.Angles(math.rad(-20+20*i), math.rad(12*i), math.rad(12*i))
LAW.C0 = CFrame.Angles(math.rad(-20+20*i), math.rad(-12*i), math.rad(-12*i))
wait()
end
	end 
    end)
end

function onDesel(mouse)
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(210*i), math.rad(-12*i), math.rad(12*i)) 
LAW.C0 = CFrame.Angles(math.rad(210*i), math.rad(12*i), math.rad(-12*i)) 
wait()
end
h1.Weld.Part0 = Torso 
h1.Weld.C1 = CFrame.new(0, -2.1, -0.51) * CFrame.Angles(0, 0, 5.5) 
h2.Weld.Part0 = Torso 
h2.Weld.C1 = CFrame.new(0, -2.1, -0.51) * CFrame.Angles(0, 0, -5.5) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(-12+12*i), math.rad(12-12*i)) 
LAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(12-12*i), math.rad(-12+12*i)) 
wait()
end
RAW.Part1 = nil
LAW.Part1 = nil
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
end}

 
 

module[1] = {"A.X.R Crater",function()
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

local TrailColor = ("Dark grey")
 
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

--Example: Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)


function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
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
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Hitbox.BrickColor.Color)
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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Handle",Vector3.new(0.60551995, 0.269119978, 0.200000003))
Handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.795875549, -0.616287231, 0.00760650635, -4.06663814e-009, 0.498903632, 0.866652966, 2.08201634e-009, -0.866652548, 0.498904079, 0.999992132, 3.83054477e-009, 2.48540166e-009))
Barrel=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Barrel",Vector3.new(0.336399913, 0.200000003, 0.403679967))
Barrelweld=weld(m,Handle,Barrel,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.312599182, -3.04084301, -0.00192260742, 0.866652429, 0.498903751, 2.32525288e-009, -0.498903215, 0.866651833, -6.91664725e-010, -2.36209452e-009, -5.58050939e-010, 0.99999094))
mesh("CylinderMesh",Barrel,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.403679907, 0.538239956, 0.403679967))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318908691, -2.1293807, -0.00379943848, 0.866652429, 0.498903751, 2.27182828e-009, -0.498903215, 0.866651833, 8.23071211e-009, 2.13564766e-009, -8.26406144e-009, 0.99999094))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.201839954, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.485198975, -0.112598419, -0.170608521, 0.866652429, 0.498903751, 1.90404603e-009, -0.498903215, 0.866651773, -9.24883459e-009, -6.26629104e-009, 7.06824999e-009, 0.999990821))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.672800004, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.269119978, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00299072266, -2.43161249, -0.0494918823, 4.00664067e-006, 2.29826651e-006, 0.99999094, -0.498903215, 0.866651833, 7.1333246e-009, -0.866652429, -0.498903751, 4.61897753e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 0.672800004))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.403679907, 0.269119978, 0.403679967))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318893433, -2.93703985, -0.00373840332, 0.866652429, 0.498903751, 1.76599568e-009, -0.498903215, 0.866651833, 7.95978394e-009, 2.43890108e-009, -7.77687248e-009, 0.99999094))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.403679907, 0.403679967, 0.403679967))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318466187, -1.86047745, -0.00106048584, 0.866650403, 0.498902589, 2.46652054e-009, -0.498901695, 0.866649151, -5.77466075e-009, -5.02151831e-009, 3.77818843e-009, 0.999985576))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.269119978, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0176925659, 0.00497436523, -0.210002899, 0.866652429, 0.498903751, 3.26658434e-009, 1.17902363e-008, -1.39329055e-008, -0.999990821, -0.498903215, 0.866651773, -1.79540258e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672799945, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.170783997, 0.112445831, 0.619483948, -3.24811595e-006, 5.63719959e-006, 0.999990821, 0.498903215, -0.866651773, 6.50599031e-006, 0.866652429, 0.498903751, 2.56824162e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.672799766, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.470959932, 0.200000003, 0.538240016))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318893433, -2.76884508, -0.00373840332, 0.866652429, 0.498903751, 1.76599568e-009, -0.498903215, 0.866651833, 7.95978394e-009, 2.43890108e-009, -7.77687248e-009, 0.99999094))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0154266357, -1.96068239, -0.00351715088, 0.866652429, 0.498903751, 2.26011188e-009, -0.498903215, 0.866651833, -7.97681921e-011, -2.00035988e-009, -1.05585696e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.336399913, 0.200000003, 0.403679967))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318252563, -1.35538101, -0.00323486328, 0.866652429, 0.498903751, 2.26594099e-009, -0.498903215, 0.866651833, -1.6442292e-010, -2.04764627e-009, -9.85398652e-010, 0.99999094))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.201839954, 0.403679967, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.215965271, -0.380897522, 0.164527893, 0.866652429, 0.498903751, 2.28638819e-009, -0.498903215, 0.866651773, -1.34231595e-008, -8.68025474e-009, 1.04952145e-008, 0.99999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0154266357, -2.22983122, -0.00350952148, 0.866652429, 0.498903751, 2.26122032e-009, -0.498903215, 0.866651833, -9.34297084e-011, -2.00813588e-009, -1.04457043e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0485839844, -0.478780746, -0.00545501709, 0.86665231, 0.498903781, 1.85937044e-009, -0.498903096, 0.866651654, -6.03485262e-010, -1.91434224e-009, -4.0203596e-010, 0.999990821))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672800004, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 1.07647991, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0827178955, -1.85979414, -0.00352478027, 0.866652429, 0.498903751, 2.25933605e-009, -0.498903215, 0.866651833, -7.67306219e-011, -1.99817207e-009, -1.05810338e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.201839939, 1.07647991, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.217285156, -1.85971975, -0.00333404541, 0.866643488, 0.498898774, 2.25623431e-009, -0.498896539, 0.866640627, -5.30833155e-011, -1.98837569e-009, -1.07037645e-009, 0.999968052))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.336399913, 0.201839983, 0.403679967))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318962097, -1.75922298, -0.00379943848, 0.866652429, 0.498903751, 2.27182828e-009, -0.498903215, 0.866651833, 8.23071211e-009, 2.13564766e-009, -8.26406144e-009, 0.99999094))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.269119978, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.051071167, 0.00290679932, -0.2449646, 0.86664921, 0.498901874, 3.64214658e-009, 1.54552833e-008, -1.95462313e-008, -0.999982953, -0.49890098, 0.866647959, -2.46445477e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672799945))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.60551995, 0.336399972, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.418212891, -0.347076416, -0.00260162354, 0.866652429, 0.498903751, 2.19306129e-009, -0.498903215, 0.866651773, -4.24318314e-009, -4.01941147e-009, 2.58586197e-009, 0.999990821))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.201839983, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0512695313, -0.34427166, -0.00487518311, 0.866652429, 0.498903751, 1.84118321e-009, -0.498903215, 0.866651773, -4.18982626e-010, -1.80652915e-009, -5.52863089e-010, 0.999990821))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.269120008, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00177764893, 0.548091888, -0.0154037476, 7.56223835e-006, -4.03065678e-006, -0.999992132, 0.498903811, -0.866652071, 7.26601274e-006, -0.866652608, -0.498904318, -4.54292012e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.403680056))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.587188721, -0.615654945, -0.00296020508, 0.866652429, 0.498903751, 2.32280994e-009, -0.498903215, 0.866651833, 4.00462197e-009, -1.69655401e-011, -4.62691307e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672799945, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.201839983, 0.269119889, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.823150635, -0.985249519, -0.0020904541, 0.866652429, 0.498903751, 2.33383957e-009, -0.498903215, 0.866651833, 2.51370436e-009, -7.70352893e-010, -3.34029848e-009, 0.99999094))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.269119978, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.051322937, 0.00497436523, -0.210004807, 0.866650403, 0.498902589, 3.26648864e-009, 1.17907248e-008, -1.39336134e-008, -0.999985576, -0.498901755, 0.86664921, -1.7953024e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.269119978, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0513305664, 0.00498199463, -0.479110718, 0.866651297, 0.498903036, 3.2652987e-009, 1.17921033e-008, -1.39385596e-008, -0.999988198, -0.498902291, 0.866650283, -1.79589303e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.302749634, 0.168193817, -1.7881311e-007, 3.24895666e-012, -0.999992132, -0.999996006, 1.58250332e-005, 1.78813991e-007, 1.65402889e-005, 0.999995947, 2.64410716e-012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672800064, 0.672799945, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.269119978, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.336380005, -7.62939453e-006, 0, 0.999996066, -8.73208046e-006, -5.59419178e-012, 9.56654549e-006, 0.999995708, 9.69091474e-012, 4.03987954e-012, -7.46358531e-012, 0.999992132))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.163887024, 0.111458778, -0.349739075, 8.04887259e-006, -1.38551368e-005, -0.999990821, 0.498901278, -0.866652668, 1.60232048e-005, -0.866653264, -0.498901874, -6.32306651e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.672799766, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, 0.302688599, 0.168170929, -4.75004663e-006, -1.30574485e-008, 0.999984264, -0.999992192, -7.06315041e-006, -4.75000525e-006, 5.87105751e-006, -0.999991894, -1.30275053e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672800064, 0.672799945, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.874640048, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00477600098, -0.398108482, 0.518852234, -3.22403184e-006, 5.62819969e-006, 0.99998951, 0.498902708, -0.866650999, 6.48617106e-006, 0.866651773, 0.498903364, -1.38144181e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672800183, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.450813293, -0.00280761719, 0.970563889, 0.866649687, 0.498902202, -3.31878525e-009, -1.51858579e-008, 1.97283327e-008, -0.999984264, -0.498901367, 0.866648614, 2.46792311e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.740079999, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0489349365, -0.209962845, -0.00468444824, 0.866652429, 0.498903751, 1.91206961e-009, -0.498903215, 0.866651773, -1.19068244e-009, -2.25297092e-009, 8.05715494e-011, 0.999990821))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672800004, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0154342651, -1.55697966, -0.00353240967, 0.866652429, 0.498903751, 2.2578952e-009, -0.498903215, 0.866651833, -5.24460475e-011, -1.98480765e-009, -1.07843046e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.383544922, -0.00280761719, 0.903319359, 0.866649687, 0.498902202, -3.31878658e-009, -1.51858668e-008, 1.9728347e-008, -0.999984264, -0.498901367, 0.866648614, 2.46792453e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.740079999, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.336399972, 0.740079939, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.317024231, 0.463025093, 0.00568389893, 0.866651773, 0.498903364, -1.41873482e-008, -0.498902708, 0.866650999, 1.34257672e-009, 1.29633655e-008, 5.91760863e-009, 0.99998951))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.181915283, -0.00157928467, 0.9055233, 0.866649687, 0.498902202, -1.50724624e-008, -1.99105337e-008, 4.37652004e-009, -0.999984264, -0.498901367, 0.866648614, 1.37317357e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.740079999, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.538240016, 0.269119918, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.283424377, 0.967119217, 0.00565338135, 0.866651773, 0.498903364, -1.33492808e-008, -0.498902708, 0.866650999, -9.34748989e-009, 6.90391699e-009, 1.4763736e-008, 0.99998951))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.672800243))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.18196106, -0.00176239014, 1.03994465, 0.866649687, 0.498902202, -3.39995543e-009, -1.34551961e-008, 1.65592748e-008, -0.999984264, -0.498901367, 0.866648614, 2.10693365e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.740079999, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.383544922, -0.00280761719, 1.03783798, 0.866649687, 0.498902202, -3.31878436e-009, -1.51858544e-008, 1.97283274e-008, -0.999984264, -0.498901367, 0.866648614, 2.46792276e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.740079999, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.269119978, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0176849365, -0.00373840332, 0.479958534, 0.866652429, 0.498903751, 1.34677836e-009, -1.69635683e-008, 2.67676299e-008, 0.999990821, 0.498903215, -0.866651773, 3.16582707e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672799945, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00584411621, 0.767393112, 0.51902771, -1.75444547e-005, 2.97711194e-005, -0.999984264, -0.498901367, 0.866648614, 3.45541339e-005, 0.866649687, 0.498902202, -3.52023733e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672800183, 0.672800303, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0154266357, -2.0952754, -0.00350952148, 0.866652429, 0.498903751, 2.26122032e-009, -0.498903215, 0.866651833, -9.34297084e-011, -2.00813588e-009, -1.04457043e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.114692688, -0.00176239014, 0.972790718, 0.866649687, 0.498902202, -1.50588342e-008, -1.99821741e-008, 4.52828131e-009, -0.999984264, -0.498901367, 0.866648614, 1.3898994e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.740079999, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.740080059, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00510406494, 0.465695381, -0.115463257, 2.18699406e-005, 6.31612638e-005, 0.999984264, -0.498902321, 0.866648078, -4.38276911e-005, -0.866649151, -0.498903215, 5.0464856e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672800183, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.269119978, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0513381958, -0.00524139404, 0.445455551, 0.866652787, 0.49890396, 1.17300525e-009, -1.69591043e-008, 2.71082641e-008, 0.999992132, 0.498903453, -0.86665225, 3.19517284e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672799945))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.336399943, 0.403679967, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.484809875, -0.380900383, 0.164237976, 0.866652429, 0.498903751, 2.2979687e-009, -0.498903215, 0.866651773, -1.35429508e-008, -8.75005668e-009, 1.05932561e-008, 0.99999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.201840073, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00735473633, 0.734195709, -0.0823898315, 2.1904385e-005, 6.32324809e-005, 0.999984264, -0.498902321, 0.866648078, -4.38722309e-005, -0.866649151, -0.498903215, 5.05302487e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.672800183, 1, 0.672799945))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0154266357, -1.69153118, -0.00353240967, 0.866652429, 0.498903751, 2.2578952e-009, -0.498903215, 0.866651833, -5.24460475e-011, -1.98480765e-009, -1.07843046e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0154190063, -2.36441898, -0.00350189209, 0.866652429, 0.498903751, 2.26232877e-009, -0.498903215, 0.866651833, -1.07091891e-010, -2.01591321e-009, -1.03328279e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0154266357, -1.42240477, -0.00354003906, 0.866652429, 0.498903751, 2.25678676e-009, -0.498903215, 0.866651833, -3.87858634e-011, -1.97703143e-009, -1.08971654e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.672799945, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.385620117, -0.547970772, -0.00156402588, 0.866652787, 0.49890396, 2.34176123e-009, -0.498903453, 0.86665225, -5.86418292e-009, -4.95674879e-009, 3.91615185e-009, 0.999992132))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.41040799, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.485694885, 0.00344848633, -0.110714912, 0.866651773, 0.498903364, 2.06490092e-009, 1.67378111e-009, 1.23195965e-009, -0.99998951, -0.498902708, 0.866650999, 2.36235476e-010))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.41040799, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.552970886, 0.00350952148, -0.243771553, 0.866652429, 0.498903751, 2.00843564e-009, 2.69502953e-009, -6.55322685e-010, -0.999990821, -0.498903215, 0.866651773, -1.90933624e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.164108276, 0.111265182, 0.618415833, -3.24156326e-006, 5.62580908e-006, 0.999990821, 0.498903096, -0.866651654, 6.49284902e-006, 0.86665231, 0.498903781, 2.57243071e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.672799766, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0154190063, -1.82610416, -0.00352478027, 0.866652429, 0.498903751, 2.25900343e-009, -0.498903215, 0.866651833, -6.61066757e-011, -1.99258321e-009, -1.06714459e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.201839954, 0.403679967, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.216438293, -0.381121635, -0.171089172, 0.866652429, 0.498903751, 2.19618634e-009, -0.498903215, 0.866651833, -1.24133344e-008, -8.09827227e-009, 9.66504299e-009, 0.99999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.41040799, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.418174744, 0.00370788574, -0.245140076, 0.86665231, 0.498903781, 2.23897123e-009, 6.64269617e-009, -7.05078396e-009, -0.999990821, -0.498903096, 0.866651654, -9.42400824e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.403679937, 0.269119978, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.317405701, -0.0458230972, -0.00158691406, 0.866652429, 0.498903751, 2.14410667e-009, -0.498903215, 0.866651773, -3.7675072e-009, -3.73966591e-009, 2.19803686e-009, 0.999990821))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.269120008, 0.269119978, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00132751465, 0.046257019, 0.586250305, -3.23414906e-006, 5.61314437e-006, 0.999990821, 0.498903215, -0.866651773, 6.47817387e-006, 0.866652429, 0.498903751, 2.46550202e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.672799945))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 1.61471975, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.688362122, -1.38871622, -0.00164794922, 0.866652429, 0.498903751, 2.3246276e-009, -0.498903215, 0.866651833, -5.07280662e-009, -4.54733851e-009, 3.23922e-009, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.269120008, 0.200000003, 0.269119978))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0016784668, -0.155838966, 0.384544373, -3.23989229e-006, 5.62253354e-006, 0.999990821, 0.498903215, -0.866651773, 6.48917603e-006, 0.866652429, 0.498903751, 2.75841439e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.672799945, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.201839954, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.484268188, -0.111958504, 0.164001465, 0.86665231, 0.498903781, 2.19069807e-009, -0.498903096, 0.866651654, -2.89383451e-008, -1.6337971e-008, 2.39893474e-008, 0.999990821))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.672800004, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.269120008, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00202941895, -0.155940056, -0.182807922, 4.07467405e-006, -7.25276459e-006, -0.999990821, 0.498895556, -0.866655946, 8.31849866e-006, -0.866656661, -0.498896152, 8.70322268e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.672799945, 0.672800004))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.538240016, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.654853821, -2.46507072, -0.00198364258, 0.866652429, 0.498903751, 2.32239783e-009, -0.498903215, 0.866651833, -8.78909168e-010, -2.45303911e-009, -3.9434811e-010, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672799945, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.60551995, 0.200000003, 0.672799945))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.307685852, -0.683084488, -0.00399780273, 0.866652429, 0.498903751, 2.32315811e-009, -0.498903215, 0.866651833, 8.09858314e-009, 2.02524175e-009, -8.17515655e-009, 0.99999088))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.336399943, 0.403679967, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.484832764, -0.381659508, -0.171195984, 0.866652429, 0.498903751, 2.13510121e-009, -0.498903215, 0.866651833, -4.31538716e-009, -4.00520239e-009, 2.67735412e-009, 0.99999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.170829773, 0.112492561, -0.350662231, 8.04909632e-006, -1.38555888e-005, -0.999990821, 0.498901367, -0.866652668, 1.60237105e-005, -0.866653323, -0.498901874, -6.31975112e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.672799766, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.269120008, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00198364258, 2.70083809, -0.890274048, 1.22612406e-007, 7.56137375e-010, -0.999991715, 0.498903275, -0.866651952, 6.05138268e-008, -0.866652787, -0.49890393, -1.06639334e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.269120008, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00188446045, 2.70055485, 0.755661011, 6.99501257e-009, -4.66721986e-008, 0.99999094, 0.498903215, -0.866651833, -4.39415899e-008, 0.866652429, 0.498903751, 1.72223977e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.41040799, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.553535461, 0.00312805176, -1.3889389, 0.866649628, 0.4989025, 2.28122921e-009, 2.2102844e-009, 7.3393025e-010, -0.999984264, -0.498901486, 0.866648555, -4.61247929e-010))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.269120008, 0.269119978, 0.403679967))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00194549561, -2.86907005, 0.789337158, 2.47805443e-009, 3.73790332e-010, -0.999992132, -0.498903453, 0.86665225, -9.09659237e-010, 0.866652787, 0.49890396, 2.33386199e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.336399913, 0.200000003, 0.403679967))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318229675, -1.42267275, -0.00323486328, 0.866652429, 0.498903751, 2.26594099e-009, -0.498903215, 0.866651833, -1.6442292e-010, -2.04764627e-009, -9.85398652e-010, 0.99999094))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.269120008, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00204467773, -1.15345192, -0.890197754, 8.79226505e-008, 5.16588372e-008, 0.999992132, -0.498903453, 0.86665225, -9.02613317e-010, -0.866652787, -0.49890396, 1.01971423e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.807359934, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.520263672, -2.5996995, -0.00192260742, 0.866652429, 0.498903751, 2.32525288e-009, -0.498903215, 0.866651833, -6.91663615e-010, -2.3620943e-009, -5.58051827e-010, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672799945, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.269120008, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00224304199, -1.15331078, 0.75553894, -9.81664794e-009, -8.13697287e-009, -0.99999094, -0.498903215, 0.866651833, -2.15120899e-009, 0.866652429, 0.498903751, -1.25674564e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 0.336399972))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.336399913, 0.200000003, 0.403679967))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.326629639, -1.63202763, 0.0157241821, 0.86664921, 0.498901874, 4.46597426e-009, -0.49890098, 0.866647959, -1.00119912e-008, -8.86894291e-009, 6.45372245e-009, 0.999982953))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.41040799, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.423660278, 0.00339508057, -1.52803516, 0.866652429, 0.498903751, 3.1895504e-009, 2.6605298e-009, 1.7720303e-009, -0.99999094, -0.498903215, 0.866651773, 2.11543671e-010))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.41040799, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.553840637, 0.00194549561, -2.19624376, 0.866652429, 0.498903751, 2.32239783e-009, 2.50885779e-009, 2.97385006e-010, -0.99999094, -0.498903215, 0.866651833, -9.90791005e-010))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 1.88383985, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.957420349, -1.79261398, -0.00204467773, 0.866652787, 0.49890396, 2.33386199e-009, -0.498903453, 0.86665225, -9.09602171e-010, -2.47802578e-009, -3.73839848e-010, 0.999992132))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.672800004, 0.403680056))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.620758057, -0.985565186, -0.00221252441, 0.866652429, 0.498903751, 2.32505393e-009, -0.498903215, 0.866651833, -8.90858276e-010, -2.46130116e-009, -3.85319332e-010, 0.99999094))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.403679967, 0.200000003, 0.201839983))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00192260742, -2.26367044, 0.553855896, -2.34582611e-008, -1.43058907e-008, -0.99999094, -0.498903215, 0.866651833, -6.91662505e-010, 0.866652429, 0.498903751, -2.7467685e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.672799945, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.538239956, 0.200000003, 0.672799945))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.285865784, -0.750847816, -0.00677490234, 0.866652429, 0.498903751, 2.31163155e-009, -0.498903215, 0.866651833, 8.33962588e-009, 2.15549045e-009, -8.37831049e-009, 0.99999094))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.336399913, 0.200000003, 0.403679967))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318237305, -1.52358532, -0.00323486328, 0.866652429, 0.498903751, 2.26594099e-009, -0.498903215, 0.866651833, -1.6442292e-010, -2.04764627e-009, -9.85398652e-010, 0.99999094))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.672799945, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.41040799, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.419342041, 0.000923156738, -2.06234789, 0.866652787, 0.49890396, 2.45350562e-009, 4.20546575e-009, -2.38710784e-009, -0.999992132, -0.498903453, 0.86665225, -4.16421386e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.41040799, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.554298401, 0.00379943848, -1.92725849, 0.866652429, 0.498903751, 2.27182828e-009, -2.13564766e-009, 8.26406144e-009, -0.99999094, -0.498903215, 0.866651833, 8.23071211e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.269120008, 0.336399943, 0.269119978))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00178527832, 0.682488441, 0.856414795, -3.21860102e-006, 5.58638567e-006, 0.999992132, 0.498903453, -0.86665225, 6.44723104e-006, 0.866652787, 0.49890396, 2.34038389e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.41040799, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.419181824, 0.00199890137, -1.79305029, 0.866652131, 0.498903632, 2.32990094e-009, 3.06747294e-009, -6.57872201e-010, -0.999989688, -0.498902828, 0.866651118, -2.09690798e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.336399913, 0.874639988, 0.403680056))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.486587524, -1.75865698, -0.00193786621, 0.866647184, 0.498901069, 2.32281483e-009, -0.498899341, 0.8666448, -6.6587047e-010, -2.34998132e-009, -5.75107295e-010, 0.999977112))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.41040799, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.553878784, -0.00231170654, -1.65839434, 0.866650403, 0.498902589, 2.46607934e-009, 5.02348474e-009, -3.78248899e-009, -0.999985576, -0.498901695, 0.866649151, -5.77936898e-009))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 1, 0.672800183))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.615721703, -0.232398987, 0.587142944, 0.498903215, -0.866651833, 4.77541471e-006, 2.38451321e-006, -4.13749922e-006, -0.99999088, 0.866652429, 0.498903751, 2.33085373e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 0.672799945))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.615719795, -0.238517761, 0.587135315, -0.498903215, 0.866651833, -6.69786004e-006, -3.34363585e-006, 5.80360529e-006, 0.99999088, 0.866652429, 0.498903751, 2.33072406e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 0.672799945))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.615716934, -0.238525391, -0.0488891602, 0.498902082, -0.86665225, 8.04640968e-006, -1.60619777e-007, 9.19200102e-006, 0.99999088, -0.866652966, -0.498902738, 4.44671059e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 0.672799945))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.403679967, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00192260742, -2.26364183, -0.385681152, -2.36786946e-009, -5.61378055e-010, 0.99999094, -0.498903215, 0.866651833, -6.91662505e-010, -0.866652429, -0.498903751, -2.33191777e-009))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.672799945, 0.672800004))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.403680056))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0489349365, -0.615652084, -0.00296783447, 0.866652429, 0.498903751, 2.32153119e-009, -0.498903215, 0.866651833, 4.01780254e-009, -9.28190858e-012, -4.63769601e-009, 0.99999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.672799945, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.201839939, 1.07647991, 0.269120038))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.217201233, -1.85976696, -0.00347137451, 0.866647124, 0.498901218, 2.26065255e-009, -0.49889949, 0.8666448, -9.83626514e-011, -2.01297223e-009, -1.03593223e-009, 0.999977112))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.470959932, 0.269119978, 0.538240016))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318893433, -2.60064316, -0.00373840332, 0.866652429, 0.498903751, 1.76599568e-009, -0.498903215, 0.866651833, 7.95978394e-009, 2.43890108e-009, -7.77687248e-009, 0.99999094))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.470959932, 0.200000003, 0.538240016))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.318901062, -2.43210697, -0.00379943848, 0.866652429, 0.498903751, 2.27182828e-009, -0.498903215, 0.866651833, 8.23071389e-009, 2.13564766e-009, -8.26405877e-009, 0.99999094))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.615708351, -0.232406616, -0.0488739014, -0.498902678, 0.866652071, -7.96434051e-006, -1.77091977e-007, -9.29171892e-006, -0.99999088, -0.866652608, -0.498903275, 4.78914217e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.336399972, 0.336399972, 0.672799945))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.403679937, 0.200000003, 0.538240075))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.31803894, -0.615720749, -0.00300598145, 0.866652429, 0.498903751, 2.32570896e-009, -0.498903215, 0.866651833, 3.92940835e-009, -5.70028469e-011, -4.56317428e-009, 0.99999088))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.336399972, 1))
mesh("BlockMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.672800243))

AmmoPrt1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","AmmoPrt1",Vector3.new(0.336399913, 0.538239956, 0.403679967))
AmmoPrt1weld=weld(m,Handle,AmmoPrt1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.21711731, -1.05279922, -0.137039185, 0.866652429, 0.498903751, 2.31279484e-009, -0.498903334, 0.866652071, -7.38362926e-010, -2.37459519e-009, -5.11365839e-010, 0.99999094))
mesh("CylinderMesh",AmmoPrt1,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

AmmoPrt2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","AmmoPrt2",Vector3.new(0.336399913, 0.538239956, 0.403679967))
AmmoPrt2weld=weld(m,Handle,AmmoPrt2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.217201233, -1.05278873, 0.131614685, 0.866649985, 0.498902321, 2.29875496e-009, -0.498901188, 0.866648316, -5.67319081e-010, -2.27866082e-009, -6.50366649e-010, 0.999983788))
mesh("CylinderMesh",AmmoPrt2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

AmmoPrt3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","AmmoPrt3",Vector3.new(0.336399913, 0.538239956, 0.403679967))
AmmoPrt3weld=weld(m,Handle,AmmoPrt3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.419036865, -1.052948, -0.00316619873, 0.866649985, 0.498902321, 2.28128072e-009, -0.498901188, 0.866648316, -3.53729712e-010, -2.15695484e-009, -8.26758217e-010, 0.999983788))
mesh("CylinderMesh",AmmoPrt3,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

AmmoPrt4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","AmmoPrt4",Vector3.new(0.336399913, 0.538239956, 0.403679967))
AmmoPrt4weld=weld(m,Handle,AmmoPrt4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.351737976, -1.05289078, -0.137390137, 0.866649985, 0.498902321, 2.29298824e-009, -0.498901188, 0.866648316, -4.96807928e-010, -2.23848495e-009, -7.08597625e-010, 0.999983788))
mesh("CylinderMesh",AmmoPrt4,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

AmmoPrt5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","AmmoPrt5",Vector3.new(0.336399913, 0.538239956, 0.403679967))
AmmoPrt5weld=weld(m,Handle,AmmoPrt5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.351760864, -1.0529232, 0.131362915, 0.866652429, 0.498903751, 2.28518027e-009, -0.498903334, 0.866652071, -4.00782296e-010, -2.18224128e-009, -7.90156163e-010, 0.99999094))
mesh("CylinderMesh",AmmoPrt5,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

AmmoPrt6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","AmmoPrt6",Vector3.new(0.336399913, 0.538239956, 0.403679967))
AmmoPrt6weld=weld(m,Handle,AmmoPrt6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.149917603, -1.05283451, -0.00286865234, 0.866652429, 0.498903751, 2.29759878e-009, -0.498903334, 0.866652071, -5.55574475e-010, -2.27023111e-009, -6.62199851e-010, 0.99999094))
mesh("CylinderMesh",AmmoPrt6,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

function attackone()
attack = true
for i = 0,1,0.1 do
swait()
end
attack = false
end

mouse.Button1Down:connect(function()
if attack == false and attacktype == 1 then
attacktype = 1
attackone()
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
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(10)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(-.5,0,0)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(20)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(-.5,0,0)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(70), math.rad(0), math.rad(-20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-0.2, 0.3, -1) * angles(math.rad(70), math.rad(0), math.rad(30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-110),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(-.5,0,0)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-0.2, 0, -1) * angles(math.rad(60), math.rad(0), math.rad(30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(-.5,0,0)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
end
end
end
if #Effects>0 then
--table.insert(Effects,{prt,"Block1",delay})
for e=1,#Effects do
if Effects[e]~=nil then
--for j=1,#Effects[e] do
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
--end
end
end
end
end
end}
module[2] = {"A.X.R FS-627-Sender",function()
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
    game:service'RunService'.Stepped:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Stepped:wait(0)
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

local TrailColor = ("Dark grey")
 
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
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Cyan"))
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

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.200000003, 0.200000003, 0.510347784))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0134277344, -1.08377826, 0.236021042, -0.999991059, 1.64970497e-005, -3.57626704e-005, -1.64969497e-005, -0.999997199, -5.89981786e-010, -3.53156356e-005, -1.55431202e-015, 0.999991059))
mesh("BlockMesh",handle,"","",Vector3.new(0, 0, 0),Vector3.new(0.850579858, 0.425290078, 1))
Barrel=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Barrel",Vector3.new(0.400000036, 0.600000024, 0.400000006))
Barrelweld=weld(m,handle,Barrel,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0165214539, -0.556964874, 1.65633035, -0.999990225, -1.64588746e-005, -3.51069939e-005, 3.59414771e-005, 5.92924765e-010, -0.99999088, 1.65416641e-005, -0.999996066, -2.07900868e-007))
mesh("BlockMesh",Barrel,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.77380371e-005, -0.551608682, 0.933853149, 0.999982119, 4.92241179e-006, 4.47023922e-007, -4.92275558e-006, 0.999994397, 5.18727006e-011, -1.34108632e-006, -6.88231694e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.425289869, 0.850580096, 0.850579739))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.263679713, 0.680464089, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000255584717, 1.23079586, 0.679197311, 0.999982119, 2.09204348e-010, 4.47023922e-007, -6.14797824e-010, 0.999994397, 7.37476746e-012, -1.34108632e-006, -2.21242469e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.850579739))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.255169868))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.86645508e-005, -0.424460649, 0.127323151, 0.999991059, 2.60244997e-006, 5.95537131e-008, -2.60263118e-006, 0.999997079, 2.07900612e-007, -5.06588549e-007, -2.07909366e-007, 0.999991059))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.425283134, 0.425283283, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2.04139137, 0.340232015, 0.255173892))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.466564178, -0.424417496, -0.00016784668, -2.27435266e-005, -0.999994159, 1.75410797e-011, 7.063058e-005, -1.58892144e-009, -0.999982119, 0.999982119, -2.27441906e-005, 6.97365176e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.255169958))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.7220459e-005, -0.0845518112, 0.127305984, 0.999982119, 1.79009203e-006, 4.76829882e-007, -1.79047493e-006, 0.999994397, 7.47768514e-012, -1.37088864e-006, -2.3080815e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.425289869, 0.425290078, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.425283313, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.14440918e-005, -0.254490614, -0.0425262451, 0.999982119, 4.47815211e-007, 5.0665767e-007, -4.48213513e-007, 0.999994397, 9.08723097e-012, -1.40071279e-006, -2.40636955e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.425283134, 1, 0.425283164))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.255173951, 1.44598627, 0.595405817))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000183105469, 1.35827327, 0.551862717, 0.999982119, 2.09204348e-010, 4.47023922e-007, -6.14797824e-010, 0.999994397, 7.37476746e-012, -1.34108632e-006, -2.21242469e-011, 0.999982119))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.61610174, 0.255173981, 0.255173892))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.254119873, -0.721702576, -0.000198364258, -2.27435994e-005, -0.999994636, -3.5085157e-011, 7.10776076e-005, -1.54646851e-009, -0.999982119, 0.999982119, -2.27442943e-005, 7.01835525e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.263679713, 0.200000003, 0.425289869))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00115585327, -0.551612258, 0.636695862, 0.999982119, 4.92261825e-006, 8.94047844e-007, -4.92297022e-006, 0.999994636, 6.63678834e-011, -1.78811024e-006, -8.55193139e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.850580096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.680463791, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.976444304, -0.294725418, -0.00431060791, -2.27435994e-005, -0.999994636, -3.5085157e-011, 7.10776076e-005, -1.54646851e-009, -0.999982119, 0.999982119, -2.27442943e-005, 7.01835525e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.425290078, 0.850579798))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.42528984, 0.200000003, 0.255173892))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.27387559, -0.636722565, -0.00016784668, -2.49764744e-005, -0.999994636, -3.70836695e-011, 7.10776076e-005, -1.7011863e-009, -0.999982119, 0.999982119, -2.49771983e-005, 7.01835525e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.425290078, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000003, 0.200000003, 0.255173892))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.10395718, -0.764104843, -0.000137329102, -2.49764744e-005, -0.999994636, -3.70836695e-011, 7.10776076e-005, -1.7011863e-009, -0.999982119, 0.999982119, -2.49771983e-005, 7.01835525e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.425289869, 0.850580096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.425289929, 0.340231895))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0043182373, 1.2733295, 0.0848426819, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.850579858, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.340231895))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00423049927, 1.01876116, 0.0848426819, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.850579858, 0.425290078, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.255173951, 0.200000003, 0.255173892))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.0424911976, 0.97628212, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.850580096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.48498535e-005, 0.084962368, 1.18850517, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.212644935, 0.212645039, 0.425289869))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Cyan","Part",Vector3.new(0.255173951, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.48498535e-005, 0.084962368, 1.18850517, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.425290078, 0.850579798))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.680464029, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00429153442, -0.976130962, 0.297080994, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.850579858, 1, 0.425289869))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.255173951, 0.200000003, 0.595405877))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.10351563e-005, 0.594237328, 0.551851273, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.425290078, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.425289869))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.169742584, 0.0849318504, 1.06118011, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.425289869, 0.425290078, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.510348022, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00430297852, 1.23086357, -0.127353668, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.850579858, 1, 0.425289869))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.255173951, 0.200000003, 0.850579739))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.34057617e-005, 2.1647141, 0.424444199, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.850580096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.255173951, 0.595406055, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -0.339458823, 1.0612278, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.425289869))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.425289899, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.91821289e-005, 0.084962368, 1.3158741, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.425290078, 0.425289869))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.510347903))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0848655701, 0.551791668, -5.91278076e-005, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.425289869, 0.850580096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.425289869))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.169647217, 0.0849175453, 1.06118774, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.425289869, 0.425290078, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.425290108, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.254673719, -0.212312698, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.850579858, 1, 0.425289869))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.425289869))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00430297852, 1.52808881, 0.0424671173, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.850579858, 0.425290078, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.21206665, -0.933796644, 0.679149628, -0.999982119, -5.58144457e-005, -8.9405512e-007, 5.58141619e-005, -0.999994636, 3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.850579858, 0.425290078, 0.850579798))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.127262115, 0.933843374, 0.679164886, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.850579858, 0.425290078, 0.850579739))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.255173951, 0.200000003, 0.340231895))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.14440918e-005, -2.1647017, -2.0980835e-005, -0.999982119, -5.58144457e-005, -8.9405512e-007, 5.58141619e-005, -0.999994636, 3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.850580096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.510347903))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0848960876, 0.551814079, -1.90734863e-005, 0.999982119, 5.58144457e-005, 8.9405512e-007, -5.58141619e-005, 0.999994636, -3.51525475e-011, -1.78811752e-006, -2.94989588e-011, 0.999982119))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.425289869, 0.850580096, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000003, 0.200000003, 0.255173892))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.44389164, -0.764112473, -0.000137329102, -2.53405306e-005, -0.999997318, -2.07920962e-007, 7.14656417e-005, 2.06129954e-007, -0.999991059, 0.999991059, -2.53409107e-005, 7.10185996e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.425289869, 0.850580096, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.551600099, -0.891397476, 0.0849647522, -1.96261317e-005, -0.999994636, -7.89959209e-011, 7.10781751e-005, -1.28376709e-009, -0.999982119, 0.999982119, -1.96267902e-005, 7.018412e-005))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.850579858, 0.425290078, 0.425289869))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.255173862, 0.255174011, 0.595405817))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000217437744, -1.61367238, -0.551843643, -0.999982119, -3.15852139e-006, -8.79772415e-007, -3.15889542e-006, 0.999994636, -2.42164191e-007, 1.77383481e-006, -2.42149667e-007, -0.999982119))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Wedge",Vector3.new(0.200000003, 0.34022662, 0.200000003))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-005, 0.0848674774, 0.509426713, 0.999991059, 2.60264824e-006, 5.06588549e-007, -9.53623385e-007, 2.06911025e-007, 0.999991059, 2.60283809e-006, -0.999997318, 2.06918429e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.425283134, 1, 0.425283164))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.551610351, -0.891412735, 0.0848731995, 2.05404231e-005, 0.999994636, 3.72684752e-007, 7.10960012e-005, 3.71262161e-007, -0.999982119, -0.999982119, 2.05411197e-005, -7.02019315e-005))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.850579858, 0.425290078, 0.425289869))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.551705599, 0.933855057, 0.0848388672, -2.27403962e-005, -0.999994636, -5.9601156e-008, -7.10774912e-005, -5.80205715e-008, 0.999982119, -0.999982119, 2.27410965e-005, -7.0183436e-005))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.850579858, 0.850580096, 0.425289869))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.551692009, 0.933879852, 0.0849609375, 2.27179899e-005, 0.999994636, -5.9531132e-008, -7.10859167e-005, 6.11118125e-008, 0.999982119, 0.999982119, -2.27186792e-005, 7.0191847e-005))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.850579858, 0.850580096, 0.425289869))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Wedge",Vector3.new(0.200000003, 0.255168587, 0.200000003))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000110626221, 0.127298355, 0.169516325, 0.999982119, 2.23781717e-006, 9.2386108e-007, -1.81791984e-006, -1.01918163e-009, 0.999982119, 2.2382028e-006, -0.999994636, -1.0023522e-009))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.425289869, 1, 0.425289869))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"White","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00854873657, -1.57516098, 0.185529709, -0.999982119, -7.21350352e-006, -8.5031279e-006, -3.48015419e-006, 0.937103271, -0.349032491, 1.13240894e-005, -0.349036932, -0.937091589))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.850579858, 0.425290078, 0.425289869))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.200000003, 0.425284624, 0.200000003))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000102996826, -0.0424919128, 0.0849627256, 0.999991059, 5.58147876e-005, 8.0466998e-007, 1.25170482e-006, -2.72474687e-009, -0.999991059, -5.58146457e-005, 0.999997318, -2.77701706e-009))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.850579858, 1, 0.425289869))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"White","Wedge",Vector3.new(0.200000003, 0.255174011, 0.255173892))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00849533081, -1.76611137, 0.0303249359, -0.999982119, -7.41118401e-006, -9.01437488e-006, -3.18791808e-006, 0.928048849, -0.372439235, 1.19559481e-005, -0.372443885, -0.928037345))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.850579858, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.200000003, 0.425284624, 0.200000003))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000106811523, 0.0424900055, 0.0849499702, -0.999982119, -4.47962549e-007, -6.40648068e-007, -1.53471046e-006, -1.13678156e-009, 0.999982119, -4.48370002e-007, 0.999994636, 1.12173104e-009))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.850579858, 1, 0.425289869))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Wedge",Vector3.new(0.200000003, 0.255168587, 0.200000003))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000118255615, -0.12729454, 0.169492006, -0.999982119, -5.62619716e-005, -9.83487553e-007, 1.87754631e-006, -2.7208622e-009, -0.999982119, 5.62616806e-005, -0.999994636, 2.79091061e-009))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.425289869, 1, 0.425289869))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0847396851, 0.933885574, 0.0847232342, 0.999982119, 5.58591455e-005, 8.98660801e-007, -1.7927232e-006, -2.00105266e-008, 0.999982119, 5.58588581e-005, -0.999994636, -1.99453289e-008))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.425289869, 0.850580096, 0.425289869))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.200000003, 0.2551741, 0.200000003))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0849990845, 0.339661598, -0.212226868, -0.999982119, -5.5915436e-005, -7.77094101e-007, -5.59151522e-005, 0.999994636, 1.02350157e-006, 1.67109829e-006, 1.02357262e-006, -0.999982119))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.425289869, 1, 0.425289869))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0849323273, 0.806465149, 0.169761658, 2.44998719e-005, 0.999994636, 1.26530392e-006, -7.12289184e-005, -1.2636109e-006, 0.999982119, 0.999982119, -2.45006886e-005, 7.03348342e-005))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.425289869, 0.425290078, 0.425289869))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.255173951, 0.425290108, 0.255173951))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 1.86757088, -0.127286911, -0.999982119, -5.5915436e-005, -7.77094101e-007, -5.59151522e-005, 0.999994636, 1.02350157e-006, 1.67109829e-006, 1.02357262e-006, -0.999982119))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.200000003, 0.2551741, 0.200000003))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0848350525, 0.339640617, -0.212226868, -0.999982119, -5.5915436e-005, -7.77094101e-007, -5.59151522e-005, 0.999994636, 1.02350157e-006, 1.67109829e-006, 1.02357262e-006, -0.999982119))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.425289869, 1, 0.425289869))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.255173951, 0.340232044, 0.510347784))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.8064816, 1.14440918e-005, 0.999982119, 5.58740467e-005, 1.35518712e-006, 5.58737629e-005, -0.999994636, -1.12400812e-006, 2.2491804e-006, 1.12411249e-006, -0.999982119))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0848121643, 0.933847427, 0.0847399235, 0.999982119, 5.58591455e-005, 8.98660801e-007, -1.7927232e-006, -2.00105266e-008, 0.999982119, 5.58588581e-005, -0.999994636, -1.99453289e-008))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.425289869, 0.850580096, 0.425289869))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0849186182, 0.806528091, 0.169620514, -2.46491363e-005, -0.999994636, -5.97645396e-007, -7.32047774e-005, -5.95885183e-007, 0.999982119, -0.999982119, 2.46499039e-005, -7.23107005e-005))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.425289869, 0.425290078, 0.425289869))

function effect(Color,Ref,LP,P1,returnn)
if LP==nil or P1==nil then return end
local effectsmsh=Instance.new("CylinderMesh")
effectsmsh.Scale=Vector3.new(0.2,1,0.2)
effectsmsh.Name="Mesh"
local effectsg=Instance.new("Part")
NoOutline(effectsg)
effectsg.formFactor=3
effectsg.CanCollide=false
effectsg.Name="Eff"
effectsg.Locked=true
effectsg.Anchored=true
effectsg.Size=Vector3.new(0.5,1,0.5)
effectsg.Parent=workspace
effectsmsh.Parent=effectsg
effectsg.BrickColor=BrickColor.new(Color)
effectsg.Reflectance=Ref
local point1=P1
local mg=(LP.p - point1.p).magnitude
effectsg.Size=Vector3.new(0.5,mg,0.5)
effectsg.CFrame=cf((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
effectsmsh.Scale=Vector3.new(0.2,1,0.2)
game:GetService("Debris"):AddItem(effectsg,2)
if returnn then return effectsg end
if not returnn then
table.insert(Effects,{effectsg,"Cylinder",0.2,0.01,0,0.01,effectsmsh})
end
end

function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end
 
function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end
 
function MagicHead(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end


function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
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

function LaserBarrage(Prt,Parent)
attack=true
--so("BeamLockon",Prt,1,1) 
local efprt=part(3,Parent,"SmoothPlastic",0,0.5,BrickColor.new("Cyan"),"Effect",vt(0.2,0.2,0.2))
efprt.Anchored=true
local efmsh=mesh("CylinderMesh",efprt,"","",vt(0,0,0),vt(1,1,1))
spread=vt(0,0,0)*(Prt.Position-Mouse.Hit.p).magnitude/100
--spread=vt(0,0,0)
coroutine.resume(coroutine.create(function(Part,Mesh,Spreaded) 
game:GetService("Debris"):AddItem(Part,6)
local TheHit=Mouse.Hit.p
local MouseLook=cf((Prt.Position+TheHit)/2,TheHit+Spreaded)
local hit,pos = rayCast(Prt.Position,MouseLook.lookVector,1000,Parent)
so("Elec",Prt,0.2,1) 
local tefprt=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Black"),"Effect",vt(0.2,0.2,0.2))
tefprt.CFrame=cf(pos)
MagicCircle(BrickColor.new("Cyan"),cf(pos),0.5,0.5,0.5,0.5,0.5,0.5,0.04)
so("Elec",tefprt,0.3,1) 
game:GetService("Debris"):AddItem(tefprt,3)
Part.CFrame=CFrame.new((Prt.Position+pos)/2,pos)*angles(1.57,0,0) 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
hit.Parent.Humanoid:TakeDamage(15) 
end 
end 
local mag=(Prt.Position-pos).magnitude 
MagicCylinder(BrickColor.new("Cyan"),Part.CFrame,1,mag*5,1,0.5,0,0.5,0.05)
Part.Parent=nil
end),efprt,efmsh,spread)
end

function Laser(Part,Dmg) 
sp = Part.Position 
dirr = Part.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0) 
local hit,pos = rayCast(sp,dirr.lookVector,100,Character) 
local las=Instance.new("Part",Character) 
las.Material = "SmoothPlastic"
las.Anchored=true 
las.Locked=true 
las.CanCollide=false 
las.TopSurface=0 
las.BottomSurface=0 
las.FormFactor = "Custom" 
las.BrickColor=BrickColor.new("Cyan") 
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
las2.Material = "SmoothPlastic"
las2.Anchored=true 
las2.Locked=true 
las2.CanCollide=false 
las2.TopSurface=0 
las2.BottomSurface=0 
las2.FormFactor = "Custom" 
las2.BrickColor=BrickColor.new("Cyan") 
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

ShootSounds = {233370753,233370772}

function PlaySound(id, pitch, parent, volume)
if volume == nil then volume=tonumber(1) end
        local Sound = Instance.new("Sound")
        Sound.Name = "Epicosound"
  Sound.SoundId = "rbxassetid://"..id
     Sound.Volume = volume
     Sound.Pitch = pitch
  Sound.Looped = false
  Sound.Parent = parent
	 wait()
	 Sound:Play()
	game:service'Debris':AddItem(Sound, 8)
end

ShootSounds = {233370753,233370772}

ShootSound = function(part)
local shot=math.random(1, #ShootSounds)
PlaySound(ShootSounds[shot], 1, part)
end

function Shoot1()
attack = true
for i = 0,1,0.2 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-0.7, 0.5, -1) * angles(math.rad(0), math.rad(80), math.rad(100)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-5)),.3)
end
ShootSound(Barrel)
LaserBarrage(Barrel,m)
MagicCircle(BrickColor.new("Cyan"),Barrel.CFrame,.5,.5,.5,.5,.5,.5,0.06)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-5),math.rad(0),math.rad(-30)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(30)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, 0) * angles(math.rad(120), math.rad(0), math.rad(-20)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-0.7, 0.5, -1) * angles(math.rad(0), math.rad(50), math.rad(130)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(5)),.2)
end
attack = false
end

function Shoot2()
attack = true
for i = 0,1,0.07 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-80)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)),.2)
RH.C0=clerp(RH.C0,cf(.6,-1,.5)*angles(math.rad(0),math.rad(20),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-5)),.2)
end
ShootSound(Barrel)
LaserBarrage(Barrel,m)
MagicCircle(BrickColor.new("Cyan"),Barrel.CFrame,.5,.5,.5,.5,.5,.5,0.06)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(-80)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 1, 0) * angles(math.rad(0), math.rad(50), math.rad(140)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)),.2)
RH.C0=clerp(RH.C0,cf(.6,-1,.5)*angles(math.rad(0),math.rad(20),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-5)),.2)
end
attack = false
end

function Shoot3()
attack = true
for i = 0,1,0.07 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,2)* angles(math.rad(30),math.rad(0),-5*i),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-30)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-80)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(60)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(70)),.2)
end
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-80)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(30)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-80),math.rad(30)),.2)
end
ShootSound(Barrel)
LaserBarrage(Barrel,m)
MagicCircle(BrickColor.new("Cyan"),Barrel.CFrame,.5,.5,.5,.5,.5,.5,0.06)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-80)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(50), math.rad(90)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-50)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-80),math.rad(20)),.2)
end
attack = false
end

function SpinShot()
attack = true
for i=0,1,0.9 do
swait()
for i = 0,1,0.1 do
swait()
ShootSound(Barrel)
Laser(Barrel,20)
MagicCircle(BrickColor.new("Cyan"),Barrel.CFrame,.5,.5,.5,.5,.5,.5,0.06)
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,2)* angles(math.rad(20),math.rad(0),-5*i),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(60)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(70)),.3)
end
end
attack = false
end

mouse.Button1Down:connect(function()
        if attack==false then
                if attacktype == 1 then
                        attack = true
                        attacktype = 2
                        Shoot1()
         elseif attacktype == 2 then
                        attack = true
                        attacktype = 3
                        Shoot2()
         elseif attacktype == 3 then
                        attack = true
                        attacktype = 1
                        Shoot3()
                end
        end
end)

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='q' then
		if attack==false then
			SpinShot()
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(20)),.2)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(30)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(10)),.2)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(30)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-0.7, 0.5, -1) * angles(math.rad(0), math.rad(80), math.rad(100)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-5)),.2)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-30)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(-5),math.rad(30)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-0.7, 0.5, -1) * angles(math.rad(0), math.rad(80), math.rad(100)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-80),math.rad(10)),.2)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.2)
end
end
end
if #Effects>0 then
--table.insert(Effects,{prt,"Block1",delay})
for e=1,#Effects do
if Effects[e]~=nil then
--for j=1,#Effects[e] do
local Thing=Effects[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[2]=="DecreaseStat" then
Thing[5]=Thing[5]-1
if Thing[5]<=0 then
if Thing[1]:findFirstChild("Stats")~=nil then
Thing[1].Stats[Thing[3]].Value=Thing[1].Stats[Thing[3]].Value+Thing[4]
end
table.remove(Effects,e)
end
end
if Thing[2]=="Shoot" then
local Look=Thing[1]
local hit,pos = rayCast(Thing[4],Look,20,m)
local mag=(Thing[4]-pos).magnitude 
MagicHead(BrickColor.new("Cyan"),CFrame.new((Thing[4]+pos)/2,pos)*angles(1.57,0,0),1,mag*5,1,.5,0,.5,0.1)
Thing[4]=Thing[4]+(Look*20)
Thing[3]=Thing[3]-1
if hit~=nil then
Thing[3]=0
if Thing[8]==1 then
Damagefunc(hit,Thing[5],Thing[6],Thing[7],"Normal",RootPart,10,20,math.random(1,5),nil,nil,true)
elseif Thing[8]==2 then
Damagefunc(hit,Thing[5],Thing[6],Thing[7],"NormalDecreaseMvmt1",RootPart,10,20,math.random(1,5),nil,nil,true)
end
ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Cyan"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
MagicCircle(BrickColor.new("Cyan"),cf(pos),5,5,5,1,1,1,0.03)
game:GetService("Debris"):AddItem(ref,1)
end
if Thing[3]<=0 then
table.remove(Effects,e)
end
end
if Thing[2]=="CylinderClang" then
if Thing[3]<=1 then
Thing[1].CFrame=Thing[1].CFrame*CFrame.new(0,2.5*Thing[5],0)*CFrame.fromEulerAnglesXYZ(Thing[6],0,0) 
Thing[7]=Thing[1].CFrame
effect("Cyan",0,Thing[8],Thing[7])
Thing[8]=Thing[7]
Thing[3]=Thing[3]+Thing[4]
else
Part.Parent=nil
table.remove(Effects,e)
end
--[[Mesh=Thing[7]
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]]
end
if Thing[2]~="Shoot" and Thing[2]~="DecreaseStat" then
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[7]
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Block2" then
Thing[1].CFrame=Thing[1].CFrame
Mesh=Thing[7]
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[7]
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
--end
end
end
end
end
end}

 
 

module[1] = {"DualBlade",function()
---DuelBlade---
Players = game:GetService("Players")
 
me = Players['lifeepic']
char = me.Character
 
Toolname = "Tanto"
Modelname = "Tanto"
 
selected = false
effect = false
hurt = false
debounce = true
able = true
charge =  false
soundable = true
cancharge = true
cam = game.Workspace.CurrentCamera
 
surfaces = {"TopSurface", "BottomSurface", "LeftSurface", "RightSurface", "FrontSurface", "BackSurface"}
 
New = {
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
 
Sounds = {
        slash = "rbxasset://sounds//swordslash.wav",
        unsheath = "rbxasset://sounds//unsheath.wav",
        hitsound = "http://www.roblox.com/asset/?id=2801263", --0.5
        charge = "http://www.roblox.com/asset/?id=2101137", --0.5
        boom = "http://www.roblox.com/asset/?id=2691586", --0.3
        bewm = "http://www.roblox.com/asset/?id=2760979", --0.3
        splat = "http://roblox.com/asset/?id=10209590"
}
 
function EnableSound(time)
        coroutine.resume(coroutine.create(function()
                wait(time)
                soundable = true
        end))
end
 
function PlaySound(soundname, pitch)
        if soundable then
                soundable = false
                local s = New.Sound(torso, Sounds[soundname], 0.5, pitch)
                s.PlayOnRemove = true
                if pitch < 0 then
                        coroutine.resume(coroutine.create(function()
                                s.Looped = true
                                s.PlayOnRemove = false
                                wait()
                                s:Play()
                                wait(.2)
                                s.Looped = false
                                wait()
                                s:remove()
                        end))
                else
                        coroutine.resume(coroutine.create(function()
                                wait()
                                s:remove()
                                s.Looped=false
                        end))
                end
                EnableSound(0.12)
                return s
        end
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

RABrick2 = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LABrick2 = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
RLBrick2 = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LLBrick2 = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
gripBrick2 = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
Weld(Larm, gripBrick2, 0, 1, 0, 0, 0, 0)
 
RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)
RLBW = Weld(torso, RLBrick, -0.5, 1.2, 0, 0, 0, 0)
LLBW = Weld(torso, LLBrick, 0.5, 1.2, 0, 0, 0, 0)

RABWD = Weld(torso, RABrick2, -1.5, -0.5, 0, 0, 0, 0)
LABWD = Weld(torso, LABrick2, 1.5, -0.5, 0, 0, 0, 0)
RLBWD = Weld(torso, RLBrick2, -0.5, 1.2, 0, 0, 0, 0)
LLBWD = Weld(torso, LLBrick2, 0.5, 1.2, 0, 0, 0, 0)
 
TH = Weld(Rleg, nil, -0.6, 0, 0, math.pi/6, 0, 0)
TH2 = Weld(Lleg, nil, 0.6, 0, 0, math.pi/6, 0, 0)
 
RABW2 = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
LABW2 = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)
RLBW2 = Weld(RLBrick, nil, 0, 0.77, 0, 0, 0, 0)
LLBW2 = Weld(LLBrick, nil, 0, 0.77, 0, 0, 0, 0)

RABWD2 = Weld(RABrick2, nil, 0, 0.5, 0, 0, 0, 0)
LABWD2 = Weld(LABrick2, nil, 0, 0.5, 0, 0, 0, 0)
RLBWD2 = Weld(RLBrick2, nil, 0, 0.77, 0, 0, 0, 0)
LLBWD2 = Weld(LLBrick2, nil, 0, 0.77, 0, 0, 0, 0)
 
handle = Part(Mo, false, false, 0, 0, "Really black", 0.2, 0.6, 0.3, true)
handle.Name = "Handle"
Instance.new("BlockMesh", handle).Scale = Vector3.new(0.8, 1, 0.8)

handle2 = Part(Mo, false, false, 0, 0, "Really black", 0.2, 0.6, 0.3, true)
handle2.Name = "Handle2"
Instance.new("BlockMesh", handle2).Scale = Vector3.new(0.8, 1, 0.8)
 
guard = Part(Mo, false, false, 0, 0, "Really black", 0.35, 0.2, 0.45, true)
guard.Name = "Guard"
Instance.new("BlockMesh", guard).Scale = Vector3.new(0.8, 0.5, 0.8)

guard2 = Part(Mo, false, false, 0, 0, "Really black", 0.35, 0.2, 0.45, true)
guard2.Name = "Guard2"
Instance.new("BlockMesh", guard2).Scale = Vector3.new(0.8, 0.5, 0.8)
 
blade = Part(Mo, false, false, 0, 0.1, "Royal purple", 0.2, 4.15, 0.3, true)
blade.Name = "Blade"
Instance.new("BlockMesh", blade).Scale = Vector3.new(0.1, 1, 0.8)

blade2 = Part(Mo, false, false, 0, 0.1, "Royal purple", 0.2, 4.15, 0.3, true)
blade2.Name = "Blade2"
Instance.new("BlockMesh", blade2).Scale = Vector3.new(0.1, 1, 0.8)
 
bladetip = Part(Mo, false, false, 0, 0.1, "Royal purple", 0.2, 0.3, 0.3, true)
bladetip.Name = "Tip"
bladetipmesh = Instance.new("SpecialMesh", bladetip)
bladetipmesh.MeshType = "Wedge"
bladetipmesh.Scale = Vector3.new(0.1, 1, 0.8)

bladetip2 = Part(Mo, false, false, 0, 0.1, "Royal purple", 0.2, 0.3, 0.3, true)
bladetip2.Name = "Tip2"
bladetipmesh2 = Instance.new("SpecialMesh", bladetip2)
bladetipmesh2.MeshType = "Wedge"
bladetipmesh2.Scale = Vector3.new(0.1, 1, 0.8)
 
sheath = Part(Mo, false, false, 0, 0, "Really black", 0.3, 4, 0.4, true)
sheath.Name = "Sheath"
Instance.new("BlockMesh", sheath)

sheath2 = Part(Mo, false, false, 0, 0, "Really black", 0.3, 4, 0.4, true)
sheath2.Name = "Sheath2"
Instance.new("BlockMesh", sheath2)
 
sheathweld = Weld(sheath, blade, 0, 0.23, 0, math.pi, 0, 0)
grip = Weld(gripBrick, nil, 0, 0, 0, -math.pi/2, 0, 0)
Weld(handle, guard, 0, -0.4, 0, 0, 0, 0)
Weld(guard, blade, 0, -1.8, 0, 0, 0, 0)
Weld(blade, bladetip, 0, -2.2, 0, 0, 0, 0)


sheathweld2 = Weld(sheath2, blade2, 0, 0.23, 0, math.pi, 0, 0)
grip2 = Weld(gripBrick2, nil, 0, 0, 0, -math.pi/2, 0, 0)
Weld(handle2, guard2, 0, -0.4, 0, 0, 0, 0)
Weld(guard2, blade2, 0, -1.8, 0, 0, 0, 0)
Weld(blade2, bladetip2, 0, -2.2, 0, 0, 0, 0)
 
Mo.Parent = char
TH.Part1 = sheath
TH2.Part1 = sheath2
 
if not script.Parent:IsA("HopperBin") then
        bin = Instance.new("HopperBin", me.Backpack)
        bin.Name = Toolname
        script.Parent = bin
end

function dmg(hum, dm1, dm2)
        local dmg = math.random(dm1, dm2)
        local ko = Instance.new("ObjectValue", hum)
        ko.Name = "creator"
        ko.Value = me
        hum.Health = hum.Health - dmg
        coroutine.resume(coroutine.create(function()
                wait()
                ko:remove()
        end))
        for i = 0, dmg/5 do
                local blood = Part(workspace, false, false, 0, 0, "Really red", 0.2, 0.2, 0.2, true)
                blood.CFrame = hum.Parent.Torso.CFrame
                blood.RotVelocity = Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
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
        return dmg
end

function infect(hit)
for i,v in pairs(hit.Parent:GetChildren()) do
if v:IsA("Humanoid") then
if v:FindFirstChild("poison") == nil then
Instance.new("BoolValue",v).Name = "poison"
 
coroutine.resume(coroutine.create(function()
for i = 1,30 do
wait()
v.Health = v.Health - 1
 
local c = p1:Clone()
c.Parent = m
c.Size = Vector3.new(0.5,0.5,0.5)
c.CFrame = v.Torso.CFrame + Vector3.new(math.random(-3,3),math.random(-3,3),math.random(-3,3))
c.Anchored = true
c.Transparency = 0.5
c.Color = Color3.new(0,0.3,0)
 
delay(0.1,function()
for i = 0.5,1,0.05 do
wait()
c.Transparency = i
end
c:Remove()
end)
 
end
v:FindFirstChild("poison"):Remove()
end))
 
end
end
end
end
 
function unsheath()
        PlaySound("unsheath", 2)
        coroutine.resume(coroutine.create(function()
                for i = 0, 0, 0 do
                        RABW2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        RABWD2.C1 = CFrame.new(3, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
                wait()
                RABW2.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(-math.rad(90), 0, 0)
                RABWD2.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(-math.rad(90), 0, 0)
        end))
        coroutine.resume(coroutine.create(function()
                wait()
                wait()
                for i = 0, 180, 30 do
                        for _, v in pairs(game.Workspace:GetChildren()) do
                                if getHum(v)~=nil then
                                        if v:findFirstChild("Torso")~=nil then
                                                if (v.Torso.Position - blade.Position).magnitude < 2 and
                                                (v.Torso.Position - blade2.Position).magnitude < 2 then
                                                        local hum = getHum(v)
                                                        dmg(hum, 4, 6)
                                                        infect(hum)
                                                        PlaySound("splat", 1.2)
                                                end
                                        end
                                end
                        end
                        wait()
                end
        end))
        wait()
        wait()
        sheathweld.Part1 = nil
        sheathweld2.Part1 = nil
        grip.Part1 = handle
        grip2.Part1 = handle2
        for i = 0, -10, -35 do
                wait()
                grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                      grip2.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
        end
end
 
function sheath()
        PlaySound("unsheath", -2)
        coroutine.resume(coroutine.create(function()
                for i = 90, 0, -15 do
                        RABW2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        RABWD2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
        end))
        coroutine.resume(coroutine.create(function()
                for i = -180, 0, 30 do
                        grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                        grip2.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                        wait()
                end
        end))
        coroutine.resume(coroutine.create(function()
                wait()
                wait()
                for i = 0, 180, 30 do
                        for _, v in pairs(game.Workspace:GetChildren()) do
                                if getHum(v)~=nil then
                                        if v:findFirstChild("Torso")~=nil then
                                                if (v.Torso.Position - blade.Position).magnitude < 2 and
                                                (v.Torso.Position - blade2.Position).magnitude < 2 then
                                                        local hum = getHum(v)
                                                        dmg(hum, 3, 5)
                                                        infect(hum)
                                                        PlaySound("splat", 1.2)
                                                end
                                        end
                                end
                        end
                        wait()
                end
        end))
        for i = 90, 30, -15 do
                wait()
        end
        grip.Part1 = nil
        sheathweld.Part1 = blade
        grip2.Part1 = nil
        sheathweld2.Part1 = blade2
end

function freeze(m)
    local trg = m.Target
    if (trg==nil) then return end
    local phit = game.Players:findFirstChild(trg.Parent.Name)
    if (phit~=nil) then
        if (phit==p) then return end
        local char = trg.Parent
        if (char:findFirstChild("Torso")==nil) then return end
        if (char:findFirstChild("fr_block")==nil) then
            local pa = Instance.new("Part")
            local bl = Instance.new("BlockMesh")
            bl.Parent = pa
            pa.Anchored = true
            pa.Name = "fr_block"
            pa.Transparency = 1
            pa.BrickColor = BrickColor.New("Cyan")
            pa.FormFactor = "Custom"
            pa.Size = Vector3.new(6,7,6)
            pa.CFrame = char["Torso"].CFrame
            pa.Parent = char
            char.Humanoid.WalkSpeed = 0
            if (char.Humanoid.Health<char.Humanoid.MaxHealth/4) then
                char.Humanoid.Health = 0
            else
                char.Humanoid.Health = char.Humanoid.Health - char.Humanoid.MaxHealth/4
            end
            local g = char:GetChildren()
            for i = 1,#g do
                if (g[i]:IsA("Part")) then
                    g[i].Anchored = true
                    g[i].Reflectance = .3
                end
            end
            for i = 1,10 do
                pa.Transparency = pa.Transparency - .06
                pa.Reflectance = pa.Reflectance + .01
                wait(.01)
            end
        else
            if (phit~=nil) then
                local fr = char["fr_block"]
                local char = trg.Parent
                for i = 1,10 do
                    fr.Transparency = fr.Transparency + .06
                    fr.Reflectance = fr.Reflectance - .01
                    wait(.01)
                end
                local g = char:GetChildren()
                for i = 1,#g do
                    if (g[i]:IsA("Part")) then
                        g[i].Anchored = false
                        g[i].Reflectance = 0
                    end
                end
                char.Humanoid.WalkSpeed = 16
                fr:remove()
            end
        end
    end
end
 
function explode(m)
    local t = m.Hit.p
    local trg = m.Target
    if (trg==nil) then return end
    local e = Instance.new("Explosion")
    e.BlastRadius = 20
    e.BlastPressure = 20
    e.Position = t
    e.Parent = game.Workspace
end
 
function fire(m)
    local trg = m.Target
    if (trg==nil) then return end
    local phit = game.Players:findFirstChild(trg.Parent.Name)
    if (phit~=nil) then
        local char = trg.Parent
        if (char:findFirstChild("Torso")==nil) then return end
        local f = Instance.new("Fire")
        f.Color = Color3.new(0,0,0)
        f.SecondaryColor = Color3.new(0,0,0)
        f.Parent = char.Torso
        f.Name = "BurnFire"
        coroutine.resume(coroutine.create(function()
            while (char.Humanoid.Health>0) do
                if (char.Humanoid.Health<2) then
                    char.Humanoid.Health = 0
                    char:BreakJoints()
                else
                    char.Humanoid.Health = char.Humanoid.Health - 2
                end
                wait(.05)
            end
        end))
    end
end

function ghost()
        local player = game.Players.LocalPlayer
                if player == nil then return end
                player.Character:findFirstChild("Head").Transparency = 1
                player.Character:findFirstChild("Torso").Transparency = 1
                player.Character:findFirstChild("Left Arm").Transparency = 1
                player.Character:findFirstChild("Right Arm").Transparency = 1
                player.Character:findFirstChild("Left Leg").Transparency = 1
                player.Character:findFirstChild("Right Leg").Transparency = 1
                player.Character:findFirstChild("Head").face.Transparency = 1
                player.Character:findFirstChild("Tanto").Blade.Transparency = 1
                player.Character:findFirstChild("Tanto").Guard.Transparency = 1
                player.Character:findFirstChild("Tanto").Handle.Transparency = 1
                player.Character:findFirstChild("Tanto").Sheath.Transparency = 1
                player.Character:findFirstChild("Tanto").Tip.Transparency = 1
                player.Character:findFirstChild("Tanto").Blade2.Transparency = 1
                player.Character:findFirstChild("Tanto").Guard2.Transparency = 1
                player.Character:findFirstChild("Tanto").Handle2.Transparency = 1
                player.Character:findFirstChild("Tanto").Sheath2.Transparency = 1
                player.Character:findFirstChild("Tanto").Tip2.Transparency = 1
                player.Character:findFirstChild("BoneHelmet").Handle.Transparency = 1
                player.Character:findFirstChild("MessySpikes").Handle.Transparency = 1
                player.Character:findFirstChild("Snake Eyes").Handle.Transparency = 1
end

function unghost()
local player = game.Players.LocalPlayer
                if player == nil then return end
                player.Character:findFirstChild("Head").Transparency = 0
                player.Character:findFirstChild("Torso").Transparency = 0
                player.Character:findFirstChild("Left Arm").Transparency = 0
                player.Character:findFirstChild("Right Arm").Transparency = 0
                player.Character:findFirstChild("Left Leg").Transparency = 0
                player.Character:findFirstChild("Right Leg").Transparency = 0
                player.Character:findFirstChild("Head").face.Transparency = 0
                player.Character:findFirstChild("Tanto").Blade.Transparency = 0
                player.Character:findFirstChild("Tanto").Guard.Transparency = 0
                player.Character:findFirstChild("Tanto").Handle.Transparency = 0
                player.Character:findFirstChild("Tanto").Handle.Transparency = 0
                player.Character:findFirstChild("Tanto").Sheath.Transparency = 0
                player.Character:findFirstChild("Tanto").Tip.Transparency = 0
                player.Character:findFirstChild("Tanto").Blade2.Transparency = 0
                player.Character:findFirstChild("Tanto").Guard2.Transparency = 0
                player.Character:findFirstChild("Tanto").Handle2.Transparency = 0
                player.Character:findFirstChild("Tanto").Sheath2.Transparency = 0
                player.Character:findFirstChild("Tanto").Tip2.Transparency = 0
                player.Character:findFirstChild("BoneHelmet").Handle.Transparency = 0
                player.Character:findFirstChild("MessySpikes").Handle.Transparency = 0
                player.Character:findFirstChild("Snake Eyes").Handle.Transparency = 0
end

function TeleportZ(pos)

char:MoveTo(pos)

end
 
function slash()
        PlaySound("slash", math.random(1750,2000)/1000)
        coroutine.resume(coroutine.create(function()
                for i = 90, 0, -30 do
                        RABW2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        RABWD2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
                for i = 0, 90, 30 do
                        RABW2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        RABWD2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
        end))
        
        for i = 0, 180, 30 do
                for _, v in pairs(game.Workspace:GetChildren()) do
                        if getHum(v)~=nil then
                                if v:findFirstChild("Torso")~=nil then
                                        if (v.Torso.Position - blade.Position).magnitude < 2 and
                                        (v.Torso.Position - blade2.Position).magnitude < 2 then
                                                local hum = getHum(v)
                                                dmg(hum, 110, 112)
                                                PlaySound("splat", 1)
                                        end
                                end
                        end
                end
                wait()
        end
end
 
function stab()
        coroutine.resume(coroutine.create(function()
                for i = 0.5, -0.3, -0.1 do
                        RABW2.C1 = CFrame.new(0, i, 0) * CFrame.Angles(-math.rad(90), 0, 0)
                        RABWD2.C1 = CFrame.new(0, i, 0) * CFrame.Angles(-math.rad(90), 0, 0)
                        wait()
                end
                for i = 180, 270, 30 do
                        grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                        grip2.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                        wait()
                end
                wait(0.1)
                PlaySound("slash", math.random(1700,1900)/1000)
                for i = -0.25, 0.5, 0.25 do
                        RABW2.C1 = CFrame.new(0, i, 0) * CFrame.Angles(-math.rad(90), 0, 0)
                        RABWD2.C1 = CFrame.new(0, i, 0) * CFrame.Angles(-math.rad(90), 0, 0)
                        wait()
                end
                for i = 270, 180, -10 do
                        grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                        grip2.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                        wait()
                end
        end))
        for i = -0.3, 0.5, 0.1 do
                wait()
        end
        for i = 180, 270, 30 do
                wait
