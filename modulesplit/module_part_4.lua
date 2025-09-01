417, 1.04999995))
FB6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB6",Vector3.new(1.03740847, 0.259352177, 1.03740823))
FB6weld=weld(m,MN,FB6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-06, 0.129679263, 3.29017639e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
FB7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB7",Vector3.new(0.252201617, 1.03740871, 0.622444928))
FB7weld=weld(m,MN,FB7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.466838837, -0.259338915, -8.58306885e-06, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB7,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
FB8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB8",Vector3.new(1.03740847, 0.259352177, 0.518704116))
FB8weld=weld(m,MN,FB8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000205993652, -0.764207125, 0.546924591, -0.999995053, -0.000121198129, -0.00017335522, -0.000163274352, 0.965882957, 0.258978456, 0.000135882699, 0.258978575, -0.96587801))
mesh("SpecialMesh",FB8,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
FB9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB9",Vector3.new(1.03740847, 0.259352177, 1.03740823))
FB9weld=weld(m,MN,FB9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00023651123, 0.648379326, -0.000217437744, -0.99999994, 0.00030120369, -0.00014261005, -0.000301247928, -0.999999821, 0.000302845408, -0.000142518838, 0.000302889268, 1))
mesh("SpecialMesh",FB9,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
TN1=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","TN1",Vector3.new(1.03740847, 0.252201647, 1.03740823))
TN1weld=weld(m,MN,TN1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.67028809e-05, 0.933657289, 6.19888306e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",TN1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.205670506, 1.05999994))
TN2=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","TN2",Vector3.new(0.518704236, 0.778056443, 0.252201557))
TN2weld=weld(m,MN,TN2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-05, 0.49278298, -0.518682957, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",TN2,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.899999917, 0.899999917, 0.419567823))
TN3=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","TN3",Vector3.new(1.03740847, 0.252201647, 1.03740823))
TN3weld=weld(m,MN,TN3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-05, 0.726178706, 4.57763672e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",TN3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.205670506, 1.05999994))






Weld2 = function(p0,p1,x,y,z,rx,ry,rz,par)
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p0
    w.Part1 = p1
    w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
    return w
end


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
        local Hit,Pos,SurfaceNorm = workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
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

function Crater2(Torso,Radius)
			spawn(function()
				local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
				local Ignore = {}
				for i,v in pairs(game:GetService("Players"):GetPlayers()) do
					if v.Character ~= nil then
						Ignore[#Ignore+1] = v.Character
					end
				end
				local Hit,Pos,SurfaceNorm = workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
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


function DeathTouch()
torso.Touched:connect(function(hit)
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
							x = hit.Parent:findFirstChild("Head")
							x:Destroy()
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 99999999999999999999999999999999999999999999999999999999999999
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * 100
                        end
                    end
                    end)

hed.Touched:connect(function(hit)
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
							x = hit.Parent:findFirstChild("Head")
							x:Destroy()
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 99999999999999999999999999999999999999999999999999999999999999
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * 100
                            
                        end
                    end
                    end)
                    end


mod5 = Instance.new("Model",char)

function newRay(start,face,range,wat)
	local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
	hit,pos=game.Workspace:FindPartOnRayWithIgnoreList(rey,wat)
	return rey,hit,pos
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
    mesh.Scale=Vector3.new(15,10,15)
	Crater(hed,20)
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,40))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(10000020,10000030))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 230
			v.Humanoid:Destroy()
        end
    end

    coroutine.resume(coroutine.create(function() 
        for i=0,3.8,0.05 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(5,0.9,5)
            end
        part.Parent = nil
    end))
   
end

function Teleport()
	if not enabled then
		enabled = true
		bs:Play()
		char:MoveTo(mouse.hit.p)
		wait(0.1)
		enabled = false
	end
end

local function Explode(CF,Color,SMM,BBoom)
local cf = CF
local f = Instance.new("Part",char)
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
end

local cScript = script:Clone()
cScript.Disabled = true

function xShake(Player,numbor,waeittime,duration)
local xScript = cScript:Clone()
local numbor,waeittime = numbor or 2,waeittime >= 1/30 and waeittime or 1/30
local src = xScript:findFirstChild("DSource")or xScript:findFirstChild("Source")or xScript:findFirstChild("code")
if not src then return end
if xScript:findFirstChild("Owner")then xScript:findFirstChild("Owner").Value = Player end
src.Value = [[
local Done = true
delay(]]..duration..[[,function()Done = false end)
local Cam = Workspace.CurrentCamera
while true do
if not Done then break end
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,]]..numbor..[[,0)
Wait(]]..waeittime..[[)
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,]]..(-numbor)..[[,0)
end
script:Destroy()
]]
xScript.Parent = Player:findFirstChild("Backpack")or Player.Character ~= nil and Player.Character
if not xScript.Parent then xScript:Destroy()return end
xScript.Disabled = false
end

function ShakeCam(numbor,waeittime)cam.CoordinateFrame = cam.CoordinateFrame * CFrame.new(0,numbor or 2,0)wait(waeittime or 1/30)cam.CoordinateFrame = cam.CoordinateFrame * CFrame.new(0,numbor and -numbor or -2,0)end

function Tag(Humanoid)
local c = Instance.new("ObjectValue",Humanoid)
c.Value = p
c.Name = "creator"
end

function Kill(Hit)
pcall(function()
Tag(Hit.Parent.Humanoid)
local Head = Hit.Parent:findFirstChild("Head")
if not Head then return end
local x = Instance.new("Part",Hit.Parent)
x.Anchored = true
x.CanCollide = false
x.Locked = true
x.Transparency = 1
x.CFrame = Head.CFrame
local bg = Instance.new("BillboardGui",x)
bg.Adornee = x
bg.Size = UDim2.new(1,0,1,0)
bg.StudsOffset = Vector3.new(0,2,0)
local img = Instance.new("ImageLabel",bg)
img.Size = UDim2.new(1,0,1,0)
img.BackgroundTransparency = 1
img.Image = "http://www.roblox.com/asset/?id=138315085" or "http://www.roblox.com/asset/?id=138315093"
coroutine.wrap(function()
for i = 1,10 do
bg.StudsOffset = bg.StudsOffset + Vector3.new(0,0.17,0)
bg.Size = UDim2.new(bg.Size.X.Scale +i/2,0,bg.Size.Y.Scale +i/2,0)
wait()
end
local d = false
coroutine.wrap(function()
while not d do
bg.StudsOffset = bg.StudsOffset + Vector3.new(0,0.12,0)
wait()
end end)()
wait(3)
d = true
for i = 1,11 do
img.Rotation = img.Rotation +45
bg.StudsOffset = bg.StudsOffset + Vector3.new(0,0.43,0)
bg.Size = UDim2.new(bg.Size.X.Scale -i/2,0,bg.Size.Y.Scale -i/2,0)
wait()
end
x:Destroy()
end)()
Hit.Parent:BreakJoints()
end)end

function Direction()
if not char then return{CFrame.new(0,0,0),CFrame.new(0,0,0)}end
return{CFrame.new(T.Position,Vector3.new(cam.CoordinateFrame.x,T.Position.y,cam.CoordinateFrame.z))* CFrame.fromEulerAnglesXYZ(0,math.pi,0),Vector3.new(cam.CoordinateFrame.p.x,T.CFrame.p.y,cam.CoordinateFrame.p.z)}
end

function Damage(Vec,Object,Bool,Amt,DontDisplayDmg)
if Object.Parent:findFirstChild("AtlasRegistration")and Object.Parent.Name == char.Name then return end
if Object.Parent == char then return end
local Dmg,Humanoid = math.random(30,45),Object.Parent:findFirstChild("Humanoid")
if Bool then Dmg = math.random(15,25)end
if Amt then Dmg = Amt end
if Humanoid and not HitDebounce then
HitDebounce = true
if not holy then
if Humanoid.Health -Dmg <= 0 then Tag(Humanoid)end
Humanoid:TakeDamage(Dmg)
else
Kill(Object)
end
end
end

function DamageNear(Pos,Mag,Dmg)
local Targets,HitAlready = {},{}
for i,v in pairs(workspace:GetChildren())do
if v:IsA("Model")and v ~= char and v:findFirstChild("Humanoid")then
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
wait()
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

mouse.KeyDown:connect(function(Key)
	if Key == "q" then
	
StanceGyro = Instance.new("BodyGyro")
StanceGyro.maxTorque = Vector3.new(5000000000,5000000000,5000000000)*500000000000000
StanceGyro.P = 15000
StanceGyro.D = 750
StanceGyro.Name = "StanceGyro"
	
Debounces.Attacking = true
game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"Come to Wizard...", "Red")
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
wait()
end
wait(0.25)
local MaxDistance,Grabbed,HPos = 150
for i = 1,20 do
if Grabbed then break end
local r = Ray.new(RA.Position,DIR)
coroutine.wrap(function()
local p = Instance.new("Part",char)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15
p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
HPos = RA.Position
for i,v in pairs(workspace:GetChildren())do
if v:IsA("Model")and v ~= char then
local h = v:findFirstChild("Humanoid")
if h then
if h.Health > 0 then
local t = v:findFirstChild("Torso")
if t then
if(t.Position - HPos).magnitude <= MaxDistance and r:Distance(t.Position)<= 8 then
h.PlatformStand = true
coroutine.wrap(function()
local p = Instance.new("Part",char)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("Really red")
p.CFrame = RA.CFrame * CFrame.new(0,-1.5,0)
game:GetService("Debris"):AddItem(p,3)
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(4,4,4)
for i = 1,15 do
m.Scale = m.Scale - Vector3.new(0.2,0.2,0.2)
p.Transparency = i/15 p.CFrame = p.CFrame * CFrame.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)* CFrame.fromEulerAnglesXYZ(math.random(-50,50)/500,math.random(-50,50)/500,math.random(-50,50)/500)
wait()
end
p:Destroy()
end)()
local p = Instance.new("BodyVelocity",t)
p.P = 3000
p.maxForce = Vector3.new(40000,0,40000)
p.velocity = (t.Position - T.Position).unit *-(10 +(t.Position - T.Position).magnitude *0.75)
game:GetService("Debris"):AddItem(p,0.25)
if(t.Position -HPos).magnitude < 3 then
wait(0.15)
Grabbed = t
t.CFrame = CFrame.new(HPos + Vector3.new(0,0.5,0))
break
end end end end end end end
wait(0.1)
end
if Grabbed then
local Target = Grabbed.Parent.Humanoid
wait()
game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"Your mine now!", "Red")
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
wait()
end end)()
for i = 1,10 do
wait(0.5)
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
wait(0.5)
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
wait(0.2)
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
game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"Are you ready for this?", "Red")
local x = T.Position
for i = 1,40 do
T.CFrame = CFrame.new(x:Lerp(DesPos,i/40),Grabbed.Position)* CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)
StanceGyro.cframe = T.CFrame
BP.position = T.CFrame.p
if i > 20 then
RS.DesiredAngle = 3.2
end
wait()
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
game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"Get ready to die", "Red")
for i = 1,5 do
BP.position = BP.position + Vector3.new(0,0.25,0)
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(math.pi/6,math.pi/6,0)
N.C0 = N.C0 * CFrame.fromEulerAnglesXYZ(math.pi/10,0,0)
RH.C0 = RH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
LH.C0 = LH.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/60,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/8.5,0,0)* CFrame.new(0,-0.1,0)
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/10,0,0)* CFrame.new(0,-0.1,0)
wait()
end
BP.D = 100
BP.P = 9000
x = BP.position
local Hit,Pos = workspace:FindPartOnRay(Ray.new(T.Position - Vector3.new(0,5,0),(T.Position -(T.Position -Vector3.new(0,8,0))).unit *-500),char)
for i = 1,25 do
BP.position = x:Lerp((DesPos -Vector3.new(0,499,0)),i/25)
wait(0.03 -i *0.01)
end
for i = 1,5 do
StanceGyro.cframe = StanceGyro.cframe * CFrame.fromEulerAnglesXYZ(0,math.pi/5,0)
RS.DesiredAngle = -0.8
wait()
end
game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"Boom!", "Red")
DamageNear(T.Position,20,34)
if not Hit then local Hit = Instance.new("Part")Hit.BrickColor = BrickColor.new("Really black")end
if not Pos then Pos = Grabbed.Position end
coroutine.wrap(ShakeCam)(7.32,0.04)
xShake(game.Players:GetPlayerFromCharacter(Grabbed.Parent),12,1/30,1.2)
for i = 1,30 do
local p = Instance.new("Part",char)
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
wait()
end
p:Destroy()
end)
if math.random(1,5)== 5 then
coroutine.wrap(function()
local f = Instance.new("Smoke",p)
f.Size = 30
f.RiseVelocity = 0
f.Opacity = 0.025
wait(0.1)
f.Enabled = false
wait(1)
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
local p = Instance.new("Part",char)
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
game:GetService("Debris"):AddItem(p,3 +i *0.1)
p.Velocity = Vector3.new(math.random(-10,10)*4,math.random(40,80),math.random(-10,10)*4)
p.RotVelocity = p.Velocity
if math.random(1,5)== 5 then
coroutine.wrap(function()
local f = Instance.new("Smoke",p)
f.Size = 30
f.RiseVelocity = 0
f.Opacity = 0.025
wait(0.1)
f.Enabled = false
wait(1)
f:Destroy()
end)()end end
wait(0.025)
end
wait(0.25)
BP:Remove()
end
wait(0.25)
Stance = "Standing"
Debounces.Attacking = false
StopPower = false
ChargePosition(false)
end;
end)
mouse.KeyDown:connect(function(key)
if key == "j" then

Teleport()
end
end)

mouse.KeyDown:connect(function(key)
	if key == "m" then
		hum.WalkSpeed = 0
        if Debounces.CanAttack == true then
        Debounces.CanAttack = false
        Debounces.on = true
        Debounces.NoIdl = true
            wait(.1)
so("http://www.roblox.com/asset/?id=169445572",hed,1.5,1.5)
so("http://www.roblox.com/asset/?id=169380495",hed,1.5,1.5)
        for i = 1, 20 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1,0.6,-.2) *CFrame.Angles (math.rad    (45),math.rad(0),math.rad(32)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1,1,0)*CFrame.Angles(math.rad     (0),math.rad(0),math.rad(-20)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad (-    8),math.rad(-40), math.rad(-8)),0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles  (math.rad    (-50), math.rad(40), math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.8, .4, -.6) * CFrame.Angles  (math.rad    (30), 0, math.rad(20)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1, 0) * CFrame.Angles  (math.rad(-    10), math.rad(-40), math.rad(0)), 0.2)
            if Debounces.on == false then break end
                wait()
            end
            wait(0.5)
        local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("Institutional white")
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0.5
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.Position = torso.Position - Vector3.new(0,2,0)
        rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
        rngm.Scale = Vector3.new(1, 1, 2)
		for i,v in pairs(FindNearestTorso(torso.CFrame.p,50))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(10000020,10000030))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 800
        end
end
            x = Instance.new("Sound",torso)
            x.SoundId = "http://www.roblox.com/asset/?id=169445602"
            x.Looped = false
            x.Pitch = .7
            x.Volume = 2
            x:Play()
			partic2.Enabled = true
                coroutine.wrap(function()
                for i = 1, 60, 8 do
                rngm.Scale = Vector3.new(1.5 + i*1.5, 1.5 + i*1.5, 5)
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
        BV.velocity = Vector3.new(0,150,0)
    for i = 1, 20 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(20),math.rad(0),     math.rad(0)),0.7)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-16),     math.rad(0), math.rad(0)), 0.7)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), 0,     math.rad(-20)), 0.7)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-40),     math.rad(0), math.rad(20)), 0.7)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.7)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.5) * CFrame.Angles(math.rad(0), 0, 0), 0.7)
        if Debounces.on == false then break end
        wait()
    end
x:Destroy()
BV:Destroy()

		coroutine.resume(coroutine.create(function()
					for i = 1, 2880, 48 do 
            			torso.Weld.C1 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(i), math.rad(0), math.rad(0))
						rs:wait(4)
					end
					torso.Weld.C1 = CFrame.new(0, -1, 0)
		end))
		
    for i = 1, 30 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-14),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-16), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-10)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(10)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -1) * CFrame.Angles(math.rad(20), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.6) * CFrame.Angles(math.rad(-30), 0, 0),     0.3)
        if Debounces.on == false then break end
        wait()
    end

if (torso.Velocity*Vector3.new(1, 1, 1)).magnitude > 1 then
    for i = 1, 30 do
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-18),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-13), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-60)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(60)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -0.6) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.4) * CFrame.Angles(math.rad(-20), 0, 0),     0.3)
        if Debounces.on == false then break end
        wait()
    end
end
local ry,ht,ps=nil,nil,nil
while ht==nil do
	ry,ht,ps=newRay(root.CFrame*CFrame.new(0,-2,0),root.CFrame*CFrame.new(0,-3,0),4.1,{char})
	wait()
end
Crater(torso,40)
Landing()
 Crater(hed,40)
z = Instance.new("Sound",torso)
z.SoundId = "rbxassetid://142070127"
z.Volume = 2
wait(.1)
z:Play()
partic2.Enabled = false
hum.WalkSpeed = 0
for i = 1, 25 do
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0.3) *CFrame.Angles (math.rad(120),math.rad(10),math.rad(32)), 0.2)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,1,0)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-20)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad (-8),math.rad(-40), math.rad(-8)),0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-50), math.rad(40), math.rad(0)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.8, 0, -.6) * CFrame.Angles(math.rad(30), 0, math.rad(20)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-40), math.rad(0)), 0.2)

            if Debounces.on == false then break end
                wait()
            end
            wait(0.2)
Debounces.on = false
Debounces.NoIdl = false
if holy == true  then
hum.WalkSpeed = 200
elseif holy ~= true then
hum.WalkSpeed = 200
end
if Debounces.CanAttack == false then
Debounces.CanAttack = true
end
end
end
end)


mouse.KeyDown:connect(function(Key)
	if Key == "e" then
	game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"Touch me and your dead", "Red")
			DeathTouch()
		end
end)

mouse.KeyDown:connect(function(Key)
	if Key == "r" then
		game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"ForceField: Activated", "Red")
		local Force = Instance.new("ForceField", char)
		wait(9)
		Force:Destroy()
		game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"ForceField: Deactivated", "Red")
	end
end)


mouse.KeyDown:connect(function(Key)
	if Key == "y" then
           if CanAttack == true then
            CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
            for i = 1, 20 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(75), 0, math.rad(30)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(75), 0, math.rad(-30)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, 0.5, -1) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, 0.5, -1) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-26), math.rad(0), 0), 0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
                  if Debounces.on == false then
                          break
                  end
                  wait()
                      end
                      wait()
                    if Daytime == true then
                        Daytime = false
                        l.TimeOfDay = 24
                    else
                        Daytime = true
                        l.TimeOfDay = 12
                        l.OutdoorAmbient = Color3.new(0.498039, 0.498039, 0.498039)
                    end
                    char.Humanoid.MaxHealth = math.huge
                    c = Instance.new("Sound")
                    c.SoundId = "http://www.roblox.com/asset/?id=511715134"
                    c.Parent = char
                    c.Looped = false
                    c.Pitch = 1
                    c.Volume = 28
                    wait(.01)
                    c:Play()
            local Shockwave = function()
                local Wave = Instance.new("Part", game.Workspace--[[?]])
                Wave.Name = "Shockwave"
                Wave.BrickColor = BrickColor.new("Really red")
                Wave.Size = Vector3.new(1, 1, 1)
                Wave.Shape = "Ball"
                Wave.CanCollide = false
                Wave.Anchored = true
                Wave.TopSurface = 0
                Wave.BottomSurface = 0
                Wave.Touched:connect(function(hit)
                    print(hit.Name)
                    if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        if hit.Parent.Name ~= char.Name then
                            print("Damaged " .. hit.Parent.Name)
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
hit.Parent:FindFirstChild("Humanoid").PlatformStand = false
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * 120
                        end
                    end
                end)
                
                Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
                
                Delay(0, function()
                    -- 
                    -- Okay.
                
                       for i = 1, 38, 1 do
                            Wave.Size = Vector3.new(60 + i, 70 + i, 80 + i, 90 + i, 100 + i, 110 + i)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 30
                            Wave.Transparency = t
                            wait()
                   
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
			Crater(hed, 30)
            Crater(torso, 30)
            Shockwave()
            
            for i = 1, 20 do
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(120), 0, math.rad(-100)), 0.6)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(120), 0, math.rad(100)), 0.6)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-20)), 0.6)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(20)), 0.6)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(35), math.rad(0), 0), 0.6)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.6)
                wait()
                if Debounces.on == false then
                    break
                end
                wait()
            end
	    wait(2)
            Debounces.NoIdl = false
                    if CanAttack == false then
                        CanAttack = true
                wait()
                    end
            end -- for the canattack thing
        end
end)



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
	delay(0, function()
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
        if h~=nil and hit.Parent.Name~=char.Name and hit.Parent:FindFirstChild("Torso")~=nil then
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
                bodyVelocity.velocity=Vector3.new(0,60,0)
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
                cam.CoordinateFrame=CFrame.new(hed.CFrame.p,ZTarget.Position)
                local dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(hed.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if hum.Health>0 and char.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(hed.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(hed.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
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
                        c.Value=player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
        end
end






function MagniDamage(Hit,Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=player.Name then 
Damagefunc(Hit,head,mindam,maxdam,knock,Type,root,.2,1,3)
end
end
end
end
end


function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 


function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=Instance.new(Mesh)
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
		local weld=Instance.new("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
end





function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function parto(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
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
	
	function mesho(Mesh,part,meshtype,meshid,offset,scale)
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
	
	
	
local fx={}
local Neoncol = {BrickColor.new("Really red")}



Damagefunco=function(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
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
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(hed.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if hum.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(hed.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(hed.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
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


local col = 1



function MagicCylinder2o(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=parto(3,Character,"Neon",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesho("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
--table.insert(fx,{prt,"Cylinder",delay,x3,y3,z3})
fx[#fx+1]={prt,"Cylinder",delay,x3,y3,z3} --part, type, delay
--[[coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)]]
end

function MagniDamageo(Hit,Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=p.Name then 
Damagefunco(Hit,head,mindam,maxdam,knock,Type,root,.2,1,3)
end
end
end
end
end


function MagicBlocko(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=parto(3,workspace,"Neon",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesho("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(fx,{prt,"Block1",delay,x3,y3,z3}) --part, type, delay
end

mod=Instance.new('Model',char)
function Burst()
    part=Instance.new('Part',mod)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,1,0)*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really red')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh.Scale=Vector3.new(10,5,10)
    part2=part:clone()
    part2.Parent=mod
    part2.BrickColor=BrickColor.new('Bright red')
    mesh2=mesh:clone()
    mesh2.Parent=part2
    mesh2.Scale=Vector3.new(5,2.5,5)
    coroutine.resume(coroutine.create(function() 
        for i=0,1,0.1 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(1,1,1)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(1,1,1)
            end
        part.Parent=nil
        part2.Parent=nil
    end))
end
Charging = true
custommath={25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,-25,-26,-27,-28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-57,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74,-75,-76,-77,-78,-79,-80,-81,-82,-83,-84,-85,-86,-87,-88,-89,-90,-91,-92,-93,-94,-95,-96,-97,-98,-99,-100}
function FDebris()
	repeat
    local p = Instance.new('Part',torso)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(1,1,1)
    p.BrickColor = workspace.Base.BrickColor
    p.CanCollide = false
    p.Transparency = 0
    p.Anchored = true
    p.Locked=true
    p.Material = workspace.Base.Material
    s = math.random(1,40)/10
    local m = Instance.new("BlockMesh",p)
    m.Scale = Vector3.new(s,s,s)
    p.CFrame = torso.CFrame*CFrame.new(custommath[math.random(1,#custommath)]/10,-math.random(5,7),custommath[math.random(1,#custommath)]/10)*CFrame.Angles(math.random(),math.random(),math.random())
	--[[coroutine.wrap(function()
		wait(2)
		while Charging == true do
		wait(2)
		GroundWave1()
		wait(2)
		end
	end)()]]--
	
	spawn(function()
        while rs:wait() do
            if p.Transparency >= 1 then p:Destroy() break end
            p.CFrame = p.CFrame*CFrame.Angles(math.rad(2),math.rad(2),math.rad(2))+Vector3.new(0,0.2,0)
            p.Transparency = p.Transparency+0.01
        end
    end)
    wait(.3)
until Charging == false
end





function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end

function Slam()
    part=Instance.new('Part',mod)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,-2.8,-1.4)*CFrame.Angles(math.rad(90),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Really black')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
    mesh.Scale=Vector3.new(3,3,3)
    part2=Instance.new('Part',mod)
    part2.Anchored=true
    part2.CanCollide=false
    part2.FormFactor='Custom'
    part2.Size=Vector3.new(.2,.2,.2)
    part2.CFrame=root.CFrame*CFrame.new(0,-2.4,-1.6)
    part2.Transparency=.7
    part2.BrickColor=BrickColor.new('Really red')

    mesh2=Instance.new('SpecialMesh',part2)
    mesh2.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh2.Scale=Vector3.new(3,1.5,3)

    wait(.1)
	--x:Play()
    --x1:Play()
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,4))do
        if v:FindFirstChild('Humanoid') and holy == true then
				holyslamdmg = math.random(99999999999999999999999999999999999999999,999999999999999999999999999999999999999999999999999999999999999999999)
            v.Humanoid:TakeDamage(holyslamdmg)
				coroutine.resume(coroutine.create(function()
					wait(2)
					v.Humanoid.PlatformStand = false
				end))
				coroutine.resume(coroutine.create(function()
					wait(2)
					v.Humanoid.PlatformStand = false
				end))
        end
	so("http://roblox.com/asset/?id=206082327", torso, 1, 1)
	so("http://roblox.com/asset/?id=142070127", torso, 1, 0.7)
	so("http://roblox.com/asset/?id=263610111", torso, 1, 1)
	so("http://roblox.com/asset/?id=263610131", torso, 1, 1)
	so("http://roblox.com/asset/?id=166221646",	torso,1,1) 
  	so("http://roblox.com/asset/?id=200632875", torso, 1, 1)
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
    end)) 
end

Grab = false
mouse.KeyDown:connect(function(key)
    if key == "z" then
        Debounces.on = true
        Debounces.NoIdl = true
		Debounces.ks = true
        if Grab == false then
        gp = nil
        for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-80)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-70),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(70), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(30), math.rad(-20)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-15), math.rad(20)), 0.2)
            if Debounces.on == false then break end
            rs:wait(2)
        end
        con1=larm.Touched:connect(function(hit) -- this is grab
            ht = hit.Parent
            hum1=ht:FindFirstChild('Humanoid')
            if hum1 ~= nil then
			    if Debounces.ks==true then
                z = Instance.new("Sound",hed)
                z.SoundId = "rbxassetid://200632821"
                z.Volume = 1
                z:Play()
                Debounces.ks=false
				end
                hum1.PlatformStand=true
                gp = ht
                Grab = true
                asd=weld5(larm,ht:FindFirstChild("Torso"),CFrame.new(0,-1,1.5),CFrame.new(0,0,0))
                asd.Parent = larm
                asd.Name = "asd"
                asd.C0=asd.C0*CFrame.Angles(math.rad(-90),math.rad(180),0)
				stanceToggle = "Grabbed"
            --[[elseif hum1 == nil then
                con1:disconnect()
                wait() return]]--
            end
        end)
        for i = 1, 20 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(20)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(30),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-30), 0), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.2)
            if Debounces.on == false then break end
            rs:wait(2)
        end
    con1:disconnect()
    Debounces.on = false
    Debounces.NoIdl = false
    elseif Grab == true then
        Grab = false
			--[[for i = 1, 16 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(0),math.rad(50),math.rad(60)), 0.3)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,-.5)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(-60)), 0.3)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(14),math.rad(70),0), 0.3)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-70), 0), 0.3)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.3)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
			cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(40), 0), 0.3)
			if Debounces.on == false then end
			rs:wait()
		end]]--
		
		Slam()
		Crater(torso, 10)	
		
		if gp ~= nil then
			for i,v in pairs(larm:GetChildren()) do
				if v.Name == "asd" and v:IsA("Weld") then
					v:Remove()
				end
			end
		for i = 1, 16 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.3)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,-.4)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(20)), 0.3)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(20),0), 0.3)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-60), math.rad(-30), 0), 0.3)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(80), math.rad(30), math.rad(-20)), 0.3)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(70), math.rad(-15), math.rad(20)), 0.3)
			if Debounces.on == false then end
			rs:wait()
		end
		
				if gp ~= nil then
			for i,v in pairs(larm:GetChildren()) do
				if v.Name == "asd" and v:IsA("Weld") then
					v:Remove()
				end
			end
		
		stanceToggle = "Normal"
        --[[bv = Instance.new("BodyVelocity",gp:FindFirstChild("Torso"))
        bv.maxForce = Vector3.new(400000, 400000, 400000)
        bv.P = 125000
        bv.velocity = char.Head.CFrame.lookVector * 200]]--
        ht=nil
        Debounces.on = false
        Debounces.NoIdl = false
        elseif ht == nil then wait()
        Grab = false
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
    end
end
end)



function Throw()
	    if Grab == true then
        Grab = false
	stanceToggle = "Normal"
			for i = 1, 16 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20)), 0.3)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(140),math.rad(0),math.rad(-50)), 0.3)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(20),math.rad(-60),0), 0.3)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.3)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(-20)), 0.3)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
			if Debounces.on == false then end
			rs:wait()
			end
					for i = 1, 16 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(20)), 0.3)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,1.5,-.4)*CFrame.Angles(math.rad(-90),math.rad(0),math.rad(20)), 0.3)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(-10),0), 0.3)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.3)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.3)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-15), math.rad(-15), math.rad(20)), 0.3)
			if Debounces.on == false then end
			rs:wait()
		end
        if gp ~= nil then
	
				coroutine.resume(coroutine.create(function()
					tossed = gp:FindFirstChild("Torso").Parent.Humanoid
					wait(3)
					tossed.PlatformStand = false
				end))	
	
                                    z3 = Instance.new("Sound",torso)
                                    z3.SoundId = "rbxassetid://200632136"
									z3.Pitch = 0.7
                                    z3.Volume = 1
                                    z3:Play()	
	
        for i,v in pairs(larm:GetChildren()) do
            if v.Name == "asd" and v:IsA("Weld") then
                v:Remove()
            end
        end
        bv = Instance.new("BodyVelocity",gp:FindFirstChild("Torso"))
        bv.maxForce = Vector3.new(400000, 400000, 400000)
        bv.P = 125000
        bv.velocity = char.Head.CFrame.lookVector * 70



        for i = 1, 12 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.6, 0, -.75)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(20)), 0.5)
            if Debounces.on == false then end
            wait()
        end
        ht=nil
        spawn(function()
            wait(0.5)
            bv:Destroy()
        end)
		stanceToggle = "Normal"
        Debounces.on = false
        Debounces.NoIdl = false
        elseif ht == nil then wait()
        Grab = false
        Debounces.on = false
        Debounces.NoIdl = false
            end
        end
end

mouse.KeyDown:connect(function(key)

    if key == "x" then
		if Grab ~= true then
			Kick()
		elseif Grab == true then
			Throw()
		end
	end

end)
	
	
function AbsoluteBurn()
	if Grab == true then
		Grab = false
		stanceToggle = "Normal"
		local p = Instance.new("Part", Character)
				p.Anchored=true
				p.CanCollide=false
				p.Transparency=1
				p.Size=Vector3.new(.1,.1,.1)
				p.Shape = "Ball"
				p.BrickColor = BrickColor.new("Really black")
				p.CFrame = torso.CFrame * CFrame.new(-1.5, 0, -2)
				game.Debris:AddItem(p,3)
				local explosion = Instance.new("Sound", Character)
				explosion.Name="explosion"
				explosion.SoundId = "rbxassetid://2248511"
				explosion:Play()
				game.Debris:AddItem(explosion, 10)
				local forcefield = Instance.new("ForceField", char)
				local explo = Instance.new("Explosion", workspace)
				explo.BlastPressure = 700000
				explo.BlastRadius=5
				explo.Position=p.Position
				wait(0.01)
				forcefield:Destroy()
				
				for i,v in pairs(larm:GetChildren()) do
            if v.Name == "asd" and v:IsA("Weld") then
                v:Remove()

 bv = Instance.new("BodyVelocity",gp:FindFirstChild("Torso"))
        bv.maxForce = Vector3.new(400000, 400000, 400000)
        bv.P = 125000
        bv.velocity = char.Head.CFrame.lookVector * 10
            end
        end
	end
end	

mouse.KeyDown:connect(function(key)

    if key == "c" then
		if Grab ~= true then
			Kick()
		elseif Grab == true then
			AbsoluteBurn()
		end
	end

end)
	
	 print("The End Is Here")
	
function Drop()
	if Grab == true then
		Grab = false
		stanceToggle = "Normal"
		game:GetService("Chat"):Chat(Character.Head,"You're not even worth killing, weakling..",2)
		
				if gp ~= nil then
			for i,v in pairs(larm:GetChildren()) do
				if v.Name == "asd" and v:IsA("Weld") then
					v:Remove()
				
				end
			end
				end
				end
end


mouse.KeyDown:connect(function(key)

    if key == "v" then
		if Grab ~= true then
			Blast()
		elseif Grab == true then
			Drop()
		end
	end

end)







RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)

necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)










function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
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

function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
local wld=nil
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 

function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
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






function Blast()
n=2
attack = true
game:GetService("Chat"):Chat(Character.Head,"You Will Know Pain...",2)
for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
Neck.C0 = clerp(Neck.C0,necko *angles(math.rad(-2),math.rad(-2),math.rad(30)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=160772554",torso,1,0.6) 
so("http://roblox.com/asset/?id=161006069",torso,1,0.6) 
local charging=true
for _,c in pairs(workspace:children()) do
if c.className=="Model" then
if c:findFirstChild("Torso")~=nil and c:findFirstChild("Humanoid")~=nil and c.Name~="Vanta" then
print(c)
local Tors=c:findFirstChild("Torso")
coroutine.resume(coroutine.create(function(Part)
local ef=part(3,Character,"SmoothPlastic",0,0.5,BrickColor.new("Really black"),"Laser",vt(0.2,0.2,0.2))
ef.Anchored=true
local emsh=mesh("SpecialMesh",ef,"Head","",vt(0,0,0),vt(1,1,1))
game:GetService("Debris"):AddItem(ef,5)
while charging==true do
wait()
local TheHit=Part.Position
local MouseLook=cf((larm.Position+TheHit)/2,TheHit)
local hit,pos = rayCast(larm.Position,MouseLook.lookVector,99999999999,Character)
local mag=(larm.Position-pos).magnitude 
ef.CFrame=CFrame.new((larm.Position+pos)/2,pos)*euler(1.57,0,0)
emsh.Scale=vt(1,mag*5,1)
end
ef.Parent=nil
local TheHit=Part.Position
local MouseLook=cf((torso.Position+TheHit)/2,TheHit)
wait()
local hit,pos = rayCast(torso.Position,MouseLook.lookVector,999,Character)
local mag=(torso.Position-pos).magnitude 
if hit~=nil then
Damagefunc(hit,hit,200,400,500,"Knockdown",root,0)
MagicCircle(BrickColor.new("Really black"),cf(pos),50,50,50,60,60,60,0.02)
MagicBlock(BrickColor.new("Really black"),cf(pos),50,50,50,70,70,70,0.02)
MagicCylinder(BrickColor.new("Really black"),CFrame.new((larm.Position+pos)/2,pos)*euler(1.57,0,0),5,mag*5,5,0.5,0,0.5,0.01)
so("http://roblox.com/asset/?id=183763515",hit,1,1) 
so("http://roblox.com/asset/?id=183763512",hit,1,1)
local explosion = Instance.new("Sound", Character)
				explosion.Name="explosion"
				explosion.SoundId = "rbxassetid://165969964"
				explosion.Volume = 10
				explosion:Play()
end
end),Tors)
end
end
end
wait(1)
n=2
--[[for i=0,1,0.2 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.4+0.2*i*n,0,0)
RW.C0=cf(1+0.5*i*n,0.5,-0.5+0.5*i*n)*euler(1.4+0.17*i*n,0,-1.2+2.77*i*n)
LW.C0=cf(-1-0.5*i*n,0.5,-0.5+0.5*i*n)*euler(1.6-0.03*i*n,0,1.4-2.97*i*n)
n=n-0.2
end]]--
charging=false
wait(1)
n=2
--[[for i=0,1,0.1 do
wait()
Neck.C0=cf(0,1,0)*euler(-0.2,0,0)
RW.C0=cf(1.5,0.5,0)*euler(1.57-1.57*i*n,0,1.57-1.37*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(1.57-1.57*i*n,0,-1.57+1.37*i*n)
n=n-0.1
end]]--
attack = false
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

bg = Instance.new("BodyGyro",nil) 
bg.P = 2000 
bg.maxTorque = Vector3.new(0,math.huge,0) 
trail1 = Instance.new("Part") 
prop(trail1,nil,false,0.4,0,0.1,0.1,1,"Really red",true,"Custom") 
local t1 = Instance.new("SpecialMesh",trail1) 
t1.MeshType = "Brick" 
trail2 = Instance.new("Part") 
prop(trail2,nil,false,0.4,0,0.1,0.1,1,"Really red",true,"Custom") 
local t2 = Instance.new("SpecialMesh",trail2) 
t2.MeshType = "Brick" 
local fb = Instance.new("Part") 
prop(fb,nil,false,1,0,0.1,0.1,0.1,"Really red",true,"Custom")
t1p = Vector3.new(-0.3,0.3,-0.55) 
t2p = Vector3.new(0.3,0.3,-0.55) 
function getp(path) 
local objs = {} 
for _,v in pairs(path:children()) do 
if v:IsA("BasePart") then 
if v:GetMass() < 30 then 
table.insert(objs,v) 
end 
end 
for _,k in pairs(v:children()) do 
if k:IsA("BasePart") then 
if k:GetMass() < 30 then 
table.insert(objs,k) 
end 
end 
for _,o in pairs(k:children()) do 
if o:IsA("BasePart") then 
if o:GetMass() < 30 then 
table.insert(objs,o) 
end 
end 
end 
end 
end 
return objs 
end 

mouse.Button1Down:connect(function() 
hold = true 
bg.Parent = torso 
trail1.Parent = char 
trail2.Parent = char 
fb.Parent = char 
while hold do 
	l = Instance.new("Sound", char)
	l.Volume = 5
	l.Looped = false
	l.SoundId = "rbxassetid://228343271"
	l:Play()
local p1 = hed.CFrame * CFrame.new(t1p).p 
local p2 = hed.CFrame * CFrame.new(t2p).p 
local dist1 = (p1 - mouse.Hit.p).magnitude 
local dist2 = (p2 - mouse.Hit.p).magnitude 
bg.cframe = CFrame.new(torso.Position, mouse.Hit.p) 
trail1.CFrame = CFrame.new(p1,mouse.Hit.p) * CFrame.new(0,0,-dist1/2) 
trail2.CFrame = CFrame.new(p2,mouse.Hit.p) * CFrame.new(0,0,-dist2/2) 
t1.Scale = Vector3.new(1,1,dist1) 
t2.Scale = Vector3.new(1,1,dist2) 
local lol1 = CFrame.new(p1,mouse.Hit.p) * CFrame.new(0,0,-dist1) 
fb.CFrame = lol1 
local parts = getp(workspace) 
for _,v in pairs(parts) do 
if (v.Position - lol1.p).magnitude < 2 then 
if v:findFirstChild("LolFire") == nil then 
local f = Instance.new("Fire",v) 
f.Size = 0 
f.Heat = 5 
f.Color = Color3.new(0,0,0)
f.Name = "LolFire" 
coroutine.resume(coroutine.create(function() 
for i=0,10,0.2 do 
wait(0.1) 
f.Heat = i 
f.Size = i 
local lol = math.random(1,2) 
if lol == 1 then 
v.BrickColor = BrickColor.new("Really black") 
else 
v.BrickColor = BrickColor.new("Really black") 
end 
end 
v:remove() 
end)) 
end 
end 
end 
wait() 
end 
end) 
mouse.Button1Up:connect(function() 
l:Destroy()
hold = false 
bg.Parent = nil 
trail1.Parent = nil 
trail2.Parent = nil 
fb.Parent = nil 
end)  



function charge()
	if not enabled then
		local crown = Instance.new("Part", Character)
		crown.Size = Vector3.new(1,1,1)
		crown.CFrame = torso.CFrame  * CFrame.new(0,-3,0)
		crown.Anchored = true
		crown.CanCollide = false
		
		local crownm = Instance.new("SpecialMesh", crown)
		crownm.MeshType = "FileMesh"
		crownm.MeshId = "http://www.roblox.com/asset/?id=20329976"
		crownm.Scale = Vector3.new(4,0.9,4)
			crown.BrickColor = BrickColor.new("Really black")
		repeat
			for i = 1, 100 do
				
				crown.CFrame = crown.CFrame * CFrame.Angles(0,0.1,0)
				game:GetService("RunService").RenderStepped:wait()
				end
			wait()
		until enabled
		spawn(function()
			
			for i = 1,10 do
				crown.Transparency = crown.Transparency + 0.1				
				game:GetService("RunService").RenderStepped:wait()
			end
		end)
	end
end


















game:GetService("RunService").RenderStepped:connect(function()
if char.Humanoid.Jump == true then
jump = true
else
jump = false
end
char.Humanoid.FreeFalling:connect(function(f)
if f then
ffing = true
else
ffing = false
end
end)
if jump == true then
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
if Debounces.NoIdl == false then
if stanceToggle == "Normal" and holy ~= true then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(40)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-20)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-15), math.rad(20)), 0.2)
end
elseif stanceToggle == "Sitting" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(0/30),0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(20+2*math.cos(0/30))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.5, -.54) * CFrame.Angles(math.rad(88), 0, math.rad(48)), 0.6)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-20), math.sin(0/60)/3, 0), 0.3)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1) * CFrame.Angles(math.rad(-6), 0, 0), 0.3)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.1) * CFrame.Angles(math.rad(-56), 0, 0), 0.3)
elseif stanceToggle == "Floating" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(0/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(0/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(0/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1-0.4*math.cos(0/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(0/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8+2*math.cos(0/14))), 0.4)
wait()
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
if stanceToggle == "Normal" and holy ~= true then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(40+2*math.cos(0/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-20-2*math.cos(0/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(0/14)),math.rad(50),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-15), math.rad(20)), 0.2)
elseif stanceToggle == "Normal" and holy == true then
change = 0.8
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(0/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(0/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(0/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(0/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(0/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.5) * CFrame.Angles(-0.5, 0, math.rad(8+2*math.cos(0/14))), 0.4)
elseif stanceToggle == "Melee" and holy ~= true then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20+2*math.cos(0/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20-2*math.cos(0/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-20+1*math.cos(0/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
elseif stanceToggle == "Melee" and holy == true then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(0/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(0/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(0/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(0/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(0/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.5) * CFrame.Angles(-0.5, 0, math.rad(8+2*math.cos(0/14))), 0.4)
elseif stanceToggle == "Sitting" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(20)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.5, -.54) * CFrame.Angles(math.rad(88), 0, math.rad(48)), 0.6)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5-0.06*math.cos(0/25), -.2) * CFrame.Angles(math.rad(0-20*math.cos(0/25)/2), math.sin(0/50)/2.4, 0), 0.3)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1) * CFrame.Angles(math.rad(-6), 0, 0), 0.3)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.1) * CFrame.Angles(math.rad(-56), 0, 0), 0.3)
elseif stanceToggle == "Floating" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(0/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(0/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(0/14)),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1-0.4*math.cos(0/14), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(0/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8+2*math.cos(0/14))), 0.4)
elseif stanceToggle == "Grabbed" and holy ~= true then
grab = true
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(40+2*math.cos(0/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(0/14),-.5)*CFrame.Angles(math.rad(130+4*math.cos(0/14)),math.rad(0),math.rad(-60+4*math.cos(0/14))), 0.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(14+2*math.cos(0/14)),math.rad(70-4*math.cos(0/14)),0), 0.3)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-70), 0), 0.3)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.3)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
elseif stanceToggle == "Grabbed" and holy == true then
grab = true
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(40+2*math.cos(0/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(0/14),-.5)*CFrame.Angles(math.rad(130+4*math.cos(0/14)),math.rad(0),math.rad(-60+4*math.cos(0/14))), 0.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(14+2*math.cos(0/14)),math.rad(70-4*math.cos(0/14)),0), 0.3)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(0/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.5) * CFrame.Angles(-0.5, 0, math.rad(8+2*math.cos(0/14))), 0.4)
end
elseif animpose == "Walking" then
if stanceToggle == "Normal" and holy ~= true then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5, 0)*CFrame.Angles(math.rad(-20), math.rad(-20),math.rad(40)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6, -math.sin(0/8)/2.8)*CFrame.Angles(math.sin(0/8)/4, -math.sin(0/8)/2, math.rad(-10)), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-8+2*math.cos(0/4)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.1*math.cos(0/4), 0) * CFrame.Angles(math.rad(-4+2*math.cos(0/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(0/8)/2.8, -0.05 + math.sin(0/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(0/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(0/8)/2.8, -0.05 + -math.sin(0/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(0/8)/2.3, 0, 0), .4)
elseif stanceToggle == "Normal" and holy == true then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(0/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(0/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(0/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8+2*math.cos(0/14)), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8+2*math.cos(0/14)), 0, math.rad(8)), 0.4)
end
elseif stanceToggle == "Melee" and holy ~= true then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5-.05*math.cos(0/4), math.sin(0/8)/4) * CFrame.Angles(-math.sin(0/8)/2.8, -math.sin(0/8)/3, math.rad(10+2*math.cos(0/4))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5+.05*math.cos(0/4), -math.sin(0/8)/4)*CFrame.Angles(math.sin(0/8)/2.8, -math.sin(0/8)/3, math.rad(-10-2*math.cos(0/4))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-8+2*math.cos(0/4)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.07*math.cos(0/4), 0) * CFrame.Angles(math.rad(-4+1*math.cos(0/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(0/8)/2.8, -0.05 + math.sin(0/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(0/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(0/8)/2.8, -0.05 + -math.sin(0/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(0/8)/2.3, 0, 0), .4)
elseif stanceToggle == "Melee" and holy == true then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(0/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(0/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(0/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
elseif stanceToggle == "Floating" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(0/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(0/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14-4*math.cos(0/14)),0,0), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0-8*math.cos(0/14)), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(1-9*math.cos(0/13)), 0, math.rad(8)), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1-0.2*math.cos(0/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
elseif stanceToggle == "Grabbed" and holy ~= true then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5, 0)*CFrame.Angles(math.rad(-20), math.rad(-20),math.rad(40)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(-30)), 0.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-8+2*math.cos(0/4)), math.rad(0), math.rad(0)),0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.1*math.cos(0/4), 0) * CFrame.Angles(math.rad(-4+2*math.cos(0/4)), 0, math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1-0.14*math.cos(0/8)/2.8, -0.05 + math.sin(0/8)/3.4) * CFrame.Angles(math.rad(-10) + -math.sin(0/8)/2.3, 0, 0), .4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1+0.14*math.cos(0/8)/2.8, -0.05 + -math.sin(0/8)/3.4) * CFrame.Angles(math.rad(-10) + math.sin(0/8)/2.3, 0, 0), .4)
elseif stanceToggle == "Grabbed" and holy == true then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5, 0)*CFrame.Angles(math.rad(-20), math.rad(-20),math.rad(40)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(-30)), 0.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14-4*math.cos(0/14)),0,0), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0-8*math.cos(0/14)), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(1-9*math.cos(0/13)), 0, math.rad(8)), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(0/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
end
elseif animpose == "Running" then
if stanceToggle == "Normal" and holy ~= true then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.35,.4)*CFrame.Angles(math.rad(250),math.rad(350),math.rad(-30+2*math.cos(0/14))), 0.2)--cfawm
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.55,-.4)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(40-2*math.cos(0/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2) * CFrame.Angles(math.rad(20),math.rad(10),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(0/14), 0) * CFrame.Angles(math.rad(-40),math.rad(-10), math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1.2) * CFrame.Angles(math.rad(-20), math.rad(10), math.rad(0)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), math.rad(10), math.rad(0)), 0.4)
elseif stanceToggle == "Normal" and holy == true then
change = 1
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles  (math.rad(44), math.rad (0), math.rad(0)), 0.15)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1-0.1*math.cos(0/14), -1) * CFrame.Angles(math.rad(-  80),  math.rad(0), 0), 0.15)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad  (0), math.rad(50),  math.rad(-40)), 0.15)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),   math.rad(-50),  math.rad(40)), 0.15)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(8),   math.rad(0), math.rad(- 10)), .15)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(8),   math.rad(0), math.rad(10)),  .15)
elseif stanceToggle == "Floating" then
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(0/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(0/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(0/14))), 0.2)
hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-14-4*math.cos(0/14)),0,0)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10-12*math.cos(0/16)), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10-12*math.cos(0/16)), 0, math.rad(8)), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1-0.4*math.cos(0/14), -.2) * CFrame.Angles(math.rad(-15),0, math.rad(0)), 0.05)
end

elseif animpose == "Jumping" then --JUMPING ANIM
	
if stanceToggle == "Normal" and holy ~= true then
change = 0.8
     	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-10),math.rad(0),     math.rad(0)),0.7)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-10),     math.rad(0), math.rad(0)), 0.7)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), 0,     math.rad(-20)), 0.7)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-40),     math.rad(0), math.rad(20)), 0.7)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.7)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.5) * CFrame.Angles(math.rad(0), 0, 0), 0.7)
		--cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, 200, 0), 0.3)
elseif stanceToggle == "Melee" and holy ~= true then
     	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-10),math.rad(0),     math.rad(0)),0.7)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-10),     math.rad(0), math.rad(0)), 0.7)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), 0,     math.rad(-20)), 0.7)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-40),     math.rad(0), math.rad(20)), 0.7)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.7)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.5) * CFrame.Angles(math.rad(0), 0, 0), 0.7)
		--cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, 200, 0), 0.3)
elseif stanceToggle == "Melee" and holy == true then
     	hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-10),math.rad(0),     math.rad(0)),0.7)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-10),     math.rad(0), math.rad(0)), 0.7)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), 0,     math.rad(-20)), 0.7)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-40),     math.rad(0), math.rad(20)), 0.7)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.7)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.5) * CFrame.Angles(math.rad(0), 0, 0), 0.7)
		--cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, 200, 0), 0.3)
elseif stanceToggle == "Grabbed" and holy ~= true then
 		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-18),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-13), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-60)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(60)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -0.6) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.4) * CFrame.Angles(math.rad(-20), 0, 0),     0.3)
elseif stanceToggle == "Grabbed" and holy == true then
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5, 0)*CFrame.Angles(math.rad(-20), math.rad(-20),math.rad(40)), 0.2)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(-30)), 0.3)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14-4*math.cos(0/14)),0,0), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0-8*math.cos(0/14)), 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(1-9*math.cos(0/13)), 0, math.rad(8)), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(0/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
end

elseif animpose == "Freefalling" then --FF ANIM
	
if stanceToggle == "Normal" and holy ~= true then
  change = 0.8
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-18),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-13), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-60)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(60)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -0.6) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.4) * CFrame.Angles(math.rad(-20), 0, 0),     0.3)
		--cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, 200, 0), 0.3)
		end
elseif stanceToggle == "Normal" and holy == true then
change = 0.8
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-18),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-13), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-60)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(60)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -0.6) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.4) * CFrame.Angles(math.rad(-20), 0, 0),     0.3)
		--cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, 200, 0), 0.3)
elseif stanceToggle == "Melee" and holy ~= true then
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-18),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-13), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-60)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(60)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -0.6) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.4) * CFrame.Angles(math.rad(-20), 0, 0),     0.3)
		--cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, 200, 0), 0.3)
elseif stanceToggle == "Melee" and holy == true then
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-18),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-13), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-60)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(60)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -0.6) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.4) * CFrame.Angles(math.rad(-20), 0, 0),     0.3)
		--cor.Weld.C1 = Lerp(cor.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(0, 200, 0), 0.3)
elseif stanceToggle == "Grabbed" and holy ~= true then
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-18),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-13), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-60)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(60)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -0.6) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.4) * CFrame.Angles(math.rad(-20), 0, 0),     0.3)
elseif stanceToggle == "Grabbed" and holy == true then
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-18),math.rad(0),     math.rad(0)),0.3)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-13), math.rad    (0), math.rad(0)), 0.3)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(-60)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0),     math.rad(0), math.rad(60)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.4, -0.6) * CFrame.Angles(math.rad(10), 0, 0), 0.3)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8, -.4) * CFrame.Angles(math.rad(-20), 0, 0),     0.3)
	end
end
end)

spawn(function() 
	while wait() do
		updateFly()
	end
end)

spawn(function() 
	while wait(4) do
		GroundWave()
	end
end)

spawn(function()
	while wait(.1) do
		Magik()	
	end
end)

spawn(function()
	while wait(.1) do
		Magik2()	
	end
end)

spawn(function()
	while wait(.1) do
		FDebris()	
	end
end)



function Lightning(Part0,Part1,Times,Offset,Color,Thickness,Trans) -- Lightning module
    local magz = (Part0 - Part1).magnitude
    local curpos = Part0
    local trz = {-Offset,Offset}
    for i=1,Times do
        local li = Instance.new("Part", torso)
		li.Name = "Lightning"
		li.TopSurface =0
		li.Material = "Neon"
		li.BottomSurface = 0
		li.Anchored = true
		li.Locked = true
		li.Transparency = Trans or 0.4
		li.BrickColor = BrickColor.new(Color)
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(Thickness,Thickness,magz/Times)
        local Offzet = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
        local trolpos = CFrame.new(curpos,Part1)*CFrame.new(0,0,magz/Times).p+Offzet
        if Times == i then
        local magz2 = (curpos - Part1).magnitude
        li.Size = Vector3.new(Thickness,Thickness,magz2)
        li.CFrame = CFrame.new(curpos,Part1)*CFrame.new(0,0,-magz2/2)
        else
        li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p
        game.Debris:AddItem(li,.1)
    end
end

BodyParts = {} 
for _, v in pairs(char:GetChildren()) do
    if v:IsA("Part") and v.Name ~= "HitBox" and v.Name ~= "Thingy" then
        table.insert(BodyParts, v)
    end
end

Bounding = {} -- Calculate the bounding boxes
for _, v in pairs(BodyParts) do
	local temp = {X=nil, Y=nil, Z=nil}
	temp.X = v.Size.X/2 * 10
	temp.Y = v.Size.Y/2 * 10
	temp.Z = v.Size.Z/2 * 10
	Bounding[v.Name] = temp
end

while wait(lightspeed) do 
			lightspeed = math.random(0.1,0.2)
	local Body1 = BodyParts[math.random(#BodyParts)]
	local Body2 = BodyParts[math.random(#BodyParts)]
	local Pos1 = Vector3.new(
		math.random(-Bounding[Body1.Name].X, Bounding[Body1.Name].X)/10,
		math.random(-Bounding[Body1.Name].Y, Bounding[Body1.Name].Y)/10,
		math.random(-Bounding[Body1.Name].Z, Bounding[Body1.Name].Z)/10
)
	local Pos2 = Vector3.new(
		math.random(-Bounding[Body2.Name].X, Bounding[Body2.Name].X)/10,
		math.random(-Bounding[Body2.Name].Y, Bounding[Body2.Name].Y)/10,
		math.random(-Bounding[Body2.Name].Z, Bounding[Body2.Name].Z)/10
)
	local SPos1 = Body1.Position + Pos1
	local SPos2 = Body2.Position + Pos2
	
	Lightning(SPos1, SPos2, 4, 3, eColors[math.random(1,#eColors)], .2, .56) 
end
  
end}

 
 

module[1] = {"Grab Knife",function()

me = game.Players.LocalPlayer
char = me.Character
selected = false
attacking = false
hurt = false
grabbed = nil
mode = "drop"
bloodcolors = {"Bright red", "Really red"}


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
	gi.FontSize = "Size12"
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

righthold = Instance.new("Part")
prop(righthold, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w11 = Instance.new("Weld")
weld(w11, rarm, righthold, 0, 0, 0, 0, 1, 0)

lefthold = Instance.new("Part")
prop(lefthold, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w12 = Instance.new("Weld")
weld(w12, larm, lefthold, 0, 0, 0, 0, 1, 0)

hold = Instance.new("Part")
prop(hold, bricks, false, 0, 0, 0.2, 0.4, 0.7, "Black", false, "Custom")
oh = Instance.new("Weld")
weld(oh, lleg, hold, -math.pi/1.4, 0, math.rad(35), 0.55, -0.9, 0.3)

knife = Instance.new("Part")
prop(knife, bricks, false, 0, 0, 0.35, 1.1, 0.5, "Reddish brown", false, "Custom")
orr = Instance.new("Weld")
weld(orr, hold, knife, 0, 0, 0, 0, 0.7, 0)
ar = Instance.new("Weld")
weld(ar, lefthold, nil, math.pi/2, 0, math.pi, 0, 0, 0)


blade = Instance.new("Part")
prop(blade, bricks, false, 0, 0, 0.1, 1.5, 0.4, "Medium grey", false, "Custom")
Instance.new("BlockMesh",blade).Scale = Vector3.new(0.3,1,1)
w2 = Instance.new("Weld")
weld(w2, knife, blade, 0, 0, 0, 0, -1.2, 0)

blade2 = Instance.new("Part")
prop(blade2, bricks, false, 0, 0, 0.1, 0.5, 0.4, "Medium grey", false, "Custom")
local mew = Instance.new("SpecialMesh",blade2)
mew.MeshType = "Wedge"
mew.Scale = Vector3.new(0.3,1,1)
w3 = Instance.new("Weld")
weld(w3, blade, blade2, 0, 0, 0, 0, -1, 0)




rb = Instance.new("Part")
prop(rb, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w13 = Instance.new("Weld")
weld(w13, torso, rb, 0, 0, 0, -1.5, -0.5, 0)

lb = Instance.new("Part")
prop(lb, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
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
	local lol3 =math.random(5,30)/100
	local lol4 = math.random(1,#bloodcolors)
	local p = Instance.new("Part")
	prop(p,part.Parent,false,0,0,lol1,lol2,lol3,bloodcolors[lol4],false,"Custom")
	p.CFrame = part.CFrame * CFrame.new(math.random(-5,5)/10,po,math.random(-5,5)/10)
	p.Velocity = Vector3.new(math.random(-190,190)/10,math.random(-190,190)/10,math.random(-190,190)/10)
	p.RotVelocity = Vector3.new(math.random(-400,400)/10,math.random(-400,400)/10,math.random(-400,400)/10)
	coroutine.resume(coroutine.create(function()
		wait(3)
		p:remove()
	end))
end

if script.Parent.className ~= "HopperBin" then
	h = Instance.new("HopperBin",me.Backpack)
	h.Name = "Grab"
	script.Parent = h
end

bin = script.Parent

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
		elseif hurt == false and grabbed ~= nil and grabweld ~= nil and mode == "throw" then
			grabweld:remove()
			grabweld = nil
			local bf = Instance.new("BodyForce",grabbed)
			bf.force = torso.CFrame.lookVector * 8500
			bf.force = bf.force + Vector3.new(0,7400,0)
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
				for i=1, 60 do
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
			inform("Mode: Drop",2)
		elseif key == "e" then
			mode = "throw"
			inform("Mode: Throw",2)
		elseif key == "f" then
			mode = "kill"
			inform("Mode: Kill",2)
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

inform("Grab script loaded succesfully.",2)

end}
module[2] = {"GrabNthrow",function()

me = game.Players.LocalPlayer
ch = me.Character
to = ch.Torso
myhum = ch.Humanoid

if script.Parent.className ~= "HopperBin" then
	hop = Instance.new("HopperBin")
	hop.Parent = me.Backpack
	hop.Name = "GrabNThrow"
	script.Parent = hop
end

sp = hop

p = Instance.new("Part")
p.Parent = ch
p.formFactor = 0
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.Anchored = false
p.Transparency = 1
p:BreakJoints()
m = Instance.new("SpecialMesh")
m.Parent = p
m.MeshType = "Sphere"
m.Scale = Vector3.new(1.3,1.3,1.3)
p2 = p:clone()
p2.Parent = ch
p2:BreakJoints()

w = Instance.new("Weld")
w.Parent = to
w.Part0 = w.Parent
w.Part1 = p
w.C1 = CFrame.new(-1.5,-0.5,0)
w2 = Instance.new("Weld")
w2.Parent = to
w2.Part0 = w2.Parent
w2.Part1 = p2
w2.C1 = CFrame.new(1.5,-0.5,0)

larm = ch["Left Arm"]
rarm = ch["Right Arm"]

right = Instance.new("Weld")
right.Parent = p
right.Part0 = nil
right.Part1 = nil
right.C1 = CFrame.new(0,0.5,0)

left = Instance.new("Weld")
left.Parent = p2
left.Part0 = nil
left.Part1 = nil
left.C1 = CFrame.new(0,0.5,0)

origin = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)

using = false
enabled = true
mode = 0

function toch(hit)
	if enabled == true then return end
	local hum = hit.Parent:findFirstChild("Humanoid")
	if hum ~= nil then
		local torso = hit.Parent:findFirstChild("Torso")
		if torso ~= nil then
			enabled = true
			hum.Sit = true
			local weld = Instance.new("Weld")
			weld.Parent = rarm
			weld.Part0 = weld.Parent
			weld.Part1 = torso
			weld.C1 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(1.5,1.5,0)
			myhum.WalkSpeed = 0
			to.Anchored = true
			for i=1, 10 do
				wait()
				left.C0 = left.C0 * CFrame.fromEulerAnglesXYZ(0.2,0,0)
				right.C0 = right.C0 * CFrame.fromEulerAnglesXYZ(0.2,0,0)
			end
			wait(0.5)
			weld:remove()
			local duh = false
			torso.Touched:connect(function(hit)
				if duh == true then return end
				duh = true
				if hit.Parent.Name == xs then return end
				hum.Health = hum.Health - 10
			end)
			torso.Velocity = to.CFrame.lookVector * Vector3.new(100,10,100)
			coroutine.resume(coroutine.create(function()
				for i=1, 20 do
					wait(0.03)
					local pa = torso.Parent:GetChildren()
					for i=1, #pa do
						if pa[i].className == "Part" then
							local k = pa[i]:clone()
							k.Parent = workspace
							k.Anchored = true
							k.CanCollide = false
							k.BrickColor = BrickColor.new("Black")
							k.Transparency = 0.7
							coroutine.resume(coroutine.create(function()
								wait(0.05)
								for i=1, 10 do
									wait()
									k.Transparency = k.Transparency + 0.03
								end
								k:remove()
							end))
						end
					end
				end
			end))
			for i=1, 7 do
				wait()
				left.C0 = left.C0 * CFrame.fromEulerAnglesXYZ(-0.5,0,0)
				right.C0 = right.C0 * CFrame.fromEulerAnglesXYZ(-0.5,0,0)
			end
			wait(0.02)
			myhum.WalkSpeed = 16
			to.Anchored = false
			wait(0.1)
			using = false
			right.Part0 = nil
			right.Part1 = nil
			left.Part0 = nil
			left.Part1 = nil
			left.C0 = origin
			right.C0 = origin
		end
	end
end

rarm.Touched:connect(toch)
larm.Touched:connect(toch)


function select(mouse)
	mouse.Button1Down:connect(function()
		if using == true then return end
		using = true
		enabled = false
		left.Part0 = left.Parent
		left.Part1 = larm
		right.Part0 = right.Parent
		right.Part1 = rarm
		for i=1, 10 do
			wait()
			left.C0 = left.C0 * CFrame.fromEulerAnglesXYZ(0.15,0,0)
			right.C0 = right.C0 * CFrame.fromEulerAnglesXYZ(0.15,0,0)
		end
		wait(1)
		if enabled == true then return end
		enabled = true
		for i=1, 10 do
			wait()
			left.C0 = left.C0 * CFrame.fromEulerAnglesXYZ(-0.15,0,0)
			right.C0 = right.C0 * CFrame.fromEulerAnglesXYZ(-0.15,0,0)
		end
		using = false
		right.Part0 = nil
		right.Part1 = nil
		left.Part0 = nil
		left.Part1 = nil
		left.C0 = origin
		right.C0 = origin
	end)
end

sp.Selected:connect(select)

end}
module[3] = {"Grasp Of Midas",function()
Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
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
local m = Instance.new("Model",Character)
m.Name = "WeaponModel"

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

--example: local con = HitboxB.Touched:connect(function(hit) Damagefunc(Hitbox,hit,Dmg,Dmg,math.random(Knockback,Knockback),"Normal",RootPart,.2,1) end) 

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,1,"Black","Handle",Vector3.new(1, 0.800000012, 1))
Handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.96453857e-005, 0.000481128693, -1.83582306e-005, 1, 1.92410751e-014, -4.42007258e-005, -1.93349195e-014, 0.999999881, -2.12312026e-012, 4.42007258e-005, 2.12312091e-012, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,1,"Black","Hitbox",Vector3.new(1.60000002, 3.4000001, 1))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300050735, 0.100232601, 3.57627869e-007, 1, 1.06558363e-014, -4.67116479e-009, -1.06558363e-014, 1, -7.35089073e-017, 4.67116479e-009, 7.35089073e-017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1, 0.200000003, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.20159912e-005, 1.10002291, 1.57356262e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254525e-014, 0.999996662, -2.14035647e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, -0.699694633, 0.410015702, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, -0.699361324, -0.40998435, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.200000003, 0.800000012, 0.620000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409914017, 0.000346660614, 1.57356262e-005, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409914017, 0.700180769, 1.57356262e-005, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1.01999998, 0.800000012, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, 0.000400543213, 0.410015702, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.200000003, 0.800000012, 0.620000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410078049, 0.000326633453, 1.57356262e-005, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1.01999998, 0.800000012, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, 0.000392436981, -0.40998435, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, 0.700207949, 0.410015702, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410078049, -0.699380398, 1.56164169e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.4100914, 0.700154781, 1.57356262e-005, 1, -1.93349195e-014, 4.42007258e-005, 1.92409124e-014, 0.999991417, 2.12310291e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, 0.700230837, -0.40998435, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.400000006, 2, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699924469, 4.14848328e-005, 2.16960907e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1, 1.39999998, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.57356262e-005, -0.299851894, 0.999885559, -4.41999473e-005, -5.95854743e-008, 1, -2.60350986e-012, 1, 5.95854743e-008, -1, 3.01648321e-014, -4.41999473e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1, 0.600000024, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.57356262e-005, -0.700007677, 0.999902725, 4.41999473e-005, -2.13950775e-012, -1, -2.65373322e-014, -1, 2.13950667e-012, -1, 2.64427677e-014, -4.41999473e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.400000006, 1.39999998, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.848457336, -0.300411701, -0.141453743, 0.707042813, -1.50516166e-012, -0.707170904, 1.1783393e-014, 1, -2.11664583e-012, 0.707170904, 1.48822632e-012, 0.707042813))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.6998806, -0.499980569, -0.399654627, 0.999999881, 3.17161053e-008, 4.20847573e-005, -4.21145523e-005, -2.83570323e-009, 0.999999762, 3.17162403e-008, -0.999999762, -2.83438673e-009))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.404000014, 0.400000006, 0.995999992))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699882507, 0.500019133, 1.00034523, 0.999999881, 3.17161053e-008, 4.20847573e-005, -4.21145523e-005, -2.83570323e-009, 0.999999762, 3.17162403e-008, -0.999999762, -2.83438673e-009))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.404000014, 0.400000006, 0.560000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699882507, 0.500019133, -0.399654627, 0.999999881, 3.17161053e-008, 4.20847573e-005, -4.21145523e-005, -2.83570323e-009, 0.999999762, 3.17162403e-008, -0.999999762, -2.83438673e-009))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.404000014, 0.400000006, 0.995999992))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409921646, -0.699380398, 1.57356262e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1, 0.200000003, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.56164169e-005, -1.10002637, 0.699918747, 4.41999473e-005, -2.14036427e-012, -1, -1.23254932e-014, -1, 2.14036362e-012, -1, 1.22308889e-014, -4.41999473e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.16960907e-005, -0.599924088, 1.49999762, 4.41999473e-005, -2.14036427e-012, -1, 1, -1.22308889e-014, 4.41999473e-005, -1.23254932e-014, -1, 2.14036362e-012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.400000006, 1.39999998, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.141283035, -0.300261259, -0.848459244, 0.707067847, -1.51049073e-012, -0.70714587, 1.20093924e-014, 1, -2.12403055e-012, 0.70714587, 1.49334115e-012, 0.707067847))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.6998806, -0.499980569, 1.00034523, 0.999999881, 3.17161053e-008, 4.20847573e-005, -4.21145523e-005, -2.83570323e-009, 0.999999762, 3.17162403e-008, -0.999999762, -2.83438673e-009))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.403999984, 0.399999976, 0.560000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(1, 0.200000003, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.16960907e-005, -0.79992485, 1.19999647, 4.41999473e-005, -2.14036427e-012, -1, 0.999999821, 2.980231e-008, 4.419994e-005, 2.980231e-008, -0.999999821, 3.45762416e-012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Black","Part",Vector3.new(0.200000003, 0.400000006, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599924088, -1.19995832, 2.16960907e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Finger1Connector=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,1,"Bright blue","Finger1Connector",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger1Connectorweld=weld(m,Handle,Finger1Connector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.399971008, 1.29990399, 0.200015664, 1, 1.78782017e-007, 4.41999473e-005, -1.7878321e-007, 0.999993324, -1.00110302e-011, -4.41999473e-005, 2.10883698e-012, 1))
Finger2Connector=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,1,"Bright blue","Finger2Connector",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger2Connectorweld=weld(m,Handle,Finger2Connector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399934769, 1.29982674, 0.400015712, 1, 2.97982776e-008, 4.41999473e-005, -2.97984766e-008, 0.999993324, -3.43642345e-012, -4.41999473e-005, 2.11934723e-012, 1))
Finger3Connector=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,1,"Bright blue","Finger3Connector",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger3Connectorweld=weld(m,Handle,Finger3Connector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399934769, 1.29971194, 0.140015721, 1, 8.93768473e-008, 4.421228e-005, -8.93774441e-008, 0.999993324, -1.82566007e-012, -4.421228e-005, -2.12587717e-012, 1))
Finger4Connector=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,1,"Bright blue","Finger4Connector",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger4Connectorweld=weld(m,Handle,Finger4Connector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399930954, 1.29973722, -0.119984269, 1, 8.93806842e-008, 4.421228e-005, -8.9381281e-008, 0.999993324, -1.82601091e-012, -4.421228e-005, -2.12569589e-012, 1))
Finger5Connector=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,1,"Bright blue","Finger5Connector",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger5Connectorweld=weld(m,Handle,Finger5Connector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399984121, -1.29981911, -0.399932861, -4.41701486e-005, 5.95858012e-008, 1, 4.58027785e-008, -0.999993324, 5.95882241e-008, 1, 4.58051019e-008, 4.41701486e-005))
Finger1=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Bright blue","Finger1",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Finger1weld=weld(m,Finger1Connector,Finger1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, 0.100007057, 0, 1, 2.06483719e-011, -5.55111512e-017, -2.54232191e-011, 0.999986649, 4.50594423e-016, 5.55111512e-017, -4.49727061e-016, 1))
Finger2=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Bright blue","Finger2",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Finger2weld=weld(m,Finger2Connector,Finger2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.199999213, 1.1920929e-007, 1, 8.77520279e-013, 0, -1.67332814e-012, 0.999986649, 1.50920942e-016, 0, -1.50053581e-016, 1))
Finger3=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Bright blue","Finger3",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Finger3weld=weld(m,Finger3Connector,Finger3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.200001121, 1.1920929e-007, 1, 2.64321898e-012, -4.35207426e-013, -5.03064257e-012, 0.999986649, -1.23739232e-016, 4.35207426e-013, 2.38535383e-016, 1))
Finger4=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Bright blue","Finger4",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Finger4weld=weld(m,Finger4Connector,Finger4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.199998736, 1.1920929e-007, 1, 2.64321898e-012, -4.35207426e-013, -5.03064257e-012, 0.999986649, -1.23732138e-016, 4.35207426e-013, 2.38539513e-016, 1))
Finger5=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,"Bright blue","Finger5",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Finger5weld=weld(m,Finger5Connector,Finger5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.38418579e-007, -0.199927688, 9.53674316e-006, 1, -3.86535248e-012, -7.77482967e-010, 5.45696821e-012, 0.999986649, -1.35540613e-012, 7.77477638e-010, 2.57749442e-012, 1))

function FuckYou()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-130), math.rad(-170)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
for i = 0,1,0.01 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-130), math.rad(-150)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
attack = false
end

function attackone()
attack = true
local con = Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,20,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.5) * angles(math.rad(90), math.rad(0), math.rad(-50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-15)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(0))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=200632136",Hitbox,1,.9)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-70)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(60)),.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.5) * angles(math.rad(90), math.rad(0), math.rad(120)), 0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(130),math.rad(0))*angles(math.rad(-2),math.rad(0),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.4)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(20)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(-20)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(-20)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(-20)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(-20),math.rad(0),math.rad(-20)),.3)
end
attack = false
con:disconnect()
end

function attacktwo()
attack = true
local con = Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,20,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(60)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.5) * angles(math.rad(0), math.rad(150), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(130),math.rad(-10))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
so("http://roblox.com/asset/?id=200632211",Hitbox,1,.9)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(70)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-60)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(10))*angles(math.rad(-2),math.rad(0),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.4)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
attack = false
con:disconnect()
end

function attackthree()
attack = true
local con = Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,20,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(60)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(130),math.rad(-10))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=200632136",Hitbox,1,.8)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(90)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-80)),.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -.5) * angles(math.rad(90), math.rad(0), math.rad(-40*i)), 0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.4)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
attack = false
con:disconnect()
end

function weld5(part0, part1, c0, c1)
    local weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    
weeld.C0=c0
    weeld.C1=c1
    return weeld
end

function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0.5,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
local wld=nil
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 

function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0.5,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
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

local Grab = false

function MagniDamage(Hit,Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
Damagefunc(Hit,head,mindam,maxdam,knock,Type,RootPart,.2,1,3)
end
end
end
end
end

function MagniDamage2(Hit,Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
Damagefunc(Hit,head,mindam,maxdam,knock,Type,RootPart,.2,1,3)
for i,v in pairs (hum.Parent:GetChildren()) do
if v:IsA("Humanoid") then
v:remove()
end
if v:IsA("Part") then
v.BrickColor = BrickColor.new("Black")
v.Reflectance = 0.5
v.Material = "SmoothPlastic"
v.CanCollide = true
end
end
end
end
end
end
end


function GrabNSlam()
attack = true
so("http://roblox.com/asset/?id=200632211",Hitbox,1,.9)
if Grab == false then
gp = nil
con1=Hitbox.Touched:connect(function(hit) -- credits to TheDarkRevenant for the grabbing
local ht = hit.Parent          
local hum1=ht:FindFirstChild('Humanoid')
if hum1 ~= nil then
hum1.PlatformStand=true
gp = ht
Grab = true
local asd=weld5(RightArm,ht:FindFirstChild("Torso"),CFrame.new(0,-1.7,0),CFrame.new(0,0,0))
asd.Parent = RightArm
asd.Name = "asd"
asd.C0=asd.C0*CFrame.Angles(math.rad(-90),0,0)
so("http://roblox.com/asset/?id=200632821",Torso,1,.9)
for i,v in pairs (gp:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("Black")
v.Reflectance = 0.5
v.Material = "SmoothPlastic"
end
end
elseif hum1 == nil then
con1:disconnect()
wait() return
end
end)
end
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(50)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-40)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(10))*angles(math.rad(-2),math.rad(0),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.4)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
if Grab == true then
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-50)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(40)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(130),math.rad(10))*angles(math.rad(-2),math.rad(0),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.4)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
so("http://roblox.com/asset/?id=200632875",Torso,1,.9)
MagicCircle(BrickColor.new("Black"),Hitbox.CFrame,5,5,5,6,6,6,0.05)
MagicRing(BrickColor.new("Black"),Hitbox.CFrame,5,5,5,6,6,6,0.05)
MagniDamage(Hitbox,Hitbox,10,30,50,0,"Normal")
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(50),math.rad(0),math.rad(70)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-60)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(-70)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(10))*angles(math.rad(-10),math.rad(0),math.rad(0)),.4)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
end
con1:disconnect()
for i,v in pairs(RightArm:GetChildren()) do
            if v.Name == "asd" and v:IsA("Weld") then
                v:Remove()
         
end
end
Grab = false
attack = false
end

function BlastEffect(brickcolor,cframe,x1,y1,z1,x2,y2,z2)
local prt=part(3,workspace,"Neon",0.5,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame = cframe
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

function HammerFist()
attack = true
Humanoid.WalkSpeed = 0
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(150), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(-5))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-80),math.rad(-5))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.07,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=200632875",Torso,1,.9)
so("http://roblox.com/asset/?id=263610131",Torso,1,1)
so("http://roblox.com/asset/?id=263610111",Torso,1,1)
MagniDamage(Hitbox,Hitbox,20,20,30,0,"Knockdown")
local hit,pos=rayCast(Hitbox.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,100,Character)
if hit~=nil then
local ref=part(3,workspace,"Neon",0,1,BrickColor.new("Bright blue"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,3)
for i=1,10 do
local Col=BrickColor.new("Black")
local groundpart=part(3,workspace,"SmoothPlastic",0.5,0,Col,"Ground",vt(math.random(50,200)/100,math.random(50,200)/100,math.random(50,200)/100))
groundpart.Anchored=true
groundpart.CanCollide=false
groundpart.CFrame=cf(pos)*cf(math.random(-500,500)/100,0,math.random(-500,500)/100)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(groundpart,5)
end 
BlastEffect(BrickColor.new("Bright orange"),cf(pos),1,1,1,.7,.7,.7)
MagicCircle(BrickColor.new("Black"),cf(pos),3,3,3,5,5,5,0.05)
MagniDamage(ref,ref,10,10,20,math.random(10,20),"Knockdown")
end
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-1.5)* angles(math.rad(40),math.rad(0),math.rad(0)),.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(0)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,.5,-.2)*angles(math.rad(0),math.rad(90),math.rad(30))*angles(math.rad(2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5,-.5)*angles(math.rad(0),math.rad(-80),math.rad(40))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.07,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
attack = false
Humanoid.WalkSpeed = 16
end

function TurnIntoGold()
attack = true
so("http://roblox.com/asset/?id=200632211",Hitbox,1,.9)
if Grab == false then
gp = nil
con1=Hitbox.Touched:connect(function(hit) -- credits to TheDarkRevenant for the grabbing
local ht = hit.Parent          
local hum1=ht:FindFirstChild('Humanoid')
if hum1 ~= nil then
hum1.PlatformStand=true
gp = ht
Grab = true
local asd=weld5(RightArm,ht:FindFirstChild("Torso"),CFrame.new(0,-1.7,0),CFrame.new(0,0,0))
asd.Parent = RightArm
asd.Name = "asd"
asd.C0=asd.C0*CFrame.Angles(math.rad(-90),0,0)
so("http://roblox.com/asset/?id=200632821",Torso,1,.9)
--[[for i,v in pairs (gp:GetChildren()) do
if v:IsA("Part") then
v.BrickColor = BrickColor.new("Black")
v.Reflectance = 0.5
v.Material = "SmoothPlastic"
end
end]]--
elseif hum1 == nil then
con1:disconnect()
wait() return
end
end)
end
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-40)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(10))*angles(math.rad(-2),math.rad(0),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.4)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
if Grab == true then
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(130), math.rad(0), math.rad(0)), 0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10))*angles(math.rad(-2),math.rad(0),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.4)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
so("http://roblox.com/asset/?id=248572927",Torso,1,1)
MagniDamage2(Hitbox,Hitbox,5,30,50,0,"Normal")
MagicCircle(BrickColor.new("Black"),RightArm.CFrame,3,3,3,5,5,5,0.05)
BlastEffect(BrickColor.new("Black"),Torso.CFrame,1,1,1,.7,.7,.7)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(130), math.rad(0), math.rad(0)), 0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10))*angles(math.rad(-2),math.rad(0),math.rad(0)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.4)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
end
con1:disconnect()
Grab = false
attack = false
for i,v in pairs(RightArm:GetChildren()) do
            if v.Name == "asd" and v:IsA("Weld") then
                v:Remove()
         
end
end
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
if attack == false and k == 'q' then
GrabNSlam()
elseif attack == false and k == 'e' then
HammerFist()
elseif attack == false and k == 'r' then
TurnIntoGold()
end
end)


local sine = 0
local change = 1
local val = 0
local donum = .5

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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(60)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(-60)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(20),math.rad(0),math.rad(50)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(-10),math.rad(0),math.rad(50)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(50),math.rad(0),math.rad(-20)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(5)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(5), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-5))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.07,0)*angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(-50),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10)*math.cos(sine/13), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10)*math.cos(sine/13), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(5)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-5)),.3)
Finger1weld.C0=clerp(Finger1weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Finger2weld.C0=clerp(Finger2weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger3weld.C0=clerp(Finger3weld.C0,cf(0,0.08,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger4weld.C0=clerp(Finger4weld.C0,cf(0,0.09,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Finger5weld.C0=clerp(Finger5weld.C0,cf(0,-0.1,0)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
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
module[4] = {"Green Tank",function()
local p = game:service'Players'.LocalPlayer
local c = p.Character
local bp = p.Backpack
pcall(function() _G.mm:Remove() end)
pcall(function() bp.RMTank:Remove() end)
it = Instance.new
v3=Vector3.new
bc=BrickColor.new 
c3=Color3.new 
cn=CFrame.new 
ca=CFrame.Angles
ti=table.insert 
tr=table.remove 
rn=math.random 
rd=math.rad 
mf=math.floor
asset = "http://www.roblox.com/asset/?id="
ds = {}
ds.Claw = "10681506"
ds.Ring = "3270017"
ds.Crack = "49173398" 
ds.Cloud = "1095708" 
ds.Spike = "1033714" 
ds.Rock = "1290033" 
ds.Crown = "1323306"
ds.Hood = "16952952"
ds.Slash = "10209645"
ds.Slash2 = "46760716"
ds.MadFace = "2235131"
ds.BanditMask = "20637493"
ds.Hood2 = "25211365"
ds.HoodT2 = "64240784"
ds.Axe = "12768042"
ds.AxeT = "12768034"
ds.Fist = "65322375"
ds.Tree1 = "1090398"
ds.Vine = "13108500"
ds.VineT = "17585271"
ds.TreeTexture = "2861779" 
ds.Tug = "31173820" -- sound
ds.Fire = "2693346" --"2760979" 
ds.Hit = "2801263"
ds.BulletHole = "64291961"
ds.Camo = "4268107"
table.foreach(ds,function(a,b)
if tonumber(b:sub(1,3)) then
ds[a] = asset .. b game:service'ContentProvider':Preload(ds[a]) 
end
end)
q = function(f)
coroutine.resume(coroutine.create(function()
f()
end))
end 
ft = function(tablez,item)
for i=1,#tablez do
if tablez[i] == item then
return i
end
end 
return nil 
end
pa = function(pa,pn,sh,x,y,z,c,a,tr,re,bc2) 
local fp=nil 
if sh ~= "Wedge" and sh ~= "CornerWedge" and sh ~= "VehicleSeat" and sh ~= "Seat" then 
fp=it("Part",pa) 
fp.Shape=sh 
fp.formFactor="Custom" 
elseif sh == "Wedge" then 
fp=it("WedgePart",pa) 
fp.formFactor="Custom"
elseif sh == "CornerWedge" then 
fp=it("CornerWedgePart",pa) 
elseif sh == "VehicleSeat" then 
fp=it("VehicleSeat",pa) 
elseif sh == "Seat" then 
fp=it("Seat",pa) 
end 
fp.Size=v3(x,y,z) 
fp.Friction = 2 
fp.CanCollide=c 
fp.Anchored=false 
fp.BrickColor=bc(bc2) 
fp.Transparency=tr 
fp.Reflectance=re 
fp.BottomSurface=0 
fp.Name=pn 
fp.Locked = true
--fp.FrontSurface="Hinge"
fp.TopSurface=0 
fp.CFrame = cn(-9000,9000,-9000)
fp:BreakJoints() 
fp.Anchored = a 
return fp 
end 
weld = function(pa,p0,p1,x,y,z,a,b,c) 
local fw=it("Weld",pa) 
fw.Part0=p0 
fw.Part1=p1 
fw.C0=cn(x,y,z) *ca(a,b,c) 
return fw 
end
fade = function(prt,incr) 
q(function() 
for i=prt.Transparency,1,incr do 
prt.Transparency=i 
wait() 
end
prt:Remove''
end) 
end
stick = function(hit2,hit) 
local weld=it("Weld") 
weld.Part0=hit2 
weld.Part1=hit 
local HitPos=hit2.Position 
local CJ=cn(HitPos) 
local C0=hit2.CFrame:inverse() *CJ 
local C1=hit.CFrame:inverse() * CJ 
weld.C0=C0 
weld.C1=C1 
weld.Parent=hit2
end 
ray = function(Pos, Dir,xxz) 
local xxz2=c 
if xxz ~= nil then 
xxz2=nil 
end 
return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999),xxz2)
end 
ft2 = function(tablez,item) 
for i=1,#tablez do 
if tablez[i][1] == item then 
return i 
end 
end 
return nil 
end
Trail = function(ob,times,waitz,col,thickz,ofz) 
q(function() 
local oldpos=(ob.CFrame *ofz).p 
for i=1,times do 
local obp=(ob.CFrame *ofz).p 
local mag=(oldpos - obp).magnitude 
local tr=pa(ob,"trail","Block",0,0,0,false,false,0.5,0.15,col) 
tr.Anchored=true 
tr.CFrame=cn(oldpos,obp) 
tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2) 
local trm=it("CylinderMesh",tr) 
trm.Scale=v3(5*thickz,mag*5,5*thickz) 
q(function() 
for i=5*thickz,0,-5*thickz/10 do 
trm.Scale=v3(i,mag*5,i) 
wait() 
end 
tr:Remove'' 
end) 
tr.CFrame=tr.CFrame *ca(rd(90),0,0) 
oldpos=obp wait(waitz) 
end 
end) 
end
qi = function(ttz) 
local qii = it(ttz[1],ttz[2]) 
table.foreach(ttz,function(oi,oi2) 
if oi ~= 1 and oi ~= 2 then 
qii[oi] = oi2 
end 
end) 
return qii 
end
de = function(it,ti) game:service'Debris':AddItem(it,ti) end
GlowMesh = function(anch,meshid2,rootz,mv3,colzz,adjus,l1,l2,l3) q(function()
local spi=pa(rootz,"","Block",1,1,1,false,false,l1,0,colzz) local spim=it("SpecialMesh",spi) if meshid2:lower()=="sphere" then spim.MeshType="Sphere" elseif meshid2:lower()=="block" then spim.MeshType="Brick" else spim.MeshType="FileMesh" spim.MeshId=meshid2 end
if anch then local spiw=qi({"Weld",spi,Part0=rootz,Part1=spi}) spiw.C0 =spiw.C0 *adjus else spi.Anchored=true spi.CFrame=adjus end 
for i=l1,l2,l1 do spi.Transparency=i spim.Scale=mv3*(i+0.3) wait() end spi:Remove'' end) 
end
DetectSurface = function(pos, part)
local surface = nil
local pospos = part.CFrame
local pos2 = pospos:pointToObjectSpace(pos)
local siz = part.Size
local shaep = part.Shape
if shaep == Enum.PartType.Ball or shaep == Enum.PartType.Cylinder then
surface = {"Anything", cn(pospos.p, pos)*cn(0, 0, -(pospos.p - pos).magnitude+0.12)*ca(rd(-90), 0, 0)}
else
if pos2.Y > ((siz.Y/2)-0.01) then
surface = {"Top", ca(0, 0, 0)}
elseif pos2.Y < -((siz.Y/2)-0.01) then
surface = {"Bottom", ca(-math.pi, 0, 0)}
elseif pos2.X > ((siz.X/2)-0.01) then
surface = {"Right", ca(0, 0, rd(-90))}
elseif pos2.X < -((siz.X/2)-0.01) then
surface = {"Left", ca(0, 0, rd(90))}
elseif pos2.Z > ((siz.Z/2)-0.01) then
surface = {"Back", ca(rd(90), 0, 0)}
elseif pos2.Z < -((siz.Z/2)-0.01) then
surface = {"Front", ca(rd(-90), 0, 0)}
end end
return surface
end
BulletHole = function(HitPos,HitObj,sc)
local Surface = DetectSurface(HitPos, HitObj)
local C = cn(HitPos) * ca(HitObj.CFrame:toEulerAnglesXYZ()) * Surface[2]
if Surface[1] == "Anything" then C = Surface[2] end
local bl = pa(workspace,"","Block",sc,0,sc,false,true,1,0,"") qi({"Decal",bl,Face="Top",Texture=ds.BulletHole})
bl.CFrame = C*cn(0,-0.1,0) if not HitObj.Anchored then bl.Anchored = false stick(bl,HitObj) bl.ChildRemoved:connect(function() bl:Remove() end) end de(bl,5) 
end
so = function(id,par,vol,pit) q(function()
local sou = qi({"Sound",par or workspace,Volume=vol/1.5 or 0.75,Pitch=pit or 1,SoundId=id})
wait() sou:play() wait(2) sou:Remove() end) end
GetRegion = function(p0,p1,f,f2) 
q(function()
for i,v in pairs(workspace:FindPartsInRegion3(Region3.new(p0,p1),c,100) ) do 
if v.Parent:findFirstChild("H") == nil and v.Name == "Torso" and v.Parent:findFirstChild("Humanoid") and v.Parent.Humanoid.Health > 0 and v.Parent:findFirstChild("Torso") then 
q(function() 
f(v.Parent) 
end) 
elseif f2 and v.Parent.Parent:findFirstChild("Humanoid") == nil then 
f2(v) 
end 
end
end) 
end 
FindGround = function(pos) 
local ax,ay,az = pos:toEulerAnglesXYZ()
local bhit,bpos=ray(pos.p,pos.p - (pos.p + v3(0,200,0)))
if bhit and bpos then 
return cn(bpos)*ca(ax,ay,az) 
end 
return nil 
end
MakeCrater = function(pos,sc,tyms,debz) 
q(function() 
if not debz then 
debz = 5 
end 
local bhit,bpos=ray(pos,pos - (pos + v3(0,200,0)))
if bhit and bpos then
for i=1,tyms do 
q(function()
local gr = pa(misc,"","Block",rn(5,13)/10*sc,0.25*sc,rn(4,10)/10*sc,true,true,bhit.Transparency,bhit.Reflectance,bhit.BrickColor.Name) 
gr.Material = bhit.Material 
gr.TopSurface = bhit.TopSurface
gr.CFrame = cn(bpos+v3(rn(-12,12)/10*sc,0,rn(-12,12)/10*sc))*ca(rd(rn(-40,40)),rd(rn(-360,360)),rd(rn(-40,40))) 
wait(debz) 
fade(gr,0.1)
end) 
end
end 
end)
end
MakeCrack = function(pos,sc,debz) 
q(function() 
if not debz then 
debz = 5 
end 
local bhit,bpos=ray(pos,pos - (pos + v3(0,10,0)))
if bhit and bpos then
local cr = pa(misc,"","Block",sc,0,sc,false,true,1,0,"") cr.CFrame = cn(bpos)
local dec=qi({"Decal",cr,Face="Top",Texture=ds.Crack}) de(cr,debz)
end 
end)
end
f1 = function(cff,hit2,hit)
local HitPos=cff.p 
local CJ=cn(HitPos) 
local C0=cff:inverse() *CJ 
local C1=hit.CFrame:inverse() * CJ 
return C0,C1
end 
a = {}
a.insw={}
function cleanweld(wexx,namzi) 
local tn=ft2(a.insw,wexx) 
if tn==nil then return end 
if namzi=="p0" then 
a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=0,0,0 elseif namzi=="p1" then
a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=0,0,0 elseif namzi=="a0" then
a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=0,0,0 elseif namzi=="a1" then
a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=0,0,0 
end
end
function c2(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz) 
q(function() 
c1(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz) 
end) 
end
a.Welding=0 
function c1(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz)
if ft2(a.insw,wexx)==nil then 
ti(a.insw,{wexx,{}}) 
local tn=ft2(a.insw,wexx) 
a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=wexx.C0.x,wexx.C0.y,wexx.C0.z 
a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=wexx.C1.x,wexx.C1.y,wexx.C1.z 
a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=wexx.C0:toEulerAnglesXYZ()
a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=wexx.C1:toEulerAnglesXYZ() 
end 
local tn=ft2(a.insw,wexx) 
local xx2,yy2,zz2=0,0,0 
local x2,y2,z2=0,0,0 
if c0orc1==0 then 
xx2,yy2,zz2=a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"] 
x2,y2,z2=a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"] 
elseif c0orc1==1 then 
xx2,yy2,zz2=a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"] 
x2,y2,z2=a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"] 
else 
xx2,yy2,zz2=a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]
x2,y2,z2=a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"] 
end a.Welding=a.Welding + 1 
local twa=1 
if smmx >= 1 then 
else 
for i=smmx,0.8,smmx do 
twa = 1 
if c0orc1==0 then 
wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
elseif c0orc1==1 then 
wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
else local x,y,z = wexx.C0:toEulerAnglesXYZ()
wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i))*ca(x,y,z)
wexx.C1=cn(wexx.C1.x,wexx.C1.y,wexx.C1.z)*ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))
end 
if fu then 
q(fu) 
end 
wait() 
end 
for i=0.8,1,smmx*0.45 do 
twa = 1 
if c0orc1==0 then 
wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
elseif c0orc1==1 then 
wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
else local x,y,z = wexx.C0:toEulerAnglesXYZ()
wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i))*ca(x,y,z)
wexx.C1=cn(wexx.C1.x,wexx.C1.y,wexx.C1.z)*ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))
end
wait() 
end 
end 
local i=1 
if c0orc1==0 then 
wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
elseif c0orc1==1 then 
wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
else local x,y,z = wexx.C0:toEulerAnglesXYZ()
wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i))*ca(x,y,z)
wexx.C1=cn(wexx.C1.x,wexx.C1.y,wexx.C1.z)*ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))
end 
a.Welding=a.Welding - 1 
local tn=ft2(a.insw,wexx)
if c0orc1==0 then 
a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)
a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)
elseif c0orc1==1 then
a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)
a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)
elseif c0orc1==3 then
local x,y,z=wexx.C0.x,wexx.C0.y,wexx.C0.z 
a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)
local x,y,z=wexx.C1:toEulerAnglesXYZ()
a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)
end 
end 
gunshot = function(speed,sc,dmg,cff) q(function()
local bb = pa(workspace,"","Block",0.2*sc,0.3*sc,0.2*sc,true,true,0,0.1,"Black") qi({"CylinderMesh",bb})
bb.CFrame = cff*ca(rd(rn(-1000,1000)/1500),rd(rn(-1000,1000)/1500),rd(rn(-1000,1000)/1500))
so(ds.Fire,bb,0.3,1) wait() for i=1,50 do 
bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,-1,0)).p)
if bhit and bpos and (bpos - bb.Position).magnitude < speed then break end
bb.CFrame=bb.CFrame*cn(0,speed,0)*ca(rd(-0.2),0,0)
wait()
end bb.CFrame=bb.CFrame*cn(0,(bpos-bb.Position).magnitude,0)
if not bhit.Anchored then 
if bhit.Parent:findFirstChild("Humanoid") then local h = bhit.Parent.Humanoid h.Health=h.Health-dmg so(ds.Hit,bhit,0.3,1) end 
else end bb:Remove()
if bhit.Parent:findFirstChild("Humanoid") == nil then BulletHole(bpos,bhit,0.7*sc) end
end) end
_G.mm = qi({"Model",workspace,Name="RMTank"})
local mm = _G.mm
engine=pa(mm,"","Block",14,3,20,true,false,0,0,"Bright green") it('BlockMesh',engine)
engine.CFrame = c.Torso.CFrame*cn(0,0,-20)
front=pa(mm,"","Wedge",14,3,3,true,false,0,0,"Bright green")
qi({"Weld",front,Part0=engine,Part1=front,C0=cn(0,0,-11.5)*ca(rd(180),rd(180),0)})
front2=pa(mm,"","Wedge",14,2,6,true,false,0,0,"Bright green")
qi({"Weld",front,Part0=engine,Part1=front2,C0=cn(0,2.5,-10)})
back=pa(mm,"","Wedge",14,5,6,true,false,0,0,"Bright green")
qi({"Weld",front,Part0=engine,Part1=back,C0=cn(0,1,13)*ca(rd(180),rd(0),0)})
body2=pa(mm,"","Block",14,2,17,true,false,0,0,"Bright green") it('BlockMesh',body2)
qi({"Weld",body2,Part0=engine,Part1=body2,C0=cn(0,2.5,1.5)})
body3=pa(mm,"","Wedge",14,1,8,true,false,0,0,"Bright green") 
qi({"Weld",body2,Part0=engine,Part1=body3,C0=cn(0,4,12)})
lbody=pa(mm,"","Block",2.3,3,24,true,false,0,0,"Bright green") it('BlockMesh',lbody)
qi({"Weld",body2,Part0=engine,Part1=lbody,C0=cn(8.1,2.5,1.5)})
rbody=pa(mm,"","Block",2.3,3,24,true,false,0,0,"Bright green") it('BlockMesh',rbody)
qi({"Weld",body2,Part0=engine,Part1=rbody,C0=cn(-8.1,2.5,1.5)})
lb=pa(mm,"","Block",2.25,0.4,18,true,false,0,0,"Black") it('BlockMesh',lb)
qi({"Weld",body2,Part0=engine,Part1=lb,C0=cn(8,-2.5,1.5)})
rb=pa(mm,"","Block",2.25,0.4,18,true,false,0,0,"Black") it('BlockMesh',lb)
qi({"Weld",body2,Part0=engine,Part1=rb,C0=cn(-8,-2.5,1.5)})
spi=pa(mm,"","Block",5,3,5,true,false,0,0,"Bright green") it('CylinderMesh',spi)
spiw = qi({"Weld",body2,Part0=engine,Part1=spi,C0=cn(0,5,5)})
spi2=pa(mm,"","Block",12,3,12,true,false,0,0,"Bright green") it('BlockMesh',spi2)
qi({"Weld",body2,Part0=spi,Part1=spi2,C0=cn(0,1,0)})
spi6=pa(mm,"","Wedge",12,3,2,true,false,0,0,"Bright green") it('BlockMesh',spi2)
qi({"Weld",body2,Part0=spi2,Part1=spi6,C0=cn(0,0,7)*ca(rd(180),rd(0),0)})
spi3=pa(mm,"","Wedge",3,6,4,true,false,0,0,"Bright green") 
qi({"Weld",body2,Part0=spi2,Part1=spi3,C0=cn(-3,0,-8)*ca(0,0,rd(90))})
spi4=pa(mm,"","Wedge",3,6,4,true,false,0,0,"Bright green") 
qi({"Weld",body2,Part0=spi2,Part1=spi4,C0=cn(3,0,-8)*ca(0,0,rd(-90))})
tilt=pa(mm,"","Block",5,3,5,true,false,0,0,"Bright green") it('CylinderMesh',tilt)
tiltw=qi({"Weld",body2,Part0=spi2,Part1=tilt,C0=cn(0,0.5,-8.5)*ca(0,0,rd(90))})
can=pa(mm,"","Block",2,20,2,true,false,0,0,"Bright green") it('CylinderMesh',can)
canw=qi({"Weld",body2,Part0=tilt,Part1=can,C0=cn(0,0,-11)*ca(rd(-90),0,0)})
can2=pa(mm,"","Block",3.4,1.5,3.4,true,false,0,0,"Bright green") it('CylinderMesh',can2)
qi({"Weld",body2,Part0=can,Part1=can2,C0=cn(0,-4,0)})
can5=pa(mm,"","Block",2.4,1.5,2.4,true,false,0,0,"Bright green") it('CylinderMesh',can5)
qi({"Weld",body2,Part0=can,Part1=can5,C0=cn(0,9,0)})
can3=pa(mm,"","Block",2.5,10,2.5,true,false,0,0,"Bright green") it('CylinderMesh',can3)
qi({"Weld",body2,Part0=can,Part1=can3,C0=cn(0,-5,0)})
can4=pa(mm,"","Block",3,4,3,true,false,0,0,"Bright green") it('CylinderMesh',can4)
qi({"Weld",body2,Part0=can,Part1=can4,C0=cn(0,1,0)})
hol=pa(mm,"","Block",1.75,0,1.75,true,false,0,0,"Really black") it('CylinderMesh',hol)
qi({"Weld",body2,Part0=can,Part1=hol,C0=cn(0,10,0)})
smo = qi({"Smoke",hol,RiseVelocity=25,Size=8,Color=BrickColor.new("White").Color,Opacity=0.1,Enabled=false})
hol2=pa(mm,"","Block",0,0,0,true,false,0,0,"Really black") it('CylinderMesh',hol2).Scale=v3(5,0.2,5)*5
qi({"Weld",body2,Part0=spi2,Part1=hol2,C0=cn(0,1.5,4)})
cap=pa(mm,"","Block",5.1,0,5.1,true,false,0,0,"Brick green") it('CylinderMesh',cap)
capw = qi({"Weld",body2,Part0=hol2,Part1=cap,C0=cn(0,0.1,2.5),C1=cn(0,0,2.5)})
aaa=pa(mm,"","Block",3,0.5,0.5,true,false,0,0,"Brick green") 
qi({"Weld",body2,Part0=hol2,Part1=aaa,C0=cn(0,0,2.5)})
aaa2=pa(mm,"","Block",5,0.5,5,true,false,0,0,"Bright green") it('CylinderMesh',aaa2)
aaa2w=qi({"Weld",body2,Part0=spi2,Part1=aaa2,C0=cn(-3.4,1.7,-4.6)*ca(0,rd(35),0)})
lb.Friction = 0.045
rb.Friction = 0.045
for x=-5,5,10/3 do 
aaax=pa(mm,"","Block",2,3.5,2,true,false,0,0,"") 
qi({"Weld",body2,Part0=spi2,Part1=aaax,C0=cn(x,0,7.5)*ca(rd(80),0,0)}) it('CylinderMesh',aaax)
end
for x=-1,1 do 
aaa=pa(mm,"","Block",x~=0 and 3 or 2,3,0.5,true,false,0,0,"Bright green") 
qi({"Weld",body2,Part0=aaa2,Part1=aaa,C0=cn(x*2,1.6,x~=0 and -1 or -2)*ca(0,rd(-45*x),0)})
if x==0 then
ball=pa(mm,"","Block",0,0,0,true,false,0,0,"Bright green") qi({"SpecialMesh",ball,MeshType="Sphere",Scale=v3(1.7,1,1)*7})
ballw=qi({"Weld",body2,Part0=aaa,Part1=ball,C0=cn(0,1.5,0)})
gun1=pa(mm,"","Block",0.5,2,0.5,true,false,0,0,"Bright green") it('CylinderMesh',gun1)
qi({"Weld",body2,Part0=ball,Part1=gun1,C0=cn(-0.4,0,-1)*ca(rd(-90),0,0)})
gun2=pa(mm,"","Block",0.5,2,0.5,true,false,0,0,"Bright green") it('CylinderMesh',gun2)
qi({"Weld",body2,Part0=ball,Part1=gun2,C0=cn(0.4,0,-1)*ca(rd(-90),0,0)})
for i,v in pairs({gun1,gun2}) do 
gunhol=pa(mm,"","Block",0.3,0,0.3,true,false,0,0,"Really black") it('CylinderMesh',gunhol)
qi({"Weld",body2,Part0=v,Part1=gunhol,C0=cn(0,0.92,0)})
end
seat2=pa(mm,"","VehicleSeat",2,0.5,2,true,false,0,0,"Bright green") it('CylinderMesh',seat2)
seat2w=qi({"Weld",body2,Part0=aaa2,Part1=seat2,C0=cn(0,0.5,0)})
seat2.HeadsUpDisplay=false
q(function()
local guntilt = 0
for i,v in pairs({aaa2,ball,seat2}) do 
local gcd = qi({"ClickDetector",v,MaxActivationDistance=8})
gcd.MouseClick:connect(function()
gunshot(10,1,5,gun1.CFrame*cn(0,1+(rn(0,2000)/600),0))
gunshot(10,1,5,gun2.CFrame*cn(0,1+(rn(0,2000)/600),0))
end)
end
while true do if rn(1,8) == 1 then wait() else wait(0.0345) end 
aaa2w.C1=aaa2w.C1*ca(0,rd(seat2.Steer*6),0)
if seat2.Throttle == 1 and guntilt<112 then guntilt = guntilt+4
elseif seat2.Throttle == -1 and guntilt>-48 then guntilt=guntilt-4
--elseif seat2.Throttle==0 then if guntilt > 0 then guntilt=guntilt-4 elseif guntilt<0 then guntilt=guntilt+4 end
end
ballw.C1=ca(rd(-guntilt),0,0)
end
end)
end
end
for x=-1,1,2 do
for z=-1,1,2 do 
whe=pa(mm,"","Block",4,2,4,true,false,0,0,"Black") qi({"CylinderMesh",whe})
qi({"Weld",whe,Part0=engine,Part1=whe,C0=cn(x*8,0.8,(z*11.5)+1.5)*ca(0,0,rd(90))})
ss=pa(mm,"","Block",2.25,0.3,5,true,false,0,0,"Black") 
qi({"Weld",body2,Part0=engine,Part1=ss,C0=cn(x*8,-1.5,(z*11.2)+1.5)*ca(rd(-23*z),0,0)})
ss=pa(mm,"","Block",2.25,2,0.3,true,false,0,0,"Black") 
qi({"Weld",body2,Part0=engine,Part1=ss,C0=cn(x*8,0.4,(z*13.4)+1.5)})
ss=pa(mm,"","Wedge",2.3,3,3,true,false,0,0,"Bright green") 
local trolo = z == 1 and 180 or 0
qi({"Weld",body2,Part0=engine,Part1=ss,C0=cn(x*8.1,2.5,(z*13.5)+1.5)*ca(0,rd(trolo),0)})
end end 
local form = 4*4
for x=-1,1,2 do 
for z=form/2,-form/2,-form/3 do 
whe=pa(mm,"","Block",4,2,4,true,false,0,0,"Black") qi({"CylinderMesh",whe})
qi({"Weld",whe,Part0=engine,Part1=whe,C0=cn(8*x,-0.5,(z*0.9)+1.5)*ca(0,0,rd(90))})
end
end
for i,p in pairs(mm:children()) do if p.BrickColor.Name=="Bright green" then 
for i,s in pairs({"Back","Front","Bottom","Top","Left","Right"}) do 
--qi({"Texture",p,Face=s,Texture=ds.Camo,StudsPerTileU=0,StudsPerTileV=0})
end
end end 
--game.Lighting.Ambient=Color3.new(1,1,1)
local bin = qi({"HopperBin",bp,Name="RMTank"})
t = {}
t.Vault = "Closed"
t.Steer = ""
t.Steer2 = ""
t.Steering=""
t.Tilt = 0
t.Move = ""
t.Fire = false
ks = {}
TheWeld = nil
Seated = false
TankSpeed=16
bv = qi({"BodyVelocity",engine}) bv.maxForce=v3(0,0,0)
bav = qi({"BodyAngularVelocity",engine}) bav.maxTorque=v3(0,0,0)
bin.Selected:connect(function(mouse)
mouse.KeyDown:connect(function(k) k = k:lower() ks[k]=false
if k == "g" and t.Vault~="moving" then if t.Vault=="Closed" then
t.Vault = "moving" for i=0,-110,-10 do capw.C1=cn(0,0,2.5)*ca(rd(i),0,0) wait(0.034) end t.Vault="Opened" else
t.Vault = "moving" for i=-110,0,10 do capw.C1=cn(0,0,2.5)*ca(rd(i),0,0) wait(0.034) end t.Vault="Closed" end 
elseif k == "h" and t.Steer=="" then t.Steer = "Left" repeat spiw.C1=spiw.C1*ca(0,rd(-2),0) wait(0.034) until ks[k] t.Steer = ""
elseif k == "k" and t.Steer=="" then t.Steer = "Right" repeat spiw.C1=spiw.C1*ca(0,rd(2),0) wait(0.034) until ks[k] t.Steer = ""
elseif k == "u" and t.Steer2=="" then t.Steer2 = "Up" repeat t.Tilt=t.Tilt+1.5 tiltw.C1=ca(0,rd(t.Tilt),0) wait(0.034) until t.Tilt>=90 or ks[k] t.Steer2 = ""
elseif k == "j" and t.Steer2=="" then t.Steer2 = "Down" repeat t.Tilt=t.Tilt-1.5 tiltw.C1=ca(0,rd(t.Tilt),0) wait(0.034) until t.Tilt<=-12 or ks[k] t.Steer2 = ""
elseif k == "z" and t.Vault=="Opened" and Seated and TheWeld then Seated = false TheWeld:Remove() c.Humanoid.PlatformStand = false c.Torso.CFrame = hol2.CFrame*cn(0,4,0) mm.Parent = workspace
elseif k == "w" and Seated and t.Move == "" then t.Move = "Forward" bv.maxForce=v3(1/0,0,1/0) repeat bv.velocity=engine.CFrame.lookVector*TankSpeed wait() until ks[k] bv.maxForce=v3(0,0,0) t.Move = ""
elseif k == "s" and Seated and t.Move == "" then t.Move = "Backward" bv.maxForce=v3(1/0,0,1/0) repeat bv.velocity=engine.CFrame.lookVector*(-TankSpeed/1.2) wait() until ks[k] bv.maxForce=v3(0,0,0) t.Move = ""
elseif k == "a" and Seated and t.Steering=="" then t.Steering="Left" bav.maxTorque=v3(0,1/0,0) bav.angularvelocity=v3(0,0.8,0) repeat wait() until ks[k] bav.maxTorque=v3(0,0,0) t.Steering = ""
elseif k == "d" and Seated and t.Steering=="" then t.Steering="Right" bav.maxTorque=v3(0,1/0,0) bav.angularvelocity=v3(0,-0.8,0) repeat wait() until ks[k] bav.maxTorque=v3(0,0,0) t.Steering = ""
elseif k == "f" and not t.Fire then t.Fire = true
q(function() 
GlowMesh(false,ds.Ring,hol,v3(7,7,7),'New Yeller',hol.CFrame*cn(0,0,0)*ca(rd(90),0,0),0.1,1,0.13)
local speed = 8 local cff = hol.CFrame*cn(0,2,0) local dmg = 25 
local bb = pa(mm,"","Block",2,2,2,true,true,0,0.2,"Black") qi({"CylinderMesh",bb})
local bb2 = pa(mm,"","Block",0,0,0,true,true,0,0.2,"Black") qi({"SpecialMesh",bb2,MeshType="Sphere",Scale=v3(2,3,2)*5})
bb.CFrame = cff*ca(rd(rn(-1000,1000)/1500),rd(rn(-1000,1000)/1500),rd(rn(-1000,1000)/1500))
so(ds.Fire,bb,0.3,1) wait() for i=1,50 do bb2.CFrame = bb.CFrame*cn(0,-5,0)
bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,-1,0)).p)
if bhit and bpos and (bpos - bb.Position).magnitude < speed then break end
bb.CFrame=bb.CFrame*cn(0,speed,0)*ca(0,0,rd(0.2)) bb2.CFrame=bb.CFrame*cn(0,1,0)
wait()
end bb.CFrame=bb.CFrame*cn(0,(bpos-bb.Position).magnitude,0)
bb:Remove() bb2:Remove()
for i=1,3 do 
GlowMesh(false,"Sphere",hol,v3(rn(10,20),rn(10,20),rn(10,20)),'New Yeller',bb.CFrame*cn(rn(-3,3),rn(-3,3),rn(-3,3))*ca(rd(rn(-360,360)),rd(rn(-360,360)),rd(rn(-360,360))),0.1,1,0.1) end
local rr = 10 GetRegion(bb.Position-v3(rr,rr,rr),bb.Position+v3(rr,rr,rr),function(v) if v.Name~="Torso" then return end v.Humanoid.Health=b.Humanoid.Health-dmg end,function(v) if v.Anchored or v:GetMass()>500 then return end v:BreakJoints() v.Velocity=cn(bb.Position,v.Position).lookVector*rn(70,120) end)
end)
smo.Enabled = true for i=0,-3,-1 do canw.C1=cn(0,-i/1.3,0) wait(0.033) end for i=-3,0,1 do canw.C1=cn(0,-i/1.3,0) wait(0.033) end 
smo.Enabled = false t.Fire = false
end
end)
mouse.KeyUp:connect(function(k) k=k:lower() ks[k]=true 
end)
end)
hol2.Touched:connect(function(hit) if hit.Parent ~= c or Seated or t.Vault~="Opened" then return end 
_G.mm.Parent = c Seated = true 
local hu = c.Humanoid hu.PlatformStand = true wait()
TheWeld = qi({"Weld",engine,Part0=engine,Part1=c.Torso,C0=cn(0,1.5,2)*ca(rd(90),0,0)})
end)
end}
module[5] = {"Guitar",function()

Plrs = game:GetService("Players")

GuitarColour = "Navy blue"

me = Plrs.LocalPlayer
char = me.Character
Modelname = "xGuitar"
Toolname = "Guitar"
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
selected = false
Hurt = false
Deb = true
Able = true
Prop = {Damage = 30}
volume = 0.75

ToolIcon = ""
MouseIc = ""
MouseDo = ""

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

slash = Add.Sound(nil, "rbxasset://sounds//swordslash.wav", 0.9, 0.8)
hitsound = Add.Sound(nil, "http://www.roblox.com/asset/?id=2801263", 0.7, 0.6)
charge = Add.Sound(nil, "http://www.roblox.com/asset/?id=2101137", 0.8, 0.65)
boom = Add.Sound(nil, "http://www.roblox.com/asset/?id=2691586", 0.8, 0.3)
smashsound = Add.Sound(nil, "http://www.roblox.com/asset/?id=2692806", 0.8, 0.35)
boomboom = Add.Sound(nil, "http://www.roblox.com/asset/?id=2760979", 1, 0.18)
GSound = Add.Sound(nil, "http://www.roblox.com/asset/?id=1089403", 0.75, 1)

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
HW = Weld(HB, nil, 0, -1.3, 0, math.pi/2, 0, 0)

TH = Weld(torso, nil, -0.8, 0.4, -0.4, 0, math.pi/2, math.rad(80))
THMain = TH.C1

RAWStand, LAWStand, RLWStand, LLWStand, HWStand = nil
NeckStand = necko * CFrame.Angles(math.rad(17), 0, math.rad(35))

handle = Part(Mo, false, false, 0, 0, GuitarColour, 0.6, 1.5, 1.5, true)
handle.Name = "Handle"

handletip1 = Part(Mo, false, false, 0, 0.2, "Really black", 0.5, 0.5, 0.5, true)
local w1 = Weld(handle, handletip1, 0, 1.12, 0, 0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-45), 0, 0)
Add.Mesh(handletip1, "http://www.roblox.com/asset/?id=9756362", 0.65, 0.45, 0.65)

handletip2 = Part(Mo, false, false, 0, 0.2, "Dark grey", 0.5, 0.5, 0.5, true)
Weld(handletip1, handletip2, 0, 0, 0, 0, math.rad(45), 0)
Add.Mesh(handletip2, "http://www.roblox.com/asset/?id=9756362", 0.65, 0.35, 0.65)

for i = 45, 360+45-90, 90 do
	local p = Part(Mo, false, false, 0, 0, GuitarColour, 0.7, 0.9, 0.6, true)
	local w = Weld(handle, p, 0, 0, 0, 0, 0, 0)
	w.C0 = CFrame.Angles(0, math.pi/2, math.rad(i))
	w.C1 = CFrame.new(-1, 0, 0) * CFrame.Angles(0, 0, math.pi/4)
end

for i = 0, 40, 40 do
	local p = Part(Mo, false, false, 0, 0, "Really black", 0.2, 0.2, 0.2, true)
	Add.Mesh(p, "http://www.roblox.com/asset/?id=1033714", 0.14, 0.12, 0.14)
	local w = Weld(handle, p, 0, -0.35, -0.7, 0, 0, math.pi/2)
	w.C0 = CFrame.Angles(math.rad(i+130), 0, 0)
	local p2 = Part(Mo, false, false, 0, 0, "Black", 0.2, 0.2, 0.2, true)
	Instance.new("CylinderMesh",p2).Scale = Vector3.new(1, 0.7, 1)
	Weld(p, p2, 0, -0.04, 0, 0, 0, 0)
end

fretboard = Part(Mo, false, false, 0, 0, "Black", 0.45, 2.6, 0.6, true)
Weld(handle, fretboard, -0.1, -1.95, 0, math.pi/4, 0, 0)

for i = 0, 2.48, 2.48/10 do
	local asd = (1*i)
	local p = Part(Mo, false, false, 0, 0, "Medium grey", 0.2, 0.55, 0.2, true)
	Instance.new("CylinderMesh",p).Scale = Vector3.new(0.3, 1, 0.3)
	Weld(fretboard, p, -0.21, 0, -1.1+asd, math.pi/2, 0, 0)
end

Strings = {}
for i = -0.24, 0.24, 0.48/6 do
	local p = Part(Mo, false, false, 0, 0, "Medium grey", 0.2, 3.7, 0.2, true)
	Instance.new("CylinderMesh",p).Scale = Vector3.new(0.06, 1, 0.06)
	local w = Weld(fretboard, p, -0.25, 0.75, i+0.04, 0, 0, 0)
	table.insert(Strings, {p, w})
end

for i = -20, 20, 20 do
	local asd = (20+i)/60
	local p = Part(Mo, false, false, 0, 0, "White", 0.2, 0.3, 0.6, true)
	Instance.new("BlockMesh",p).Scale = Vector3.new(1, 0.5, 1)
	local w = Weld(fretboard, p, 0, 0, 0, 0, 0, 0)
	w.C0 = CFrame.new(0.11, -1.5-asd, 0)
	w.C1 = CFrame.Angles(math.rad(i), 0, 0)
	for x = -0.18, 0.18, 0.18 do
		local p2 = Part(Mo, false, false, 0, 0, "Medium grey", 0.2, 0.2, 0.2, true)
		Instance.new("CylinderMesh",p2).Scale = Vector3.new(0.5, 0.3, 0.5)
		Weld(p, p2, 0, -0.08, x, 0, 0, math.pi/2)
	end
end

stringattach = Part(Mo, false, false, 0, 0, "Medium grey", 0.2, 0.2, 0.8, true)
Instance.new("BlockMesh",stringattach)
Weld(fretboard, stringattach, -0.13, 2.55, 0, 0, 0, 0)

vibra = Part(Mo, false, false, 0, 0, "Medium grey", 0.2, 0.32, 0.2, true)
Instance.new("SpecialMesh",vibra).Scale = Vector3.new(0.35, 1, 0.35)
VW = Weld(stringattach, vibra, 0, -0.15, 0, 0, 0, 0)
VW.C0 = CFrame.new(0, 0, -0.36) * CFrame.Angles(0, 0, math.rad(-75))

vibra2 = Part(Mo, false, false, 0, 0, "Medium grey", 0.2, 0.62, 0.2, true)
Instance.new("SpecialMesh",vibra2).Scale = Vector3.new(0.35, 1, 0.35)
vwz = Weld(vibra, vibra2, 0, -0.29, 0, 0, 0, 0)
vwz.C0 = CFrame.new(0, 0.15, 0) * CFrame.Angles(0, 0, math.rad(70))

vibra3 = Part(Mo, false, false, 0, 0, GuitarColour, 0.2, 0.3, 0.2, true)
Add.Sphere(vibra3).Scale = Vector3.new(0.55, 1, 0.55)
Weld(vibra2, vibra3, 0, -0.25, 0, 0, 0, 0)

stringat2 = Part(Mo, false, false, 0, 0, "Dark grey", 0.2, 0.2, 0.7, true)
Instance.new("BlockMesh",stringat2).Scale = Vector3.new(1, 0.3, 1)
Weld(stringattach, stringat2, -0.02, 0, 0, 0, 0, 0)

for i = -0.2, 0.21, 0.4/5 do
	local p = Part(Mo, false, false, 0, 0, "Mid gray", 0.2, 0.2, 0.2, true)
	Instance.new("BlockMesh",p).Scale = Vector3.new(1, 0.8, 0.2)
	Weld(stringat2, p, -0.01, 0, i, 0, 0, 0)
end

stringattach2 = Part(Mo, false, false, 0, 0, GuitarColour, 0.45, 1.2, 0.62, true)
local wdz = Weld(fretboard, stringattach2, 0, 0, 0, 0, 0, math.rad(8))
wdz.C0 = CFrame.new(0.1, 1.7, 0)

for i = 0, 180, 180 do
	local p = Part(Mo, false, false, 0, 0, GuitarColour, 0.45, 1.2, 0.62, true)
	Instance.new("SpecialMesh",p).MeshType = "Wedge"
	local w = Weld(stringattach2, p, 0, 0, -0.21, math.rad(20), 0, math.pi)
	w.C0 = CFrame.new(0, 0.4, 0) * CFrame.Angles(0, math.rad(i), 0)
	for x = -0.4, 0.2, 0.3 do
		local asd = -0.15 + (i/600)
		local p2 = Part(Mo, false, false, 0, 0, "Dark grey", 0.2, 0.2, 0.2, true)
		local w2 = Weld(p, p2, 0, 0, 0, 0, 0, math.pi/2)
		w2.C0 = CFrame.new(asd, x, 0.15)
		Instance.new("CylinderMesh",p2)
		local p3 = Part(Mo, false, false, 0, 0, "Medium grey", 0.2, 0.3, 0.2, true)
		Instance.new("CylinderMesh",p3).Scale = Vector3.new(0.8, 1, 0.8)
		Weld(p2, p3, 0, 0, 0, 0, 0, 0)
	end
end

for i = -0.6, 0.61, 1.2 do
	local p = Part(Mo, false, false, 0, 0, "Really black", 0.5, 2.8, 0.2, true)
	Weld(torso, p, 0, 0, i, 0, 0, math.rad(-40))
	local p2 = Part(Mo, false, false, 0, 0, "Really black", 0.5, 0.2, 1.1, true)
	Weld(torso, p2, -i*1.4, i*1.75, 0, 0, 0, 0)
	
end
Mo.Parent = char
TH.Part1 = handle

if script.Parent.className ~= "HopperBin" then
	h = Instance.new("HopperBin",me.Backpack)
	h.Name = Toolname
	h.TextureId = ToolIcon
	script.Parent = h
end

bin = h

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

function selectanim()
	RAW.Part1 = Rarm
	for i = 0.09, 1, 0.09 do
		TH.C0 = CFrame.Angles(0, math.rad(90*i), 0)
		TH.C1 = THMain * CFrame.Angles(0, 0, math.rad(-30*i)) * CFrame.new(0, 0.3*i, -0.1*i)
		RAW.C0 = CFrame.Angles(math.rad(110*i), 0, math.rad(10*i)) * CFrame.new(0, 0, -0.3*i)
		neck.C0 = necko * CFrame.Angles(math.rad(5*i), 0, math.rad(-35*i))
		wait()
	end
	LAW.Part1 = Larm
	for i = 0.1, 1, 0.1 do
		TH.C0 = CFrame.Angles(0, math.rad(90+90*i), 0)
		TH.C1 = THMain * CFrame.Angles(math.rad(15*i), 0, math.rad(-30-30*i)) * CFrame.new(0, 0.3+0.2*i, -0.1)
		RAW.C0 = CFrame.Angles(math.rad(110-65*i), 0, math.rad(10-30*i)) * CFrame.new(0, -0.5*i, -0.3-0.2*i)
		LAW.C0 = CFrame.Angles(math.rad(75*i), math.rad(-15*i), math.rad(-10*i)) * CFrame.new(0, -0.2*i, 0)
		neck.C0 = necko * CFrame.Angles(math.rad(5+12*i), 0, math.rad(-35+70*i))
		wait()
	end
	if RAWStand == nil then
		RAWStand = RAW.C0
		LAWStand = LAW.C0
		RLWStand = RLW.C0
		LLWStand = LLW.C0
		HWStand = HW.C0
	end
	normal()
end

function deselanim()
	for i = 0.9, 0, -0.1 do
		TH.C0 = CFrame.Angles(0, math.rad(90+90*i), 0)
		TH.C1 = THMain * CFrame.Angles(math.rad(15*i), 0, math.rad(-30-30*i)) * CFrame.new(0, 0.3+0.2*i, -0.1)
		RAW.C0 = CFrame.Angles(math.rad(110-65*i), 0, math.rad(10-30*i)) * CFrame.new(0, -0.5*i, -0.3-0.2*i)
		LAW.C0 = CFrame.Angles(math.rad(75*i), math.rad(-15*i), math.rad(-10*i)) * CFrame.new(0, -0.2*i, 0)
		neck.C0 = necko * CFrame.Angles(math.rad(5+12*i), 0, math.rad(-35+70*i))
		wait()
	end
	LAW.Part1 = nil
	for i = 0.91, 0, -0.09 do
		TH.C0 = CFrame.Angles(0, math.rad(90*i), 0)
		TH.C1 = THMain * CFrame.Angles(0, 0, math.rad(-30*i)) * CFrame.new(0, 0.3*i, -0.1*i)
		RAW.C0 = CFrame.Angles(math.rad(110*i), 0, math.rad(10*i)) * CFrame.new(0, 0, -0.3*i)
		neck.C0 = necko * CFrame.Angles(math.rad(5*i), 0, math.rad(-35*i))
		wait()
	end
	neck.C0 = necko
	detach(true)
end

keys = {"r", "t", "y", "u", "f", "g", "h", "j", "k", "l", "z", "x", "c", "v", "b", "n", "m"}

function PlayString(pitch, vol)
	LAW.C0 = LAWStand * CFrame.new(pitch/7, 0, 0) * CFrame.Angles(0, 0, math.rad(pitch*18))
	neck.C0 = NeckStand * CFrame.Angles(0, 0, math.rad(-pitch*13))
	for i = 0, 1, 0.5 do
		RAW.C0 = RAWStand * CFrame.Angles(math.rad(-5*i), 0, math.rad(-15*i)) * CFrame.new(0, 0.3*i, 0)
		wait()
	end
	PlaySound(GSound, pitch, vol)
	for i = 0, 1, 0.33 do
		RAW.C0 = RAWStand * CFrame.Angles(math.rad(-5-10*i), 0, math.rad(-15+35*i)) * CFrame.new(0, 0.3-0.8*i, 0)
		wait()
	end
	local lol = math.floor(pitch*2.5)
	if lol < 1 then lol = 1 elseif lol > #keys then lol = #keys end
	coroutine.resume(coroutine.create(function()
		local vollol = vol*40
		for i = 1, math.random(vollol/1.8, vollol) do
			Strings[lol][2].C0 = CFrame.new(0, 0, math.random(-vollol, vollol)/1000)
			wait()
		end
		Strings[lol][2].C0 = CFrame.new()
	end))
	for i = 0, 1, 0.25 do
		RAW.C0 = RAWStand * CFrame.Angles(math.rad(-5-10+15*i), 0, math.rad(20-20*i)) * CFrame.new(0, 0.3-0.8+0.5*i, 0)
		wait()
	end
	RAW.C0 = RAWStand
end

function select(mouse)
	selectanim()
	selected = true
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		for i, v in pairs(keys) do
			if key == v then
				local pitch = 0.3 + (i/7.5)
				PlayString(pitch, volume)
			end
		end
	end)
end

function deselect(mouse)
	selected = false
	deselanim()
end

bin.Selected:connect(select)
bin.Deselected:connect(deselect)

end}
module[6] = {"Gun Defender",function()
Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
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
local m = Instance.new("Model",Character)
m.Name = "WeaponModel"

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
table.insert(Effects,{w1,"DisAttack",.01})
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
table.insert(Effects,{w2,"DisAttack",.01})
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

--example: local con = HitboxB.Touched:connect(function(hit) Damagefunc(Hitbox,hit,Dmg,Dmg,math.random(Knockback,Knockback),"Normal",RootPart,.2,1) end) 

Handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,1,"Institutional white","Handle",Vector3.new(1, 1.19999993, 1))
Handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-005, 0.199964523, 4.57763672e-005, 1, 0, 0, 0, 0.999991894, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 1.19999993, 0.220000014))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.41003418, -2.38418579e-007, -4.57763672e-005, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, 0.500000477, -0.410041809, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.799999952, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410018921, -0.200001001, 0.209960938, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, 0.299999475, 0.409950256, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -0.300000906, -0.410041809, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409957886, -0.699999809, -0.21005249, 1.49011612e-008, -1.28550219e-008, 0.999999404, 3.68902874e-007, -0.999999464, -1.28550113e-008, 0.999999404, 3.5400177e-007, 4.47034836e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409957886, -0.700000048, -0.209983826, -1.49011612e-008, -1.61062097e-008, -0.999999404, -1.92273887e-007, -0.999999464, 1.61061386e-008, -0.999999404, 2.07174992e-007, -4.47034836e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.399999946, 0.399999976, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.309967041, -2.38418579e-007, -0.410041809, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.399999946, 0.399999976, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.309967041, -2.38418579e-007, 0.409934998, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409927368, -0.699999809, 0.409980774, -4.47034836e-008, 2.60680455e-008, 0.999999404, -2.94624101e-007, -0.999999464, 2.60680935e-008, 0.999999404, -3.09525149e-007, -1.49011612e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 1.19999993, 0.220000014))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409957886, -2.38418579e-007, -3.81469727e-005, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.419999957, 0.399999976, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300018311, -2.38418579e-007, 0.409934998, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.600000024, 0.600000024, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0199971199, -0.00997924805, 0.500038147, -1.52514076e-007, -0.999995351, -2.73758797e-005, -2.98023224e-008, -2.73752066e-005, 0.999992013, -0.99999392, 1.54019503e-007, -2.98023224e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.617999971, 0.614000022, 0.19600004))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.799999952, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409973145, -0.200001001, -0.21005249, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.799999952, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409973145, -0.200001001, 0.209983826, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, 0.500000477, 0.409950256, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.799999952, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410018921, -0.200001001, -0.210044861, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.500000477, 0.409950256, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -0.500000477, -0.410041809, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410064697, -0.699999809, 0.41003418, -1.49011612e-008, -1.40300713e-007, -0.999999404, 1.80302209e-007, -0.999999464, 1.40300713e-007, -0.999999404, -1.65401119e-007, -4.47034836e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.300000906, 0.409950256, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, 0.299999475, -0.410041809, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.419999957, 0.399999976, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300018311, -2.38418579e-007, -0.410018921, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.600000024, 0.600000024, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0199971199, -0.00996398926, 0.500045776, -1.52514076e-007, -0.999995351, -2.73758797e-005, -2.98023224e-008, -2.73752066e-005, 0.999992013, -0.99999392, 1.54019503e-007, -2.98023224e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.637999952, 0.618000031, 0.19600004))
GlowPrt2=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Lime green","GlowPrt2",Vector3.new(0.400000036, 0.600000024, 0.600000024))
GlowPrt2weld=weld(m,Handle,GlowPrt2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.51007843, -0.0199995041, -0.00997924805, 0.999999642, -1.66703202e-007, 5.96046448e-008, 1.66703217e-007, 0.999999881, -5.77539403e-008, -5.96046448e-008, 5.77539083e-008, 0.999999642))
mesh("SpecialMesh",GlowPrt2,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409942627, -0.699999809, 0.410057068, -1.49011612e-008, -1.40300713e-007, -0.999999404, 1.80302209e-007, -0.999999464, 1.40300713e-007, -0.999999404, -1.65401119e-007, -4.47034836e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409988403, -0.699999809, 0.409950256, -4.47034836e-008, 2.60680455e-008, 0.999999404, -2.94624101e-007, -0.999999464, 2.60680935e-008, 0.999999404, -3.09525149e-007, -1.49011612e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410018921, -0.699999809, -0.209960938, -1.49011612e-008, -1.61062097e-008, -0.999999404, -1.92273887e-007, -0.999999464, 1.61061386e-008, -0.999999404, 2.07174992e-007, -4.47034836e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.200000003, 0.399999917, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409973145, 0.400000334, 0.209983826, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.200000003, 0.399999976, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00997924805, -2.38418579e-007, -0.410049438, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.200000003, 0.399999976, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00996398926, -2.38418579e-007, 0.409934998, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.200000003, 0.399999946, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409973145, 0.400002241, -0.21005249, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.200000003, 0.399999946, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410018921, 0.400002241, -0.210044861, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
GlowPrt1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","GlowPrt1",Vector3.new(0.400000036, 0.600000024, 0.600000024))
GlowPrt1weld=weld(m,Handle,GlowPrt1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.500053406, -0.0199995041, -0.00994873047, 0.999999404, -1.66703018e-007, 2.98023224e-008, 1.66703046e-007, 0.999999762, -5.77537804e-008, -2.98023224e-008, 5.77537378e-008, 0.999999404))
mesh("SpecialMesh",GlowPrt1,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.200000003, 0.399999946, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410018921, 0.400002241, 0.209960938, 5.96046448e-008, -6.32701571e-008, -0.999999642, 1.58457397e-007, 0.999999762, -6.32701855e-008, 0.999999642, -1.58457411e-007, 5.96046448e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410018921, -0.699999809, -0.210044861, 1.49011612e-008, -1.28550219e-008, 0.999999404, 3.68902874e-007, -0.999999464, -1.28550113e-008, 0.999999404, 3.5400177e-007, 4.47034836e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

Center=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Lime green","Center",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Centerweld=weld(m,Handle,Center,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00967407227, -0.0200638771, -0.610115051, 7.08338257e-006, 0.000369980873, -0.999999762, 0.000183756827, 0.999999106, 0.000371798873, 1, -0.000174473054, 6.74782859e-006))
mesh("SpecialMesh",Center,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.300000012, 0.300000012))
Hitbox1=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Lime green","Hitbox1",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Hitbox1weld=weld(m,Center,Hitbox1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.19998169, -0.000478982925, -7.62939453e-006, 0.999999642, -1.81684379e-006, 2.71003955e-007, -1.81684379e-006, 0.999998629, 9.28639201e-006, 2.71003955e-007, 9.28639201e-006, 1))
mesh("SpecialMesh",Hitbox1,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.920000017, 0.368000001, 0.329999864))
Hitbox2=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Lime green","Hitbox2",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Hitbox2weld=weld(m,Center,Hitbox2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.13131714, 0.000480651855, 0.000106811523, -0.707104325, -0.707104445, 0.000228768389, 0.707107842, -0.707106829, 0.000209781603, 1.34258007e-005, 0.000310101605, 1))
mesh("SpecialMesh",Hitbox2,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.920000017, 0.368000001, 0.329999864))
Hitbox3=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Lime green","Hitbox3",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Hitbox3weld=weld(m,Center,Hitbox3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.19998169, 0.000406503677, 7.62939453e-006, 0.999999642, -1.81684379e-006, 2.71003955e-007, -1.81684379e-006, 0.999998629, 9.28639201e-006, 2.71003955e-007, 9.28639201e-006, 1))
mesh("SpecialMesh",Hitbox3,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.920000017, 0.368000001, 0.329999864))
Hitbox4=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Lime green","Hitbox4",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Hitbox4weld=weld(m,Center,Hitbox4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.13130951, 0.000442504883, -0.000122070313, 0.70710808, -0.707107663, 5.9657541e-006, 0.70710516, 0.707104683, -3.91977665e-006, -9.04705757e-007, 2.55630293e-005, 1))
mesh("SpecialMesh",Hitbox4,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.920000017, 0.368000001, 0.329999864))
Hitbox5=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Lime green","Hitbox5",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Hitbox5weld=weld(m,Center,Hitbox5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.13146973, 0.000419616699, -0.000122070313, -0.70710808, 0.707107663, -0.000231138751, -0.70710516, -0.707104683, 0.000252452912, 1.50714714e-005, 0.000341950625, 1))
mesh("SpecialMesh",Hitbox5,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.920000017, 0.368000001, 0.329999864))
Hitbox6=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Lime green","Hitbox6",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Hitbox6weld=weld(m,Center,Hitbox6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.19997478, 0.000411987305, 0.000183105469, -1.98085877e-006, 0.999998689, -1.33553549e-005, -0.999999642, 1.81745418e-006, 3.05094454e-006, 3.59292085e-006, 3.19282117e-005, 1))
mesh("SpecialMesh",Hitbox6,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.920000017, 0.368000001, 0.329999864))
Hitbox7=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Lime green","Hitbox7",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Hitbox7weld=weld(m,Center,Hitbox7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.13132477, 0.000335693359, 0.000106811523, 0.707104683, 0.707104802, -2.76042265e-005, -0.70710808, 0.70710665, -2.73225814e-005, 7.40964424e-007, 5.74120495e-005, 1))
mesh("SpecialMesh",Hitbox7,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.920000017, 0.368000001, 0.329999864))
Hitbox8=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Lime green","Hitbox8",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Hitbox8weld=weld(m,Center,Hitbox8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.19996178, -0.000503540039, -0.000175476074, -1.98085877e-006, 0.999998689, -1.33553549e-005, -0.999999642, 1.81745418e-006, 3.05094454e-006, 3.59292085e-006, 3.19282117e-005, 1))
mesh("SpecialMesh",Hitbox8,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.920000017, 0.368000001, 0.329999864))

local CurrentTransparency = 0.5

local Mode = "Defense"

function Dissapear()
attack = true
Mode = "Defense"
for _,i in pairs(m:children()) do
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
swait()
Hitbox1.Transparency=0.5*i
Hitbox2.Transparency=0.5*i
Hitbox3.Transparency=0.5*i
Hitbox4.Transparency=0.5*i
Hitbox5.Transparency=0.5*i
Hitbox6.Transparency=0.5*i
Hitbox7.Transparency=0.5*i
Hitbox8.Transparency=0.5*i
end
Hitbox1.Transparency=1
Hitbox2.Transparency=1
Hitbox3.Transparency=1
Hitbox4.Transparency=1
Hitbox5.Transparency=1
Hitbox6.Transparency=1
Hitbox7.Transparency=1
Hitbox8.Transparency=1
end),i)
end
attack = false
end

function Reappear()
attack = true
Mode = "Attack"
for _,i in pairs(m:children()) do
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
swait()
Hitbox1.Transparency=1*i
Hitbox2.Transparency=1*i
Hitbox3.Transparency=1*i
Hitbox4.Transparency=1*i
Hitbox5.Transparency=1*i
Hitbox6.Transparency=1*i
Hitbox7.Transparency=1*i
Hitbox8.Transparency=1*i
end
Hitbox1.Transparency=0.5
Hitbox2.Transparency=0.5
Hitbox3.Transparency=0.5
Hitbox4.Transparency=0.5
Hitbox5.Transparency=0.5
Hitbox6.Transparency=0.5
Hitbox7.Transparency=0.5
Hitbox8.Transparency=0.5
end),i)
end
attack = false
end

function attackone()
attack = true
if Mode == "Attack" then
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(-3),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(10), math.rad(50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(-10), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(120),math.rad(5))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.9,0)*angles(math.rad(0),math.rad(-60),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Centerweld.C0 = clerp(Centerweld.C0,cf(0,0,0) *angles(6*i,math.rad(0),math.rad(0)),.3)
end
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
        if k=='q' then
                if Mode == "Defense" then
                        Mode = "Attack"
                       Reappear()
                elseif Mode == "Attack" then
                        Mode = "Defense"
                        Dissapear()
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
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-3),math.rad(-3),math.rad(30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(-10), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(-10), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(5))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-20))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Centerweld.C0 = clerp(Centerweld.C0,cf(0,0,0) *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(10), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(-10), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
Centerweld.C0 = clerp(Centerweld.C0,cf(0,0,0) *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
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

 
 

module[1] = {"Hand Cannon",function()


Players = game:GetService("Players")
Me = Players.LocalPlayer
Char = Me.Character
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
ShootColors = {"Bright yellow", "New Yeller", "Bright orange", "Neon orange", "Really red", "Bright red"}
PlaceId = game.PlaceId

Selected = false
Attacking = false
Accuracy = 5
Debounce = true
Hurt = false
Damage = {100,1337}

ContentProvider = game:GetService("ContentProvider")

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

function RC(Pos, Dir, Max, Ignore)
return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999)), Ignore)
end

function RayC(Start, En, MaxDist, Ignore)
return RC(Start, (En - Start), MaxDist, Ignore)
end

function ComputePos(pos1, pos2)
return CN(pos1, V3(pos2.x, pos1.y, pos2.z))
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

function waitChild(n, p)
local c = p:findFirstChild(n)
if c then return c end
while true do
c = p.ChildAdded:wait()
if c.Name == n then return c end
end
end

function Notime(func)
coroutine.resume(coroutine.create(function()
func()
end))
end

Torso = waitChild("Torso", Char)
Head = waitChild("Head", Char)
Rarm = waitChild("Right Arm", Char)
Larm = waitChild("Left Arm", Char)
Rleg = waitChild("Right Leg", Char)
Lleg = waitChild("Left Leg", Char)
Neck = waitChild("Neck", Torso)
Hum = waitChild("Humanoid", Char)

RSH = waitChild("Right Shoulder", Torso)
LSH = waitChild("Left Shoulder", Torso)
RH = waitChild("Right Hip", Torso)
LH = waitChild("Left Hip", Torso)

RSH.Part0 = Torso
LSH.Part0 = Torso
RH.Part0 = Torso
LH.Part0 = Torso

Add = {
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

Sounds = {
Shoot = {Id = "http://www.roblox.com/asset/?id=2697431", Pitch = 0.3, Volume = 0.5},
Boom = {Id = "http://www.roblox.com/asset/?id=2692806", Pitch = 0.55, Volume = 0.4},
Slash = {Id = "rbxasset://sounds//swordslash.wav", Pitch = 0.5, Volume = 0.5},
Hit = {Id = "http://www.roblox.com/asset/?id=2801263", Pitch = 0.85, Volume = 0.35},
Reload = {Id = "rbxasset://sounds\\metal.ogg", Pitch = 1, Volume = 0.45},
}

for _,v in pairs(Sounds) do
ContentProvider:Preload(v.Id)
end

function PlaySound(Sound, bool)
local s = Instance.new("Sound")
s.Looped = false
s.Volume = Sound.Volume
s.SoundId = Sound.Id
if bool then
s.Pitch = MRA((Sound.Pitch*0.75)*1000, (Sound.Pitch*1.15)*1000)/1000
else
s.Pitch = Sound.Pitch
end
s.PlayOnRemove = true
s.Parent = Torso
Notime(function()
wait()
s.Parent = nil
end)
end

function GetParts(pos, dist)
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

function GetHum(P)
for _,v in pairs(P:children()) do
if v:IsA("Humanoid") then
if v.Health > 0 then
return v
end
end
end
end

function GetGroup(Pos, Distance, Hit)
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

function Tag(hum)
if PlaceId == 48513881 then
local tag = Instance.new("ObjectValue")
tag.Name = "creator"
tag.Value = Me
tag.Parent = hum
end
end

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

for _,v in pairs(Char:children()) do
if v.Name == "Hand Cannon" then
v:remove()
end
end

Model = Instance.new("Model")
Model.Name = "Hand Cannon"

FTorso = Part(Model, false, false, 1, 0, Torso.BrickColor, V3(2, 2, 1))
FW = Weld(Torso, FTorso)

RAB = Part(Model, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
LAB = Part(Model, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
RLB = Part(Model, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
LLB = Part(Model, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))

RABW = Weld(Torso, RAB, CN(), CN(-1.5, -0.5, 0))
LABW = Weld(Torso, LAB, CN(), CN(1.5, -0.5, 0))
RLBW = Weld(Torso, RLB, CN(), CN(-0.5, 1, 0))
LLBW = Weld(Torso, LLB, CN(), CN(0.5, 1, 0))

RAW = Weld(RAB, nil, CN(), CN(0, 0.5, 0))
LAW = Weld(LAB, nil, CN(), CN(0, 0.5, 0))
RLW = Weld(RLB, nil, CN(), CN(0, 1, 0))
LLW = Weld(LLB, nil, CN(), CN(0, 1, 0))

TW = Weld(Torso, nil, CN(0.7, 0.8, 1.2), CA(0, MR(180), MR(55)))

Weapon = Instance.new("Model")
Weapon.Name = "Cannon"

HB = Part(Weapon, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
HBW = Weld(Rarm, HB, CN(0, -0.7, 0), CA(0, MR(90), MR(90)))
HW = Weld(HB, nil)

Handle = Part(Weapon, false, false, 0, 0, BN("Dark grey"), V3(0.5, 0.5, 0.3))
Add.Mesh(Handle, "http://www.roblox.com/asset/?id=3270017", V3(1, 0.7, 2.2), "")
TW.Part1 = Handle

Main = Part(Weapon, false, false, 0, 0, BN("Dark grey"), V3(1.5, 1.5, 2.5))
Add.Mesh(Main, "http://www.roblox.com/asset/?id=3270017", V3(1.6, 1.6, 15), "")
Weld(Handle, Main, CA(0, MR(90), MR(90)), CN(1, 0, 0.2))

Main2 = Part(Weapon, false, false, 0, 0, BN("Gun metallic"), V3(1, 1, 1.5))
Add.Mesh(Main2, "http://www.roblox.com/asset/?id=3270017", V3(1.2, 1.2, 8), "")
Weld(Main, Main2, CN(), CN(0, 0, 1.7))

Handle2 = Part(Weapon, false, false, 0, 0, BN("Dark grey"), V3(0.5, 0.5, 0.3))
Add.Mesh(Handle2, "http://www.roblox.com/asset/?id=3270017", V3(0.7, 0.8, 2.2), "")
Weld(Main2, Handle2, CA(0, MR(90), MR(90)), CN(-0.65, 0, 0))

Tip = Part(Weapon, false, false, 0, 0, BN("Earth yellow"), V3(1.6, 1.6, 0.6))
Add.Sphere(Tip, V3(1.05, 1.05, 1))
Weld(Main, Tip, CN(), CN(0, 0, -1.15))

Tip4 = Part(Weapon, false, false, 0, 0, BN("Black"), V3(1.2, 1.2, 0.3))
Add.Mesh(Tip4, "http://www.roblox.com/asset/?id=3270017", V3(1.7, 1.7, 10), "")
Weld(Main, Tip4, CN(), CN(0, 0, -0.15))

for i = 1.3, 1.45, 0.1 do
local Tip3 = Part(Weapon, false, false, 0, 0, BN("Dark grey"), V3(1.2, 1.2, 0.3))
Add.Mesh(Tip3, "http://www.roblox.com/asset/?id=3270017", V3(i, i, 2), "")
Weld(Main2, Tip3, CN(), CN(0, 0, 0.6))
end

for i = -0.95, 0.66, 1.55 do
local Tip3 = Part(Weapon, false, false, 0, 0, BN("Dark Curry"), V3(1.2, 1.2, 0.3))
Add.Mesh(Tip3, "http://www.roblox.com/asset/?id=3270017", V3(1.65, 1.65, 3), "")
Weld(Main, Tip3, CN(), CN(0, 0, i))
end

for i = 1.3, 1.5, 0.1 do
local Tip2 = Part(Weapon, false, false, 0, 0, BN("Earth yellow"), V3(1.6, 1.6, 0.6))
Add.Mesh(Tip2, "http://www.roblox.com/asset/?id=3270017", V3(i, i, 2), "")
Weld(Main, Tip2, CN(), CN(0, 0, 1.1))
end

for i = -0.3, 1, 0.15 do
local p = Part(Weapon, false, false, 0.7, 0, BN("Black"), V3(0.2, 0.2, 0.2))
Add.Sphere(p, V3(6, 6, 2))
Weld(Main2, p, CN(0, 0, i))
end

function Show_Damage(P, D)
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

function Kill(hit)
if Debounce and Hurt then
local Hu = GetHum(hit.Parent)
if Hu then
Debounce = false
local Dmg = MRA(Damage[1], Damage[2])
Hu.Health = Hu.Health - Dmg
Show_Damage(Tip.Position, Dmg)
PlaySound(Sounds.Hit, true)
Tag(Hu)
local chance = MRA(1, 10)
if chance >=5 then
Hu.PlatformStand = true
wait(0.15)
hit.Velocity = (CN(Torso.CFrame * CN(0, 0.5, 0).p, hit.Position).lookVector * 45)
hit.RotVelocity = V3(MRA(-10, 10), MRA(-10, 10), MRA(-10, 10))
wait(0.3)
Hu.PlatformStand = false
end
end
end
end

Main.Touched:connect(Kill)

Weapon.Parent = Model
Model.Parent = Char

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin", Me.Backpack)
h.Name = "Hand Cannon"
script.Parent = h
end

bin = h

function Attach(t)
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

function SelectAnim()
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
LAW.C0 = CA(MR(15+25*i), 0, MR(5+15*i)) * CN(0, -0.4*i, 0)
FW.C0 = CA(0, MR(-5-30*i), 0)
HW.C0 = CA(MR(45), 0, MR(-37+15*i))
wait()
end
Hum.WalkSpeed = 10
for i = 0.1, 1, 0.1 do
RAW.C0 = CA(MR(15*i), MR(35+10*i), MR(20+8*i))
LAW.C0 = CA(MR(40+7*i), 0, MR(20+6*i)) * CN(0, -0.4-0.2*i, 0)
FW.C0 = CA(0, MR(-35-10*i), 0)
HW.C0 = CA(MR(45-11*i), 0, MR(-22+15*i))
wait()
end
for i = 0.25, 1, 0.25 do
RAW.C0 = CA(MR(15+5*i), MR(45+5*i), MR(28+2*i))
LAW.C0 = CA(MR(47+3*i), 0, MR(26+4*i)) * CN(0, -0.6, 0)
FW.C0 = CA(0, MR(-45-5*i), 0)
HW.C0 = CA(MR(34-4*i), 0, MR(-7+7*i))
wait()
end
end

function DeselAnim()
for i = 0.25, 1, 0.25 do
RAW.C0 = CA(MR(20-5*i), MR(50-5*i), MR(30-5*i))
LAW.C0 = CA(MR(50-5*i), 0, MR(30-5*i)) * CN(0, -0.6+0.1*i, 0)
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

--Norms:
--RAW.C0 = CA(MR(20), MR(50), MR(30))
--LAW.C0 = CA(MR(50), 0, MR(30)) * CN(0, -0.6, 0)
--FW.C0 = CA(0, MR(-50), 0)
--HW.C0 = CA(MR(30), 0, 0)
--
--

function Explode(Par, Pos, surface)
Notime(function()
local cf = CN(Pos) * CA(Par.CFrame:toEulerAnglesXYZ()) * surface[2] * CN(0, 1, 0)
if surface[1] == "Anything" then
cf = surface[2]
end
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
m.Scale = V3(1+2.5*i, 1.4+1*i, 1+2.5*i)
m2.Scale = V3(0.8+2*i, 1.2+1*i, 0.8+2*i)
m3.Scale = V3(0.5+1*i, 1+1*i, 0.5+1*i)
wait()
end
p2:remove()
p3:remove()
p:remove()
end)
end

function Shoot(Pos)
coroutine.resume(coroutine.create(function()
local acc = Accuracy*100
local Start = Main2.CFrame * CN(0, 0, -0.5).p
local Face = CN(Start, Pos) * CA(MR(MRA(-acc, acc))/100, MR(MRA(-acc, acc))/100, MR(MRA(-acc, acc))/100)
local Cannonball = Part(Model, true, false, 0, 0, BN("Black"), V3(1.3, 1.3, 1.3))
Add.Sphere(Cannonball)
Cannonball.CFrame = Face
local Go = 3
local Drop = 0.55/(Go*3)
local Dist = 500
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
M.Scale = V3(5, Magn, 5)
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
local Noobs = GetGroup(Hitpos, 5, Hit)
for _,v in pairs(Noobs) do
local dm = 60/((v[3]+3)/3)
dm = MRA(dm*0.9, dm*1.04)
v[1].Health = v[1].Health - dm
local t = v[2]:findFirstChild("Head")
if t then
Show_Damage(t.Position, dm)
end
pcall(function()
Tag(v[1])
end)
end
local Parts = GetParts(Hitpos, 7)
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

function ShootAnim(pos)
RLW.Part1 = Rleg
LLW.Part1 = Lleg
local cf = ComputePos(Torso.Position, pos)
local bp = Instance.new("BodyPosition",Torso)
bp.maxForce = V3(MH, 0, MH)
bp.P = 10000
PlaySound(Sounds.Shoot, true)
local effect = Part(Model, false, false, 0, 0, BN(ShootColors[MRA(1,#ShootColors)]), V3(0.2, 0.2, 0.2))
local effect2 = Part(Model, false, false, 0, 0, BN(ShootColors[MRA(1,#ShootColors)]), V3(0.2, 0.2, 0.2))
local m1 = Add.Mesh(effect, "http://www.roblox.com/asset/?id=20329976", V3(1,1,1))
local m2 = Add.Mesh(effect2, "http://www.roblox.com/asset/?id=20329976", V3(1,1,1))
local w1 = Weld(Main2, effect, CA(MR(-90), 0, 0), CN(0, -1, 0))
local w2 = Weld(Main2, effect2, CA(MR(-90), 0, 0), CN(0, -1, 0))
for i = 0, 1, 0.5 do
RAW.C0 = CA(MR(20-50*i), MR(50-25*i), MR(30+45*i))
LAW.C0 = CA(MR(50-10*i), 0, MR(30+20*i)) * CN(0, -0.6-0.3*i, 0)
RLW.C0 = CA(MR(30*i), 0, MR(-15*i))
LLW.C0 = CA(MR(10*i), 0, MR(-35*i))
FW.C0 = CA(MR(5*i), MR(-50-15*i), 0)
HW.C0 = CA(MR(30), MR(35*i), MR(-25*i))
Neck.C0 = necko * CA(MR(10*i), 0, 0)
bp.position = cf * CN(0, 0, 3*i).p
m1.Scale = V3(0.5+0.6*i, 0.4+0.2*i, 0.5+0.6*i)
m2.Scale = V3(0.3+0.5*i, 0.5+1*i, 0.3+0.5*i)
w1.C1 = CN(0, -1-0.2*i, 0)
w2.C1 = CN(0, -1-0.5*i, 0)
effect.Transparency = 0.2*i
effect2.Transparency = 0.2*i
wait()
end
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(-30-10*i), MR(25-5*i), MR(75+5*i))
LAW.C0 = CA(MR(40-5*i), 0, MR(50+5*i)) * CN(0, -0.9-0.05*i, 0)
RLW.C0 = CA(MR(30+5*i), 0, MR(-15))
LLW.C0 = CA(MR(10+5*i), 0, MR(-35-5*i))
FW.C0 = CA(MR(5+5*i), MR(-65-5*i), 0)
HW.C0 = CA(MR(30), MR(35+5*i), MR(-25-5*i))
Neck.C0 = necko * CA(MR(10+5*i), 0, 0)
bp.position = cf * CN(0, 0, 3+1*i).p
m1.Scale = V3(1+1*i, 0.7+0.9*i, 1+1*i)
m2.Scale = V3(0.8+0.6*i, 1.5+1.6*i, 0.8+0.6*i)
w1.C1 = CN(0, -1.2-0.6*i, 0)
w2.C1 = CN(0, -1.5-1.8*i, 0)
effect.Transparency = 0.2+0.9*i
effect2.Transparency = 0.2+0.9*i
wait()
end
effect:remove()
effect2:remove()
for i = 0.2, 1, 0.2 do
bp.position = cf * CN(0, 0, 4+0.8*i).p
wait()
end
for i = 0.08, 1, 0.06 do
RAW.C0 = CA(MR(-40+50*i), MR(20+15*i), MR(80-35*i))
LAW.C0 = CA(MR(35-30*i), 0, MR(55-45*i)) * CN(0, -0.95+0.5*i, 0)
RLW.C0 = CA(MR(35-35*i), 0, MR(-15+25*i))
LLW.C0 = CA(MR(15-15*i), 0, MR(-40+30*i))
FW.C0 = CA(MR(10-7*i), MR(-70+40*i), 0)
HW.C0 = CA(MR(30), MR(40-40*i), MR(-30-10*i))
Neck.C0 = necko * CA(MR(15+5*i), 0, MR(20*i))
bp.position = cf * CN(0, 0, 4.8+0.8*i).p
wait()
end
bp:remove()
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(10+10*i), MR(35+5*i), MR(45-5*i))
LAW.C0 = CA(MR(5), 0, MR(10)) * CN(0, -0.45+0.1*i, 0)
FW.C0 = CA(MR(3-3*i), MR(-30+5*i), 0)
HW.C0 = CA(MR(30), 0, MR(-40-10*i))
wait()
end
for i = 0.12, 1, 0.12 do
RAW.C0 = CA(MR(20+5*i), MR(40+5*i), MR(40+5*i))
LAW.C0 = CA(MR(5), 0, MR(10)) * CN(0, -0.35-0.3*i, 0)
FW.C0 = CA(0, MR(-25+5*i), 0)
HW.C0 = CA(MR(30), 0, MR(-50-5*i))
wait()
end
local b = Part(Model, false, false, 0, 0, BN("Black"), V3(1.1, 1.1, 1.1))
local m = Add.Sphere(b)
local w = Weld(Larm, b, CN(), CN(0, 1.4, 0))
for i = 0.16, 1, 0.16 do
LAW.C0 = CA(MR(5+30*i), 0, MR(10+10*i)) * CN(0, -0.65+0.65*i, 0)
RAW.C0 = CA(MR(25), MR(45+3*i), MR(40))
m.Scale = V3(0.5+0.5*i, 0.5+0.5*i, 0.5+0.5*i)
Neck.C0 = necko * CA(MR(20-10*i), 0, MR(20-15*i))
wait()
end
for i = 0.1, 1, 0.1 do
LAW.C0 = CA(MR(35+105*i), 0, MR(20+20*i)) * CN(0, -0.9*i, 0)
RAW.C0 = CA(MR(25), MR(48+6*i), MR(40))
Neck.C0 = necko * CA(MR(10-10*i), 0, MR(5-35*i))
wait()
end
for i = 0.16, 1, 0.16 do
LAW.C0 = CA(MR(140-10*i), 0, MR(40-15*i)) * CN(0, -0.9-0.2*i, 0)
RAW.C0 = CA(MR(25), MR(54), MR(40))
Neck.C0 = necko * CA(MR(5*i), 0, MR(-30))
w.C0 = CN(1.5*i, 0.55*i, 1.1*i)
wait()
end
PlaySound(Sounds.Reload, true)
b:remove()
w:remove()
for i = 0.2, 1, 0.2 do
LAW.C0 = CA(MR(130-10*i), 0, MR(25-15*i)) * CN(0, -1.1+0.2*i, 0)
RAW.C0 = CA(MR(25-10*i), MR(54), MR(40))
Neck.C0 = necko * CA(MR(5-3*i), 0, MR(-30+5*i))
HW.C0 = CA(MR(30), 0, MR(-55+10*i))
FW.C0 = CA(0, MR(-20-5*i), 0)
wait()
end
for i = 0.11, 1, 0.11 do
LAW.C0 = CA(MR(120-60*i), 0, MR(10+15*i)) * CN(0, -0.9+0.3*i, 0)
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
LAW.C0 = CA(MR(60-10*i), 0, MR(25+5*i)) * CN(0, -0.6, 0)
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
LAW.C0 = CA(MR(50), 0, MR(30)) * CN(0, -0.6, 0)
FW.C0 = CA(0, MR(-50), 0)
HW.C0 = CA(MR(30), 0, 0)
Neck.C0 = necko
end

function Melee()
PlaySound(Sounds.Slash, true)
for i = 0.25, 1, 0.25 do
RAW.C0 = CA(MR(20+5*i), MR(50-5*i), MR(30+3*i))
LAW.C0 = CA(MR(50), 0, MR(30+4*i)) * CN(0, -0.6-0.05*i, 0)
HW.C0 = CA(MR(30), MR(5*i), 0)
FW.C0 = CA(0, MR(-50-5*i), 0)
wait()
end
for i = 0.12, 1, 0.12 do
RAW.C0 = CA(MR(25+25*i), MR(45-30*i), MR(33+7*i))
LAW.C0 = CA(MR(50), 0, MR(34+11*i)) * CN(0, -0.65-0.25*i, 0)
HW.C0 = CA(MR(30), MR(5+25*i), 0)
FW.C0 = CA(0, MR(-55-25*i), 0)
wait()
end
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(50+15*i), MR(15-5*i), MR(40-10*i)) * CN(0, -0.2*i, 0)
LAW.C0 = CA(MR(50+10*i), 0, MR(45-5*i)) * CN(0, -0.9+0.15*i, 0)
HW.C0 = CA(MR(30+2*i), MR(30+5*i), 0)
FW.C0 = CA(0, MR(-80+10*i), MR(-5*i))
wait()
end
Hurt = true
Debounce = true
for i = 0.07, 1, 0.07 do
RAW.C0 = CA(MR(65+55*i), MR(10), MR(30-70*i)) * CN(0, -0.2-1.1*i, 0)
LAW.C0 = CA(MR(60+120*i), 0, MR(40-70*i)) * CN(0, -0.75+0.7*i, 0)
HW.C0 = CA(MR(32+6*i), MR(35+20*i), MR(-4*i))
FW.C0 = CA(0, MR(-70+110*i), 0)
wait()
end
for i = 0.16, 1, 0.16 do
RAW.C0 = CA(MR(120+10*i), MR(10), MR(-40-5*i)) * CN(0, -1.3-0.1*i, 0)
LAW.C0 = CA(MR(180+15*i), 0, MR(-30-20*i)) * CN(0, -0.05+0.1*i, 0)
HW.C0 = CA(MR(38+2*i), MR(55-6*i), MR(-4-1*i))
FW.C0 = CA(0, MR(40+10*i), 0)
wait()
end
Hurt = false
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(130+5*i), MR(10), MR(-45-2*i)) * CN(0, -1.4-0.05*i, 0)
LAW.C0 = CA(MR(195+5*i), 0, MR(-50-8*i)) * CN(0, 0.05+0.05*i, 0)
HW.C0 = CA(MR(40), MR(49-2*i), MR(-5))
FW.C0 = CA(0, MR(50+3*i), 0)
wait()
end
wait(0.2)
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(135-10*i), MR(10+5*i), MR(-47+10*i)) * CN(0, -1.45+0.25*i, 0)
LAW.C0 = CA(MR(200-10*i), 0, MR(-58+10*i)) * CN(0, 0.1-0.1*i, 0)
HW.C0 = CA(MR(40), MR(47-5*i), MR(-5+5*i))
FW.C0 = CA(0, MR(53-10*i), 0)
wait()
end
for i = 0.08, 1, 0.08 do
RAW.C0 = CA(MR(125-90*i), MR(15+30*i), MR(-37+57*i)) * CN(0, -1.2+1.1*i, 0)
LAW.C0 = CA(MR(190-125*i), 0, MR(-48+68*i)) * CN(0, -0.5*i, 0)
HW.C0 = CA(MR(40-7*i), MR(42-37*i), 0)
FW.C0 = CA(0, MR(43-82*i), 0)
wait()
end
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(35-15*i), MR(45+5*i), MR(20+10*i)) * CN(0, -0.1+0.1*i, 0)
LAW.C0 = CA(MR(65-15*i), 0, MR(20+10*i)) * CN(0, -0.5-0.1*i, 0)
HW.C0 = CA(MR(33-3*i), MR(5-5*i), 0)
FW.C0 = CA(0, MR(-41-9*i), 0)
wait()
end
RLW.Part1 = nil
LLW.Part1 = nil
RAW.C0 = CA(MR(20), MR(50), MR(30))
LAW.C0 = CA(MR(50), 0, MR(30)) * CN(0, -0.6, 0)
FW.C0 = CA(0, MR(-50), 0)
HW.C0 = CA(MR(30), 0, 0)
Neck.C0 = necko
end

function onSelected(mouse)
SelectAnim()
Selected = true
mouse.Button1Down:connect(function()
if Attacking == false then
Attacking = true
mouse.Button1Up:wait()
Shoot(mouse.Hit.p)
ShootAnim(mouse.Hit.p)
Attacking = false
end
end)
mouse.KeyDown:connect(function(key)
key = key:lower()
if key == "q" then
if Attacking == false then
Attacking = true
Melee()
Attacking = false
end
end
end)
end

function onDeselected(mouse)
Selected = false
DeselAnim()
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDeselected)
end}
module[2] = {"Hand Drills",function()
plyr = game:GetService("Players").LocalPlayer 
--password 
plyr.Character["Right Arm"].TopSurface = "Smooth" 
plyr.Character["Right Arm"].BottomSurface = "Smooth" 
plyr.Character["Left Arm"].TopSurface = "Smooth" 
plyr.Character["Left Arm"].BottomSurface = "Smooth" 
DrillOut = false 
BattleEnd = false 
EDmg = math.random(10,50) 
EOn = false 
Spinning = false 
SpinDeb = false 
LineColor = "White" 
Shocks = false 
ShockDeb = false 
mod = Instance.new("Model") 
mod.Name = "Rainbow Dash's Drills" 
mod.Parent = plyr.Character 
welds = Instance.new("Model") 
welds.Name = "NotSparta(But close!)" 
welds.Parent = mod 
Lines = Instance.new("Model") 
Lines.Name = "Lines :>" 
Lines.Parent = mod 
function createPart(size,color,parent) 
Part = Instance.new("Part") 
Part.Size = size 
Part.BrickColor = BrickColor.new(color) 
Part.Parent = parent 
Part.TopSurface = "Smooth" 
Part.BottomSurface = "Smooth" 
Part.formFactor = "Symmetric" 
Part.CanCollide = false 
Part.Locked = true 
end 
function createMesh(type1,type2,scale,parent) 
if type1 == "Block" then 
Mesh = Instance.new("BlockMesh") 
Mesh.Scale = scale 
Mesh.Parent = parent 
elseif type1 == "Special" then 
Mesh = Instance.new("SpecialMesh") 
Mesh.MeshType = type2 
Mesh.Scale = scale 
Mesh.Parent = parent 
elseif type1 == "Cylinder" then 
Mesh = Instance.new("CylinderMesh") 
Mesh.Scale = scale 
Mesh.Parent = parent 
end 
end 
function createWeld(part0,part1,c0) 
Weld = Instance.new("Weld") 
Weld.Parent = welds 
Weld.Part0 = part0 
Weld.Part1 = part1 
Weld.C0 = c0 
end 
function setJoint(which) 
if which == "Right" then 
RightArmJoint.Parent = nil 
RightArmJoint.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) 
RightArmJoint.C0 = CFrame.new(0,0.6,0)*CFrame.Angles(0,0,0) 
elseif which == "Left" then 
LeftArmJoint.Parent = nil 
LeftArmJoint.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) 
LeftArmJoint.C0 = CFrame.new(0,0.6,0)*CFrame.Angles(0,0,0) 
elseif which == "Both" then 
RightArmJoint.Parent = nil 
LeftArmJoint.Parent = nil 
RightArmJoint.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) 
RightArmJoint.C0 = CFrame.new(0,0.6,0)*CFrame.Angles(0,0,0) 
LeftArmJoint.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) 
LeftArmJoint.C0 = CFrame.new(0,0.6,0)*CFrame.Angles(0,0,0) 
end 
end 
function backArms() 
NiceWeldRight.C0 = CFrame.new(-1.5,-0.6,0)*CFrame.Angles(0,0,0) 
NiceWeldLeft.C0 = CFrame.new(1.5,-0.6,0)*CFrame.Angles(0,0,0) 
RightArmJoint.Parent = plyr.Character["Right Arm"] 
RightArmJoint.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(-40),math.rad(-20),math.rad(5)) 
LeftArmJoint.Parent = plyr.Character["Left Arm"] 
LeftArmJoint.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(-40),math.rad(20),math.rad(-5)) 
end 
function armOut(which) 
if which == "Right" then 
RightArmJoint.Parent = plyr.Character["Right Arm"] 
RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
elseif which == "Left" then 
LeftArmJoint.Parent = plyr.Character["Left Arm"] 
LeftArmJoint.C1 = LeftArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
end 
end 
function effect1(thing) 
for i,v in pairs(Lines:GetChildren()) do 
v:Remove() 
end 
e1 = true 
pos1 = thing.Position 
what = thing 
pos2 = pos1 
end 
function effect2(thing) 
e1 = true 
posz1 = thing.Position 
what2 = thing 
posz2 = posz1 
end 
function addShock() 
createPart(Vector3.new(1,1,1),"White",mod) 
RightShock = Part 
RightShock.Transparency = 0.7 
RightShock.Reflectance = 0 
createMesh("Special","Brick",Vector3.new(0.3,1.2,0.3),Part) 
Mesh.MeshId = "http://www.roblox.com/asset/?id=1033714" 
createWeld(Part,RightDrill,CFrame.new(0,0,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Pastal light blue",mod) 
LeftShock = Part 
LeftShock.Transparency = 0.7 
LeftShock.Reflectance = 0 
createMesh("Special","Brick",Vector3.new(0.3,1.2,0.3),Part) 
Mesh.MeshId = "http://www.roblox.com/asset/?id=1033714" 
createWeld(Part,LeftDrill,CFrame.new(0,0,0)*CFrame.Angles(0,0,0)) 
LineColor = "Pastel light blue" 
Shocks = true 
function STouch(part) 
if math.random(1,5) == 5 and ShockDeb == false then 
print("STUNNED!") 
if part.Parent:findFirstChild("Humanoid") ~= nil then 
ShockDeb = true 
pcall(function() 
part.Parent.Humanoid.WalkSpeed = 0 
part.Parent.Torso.Anchored = true 
end) 
wait(2) 
pcall(function() 
part.Parent.Humanoid.WalkSpeed = 16 
part.Parent.Torso.Anchored = false 
end) 
ShockDeb = false 
end 
end 
end 
function onTouch(hit) STouch(hit) end RightShock.Touched:connect(onTouch) 
function onTouch(hit) STouch(hit) end LeftShock.Touched:connect(onTouch) 
end 
function removeShock() 
pcall(function() 
RightShock:Destroy() 
LeftShock:Destroy() 
end) 
LineColor = "White" 
Shocks = false 
end 
createPart(Vector3.new(1,1,1),"White",mod) 
RightHandle = Part 
createMesh("Cylinder","Brick",Vector3.new(0.5,0.05,0.5),Part) 
createWeld(Part,plyr.Character["Right Arm"],CFrame.new(0,1,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"White",mod) 
RightDrill = Part 
RightDrill.Reflectance = 0.2 
createMesh("Special","Brick",Vector3.new(0.2,1,0.2),Part) 
Mesh.MeshId = "http://www.roblox.com/asset/?id=1033714" 
createWeld(Part,RightHandle,CFrame.new(0,0.4,0)*CFrame.Angles(math.rad(180),0,0)) 
RDWeld = Weld 
createPart(Vector3.new(1,1,1),"Pastel light blue",mod) 
LeftHandle = Part 
createMesh("Cylinder","Brick",Vector3.new(0.5,0.05,0.5),Part) 
createWeld(Part,plyr.Character["Left Arm"],CFrame.new(0,1,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Pastel light blue",mod) 
LeftDrill = Part 
LeftDrill.Reflectance = 0.2 
createMesh("Special","Brick",Vector3.new(0.2,1,0.2),Part) 
Mesh.MeshId = "http://www.roblox.com/asset/?id=1033714" 
createWeld(Part,LeftHandle,CFrame.new(0,0.4,0)*CFrame.Angles(math.rad(180),0,0)) 
LDWeld = Weld 
--Joints 
createPart(Vector3.new(1,1,1),"White",mod) 
RAJ = Part 
RAJ.Transparency = 1 
createMesh("Block","Brick",Vector3.new(0.2,0.2,0.2),Part) 
createWeld(Part,plyr.Character.Torso,CFrame.new(-1.5,-0.6,0)*CFrame.Angles(0,0,0)) 
NiceWeldRight = Weld 
createWeld(plyr.Character["Right Arm"],RAJ,CFrame.new(0,0.6,0)*CFrame.Angles(0,0,0)) 
RightArmJoint = Weld 
RightArmJoint.Parent = nil 
createPart(Vector3.new(1,1,1),"Pastel light blue",mod) 
LAJ = Part 
LAJ.Transparency = 1 
createMesh("Block","Brick",Vector3.new(0.2,0.2,0.2),Part) 
createWeld(Part,plyr.Character.Torso,CFrame.new(1.5,-0.6,0)*CFrame.Angles(0,0,0)) 
NiceWeldLeft = Weld 
createWeld(plyr.Character["Left Arm"],LAJ,CFrame.new(0,0.6,0)*CFrame.Angles(0,0,0)) 
LeftArmJoint = Weld 
LeftArmJoint.Parent = nil 
--JointEnd 
if script.Parent.className ~= "HopperBin" then 
hb = Instance.new("HopperBin") 
hb.Parent = plyr.Backpack 
hb.Name = "Hand Drills" 
script.Parent = hb 
end 
debounce = false 
function Select(mouse) 
BattleEnd = false 
mod.Parent = plyr.Character 
welds:MakeJoints() 
backArms() 
function onKeyDown(key) 
if debounce == false then debounce = true 
key:lower() 
----------- 
if string.byte(key) == 113 and Spinning == false then 
if DrillOut == false then 
DrillOut = true 
for i = 1,10 do 
RDWeld.C0 = RDWeld.C0 - Vector3.new(0,0.08,0) 
LDWeld.C0 = LDWeld.C0 - Vector3.new(0,0.08,0) 
wait() 
end 
effect1(RightDrill) 
effect2(LeftDrill) 
else 
e1 = false 
for i = 1,10 do 
RDWeld.C0 = RDWeld.C0 + Vector3.new(0,0.08,0) 
LDWeld.C0 = LDWeld.C0 + Vector3.new(0,0.08,0) 
wait() 
end 
DrillOut = false 
end 
--Teleport---------------------- 
elseif string.byte(key) == 116 then 
if (plyr.Character.Torso.Position-mouse.Hit.p).magnitude < 2000 then 
e1 = false 
for i,v in pairs(Lines:GetChildren()) do 
v:Remove() 
end 
pos1 = plyr.Character.Torso.Position 
plyr.Character:MoveTo(mouse.Hit.p) 
wait() 
pos2 = plyr.Character.Torso.Position 
createPart(Vector3.new(1,1,1),"Pastel light blue",workspace) 
Partz = Part 
Partz.Name = "Line" 
Partz.Anchored = true 
Partz.Size = Vector3.new(1,(pos1-pos2).magnitude,1) 
Partz.CFrame = CFrame.new((pos1+pos2)/2,pos1)*CFrame.Angles(math.pi/2,0,0) 
createMesh("Cylinder","Brick",Vector3.new(0.5,1,0.5),Partz) 
wait() 
for i = 1,10 do 
pcall(function() 
Partz.Transparency = Partz.Transparency + 0.05 
end) 
wait() 
end 
game:getService("Debris"):AddItem(Partz,0.1) 
effect1(RightDrill) 
effect2(LeftDrill) 
end 
end 
if DrillOut == true then 
if string.byte(key) == 101 and Spinning == false then 
if math.random(1,2) == 1 then 
EOn = true 
function onTouch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if EOn == true then 
EOn = false 
hit.Parent.Humanoid:TakeDamage(EDmg) 
wait(0.5) 
EOn = true 
end 
end 
end 
RightDrill.Touched:connect(onTouch) 
backArms() 
for i = 1,5 do 
RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(30),0,0) 
wait() 
end 
for i = 1,5 do 
RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(-30),0,0) 
wait() 
end 
EOn = false 
else 
EOn = true 
function onTouch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if EOn == true then 
EOn = false 
hit.Parent.Humanoid:TakeDamage(EDmg) 
wait(0.5) 
EOn = true 
end 
end 
end 
LeftDrill.Touched:connect(onTouch) 
backArms() 
for i = 1,5 do 
LeftArmJoint.C1 = LeftArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(30),0,0) 
wait() 
end 
for i = 1,5 do 
LeftArmJoint.C1 = LeftArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(-30),0,0) 
wait() 
end 
EOn = false 
end 
--Spin win-------------- 
elseif string.byte(key) == 114 then 
backArms() 
if Spinning == false then 
SpinDeb = true 
SpinT = true 
for i = 1,10 do 
RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(4),math.rad(2),math.rad(-0.5)) 
LeftArmJoint.C1 = LeftArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(4),math.rad(-2),math.rad(0.5)) 
wait() 
end 
for i = 1,10 do 
RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(0,0,math.rad(8.5)) 
LeftArmJoint.C1 = LeftArmJoint.C1*CFrame.fromEulerAnglesXYZ(0,0,math.rad(-8.5)) 
wait() 
end 
NiceWeldRight.C0 = NiceWeldRight.C0 + Vector3.new(0.1,0,0) 
NiceWeldLeft.C0 = NiceWeldLeft.C0 - Vector3.new(0.1,0,0) 
function onTouch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if SpinT == true then 
SpinT = false 
hit.Parent.Humanoid:TakeDamage(EDmg) 
wait(0.1) 
SpinT = true 
end 
end 
end 
LeftDrill.Touched:connect(onTouch) 
function onTouch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if SpinT == true then 
SpinT = false 
hit.Parent.Humanoid:TakeDamage(EDmg) 
wait(0.1) 
SpinT = true 
end 
end 
end 
RightDrill.Touched:connect(onTouch) 
Spinning = true 
SpinDeb = false 
plyr.Character.Humanoid.WalkSpeed = 25 
else 
SpinT = false 
plyr.Character.Humanoid.WalkSpeed = 16 
Spinning = false 
end 
elseif string.byte(key) == 122 then 
if Shocks == false then 
addShock() 
else 
removeShock() 
end 
--------- 
end 
end 
EOn = false 
debounce = false 
end 
end 
mouse.KeyDown:connect(onKeyDown) 
end 
hb.Selected:connect(Select) 
function onDeselect(mouse) 
pcall(function() 
if DrillOut == true then 
for i = 1,10 do 
RDWeld.C0 = RDWeld.C0 + Vector3.new(0,0.08,0) 
LDWeld.C0 = LDWeld.C0 + Vector3.new(0,0.08,0) 
end 
end 
DrillOut = false 
BattleEnd = true 
EOn = false 
e1 = false 
Spinning = false 
setJoint("Both") 
SpinT = false 
plyr.Character.TLua.Humanoid.WalkSpeed = 16 
end) 
end 
hb.Deselected:connect(onDeselect) 
coroutine.resume(coroutine.create(function() 
while true do 
if Spinning then 
plyr.Character.Torso.CFrame = plyr.Character.Torso.CFrame*CFrame.fromEulerAnglesXYZ(0,math.rad(60),0) 
end 
wait() 
end 
end 
) 
) 
coroutine.resume(coroutine.create(function() 
for i = 1,math.huge do 
if e1 then 
posz1 = what2.Position 
createPart(Vector3.new(1,1,1),LineColor,Lines) 
Partz = Part 
Partz.Name = "LineD" .. i 
Partz.Transparency = 0 
Partz.Anchored = true 
Partz.Size = Vector3.new(1,(posz1-posz2).magnitude,1) 
Partz.CFrame = CFrame.new((posz1+posz2)/2,posz1)*CFrame.Angles(math.pi/2,0,0) 
createMesh("Cylinder","Brick",Vector3.new(0.2,1,0.2),Partz) 
delay(0,function() 
for iz = 0 , 1 , 0.1 do 
wait() 
Lines["LineD" .. i].Transparency = 1*iz 
end 
game:getService("Debris"):AddItem(Partz) 
end) 
posz2 = posz1 
end 
wait() 
end 
end 
) 
) 
coroutine.resume(coroutine.create(function() 
for i = 1,math.huge do 
if e1 then 
pos1 = what.Position 
createPart(Vector3.new(1,1,1),LineColor,Lines) 
Partz = Part 
Partz.Name = "Line" .. i 
Partz.Transparency = 0 
Partz.Anchored = true 
Partz.Size = Vector3.new(1,(pos1-pos2).magnitude,1) 
Partz.CFrame = CFrame.new((pos1+pos2)/2,pos1)*CFrame.Angles(math.pi/2,0,0) 
createMesh("Cylinder","Brick",Vector3.new(0.2,1,0.2),Partz) 
delay(0,function() 
for iz = 0 , 1 , 0.1 do 
wait() 
Lines["Line" .. i].Transparency = 1*iz 
end 
game:getService("Debris"):AddItem(Partz) 
end) 
pos2 = pos1 
end 
wait() 
end 
end 
) 
)

end}
module[3] = {"Hidden Blade",function()
--==Made by LuisPambid==--
--==Hidden Blade [Assasin]==--

local player=game.Players.LocalPlayer
local char=player.Character
repeat wait() until player and char
local torso=char.Torso
local head=char.Head
local human=char.Humanoid
local arm={Left=char["Left Arm"], Right=char["Right Arm"]}
local leg={Left=char["Left Leg"], Right=char["Right Leg"]}
local joints={LeftShoulder=torso["Left Shoulder"], RightShoulder=torso["Right Shoulder"], LeftHip=torso["Left Hip"], RightHip=torso["Right Hip"]}
joints.LeftShoulder.Part0=torso
joints.RightShoulder.Part0=torso
joints.LeftHip.Part0=torso
joints.RightHip.Part0=torso
local c=function(f) coroutine.resume(coroutine.create(f)) end
local p=function(f) pcall(f) end
local add={
	Part=function(par, a, c, col, t, s, cf, ms)
		local p=Instance.new("Part", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or CFrame.new()  end)
		local m=Instance.new("BlockMesh", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) end)
		return p
	end,
	Wedge=function(par, a, c, col, t, s, cf, ms)
		local p=Instance.new("WedgePart", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or CFrame.new()  end)
		local m=Instance.new("SpecialMesh", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) m.MeshType="Wedge" end)
		return p
	end,
	Gui=function(ins, par, bc, bg, tc, fs, text, t, s, pos)
		local g=Instance.new(ins, par) pcall(function() g.BorderColor=BrickColor.new(bc) g.BackgroundColor=BrickColor.new(bg) g.TextColor=BrickColor.new(tc) g.FontSize=fs g.Font="ArialBold" g.Text=text g.Transparency=t g.Size=s g.Position=pos  end)
		return g
	end,
	Weld=function(par, p1, cf)
		local w=Instance.new("Weld", par) pcall(function() w.Part0=w.Parent or par w.Part1=p1 w.C1=cf or CFrame.new() end)
		return w
	end,
	Mesh=function(ins, par, s, of, t)
		local m=Instance.new(ins, par) pcall(function() m.Scale=s or Vector3.new() m.Offset=of or Vector3.new() m.MeshType=t end)
		return m
	end,
	Sound=function(parent, id, volume, pitch)
		local s=Instance.new("Sound", parent) pcall(function() s.SoundId=id s.Volume=volume s.Pitch=pitch end)
		return s
	end,
}
local scriptname="Hidden Blade" --Name here
pcall(function() player.Backpack[scriptname]:remove() char[scriptname]:remove() char["Objects"]:remove() end)
local model=Instance.new("Model", char) model.Name="Objects"
local modelB=Instance.new("Model", char) modelB.Name=scriptname
local bin=Instance.new("HopperBin", player.Backpack) bin.Name=scriptname
local gui
local skincolor="Really black"
local hiddenbladecolor="Really black"
local body={}
local animate={}
local obj={}
--Variables--
local trailDeb=false
local keyDeb=false
local onAssasinate=false
local Assasinate=false
local dmg=math.random(10, 20)
local hitDeb=false
local loop=false
local speed=16
local equipleft, equipright=false, false
local Slash=add.Sound(torso, "rbxasset://sounds//swordslash.wav", 1, 1)
local Hit=add.Sound(torso, "http://roblox.com/asset/?id=10209225", 1, 1)
local Equipping=add.Sound(torso, "http://www.roblox.com/asset/?id=13510737", 1, 1)
function createParts()
	gui=Instance.new("ScreenGui", player.PlayerGui) gui.Name=scriptname
	--==PARTS==--
	torso.Transparency=1
	body.Head=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	body.Torso=add.Part(model, false, false, skincolor, 0, Vector3.new(2, 2, 1), nil)
	body.ArmLeft, body.ArmRight=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	body.LegLeft, body.LegRight=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	--==WELDS==--
	body.HeadW=add.Weld(body.Head, body.Torso, CFrame.new(0, 1.5, 0))
	body.TorsoW=add.Weld(body.Torso, torso, nil)
	body.ArmLeftW, body.ArmRightW=add.Weld(body.ArmLeft, body.Torso, CFrame.new(-1.5, .5, 0)), add.Weld(body.ArmRight, body.Torso, CFrame.new(1.5, .5, 0))
	body.LegLeftW, body.LegRightW=add.Weld(body.LegLeft, body.Torso, CFrame.new(-.5, -1.5, 0)), add.Weld(body.LegRight, body.Torso, CFrame.new(.5, -1.5, 0))
	--==WELDS==--
	--add.Weld(body.Head, head, nil)
	add.Weld(arm.Left, body.ArmLeft, CFrame.new(0, -.5, 0))
	add.Weld(arm.Right, body.ArmRight, CFrame.new(0, -.5, 0))
	joints.LeftHip.Part0=body.Torso
	joints.RightHip.Part0=body.Torso
	---------------------------------------------------------------------------------------
	animate={
		["Head"]=function(cf)
			body.HeadW.C1=CFrame.new(0, 1.5, 0)*cf
		end;
		["Torso"]=function(cf)
			body.TorsoW.C1=cf
		end;
		["ArmLeft"]=function(cf)
			body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*cf
		end;
		["ArmRight"]=function(cf)
			body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*cf
		end;
		["LegLeft"]=function(cf)
			legLeftW=add.Weld(leg.Left, body.LegLeft, CFrame.new(0, -.5, 0))
			body.LegLeftW.C1=CFrame.new(-.5, -1.5, 0)*cf
			c(function()
				wait()
				legLeftW:remove()
			end)
		end;
		["LegRight"]=function(cf)
			legRightW=add.Weld(leg.Right, body.LegRight, CFrame.new(0, -.5, 0))
			body.LegRightW.C1=CFrame.new(.5, -1.5, 0)*cf
			c(function()
				wait()
				legRightW:remove()
			end)
		end;
	}
	--==Objects==--	
	obj.attackLabel=add.Gui("TextLabel", gui, "Really black", "Really black", "White", "Size18", "Assasinate(Q)", 0, UDim2.new(0, 150, 0, 50), UDim2.new(0, 0, 0, 150))
	obj.attackLabel2=add.Gui("TextLabel", obj.attackLabel, "Really black", "Really black", "White", "Size18", "StayLive(E)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
	obj.attackLabel3=add.Gui("TextLabel", obj.attackLabel2, "Really black", "Really black", "White", "Size18", "Rappid(F)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
	for i, v in pairs(modelB:children()) do
		if i==0 then return end
	end
	obj.Wrist=add.Part(modelB, false, false, hiddenbladecolor, 0, Vector3.new(1.1, 1, 1.1), nil)
	obj.WristW=add.Weld(obj.Wrist, arm.Left, CFrame.new(0, -.4, 0))
	obj.Keep=add.Part(modelB, false, false, hiddenbladecolor, 0, Vector3.new(.2, 1, .5), nil)
	obj.KeepW=add.Weld(obj.Keep, obj.Wrist, CFrame.new(.6, 0, 0))
	obj.Wedge=add.Wedge(modelB, false, false, hiddenbladecolor, 0, Vector3.new(1, .2, .3), nil)
	obj.WedgeW=add.Weld(obj.Wedge, obj.Keep, CFrame.new(0, 0, -.4)*CFrame.Angles(0, 0, -math.pi/2))
	obj.Wedge=add.Wedge(modelB, false, false, hiddenbladecolor, 0, Vector3.new(1, .2, .3), nil)
	obj.WedgeW=add.Weld(obj.Wedge, obj.Keep, CFrame.new(0, 0, .4)*CFrame.Angles(0, math.pi, math.pi/2))
	obj.Blade=add.Part(modelB, false, false, "Medium stone-grey", 0, Vector3.new(.2, .5, .2), nil, Vector3.new(.5, 1, 1))
	obj.BladeW=add.Weld(obj.Blade, obj.Keep, CFrame.new(0, .25, 0))
	obj.Point=add.Wedge(modelB, false, false, "Medium stone-grey", 0, Vector3.new(.2, .5, .2), nil, Vector3.new(.5, 1, .5))
	obj.PointW=add.Weld(obj.Point, obj.Blade, CFrame.new(0, -.5, -.05)*CFrame.Angles(0, 0, math.pi))
	obj.Point=add.Wedge(modelB, false, false, "Medium stone-grey", 0, Vector3.new(.2, .5, .2), nil, Vector3.new(.5, 1, .5))
	obj.PointW=add.Weld(obj.Point, obj.Blade, CFrame.new(0, -.5, .05)*CFrame.Angles(0, math.pi, math.pi))
	obj.Part=add.Part(modelB, false, false, hiddenbladecolor, 0, Vector3.new(.2, .2, .25), nil, Vector3.new(.7, 1, 1))
	obj.PartW=add.Weld(obj.Part, obj.Blade, CFrame.new(0, .2, 0))

	obj.Wrist2=add.Part(modelB, false, false, hiddenbladecolor, 0, Vector3.new(1.1, 1, 1.1), nil)
	obj.Wrist2W=add.Weld(obj.Wrist2, arm.Right, CFrame.new(0, -.4, 0)*CFrame.Angles(0, math.pi, 0))
	obj.Keep=add.Part(modelB, false, false, hiddenbladecolor, 0, Vector3.new(.2, 1, .5), nil)
	obj.KeepW=add.Weld(obj.Keep, obj.Wrist2, CFrame.new(.6, 0, 0))
	obj.Wedge=add.Wedge(modelB, false, false, hiddenbladecolor, 0, Vector3.new(1, .2, .3), nil)
	obj.WedgeW=add.Weld(obj.Wedge, obj.Keep, CFrame.new(0, 0, -.4)*CFrame.Angles(0, 0, -math.pi/2))
	obj.Wedge=add.Wedge(modelB, false, false, hiddenbladecolor, 0, Vector3.new(1, .2, .3), nil)
	obj.WedgeW=add.Weld(obj.Wedge, obj.Keep, CFrame.new(0, 0, .4)*CFrame.Angles(0, math.pi, math.pi/2))
	obj.Blade2=add.Part(modelB, false, false, "Medium stone-grey", 0, Vector3.new(.2, .5, .2), nil, Vector3.new(.5, 1, 1))
	obj.Blade2W=add.Weld(obj.Blade2, obj.Keep, CFrame.new(0, .25, 0))
	obj.Point=add.Wedge(modelB, false, false, "Medium stone-grey", 0, Vector3.new(.2, .5, .2), nil, Vector3.new(.5, 1, .5))
	obj.PointW=add.Weld(obj.Point, obj.Blade2, CFrame.new(0, -.5, -.05)*CFrame.Angles(0, 0, math.pi))
	obj.Point=add.Wedge(modelB, false, false, "Medium stone-grey", 0, Vector3.new(.2, .5, .2), nil, Vector3.new(.5, 1, .5))
	obj.PointW=add.Weld(obj.Point, obj.Blade2, CFrame.new(0, -.5, .05)*CFrame.Angles(0, math.pi, math.pi))
	obj.Part=add.Part(modelB, false, false, hiddenbladecolor, 0, Vector3.new(.2, .2, .25), nil, Vector3.new(.7, 1, 1))
	obj.PartW=add.Weld(obj.Part, obj.Blade2, CFrame.new(0, .2, 0))
end
function removeParts()
	p(function()
		if torso then
			joints.LeftShoulder.Part0=torso
			joints.RightShoulder.Part0=torso
			joints.LeftHip.Part0=torso
			joints.RightHip.Part0=torso
		end
		player.PlayerGui[scriptname]:remove()
		for i, v in pairs(model:children()) do v:remove() end
		for i, v in pairs(char:children()) do v.Transparency=0 end
	end)
end
function lightningGen(startPos, endPos)
	local magnitude=(startPos-endPos).magnitude
	local distance=(startPos+endPos)/2
	local pattern=add.Part(workspace, true, false, "White", 1, Vector3.new(.2, .2, magnitude), CFrame.new(distance, startPos))
	local startPosProx=startPos
	for i=1, 9 do
		local startPosProx2=startPosProx
		local random=Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
		local findSize=pattern.Size.z/10
		local findOffSet=pattern.CFrame.lookVector*-1
		local compute=i*findSize*findOffSet
		local newStartPos=startPos
		local newEndPos=CFrame.new(random+compute+newStartPos).p
		local magnitude=(startPosProx2-newEndPos).magnitude
		local distance=(startPosProx2+newEndPos)/2
		local lightning=add.Part(workspace, true, false, "Bright yellow", 0, Vector3.new(.2, .2, magnitude), CFrame.new(distance, startPosProx2))
		c(function()
			for i=0, 1, .1 do wait()
				lightning.Transparency=i
			end
			lightning:remove()
		end)
		startPosProx=newEndPos
	end
	pattern:remove()
end
function computePos(pos, pos2)
	local pos3=Vector3.new(pos2.x, pos.y, pos2.z)
	torso.CFrame=CFrame.new(pos, pos3)
	return pos3
end
function nearTorso(pos, dis)
	local temp
	local distance=dis
	for i, v in pairs(workspace:children()) do
		if v:isA("Model") then
			temp=v:findFirstChild("Torso")
			local humanoid=v:findFirstChild("Humanoid")
			if temp and humanoid and v~=char and (temp.CFrame.p-pos).magnitude<distance then
				distance=(temp.CFrame.p-pos).magnitude
				return temp
			end
		end
	end
end
function trail(pos, cf)
	c(function()
		local old=(pos.CFrame*cf).p
		while trailDeb==true do
			wait()
			local new=(pos.CFrame*cf).p
			local mag=(old-new).magnitude
			local dis=(old+new)/2
			local trail=add.Part(workspace, true, false, "White", 0, Vector3.new(.5, mag, .5), CFrame.new(dis, new)*CFrame.Angles(math.pi/2, 0, 0)) trail.Name="Trail"
			local tMesh=add.Mesh("CylinderMesh", trail, Vector3.new(.5, 1, .5), nil, nil)
			old=new
			c(function()
				for i=1, 0, -.1 do
					wait()
					tMesh.Scale=tMesh.Scale*Vector3.new(i, 1, i)
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
end
function Equip(form)
	c(function()
		if form=="Left" then
			if equipleft==false then
				equipleft=true Equipping:play()
				for i=0, 1, .1 do wait()
					obj.BladeW.C1=CFrame.new(0, .25-1*i, 0)
				end
				equipleft=false
			end
		end
	end)
	c(function()
		if form=="Right" then
			if equipright==false then
				equipright=true Equipping:play()
				for i=0, 1, .1 do wait()
					obj.Blade2W.C1=CFrame.new(0, .25-1*i, 0)
				end
				equipright=false
			end
		end
	end)
end
function Unequip()
	if obj.BladeW.C1.y<.25 then
		c(function() Equipping:play()
			for i=1, 0, -.1 do wait()
				obj.BladeW.C1=CFrame.new(0, .25-1*i, 0)
			end
		end)
	else
		obj.BladeW.C1=CFrame.new(0, .25, 0)	
	end
	if obj.Blade2W.C1.y<.25 then
		c(function() Equipping:play()
			for i=1, 0, -.1 do wait()
				obj.Blade2W.C1=CFrame.new(0, .25-1*i, 0)
			end
		end)
	else
		obj.Blade2W.C1=CFrame.new(0, .25, 0)	
	end
end
function hit(h)
	if keyDeb==true then
		if onAssasinate==false and h.Parent:findFirstChild("Humanoid") and h.Parent~=char and hitDeb==false then hitDeb=true Hit:play()
			local hHuman=h.Parent:findFirstChild("Humanoid")
			hHuman.Health=hHuman.Health-dmg
			local fakeM=Instance.new("Model", workspace) fakeM.Name=-dmg
			local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
			local effect=add.Part(fakeM, false, false, "Bright red", 0, Vector3.new(1, 1, 1), h.CFrame) effect.Name="Head"
			local fakeMesh=add.Mesh("CylinderMesh", effect, Vector3.new(1, .5, 1), nil, nil)
			local bp=Instance.new("BodyPosition", effect) bp.maxForce=Vector3.new(math.huge, math.huge, math.huge) bp.position=h.Position+Vector3.new(0, 4, 0)
			game.Debris:addItem(fakeM, 2)	
			wait(.5)
			hitDeb=false
		end
		if onAssasinate==true and h.Parent~=char and h.Parent:findFirstChild("Humanoid") and hitDeb==false then hitDeb=true Hit:play()
			h.Parent:breakJoints()
			local fakeM=Instance.new("Model", workspace) fakeM.Name="ASSASINATED"
			local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
			local effect=add.Part(fakeM, false, false, "Bright red", 0, Vector3.new(1, 1, 1), h.CFrame) effect.Name="Head"
			local fakeMesh=add.Mesh("CylinderMesh", effect, Vector3.new(1, .5, 1), nil, nil)
			local bp=Instance.new("BodyPosition", effect) bp.maxForce=Vector3.new(math.huge, math.huge, math.huge) bp.position=h.Position+Vector3.new(0, 4, 0)
			game.Debris:addItem(fakeM, 2)	
			wait(1)
			hitDeb=false
		end
	end
end
function running()
	animate.Torso(CFrame.new(0, 0, 0))
	animate.ArmLeft(CFrame.Angles(0, 0, -math.rad(15)))
	animate.ArmRight(CFrame.Angles(0, 0, math.rad(15)))
end
local Moves={
	["Assasinate"]=function(mouse)
		local target=mouse.Target
		for i, v in pairs(modelB:children()) do
			v.Touched:connect(hit)
		end
		if target then
			if target.Parent then
				local tChar=target.Parent
				if tChar:findFirstChild'Torso' then
					local tTorso=tChar["Torso"]
					human.WalkSpeed=0
					local bp=Instance.new("BodyPosition", torso)
					bp.maxForce=Vector3.new(math.huge, math.huge, math.huge)
					bp.position=torso.Position+Vector3.new(0, 10, 0)
					local bg=Instance.new("BodyGyro", torso)
					bg.maxTorque=Vector3.new(math.huge, math.huge, math.huge)
					for i=0, 1, .1 do wait()
						bg.cframe=CFrame.new(torso.CFrame.p, tTorso.CFrame.p)
						animate.ArmLeft(CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i))
						animate.ArmRight(CFrame.Angles(-math.rad(45)*i, 0, math.rad(45)*i))
					end
					wait(1)
					trailDeb=true trail(obj.Blade2, CFrame.new(0, -1, 0))
					Slash:play()
					for i=0, 1, .1 do wait()
						animate.Torso(CFrame.Angles(0, math.rad(90)*i, 0))
						animate.ArmRight(CFrame.Angles(-math.rad(45)+math.rad(45)*i, 0, math.rad(45)+math.rad(45)*i))
						bg.cframe=CFrame.new(torso.CFrame.p, tTorso.CFrame.p)
						bp.position=Vector3.new(0, 10-10*i, 0)+tTorso.Position*i
					end
					wait(.5)
					for i=1, 0, -.1 do wait()
						animate.Torso(CFrame.Angles(0, math.rad(90)*i, 0))
						animate.ArmRight(CFrame.Angles(0, 0, math.rad(90)*i))
					end
					bp:remove() bg:remove() trailDeb=false
				end
			end
		end
		running()
		human.WalkSpeed=speed
	end,
	["StayLive"]=function()
		local nTorso=nearTorso(torso.CFrame.p, 20)
		if nTorso then
			human.WalkSpeed=0
			local nTorsoW=add.Weld(nTorso, torso, CFrame.new(0, 0, -3.7))
			for i=0, 1, .1 do wait()
				animate.Torso(CFrame.Angles(0, -math.rad(90)*i, 0))
				animate.ArmLeft(CFrame.Angles(0, 0, -math.rad(90)*i))
			end
			wait(1)
			for i, v in pairs(modelB:children()) do
				v.Touched:connect(hit)
			end
			trailDeb=true trail(obj.Blade2, CFrame.new(0, -1, 0))
			Slash:play()
			for i=0, 1, .1 do wait()
				animate.ArmRight(CFrame.Angles(0, 0, math.rad(90)*i))
				animate.ArmLeft(CFrame.Angles(0, 0, -math.rad(90)+math.rad(75)*i))
				animate.Torso(CFrame.Angles(0, -math.rad(90)+math.rad(180)*i, 0))
			end
			trailDeb=false
			nTorsoW:remove()
			wait(.5)
			running()
			human.WalkSpeed=speed
		end
	end,
	["Rappid"]=function(mouse)
		human.WalkSpeed=0
		loop=true
		for i=0, 1, .1 do wait()
			animate.ArmLeft(CFrame.Angles(math.rad(90)*i, 0, 0))
			animate.ArmRight(CFrame.Angles(math.rad(90)*i, 0, 0))
		end
		for i, v in pairs(modelB:children()) do
			v.Touched:connect(hit)
		end
		trailDeb=true trail(obj.Blade, CFrame.new(0, -1, 0)) trail(obj.Blade2, CFrame.new(0, -1, 0))
		while loop do wait() Slash:play()
			computePos(torso.CFrame.p, mouse.Hit.p)
			torso.CFrame=torso.CFrame+torso.CFrame.lookVector*.2
			animate.ArmLeft(CFrame.new(0, 0, -math.random(0, 1.5))*CFrame.Angles(math.rad(90), 0, 0))
			animate.ArmRight(CFrame.new(0, 0, -math.random(0, 1.5))*CFrame.Angles(math.rad(90), 0, 0))
		end
		trailDeb=false
		for i=1, 0, -.1 do wait()
			animate.ArmLeft(CFrame.Angles(math.rad(90)*i, 0, 0))
			animate.ArmRight(CFrame.Angles(math.rad(90)*i, 0, 0))
		end
		human.WalkSpeed=speed
		running()
	end
}
bin.Selected:connect(function(mouse) createParts()
	for i=0, 1, .1 do wait()
		animate.ArmLeft(CFrame.Angles(0, 0, -math.rad(15)*i))
		animate.ArmRight(CFrame.Angles(0, 0, math.rad(15)*i))
	end
	Equip("Right")	Equip("Left")
	running()
	mouse.KeyDown:connect(function(key)
		local key=key:lower()
		if key=="q" and keyDeb==false then
			keyDeb=true onAssasinate=true
			Moves.Assasinate(mouse)
			keyDeb=false onAssasinate=false
		end
		if key=="e" and keyDeb==false then
			keyDeb=true onAssasinate=true
			Moves.StayLive(mouse)
			keyDeb=false onAssasinate=false
		end
		if key=="f" and keyDeb==false then
			keyDeb=true
			Moves.Rappid(mouse)
			keyDeb=false
		end
	end)
	mouse.KeyUp:connect(function(key)
		local key=key:lower()
		if key=="f" and keyDeb==true then loop=false end
	end)
	while onAssasinate==false and keyDeb==false do wait()
		local target=mouse.Target
		local nTorso=nearTorso(torso.CFrame.p, 100)
		if target then
			if target.Parent and nTorso then
				if target.Parent:findFirstChild("Humanoid") then
					Assasinate=true
					obj.attackLabel.TextColor=BrickColor.new("Bright red")
				else
					Assasinate=false
					obj.attackLabel.TextColor=BrickColor.new("White")
				end
			end
		end
	end
end)
bin.Deselected:connect(function()
	onAssasinate=false
	keyDeb=false
	obj.attackLabel.TextColor=BrickColor.new("White")
	obj.attackLabel2.TextColor=BrickColor.new("White")
	if keyDeb==false then
		Unequip()
		for i=1, 0, -.1 do wait()
			animate.ArmLeft(CFrame.Angles(0, 0, -math.rad(15)*i))
			animate.ArmRight(CFrame.Angles(0, 0, math.rad(15)*i))
		end
		wait(.5)
		torso.Transparency=0
		removeParts()
	end
end)--mediafire
end}
module[4] = {"Jet Pack",function()
--Jet Pack V2.0 Gifted by TheRedAngel, Local Script!
local Bin
if (script.Parent.className ~= "HopperBin") then 
local h = Instance.new("HopperBin") 
h.Name = "Action" 
h.Parent = game.Players.LocalPlayer.Backpack 
h.Name = "Function" 
Bin = h
end 
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
Joints = {PersonT:findFirstChild("Right Shoulder"), PersonT:findFirstChild("Left Shoulder"), PersonT:findFirstChild("Right Hip"), PersonT:findFirstChild("Left Hip")} 
Limbs = {Person.Character:findFirstChild("Right Arm"), Person.Character:findFirstChild("Left Arm"), Person.Character:findFirstChild("Right Leg"), Person.Character:findFirstChild("Left Leg")} 
if (Person.Character:findFirstChild("Suit") ~= nil) then 
Person.Character.Suit:remove() 
end 
Suit = Instance.new("Model") 
Suit.Parent = Person.Character 
Suit.Name = "Suit" 
LJet = Instance.new("Part") 
LJet.Parent = Suit 
LJet.Name = "Left Jet" 
LJet.CanCollide = false 
LJet.formFactor = "Symmetric" 
LJet.Size = Vector3.new(1, 1, 1) 
LJet.BrickColor = BrickColor.new("Dark orange") 
LJet.Reflectance = 1 
LJet.TopSurface = 0 
LJet.BottomSurface = 0 
LJMesh = Instance.new("CylinderMesh") 
LJMesh.Parent = LJet 
LJMesh.Scale = Vector3.new(0.8, 2, 0.8) 
LJet:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = LJet 
Weld.Part0 = PersonT 
Weld.Part1 = LJet 
Weld.C0 = CFrame.new(-0.3, -0.2, 0.8) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LJetT = Instance.new("Part") 
LJetT.Parent = Suit 
LJetT.Name = "Left Jet Tip" 
LJetT.CanCollide = false 
LJetT.formFactor = "Symmetric" 
LJetT.Size = Vector3.new(1, 1, 1) 
LJetT.BrickColor = BrickColor.new("Dark orange") 
LJetT.Reflectance = 1 
LJetT.TopSurface = 0 
LJetT.BottomSurface = 0 
LJTMesh = Instance.new("SpecialMesh") 
LJTMesh.Parent = LJetT 
LJTMesh.MeshType = "Sphere" 
LJTMesh.Scale = Vector3.new(0.8, 0.8, 0.8) 
LJetT:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = LJet 
Weld.Part0 = LJet 
Weld.Part1 = LJetT 
Weld.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LJetB = Instance.new("Part") 
LJetB.Parent = Suit 
LJetB.Name = "Left Jet Barrel" 
LJetB.CanCollide = false 
LJetB.formFactor = "Symmetric" 
LJetB.Size = Vector3.new(1, 1, 1) 
LJetB.BrickColor = BrickColor.new("Dark orange") 
LJetB.Reflectance = 1 
LJetB.TopSurface = 0 
LJetB.BottomSurface = 0 
S = Instance.new("Smoke") 
S.Parent = LJetB 
S.Enabled = false 
S.Color = Color3.new(103, 205, 1) 
S.RiseVelocity = 5 
LJBMesh = Instance.new("CylinderMesh") 
LJBMesh.Parent = LJetB 
LJBMesh.Scale = Vector3.new(0.1, 0.2, 0.1) 
LJetB:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = LJet 
Weld.Part0 = LJet 
Weld.Part1 = LJetB 
Weld.C0 = CFrame.new(0, -1.1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---Right Jet 
RJet = Instance.new("Part") 
RJet.Parent = Suit 
RJet.Name = "Right Jet" 
RJet.CanCollide = false 
RJet.formFactor = "Symmetric" 
RJet.Size = Vector3.new(1, 1, 1) 
RJet.BrickColor = BrickColor.new("Dark orange") 
RJet.Reflectance = 1 
RJet.TopSurface = 0 
RJet.BottomSurface = 0 
RJMesh = Instance.new("CylinderMesh") 
RJMesh.Parent = RJet 
RJMesh.Scale = Vector3.new(0.8, 2, 0.8) 
RJet:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = RJet 
Weld.Part0 = PersonT 
Weld.Part1 = RJet 
Weld.C0 = CFrame.new(0.3, -0.2, 0.8) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
RJetT = Instance.new("Part") 
RJetT.Parent = Suit 
RJetT.Name = "Right Jet Tip" 
RJetT.CanCollide = false 
RJetT.formFactor = "Symmetric" 
RJetT.Size = Vector3.new(1, 1, 1) 
RJetT.BrickColor = BrickColor.new("Dark orange") 
RJetT.Reflectance = 1 
RJetT.TopSurface = 0 
RJetT.BottomSurface = 0 
RJTMesh = Instance.new("SpecialMesh") 
RJTMesh.Parent = RJetT 
RJTMesh.MeshType = "Sphere" 
RJTMesh.Scale = Vector3.new(0.8, 0.8, 0.8) 
RJetT:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = RJet 
Weld.Part0 = RJet 
Weld.Part1 = RJetT 
Weld.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
RJetB = Instance.new("Part") 
RJetB.Parent = Suit 
RJetB.Name = "Right Jet Barrel" 
RJetB.CanCollide = false 
RJetB.formFactor = "Symmetric" 
RJetB.Size = Vector3.new(1, 1, 1) 
RJetB.BrickColor = BrickColor.new("Dark orange") 
RJetB.Reflectance = 1 
RJetB.TopSurface = 0 
RJetB.BottomSurface = 0 
S = Instance.new("Smoke") 
S.Parent = RJetB 
S.Enabled = false 
S.Color = Color3.new(103, 205, 1) 
S.RiseVelocity = 5 
RJBMesh = Instance.new("CylinderMesh") 
RJBMesh.Parent = RJetB 
RJBMesh.Scale = Vector3.new(0.1, 0.2, 0.1) 
RJetB:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = RJet 
Weld.Part0 = RJet 
Weld.Part1 = RJetB 
Weld.C0 = CFrame.new(0, -1.1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
---Watch 
Band = Instance.new("Part") 
Band.Parent = Suit 
Band.Name = "Band" 
Band.CanCollide = false 
Band.formFactor = "Symmetric" 
Band.Size = Vector3.new(1, 1, 1) 
Band.BrickColor = BrickColor.new("Black") 
Band.TopSurface = 0 
Band.BottomSurface = 0 
BandM = Instance.new("SpecialMesh") 
BandM.MeshType = "Brick" 
BandM.Parent = Band 
BandM.Scale = Vector3.new(1.03, 0.2, 1.03) 
Band:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Band 
Weld.Part0 = Limbs[NormalHand] 
Weld.Part1 = Band 
Weld.C0 = CFrame.new(0, -0.6, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Watch1 = Instance.new("Part") 
Watch1.Parent = Suit 
Watch1.Name = "Watch1" 
Watch1.CanCollide = false 
Watch1.formFactor = "Symmetric" 
Watch1.Size = Vector3.new(1, 1, 1) 
Watch1.BrickColor = BrickColor.new("Black") 
Watch1.TopSurface = 0 
Watch1.BottomSurface = 0 
Watch1M = Instance.new("CylinderMesh") 
Watch1M.Parent = Watch1 
Watch1M.Scale = Vector3.new(0.3, 0.2, 0.3) 
Watch1:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Watch1 
Weld.Part0 = Band 
Weld.Part1 = Watch1 
Weld.C0 = CFrame.new(0, 0, -0.41) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0) 
Watch2 = Instance.new("Part") 
Watch2.Parent = Suit 
Watch2.Name = "Watch2" 
Watch2.CanCollide = false 
Watch2.formFactor = "Symmetric" 
Watch2.Size = Vector3.new(1, 1, 1) 
Watch2.BrickColor = BrickColor.new("White") 
Watch2.TopSurface = 0 
Watch2.BottomSurface = 0 
Watch2M = Instance.new("CylinderMesh") 
Watch2M.Parent = Watch2 
Watch2M.Scale = Vector3.new(0.25, 0.2, 0.25) 
Watch2:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Watch2 
Weld.Part0 = Band 
Weld.Part1 = Watch2 
Weld.C0 = CFrame.new(0, 0, -0.42) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0) 
---Real Function 
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
function Click(mouse) 
Hold = true 
if (Flight == true) then 
Person.Character.Engine.BodyPosition.maxForce = Vector3.new(0, 0, 0) 
Person.Character.Engine.BodyVelocity.maxForce = Vector3.new(4e+030, 4e+030, 4e+030) 
Position = Person.Character.Engine.Position 
Person.Character.Suit["Left Jet Barrel"].Smoke.Enabled = true 
Person.Character.Suit["Right Jet Barrel"].Smoke.Enabled = true 
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
Person.Character.Suit["Left Jet Barrel"].Smoke.Enabled = false 
Person.Character.Suit["Right Jet Barrel"].Smoke.Enabled = false 
Person.Character.Engine.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
SetAngle(NormalHand, 0) 

end 

end 


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
Ex = Instance.new("Explosion") 
Ex.Parent = game.Workspace 
Ex.BlastRadius = 12 
Ex.Position = E.Position 
Ex.BlastPressure = 1000 
E:remove() 
end 
end 
end 
if (key == "Y") then 
Bomb = Instance.new("Part") 
Bomb.Name = "Bomb" 
Bomb.formFactor = "Plate" 
Bomb.Size = Vector3.new(1, 0.4, 1) 
Bomb.TopSurface = 0 
Bomb.BottomSurface = 0 
Bomb.BrickColor = BrickColor.new("Black") 
Bomb.CFrame = CFrame.new(Person.Character.Suit.Watch2.Position) 
Bomb.CanCollide = true 
Bomb.Parent = game.Workspace 
Smoke = Instance.new("Smoke") 
Smoke.Parent = Bomb 
local c = (PersonT.Color.r + PersonT.Color.g + PersonT.Color.b)/3 
Smoke.Color = Color3.new(c, c, c) 
Smoke.Size = 1 
Smoke.Opacity = 0.7 
Smoke.RiseVelocity = 10 
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
Human.Parent.Torso.Velocity = 10 * error 
Human.Parent.Torso.Velocity = Human.Parent.Torso.Velocity + Vector3.new(0, 100, 0) 
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
wait(0.4) 
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
function Touch(Part) 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
Human.Sit = true 
Position = Human.Parent.Torso.Position 
Direction = Person.Character.Engine.CFrame.lookVector 
Position = Position + 10 * 3 * Direction 
error = Position - PersonT.Position 
Human.Parent.Torso.Velocity = 10 * error 
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
SetAngle(NormalHand, 1.57) 
Smoke = Instance.new("Smoke") 
Smoke.Parent = Person.Character.Suit.Band 
local c = (PersonT.Color.r + PersonT.Color.g + PersonT.Color.b)/3 
Smoke.Color = Color3.new(0, 0, 0) 
Smoke.Size = 15 
Smoke.Opacity = 1 
Smoke.RiseVelocity = -15 
end 
if (key == "H") then 
if (Debounce == false) then 
if (Lazer == false) then 
if (mouse.Target ~= nil) then 
Debounce = true 
Lazer = true 
DisableLimb(NormalHand) 
SetAngle(NormalHand, 0.785) 
BP = Instance.new("BodyPosition") 
BP.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
BP.P = BP.P / 4 
BG = Instance.new("BodyGyro") 
BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
local Hit = mouse.Target 
local _P = mouse.Hit.p 
local Mag = (Hit.Position-_P).magnitude 
local Pos = (Hit.Position-_P).unit * -Mag 
local CF = Hit.CFrame.lookVector 
while true do 
if (Lazer == false) then 
break 
end 
BP.Parent = PersonT 
BP.position = ((((CFrame.new(Hit.Position + Pos)) + (-CF)) + (Hit.CFrame.lookVector)) + (mouse.Hit.lookVector * -16)).p + Vector3.new(0, 5.7, 0) 
BG.Parent = PersonT 
BG.cframe = CFrame.new((PersonT.CFrame + (mouse.Hit.lookVector * -8)).p, (Hit.Position + Pos)) 
if (Hit.Parent == nil) or (Hit.Parent.Parent == Person.Character) then 
BP.Parent = nil 
BG.Parent = nil 
end 
local P = Instance.new("Part") 
P.Name = "Grapple Lazer" 
P.formFactor = 0 
P.Parent = Person.Character 
P.BrickColor = BrickColor.new(1) 
P.Anchored = true 
P.Transparency = 0.05 
P.Locked = true 
P.Reflectance = 0.025 
P.CanCollide = false 
P.Size = Vector3.new(1, 1, 1) 
local mesh = Instance.new("CylinderMesh") 
local Place0 = Person.Character.Suit.Watch2.CFrame * CFrame.new(0, -0.1, 0) 

mesh.Scale = Vector3.new(0.1, (Place0.p - (Hit.Position + Pos)).magnitude, 0.1) 
mesh.Parent = P 
P.CFrame = CFrame.new((Place0.p + (Hit.Position + Pos))/2, Place0.p) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) 
wait() 
P:remove() 
end 
Debounce = false 
EnableLimb(NormalHand) 
BP.Parent = nil 
BG.Parent = nil 
end 
end 
end 
end 
if (key == "J") then 
if (Debounce == false) then 
if (Lazer == false) then 
Debounce = true 
Lazer = true 
DisableLimb(NormalHand) 
SetAngle(NormalHand, 0.785) 
smokeBrick = Instance.new("Part") 
smokeBrick.CanCollide = false 
smokeBrick.Anchored = true 
smokeBrick.Transparency = 1 
smokeBrick.Locked = true 
smokeBrick.archivable = false 
smokeBrick.TopSurface = 0 
smokeBrick.BottomSurface = 0 
smoke = Instance.new("Smoke") 
smoke.Size = smoke.Size * 4 
while true do 
if (Lazer == false) then 
break 
end 
local Pos = mouse.Hit.p 
smokeBrick.Parent = Person.Character 
smokeBrick.CFrame = CFrame.new(Pos) 
if (mouse.Target) and (mouse.Target ~= nil) then 
smoke.Parent = smokeBrick 
local c = (mouse.Target.Color.r + mouse.Target.Color.g + mouse.Target.Color.b)/3 
smoke.Color = Color3.new(c, c, c) 
end 
local L = Instance.new("Part") 
L.Parent = Person.Character 
L.Name = "Kill Lazer" 
L.BrickColor = BrickColor.new(21) 
L.formFactor = 0 
L.Size = Vector3.new(1, 1, 1) 
L.Locked = true 
L.Anchored = true 
L.CanCollide = false 
L.Transparency = 0.05 
L.Reflectance = 0.1 
local Place0 = Person.Character.Suit.Watch2.CFrame * CFrame.new(0, -0.1, 0) 
local Mesh = Instance.new("CylinderMesh") 
Mesh.Parent = L 
Mesh.Scale = Vector3.new(0.1, (Place0.p - Pos).magnitude, 0.1) 
L.CFrame = CFrame.new((Place0.p + Pos)/2, Place0.p) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) 
if (mouse.Target ~= nil) then 
if (mouse.Target.Parent.Name:lower() == "") or ("" == "") then 
if ("" ~= "") then 
mouse.Target.Parent:BreakJoints() 
else 
mouse.Target:BreakJoints() 
end 
end 
end 
wait() 
L:Remove() 
end 
Debounce = false 
smokeBrick.Parent = nil 
EnableLimb(NormalHand) 
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
function Deselect(mouse) 
Hold = false 
Lazer = false 
Flight = false 
end 
Bin.Selected:connect(Select) 



end}
module[5] = {"Kaerin",function()
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
    game:service'RunService'.Heartbeat:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Heartbeat:wait(0)
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

local Color = BrickColor.new("Really black")
 
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
w1.BrickColor = BrickColor.new("Dark stone grey")
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
w2.BrickColor = BrickColor.new("Dark stone grey")
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
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Dark stone grey"))
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
 

HandleA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","HandleA",Vector3.new(0.232000008, 1.39199996, 0.34799996))
HandleAweld=weld(m,Character["Right Arm"],HandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100307465, -0.216758728, 1.08003342, 0.999992609, 1.92794141e-005, -1.27899834e-013, -1.27899698e-013, -1.6931045e-018, -0.999993682, -1.90170867e-005, 0.999996662, 7.72975777e-019))
HitboxA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HitboxA",Vector3.new(0.200000003, 4.75600147, 1.04399991))
HitboxAweld=weld(m,HandleA,HitboxA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00296401978, -3.18984985, -0.000101566315, 0.999985218, 2.71050543e-019, 3.93541995e-007, 2.71050543e-019, 0.999987364, -3.39068571e-020, 1.31274646e-007, -3.36740574e-020, 0.999993563))
mesh("BlockMesh",HitboxA,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00321960449, -0.348061442, -2.95758057, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00321960449, -0.348061562, -3.07357788, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.34799999))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00325012207, 0.347918868, 5.39352417, -0.999994516, -1.38814103e-005, -0.000781116833, 0.000780851231, -5.96042696e-007, -0.999998093, 1.38811838e-005, -0.999996781, 5.65978326e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0032043457, -0.348060846, -1.91357803, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0032081604, -0.348061085, -2.26158524, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0032081604, -0.348061085, -2.37757492, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00320053101, -0.348060846, -1.79758072, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0032081604, -0.348060966, -2.14558029, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0032119751, -0.348061323, -2.60959625, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0032043457, -0.348060966, -2.02959061, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0032119751, -0.348061204, -2.49358749, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00321578979, -0.348061442, -2.84157562, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00321578979, -0.348061323, -2.72557068, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00319671631, -0.348060608, -1.56557083, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00320053101, -0.348060727, -1.68157578, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.579999983, 0.69599998))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00297546387, -0.116066098, 4.871521, -0.999994516, -1.38814103e-005, -0.000781116833, 0.000780851231, -5.96042696e-007, -0.999998093, 1.38811838e-005, -0.999996781, 5.65978326e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.24939996, 0.200000003, 0.359599888))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00284576416, 0.289573669, 0.000145435333, 0.999990463, -1.27899427e-013, -1.89733364e-005, 1.27899603e-013, 0.999991894, -7.73013207e-019, 1.93231062e-005, -1.69873233e-018, 0.999995708))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.237799957, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.744922638, 6.48498535e-005, 6.24656677e-005, -2.9801754e-008, 0.999987185, 3.5961357e-013, -0.999985039, -2.98018179e-008, 1.20666537e-005, 1.25913684e-005, -8.31761384e-019, 0.999993563))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.232000008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00296783447, -1.21779633, -0.289975643, 0.999985218, -1.2789757e-013, -5.02773673e-006, 1.27897842e-013, 0.999987364, -8.52495958e-019, 5.55250699e-006, 1.4187069e-019, 0.999993563))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.69600153, 0.579999864))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00296020508, -1.15990829, 0.115901113, 0.999985218, 2.71050543e-019, 3.93541995e-007, 2.71050543e-019, 0.999987364, -3.39068571e-020, 1.31274646e-007, -3.36740574e-020, 0.999993563))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.39200163, 0.579999864))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00303268433, -3.82756042, 0.116035104, 0.999985218, -2.71050543e-019, -5.02709827e-006, 8.13151629e-019, 0.999987364, 4.46583439e-020, 5.55186853e-006, -1.12240021e-019, 0.999993563))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.232000008, 0.34799999))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00296783447, -0.927848816, -0.347965479, 0.999985218, -1.27897286e-013, -4.76533569e-006, 1.27897557e-013, 0.999987364, -8.52723381e-019, 5.29010867e-006, 1.75660036e-019, 0.999993563))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.24940002, 0.463999897, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00296401978, -0.000411987305, 0.000145435333, 0.999990463, -1.27899427e-013, -1.89733364e-005, 1.27899603e-013, 0.999991894, -7.73013207e-019, 1.93231062e-005, -1.69873233e-018, 0.999995708))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.243599623, 0.200000003, 0.376999944))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.48498535e-005, -0.290370941, 0.00304746628, 0.999990463, -1.27899427e-013, -1.89733364e-005, 1.27899603e-013, 0.999991894, -7.73013207e-019, 1.93231062e-005, -1.69873233e-018, 0.999995708))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.237799957, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.976894379, 6.48498535e-005, -0.115817547, -2.98019636e-008, 0.999993145, 5.66752374e-013, -0.999992073, -2.98019955e-008, 1.90170758e-005, 1.92794159e-005, -1.69310471e-018, 0.999996781))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.463999599, 0.200000003, 1.04400003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.753929138, 4.76837158e-007, 0.999985218, 2.71050543e-019, 7.86980308e-007, 2.71050543e-019, 0.999987364, -3.42563409e-020, -2.62161848e-007, -3.33247287e-020, 0.999993563))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.231999993, 0.231999993))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.348060369, -0.579917908, -7.62939453e-006, -2.62161848e-007, 2.98019245e-008, 0.999993026, 8.70145427e-015, 0.99998647, -2.98021199e-008, -0.999984145, 8.87893817e-016, -8.30688805e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.580000103, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.237799957, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.976894379, 6.48498535e-005, 0.116117477, -2.98019636e-008, 0.999993145, 5.66752374e-013, -0.999992073, -2.98019955e-008, 1.90170758e-005, 1.92794159e-005, -1.69310471e-018, 0.999996781))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.231999993, 0.231999993))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.34796536, -0.579917908, 7.62939453e-006, -2.62161848e-007, 2.98019245e-008, 0.999993026, 8.70145427e-015, 0.99998647, -2.98021199e-008, -0.999984145, 8.87893817e-016, -8.30688805e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.580000103, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 3.82800055, 0.34799999))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00296783447, -3.30554581, -0.347965479, 0.999985218, -5.42101086e-019, -3.45368062e-006, 1.08420217e-018, 0.999987364, 7.01750046e-020, 3.9784627e-006, -1.3775716e-019, 0.999993563))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232000008, 0.463999897, 0.579999924))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.928001404, 4.76837158e-007, 0.999985218, 2.71050543e-019, 2.62407411e-007, 2.71050543e-019, 0.999987364, -3.37904314e-020, 2.62407411e-007, -3.37904314e-020, 0.999993563))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.62400162, 0.347999901))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00303268433, -2.31979752, 6.2584877e-005, 0.999985218, 0, -3.01626824e-006, 5.42101086e-019, 0.999987364, 2.67851422e-021, 3.54105578e-006, -7.02591444e-020, 0.999993563))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.200000003, 0.34799999))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000217437744, -0.348090053, -0.869998932, -0.99999404, -1.39324975e-005, 0.000813946885, -0.000814205792, 5.27501379e-006, -0.999998093, 1.37386678e-005, -0.999996662, -5.24543884e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.200000003, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000217437744, -0.348093748, 1.10200882, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.200000003, 0.34799999))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000312805176, -0.347890496, -0.869995117, 0.99999392, -1.39324975e-005, -0.000813827617, 0.000814101484, 5.27501379e-006, 0.999997854, -1.37386651e-005, -0.999996662, 5.2454352e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.200000003, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000308990479, -0.34789443, 1.10200882, -0.99999404, 1.3977201e-005, 0.000819162233, 0.000819376437, 5.95969937e-007, 0.999997735, 1.37685583e-005, 0.999996781, -5.66503445e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))

HandleB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","HandleB",Vector3.new(0.232000008, 1.39199996, 0.34799996))
HandleBweld=weld(m,Character["Left Arm"],HandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0996818542, -0.216758728, 1.08003712, 0.999992609, 1.92794141e-005, -1.27899834e-013, -1.27899698e-013, -1.6931045e-018, -0.999993682, -1.90170867e-005, 0.999996662, 7.72975777e-019))
HitboxB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HitboxB",Vector3.new(0.200000003, 4.75600147, 1.04399991))
HitboxBweld=weld(m,HandleB,HitboxB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00296401978, -3.18984985, -0.000101447105, 0.999985218, 2.71050543e-019, 3.93541995e-007, 2.71050543e-019, 0.999987364, -3.39068571e-020, 1.31274646e-007, -3.36740574e-020, 0.999993563))
mesh("BlockMesh",HitboxB,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00321960449, -0.348061323, -2.95758057, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00321960449, -0.348061442, -3.07357788, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.34799999))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00325012207, 0.347918868, 5.39352417, -0.999994516, -1.38814103e-005, -0.000781116833, 0.000780851231, -5.96042696e-007, -0.999998093, 1.38811838e-005, -0.999996781, 5.65978326e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0032043457, -0.348060727, -1.91357803, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0032081604, -0.348060966, -2.26158524, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0032081604, -0.348060966, -2.37757492, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00320053101, -0.348060727, -1.79758072, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0032081604, -0.348060846, -2.14558029, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0032119751, -0.348061204, -2.60959625, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0032043457, -0.348060846, -2.02959061, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0032119751, -0.348061085, -2.49358749, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00321578979, -0.348061323, -2.84157562, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00321578979, -0.348061204, -2.72557068, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00319671631, -0.348060489, -1.56557083, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00320053101, -0.348060608, -1.68157578, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.579999983, 0.69599998))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00297546387, -0.116066098, 4.871521, -0.999994516, -1.38814103e-005, -0.000781116833, 0.000780851231, -5.96042696e-007, -0.999998093, 1.38811838e-005, -0.999996781, 5.65978326e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.24939996, 0.200000003, 0.359599888))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00284576416, 0.289573669, 0.000145435333, 0.999990463, -1.27899427e-013, -1.89733364e-005, 1.27899603e-013, 0.999991894, -7.73013207e-019, 1.93231062e-005, -1.69873233e-018, 0.999995708))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.237799957, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.744922638, 6.48498535e-005, 6.24656677e-005, -2.9801754e-008, 0.999987185, 3.5961357e-013, -0.999985039, -2.98018179e-008, 1.20666537e-005, 1.25913684e-005, -8.31761384e-019, 0.999993563))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.34799999, 0.232000008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00296783447, -1.21779633, -0.289975524, 0.999985218, -1.2789757e-013, -5.02773673e-006, 1.27897842e-013, 0.999987364, -8.52495958e-019, 5.55250699e-006, 1.4187069e-019, 0.999993563))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.69600153, 0.579999864))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00296020508, -1.15990829, 0.115901232, 0.999985218, 2.71050543e-019, 3.93541995e-007, 2.71050543e-019, 0.999987364, -3.39068571e-020, 1.31274646e-007, -3.36740574e-020, 0.999993563))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.39200163, 0.579999864))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00303268433, -3.82756042, 0.116035104, 0.999985218, -2.71050543e-019, -5.02709827e-006, 8.13151629e-019, 0.999987364, 4.46583439e-020, 5.55186853e-006, -1.12240021e-019, 0.999993563))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.232000008, 0.34799999))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00296783447, -0.927848816, -0.347965479, 0.999985218, -1.27897286e-013, -4.76533569e-006, 1.27897557e-013, 0.999987364, -8.52723381e-019, 5.29010867e-006, 1.75660036e-019, 0.999993563))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.24940002, 0.463999897, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00296401978, -0.000411987305, 0.000145435333, 0.999990463, -1.27899427e-013, -1.89733364e-005, 1.27899603e-013, 0.999991894, -7.73013207e-019, 1.93231062e-005, -1.69873233e-018, 0.999995708))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.243599623, 0.200000003, 0.376999944))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.48498535e-005, -0.290370941, 0.00304746628, 0.999990463, -1.27899427e-013, -1.89733364e-005, 1.27899603e-013, 0.999991894, -7.73013207e-019, 1.93231062e-005, -1.69873233e-018, 0.999995708))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.237799957, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.976894379, 6.48498535e-005, -0.115817547, -2.98019636e-008, 0.999993145, 5.66752374e-013, -0.999992073, -2.98019955e-008, 1.90170758e-005, 1.92794159e-005, -1.69310471e-018, 0.999996781))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.463999599, 0.200000003, 1.04400003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.753929138, 4.76837158e-007, 0.999985218, 2.71050543e-019, 7.86980308e-007, 2.71050543e-019, 0.999987364, -3.42563409e-020, -2.62161848e-007, -3.33247287e-020, 0.999993563))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.231999993, 0.231999993))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.348060369, -0.579917908, -7.62939453e-006, -2.62161848e-007, 2.98019245e-008, 0.999993026, 8.70145427e-015, 0.99998647, -2.98021199e-008, -0.999984145, 8.87893817e-016, -8.30688805e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.580000103, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.237799957, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.976894379, 6.48498535e-005, 0.116117477, -2.98019636e-008, 0.999993145, 5.66752374e-013, -0.999992073, -2.98019955e-008, 1.90170758e-005, 1.92794159e-005, -1.69310471e-018, 0.999996781))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.231999993, 0.231999993))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.347965479, -0.579917908, 7.62939453e-006, -2.62161848e-007, 2.98019245e-008, 0.999993026, 8.70145427e-015, 0.99998647, -2.98021199e-008, -0.999984145, 8.87893817e-016, -8.30688805e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.580000103, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 3.82800055, 0.34799999))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00296783447, -3.30554581, -0.347965479, 0.999985218, -5.42101086e-019, -3.45368062e-006, 1.08420217e-018, 0.999987364, 7.01750046e-020, 3.9784627e-006, -1.3775716e-019, 0.999993563))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232000008, 0.463999897, 0.579999924))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.928001404, 4.76837158e-007, 0.999985218, 2.71050543e-019, 2.62407411e-007, 2.71050543e-019, 0.999987364, -3.37904314e-020, 2.62407411e-007, -3.37904314e-020, 0.999993563))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.62400162, 0.347999901))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00303268433, -2.31979752, 6.24656677e-005, 0.999985218, 0, -3.01626824e-006, 5.42101086e-019, 0.999987364, 2.67851422e-021, 3.54105578e-006, -7.02591444e-020, 0.999993563))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.200000003, 0.34799999))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000217437744, -0.348089933, -0.869995117, -0.99999404, -1.39324975e-005, 0.000813946885, -0.000814205792, 5.27501379e-006, -0.999998093, 1.37386678e-005, -0.999996662, -5.24543884e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.200000003, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000217437744, -0.348093748, 1.10200882, 0.999994278, 1.3977201e-005, -0.000819151115, -0.000819409906, 5.95969937e-007, -0.999998093, -1.37685602e-005, 0.999996781, 5.66504127e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.200000003, 0.34799999))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000312805176, -0.347890377, -0.869995117, 0.99999392, -1.39324975e-005, -0.000813827617, 0.000814101484, 5.27501379e-006, 0.999997854, -1.37386651e-005, -0.999996662, 5.2454352e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.200000003, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000308990479, -0.347894311, 1.10200882, -0.99999404, 1.3977201e-005, 0.000819162233, 0.000819376437, 5.95969937e-007, 0.999997735, 1.37685583e-005, 0.999996781, -5.66503445e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))

function attackone()
	attack=true
	con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
	for i=0,1,0.1 do
		swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
	end
	so("http://www.roblox.com/asset/?id=233856140",HitboxA,1,1) 
	so("http://www.roblox.com/asset/?id=234365549",HitboxA,1,1) 
	for i=0,1,0.1 do
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
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(10),math.rad(-80)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(-30),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
	end
	attack=false
	con1:disconnect()
end

function attacktwo()
	attack=true
	con1=HitboxB.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
	for i=0,1,0.1 do
		swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(-20)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
	end
	so("http://www.roblox.com/asset/?id=233856146",HitboxB,1,1) 
	so("http://www.roblox.com/asset/?id=234365573",HitboxB,1,1) 
	for i=0,1,0.1 do
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
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(-10),math.rad(80)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(-30),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
	end
	attack=false
	con1:disconnect()
end

function spin()
attack=true
con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
con2=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
for i=0,1,0.2 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
for i=0,1,1 do
so("http://roblox.com/asset/?id=231917987",Torso,1,1)
swait()
for i=0,1,0.1 do
swait()
local blcf = HitboxA.CFrame*CFrame.new(0,.5,0)
if scfr and (HitboxA.Position-scfr.p).magnitude > .1  then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,-1,-1)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,-1,-1)*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,5)*euler(0,-1.5,6*i),.3)
end
end
con1:disconnect()
con2:disconnect()
attack=false
end

function kick()
attack=true
con1=LeftLeg.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
Humanoid.WalkSpeed = 0
for i=0,1,0.2 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-90),math.rad(-90),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=200632211",LeftLeg,1,1) 
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(100),math.rad(-90),math.rad(0)),.3)
end
attack=false
Humanoid.WalkSpeed = 16
con1:disconnect()
end

function DualStab()
attack=true
con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
con2=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
for i=0,1,0.2 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
	so("http://www.roblox.com/asset/?id=233856146",HitboxA,1,1) 
	so("http://www.roblox.com/asset/?id=234365573",HitboxB,1,1) 
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(130),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-130),math.rad(-90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,-1,-1)*angles(math.rad(-120),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,-1,-1)*angles(math.rad(-120),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Torso.Velocity=Head.CFrame.lookVector*50
end
con1:disconnect()
con2:disconnect()
attack=false
end

function DualSlash()
attack=true
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(50),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),math.rad(-50),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
con2=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
so("http://www.roblox.com/asset/?id=233856146",HitboxA,1,1) 
so("http://www.roblox.com/asset/?id=234365573",HitboxB,1,1) 
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(20),math.rad(60)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-20),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,-1,-1)*angles(math.rad(-60),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,-1,-1)*angles(math.rad(-60),math.rad(0),math.rad(0)),.3)
end
con1:disconnect()
con2:disconnect()
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
			attacktype=1
			attacktwo()
		end
	end
end)

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='q' then
		if attack==false then
			spin()
		end
		elseif k=='e' then
		if attack==false then
			kick()
		end
		elseif k=='r' then
		if attack==false then
			DualStab()
		end
		elseif k=='f' then
		if attack==false then
			DualSlash()
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
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(20),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(20),math.rad(0),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-50),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-50),math.rad(0),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(40)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-20),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(10),math.rad(20),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-10)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-20),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-20),math.rad(0),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
end
end
end
end
end}

 
 

module[1] = {"King Nelfhelm",function()
--Leaked by N3xul lol
--Converted to local by Scenius
--[[
Made by Fenrier.
]] 
script.Name = "nigga srsly"
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
script.Parent = PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
ch = Character
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
local decreaseatk=0
local decreasedef=0
local decreasemvmt=0
local Anim="Idle"
local Effects={}
local armorparts={}
local armorwelds={}
local weaponparts={}
local weaponwelds={}
local necko=euler(0,0,0)*cf(0,3,0)
local attack=false
local jump=false
local hitfloor,posfloor=nil,nil
local target,distance=nil,nil
local meleecooldown=0
local mcdadd=1
local summoncrystals=0
local crystals=false
local stunanim=false

if workspace:findFirstChild("Neflhelm",true) ~= nil then 
workspace:findFirstChild("Neflhelm",true).Parent = nil 
end 

function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end

function swait(num)
if num==0 or num==nil then
--if Stagger.Value==false or Stun.Value<=100 then
script.Heartbeat.Event:wait()
--end
else
for i=0,num do
script.Heartbeat.Event:wait()
--[[if Stagger.Value==true or Stun.Value>=StunT.Value then
break
end]]
end
end
end

--30hz Pacemaker

frame = 1/30
tf = 0
allowframeloss = false --if set to true will fire every frame it possibly can. This will result in multiple events happening at the same time whenever delta returns frame*2 or greater.
tossremainder = false --if set to true t will be set to 0 after Fire()-ing.
lastframe = tick()
script.Heartbeat:Fire() --ayy lmao

game:GetService("RunService").Heartbeat:connect(function(s,p) --herp derp
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe=tick()
		else
			----print("FIRED "..math.floor(t/frame).." FRAME(S)","REMAINDER "..(t - frame*(math.floor(t/frame))))
			for i=1, math.floor(tf/frame) do
				script.Heartbeat:Fire()
			end
			lastframe=tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf/frame)
		end
	end
end)

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
local weld=it("Motor") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end

function gui(GuiType,parent,text,backtrans,backcol,pos,size,image)
local gui=it(GuiType) 
gui.Parent=parent
gui.BackgroundTransparency=backtrans
gui.BackgroundColor3=backcol
gui.SizeConstraint="RelativeXY" 
gui.Position=pos
gui.Size=size
if GuiType=="TextLabel" then
gui.Text=text
gui.TextXAlignment="Center" 
gui.TextYAlignment="Center" 
gui.Font="SourceSans"
gui.FontSize="Size14"
gui.TextWrapped=false
gui.TextStrokeTransparency=0
gui.TextColor=BrickColor.new("White")
elseif GuiType=="ImageLabel" then
gui.Image="rbxassetid://"..image
gui.ImageColor3=backcol
end
return gui
end

local nr=NumberRange.new
local ns=NumberSequence.new
local cs=ColorSequence.new
local nsk=NumberSequenceKeypoint.new

function particle(parent,col1,col2,lightemis,size,texture,transparency,zoffset,accel,drag,ltp,velinher,emisdir,enabled,lifetime,rate,rotation,rotspeed,speed,velspread)
local fp=it("ParticleEmitter")
fp.Parent=parent
fp.Color=cs(col1,col2)
fp.LightEmission=lightemis
fp.Size=size
fp.Texture=texture
fp.Transparency=transparency
fp.ZOffset=zoffset
fp.Acceleration=accel
fp.Drag=drag
fp.LockedToPart=ltp
fp.VelocityInheritance=velinher
fp.EmissionDirection=emisdir
fp.Enabled=enabled
fp.Lifetime=lifetime
fp.Rate=rate
fp.Rotation=rotation
fp.RotSpeed=rotspeed
fp.Speed=speed
fp.VelocitySpread=velspread
return fp 
end

--[[local Head=part(0,Character,0,0,BrickColor.new("Pearl"),"Head",vt(2,2,2)) Head.Material="Sand"
local Torso=part(0,Character,0,0,BrickColor.new("Pearl"),"Torso",vt(2,2,2)) Torso.Material="Sand"]]
Head.Size = vt(2,2,2)
Torso.Size = vt(2,2,2)
Head.BrickColor = BrickColor.new("Pearl")
Torso.BrickColor = BrickColor.new("Pearl")
Head.Material = "Sand"
Torso.Material = "Sand"
Head.face:Destroy()
workspace.CurrentCamera.CameraSubject = Torso
local Back=part(0,Character,0,0,BrickColor.new("Pearl"),"Back",vt(2,2,2)) Back.Material="Sand"
local Lower1=part(0,Character,0,0,BrickColor.new("Pearl"),"Lower1",vt(2,2,2)) Lower1.Material="Sand"
local Lower2=part(0,Character,0,0,BrickColor.new("Pearl"),"Lower2",vt(2,2,2)) Lower2.Material="Sand"

--local RootPart=part(0,Character,0,0,BrickColor.new("White"),"HumanoidRootPart",vt(2,2,1))
--RootPart.CanCollide=false

local HMesh=mesh("SpecialMesh",Head,"Sphere","nil",vt(0,0,0),vt(59.5,59.5,59.5))
local TMesh=mesh("SpecialMesh",Torso,"Sphere","nil",vt(0,0,0),vt(105,105,105))
local BMesh=mesh("SpecialMesh",Back,"Sphere","nil",vt(0,0,0),vt(100,100,100))
local L1Mesh=mesh("SpecialMesh",Lower1,"Sphere","nil",vt(0,0,0),vt(90,90,90))
local L2Mesh=mesh("SpecialMesh",Lower2,"Sphere","nil",vt(0,0,0),vt(90,90,90))

--[[local Neck=weld(Torso,Torso,Head,cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0))
Neck.C1=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)]]
local Neck=weld(Torso,Torso,Head,euler(0,0,0)*cf(0,35,0))
--Neck.C1=cf(0,-1.5,0)
Neck.C1=cf(0,-80,0)
--Neck.C0=clerp(Neck.C0,euler(0,0,0)*cf(0,115,0)*euler(-.3,0,0),.3)
local RootJoint=weld(Torso,Torso,RootPart,cf(-1.749,-200,0))
local BackJoint=weld(Torso,Torso,Back,cf(0,51,-87.75))
local L1Joint=weld(Torso,Torso,Lower1,cf(0,-42,-7.75))
local L2Joint=weld(Torso,Torso,Lower2,cf(0,-54.75,-16.749))
--Torso.CFrame=cf(0,20,0)
RootPart.Anchored=true
for d=10,180,10 do
for i=10,360,10 do
local Hitbox1=part(0,Character,0,1,BrickColor.new("Black"),"Left Arm",vt(1,1,1)) Hitbox1.Material="Sand"
local HbMesh=mesh("SpecialMesh",Hitbox1,"Sphere","nil",vt(0,0,0),vt(1,1,1))
--local HHJoint=weld(Hitbox1,Hitbox1,Head,cf(60/(d/30),d,0)*euler(0,math.rad(i),0))
local HHJoint=weld(Hitbox1,Hitbox1,Head,cf(60,0,0)*euler(0,math.rad(i),math.rad(d)))
end
end

Humanoid.Animator:Destroy()
Character.Animate:Destroy()

local armor=Instance.new("Model")
armor.Parent=Character
armor.Name="Body"
--RootPart.Parent=armor

prt1=part(3,armor,0,0,BrickColor.new("Pearl"),"Part01",vt(2,2,2)) prt1.Material="Sand"
prt2=part(3,armor,0,0,BrickColor.new("Really black"),"Part02",vt(2,2,2))
prt3=part(3,armor,0,0,BrickColor.new("Bright blue"),"Part03",vt(2,2,2)) prt3.Material="Neon"
prt4=part(3,armor,0,0,BrickColor.new("Really black"),"Part04",vt(2,2,2))
prt5=part(3,armor,0,0,BrickColor.new("Bright blue"),"Part05",vt(2,2,2)) prt5.Material="Neon"
prt6=part(3,armor,0,0,BrickColor.new("Pearl"),"Part06",vt(2,2,2)) prt6.Material="Sand"
prt7=part(3,armor,0,0,BrickColor.new("Pearl"),"Part07",vt(2,2,2)) prt7.Material="Sand"
prt8=part(3,armor,0,0,BrickColor.new("Pearl"),"Part08",vt(2,2,2)) prt8.Material="Sand"
prt9=part(3,armor,0,0,BrickColor.new("Pearl"),"Part09",vt(2,2,2)) prt9.Material="Sand"
prt10=part(3,armor,0,0,BrickColor.new("Pearl"),"Part10",vt(2,2,2)) prt10.Material="Sand"
prt11=part(3,armor,.4,0,BrickColor.new("Pearl"),"Part11",vt(2,2,2))
prt12=part(3,armor,.4,0,BrickColor.new("Pastel light blue"),"Part12",vt(2,2,2))
prt13=part(3,armor,.4,0,BrickColor.new("Pearl"),"Part13",vt(2,2,2))
prt14=part(3,armor,.4,0,BrickColor.new("Pearl"),"Part14",vt(2,2,2))
prt15=part(3,armor,.4,0,BrickColor.new("Pearl"),"Part15",vt(2,2,2))
prt16=part(3,armor,.4,0,BrickColor.new("Pearl"),"Part16",vt(2,2,2))
prt17=part(3,armor,.4,0,BrickColor.new("Pearl"),"Part17",vt(2,2,2))
prt18=part(3,armor,.4,0,BrickColor.new("Pearl"),"Part18",vt(2,2,2))
prt19=part(3,armor,0,0,BrickColor.new("Pearl"),"Part19",vt(2,2,2)) prt19.Material="Sand" --main right arm
prt20=part(3,armor,0,0,BrickColor.new("Pearl"),"Part20",vt(2,2,2)) prt20.Material="Sand"
prt21=part(3,armor,0,0,BrickColor.new("Pearl"),"Part21",vt(2,2,2)) prt21.Material="Sand" --second right arm point
prt22=part(3,armor,0,0,BrickColor.new("Pearl"),"Part22",vt(2,2,2)) prt22.Material="Sand"
prt23=part(3,armor,0,0,BrickColor.new("Pearl"),"Part23",vt(2,2,2)) prt23.Material="Sand"
prt24=part(3,armor,0,0,BrickColor.new("Pearl"),"Part24",vt(2,2,2)) prt24.Material="Sand" --third right arm point
prt25=part(3,armor,0,0,BrickColor.new("Pearl"),"Part25",vt(2,2,2)) prt25.Material="Sand"
prt26=part(3,armor,0,0,BrickColor.new("Pearl"),"Part26",vt(2,2,2)) prt26.Material="Sand"
prt27=part(3,armor,0,0,BrickColor.new("Pearl"),"Part27",vt(2,2,2)) prt27.Material="Sand"
prt28=part(3,armor,0,0,BrickColor.new("Pearl"),"Part28",vt(2,2,2)) prt28.Material="Sand"
prt29=part(3,armor,0,0,BrickColor.new("Pearl"),"Part29",vt(2,2,2)) prt29.Material="Sand" --fourth right arm point
prt30=part(3,armor,0,0,BrickColor.new("Pearl"),"Part30",vt(2,2,2)) prt30.Material="Sand"
prt31=part(3,armor,0,0,BrickColor.new("Pearl"),"Part31",vt(2,2,2)) prt31.Material="Sand"
prt32=part(3,armor,0,0,BrickColor.new("Pearl"),"Part32",vt(2,2,2)) prt32.Material="Sand"
prt33=part(3,armor,0,0,BrickColor.new("Pearl"),"Part33",vt(2,2,2)) prt33.Material="Sand" --main left arm
prt34=part(3,armor,0,0,BrickColor.new("Pearl"),"Part34",vt(2,2,2)) prt34.Material="Sand"
prt35=part(3,armor,0,0,BrickColor.new("Pearl"),"Part35",vt(2,2,2)) prt35.Material="Sand" --second right arm point
prt36=part(3,armor,0,0,BrickColor.new("Pearl"),"Part36",vt(2,2,2)) prt36.Material="Sand"
prt37=part(3,armor,0,0,BrickColor.new("Pearl"),"Part37",vt(2,2,2)) prt37.Material="Sand"
prt38=part(3,armor,0,0,BrickColor.new("Pearl"),"Part38",vt(2,2,2)) prt38.Material="Sand" --third right arm point
prt39=part(3,armor,0,0,BrickColor.new("Pearl"),"Part39",vt(2,2,2)) prt39.Material="Sand"
prt40=part(3,armor,0,0,BrickColor.new("Pearl"),"Part40",vt(2,2,2)) prt40.Material="Sand"
prt41=part(3,armor,0,0,BrickColor.new("Pearl"),"Part41",vt(2,2,2)) prt41.Material="Sand"
prt42=part(3,armor,0,0,BrickColor.new("Pearl"),"Part42",vt(2,2,2)) prt42.Material="Sand"
prt43=part(3,armor,0,0,BrickColor.new("Pearl"),"Part43",vt(2,2,2)) prt43.Material="Sand" --fourth right arm point
prt44=part(3,armor,0,0,BrickColor.new("Pearl"),"Part44",vt(2,2,2)) prt44.Material="Sand"
prt45=part(3,armor,0,0,BrickColor.new("Pearl"),"Part45",vt(2,2,2)) prt45.Material="Sand"
prt46=part(3,armor,0,0,BrickColor.new("Pearl"),"Part46",vt(2,2,2)) prt46.Material="Sand"

msh1=mesh("SpecialMesh",prt1,"FileMesh","62740878",vt(0,0,0),vt(80,50,80))
msh2=mesh("SpecialMesh",prt2,"Sphere","nil",vt(0,0,0),vt(5,10,10))
msh3=mesh("SpecialMesh",prt3,"Sphere","nil",vt(0,0,0),vt(4,8.5,8.5))
msh4=mesh("SpecialMesh",prt4,"Sphere","nil",vt(0,0,0),vt(5,10,10))
msh5=mesh("SpecialMesh",prt5,"Sphere","nil",vt(0,0,0),vt(4,8.5,8.5))
msh6=mesh("SpecialMesh",prt6,"FileMesh","1323306",vt(0,0,0),vt(100,100,100))
msh7=mesh("SpecialMesh",prt7,"FileMesh","1323306",vt(0,0,0),vt(100,100,100))
msh8=mesh("SpecialMesh",prt8,"FileMesh","1323306",vt(0,0,0),vt(100,100,100))
msh9=mesh("SpecialMesh",prt9,"FileMesh","1323306",vt(0,0,0),vt(100,100,100))
msh10=mesh("SpecialMesh",prt10,"FileMesh","1323306",vt(0,0,0),vt(100,100,100))
msh11=mesh("SpecialMesh",prt11,"FileMesh","9756362",vt(0,0,0),vt(20,90,20))
msh12=mesh("SpecialMesh",prt12,"FileMesh","9756362",vt(0,0,0),vt(20,100,27.5))
msh13=mesh("SpecialMesh",prt13,"FileMesh","9756362",vt(0,0,0),vt(12.5,90,12.5))
msh14=mesh("SpecialMesh",prt14,"FileMesh","9756362",vt(0,0,0),vt(12.5,90,12.5))
msh15=mesh("SpecialMesh",prt15,"FileMesh","9756362",vt(0,0,0),vt(12.5,90,12.5))
msh16=mesh("SpecialMesh",prt16,"FileMesh","9756362",vt(0,0,0),vt(12.5,90,12.5))
msh17=mesh("SpecialMesh",prt17,"FileMesh","9756362",vt(0,0,0),vt(12.5,90,12.5))
msh18=mesh("SpecialMesh",prt18,"FileMesh","9756362",vt(0,0,0),vt(12.5,90,12.5))
msh19=mesh("SpecialMesh",prt19,"Sphere","nil",vt(0,0,0),vt(65,65,65))
msh20=mesh("SpecialMesh",prt20,"FileMesh","1323306",vt(0,0,0),vt(100,100,100))
msh21=mesh("CylinderMesh",prt21,"nil","nil",vt(0,0,0),vt(50,30,50))
msh22=mesh("SpecialMesh",prt22,"Sphere","nil",vt(0,0,0),vt(50,50,50))
msh23=mesh("SpecialMesh",prt23,"Sphere","nil",vt(0,0,0),vt(50,50,50))
msh24=mesh("CylinderMesh",prt24,"nil","nil",vt(0,0,0),vt(65,10,65))
msh25=mesh("SpecialMesh",prt25,"Sphere","nil",vt(0,0,0),vt(65,65,65))
msh26=mesh("SpecialMesh",prt26,"Sphere","nil",vt(0,0,0),vt(65,65,65))
msh27=mesh("SpecialMesh",prt27,"FileMesh","1033714",vt(0,0,0),vt(12.5,160,12.5))
msh28=mesh("SpecialMesh",prt28,"FileMesh","1033714",vt(0,0,0),vt(12.5,160,12.5))
msh29=mesh("CylinderMesh",prt29,"nil","nil",vt(0,0,0),vt(52.5,60,52.5))
msh30=mesh("SpecialMesh",prt30,"Sphere","nil",vt(0,0,0),vt(52.5,52.5,52.5))
msh31=mesh("SpecialMesh",prt31,"Sphere","nil",vt(0,0,0),vt(85,85,85))
msh32=mesh("SpecialMesh",prt32,"FileMesh","1290033",vt(0,0,0),vt(90,90,90))
msh33=mesh("SpecialMesh",prt33,"Sphere","nil",vt(0,0,0),vt(65,65,65))
msh34=mesh("SpecialMesh",prt34,"FileMesh","1323306",vt(0,0,0),vt(100,100,100))
msh35=mesh("CylinderMesh",prt35,"nil","nil",vt(0,0,0),vt(50,30,50))
msh36=mesh("SpecialMesh",prt36,"Sphere","nil",vt(0,0,0),vt(50,50,50))
msh37=mesh("SpecialMesh",prt37,"Sphere","nil",vt(0,0,0),vt(50,50,50))
msh38=mesh("CylinderMesh",prt38,"nil","nil",vt(0,0,0),vt(65,10,65))
msh39=mesh("SpecialMesh",prt39,"Sphere","nil",vt(0,0,0),vt(65,65,65))
msh40=mesh("SpecialMesh",prt40,"Sphere","nil",vt(0,0,0),vt(65,65,65))
msh41=mesh("SpecialMesh",prt41,"FileMesh","1033714",vt(0,0,0),vt(12.5,160,12.5))
msh42=mesh("SpecialMesh",prt42,"FileMesh","1033714",vt(0,0,0),vt(12.5,160,12.5))
msh43=mesh("CylinderMesh",prt43,"nil","nil",vt(0,0,0),vt(52.5,60,52.5))
msh44=mesh("SpecialMesh",prt44,"Sphere","nil",vt(0,0,0),vt(52.5,52.5,52.5))
msh45=mesh("SpecialMesh",prt45,"Sphere","nil",vt(0,0,0),vt(85,85,85))
msh46=mesh("SpecialMesh",prt46,"FileMesh","1290033",vt(0,0,0),vt(90,90,90))

local wld1=weld(prt1,prt1,Head,euler(0,math.rad(180),0)*cf(-4.597,-46.367,0))
local wld2=weld(prt1,prt2,Head,euler(0,math.rad(90+(90-65)),0)*cf(23.772,0,-50.979))
local wld3=weld(prt1,prt3,Head,euler(0,math.rad(90+(90-65)),0)*cf(24.406,0,-52.339))
local wld4=weld(prt1,prt4,Head,euler(0,math.rad(65),0)*cf(-23.772,0,-50.979))
local wld5=weld(prt1,prt5,Head,euler(0,math.rad(65),0)*cf(-24.406,0,-52.339))
local wld6=weld(prt1,prt6,Torso,euler(math.rad(63.644),0,0)*cf(0,-118.531,124.184))
local wld7=weld(prt1,prt7,Torso,euler(math.rad(-90-165.516),0,0)*cf(0,-1.816,157.992))
local wld8=weld(prt1,prt8,Torso,euler(math.rad(171.785),0,0)*cf(-3.372,67.659,3.285))
local wld9=weld(prt1,prt9,Torso,euler(math.rad(-90-55),math.rad(-90-65),0)*cf(-32.5,66.459,35.483))
local wld10=weld(prt1,prt10,Torso,euler(math.rad(-90-60),math.rad(-90-115),0)*cf(32.5,66.459,35.483))
local wld11=weld(prt1,prt11,Torso,euler(0,math.rad(45),0)*cf(0,0,-104.75))
local wld12=weld(prt1,prt12,Torso,euler(0,math.rad(90),0)*cf(0,0,-104.75))
local wld13=weld(prt1,prt13,Torso,euler(0,math.rad(90),math.rad(-35))*cf(32.009,-22.413,-88.007))
local wld14=weld(prt1,prt14,Torso,euler(0,math.rad(90),math.rad(35))*cf(-32.009,-22.413,-88.007))
local wld15=weld(prt1,prt15,Torso,euler(0,math.rad(90),math.rad(90))*cf(32.075,0,-88.007))
local wld16=weld(prt1,prt16,Torso,euler(0,math.rad(90),math.rad(-90))*cf(-32.075,0,-88.007))
local wld17=weld(prt1,prt17,Torso,euler(0,math.rad(90),math.rad(90-35))*cf(32.009,22.413,-88.007))
local wld18=weld(prt1,prt18,Torso,euler(0,math.rad(90),math.rad(-90+35))*cf(-32.009,22.413,-88.007))
local wld19=weld(prt1,prt19,Torso,euler(0,0,0)*cf(94,-47.5,-2.248))
local wld20=weld(prt1,prt20,prt19,euler(math.rad(90),math.rad(-90+75),0)*cf(21.417,0,79.93))
local wld21=weld(prt1,prt21,prt19,euler(0,0,math.rad(90))*cf(74.25,0,0))
local wld22=weld(prt1,prt22,prt21,euler(0,0,0)*cf(0,-30,0))
local wld23=weld(prt1,prt23,prt21,euler(0,0,0)*cf(0,30,0))
local wld24=weld(prt1,prt24,prt21,euler(0,0,0)*cf(0,90.25,0))
local wld25=weld(prt1,prt25,prt24,euler(0,0,0)*cf(0,10,0))
local wld26=weld(prt1,prt26,prt24,euler(0,0,0)*cf(0,-10,0))
local wld27=weld(prt1,prt27,prt24,euler(0,0,math.rad(-90))*cf(88.5,0,0))
local wld28=weld(prt1,prt28,prt24,euler(0,0,math.rad(90))*cf(-88.5,0,0))
local wld29=weld(prt1,prt29,prt24,euler(0,0,0)*cf(0,125,0))
local wld30=weld(prt1,prt30,prt29,euler(0,0,0)*cf(0,-60,0))
local wld31=weld(prt1,prt31,prt29,euler(0,0,0)*cf(0,130,0))
local wld32=weld(prt1,prt32,prt29,euler(0,0,0)*cf(0,130,0))
local wld33=weld(prt1,prt33,Torso,euler(0,0,0)*cf(-94,-47.5,-2.248))
local wld34=weld(prt1,prt34,prt33,euler(math.rad(-90),math.rad(-90-75),0)*cf(-21.417,0,79.93))
local wld35=weld(prt1,prt35,prt33,euler(0,0,math.rad(90))*cf(-74.25,0,0))
local wld36=weld(prt1,prt36,prt35,euler(0,0,0)*cf(0,30,0))
local wld37=weld(prt1,prt37,prt35,euler(0,0,0)*cf(0,-30,0))
local wld38=weld(prt1,prt38,prt35,euler(0,0,0)*cf(0,-90.25,0))
local wld39=weld(prt1,prt39,prt38,euler(0,0,0)*cf(0,-10,0))
local wld40=weld(prt1,prt40,prt38,euler(0,0,0)*cf(0,10,0))
local wld41=weld(prt1,prt41,prt38,euler(0,0,math.rad(-90))*cf(88.5,0,0))
local wld42=weld(prt1,prt42,prt38,euler(0,0,math.rad(90))*cf(-88.5,0,0))
local wld43=weld(prt1,prt43,prt38,euler(0,0,0)*cf(0,-125,0))
local wld44=weld(prt1,prt44,prt43,euler(0,0,0)*cf(0,60,0))
local wld45=weld(prt1,prt45,prt43,euler(0,0,0)*cf(0,-130,0))
local wld46=weld(prt1,prt46,prt43,euler(0,0,0)*cf(0,-130,0))

--[[wld19.C0=clerp(wld19.C0,euler(0,0,0)*cf(94,-47.5,-2.248),.3)
wld21.C0=clerp(wld21.C0,euler(0,0,math.rad(90))*cf(74.25,0,0),.3)
wld24.C0=clerp(wld24.C0,euler(0,0,0)*cf(0,90.25,0),.3)
wld29.C0=clerp(wld29.C0,euler(0,0,0)*cf(0,125,0),.3)

wld33.C0=clerp(wld33.C0,euler(0,0,0)*cf(-94,-47.5,-2.248),.3)
wld35.C0=clerp(wld35.C0,euler(0,0,math.rad(90))*cf(-74.25,0,0),.3)
wld38.C0=clerp(wld38.C0,euler(0,0,0)*cf(0,-90.25,0),.3)
wld43.C0=clerp(wld43.C0,euler(0,0,0)*cf(0,-125,0),.3)]]

local effects=it("Model",Character)
effects.Name="Effects"

local refs2={}
local createref=true
if workspace:findFirstChild("SnowfRef",true) ~= nil then 
createref=false
end 
local refs=it("Model",nil)
refs.Name="SnowfRef"

--circle size 170,170,170

Ref1=part(0,refs,0,1,BrickColor.new("Black"),"Ref1",vt(210,210,210)) Ref1.CanCollide=true Ref1.Anchored=true Ref1.Shape="Ball"
Ref2=part(0,refs,0,1,BrickColor.new("Black"),"Ref2",vt(119,119,119)) Ref2.CanCollide=true Ref2.Anchored=true Ref2.Shape="Ball"
Ref3=part(0,refs,0,1,BrickColor.new("Black"),"Ref3",vt(130,130,130)) Ref3.CanCollide=true Ref3.Anchored=true Ref3.Shape="Ball"
Ref4=part(0,refs,0,1,BrickColor.new("Black"),"Ref4",vt(130,100,100)) Ref4.CanCollide=true Ref4.Anchored=true Ref4.Shape="Cylinder"
Ref5=part(0,refs,0,1,BrickColor.new("Black"),"Ref5",vt(130,130,130)) Ref5.CanCollide=true Ref5.Anchored=true Ref5.Shape="Ball"
Ref6=part(0,refs,0,1,BrickColor.new("Black"),"Ref6",vt(160,105,105)) Ref6.CanCollide=true Ref6.Anchored=true Ref6.Shape="Cylinder"
Ref7=part(0,refs,0,1,BrickColor.new("Black"),"Ref7",vt(170,170,170)) Ref7.CanCollide=true Ref7.Anchored=true Ref7.Shape="Ball"
Ref8=part(0,refs,0,1,BrickColor.new("Black"),"Ref8",vt(130,130,130)) Ref8.CanCollide=true Ref8.Anchored=true Ref8.Shape="Ball"
Ref9=part(0,refs,0,1,BrickColor.new("Black"),"Ref9",vt(130,100,100)) Ref9.CanCollide=true Ref9.Anchored=true Ref9.Shape="Cylinder"
Ref10=part(0,refs,0,1,BrickColor.new("Black"),"Ref10",vt(130,130,130)) Ref10.CanCollide=true Ref10.Anchored=true Ref10.Shape="Ball"
Ref11=part(0,refs,0,1,BrickColor.new("Black"),"Ref11",vt(160,105,105)) Ref11.CanCollide=true Ref11.Anchored=true Ref11.Shape="Cylinder"
Ref12=part(0,refs,0,1,BrickColor.new("Black"),"Ref12",vt(170,170,170)) Ref12.CanCollide=true Ref12.Anchored=true Ref12.Shape="Ball"

if createref==false then
refs=workspace.SnowfRef
Ref1=refs.Ref1
Ref2=refs.Ref2
Ref3=refs.Ref3
Ref4=refs.Ref4
Ref5=refs.Ref5
Ref6=refs.Ref6
Ref7=refs.Ref7
Ref8=refs.Ref8
Ref9=refs.Ref9
Ref10=refs.Ref10
Ref11=refs.Ref11
Ref12=refs.Ref12
else
--refs.Parent=workspace
end

--[[R1wld=weld(Ref1,Ref1,Torso,euler(0,0,0)*cf(0,0,0))
R2wld=weld(Ref2,Ref2,Head,euler(0,0,0)*cf(0,0,0))
R3wld=weld(Ref3,Ref3,prt19,euler(0,0,0)*cf(0,0,0))
R4wld=weld(Ref4,Ref4,prt21,euler(0,0,0)*cf(0,0,0))
R5wld=weld(Ref5,Ref5,prt24,euler(0,0,0)*cf(0,0,0))
R6wld=weld(Ref6,Ref6,prt29,euler(0,0,0)*cf(0,0,0))
R7wld=weld(Ref7,Ref7,prt31,euler(0,0,0)*cf(0,0,0))
R8wld=weld(Ref8,Ref8,prt33,euler(0,0,0)*cf(0,0,0))
R9wld=weld(Ref9,Ref9,prt35,euler(0,0,0)*cf(0,0,0))
R10wld=weld(Ref10,Ref10,prt38,euler(0,0,0)*cf(0,0,0))
R11wld=weld(Ref11,Ref11,prt43,euler(0,0,0)*cf(0,0,0))
R12wld=weld(Ref12,Ref12,prt45,euler(0,0,0)*cf(0,0,0))]]
table.insert(refs2,{Ref1,Torso,cf(0,0,0)})
table.insert(refs2,{Ref2,Head,cf(0,0,0)})
table.insert(refs2,{Ref3,prt19,cf(0,0,0)})
table.insert(refs2,{Ref4,prt21,euler(0,0,math.rad(90))})
table.insert(refs2,{Ref5,prt24,cf(0,0,0)})
table.insert(refs2,{Ref6,prt29,euler(0,0,math.rad(90))})
table.insert(refs2,{Ref7,prt31,cf(0,0,0)})
table.insert(refs2,{Ref8,prt33,cf(0,0,0)})
table.insert(refs2,{Ref9,prt35,euler(0,0,math.rad(90))})
table.insert(refs2,{Ref10,prt38,cf(0,0,0)})
table.insert(refs2,{Ref11,prt43,euler(0,0,math.rad(90))})
table.insert(refs2,{Ref12,prt45,cf(0,0,0)})

for _,c in pairs(armor:children()) do
table.insert(armorparts,c)
end
--[[for _,c in pairs(modelzorz:children()) do
table.insert(weaponparts,c)
end]]
for _,c in pairs(prt1:children()) do
table.insert(weaponwelds,c)
end
local hitbox=part(3,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
--hitbox.Anchored=true
local hitbox2=part(3,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
hitbox2.Anchored=true
local hitboxCF=cf(0,0,0)

--TehHealth=500+(#game.Players:GetChildren()*20)
local CurrentHealth=3000
Humanoid.MaxHealth=CurrentHealth
Humanoid.Health=CurrentHealth
local Stats=Instance.new("BoolValue")
Stats.Name="Stats"
Stats.Parent=Character
local Alive=Instance.new("BoolValue")
Alive.Name="Alive"
Alive.Parent=Character
Alive.Value=true
local Atk=Instance.new("NumberValue")
Atk.Name="Damage"
Atk.Parent=Stats
Atk.Value=1
local Def=Instance.new("NumberValue")
Def.Name="Defense"
Def.Parent=Stats
Def.Value=1
local Mvmt=Instance.new("NumberValue")
Mvmt.Name="Movement"
Mvmt.Parent=Stats
Mvmt.Value=1
local Block=Instance.new("BoolValue")
Block.Name="Block"
Block.Parent=Stats
Block.Value=false
local Stun=Instance.new("NumberValue")
Stun.Name="Stun"
Stun.Parent=Stats
Stun.Value=0
local StunT=Instance.new("NumberValue")
StunT.Name="StunThreshold"
StunT.Parent=Stats
StunT.Value=800
local Rooted=Instance.new("BoolValue")
Rooted.Name="Rooted"
Rooted.Parent=Stats
Rooted.Value=false
local Stunned=Instance.new("BoolValue")
Stunned.Name="Stunned"
Stunned.Parent=Stats
Stunned.Value=false
local Stagger=Instance.new("BoolValue")
Stagger.Name="Stagger"
Stagger.Parent=Stats
Stagger.Value=false
local StaggerHit=Instance.new("BoolValue")
StaggerHit.Name="StaggerHit"
StaggerHit.Parent=Stats
StaggerHit.Value=false
local Decrease=Instance.new("BoolValue")
Decrease.Name="Decrease"
Decrease.Parent=Stats
Decrease.Value=false
local mana=Instance.new("NumberValue")
mana.Name="Mana"
mana.Parent=Stats
mana.Value=0
local boss=Instance.new("BoolValue")
boss.Name="Boss"
boss.Parent=Stats
boss.Value=true
local ungrab=Instance.new("BoolValue")
ungrab.Name="Ungrabbable"
ungrab.Parent=Stats
ungrab.Value=true

local Cryst1=it("Model",nil)
Cryst1.Name="Crystal"
local C1Head=part(0,Cryst1,0,0,BrickColor.new("Pastel light blue"),"Head",vt(5,10,5)) C1Head.Anchored=true
local C1msh=mesh("SpecialMesh",C1Head,"FileMesh","9756362",vt(0,0,0),vt(10,20,10))
local C1Torso=part(0,Cryst1,0,.5,BrickColor.new("Pastel light blue"),"Torso",vt()) C1Torso.Anchored=true
local C1msh=mesh("SpecialMesh",C1Torso,"FileMesh","9756362",vt(0,0,0),vt(-20,-50,-20))
local C1S=Stats:Clone() C1S.Parent=Cryst1
local Cryst2=it("Model",nil) Cryst2.Name="Crystal"
local C2Head=C1Head:Clone() C2Head.Parent=Cryst2
local C2Torso=C1Torso:Clone() C2Torso.Parent=Cryst2
local C2S=Stats:Clone() C2S.Parent=Cryst2
local Cryst3=it("Model",nil) Cryst3.Name="Crystal"
local C3Head=C1Head:Clone() C3Head.Parent=Cryst3
local C3Torso=C1Torso:Clone() C3Torso.Parent=Cryst3
local C3S=Stats:Clone() C3S.Parent=Cryst3
local Cryst4=it("Model",nil) Cryst4.Name="Crystal"
local C4Head=C1Head:Clone() C4Head.Parent=Cryst4
local C4Torso=C1Torso:Clone() C4Torso.Parent=Cryst4
local C4S=Stats:Clone() C4S.Parent=Cryst4
local C1Neck=weld(C1Torso,C1Torso,C1Head,euler(0,0,0)*cf(0,0,0))
local C2Neck=weld(C2Torso,C2Torso,C2Head,euler(0,0,0)*cf(0,0,0))
local C3Neck=weld(C3Torso,C3Torso,C3Head,euler(0,0,0)*cf(0,0,0))
local C4Neck=weld(C4Torso,C4Torso,C4Head,euler(0,0,0)*cf(0,0,0))
local C1Hum=it("Humanoid")
local C2Hum=it("Humanoid")
local C3Hum=it("Humanoid")
local C4Hum=it("Humanoid")
local C1a=false
local C2a=false
local C3a=false
local C4a=false

so = function(id,par,vol,pit) 
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId="http://www.roblox.com/asset/?id="..id
--swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
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
w1.Name = "Triangle"
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Teal")
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
table.insert(Effects,{w1,"Disappear",.05})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end

if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
w2.Name = "Triangle"
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("Teal")
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
table.insert(Effects,{w2,"Disappear",.05})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end

function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,Type)
local prt=part(3,effects,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
if Type==1 or Type==nil then
table.insert(Effects,{prt,"Block1",delay,x3,y3,z3,msh})
elseif Type==2 then
table.insert(Effects,{prt,"Block2",delay,x3,y3,z3,msh})
end
end

function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,effects,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","nil",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function MagicCircle2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,push)
local prt=part(3,effects,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","nil",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"Blood",delay,x3,y3,z3,msh,push})
end

function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,effects,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x2,y2,z2)
local msh=mesh("SpecialMesh",prt,"FileMesh","3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,effects,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function MagicHead(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,effects,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Head","nil",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function ClangEffect(brickcolor,cframe,duration,decrease,size,power)
local prt=part(3,effects,0,1,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(5,5,5))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"CylinderClang",duration,decrease,size,power,prt.CFrame,nil})
end

function MagicWave(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,effects,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function MagicWave2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","1323306",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"Cylinder2",delay,x3,y3,z3,msh,0})
end

function MagicCrystal(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,effects,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","9756362",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,effects,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(prt,10)
local msh=mesh("SpecialMesh",prt,"Sphere","nil",vt(0,0,0),vt(x1,y1,z1))
local num=math.random(10,50)/1000
table.insert(Effects,{prt,"Shatter",num,prt.CFrame,math.random()-math.random(),0,math.random(50,100)/100})
--table.insert(Effects,{prt,"Shatter",.02,msh})
--[[
1=prt
2=Shatter
3=.02
4=Thing[1].CFrame
5=randnum
6=Numbb
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
end),prt,CF,Numbb,randnumb)]]
end

function BreakEffect2(brickcolor,cframe,x1,y1,z1)
local prt=part(3,effects,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(prt,10)
local msh=mesh("SpecialMesh",prt,"Sphere","nil",vt(0,0,0),vt(x1,y1,z1))
local num=math.random(10,50)/1000
table.insert(Effects,{prt,"Shatter",num,prt.CFrame,math.random()-math.random(),0,math.random(300,1000)/100})
end


--Break effect. Credits to whoever made it
local MaxPieces = 10
local Explode = true
local Connection = nil
function IsWhole(Number)
	return math.ceil(Number) == Number
end
function ChangeAxis(Vector,Axis,Value)
	if(Axis == "x")then
		return Vector3.new(Value,Vector.y,Vector.z)
	end
	if(Axis == "y")then
		return Vector3.new(Vector.x,Value,Vector.z)
	end
	if(Axis == "z")then
		return Vector3.new(Vector.x,Vector.y,Value)
	end
end
function Break(mouse)
	local Targ = mouse
	local oldParent = mouse.Parent
	local FF = 1
	if(Targ.formFactor == Enum.FormFactor.Symmetric)then
		FF = 1 
	end
	if(Targ.formFactor == Enum.FormFactor.Brick)then
		FF = 1.2
	end
	if(Targ.formFactor == Enum.FormFactor.Plate)then
		FF = 0.4 
	end
	local New = Targ:Clone()
	local Rotation = Targ.CFrame - Targ.CFrame.p
	local SizeFactorX = 1
	local SizeFactorY = FF
	local SizeFactorZ = 1
	local Extra = (Targ.Size.x*Targ.Size.y*Targ.Size.z/(SizeFactorX*SizeFactorY*SizeFactorZ))/MaxPieces
	while Extra > 1 do
		SizeFactorX = SizeFactorX * 2
		SizeFactorY = SizeFactorY * 2
		SizeFactorZ = SizeFactorZ * 2
		if(SizeFactorX > Targ.Size.x)then
			SizeFactorX = Targ.Size.x
		end
		if(SizeFactorY > Targ.Size.y)then
			SizeFactorY = Targ.Size.y
		end
		if(SizeFactorZ > Targ.Size.z)then
			SizeFactorZ = Targ.Size.z
		end
		Extra = (Targ.Size.x*Targ.Size.y*Targ.Size.z/(SizeFactorX*SizeFactorY*SizeFactorZ))/MaxPieces
	end
	local Start = Targ.Position - (Targ.CFrame.lookVector * (Targ.Size.z/2 + (SizeFactorZ / 2)))-((Targ.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)).lookVector * (Targ.Size.x/2 + (SizeFactorX / 2)))-((Targ.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)).lookVector * (Targ.Size.y/2 + (SizeFactorY/2)))
	New.Size = Vector3.new(SizeFactorX,SizeFactorY,SizeFactorZ)
	New.Anchored = false
	local OverShootZ = (Targ.Size.z/SizeFactorZ) - math.floor(Targ.Size.z/SizeFactorZ)
	local OverShootX = (Targ.Size.x/SizeFactorX) - math.floor(Targ.Size.x/SizeFactorX)
	local OverShootY = (Targ.Size.y/SizeFactorY) - math.floor(Targ.Size.y/SizeFactorY)
	----print("SizeFactor",SizeFactorX,SizeFactorY,SizeFactorZ)
	----print("OverShoot",OverShootX,OverShootY,OverShootZ)
	for z = 1,math.ceil(Targ.Size.z/SizeFactorZ) do
		if(OverShootZ > 0)then
			if(z == math.ceil(Targ.Size.z/SizeFactorZ))then
				z = z - ((1 - OverShootZ) / 2)
				New.Size = ChangeAxis(New.Size,"z",OverShootZ * SizeFactorZ)
			else
				New.Size = ChangeAxis(New.Size,"z",SizeFactorZ)
			end
		end
		for y = 1,math.ceil(Targ.Size.y/SizeFactorY) do
			if(OverShootY > 0)then
				if(y == math.ceil(Targ.Size.y/SizeFactorY))then
					y = y - ((1 - OverShootY) / 2)
					New.Size = ChangeAxis(New.Size,"y",OverShootY * SizeFactorY)
				else
					New.Size = ChangeAxis(New.Size,"y",SizeFactorY)
				end
			end
			for x = 1,math.ceil(Targ.Size.x/SizeFactorX) do
				if(OverShootX > 0)then
					if(x == math.ceil(Targ.Size.x/SizeFactorX))then
						x = x - ((1 - OverShootX) / 2)
						New.Size = ChangeAxis(New.Size,"x",OverShootX * SizeFactorX)
					else
						New.Size = ChangeAxis(New.Size,"x",SizeFactorX)
					end
				end
				local N = New:Clone()
				N.CFrame = CFrame.new(Start + (Targ.CFrame.lookVector * z * SizeFactorZ)+((Targ.CFrame * CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)).lookVector * x * SizeFactorX)+((Targ.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)).lookVector * y * SizeFactorY))*Rotation
				--N.Parent = oldParent
				N.Parent = workspace
				N.CanCollide = false
				N.Velocity = vt(math.random(-300,300),math.random(-20,40),math.random(-300,300))
				N.RotVelocity = vt(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
				game:GetService("Debris"):AddItem(N,5)
			end
		end
	end
	Targ:Remove()
end



local BodGy=Instance.new("BodyGyro")
BodGy.maxTorque=Vector3.new(0,4e+005,0)
BodGy.P=2000
BodGy.D=100
BodGy.Name="SiegmundGyro"
CF=RootPart.CFrame
BodGy.Parent=RootPart
BodGy.cframe=CF

sizeseq=ns({nsk(0,4),nsk(.027,8.5),nsk(.184,9),nsk(1,10)})
transseq=ns({nsk(0,.375),nsk(.4,1),nsk(1,1)})
local icicleparti1=particle(Torso,Color3.new(255/255,255/255,255/255),Color3.new(100/255,100/255,255/255),.2,sizeseq,"http://www.roblox.com/asset/?id=329766994",transseq,0,vt(0,-.5,0),0,false,0,"Bottom",false,nr(7,10),15,nr(-360,360),nr(-30,30),nr(3),20)
sizeseq=ns({nsk(0,5),nsk(.025,7.7),nsk(.192,9),nsk(1,10)})
transseq=ns({nsk(0,.8),nsk(.3,1),nsk(1,1)})
local icicleparti2=particle(Torso,Color3.new(255/255,255/255,255/255),Color3.new(100/255,100/255,255/255),.3,sizeseq,"http://www.roblox.com/asset/?id=241594419",transseq,0,vt(0,-.5,0),0,false,0,"Bottom",false,nr(7,10),80,nr(-360,360),nr(-30,30),nr(3),20)
sizeseq=ns({nsk(0,.328),nsk(.075,3.11),nsk(.206,4.97),nsk(1,10)})
transseq=ns({nsk(0,.363),nsk(.107,1),nsk(1,1)})

--[[Neck.C0=euler(0,0,0)*cf(0,3,0)*euler(0,.6,0)*euler(-.2,0,0)
RootJoint.C0=cf(0,-2,0)*euler(0,.6,0)
RW.C0=cf(4.5,1.5,0)*euler(-.4,0,.5)*euler(0,0,0)
RW.C1=cf(0,1.5,0)*euler(0,0,0)
LW.C0=cf(-4.5,1.5,0)*euler(.2,0,-.5)
LW.C1=cf(0,1.5,0)*euler(0,0,0)
RH.C0=cf(1.5,-3,0)*euler(0,-.6,0)*euler(0,0,.1)
RH.C1=cf(0,3,0)*euler(0,0,0)
LH.C0=cf(-1.5,-3,0)*euler(0,.6,0)*euler(.1,0,0)
LH.C1=cf(0,3,0)*euler(0,0,0)]]
-- idle pose
--[[Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.4,0,0),1)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-200,0),1)
wld19.C0=wld19.C0:lerp(euler(-.4,.3,0)*cf(94,-47.5,-2.248),1)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-.1,-.6)*euler(0,-.4,0),1)
wld24.C0=wld24.C0:lerp(euler(.8,.1,0)*cf(0,90.25,0),1)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),1)

wld33.C0=wld33.C0:lerp(euler(-.4,-.3,0)*cf(-94,-47.5,-2.248),1)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,.1,.6)*euler(0,.4,0),1)
wld38.C0=wld38.C0:lerp(euler(-.8,.1,0)*cf(0,-90.25,0),1)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),1)]]

--[[ old idle
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-200,0),1)
wld19.C0=wld19.C0:lerp(euler(-.4,.3,0)*cf(94,-47.5,-2.248),1)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-.2,-.8),1)
wld24.C0=wld24.C0:lerp(euler(1.4,-.2,0)*cf(0,90.25,0),1)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),1)

wld33.C0=wld33.C0:lerp(euler(-.4,-.3,0)*cf(-94,-47.5,-2.248),1)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,.2,.8),1)
wld38.C0=wld38.C0:lerp(euler(-1.4,-.2,0)*cf(0,-90.25,0),1)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),1)
]]

--[[RootJoint.C0=clerp(RootJoint.C0,cf(-1.749,-200,0),1)
wld19.C0=clerp(wld19.C0,euler(-.4,.3,0)*cf(94,-47.5,-2.248),1)
wld21.C0=clerp(wld21.C0,euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-.2,-.8),1)
wld24.C0=clerp(wld24.C0,euler(1.4,-.2,0)*cf(0,90.25,0),1)
wld29.C0=clerp(wld29.C0,euler(0,0,0)*cf(0,125,0),1)

wld33.C0=clerp(wld33.C0,euler(-.4,-.3,0)*cf(-94,-47.5,-2.248),1)
wld35.C0=clerp(wld35.C0,euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,.2,.8),1)
wld38.C0=clerp(wld38.C0,euler(-1.4,-.2,0)*cf(0,-90.25,0),1)
wld43.C0=clerp(wld43.C0,euler(0,0,0)*cf(0,-125,0),1)]]
msh3.Scale=vt(4,0,8.5)
msh5.Scale=vt(4,0,8.5)
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.4,0,0),1)
RootJoint.C0=RootJoint.C0:lerp(euler(-.2,0,.1)*cf(-1.749,-60,-30),1)
wld19.C0=wld19.C0:lerp(euler(-.4,.3,0)*cf(94,-47.5,-2.248),1)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,0,-.6)*euler(0,-.8,0)*euler(0,0,0),1)
wld24.C0=wld24.C0:lerp(euler(1.4,.5,0)*cf(0,90.25,0),1)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),1)

wld33.C0=wld33.C0:lerp(euler(-.4,-.3,0)*cf(-94,-47.5,-2.248),1)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,0,.8)*euler(0,.8,0)*euler(.8,0,0),1)
wld38.C0=wld38.C0:lerp(euler(-.6,1,0)*cf(0,-90.25,0),1)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),1)
--[[local Ice1=part(0,armor,.2,0,BrickColor.new("Fog"),"Ice",vt(57.75,136.17,57.77)) 
Ice1.Material="Ice" 
Ice1.Anchored=true 
Ice1.CFrame=workspace.BossSpawn.CFrame*cf(144.341,286.773,15.162)
local Ice2=part(0,armor,.2,0,BrickColor.new("Fog"),"Ice",vt(89.99,35.13,77.57)) Ice2.Material="Ice" Ice2.Anchored=true
Ice2.CFrame=workspace.BossSpawn.CFrame*cf(-53.887,-10.726,-155.145)
local Ice3=part(0,armor,.2,0,BrickColor.new("Fog"),"Ice",vt(164.4,63.01,89.76)) Ice3.Material="Ice" Ice3.Anchored=true
Ice3.CFrame=workspace.BossSpawn.CFrame*cf(-107.848,12.137,-93.992)
local Ice4=part(0,armor,.2,0,BrickColor.new("Fog"),"Ice",vt(25.2,179.13,34.57)) 
Ice4.Material="Ice" 
Ice4.Anchored=true 
Ice4.CFrame=workspace.BossSpawn.CFrame*cf(319.875,454.041,179.418)]]
--I1wld=weld(Ice1,RootPart,Ice1,euler(0,0,0)*cf(144.341,286.773,15.162))
--I1wld=weld(Ice1,RootPart,Ice1,euler(0,0,0)*cf(15.162,286.773))
--local HMesh=mesh("SpecialMesh",Head,"Sphere","nil",vt(0,0,0),vt(59.5,59.5,59.5))

--[[local Neck=weld(Torso,Torso,Head,cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0))
Neck.C1=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)]]
--local Neck=weld(Torso,Torso,Head,euler(0,0,0)*cf(0,35,0))
for i=0,1,0.05 do
swait()
msh3.Scale=vt(4,1+7.5*i,8.5)
msh5.Scale=vt(4,1+7.5*i,8.5)
end
msh3.Scale=vt(4,8.5,8.5)
msh5.Scale=vt(4,8.5,8.5)
stunanim=true
attack=true
stunanim=false
attack=false
--[[for i=0,1,0.02 do
swait()
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.4,0,0),.1)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-200,0),.1)
wld19.C0=wld19.C0:lerp(euler(-.4,.3,0)*cf(94,-47.5,-2.248),.1)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-.1,-.6)*euler(0,-.4,0),.1)
wld24.C0=wld24.C0:lerp(euler(.8,.1,0)*cf(0,90.25,0),.1)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.1)

wld33.C0=wld33.C0:lerp(euler(-.4,-.3,0)*cf(-94,-47.5,-2.248),.1)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,.1,.6)*euler(0,.4,0),.1)
wld38.C0=wld38.C0:lerp(euler(-.8,.1,0)*cf(0,-90.25,0),.1)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.1)
end]]
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.4,0,0),1)
--print("START BOSS BATTLE")

function TriIceShards()
--for i=1,math.random(1,4) do
local dacfm=Torso.CFrame*euler(-1.57+math.random(60,120)/100,0,math.random(-80,80)/100)
local dacf=Torso.CFrame*euler(-1.57+math.random(60,120)/100,0,math.random(-80,80)/100)
local dacf2=Torso.CFrame*euler(-1.57+math.random(60,120)/100,0,math.random(-80,80)/100)
local dacf3=Torso.CFrame*euler(-1.57+math.random(60,120)/100,0,math.random(-80,80)/100)
local icepart1=part(3,effects,.5,0,BrickColor.new("Pearl"),"Ice",vt()) icepart1.Anchored=true
i1msh=mesh("SpecialMesh",icepart1,"FileMesh","1778999",vt(0,0,0),vt(6,18,6))
icepart1.CFrame=dacf
local icepart2=part(3,effects,.5,0,BrickColor.new("Pearl"),"Ice",vt()) icepart2.Anchored=true
i2msh=mesh("SpecialMesh",icepart2,"FileMesh","1778999",vt(0,0,0),vt(6,18,6))
icepart2.CFrame=dacf2
local icepart3=part(3,effects,.5,0,BrickColor.new("Pearl"),"Ice",vt()) icepart3.Anchored=true
i3msh=mesh("SpecialMesh",icepart3,"FileMesh","1778999",vt(0,0,0),vt(6,18,6))
icepart3.CFrame=dacf3
local partic1=icicleparti1:Clone() partic1.Parent=icepart1 partic1.Enabled=true
local partic2=icicleparti2:Clone() partic2.Parent=icepart1 partic2.Enabled=true
local partic3=icicleparti1:Clone() partic3.Parent=icepart2 partic3.Enabled=true
local partic4=icicleparti2:Clone() partic4.Parent=icepart2 partic4.Enabled=true
local partic5=icicleparti1:Clone() partic5.Parent=icepart3 partic5.Enabled=true
local partic6=icicleparti2:Clone() partic6.Parent=icepart3 partic6.Enabled=true
for i=0,1,0.1 do
swait()
icepart1.CFrame=dacf
icepart2.CFrame=dacf2
icepart3.CFrame=dacf3
dacf=dacf*cf(0,math.random(500,1000)/10,0)
dacf2=dacf2*cf(0,math.random(500,1000)/10,0)
dacf3=dacf3*cf(0,math.random(500,1000)/10,0)
end
local target1,distance1=findRandomTorso(icepart1.Position)
local target2,distance2=findRandomTorso(icepart2.Position)
local target3,distance3=findRandomTorso(icepart3.Position)
MagicBlock(BrickColor.new("Cyan"),cf(icepart1.Position),60,60,60,20,20,20,.1,1)
MagicBlock(BrickColor.new("Cyan"),cf(icepart2.Position),60,60,60,20,20,20,.1,1)
MagicBlock(BrickColor.new("Cyan"),cf(icepart3.Position),60,60,60,20,20,20,.1,1)
if target1~=nil then
so("333475957",icepart1,1,.9)
local MouseLook=cf((icepart1.Position+target1.Position)/2,target1.Position+vt(math.random(-1000,1000)/100,math.random(-1000,1000)/100,math.random(-1000,1000)/100))
table.insert(Effects,{MouseLook,"ShootIce",200,icepart1.Position,5,7,0,icepart1,10,1,partic1,partic2})
else
icepart1.Parent=nil
end
if target2~=nil then
so("333475957",icepart2,1,.9)
local MouseLook=cf((icepart2.Position+target2.Position)/2,target2.Position+vt(math.random(-1000,1000)/100,math.random(-1000,1000)/100,math.random(-1000,1000)/100))
table.insert(Effects,{MouseLook,"ShootIce",200,icepart2.Position,5,7,0,icepart2,10,1,partic3,partic4})
else
icepart2.Parent=nil
end
if target3~=nil then
so("333475957",icepart3,1,.9)
local MouseLook=cf((icepart3.Position+target3.Position)/2,target3.Position+vt(math.random(-200,200)/100,math.random(-200,200)/100,math.random(-200,200)/100))
table.insert(Effects,{MouseLook,"ShootIce",200,icepart3.Position,8,10,0,icepart3,10,1,partic5,partic6})
else
icepart3.Parent=nil
end
--end
end

function TriIceShards2()
--for i=1,math.random(1,4) do
local dacfm=Torso.CFrame*euler(-1.57+math.random(60,120)/100,0,math.random(-80,80)/100)
--[[eul1=math.random(0,800)/1000 eul2=math.random(400,1200)/1000
eul3=math.random(200,1000)/1000
eul4=math.random(0,800)/1000 eul5=math.random(400,1200)/1000
local dacf=Torso.CFrame*euler(-eul1,0,eul2)
local dacf2=Torso.CFrame*euler(-eul3,0,0)
local dacf3=Torso.CFrame*euler(-eul4,0,-eul5)]]
local dacf=Torso.CFrame*euler(-1.57+math.random(60,120)/100,0,math.random(-80,80)/100)
local dacf2=Torso.CFrame*euler(-1.57+math.random(60,120)/100,0,math.random(-80,80)/100)
local dacf3=Torso.CFrame*euler(-1.57+math.random(60,120)/100,0,math.random(-80,80)/100)
local icepart1=part(3,effects,.5,0,BrickColor.new("Pearl"),"Ice",vt()) icepart1.Anchored=true
i1msh=mesh("SpecialMesh",icepart1,"FileMesh","1778999",vt(0,0,0),vt(6,18,6))
icepart1.CFrame=dacf
local icepart2=part(3,effects,.5,0,BrickColor.new("Pearl"),"Ice",vt()) icepart2.Anchored=true
i2msh=mesh("SpecialMesh",icepart2,"FileMesh","1778999",vt(0,0,0),vt(6,18,6))
icepart2.CFrame=dacf2
local icepart3=part(3,effects,.5,0,BrickColor.new("Pearl"),"Ice",vt()) icepart3.Anchored=true
i3msh=mesh("SpecialMesh",icepart3,"FileMesh","1778999",vt(0,0,0),vt(6,18,6))
icepart3.CFrame=dacf3
local partic1=icicleparti1:Clone() partic1.Parent=icepart1 partic1.Enabled=true
local partic2=icicleparti2:Clone() partic2.Parent=icepart1 partic2.Enabled=true
local partic3=icicleparti1:Clone() partic3.Parent=icepart2 partic3.Enabled=true
local partic4=icicleparti2:Clone() partic4.Parent=icepart2 partic4.Enabled=true
local partic5=icicleparti1:Clone() partic5.Parent=icepart3 partic5.Enabled=true
local partic6=icicleparti2:Clone() partic6.Parent=icepart3 partic6.Enabled=true
for i=0,1,0.1 do
swait()
icepart1.CFrame=dacf
icepart2.CFrame=dacf2
icepart3.CFrame=dacf3
dacf=dacf*cf(0,math.random(500,1000)/10,0)
dacf2=dacf2*cf(0,math.random(500,1000)/10,0)
dacf3=dacf3*cf(0,math.random(500,1000)/10,0)
end
local target1,distance1=findNearestTorso(Head.Position)
local target2,distance2=findNearestTorso(Head.Position)
local target3,distance3=findNearestTorso(Head.Position)
MagicBlock(BrickColor.new("Cyan"),cf(icepart1.Position),60,60,60,20,20,20,.1,1)
MagicBlock(BrickColor.new("Cyan"),cf(icepart2.Position),60,60,60,20,20,20,.1,1)
MagicBlock(BrickColor.new("Cyan"),cf(icepart3.Position),60,60,60,20,20,20,.1,1)
if target1~=nil then
so("333475957",icepart1,1,.9)
local MouseLook=cf((icepart1.Position+target1.Position)/2,target1.Position+vt(math.random(-1000,1000)/100,math.random(-1000,1000)/100,math.random(-1000,1000)/100))
table.insert(Effects,{MouseLook,"ShootIce",200,icepart1.Position,5,7,0,icepart1,10,1,partic1,partic2})
else
icepart1.Parent=nil
end
if target2~=nil then
so("333475957",icepart2,1,.9)
local MouseLook=cf((icepart2.Position+target2.Position)/2,target2.Position+vt(math.random(-1000,1000)/100,math.random(-1000,1000)/100,math.random(-1000,1000)/100))
table.insert(Effects,{MouseLook,"ShootIce",200,icepart2.Position,5,7,0,icepart2,10,1,partic3,partic4})
else
icepart2.Parent=nil
end
if target3~=nil then
so("333475957",icepart3,1,.9)
local MouseLook=cf((icepart3.Position+target3.Position)/2,target3.Position+vt(math.random(-200,200)/100,math.random(-200,200)/100,math.random(-200,200)/100))
table.insert(Effects,{MouseLook,"ShootIce",200,icepart3.Position,8,10,0,icepart3,10,1,partic5,partic6})
else
icepart3.Parent=nil
end
--end
end

function TriOrbs()
--for i=1,math.random(1,4) do
local dacf=Torso.CFrame*euler(-1.57+math.random(100,150)/100,0,math.random(-80,80)/100)
local dacf2=Torso.CFrame*euler(-1.57+math.random(100,150)/100,0,math.random(-80,80)/100)
local dacf3=Torso.CFrame*euler(-1.57+math.random(100,150)/100,0,math.random(-80,80)/100)
local icepart1=part(3,effects,0,0,BrickColor.new("Cyan"),"Ice",vt()) icepart1.Anchored=true
i1msh=mesh("SpecialMesh",icepart1,"Sphere","nil",vt(0,0,0),vt(100,100,100))
icepart1.CFrame=dacf
local icepart2=part(3,effects,0,0,BrickColor.new("Cyan"),"Ice",vt()) icepart2.Anchored=true
i2msh=mesh("SpecialMesh",icepart2,"Sphere","nil",vt(0,0,0),vt(100,100,100))
icepart2.CFrame=dacf2
local icepart3=part(3,effects,0,0,BrickColor.new("Cyan"),"Ice",vt()) icepart3.Anchored=true
i3msh=mesh("SpecialMesh",icepart3,"Sphere","nil",vt(0,0,0),vt(100,100,100))
icepart3.CFrame=dacf3
local partic1=icicleparti2:Clone() partic1.Parent=icepart1 partic1.Enabled=true
local partic3=icicleparti2:Clone() partic3.Parent=icepart2 partic3.Enabled=true
local partic5=icicleparti2:Clone() partic5.Parent=icepart3 partic5.Enabled=true
for i=0,1,0.1 do
swait()
icepart1.CFrame=dacf
icepart2.CFrame=dacf2
icepart3.CFrame=dacf3
dacf=dacf*cf(0,math.random(400,800)/10,0)
dacf2=dacf2*cf(0,math.random(400,800)/10,0)
dacf3=dacf3*cf(0,math.random(400,800)/10,0)
end
local target1,distance1=findRandomTorso(icepart1.Position)
local target2,distance2=findRandomTorso(icepart2.Position)
local target3,distance3=findRandomTorso(icepart3.Position)
local test1,dist1=findNearestTorso(Head.Position)
local pos1,pos2,pos3=nil,nil,nil
local refpart1=part(3,effects,0,1,BrickColor.new("Cyan"),"Ref",vt()) refpart1.Anchored=true
local refpart2=part(3,effects,0,1,BrickColor.new("Cyan"),"Ref",vt()) refpart2.Anchored=true
local refpart3=part(3,effects,0,1,BrickColor.new("Cyan"),"Ref",vt()) refpart3.Anchored=true
if target1~=nil then
pos1=target1.Position
refpart1.CFrame=cf(pos1)*cf(math.random(-3000,3000)/100,math.random(-3000,3000)/100,math.random(-3000,3000)/100)
end
if target2~=nil then
pos2=target2.Position
refpart2.CFrame=cf(pos2)*cf(math.random(-3000,3000)/100,math.random(-3000,3000)/100,math.random(-3000,3000)/100)
end
if target3~=nil then
pos3=target3.Position
refpart3.CFrame=cf(pos3)*cf(math.random(-3000,3000)/100,math.random(-3000,3000)/100,math.random(-3000,3000)/100)
end
local move=40
for i=0,1,0.1 do
swait()
move=40-40*i
if target1~=nil then
refpart1.CFrame=cf(refpart1.Position,target1.Position)
MagicCircle2(BrickColor.new("Cyan"),icepart1.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(0,60,0),15,40,15,-1,20,-1,.1,-5)
icepart1.CFrame=dacf
dacf=dacf*cf(0,move,0)
end
if target2~=nil then
refpart2.CFrame=cf(refpart2.Position,target2.Position)
MagicCircle2(BrickColor.new("Cyan"),icepart2.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(0,60,0),15,40,15,-1,20,-1,.1,-5)
icepart2.CFrame=dacf2
dacf2=dacf2*cf(0,move,0)
end
if target3~=nil then
refpart3.CFrame=cf(refpart3.Position,target3.Position)
MagicCircle2(BrickColor.new("Cyan"),icepart3.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(0,60,0),15,40,15,-1,20,-1,.1,-5)
icepart3.CFrame=dacf3
dacf3=dacf3*cf(0,move,0)
end
end
local laser1=part(3,effects,0,0,BrickColor.new("Cyan"),"Effect",vt()) laser1.Anchored=true
local lmsh1=mesh("SpecialMesh",laser1,"Head","nil",vt(0,0,0),vt(10,1,10))
local laser2=part(3,effects,0,0,BrickColor.new("Cyan"),"Effect",vt()) laser2.Anchored=true
local lmsh2=mesh("SpecialMesh",laser2,"Head","nil",vt(0,0,0),vt(10,1,10))
local laser3=part(3,effects,0,0,BrickColor.new("Cyan"),"Effect",vt()) laser3.Anchored=true
local lmsh3=mesh("SpecialMesh",laser3,"Head","nil",vt(0,0,0),vt(10,1,10))
local ref=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(0,0,0)
game:GetService("Debris"):AddItem(ref,1)
local ref1=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref1.Anchored=true
ref1.CFrame=cf(0,0,0)
game:GetService("Debris"):AddItem(ref1,5)
local ice1=0
local ref2=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref2.Anchored=true
ref2.CFrame=cf(0,0,0)
game:GetService("Debris"):AddItem(ref2,5)
local ice2=2
local ref3=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref3.Anchored=true
ref3.CFrame=cf(0,0,0)
game:GetService("Debris"):AddItem(ref3,5)
local ice3=4
for i=0,3,0.05 do
swait()
ice1=ice1+1
ice2=ice2+1
ice3=ice3+1
if target1~=nil then
if i>1 then
refpart1.CFrame=refpart1.CFrame*cf(0,0,-1.5)
end
local cfnew=cf(icepart1.Position,refpart1.Position)
local hit1,pos1=rayCast(icepart1.Position,cfnew.lookVector,9999,Character)
local mag1=(icepart1.Position-pos1).magnitude 
laser1.CFrame=CFrame.new((icepart1.Position+pos1)/2,pos1)*angles(1.57,0,0)
lmsh1.Scale=vt(10,mag1*5,10)
MagicBlock(BrickColor.new("Cyan"),cf(pos1),5,5,5,5,5,5,.1,1)
ref.CFrame=cf(pos1)
MagniDamage(ref,5,8,14,0,"Normal",RootPart,.2,1,math.random(6,8),nil,nil,true)
ref1.CFrame=cf(ref.Position)
if ice1%2==0 then
so("333476017",ref1,.3,1.4)
end
end
if target2~=nil then
if i>1 then
refpart2.CFrame=refpart2.CFrame*cf(0,0,-1.5)
end
local cfnew=cf(icepart2.Position,refpart2.Position)
local hit2,pos2=rayCast(icepart2.Position,cfnew.lookVector,9999,Character)
local mag2=(icepart2.Position-pos2).magnitude 
laser2.CFrame=CFrame.new((icepart2.Position+pos2)/2,pos2)*angles(1.57,0,0)
lmsh2.Scale=vt(10,mag2*5,10)
MagicBlock(BrickColor.new("Cyan"),cf(pos2),5,5,5,5,5,5,.1,1)
ref.CFrame=cf(pos2)
MagniDamage(ref,5,8,14,0,"Normal",RootPart,.2,1,math.random(6,8),nil,nil,true)
ref2.CFrame=cf(ref.Position)
if ice2%2==0 then
so("333476017",ref2,.3,1.4)
end
end
if target3~=nil then
if i>1 then
refpart3.CFrame=refpart3.CFrame*cf(0,0,-1.5)
end
local cfnew=cf(icepart3.Position,refpart3.Position)
local hit3,pos3=rayCast(icepart3.Position,cfnew.lookVector,9999,Character)
local mag3=(icepart3.Position-pos3).magnitude 
laser3.CFrame=CFrame.new((icepart3.Position+pos3)/2,pos3)*angles(1.57,0,0)
lmsh3.Scale=vt(10,mag3*5,10)
MagicBlock(BrickColor.new("Cyan"),cf(pos3),5,5,5,5,5,5,.1,1)
ref.CFrame=cf(pos3)
MagniDamage(ref,5,8,14,0,"Normal",RootPart,.2,1,math.random(6,8),nil,nil,true)
ref3.CFrame=cf(ref.Position)
if ice3%2==0 then
so("333476017",ref3,.3,1.4)
end
end
end
if target1~=nil then
local pos1=laser1.CFrame
local x1=lmsh1.Scale.X local y1=lmsh1.Scale.Y local z1=lmsh1.Scale.Z
MagicHead(BrickColor.new("Cyan"),pos1,x1,y1,z1,1,1,1,.1)
end
if target2~=nil then
local pos2=laser2.CFrame
local x2=lmsh2.Scale.X local y2=lmsh2.Scale.Y local z2=lmsh2.Scale.Z
MagicHead(BrickColor.new("Cyan"),pos2,x2,y2,z2,1,1,1,.1)
end
if target3~=nil then
local pos3=laser3.CFrame
local x3=lmsh3.Scale.X local y3=lmsh3.Scale.Y local z3=lmsh3.Scale.Z
MagicHead(BrickColor.new("Cyan"),pos3,x3,y3,z3,1,1,1,.1)
end
MagicCircle(BrickColor.new("Cyan"),cf(icepart1.Position),100,100,100,5,5,5,.2)
MagicCircle(BrickColor.new("Cyan"),cf(icepart2.Position),100,100,100,5,5,5,.2)
MagicCircle(BrickColor.new("Cyan"),cf(icepart3.Position),100,100,100,5,5,5,.2)
icepart1.Parent=nil
icepart2.Parent=nil
icepart3.Parent=nil
refpart1.Parent=nil
refpart2.Parent=nil
refpart3.Parent=nil
laser1.Parent=nil
laser2.Parent=nil
laser3.Parent=nil
ref.Parent=nil
end

function TriOrbs2()
--for i=1,math.random(1,4) do
local dacf=Torso.CFrame*euler(-1.57+math.random(100,150)/100,0,math.random(-80,80)/100)
local dacf2=Torso.CFrame*euler(-1.57+math.random(100,150)/100,0,math.random(-80,80)/100)
local dacf3=Torso.CFrame*euler(-1.57+math.random(100,150)/100,0,math.random(-80,80)/100)
local icepart1=part(3,effects,0,0,BrickColor.new("Cyan"),"Ice",vt()) icepart1.Anchored=true
i1msh=mesh("SpecialMesh",icepart1,"Sphere","nil",vt(0,0,0),vt(100,100,100))
icepart1.CFrame=dacf
local icepart2=part(3,effects,0,0,BrickColor.new("Cyan"),"Ice",vt()) icepart2.Anchored=true
i2msh=mesh("SpecialMesh",icepart2,"Sphere","nil",vt(0,0,0),vt(100,100,100))
icepart2.CFrame=dacf2
local icepart3=part(3,effects,0,0,BrickColor.new("Cyan"),"Ice",vt()) icepart3.Anchored=true
i3msh=mesh("SpecialMesh",icepart3,"Sphere","nil",vt(0,0,0),vt(100,100,100))
icepart3.CFrame=dacf3
local partic1=icicleparti2:Clone() partic1.Parent=icepart1 partic1.Enabled=true
local partic3=icicleparti2:Clone() partic3.Parent=icepart2 partic3.Enabled=true
local partic5=icicleparti2:Clone() partic5.Parent=icepart3 partic5.Enabled=true
for i=0,1,0.1 do
swait()
icepart1.CFrame=dacf
icepart2.CFrame=dacf2
icepart3.CFrame=dacf3
dacf=dacf*cf(0,math.random(400,800)/10,0)
dacf2=dacf2*cf(0,math.random(400,800)/10,0)
dacf3=dacf3*cf(0,math.random(400,800)/10,0)
end
local target1,distance1=findNearestTorso(Head.Position)
local target2,distance2=findNearestTorso(Head.Position)
local target3,distance3=findNearestTorso(Head.Position)
local test1,dist1=findNearestTorso(Head.Position)
local pos1,pos2,pos3=nil,nil,nil
local refpart1=part(3,effects,0,1,BrickColor.new("Cyan"),"Ref",vt()) refpart1.Anchored=true
local refpart2=part(3,effects,0,1,BrickColor.new("Cyan"),"Ref",vt()) refpart2.Anchored=true
local refpart3=part(3,effects,0,1,BrickColor.new("Cyan"),"Ref",vt()) refpart3.Anchored=true
if target1~=nil then
pos1=target1.Position
refpart1.CFrame=cf(pos1)*cf(math.random(-3000,3000)/100,math.random(-3000,3000)/100,math.random(-3000,3000)/100)
end
if target2~=nil then
pos2=target2.Position
refpart2.CFrame=cf(pos2)*cf(math.random(-3000,3000)/100,math.random(-3000,3000)/100,math.random(-3000,3000)/100)
end
if target3~=nil then
pos3=target3.Position
refpart3.CFrame=cf(pos3)*cf(math.random(-3000,3000)/100,math.random(-3000,3000)/100,math.random(-3000,3000)/100)
end
local move=40
for i=0,1,0.1 do
swait()
move=40-40*i
if target1~=nil then
refpart1.CFrame=cf(refpart1.Position,target1.Position)
MagicCircle2(BrickColor.new("Cyan"),icepart1.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(0,60,0),15,40,15,-1,20,-1,.1,-5)
icepart1.CFrame=dacf
dacf=dacf*cf(0,move,0)
end
if target2~=nil then
refpart2.CFrame=cf(refpart2.Position,target2.Position)
MagicCircle2(BrickColor.new("Cyan"),icepart2.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(0,60,0),15,40,15,-1,20,-1,.1,-5)
icepart2.CFrame=dacf2
dacf2=dacf2*cf(0,move,0)
end
if target3~=nil then
refpart3.CFrame=cf(refpart3.Position,target3.Position)
MagicCircle2(BrickColor.new("Cyan"),icepart3.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(0,60,0),15,40,15,-1,20,-1,.1,-5)
icepart3.CFrame=dacf3
dacf3=dacf3*cf(0,move,0)
end
end
local laser1=part(3,effects,0,0,BrickColor.new("Cyan"),"Effect",vt()) laser1.Anchored=true
local lmsh1=mesh("SpecialMesh",laser1,"Head","nil",vt(0,0,0),vt(10,1,10))
local laser2=part(3,effects,0,0,BrickColor.new("Cyan"),"Effect",vt()) laser2.Anchored=true
local lmsh2=mesh("SpecialMesh",laser2,"Head","nil",vt(0,0,0),vt(10,1,10))
local laser3=part(3,effects,0,0,BrickColor.new("Cyan"),"Effect",vt()) laser3.Anchored=true
local lmsh3=mesh("SpecialMesh",laser3,"Head","nil",vt(0,0,0),vt(10,1,10))
local ref=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(0,0,0)
game:GetService("Debris"):AddItem(ref,1)
local ref1=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref1.Anchored=true
ref1.CFrame=cf(0,0,0)
game:GetService("Debris"):AddItem(ref1,5)
local ice1=0
local ref2=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref2.Anchored=true
ref2.CFrame=cf(0,0,0)
game:GetService("Debris"):AddItem(ref2,5)
local ice2=2
local ref3=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref3.Anchored=true
ref3.CFrame=cf(0,0,0)
game:GetService("Debris"):AddItem(ref3,5)
local ice3=4
for i=0,3,0.1 do
swait()
ice1=ice1+1
ice2=ice2+1
ice3=ice3+1
if target1~=nil then
if i>1 then
refpart1.CFrame=refpart1.CFrame*cf(0,0,-2)
end
local cfnew=cf(icepart1.Position,refpart1.Position)
local hit1,pos1=rayCast(icepart1.Position,cfnew.lookVector,9999,Character)
local mag1=(icepart1.Position-pos1).magnitude 
laser1.CFrame=CFrame.new((icepart1.Position+pos1)/2,pos1)*angles(1.57,0,0)
lmsh1.Scale=vt(10,mag1*5,10)
MagicBlock(BrickColor.new("Cyan"),cf(pos1),5,5,5,5,5,5,.1,1)
ref.CFrame=cf(pos1)
MagniDamage(ref,5,8,14,0,"Normal",RootPart,.2,1,math.random(6,8),nil,nil,true)
ref1.CFrame=cf(ref.Position)
if ice1%2==0 then
so("333476017",ref1,.3,1.4)
end
end
if target2~=nil then
if i>1 then
refpart2.CFrame=refpart2.CFrame*cf(0,0,-2)
end
local cfnew=cf(icepart2.Position,refpart2.Position)
local hit2,pos2=rayCast(icepart2.Position,cfnew.lookVector,9999,Character)
local mag2=(icepart2.Position-pos2).magnitude 
laser2.CFrame=CFrame.new((icepart2.Position+pos2)/2,pos2)*angles(1.57,0,0)
lmsh2.Scale=vt(10,mag2*5,10)
MagicBlock(BrickColor.new("Cyan"),cf(pos2),5,5,5,5,5,5,.1,1)
ref.CFrame=cf(pos2)
MagniDamage(ref,5,8,14,0,"Normal",RootPart,.2,1,math.random(6,8),nil,nil,true)
ref2.CFrame=cf(ref.Position)
if ice2%2==0 then
so("333476017",ref2,.3,1.4)
end
end
if target3~=nil then
if i>1 then
refpart3.CFrame=refpart3.CFrame*cf(0,0,-2)
end
local cfnew=cf(icepart3.Position,refpart3.Position)
local hit3,pos3=rayCast(icepart3.Position,cfnew.lookVector,9999,Character)
local mag3=(icepart3.Position-pos3).magnitude 
laser3.CFrame=CFrame.new((icepart3.Position+pos3)/2,pos3)*angles(1.57,0,0)
lmsh3.Scale=vt(10,mag3*5,10)
MagicBlock(BrickColor.new("Cyan"),cf(pos3),5,5,5,5,5,5,.1,1)
ref.CFrame=cf(pos3)
MagniDamage(ref,5,8,14,0,"Normal",RootPart,.2,1,math.random(6,8),nil,nil,true)
ref3.CFrame=cf(ref.Position)
if ice3%2==0 then
so("333476017",ref3,.3,1.4)
end
end
end
if target1~=nil then
local pos1=laser1.CFrame
local x1=lmsh1.Scale.X local y1=lmsh1.Scale.Y local z1=lmsh1.Scale.Z
MagicHead(BrickColor.new("Cyan"),pos1,x1,y1,z1,1,1,1,.1)
end
if target2~=nil then
local pos2=laser2.CFrame
local x2=lmsh2.Scale.X local y2=lmsh2.Scale.Y local z2=lmsh2.Scale.Z
MagicHead(BrickColor.new("Cyan"),pos2,x2,y2,z2,1,1,1,.1)
end
if target3~=nil then
local pos3=laser3.CFrame
local x3=lmsh3.Scale.X local y3=lmsh3.Scale.Y local z3=lmsh3.Scale.Z
MagicHead(BrickColor.new("Cyan"),pos3,x3,y3,z3,1,1,1,.1)
end
MagicCircle(BrickColor.new("Cyan"),cf(icepart1.Position),100,100,100,5,5,5,.2)
MagicCircle(BrickColor.new("Cyan"),cf(icepart2.Position),100,100,100,5,5,5,.2)
MagicCircle(BrickColor.new("Cyan"),cf(icepart3.Position),100,100,100,5,5,5,.2)
icepart1.Parent=nil
icepart2.Parent=nil
icepart3.Parent=nil
refpart1.Parent=nil
refpart2.Parent=nil
refpart3.Parent=nil
laser1.Parent=nil
laser2.Parent=nil
laser3.Parent=nil
ref.Parent=nil
end

function IceMortar()
for i=1,math.random(2,3) do
local dacf=Torso.CFrame*euler(-1.57+math.random(40,80)/100,0,math.random(-80,80)/100)
local icepart1=part(3,effects,0,0,BrickColor.new("Cyan"),"Ice",vt()) icepart1.Anchored=true
i1msh=mesh("SpecialMesh",icepart1,"Sphere","nil",vt(0,0,0),vt(200,200,200))
icepart1.CFrame=dacf
local inc=100
for i=0,1,0.1 do
swait()
icepart1.CFrame=dacf
dacf=dacf*cf(0,inc,0)
inc=100-100*i
end
local cfinc=99999
MagicHead(BrickColor.new("Cyan"),cf(icepart1.Position)*cf(0,cfinc/10,0),200,cfinc,200,-10,1,-10,.1)
MagicCircle(BrickColor.new("Cyan"),cf(icepart1.Position),200,200,200,-10,0,-10,.1)
icepart1.Transparency=1
so("334325056",icepart1,1,1)
game:GetService("Debris"):AddItem(icepart1,1)
local target1,distance1=findRandomTorso(icepart1.Position)
local test1,dist1=findNearestTorso(Head.Position)
if target1~=nil then
cfda=target1.Position+vt(math.random(-3000,3000)/100,0,math.random(-3000,3000)/100)
local hit2,pos2=rayCast(cfda,(CFrame.new(cfda,cfda - Vector3.new(0,1,0))).lookVector,999,Character)
local d1=part(3,effects,0,.5,BrickColor.new("Medium blue"),"Effect",vt())
d1.Anchored=true
d1.CFrame=cf(pos2)
msh=mesh("CylinderMesh",d1,"nil","nil",vt(0,0,0),vt(200,5,200))
d2=d1:Clone()
d2.Parent=d1
d2.CFrame=cf(d1.Position)
d2.BrickColor=BrickColor.new("White")
d2.Mesh.Scale=vt(0,5,0)
table.insert(Effects,{d1,"SatelliteStrike",d2,d2.Mesh,0})
end
end
end

function TurnSlam()
attack=true
local target,distance=findRandomTorso(RootPart.Position)
if target~=nil or target==nil then
local x,y,z = 0,0,0
for i=0,1,0.02 do
swait()
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-200,0),.05)
wld19.C0=wld19.C0:lerp(euler(-.6,.3,0)*cf(94,-47.5,-2.248),.01)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,.4,-.6),.01)
wld24.C0=wld24.C0:lerp(euler(2.4,.2,0)*cf(0,90.25,0),.01)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.01)

wld33.C0=wld33.C0:lerp(euler(-.6,-.3,0)*cf(-94,-47.5,-2.248),.01)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,-.4,.6),.01)
wld38.C0=wld38.C0:lerp(euler(-2.4,.2,0)*cf(0,-90.25,0),.01)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.01)
if Stun.Value>=StunT.Value then
break
end
end
for i=0,1,0.01 do
swait()
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(-.2,0,0),.02)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-200,0),.05)
wld19.C0=wld19.C0:lerp(euler(.2,.3,0)*cf(94,-47.5,-2.248),.02)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-1,-1.2),.02)
wld24.C0=wld24.C0:lerp(euler(2,-1,0)*cf(0,90.25,0),.02)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0)*euler(.5,0,1),.02)

wld33.C0=wld33.C0:lerp(euler(.2,-.3,0)*cf(-94,-47.5,-2.248),.02)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,1,1.2),.02)
wld38.C0=wld38.C0:lerp(euler(-2,-1,0)*cf(0,-90.25,0),.02)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0)*euler(-.5,0,-1),.02)
if Stun.Value>=StunT.Value then
break
end
end
shockwave=false
ref1a=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref1a.Anchored=true
ref1a.CFrame=cf(0,-50,0)
game:GetService("Debris"):AddItem(ref1a,3)
ref2a=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref2a.Anchored=true
ref2a.CFrame=cf(0,-50,0)
game:GetService("Debris"):AddItem(ref2a,3)
incda=80
for i=0,3,0.03 do
swait()
dan=.1
if shockwave==true then
incda=incda+10
if i<1.5 then
MagniDamage(ref1a,incda,10,15,math.random(0,0),"Knockdown2",RootPart,1.5,1,math.random(8,10),nil,nil,false,"Movement",.1,300)
MagniDamage(ref2a,incda,10,15,math.random(0,0),"Knockdown2",RootPart,1.5,1,math.random(8,10),nil,nil,false,"Movement",.1,300)
end
end
if i>1 then
dan=.05
if shockwave==false then
for i=1,2 do
so("157878578",ref1a,1,0.4) 
so("2101148",ref1a,1,0.6) 
end
for i=1,2 do
so("157878578",ref2a,1,0.4) 
so("2101148",ref2a,1,0.6) 
end
shockwave=true
refcam=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
refcam.Anchored=true
refcam.CFrame=cf(prt31.Position)
refcam.CFrame=refcam.CFrame:lerp(cf(prt45.Position),.5)
game:GetService("Debris"):AddItem(refcam,1)
hitfl1,posfl1=rayCast(prt31.Position,(CFrame.new(prt31.Position,prt31.Position - Vector3.new(0,1,0))).lookVector,50,Character)
MagicRing(BrickColor.new("Pearl"),cf(posfl1)*euler(1.57,0,0),160,160,1,20,20,1,.1)
ref1a.CFrame=cf(posfl1)
hitfl2,posfl2=rayCast(prt45.Position,(CFrame.new(prt45.Position,prt45.Position - Vector3.new(0,1,0))).lookVector,50,Character)
MagicRing(BrickColor.new("Pearl"),cf(posfl2)*euler(1.57,0,0),160,160,1,20,20,1,.1)
ref2a.CFrame=cf(posfl2)
end
else
MagniDamage(prt31,90,50,70,math.random(40,60),"Knockdown2",RootPart,2,1,math.random(25,40),nil,nil,false)
MagniDamage(prt45,90,50,70,math.random(40,60),"Knockdown2",RootPart,2,1,math.random(25,40),nil,nil,false)
end
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.4,0,0),dan)
wld19.C0=wld19.C0:lerp(euler(-.6,.3,0)*cf(94,-47.5,-2.248),dan)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-1,-1.2),dan)
wld24.C0=wld24.C0:lerp(euler(1.2,-1,0)*cf(0,90.25,0),dan)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0)*euler(-.5,0,0)*euler(0,-.6,0)*euler(.3,0,0),dan)

wld33.C0=wld33.C0:lerp(euler(-.6,-.3,0)*cf(-94,-47.5,-2.248),dan)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,1,1.2),dan)
wld38.C0=wld38.C0:lerp(euler(-1.2,-1,0)*cf(0,-90.25,0),dan)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0)*euler(.5,0,0)*euler(0,-.6,0)*euler(-.3,0,0),dan)
if Stun.Value>=StunT.Value then
break
end
end
meleecooldown=0
mcdadd=.05
if CurrentHealth<=1500 then
mcdadd=1
end
--mcdadd=1
end
attack=false
end

function GrandPunch()
attack=true
local target,distance=findRandomTorso(RootPart.Position)
if target~=nil or target==nil then
local x,y,z = 0,0,0
for i=0,1,0.01 do
swait()
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.6,.5,0),.02)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-200,0)*euler(0,.5,0),.02)
wld19.C0=wld19.C0:lerp(euler(-.8,.3,0)*cf(94,-47.5,-2.248),.02)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,.3,-.4)*euler(0,-.2,0),.02)
wld24.C0=wld24.C0:lerp(euler(2,0,0)*euler(0,0,0)*cf(0,90.25,0),.02)
wld29.C0=wld29.C0:lerp(euler(0,.5,0)*cf(0,125,0),.02)

wld33.C0=wld33.C0:lerp(euler(-.4,-.8,0)*cf(-94,-47.5,-2.248),.02)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,.2,.2)*euler(0,0,0),.02)
wld38.C0=wld38.C0:lerp(euler(-1,-.4,0)*cf(0,-90.25,0),.02)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.02)
if Stun.Value>=StunT.Value then
break
end
end
da=0
local oldpos=prt31.Position
for i=0,1.5,0.01 do
swait()
da=da+1
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.6,-.5,0),.04)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-200,0)*euler(0,-.5,0),.04)
wld19.C0=wld19.C0:lerp(euler(-.8,.6,0)*cf(94,-47.5,-2.248),.04)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-1.2,-.2)*euler(0,-.2,0),.04)
--wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-1.2,-.8)*euler(0,-.2,0),.1)
wld24.C0=wld24.C0:lerp(euler(.8,0,0)*euler(0,0,0)*cf(0,90.25,0),.04)
wld29.C0=wld29.C0:lerp(euler(0,3,0)*cf(0,125,0),.04)

wld33.C0=wld33.C0:lerp(euler(-.4,-.1,0)*cf(-94,-47.5,-2.248),.04)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,-.2,.2)*euler(0,0,0),.04)
wld38.C0=wld38.C0:lerp(euler(-1.8,-.4,0)*cf(0,-90.25,0),.04)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.04)
if i<.5 then
if da%4==0 then
MagniDamage(prt31,95,15,20,math.random(60,100),"Knockdown2",prt31,.5,1,math.random(25,40),nil,nil,false)
MagicWave(BrickColor.new("Cyan"),cf(prt31.Position,oldpos)*euler(-1.57,0,0),100,100,100,10,10,10,.1)
oldpos=prt31.Position
end
end
if Stun.Value>=StunT.Value then
break
end
end
meleecooldown=0
mcdadd=.1
if CurrentHealth<=1500 then
mcdadd=1
end
--mcdadd=50
end
attack=false
end

--[[ punch
wld19.C0=wld19.C0:lerp(euler(-.4,-.3,0)*cf(94,-47.5,-2.248),.1)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(-.8,0,0)*euler(0,-.2,0),.1)
wld24.C0=wld24.C0:lerp(euler(1.2,.8,0)*cf(0,90.25,0),.1)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.1)
]]

function FrostSlam()
attack=true
local target,distance=findRandomTorso(RootPart.Position)
if target~=nil or target==nil then
local x,y,z = 0,0,0
for i=0,1,0.008 do
swait()
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.6,0,0)*euler(0,.3,-.2),.015)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-200,0)*euler(0,.3,0),.015)
wld19.C0=wld19.C0:lerp(euler(-.4,-.3,0)*cf(94,-47.5,-2.248),.015)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(-1,0,0)*euler(0,-.4,0)*euler(0,0,-.4),.015)
wld24.C0=wld24.C0:lerp(euler(.8,.8,0)*euler(0,-.2,0)*cf(0,90.25,0),.015)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.015)

wld33.C0=wld33.C0:lerp(euler(.4,-.3,0)*cf(-94,-47.5,-2.248),.015)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,0,1)*euler(.5,0,0)*euler(0,.2,0),.015)
wld38.C0=wld38.C0:lerp(euler(-1,-.2,0)*cf(0,-90.25,0),.015)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.015)
if Stun.Value>=StunT.Value then
break
end
end
da=0
local oldpos=prt45.Position
shockwave=false
ref2a=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
ref2a.Anchored=true
ref2a.CFrame=cf(0,-50,0)
game:GetService("Debris"):AddItem(ref2a,3)
incda=80
for i=0,10,0.02 do
swait()
da=da+1
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.6,0,0)*euler(0,.3,-.2),.025)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-190,0)*euler(0,.3,0)*euler(-.1,0,0),.025)
wld19.C0=wld19.C0:lerp(euler(-.4,-.3,0)*cf(94,-47.5,-2.248),.025)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(-1,0,0)*euler(0,-.4,0)*euler(0,0,0),.025)
wld24.C0=wld24.C0:lerp(euler(1,0,0)*euler(0,.3,0)*cf(0,90.25,0),.025)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.025)

wld33.C0=wld33.C0:lerp(euler(-.2,-.3,0)*cf(-94,-47.5,-2.248),.025)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,0,.6)*euler(0,1.4,0)*euler(0,0,0),.025)
wld38.C0=wld38.C0:lerp(euler(-.5,0,0)*euler(0,0,-.2)*cf(0,-90.25,0),.025)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.025)
if i>1 and i<8 then
if da%10==0 then
local do1=0
local do2=0
local rand1=math.random(1,2)
if rand1==1 then do1=math.random(5000,15000)/100
elseif rand1==2 then do1=math.random(-15000,-5000)/100 end
local rand2=math.random(1,2)
if rand2==1 then do2=math.random(5000,15000)/100
elseif rand2==2 then do2=math.random(-15000,-5000)/100 end
cfda=ref2a.Position+vt(do1,10,do2)
local hit2,pos2=rayCast(cfda,(CFrame.new(cfda,cfda - Vector3.new(0,1,0))).lookVector,999,Character)
local d1=part(3,effects,0,.5,BrickColor.new("Cyan"),"Effect",vt())
d1.Anchored=true
d1.CFrame=cf(pos2)
msh=mesh("CylinderMesh",d1,"nil","nil",vt(0,0,0),vt(300,5,300))
d2=d1:Clone()
d2.Parent=d1
d2.CFrame=cf(d1.Position)
d2.BrickColor=BrickColor.new("White")
d2.Mesh.Scale=vt(0,5,0)
table.insert(Effects,{d1,"SatelliteStrike2",d2,d2.Mesh,0})
end
end
if i>1 and i<1.3 then
incda=incda+10
MagniDamage(ref2a,incda,6,8,math.random(0,0),"Knockdown2",RootPart,1.5,1,math.random(8,10),nil,nil,false,"Movement",.1,300)
end
if i<1 then
if da%4==0 then
MagniDamage(prt45,95,15,20,math.random(40,60),"Knockdown2",prt45,.5,1,math.random(25,40),nil,nil,false)
MagicWave(BrickColor.new("Cyan"),cf(prt45.Position,oldpos)*euler(-1.57,0,0),100,100,100,10,10,10,.1)
oldpos=prt45.Position
end
else
if shockwave==false then
shockwave=true
so("157878578",ref2a,1,0.4) 
so("2101148",ref2a,1,0.6) 
hitfl2,posfl2=rayCast(prt45.Position,(CFrame.new(prt45.Position,prt45.Position - Vector3.new(0,1,0))).lookVector,50,Character)
refaa=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
refaa.Anchored=true
refaa.CFrame=cf(posfl2)
game:GetService("Debris"):AddItem(refaa,1)
MagicRing(BrickColor.new("Pearl"),cf(posfl2)*euler(1.57,0,0),160,160,1,20,20,1,.1)
ref2a.CFrame=cf(posfl2)
end
end
if Stun.Value>=StunT.Value then
break
end
end
--print(incda)
meleecooldown=0
mcdadd=.08
if CurrentHealth<=1500 then
mcdadd=1
end
end
attack=false
end

function StunAnim()
attack=true
for i=0,1,0.06 do
swait()
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.7,0,0),.06)
RootJoint.C0=RootJoint.C0:lerp(euler(-.2,0,0)*cf(-1.749,-180,0),.06)
wld19.C0=wld19.C0:lerp(euler(-.8,.3,0)*cf(94,-47.5,-2.248),.06)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,0,.6)*euler(0,-.2,0)*euler(-.5,0,0),.06)
wld24.C0=wld24.C0:lerp(euler(1,.1,0)*cf(0,90.25,0),.06)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.06)

wld33.C0=wld33.C0:lerp(euler(-.8,-.3,0)*cf(-94,-47.5,-2.248),.06)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,0,-.6)*euler(0,.2,0)*euler(-.5,0,0),.06)
wld38.C0=wld38.C0:lerp(euler(-1,.1,0)*cf(0,-90.25,0),.06)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.06)
if Humanoid.Health<=0 then
break
end
end
for i=0,1,0.04 do
swait()
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.2,0,0)*euler(0,0,.2),.07)
RootJoint.C0=RootJoint.C0:lerp(euler(-.5,.2,0)*cf(-1.749,-140,0),.07)
wld19.C0=wld19.C0:lerp(euler(-.8,.3,0)*cf(94,-47.5,-2.248),.07)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,0,.8)*euler(0,.2,0)*euler(-.4,0,0),.07)
wld24.C0=wld24.C0:lerp(euler(1.2,.3,0)*cf(0,90.25,0),.07)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.07)

wld33.C0=wld33.C0:lerp(euler(-.8,-.3,0)*cf(-94,-47.5,-2.248),.07)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,0,.6)*euler(0,.2,0)*euler(.7,0,0),.07)
wld38.C0=wld38.C0:lerp(euler(-1.4,.1,0)*cf(0,-90.25,0),.07)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.07)
if Humanoid.Health<=0 then
break
end
end
for i=0,1,0.01 do
swait()
msh3.Scale=vt(4,8.5-8*i,8.5)
msh5.Scale=vt(4,8.5-8*i,8.5)
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.6,0,0)*euler(0,1.5,0),.02)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-100,0)*euler(-1.3,0,0),.05)
wld19.C0=wld19.C0:lerp(euler(-.8,.3,0)*cf(94,-47.5,-2.248),.05)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,0,1)*euler(0,.2,0)*euler(-.1,0,0),.05)
wld24.C0=wld24.C0:lerp(euler(.5,2.2,0)*cf(0,90.25,0),.05)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.05)

wld33.C0=wld33.C0:lerp(euler(-.8,-.3,0)*cf(-94,-47.5,-2.248),.05)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,0,.6)*euler(0,-.6,0)*euler(1.6,0,0),.05)
wld38.C0=wld38.C0:lerp(euler(-1.6,.1,0)*cf(0,-90.25,0),.05)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.05)
if Humanoid.Health<=0 then
break
end
end
msh3.Scale=vt(4,.5,8.5)
msh5.Scale=vt(4,.5,8.5)
--swait(100)
local numb=1300
if CurrentHealth<=1500 then
numb=1000
end
local removedeb=8
for i=0,numb do
swait()
removedeb=removedeb+1
if removedeb>8 then
removedeb=0
for _,c in pairs(Character:children()) do
if c.Name=="DebounceHit" then c.Parent=nil end
end
end
if Humanoid.Health<=0 then
break
end
end
for i=0,1,0.1 do
swait()
msh3.Scale=vt(4,.5+8*i,8.5)
msh5.Scale=vt(4,.5+8*i,8.5)
end
msh3.Scale=vt(4,8.5,8.5)
msh5.Scale=vt(4,8.5,8.5)
for i=0,1,0.02 do
swait()
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-100,0)*euler(-1.3,0,0),.05)
wld19.C0=wld19.C0:lerp(euler(-.8,.3,0)*cf(94,-47.5,-2.248),.05)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,0,.1)*euler(0,.4,0)*euler(1,0,0),.05)
wld24.C0=wld24.C0:lerp(euler(1.6,.1,0)*cf(0,90.25,0),.05)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.05)

wld33.C0=wld33.C0:lerp(euler(-.8,-.3,0)*cf(-94,-47.5,-2.248),.05)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,0,-.1)*euler(0,-.4,0)*euler(1,0,0),.05)
wld38.C0=wld38.C0:lerp(euler(-1.6,.1,0)*cf(0,-90.25,0),.05)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.05)
if Humanoid.Health<=0 then
break
end
end
for i=0,1,0.03 do
swait()
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-180,0)*euler(-.6,0,0),.06)
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.6,0,0),.06)
wld19.C0=wld19.C0:lerp(euler(.2,.3,0)*cf(94,-47.5,-2.248),.06)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,0,-.4)*euler(0,-.2,0)*euler(-.3,0,0),.06)
wld24.C0=wld24.C0:lerp(euler(1.2,.1,0)*cf(0,90.25,0),.06)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.06)

wld33.C0=wld33.C0:lerp(euler(.2,-.3,0)*cf(-94,-47.5,-2.248),.06)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,0,.4)*euler(0,.2,0)*euler(-.3,0,0),.06)
wld38.C0=wld38.C0:lerp(euler(-1.2,.1,0)*cf(0,-90.25,0),.06)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.06)
if Humanoid.Health<=0 then
break
end
end
for i=0,1,0.008 do
swait()
if i<.4 then
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(-.1,0,0),.06)
else
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.6,0,0),.06)
end
RootJoint.C0=RootJoint.C0:lerp(cf(5,-210,0)*euler(.1,0,0),.06)
wld19.C0=wld19.C0:lerp(euler(.2,.3,0)*cf(94,-47.5,-2.248),.06)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,0,-.8)*euler(0,-.6,0)*euler(-.5,0,0),.06)
wld24.C0=wld24.C0:lerp(euler(.6,.3,0)*cf(0,90.25,0),.06)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.06)

wld33.C0=wld33.C0:lerp(euler(.2,-.3,0)*cf(-94,-47.5,-2.248),.06)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,0,.8)*euler(0,.6,0)*euler(-.5,0,0),.06)
wld38.C0=wld38.C0:lerp(euler(-.6,.3,0)*cf(0,-90.25,0),.06)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.06)
if Humanoid.Health<=0 then
break
end
end
attack=false
end

function SummonCrystals()
attack=true
for i=0,1,0.01 do
swait()
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.5,0,0),.03)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-210,0)*euler(.05,0,0),.03)
--[[wld19.C0=wld19.C0:lerp(euler(-.4,.3,0)*cf(94,-47.5,-2.248),.1)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-.1,-.6)*euler(0,-.4,0),.1)
wld24.C0=wld24.C0:lerp(euler(.8,.1,0)*cf(0,90.25,0),.1)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.1)

wld33.C0=wld33.C0:lerp(euler(-.4,-.3,0)*cf(-94,-47.5,-2.248),.1)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,.1,.6)*euler(0,.4,0),.1)
wld38.C0=wld38.C0:lerp(euler(-.8,.1,0)*cf(0,-90.25,0),.1)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.1)]]
wld19.C0=wld19.C0:lerp(euler(-.4,.3,0)*cf(94,-47.5,-2.248),.03)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-.2,-.8)*euler(.2,0,0),.03)
wld24.C0=wld24.C0:lerp(euler(1.8,-.2,0)*cf(0,90.25,0),.03)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.03)

wld33.C0=wld33.C0:lerp(euler(-.4,-.3,0)*cf(-94,-47.5,-2.248),.03)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,.2,.8)*euler(.2,0,0),.03)
wld38.C0=wld38.C0:lerp(euler(-1.8,-.2,0)*cf(0,-90.25,0),.03)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.03)
end
for i=0,1,0.04 do
swait()
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.6,0,0),.05)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-200,0)*euler(-.05,0,0),.05)
wld19.C0=wld19.C0:lerp(euler(-.8,.3,0)*cf(94,-47.5,-2.248),.05)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-.2,-.8)*euler(.2,0,0)*euler(0,-.2,0),.05)
wld24.C0=wld24.C0:lerp(euler(1.4,-.2,0)*cf(0,90.25,0),.05)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.05)

wld33.C0=wld33.C0:lerp(euler(-.8,-.3,0)*cf(-94,-47.5,-2.248),.05)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,.2,.8)*euler(.2,0,0)*euler(0,.2,0),.05)
wld38.C0=wld38.C0:lerp(euler(-1.4,-.2,0)*cf(0,-90.25,0),.05)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.05)
end
Cryst1.Parent=workspace
C1Head.CFrame=RootPart.CFrame*cf(math.random(-2000,2000)/100,0,math.random(-2000,2000)/100)
C1Torso.CFrame=C1Head.CFrame
C1Neck.Parent=C1Head
C1S.Parent=Cryst1
C1Hum.Parent=Cryst1
C1Hum.MaxHealth=200
C1Hum.Health=200
C1Hum.Parent=Cryst1
C1Hum:TakeDamage(1)
C1a=true
for _,c in pairs(Cryst1:children()) do
if c.Name=="DebounceHit" then c.Parent=nil end
end
Cryst2.Parent=workspace
C2Head.CFrame=RootPart.CFrame*cf(math.random(-2000,2000)/100,0,math.random(-2000,2000)/100)
C2Torso.CFrame=C2Head.CFrame
C2Neck.Parent=C2Head
C2S.Parent=Cryst2
C2Hum.Parent=Cryst2
C2Hum.MaxHealth=200
C2Hum.Health=200
C2Hum.Parent=Cryst2
C2Hum:TakeDamage(1)
C2a=true
for _,c in pairs(Cryst2:children()) do
if c.Name=="DebounceHit" then c.Parent=nil end
end
Cryst3.Parent=workspace
C3Head.CFrame=RootPart.CFrame*cf(math.random(-2000,2000)/100,0,math.random(-2000,2000)/100)
C3Torso.CFrame=C3Head.CFrame
C3Neck.Parent=C3Head
C3S.Parent=Cryst3
C3Hum.Parent=Cryst3
C3Hum.MaxHealth=200
C3Hum.Health=200
C3Hum.Parent=Cryst3
C3Hum:TakeDamage(1)
C3a=true
for _,c in pairs(Cryst3:children()) do
if c.Name=="DebounceHit" then c.Parent=nil end
end
Cryst4.Parent=workspace
C4Head.CFrame=RootPart.CFrame*cf(math.random(-2000,2000)/100,0,math.random(-2000,2000)/100)
C4Torso.CFrame=C4Head.CFrame
C4Neck.Parent=C4Head
C4S.Parent=Cryst4
C4Hum.Parent=Cryst4
C4Hum.MaxHealth=200
C4Hum.Health=200
C4Hum.Parent=Cryst4
C4Hum:TakeDamage(1)
C4a=true
for _,c in pairs(Cryst4:children()) do
if c.Name=="DebounceHit" then c.Parent=nil end
end
MagicCircle(BrickColor.new("Cyan"),cf(C1Head.Position),150,400,150,5,10,5,.05)
MagicCircle(BrickColor.new("Cyan"),cf(C2Head.Position),150,400,150,5,10,5,.05)
MagicCircle(BrickColor.new("Cyan"),cf(C3Head.Position),150,400,150,5,10,5,.05)
MagicCircle(BrickColor.new("Cyan"),cf(C4Head.Position),150,400,150,5,10,5,.05)
crystals=true
if CurrentHealth>1500 then
else
end
swait(50)
attack=false
end

function HeavySlam()
attack=true
for i=0,1,0.05 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,3,0),.1)
wld2.C0=clerp(wld2.C0,euler(0,0,0)*cf(0,1,0),.1)
Neck.C0=clerp(Neck.C0,necko*euler(0,1,0)*euler(-.3,0,0),.1)
RootJoint.C0=clerp(RootJoint.C0,cf(0,-2,0)*euler(0,1,0),.1)
RW.C0=clerp(RW.C0,cf(4.5,1.5,0)*euler(2,0,.3),.1)
RW.C1=clerp(LW.C1,cf(0,1.5,0)*euler(0,0,0),.1)
LW.C0=clerp(LW.C0,cf(-4.5,1.5,0)*euler(-.2,0,-.6),.1)
LW.C1=clerp(LW.C1,cf(0,1.5,0)*euler(0,0,0),.1)
LH.C0=clerp(LH.C0,cf(-1.5,-3,0)*euler(0,1,0)*euler(.1,0,0),.1)
RH.C0=clerp(RH.C0,cf(1.5,-3,0)*euler(0,-1,0)*euler(.1,0,0),.1)
end
for i=0,1,0.04 do
swait()
wld1.C0=clerp(wld1.C0,euler(1,0,0)*cf(0,3,0),.1)
wld2.C0=clerp(wld2.C0,euler(0,0,0)*cf(0,1,0),.1)
Neck.C0=clerp(Neck.C0,necko*euler(0,-.2,0)*euler(-.4,0,0),.1)
RootJoint.C0=clerp(RootJoint.C0,cf(0,-2,0)*euler(0,-.2,0),.1)
RW.C0=clerp(RW.C0,cf(4.5,1.5,0)*euler(3.5,0,0)*euler(0,.2,0),.1)
RW.C1=clerp(LW.C1,cf(0,1.5,0)*euler(0,0,0),.1)
LW.C0=clerp(LW.C0,cf(-4.5,1.5,0)*euler(-.4,0,-.6),.1)
LW.C1=clerp(LW.C1,cf(0,1.5,0)*euler(0,0,0),.1)
LH.C0=clerp(LH.C0,cf(-1.5,-3,0)*euler(0,0,0)*euler(-.3,0,0),.1)
RH.C0=clerp(RH.C0,cf(1.5,-3,-1)*euler(0,0,0)*euler(-.1,0,0),.1)
end
so("161006212",prt9,1,.6)
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(50,70),"Knockdown2",RootPart,2,1,math.random(20,40),nil,true) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(2,20,8)
hitboxCF=prt9.CFrame*cf(0,0,0)
hitbox.CFrame=hitboxCF
blcf=nil
scfr=nil
for i=0,1,0.02 do
swait()
--[[local blcf = prt9.CFrame*cf(0,0,0)
if scfr and (prt9.Position-scfr.p).magnitude > .1 then
local h = 14
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end]]
hitboxCF=prt9.CFrame*cf(0,0,0)
hitbox.CFrame=hitboxCF
wld1.C0=clerp(wld1.C0,euler(2.5,0,0)*cf(0,3,0),.4)
wld2.C0=clerp(wld2.C0,euler(0,0,0)*cf(0,1,0),.4)
Neck.C0=clerp(Neck.C0,necko*euler(0,0,0)*euler(-.6,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,cf(0,0,0)*euler(0,0,0),.2)
RW.C0=clerp(RW.C0,cf(2.5,1.5,-1)*euler(.5,0,-.2)*euler(0,0,0),.4)
RW.C1=clerp(LW.C1,cf(0,1.5,0)*euler(0,0,0),.2)
LW.C0=clerp(LW.C0,cf(-4.5,1.5,0)*euler(-.8,0,-.6),.2)
LW.C1=clerp(LW.C1,cf(0,1.5,0)*euler(0,0,0),.2)
LH.C0=clerp(LH.C0,cf(-1.5,-3,0)*euler(0,0,0)*euler(-1,0,0),.2)
RH.C0=clerp(RH.C0,cf(1.5,-1,-1.5)*euler(0,0,0)*euler(-.1,0,0),.2)
if i>=.16 and i<=.17 then
hit,pos=rayCast(prt9.Position,(CFrame.new(prt9.Position,prt9.Position - Vector3.new(0,1,0))).lookVector,10,Character)
if hit~=nil then
ref=part(3,workspace,0,1,BrickColor.new("Black"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
so("199145477",prt9,1,.8) 
game:GetService("Debris"):AddItem(ref,1)
--MagniDamage(ref,30,1,5,math.random(50,70),"Knockdown2",false,"Movement",.2,400,math.random(90,100))
MagniDamage(ref,30,1,5,math.random(200,400),"Knockdown2",false,"Movement",.2,200,math.random(90,100))
MagicWave(BrickColor.new("Bright stone grey"),cf(ref.Position),1,1,1,2,2,2,.05)
end
end
end
con1:disconnect()
hitbox.Parent=nil
attack=false
end

local magref=part(3,effects,0,.5,BrickColor.new("Black"),"Effect",vt())
magref.Anchored=true
magref.CFrame=cf(0,0,0)
magref.Parent=nil
local mrmsh=mesh("SpecialMesh",magref,"Sphere","nil",vt(0,0,0),vt(1,1,1))

function MagniDamage(Part,magni,minim,maxim,knockback,Type,Property,Delay,KnockbackType,incstun,stagger,staghit,ranged,DecreaseState,DecreaseAmount,Duration)
--magref.CFrame=cf(Part.Position)
--mrmsh.Scale=vt(magni*10,magni*10,magni*10)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=nil
for _,d in pairs(c:children()) do
--if d.Name=="Torso" or d.Name=="Head" or d.Name=="HumanoidRootPart" or d.Name=="HitPart" then
if d.className=="Part" then
head=d
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Character.Name and c.Name~="Crystal" then 
if stun==nil then
stun=math.random(5,10)
end
local Rang=nil
if Ranged==false then
Rang=true
end
local stag=nil
if shbash==true then
stag=true
end
Damagefunc(head,minim,maxim,knockback,Type,Property,Delay,KnockbackType,incstun,stagger,staghit,ranged,DecreaseState,DecreaseAmount,Duration)
--Damagefunc(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,incstun,stagger,staghit,DecreaseState,DecreaseAmount,Duration)
end
end
end
end
end
end
end

function DecreaseStat(Model,Stat,Amount,Duration)
if Model:findFirstChild("Stats")~=nil then
if Model.Stats[Stat]~=nil then
Model.Stats[Stat].Value=Model.Stats[Stat].Value-Amount
d=Instance.new("NumberValue",Model.Stats.Decrease)
dur=Instance.new("NumberValue",d)
dur.Name="Duration"
dur.Value=Duration
game:GetService("Debris"):AddItem(d,40)
if Stat=="Damage" then
d.Name="DecreaseAtk"
elseif Stat=="Defense" then
d.Name="DecreaseDef"
elseif Stat=="Movement" then
d.Name="DecreaseMvmt"
end
if Model:findFirstChild("Torso")~=nil then
display=""
if Stat=="Damage" then
if Amount>0 then
display="-Damage"
else
display="+Damage"
end
elseif Stat=="Defense" then
if Amount>0 then
display="-Defense"
else
display="+Defense"
end
elseif Stat=="Movement" then
if Amount>0 then
display="-Movement"
else
display="+Movement"
end
end
showDamage(Model,display,"Debuff")
end
d.Value=Amount
table.insert(Effects,{Model,"DecreaseStat",Stat,Amount,Duration,d})
end
end
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function findNearestTorso(pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = 10000
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2.Name~=Character.Name) and (temp2.Name~="Crystal") then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					local dohit=true
					if temp2:findFirstChild("Stats")~=nil then if temp2.Stats:findFirstChild("Boss")~=nil then if temp2.Stats.Boss.Value==true then dohit=false end end end
					if temp2:findFirstChild("Alive")==nil then dohit=false end
					if dohit==true then
					torso = temp
					dist = (temp.Position - pos).magnitude
					end
				end
			end
		end
	end
	return torso,dist
end

function findRandomTorso(pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = 10000
	local temp = nil
	local human = nil
	local temp2 = nil
	local list2 = {}
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2.Name~=Character.Name) and (temp2.Name~="Crystal") then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if pos.magnitude < dist then
					local dohit=true
					if temp2:findFirstChild("Stats")~=nil then if temp2.Stats:findFirstChild("Boss")~=nil then if temp2.Stats.Boss.Value==true then dohit=false end end end
					if temp2:findFirstChild("Alive")==nil then dohit=false end
					if dohit==true then
					torso = temp
					table.insert(list2,temp)
					end
				end
			end
		end
	end
	if #list2>0 then
	rand=math.random(1,#list2)
	return list2[rand],dist
	else
	return nil,dist
	end
end

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,incstun,stagger,staghit,ranged,DecreaseState,DecreaseAmount,Duration,Sound)
if hit.Parent==nil then
return
end
h=hit.Parent:FindFirstChild("Humanoid")
--[[for _,v in pairs(hit.Parent:children()) do
if v:IsA("Humanoid") then
h=v
end
end]]
--[[if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
h=hit.Parent.Parent:FindFirstChild("Humanoid")
end]]
if hit.Parent.className=="Hat" then
hit=hit.Parent.Parent:findFirstChild("Head")
end
if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent.Name~="Crystal" and hit.Parent:FindFirstChild("Torso")~=nil then
if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
if Sound=="GreatHit" then
so("200632875",hit,1,1)
end
game:GetService("Debris"):AddItem(c,.5)
minim=minim*Atk.Value
maxim=maxim*Atk.Value
Damage=0
if minim==maxim or minim>maxim then
Damage=maxim
else
Damage=math.random(minim,maxim)
end
blocked=false
enblock=nil
Stats=hit.Parent:findFirstChild("Stats")
if Stats~=nil then
enblock=Stats:findFirstChild("Block")
if enblock~=nil then
if enblock.Value==true then
blocked=true
end
end
if Stats:findFirstChild("Defense")~=nil then
Damage=Damage/(Stats.Defense.Value)
if Damage<=3 and (ranged==false or ranged==nil) and blocked~=true then
hitnum=math.random(1,5)
if hitnum==1 then so("199149321",hit,1,.7)
elseif hitnum==2 then so("199149338",hit,1,.7)
elseif hitnum==3 then so("199149367",hit,1,.7)
elseif hitnum==4 then so("199149409",hit,1,.7)
elseif hitnum==5 then so("199149452",hit,1,.7)
end
elseif ranged==false or ranged==nil and blocked~=true then
hitnum=math.random(1,6)
if hitnum==1 then so("199149137",hit,1,.7)
elseif hitnum==2 then so("199149186",hit,1,.7)
elseif hitnum==3 then so("199149221",hit,1,.7)
elseif hitnum==4 then so("199149235",hit,1,.7)
elseif hitnum==5 then so("199149269",hit,1,.7)
elseif hitnum==6 then so("199149297",hit,1,.7)
end
end
end
if Stats:findFirstChild("Stun")~=nil then
if blocked==true then
incstun=math.floor(incstun/2)
end
Stats.Stun.Value=Stats.Stun.Value+incstun
end
if Stats:findFirstChild("Stagger")~=nil then
if stagger==true then
Stats.Stagger.Value=true
end
end
end
if blocked==true then
showDamage(hit.Parent,"Block","Damage")
hitnum=math.random(1,2)
if hitnum==1 then so("199148933",hit,1,1)
elseif hitnum==2 then so("199148947",hit,1,1)
end
enblock.Value=false
else
Damage=math.floor(Damage)
h:TakeDamage(Damage)
--[[coroutine.resume(coroutine.create(function(Hum,Dam)
damageFunc:InvokeServer(nil,h,Damage)
--print(Dam)
end),h,Damage)]]
showDamage(hit.Parent,Damage,"Damage")
if DecreaseState~=nil then
if DecreaseState=="Shatter" then
DecreaseStat(hit.Parent,"Movement",DecreaseAmount,Duration)
DecreaseStat(hit.Parent,"Damage",DecreaseAmount,Duration)
else
DecreaseStat(hit.Parent,DecreaseState,DecreaseAmount,Duration)
end
end
if Type=="Knockdown" then
hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=cf(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
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
elseif Type=="Shatter" then
for i=1,10 do
BreakEffect(BrickColor.new("Cyan"),hit.CFrame,math.random(20,80)/100,math.random(2,10),math.random(20,80)/100)
end
elseif Type=="Knockdown2" then
hum=hit.Parent.Humanoid
local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
elseif Type=="Normal" then
vp=Instance.new("BodyVelocity")
vp.P=500
vp.maxForce=Vector3.new(math.huge,0,math.huge)
if KnockbackType==1 then
vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
elseif KnockbackType==2 then
vp.velocity=Property.CFrame.lookVector*knockback
end
game:GetService("Debris"):AddItem(vp,.5)
if knockback>0 then
vp.Parent=hit.Parent.Torso
end
end
end
debounce=Instance.new("BoolValue")
debounce.Name="DebounceHit"
debounce.Parent=hit.Parent
debounce.Value=true
game:GetService("Debris"):AddItem(debounce,Delay)
CRIT=false
end
end

showDamage=function(Char,Dealt,Type)
m=Instance.new("Model")
m.Name="Effect"
c=Instance.new("Part")
c.Transparency=1
c.Name="Head"
c.TopSurface=0
c.BottomSurface=0
c.formFactor="Plate"
c.Size=Vector3.new(1,.4,1)
b=Instance.new("BillboardGui",c)
b.Size=UDim2.new(5,0,5,0)
b.AlwaysOnTop=true
damgui=gui("TextLabel",b,tostring(Dealt),1,Color3.new(0,0,0),UDim2.new(0,0,0,0),UDim2.new(1,0,1,0))
if Type=="Damage" then
damgui.Font="SourceSans"
if Dealt=="Block" then
damgui.TextColor3=BrickColor.new("Bright blue").Color
elseif Dealt<3 then
damgui.TextColor3=BrickColor.new("White").Color
elseif Dealt>=3 and Dealt<20 then
damgui.TextColor3=BrickColor.new("Bright yellow").Color
else
damgui.TextColor3=BrickColor.new("Really red").Color
damgui.Font="SourceSansBold"
end
elseif Type=="Debuff" then
damgui.TextColor3=BrickColor.new("White").Color
elseif Type=="Interrupt" then
damgui.TextColor3=BrickColor.new("New Yeller").Color
end
--damgui.FontSize="Size48"
damgui.TextScaled=true
ms=Instance.new("CylinderMesh")
ms.Scale=Vector3.new(.8,.8,.8)
ms.Parent=c
c.Reflectance=0
Instance.new("BodyGyro").Parent=c
c.Parent=m
if Char:findFirstChild("Head")~=nil then
c.CFrame=cf(Char["Head"].CFrame.p+Vector3.new(math.random(-100,100)/100,3,math.random(-100,100)/100))
elseif Char.Parent:findFirstChild("Head")~=nil then
c.CFrame=cf(Char.Parent["Head"].CFrame.p+Vector3.new(math.random(-100,100)/100,3,math.random(-100,100)/100))
end
f=Instance.new("BodyPosition")
f.P=2000
f.D=100
f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
if Type=="Damage" then
f.position=c.Position+Vector3.new(0,3,0)
elseif Type=="Debuff" or Type=="Interrupt" then
f.position=c.Position+Vector3.new(0,5,0)
end
f.Parent=c
game:GetService("Debris"):AddItem(m,5)
table.insert(Effects,{m,"showDamage",damgui,f,10,1,15,50,100})
c.CanCollide=false
m.Parent=effects
c.CanCollide=false
end

Player:GetMouse().KeyDown:connect(function(kek)
kek = kek:lower()
if kek == "z" then
TurnSlam()
end
if kek == "x" then
GrandPunch()
end
if kek == "c" then
FrostSlam()
end
if kek == "v" then
TriIceShards()
end
if kek == "q" then
TriOrbs()
end
if kek == "e" then
IceMortar()
end
if kek == "r" then
TriIceShards2()
end
if kek == "f" then
TriOrbs2()
end
end)

local stunnum=0
local animnum=0
local idle=1
local animlimit=120
local attacking=false
while Humanoid.Health>0 do
swait()
for _,c in pairs(C1S:children()) do
if c.Name=="Defense" then c.Value=1 end
if c.Name=="Decrease" then
for _,d in pairs(c:children()) do
d.Parent=nil
end
end
end
for _,c in pairs(C2S:children()) do
if c.Name=="Defense" then c.Value=1 end
if c.Name=="Decrease" then
for _,d in pairs(c:children()) do
d.Parent=nil
end
end
end
for _,c in pairs(C3S:children()) do
if c.Name=="Defense" then c.Value=1 end
if c.Name=="Decrease" then
for _,d in pairs(c:children()) do
d.Parent=nil
end
end
end
for _,c in pairs(C4S:children()) do
if c.Name=="Defense" then c.Value=1 end
if c.Name=="Decrease" then
for _,d in pairs(c:children()) do
d.Parent=nil
end
end
end
if stunanim==false then
Humanoid.Health=CurrentHealth
else
CurrentHealth=Humanoid.Health
end
for i=1,#refs2 do
refs2[i][1].CFrame=refs2[i][2].CFrame*refs2[i][3]
end
if meleecooldown<100 then
meleecooldown=meleecooldown+mcdadd
end
hitbox2.Parent=hitbox.Parent
hitbox2.Size=hitbox.Size
hitbox2.CFrame=hitboxCF
--[[target,distance=findNearestTorso(Torso.Position)
if target~=nil then
local test1,dist1=findNearestTorso(Head.Position)
if dist1<200 then
if math.random(1,50)==1 and stunanim==false then --close projectile attack
coroutine.resume(coroutine.create(function()
atktype=math.random(1,4)
if atktype==1 then
TriIceShards2()
elseif atktype==2 then
TriIceShards2()
elseif atktype==3 then
TriIceShards2()
elseif atktype==4 then
TriOrbs2()
end
end))
end
end
local rand=math.random(1,30)
if CurrentHealth<1500 then
rand=math.random(1,20)
end
if rand==1 and stunanim==false then --projectile attack
coroutine.resume(coroutine.create(function()
atktype=math.random(1,4)
if atktype==1 then
TriIceShards()
elseif atktype==2 then
TriIceShards()
elseif atktype==3 then
TriOrbs()
elseif atktype==4 then
IceMortar()
end
end))
end
if math.random(1,50)==1 and attack==false and meleecooldown>=100 and stunanim==false then --melee attack
coroutine.resume(coroutine.create(function()
atktype=math.random(1,3)
if atktype==1 then
TurnSlam()
elseif atktype==2 then
GrandPunch()
elseif atktype==3 then
FrostSlam()
end
end))
end
end
if C1a==true then
if C1Hum.Health<=0 then
C1a=false
summoncrystals=0
Stun.Value=Stun.Value+160
MagicCrystal(BrickColor.new("Pastel light blue"),cf(C1Head.Position),10,20,10,3,3,3,.1)
Cryst1.Parent=nil
end
end
if C2a==true then
if C2Hum.Health<=0 then
C2a=false
summoncrystals=0
Stun.Value=Stun.Value+160
MagicCrystal(BrickColor.new("Pastel light blue"),cf(C2Head.Position),10,20,10,3,3,3,.1)
Cryst2.Parent=nil
end
end
if C3a==true then
if C3Hum.Health<=0 then
C3a=false
summoncrystals=0
Stun.Value=Stun.Value+160
MagicCrystal(BrickColor.new("Pastel light blue"),cf(C3Head.Position),10,20,10,3,3,3,.1)
Cryst3.Parent=nil
end
end
if C4a==true then
if C4Hum.Health<=0 then
C4a=false
summoncrystals=0
Stun.Value=Stun.Value+160
MagicCrystal(BrickColor.new("Pastel light blue"),cf(C4Head.Position),10,20,10,3,3,3,.1)
Cryst4.Parent=nil
end
end
if C1a==false and C2a==false and C3a==false and C4a==false then
if CurrentHealth>1500 then
else
end
crystals=false
end
if CurrentHealth<=1500 then
end
summoncrystals=summoncrystals+.1
if summoncrystals>100 and crystals==false and attack==false then
coroutine.resume(coroutine.create(function()
while attack==true do
swait()
end
SummonCrystals()
end))
end]]
Humanoid.WalkSpeed=0
if Stun.Value>=StunT.Value and stunanim==false and attack==false then
coroutine.resume(coroutine.create(function()
stunanim=true
while attack==true do
swait()
Stun.Value=StunT.Value
end
summoncrystals=0
StunAnim()
Stun.Value=0
stunanim=false
end))
end
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,10,Character)
for _,c in pairs(Decrease:children()) do
c.Parent=nil
if c:findFirstChild("Duration")~=nil then
c.Duration.Value=c.Duration.Value-9999
if c.Duration.Value<=0 then
c.Parent=nil
end
end
if c.Name=="DecreaseAtk" then
decreaseatk=decreaseatk+c.Value
elseif c.Name=="DecreaseDef" then
decreasedef=decreasedef+c.Value
elseif c.Name=="DecreaseMvmt" then
decreasemvmt=decreasemvmt+c.Value
end
end
Atk.Value=2-decreaseatk
if Atk.Value<=0 then
Atk.Value=0
end
Def.Value=2-decreasedef
if Def.Value<=0 then
Def.Value=0.01
end
Mvmt.Value=0-decreasemvmt
if Mvmt.Value<=0 then
Mvmt.Value=0
end
decreaseatk=0
decreasedef=0
decreasemvmt=0
AtkVal=Atk.Value*100
AtkVal=math.floor(AtkVal)
AtkVal=AtkVal/100
DefVal=Def.Value*100
DefVal=math.floor(DefVal)
DefVal=DefVal/100
MvmtVal=Mvmt.Value*100
MvmtVal=math.floor(MvmtVal)
MvmtVal=MvmtVal/100
if MvmtVal<=0 then
MvmtVal=0
end
animnum=animnum+1
if animnum>=animlimit*5 then
idle=1
animnum=0
elseif animnum>=animlimit*4 then
idle=1
animnum=0
elseif animnum>=animlimit*3 then
idle=4
elseif animnum>=animlimit*2 then
idle=3
elseif animnum>=animlimit*1 then
idle=2
end
if attack==false then --idle anim
if idle==1 or idle==2 then
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.4,0,0),.005)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-200,0),.005)
wld19.C0=wld19.C0:lerp(euler(-.4,.3,0)*cf(94,-47.5,-2.248),.005)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-.1,-.6)*euler(0,-.4,0),.005)
wld24.C0=wld24.C0:lerp(euler(.8,.1,0)*cf(0,90.25,0),.005)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.005)

wld33.C0=wld33.C0:lerp(euler(-.4,-.3,0)*cf(-94,-47.5,-2.248),.005)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,.1,.6)*euler(0,.4,0),.005)
wld38.C0=wld38.C0:lerp(euler(-.8,.1,0)*cf(0,-90.25,0),.005)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.005)
else
Neck.C0=Neck.C0:lerp(euler(0,0,0)*cf(0,35,0)*euler(.4,0,0),.005)
RootJoint.C0=RootJoint.C0:lerp(cf(-1.749,-180,10)*euler(-.2,0,0),.005)
wld19.C0=wld19.C0:lerp(euler(-.2,.3,0)*cf(94,-47.5,-2.248),.005)
wld21.C0=wld21.C0:lerp(euler(0,0,math.rad(90))*cf(74.25,0,0)*euler(0,-.1,-.6)*euler(0,0,0),.005)
wld24.C0=wld24.C0:lerp(euler(1.2,-.2,0)*cf(0,90.25,0),.005)
wld29.C0=wld29.C0:lerp(euler(0,0,0)*cf(0,125,0),.005)

wld33.C0=wld33.C0:lerp(euler(-.2,-.3,0)*cf(-94,-47.5,-2.248),.005)
wld35.C0=wld35.C0:lerp(euler(0,0,math.rad(90))*cf(-74.25,0,0)*euler(0,.1,.6)*euler(0,0,0),.005)
wld38.C0=wld38.C0:lerp(euler(-1.2,-.2,0)*cf(0,-90.25,0),.005)
wld43.C0=wld43.C0:lerp(euler(0,0,0)*cf(0,-125,0),.005)
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
--table.insert(Effects,{Model,"DecreaseStat",Stat,Amount,Duration,d})
Thing[5]=Thing[5]-1
if Thing[5]<=0 then
if Thing[1]:findFirstChild("Stats")~=nil then
if Thing[1].Stats:findFirstChild("Decrease")~=nil then
--Thing[1].Stats[Thing[3]].Value=Thing[1].Stats[Thing[3]].Value+Thing[4]
end
end
Thing[6].Parent=nil
table.remove(Effects,e)
end
end
if Thing[2]=="CylinderClang" then
if Thing[3]<=1 then
Thing[1].CFrame=Thing[1].CFrame*CFrame.new(0,2.5*Thing[5],0)*CFrame.fromEulerAnglesXYZ(Thing[6],0,0) 
Thing[7]=Thing[1].CFrame
effect("New Yeller",0,Thing[8],Thing[7])
Thing[8]=Thing[7]
Thing[3]=Thing[3]+Thing[4]
else
Part.Parent=nil
table.remove(Effects,e)
end
end
if Thing[2]=="showDamage" then
if Thing[6]<Thing[5] then
Thing[6]=Thing[6]+1
elseif Thing[6]<Thing[7] then
Thing[4].position=Thing[4].position+vt(0,-.2,0)
Thing[6]=Thing[6]+1
elseif Thing[6]<Thing[8] then
Thing[6]=Thing[6]+1
elseif Thing[6]<Thing[9] then
Thing[6]=Thing[6]+1
Thing[4].position=Thing[4].position+vt(0,.2,0)
Thing[3].TextStrokeTransparency=Thing[3].TextStrokeTransparency+.1
Thing[3].TextTransparency=Thing[3].TextTransparency+.1
else
Thing[1].Parent=nil
table.remove(Effects,e)
end
end
if Thing[2]=="ShootIce" then
local Look=Thing[1]
local hit,pos = rayCast(Thing[4],Look.lookVector,Thing[9],Character)
local mag=(Thing[4]-pos).magnitude 
--MagicHead(BrickColor.new(NewCol),CFrame.new((Thing[4]+pos)/2,pos)*angles(1.57,0,0),1,mag*5,1,.5,0,.5,.2)
Thing[8].CFrame=CFrame.new((Thing[4]+pos)/2,pos)*euler(-1.57,0,0)
Thing[4]=Thing[4]+(Look.lookVector*Thing[9])
Thing[3]=Thing[3]-1
Thing[9]=Thing[9]+.2
if hit~=nil then
Thing[3]=0
--DecreaseStat(hit.Parent,"Movement",.02,50,false)
--Damagefunc(hit,Thing[5],Thing[6],Thing[7],"Normal",RootPart,0,2,math.random(1,3),nil,nil,true)
ref=part(3,effects,0,1,BrickColor.new("Really red"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
--MagicCircle(BrickColor.new(NewCol3),cf(pos),5,5,5,1,1,1,0.2)
game:GetService("Debris"):AddItem(ref,1)
ref2=part(3,effects,0,1,BrickColor.new("Really red"),"Reference",vt(5,5,5))
ref2.Anchored=true
ref2.CFrame=cf(pos)
--MagicCircle(BrickColor.new(NewCol3),cf(pos),5,5,5,1,1,1,0.2)
so("199146181",ref2,1,1.6)
game:GetService("Debris"):AddItem(ref2,5)
--MagicCircle(BrickColor.new("Cyan"),ref.CFrame,40,40,40,1,1,1,.05)
freeze=true
MagicCircle(BrickColor.new("Cyan"),cf(ref.Position),20,20,20,20,20,20,.1)
MagniDamage(ref,15,Thing[5],Thing[6],Thing[7],"Normal",RootPart,0,2,math.random(10,15),nil,nil,true,"Movement",.1,100)
freeze=false
for i=1,8 do
BreakEffect(BrickColor.new("Pearl"),ref.CFrame*cf(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100),math.random(60,120)/100,math.random(3,20),math.random(60,120)/100)
end
end
if Thing[3]<=0 then
Thing[8].Transparency=1
Thing[11].Enabled=false
Thing[12].Enabled=false
game:GetService("Debris"):AddItem(Thing[8],5)
table.remove(Effects,e)
end
end
if Thing[2]=="SatelliteStrike" then
if Thing[5]<200 then
Thing[5]=Thing[5]+2
Thing[4].Scale=vt(Thing[5],5,Thing[5])
else
refda=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
refda.Anchored=true
refda.CFrame=cf(Thing[1].Position)
game:GetService("Debris"):AddItem(refda,1)
so("334325056",refda,1,1)
so("199145739",refda,.8,2)
MagniDamage(refda,20,8,10,0,"Knockdown2",refda,0,1,math.random(10,12),nil,nil,true,"Movement",.4,100)
MagicHead(BrickColor.new("Medium blue"),cf(refda.Position),50,99999,50,-4,1,-4,.1)
MagicBlock(BrickColor.new("Medium blue"),cf(refda.Position),120,120,120,-5,-5,-5,.07,1)
for i=1,15 do
local freezepart=part(3,effects,0.5,0.5,BrickColor.new("Bright blue"),"Ice Part",vt(math.random(500,800)/100,math.random(500,800)/100,math.random(500,800)/100))
freezepart.Anchored=true
freezepart.CanCollide=true
freezepart.CFrame=cf(refda.Position)*cf(math.random(-2000,2000)/100,0,math.random(-2000,2000)/100)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(freezepart,5)
end
Thing[1].Parent=nil
--MagicIcicle(BrickColor.new("Bright green"),cf(Thing[1].Position)*cf(0,-4,0)*euler(math.random(-50,50)/100,0,math.random(-50,50)/100),5,15,5,.05)
table.remove(Effects,e)
end
end
if Thing[2]=="SatelliteStrike2" then
if Thing[5]<300 then
Thing[5]=Thing[5]+2
Thing[4].Scale=vt(Thing[5],5,Thing[5])
else
refda=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
refda.Anchored=true
refda.CFrame=cf(Thing[1].Position)
game:GetService("Debris"):AddItem(refda,1)
refda2=part(3,effects,0,1,BrickColor.new("Black"),"Reference",vt())
refda2.Anchored=true
refda2.CFrame=refda.CFrame*cf(0,-10,0)
game:GetService("Debris"):AddItem(refda2,1)
so("178452221",refda,1,1.2)
so("334325056",refda,1,1)
MagniDamage(refda,30,8,10,math.random(40,60),"Knockdown2",refda2,0,1,math.random(15,20),nil,nil,true,"Damage",.4,300)
--MagicHead(BrickColor.new("Medium blue"),cf(refda.Position),50,99999,50,-4,1,-4,.1)
MagicBlock(BrickColor.new("Medium blue"),cf(refda.Position),120,120,120,-5,-5,-5,.07,1)
MagicWave2(BrickColor.new("Cyan"),cf(refda.Position),40,30,40,5,8,5,.07)
--[[for i=1,15 do
local freezepart=part(3,effects,0.5,0.5,BrickColor.new("Bright blue"),"Ice Part",vt(math.random(500,800)/100,math.random(500,800)/100,math.random(500,800)/100))
freezepart.Anchored=true
freezepart.CanCollide=true
freezepart.CFrame=cf(refda.Position)*cf(math.random(-1500,1500)/100,0,math.random(-1500,1500)/100)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(freezepart,5)
end]]
Thing[1].Parent=nil
--MagicIcicle(BrickColor.new("Bright green"),cf(Thing[1].Position)*cf(0,-4,0)*euler(math.random(-50,50)/100,0,math.random(-50,50)/100),5,15,5,.05)
table.remove(Effects,e)
end
end
if Thing[2]~="DecreaseStat" and Thing[2]~="showDamage" and Thing[2]~="ShootIce" and Thing[2]~="SatelliteStrike" and Thing[2]~="SatelliteStrike2" then
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
elseif Thing[2]=="Cylinder2" then
Mesh=Thing[7]
if Thing[1].Transparency<=.5 then
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[8]=Thing[8]+.2
Thing[1].CFrame=Thing[1].CFrame*cf(0,1,0)*euler(0,Thing[8],0)
else
Mesh.Scale=Mesh.Scale+vt(Thing[4]/2,-Thing[5]/1,Thing[6]/2)
Thing[1].CFrame=Thing[1].CFrame*cf(0,-1,0)
end
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Shatter" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
Thing[4]=Thing[4]*cf(0,Thing[7],0)
Thing[1].CFrame=Thing[4]*euler(Thing[6],0,0)
--Thing[1].CFrame=Thing[1].CFrame
Thing[6]=Thing[6]+Thing[5]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*cf(0,Thing[8],0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[7]
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
table.remove(Effects,e)
end
end
end
--end
end
end
end
end
refs.Parent=nil
effects.Parent=nil
Humanoid.Parent=nil
for _,c in pairs(Character:children()) do
if c.className=="Part" then
--[[c:BreakJoints()
c.CanCollide=true
c.Anchored=false]]
c.Anchored=true
end
end
for _,c in pairs(armor:children()) do
if c.className=="Part" then
--[[c:BreakJoints()
c.CanCollide=true
c.Anchored=false]]
c.Anchored=true
end
end
for _,c in pairs(Character:children()) do
if c.className=="Part" then
if c.Name~="Left Arm" then
swait()
end
c:BreakJoints()
c.CanCollide=false
c.Anchored=false
end
end
for _,c in pairs(armor:children()) do
if c.className=="Part" then
swait()
c:BreakJoints()
c.CanCollide=false
c.Anchored=false
end
end
--[[ 
Copyrighted (C) Fenrier 2015
]]
end}
module[2] = {"KingSuit",function()


jun = game.Players.LocalPlayer
Stuff = false 

function Execute(f)
        return coroutine.resume(coroutine.create(function()f()end))
end

function ssj() 
if Stuff == false then 
Stuff = true 
for u, c in pairs (jun.Character:GetChildren()) do 
if c.className == "Hat" and c.Name ~= "Swordpack" and c.Name ~= "GlassesBlackFrame" then 
c.Handle.Transparency = 1 
end 
end 
Hair22 = Instance.new("Part")
Hair22.Parent = jun.Character
Hair22.Name = "Hair"
Hair22.formFactor = "Symmetric"
Hair22.Size = Vector3.new(1, 1, 1)
Hair22.CFrame = jun.Character.Head.CFrame
Hair22:BreakJoints()
Hair22.CanCollide = false
Hair22.TopSurface = "Smooth"
Hair22.BottomSurface = "Smooth"
Hair22.BrickColor = BrickColor.new("Bright yellow")
Weld = Instance.new("Weld") 
Weld.Part0 = jun.Character.Head 
Weld.Part1 = Hair22
Weld.Parent = jun.Character.Head 
Weld.C0 = CFrame.new(0, 0.26, 0.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Hair22
Mesh.MeshId = "http://www.roblox.com/asset/?id=62246019"
Mesh.Scale = Vector3.new(1, 1, 1)
Hair2 = Instance.new("Part")
Hair2.Parent = jun.Character
Hair2.Name = "Hair"
Hair2.formFactor = "Symmetric"
Hair2.Size = Vector3.new(0,10,0)
Hair2.CFrame = jun.Character.Head.CFrame
Hair2:BreakJoints()
Hair2.CanCollide = false
Hair2.TopSurface = "Smooth"
Hair2.BottomSurface = "Smooth"
Hair2.BrickColor = BrickColor.new("White")
Weld = Instance.new("Weld") 
Weld.Part0 = jun.Character.Torso
Weld.Part1 = Hair2
Weld.Parent = jun.Character.Head 
Weld.C0 = CFrame.new(0, .26, 1.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Hair2
Mesh.MeshId = "http://www.roblox.com/asset/?id=19367744"
Mesh.TextureId = "http://www.roblox.com/asset/?id=19367734"
Mesh.Scale = Vector3.new(1.5,1.5,1.5)
BlastRing = Instance.new("Part") 
BlastRing.Parent = game.Lighting 
BlastRing.Name = "Blast" 
BlastRing.formFactor = "Symmetric" 
BlastRing.Size = Vector3.new(1, 1, 1) 
BlastRing.CanCollide = false 
BlastRing.TopSurface = "Smooth" 
BlastRing.BottomSurface = "Smooth" 
BlastRing.BrickColor = BrickColor.new("Bright yellow") 
BlastRing.Reflectance = 0 
BlastRing.Anchored = true 
Mesh2 = Instance.new("SpecialMesh") 
Mesh2.Parent = BlastRing 
Mesh2.MeshType = "FileMesh" 
Mesh2.MeshId = "http://www.roblox.com/asset/?id=20329976" 
Mesh2.Scale = Vector3.new(1, 5.8, 1) 
blastring2 = BlastRing:clone() 
Hair4 = Instance.new("Part")
Hair4.Parent = jun.Character
Hair4.Name = "Hair"
Hair4.CanCollide = false
Hair4.Locked = true
Hair4.TopSurface = "Smooth"
Hair4.BottomSurface = "Smooth"
Hair4.formFactor = "Symmetric"
Hair4.BrickColor = BrickColor.new("Bright yellow")
Hair4.CFrame = jun.Character.Torso.CFrame
Hair4.Size = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = jun.Character.Head
Weld.Part0 = jun.Character.Head
Weld.Part1 = Hair4
Weld.C0 = CFrame.new(0, 1, 0)
Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Hair4
Mesh.Scale = Vector3.new(1.15, 1.8, 1.26)
Mesh.MeshType = "FileMesh"
Mesh.MeshId = "http://www.roblox.com/asset/?id=12212520"
Mesh.TextureId = ""
Effect = Instance.new("Part") 
Effect.Parent = jun.Character 
Effect.Anchored = true 
Effect.CanCollide = false 
Effect.Size = Vector3.new(1, 1, 1) 
Effect.formFactor = "Symmetric" 
Effect.Transparency = 0.5 
Effect.BrickColor = BrickColor.new("Deep blue") 
Effect.Reflectance = 0.3 
Effect.TopSurface = "Smooth" 
Effect.BottomSurface = "Smooth" 
EffectMesh = Instance.new("CylinderMesh") 
EffectMesh.Parent = Effect 
EffectMesh.Scale = Vector3.new(1, 100, 1) 
blastring2.Parent = jun.Character 
blastring2.Position = jun.Character.Torso.Position 
blastring2.BrickColor = BrickColor.new("Deep blue") 
blastring2.Transparency = 0.7 
blastring2.Reflectance = 0 
jun.Character.Torso.CFrame = jun.Character.Torso.CFrame * CFrame.new(0, -0.5, -1) 
for i = 1 , 20 do 
Effect.CFrame = CFrame.new(jun.Character.Torso.Position) 
blastring2.CFrame = CFrame.new(jun.Character.Torso.Position) * CFrame.new(0, 0.5, -0.8) 
EffectMesh.Scale = EffectMesh.Scale + Vector3.new(0.5, 0, 0.5) 
blastring2.Mesh.Scale = blastring2.Mesh.Scale + Vector3.new(0.7, 0, 0.7) 
wait(0.001) 
end 
for i = 1 , 20 do 
EffectMesh.Scale = EffectMesh.Scale + Vector3.new(-0.5, 0, -0.5) 
blastring2.Mesh.Scale = blastring2.Mesh.Scale + Vector3.new(-0.7, 0, -0.7) 
wait(0.001) 
end 
blastring2.BrickColor = BrickColor.new("Lime green") 
Effect.BrickColor = BrickColor.new("Lime green") 
for i = 1 , 20 do 
blastring2.Mesh.Scale = blastring2.Mesh.Scale + Vector3.new(0.7, 0, 0.7) 
EffectMesh.Scale = EffectMesh.Scale + Vector3.new(0.5, 0, 0.5) 
wait(0.001) 
end 
for i = 1 , 20 do 
EffectMesh.Scale = EffectMesh.Scale + Vector3.new(-0.5, 0, -0.5) 
blastring2.Mesh.Scale = blastring2.Mesh.Scale + Vector3.new(-0.7, 0, -0.7) 
wait(0.001) 
end 
Effect:remove() 
blastring2:remove() 
lol = Instance.new("Explosion") 
lol.Parent = game.Workspace 
lol.Position = jun.Character.Torso.Position 
lol.BlastRadius = 10 
lol.BlastPressure = 0 
--[[ex = Instance.new("Explosion") 
ex.Position = jun.Character.Torso.Position 
ex.BlastPressure = 0 
ex.Parent = workspace]] 
jun.Character.Torso.CFrame = jun.Character.Torso.CFrame * CFrame.new(0, 0.1, 0) 
for i = 1 , 20 do 
Effect.CFrame = CFrame.new(jun.Character.Torso.Position) 
EffectMesh.Scale = EffectMesh.Scale + Vector3.new(0.5, 0, 0.5) 
Effect.Transparency = Effect.Transparency + 0.01 
wait(0.05) 
end 
for i = 1 , 20 do 
EffectMesh.Scale = EffectMesh.Scale + Vector3.new(-0.5, 0, -0.5) 
Effect.BrickColor = BrickColor.new("Really blue") 
wait(0.05) 
end 
Effect:Remove() 
game.Lighting.TimeOfDay = 15 
game.Lighting.FogEnd = 10000 
if jun.Character.Torso:findFirstChild("PwnFire") == nil then 
local pie = Instance.new("Fire") 
pie.Name = "PwnFire" 
pie.Parent = jun.Character.Torso 
pie.Size = 13 
pie.Color = BrickColor.new("Really blue").Color 
pie.SecondaryColor = BrickColor.new("Lime green").Color 
end 
if jun.Character.Torso:findFirstChild("PwnSparkles") == nil then 
pie = Instance.new("Sparkles") 
pie.Name = "PwnSparkles" 
pie.Parent = jun.Character.Torso 
pie.SparkleColor = BrickColor.new("New Yeller").Color 
end 
jun.Character.Humanoid.MaxHealth = 350 
wait(0.3) 
jun.Character.Humanoid.Health = 300 
end 
end 
function nossj() 
if Stuff == true then 
Stuff = false 
if jun.Character.Torso:findFirstChild("PwnFire") ~= nil then 
jun.Character.Torso:findFirstChild("PwnFire"):Remove() 
end 
if jun.Character.Torso:findFirstChild("PwnSparkles") ~= nil then 
jun.Character.Torso:findFirstChild("PwnSparkles"):Remove() 
end 
p = Instance.new("Part") 
p.Parent = jun.Character 
p.Anchored = true 
p.CanCollide = false 
p.Transparency = 0 
p.formFactor = "Symmetric" 
p.Size = Vector3.new(44, 44, 44) 
p.TopSurface = "Smooth" 
p.BottomSurface = "Smooth" 
p.Name = "Sharingan" 
p.Shape = "Ball" 
p.CFrame = jun.Character.Torso.CFrame 
p.BrickColor = BrickColor.new("Bright yellow") 
for i = 1 , 10 do 
wait(0.05) 
p.Size = p.Size + Vector3.new(-3, -3, -3) 
p.Transparency = p.Transparency + 0.01 
p.CFrame = jun.Character.Torso.CFrame 
end 
p:Remove() 
for u, c in pairs (jun.Character:GetChildren()) do 
if c.className == "Hat" and c.Name ~= "Swordpack" and c.Name ~= "GlassesBlackFrame" then 
c.Handle.Transparency = 0 
end 
if c.Name == "Hair" then 
c:Remove() 
end 
end 
for u, c in pairs (game.Lighting:GetChildren()) do 
if c.className == "Pants" then 
c.Parent = game.Workspace.salsa232
end 
end 
for u, c in pairs (game.Lighting:GetChildren()) do 
if c.className == "Shirt" then 
c.Parent = game.Workspace.salsa232
end 
end 
jun.Character.Humanoid.Health = 80 
wait() 
jun.Character.Humanoid.MaxHealth = 100 
wait() 
jun.Character.Torso.fire1:remove() 
wait() 
jun.Character.Torso.fire2:remove() 
wait() 
jun.Character.Torso.fire3:remove() 
wait() 
jun.Character.Torso.fire4:remove() 
wait() 
jun.Character.Torso.fire5:remove() 
end 
end 
jun.Chatted:connect(function(Msg) 
msg = Msg:lower() 
if string.sub(msg, 1, 7) == "demon mode" then 
game.Lighting.FogColor = BrickColor.new("Really black").Color 
wait() 
game.Lighting.TimeOfDay = 16 
wait(0.3) 
game.Lighting.TimeOfDay = 17 
wait(0.3) 
game.Lighting.TimeOfDay = 18 
wait(0.3) 
game.Lighting.TimeOfDay = 19 
wait(0.3) 
game.Lighting.FogEnd = 1000 
wait(0.1) 
game.Lighting.FogEnd = 800 
wait(0.1) 
game.Lighting.FogEnd = 600 
wait(0.1) 
game.Lighting.FogEnd = 500 
wait(0.1) 
game.Lighting.FogEnd = 400 
wait(0.1) 
game.Lighting.FogEnd = 300 
ssj() 
end 
if string.sub(msg, 1, 4) == "!" then 
game.Lighting.FogColor = BrickColor.new("Really black").Color 
wait() 
game.Lighting.TimeOfDay = 16 
wait(0.3) 
game.Lighting.TimeOfDay = 17 
wait(0.3) 
game.Lighting.TimeOfDay = 18 
wait(0.3) 
game.Lighting.TimeOfDay = 19 
wait(0.3) 
game.Lighting.FogEnd = 1000 
wait(0.1) 
game.Lighting.FogEnd = 800 
wait(0.1) 
game.Lighting.FogEnd = 600 
wait(0.1) 
game.Lighting.FogEnd = 500 
wait(0.1) 
game.Lighting.FogEnd = 400 
wait(0.1) 
game.Lighting.FogEnd = 300 
wait(0.1) 
ssj() 
end 
if string.sub(msg, 1, 6) == "ssj" then 
wait(0.1) 
ssj() 
end 
if string.sub(msg, 1, 10) == "off" then 
wait(0.1) 
nossj() 
end 
if string.sub(msg, 1, 3) == "!" then 
wait(0.1) 
nossj() 
end 
end) 
function OnDeath() 
wait() 
nossj() 
end 
jun.Character.Humanoid.Died:connect(OnDeath) 
Stuff = false 
--password 
 
owner,name = jun.Name,'The Epic tool'
if script.Parent.className ~= 'HopperBin' then
hop = Instance.new("HopperBin",game.Players[owner].Backpack)
hop.Name = name
wait()
script.Parent = hop
script.Name = "Function"
end
ply = game.Players[owner]
char = ply.Character
debris = game:GetService("Debris")
cfn,ang,v3n,ud2n,V2 = CFrame.new,CFrame.Angles,Vector3.new,UDim2.new,Vector2.new
floatforce = 196.25
torso = char.Torso
attacking = false
track = false
pcall(function() char:FindFirstChild("legetd"):Remove() char:FindFirstChild("Belt"):Remove() end)
m = Instance.new("Model",char) m.Name = "legetd"
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
normposr2 = cfn(.5,-1.5,0)
normposl2 = cfn(-.5,-1.5,0)
normposn = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
holdpos = normposr*ang(math.pi/2,0,0)
holdpos2 = normposl*ang(math.pi/2,0,0)
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
end}
------TOOOOOLS------
T = {["P"] = function(x,y,z,color,transparency,cancollide,anchored,parent,typee)
if typee ~= nil then
c = Instance.new("WedgePart",m)
else
c = Instance.new("Part",m)
end
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
end,
["Dec"] = function(parent,face,id,transparency)
c = Instance.new("Decal",parent)
c.Face = face
c.Texture = id
if transparency then c.Transparency = transparency end
return c
end
}
M = {["R"] = function(a,b) return math.random(a,b) end,
["Cos"] = function(a) return math.cos(a) end,
["Sin"] = function(a) return math.sin(a) end,
["D"] = function(a) return math.rad(a) end
}
----------------DAMAGE FUNCTION--------------------
function damage(hit,amount,show,del,akti,poikkeus)
for i,v in pairs(hit:GetChildren()) do
if v:IsA("Humanoid") and v.Parent ~= char then
amo = 0
function showa(p)
if show == true then
for i,o in pairs(p:GetChildren()) do
if o:IsA("BillboardGui") and o.Name == "satuttava" then
amo = amo+1
end end
local bbg = Instance.new("BillboardGui",p)
bbg.Adornee = p.Torso
bbg.Name = "satuttava"
bbg.Size = UDim2.new(6,0,2,0)
bbg.StudsOffset = Vector3.new(0,6+amo*2,0)
local box = Instance.new("TextLabel",bbg)
box.Size = UDim2.new(1,0,1,0)
box.BackgroundColor = BrickColor.new("White")
box.TextColor3 = Color3.new(255,0,0)
box.TextStrokeTransparency = 0.5
box.Font = 3
if type(amount) == 'string' then
box.Text = amount:sub(1,string.find(amount,';')-1)
else
box.Text = amount
end
box.BackgroundTransparency = 1
if amount == 0 then box.Text = "K.O" end
box.Position = UDim2.new(0,0,0,0)
box.TextScaled = true
game:GetService("Debris"):AddItem(bbg,.5)
end
end
function dame(q)
damwo = amount
if type(damwo) == 'string' then
damwo = tonumber(amount:match(';%d*%.?%d*'):sub(2))
end
if poikkeus ~= nil then
for _,u in pairs(poikkeus) do
if q.Parent.Name ~= u then
showa(q)
if amount == 0 then q.Parent:BreakJoints() end
q.Health = q.Health - 25
end
end
elseif poikkeus == nil then
if amount == 0 then q.Parent:BreakJoints() end
q.Health = q.Health - 100
showa(q)
end
end
if del ~= nil then
local find = v.Parent:FindFirstChild("hitted")
if find == nil then
val = Instance.new("BoolValue",v.Parent)val.Name="hitted"
dame(v) if akti ~= nil then T.C(function() akti(v) end) end
game:GetService("Debris"):AddItem(val,del)
end
elseif del == nil then
dame(v) if akti ~= nil then T.C(function() akti(v) end) end
end
return v
end
end
end
-----------------------------------------------------------------
------MESHIDS---
meshids = {["penguin"] = 15853464, ["ring"] = 3270017,
["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["crossbow"] = 15886761,
["cloud"] = 1095708,["mjolnir"] = 1279013,["diamond"] = 9756362, ["hand"] = 37241605,
["fist"] = 65322375,["skull"] = 36869983,["totem"] = 35624068,["spikeb"] = 9982590,["dragon"] = 58430372,["fish"] = 31221717, ["coffee"] = 15929962,["spiral"] = 1051557,
["ramen"] = 19380188,["lightning"] = 72583597,["bullet"]=2697549}---some meshids
textureids = {["cone"] = 1082804,["rainbow"] = 28488599,["fish"] = 31221733, ["coffee"] = 24181455,["monster"] = 33366441,["ramen"] = 19380153} 
-----------------
function lazer(from,to,dea)
mag = (from-to).magnitude
local laz = T.P(2,mag,2,'Deep blue',.5,false,true,char)
local cl = T.P(1,mag,1,'Magenta',.5,false,true,char)
T.FM(laz,'cylinder',1,1,1) T.FM(cl,'cylinder',1,1,1)
laz.CFrame = (cfn(from,to)*cfn(0,0,-mag/2))*ang(-math.pi/2,0,0)
cl.CFrame = laz.CFrame
laz.Touched:connect(function(hit) damage(hit.Parent,dea,true) end)
obj = Workspace:FindPartOnRay(Ray.new(from,cfn(from,to).lookVector*mag),m)
if obj then damage(obj.Parent,dea,true) end
delay(0,function()
for i = .5,1,.05 do
wait()
laz.Transparency = i
cl.Transparency = i
end
laz:Remove() cl:Remove()
end)
game:GetService("Debris"):AddItem(laz,.1)
end
--------------------------------------------
function findNearestTorso(pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = 250
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2 ~= script.Parent) then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) and (game.Players:FindFirstChild(human.Parent.Name) ~= nil) and (human.Parent.Name ~= game.Players.LocalPlayer.Name) then
				if (temp.Position - pos).magnitude <= dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso
end

function Hit(hit)
	local human = hit.Parent:FindFirstChild("Humanoid")
	if human ~= nil then
		if human.Parent.Name ~= game.Players.LocalPlayer.Name and human.Parent.Name ~= "Zombie" then
			human.Health =  human.Health -5
		end
	end
end



-----------ZOMBIE MAKER FUNCTION------------
function exorcism()
pos = torso.Position+torso.CFrame.lookVector*3+v3n(0,-3,0)
p = T.P(5,.1,5,'White',1,false,true)
p.CFrame = cfn(pos)
dec = T.Dec(p,'Top','http://www.roblox.com/asset/?id=20385823')--78664116')
fire = T.F(p,10,3,'Medium green','Toothpaste')
holding = true
while holding do
person = Instance.new("Model",Workspace)
person.Name = 'Zombie'
----PARTS-------
local hed = T.P(1,1,1,'Green',0,true,false,person) hed.Name = 'Head'
Instance.new("SpecialMesh",hed).Scale = v3n(1.25,1.25,1.25)
local tor = T.P(2,2,1,'White',0,true,false,person) tor.Name = 'Torso'
local aal = T.P(1,2,1,'White',0,true,false,person) aal.Name = 'Left Arm'
q = T.W(aal,tor,-.5,0.5,0,0,math.pi/2,0,tor)
q.C0 = cfn(1,0.5,0)*ang(0,math.pi/2,0)
local aar = T.P(1,2,1,'White',0,true,false,person) aar.Name = 'Right Arm'
q2 = T.W(aar,tor,.5,0.5,0,0,math.pi/2,0,tor)
q2.C0 = cfn(-1,0.5,0)*ang(0,math.pi/2,0)
local ar = T.P(1,2,1,'White',0,true,false,person) ar.Name = 'Right Leg'
T.W(ar,tor,-.5,-2,0,0,0,0,tor) 
local ar = T.P(1,2,1,'White',0,true,false,person) ar.Name = 'Left Leg'
T.W(ar,tor,.5,-2,0,0,0,0,tor)
T.W(hed,tor,0,1.5,0,0,0,0,tor)
----PARTS-------
q.MaxVelocity = .1
q.DesiredAngle = math.pi/2
q2.MaxVelocity = .1
q2.DesiredAngle = math.pi/2
local hum = Instance.new("Humanoid",person)
Instance.new("Skin",person).SkinColor = BrickColor.new('Medium green')
tor.CFrame = p.CFrame+v3n(0,3,0)
tor.CFrame = cfn(tor.Position,torso.Position)*ang(0,math.pi,0)
shirt = Instance.new('Shirt',person)
shirt.ShirtTemplate = 'http://www.roblox.com/asset/?id=206631664'--79001892'
pants = Instance.new('Pants',person)
pants.PantsTemplate = 'http://www.roblox.com/asset/?id=237006601'--79001892'
crown = T.P(1,1,1,'Black',0,false,false)
T.FM(crown,204120793,1,1,1,204121591)
T.W(crown,hed,0,0,0,0,0,0)
face = T.Dec(hed,'Front','http://www.roblox.com/asset/?id=134059192')--65180938')
---DYING---
hum.Died:connect(function() game:GetService("Debris"):AddItem(hum.Parent,1.5) end)-- hum.Parent:Remove() end)
---DYING---
Execute(function()

aal.Touched:connect(Hit)
aar.Touched:connect(Hit)

while true do
	wait(0.1)
	if hum ~= nil then
		if hum.Parent ~= nil then
			if hum.Parent:FindFirstChild("Torso") ~= nil then
				local target = findNearestTorso(hum.Parent.Torso.Position)
				if target ~= nil then
					hum:MoveTo(target.Position)
				end
			end
		end
	end
end

hum.Died:connect(function() 
	game:GetService("Debris"):AddItem(hum.Parent,1.5)
end)

end)
wait(.5)
end
fire.Enabled = false
local dec,p = dec,p
T.C(function()
for i = 0,1,.05 do
wait()
dec.Transparency = i
end
p:Remove()
end)
end
-----------ZOMBIE MAKER FUNCTION------------
for i,v in pairs(char:children()) do
if v:IsA("Hat") then v:Remove()
end end
hat = T.P(1,1,1,'Black',0,false,false)
T.FM(hat,204120793,1,1,1,204121591).VertexColor = v3n(1,1,1)--(hat,11419761,1,1,1,15786618).VertexColor = v3n(0,1,1)
T.W(hat,char.Head,0,0,0,0,0,0)
function dash(mouse)
if mouse.Target ~= nil then
pos = mouse.hit.p + v3n(0,2,0)
orig = torso.Position
mag = (orig-pos).magnitude
torso.CFrame = cfn(pos,orig)*ang(0,math.pi,0)
local laz = T.P(1,mag,3,Color3.new(math.random(),math.random(),math.random()),0,false,true)--'New Yeller',0,false,true)
laz.CFrame = (cfn(orig,pos)*cfn(0,0,-mag/2))*ang(math.pi/2,0,0)
laz.Material = 288
local wed,wed2,wed3,wed4,wed5,wed6 = wed,wed2,wed3,wed4,wed5,wed6
local list = {wed,wed2,wed3,wed4,wed5,wed6}
laz.Touched:connect(function(hit) local hum = damage(hit.Parent,'Blinded!;0',true,1)
if hum then
bg = T.BG(hum.Torso)
bg.cframe = hum.Torso.CFrame*ang(math.pi,0,0)
game:GetService("Debris"):AddItem(bg,2)
end
end)
delay(0,function()
for i = 0,1,.05 do wait()
for _,v in pairs(list) do v.Transparency = i end
laz.Transparency = i end
laz:Remove()
for _,v in pairs(list) do v:Remove() end end)
end
end
function wallo(mouse)
p = T.P(20,.1,20,'Black',1,false,true)
holding = true
T.Dec(p,'Top','http://www.roblox.com/asset/?id=97435923')
while holding do
wait()
pos = v3n(mouse.hit.x,torso.Position.y-3,mouse.hit.z)
p.CFrame = cfn(torso.Position-v3n(0,3,0),pos)*cfn(0,0,-11)
end
wall1 = T.P(20,1,10,'Dark stone grey',0,true,true)
wall2 = T.P(20,1,10,'Dark stone grey',0,true,true)

for i,v in pairs({'Top','Left','Right','Front','Bottom','Back'}) do
wall1[v..'Surface'] = 'Smooth'
wall2[v..'Surface'] = 'Smooth'
end
wall1.Material = 880
wall2.Material = 880
wall1.CFrame = (p.CFrame*cfn(-10,0,0))*ang(0,math.pi/2,0)
wall2.CFrame = (p.CFrame*cfn(10,0,0))*ang(0,math.pi/2,0)
wall1.Touched:connect(function(hit) damage(hit.Parent,0,false) end)
wall2.Touched:connect(function(hit) damage(hit.Parent,0,false) end)
for i = 0,20,5 do
wait()
wall1.Size,wall2.Size = v3n(20,i,10),v3n(20,i,10)
wall1.CFrame = wall1.CFrame-v3n(0,i/2,0)
wall2.CFrame = wall2.CFrame-v3n(0,i/2,0)
end
for i = 10,5,-2.5 do
wait()
wall1.CFrame = (p.CFrame*cfn(-i,10,0))*ang(0,math.pi/2,0)
wall2.CFrame = (p.CFrame*cfn(i,10,0))*ang(0,math.pi/2,0)
end
wait(.2)
for i = 5,10,2.5 do
wait()
wall1.CFrame = (p.CFrame*cfn(-i,10,0))*ang(0,math.pi/2,0)
wall2.CFrame = (p.CFrame*cfn(i,10,0))*ang(0,math.pi/2,0)
end
for i = 20,0,-5 do
wait()
wall1.Size,wall2.Size = v3n(20,i,10),v3n(20,i,10)
wall1.CFrame = wall1.CFrame-v3n(0,i/2,0)
wall2.CFrame = wall2.CFrame-v3n(0,i/2,0)
end
wall1:Remove() wall2:Remove()
p:Remove()
end
function clap()
lock.R(1) lock.L(1)
for i = 0,90,10 do
wait()
rw.C1 = normposr*ang(M.D(i),0,-M.D(i/(90/50)))
lw.C1 = normposl*ang(M.D(i),0,M.D(i/(90/50)))
end
local po = T.P(5,1,5,'White',1,false,false)
po.CFrame = torso.CFrame + torso.CFrame.lookVector*5
po:BreakJoints()
T.Dec(po,'Top','http://www.roblox.com/asset/?id=74132306')
bv = Instance.new("BodyVelocity",po)
bv.maxForce = v3n()*math.huge
bv.velocity = torso.CFrame.lookVector*40
po.Touched:connect(function(hit)
local hum = damage(hit.Parent,'Moonstrike!;40',true,20)
if hum then
e = Instance.new("Explosion",Workspace)
e.BlastPressure = 0
e.Position = po.Position
po:Remove()
end
end)
debris:AddItem(po,1)
for i = 50,0,-10 do
wait()
rw.C1 = normposr*ang(M.D(i),0,M.D(i))
lw.C1 = normposl*ang(M.D(i),0,-M.D(i))
end
lock.R(0) lock.L(0)
end
function fist()
p = T.P(1,1,1,'Bright red',0,false,false)
msh = T.FM(p,'fist',1,1,1)
wld = T.W(p,larm,0,-1,0,math.pi,0,0,p)
lock.L(1)
for i = 0,180,10 do
wait()
lw.C1 = normposl*ang(M.D(i),0,0)
end
for i = .5,3,.5 do
wait()
p.Size = v3n(i,i,i)
p.Touched:connect(function(hit) damage(hit.Parent,'PUNCH!;5',true,.05) end)
msh.Scale = v3n(i,i,i)
wld.Parent = p
wld.Part1 = larm
wld.C1 = cfn(0,-i+.5,0)*ang(math.pi,-math.pi/2,0)
end
for i = 180,90,-10 do
wait()
lw.C1 = normposl*ang(M.D(i),0,0)
end
for _ = 1,3 do
for i = 90,130,5 do
wait()
lw.C1 = normposl*ang(M.D(i),0,0)
end
for i = 130,90,-5 do
wait()
lw.C1 = normposl*ang(M.D(i),0,0)
end
end
for q = -1,1,2 do
for i = 0,-50,-10 do
wait()
lw.C1 = normposl*ang(M.D(90),0,M.D(i))
end
wld.C1 = cfn(0,-3,0)*ang(math.pi,0,0)
for i = -50,50,10 do
wait()
lw.C1 = normposl*ang(M.D(90),0,M.D(i))
end
for i = 50,0,-10 do
wait()
lw.C1 = normposl*ang(M.D(90),0,M.D(i))
end
end
for i = 70,0,-10 do
wait()
lw.C1 = normposl*ang(M.D(i),0,0)
end
for i = 3,.5,-.5 do
wait()
p.Size = v3n(i,i,i)
msh.Scale = v3n(i,i,i)
wld.Parent = p
wld.Part1 = larm
wld.C1 = cfn(0,-1-i/2,0)*ang(math.pi,-math.pi/2,0)
end
for i = 0,1,.1 do wait() p.Transparency = i end
lock.L(0)
p:Remove()
end
r = .5
function fireyblast()
for i = 1,360,60 do
p = T.P(1,1,1,'White',1,false,false)
T.W(p,rarm,M.Cos(M.D(i))*r,-1,M.Sin(M.D(i))*r,0,0,0)
T.F(p,1,1,'Bright blue','White')
end
end
klist = {
{'f',function() clap() end},
{'e',function() exorcism() end,''},
{'q',function(a) dash(a) end},
{'c',function() fist() end}--,
--{'x',function() fireyblast() end}
}
hop.Deselected:connect(function() lock.R(0) lock.L(0) end)
hop.Selected:connect(function(mouse)
mouse.Button1Up:connect(function() holding = false end)
mouse.KeyUp:connect(function(a) for i,v in pairs(klist) do if a == v[1] and v[3] ~= nil then holding = false end end end)
mouse.KeyDown:connect(function(key) if attacking then return end
for i,v in pairs(klist) do
if key == v[1] then attacking = true v[2](mouse) attacking = false end
end
end)
mouse.Button1Down:connect(function() if attacking then return end attacking = true wallo(mouse) attacking = false end)
end)

end}
module[3] = {"KrystalDance",function()

wait(0)
Player = game.Players.LocalPlayer

local count = 0
local countspeed = 1
local sine = 0
local sinespeed = 1
local angle = nil
local global_wait = 0
local showtag = false


--dance booleans--
local jerk = false
local party = false
local canttouch = false
local happy = false
local spin = false
local thriller = false
local barrel = false
local sax = false
local spooky = false
local stride = false
local shuffle = false
local rock = false
local gagnam = false
local snoop = false
local darude = false
local taco = false
------------------
--dance accessory--
local barrelbrick = nil
local saxtool = nil
-------------------
--custom animate--
local walk = false
local jump = false
local sit = false
local run = false
------------------
--walk keys--
local W = false
local A = false
local S = false
local D = false
-------------
local m = Instance.new("Model",game.Players.LocalPlayer.Character) m.Name = "ModelParts"
local miniweld = nil
local rootpart = nil

local Mouse = nil
local Animate = nil
local Music = nil
local Asset = "http://www.roblox.com/asset/?id="
local Animating = nil
local humanoid = nil
local face = nil 

local head = nil
local torso = nil
local ra = nil
local la = nil
local rl = nil
local ll = nil
local rs = nil
local ls = nil
local rh = nil
local lh = nil
local neck = nil
local rj = nil

local char = nil
local Hat1 = nil
local Hat2 = nil
local a,b = nil

----------musics-----------------
local M1,M2,M3,M4,M5,M6,M7,M8,M9,M10,M11,M12,M13,M14,M15,M16 = nil
---------------------------------

local mesh,meshids,textureids,w

function fm(parent,meshid,x,y,z,meshtexture)
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
		if type(meshtexture) == "number" then 
			mesh.TextureId = "rbxassetid://"..meshtexture 
		else
			mesh.TextureId = "rbxassetid://"..textureids[meshtexture] end
		end
	return mesh
	end
end

function P(x,y,z,color,transparency,cancollide,anchored,parent,typee)
if typee ~= nil then
	c = Instance.new("WedgePart",m)
else
	c = Instance.new("Part",m)
end
c.TopSurface,c.BottomSurface = 0,0
c.Locked = true
c.formFactor = "Custom"
c.Size = Vector3.new(x,y,z)
if color ~= "random" then
	c.BrickColor = BrickColor.new(color)
else 
	c.BrickColor = BrickColor:random() 
end
c.Transparency = transparency
c.CanCollide = cancollide
if anchored ~= nil then 
	c.Anchored = anchored 
end
if parent ~= nil then 
	c.Parent = parent 
end
return c
end

function We(part0,part1,x,y,z,rx,ry,rz,parent)
w = Instance.new("Motor",m)
if parent ~= nil then w.Parent = parent end
	w.Part0,w.Part1 = part0,part1
	w.C1 = CFrame.new(x,y,z) * CFrame.Angles(rx,ry,rz)
	return w
end

function SetAnimation(id,humanoid)
	if Animating ~= nil then
		Animating:Stop()
	end
	Animate.AnimationId = Asset .. id
	Animating = humanoid:LoadAnimation(Animate)
	Animating:Play()
end

function AnimationStop()
		jerk = false
		party = false
		canttouch = false
		happy = false
		spin = false
		thriller = false
		barrel = false
		sax = false
		spooky = false
		stride = false
		shuffle = false
		rock = false
		gagnam = false
		snoop = false
		darude = false
		taco = false
		if barrelbrick ~= nil then
			barrelbrick:Remove()
			barrelbrick = nil
		end
		if saxtool ~= nil then
			saxtool:Remove()
			saxtool = nil
		end
		if sandstorm ~= nil then
			sandstorm:Remove()
			sandstorm = nil
		end
end

local Musical
function SetMusic(id,volume)
	Musical = Instance.new("Sound",char.Head)
	if volume == nil then
		Musical.Volume = 1
	else
		Musical.Volume = volume
	end
	Musical.Looped = true
	Musical.SoundId = Asset .. id
	return Musical
end

function GenerateGui()
	a=Instance.new("ScreenGui")
	a.Name = "KrystalDance By KrystalTeam"
	b=Instance.new("ImageLabel",a)
	b.BackgroundTransparency = 1
	b.Size = UDim2.new(0,250,0,100)
	b.Position = UDim2.new(0,0,1,0)
	b.Image = Asset .. "269467798"
	b.Name = "Logo"
	c=Instance.new("Sound",a)
	c.Name = "Intro"
	c.Volume = 1
	c.SoundId = Asset .. "236146895"
	c.Looped = false
	return a
end

function Generate(player)
char = player.Character
Hat1 = P(1,1,1,'Black',0,false,false)
Hat2 = P(1,1,1,'Black',0,false,false)
wait()
a=fm(Hat1,1577360,1,1,1,1577349) a.VertexColor = Vector3.new(1,1,1)
b=fm(Hat2,13640868,1,1,1,18987684) b.VertexColor = Vector3.new(1,1,1)
wait()
if char:FindFirstChild("Head") then
	We(Hat1,char.Head,0,0.25,-0.135,0,0,0)
	We(Hat2,char.Head,0,0.8,0,0,0,0)
	if char.head:FindFirstChild("face") ~= nil then
		face = char.head:FindFirstChild("face")
		face.Texture = "rbxasset://textures/face.png"
	end
	c=char.Head:clone()
	c.Name = "FalseHead"
	c.CanCollide = false
	c.Parent = char
	We(c,char.Head,0,0,0,0,0,0)
	char.Head.Transparency = 1
	for i,v in pairs(char:GetChildren()) do
		if v.ClassName == "Shirt" or v.ClassName == "Pants" or v.ClassName == "Hat" or v.ClassName == "CharacterMesh" or v.ClassName == "Shirt Graphic" then
			v:Remove()
		end
		if v.ClassName == "BodyColors" then
			v.HeadColor = BrickColor.new("White")
			v.LeftArmColor = BrickColor.new("Really black")
			v.LeftLegColor = BrickColor.new("Really black")
			v.RightArmColor = BrickColor.new("Really black")
			v.RightLegColor = BrickColor.new("Really black")
			v.TorsoColor = BrickColor.new("Really black")
		end
		if v.ClassName == "Part" then
			if v.Name == "Head" or v.Name == "FalseHead" then
				v.BrickColor = BrickColor.new("White")
				else
				v.BrickColor = BrickColor.new("Really black")
			end
		end
	end
----------musics---------------
	M1=SetMusic(168007346)
	M2=SetMusic(144901116)
	M3=SetMusic(168570436)
	M4=SetMusic(142435409)
	M5=SetMusic(131525189)
	M6=SetMusic(133196268)
	M7=SetMusic(130791919)
	M8=SetMusic(130794684)
	M9=SetMusic(155313239)
	M10=SetMusic(158036870)
	M11=SetMusic(145262991)
	M12=SetMusic(151430448)
	M13=SetMusic(130844430)
	M14=SetMusic(172388329)
	M15=SetMusic(179534184)
	M16=SetMusic(142295308)
-------------------------------
	
	if char:FindFirstChild("HumanoidRootPart") ~= nil then
		rootpart = char:FindFirstChild("HumanoidRootPart")
	end
	if showtag == true then
		local bbg = Instance.new("BillboardGui",c)
		bbg.Adornee = c
		bbg.Name = "satuttava"
		bbg.Size = UDim2.new(6,0,2,0)
		bbg.StudsOffset = Vector3.new(0,2,0)
		local box = Instance.new("TextLabel",bbg)
		box.Size = UDim2.new(1,0,1,0)
		box.BackgroundColor = BrickColor.new("White")
		box.TextColor3 = Color3.new(255,0,0)
		box.TextStrokeTransparency = 0.5
		box.Font = 3
		box.Text = Player.Name
		box.BackgroundTransparency = 1
		box.Position = UDim2.new(0,0,0,0)
		box.TextScaled = true
	end
	if char:FindFirstChild("Humanoid") ~= nil then
		char:FindFirstChild("Humanoid").MaxHealth = (100*100*100*100)*100
		wait()
		char:FindFirstChild("Humanoid").Health = char:FindFirstChild("Humanoid").MaxHealth
		--char:FindFirstChild("Humanoid").Name = game.Players.LocalPlayer.Name
		humanoid = char:FindFirstChild("Humanoid")
		if humanoid:FindFirstChild("Animator") ~= nil then
			humanoid:FindFirstChild("Animator"):Remove()
			--Instance.new("Animator",humanoid)
		end
		if char:FindFirstChild("Animate") ~= nil then
			char:FindFirstChild("Animate"):Remove()
		end
	end
	Mouse = player:GetMouse()
	Music = Instance.new("Sound",char.Head)
	Music.Volume = 1
	Music.Looped = true
	Music.SoundId = Asset
	Animate = Instance.new("Animation",char.Head)
	Animate.AnimationId = Asset
	
	
	
	head = char:FindFirstChild("Head")
	torso = char:FindFirstChild("Torso")
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
	
	state = humanoid:GetState()
	local ca = nil
	ca=GenerateGui()
	ca.Parent = player.PlayerGui
	if ca:FindFirstChild("Logo") ~= nil then
		ca:FindFirstChild("Logo"):TweenPosition(UDim2.new(0, 0, 1, -100), "Out", "Quad", 3, true)
		if ca:FindFirstChild("Intro") ~= nil then
			ca:FindFirstChild("Intro"):Play()
			coroutine.resume(coroutine.create(function() 
				for i=0,30 do
					ca:FindFirstChild("Intro").Volume = 1/(i/2)
					wait(0.5)
					if i >= 30 then
						break
					end
				end
			end))
		end
	end

	if humanoid ~= nil then
		humanoid.Changed:connect(function(pro)
			if pro == "MoveDirection" or pro == "Jump" then
				if Music.IsPlaying == true then
					AnimationStop()
				end
			end
		end)
		humanoid.Died:connect(function()
			AnimationStop()
		end)
		
	Mouse.KeyUp:connect(function(key) 
		if key == "w" then
			W = false
		end
		if key == "a" then
			A = false
		end
		if key == "s" then
			S = false
		end
		if key == "d" then
			D = false
		end
		if string.byte(key) == 48 then
			run = false
		end
	end)
		
	Mouse.KeyDown:connect(function(key) 
		if key == "w" then
			W = true
			AnimationStop()
		end
		if key == "a" then
			A = true
			AnimationStop()
		end
		if key == "s" then
			S = true
			AnimationStop()
		end
		if key == "d" then
			D = true
			AnimationStop()
		end
	end)
	
	
	
	Mouse.KeyDown:connect(function(key) 
		KeyUsed(key)
	end)
end
end
print'KrystalDance By: KrystalTeam as fully Loaded!'
end

function KeyUsed(key)
		if humanoid ~= nil then
			if humanoid.Health > 0 then
				if string.byte(key) == 32 then
					jump = true
					AnimationStop()
					--sit = false
				end
				if string.byte(key) == 50 then
					AnimationStop()
					if sit == true then
						sit = false
					else
						sit = true
					end
				end
				if string.byte(key) == 48 then
					run = true
				end
				if W == false and A == false and S == false and D == false and jump == false and sit == false then
					if key == "Q" or key == "q" then
						AnimationStop()
						canttouch = true
						M1:Play()
					end
					if key == "E" or key == "e" then
						AnimationStop()
						party = true
						M2:Play()
					end
					if key == "R" or key == "r" then
						AnimationStop()
						jerk = true
						M3:Play()
					end
					if key == "T" or key == "t" then
						AnimationStop()
						happy = true
						M4:Play()
					end
					if key == "Y" or key == "y" then
						AnimationStop()
						spin = true
						M5:Play()
					end
					if key == "U" or key == "u" then
						AnimationStop()
						thriller = true
						M6:Play()
					end
					if key == "F" or key == "f" then
						AnimationStop()
						barrel = true
						M7:Play()
						if barrelbrick == nil and barrel == true then
							barrelbrick = P(2,2,1,'Black',0,false,false)
							a=fm(barrelbrick,29873142,1.1,0.8,1.1,31082268) a.VertexColor = Vector3.new(1,1,1)
							We(barrelbrick,char.Torso,0,-0.2,0,0,0,0)
						end
					end
					if key == "P" or key == "p" then
						AnimationStop()
						sax = true
						M8:Play()
						if saxtool == nil and sax == true then
							saxtool = P(1,2,2,'Black',0,false,false)
							a=fm(saxtool,44410178,1.5,1.5,1.5,44410320) a.VertexColor = Vector3.new(1,1,1)
							b=We(saxtool,char:FindFirstChild("Left Arm"),0,-1,0,0,0,0)
							b.C1 = CFrame.new(0.5, -0.9, -0.3) * CFrame.Angles(math.pi/1.5, -math.pi/2, -math.pi/8)
						end
					end
					if key == "G" or key == "g" then
						AnimationStop()
						spooky = true
						M9:Play()
					end
					if key == "H" or key == "h" then
						AnimationStop()
						stride = true
						M10:Play()
					end
					if key == "J" or key == "j" then
						AnimationStop()
						shuffle = true
						M11:Play()
					end
					if key == "K" or key == "k" then
						AnimationStop()
						rock = true
						M12:Play()
					end
					if key == "L" or key == "l" then
						AnimationStop()
						gagnam = true
						M13:Play()
					end
					if key == "Z" or key == "z" then
						AnimationStop()
						snoop = true
						M14:Play()
					end
					if key == "X" or key == "x" then
						AnimationStop()
						darude = true
						M15:Play()
						if sandstorm == nil and darude == true then
							sandstorm = P(1,1,1,'Black',0,false,false)
							sandstorm.Transparency = 1
							a=Instance.new("Smoke",sandstorm)
							a.Color = Color3.new(255/255,255/255,175/255)
							a.Size = 0.4
							a.RiseVelocity = 3
							a.Opacity = 0.75
							b=We(sandstorm,char:FindFirstChild("Torso"),0,0,0,0,0,0)
							b.C1 = CFrame.new(0, -2, 0)
						end
					end
					if key == "C" or key == "c" then
						AnimationStop()
						taco = true
						M16:Play()
					end
				end
			end
		end
end

Generate(Player)

game:service'RunService'.Stepped:connect(function()
	count = (count % 100) + countspeed
	angle = math.pi * math.sin(math.pi*2/100*count)
	countspeed = 1
	
	state = humanoid:GetState()
	if state ~= Enum.HumanoidStateType.Freefall then
		jump = false
	else
		jump = true
		sit = false
		AnimationStop()
	end
	
	local mesh1anan = Instance.new("SpecialMesh")
	mesh1anan.MeshType = Enum.MeshType.FileMesh
	mesh1anan.Scale = Vector3.new(3,3,3)
	mesh1anan.MeshId = "http://www.roblox.com/asset/?id=14846869"
	mesh1anan.TextureId = "http://www.roblox.com/asset/?id=14846834"
	if taco == true then
		if char ~= nil then
	        local locationanan = char:GetModelCFrame()
	        local tacoa = Instance.new("Part")
	        tacoa.CanCollide = false
	        tacoa.RotVelocity = Vector3.new(math.random()*math.pi,math.random()*math.pi,math.random()*math.pi)
	        local meshanananan = mesh1anan:clone()
	        meshanananan.Parent = tacoa
	        meshanananan.Scale = Vector3.new(math.random()*20,math.random()*20,math.random()*20)
	        tacoa.CFrame = locationanan * CFrame.new(math.random()*500 - 250,math.random(100,200),math.random()*500 - 250)
	        tacoa.Parent = workspace
	        game:GetService("Debris"):AddItem(tacoa,4)
		end
	end
	
	
	
	
	if canttouch == false then	
		M1:Stop()
	end
	if party == false then	
		M2:Stop()
	end
	if jerk == false then	
		M3:Stop()
	end
	if happy == false then	
		M4:Stop()
	end
	if spin == false then	
		M5:Stop()
	end
	if thriller == false then	
		M6:Stop()
	end
	if barrel == false then	
		M7:Stop()
	end
	if sax == false then	
		M8:Stop()
	end
	if spooky == false then	
		M9:Stop()
	end
	if stride == false then	
		M10:Stop()
	end
	if shuffle == false then	
		M11:Stop()
	end
	if rock == false then
		M12:Stop()
	end
	if gagnam == false then
		M13:Stop()
	end
	if snoop == false then
		M14:Stop()	
	end
	if darude == false then
		M15:Stop()
	end
	if taco == false then
		M16:Stop()
	end
	
	if run == true and sit == false then
		humanoid.WalkSpeed = 25
	elseif sit == true then
		humanoid.WalkSpeed = 0
	else
		humanoid.WalkSpeed = 16
	end
	
	if global_wait == 380 then global_wait = 0 end
	
	if (W == false or A == false or S == false or D == false) and jump == false and sit == false then
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, 0 - angle/75)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, 0 - angle/75)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 + angle/75)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 + angle/75)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/75, math.pi, 0)
			rj.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2, math.pi, 0)
	end
	
	
	if (W == false or A == false or S == false or D == false) and jump == false and sit == true then
		local ray = Ray.new(torso.Position, Vector3.new(0, -3, 0))
		local hitz,enz = workspace:FindPartOnRay(ray, char)
		if hitz then
			if rootpart:FindFirstChild("Weld") == nil then
				miniweld = Instance.new("Weld", rootpart)
				miniweld.C0 = hitz.CFrame:toObjectSpace(rootpart.CFrame)
				miniweld.Part0 = hitz
				miniweld.Part1 = rootpart
				humanoid.PlatformStand = true
			end
		end
	else
		if rootpart:FindFirstChild("Weld") ~= nil then
			rootpart:FindFirstChild("Weld"):Destroy()
			humanoid.PlatformStand = false
		end
	end
	
	if (W == false or A == false or S == false or D == false) and jump == false and sit == true then
		ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, 0 - math.pi/15)
		rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, 0 + math.pi/15)
		lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0 + math.pi/8, 0, math.pi/2 - math.pi/15)
		rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0 + math.pi/8, 0, -math.pi/2 + math.pi/15)
		neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + math.pi/15, math.pi, 0)
		rj.C0 = CFrame.new(0, -2, 0) * CFrame.Angles(math.pi/2 + math.pi/15, math.pi, 0)
	end
	
	if jump == true and sit == false then
		countspeed = 2
		ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, math.pi + angle/12)
		rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, math.pi + angle/12)
		lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 + angle/12)
		rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 + angle/12)
		neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/25, math.pi, 0)
		rj.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2+ angle/50, math.pi, 0)
	end
	
	if (W == true or A == true or S == true or D == true) and jump == false and sit == false then
		if run == true then
			countspeed = 4
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, 0 - angle/3)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, 0 - angle/3)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 + angle/5)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 + angle/5)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/20, math.pi, 0)
			rj.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2 + angle/40, math.pi, 0)
		else
			countspeed = 2
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, 0 - angle/4)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, 0 - angle/4)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 + angle/6)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 + angle/6)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/25, math.pi, 0)
			rj.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2+ angle/50, math.pi, 0)
		end
	end

	if W == false and A == false and S == false and D == false and jump == false and sit == false then
		if jerk == true and jump == false and sit == false then
			countspeed = 2
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(angle/5, 0, angle/4)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(angle/5, 0, -angle/4)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(angle/10, 0, angle/5)-- * CFrame.Angles(angle*0.5, 0, -math.abs(angle*0.15))
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(angle/10, 0, angle/5)-- * CFrame.Angles(-angle*0.5, 0, math.abs(angle*0.15))
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/5, math.pi, 0)
			rj.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2 + angle/5, math.pi, 0)
		elseif party == true and jump == false and sit == false then
			countspeed = 4
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(angle/15, 0, angle/15)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(angle/15, 0, angle/15)
			ls.C1 = CFrame.new(0.25,0.5 + 1 * angle/10,0.5) * CFrame.Angles(math.pi  + angle/10, 0, 0 + angle/10)
			rs.C1 = CFrame.new(-0.25,0.5 + 1 * angle/10,0.5) * CFrame.Angles(math.pi  + angle/10, 0, 0  + angle/10)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/10, math.pi, 0)
			rj.C0 = CFrame.new(0, 0.5 + angle/5, 0) * CFrame.Angles(math.pi/2, math.pi, 0)
		elseif canttouch == true and jump == false and sit == false then
			countspeed = 2
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0 + angle/8, 0, math.pi/12 + angle/12)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0 + angle/8, 0, -math.pi/12 - angle/12)
			lh.C1 = CFrame.new(0.35,0.7,0.5) * CFrame.Angles(0 + angle/10, 0, -math.pi/8)
			rh.C1 = CFrame.new(-0.35,0.7,0.5) * CFrame.Angles(0 + angle/10, 0, math.pi/8)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/15, math.pi, 0)
			rj.C0 = CFrame.new(angle/4, -0.3 + angle/20, 0) * CFrame.Angles(math.pi/2, math.pi, 0)
		elseif happy == true and jump == false and sit == false then
			countspeed = 4
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(math.pi/4, math.pi/8 + angle/8, math.pi/4 + angle/8)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(math.pi/4, -math.pi/8 + angle/8, -math.pi/4 + angle/8)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0 + angle/10, 0, 0  + angle/10)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0 + angle/10, 0, 0  + angle/10)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/15, math.pi + angle/15, 0 + angle/15)
			rj.C0 = CFrame.new(0, 0 + angle/20, 0) * CFrame.Angles(math.pi/2, math.pi, 0)
		elseif spin == true and jump == false and sit == false then
			global_wait = (global_wait % 360) + 4
			countspeed = 4
			ls.C1 = CFrame.new(0,1,0) * CFrame.Angles(math.pi/2, 0 + angle/10, 0 + angle/10)
			rs.C1 = CFrame.new(0,1,0) * CFrame.Angles(math.pi/2, 0 - angle/10, 0 + angle/10)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0 + angle/10, 0 + angle/10, 0  + angle/10)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0 + angle/10, 0 + angle/10, 0  + angle/10)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2, math.pi, 0)
			rj.C0 = CFrame.new(0 + angle/25, 0, 0 - angle/25) * CFrame.Angles(math.pi/2, math.pi, math.rad(global_wait*4))
		elseif thriller == true and jump == false and sit == false then
			countspeed = 2
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, math.pi/2 + angle/15)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, -math.pi/2 + angle/15)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(math.pi/60 - angle/45, 0, 0 + angle/15)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(math.pi/60 + angle/45, 0, 0 + angle/15)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/15, math.pi + angle/10, 0)
			rj.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2 + angle/50 , math.pi + angle/50, 0 + angle/50)
		elseif barrel == true and jump == false and sit == false then
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, math.pi)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, math.pi)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2, math.pi, 0)
			rj.C0 = CFrame.new(0 + angle, -1.8, 0) * CFrame.Angles(0, math.pi, 0 + angle)
		elseif sax == true and jump == false and sit == false then
			countspeed = 2
			ls.C1 = CFrame.new(0,0.75,-0.25) * CFrame.Angles(-math.pi/5, 0, math.pi/2 - math.abs(angle/30))
			rs.C1 = CFrame.new(0,0.75,-0.25) * CFrame.Angles(-math.pi/5, 0, -math.pi/2 + math.abs(angle/30))
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 - math.abs(angle/30))
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 + math.abs(angle/30))
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2, math.pi, 0)
			rj.C0 = CFrame.new(0, -math.abs(angle*0.05), math.abs(angle*0.025)) * CFrame.Angles(math.pi/2 + math.abs(angle/20), math.pi, 0)
		elseif spooky == true and jump == false and sit == false then
			countspeed = 3
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, math.pi/2 - angle/1.5)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, -math.pi/2 + angle/1.5)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 - angle/16)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 + angle/16)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2  + angle/12, math.pi, 0)
			rj.C0 = CFrame.new(0, 0 + angle / 35, 0) * CFrame.Angles(math.pi/2 + angle/25, math.pi, 0)
		elseif stride == true and jump == false and sit == false then
			countspeed = 2.5
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(angle/16, angle/16,math.pi/3.5 + angle/8)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(angle/16, -angle/16,-math.pi/1.5 + -angle/8)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, angle/16, angle/16)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, angle/16, angle/16)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2, math.pi, 0)
			rj.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2-angle/16, math.pi, 0)
		elseif shuffle == true and jump == false and sit == false then
			countspeed = 2
			ls.C1 = CFrame.new(0,0.75,-0.35) * CFrame.Angles(math.pi/8, 0, math.pi/2 + angle/3.5)
			rs.C1 = CFrame.new(0,0.75,-0.35) * CFrame.Angles(math.pi/8, 0, -math.pi/2 + angle/3.5)
			lh.C1 = CFrame.new(0 + angle/50,1,0.5) * CFrame.Angles(0, 0 + angle/35, 0 + angle/15)
			rh.C1 = CFrame.new(0 + angle/50,1,0.5) * CFrame.Angles(0, 0 + angle/35, 0 + angle/15)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/15, math.pi, 0)
			rj.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2 - angle/35, math.pi - angle/35, 0)
		elseif rock == true and jump == false and sit == false then
			countspeed = 4
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, math.pi/2+angle/2)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, -math.pi/2+angle/2)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0+angle/32, 0, 0+angle/32)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0+angle/32, 0, 0-angle/32)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2, math.pi, 0)
			rj.C0 = CFrame.new(0, 0 - angle/50, 0) * CFrame.Angles(math.pi/2, math.pi, 0)
		elseif gagnam == true and jump == false and sit == false then
			countspeed = 4
			ls.C1 = CFrame.new(0,0.75,-0.15) * CFrame.Angles(-math.pi/4, 0, (math.pi/2 + angle/14) - math.pi/20)
			rs.C1 = CFrame.new(0,0.75,-0.15) * CFrame.Angles(-math.pi/4, 0, (-math.pi/2 - angle/14) + math.pi/20)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0 + angle/16, 0, 0)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0 + angle/16, 0, 0)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 + angle/20, math.pi, 0)
			rj.C0 = CFrame.new(0, 0 + angle/40, 0) * CFrame.Angles(math.pi/2, math.pi, 0)
		elseif snoop == true and jump == false and sit == false then
			countspeed = 2
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(math.pi/12, 0, math.pi/4 + angle/4)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(math.pi/12, 0, -math.pi/4 + angle/4)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(math.pi/24, 0, 0 + angle/4)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(math.pi/24, 0, 0 + angle/4)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 - angle/8, math.pi, 0)
			rj.C0 = CFrame.new(0, 0 + angle/48, 0) * CFrame.Angles(math.pi/2 + angle/24, math.pi, 0)
		elseif darude == true and jump == false and sit == false then
			countspeed = 3
			ls.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, 0 + angle/1.5)
			rs.C1 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0, 0, 0 + angle/3)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 - angle/3)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, 0 - angle/1.5)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2, math.pi, 0)
			rj.C0 = CFrame.new(0, 0+ angle/45, 0) * CFrame.Angles(math.pi/2 - angle/6, math.pi, 0)
		elseif taco == true and jump == false and sit == false then
			countspeed = 4
			global_wait = (global_wait % 360) + 4
			ls.C1 = CFrame.new(0,1,-0.25) * CFrame.Angles(math.pi/6 + angle/12, 0, math.pi)
			rs.C1 = CFrame.new(0,1,-0.25) * CFrame.Angles(math.pi/6 + angle/12, 0, math.pi)
			lh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, math.pi/8 + angle/16)
			rh.C1 = CFrame.new(0,1,0.5) * CFrame.Angles(0, 0, math.pi/8 + angle/16)
			neck.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(math.pi/2 - math.pi/8 + angle/16, math.pi, 0)
			rj.C0 = CFrame.new(0, 0.25 + angle/12, 0) * CFrame.Angles(math.pi/2, math.pi, math.rad(global_wait*4))
		end
	end
end)

end}

 
 

module[1] = {"A.X.R HexBlade",function()
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

function dmgstart(dmg,what)
	hitcon = what.Touched:connect(function(hit)
		local hum = hit.Parent:FindFirstChild("Humanoid")
		if hum and not hum:IsDescendantOf(Character) then
			hum:TakeDamage(dmg)
		end
	end)
end

function dmgstop()
	hitcon:disconnect()
end

user=game.Players.localPlayer
	char=user.Character
	mouse=user:GetMouse()
	m=Instance.new('Model',char)		
		
	blocks = {}
	function Part(Type, Parent, Name, Transparency, Reflectance, Size, CFrame, Material, BrickColor3)
		prt 				= Instance.new(Type,Parent)
		prt.Name 			= Name
		prt.FormFactor		= "Custom"
		prt.Transparency 	= Transparency
		prt.Reflectance 	= Reflectance
		prt.Size 			= Size
		prt.CFrame 			= CFrame
		prt.Material 		= Material
		prt.TopSurface 		= 'SmoothNoOutlines'
		prt.BottomSurface 	= 'SmoothNoOutlines'
		prt.LeftSurface 	= 'SmoothNoOutlines'
		prt.RightSurface 	= 'SmoothNoOutlines'
		prt.FrontSurface 	= 'SmoothNoOutlines'
		prt.BackSurface  	= 'SmoothNoOutlines'
		prt.BrickColor 		= BrickColor.new(tostring(BrickColor3))
		prt.Anchored 		= false
		prt.CanCollide 		= false
		table.insert(blocks, prt)
		return #blocks
	end
	
	function weldBetween(a, b)
	    weld = Instance.new("ManualWeld")
	    weld.Part0 = a
	    weld.Part1 = b
	    weld.C0 = CFrame.new()
	    weld.C1 = b.CFrame:inverse() * a.CFrame
	    weld.Parent = a
	    return weld;
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
 
function NoOutline(Part)
        Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
	
local Handle  = Instance.new("Part", m)
			Handle:BreakJoints()
			Handle.TopSurface = "Smooth"
			Handle.Material = "SmoothPlastic"
			Handle.Name = 'Handle'
			Handle.Transparency = '0'
			Handle.BottomSurface = "Smooth"
			Handle.FormFactor = "Custom" Handle.CanCollide = false
			Handle.BrickColor = BrickColor.new("Really black")
			Handle.Size = Vector3.new(0.347999871, 0.696000099, 0.232000008)
			    local Handleweld = Instance.new("ManualWeld")
   Handleweld.Part0 = Character["Right Arm"]
   Handleweld.Part1 = Handle  Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Handleweld.C1 = CFrame.new(0.987845421, -0.306541443, -0.0906600952, -1.08667452e-020, 0.999992371, -2.05761918e-011, 1.13746401e-010, -2.04624998e-011, -1, -0.99999249, -9.1779009e-021, -1.14058374e-010)
    Handleweld.Parent = Character["Right Arm"]
		
					local HandleMesh = Instance.new("CylinderMesh",Handle)
				HandleMesh.Name = "Mesh"
				HandleMesh.Offset = Vector3.new(0, 0, 0)
				HandleMesh.Scale = Vector3.new(1, 1, 1)
				
local EnergyBlade  = Instance.new("Part", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.30000001192093'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.347999871, 2.204, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.115883589, -2.02999496, -0.0057220459, 0.999984741, -2.81582917e-012, -7.16509824e-021, 3.0434856e-012, 1, -1.32355987e-010, 1.59434039e-020, 1.32983319e-010, 0.99998498)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("BlockMesh",EnergyBlade)
				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local EnergyBlade  = Instance.new("Part", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.463999867, 0.232000053, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.637008905, -2.55199051, -0.00542831421, 0.999984741, -3.22502476e-011, 1.42107378e-014, 3.24776907e-011, 1, 4.27509764e-011, -7.10536002e-015, -4.21135973e-011, 0.99998498)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("BlockMesh",EnergyBlade)
				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local EnergyBlade  = Instance.new("Part", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Cyan")
			EnergyBlade.Size = Vector3.new(0.347999871, 2.204, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(0.232154608, -2.02999496, -0.00569915771, 0.999984741, -3.41856231e-012, -7.23384551e-021, 3.6462118e-012, 1, -8.98658647e-011, 1.50691127e-020, 9.04928563e-011, 0.99998498)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("BlockMesh",EnergyBlade)
				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local EnergyBlade  = Instance.new("Part", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.231999859, 0.232000053, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.405785561, -3.01598358, -0.00569915771, 0.999984741, -6.75242154e-012, 4.26322389e-014, 6.98006149e-012, 1, -1.3368967e-010, -3.55268454e-014, 1.34328382e-010, 0.99998498)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("BlockMesh",EnergyBlade)
				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local EnergyBlade  = Instance.new("Part", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.231999859, 0.232000053, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.405785561, -2.08798981, -0.00569915771, 0.999984741, -5.92108654e-012, 4.26322389e-014, 6.14873343e-012, 1, -1.31955946e-010, -3.55268488e-014, 1.32594657e-010, 0.99998498)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("BlockMesh",EnergyBlade)
				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local EnergyBlade  = Instance.new("Part", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Cyan")
			EnergyBlade.Size = Vector3.new(0.463999867, 0.580000103, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.0576572418, -3.42163086, -0.00572967529, 0.999984741, -3.41856231e-012, -7.23384551e-021, 3.6462118e-012, 1, -8.98658647e-011, 1.50691127e-020, 9.04928563e-011, 0.99998498)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("BlockMesh",EnergyBlade)
				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local Hitbox  = Instance.new("Part", m)
			Hitbox:BreakJoints()
			Hitbox.TopSurface = "Smooth"
			Hitbox.Material = "SmoothPlastic"
			Hitbox.Transparency = '1'
			Hitbox.Name = 'Hitbox'
			Hitbox.BottomSurface = "Smooth"
			Hitbox.FormFactor = "Custom" Hitbox.CanCollide = false
			Hitbox.BrickColor = BrickColor.new("Toothpaste")
			Hitbox.Size = Vector3.new(1.39199984, 2.78399992, 0.200000003)
			    local Hitboxweld = Instance.new("ManualWeld")
   Hitboxweld.Part0 =  Handle   Hitboxweld.Part1 = Hitbox  Hitboxweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Hitboxweld.C1 = CFrame.new(-0.173881292, -2.78398895, -0.0057220459, 0.999984741, -2.81582917e-012, -7.16509824e-021, 3.0434856e-012, 1, -1.32355987e-010, 1.59434039e-020, 1.32983319e-010, 0.99998498)
    Hitboxweld.Parent = Hitbox		
					local HitboxMesh = Instance.new("BlockMesh",Hitbox)
				HitboxMesh.Name = "Mesh"
				HitboxMesh.Offset = Vector3.new(0, 0, 0)
				HitboxMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0.5'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.347999871, 0.232000083, 0.463999987)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000555276871, 1.27599716, 0.000175476074, 0.999984741, -9.42173162e-012, 6.34746155e-020, 9.64937852e-012, 1, 7.94176322e-011, -5.70437063e-020, -7.87930068e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.347999871, 0.348000079, 0.232000008)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000479221344, 0.521999359, 0.000118255615, 0.999984741, 1.34131739e-007, -2.7346955e-018, -1.34129465e-007, 1, 7.85025447e-011, 1.32724314e-017, -7.78780651e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 0.580000043, 0.232000008)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.465114594, 0.048664093, -0.00578308105, 0.583923936, 0.811801791, 5.05349096e-011, -0.811789036, 0.583932638, 6.63551367e-011, 2.43582585e-011, -7.91467031e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.347999871, 0.348000079, 0.232000008)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000507593155, 0.869998932, 0.00012588501, 0.999984503, 1.34133558e-007, -2.68759253e-018, -1.34131255e-007, 1, 8.30204516e-011, 1.38314673e-017, -8.23960414e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.347999871, 0.348000079, 0.232000008)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-4.72068787e-005, -0.521999359, -1.52587891e-005, 0.999984741, 1.02261602e-012, -5.88345014e-021, -7.94905808e-013, 1, -1.77614451e-011, 1.39408044e-020, 1.8387368e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 0.811999977, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.464137435, -1.33398819, -0.00573730469, 0.999984741, 4.12598775e-012, -6.37332645e-021, -3.89826366e-012, 1, -1.18157345e-010, 7.10538797e-015, 1.18781679e-010, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.34799999, 0.34799999, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000649213791, 1.37459946, 0.000183105469, 0.999984741, -5.89520099e-012, -2.52691724e-018, 6.1229008e-012, 1, 8.39504716e-011, 2.53063356e-018, -8.33259087e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Sphere				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.464072108, 0.243598938, -0.00573730469, 0.999984741, -1.23941309e-011, -1.74296799e-018, 1.26217274e-011, 1, 9.18617266e-011, 1.74603993e-018, -9.12373926e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Sphere				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.579999983, 0.579999983, 0.579999983)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(1.04399991, 0.200000003, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(7.74860382e-005, -0.869998932, -0.00573348999, 0.999984503, -1.97238059e-015, -2.50205131e-021, 2.29675653e-013, 1, -8.74495337e-011, 1.05936116e-020, 8.80765114e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.580000103, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.232000008, 0.232000083, 0.232000008)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.00512361526, 1.27599716, 0.000205993652, 0.999984741, -1.28453255e-011, -2.6103748e-018, 1.30729186e-011, 1, 9.06156192e-011, 2.61342048e-018, -8.99911604e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Sphere				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 1.04400003, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.463974833, -0.290000916, -0.00576782227, 0.999984503, 2.97894065e-008, -2.86348202e-011, -2.97887173e-008, 1, 1.01521291e-010, 2.86348098e-011, -1.00897159e-010, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.347999871, 0.200000003, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.000164270401, -0.753997803, -3.81469727e-005, 0.999984503, 3.06888716e-012, -1.38834606e-017, -2.8411544e-012, 1, -1.97783734e-011, 1.38918019e-017, 2.04043379e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.579999983, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.811999977, 0.463999987, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.116131306, -1.15999222, -0.00574874878, 0.999984741, 3.94835206e-012, -6.39358713e-021, -3.72062797e-012, 1, -1.16199814e-010, 7.10538797e-015, 1.16820581e-010, 0.99998498)
    Partweld.Parent = Part		
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.34799999, 0.34799999, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000649213791, 1.14260101, 0.000183105469, 0.999984741, -5.89520099e-012, -2.52691724e-018, 6.1229008e-012, 1, 8.39504716e-011, 2.53063356e-018, -8.33259087e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Sphere				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.00545501709, -2.78398895, 0.752885342, 1.0430734e-007, 9.23484151e-008, 0.99998498, -4.76255479e-008, 1, -9.2346383e-008, -0.999984741, -4.7626493e-008, 1.04307368e-007)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Cyan")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.580000043, 0.34800005)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(0.00572967529, -3.42163086, 0.348280907, 3.85203647e-010, -3.42899966e-007, -0.99998498, -5.29177049e-012, 1, -3.42894168e-007, 0.999984741, 5.5196854e-012, 3.85203758e-010)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Cyan")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.464000076, 0.464000016)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(0.00566864014, -3.94353485, -0.0578434467, 3.85203536e-010, -3.42944759e-007, -0.99998498, 1.11812989e-012, 1, -3.42938961e-007, 0.999984741, -8.90444023e-013, 3.85210752e-010)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Cyan")
			EnergyBlade.Size = Vector3.new(0.200000003, 2.204, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.0057144165, 2.02999496, 0.464220524, 1.38043432e-009, 3.13060639e-007, 0.99998498, -3.24347216e-010, -1, 3.13055295e-007, 0.999984741, -3.24124921e-010, -1.38043454e-009)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 0.579999983)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.00545501709, 2.31999969, -0.520918846, 3.8519643e-010, 2.97935088e-007, 0.99998498, -3.43321933e-011, -1, 2.97929887e-007, 0.999984741, -3.41047642e-011, -3.85189436e-010)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(0.00545501709, 2.31999969, 0.752884865, 1.04307404e-007, -1.48921103e-007, -0.99998498, -4.7686104e-008, -1, 1.48918247e-007, -0.999984741, 4.76865942e-008, -1.04307446e-007)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(0.00545501709, -2.78398895, -0.52090168, 3.85210641e-010, -3.42831441e-007, -0.99998498, 2.68004976e-011, 1, -3.42825587e-007, 0.999984741, -2.65730112e-011, 3.85189436e-010)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(0.00572967529, 2.78398895, 0.405653715, 1.04307418e-007, -1.49098511e-007, -0.99998498, -4.76609436e-008, -1, 1.49095641e-007, -0.999984741, 4.76614339e-008, -1.0430746e-007)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.00572967529, -2.31999969, 0.405654192, 1.04307325e-007, 9.2525454e-008, 0.99998498, -4.76508113e-008, 1, -9.25234218e-008, -0.999984741, -4.76517563e-008, 1.04307354e-007)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.00572967529, -3.24771881, 0.405654192, 1.04307325e-007, 9.25271877e-008, 0.99998498, -4.764998e-008, 1, -9.25251555e-008, -0.999984741, -4.7650925e-008, 1.04307354e-007)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local Wedge  = Instance.new("WedgePart", m)
			Wedge:BreakJoints()
			Wedge.TopSurface = "Smooth"
			Wedge.Material = "SmoothPlastic"
			Wedge.Transparency = '0'
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.347999871, 0.463999987, 0.232000008)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-0.00574874878, -1.15999222, 0.4057827, 5.96037637e-008, 4.00195148e-008, 0.99998498, 3.54902951e-008, 1, -4.00182927e-008, -0.999984741, 3.54906078e-008, 5.96037779e-008)
    Wedgeweld.Parent = Wedge		
local Wedge  = Instance.new("WedgePart", m)
			Wedge:BreakJoints()
			Wedge.TopSurface = "Smooth"
			Wedge.Material = "SmoothPlastic"
			Wedge.Transparency = '0'
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.347999871, 0.812000036, 0.580000043)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-0.00572967529, -1.33398819, -0.116147518, 5.96037637e-008, 4.00212343e-008, 0.99998498, 3.54923806e-008, 1, -4.00200122e-008, -0.999984741, 3.54926932e-008, 5.96037779e-008)
    Wedgeweld.Parent = Wedge		
local Wedge  = Instance.new("WedgePart", m)
			Wedge:BreakJoints()
			Wedge.TopSurface = "Smooth"
			Wedge.Material = "SmoothPlastic"
			Wedge.Transparency = '0.5'
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Toothpaste")
			Wedge.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(0.00572967529, 1.85600281, 0.405664921, 1.04307418e-007, -1.49096778e-007, -0.99998498, -4.76601052e-008, -1, 1.49093907e-007, -0.999984741, 4.76605955e-008, -1.0430746e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.579999983, 1, 1)

function Cloak()
Face.Parent=nil
cloaked=true
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.2 do
                wait()
                v.Transparency=i
                end
                v.Transparency=1
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.2 do
                wait()
                derp.Transparency=i
                end
                derp.Transparency=1
                end),hatp)
                end
        end
        for _,v in pairs(blocks) do
                if v.className=="Part" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.2 do
                wait()
                v.Transparency=i
                end
                v.Transparency=1
                end))
                end
        end
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
			Bash()
		end
		elseif k=='e' then
		if attack==false then
			Impulse()
	end
	end
end)
function Impulse()
attack=true
Humanoid.Jump=true
for i=0,1,0.2 do
swait()
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.45)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0.5,0),.45)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(.5,0,0),.45)
LW.C0=clerp(LW.C0,cf(0,0.5,-0.7)*euler(1.5,-1.5,0)*euler(.7,0,0),.45)
RH.C0=clerp(RH.C0,RHC0*euler(-.2,0,0),.45)
LH.C0=clerp(LH.C0,LHC0*euler(-.2,0,0),.45)
end
blcf=nil
scfr=nil
so("http://roblox.com/asset/?id=231917801",Hitbox,1,1) 
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i=1,2 do
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
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(-.5,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(.5,0,0),.3)
RootJoint.C0=RootCF*euler(0,0.5,6.6*i)
end
end
attack = false
con1:disconnect()
end

function Bash()
attack=true
for i=0,1,0.1 do
swait()
--wld1.C0=clerp(wld1.C0,euler(1.1,0,0)*cf(0,1,-0.4),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,1)*euler(0.5,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.4),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.4,-1.4,0)*euler(-.6,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1,-1,0)*euler(.5,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,2.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1,0),.3)
end
Torso.Velocity=RootPart.CFrame.lookVector*200
so("http://roblox.com/asset/?id=200632211",Torso,1,.8) 
hit=nil
for i=1,20 do
if hit==nil then
swait()
end
end
Torso.Velocity=RootPart.CFrame.lookVector*0
Humanoid.WalkSpeed=0
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i=0,1,0.1 do
swait()
--wld1.C0=clerp(wld1.C0,euler(1.1,0,0)*cf(0,1,-0.4),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,1.4)*euler(-0.2,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.4),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(3,-1.4,0)*euler(-.6,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(2.3,-1.4,0)*euler(.5,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0),.3)
end
so("http://roblox.com/asset/?id=200632136",Hitbox,1,0.9) 
blcf=nil
scfr=nil
for i=0,1,0.2 do
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
--wld1.C0=clerp(wld1.C0,euler(2.2,0,0)*cf(0,.8,-0.3),.45)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,1.4)*euler(0.4,0,0),.45)
--RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.3)*euler(0,0,-1.4),.45)
RW.C0=clerp(RW.C0,cf(.5,0.2,-0.5)*euler(3,-1.4,0)*euler(-2.7,0,0),.45)
LW.C0=clerp(LW.C0,cf(-1.2,0.1,-0.3)*euler(0,-1.4,0)*euler(.5,0,0),.45)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0),.3)
end
swait(50)
Humanoid.WalkSpeed=16
con1:disconnect()
attack=false
end


function attackone()
    attack=true
    for i=0,1,0.2 do
            swait()
            Neck.C0=clerp(Neck.C0,necko*euler(.2,0,.5),.4)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.4)
            RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(2,0,1),.4)
            RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            LW.C0=clerp(LW.C0,cf(-1.3,0.5,-.3)*euler(.4,0,.2)*euler(0,-.2,0),.4)
            LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.4)
            LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.4)
    end
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,20,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
    for i=0,1,0.3 do
            swait()
			local blcf = Hitbox.CFrame
			if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
			local h = 5
			local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			scfr = blcf
			elseif not scfr then
			scfr = blcf
			end
            Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5)*euler(.2,0,0),.4)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.4)
            RW.C0=clerp(RW.C0,cf(1.2,0.5,-.3)*euler(.2,0,-.2)*euler(0,-.5,0),.4)
            RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.2),.4)
            LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.4)
            LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.4)
    end
so("http://roblox.com/asset/?id=233856140",Hitbox,1,1) 
    for i=0,1,0.2 do
            swait()
local blcf = Hitbox.CFrame
			if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
			local h = 5
			local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			scfr = blcf
			elseif not scfr then
			scfr = blcf
			end
            Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5)*euler(.2,0,0),.4)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.4)
            RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(.6,0,-1)*euler(0,-.7,0),.4)
            RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.2),.4)
            LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.4)
            LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.4)
    end
    attack=false
con1:disconnect()
end	

function attacktwo()
	attack=true
	for i=0,1,0.1 do
		swait()
		local blcf = Hitbox.CFrame
		if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
		local h = 5
		local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
		if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
		local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
		if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
		scfr = blcf
		elseif not scfr then
		scfr = blcf
		end
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.1,0,-1.2),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,1.2),.3)
		RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(.5,1.8,1.5),.3)
		LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.5,-0.5,.8),.3)
		RH.C0=clerp(RH.C0,RHC0*euler(-.2,0,0),.3)
		LH.C0=clerp(LH.C0,LHC0*euler(-.2,0,0),.3)
	end
	so("http://roblox.com/asset/?id=233856146",Hitbox,1,1) 
			con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,20,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
	for i=0,1,0.1 do
		swait()
		local blcf = Hitbox.CFrame
			if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
			local h = 5
			local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			scfr = blcf
			elseif not scfr then
			scfr = blcf
			end
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.1,0,1),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1),.3)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.2,1.2,0)*euler(-1.5,0,0),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(.2,-.2,-1.4),.3)
	end
	attack=false
	con1:disconnect()
end
 
function attackthree()
    attack=true
    for i=0,1,0.2 do
            swait()
            Neck.C0=clerp(Neck.C0,necko*euler(0,0,.2),.4)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.3),.4)
            RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,1.2)*euler(0,-2,0),.4)
            RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            LW.C0=clerp(LW.C0,cf(-1.4,0.5,-.2)*euler(.7,0,.1)*euler(0,-.4,0),.4)
            LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.3,0),.4)
            LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.3,0),.4)
    end
so("http://roblox.com/asset/?id=233856140",Hitbox,1,0.9)
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,20,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
    for i=0,1,0.1 do
            swait()
			local blcf = Hitbox.CFrame
			if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
			local h = 5
			local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			scfr = blcf
			elseif not scfr then
			scfr = blcf
			end
            Neck.C0=clerp(Neck.C0,necko*euler(.2,0,-.6),.35)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.6),.35)
            RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.2,0,-1.2)*euler(0,-1.2,0),.35)
            RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
            LW.C0=clerp(LW.C0,cf(-1.4,0.5,-.2)*euler(-.4,0,-.7)*euler(0,0,0),.35)
            LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
            RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.6,0),.35)
            LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.6,0),.35)
    end
    attack=false
con1:disconnect()
end

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
RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-45)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(45)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-2),math.rad(-25),math.rad(15)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-5)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
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
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.1,0,0),.2)
--RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-0.1,0,0.2),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-5),math.rad(-25),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.57,-(idleanim/2),1.3-(idleanim/2)),.2)
RH.C0=clerp(RH.C0,RHC0,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
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
--156434034Player=game:GetService("Players").LocalPlayer
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

function dmgstart(dmg,what)
	hitcon = what.Touched:connect(function(hit)
		local hum = hit.Parent:FindFirstChild("Humanoid")
		if hum and not hum:IsDescendantOf(Character) then
			hum:TakeDamage(dmg)
		end
	end)
end

function dmgstop()
	hitcon:disconnect()
end

user=game.Players.localPlayer
	char=user.Character
	mouse=user:GetMouse()
	m=Instance.new('Model',char)		
		
	blocks = {}
	function Part(Type, Parent, Name, Transparency, Reflectance, Size, CFrame, Material, BrickColor3)
		prt 				= Instance.new(Type,Parent)
		prt.Name 			= Name
		prt.FormFactor		= "Custom"
		prt.Transparency 	= Transparency
		prt.Reflectance 	= Reflectance
		prt.Size 			= Size
		prt.CFrame 			= CFrame
		prt.Material 		= Material
		prt.TopSurface 		= 'SmoothNoOutlines'
		prt.BottomSurface 	= 'SmoothNoOutlines'
		prt.LeftSurface 	= 'SmoothNoOutlines'
		prt.RightSurface 	= 'SmoothNoOutlines'
		prt.FrontSurface 	= 'SmoothNoOutlines'
		prt.BackSurface  	= 'SmoothNoOutlines'
		prt.BrickColor 		= BrickColor.new(tostring(BrickColor3))
		prt.Anchored 		= false
		prt.CanCollide 		= false
		table.insert(blocks, prt)
		return #blocks
	end
	
	function weldBetween(a, b)
	    weld = Instance.new("ManualWeld")
	    weld.Part0 = a
	    weld.Part1 = b
	    weld.C0 = CFrame.new()
	    weld.C1 = b.CFrame:inverse() * a.CFrame
	    weld.Parent = a
	    return weld;
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
 
function NoOutline(Part)
        Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
	
local Handle  = Instance.new("Part", m)
			Handle:BreakJoints()
			Handle.TopSurface = "Smooth"
			Handle.Material = "SmoothPlastic"
			Handle.Name = 'Handle'
			Handle.Transparency = '0'
			Handle.BottomSurface = "Smooth"
			Handle.FormFactor = "Custom" Handle.CanCollide = false
			Handle.BrickColor = BrickColor.new("Really black")
			Handle.Size = Vector3.new(0.347999871, 0.696000099, 0.232000008)
			    local Handleweld = Instance.new("ManualWeld")
   Handleweld.Part0 = Character["Right Arm"]
   Handleweld.Part1 = Handle  Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Handleweld.C1 = CFrame.new(0.987845421, -0.306541443, -0.0906600952, -1.08667452e-020, 0.999992371, -2.05761918e-011, 1.13746401e-010, -2.04624998e-011, -1, -0.99999249, -9.1779009e-021, -1.14058374e-010)
    Handleweld.Parent = Character["Right Arm"]
		
					local HandleMesh = Instance.new("CylinderMesh",Handle)
				HandleMesh.Name = "Mesh"
				HandleMesh.Offset = Vector3.new(0, 0, 0)
				HandleMesh.Scale = Vector3.new(1, 1, 1)
				
local EnergyBlade  = Instance.new("Part", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.30000001192093'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.347999871, 2.204, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.115883589, -2.02999496, -0.0057220459, 0.999984741, -2.81582917e-012, -7.16509824e-021, 3.0434856e-012, 1, -1.32355987e-010, 1.59434039e-020, 1.32983319e-010, 0.99998498)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("BlockMesh",EnergyBlade)
				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local EnergyBlade  = Instance.new("Part", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.463999867, 0.232000053, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.637008905, -2.55199051, -0.00542831421, 0.999984741, -3.22502476e-011, 1.42107378e-014, 3.24776907e-011, 1, 4.27509764e-011, -7.10536002e-015, -4.21135973e-011, 0.99998498)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("BlockMesh",EnergyBlade)
				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local EnergyBlade  = Instance.new("Part", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Cyan")
			EnergyBlade.Size = Vector3.new(0.347999871, 2.204, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(0.232154608, -2.02999496, -0.00569915771, 0.999984741, -3.41856231e-012, -7.23384551e-021, 3.6462118e-012, 1, -8.98658647e-011, 1.50691127e-020, 9.04928563e-011, 0.99998498)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("BlockMesh",EnergyBlade)
				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local EnergyBlade  = Instance.new("Part", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.231999859, 0.232000053, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.405785561, -3.01598358, -0.00569915771, 0.999984741, -6.75242154e-012, 4.26322389e-014, 6.98006149e-012, 1, -1.3368967e-010, -3.55268454e-014, 1.34328382e-010, 0.99998498)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("BlockMesh",EnergyBlade)
				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local EnergyBlade  = Instance.new("Part", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.231999859, 0.232000053, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.405785561, -2.08798981, -0.00569915771, 0.999984741, -5.92108654e-012, 4.26322389e-014, 6.14873343e-012, 1, -1.31955946e-010, -3.55268488e-014, 1.32594657e-010, 0.99998498)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("BlockMesh",EnergyBlade)
				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local EnergyBlade  = Instance.new("Part", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Cyan")
			EnergyBlade.Size = Vector3.new(0.463999867, 0.580000103, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.0576572418, -3.42163086, -0.00572967529, 0.999984741, -3.41856231e-012, -7.23384551e-021, 3.6462118e-012, 1, -8.98658647e-011, 1.50691127e-020, 9.04928563e-011, 0.99998498)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("BlockMesh",EnergyBlade)
				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local Hitbox  = Instance.new("Part", m)
			Hitbox:BreakJoints()
			Hitbox.TopSurface = "Smooth"
			Hitbox.Material = "SmoothPlastic"
			Hitbox.Transparency = '1'
			Hitbox.Name = 'Hitbox'
			Hitbox.BottomSurface = "Smooth"
			Hitbox.FormFactor = "Custom" Hitbox.CanCollide = false
			Hitbox.BrickColor = BrickColor.new("Toothpaste")
			Hitbox.Size = Vector3.new(1.39199984, 2.78399992, 0.200000003)
			    local Hitboxweld = Instance.new("ManualWeld")
   Hitboxweld.Part0 =  Handle   Hitboxweld.Part1 = Hitbox  Hitboxweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Hitboxweld.C1 = CFrame.new(-0.173881292, -2.78398895, -0.0057220459, 0.999984741, -2.81582917e-012, -7.16509824e-021, 3.0434856e-012, 1, -1.32355987e-010, 1.59434039e-020, 1.32983319e-010, 0.99998498)
    Hitboxweld.Parent = Hitbox		
					local HitboxMesh = Instance.new("BlockMesh",Hitbox)
				HitboxMesh.Name = "Mesh"
				HitboxMesh.Offset = Vector3.new(0, 0, 0)
				HitboxMesh.Scale = Vector3.new(1, 1, 0.579999983)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0.5'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.347999871, 0.232000083, 0.463999987)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000555276871, 1.27599716, 0.000175476074, 0.999984741, -9.42173162e-012, 6.34746155e-020, 9.64937852e-012, 1, 7.94176322e-011, -5.70437063e-020, -7.87930068e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.347999871, 0.348000079, 0.232000008)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000479221344, 0.521999359, 0.000118255615, 0.999984741, 1.34131739e-007, -2.7346955e-018, -1.34129465e-007, 1, 7.85025447e-011, 1.32724314e-017, -7.78780651e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 0.580000043, 0.232000008)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.465114594, 0.048664093, -0.00578308105, 0.583923936, 0.811801791, 5.05349096e-011, -0.811789036, 0.583932638, 6.63551367e-011, 2.43582585e-011, -7.91467031e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.347999871, 0.348000079, 0.232000008)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000507593155, 0.869998932, 0.00012588501, 0.999984503, 1.34133558e-007, -2.68759253e-018, -1.34131255e-007, 1, 8.30204516e-011, 1.38314673e-017, -8.23960414e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.347999871, 0.348000079, 0.232000008)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-4.72068787e-005, -0.521999359, -1.52587891e-005, 0.999984741, 1.02261602e-012, -5.88345014e-021, -7.94905808e-013, 1, -1.77614451e-011, 1.39408044e-020, 1.8387368e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 0.811999977, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.464137435, -1.33398819, -0.00573730469, 0.999984741, 4.12598775e-012, -6.37332645e-021, -3.89826366e-012, 1, -1.18157345e-010, 7.10538797e-015, 1.18781679e-010, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.34799999, 0.34799999, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000649213791, 1.37459946, 0.000183105469, 0.999984741, -5.89520099e-012, -2.52691724e-018, 6.1229008e-012, 1, 8.39504716e-011, 2.53063356e-018, -8.33259087e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Sphere				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.464072108, 0.243598938, -0.00573730469, 0.999984741, -1.23941309e-011, -1.74296799e-018, 1.26217274e-011, 1, 9.18617266e-011, 1.74603993e-018, -9.12373926e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Sphere				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.579999983, 0.579999983, 0.579999983)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(1.04399991, 0.200000003, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(7.74860382e-005, -0.869998932, -0.00573348999, 0.999984503, -1.97238059e-015, -2.50205131e-021, 2.29675653e-013, 1, -8.74495337e-011, 1.05936116e-020, 8.80765114e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.580000103, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Cyan")
			Part.Size = Vector3.new(0.232000008, 0.232000083, 0.232000008)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.00512361526, 1.27599716, 0.000205993652, 0.999984741, -1.28453255e-011, -2.6103748e-018, 1.30729186e-011, 1, 9.06156192e-011, 2.61342048e-018, -8.99911604e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Sphere				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.200000003, 1.04400003, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.463974833, -0.290000916, -0.00576782227, 0.999984503, 2.97894065e-008, -2.86348202e-011, -2.97887173e-008, 1, 1.01521291e-010, 2.86348098e-011, -1.00897159e-010, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.347999871, 0.200000003, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.000164270401, -0.753997803, -3.81469727e-005, 0.999984503, 3.06888716e-012, -1.38834606e-017, -2.8411544e-012, 1, -1.97783734e-011, 1.38918019e-017, 2.04043379e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.579999983, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.811999977, 0.463999987, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.116131306, -1.15999222, -0.00574874878, 0.999984741, 3.94835206e-012, -6.39358713e-021, -3.72062797e-012, 1, -1.16199814e-010, 7.10538797e-015, 1.16820581e-010, 0.99998498)
    Partweld.Parent = Part		
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = '0'
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.34799999, 0.34799999, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000649213791, 1.14260101, 0.000183105469, 0.999984741, -5.89520099e-012, -2.52691724e-018, 6.1229008e-012, 1, 8.39504716e-011, 2.53063356e-018, -8.33259087e-011, 0.99998498)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Sphere				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.00545501709, -2.78398895, 0.752885342, 1.0430734e-007, 9.23484151e-008, 0.99998498, -4.76255479e-008, 1, -9.2346383e-008, -0.999984741, -4.7626493e-008, 1.04307368e-007)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Cyan")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.580000043, 0.34800005)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(0.00572967529, -3.42163086, 0.348280907, 3.85203647e-010, -3.42899966e-007, -0.99998498, -5.29177049e-012, 1, -3.42894168e-007, 0.999984741, 5.5196854e-012, 3.85203758e-010)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Cyan")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.464000076, 0.464000016)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(0.00566864014, -3.94353485, -0.0578434467, 3.85203536e-010, -3.42944759e-007, -0.99998498, 1.11812989e-012, 1, -3.42938961e-007, 0.999984741, -8.90444023e-013, 3.85210752e-010)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Cyan")
			EnergyBlade.Size = Vector3.new(0.200000003, 2.204, 0.200000003)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.0057144165, 2.02999496, 0.464220524, 1.38043432e-009, 3.13060639e-007, 0.99998498, -3.24347216e-010, -1, 3.13055295e-007, 0.999984741, -3.24124921e-010, -1.38043454e-009)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 0.579999983)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.00545501709, 2.31999969, -0.520918846, 3.8519643e-010, 2.97935088e-007, 0.99998498, -3.43321933e-011, -1, 2.97929887e-007, 0.999984741, -3.41047642e-011, -3.85189436e-010)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(0.00545501709, 2.31999969, 0.752884865, 1.04307404e-007, -1.48921103e-007, -0.99998498, -4.7686104e-008, -1, 1.48918247e-007, -0.999984741, 4.76865942e-008, -1.04307446e-007)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(0.00545501709, -2.78398895, -0.52090168, 3.85210641e-010, -3.42831441e-007, -0.99998498, 2.68004976e-011, 1, -3.42825587e-007, 0.999984741, -2.65730112e-011, 3.85189436e-010)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(0.00572967529, 2.78398895, 0.405653715, 1.04307418e-007, -1.49098511e-007, -0.99998498, -4.76609436e-008, -1, 1.49095641e-007, -0.999984741, 4.76614339e-008, -1.0430746e-007)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.00572967529, -2.31999969, 0.405654192, 1.04307325e-007, 9.2525454e-008, 0.99998498, -4.76508113e-008, 1, -9.25234218e-008, -0.999984741, -4.76517563e-008, 1.04307354e-007)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local EnergyBlade  = Instance.new("WedgePart", m)
			EnergyBlade:BreakJoints()
			EnergyBlade.TopSurface = "Smooth"
			EnergyBlade.Material = "SmoothPlastic"
			EnergyBlade.Transparency = '0.5'
			EnergyBlade.Name = 'EnergyBlade'
			EnergyBlade.BottomSurface = "Smooth"
			EnergyBlade.FormFactor = "Custom" EnergyBlade.CanCollide = false
			EnergyBlade.BrickColor = BrickColor.new("Toothpaste")
			EnergyBlade.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local EnergyBladeweld = Instance.new("ManualWeld")
   EnergyBladeweld.Part0 =  Handle   EnergyBladeweld.Part1 = EnergyBlade  EnergyBladeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   EnergyBladeweld.C1 = CFrame.new(-0.00572967529, -3.24771881, 0.405654192, 1.04307325e-007, 9.25271877e-008, 0.99998498, -4.764998e-008, 1, -9.25251555e-008, -0.999984741, -4.7650925e-008, 1.04307354e-007)
    EnergyBladeweld.Parent = EnergyBlade		
					local EnergyBladeMesh = Instance.new("SpecialMesh",EnergyBlade)
					EnergyBladeMesh.MeshId = ""
					EnergyBladeMesh.MeshType = Enum.MeshType.Wedge				EnergyBladeMesh.Name = "Mesh"
				EnergyBladeMesh.Offset = Vector3.new(0, 0, 0)
				EnergyBladeMesh.Scale = Vector3.new(0.579999983, 1, 1)
				
local Wedge  = Instance.new("WedgePart", m)
			Wedge:BreakJoints()
			Wedge.TopSurface = "Smooth"
			Wedge.Material = "SmoothPlastic"
			Wedge.Transparency = '0'
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.347999871, 0.463999987, 0.232000008)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-0.00574874878, -1.15999222, 0.4057827, 5.96037637e-008, 4.00195148e-008, 0.99998498, 3.54902951e-008, 1, -4.00182927e-008, -0.999984741, 3.54906078e-008, 5.96037779e-008)
    Wedgeweld.Parent = Wedge		
local Wedge  = Instance.new("WedgePart", m)
			Wedge:BreakJoints()
			Wedge.TopSurface = "Smooth"
			Wedge.Material = "SmoothPlastic"
			Wedge.Transparency = '0'
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.347999871, 0.812000036, 0.580000043)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-0.00572967529, -1.33398819, -0.116147518, 5.96037637e-008, 4.00212343e-008, 0.99998498, 3.54923806e-008, 1, -4.00200122e-008, -0.999984741, 3.54926932e-008, 5.96037779e-008)
    Wedgeweld.Parent = Wedge		
local Wedge  = Instance.new("WedgePart", m)
			Wedge:BreakJoints()
			Wedge.TopSurface = "Smooth"
			Wedge.Material = "SmoothPlastic"
			Wedge.Transparency = '0.5'
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Toothpaste")
			Wedge.Size = Vector3.new(0.200000003, 0.232000098, 0.232000053)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(0.00572967529, 1.85600281, 0.405664921, 1.04307418e-007, -1.49096778e-007, -0.99998498, -4.76601052e-008, -1, 1.49093907e-007, -0.999984741, 4.76605955e-008, -1.0430746e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.579999983, 1, 1)

function Cloak()
Face.Parent=nil
cloaked=true
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.2 do
                wait()
                v.Transparency=i
                end
                v.Transparency=1
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.2 do
                wait()
                derp.Transparency=i
                end
                derp.Transparency=1
                end),hatp)
                end
        end
        for _,v in pairs(blocks) do
                if v.className=="Part" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.2 do
                wait()
                v.Transparency=i
                end
                v.Transparency=1
                end))
                end
        end
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
			Bash()
		end
		elseif k=='e' then
		if attack==false then
			Impulse()
	end
	end
end)
function Impulse()
attack=true
Humanoid.Jump=true
for i=0,1,0.2 do
swait()
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.45)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0.5,0),.45)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(.5,0,0),.45)
LW.C0=clerp(LW.C0,cf(0,0.5,-0.7)*euler(1.5,-1.5,0)*euler(.7,0,0),.45)
RH.C0=clerp(RH.C0,RHC0*euler(-.2,0,0),.45)
LH.C0=clerp(LH.C0,LHC0*euler(-.2,0,0),.45)
end
blcf=nil
scfr=nil
so("http://roblox.com/asset/?id=231917801",Hitbox,1,1) 
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i=1,2 do
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
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(-.5,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(.5,0,0),.3)
RootJoint.C0=RootCF*euler(0,0.5,6.6*i)
end
end
attack = false
con1:disconnect()
end

function Bash()
attack=true
for i=0,1,0.1 do
swait()
--wld1.C0=clerp(wld1.C0,euler(1.1,0,0)*cf(0,1,-0.4),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,1)*euler(0.5,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.4),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.4,-1.4,0)*euler(-.6,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1,-1,0)*euler(.5,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,2.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1,0),.3)
end
Torso.Velocity=RootPart.CFrame.lookVector*200
so("http://roblox.com/asset/?id=200632211",Torso,1,.8) 
hit=nil
for i=1,20 do
if hit==nil then
swait()
end
end
Torso.Velocity=RootPart.CFrame.lookVector*0
Humanoid.WalkSpeed=0
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i=0,1,0.1 do
swait()
--wld1.C0=clerp(wld1.C0,euler(1.1,0,0)*cf(0,1,-0.4),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,1.4)*euler(-0.2,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.4),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(3,-1.4,0)*euler(-.6,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(2.3,-1.4,0)*euler(.5,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0),.3)
end
so("http://roblox.com/asset/?id=200632136",Hitbox,1,0.9) 
blcf=nil
scfr=nil
for i=0,1,0.2 do
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
--wld1.C0=clerp(wld1.C0,euler(2.2,0,0)*cf(0,.8,-0.3),.45)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,1.4)*euler(0.4,0,0),.45)
--RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.3)*euler(0,0,-1.4),.45)
RW.C0=clerp(RW.C0,cf(.5,0.2,-0.5)*euler(3,-1.4,0)*euler(-2.7,0,0),.45)
LW.C0=clerp(LW.C0,cf(-1.2,0.1,-0.3)*euler(0,-1.4,0)*euler(.5,0,0),.45)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0),.3)
end
swait(50)
Humanoid.WalkSpeed=16
con1:disconnect()
attack=false
end


function attackone()
    attack=true
    for i=0,1,0.2 do
            swait()
            Neck.C0=clerp(Neck.C0,necko*euler(.2,0,.5),.4)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.4)
            RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(2,0,1),.4)
            RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            LW.C0=clerp(LW.C0,cf(-1.3,0.5,-.3)*euler(.4,0,.2)*euler(0,-.2,0),.4)
            LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.4)
            LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.4)
    end
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,20,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
    for i=0,1,0.3 do
            swait()
			local blcf = Hitbox.CFrame
			if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
			local h = 5
			local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			scfr = blcf
			elseif not scfr then
			scfr = blcf
			end
            Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5)*euler(.2,0,0),.4)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.4)
            RW.C0=clerp(RW.C0,cf(1.2,0.5,-.3)*euler(.2,0,-.2)*euler(0,-.5,0),.4)
            RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.2),.4)
            LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.4)
            LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.4)
    end
so("http://roblox.com/asset/?id=233856140",Hitbox,1,1) 
    for i=0,1,0.2 do
            swait()
local blcf = Hitbox.CFrame
			if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
			local h = 5
			local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			scfr = blcf
			elseif not scfr then
			scfr = blcf
			end
            Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5)*euler(.2,0,0),.4)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.4)
            RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(.6,0,-1)*euler(0,-.7,0),.4)
            RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.2),.4)
            LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.4)
            LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.4)
    end
    attack=false
con1:disconnect()
end	

function attacktwo()
	attack=true
	for i=0,1,0.1 do
		swait()
		local blcf = Hitbox.CFrame
		if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
		local h = 5
		local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
		if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
		local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
		if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
		scfr = blcf
		elseif not scfr then
		scfr = blcf
		end
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.1,0,-1.2),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,1.2),.3)
		RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(.5,1.8,1.5),.3)
		LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.5,-0.5,.8),.3)
		RH.C0=clerp(RH.C0,RHC0*euler(-.2,0,0),.3)
		LH.C0=clerp(LH.C0,LHC0*euler(-.2,0,0),.3)
	end
	so("http://roblox.com/asset/?id=233856146",Hitbox,1,1) 
			con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,20,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
	for i=0,1,0.1 do
		swait()
		local blcf = Hitbox.CFrame
			if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
			local h = 5
			local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			scfr = blcf
			elseif not scfr then
			scfr = blcf
			end
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.1,0,1),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1),.3)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.2,1.2,0)*euler(-1.5,0,0),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(.2,-.2,-1.4),.3)
	end
	attack=false
	con1:disconnect()
end
 
function attackthree()
    attack=true
    for i=0,1,0.2 do
            swait()
            Neck.C0=clerp(Neck.C0,necko*euler(0,0,.2),.4)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.3),.4)
            RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,1.2)*euler(0,-2,0),.4)
            RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            LW.C0=clerp(LW.C0,cf(-1.4,0.5,-.2)*euler(.7,0,.1)*euler(0,-.4,0),.4)
            LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
            RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.3,0),.4)
            LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.3,0),.4)
    end
so("http://roblox.com/asset/?id=233856140",Hitbox,1,0.9)
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,20,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
    for i=0,1,0.1 do
            swait()
			local blcf = Hitbox.CFrame
			if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
			local h = 5
			local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
			if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
			scfr = blcf
			elseif not scfr then
			scfr = blcf
			end
            Neck.C0=clerp(Neck.C0,necko*euler(.2,0,-.6),.35)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.6),.35)
            RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.2,0,-1.2)*euler(0,-1.2,0),.35)
            RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
            LW.C0=clerp(LW.C0,cf(-1.4,0.5,-.2)*euler(-.4,0,-.7)*euler(0,0,0),.35)
            LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
            RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.6,0),.35)
            LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.6,0),.35)
    end
    attack=false
con1:disconnect()
end

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
RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-45)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(45)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-2),math.rad(-25),math.rad(15)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-5)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
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
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.1,0,0),.2)
--RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-0.1,0,0.2),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-5),math.rad(-25),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.57,-(idleanim/2),1.3-(idleanim/2)),.2)
RH.C0=clerp(RH.C0,RHC0,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
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

 
 

module[1] = {"KungFu",function()
--==Made by LuisPambid==--


repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character
local player=game.Players.LocalPlayer
local char=player.Character
local torso=char.Torso
local head=char.Head
local human=char.Humanoid
local arm={Left=char["Left Arm"], Right=char["Right Arm"]}
local leg={Left=char["Left Leg"], Right=char["Right Leg"]}
local joints={LeftShoulder=torso["Left Shoulder"], RightShoulder=torso["Right Shoulder"], LeftHip=torso["Left Hip"], RightHip=torso["Right Hip"]}
joints.LeftShoulder.Part0=torso
joints.RightShoulder.Part0=torso
joints.LeftHip.Part0=torso
joints.RightHip.Part0=torso
local c=function(f) Spawn(f) end
local add={
	Part=function(par, a, c, col, t, s, cf, ms)
		local p=Instance.new("Part", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or CFrame.new()  end)
		local m=Instance.new("BlockMesh", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) end)
		return p
	end,
	Wedge=function(par, a, c, col, t, s, cf, ms)
		local p=Instance.new("WedgePart", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or CFrame.new()  end)
		local m=Instance.new("SpecialMesh", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) m.MeshType="Wedge" end)
		return p
	end,
	Gui=function(ins, par, bc, bg, tc, fs, text, t, s, pos)
		local g=Instance.new(ins, par) pcall(function() g.BorderColor=BrickColor.new(bc) g.BackgroundColor=BrickColor.new(bg) g.TextColor=BrickColor.new(tc) g.FontSize=fs g.Font="ArialBold" g.Text=text g.Transparency=t g.Size=s g.Position=pos  end)
		return g
	end,
	Weld=function(par, p1, cf)
		local w=Instance.new("Weld", par) pcall(function() w.Part0=w.Parent or par w.Part1=p1 w.C1=cf or CFrame.new() end)
		return w
	end,
	Mesh=function(ins, par, s, of, t, id)
		local m=Instance.new(ins, par) pcall(function() m.Scale=s or Vector3.new() m.Offset=of or Vector3.new() m.MeshId=id or "" m.MeshType=t end)
		return m
	end,
	Sound=function(parent, id, volume, pitch)
		local s=Instance.new("Sound", parent) pcall(function() s.SoundId=id s.Volume=volume s.Pitch=pitch end)
		return s
	end,
}
local modelName="Kung Fu" --Name here
pcall(function() player.Backpack[modelName]:remove() char[modelName]:remove() char["CharacterParts"]:remove() end)
local model=Instance.new("Model", char) model.Name="CharacterParts"
local modelB=Instance.new("Model", char) modelB.Name=modelName
local bin=Instance.new("HopperBin", player.Backpack) bin.Name=modelName
local skincolor="Really black"
local gui=Instance.new("ScreenGui")
local body={}
local animate={}
local obj={}
--Variables--
local trailDeb=false
local keyDeb=false
local hitDeb=false
local loop=false
local speed=16
local combo=0
local Slash=add.Sound(torso, "rbxasset://sounds//swordslash.wav", 1, 1.2)
local Hit=add.Sound(torso, "http://roblox.com/asset/?id=10209225", 1, 1)
function createParts()
	--==PARTS==--
	torso.Transparency=1
	for i, v in pairs(char:children()) do if v:isA("CharacterMesh") then v:remove() end end
	gui.Parent=player.PlayerGui gui.Name=modelName
	body.Head=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	body.Torso=add.Part(model, false, false, skincolor, 0, Vector3.new(2, 2, 1), nil)
	body.ArmLeft, body.ArmRight=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	body.LegLeft, body.LegRight=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	--==WELDS==--
	body.HeadW=add.Weld(body.Head, body.Torso, CFrame.new(0, 1.5, 0))
	body.TorsoW=add.Weld(body.Torso, torso, nil)
	body.ArmLeftW, body.ArmRightW=add.Weld(body.ArmLeft, body.Torso, CFrame.new(-1.5, .5, 0)), add.Weld(body.ArmRight, body.Torso, CFrame.new(1.5, .5, 0))
	body.LegLeftW, body.LegRightW=add.Weld(body.LegLeft, body.Torso, CFrame.new(-.5, -1, 0)), add.Weld(body.LegRight, body.Torso, CFrame.new(.5, -1, 0))
	--==WELDS2==--
	add.Weld(body.Head, head, nil)
	add.Weld(arm.Left, body.ArmLeft, CFrame.new(0, -.5, 0))
	add.Weld(arm.Right, body.ArmRight, CFrame.new(0, -.5, 0))
	joints.LeftHip.Part0=body.Torso
	joints.RightHip.Part0=body.Torso
	--==Sign==--
	body.Part=add.Part(model, false, false, "White", 0, Vector3.new(.2, 1, .2))
	add.Weld(body.Part, body.Torso, CFrame.new(-.25, 0, .5))
	body.Part=add.Part(model, false, false, "White", 0, Vector3.new(.7, .2, .2))
	add.Weld(body.Part, body.Torso, CFrame.new(0, -.5, .5))
	body.Part=add.Part(model, false, false, "White", 0, Vector3.new(.2, 1, .2))
	add.Weld(body.Part, body.Torso, CFrame.new(.25, 0, -.5))
	body.Part=add.Part(model, false, false, "White", 0, Vector3.new(.7, .2, .2))
	add.Weld(body.Part, body.Torso, CFrame.new(0, -.5, -.5))
	---------------------------------------------------------------------------------------
	animate={
		["Head"]=function(cf)
			body.HeadW.C1=CFrame.new(0, 1.5, 0)*cf
		end;
		["Torso"]=function(cf)
			body.TorsoW.C1=(cf or CFrame.new()*CFrame.Angles(0, 0, 0))
		end;
		["ArmLeft"]=function(cf)
			body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*(cf or CFrame.new()*CFrame.Angles(0, 0, 0))
		end;
		["ArmRight"]=function(cf)
			body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*(cf or CFrame.new()*CFrame.Angles(0, 0, 0))
		end;
		["LegLeft"]=function(cf)
			legLeftW=add.Weld(leg.Left, body.LegLeft, CFrame.new(0, -1, 0))
			body.LegLeftW.C1=CFrame.new(-.5, -1, 0)*(cf or CFrame.new()*CFrame.Angles(0, 0, 0))
			coroutine.resume(coroutine.create(function()
				wait()
				legLeftW:remove()
			end))
		end;
		["LegRight"]=function(cf)
			legRightW=add.Weld(leg.Right, body.LegRight, CFrame.new(0, -1, 0))
			body.LegRightW.C1=CFrame.new(.5, -1, 0)*(cf or CFrame.new()*CFrame.Angles(0, 0, 0))
			coroutine.resume(coroutine.create(function()
				wait()
				legRightW:remove()
			end))
		end;
	}
	--==Objects==--	
	obj.attackLabel=add.Gui("TextLabel", gui, "Really black", "Really black", "White", "Size18", "(5) Combos", 0, UDim2.new(0, 150, 0, 50), UDim2.new(0, 0, 0, 150))
	obj.attackLabel2=add.Gui("TextLabel", obj.attackLabel, "Really black", "Really black", "White", "Size18", "Punch[Right]", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
	obj.attackLabel3=add.Gui("TextLabel", obj.attackLabel2, "Really black", "Really black", "White", "Size18", "Punch[Left]", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
	obj.attackLabel4=add.Gui("TextLabel", obj.attackLabel3, "Really black", "Really black", "White", "Size18", "Kick[Right]", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
	obj.attackLabel5=add.Gui("TextLabel", obj.attackLabel4, "Really black", "Really black", "White", "Size18", "Kick[Left]", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
	obj.attackLabel6=add.Gui("TextLabel", obj.attackLabel5, "Really black", "Really black", "White", "Size18", "RappidKick", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
	for i, v in pairs(modelB:children()) do
		if i==0 then return end
	end
	--==Weapon==--
end
function removeParts()
	pcall(function()
		if torso then
			joints.LeftShoulder.Part0=torso
			joints.RightShoulder.Part0=torso
			joints.LeftHip.Part0=torso
			joints.RightHip.Part0=torso
			torso.Transparency=0
		end
		player.PlayerGui[modelName]:remove()
		for i, v in pairs(model:children()) do v:remove() end
	end)
end
function lightningGen(startPos, endPos)
	local magnitude=(startPos-endPos).magnitude
	local distance=(startPos+endPos)/2
	local pattern=add.Part(workspace, true, false, "White", 1, Vector3.new(.2, .2, magnitude), CFrame.new(distance, startPos))
	local startPosProx=startPos
	for i=1, 9 do
		local startPosProx2=startPosProx
		local random=Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
		local findSize=pattern.Size.z/10
		local findOffSet=pattern.CFrame.lookVector*-1
		local compute=i*findSize*findOffSet
		local newStartPos=startPos
		local newEndPos=CFrame.new(random+compute+newStartPos).p
		local magnitude=(startPosProx2-newEndPos).magnitude
		local distance=(startPosProx2+newEndPos)/2
		local lightning=add.Part(workspace, true, false, "Bright yellow", 0, Vector3.new(.2, .2, magnitude), CFrame.new(distance, startPosProx2))
		c(function()
			for i=0, 1, .1 do wait()
				lightning.Transparency=i
			end
			lightning:remove()
		end)
		startPosProx=newEndPos
	end
	pattern:remove()
end
function computePos(pos, pos2)
	local pos3=Vector3.new(pos2.x, pos.y, pos2.z)
	return CFrame.new(pos, pos3)
end
function nearTorso(pos, dis)
	local temp
	local distance=dis
	for i, v in pairs(workspace:children()) do
		if v:isA("Model") then
			temp=v:findFirstChild("Torso")
			local humanoid=v:findFirstChild("Humanoid")
			if temp and humanoid and v~=char and (temp.CFrame.p-pos).magnitude<distance then
				distance=(temp.CFrame.p-pos).magnitude
				return temp
			end
		end
	end
end
function trail(pos, cf, col, size)
	c(function()
		local old=(pos.CFrame*cf).p
		while trailDeb==true do
			wait()
			local new=(pos.CFrame*cf).p
			local mag=(old-new).magnitude
			local dis=(old+new)/2
			local trail=add.Part(workspace, true, false, col or "White", 0, Vector3.new(size or .2, mag, size or .2), CFrame.new(dis, new)*CFrame.Angles(math.pi/2, 0, 0)) trail.Name="Effect"
			local tMesh=add.Mesh("CylinderMesh", trail, Vector3.new(1, 1, 1), nil, nil)
			old=new
			c(function()
				for i=1, 0, -.1 do
					wait()
					tMesh.Scale=tMesh.Scale*Vector3.new(i, 1, i)
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
end
function rayCast(pos, dir, col)
	local magnitude=(pos-dir).magnitude
	local distance=(pos+dir)/2
	local ray=add.Part(workspace, true, false, col, 0, Vector3.new(.2, magnitude, .2), CFrame.new(distance, pos))
	return ray
end
function dmgHit(h)
	local dmg=math.random(5, 10)
	if keyDeb==true and h.Parent:findFirstChild("Humanoid") and hitDeb==false and h.Parent~=char then
		hitDeb=true
		local hHuman=h.Parent:findFirstChild("Humanoid")
		local hTorso=h.Parent:findFirstChild("Torso")
		hHuman.Health=hHuman.Health-dmg
		local fakeM=Instance.new("Model", workspace) fakeM.Name=-dmg
		local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
		local effect=add.Part(fakeM, true, false, "Bright red", 0, Vector3.new(1, 1, 1), hTorso.CFrame*CFrame.new(0, 4, 0)) effect.Name="Head"
		local fakeMesh=add.Mesh("CylinderMesh", effect, Vector3.new(1, .5, 1), nil, nil)
		local effect=add.Part(workspace, true, false, "White", .5, Vector3.new(1, 1, 1), CFrame.new(h.CFrame.p, torso.CFrame.p)*CFrame.Angles(-math.pi/2, 0, 0))
		local effectM=add.Mesh("SpecialMesh", effect, Vector3.new(1, 1, 1), nil, nil, "http://www.roblox.com/asset/?id=20329976")
		c(function()
			for i=1, 2, .1 do wait()
				effectM.Scale=Vector3.new(i, i/2, i)
			end
			effect:remove()
		end)
		game.Debris:addItem(fakeM, 1)
		wait(.1)
		hitDeb=false
	end
end
function idled()
	animate.ArmLeft(CFrame.new(.5, 0, 0)*CFrame.Angles(math.rad(135), 0, math.rad(5)))
	animate.ArmRight(CFrame.new(-.5, 0, 0)*CFrame.Angles(math.rad(135), 0, -math.rad(5)))
end
function doAttacks()
	combo=combo+1
	if keyDeb==false then
		keyDeb=true
		if combo>0 then Slash:play()
			trailDeb=true
			trail(body.ArmRight, CFrame.new(0, -2.5, 0))
			for i=0, 1, .2 do wait()
				animate.Torso(CFrame.Angles(0, math.rad(90)*i, 0))
				animate.ArmRight(CFrame.Angles(math.rad(90), 0, math.rad(90)*i))
			end
			trailDeb=false
			for i=1, 0, -.2 do wait()
				animate.Torso(CFrame.Angles(0, math.rad(90)*i, 0))
				animate.ArmRight(CFrame.Angles(math.rad(90), 0, math.rad(90)*i))
			end
		end
		if combo>2 then Slash:play()
			trailDeb=true
			trail(body.ArmLeft, CFrame.new(0, -2.5, 0))
			for i=0, 1, .2 do wait()
				animate.Torso(CFrame.Angles(0, -math.rad(90)*i, 0))
				animate.ArmLeft(CFrame.Angles(math.rad(90), 0, -math.rad(90)*i))
			end
			trailDeb=false
			for i=1, 0, -.2 do wait()
				animate.Torso(CFrame.Angles(0, -math.rad(90)*i, 0))
				animate.ArmLeft(CFrame.Angles(math.rad(90), 0, -math.rad(90)*i))
			end
		end
		if combo>3 then Slash:play()
			idled()
			trailDeb=true
			trail(body.LegRight, CFrame.new(0, -2.5, 0))
			for i=0, 1, .2 do wait()
				animate.Torso(CFrame.new(0, -1*i, 0)*CFrame.Angles(math.rad(135)*i, math.rad(90)*i, 0))
				animate.LegLeft(CFrame.new(-.5*i, 0, 0)*CFrame.Angles(0, 0, -math.rad(135)*i))
			end
			trailDeb=false
			for i=1, 0, -.2 do wait()
				animate.Torso(CFrame.new(0, -1*i, 0)*CFrame.Angles(math.rad(135)*i, math.rad(90)*i, 0))
				animate.LegLeft(CFrame.new(-.5*i, 0, 0)*CFrame.Angles(0, 0, -math.rad(135)*i))
			end
		end
		if combo>4 then Slash:play()
			idled()
			trailDeb=true
			trail(body.LegLeft, CFrame.new(0, -2.5, 0))
			for i=0, 1, .2 do wait()
				animate.Torso(CFrame.new(0, -1*i, 0)*CFrame.Angles(math.rad(135)*i, -math.rad(90)*i, 0))
				animate.LegRight(CFrame.new(.5*i, 0, 0)*CFrame.Angles(0, 0, math.rad(135)*i))
			end
			trailDeb=false
			for i=1, 0, -.2 do wait()
				animate.Torso(CFrame.new(0, -1*i, 0)*CFrame.Angles(math.rad(135)*i, -math.rad(90)*i, 0))
				animate.LegRight(CFrame.new(.5*i, 0, 0)*CFrame.Angles(0, 0, math.rad(135)*i))
			end
		end
		if combo>5 then
			idled()
			for i=0, 1, .2 do wait()
				animate.Torso(CFrame.new(0, -.8*i, 0)*CFrame.Angles(math.rad(80)*i, -math.rad(90)*i, 0))
			end
			for i=1, 20 do wait() Slash:play()
				torso.CFrame=torso.CFrame+torso.CFrame.lookVector*.2
				animate.LegLeft(CFrame.Angles(math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45))))
				animate.LegRight(CFrame.Angles(math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45))))
			end
			for i=1, 0, -.2 do wait()
				animate.Torso(CFrame.new(0, -.8*i, 0)*CFrame.Angles(math.rad(80)*i, -math.rad(90)*i, 0))
			end
		end
		trailDeb=false
		keyDeb=false
		combo=0
		idled()
	end
end
bin.Selected:connect(function(mouse) createParts()
	for i, v in pairs(char:children()) do if v:isA("BasePart") then v.Touched:connect(dmgHit) end end
	for i=0, 1, .1 do wait()
		animate.ArmLeft(CFrame.new(.5*i, 0, 0)*CFrame.Angles(math.rad(135)*i, 0, math.rad(5)*i))
		animate.ArmRight(CFrame.new(-.5*i, 0, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(5)*i))
	end
	mouse.Button1Down:connect(doAttacks)
end)
bin.Deselected:connect(function()
	for i=1, 0, -.1 do wait()
		animate.ArmLeft(CFrame.new(.5*i, 0, 0)*CFrame.Angles(math.rad(135)*i, 0, math.rad(5)*i))
		animate.ArmRight(CFrame.new(-.5*i, 0, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(5)*i))
	end
	removeParts()
end)--mediafire
end}
module[2] = {"Kurragasang",function()
--[[The Weapon Of the vaktovian lieutenant Mellisa D. Exanine]]--

user=game:service'Players'.localPlayer;
char=user.Character
mouse=user:GetMouse()
m=Instance.new('Model',char)
hold=false
deb = false
Game.Lighting.Outlines = false
Anim = 'None'
--[[char.Humanoid.MaxHealth=500
char.Humanoid.Health=500
pcall(function()
char.Shirt:remove()
char.Pants:remove()
char.Head.face:remove()
char["Body Colors"].HeadColor = BrickColor.new("Mid gray")
char["Body Colors"].LeftArmColor = BrickColor.new("Mid gray")
char["Body Colors"].RightArmColor = BrickColor.new("Mid gray")
char["Body Colors"].TorsoColor = BrickColor.new("Mid gray")
char.Head.Material = "SmoothPlastic"
char.Torso.Material = "SmoothPlastic"
char["Left Arm"].Material = "SmoothPlastic"
char["Right Arm"].Material = "SmoothPlastic"
char["Left Leg"].Material = "SmoothPlastic"
char["Right Leg"].Material = "SmoothPlastic"
end)

for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end

game:service'InsertService':LoadAsset(14815761):children()[1].Parent = char
game:service'InsertService':LoadAsset(22588983):children()[1].Parent = char
game:service'InsertService':LoadAsset(25737682):children()[1].Parent = char
game:service'InsertService':LoadAsset(134681557):children()[1].Parent = char
game:service'InsertService':LoadAsset(128341119):children()[1].Parent = char
game:service'InsertService':LoadAsset(13038375):children()[1].Parent = char.Head

pcall(function()
char["Spy Shades"].Handle.Transparency = 0.1
end)

for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v.Handle.Material = "SmoothPlastic"
        v.Handle.BrickColor = BrickColor.new("Really black")
        v.Handle.Mesh.TextureId = ""
    end
end]]--

function DoDamage(hum,dmg)
        if hum.Health == 0 then return end
        local a,b = ypcall(function()
                hum:TakeDamage(dmg)
                --hum.Health = hum.Health - dmg
                if not hum.Parent:FindFirstChild('Torso') then return end
                local m = Instance.new('Model',workspace)
                m.Name = dmg
                local h = Instance.new('Humanoid',m)
                h.MaxHealth = 0
                local p = Instance.new('Part',m)
                p.Material = 'SmoothPlastic'
                p.BrickColor = BrickColor.new('Really red')
                p.Name = 'Head'
                p.FormFactor = 'Custom'
                p.Size = Vector3.new(1,1,1)
                p.Transparency = 0.5
                p.CanCollide = false
                p.Anchored = true
                p:BreakJoints()
                local pmsh = Instance.new('SpecialMesh',p)
                pmsh.MeshType = 'FileMesh'
                pmsh.Scale = Vector3.new(1,1,1)
                pmsh.MeshId = 'http://www.roblox.com/Asset/?id=9756362'
                game.Debris:AddItem(m,5)
                p.CFrame = CFrame.new(hum.Parent.Torso.Position) * CFrame.new(math.random(-2,2),2.5,math.random(-2,2))
                local rAm = math.random(3,6)/100
                coroutine.wrap(function()
                for i=1,300 do 
                p.CFrame = p.CFrame * CFrame.new(0,rAm,0) 
                wait()
                end 
                p:Destroy()
                end)()
        end)
        if not a then print(b) end
end


function playSound(id,parent,volume,pitch)
        local sound = Instance.new('Sound',parent or workspace)
        sound.SoundId = 'http://www.roblox.com/asset?id='..id
        sound.Volume = volume or 1
        sound.Pitch = pitch or 1
        coroutine.wrap(function()
                wait()
                sound:Play()
                wait(10)
                sound:Stop()
                sound:Destroy()
        end)()
        return sound
end

function weld(p0,p1,c0,c1,par)
local w = Instance.new('Weld',p0 or par)
w.Part0 = p0
w.Part1 = p1
w.C0 = c0 or CFrame.new()
w.C1 = c1 or CFrame.new()
return w
end

function lerp(a, b, t)
    return a + (b - a)*t
end

do
        local function QuaternionFromCFrame(cf) local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() local trace = m00 + m11 + m22 if trace > 0 then local s = math.sqrt(1 + trace) local recip = 0.5/s return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 else local i = 0 if m11 > m00 then i = 1 end if m22 > (i == 0 and m00 or m11) then i = 2 end if i == 0 then local s = math.sqrt(m00-m11-m22+1) local recip = 0.5/s return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip elseif i == 1 then local s = math.sqrt(m11-m22-m00+1) local recip = 0.5/s return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip elseif i == 2 then local s = math.sqrt(m22-m00-m11+1) local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip end end end
         
        local function QuaternionToCFrame(px, py, pz, x, y, z, w) local xs, ys, zs = x + x, y + y, z + z local wx, wy, wz = w*xs, w*ys, w*zs local xx = x*xs local xy = x*ys local xz = x*zs local yy = y*ys local yz = y*zs local zz = z*zs return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) end
         
        local function QuaternionSlerp(a, b, t) local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] local startInterp, finishInterp; if cosTheta >= 0.0001 then if (1 - cosTheta) > 0.0001 then local theta = math.acos(cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((1-t)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta  else startInterp = 1-t finishInterp = t end else if (1+cosTheta) > 0.0001 then local theta = math.acos(-cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((t-1)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta else startInterp = t-1 finishInterp = t end end return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp        end

        function clerp(a,b,t)
                local qa = {QuaternionFromCFrame(a)}
                local qb = {QuaternionFromCFrame(b)}
                local ax, ay, az = a.x, a.y, a.z
                local bx, by, bz = b.x, b.y, b.z

                local _t = 1-t
                return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t))
        end
end
local his = {}

function ctween(tar,prop,c2,t,b)
        local function doIt()
        local now = tick()
        his[tar] = now
        local c1 = tar[prop]
        for i=1,t do
                if his[tar] ~= now then return end
                tar[prop] = clerp(c1,c2,1/t*i)
                wait(1/60)
        end
        end
        if b then coroutine.wrap(doIt)() else doIt() end
end

local nk = char.Torso.Neck
local nk0 = CFrame.new(0,1,0) * CFrame.Angles(-math.pi/2,0,math.pi)
local ra,la = char['Right Arm'], char['Left Arm']
ra:BreakJoints()
la:BreakJoints()
Anim = 'Idle'
local rs = weld(char.Torso,ra,CFrame.new(1.25,.5,0), CFrame.new(-.25,.5,0),stuff)
local ls = weld(char.Torso,la,CFrame.new(-1.25,.5,0), CFrame.new(.25,.5,0),stuff)
local rs0 = rs.C0
local ls0 = ls.C0

function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
pmsh = Instance.new('SpecialMesh')
pmsh.MeshType = 'FileMesh'
pmsh.Scale = Vector3.new(1,1,1)
pmsh.MeshId = 'http://www.roblox.com/Asset/?id=9756362'
S=Instance.new("Part")
S.Material = "SmoothPlastic"
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
S.Parent=char
pmsh.Parent = S
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 


function EVENMOARMAGIX(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	msh1.MeshType = "Sphere" 
	S=Instance.new("Part")
	S.Material = "SmoothPlastic"
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
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
	S.Parent=char
	SL = Instance.new("PointLight",S)
	SL.Range = 10
	SL.Brightness = 2
	SL.Color = Color3.new(255,0,0)
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function WaveEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(x1,y1,z1) 
	msh1.MeshId = "http://www.roblox.com/asset/?id=20329976" 
	S=Instance.new("Part")
	S.Material = "SmoothPlastic"
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
	S.Parent=char
	SL = Instance.new("PointLight",S)
	SL.Range = 60
	SL.Brightness = 60
	SL.Color = Color3.new(255,0,0)
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function Wave() 
playSound(161006182,la,1,1)
--playSound(161006163,la,1,1)
local wav1 = Instance.new("Part") 
wav1.Parent = workspace 
wav1.BrickColor = BrickColor.new("Really black") 
wav1.CanCollide = false 
wav1.Anchored = true 
wav1.Size = Vector3.new(2,2,2) 
wav1.CFrame = char['Left Arm'].CFrame 
meh1 = Instance.new('SpecialMesh',wav1)
meh1.MeshType = 'FileMesh'
meh1.Scale = Vector3.new(1,1,1)
meh1.MeshId = 'http://www.roblox.com/Asset/?id=9756362'
local wav2 = Instance.new("Part") 
wav2.Parent = workspace 
wav2.BrickColor = BrickColor.new("Really red") 
wav2.CanCollide = false 
wav2.Anchored = true 
wav2.Size = Vector3.new(2,2,2) 
wav2.CFrame = char['Left Arm'].CFrame 
meh2 = Instance.new('SpecialMesh',wav2)
meh2.MeshType = 'FileMesh'
meh2.Scale = Vector3.new(1,1,1)
meh2.MeshId = 'http://www.roblox.com/Asset/?id=9756362'
	local c = Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
		local targ = head.Position - wav2.Position;
		local mag = targ.magnitude;
		if mag <= 8 and c[i].Name ~= user.Name then
	        head.CFrame = head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0) 
		--Damagefunc1(head,5,0)
		hitcon = wav1.Touched:connect(function(hit)
			local hum = hit.Parent:FindFirstChild('Humanoid')
			if hum and not hum:IsDescendantOf(char) then
                                DoDamage(hum,dmg or 5)
			end
		end)
		end
end
end
coroutine.resume(coroutine.create(function() 
for i = 0,1,0.1 do 
wait() 
meh1.Scale = meh1.Scale + Vector3.new(0.5,0.5,0.5) 
meh2.Scale = meh2.Scale + Vector3.new(0.5,0.5,0.5) 
wav1.CFrame = wav1.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 
wav2.CFrame = wav2.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 
wav1.Transparency = wav1.Transparency + 0.1 
wav2.Transparency = wav2.Transparency + 0.1 
end 
wav1.Parent = nil 
wav2.Parent = nil 
end)) 
end 

function Wave2() 
--sss(ExciPart2,1) 
local wav1 = Instance.new("Part") 
wav1.Parent = workspace 
wav1.BrickColor = BrickColor.new("Really red") 
wav1.CanCollide = false 
wav1.Anchored = true 
wav1.Size = Vector3.new(5,5,5) 
wav1.CFrame = la.CFrame
local wav2 = Instance.new("Part") 
wav2.Parent = workspace 
wav2.BrickColor = BrickColor.new("Really black") 
wav2.CanCollide = false 
wav2.Anchored = true 
wav2.Size = Vector3.new(5,5,5) 
wav2.CFrame = la.CFrame
SL = Instance.new("PointLight",wav1)
	SL.Range = 60
	SL.Brightness = 60
	SL.Color = Color3.new(255,0,0)
local meh1 = Instance.new("SpecialMesh") 
meh1.Parent = wav1 
meh1.MeshId = "http://www.roblox.com/asset/?id=9756362" 
meh1.Scale = Vector3.new(1,1,1) 
local meh2 = Instance.new("SpecialMesh") 
meh2.Parent = wav2 
meh2.MeshId = "http://www.roblox.com/asset/?id=9756362" 
meh2.Scale = Vector3.new(0.5,0.5,0.5) 
	local c = Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
		local targ = head.Position - wav1.Position;
		local mag = targ.magnitude;
		if mag <= 8 and c[i].Name ~= user.Name then
	        head.CFrame = head.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0) 
		--Damagefunc2(head,5,10)
		hitcon = wav1.Touched:connect(function(hit)
			local hum = hit.Parent:FindFirstChild('Humanoid')
			if hum and not hum:IsDescendantOf(char) then
                                DoDamage(hum,dmg or 80)

			end
		
		end)
		end
end
	end 
	
	hitcon = wav2.Touched:connect(function(hit)
			local hum = hit.Parent:FindFirstChild('Humanoid')
			if hum and not hum:IsDescendantOf(char) then
                                DoDamage(hum,dmg or 80)
			end
	end)
coroutine.resume(coroutine.create(function() 
for i = 0,1,0.1 do 
wait() 
meh1.Scale = meh1.Scale + Vector3.new(0.5,1,0.5) 
wav1.CFrame = wav1.CFrame 
meh2.Scale = meh1.Scale + Vector3.new(0.5,1,0.5) 
wav2.CFrame = wav1.CFrame 
end 
for i = 0,1,0.1 do 
wait() 
meh1.Scale = meh1.Scale + Vector3.new(0.3,0.3,0.3) 
wav1.CFrame = wav1.CFrame 
wav1.Transparency = wav1.Transparency + 0.1 
meh2.Scale = meh1.Scale + Vector3.new(0.3,0.3,0.3) 
wav2.CFrame = wav1.CFrame 
wav2.Transparency = wav1.Transparency + 0.1 
end 
wav1.Parent = nil 
wav2.Parent = nil 
end)) 
end

--[[local Handle  = Instance.new('Part', m)
			Handle:BreakJoints()
			Handle.Material = 'SmoothPlastic'
			Handle.TopSurface = 'Smooth'
			Handle.Name = 'Handle'
			Handle.BottomSurface = 'Smooth'
			Handle.FormFactor = 'Custom' Handle.CanCollide = false
			Handle.BrickColor = BrickColor.new('Bright red')
			Handle.Size = Vector3.new(0.722727716, 0.789999843, 0.200000003)
			Handle.Transparency = 0			Handle.Reflectance = 0.30000001192093			    local Handleweld = Instance.new('ManualWeld')
   Handleweld.Part0 = game.Players.LocalPlayer.Character['Left Arm']
   Handleweld.Part1 = Handle  Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Handleweld.C1 = CFrame.new(-0.0331363678, 0.0529589653, -0.408006668, 6.81079018e-06, 0.00025291738, -0.999999702, 3.55311636e-06, -0.999999762, -0.000252768397, -1, -3.51419908e-06, -6.73527984e-06)
    Handleweld.Parent = game.Players.LocalPlayer.Character['Left Arm']
		
					local HandleMesh = Instance.new('BlockMesh',Handle)
				HandleMesh.Name = 'Mesh'
				HandleMesh.Offset = Vector3.new(0, 0, 0)
				HandleMesh.Scale = Vector3.new(1, 0.909090996, 0.454545468)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(2.27272749, 0.200000003, 0.200000003)
			Part.Reflectance = 0.30000001192093			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.0313539505, -0.120179176, -1.30525064, 0.707112193, -0.707090795, 2.99402245e-06, -7.28645136e-06, -3.92117954e-06, 0.999991059, -0.707095981, -0.707107723, -8.44711576e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 0.909090936)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(1.30909085, 0.200000003, 0.200000003)
			Part.Reflectance = 0.20000000298023			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.0212306976, -0.210647583, 0.707409859, 0.707267463, 0.706945777, 8.99063525e-06, -7.35625599e-06, -5.47161471e-06, 1, 0.706945777, -0.707267761, 1.3028889e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 0.909090936)
				
local dmg4  = Instance.new('Part', m)
			dmg4:BreakJoints()
			dmg4.Material = 'SmoothPlastic'
			dmg4.TopSurface = 'Smooth'
			dmg4.Name = 'dmg4'
			dmg4.BottomSurface = 'Smooth'
			dmg4.FormFactor = 'Custom' dmg4.CanCollide = false
			dmg4.BrickColor = BrickColor.new('Really black')
			dmg4.Size = Vector3.new(0.545454562, 1.18181932, 0.272727281)
			dmg4.Reflectance = 0.60000002384186			dmg4.Transparency = 0			    local dmg4weld = Instance.new('ManualWeld')
   dmg4weld.Part0 =  Handle   dmg4weld.Part1 = dmg4  dmg4weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   dmg4weld.C1 = CFrame.new(0.0771980286, 1.55718255, 0.120207787, 0.999999762, -0.000210092607, 7.73429019e-06, -0.000209943508, -0.99999994, -4.11334122e-06, 7.81155177e-06, 4.14893066e-06, -1)
    dmg4weld.Parent = dmg4		
					local dmg4Mesh = Instance.new('SpecialMesh',dmg4)
					dmg4Mesh.MeshId = 'http://www.roblox.com/Asset/?id=9756362'
					dmg4Mesh.MeshType = Enum.MeshType.FileMesh				dmg4Mesh.Name = 'Mesh'
				dmg4Mesh.Offset = Vector3.new(0, 0, 0)
				dmg4Mesh.Scale = Vector3.new(-0.515454471, 0.873636365, -0.180909097)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(2.27272725, 0.200000003, 2.27272725)
			Part.Reflectance = 1			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.031167984, -0.120185852, -0.0782046318, 0.707112491, -0.707100987, 2.91848369e-06, -7.68709378e-06, -3.5206408e-06, 1, -0.707100689, -0.707112491, -7.84470467e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(0.454545468, 0.200000003, 0.454545468)
			Part.Reflectance = 0.20000000298023			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.530406475, -0.210646629, 0.613744736, -0.707312346, -0.706900775, -7.95247797e-06, -7.48035245e-06, -3.87872569e-06, 1, -0.706900775, 0.707312644, -2.5167119e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('CylinderMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really black')
			Part.Size = Vector3.new(1, 0.909090936, 0.200000003)
			Part.Reflectance = 0.5			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.0777702332, -0.0460093021, 0.302001953, 0.999999642, -0.000477507012, 7.92336414e-06, -0.000477357826, -0.999999821, -3.88359558e-06, 8.00161615e-06, 3.91702588e-06, -1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('SpecialMesh',Part)
					PartMesh.MeshId = 'http://www.roblox.com/asset/?id=21057410'
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.315454543, 0.322727233, 0.0954545364)
				
local dmg3  = Instance.new('Part', m)
			dmg3:BreakJoints()
			dmg3.Material = 'SmoothPlastic'
			dmg3.TopSurface = 'Smooth'
			dmg3.Name = 'dmg3'
			dmg3.BottomSurface = 'Smooth'
			dmg3.FormFactor = 'Custom' dmg3.CanCollide = false
			dmg3.BrickColor = BrickColor.new('Really black')
			dmg3.Size = Vector3.new(0.545454562, 1.18181932, 0.272727281)
			dmg3.Reflectance = 0.60000002384186			dmg3.Transparency = 0			    local dmg3weld = Instance.new('ManualWeld')
   dmg3weld.Part0 =  Handle   dmg3weld.Part1 = dmg3  dmg3weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   dmg3weld.C1 = CFrame.new(-0.0118477345, 1.71327496, 0.120187759, 0.000210615312, 0.99999994, 4.11333212e-06, 0.999999762, -0.00021076441, 7.82369352e-06, 7.90095874e-06, 4.14889746e-06, -1)
    dmg3weld.Parent = dmg3		
					local dmg3Mesh = Instance.new('SpecialMesh',dmg3)
					dmg3Mesh.MeshId = 'http://www.roblox.com/Asset/?id=9756362'
					dmg3Mesh.MeshType = Enum.MeshType.FileMesh				dmg3Mesh.Name = 'Mesh'
				dmg3Mesh.Offset = Vector3.new(0, 0, 0)
				dmg3Mesh.Scale = Vector3.new(-0.515454471, 0.873636365, -0.180909097)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(0.454545468, 0.200000003, 0.454545468)
			Part.Reflectance = 0.20000000298023			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.759212971, -0.210639954, -0.674391747, -0.707368433, -0.706844687, -7.95271262e-06, -7.48040202e-06, -3.87872615e-06, 1, -0.706844628, 0.707368731, -2.51611527e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('CylinderMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(0.454545468, 0.200000003, 0.454545468)
			Part.Reflectance = 0.20000000298023			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.76154232, -0.211082458, 0.633905411, -0.707312286, -0.706900835, -7.95247979e-06, -7.48035336e-06, -3.87872706e-06, 1, -0.706900835, 0.707312584, -2.51671258e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('CylinderMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 1)
				
local dmg1  = Instance.new('Part', m)
			dmg1:BreakJoints()
			dmg1.Material = 'SmoothPlastic'
			dmg1.TopSurface = 'Smooth'
			dmg1.Name = 'dmg1'
			dmg1.BottomSurface = 'Smooth'
			dmg1.FormFactor = 'Custom' dmg1.CanCollide = false
			dmg1.BrickColor = BrickColor.new('Really black')
			dmg1.Size = Vector3.new(0.545454562, 1.18181932, 0.272727281)
			dmg1.Reflectance = 0.60000002384186			dmg1.Transparency = 0			    local dmg1weld = Instance.new('ManualWeld')
   dmg1weld.Part0 =  Handle   dmg1weld.Part1 = dmg1  dmg1weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   dmg1weld.C1 = CFrame.new(0.0770072937, -1.62387848, 0.120163918, 0.999999762, -0.000210092607, 7.73429019e-06, -0.000209943508, -0.99999994, -4.11334122e-06, 7.81155177e-06, 4.14893066e-06, -1)
    dmg1weld.Parent = dmg1		
					local dmg1Mesh = Instance.new('SpecialMesh',dmg1)
					dmg1Mesh.MeshId = 'http://www.roblox.com/Asset/?id=9756362'
					dmg1Mesh.MeshType = Enum.MeshType.FileMesh				dmg1Mesh.Name = 'Mesh'
				dmg1Mesh.Offset = Vector3.new(0, 0, 0)
				dmg1Mesh.Scale = Vector3.new(-0.515454471, 0.873636365, -0.180909097)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(0.200000003, 2.27272701, 0.200000003)
			Part.Reflectance = 0.30000001192093			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-1.14925289, -0.0314512253, -0.119760513, 0.707107484, 0.707105696, -1.10258406e-06, -0.707105577, 0.707107782, -2.91853394e-06, -1.36046719e-06, 2.80614677e-06, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.909090996, 1, 0.454545468)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(2.27272749, 0.200000003, 0.200000003)
			Part.Reflectance = 0.30000001192093			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.0779085159, -1.25864029, -0.120201111, 0.707106888, 0.707106173, -1.10259089e-06, -0.707106113, 0.707107246, -2.91852757e-06, -1.36046037e-06, 2.80614677e-06, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.909090996, 0.454545468)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(1.30000031, 0.200000003, 0.200000003)
			Part.Reflectance = 0.20000000298023			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.0424022675, -0.211091042, -0.783349037, 0.707326114, -0.706887186, 2.96844019e-06, -7.71655777e-06, -3.48280605e-06, 1, -0.706886947, -0.707326174, -7.83788892e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 0.909090996)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(2.27272749, 0.200000003, 0.200000003)
			Part.Reflectance = 0.30000001192093			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.0780677795, 0.12019062, 1.19586754, 0.707118928, 0.707094312, 1.81161104e-05, 7.81187282e-06, 1.79219624e-05, -1, -0.707094252, 0.707119226, 7.17693956e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 0.909090936)
				
local dmg2  = Instance.new('Part', m)
			dmg2:BreakJoints()
			dmg2.Material = 'SmoothPlastic'
			dmg2.Material = 'SmoothPlastic'
			dmg2.TopSurface = 'Smooth'
			dmg2.Name = 'dmg2'
			dmg2.BottomSurface = 'Smooth'
			dmg2.FormFactor = 'Custom' dmg2.CanCollide = false
			dmg2.BrickColor = BrickColor.new('Really black')
			dmg2.Size = Vector3.new(0.545454562, 1.18181932, 0.272727281)
			dmg2.Reflectance = 0.60000002384186			dmg2.Transparency = 0			    local dmg2weld = Instance.new('ManualWeld')
   dmg2weld.Part0 =  Handle   dmg2weld.Part1 = dmg2  dmg2weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   dmg2weld.C1 = CFrame.new(-0.0120446682, -1.55901527, 0.120191574, 0.000210615312, 0.99999994, 4.11333212e-06, 0.999999762, -0.00021076441, 7.82369352e-06, 7.90095874e-06, 4.14889746e-06, -1)
    dmg2weld.Parent = dmg2		
					local dmg2Mesh = Instance.new('SpecialMesh',dmg2)
					dmg2Mesh.MeshId = 'http://www.roblox.com/Asset/?id=9756362'
					dmg2Mesh.MeshType = Enum.MeshType.FileMesh				dmg2Mesh.Name = 'Mesh'
				dmg2Mesh.Offset = Vector3.new(0, 0, 0)
				dmg2Mesh.Scale = Vector3.new(-0.515454471, 0.873636365, -0.180909097)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(1.30000031, 0.200000003, 0.200000003)
			Part.Reflectance = 0.20000000298023			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.111002922, -0.210646629, -0.622792721, -0.707281172, 0.706932306, -1.97609234e-06, -6.91269224e-06, -4.08157621e-06, 1, 0.706932008, 0.707281291, 7.69329836e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 0.909090996)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(1.21818173, 0.200000003, 0.200000003)
			Part.Reflectance = 0.20000000298023			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.208874702, -0.211090088, 0.659489632, -0.707189023, -0.707024276, -7.83939322e-06, -7.35447929e-06, -3.84530495e-06, 1, -0.707024217, 0.707189262, -2.45273873e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 0.909090936)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Bright red')
			Part.Size = Vector3.new(0.454545468, 0.200000003, 0.454545468)
			Part.Reflectance = 0.20000000298023			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.603512764, -0.210655212, -0.69993782, -0.707424462, -0.706788659, -7.95294545e-06, -7.48044977e-06, -3.87872569e-06, 1, -0.706788599, 0.7074247, -2.51551978e-06)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('CylinderMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.454545468, 1)]]--
				

local Handle2  = Instance.new('Part', m)
			Handle2:BreakJoints()
			Handle2.Material = 'SmoothPlastic'
			Handle2.TopSurface = 'Smooth'
			Handle2.Name = 'Handle2'
			Handle2.BottomSurface = 'Smooth'
			Handle2.FormFactor = 'Custom' Handle2.CanCollide = false
			Handle2.BrickColor = BrickColor.new('Really black')
			Handle2.Size = Vector3.new(0.200000003, 1.3636378, 0.272727251)
			Handle2.Transparency = 0			Handle2.Reflectance = 0			    local Handle2weld = Instance.new('ManualWeld')
   Handle2weld.Part0 = game.Players.LocalPlayer.Character['Right Arm']
   Handle2weld.Part1 = Handle2  Handle2weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Handle2weld.C1 = CFrame.new(0.115003586, 0.0987281799, 0.977676153, 1, 9.5066456e-24, 2.8596127e-22, -2.86119345e-22, -0.0332261063, -0.999447882, 0, 0.999447763, -0.03322611)
    Handle2weld.Parent = game.Players.LocalPlayer.Character['Right Arm']
		
					local Handle2Mesh = Instance.new('CylinderMesh',Handle2)
				Handle2Mesh.Name = 'Mesh'
				Handle2Mesh.Offset = Vector3.new(0, 0, 0)
				Handle2Mesh.Scale = Vector3.new(0.909090996, 1, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000169754028, -3.45175743, -0.138971567, 0.999999821, 7.21236529e-06, 1.62003744e-11, -7.21235847e-06, 0.99999994, -1.04308128e-07, -1.65242091e-11, 0, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.522727311, 0.454545468, 0.931817949)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really black')
			Part.Size = Vector3.new(0.200000003, 0.454545468, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000362634659, 0.903982162, -0.00256919861, -2.40126044e-11, 0, -1, 3.12099401e-05, 1, 0, 1, -3.1209951e-05, -2.70574674e-11)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('SpecialMesh',Part)
					PartMesh.MeshId = 'http://www.roblox.com/asset/?id=3270017'
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.477272719, 0.454545468, 1.18636358)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 1.36363733, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000408172607, -3.2703228, -0.000365972519, 1, -1.5167876e-05, -1.11981535e-11, 1.51678742e-05, 1, 0, 1.20082199e-11, 0, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.522727311, 1, 0.454545468)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really black')
			Part.Size = Vector3.new(0.272727281, 0.200000003, 0.545454502)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.00299835205, -0.460396767, -0.688175201, 1, -3.1209951e-05, -2.70574674e-11, 2.20687416e-05, 0.70710665, -0.707106709, 2.2068778e-05, 0.707106709, 0.70710665)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.909090936, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.272728473, 0.272727251)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000371932983, 0.356336594, -0.000364780426, 1, -3.1209951e-05, -2.70574674e-11, 3.12099401e-05, 1, 0, 2.40126044e-11, 0, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('CylinderMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.954545557, 1, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.00179100037, -1.27498245, -0.138988495, 1, 0.000120599419, 5.1841198e-11, -0.000120599441, 1, 0, -6.70744987e-11, 0, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.545454562, 0.454545468, 0.931818128)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-9.91821289e-05, -1.2742815, 0.140503168, 1, 0.000112032132, 2.11457518e-11, -0.000112032118, 1, 0, -2.74188762e-11, 0, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.52272743, 0.454545468, 0.954545379)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(4.57763672e-05, -3.45203209, 0.138261795, 1, -1.52991538e-06, 4.80326889e-12, 1.52991197e-06, 1, 0, -4.60346778e-12, 0, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.522727311, 0.454545468, 0.931818128)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really black')
			Part.Size = Vector3.new(0.272727281, 0.200000003, 0.636363626)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.00229072571, -0.776579857, -0.000361442566, 1, -9.22312756e-06, -1.07149845e-11, 9.22312756e-06, 1, 0, 1.20083362e-11, 0, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.909090936, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000368356705, -2.36870098, -0.00256919861, -2.40126044e-11, 0, -1, 3.12099401e-05, 1, 0, 1, -3.1209951e-05, -2.70574674e-11)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('SpecialMesh',Part)
					PartMesh.MeshId = 'http://www.roblox.com/asset/?id=3270017'
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.390000015, 0.454545468, 0.767272711)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.272728473, 0.272727251)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000370025635, -0.370936394, -0.000362873077, 1, -3.1209951e-05, -2.70574674e-11, 3.12099401e-05, 1, 0, 2.40126044e-11, 0, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('CylinderMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.954545557, 1, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 1.27272952, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.00159645081, -1.50010109, -0.0003657341, 1, 3.54497861e-05, -1.38697942e-11, -3.54497824e-05, 1, 0, 1.20212876e-11, 0, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.545454681, 1, 0.454545468)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really black')
			Part.Size = Vector3.new(0.454545468, 0.454545528, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.905099869, 0.00036406517, 0.00200653076, 5.48139869e-05, 1, 0, -1.19917904e-11, 0, -1, -1, 5.48139869e-05, 7.38964445e-12)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('SpecialMesh',Part)
					PartMesh.MeshId = 'http://www.roblox.com/asset/?id=47260990 '
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.409090906, 0.409090906, 0.586363614)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.454545587)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000259399414, 0.183724165, 3.18167973, 1, -2.18232981e-06, 2.27445227e-08, -2.27447376e-08, -5.96046448e-08, 1, -2.18232526e-06, -1, -5.96046448e-08)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.522727311, 0.477272779, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.363636345)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.00379371643, 0.185991049, 1.50038528, 1, 0.000136076589, 2.28828867e-08, -2.28776322e-08, -5.96046448e-08, 1, 0.00013607656, -1, -5.96046448e-08)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.568181872, 0.5, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.454545468, 0.454545528, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-2.36226559, 0.000361204147, 0.0470504761, 6.11958749e-05, 1, 0, -1.19900192e-11, 0, -1, -0.99999994, 6.11958749e-05, 1.15960574e-11)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('SpecialMesh',Part)
					PartMesh.MeshId = 'http://www.roblox.com/asset/?id=47260990 '
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.363636374, 0.363636374, 0.363636374)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.454545468, 0.454545528, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-2.36418152, 0.000360488892, -0.0429668427, 4.18317832e-05, 1, 0, -1.19900635e-11, 0, -1, -1, 4.18317723e-05, 1.25055521e-12)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('SpecialMesh',Part)
					PartMesh.MeshId = 'http://www.roblox.com/asset/?id=47260990 '
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.363636374, 0.363636374, 0.363636374)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really black')
			Part.Size = Vector3.new(0.272727281, 0.200000003, 0.545454502)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.00299835205, -0.460906029, 0.687661171, 1, -3.1209951e-05, -2.70574674e-11, 2.20687743e-05, 0.707106769, 0.707106709, -2.20687416e-05, -0.707106709, 0.707106769)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.909090936, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.363636345)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.00389862061, -0.184457302, 1.50272179, 1, 0.000130918532, 2.28174031e-08, -2.28287895e-08, -5.96046448e-08, 1, 0.000130918561, -1, -5.96046448e-08)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.568181872, 0.477272749, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.454545379)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000366210938, -0.184444427, 3.18046188, 0.999999821, 1.56519236e-05, 2.27635155e-08, -2.27637464e-08, -5.96046448e-08, 1, 1.56519145e-05, -0.999999762, 3.7252903e-08)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('BlockMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.522727311, 0.477272749, 1)
				
local Blade1  = Instance.new('Part', m)
			Blade1:BreakJoints()
			Blade1.Material = 'SmoothPlastic'
			Blade1.TopSurface = 'Smooth'
			Blade1.Name = 'Blade1'
			Blade1.BottomSurface = 'Smooth'
			Blade1.FormFactor = 'Custom' Blade1.CanCollide = false
			Blade1.BrickColor = BrickColor.new('Light stone grey')
			Blade1.Size = Vector3.new(0.200000003, 3.0909102, 0.454545468)
			Blade1.Reflectance = 0			Blade1.Transparency = 0.10000002384186			    local Blade1weld = Instance.new('ManualWeld')
   Blade1weld.Part0 =  Handle2   Blade1weld.Part1 = Blade1  Blade1weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Blade1weld.C1 = CFrame.new(-0.00213432312, -2.41007614, -0.00036406517, 1, -2.84128078e-06, -1.15534249e-11, 2.84128328e-06, 1, 0, 1.20101819e-11, 0, 1)
    Blade1weld.Parent = Blade1		
					local Blade1Mesh = Instance.new('BlockMesh',Blade1)
				Blade1Mesh.Name = 'Mesh'
				Blade1Mesh.Offset = Vector3.new(0, 0, 0)
				Blade1Mesh.Scale = Vector3.new(0.454545468, 1, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really black')
			Part.Size = Vector3.new(0.427272916, 0.200000003, 0.454545468)
			Part.Reflectance = 0			Part.Transparency = 0.10000002384186			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.00492072105, 0.000297546387, -2.36869526, -2.40126044e-11, 0, -1, -0.999999702, 3.11503318e-05, 2.09183781e-11, 3.11503245e-05, 0.999999702, -8.94069672e-08)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('CylinderMesh',Part)
				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.477272749, 1)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.454545468, 0.454545528, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.905103683, 0.000364303589, 0.00214767456, 5.48139869e-05, 1, 0, -1.19917904e-11, 0, -1, -1, 5.48139869e-05, 7.38964445e-12)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('SpecialMesh',Part)
					PartMesh.MeshId = 'http://www.roblox.com/asset/?id=47260990 '
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.454545468, 0.454545468, 0.476363629)
				
local Part  = Instance.new('Part', m)
			Part:BreakJoints()
			Part.Material = 'SmoothPlastic'
			Part.TopSurface = 'Smooth'
			Part.Name = 'Part'
			Part.BottomSurface = 'Smooth'
			Part.FormFactor = 'Custom' Part.CanCollide = false
			Part.BrickColor = BrickColor.new('Really red')
			Part.Size = Vector3.new(0.200000003, 1.18181872, 0.200000003)
			Part.Reflectance = 0			Part.Transparency = 0			    local Partweld = Instance.new('ManualWeld')
   Partweld.Part0 =  Handle2   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.777746201, -0.000360012054, -0.00230026245, 3.12098346e-05, 0.999996424, -1.60187483e-07, 2.40125246e-11, 1.60187483e-07, 0.999996424, 0.999993324, -3.12097327e-05, -2.29647412e-11)
    Partweld.Parent = Part		
					local PartMesh = Instance.new('SpecialMesh',Part)
					PartMesh.MeshId = 'http://www.roblox.com/Asset/?id=9756362'
					PartMesh.MeshType = Enum.MeshType.FileMesh				PartMesh.Name = 'Mesh'
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.293636382, 1.2881819, 0.0972727239)
				
local Wedge  = Instance.new('WedgePart', m)
			Wedge:BreakJoints()
			Wedge.Material = 'SmoothPlastic'
			Wedge.TopSurface = 'Smooth'
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = 'Smooth'
			Wedge.FormFactor = 'Custom' Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new('Really red')
			Wedge.Size = Vector3.new(0.200000003, 0.27272734, 0.200000003)
			Wedge.Reflectance = 0			Wedge.Transparency = 0			    local Wedgeweld = Instance.new('ManualWeld')
   Wedgeweld.Part0 =  Handle2   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-0.00407028198, -4.08790874, -0.000361204147, 1, 1.63042296e-05, -1.25623956e-11, -1.63042369e-05, 1, 0, 1.20158449e-11, 0, 1)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new('SpecialMesh',Wedge)
					WedgeMesh.MeshId = ''
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = 'Mesh'
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.522727311, 1, 0.454545468)
				
local Blade2  = Instance.new('WedgePart', m)
			Blade2:BreakJoints()
			Blade2.Material = 'SmoothPlastic'
			Blade2.TopSurface = 'Smooth'
			Blade2.Name = 'Blade2'
			Blade2.BottomSurface = 'Smooth'
			Blade2.FormFactor = 'Custom' Blade2.CanCollide = false
			Blade2.BrickColor = BrickColor.new('Light stone grey')
			Blade2.Size = Vector3.new(0.200000003, 0.909091055, 0.454545379)
			Blade2.Reflectance = 0			Blade2.Transparency = 0.10000002384186			    local Blade2weld = Instance.new('ManualWeld')
   Blade2weld.Part0 =  Handle2   Blade2weld.Part1 = Blade2  Blade2weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Blade2weld.C1 = CFrame.new(-0.00219154358, -4.40787601, -0.000361442566, 1, 3.54056488e-06, -1.19229071e-11, -3.54056465e-06, 1, 0, 1.20120285e-11, 0, 1)
    Blade2weld.Parent = Blade2		
					local Blade2Mesh = Instance.new('SpecialMesh',Blade2)
					Blade2Mesh.MeshId = ''
					Blade2Mesh.MeshType = Enum.MeshType.Wedge				Blade2Mesh.Name = 'Mesh'
				Blade2Mesh.Offset = Vector3.new(0, 0, 0)
				Blade2Mesh.Scale = Vector3.new(0.454545468, 1, 1)
Magick = true				
coroutine.resume(coroutine.create(function() 
while Magick == true do 
wait(0.1)  
MMMAGIC(char['Left Arm'],2,2,2,0,-1,0,BrickColor.new("Really black")) 
MMMAGIC(char['Left Arm'],2,2,2,0,-1,0,BrickColor.new("Really red")) 
MMMAGIC(char['Left Arm'],2,2,2,0,-1,0,BrickColor.new("Really black")) 
MMMAGIC(char['Left Arm'],2,2,2,0,-1,0,BrickColor.new("Really red")) 
end 
end)) 
				
mouse.Button1Down:connect((function()
if Anim == 'Idle' then Anim = 'Basic slash'
						if deb == false then
							deb = true
						end
coroutine.wrap(function()
local Old = Blade2.CFrame.p
while Wait()do
if not deb then break end
local New = Blade2.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",char)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Really black")
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
end end)()end end)()
						playSound(154965929,Blade2,1,1)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-190),math.rad(370),math.rad(0)),6)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(400),math.rad(-370),math.rad(0)),4)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-420),math.rad(-370),math.rad(0)),4)
						--ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(310),math.rad(30),math.rad(190)),3)
						--ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-360),math.rad(70),math.rad(0)),7)
						ypcall(function()
							dmgstart(math.random(2,5))
							if deb == true then 
						
						deb = false
					end
						end)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)),7)
						wait'0'
						Anim = 'Idle'
						ypcall(function()
							dmgstop()
						end)
						end
	
end))

					mouse.KeyDown:connect(function(key)
					key=key:lower()
					if key == 'f' then
						if Anim == 'Idle' then Anim = 'Great Slash'
						if deb == false then
							deb = true
						end
						coroutine.wrap(function()
local Old = Blade2.CFrame.p
while Wait()do
if not deb then break end
local New = Blade2.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",char)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Really black")
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
end end)()end end)()
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(150),math.rad(30),math.rad(0)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(160),math.rad(30),math.rad(0)),7)
						--wait'.7'
						ypcall(function()
							dmgstart(math.random(8,10))
							if deb == true then 
						
						deb = false
					end
						end)
						playSound(154965929,Blade2,1,0.7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(170),math.rad(30),math.rad(0)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(150),math.rad(30),math.rad(0)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),5)
						--wait'.1'
						ypcall(function()
							dmgstop()
						end)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),7)--yxz
						wait(.5)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)),7)
						Anim = 'Idle'
						end
					elseif key == 'g' then
						if Anim == 'Idle' then Anim = 'Slash'
						if deb == false then
							deb = true
						end
						coroutine.wrap(function()
local Old = Blade2.CFrame.p
while Wait()do
if not deb then break end
local New = Blade2.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",char)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Really black")
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
end end)()end end)()
						playSound(154965929,Blade2,1,1)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-30),math.rad(90)),3)
						ypcall(function()
							dmgstart(math.random(2,5))
							if deb == true then 
						
						deb = false
					end
						end)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)),7)
						wait'0'
						Anim = 'Idle'
						ypcall(function()
							dmgstop()
						end)
						end
						elseif key == 't' then
						if Anim == 'Idle' then Anim = 'Stun'
						if deb == false then
							deb = true
						end
						playSound(154965929,Blade2,1,1)
						ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(0)),7)
						ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(30),math.rad(-90)),3) Wave()  EVENMOARMAGIX(char['Left Arm'],5,3,5,0,0,0,0,0,0,BrickColor.new("Really red"))
						ypcall(function()
							--dmgstart(math.random(2,5))
							if deb == true then 
						
						deb = false
					end
						end)
						ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)),7)
						wait'0'
						Anim = 'Idle'
						ypcall(function()
							--dmgstop()
						end)
						end
						elseif key == 'h' then
						if Anim == 'Idle' then Anim = 'Special'
						if deb == false then
							deb = true
						end
						EVENMOARMAGIX(char['Left Arm'],5,3,5,0,0,0,0,0,0,BrickColor.new("Really red"))
						playSound(161006157,la,1,1)
						playSound(161006131,la,1,1.5)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-60),math.rad(-30),math.rad(0)),8)
						ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(0)),8)
						--ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(30),math.rad(-90)),8)
						ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-150),math.rad(150),math.rad(-90)),8)
						Wave()
						Wave()
						Wave()
						Wave()
						Wave()
						Wave()
						Wave()
						Wave()
						Wave2()
						playSound(161006093,la,1,1)
						playSound(161006163,la,1,1)
						ypcall(function()
							--dmgstart(math.random(2,5))
							if deb == true then 
						
						deb = false
					end
						end)
						ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)),7)
						wait'0'
						Anim = 'Idle'
						ypcall(function()
							--dmgstop()
						end)
						end
					elseif key == 'r' then
						if Anim == 'Idle' then Anim = 'Stab'
						if deb == false then
							deb = true
						end
						coroutine.wrap(function()
local Old = Blade2.CFrame.p
while Wait()do
if not deb then break end
local New = Blade2.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",char)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Really black")
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
end end)()end end)()
						playSound(154965929,Blade2,1,1.2)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(630),math.rad(-90),math.rad(0)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(30),math.rad(90)),3)
						ypcall(function()
							dmgstart(math.random(2,5))
							if deb == true then 
						
						deb = false
					end
						end)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)),7)
						wait'0'
						Anim = 'Idle'
						ypcall(function()
							dmgstop()
						end)
						end
						elseif key == 'q' then
						if Anim == 'Idle' then Anim = '360 Parry'
						if deb == false then
							deb = true
						end
						coroutine.wrap(function()
local Old = Blade2.CFrame.p
while Wait()do
if not deb then break end
local New = Blade2.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",char)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Really black")
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
end end)()end end)()
						playSound(154965929,Blade2,1,1)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(730),math.rad(-90),math.rad(-40)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-360),math.rad(-230),math.rad(90)),3)
						ypcall(function()
							dmgstart(math.random(2,5))
							if deb == true then 
						
						deb = false
					end
						end)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)),7)
						wait'0'
						Anim = 'Idle'
						ypcall(function()
							dmgstop()
						end)
						end
					elseif key == 'e' then
						if Anim == 'Idle' then Anim = 'Slash 2'
						if deb == false then
							deb = true
						end
						coroutine.wrap(function()
local Old = Blade2.CFrame.p
while Wait()do
if not deb then break end
local New = Blade2.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",char)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Really black")
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
end end)()end end)()
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(380),math.rad(-390),math.rad(0)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(520),math.rad(-390),math.rad(70)),6)
						playSound(154965929,Blade2,1,1.3)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),5)
						ypcall(function()
							dmgstart(math.random(2,5))
							if deb == true then 
						
						deb = false
					end
						end)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)),7)
						wait'0'
						Anim = 'Idle'
						ypcall(function()
							dmgstop()
						end)
						end
					--[[elseif key == 'v' then
						if Anim == 'Idle' then Anim = 'Shield Slash'
						if deb == false then
							deb = true
						end
						dmgstart2(math.random(5,10))
						 ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-690),math.rad(30),math.rad(0)),7)
						wait(.7)
						ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-180),math.rad(-190)),5)
						wait(1)
						dmgstop2()
						ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)),5)
						Anim = 'Idle'
					end
					if deb == true then 
						
						deb = false
					end]]--
					end
				end)
				--[[
				mouse.KeyUp:connect(function(key)
					key=key:lower()
					if key == 'r' then
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)),5)
						ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)),5)
					end
				end)
				]]
				
				
				ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)),5)
				ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)),5)
				
				
		
				
				function dmgstart(dmg)
	hitcon = Blade1.Touched:connect(function(hit)
			local hum = hit.Parent:FindFirstChild('Humanoid')
			if hum and not hum:IsDescendantOf(char) then
                                DoDamage(hum,dmg or 5)
			end
	end)
	hitcon2 = Blade2.Touched:connect(function(hit)
			local hum2 = hit.Parent:FindFirstChild('Humanoid')
			if hum2 and not hum2:IsDescendantOf(char) then
                                DoDamage(hum2,dmg or 5)
			end
		end)
				end
				

function dmgstop()
	ypcall(function()
		hitcon:disconnect()
		hitcon2:disconnect()
	end)
end


				function dmgstart2(dmg)
	hitcon = dmg1.Touched:connect(function(hit)
			local hum = hit.Parent:FindFirstChild('Humanoid')
			if hum and not hum:IsDescendantOf(char) then
                                DoDamage(hum,dmg)
			end
	end)
	hitcon2 = dmg2.Touched:connect(function(hit)
			local hum2 = hit.Parent:FindFirstChild('Humanoid')
			if hum2 and not hum:IsDescendantOf(char) then
                                DoDamage(hum2,dmg)
			end
	end)
	hitcon3 = dmg3.Touched:connect(function(hit)
			local hum3 = hit.Parent:FindFirstChild('Humanoid')
			if hum3 and not hum:IsDescendantOf(char) then
                                DoDamage(hum3,dmg)
			end
	end)
	
	hitcon4 = dmg4.Touched:connect(function(hit)
			local hum4 = hit.Parent:FindFirstChild('Humanoid')
			if hum4 and not hum:IsDescendantOf(char) then
                                DoDamage(hum4,dmg)
			end
		end)
end

function dmgstop2()
	ypcall(function()
		hitcon:disconnect()
		hitcon2:disconnect()
	end)
end

print('Credits')
print('W8X for the compiler')
print('AtlasGrim for the Weapon Template and 2 moves')
print('TheSpadesCross (ace28545) for the design, sounds and 6 moves')
print('Antiboomz0r for the playsound function')
end}
module[3] = {"L.C Guardian",function()
local p = game.Players.localPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local l = game.Lighting
local stanceToggle = "Assertive"
local CanAttack = true
local Daytime = true
local animpose = "Idle"
local lastanimpose = "Idle"
local nosword=false
RootPart=char.HumanoidRootPart
local Effects={}
local attack=false
idle=0
Anim='Idle'
equipped=true
char.Humanoid.WalkSpeed=16
colorscheme=BrickColor.new('Black')
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
m=Instance.new('Model',char)
stance='god'
--game:service'Lighting'.TimeOfDay=24
z = Instance.new("Sound")
z.SoundId = "http://www.roblox.com/asset/?id=142360845"--..SIDs[math.random(1,#SIDs)]--159496201
--248000653
z.Parent = char
z.Looped = true
z.Pitch = 1
z.Volume = 1
wait(.01)
--z:Play()

it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles


function swait(num)
        if num==0 or num==nil then
                game:service'RunService'.Heartbeat:wait(0)
        else
                for i=0,num do
                        game:service'RunService'.Heartbeat:wait(0)
                end
        end
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
-----------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
        wld = Instance.new("Weld", wp1)
        wld.Part0 = wp0
        wld.Part1 = wp1
        wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
        return wld
end

larm.Size = larm.Size * 2
rarm.Size = rarm.Size * 2
lleg.Size = lleg.Size * 2
rleg.Size = rleg.Size * 2
torso.Size = torso.Size * 2
hed.Size = hed.Size * 2
root.Size = root.Size * 2
----------------------------------------------------
newWeld(torso, larm, -3, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 3, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
hed.Weld.C1 = CFrame.new(0, -1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(.5, 3, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(-.5, 3, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)

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

function paart(formfactor,parent,reflectance,transparency,brickcolor,name,size)
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
        fp.Position=torso.Position 
        nooutline(fp)
        fp.Material="SmoothPlastic"
        fp:BreakJoints()
        return fp 
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

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
        return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
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

Face=hed.face

function Cloak()
--so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
Face.Parent=nil
cloaked=true
for _,v in pairs(torso.Parent:children()) do
if v.className=="Part" and v.Name~="HumanoidRootPart" then
coroutine.resume(coroutine.create(function() 
for i=0,1,0.2 do
wait()
v.Transparency=i
end
v.Transparency=1
end))
end
if v.className=="Hat" then
hatp=v.Handle
coroutine.resume(coroutine.create(function(derp) 
for i=0,1,0.2 do
wait()
derp.Transparency=i
end
derp.Transparency=1
end),hatp)
end
end
for _,v in pairs(m:children()) do
if v.className=="Part" then
coroutine.resume(coroutine.create(function() 
for i=0,1,0.2 do
wait()
v.Transparency=i
end
v.Transparency=1
end))
end
end
end
magix=true
function UnCloak()
        --so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
        Face.Parent=hed 
        cloaked=false
        for _,v in pairs(torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                        coroutine.resume(coroutine.create(function() 
                                for i=0,1,0.1 do
                                        wait()
                                        v.Transparency=v.Transparency-0.1
                                end
                                v.Transparency=0
                        end))
                end
                --[[if v.className~="Hat" then
                        hatp=v.Handle
                        coroutine.resume(coroutine.create(function(derp) 
                                for i=0,1,0.1 do
                                        wait()
                                        derp.Transparency=derp.Transparency-0.1
                                end
                                derp.Transparency=0
                        end),hatp)
                end]]
        end
        if magix==false then
        for _,v in pairs(m:children()) do
                if v.className=="Part" and v.Name~="hitbox" and v.Name~='tip' and v.Name~='hat' then
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
else
                for _,v in pairs(m:children()) do
                if v.className=="Part" and v.ClassName~='Weld' and v.Name~="hitbox" and v.Name~='tip' and v.Name~='hat'then
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
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Dark stone grey"))
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

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Deep orange","Handle",Vector3.new(0.599999905, 4, 0.400000036))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.01841354, -0.0695610046, 0.049372673, -6.61965621e-012, -0.999999523, -1.12313298e-010, 0.00563658308, 1.10681131e-010, -0.999983788, 0.999983311, -8.65419195e-012, 0.00563658029))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.799999833, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.30133295, -4.59958267, 8.10623169e-006, 0.999997258, -4.70680717e-011, -3.91951055e-012, 5.03742811e-011, 1, -1.05605516e-011, 6.73187634e-012, 1.17550084e-011, 0.999997258))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.599999905, 4.4000001, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.30089998, -5.9995594, -1.09672546e-005, 0.999996305, -3.48216178e-011, -1.62637629e-011, 3.83456322e-011, 1, -4.63629656e-012, 1.90928835e-011, 5.8306901e-012, 0.999996305))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.19480896e-005, -5.09960365, 1.30145025, 1.05312156e-005, 8.7171511e-006, -0.99998951, 1.7453418e-005, 1.00000608, 8.67240487e-006, 0.999999523, -1.97484223e-005, 1.04995552e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 1.20000005, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.70081615, -7.59955597, -3.81469727e-006, 0.999984145, -2.66020192e-011, -1.43523457e-011, 3.47976994e-011, 0.999999881, -4.03995587e-012, 2.00987699e-011, 6.42852438e-012, 0.999984264))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.71661377e-005, 3.69953728, 1.5010314, -8.34466391e-006, -8.76185368e-006, 0.99998939, -3.13209239e-005, -1.00000584, -8.67240215e-006, 0.999999523, -3.36160047e-005, 8.31290799e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.600000381, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.30089188, -3.49957085, -2.86102295e-006, 0.999989867, -3.57171584e-011, -1.50535487e-011, 4.31028546e-011, 1, -4.03874503e-012, 2.07377258e-011, 6.42744365e-012, 0.999989867))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09908223, -3.49954987, -9.01222229e-005, 0.999987006, -1.91744329e-011, -1.37810397e-011, 3.06906514e-011, 1, -4.03930535e-012, 1.97828975e-011, 6.42799182e-012, 0.999987006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1, 0.599999726, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.70132542, -8.4995842, 5.24520874e-006, 0.999993086, -4.43888051e-011, -2.43437388e-012, 4.98436153e-011, 1, -9.96337388e-012, 6.69102967e-012, 1.1754959e-011, 0.999993086))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.39999998, 0.399999917, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100895882, -2.19955063, 9.53674316e-007, 0.999992609, -3.44739653e-011, -1.49579567e-011, 4.15219734e-011, 1, -4.03871207e-012, 2.06161754e-011, 6.42749222e-012, 0.999992609))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.599999905, 0.599999905, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0997242928, -1.50003433, 4.76837158e-007, 0.999986172, 2.41444642e-011, 2.85323978e-012, -1.32283698e-011, 1, -1.71489559e-013, 5.65950715e-012, 3.75693227e-012, 0.999986172))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.599999905, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0999045372, -1.90000916, 9.53674316e-007, 0.999992609, -1.09000656e-011, -1.43775027e-011, 1.79482471e-011, 1, -1.47436403e-012, 2.00357196e-011, 3.8631251e-012, 0.999992609))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.600000024, 0.799999952))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-005, 7.89964485, 1.80142498, -8.7530334e-006, -8.68735151e-006, 0.999989688, -5.80388769e-006, -1.00000608, -8.74690795e-006, 0.999999523, -8.09880021e-006, 8.72149394e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.600000024, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.04904175e-005, -2.89971924, 1.70256662, 6.8837162e-006, 8.72622059e-006, -0.999989986, -6.28802127e-006, 1.00000644, 8.69458381e-006, 0.999999523, 3.99320834e-006, 6.85229907e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.599999905, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0997610092, -1.10003662, 4.76837158e-007, 0.999986172, 2.3436475e-011, 3.80554746e-012, -1.25203806e-011, 1, -6.22770932e-013, 4.70720034e-012, 4.20822058e-012, 0.999986172))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09909248, -3.89955139, -8.39233398e-005, 0.999991059, -2.07311043e-011, -1.39008249e-011, 2.9134084e-011, 1, -4.03928453e-012, 1.96632485e-011, 6.42804039e-012, 0.999991059))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.600000024, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43051147e-005, -2.89971542, 1.4974215, -6.88429463e-006, 8.7262697e-006, 0.999989986, 6.28824864e-006, 1.00000644, -8.6946302e-006, -0.999999404, 3.99342571e-006, -6.80979338e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.38690186e-005, -6.49961472, 1.30147791, 1.05312156e-005, 8.7171511e-006, -0.99998951, 1.7453418e-005, 1.00000608, 8.67240487e-006, 0.999999523, -1.97484223e-005, 1.04995552e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.400000036, 1.60000002))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.91549683e-005, -9.39964676, 0.401554585, 1.08461672e-005, 8.73205954e-006, -0.99998945, 1.98187317e-005, 1.00000608, 8.67240396e-006, 0.999999523, -2.21137525e-005, 1.08144795e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.799999833, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.30132532, -5.99957848, 8.10623169e-006, 0.999991179, -4.51590224e-011, -2.4936303e-012, 5.22830321e-011, 1, -9.96334352e-012, 8.15769154e-012, 1.23521532e-011, 0.999991179))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.7179718e-005, 2.89961815, 0.698666811, 8.67242125e-006, 5.76516186e-006, -0.99998945, 4.75738125e-006, -1.00000608, -5.82467419e-006, -0.999999285, -2.46256491e-006, -8.73203044e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.400000036, 0.99999994))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.48498535e-005, -8.99962234, 1.70155716, 1.08461672e-005, 8.73205954e-006, -0.99998945, 1.98187317e-005, 1.00000608, 8.67240396e-006, 0.999999523, -2.21137525e-005, 1.08144795e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.95910645e-005, 6.89964104, 1.30140543, -8.7530334e-006, -8.68735151e-006, 0.999989688, -5.80388769e-006, -1.00000608, -8.74690795e-006, 0.999999523, -8.09880021e-006, 8.72149394e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.600000024, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.28746033e-005, 2.29969978, 1.49744749, 4.58953173e-006, -8.76190825e-006, -0.999989688, 3.95497409e-006, -1.00000656, 8.64263984e-006, -0.999999523, -6.24984796e-006, -4.64914001e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.599999964, 0.599999905, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.101387024, 2.29981613, 9.53674316e-007, 0.999986172, -2.03466965e-011, -3.78346451e-011, 3.12565737e-011, 1, 9.68086201e-012, 4.63478943e-011, -6.09796068e-012, 0.999986172))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.399999917, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.01292133, 2.36062241, -0.199992657, 0.965919137, -0.258819193, 9.68770486e-009, 0.258817405, 0.965925813, -7.3579848e-008, 9.69177893e-009, 7.35824557e-008, 0.999993086))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.86238098e-005, 5.4995842, 1.30153465, -8.34466391e-006, -8.76185368e-006, 0.99998939, -3.13209239e-005, -1.00000584, -8.67240215e-006, 0.999999523, -3.36160047e-005, 8.31290799e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.600000024, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.00135803e-005, 2.29969788, 1.70259237, -4.63829838e-006, -8.76185914e-006, 0.999989808, -3.95520055e-006, -1.00000656, -8.64259528e-006, 0.999999523, -6.25006533e-006, 4.60681576e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.599999905, 0.799999893, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0998063087, -0.600069046, 4.76837158e-007, 0.999986172, 2.84053614e-011, 8.71606606e-012, -1.74948181e-011, 1, 8.56011442e-013, -2.0281346e-013, 2.72700959e-012, 0.999986172))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.599999905, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100811958, 1.89962769, -9.53674316e-007, 0.999986172, 2.43582932e-013, -2.16690259e-011, 1.06665718e-011, 1, 8.84393427e-012, 3.01822768e-011, -5.26102599e-012, 0.999986172))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 1.19999981, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.30133152, -7.59958649, 4.29153442e-006, 0.999991536, -4.51809631e-011, -2.49531992e-012, 5.22611329e-011, 1, -9.96334352e-012, 8.15601059e-012, 1.23521523e-011, 0.999991536))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.600000024, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.71661377e-005, 2.89961624, 1.00137615, -8.7530334e-006, -8.68735151e-006, 0.999989688, -5.80388769e-006, -1.00000608, -8.74690795e-006, 0.999999523, -8.09880021e-006, 8.72149394e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.399999976, 6, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.00134325, -6.19958878, -6.67572021e-006, 0.999990463, -4.44280446e-011, -2.43740444e-012, 5.16362716e-011, 1, -9.96334352e-012, 8.1079362e-012, 1.23521419e-011, 0.999990463))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.599999905, 0.400000036, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0998740196, -6.10351563e-005, 4.76837158e-007, 0.999986172, 3.25150462e-011, 1.47778543e-011, -2.16044196e-011, 1, 1.79467205e-012, -6.26460082e-012, 1.78833684e-012, 0.999986172))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.599999905, 0.599999905, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.100226402, -1.49966812, -4.76837158e-007, -0.999986172, -5.96395537e-008, -9.93794487e-008, 5.96278227e-008, -1, 3.80804792e-008, -9.93709364e-008, 3.8084579e-008, 0.999986172))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.399999917, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.01291943, 2.36062241, -0.200006008, -0.965919256, 0.258818418, 5.95878689e-008, 0.25881663, 0.965926111, -5.57539693e-007, -1.63906265e-007, -5.51367407e-007, -0.999992788))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.599999905, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.10008812, 1.09988785, 0, 0.999986172, 3.17495474e-011, 2.19618039e-011, -2.08440973e-011, 1, 1.6464434e-012, -1.34490544e-011, 1.93546047e-012, 0.999986172))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.599999905, 0.799999893, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0999064445, -0.599903107, 4.76837158e-007, -0.999986172, -5.964894e-008, -9.93747662e-008, 5.96372018e-008, -1, 3.80745568e-008, -9.93662539e-008, 3.80786567e-008, 0.999986172))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.399999917, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.19833279, 2.3109436, -0.200005054, -0.965918899, -0.258819193, -1.34113861e-007, -0.258817405, 0.965925813, 7.44806314e-008, -5.95990883e-008, 7.35335561e-008, -0.999992788))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.399999917, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.19833183, 2.3109417, -0.19999361, 0.965919197, 0.258818418, -1.63907302e-007, -0.25881657, 0.965926111, 5.66216784e-007, 1.63906265e-007, -5.51318522e-007, 0.99999249))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.14440918e-005, -3.29951477, 1.50105858, 9.89090768e-006, 8.76185186e-006, -0.999989271, 4.36100818e-005, 1.0000056, 8.61280023e-006, 0.999999523, -4.59052462e-005, 9.8590308e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.9038372, -1.75626755, -0.199999332, 0.866019428, 0.5, 2.20907594e-008, -0.499996543, 0.866025388, 6.89347033e-008, 1.53416728e-008, -7.07429137e-008, 0.999993086))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.200000003, 0.200000033))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.76837158e-005, 6.89955902, 1.70114231, -8.34466391e-006, -8.76185368e-006, 0.99998939, -3.13209239e-005, -1.00000584, -8.67240215e-006, 0.999999523, -3.36160047e-005, 8.31290799e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.600000024, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.38825989e-005, 7.89956093, 2.00117016, -8.34466391e-006, -8.76185368e-006, 0.99998939, -3.13209239e-005, -1.00000584, -8.67240215e-006, 0.999999523, -3.36160047e-005, 8.31290799e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.67028809e-005, 4.09958076, 1.30148745, -8.34466391e-006, -8.76185368e-006, 0.99998939, -3.13209239e-005, -1.00000584, -8.67240215e-006, 0.999999523, -3.36160047e-005, 8.31290799e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.12790108, 1.62690544, 0.20000124, -0.866019249, 0.499999821, -1.69992358e-008, -0.499996364, -0.866025209, -2.86735276e-008, -2.9053e-008, -1.6330004e-008, 0.999993086))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09910226, -5.09955788, -8.01086426e-005, 0.999987483, -2.38258649e-011, -1.41388229e-011, 3.50124374e-011, 1, -4.03923769e-012, 2.01153399e-011, 6.42793284e-012, 0.999987483))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.400000006, 1.19999897, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.04989433, -5.45730114, -0.000123023987, 0.707099319, 0.707106709, -8.23653536e-008, -0.707099319, 0.70710665, -2.31702231e-007, -1.05590843e-007, 2.22084282e-007, 0.99998951))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.400000006, 1.19999897, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.48420525, -4.89161015, -0.00012254715, 0.707099319, 0.707106709, -8.23653536e-008, -0.707099319, 0.70710665, -2.31702231e-007, -1.05590843e-007, 2.22084282e-007, 0.99998951))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep orange","Part",Vector3.new(0.200000003, 0.200000003, 0.200000033))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.19888306e-005, 5.09964371, -1.49892831, -8.34466391e-006, -8.76185368e-006, 0.99998939, -3.13209239e-005, -1.00000584, -8.67240215e-006, 0.999999523, -3.36160047e-005, 8.31290799e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 0.600000024, 0.599999905))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.87052917e-005, -8.89964485, 1.89849019, -5.72201225e-006, -9.39299207e-006, 0.999992847, 1.73207645e-005, 1, 9.39303209e-006, -0.999992847, 1.73209264e-005, -5.72201634e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000036, 2, 0.599999905))
P
