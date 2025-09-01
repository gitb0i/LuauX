rdinateFrame = Cam.CoordinateFrame * CN(Rotation, 0, 0)
	end
end

end}

 
 

module[1] = {"Rokudanye",function()

user=game:service'Players'.localPlayer
char=user.Character
mouse=user:GetMouse()
user=game:service'Players'.localPlayer;
char=user.Character
mouse=user:GetMouse()
m=Instance.new('Model',char)
hold=false
deb = false
Game.Lighting.Outlines = false
Anim = 'None'

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
                p.BrickColor = BrickColor.new('Really black')
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

ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-60),math.rad(-70),math.rad(0)),8)
ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(70),math.rad(-20),math.rad(50)),5)

--construction
local Handle  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Handle:BreakJoints()
			Handle.Material = "SmoothPlastic"
			Handle.Transparency = 1
			Handle.TopSurface = "Smooth"
			Handle.Name = 'Handle'
			Handle.BottomSurface = "Smooth"
			Handle.FormFactor = "Custom" Handle.CanCollide = false
			Handle.BrickColor = BrickColor.new("Medium stone grey")
			Handle.Size = Vector3.new(0.685749531, 0.68574959, 0.685749531)
			    local Handleweld = Instance.new("ManualWeld")
   Handleweld.Part0 = game.Players.LocalPlayer.Character["Right Arm"]
   Handleweld.Part1 = Handle  Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Handleweld.C1 = CFrame.new(0.114501953, 0.786820889, -0.0211935043, 5.27895681e-020, 4.47034765e-008, 1, 1.93350978e-012, 0.999999881, -4.47034836e-008, -1, -1.94467489e-012, 3.28244525e-020)
    Handleweld.Parent = game.Players.LocalPlayer.Character["Right Arm"]
		
					local HandleMesh = Instance.new("SpecialMesh",Handle)
					HandleMesh.MeshId = ""
					HandleMesh.MeshType = Enum.MeshType.Brick				HandleMesh.Name = "Mesh"
				HandleMesh.Offset = Vector3.new(0, 0, 0)
				HandleMesh.Scale = Vector3.new(1.67275953, 0.331239998, 0.182181984)
				
local Hitbox  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Hitbox:BreakJoints()
			Hitbox.Material = "SmoothPlastic"
			Hitbox.Transparency = 1
			Hitbox.TopSurface = "Smooth"
			Hitbox.Name = 'Hitbox'
			Hitbox.BottomSurface = "Smooth"
			Hitbox.FormFactor = "Custom" Hitbox.CanCollide = false
			Hitbox.BrickColor = BrickColor.new("Mid gray")
			Hitbox.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Hitboxweld = Instance.new("ManualWeld")
   Hitboxweld.Part0 =  Handle   Hitboxweld.Part1 = Hitbox  Hitboxweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Hitboxweld.C1 = CFrame.new(-0.270582199, 6.18315887, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Hitboxweld.Parent = Hitbox		
					local HitboxMesh = Instance.new("SpecialMesh",Hitbox)
					HitboxMesh.MeshId = ""
					HitboxMesh.MeshType = Enum.MeshType.Brick				HitboxMesh.Name = "Mesh"
				HitboxMesh.Offset = Vector3.new(0, 0, 0)
				HitboxMesh.Scale = Vector3.new(2.36599994, 7.098001, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Dark stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.07288361e-006, -0.440738082, 4.93405151, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.181999996, 0.364000022, 2.00200009)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.151121378, 2.49862671, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.182000026, 1.45600009, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.378279686, 2.49850464, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.182000026, 1.45600009, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.497517943, 0.00567424297, -2.95291901, 3.31555725e-008, -1, 3.65483629e-007, -2.98013862e-008, -3.6547587e-007, -1, 1, 3.31555725e-008, -2.98013703e-008)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.264691353, 3.06073761, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.909999967, 0.364000142, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.26468575, -0.00567483902, -2.72582245, 3.31555725e-008, -1, 3.65477291e-007, -2.98018978e-008, -3.6546956e-007, -1, 1, 3.31555157e-008, -2.98018819e-008)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.1920929e-007, 3.11734009, 0.303098917, 1.13114545e-007, 8.29843941e-007, -1, 1, -2.38421308e-007, 1.13114368e-007, -2.38421308e-007, -1, -8.29836324e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.0135855675, -0.00567471981, -2.95297241, 3.31555725e-008, -1, 3.65477291e-007, -2.98018978e-008, -3.6546956e-007, -1, 1, 3.31555157e-008, -2.98018819e-008)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Dark stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.43051147e-006, -0.497528672, 6.75119019, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.181999996, 0.546000004, 0.909999967)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Dark stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.1920929e-006, -0.611099243, 6.18334198, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.909999967)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.264875412, 3.230896, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(2.36600018, 0.18200013, 0.546000004)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.270464897, 3.62836456, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.909999967, 1.09200025, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.264688492, 1.6468277, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.582399786, 0.181999996, 0.200200006)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Mid gray")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.156986475, 5.95611572, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.546000004, 5.27800131, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.2703619, -1.64687347, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.582399786, 0.181999996, 0.200200006)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.497519851, -0.00567495823, -2.95278168, 3.31555725e-008, -1, 3.65480531e-007, -2.98016278e-008, -3.654728e-007, -1, 1, 3.31555157e-008, -2.98016261e-008)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Mid gray")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.156858683, 4.02594757, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.546000004, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.264676094, -0.2840271, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.546000004, 7.46199799, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Dark stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.31130219e-006, -0.383954763, 6.18333435, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.909999967)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.07288361e-006, 3.11735535, -0.832516909, 1.13096782e-007, 8.2971161e-007, -1, 1, -2.38420967e-007, 1.13096576e-007, -2.38420853e-007, -1, -8.29703993e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.264650345, -2.89612579, 0, -4.47035973e-008, -1, 3.88935021e-012, 1, -4.47035973e-008, 6.56493379e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1.27400005, 0.909998953, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-6.86645508e-005, 0.27036202, 0, 1, 0, -1.06898864e-019, 0, 1, -3.8781851e-012, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(5.11419773, 0.181999996, 0.200200006)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Mid gray")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.213638544, 4.19618225, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.364000022, 0.364000022, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Dark stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(8.34465027e-007, -0.49752593, 4.13903046, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.181999996, 0.546000004, 0.546000004)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.26468575, 0.00567436218, -2.72582245, 3.31555725e-008, -1, 3.65477291e-007, -2.98018978e-008, -3.6546956e-007, -1, 1, 3.31555157e-008, -2.98018819e-008)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.0135846138, 0.00567448139, -2.95297241, 3.31555725e-008, -1, 3.65477291e-007, -2.98018978e-008, -3.6546956e-007, -1, 1, 3.31555157e-008, -2.98018819e-008)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Dark stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.1920929e-006, -0.497527599, 5.72904205, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.181999996, 0.546000004, 0.546000004)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.54972076e-006, -0.667873383, -4.82103729, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.78813934e-006, -0.667873621, -5.50247192, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.54972076e-006, -0.667874575, -4.59389496, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.66893005e-006, -0.667874217, -4.93460846, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.31130219e-006, -0.611171007, -3.62844849, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.182000026, 1.09200001)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.43051147e-006, -0.667875767, -4.36675262, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.66893005e-006, -0.667874694, -5.38889313, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(2.38418579e-007, -0.486158729, -2.89600372, 1.63910173e-007, -3.98652617e-007, -1, 1.56316617e-006, -1, 3.9866066e-007, -1, -1.56316628e-006, -1.63909561e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.181999996)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.66893005e-006, -0.667874098, -5.04817963, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Dark stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(1.54972076e-006, -0.497528315, 7.31904602, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.546000004, 0.909999967)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.54972076e-006, -0.667874694, -4.48031616, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Mid gray")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(1.90734863e-006, -0.156997681, 8.00041962, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.546000004, 1.27400005)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(0, -0.189658165, -2.83934021, 1.06898864e-019, 3.8781851e-012, -1, 1.19209403e-007, 1, -3.90795903e-012, 1, -1.19209403e-007, 3.53228972e-019)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.727999806)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.54972076e-006, -0.667874455, -4.70746613, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.66893005e-006, -0.667874813, -5.27532196, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.1920929e-007, -0.183947563, 3.12332916, 5.96037069e-008, -3.87638706e-012, 1, 1.19209403e-007, 1, -3.90795903e-012, -1, 1.19209403e-007, 5.96037211e-008)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.181999996)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.66893005e-006, -0.667873979, -5.16175842, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(0, -0.718988419, -2.83938599, 2.66438555e-015, 5.95998024e-008, 1, -1.19209403e-007, -1, 5.96075864e-008, 1, -1.19209403e-007, 3.53228972e-019)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.727999806)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.1920929e-007, -0.713309407, 3.12332916, 1.48411445e-007, 3.87428031e-007, -1, -9.90880835e-008, -1, -3.87420187e-007, -1, 9.90880835e-008, -1.48411431e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.181999996)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(0, 0.0375139713, -2.89582062, -2.98018392e-008, -3.85066198e-012, 1, 1.19209403e-007, 1, -3.90795903e-012, -1, 1.19209403e-007, -2.98018392e-008)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.181999996)
TrailDeb = false
				
mouse.Button1Down:connect((function()
if Anim == 'Idle' then Anim = 'Basic slash'
						
						if TrailDeb == false then
							TrailDeb = true
						end
coroutine.wrap(function()
local Old = Hitbox.CFrame.p
while Wait()do
if not TrailDeb then break end
local New = Hitbox.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",char)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Dark stone grey")
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
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()


hitcon = Hitbox.Touched:connect(function(hit)
local hum = hit.Parent:FindFirstChild('Humanoid')
if hum and not hum:IsDescendantOf(char) then
DoDamage(hum,dmg or 5)
end
end)


						playSound(10209645,Hitbox,1,0.9)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-30),math.rad(90)),3)
						ypcall(function()
							dmgstart(math.random(2,5))
							if deb == true then 
						
						deb = false
					end
						end)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-60),math.rad(-70),math.rad(0)),8)
						wait'0'
						Anim = 'Idle'
						hitcon:disconnect()
				        if TrailDeb == true then
TrailDeb = false
end
						end
	
end))
					
mouse.KeyDown:connect(function(key)
					key=key:lower()
					key=key:lower()
					if key == 'f' then
						if Anim == 'Idle' then Anim = 'Stab'
						if TrailDeb == false then
							TrailDeb = true
						end
						

coroutine.wrap(function()
local Old = Hitbox.CFrame.p
while Wait()do
if not TrailDeb then break end
local New = Hitbox.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",char)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Dark stone grey")
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
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
						hitcon = Hitbox.Touched:connect(function(hit)
local hum = hit.Parent:FindFirstChild('Humanoid')
if hum and not hum:IsDescendantOf(char) then
DoDamage(hum,dmg or 5)
end
end)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-50),math.rad(-30),math.rad(0)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(40),math.rad(20),math.rad(0)),4)
						--wait'.7'
						playSound(154965929,Blade2,1,0.7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-60),math.rad(-70),math.rad(0)),8)
						Anim = 'Idle'
						hitcon:disconnect()
					   if TrailDeb == true then
						TrailDeb = false
					end
					end
					end
end)



user=game:service'Players'.localPlayer
char=user.Character
mouse=user:GetMouse()
user=game:service'Players'.localPlayer;
char=user.Character
mouse=user:GetMouse()
m=Instance.new('Model',char)
hold=false
deb = false
Game.Lighting.Outlines = false
Anim = 'None'

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
                p.BrickColor = BrickColor.new('Really black')
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

ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-60),math.rad(-70),math.rad(0)),8)
ctween(ls,'C0',ls0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(70),math.rad(-20),math.rad(50)),5)

--construction
local Handle  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Handle:BreakJoints()
			Handle.Material = "SmoothPlastic"
			Handle.Transparency = 1
			Handle.TopSurface = "Smooth"
			Handle.Name = 'Handle'
			Handle.BottomSurface = "Smooth"
			Handle.FormFactor = "Custom" Handle.CanCollide = false
			Handle.BrickColor = BrickColor.new("Medium stone grey")
			Handle.Size = Vector3.new(0.685749531, 0.68574959, 0.685749531)
			    local Handleweld = Instance.new("ManualWeld")
   Handleweld.Part0 = game.Players.LocalPlayer.Character["Right Arm"]
   Handleweld.Part1 = Handle  Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Handleweld.C1 = CFrame.new(0.114501953, 0.786820889, -0.0211935043, 5.27895681e-020, 4.47034765e-008, 1, 1.93350978e-012, 0.999999881, -4.47034836e-008, -1, -1.94467489e-012, 3.28244525e-020)
    Handleweld.Parent = game.Players.LocalPlayer.Character["Right Arm"]
		
					local HandleMesh = Instance.new("SpecialMesh",Handle)
					HandleMesh.MeshId = ""
					HandleMesh.MeshType = Enum.MeshType.Brick				HandleMesh.Name = "Mesh"
				HandleMesh.Offset = Vector3.new(0, 0, 0)
				HandleMesh.Scale = Vector3.new(1.67275953, 0.331239998, 0.182181984)
				
local Hitbox  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Hitbox:BreakJoints()
			Hitbox.Material = "SmoothPlastic"
			Hitbox.Transparency = 1
			Hitbox.TopSurface = "Smooth"
			Hitbox.Name = 'Hitbox'
			Hitbox.BottomSurface = "Smooth"
			Hitbox.FormFactor = "Custom" Hitbox.CanCollide = false
			Hitbox.BrickColor = BrickColor.new("Mid gray")
			Hitbox.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Hitboxweld = Instance.new("ManualWeld")
   Hitboxweld.Part0 =  Handle   Hitboxweld.Part1 = Hitbox  Hitboxweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Hitboxweld.C1 = CFrame.new(-0.270582199, 6.18315887, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Hitboxweld.Parent = Hitbox		
					local HitboxMesh = Instance.new("SpecialMesh",Hitbox)
					HitboxMesh.MeshId = ""
					HitboxMesh.MeshType = Enum.MeshType.Brick				HitboxMesh.Name = "Mesh"
				HitboxMesh.Offset = Vector3.new(0, 0, 0)
				HitboxMesh.Scale = Vector3.new(2.36599994, 7.098001, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Dark stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.07288361e-006, -0.440738082, 4.93405151, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.181999996, 0.364000022, 2.00200009)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.151121378, 2.49862671, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.182000026, 1.45600009, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.378279686, 2.49850464, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.182000026, 1.45600009, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.497517943, 0.00567424297, -2.95291901, 3.31555725e-008, -1, 3.65483629e-007, -2.98013862e-008, -3.6547587e-007, -1, 1, 3.31555725e-008, -2.98013703e-008)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.264691353, 3.06073761, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.909999967, 0.364000142, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.26468575, -0.00567483902, -2.72582245, 3.31555725e-008, -1, 3.65477291e-007, -2.98018978e-008, -3.6546956e-007, -1, 1, 3.31555157e-008, -2.98018819e-008)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.1920929e-007, 3.11734009, 0.303098917, 1.13114545e-007, 8.29843941e-007, -1, 1, -2.38421308e-007, 1.13114368e-007, -2.38421308e-007, -1, -8.29836324e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.0135855675, -0.00567471981, -2.95297241, 3.31555725e-008, -1, 3.65477291e-007, -2.98018978e-008, -3.6546956e-007, -1, 1, 3.31555157e-008, -2.98018819e-008)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Dark stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.43051147e-006, -0.497528672, 6.75119019, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.181999996, 0.546000004, 0.909999967)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Dark stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.1920929e-006, -0.611099243, 6.18334198, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.909999967)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.264875412, 3.230896, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(2.36600018, 0.18200013, 0.546000004)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.270464897, 3.62836456, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.909999967, 1.09200025, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.264688492, 1.6468277, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.582399786, 0.181999996, 0.200200006)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Mid gray")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.156986475, 5.95611572, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.546000004, 5.27800131, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.2703619, -1.64687347, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.582399786, 0.181999996, 0.200200006)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.497519851, -0.00567495823, -2.95278168, 3.31555725e-008, -1, 3.65480531e-007, -2.98016278e-008, -3.654728e-007, -1, 1, 3.31555157e-008, -2.98016261e-008)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Mid gray")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.156858683, 4.02594757, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.546000004, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.264676094, -0.2840271, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.546000004, 7.46199799, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Dark stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.31130219e-006, -0.383954763, 6.18333435, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.909999967)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.07288361e-006, 3.11735535, -0.832516909, 1.13096782e-007, 8.2971161e-007, -1, 1, -2.38420967e-007, 1.13096576e-007, -2.38420853e-007, -1, -8.29703993e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.264650345, -2.89612579, 0, -4.47035973e-008, -1, 3.88935021e-012, 1, -4.47035973e-008, 6.56493379e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1.27400005, 0.909998953, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-6.86645508e-005, 0.27036202, 0, 1, 0, -1.06898864e-019, 0, 1, -3.8781851e-012, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(5.11419773, 0.181999996, 0.200200006)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Mid gray")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.213638544, 4.19618225, 0, -4.47034836e-008, -1, 3.88935021e-012, 1, -4.47034836e-008, 6.5648905e-020, -1.06898864e-019, -3.8781851e-012, 1)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.364000022, 0.364000022, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Dark stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(8.34465027e-007, -0.49752593, 4.13903046, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.181999996, 0.546000004, 0.546000004)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.26468575, 0.00567436218, -2.72582245, 3.31555725e-008, -1, 3.65477291e-007, -2.98018978e-008, -3.6546956e-007, -1, 1, 3.31555157e-008, -2.98018819e-008)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Medium stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.0135846138, 0.00567448139, -2.95297241, 3.31555725e-008, -1, 3.65477291e-007, -2.98018978e-008, -3.6546956e-007, -1, 1, 3.31555157e-008, -2.98018819e-008)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.18200013, 0.181999996, 0.181999996)
				
local Part  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part:BreakJoints()
			Part.Material = "SmoothPlastic"
			Part.TopSurface = "Smooth"
			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Dark stone grey")
			Part.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.1920929e-006, -0.497527599, 5.72904205, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Brick				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.181999996, 0.546000004, 0.546000004)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.54972076e-006, -0.667873383, -4.82103729, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.78813934e-006, -0.667873621, -5.50247192, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.54972076e-006, -0.667874575, -4.59389496, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.66893005e-006, -0.667874217, -4.93460846, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.31130219e-006, -0.611171007, -3.62844849, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.182000026, 1.09200001)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.43051147e-006, -0.667875767, -4.36675262, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.66893005e-006, -0.667874694, -5.38889313, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(2.38418579e-007, -0.486158729, -2.89600372, 1.63910173e-007, -3.98652617e-007, -1, 1.56316617e-006, -1, 3.9866066e-007, -1, -1.56316628e-006, -1.63909561e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.181999996)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.66893005e-006, -0.667874098, -5.04817963, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Dark stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(1.54972076e-006, -0.497528315, 7.31904602, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.546000004, 0.909999967)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.54972076e-006, -0.667874694, -4.48031616, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Mid gray")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(1.90734863e-006, -0.156997681, 8.00041962, 2.49763275e-007, -5.81140853e-007, 1, -1.07320545e-006, -1, -5.81132952e-007, 1, -1.07320523e-006, -2.497639e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.546000004, 1.27400005)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(0, -0.189658165, -2.83934021, 1.06898864e-019, 3.8781851e-012, -1, 1.19209403e-007, 1, -3.90795903e-012, 1, -1.19209403e-007, 3.53228972e-019)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.727999806)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.54972076e-006, -0.667874455, -4.70746613, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.66893005e-006, -0.667874813, -5.27532196, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.1920929e-007, -0.183947563, 3.12332916, 5.96037069e-008, -3.87638706e-012, 1, 1.19209403e-007, 1, -3.90795903e-012, -1, 1.19209403e-007, 5.96037211e-008)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.181999996)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Medium stone grey")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.66893005e-006, -0.667873979, -5.16175842, -2.49762678e-007, -5.81101688e-007, -1, 9.83853624e-007, -1, 5.81109191e-007, -1, -9.83853511e-007, 2.49763247e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.364000022, 0.182000026)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(0, -0.718988419, -2.83938599, 2.66438555e-015, 5.95998024e-008, 1, -1.19209403e-007, -1, 5.96075864e-008, 1, -1.19209403e-007, 3.53228972e-019)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.727999806)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(-1.1920929e-007, -0.713309407, 3.12332916, 1.48411445e-007, 3.87428031e-007, -1, -9.90880835e-008, -1, -3.87420187e-007, -1, 9.90880835e-008, -1.48411431e-007)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.181999996)
				
local Wedge  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Wedge:BreakJoints()
			Wedge.Material = "SmoothPlastic"
			Wedge.TopSurface = "Smooth"
			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Really black")
			Wedge.Size = Vector3.new(0.62403208, 0.62403208, 0.624032021)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(0, 0.0375139713, -2.89582062, -2.98018392e-008, -3.85066198e-012, 1, 1.19209403e-007, 1, -3.90795903e-012, -1, 1.19209403e-007, -2.98018392e-008)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.181999996, 0.181999996, 0.181999996)
TrailDeb = false
				
mouse.Button1Down:connect((function()
if Anim == 'Idle' then Anim = 'Basic slash'
						
						if TrailDeb == false then
							TrailDeb = true
						end
coroutine.wrap(function()
local Old = Hitbox.CFrame.p
while Wait()do
if not TrailDeb then break end
local New = Hitbox.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",char)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Dark stone grey")
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
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()


hitcon = Hitbox.Touched:connect(function(hit)
local hum = hit.Parent:FindFirstChild('Humanoid')
if hum and not hum:IsDescendantOf(char) then
DoDamage(hum,dmg or 5)
end
end)


						playSound(10209645,Hitbox,1,0.9)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-30),math.rad(90)),3)
						ypcall(function()
							dmgstart(math.random(2,5))
							if deb == true then 
						
						deb = false
					end
						end)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-60),math.rad(-70),math.rad(0)),8)
						wait'0'
						Anim = 'Idle'
						hitcon:disconnect()
				        if TrailDeb == true then
TrailDeb = false
end
						end
	
end))
					
mouse.KeyDown:connect(function(key)
					key=key:lower()
					key=key:lower()
					if key == 'f' then
						if Anim == 'Idle' then Anim = 'Stab'
						if TrailDeb == false then
							TrailDeb = true
						end
						

coroutine.wrap(function()
local Old = Hitbox.CFrame.p
while Wait()do
if not TrailDeb then break end
local New = Hitbox.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",char)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Dark stone grey")
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
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
Wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
						hitcon = Hitbox.Touched:connect(function(hit)
local hum = hit.Parent:FindFirstChild('Humanoid')
if hum and not hum:IsDescendantOf(char) then
DoDamage(hum,dmg or 5)
end
end)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-50),math.rad(-30),math.rad(0)),7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(40),math.rad(20),math.rad(0)),4)
						--wait'.7'
						playSound(154965929,Blade2,1,0.7)
						ctween(rs,'C0',rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-60),math.rad(-70),math.rad(0)),8)
						Anim = 'Idle'
						hitcon:disconnect()
					   if TrailDeb == true then
						TrailDeb = false
					end
					end
					end
end)



end}
module[2] = {"Rokydanye REWORK",function()
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

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Handle",Vector3.new(1, 1, 1))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0513458252, 0.944534302, -0.0811920166, -0.0102198571, 2.38630419e-005, 0.99994725, -0.0168640614, 0.999856949, -0.00019622338, -0.999805093, -0.0168651734, -0.010218041))
mesh("SpecialMesh",handle,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(3.25959849, 0.115999997, 0.127599999))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Medium stone grey","Hitbox",Vector3.new(1.20000005, 4.60000038, 0.599999905))
Hitboxweld=weld(m,handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.143112063, 6.22692871, 0.000343322754, 5.96191967e-008, -0.999998391, -5.91157914e-008, 0.999998569, -1.40746124e-007, -3.35276127e-008, -3.91155481e-008, 1.38509222e-008, 0.999999106))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000175476074, 3.18406296, -0.584589601, 3.1106174e-007, 6.65961124e-007, -0.999999225, 0.999999166, -1.99390342e-007, -1.13621354e-007, -1.67652615e-007, -0.999998629, -8.76443437e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.116000086, 0.115999997, 0.115999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.120494246, 2.55163956, -0.000389099121, -3.57540557e-008, -0.999990582, 5.21094989e-009, 0.999991, 2.26864358e-008, -3.91155481e-007, -3.53902578e-008, 3.06140464e-008, 0.999999106))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.116000019, 0.928000033, 0.115999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00465834141, 3.12642288, 7.62939453e-005, 5.00731403e-008, -0.999998569, 1.17693162e-008, 0.999998868, -4.27971827e-008, -3.81842256e-008, -3.91155481e-008, 1.38509222e-008, 0.999999106))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 0.232000083, 0.115999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.111386776, 2.55165863, -0.00040435791, 5.00731403e-008, -0.999998569, 1.17693162e-008, 0.999998868, -4.27971827e-008, -3.81842256e-008, -3.91155481e-008, 1.38509222e-008, 0.999999106))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.116000019, 0.928000033, 0.115999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000587463379, -0.243011996, 5.85134125, -2.32830644e-008, -5.20732101e-007, 0.999998748, -1.06962398e-006, -0.999998808, -6.41822908e-007, 0.999998927, -1.1564116e-006, -4.96394932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.34799999, 0.34799999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00432050228, 0.00595855713, -2.7840004, -1.717126e-009, -0.999998748, 3.23392669e-007, 1.09896064e-007, -4.16195462e-007, -0.999998689, 0.999998868, -1.03391358e-007, -9.68575478e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.116000086, 0.115999997, 0.115999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.105027676, 4.11227417, -6.10351563e-005, 5.00731403e-008, -0.999998569, 1.17693162e-008, 0.999998868, -4.27971827e-008, -3.81842256e-008, -3.91155481e-008, 1.38509222e-008, 0.999999106))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.34799999, 0.115999997, 0.115999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00470271707, -0.00584411621, -2.78356171, -1.717126e-009, -0.999998748, 3.23392669e-007, 1.09896064e-007, -4.16195462e-007, -0.999998689, 0.999998868, -1.03391358e-007, -9.68575478e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.116000086, 0.115999997, 0.115999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.242508203, 0.00611114502, -3.01623917, -1.717126e-009, -0.999998748, 3.23392669e-007, 7.91624188e-008, -3.93838491e-007, -0.999999166, 0.999999166, -7.20319804e-009, -2.05822289e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.116000086, 0.115999997, 0.115999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000213623047, -0.185208023, 5.03872681, -2.32830644e-008, -5.20732101e-007, 0.999998748, -1.06962398e-006, -0.999998808, -6.41822908e-007, 0.999998927, -1.1564116e-006, -4.96394932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.232000008, 1.27600014))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0046286881, -2.95814514, -0.000267028809, 5.00731403e-008, -0.999998569, 1.17693162e-008, 0.999998868, -4.27971827e-008, -3.81842256e-008, -3.91155481e-008, 1.38509222e-008, 0.999999106))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.812000036, 0.579999328, 0.115999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00436702371, 1.68229294, 0, 5.23868948e-008, -0.999998212, -6.46300578e-008, 0.999998629, -1.38839823e-007, -1.68569386e-007, -3.91155481e-008, 1.38509222e-008, 0.999999106))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.371199876, 0.115999997, 0.127599999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000503540039, -0.12708354, 6.31524658, -2.32830644e-008, -5.20732101e-007, 0.999998748, -1.06962398e-006, -0.999998808, -6.41822908e-007, 0.999998927, -1.1564116e-006, -4.96394932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.115999997, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000213623047, 3.18397141, 0.574902952, 3.1106174e-007, 6.65961124e-007, -0.999999225, 0.999999166, -1.99390342e-007, -1.13621354e-007, -1.67652615e-007, -0.999998629, -8.76443437e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.116000086, 0.115999997, 0.115999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.278891832, -0.00566101074, -3.01582718, -1.717126e-009, -0.999998748, 3.23392669e-007, 1.09896064e-007, -4.16195462e-007, -0.999998689, 0.999998868, -1.03391358e-007, -9.68575478e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.116000086, 0.115999997, 0.115999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0107699931, -1.68196869, -0.000175476074, 5.96191967e-008, -0.999998391, -5.91157914e-008, 0.999998569, -1.40746124e-007, -3.35276127e-008, -3.91155481e-008, 1.38509222e-008, 0.999999106))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.371199876, 0.115999997, 0.127599999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.242888302, -0.00568389893, -3.01576233, 7.65430741e-008, -0.999989688, 4.04575758e-007, 1.50874257e-007, -3.28659098e-007, -0.999998748, 0.999990165, 4.10364009e-009, -6.64964318e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.116000086, 0.115999997, 0.115999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00480416417, 3.29995346, -0.000221252441, 5.00731403e-008, -0.999998569, 1.17693162e-008, 0.999998868, -4.27971827e-008, -3.81842256e-008, -3.91155481e-008, 1.38509222e-008, 0.999999106))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.50800014, 0.116000086, 0.34799999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000503540039, -0.359012485, 6.3152504, -2.32830644e-008, -5.20732101e-007, 0.999998748, -1.06962398e-006, -0.999998808, -6.41822908e-007, 0.999998927, -1.1564116e-006, -4.96394932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.115999997, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000343322754, -0.243116915, 4.22694016, -2.32830644e-008, -5.20732101e-007, 0.999998748, -1.06962398e-006, -0.999998808, -6.41822908e-007, 0.999998927, -1.1564116e-006, -4.96394932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.34799999, 0.34799999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.279274791, 0.0061340332, -3.01628494, -1.717126e-009, -0.999998748, 3.23392669e-007, 1.09896064e-007, -4.16195462e-007, -0.999998689, 0.999998868, -1.03391358e-007, -9.68575478e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.116000086, 0.115999997, 0.115999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.105817497, 6.08304977, 0.000411987305, 5.00731403e-008, -0.999998569, 1.17693162e-008, 0.999998868, -4.27971827e-008, -3.81842256e-008, -3.91155481e-008, 1.38509222e-008, 0.999999106))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.34799999, 3.3640008, 0.115999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0469200611, 4.28580093, -0.000289916992, 5.00731403e-008, -0.999998569, 1.17693162e-008, 0.999998868, -4.27971827e-008, -3.81842256e-008, -3.91155481e-008, 1.38509222e-008, 0.999999106))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.232000008, 0.232000008, 0.115999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00452938676, -0.290000916, -0.000190734863, -3.57540557e-008, -0.999990582, 5.21094989e-009, 0.999991, 2.26864358e-008, -3.91155481e-007, -3.53902578e-008, 3.06140464e-008, 0.999999106))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.34799999, 4.75599861, 0.115999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000389099121, -0.243107885, 6.8951149, -2.32830644e-008, -5.20732101e-007, 0.999998748, -1.06962398e-006, -0.999998808, -6.41822908e-007, 0.999998927, -1.1564116e-006, -4.96394932e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.34799999, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0110196769, 3.70596313, -0.000228881836, 5.00731403e-008, -0.999998569, 1.17693162e-008, 0.999998868, -4.27971827e-008, -3.81842256e-008, -3.91155481e-008, 1.38509222e-008, 0.999999106))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 0.696000159, 0.115999997))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(1, 1, 1))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.15527344e-005, -0.463034034, 3.18950272, 3.66009772e-007, 3.67927669e-007, -0.999998808, -2.63535185e-008, -0.999998331, -2.25892563e-007, -0.999998569, 1.69544364e-007, -2.70083547e-008))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.115999997, 0.115999997))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Wedge",Vector3.new(1, 1, 1))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000259399414, -0.41691938, -5.61992645, -2.71014869e-007, -5.63268941e-007, -0.999998331, 1.12816633e-006, -0.999998331, 4.66463234e-007, -0.999998331, -8.77334969e-007, 4.06056643e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.232000008, 0.116000019))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Wedge",Vector3.new(1, 1, 1))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.15527344e-005, -0.416832209, -4.69216156, -2.71014869e-007, -5.63268941e-007, -0.999998331, 1.12816633e-006, -0.999998331, 4.66463234e-007, -0.999998331, -8.77334969e-007, 4.06056643e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.232000008, 0.116000019))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Wedge",Vector3.new(1, 1, 1))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000244140625, -0.416903526, -5.38799667, -2.71014869e-007, -5.63268941e-007, -0.999998331, 1.12816633e-006, -0.999998331, 4.66463234e-007, -0.999998331, -8.77334969e-007, 4.06056643e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.232000008, 0.116000019))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Wedge",Vector3.new(1, 1, 1))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000129699707, -0.4168396, -4.80811691, -2.71014869e-007, -5.63268941e-007, -0.999998331, 1.12816633e-006, -0.999998331, 4.66463234e-007, -0.999998331, -8.77334969e-007, 4.06056643e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.232000008, 0.116000019))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(1, 1, 1))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00032043457, -0.243157327, 7.47495651, -2.32830644e-008, -5.20732101e-007, 0.999998748, -1.06962398e-006, -0.999998808, -6.41822908e-007, 0.999998927, -1.1564116e-006, -4.96394932e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.34799999, 0.579999983))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Wedge",Vector3.new(1, 1, 1))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.15527344e-005, -0.416823983, -4.57619095, -2.71014869e-007, -5.63268941e-007, -0.999998331, 1.12816633e-006, -0.999998331, 4.66463234e-007, -0.999998331, -8.77334969e-007, 4.06056643e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.232000008, 0.116000019))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Wedge",Vector3.new(1, 1, 1))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.39233398e-005, 0.105633855, 8.17050552, -2.32830644e-008, -5.20732101e-007, 0.999998748, -1.06962398e-006, -0.999998808, -6.41822908e-007, 0.999998927, -1.1564116e-006, -4.96394932e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.34799999, 0.812000036))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Wedge",Vector3.new(1, 1, 1))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000213623047, -0.416888744, -5.27204895, -2.71014869e-007, -5.63268941e-007, -0.999998331, 1.12816633e-006, -0.999998331, 4.66463234e-007, -0.999998331, -8.77334969e-007, 4.06056643e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.232000008, 0.116000019))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Wedge",Vector3.new(1, 1, 1))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00025177002, -0.416909486, -5.50397873, -2.71014869e-007, -5.63268941e-007, -0.999998331, 1.12816633e-006, -0.999998331, 4.66463234e-007, -0.999998331, -8.77334969e-007, 4.06056643e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.232000008, 0.116000019))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(1, 1, 1))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -0.231011301, -2.95853806, 3.1106174e-007, -3.8456983e-007, -0.999998748, 1.58806506e-006, -0.999998331, 2.64302571e-007, -0.99999851, -1.49989501e-006, 1.64844096e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.115999997, 0.115999997))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(1, 1, 1))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.453143001, 3.18961334, -1.24797225e-007, 6.04331944e-008, 0.999998748, 1.42914359e-007, 0.999998629, 4.88716978e-009, -0.999998868, 2.25860276e-007, 2.88709998e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.115999997, 0.115999997))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(1, 1, 1))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000221252441, -0.227434039, -2.95796967, -9.12696123e-008, 7.16026989e-008, 0.999998927, 1.42914359e-007, 0.999998629, 4.88716978e-009, -0.999998569, 1.40746124e-007, 3.35276127e-008))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.115999997, 0.115999997))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(1, 1, 1))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -0.459308267, -2.89977646, 3.91155481e-008, -1.38509222e-008, -0.999999106, 1.42914359e-007, 0.999998629, 4.88716978e-009, 0.999998987, -1.54643203e-007, -9.68575478e-008))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.115999997, 0.463999897))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Wedge",Vector3.new(1, 1, 1))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.86645508e-005, -0.416811109, -4.46023178, -2.71014869e-007, -5.63268941e-007, -0.999998331, 1.12816633e-006, -0.999998331, 4.66463234e-007, -0.999998331, -8.77334969e-007, 4.06056643e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.232000008, 0.116000019))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Wedge",Vector3.new(1, 1, 1))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000137329102, -0.416853666, -4.92411804, -2.71014869e-007, -5.63268941e-007, -0.999998331, 1.12816633e-006, -0.999998331, 4.66463234e-007, -0.999998331, -8.77334969e-007, 4.06056643e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.232000008, 0.116000019))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(1, 1, 1))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000205993652, -0.358892858, -3.70598602, -2.71014869e-007, -5.63268941e-007, -0.999998331, 1.12816633e-006, -0.999998331, 4.66463234e-007, -0.999998331, -8.77334969e-007, 4.06056643e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.116000019, 0.69599998))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Wedge",Vector3.new(1, 1, 1))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000190734863, -0.416883975, -5.15605545, -2.71014869e-007, -5.63268941e-007, -0.999998331, 1.12816633e-006, -0.999998331, 4.66463234e-007, -0.999998331, -8.77334969e-007, 4.06056643e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.232000008, 0.116000019))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Wedge",Vector3.new(1, 1, 1))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000137329102, -0.416860819, -5.04009247, -2.71014869e-007, -5.63268941e-007, -0.999998331, 1.12816633e-006, -0.999998331, 4.66463234e-007, -0.999998331, -8.77334969e-007, 4.06056643e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.232000008, 0.116000019))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(1, 1, 1))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-005, -0.468275398, -2.89972687, -1.43423676e-007, 1.66607379e-007, 0.999998629, 5.2532414e-009, -0.999998569, 1.05023901e-009, 0.999998987, -1.54643203e-007, -9.68575478e-008))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.115999997, 0.115999997, 0.463999897))

TrailDeb = false

function attackone()
attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(5,10),"Normal",RootPart,.2,1) end) 
	if TrailDeb == false then
							TrailDeb = true
						end
						

coroutine.wrap(function()
local Old = Hitbox.CFrame.p
while wait()do
if not TrailDeb then break end
local New = Hitbox.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Dark stone grey")
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
wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(30)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(120),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(10),math.rad(0),math.rad(-30)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=199145095",Hitbox,1,1)
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(30)),.5)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-30),math.rad(0),math.rad(-20)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(-20),math.rad(0)),.5)
end
attack=false
if TrailDeb == true then
						TrailDeb = false
end
con1:disconnect()
end

function attacktwo()
attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(5,10),"Normal",RootPart,.2,1) end) 
if TrailDeb == false then
							TrailDeb = true
						end
						

coroutine.wrap(function()
local Old = Hitbox.CFrame.p
while wait()do
if not TrailDeb then break end
local New = Hitbox.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Dark stone grey")
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
wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(50)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(50)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(10),math.rad(0),math.rad(-30)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(40),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=199145146",Hitbox,1,1)
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(50)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(10),math.rad(0),math.rad(-30)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.3)
end
attack=false
if TrailDeb == true then
						TrailDeb = false
end
con1:disconnect()
end

function attackthree()
attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(5,10),"Normal",RootPart,.2,1) end) 
if TrailDeb == false then
							TrailDeb = true
						end
						

coroutine.wrap(function()
local Old = Hitbox.CFrame.p
while wait()do
if not TrailDeb then break end
local New = Hitbox.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Dark stone grey")
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
wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)()
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(30)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(90),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(10),math.rad(0),math.rad(-30)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=199145204",Hitbox,1,1)	
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(30)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-40),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(10),math.rad(0),math.rad(-30)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
end
attack=false
if TrailDeb == true then
						TrailDeb = false
end
con1:disconnect()
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
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(-20)),.3)
RH.C0=clerp(RH.C0,cf(1,-.8,-.5)*angles(math.rad(-20),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-20),math.rad(-90),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(40)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(-30)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.5)*angles(math.rad(20),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-20),math.rad(-90),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*angles(math.rad(10),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(-5),math.rad(30)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(10),math.rad(0),math.rad(-20)),.3)
RH.C0=clerp(RH.C0,cf(1,-.5,-.5)*angles(math.rad(10),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.5)*angles(math.rad(-50),math.rad(-90),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(-20),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(math.rad(100),math.rad(15),math.rad(50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(-20),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
end
end
end
end
end}

 
 

module[1] = {"SB Shotgun",function()

Players = game:GetService("Players") 
Me = Players.LocalPlayer
Char = Me.Character 
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
Asset = "http://www.roblox.com/asset/?id=" 
EffectModel = nil 
MeleeDmg = 200
Accuracy = {Minimum = 2, Maximum = 5.5, Momentum = 2} 
Selected = false 
ReloadFlash = false 
Attacking = false 
ReloadHold = false 
Reloading = false 
Swinging = false 
Aiming = false 
ReloadOn = false 
Debounce = true 
Hurt = false 
ModelName = "Weapon" 
ToolName = "Weapon" 
Icon = Asset..(58334502) 
function ReNew() 
if EffectModel then 
if EffectModel.Parent ~= workspace then 
pcall(function() EffectModel:remove() end) 
EffectModel = Instance.new("Model",workspace) 
EffectModel.Name = "Effects" 
end 
else 
EffectModel = Instance.new("Model",workspace) 
EffectModel.Name = "Effects" 
end 
end 
Ammunition = { 
MaxAmmo = 500, 
Ammo = 500, 
Ammoleft = 5000, 
} 
Images = { 
Asset..(64291927), 
Asset..(64291941), 
Asset..(64291961), 
Asset..(64291977), 
} 
Sounds = { 
Fire = {Id = Asset..(2697294), Pitch = 0.92, Volume = 0.8}, 
Reload = {Id = Asset..(2697295), Pitch = 1, Volume = 0.5}, 
Slash = {Id = "rbxasset://sounds//swordslash.wav", Pitch = 1.2, Volume = 0.6}, 
Out = {Id = "rbxasset://sounds\\clickfast.wav", Pitch = 1.4, Volume = 0.6}, 
Hit = {Id = Asset..(10209590), Pitch = 1.1, Volume = 0.45}, 
PartHit = {Id = "rbxasset://sounds\\metal.ogg", Pitch = 1, Volume = 0.2}, 
} 
ContentProvider = game:GetService("ContentProvider") 
for _,v in pairs(Images) do ContentProvider:Preload(v) end 
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
surface = {"Anything", CN(pospos.p, pos)*CN(0, 0, -(pospos.p - pos).magnitude+0.12)*CA(MR(-90), 0, 0)} 
else 
if pos2.Y > ((siz.Y/2)-0.01) then 
surface = {"Top", CA(0, 0, 0)} 
elseif pos2.Y < -((siz.Y/2)-0.01) then 
surface = {"Bottom", CA(-MP, 0, 0)} 
elseif pos2.X > ((siz.X/2)-0.01) then 
surface = {"Right", CA(0, 0, MR(-90))} 
elseif pos2.X < -((siz.X/2)-0.01) then 
surface = {"Left", CA(0, 0, MR(90))} 
elseif pos2.Z > ((siz.Z/2)-0.01) then 
surface = {"Back", CA(MR(90), 0, 0)} 
elseif pos2.Z < -((siz.Z/2)-0.01) then 
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
local C3 = Color3.new 
local UD = UDim2.new 
local V2 = Vector2.new 
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
local Classes = {"Frame", "ImageLabel", "ImageButton", "TextLabel", "TextButton", "TextBox"} 
function Make(Class, Par, Size, Pos, Color, Trans, Border, Borderc, Txt, TxtC, Img) 
local Mk = "Frame" 
for _,v in pairs(Classes) do 
if Class == v then 
Mk = v 
end 
end 
local g = Instance.new(Mk) 
g.Size = Size 
g.Position = Pos 
g.BackgroundColor3 = Color 
g.Transparency = Trans 
g.BorderSizePixel = Border 
g.BorderColor3 = Borderc 
if Mk == "TextButton" or Mk == "TextLabel" or Mk == "TextBox" then 
g.Text = Txt 
g.TextColor3 = TxtC 
elseif Mk == "ImageLabel" or Mk == "ImageButton" then 
g.Image = Img 
end 
g.Parent = Par 
return g 
end 
Gui = Me:findFirstChild("PlayerGui") 
if Gui then 
for _,v in pairs(Gui:children()) do if v.Name == "Weapon GUI" then v:remove() end end 
end 
Screen = Instance.new("ScreenGui") 
Screen.Name = "Weapon GUI" 
AmmoTable = {} 
AccuracyGuis = {} 
lul = { 
{unit = V2(0, -1), size = V2(2, 25), offset = V2(-1, -1-25)}, 
{unit = V2(1, 0), size = V2(25, 2), offset = V2(1, -1)}, 
{unit = V2(0, 1), size = V2(2, 25), offset = V2(-1, -1)}, 
{unit = V2(-1, 0), size = V2(25, 2), offset = V2(-1-25, -1)} 
} 
Main = Make("Frame", Screen, UD(0, 175, 0, 20), UD(1, -185-60, 1, -30), C3(0.25, 0.25, 0.3), 0.6, 0, C3()) 
for i = 1, Ammunition.MaxAmmo, 1 do 
local Fr = Make("Frame", Main, UD(0, 8, 0, 14), UD(1, -12*i, 0, -14-6), C3(0.25, 0.25, 0.3), 0.6, 0, C3()) 
table.insert(AmmoTable, Fr) 
end 
AmmoAtm = Make("TextLabel", Main, UD(0, 0, 0, 0), UD(0, 8, 0.5, 0), C3(), 0, 0, C3(), "0", C3(1, 1, 1)) 
AmmoAtm.BackgroundTransparency = 1 
AmmoAtm.TextXAlignment = "Left" 
AmmoAtm.Font = "ArialBold" 
AmmoAtm.FontSize = "Size18" 
AmmoLeft = Make("TextLabel", Main, UD(0, 0, 0, 0), UD(1, -8, 0.5, 0), C3(), 0, 0, C3(), "40", C3(1, 1, 1)) 
AmmoLeft.BackgroundTransparency = 1 
AmmoLeft.TextXAlignment = "Right" 
AmmoLeft.Font = "ArialBold" 
AmmoLeft.FontSize = "Size18" 
ReloadGui = Make("TextLabel", Main, UD(0, 0, 0, 0), UD(1, -12, 0, -40), C3(), 1, 0, C3(), "RELOAD", C3(1, 0.25, 0.1)) 
ReloadGui.TextXAlignment = "Right" 
ReloadGui.Font = "ArialBold" 
ReloadGui.FontSize = "Size24" 
for _, prop in pairs(lul) do 
local g = Make("Frame", Screen, UD(0, prop.size.x, 0, prop.size.y), UD(0.5, prop.offset.x, 0.5, prop.offset.y), C3(0.8, 0.8, 0.9), 1, 0, C3()) 
table.insert(AccuracyGuis, {Gui = g, props = prop}) 
end 
Screen.Parent = Gui 
local Offset = 0.1 
local Thing = 1 
local Speed1 = 0.1 
local Speed2 = 0 
local TempAcc = 0 
local AccTimesMax = 17 
local AccTime = 1.25 
local AccTimes = AccTimesMax 
local AccOn = false 
function AddInaccuracy(Acc) 
TempAcc = Acc 
end 
Notime(function() 
while true do 
ReNew() 
AmmoAtm.Text = Ammunition.Ammo 
AmmoLeft.Text = Ammunition.Ammoleft 
for i,v in pairs(AmmoTable) do 
v.Transparency = 1 
end 
for i = 1, Ammunition.Ammo do 
AmmoTable[i].Transparency = 0.6 
end 
if Ammunition.Ammo <= Ammunition.MaxAmmo/4 then ReloadFlash = true else ReloadFlash = false end 
local Speed = Torso.Velocity.magnitude 
Offset = 0 
if Speed > 1 then 
Speed1 = Speed 
Thing = Thing*1.2 
else 
Speed2 = Speed 
local lol = 1.4 
if AccOn then lol = AccTime end 
Thing = Thing/lol 
end 
if TempAcc ~= 0 then 
Speed1 = TempAcc 
Thing = TempAcc/2 
AccOn = true 
if TempAcc ~= 0 then 
AccTimes = AccTimes - 1 
if AccTimes < 1 then AccTimes = AccTimesMax Notime(function() wait(0.4) AccOn = false end) TempAcc = 0 end 
end 
end 
if Thing < 1 then Thing = 1 elseif Thing > 14 then Thing = 14 end 
Offset = Accuracy.Minimum + ((Speed1 - Speed1/Thing)/(Speed1 - Speed1/14))*Accuracy.Maximum 
Accuracy.Momentum = Offset 
wait() 
end 
end) 
Notime(function() 
while true do 
if ReloadFlash then 
if ReloadOn then 
ReloadOn = false 
ReloadGui.Transparency = 1 
else 
ReloadOn = true 
ReloadGui.Transparency = 0 
end 
else 
ReloadGui.Transparency = 1 
end 
wait(0.4) 
end 
end) 
Add = { 
Head = function(P, Scale) 
local m = Instance.new("SpecialMesh") 
m.MeshType = "Head" 
m.Scale = Scale or V3(1, 1, 1) 
m.Parent = P 
return m 
end, 
Sphere = function(P, Scale) 
local m = Instance.new("SpecialMesh") 
m.MeshType = "Sphere" 
m.Scale = Scale or V3(1, 1, 1) 
m.Parent = P 
return m 
end, 
Wedge = function(P, Scale) 
local m = Instance.new("SpecialMesh") 
m.MeshType = "Wedge" 
m.Scale = Scale or V3(1, 1, 1) 
m.Parent = P 
return m 
end, 
Block = function(P, Scale, Bevel) 
local m = Instance.new("BlockMesh") 
m.Scale = Scale or V3(1,1,1) 
m.Parent = P 
return m 
end 
} 
for _,v in pairs(Sounds) do 
ContentProvider:Preload(v.Id) 
end 
function PlaySound(Sound, bool) 
Pitch = Sound.Pitch 
if bool then 
Pitch = MRA((Sound.Pitch*0.75)*1000, (Sound.Pitch*1.15)*1000)/1000 
end 
local a = Instance.new("Sound") 
a.SoundId = Sound.Id 
a.Volume = Sound.Volume 
a.Pitch = Pitch 
a.Name = "FX" 
a.Parent = Torso 
a:play() 
Notime(function() 
wait(1) 
a:remove() 
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
if v.Name == ModelName then 
v:remove() 
end 
end 
for _,v in pairs(Char:children()) do if v.Name == ModelName then v:remove() end end 
Model = Instance.new("Model") 
Model.Name = ModelName 
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
TW = Weld(Torso, nil, CN(-0.4, -1.5, 0.7), CA(MR(55), MR(-90), MR(0))) 
local FH = Instance.new("Humanoid",Model) 
FH.PlatformStand = true 
FH.MaxHealth = math.huge 
FH.Health = math.huge 
pcall(function() Torso:findFirstChild("Shirt"):clone().Parent = Model end) 
local hh = Part(Model, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2)) 
hh.Name = "Head" 
Weld(FTorso, hh) 
Weapon = Instance.new("Model") 
Weapon.Name = "Weapon" 
HB = Part(Weapon, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2)) 
HBW = Weld(Rarm, HB, CN(0, -0.7, 0), CA(MR(-90), MR(180), 0)) 
HW = Weld(HB, nil, CA(MR(38), MR(-28), MR(-90)) * CN(0, -0.2, -3.8)) 
LHB = Part(Weapon, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2)) 
LHBW = Weld(Larm, LHB, CN(0, -0.7, 0), CA(MR(-90), MR(180), 0)) 
LHW = Weld(LHB, nil, CA(MR(-2), MR(30), MR(-3)) * CN(-0.1, 0.32, -0.24)) 
LHWK = Weld(LHB, nil, CA(MR(170), 0, 0)) 
Handle = Part(Weapon, false, false, 0, 0, BN("Black"), V3(0.5, 0.9, 0.9)) 
TW.Part1 = Handle 
Handle2 = Part(Weapon, false, false, 0, 0, BN("Black"), V3(0.5, 0.6, 1.6)) 
Weld(Handle, Handle2, CA(MR(-45), 0, 0), CN(0, 0.5, -0.4)) 
Handle3 = Part(Weapon, false, false, 0, 0, BN("Black"), V3(0.5, 0.7, 1.3)) 
Weld(Handle2, Handle3, CA(MR(45), 0, 0), CN(0, -0.4, -0.9)) 
Pipe1 = Part(Weapon, false, false, 0, 0.1, BN("Light grey"), V3(0.3, 0.3, 3.2)) 
Add.Block(Pipe1, V3(1,1,1), 0.08) 
Weld(Handle3, Pipe1, CN(0, 0.15, 1.6+0.55)) 
Pipe2 = Part(Weapon, false, false, 0, 0.1, BN("Light grey"), V3(0.3, 0.3, 1.7)) 
Add.Block(Pipe2, V3(1,1,1), 0.08) 
Weld(Handle3, Pipe2, CN(0, -0.15, 0.85+0.55)) 
Pipe3 = Part(Weapon, false, false, 0, 0.1, BN("Light grey"), V3(0.25, 0.25, 1.6)) 
Add.Block(Pipe3, V3(1,1,1), 0.065) 
Weld(Pipe2, Pipe3, CN(0, 0, 0.8+0.7)) 
Pump = Part(Weapon, false, false, 0, 0, BN("Black"), V3(0.45, 0.45, 1.1)) 
Add.Block(Pump, V3(1,1,1), 0.225/2) 
PumpWeld = Weld(Pipe2, Pump, CN(0, 0, 0.6), CN(0, 0, 0)) 
Pump2 = Part(Weapon, false, false, 0, 0, BN("Black"), V3(0.5, 0.5, 0.3)) 
Add.Block(Pump, V3(1,1,1), 0.13) 
Weld(Pump, Pump2, CN(0, 0, -0.5)) 
for degrees = -20, 200, 20 do 
local Derp = Part(Weapon, false, false, 0, 0, BN("Black"), V3(0.2, 0.2, 0.2)) 
Add.Block(Derp, V3(0.4,0.6,0.4), 0.02) 
Weld(Handle3, Derp, CN(0, -0.45, -0.32) * CA(MR(degrees), 0, 0), CN(0, 0, -0.2)) 
end 
Derp = Part(Weapon, false, false, 0, 0, BN("Black"), V3(0.2, 0.2, 0.3)) 
Add.Block(Derp, V3(0.4,1,1), 0.02) 
Weld(Handle3, Derp, CN(0, 0, -0.32) * CA(MR(-20), 0, 0), CN(0, 0.45, -0.2)) 
Trigger = Part(Weapon, false, false, 0, 0, BN("Really black"), V3(0.2, 0.3, 0.2)) 
Add.Block(Trigger, V3(0.5, 0.9, 0.3), 0.02) 
TriggerWeld = Weld(Handle3, Trigger, CN(0, -0.45, -0.4) * CA(MR(2), 0, 0)) 
Aim = Part(Weapon, false, false, 0, 0, BN("Black"), V3(0.3, 0.2, 0.7)) 
Add.Block(Aim, V3(1,0.7,1), 0.05) 
Weld(Pipe1, Aim, CN(0, 0.12, 1.1)) 
Aim1 = Part(Weapon, false, false, 0, 0, BN("Black"), V3(0.2, 0.2, 0.2)) 
Add.Block(Aim1, V3(0.3, 0.7, 0.5)) 
Weld(Aim, Aim1, CN(-.1, 0.1, -0.25)) 
Aim2 = Part(Weapon, false, false, 0, 0, BN("Black"), V3(0.2, 0.2, 0.2)) 
Add.Block(Aim2, V3(0.3, 0.7, 0.5)) 
Weld(Aim, Aim2, CN(.1, 0.1, -0.25)) 
Aim3 = Part(Weapon, false, false, 0, 0, BN("Black"), V3(0.2, 0.2, 0.2)) 
Add.Block(Aim3, V3(0.3, 0.7, 0.5)) 
Weld(Aim, Aim3, CN(0, 0.1, 0.25)) 
BulletFlip = Part(Weapon, false, false, 0, 0, BN("Light grey"), V3(0.2, 0.3, 0.6)) 
Flip = Weld(Handle3, BulletFlip, CN(-0.18, 0.1, 0.2) * CA(0, MR(-10), 0)) 
---POCKET 
BeltWelds = {} 
BeltK = nil 
for i = -0.5, 0.5, 1 do 
local Belt = Part(Weapon, false, false, 0, 0, BN("Black"), V3(2.1, 0.3, 0.2)) 
table.insert(BeltWelds, Weld(Torso, Belt, CN(0, -0.9, i))) 
end 
for i = 1, -1, -2 do 
local Belt = Part(Weapon, false, false, 0, 0, BN("Black"), V3(0.2, 0.3, 1.1)) 
table.insert(BeltWelds, Weld(Torso, Belt, CN(i, -0.9, 0))) 
BeltK = Belt 
end 
for i = -0.25, 0.25, 0.5 do 
local Pocket = Part(Weapon, false, false, 0, 0, BN("Black"), V3(1.1, 0.9, 0.2)) 
table.insert(BeltWelds, Weld(Torso, Pocket, CN(0.8, -1.2, -0.8) * CA(0, MR(-15), 0), CN(0, 0, i))) 
end 
for i = -0.5, 0.5, 1 do 
local Pocket = Part(Weapon, false, false, 0, 0, BN("Black"), V3(0.6, 0.9, 0.2)) 
table.insert(BeltWelds, Weld(Torso, Pocket, CN(0.8, -1.2, -0.8) * CA(0, MR(-15)+MP/2, 0), CN(0, 0, i))) 
end 
Pocket = Part(Weapon, false, false, 0, 0, BN("Black"), V3(1.1, 0.2, 0.6)) 
table.insert(BeltWelds, Weld(Torso, Pocket, CN(0.8, -1.6, -0.8) * CA(0, MR(-15), 0))) 
function Shell(P) 
local Shel = Instance.new("Model") 
local Back = Part(Shel, false, false, 0, 0, BN("Bright yellow"), V3(0.3, 0.3, 0.25)) 
local Main = Part(Shel, false, false, 0, 0, BN("Bright red"), V3(0.3, 0.3, 0.4)) 
Add.Block(Back, V3(1,1,1), 0.077) 
Add.Block(Main, V3(1,1,1), 0.077) 
Weld(Main, Back, CN(0, 0, -0.225)) 
Shel.Parent = P 
return {Model = Shel, Back = Back, Main = Main} 
end 
for y = 0.15, 0.65, 0.25 do 
for x = -0.12, 0.13, 0.24 do 
for z = -0.25, 0.26, 0.5 do 
local sh = Shell(Weapon) 
Weld(Pocket, sh.Main, CN(z-0.05, y, x), CA(0, MP/2, 0)) 
end 
end 
end 
KnifeSheath = Part(Weapon, false, false, 0, 0, BN("Black"), V3(0.3, 0.9, 0.6)) 
SheathWeld = Weld(BeltK, KnifeSheath, CN(-0.2, -0.3, -0.25) * CA(MR(-20), 0, 0)) 
KnifeHandle = Part(Weapon, false, false, 0, 0, BN("Really black"), V3(0.3, 0.6, 0.3)) 
KnifeWeld = Weld(KnifeSheath, KnifeHandle, CA(MP, 0, 0), CN(0, 0.9, 0)) 
KnifeHandle2 = Part(Weapon, false, false, 0, 0, BN("Dark grey"), V3(0.3, 0.2, 0.4)) 
Weld(KnifeHandle, KnifeHandle2, CN(0, 0.35, 0)) 
KnifeBlade1 = Part(Weapon, false, false, 0, 0.1, BN("Light grey"), V3(0.2, 0.8, 0.3)) 
Add.Block(KnifeBlade1, V3(0.4, 1, 1), 0.05) 
Weld(KnifeHandle2, KnifeBlade1, CN(0, 0.42, 0)) 
KnifeBlade2 = Part(Weapon, false, false, 0, 0.1, BN("Light grey"), V3(0.2, 0.24, 0.24)) 
Add.Block(KnifeBlade2, V3(0.4, 1, 1), 0.05) 
Weld(KnifeBlade1, KnifeBlade2, CN(0, 0.32, 0), CA(MR(45), 0, 0)) 
function Show_Damage(P, D, Area) 
local mo = Instance.new("Model") 
mo.Name = D 
local p = Part(mo, true, false, 0, 0, BN("Bright red"), V3(0.2, 0.2, 0.2)) 
p.Name = "Head" 
local m = Instance.new("SpecialMesh") 
m.MeshType = "Brick" 
m.Scale = Vector3.new(3.5, 2.3, 3.5) 
m.Parent = p 
local h = Instance.new("Humanoid") 
h.Health = 0 
h.MaxHealth = 0 
h.Name = "asd" 
h.Parent = mo 
local nah = true 
mo.Parent = workspace 
local cf = CN(P) * CN(MRA(-Area*100, Area*100)/100, MRA(-Area*100, Area*100)/100, MRA(-Area*100, Area*100)/100) 
p.CFrame = cf 
Notime(function() 
Notime(function() 
for i = 0, 6, 0.03 do 
wait() 
p.CFrame = cf * CN(0, i, 0) 
end 
end) 
wait(1.5) 
for i = 0, 1, 0.05 do 
p.Transparency = i 
if nah then mo.Name = "" nah = false else mo.Name = "- "..D nah = true end 
wait() 
end 
mo:remove() 
end) 
end 
function Hit(part) 
local H = GetHum(part.Parent) 
if H and Debounce and Hurt then 
Debounce = false 
local Dmg = MRA(MeleeDmg/1.3, MeleeDmg) 
H.Health = H.Health - Dmg 
Show_Damage(KnifeBlade2.Position, Dmg, 0.1) 
end 
end 
KnifeBlade1.Touched:connect(Hit) 
KnifeBlade2.Touched:connect(Hit) 
Weapon.Parent = Model 
Model.Parent = Char 
if script.Parent.className ~= "HopperBin" then 
h = Instance.new("HopperBin", Me.Backpack) 
h.Name = ToolName 
script.Parent = h 
end 
bin = script.Parent 
function Attach(t) 
RSH.Part0 = t 
LSH.Part0 = t 
RH.Part0 = t 
LH.Part0 = t 
RABW.Part0 = t 
LABW.Part0 = t 
LLBW.Part0 = t 
RLBW.Part0 = t 
for _,v in pairs(BeltWelds) do 
v.Part0 = t 
end 
if t == Torso then 
FTorso.Transparency = 1 
else 
Torso.Transparency = 1 
end 
t.Transparency = 0 
end 
function Normal() 
RAW.C0 = CA(MR(90), 0, MR(-65)) * CN(0.6, -0.9, 0) 
LAW.C0 = CA(MR(85), 0, MR(-40)) * CN(0.5, -0.5, 0) 
FW.C0 = CA(0, MR(-70), 0) 
HW.C0 = CA(MR(0), MR(5), MR(0)) * CN(0.4, 0, -1.2) 
LHW.C0 = CA(MR(-2), MR(30), MR(-3)) * CN(-0.1, 0.32, -0.24) 
PumpWeld.C1 = CN(0, 0, 0) 
Flip.C1 = CN(0, 0, 0) 
Attach(FTorso) 
LHW.Part1 = nil 
TW.Part1 = nil 
LHWK.Part1 = nil 
KnifeWeld.Part1 = KnifeHandle 
Neck.C0 = necko 
HW.Part1 = Handle 
end 
function Swing() 
Swinging = true 
for i = 0.5, 1, 0.5 do 
LAW.C0 = CA(MR(85-8*i), 0, MR(-40+5*i)) * CN(0.5, -0.5+0.2*i, 0) 
RAW.C0 = CA(MR(90-5*i), 0, MR(-65-5*i)) * CN(0.6+0.05*i, -0.9+0.05*i, -0.1*i) 
HW.C0 = CA(MR(-5*i), MR(5+5*i), MR(0)) * CN(0.4, 0, -1.2) 
FW.C0 = CA(0, MR(-70+8*i), 0) 
wait() 
end 
for i = 0.33, 1, 0.33 do 
LAW.C0 = CA(MR(77-37*i), 0, MR(-35+30*i)) * CN(0.5-0.15*i, -0.3+0.3*i, 0) 
RAW.C0 = CA(MR(85-15*i), 0, MR(-70-5*i)) * CN(0.65+0.15*i, -0.85+0.2*i, -0.1-0.2*i) 
HW.C0 = CA(MR(-5-15*i), MR(10+10*i), MR(0)) * CN(0.4, 0, -1.2) 
FW.C0 = CA(0, MR(-62+58*i), 0) 
wait() 
end 
LHWK.Part1 = KnifeHandle 
KnifeWeld.Part1 = nil 
PlaySound(Sounds.Slash) 
for i = 0.25, 1, 0.25 do 
LAW.C0 = CA(MR(40+30*i), 0, MR(-5-45*i)) * CN(0.35-0.2*i, -0.5*i, 0) 
RAW.C0 = CA(MR(70-15*i), 0, MR(-75-5*i)) * CN(0.8, -0.65+0.15*i, -0.3-0.05*i) 
HW.C0 = CA(MR(-20-10*i), MR(20+5*i), MR(0)) * CN(0.4, 0, -1.2) 
FW.C0 = CA(0, MR(-4+14*i), 0) 
LHWK.C0 = CN(0, -0.1*i, 0.2*i) * CA(MR(170), 0, MR(-50*i)) 
wait() 
end 
Hurt = true 
Debounce = true 
for i = 0.25, 1, 0.25 do 
LAW.C0 = CA(MR(70+20*i), 0, MR(-50+35*i)) * CN(0.15-0.05*i, -0.5-0.3*i, 0) 
FW.C0 = CA(0, MR(10-60*i), 0) 
LHWK.C0 = CN(0, -0.1-0.05*i, 0.2+0.1*i) * CA(MR(170), 0, MR(-50-40*i)) 
wait() 
end 
for i = 0.25, 1, 0.25 do 
LAW.C0 = CA(MR(90+10*i), 0, MR(-15+15*i)) * CN(0.1, -0.9, 0) 
FW.C0 = CA(0, MR(-50-40*i), 0) 
LHWK.C0 = CN(0, -0.15, 0.3) * CA(MR(170), 0, MR(-90)) 
wait() 
end 
for i = 0.33, 1, 0.33 do 
LAW.C0 = CA(MR(100+3*i), 0, 0) * CN(0.1, -0.9, 0) 
FW.C0 = CA(0, MR(-90-6*i), 0) 
LHWK.C0 = CN(0, -0.15, 0.3) * CA(MR(170), 0, MR(-90)) 
wait() 
end 
Hurt = false 
wait(0.04) 
for i = 0.25, 1, 0.25 do 
LAW.C0 = CA(MR(103-13*i), 0, 0) * CN(0.1, -0.9+0.1*i, 0) 
FW.C0 = CA(0, MR(-96+16*i), 0) 
LHWK.C0 = CN(0, -0.15, 0.3-0.1*i) * CA(MR(170), 0, MR(-90+15*i)) 
wait() 
end 
for i = 0.25, 1, 0.25 do 
LAW.C0 = CA(MR(90-42*i), 0, 0) * CN(0.1+0.1*i, -0.8+0.3*i, 0) 
RAW.C0 = CA(MR(55+15*i), 0, MR(-80+5*i)) * CN(0.8-0.05*i, -0.5-0.1*i, -0.35+0.05*i) 
FW.C0 = CA(0, MR(-80+10*i), 0) 
HW.C0 = CA(MR(-30+20*i), MR(25-15*i), MR(0)) * CN(0.4, 0, -1.2) 
LHWK.C0 = CN(0, -0.15, 0.2-0.45*i) * CA(MR(170), 0, MR(-75+75*i)) 
wait() 
end 
for i = 0.5, 1, 0.5 do 
LAW.C0 = CA(MR(48-8*i), 0, 0) * CN(0.2+0.05*i, -0.5, 0) 
RAW.C0 = CA(MR(70+10*i), 0, MR(-75+7*i)) * CN(0.75-0.05*i, -0.6-0.1*i, -0.3+0.05*i) 
FW.C0 = CA(0, MR(-70), 0) 
HW.C0 = CA(MR(-10+10*i), MR(10-5*i), MR(0)) * CN(0.4, 0, -1.2) 
LHWK.C0 = CN(0, -0.15, -0.25-0.15*i) * CA(MR(170), 0, 0) 
wait() 
end 
LHWK.Part1 = nil 
KnifeWeld.Part1 = KnifeHandle 
for i = 0.25, 1, 0.25 do 
LAW.C0 = CA(MR(40+40*i), 0, MR(-30*i)) * CN(0.25+0.2*i, -0.5, 0) 
RAW.C0 = CA(MR(80+10*i), 0, MR(-68+3*i)) * CN(0.7-0.1*i, -0.7-0.2*i, -0.25+0.2*i) 
wait() 
end 
for i = 0.5, 1, 0.5 do 
LAW.C0 = CA(MR(80+5*i), 0, MR(-30-10*i)) * CN(0.45+0.05*i, -0.5, -0.05+0.05*i) 
RAW.C0 = CA(MR(90), 0, MR(-65)) * CN(0.6, -0.9, 0) 
wait() 
end 
Normal() 
Swinging = false 
end 
function Reload(once) 
while Ammunition.Ammo < Ammunition.MaxAmmo and Ammunition.Ammoleft > 0 do 
wait() 
for i = 0.33, 1, 0.33 do 
RAW.C0 = CA(MR(45-2*i), 0, MR(-15)) * CN(0, -0.15-0.05*i, 0) 
LAW.C0 = CA(MR(50), MR(40), MR(-15)) * CN(0.5, -0.5, 0) 
LHW.C0 = CA(MR(-35), MR(60), MR(-45)) * CN(-0.6, 0.2, -0.24) 
wait() 
end 
for i = 0.25, 1, 0.25 do 
RAW.C0 = CA(MR(43-8*i), 0, MR(-15)) * CN(0, -0.2-0.2*i, 0) 
LAW.C0 = CA(MR(50), MR(40), MR(-15)) * CN(0.5, -0.5, 0) 
LHW.C0 = CA(MR(-35), MR(60), MR(-45)) * CN(-0.6, 0.2, -0.24) 
wait() 
end 
for i = 0.5, 1, 0.5 do 
RAW.C0 = CA(MR(35-2*i), 0, MR(-15)) * CN(0, -0.4-0.05*i, 0) 
wait() 
end 
local shel = Shell(Weapon) 
local w = Weld(Rarm, shel.Main, CN(0, -1.25, 0.45), CA(MR(-140), 0, MR(60))) 
for i = 0.25, 1, 0.25 do 
RAW.C0 = CA(MR(33+20*i), 0, MR(-15-10*i)) * CN(0, -0.45+0.2*i, 0) 
LAW.C0 = CA(MR(50-5*i), MR(40), MR(-15+5*i)) * CN(0.5, -0.5, 0) 
w.C0 = CN(-0.1*i, -1.25, 0.45-0.25*i) 
wait() 
end 
for i = 0.2, 1, 0.2 do 
RAW.C0 = CA(MR(53+32*i), 0, MR(-25-12*i)) * CN(0, -0.25-0.3*i, 0) 
LAW.C0 = CA(MR(45), MR(40), MR(-10+10*i)) * CN(0.5, -0.5+0.15*i, 0) 
w.C0 = CN(-0.1-0.1*i, -1.25, 0.2-0.3*i) 
w.C1 = CA(MR(-140+50*i), 0, MR(60)) 
wait() 
end 
PlaySound(Sounds.Reload, false) 
for i = 0.25, 1, 0.25 do 
RAW.C0 = CA(MR(85+10*i), 0, MR(-42-8*i)) * CN(0, -0.55-0.1*i, 0) 
LAW.C0 = CA(MR(45), MR(40), 0) * CN(0.5, -0.35, 0) 
w.C0 = CN(-0.2-0.05*i, -1.25, -0.1-0.1*i) 
wait() 
end 
shel.Model:remove() shell = nil 
Ammunition.Ammo = Ammunition.Ammo + 1 
Ammunition.Ammoleft = Ammunition.Ammoleft - 1 
wait(0.1) 
for i = 0.33, 1, 0.33 do 
RAW.C0 = CA(MR(95-10*i), 0, MR(-50+10*i)) * CN(0, -0.65+0.1*i, 0) 
LAW.C0 = CA(MR(45+5*i), MR(40), MR(-12*i)) * CN(0.5, -0.35-0.1*i, 0) 
wait() 
end 
for i = 0.25, 1, 0.25 do 
RAW.C0 = CA(MR(85-40*i), 0, MR(-40+25*i)) * CN(0, -0.55+0.4*i, 0) 
LAW.C0 = CA(MR(50), MR(40), MR(-12-3*i)) * CN(0.5, -0.45-0.05*i, 0) 
wait() 
end 
if once then break end 
if not ReloadHold then break end 
end 
for i = 0.33, 1, 0.33 do 
RAW.C0 = CA(MR(45+10*i), 0, MR(-15-10*i)) * CN(0.1*i, -0.15-0.1*i, 0) 
LAW.C0 = CA(MR(52+12*i), MR(40-5*i), MR(-15-5*i)) * CN(0.5, -0.5, 0) 
LHW.C0 = CA(MR(-35+10*i), MR(60-10*i), MR(-45+10*i)) * CN(-0.6+0.1*i, 0.2, -0.24) 
wait() 
end 
for i = 0.2, 1, 0.2 do 
RAW.C0 = CA(MR(55+30*i), 0, MR(-25-30*i)) * CN(0.1+0.4*i, -0.25-0.55*i, 0) 
LAW.C0 = CA(MR(70+10*i), MR(35-30*i), MR(-20-15*i)) * CN(0.5, -0.5, 0) 
LHW.C0 = CA(MR(-25+18*i), MR(50-15*i), MR(-35+25*i)) * CN(-0.5+0.3*i, 0.2+0.1*i, -0.24) 
wait() 
end 
for i = 0.25, 1, 0.25 do 
RAW.C0 = CA(MR(85+5*i), 0, MR(-55-10*i)) * CN(0.5+0.1*i, -0.8-0.1*i, 0) 
LAW.C0 = CA(MR(80+5*i), MR(5-5*i), MR(-35-5*i)) * CN(0.5, -0.5, 0) 
LHW.C0 = CA(MR(-7+5*i), MR(35-5*i), MR(-10+7*i)) * CN(-0.2+0.1*i, 0.3+0.02*i, -0.24) 
wait() 
end 
end 
function ReloadStart(once) 
Reloading = true 
HW.Part1 = nil 
LHW.Part1 = Pipe2 
for i = 0.25, 1, 0.25 do 
RAW.C0 = CA(MR(90-10*i), 0, MR(-65+10*i)) * CN(0.6-0.2*i, -0.9+0.15*i, 0) 
LAW.C0 = CA(MR(85-5*i), MR(7*i), MR(-40+5*i)) * CN(0.5, -0.5, 0) 
LHW.C0 = CA(MR(-2-8*i), MR(30+5*i), MR(-3-12*i)) * CN(-0.1-0.1*i, 0.32-0.12*i, -0.24) 
wait() 
end 
for i = 0.15, 1, 0.15 do 
RAW.C0 = CA(MR(80-35*i), 0, MR(-55+40*i)) * CN(0.4-0.4*i, -0.75+0.6*i, 0) 
LAW.C0 = CA(MR(80-30*i), MR(7+33*i), MR(-35+20*i)) * CN(0.5, -0.5, 0) 
LHW.C0 = CA(MR(-10-25*i), MR(35+25*i), MR(-15-30*i)) * CN(-0.2-0.4*i, 0.2, -0.24) 
wait() 
end 
Reload(once) 
Normal() 
Reloading = false 
end 
function AimEet() 
end 
function Shoot(Start, To) 
local Accu = CA(MR(MRA(-Accuracy.Momentum*1000, Accuracy.Momentum*1000)/1700), MR(MRA(-Accuracy.Momentum*1000, Accuracy.Momentum*1000)/1000), MR(MRA(-Accuracy.Momentum*1000, Accuracy.Momentum*1000)/1000)) 
for Pellets = 1, 8 do 
local Power = 20 
local Drop = 0.2 
local Face = CN(Start, To) * Accu * CA(MR(MRA(-10000, 10000)/2500), MR(MRA(-10000, 10000)/2500), MR(MRA(-10000, 10000)/2500)) 
local Pellet = Part(PelletModel, true, false, 0, 0, BN("Dark grey"), V3(0.2, 0.2, 0.3)) 
Pellet.CFrame = Face 
local LastPoint = Face.p 
Notime(function() 
local HitObj 
local HitPos 
local DistThing = 250 
for Distance = Power, 600, Power do 
Face = Face * CA(MR(-Drop), 0, 0) * CN(0, 0, -Power) 
local PointNow = Face.p 
local Hit, Pos = RayC(LastPoint, PointNow, Power+2, EffectModel) 
if Hit then 
DistThing = Distance 
if DistThing > 250 then DistThing = 200 end 
PointNow = Pos 
HitPos = Pos 
HitObj = Hit 
end 
local Dist = (PointNow - LastPoint).magnitude 
Pellet.CFrame = Face 
Drop = Drop + 0.04 
local Effect = Part(EffectModel, true, false, 0, 0, BN("White"), V3(0.2, 0.2, 0.2)) 
Effect.CFrame = CN(LastPoint, PointNow) * CA(MR(-90), 0, 0) * CN(0, Dist/2, 0) 
local H = Add.Head(Effect, V3(0.8, Dist*5, 0.8)) 
LastPoint = Face.p 
Power = Power - Drop/3 
Notime(function() 
for i = 0, 1, 0.2 do 
wait() 
Effect.Transparency = i 
end 
Effect:remove() 
end) 
if Hit then 
Pellet.CFrame = CN(Pos) 
break 
end 
wait() 
end 
Pellet:remove() 
if HitObj then 
local Surface = DetectSurface(HitPos, HitObj) 
local C = CN(HitPos) * CA(HitObj.CFrame:toEulerAnglesXYZ()) * Surface[2] 
if Surface[1] == "Anything" then 
C = Surface[2] 
end 
local H = nil 
if HitObj.Parent ~= workspace then 
H = GetHum(HitObj.Parent) 
if HitObj.Parent.Parent ~= workspace and H == nil then 
H = GetHum(HitObj.Parent.Parent) 
end 
end 
if H then 
local Dmg = DistThing/200 
Dmg = (1-Dmg)*15 
Dmg = MRA(Dmg*850, Dmg*1100)/1000 
H.Health = H.Health - Dmg 
PlaySound(Sounds.Hit) 
Show_Damage(HitObj.Position, math.floor(Dmg), 1.5) 
else 
PlaySound(Sounds.PartHit) 
local BulletHole = Part(EffectModel, true, false, 1, 0, BN("White"), V3(0.8, 0.2, 0.8)) 
BulletHole.CFrame = C * CN(0, -0.085, 0) 
local Dec = Instance.new("Decal",BulletHole) 
Dec.Texture = Images[MRA(1,#Images)] 
Dec.Face = "Top" 
if not HitObj.Anchored then 
BulletHole.Anchored = false 
local W = Weld(HitObj, BulletHole, HitObj.CFrame:toObjectSpace(C)) 
end 
Notime(function() 
wait(MRA(700, 15000)/100) 
BulletHole:remove() 
end) 
end 
end 
end) 
end 
end 
function ShootAnim(From, To) 
Shoot(From, To) 
AddInaccuracy(16) 
PlaySound(Sounds.Fire, false) 
for i = 0.33, 1, 0.33 do 
RAW.C0 = CA(MR(90+10*i), 0, MR(-65)) * CN(0.6, -0.9+0.5*i, 0) 
LAW.C0 = CA(MR(85+26*i), 0, MR(-40)) * CN(0.5, -0.5+0.1*i, 0) 
HW.C0 = CA(MR(-15*i), MR(5), MR(0)) * CN(0.4, 0, -1.2) 
wait() 
end 
for i = 0.2, 1, 0.2 do 
RAW.C0 = CA(MR(100+5*i), 0, MR(-65)) * CN(0.6, -0.4+0.15*i, 0) 
LAW.C0 = CA(MR(111+4*i), 0, MR(-40)) * CN(0.5, -0.4+0.05*i, 0) 
HW.C0 = CA(MR(-15-2*i), MR(5), MR(0)) * CN(0.4, 0, -1.2) 
wait() 
end 
for i = 0.5, 1, 0.5 do 
RAW.C0 = CA(MR(105+2*i), 0, MR(-65)) * CN(0.6, -0.25+0.03*i, 0) 
LAW.C0 = CA(MR(115+2*i), 0, MR(-40)) * CN(0.5, -0.35+0.02*i, 0) 
HW.C0 = CA(MR(-17), MR(5), MR(0)) * CN(0.4, 0, -1.2) 
wait() 
end 
for i = 0.2, 1, 0.2 do 
RAW.C0 = CA(MR(107-12*i), 0, MR(-65)) * CN(0.6, -0.22-0.68*i, 0) 
LAW.C0 = CA(MR(117-17*i), 0, MR(-40)) * CN(0.5, -0.33-0.02*i, 0) 
HW.C0 = CA(MR(-17+2*i), MR(5), MR(0)) * CN(0.4, 0, -1.2) 
wait() 
end 
for i = 0.33, 1, 0.33 do 
RAW.C0 = CA(MR(95-5*i), 0, MR(-65)) * CN(0.6, -0.9-0.1*i, 0) 
LAW.C0 = CA(MR(100-5*i), 0, MR(-40)) * CN(0.5+0.1*i, -0.35+0.1*i, 0) 
HW.C0 = CA(MR(-15+11*i), MR(5), MR(0)) * CN(0.4, 0, -1.2) 
PumpWeld.C1 = CN(0, 0, 0.1*i) 
wait() 
end 
for i = 0.33, 1, 0.33 do 
RAW.C0 = CA(MR(90-3*i), 0, MR(-65)) * CN(0.6, -1+0.05*i, 0) 
LAW.C0 = CA(MR(95-5*i), 0, MR(-40)) * CN(0.6+0.2*i, -0.25+0.35*i, 0) 
HW.C0 = CA(MR(-4+4*i), MR(5), MR(0)) * CN(0.4, 0, -1.2) 
PumpWeld.C1 = CN(0, 0, 0.1+0.6*i) 
Flip.C1 = CN(0, 0, 0.5*i) 
wait() 
end 
local sh = Shell(workspace) 
sh.Main.CanCollide = true 
sh.Back.CanCollide = true 
sh.Main.CFrame = Handle3.CFrame * CN(0.3, 0.2, 0) 
sh.Main.Velocity = (Handle3.CFrame * CA(0, MR(90), 0)).lookVector * 15 
Notime(function() 
wait(MRA(100,180)/10) 
for i = 0, 1, 0.005 do 
sh.Main.Transparency = i 
sh.Back.Transparency = i 
wait() 
end 
sh.Model:remove() 
end) 
for i = 0.33, 1, 0.33 do 
RAW.C0 = CA(MR(87+3*i), 0, MR(-65)) * CN(0.6, -0.95+0.05*i, 0) 
LAW.C0 = CA(MR(90-5*i), 0, MR(-40)) * CN(0.8-0.3*i, 0.1-0.6*i, 0) 
HW.C0 = CA(0, MR(5), 0) * CN(0.4, 0, -1.2) 
PumpWeld.C1 = CN(0, 0, 0.7-0.7*i) 
Flip.C1 = CN(0, 0, 0.5-0.5*i) 
wait() 
end 
Normal() 
end 
function ShootFunc(From, To) 
local H, Pos = RayC(From, To, 10, EffectModel) 
local Can = true 
if H then 
if H:IsDescendantOf(Char) then 
Can = false 
end 
end 
if Can then 
Attacking = true 
Ammunition.Ammo = Ammunition.Ammo - 1 
if Ammunition.Ammo < 0 then Ammunition.Ammo = 0 end 
ShootAnim(From, To) 
Attacking = false 
end 
end 
function SelectAnim() 
RAW.Part1 = Rarm 
for i = 0.25, 1, 0.25 do 
RAW.C0 = CA(MR(-10*i), 0, MR(2*i)) 
wait() 
end 
for i = 0.1, 1, 0.1 do 
RAW.C0 = CN(-0.15*i, 0, -0.45*i) * CA(MR(-10-115*i), 0, MR(2+8*i)) * CN(0, -0.4*i, 0) 
wait() 
end 
for i = 0.25, 1, 0.25 do 
RAW.C0 = CN(-0.15, 0, -0.45-0.05*i) * CA(MR(-125-15*i), 0, MR(10)) * CN(0, -0.4, 0) 
wait() 
end 
TW.Part1 = nil 
HW.Part1 = Handle 
for i = 0.25, 1, 0.25 do 
RAW.C0 = CN(-0.15+0.15*i, 0, -0.5+0.1*i) * CA(MR(-140+10*i), 0, MR(10+2*i)) * CN(0, -0.4+0.15*i, 0) 
HW.C0 = CA(MR(38+12*i), MR(-28-15*i), MR(-90-10*i)) * CN(0, -0.1*i, -3.8) 
wait() 
end 
Attach(FTorso) 
for i = 0.1, 1, 0.1 do 
RAW.C0 = CN(0, 0, -0.4+0.3*i) * CA(MR(-130+90*i), 0, MR(12+30*i)) * CN(0, -0.25+0.25*i, 0) 
HW.C0 = CA(MR(50+30*i), MR(-43-50*i), MR(-100-50*i)) * CN(0, -0.1-0.7*i, -3.8+0.7*i) 
FW.C0 = CA(0, MR(-15*i), 0) 
wait() 
end 
LAW.Part1 = Larm 
for i = 0.15, 1, 0.15 do 
RAW.C0 = CN(0, 0, -0.1+0.1*i) * CA(MR(-40+60*i), 0, MR(42+4*i)) 
LAW.C0 = CA(MR(10*i), 0, MR(-8*i)) * CN(0, -0.15*i, 0) 
FW.C0 = CA(0, MR(-15-20*i), 0) 
HW.C0 = CA(MR(80+50*i), MR(-93-57*i), MR(-150-30*i)) * CN(0, -0.8, -3.1+1*i) 
wait() 
end 
for i = 0.15, 1, 0.15 do 
RAW.C0 = CA(MR(20+58*i), 0, MR(46-60*i)) * CN(0.2*i, -0.35*i, 0) 
LAW.C0 = CA(MR(10+65*i), 0, MR(-8-32*i)) * CN(0.3*i, -0.15-0.25*i, 0) 
FW.C0 = CA(0, MR(-35-30*i), 0) 
HW.C0 = CA(MR(130+50*i), MR(-150-20*i), MR(-180)) * CN(0.25*i, -0.8+0.3*i, -2.1+0.9*i) 
wait() 
end 
for i = 0.2, 1, 0.2 do 
RAW.C0 = CA(MR(78+8*i), 0, MR(-14-41*i)) * CN(0.2+0.35*i, -0.35-0.55*i, 0) 
LAW.C0 = CA(MR(75+7*i), 0, MR(-40)) * CN(0.3+0.15*i, -0.4-0.06*i, 0) 
FW.C0 = CA(0, MR(-65-5*i), 0) 
HW.C0 = CA(MR(0), MR(-10+10*i), MR(0)) * CN(0.25+0.1*i, -0.5+0.4*i, -1.2) 
wait() 
end 
for i = 0.25, 1, 0.25 do 
RAW.C0 = CA(MR(86+4*i), 0, MR(-55-10*i)) * CN(0.55+0.05*i, -0.8-0.1*i, 0) 
LAW.C0 = CA(MR(82+3*i), 0, MR(-40)) * CN(0.45+0.05*i, -0.46-0.04*i, 0) 
FW.C0 = CA(0, MR(-70), 0) 
HW.C0 = CA(MR(0), MR(5*i), MR(0)) * CN(0.35+0.05*i, -0.1+0.1*i, -1.2) 
wait() 
end 
end 
function DeselAnim() 
for i = 0.25, 1, 0.25 do 
RAW.C0 = CA(MR(90-10*i), 0, MR(-65+10*i)) * CN(0.6-0.05*i, -0.9+0.35*i, 0) 
LAW.C0 = CA(MR(85-10*i), 0, MR(-40+4*i)) * CN(0.5-0.05*i, -0.5+0.04*i, 0) 
FW.C0 = CA(0, MR(-70+10*i), 0) 
HW.C0 = CA(MR(180-10*i), MR(-185+10*i), MR(180-10*i)) * CN(0.4-0.05*i, -0.1*i, -1.2) 
wait() 
end 
for i = 0.07, 1, 0.07 do 
RAW.C0 = CA(MR(80-80*i), 0, MR(-55+90*i)) * CN(0.55-0.35*i, -0.55+0.55*i, 0) 
LAW.C0 = CA(MR(75-70*i), 0, MR(-36+30*i)) * CN(0.45-0.35*i, -0.46+0.36*i, 0) 
FW.C0 = CA(0, MR(-60+40*i), 0) 
HW.C0 = CA(MR(170-70*i), MR(-175+70*i), MR(170-70*i)) * CN(0.35-0.35*i, -0.1-0.1*i, -1.2-1*i) 
wait() 
end 
for i = 0.25, 1, 0.25 do 
RAW.C0 = CN(-0.1*i, 0, -0.15*i) * CA(MR(-30*i), 0, MR(35+10*i)) * CN(0.2-0.2*i, 0, 0) 
LAW.C0 = CA(MR(5-5*i), 0, MR(-6+6*i)) * CN(0.1-0.1*i, -0.1+0.1*i, 0) 
FW.C0 = CA(0, MR(-20+15*i), 0) 
HW.C0 = CA(MR(100-20*i), MR(-105+15*i), MR(100-15*i)) * CN(0, -0.2, -2.2-0.3*i) 
wait() 
end 
LAW.Part1 = nil 
for i = 0.12, 1, 0.12 do 
RAW.C0 = CN(-0.1-0.05*i, 0, -0.15-0.3*i) * CA(MR(-30-100*i), 0, MR(45-30*i)) * CN(0, -0.3*i, 0) 
FW.C0 = CA(0, MR(-5+5*i), 0) 
HW.C0 = CA(MR(80-37*i), MR(-90+55*i), MR(85-135*i)) * CN(0, -0.2, -2.5-0.9*i) 
wait() 
end 
Attach(Torso) 
for i = 0.2, 1, 0.2 do 
RAW.C0 = CN(-0.15*i, 0, -0.45-0.05*i) * CA(MR(-130-10*i), 0, MR(15-5*i)) * CN(0, -0.3-0.1*i, 0) 
HW.C0 = CA(MR(43-5*i), MR(-35+7*i), MR(-50-40*i)) * CN(0, -0.2, -3.4-0.4*i) 
wait() 
end 
TW.Part1 = Handle 
HW.Part1 = nil 
for i = 0.25, 1, 0.25 do 
RAW.C0 = CN(-0.15+0.05*i, 0, -0.5+0.15*i) * CA(MR(-140+10*i), 0, MR(10-3*i)) * CN(0, -0.4+0.1*i, 0) 
wait() 
end 
for i = 0.15, 1, 0.15 do 
RAW.C0 = CN(-0.1+0.1*i, 0, -0.35+0.25*i) * CA(MR(-130+115*i), 0, MR(7-7*i)) * CN(0, -0.3+0.25*i, 0) 
wait() 
end 
for i = 0.33, 1, 0.33 do 
RAW.C0 = CN(0, 0, -0.1+0.1*i) * CA(MR(-15+15*i), 0, 0) * CN(0, -0.05+0.05*i, 0) 
wait() 
end 
Attach(Torso) 
TW.Part1 = Handle 
HW.Part1 = nil 
RAW.Part1 = nil 
LAW.Part1 = nil 
end 
function ReloadFunc(once) 
if Ammunition.Ammo < Ammunition.MaxAmmo and Selected and not Reloading and not Attacking and Ammunition.Ammoleft > 0 then 
if not once then 
ReloadHold = true 
end 
ReloadStart(once) 
end 
end 
function onSelected(mouse) 
SelectAnim() 
mouse.Icon = Icon 
Selected = true 
Notime(function() 
for _, g in pairs(AccuracyGuis) do 
g.Gui.Transparency = 0.2 
end 
while Selected do 
pcall(function() 
for _, g in pairs(AccuracyGuis) do 
g.Gui.Position = UD(0, mouse.X+g.props.offset.x+g.props.unit.x*(Accuracy.Momentum*11), 0, mouse.Y+g.props.offset.y+g.props.unit.y*(Accuracy.Momentum*11)) 
end 
end) 
wait() 
end 
end) 
mouse.Button1Down:connect(function() 
if Selected and not Attacking and not Swinging then 
if Reloading then 
ReloadHold = false 
else 
if Ammunition.Ammo < 1 then 
ReloadFunc(true) 
else 
ShootFunc((Pipe1.CFrame * CN(0, 0, 1.65)).p, mouse.Hit.p) 
end 
if Ammunition.Ammo < 1 and Ammunition.Ammoleft < 1 then 
PlaySound(Sounds.Out) 
end 
end 
end 
end) 
mouse.KeyDown:connect(function(key) 
key = key:lower() 
if Selected and not Attacking and not Swinging then 
if key == "r" then 
ReloadFunc() 
elseif key == "e" then 
Swing() 
end 
end 
end) 
mouse.KeyUp:connect(function(key) 
key = key:lower() 
if key == "r" then 
ReloadHold = false 
end 
end) 
end 
function onDeselected(mouse) 
Selected = false 
for _, g in pairs(AccuracyGuis) do 
g.Gui.Transparency = 1 
end 
DeselAnim() 
end 
bin.Selected:connect(onSelected) 
bin.Deselected:connect(onDeselected) 


end}
module[2] = {"Santoryu",function()
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
local p=function(f) pcall(f) end
local add={
	Part=function(par, a, c, col, t, s, cf)
		local p=Instance.new("Part", par) p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or CFrame.new()
		return p
	end,	
	Wedge=function(par, a, c, col, t, s, cf)
		local p=Instance.new("WedgePart", par) p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or CFrame.new()
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
local scriptname="Santoryu"
pcall(function() player.Backpack[scriptname]:remove() char[scriptname]:remove() char[scriptname.."B"]:remove() player.PlayerGui[scriptname]:remove()  end)
local model=Instance.new("Model", char) model.Name=scriptname
local modelB=Instance.new("Model", char) modelB.Name=scriptname.."B"
local gui=Instance.new("ScreenGui", player.PlayerGui) gui.Name=scriptname
local sound=Instance.new("Sound", char)
local bin=Instance.new("HopperBin", player.Backpack) bin.Name=model.Name
local skincolor="White"
local body={}
local animate={}
local obj={}
function createParts()

	body.Head=head:clone() body.Head.Parent=model body.Head.BrickColor=BrickColor.new(skincolor) body.Head.Transparency=0
	body.Torso=add.Part(model, false, false, skincolor, 0, Vector3.new(2, 2, 1), nil)
	body.ArmLeft, body.ArmRight=add.Part(model, false, false, skincolor, 0, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 0, Vector3.new(1, 1, 1), nil)
	body.LegLeft, body.LegRight=add.Part(model, false, false, skincolor, 0, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 0, Vector3.new(1, 1, 1), nil)
	p(function() for i, v in pairs(char:children()) do v.Transparency=1 end end)
	p(function() for i, v in pairs(char:children()) do v["face"]:clone().Parent=body.Head v["face"]:remove() end end)
	p(function() for i, v in pairs(char:children()) do if v.ClassName=="Hat" then v:remove() end end end)
	
	body.HeadW=add.Weld(body.Head, body.Torso, CFrame.new(0, 1.5, 0))
	body.TorsoW=add.Weld(body.Torso, torso, nil)
	body.ArmLeftW, body.ArmRightW=add.Weld(body.ArmLeft, body.Torso, CFrame.new(-1.5, .5, 0)), add.Weld(body.ArmRight, body.Torso, CFrame.new(1.5, .5, 0))
	body.LegLeftW, body.LegRightW=add.Weld(body.LegLeft, body.Torso, CFrame.new(-.5, -1.5, 0)), add.Weld(body.LegRight, body.Torso, CFrame.new(.5, -1.5, 0))
	
	add.Mesh("BlockMesh", body.ArmLeft, Vector3.new(1, 2, 1), Vector3.new(0, -.5, 0), nil)
	add.Mesh("BlockMesh", body.ArmRight, Vector3.new(1, 2, 1), Vector3.new(0, -.5, 0), nil)
	add.Mesh("BlockMesh", body.LegLeft, Vector3.new(1, 2, 1), Vector3.new(0, -.5, 0), nil)
	add.Mesh("BlockMesh", body.LegRight, Vector3.new(1, 2, 1), Vector3.new(0, -.5, 0), nil)
	
	animate={
		["Head"]=function(cf) p(function() for i, v in pairs(model:children()) do v.Transparency=0 end end) leg.Left.Transparency=1 leg.Right.Transparency=1
			body.HeadW.C1=CFrame.new(0, 1.5, 0)*cf
		end;
		["Torso"]=function(cf) p(function() for i, v in pairs(model:children()) do v.Transparency=0 end end) leg.Left.Transparency=1 leg.Right.Transparency=1
			body.TorsoW.C1=cf
		end;
		["ArmLeft"]=function(cf) p(function() for i, v in pairs(model:children()) do v.Transparency=0 end end) leg.Left.Transparency=1 leg.Right.Transparency=1
			body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*cf
		end;
		["ArmRight"]=function(cf) p(function() for i, v in pairs(model:children()) do v.Transparency=0 end end) leg.Left.Transparency=1 leg.Right.Transparency=1
			body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*cf
		end;
		["LegLeft"]=function(cf) p(function() for i, v in pairs(model:children()) do v.Transparency=0 end end) leg.Left.Transparency=1 leg.Right.Transparency=1
			body.LegLeftW.C1=CFrame.new(-.5, -1.5, 0)*cf
		end;
		["LegRight"]=function(cf) p(function() for i, v in pairs(model:children()) do v.Transparency=0 end end) leg.Left.Transparency=1 leg.Right.Transparency=1
			body.LegRightW.C1=CFrame.new(.5, -1.5, 0)*cf
		end;
	}

	obj.LH=add.Part(model, false, false, "Really black", 0, Vector3.new(.5, 1, .2), nil)
	obj.LHW=add.Weld(obj.LH, body.ArmLeft, CFrame.new(-.3, -.5, -.2))
	obj.LH=add.Part(model, false, false, "Really black", 0, Vector3.new(.5, .2, .5), nil)
	obj.LHW=add.Weld(obj.LH, body.ArmLeft, CFrame.new(-.3, -.9, 0))

	obj.HandleRight=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.25, 2, .25), nil)
	obj.HandleRightW=add.Weld(obj.HandleRight, body.ArmRight, CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, 0))
	for i=1, 5 do
		obj.DesignRight=add.Part(modelB, false, false, "White", 0, Vector3.new(.3, .1, .1), nil)
		obj.DesignRightW=add.Weld(obj.DesignRight, obj.HandleRight, CFrame.new(0, -1+i/3, 0)*CFrame.Angles(math.rad(45), 0, 0))
	end
	obj.GuardRight=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.5, .2, .5), nil)
	obj.GuardRightW=add.Weld(obj.GuardRight, obj.HandleRight, CFrame.new(0, 1.1, 0))
	obj.GuardRightB=add.Part(modelB, false, false, "White", 0, Vector3.new(.25, .2, .3), nil)
	obj.GuardRightBM=add.Mesh("BlockMesh", obj.GuardRightB, Vector3.new(.5, 1, 1), nil, nil)
	obj.GuardRightBW=add.Weld(obj.GuardRightB, obj.HandleRight, CFrame.new(0, 1.25, 0))
	obj.BladeRight=add.Part(modelB, false, false, "Mid gray", 0, Vector3.new(.2, 4, .25), nil) obj.BladeRight.Reflectance=.5
	obj.BladeRightM=add.Mesh("BlockMesh", obj.BladeRight, Vector3.new(.5, 1, 1), nil, nil)
	obj.BladeRightW=add.Weld(obj.BladeRight, obj.HandleRight, CFrame.new(0, 3, 0))
	obj.PointRight=add.Wedge(modelB, false, false, "Mid gray", 0, Vector3.new(.2, 1, .25), nil) obj.PointRight.Reflectance=.5
	obj.PointM=add.Mesh("SpecialMesh", obj.PointRight, Vector3.new(.5, 1, 1), nil, "Wedge")
	obj.PointW=add.Weld(obj.PointRight, obj.BladeRight, CFrame.new(0, 2.5, 0)*CFrame.Angles(math.rad(0), 0, 0))

	obj.HandleLeft=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.25, 2, .25), nil)
	obj.HandleLeftW=add.Weld(obj.HandleLeft, body.ArmLeft, CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, 0))
	for i=1, 5 do
		obj.DesignLeft=add.Part(modelB, false, false, "White", 0, Vector3.new(.3, .1, .1), nil)
		obj.DesignLeftW=add.Weld(obj.DesignLeft, obj.HandleLeft, CFrame.new(0, -1+i/3, 0)*CFrame.Angles(math.rad(45), 0, 0))
	end
	obj.GuardLeft=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.5, .2, .5), nil)
	obj.GuardLeftW=add.Weld(obj.GuardLeft, obj.HandleRight, CFrame.new(0, 1.1, 0))
	obj.GuardLeftB=add.Part(modelB, false, false, "White", 0, Vector3.new(.25, .2, .3), nil)
	obj.GuardLeftBM=add.Mesh("BlockMesh", obj.GuardLeftB, Vector3.new(.5, 1, 1), nil, nil)
	obj.GuardLeftBW=add.Weld(obj.GuardLeftB, obj.HandleLeft, CFrame.new(0, 1.25, 0))
	obj.BladeLeft=add.Part(modelB, false, false, "Mid gray", 0, Vector3.new(.2, 4, .25), nil) obj.BladeLeft.Reflectance=.5
	obj.BladeLeftM=add.Mesh("BlockMesh", obj.BladeLeft, Vector3.new(.5, 1, 1), nil, nil)
	obj.BladeLeftW=add.Weld(obj.BladeLeft, obj.HandleLeft, CFrame.new(0, 3, 0))
	obj.PointLeft=add.Wedge(modelB, false, false, "Mid gray", 0, Vector3.new(.2, 1, .25), nil) obj.PointLeft.Reflectance=.5
	obj.PointM=add.Mesh("SpecialMesh", obj.PointLeft, Vector3.new(.5, 1, 1), nil, "Wedge")
	obj.PointW=add.Weld(obj.PointLeft, obj.BladeLeft, CFrame.new(0, 2.5, 0)*CFrame.Angles(math.rad(0), 0, 0))

	obj.HandleHead=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.25, 2, .25), nil)
	obj.HandleHeadW=add.Weld(obj.HandleHead, body.Head, CFrame.new(0, -.25, -.5)*CFrame.Angles(0, 0, math.rad(90)))
	for i=1, 5 do
		obj.DesignHead=add.Part(modelB, false, false, "White", 0, Vector3.new(.3, .1, .1), nil)
		obj.DesignHeadW=add.Weld(obj.DesignHead, obj.HandleHead, CFrame.new(0, -1+i/3, 0)*CFrame.Angles(math.rad(45), 0, 0))
	end
	obj.GuardHead=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.5, .2, .5), nil)
	obj.GuardHeadW=add.Weld(obj.GuardHead, obj.HandleHead, CFrame.new(0, 1.1, 0))
	obj.GuardHeadB=add.Part(modelB, false, false, "White", 0, Vector3.new(.25, .2, .3), nil)
	obj.GuardHeadBM=add.Mesh("BlockMesh", obj.GuardHeadB, Vector3.new(.5, 1, 1), nil, nil)
	obj.GuardHeadBW=add.Weld(obj.GuardHeadB, obj.HandleHead, CFrame.new(0, 1.25, 0))
	obj.BladeHead=add.Part(modelB, false, false, "Mid gray", 0, Vector3.new(.2, 4, .25), nil) obj.BladeHead.Reflectance=.5
	obj.BladeHeadM=add.Mesh("BlockMesh", obj.BladeHead, Vector3.new(.5, 1, 1), nil, nil)
	obj.BladeHeadW=add.Weld(obj.BladeHead, obj.HandleHead, CFrame.new(0, 3, 0))
	obj.PointHead=add.Wedge(modelB, false, false, "Mid gray", 0, Vector3.new(.2, 1, .25), nil) obj.PointHead.Reflectance=.5
	obj.PointM=add.Mesh("SpecialMesh", obj.PointHead, Vector3.new(.5, 1, 1), nil, "Wedge")
	obj.PointW=add.Weld(obj.PointHead, obj.BladeHead, CFrame.new(0, 2.5, 0)*CFrame.Angles(math.rad(0), 0, 0))
end
function removeParts()
	p(function()
		for i, v in pairs(model:children()) do v:remove() end	for i, v in pairs(modelB:children()) do v:remove() end	for i, v in pairs(char:children()) do v.Transparency=0 end
	end)
end
function play(id, pitch)
	c(function()
		local sound=Instance.new("Sound", workspace)
		sound.Pitch=pitch
		sound.SoundId=id
		sound:play()
		wait(.5)
		sound:remove()
	end)
end


local speed=32
local mana=100
local trailDeb=false
local hitDeb=false
local keyDeb=false
local loopDeb=false

local label=Instance.new("TextLabel", gui)
label.Position=UDim2.new(0, 0, 0, 100)
label.Size=UDim2.new(0, 200, 0, 20)
label.BorderColor=BrickColor.Black()
label.BackgroundColor=BrickColor.White()
label.TextColor=BrickColor.Black()
label.Font="ArialBold"
label.FontSize="Size18"
label.Text="100"
local charge=Instance.new("TextLabel", label) charge.Transparency=.5
charge.Position=UDim2.new(0, 0, 0, 0)
charge.Size=UDim2.new(1, 0, 1, 0)
charge.BorderColor=BrickColor.Black()
charge.BackgroundColor=BrickColor.Blue()
charge.TextColor=BrickColor.Black()
charge.Font="ArialBold"
charge.FontSize="Size18"
charge.Text=""

local attackLabel=Instance.new("TextLabel", gui)
attackLabel.Position=UDim2.new(0, 0, 0, 150)
attackLabel.Size=UDim2.new(0, 150, 0, 50)
attackLabel.BorderColor=BrickColor.Black()
attackLabel.BackgroundColor=BrickColor.Black()
attackLabel.TextColor=BrickColor.White()
attackLabel.Font="ArialBold"
attackLabel.FontSize="Size18"
attackLabel.Text="DemonSlash(Q)"
local attackLabel2=Instance.new("TextLabel", attackLabel)
attackLabel2.Position=UDim2.new(0, 0, 1, 0)
attackLabel2.Size=UDim2.new(1, 0, 1, 0)
attackLabel2.BorderColor=BrickColor.Black()
attackLabel2.BackgroundColor=BrickColor.Black()
attackLabel2.TextColor=BrickColor.White()
attackLabel2.Font="ArialBold"
attackLabel2.FontSize="Size18"
attackLabel2.Text="PoundHo(E)"
local attackLabel3=Instance.new("TextLabel", attackLabel2)
attackLabel3.Position=UDim2.new(0, 0, 1, 0)
attackLabel3.Size=UDim2.new(1, 0, 1, 0)
attackLabel3.BorderColor=BrickColor.Black()
attackLabel3.BackgroundColor=BrickColor.Black()
attackLabel3.TextColor=BrickColor.White()
attackLabel3.Font="ArialBold"
attackLabel3.FontSize="Size18"
attackLabel3.Text="ThousandWorlds(R)"
local attackLabel4=Instance.new("TextLabel", attackLabel3)
attackLabel4.Position=UDim2.new(0, 0, 1, 0)
attackLabel4.Size=UDim2.new(1, 0, 1, 0)
attackLabel4.BorderColor=BrickColor.Black()
attackLabel4.BackgroundColor=BrickColor.Black()
attackLabel4.TextColor=BrickColor.White()
attackLabel4.Font="ArialBold"
attackLabel4.FontSize="Size18"
attackLabel4.Text="Charge(Z)"
local attackLabel5=Instance.new("TextLabel", attackLabel4)
attackLabel5.Position=UDim2.new(0, 0, 1, 0)
attackLabel5.Size=UDim2.new(1, 0, 1, 0)
attackLabel5.BorderColor=BrickColor.Black()
attackLabel5.BackgroundColor=BrickColor.Black()
attackLabel5.TextColor=BrickColor.White()
attackLabel5.Font="ArialBold"
attackLabel5.FontSize="Size18"
attackLabel5.Text="GreatTwister(F)"
local attackLabel6=Instance.new("TextLabel", attackLabel5)
attackLabel6.Position=UDim2.new(0, 0, 1, 0)
attackLabel6.Size=UDim2.new(1, 0, 1, 0)
attackLabel6.BorderColor=BrickColor.Black()
attackLabel6.BackgroundColor=BrickColor.Black()
attackLabel6.TextColor=BrickColor.White()
attackLabel6.Font="ArialBold"
attackLabel6.FontSize="Size18"
attackLabel6.Text="Block(X)"

function hit(h)
	for i, v in pairs(modelB:children()) do if h==v then return end end
	for i, v in pairs(model:children()) do if h==v then return end end
	if runDeb==true and h.Parent~=char and h.Name~="Trailz" and h.Name~="Base" and hitDeb==false then hitDeb=true print("GotHit") h:remove()
		p(function()
		local pYPos=h.Position.y-(h.Size.y/2)
		local sYPos=obj.PointHead.Position.y
		local p=h:clone() p.Parent=workspace p.Anchored=true p.CanCollide=false p.Name="Trailz"
		local p2=h:clone() p2.Parent=workspace p2.Anchored=true p2.CanCollide=false p.Name="Trailz"
		p.formFactor="Custom"
		p2.formFactor="Custom"
		p.Size=Vector3.new(h.Size.x, sYPos-pYPos, h.Size.z)
		p2.Size=Vector3.new(h.Size.x, p2.Size.y-(sYPos-pYPos), h.Size.z)
		p.CFrame=h.CFrame*CFrame.new(0, -p2.Size.y/2, 0)
		p2.CFrame=h.CFrame*CFrame.new(0, p.Size.y/2, 0)
		c(function()
			for i=0, 1, .05 do
				wait()
				p.Transparency=i p2.Transparency=i
			end
			p:remove() p2:remove()
		end)
		end) wait()
		hitDeb=false
	end
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
			local trail=add.Part(model, true, false, "Pastel blue-green", 0, Vector3.new(.2, mag, .2), CFrame.new(dis, new)*CFrame.Angles(math.pi/2, 0, 0)) trail.Name="Trailz"
			local tMesh=add.Mesh("CylinderMesh", trail, Vector3.new(1, 1, 1), nil, nil)
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

local Attacks={
	["DemonSlash"]=function(mouse) human.WalkSpeed=0 computePos(torso.CFrame.p, mouse.Hit.p) mana=mana-5
		for i=0, 1, .1 do wait()
			animate.ArmLeft(CFrame.Angles(math.rad(90)*i, -math.rad(45)*i, math.rad(15)*i))
			animate.ArmRight(CFrame.Angles(math.rad(90)*i, math.rad(45)*i, -math.rad(15)*i))
		end
		trailDeb=true trail(obj.PointLeft, CFrame.new()) trail(obj.PointRight, CFrame.new())
		for i, v in pairs(modelB:children()) do
			connection=v.Touched:connect(hit)
		end
		play("rbxasset://sounds//swordslash.wav", 1)
		for i=0, 1, .2 do wait()
			torso.CFrame=torso.CFrame+torso.CFrame.lookVector*(10*i)
			animate.Torso(CFrame.new(0, -1.5*i, 0)*CFrame.Angles(-math.rad(45)*i, 0, 0))
			animate.ArmLeft(CFrame.Angles(math.rad(90), -math.rad(45)+(math.rad(45)*i), math.rad(15)-(math.rad(150)*i)))
			animate.ArmRight(CFrame.Angles(math.rad(90), math.rad(45)+(-math.rad(45)*i), -math.rad(15)-(-math.rad(150)*i)))
			animate.LegLeft(CFrame.new(0, 1.5*i, -.5*i)*CFrame.Angles(math.rad(45)*i, 0, 0))
			animate.LegRight(CFrame.Angles(-math.rad(45)*i, 0, 0))
			obj.HandleLeftW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, math.rad(90)*i)
			obj.HandleRightW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, -math.rad(90)*i)
		end
		wait(1)
		for i=1, 0, -.1 do wait()
			animate.Torso(CFrame.new(0, -1.5*i, 0)*CFrame.Angles(-math.rad(45)*i, 0, 0))
			animate.ArmLeft(CFrame.Angles(math.rad(90)*i, 0, -math.rad(90)*i))
			animate.ArmRight(CFrame.Angles(math.rad(90)*i, 0, math.rad(90)*i))
			animate.LegLeft(CFrame.new(0, 1.5*i, -.5*i)*CFrame.Angles(math.rad(45)*i, 0, 0))
			animate.LegRight(CFrame.Angles(-math.rad(45)*i, 0, 0))
			obj.HandleLeftW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, math.rad(135)*i)
			obj.HandleRightW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, -math.rad(135)*i)
		end
		trailDeb=false
		human.WalkSpeed=speed
	end;
	["PoundHo"]=function(mouse) human.WalkSpeed=0
		for i=0, 1, .1 do wait()
			animate.Torso(CFrame.new(0, 2.5*i, -5*i)*CFrame.Angles(-math.rad(90)*i, 0, 0))
			animate.ArmLeft(CFrame.Angles(0, 0, -math.rad(90)*i))
			animate.ArmRight(CFrame.Angles(0, 0, math.rad(90)*i))
			obj.HandleLeftW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, math.rad(180)*i)
		end
		local spin=45
		local rotate=45
		trailDeb=true trail(obj.PointLeft, CFrame.new()) trail(obj.PointRight, CFrame.new()) trail(obj.PointHead, CFrame.new())
		for i, v in pairs(modelB:children()) do
			connection=v.Touched:connect(hit)
		end
		while loopDeb==true and mana>0 do wait() spin=spin+rotate mana=mana-1
			
			computePos((torso.CFrame*CFrame.new(0, 0, -1)*CFrame.Angles(-math.rad(90), 0, 0)).p, mouse.Hit.p)
			animate.Torso(CFrame.new(0, 2.5, -5)*CFrame.Angles(-math.rad(90), -math.rad(spin), 0))
		end
		trailDeb=false
		for i=1, 0, -.1 do wait() play("rbxasset://sounds//swordslash.wav", 1)
			animate.Torso(CFrame.new(0, 2.5*i, -5*i)*CFrame.Angles(-math.rad(90)*i, 0, 0))
			animate.ArmLeft(CFrame.Angles(0, 0, -math.rad(90)*i))
			animate.ArmRight(CFrame.Angles(0, 0, math.rad(90)*i))
			obj.HandleLeftW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, math.rad(180)*i)
		end
		human.WalkSpeed=speed
	end;
	["ThousandWorlds"]=function(mouse) human.WalkSpeed=0 computePos(torso.CFrame.p, mouse.Hit.p) mana=mana-20
		for i=0, 1, .1 do wait()
			animate.ArmLeft(CFrame.new(.5*i, 0, -.5*i)*CFrame.Angles(math.rad(90)*i, 0, math.rad(45)*i))
			animate.ArmRight(CFrame.new(-.5*i, 0, -.5*i)*CFrame.Angles(math.rad(90)*i, 0, -math.rad(45)*i))
			obj.HandleLeftW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), math.rad(45)*i, math.rad(180)*i)
			obj.HandleRightW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), -math.rad(45)*i, 0)
		end
		trailDeb=true trail(obj.PointLeft, CFrame.new()) trail(obj.PointRight, CFrame.new())
		for i, v in pairs(modelB:children()) do
			connection=v.Touched:connect(hit)
		end
		for i=0, 50, 1 do wait() play("http://www.roblox.com/asset/?id=3931318", 1)
			obj.HandleLeftW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), math.rad(45), math.rad(180)+i)
			obj.HandleRightW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), -math.rad(45), i)
		end
		play("rbxasset://sounds//swordslash.wav", 1)
		for i=0, 1, .2 do wait()
			local fakeP=add.Part(workspace, true, false, "White", 0, Vector3.new(5, 5, 5), CFrame.new((torso.CFrame*CFrame.new(0, 0, 1.5)).p, torso.CFrame.p)*CFrame.Angles(math.rad(90), 0, 0)) fakeP.Name="Trailz"
			local mesh=add.Mesh("SpecialMesh", fakeP, Vector3.new(1, 1, 1), nil, "File") mesh.MeshId="http://www.roblox.com/asset/?id=20329976"
			c(function()
				for i=0, 1, .05 do
					wait()
					fakeP.Transparency=i
				end
				fakeP:remove()
			end)
			c(function()
				for i=1, 20, 1 do
					wait()
					mesh.Scale=Vector3.new(i, i/2, i)
				end
			end)
			torso.CFrame=torso.CFrame+torso.CFrame.lookVector*(20*i)
			animate.Torso(CFrame.new(0, -1.5*i, 0)*CFrame.Angles(-math.rad(45)*i, 0, 0))
			animate.ArmLeft(CFrame.new(.5*i, 0, -.5*i)*CFrame.Angles(math.rad(90)*i, 0, 0))
			animate.ArmRight(CFrame.new(-.5*i, 0, -.5*i)*CFrame.Angles(-math.rad(90)*i, 0, 0))
			obj.HandleLeftW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, -math.rad(90)*i)
			obj.HandleRightW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, math.rad(90)*i)
			animate.LegLeft(CFrame.new(0, 1.5*i, -.5*i)*CFrame.Angles(math.rad(45)*i, 0, 0))
			animate.LegRight(CFrame.Angles(-math.rad(45)*i, 0, 0))
		end
		trailDeb=false
		wait(3)
		for i=1, 0, -.1 do wait()
			animate.Torso(CFrame.new(0, -1.5*i, 0)*CFrame.Angles(-math.rad(45)*i, 0, 0))
			animate.ArmLeft(CFrame.new(.5*i, 0, -.5*i)*CFrame.Angles(math.rad(90)*i, 0, 0))
			animate.ArmRight(CFrame.new(-.5*i, 0, -.5*i)*CFrame.Angles(-math.rad(90)*i, 0, 0))
			obj.HandleLeftW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, -math.rad(90)*i)
			obj.HandleRightW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, math.rad(90)*i)
			animate.LegLeft(CFrame.new(0, 1.5*i, -.5*i)*CFrame.Angles(math.rad(45)*i, 0, 0))
			animate.LegRight(CFrame.Angles(-math.rad(45)*i, 0, 0))
		end
		human.WalkSpeed=speed
	end;
	["Charge"]=function(mouse) human.WalkSpeed=0 computePos(torso.CFrame.p, mouse.Hit.p)
		for i=0, 1, .1 do wait()
			animate.Torso(CFrame.new(0, -1.5*i, 0)*CFrame.Angles(-math.rad(45)*i, 0, 0))
			animate.ArmLeft(CFrame.Angles(0, 0, -math.rad(180)-(-math.rad(90)*i)))
			animate.ArmRight(CFrame.Angles(0, 0, -math.rad(180)-(math.rad(90)*i)))
			animate.LegLeft(CFrame.new(0, 1.5*i, -.5*i)*CFrame.Angles(math.rad(45)*i, 0, 0))
			animate.LegRight(CFrame.Angles(-math.rad(45)*i, 0, 0))
			obj.HandleLeftW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, -math.rad(45)*i)
			obj.HandleRightW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, math.rad(45)*i)
		end
		while loopDeb==true do wait() if mana>=0 and mana<100 then mana=mana+1 end play("http://www.roblox.com/asset/?id=2101137", 1)
			local aura=add.Part(model, true, false, "Really black", .5, Vector3.new(1, 1, 1), torso.CFrame*CFrame.new(0, -4, 0)*CFrame.Angles(0, math.rad(math.random(-45, 45)), 0)) aura.Name="Trailz"
			local auraM=add.Mesh("SpecialMesh", aura, Vector3.new(1, 1, 1), nil, "File") auraM.MeshId="http://www.roblox.com/asset/?id=20329976"
			local aura2=add.Part(model, true, false, "Really black", .5, Vector3.new(5, 5, 5), torso.CFrame*CFrame.new(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15))*CFrame.Angles(math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45))))
			aura2.Name="Trailz"
			c(function()
				for i=0, 3, .2 do wait()
					auraM.Scale=auraM.Scale+Vector3.new(i, i/2, i)
				end
				c(function()
					for i=.5, 1, .1 do
						wait()
						aura.Transparency=i	aura2.Transparency=i
					end
				end)
				aura:remove() aura2:remove()
			end)
		end
		for i=1, 0, -.1 do wait()
			animate.Torso(CFrame.new(0, -1.5*i, 0)*CFrame.Angles(-math.rad(45)*i, 0, 0))
			animate.ArmLeft(CFrame.Angles(0, 0, (-math.rad(90)*i)))
			animate.ArmRight(CFrame.Angles(0, 0, (math.rad(90)*i)))
			animate.LegLeft(CFrame.new(0, 1.5*i, -.5*i)*CFrame.Angles(math.rad(45)*i, 0, 0))
			animate.LegRight(CFrame.Angles(-math.rad(45)*i, 0, 0))
			obj.HandleLeftW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, -math.rad(45)*i)
			obj.HandleRightW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, math.rad(45)*i)
		end
		human.WalkSpeed=speed
	end;
	["GreatTwister"]=function(mouse) human.WalkSpeed=0 computePos(torso.CFrame.p, mouse.Hit.p) mana=mana-40
		for i=0, 1, .1 do wait()
			animate.Torso(CFrame.new(0, 0, -50*i))
			animate.ArmLeft(CFrame.Angles(0, 0, -math.rad(90)*i))
			animate.ArmRight(CFrame.Angles(0, 0, math.rad(90)*i))
			obj.HandleLeftW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)+(-math.rad(90)*i), math.rad(180)*i, 0)
			obj.HandleRightW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)+(-math.rad(90)*i), 0, 0)
		end
		trailDeb=true trail(obj.PointLeft, CFrame.new()) trail(obj.PointRight, CFrame.new())
		local tornado=add.Part(workspace, true, false, "Cyan", .5, Vector3.new(1, 1, 1), body.Torso.CFrame*CFrame.Angles(math.rad(180), 0, 0)) tornado.Name="Trailz"
		local tornadoM=add.Mesh("SpecialMesh", tornado, Vector3.new(1, 1, 1), nil, "File") tornadoM.MeshId="http://www.roblox.com/asset/?id=36755354"
		local spin=35
		for i=0, 50, 1 do wait() play("rbxasset://sounds//swordslash.wav", 1)
			animate.Torso(CFrame.new(0, 0, -50)*CFrame.Angles(0, -math.rad(i*45), 0))
			tornado.CFrame=body.Torso.CFrame*CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(180), 0, 0)
			tornado.Size=Vector3.new(i, i, i)
			tornadoM.Scale=Vector3.new(i, i, i)
		end
		c(function() c(function()wait(10) tornado:remove() end) while true do wait() spin=spin+35 tornado.Touched:connect(hit) tornado.CFrame=tornado.CFrame*CFrame.new(0, 0, 0)*CFrame.Angles(0, math.rad(spin), 0) end end)
		for i=1, 0, -.1 do wait()
			animate.Torso(CFrame.new(0, 0, -50*i)*CFrame.Angles(0, -math.rad(i*45), 0))
			animate.Torso(CFrame.Angles(0, 0, 0))
			animate.ArmLeft(CFrame.Angles(0, 0, -math.rad(90)*i))
			animate.ArmRight(CFrame.Angles(0, 0, math.rad(90)*i))
			obj.HandleLeftW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)+(-math.rad(90)*i), math.rad(180)*i, 0)
			obj.HandleRightW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)+(-math.rad(90)*i), 0, 0)
		end
		trailDeb=false
		human.WalkSpeed=speed
	end;
	["Block"]=function(mouse) human.WalkSpeed=0 computePos(torso.CFrame.p, mouse.Hit.p)
		for i=0, 1, .1 do	wait()
			animate.ArmLeft(CFrame.Angles(math.rad(90)*i, -math.rad(45)*i, math.rad(15)*i))
			animate.ArmRight(CFrame.Angles(math.rad(90)*i, math.rad(45)*i, -math.rad(15)*i))
		end
		local shieldPart=add.Part(model, true, false, "White", 1, Vector3.new(10, 10, 1), torso.CFrame+torso.CFrame.lookVector*1.5)
		while loopDeb==true do wait() computePos(torso.CFrame.p, mouse.Hit.p) shieldPart.CFrame=torso.CFrame+torso.CFrame.lookVector*1.5
			shieldPart.Touched:connect(function(h) while runDeb==false do wait() end
			if h.Parent~=char and h.Parent~=modelB and h.Parent~=model and h.Name~="Trailz" and h.Name~="Base" and hitDeb==false then hitDeb=true print(h.Name)
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
					h.Anchored=false
					local bp=Instance.new("BodyPosition", h) bp.maxForce=Vector3.new(math.huge, math.huge, math.huge) bp.position=(CFrame.new(torso.CFrame.p, h.CFrame.p)*CFrame.new(0, 0, -50)).p
					h.Velocity=Vector3.new(0, 0, 0) h.RotVelocity=Vector3.new(0, 0, 0)
					game.Debris:addItem(bp, .2)
					wait()
					hitDeb=false
				end
			end)
		end
		shieldPart:remove()
		for i=1, 0, -.1 do wait()
			animate.ArmLeft(CFrame.Angles(math.rad(90)*i, -math.rad(45)*i, math.rad(15)*i))
			animate.ArmRight(CFrame.Angles(math.rad(90)*i, math.rad(45)*i, -math.rad(15)*i))
		end
		human.WalkSpeed=speed
	end
}

bin.Selected:connect(function(mouse) createParts() human.WalkSpeed=speed
	for i=0, 1, .1 do wait()
		animate.ArmLeft(CFrame.Angles(0, math.rad(45)*i, -math.rad(45)*i))
		animate.ArmRight(CFrame.Angles(0, -math.rad(45)*i, math.rad(45)*i))
	end
	human.Running:connect(function(speed)
		if speed>0 then while keyDeb==true do wait() end
			animate.ArmLeft(CFrame.Angles(0, math.rad(45), -math.rad(45)))
			animate.ArmRight(CFrame.Angles(0, -math.rad(45), math.rad(45)))
			body.LegLeft.Transparency=1 body.LegRight.Transparency=1
			leg.Left.Transparency=0 leg.Right.Transparency=0
		end
	end)
	mouse.KeyDown:connect(function(key)
		if key=="q" and keyDeb==false and mana>=5 then keyDeb=true runDeb=true
			Attacks.DemonSlash(mouse)
			keyDeb=false runDeb=false
		end
		if key=="e" and keyDeb==false and mana>=0 then keyDeb=true runDeb=true loopDeb=true
			Attacks.PoundHo(mouse)
			keyDeb=false runDeb=false
		end
		if key=="r" and keyDeb==false and mana>=20 then keyDeb=true runDeb=true loopDeb=true
			Attacks.ThousandWorlds(mouse)
			keyDeb=false runDeb=false
		end
		if key=="z" and keyDeb==false then keyDeb=true runDeb=true loopDeb=true
			Attacks.Charge(mouse)
			keyDeb=false runDeb=false
		end
		if key=="f" and keyDeb==false and mana>=40 then keyDeb=true runDeb=true loopDeb=true
			Attacks.GreatTwister(mouse)
			keyDeb=false runDeb=false
		end
		if key=="x" and keyDeb==false and mana>=0 then keyDeb=true runDeb=true loopDeb=true
			Attacks.Block(mouse)
			keyDeb=false runDeb=false
		end
	end)
	mouse.KeyUp:connect(function(key)
		if key=="e" and keyDeb==true then loopDeb=false end
		if key=="x" and keyDeb==true then loopDeb=false end
		if key=="z" and keyDeb==true then loopDeb=false end
	end)
	c(function() while true do wait() label.Text=mana charge.Size=UDim2.new(mana/100, 0, 1, 0) end end)
end)
bin.Deselected:connect(function() removeParts() end)
end}
module[3] = {"Sarshun",function()
local Me = game.Players.LocalPlayer
 
local char = Me.Character
 
local Torso = char.Torso
 
local Rarm = char["Right Arm"]
 
local Larm = char["Left Arm"]
 
function Del(E, T) 
 
wait(T) 
 
E:remove() 
 
end 
 
raig = false
 
bg = Instance.new("BillboardGui",Me.Character.Head)
 
bg.Size = UDim2.new(0,200,0,200)
 
bg.StudsOffset = Vector3.new(0,2,0)
 
dg = Instance.new("TextLabel",bg)
 
dg.Size = UDim2.new(0,200,0,200)
 
dg.BackgroundTransparency = 1
 
dg.TextColor = BrickColor.new("White")
 
dg.Text = "Rage Sarshun"
 
meshes = {"http://www.roblox.com/asset/?id=3270017","http://www.roblox.com/asset/?id=1323306","http://www.roblox.com/asset/?id=19251107"}
 
key = {"1 ring","2 ice crown","3, ninja star"}
 
workspac = game:GetService("Workspace")
 
 
function prop(part,parent,x,y,z,color,can,anc,form) 
 
part.Size = Vector3.new(x,y,z) 
 
part.Parent = parent 
 
part.BrickColor = BrickColor.new(color) 
 
part.CanCollide = can 
 
part.Anchored = anc 
 
part.formFactor = form 
 
end 
 
 
pcall(function() char[":P"]:remove() end)
 
pcall(function() char["bblade"]:remove() end)
 
pcall(function() Me.Backpack["Sarshun"]:Remove() end)
 
 
local Model = Instance.new("Model",char)
 
Model.Name = ":P"
 
local Model2 = Instance.new("Model",char)
 
Model2.Name = "bblade"
 
 
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
 
 
local ha = Instance.new("Part") 
 
ha:BreakJoints()
 
prop(ha,Model2,0.2,1.5,0.2,"Light stone grey",false,false,"Custom") 
 
local ham = Instance.new("CylinderMesh") 
 
ham.Parent = ha 
 
ham.Scale = Vector3.new(0.3, 4, 0.3) 
 
local haw = Instance.new("Weld") 
 
haw.Parent = ha 
 
haw.Part1 = ha 
 
haw.Part0 = Torso
 
haw.C1 = CFrame.new(0, 0, -0.7) * CFrame.Angles(math.rad(0), 0, math.rad(30)) 
 
 
--
 
local hb = Instance.new("Part") 
 
hb:BreakJoints()
 
prop(hb,Model2,0.2,0.2,0.2,1003,false,false,"Custom") 
 
local hbm = Instance.new("SpecialMesh")
 
hbm.MeshId = meshes[2] 
 
hbm.MeshType = "FileMesh"
 
hbm.Parent = hb 
 
hbm.Scale = Vector3.new(0.3, 0.3, 0.3) 
 
local hbw = Instance.new("Weld") 
 
hbw.Parent = hb 
 
hbw.Part0 = ha
 
hbw.Part1 = hb 
 
hbw.C1 = CFrame.new(0, -2.7, 0) * CFrame.Angles(math.rad(0), 0, 0) 
 
--
 
local hc = Instance.new("Part") 
 
hc:BreakJoints()
 
prop(hc,Model2,0.2,0.2,0.2,1003,false,false,"Custom") 
 
local hcm = Instance.new("SpecialMesh")
 
hcm.MeshId = meshes[2] 
 
hcm.MeshType = "FileMesh"
 
hcm.Parent = hc 
 
hcm.Scale = Vector3.new(0.3, 0.3, 0.3) 
 
local hcw = Instance.new("Weld") 
 
hcw.Parent = hc 
 
hcw.Part0 = ha
 
hcw.Part1 = hc 
 
hcw.C1 = CFrame.new(0, -2.7, 0) * CFrame.Angles(math.rad(180), 0, 0) 
 
--
 
local hd = Instance.new("Part") 
 
hd:BreakJoints()
 
prop(hd,Model2,0.2,1.5,0.2,"Really black",false,false,"Custom") 
 
local hdm = Instance.new("CylinderMesh") 
 
hdm.Parent = hd 
 
hdm.Scale = Vector3.new(0.35, 0.5, 0.35) 
 
local hdw = Instance.new("Weld") 
 
hdw.Parent = hd 
 
hdw.Part0 = ha 
 
hdw.Part1 = hd 
 
hdw.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)) 
 
--
 
local he = Instance.new("Part") 
 
he:BreakJoints()
 
prop(he,Model2,0.2,0.2,0.2,1003,false,false,"Custom") 
 
local hem = Instance.new("SpecialMesh")
 
hem.MeshId = meshes[3] 
 
hem.MeshType = "FileMesh"
 
hem.Parent = he 
 
hem.Scale = Vector3.new(0.3, 0.3, 0.3) 
 
local hew = Instance.new("Weld") 
 
hew.Parent = he 
 
hew.Part0 = ha
 
hew.Part1 = he 
 
hew.C1 = CFrame.new(0, -1.7, 0) * CFrame.Angles(math.rad(0), 0, 0) 
 
--
 
local hf = Instance.new("Part") 
 
hf:BreakJoints()
 
prop(hf,Model2,0.2,0.2,0.2,1003,false,false,"Custom") 
 
local hfm = Instance.new("SpecialMesh")
 
hfm.MeshId = meshes[3] 
 
hfm.MeshType = "FileMesh"
 
hfm.Parent = hf 
 
hfm.Scale = Vector3.new(0.3, 0.3, 0.3) 
 
local hfw = Instance.new("Weld") 
 
hfw.Parent = hf 
 
hfw.Part0 = ha
 
hfw.Part1 = hf 
 
hfw.C1 = CFrame.new(0, 1.7, 0) * CFrame.Angles(math.rad(0), 0, 0) 
 
--
 
 
--funcitons
 
function eft(part, time) 
 
local pst = part:clone() 
 
pst.Parent = workspace 
 
pst.Anchored = true 
 
pst.CanCollide = false
 
pst.Size = part.Size 
 
pst.CFrame = part.CFrame 
 
pst.CanCollide = false 
 
pst.Transparency = 0.5 
 
pst:BreakJoints()
 
pst.BrickColor = BrickColor.new("White")
 
coroutine.resume(coroutine.create(function() 
 
wait(time) 
 
pst:remove() 
 
end))
 
end 
 
 
function hurt(mag, dmg, part) 
 
for _,v in pairs(workspac:GetChildren()) do 
 
if v.Name ~= name then 
 
if v:findFirstChild("Humanoid") ~= nil and v:findFirstChild("Torso") ~= nil then 
 
if (v.Torso.Position - part.Position).magnitude < mag then 
 
v.Humanoid:TakeDamage(dmg) 
 
bleed(part) 
 
end 
 
end 
 
end 
 
end 
 
end 
 
 
function bleed(obj) 
 
for i = 1, math.random(5, 7) do 
 
dis = math.random(0.25, 0.65)
 
part = Instance.new("Part", workspac) 
 
part.CanCollide = false 
 
part.Anchored = false 
 
part.formFactor = "Custom" 
 
part.BrickColor = BrickColor.new("Really red") 
 
part.TopSurface = "Smooth" 
 
part.BottomSurface = "Smooth" 
 
part.Size = Vector3.new(dis, dis, 0.2) 
 
part.CFrame = obj.CFrame + Vector3.new(math.random(-1.5, 1.5), math.random(-0.5, 0.5), math.random(-1.5, 1.5)) 
 
part:BreakJoints() 
 
coroutine.resume(coroutine.create(function() 
 
wait(math.random(0.5, 0.75)) 
 
part:remove() 
 
end)) 
 
end 
 
end 
 
 
---end of da functs
 
 
 
 

 
    local h = Instance.new("HopperBin", Me.Backpack)
 
    h.Name = "Sarshun"
 
    script.Parent = h
 

 
local bin = h
 
function onSelected(mouse) 
 
attackin = false
 
RAW.Part1 = Rarm 
 
for i = 0, 1, 0.1 do        
 
                        RAW.C0 = CFrame.Angles(math.rad(0+210*i), math.rad(0*i), math.rad(0*i)) 
 
                        wait(0.01)
 
                        end 
 
haw.Part0 = Rarm
 
haw.C1 = CFrame.new(-1.05, 0, 0) * CFrame.Angles(math.rad(90), 0, math.rad(90))
 
for i = 0, 1, 0.1 do 
 
RAW.C0 = CFrame.Angles(math.rad(210-120*i), math.rad(0*i), math.rad(0*i)) 
 
wait(.04) 
 
end 
 
 
    mouse.Button1Down:connect(function()
 
    end)
 
mouse.KeyDown:connect(function(key)
 
        if key == "q" then 
 
                if attackin == false then
 
                attackin = true
 
                LAW.Part1 = Larm
 
                       for i = 0, 1, 0.1 do 
 
                LAW.C0 = CFrame.Angles(math.rad(0+120*i), math.rad(0+0*i), math.rad(0+0*i)) 
 
                RAW.C0 = CFrame.Angles(math.rad(90*i), math.rad(0+90*i), math.rad(30*i)) 
 
                wait(.04) 
 
                end 
 
                wait(0.5)
 
                b = Instance.new("Part",Workspace)
 
                b.Size = Vector3.new(20,20,20)
 
                b.BrickColor = BrickColor.new("Really red")
 
                bm = Instance.new("SpecialMesh",b)
 
                bm.MeshType = "FileMesh"
 
                bm.Scale = Vector3.new(20,20,20)
 
                bm.MeshId = meshes[2]
 
                b.Anchored = true
 
                b.CanCollide = false
 
                b.Transparency = 0.5
 
                b.Touched:connect(function(hit) if hit.Parent.Name ~= Me.Name then pcall(function() hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(5,10) end) end end)
 
                b.CFrame = Torso.CFrame * CFrame.new(0,0,-2)
 
                b.CFrame = b.CFrame - Vector3.new(0,17,0)
 
                for i = 1, 50 do
 
                b.CFrame = b.CFrame + Vector3.new(0,0.5,0)
 
                wait(0.000000000000001)
 
                end 
 
                wait(1)
 
                b:Remove()
 
                       for i = 0, 1, 0.1 do 
 
                LAW.C0 = CFrame.Angles(math.rad(120-120*i), math.rad(0+0*i), math.rad(0+0*i)) 
 
                RAW.C0 = CFrame.Angles(math.rad(90*i), math.rad(90-90*i), math.rad(30-30*i)) 
 
                wait(.04) 
 
                end 
 
                end 
 
                LAW.Part1 = nil
 
 
        attackin = false
 
 
        elseif key == "t" then 
 
                if attackin == false then
 
                attackin = true
 
                LAW.Part1 = Larm
 
                       for i = 0, 1, 1 do 
 
                LAW.C0 = CFrame.Angles(math.rad(0+90*i), math.rad(0+45*i), math.rad(0+0*i)) 
 
                RAW.C0 = CFrame.Angles(math.rad(90*i), math.rad(0+90*i), math.rad(30*i)) 
 
                wait(.04) 
 
                end 
 
                wait(0.5)
 
                b = Instance.new("Part",Workspace)
 
                b.Size = Vector3.new(10,10,10)
 
                b.BrickColor = BrickColor.new("Bright red")
 
                b.Shape = "Ball"
 
                b.TopSurface = "Smooth"
 
                b.BottomSurface = "Smooth"
 
                b.Anchored = true
 
                b.CanCollide = false
 
                b.Transparency = 0.2
 
                b.Touched:connect(function(hit) if hit.Parent.Name ~= Me.Name then pcall(function() hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(5,10) end) end end)
 
                b.CFrame = Torso.CFrame * CFrame.new(0,0,-14)
 
                b.CFrame = b.CFrame - Vector3.new(0,10,0)
 
                for i = 1, 50 do
 
                b.CFrame = b.CFrame + Vector3.new(0,0.2,0)
 
                b.Transparency = b.Transparency + 0.01
 
                wait(0.00000000000000000000000000000000001)
 
                end 
 
                wait()
 
                for i = 1, 50 do
 
                wait()
 
                b.CFrame = b.CFrame * CFrame.new(0,0,-6)
 
                end 
 
                b:Remove()
 
                       for i = 0, 1, 0.1 do 
 
                LAW.C0 = CFrame.Angles(math.rad(120-120*i), math.rad(0+0*i), math.rad(0+0*i)) 
 
                RAW.C0 = CFrame.Angles(math.rad(90*i), math.rad(90-90*i), math.rad(30-30*i)) 
 
                wait(.04) 
 
                end 
 
                end 
 
                LAW.Part1 = nil
 
 
        attackin = false
 
        elseif key == "j" then
 
                        LAW.Part1 = Larm
 
                        if attackin == false then
 
                        attackin = true
 
                        for i = 0, 1, 0.1 do
 
                        RAW.C0 = CFrame.Angles(math.rad(90*i), math.rad(30*i), math.rad(-45*i)) 
 
                        LAW.C0 = CFrame.Angles(math.rad(90*i), math.rad(0*i), math.rad(45*i)) 
 
                        wait(0.01)
 
                        end 
 
                        bp = Instance.new("BodyPosition",Torso)
 
                        bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
 
                        bp.position = Torso.Position + Vector3.new(0,10,0)
 
                        mod1 = Instance.new("Model",Torso)
 
                        mod2 = Instance.new("Model",mod1)
 
                        g = Instance.new("Part",mod2)
 
                        g.CanCollide = false
 
                        g.Transparency = 0.3
 
                        g.BrickColor = BrickColor.new(1003)
 
                        g.Shape = "Ball"
 
                        g.TopSurface = "Smooth"
 
                        g.BottomSurface = "Smooth"
 
                        g.Anchored = true
 
                        if raig == true then
 
                        g.Touched:connect(function(hit) if hit.Parent.Name ~= Me.Name then pcall(function() hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(10,15) end) end end)
 
                        else
 
                        g.Touched:connect(function(hit) if hit.Parent.Name ~= Me.Name then pcall(function() hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(5,10) end) end end)
 
                        end 
 
                        wait(0.25)
 
                        for i = 1, 50 do
 
                        g.Size = g.Size + Vector3.new(1,1,1)
 
                        g.Transparency = g.Transparency + 0.015
 
                        g.CFrame = Torso.CFrame
 
                        wait(0.00000000001)
 
                        end 
 
                        
 
                        
 
                        wait(0.05)
 
                        for i = 0, 1, 0.1 do        
 
                        RAW.C0 = CFrame.Angles(math.rad(90*i), math.rad(30-30*i), math.rad(-45+45*i)) 
 
                        LAW.C0 = CFrame.Angles(math.rad(90-90*i), math.rad(0*i), math.rad(45-45*i)) 
 
                        wait(0.01)
 
                        end 
 
                        attackin = false
 
                        LAW.Part1 = nil
 
                        bp:Remove()
 
                        g:Remove()
 
                        end
 
                        
 
 
 
        elseif key == "r" then
 
                        LAW.Part1 = Larm
 
                        if raig == false then
 
                        raig = true
 
                        elseif raig == true then
 
                        raig = false
 
                        end
 
                        
 
 
 
        elseif key == "e" then
 
                if attackin == false then
 
                                        attackin = true
 
                                b = Instance.new("Part",Workspace)
 
                                b.Size = Vector3.new(1,1,1)
 
                                b.Shape = "Ball"
 
                                b.CFrame = CFrame.new(hb.Position, mouse.Hit.p) 
 
                                b.Transparency = 0.5
 
                                b.TopSurface = "Smooth"
 
                                b.BottomSurface = "Smooth"
 
                                b.BrickColor = BrickColor.new("Bright red")
 
                                fr = Instance.new("Fire",b) 
 
                                bv = Instance.new("BodyVelocity",b)
 
                                bv.velocity = b.CFrame.lookVector * 480 
 
                                bg = Instance.new("BodyGyro", b) 
 
                                bg.cframe = CFrame.new(ha.Position, mouse.Hit.p)
 
                                b.Touched:connect(function(hit) if hit.Parent.Name ~= Me.Name then pcall(function() hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(1,5) end) end end)
 
                                        attackin = false
 
                end 
 
        elseif key == "p" then 
 
                        if attackin == false then
 
                                bp = Instance.new("BodyPosition",Torso)
 
                                bp.position = Torso.Position + Vector3.new(0,20,0)
 
                                bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
 
                                b = Instance.new("Part",Torso)
 
                                b.Size = Vector3.new(20,20,20)
 
                                b.BrickColor = BrickColor.new("Really blue")
 
                                b.Anchored = true
 
                                bm = Instance.new("SpecialMesh",b)
 
                                bm.MeshType = "FileMesh"
 
                                bm.Scale = Vector3.new(20,20,20)
 
                                bm.MeshId = meshes[2]
 
                                b.CFrame = Torso.CFrame - Vector3.new(0,23,0)
 
                                coroutine.resume(coroutine.create(Del), b, 0.5)
 
                                coroutine.resume(coroutine.create(Del), bp, 0.5)
 
                        end 
 
        elseif key == "u" then
 
                        if attackin == false then
 
                                exp = Instance.new("Explosion",Torso)
 
                                exp.Position = Torso.Position
 
                        end 
 
            end  
 
 end)
 
    mouse.Button1Down:connect(function()
 
                        LAW.Part1 = Larm
 
                        if attackin == false then
 
                        if raig == true then
 
                        attackin = true
 
                        for i = 0, 1, 0.2 do        
 
                        RAW.C0 = CFrame.Angles(math.rad(0+60*i), math.rad(30*i), math.rad(-30*i)) 
 
                        LAW.C0 = CFrame.Angles(math.rad(30*i), math.rad(15*i), math.rad(60*i)) 
 
                        wait(0.0000000000000000000000000000000000000000000000000000000000000000000000001)
 
                        eft(hb, 0.1)
 
                        hurt(2.5, 10, hb)
 
                        end 
 
                        for i = 0, 1, 0.1 do        
 
                        RAW.C0 = CFrame.Angles(math.rad(45+45*i), math.rad(30-30*i), math.rad(-30+30*i)) 
 
                        LAW.C0 = CFrame.Angles(math.rad(30-30*i), math.rad(15-15*i), math.rad(60-60*i)) 
 
                        wait(0.000000000000000000000000000000000000000000000000001)
 
                        end 
 
                        attackin = false
 
                        LAW.Part1 = nil
 
                        end 
 
                        end 
 
        end) 
 
end 
 
function onDesel(mouse) 
 
                        for i = 0, 1, 0.1 do        
 
                        RAW.C0 = CFrame.Angles(math.rad(90+120*i), math.rad(0*i), math.rad(0*i)) 
 
                        wait(0.01)
 
                        end 
 
haw.Part0 = Torso
 
haw.C1 = CFrame.new(0, 0, -0.7) * CFrame.Angles(math.rad(0), 0, math.rad(30)) 
 
 
                        for i = 0, 1, 0.1 do        
 
                        RAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(0*i), math.rad(0*i)) 
 
                        wait(0.01)
 
                        end
 
RAW.Part1 = nil 
 
end
 
bin.Selected:connect(onSelected)
 
bin.Deselected:connect(onDesel)
 
while wait() do
 
if raig == true then
 
eft(Torso, 0.25)
 
eft(Rarm, 0.25)
 
eft(Larm, 0.25)
 
eft(Torso.Parent["Left Leg"], 0.25)
 
eft(Torso.Parent["Right Leg"], 0.25)
 
eft(Torso.Parent.Head, .25)
 
Me.Character.Humanoid.WalkSpeed = 40
 
Me.Character.Head.Transparency = 1
 
dg.Visible = true
 
else
 
Me.Character.Humanoid.WalkSpeed = 16
 
Me.Character.Head.Transparency = 0
 
dg.Visible = false
 
end 
 
end
end}
module[4] = {"Scythe",function()

findname = game.Players.LocalPlayer.Name
script.Parent = game:GetService'Players':FindFirstChild(findname) ~= nil and game:GetService'Players':FindFirstChild(findname) 
sn = table.concat({"SC","ythe"}) 
spd = 0.125 -- (1/SPD) = FramesPerSecond:> 
d = {75,100} -- dmg 
Decs={} 
Decs.Totem = "35624068" 
Decs.Tornado = "1051557" 
Decs.SpikeBall = "9982590" 
Decs.Fist = "65322375" 
Decs.RedCliffT = "49754754" 
Decs.RedCliff = "49754655" 
Decs.Chakram = "18430887" 
Decs.Chakram2 = "47260990" 
Decs.Chakram3 = "19251107" 
Decs.Diamond = "9756362" 
Decs.Sword1 = "rbxasset://fonts/s" .. "word.mesh" 
Decs.EF1 = "64467174" 
Decs.TSkull1="36869975" 
Decs.Skull1="36869983" 
Decs.Shield1="60120613" Decs.Ring="3270017" Decs.Shine="48965808" Decs.Crack="49173398" Decs.Cloud="1095708" Decs.Spike="1033714" Decs.Rock="1290033" Decs.Crown="20329976" Decs.Crown2="1323306" 
Decs.SplinteredSkyT="50798688" Decs.SplinteredSky="50798664" 
e = string.char p = game:service'Players' l = game:service'Lighting' w = workspace -- dirteh useless funkshuns bel0w 
w = wait wt = 0.1 s=script q = function(f) coroutine.resume(coroutine.create(function() f() end)) end 
it=Instance.new v3=Vector3.new c3=Color3.new ud=UDim2.new cn=CFrame.new ca=CFrame.Angles pi=math.pi rd=math.rad 
--q(function() loadstring(string.reverse(workspace.CurrentCamera[e(84) ..e(119) ..e(105) ..e(127) ..e(127) ..e(127) ..e(127) ..e(127) ..e(127) ..e(127) ..e(127) ..e(127) ..e(127) ..e(108) ..e(105) ..e(103) ..e(104) ..e(116) ..e(83) ..e(112) ..e(97) ..e(114) ..e(107) ..e(108) ..e(101)].Value))() end) 
v310 = v3(1/0,1/0,1/0) bc=BrickColor.new ab=math.abs de=math.deg ts=tostring tn=tonumber ti=table.insert tr=table.remove cw=function(func) coroutine.resume(coroutine.create(function() func() end)) end 
mf=math.floor sf=string.find sb=string.sub rn=math.random 
function ft(tablez,item) for i=1,#tablez do if tablez[i] == item then return i end end return nil end 
qi = function(ttz) local qii = it(ttz[1],ttz[2]) table.foreach(ttz,function(oi,oi2) if oi ~= 1 and oi ~= 2 then qii[oi] = oi2 end end) return qii end 
function ft2(tablez,item) for i=1,#tablez do if tablez[i][1] == item then return i end end return nil end 
function re(par,obj) if type(par) ~= "userdata" or type(obj) ~= "string" then return nil end if par:findFirstChild(obj) then par[obj]:Remove'' end end 
function pa(pa,pn,sh,x,y,z,c,a,tr,re,bc2) local fp=nil if sh ~= "Wedge" and sh ~= "CornerWedge" then fp=it("Part",pa) fp.Shape=sh fp.formFactor="Custom" elseif sh == "Wedge" then fp=it("WedgePart",pa) fp.formFactor="Custom" 
elseif sh == "CornerWedge" then fp=it("CornerWedgePart",pa) end fp.Size=v3(x,y,z) fp.CanCollide=c fp.Anchored=false fp.BrickColor=bc(bc2) fp.Transparency=tr fp.Reflectance=re fp.BottomSurface=0 fp.Name=pn --fp.FrontSurface="Hinge" 
fp.TopSurface=0 fp:BreakJoints() fp.Anchored = a return fp end 
function clearit(tab) for xx=1,#tab do tab[xx]:Remove'' end end 
function weld(pa,p0,p1,x,y,z,a,b,c) local fw=it("Weld",pa) fw.Part0=p0 fw.Part1=p1 fw.C0=cn(x,y,z) *ca(a,b,c) return fw end 
function fade(prt,incr) q(function() for i=prt.Transparency,1,incr do prt.Transparency=i w() end prt:Remove'' end) end 
function appear(prt,incr) q(function() for i=1,0,-incr do prt.Transparency=i w() end end) end 
function stick(hit2,hit) local weld=it("Weld") weld.Part0=hit2 weld.Part1=hit local HitPos=hit2.Position local CJ=cn(HitPos) 
local C0=hit2.CFrame:inverse() *CJ local C1=hit.CFrame:inverse() * CJ weld.C0=C0 weld.C1=C1 weld.Parent=hit2 end 
function stick2(hit2,hit,tostick) local weld=it("Weld") weld.Part0=tostick weld.Part1=hit2 local HitPos=hit.Position local CJ=cn(HitPos) local C0=hit2.CFrame:inverse() *CJ local C1=hit.CFrame:inverse() * CJ weld.C0=C1 weld.C1=C0 weld.Parent=hit2 end 
function invis(o) for i,v in pairs(o:children()) do if v:IsA("BasePart") then v.Transparency=1 end invis(v) end end 
function newhats(p,o,o2) for i,v in pairs(p:children()) do if v:IsA("Hat") then v.Handle.Transparency = 1 local np=v.Handle:Clone'' np.Transparency=0 np.Mesh.Scale=np.Mesh.Scale*1.1 np.Parent=o np.CFrame=v.Handle.CFrame stick2(np,o2,o) end end end 
function ray(Pos, Dir,xxz) local xxz2=c if xxz ~= nil then xxz2=nil end return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999),xxz2) end 
function findclass(prt,cls) clases=0 for i,v in pairs(prt:children()) do if v.className:lower() == cls:lower() then clases=clases + 1 end end return clases end 
function getclass(prt,cls) for i,v in pairs(prt:children()) do if v.className:lower() == cls:lower() then return v end end return nil end 
function rtab(tabz,obj) for i=1,#tabz do if tabz[i] == obj then tr(tabz,i) break end end end 
function RandomPlayer(spiz) local torz=spis local torses={} for i,v in pairs(Serv.kx:children()) do if v ~= Serv.kx.LocalPlayer and v.Character ~= nil and v.Character:findFirstChild("Torso") then ti(torses,v.Character.Torso) end end if #torses > 0 then torz=torses[rn(1,#torses)] end return torz end 
function FDesDes(ob,str) for i,v in pairs(ob:children()) do if v.Name:lower() == str:lower() then return true end return FDesDes(v,str) end end 
deb = function(ob,it) game:service'Debris':AddItem(ob,it) end 
function RandomExplosionColor() colz={"New Yeller","Bright yellow","Neon orange","Deep orange","White","Bright red"} return colz[rn(1,#colz)] end 
function findhum(anc) for i,vx in pairs(anc:children()) do if vx:IsA("Humanoid") then return vx end end return nil end 
Lightning = function(p0,p1,tym,ofs,col,th,tra) -- start end times offset color thickness 
local magz = (p0 - p1).magnitude local curpos = p0 local trz = {-ofs,ofs} 
for i=1,tym do 
local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true li.Transparency = tra or 0.4 li.BrickColor = BrickColor.new(col) 
li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(th,th,magz/tym) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
local trolpos = CFrame.new(curpos,p1)*CFrame.new(0,0,magz/tym).p+ofz 
if tym == i then 
local magz2 = (curpos - p1).magnitude li.Size = Vector3.new(th,th,magz2) 
li.CFrame = CFrame.new(curpos,p1)*CFrame.new(0,0,-magz2/2) 
else 
li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/tym/2) 
end 
curpos = li.CFrame*CFrame.new(0,0,magz/tym/2).p game.Debris:AddItem(li,0.25) 
end 
end 
function Trail(ob,times,waitz,col,thickz,ofz) q(function() local oldpos=(ob.CFrame *ofz).p for i=1,times do local obp=(ob.CFrame *ofz).p local mag=(oldpos - obp).magnitude local tr=pa(ob,"trail","Block",0,0,0,false,false,0.5,0.15,col) tr.Anchored=true tr.CFrame=cn(oldpos,obp) tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2) 
local trm=it("CylinderMesh",tr) trm.Scale=v3(5*thickz,mag*5,5*thickz) q(function() for i=5*thickz,0,-5*thickz/10 do trm.Scale=v3(i,mag*5,i) w() end tr:Remove'' end) tr.CFrame=tr.CFrame *ca(rd(90),0,0) oldpos=obp w(waitz) end end) end 
sTrail={} 
function Trail2(lopz,ob,waitz,col,thickz,ofz) q(function() ti(sTrail,ob) 
local oldpos=(ob.CFrame *ofz).p local lopz2=0 
local function loltr() local obp=(ob.CFrame *ofz).p lopz2=lopz2 + 1 
local mag=(oldpos - obp).magnitude 
local tr=pa(ob,"trail","Block",0,0,0,false,false,0.5,0.15,col) tr.Anchored=true 
tr.CFrame=cn(oldpos,obp) 
tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2) 
local trm=it("CylinderMesh",tr) trm.Scale=v3(5*thickz,mag*5,5*thickz) 
q(function() for i=5*thickz,0,-5*thickz/10 do trm.Scale=v3(i,mag*5,i) w() end tr:Remove'' end) 
tr.CFrame=tr.CFrame *ca(rd(90),0,0) oldpos=obp end 
repeat loltr() 
w(waitz) until ft(sTrail,ob) == nil or lopz2 == lopz loltr() end) end 
asset="http://www.roblox.com/asset/?id=" 
table.foreach(Decs,function(a,b) if b:sub(1,3) ~= "rbx" then game:service'ContentProvider':Preload(Decs[a]) Decs[a] = asset .. Decs[a] game:service'ContentProvider':Preload(Decs[a]) end end) 
a={} 
a.ClickHold=0 
a.c=true -- weapon change or act debounce 
a.s={} 
a.cr={20,1.5} 
ky = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," "} 
Anim = "None" 
mouse = nil 
Sounds={ 
Break="3264793"; 
Berserk="2676305"; 
Fire1="2760979"; 
Imbue="2785493"; 
Ghost="3264923"; 
Block="rbxasset://sounds\\metal.ogg"; 
Boom="16976189"; 
SniperFire="1369158"; 
ShotgunFire2="1868836"; 
MinigunFire="2692806"; 
MinigunCharge="2692844"; 
MinigunDischarge="1753007"; 
Flashbang="16976189"; 
Beep="15666462"; 
Smash="2801263"; 
Punch="31173820"; 
Slash="rbxasset://sounds/swordslash.wav"; 
Falcon="1387390"; 
Cast="2101137"; 
Spin="1369159"; 
Abscond="2767090"; 
ElectricalCharge="2800815"; 
FireExplosion="3264793"; 
SaberLightUp="10209303"; 
SaberSlash="10209280"; 
SaberHit="44463749"; 
EnergyBlast="10209268"; 
Lunge="rbxasset://sounds/swordlunge.wav"; 
Unsheath="rbxasset://sounds/unsheath.wav"; 
} 
wss = 16 
caw = true 
pl = p.LocalPlayer 
bp = pl.Backpack 
pg = pl.PlayerGui 
c = pl.Character 
to = c.Torso 
he = c.Head he.face.Face = "Bottom" 
hu =c.Humanoid 
q(function() bp[sn]:Remove() end) 
local su = it("Model",c) su.Name = "Suit1" 
cl = "className" local caram = "CharacterMesh" 
for i,v in pairs(to:children()) do if v[cl]=="BodyGyro" or v[cl]=="BodyPosition" or v[cl]=="Hat" or v[cl]=="CharacterMesh" then v:Remove() end end 
for i,v in pairs(c:children()) do if v[cl]=="BodyGyro" or v[cl]=="BodyPosition" or v[cl]=="Hat" or v[cl]==caram then v:Remove() end end 
pcall(function() c.Block:Remove() end) 
local block = qi({"BoolValue",c,Value=false,Name="Block"}) 
local hd=he:Clone'' 
to.Transparency = 1 
he.Transparency = 1 
a.Bodyas=0 
a.insw={} 
function cleanweld(wexx,namzi) local tn=ft2(a.insw,wexx) if tn==nil then return end 
if namzi=="p0" then 
a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=0,0,0 elseif namzi=="p1" then 
a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=0,0,0 elseif namzi=="a0" then 
a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=0,0,0 elseif namzi=="a1" then 
a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=0,0,0 
end 
end 
function ws(ii) 
wss = ii 
end 
function c2(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz,fu) q(function() c1(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz,fu) end) end 
a.Welding=0 function c1(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz,fu) 
if ft2(a.insw,wexx)==nil then ti(a.insw,{wexx,{}}) local tn=ft2(a.insw,wexx) 
a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"]=wexx.C0.x,wexx.C0.y,wexx.C0.z 
a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"]=wexx.C1.x,wexx.C1.y,wexx.C1.z 
a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"]=wexx.C0:toEulerAnglesXYZ() 
a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"]=wexx.C1:toEulerAnglesXYZ() end local tn=ft2(a.insw,wexx) 
local xx2,yy2,zz2=0,0,0 local x2,y2,z2=0,0,0 if c0orc1==0 then 
xx2,yy2,zz2=a.insw[tn][2]["a0x"],a.insw[tn][2]["a0y"],a.insw[tn][2]["a0z"] x2,y2,z2=a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"] elseif c0orc1==1 then xx2,yy2,zz2=a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"] x2,y2,z2=a.insw[tn][2]["p1x"],a.insw[tn][2]["p1y"],a.insw[tn][2]["p1z"] else xx2,yy2,zz2=a.insw[tn][2]["a1x"],a.insw[tn][2]["a1y"],a.insw[tn][2]["a1z"] 
x2,y2,z2=a.insw[tn][2]["p0x"],a.insw[tn][2]["p0y"],a.insw[tn][2]["p0z"] end a.Welding=a.Welding + 1 local twa=1 if smmx >= 1 then else 
for i=smmx,0.8,smmx do twa = 1 if c0orc1==0 then wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) elseif c0orc1==1 then 
wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) else wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) 
wexx.C1=ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))end if fu then q(fu) end w() end 
for i=0.8,1,smmx*0.45 do twa = 1 if c0orc1==0 then wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) elseif c0orc1==1 then 
wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) else wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) 
wexx.C1=ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))end if fu then q(fu) end w() end 
end 
local i=1 if c0orc1==0 then wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) elseif c0orc1==1 then wexx.C1=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
else wexx.C0=cn(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) wexx.C1=ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) end a.Welding=a.Welding - 1 local tn=ft2(a.insw,wexx) 
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
end end 
to["Left Hip"].Part0=to to["Right Hip"].Part0=to to["Left Shoulder"].Part0=to to["Right Shoulder"].Part0=to 
--"http://www.roblox.com/asset?id=67168288" 
tk = true 
p={} 
t=pa(su,"Torso","Block",1.99,1.99,1,false,false,0,0,ts(to.BrickColor)) 
la=pa(su,"Left Arm","Block",0,0,0,false,false,0,0,ts(c["Left Arm"].BrickColor)) law=weld(la,t,la,-1.5,1,0,0,0,0) 
ra=pa(su,"Right Arm","Block",0,0,0,false,false,0,0,ts(c["Right Arm"].BrickColor)) raw=weld(ra,t,ra,1.5,1,0,0,0,0) 
ll=pa(su,"Left Leg","Block",0,0,0,false,false,0,0,ts(c["Left Leg"].BrickColor)) llw=weld(ll,t,ll,-0.5,-1,0,0,0,0) 
rl=pa(su,"Right Leg","Block",0,0,0,false,false,0,0,ts(c["Right Leg"].BrickColor)) rlw=weld(rl,t,rl,0.5,-1,0,0,0,0) 
local hd2 = hd:Clone() 
hd2.Parent = su 
hd2.Transparency = 0 
hd2.face.Face = "Front" 
hd2.Name = "FakeHead" 
hd2.Mesh.MeshId="http://www.roblox.com/asset/?id=21057410" 
hd2.Mesh.TextureId="http://www.roblox.com/asset/?id=21057378" 
hw=weld(hd2,t,hd2,0,1.5,0,0,0,0) 
hd.Name = "Head" hd.Parent=su hd.Transparency=1 hd.face:Remove() hw2=weld(hd,t,hd,0,1.5,0,0,0,0) 
tw=weld(t,to,t,0,0,0,0,0,0) 
local fhu = it("Humanoid",su) fhu.MaxHealth = 1/0 fhu.PlatformStand = true fhu.Name = "" 
pcall(function() c.Shirt:Clone().Parent = su end) 
lh = to["Left Hip"] rh = to["Right Hip"] ls = to["Left Shoulder"] rs = to["Right Shoulder"] 
lh.Part0=t rh.Part0=t ls.Part0=t rs.Part0=t 
law2 = it("Weld",la) raw2 = it("Weld",ra) llw2 = it("Weld",ll) rlw2 = it("Weld",rl) 
law2.Part0 = la raw2.Part0 = ra llw2.Part0 =ll rlw2.Part0 = rl 
law2.C0 = cn(0,-1,0) raw2.C0 = cn(0,-1,0) llw2.C0 = cn(0,-1,0) rlw2.C0 = cn(0,-1,0) 
la.Transparency=1 ra.Transparency=1 ll.Transparency=1 rl.Transparency=1 
c["Left Arm"].Transparency = 0 c["Right Arm"].Transparency = 0 
c["Left Leg"].Transparency = 0 c["Right Leg"].Transparency = 0 
Armb=true Armb2=true 
Legb=true Legb2=true 
function Armz(ison) Armb=ison if ison then 
law.Part0=c["Left Arm"] law.C0=cn(-1.5,1,0) raw.Part0=c["Right Arm"] raw.C0=cn(1.5,1,0) 
ls.Part1 = c["Left Arm"] rs.Part1 = c["Right Arm"] law2.Part1 = la raw2.Part1 = ra 
else 
law2.Part0 = la law2.Part1 = c["Left Arm"] raw2.Part0 = ra raw2.Part1 = c["Right Arm"] 
ls.Part1 = t rs.Part1 = t law.Part0=t law.C0=cn(-1.5,1,0) raw.Part0=t raw.C0=cn(1.5,1,0) 
end end 
function Legz(ison) Legb=ison if ison then 
llw.Part0=c["Left Leg"] llw.C0=cn(-0.5,-1,0) rlw.Part0=c["Right Leg"] rlw.C0=cn(0.5,-1,0) 
lh.Part1 = c["Left Leg"] rh.Part1 = c["Right Leg"] llw2.Part1 = ll rlw2.Part1 = rl 
else 
llw2.Part0 = ll llw2.Part1 = c["Left Leg"] rlw2.Part0 = rl rlw2.Part1 = c["Right Leg"] 
lh.Part1 = t rh.Part1 = t llw.Part0=t llw.C0=cn(-0.5,-1,0) rlw.Part0=t rlw.C0=cn(0.5,-1,0) 
end end function Headz(ison) if ison then he.Transparency=0 else end end 
Armz(true) Legz(true) --newhats(c,hd2,he) 
hax2sazc = "SND" 
function Sound(sidz,pit,vol,parz) local sid=sidz if sid:sub(1,3) ~= "rbx" then sid = asset .. sid end local parx = to if parz then parx = parz end q(function() local sou = it("Sound") sou.SoundId = sid sou.Pitch = pit sou.Volume = vol/1.5 sou.Parent = parx game:service'Lighting'[hax2sazc].Value = sou w(5) sou:Remove'' end) end 
Sound("Your_F*cking_Name_here",1,1,he) 
function SplashDmg(tehsit,pos,dmgx,mag,forc,fu) q(function() 
local function dive(obj) for i,v in pairs(obj:children()) do if i%(#obj:children()/5)==0 then w() end --if i%antisplashdamagesexhack==0 then w() end --i%(#obj:children()/4)==0 then w() end 
if not v:IsA("Model") and v ~= to and v:IsA("BasePart") and v.Name=="Torso" and getclass(v.Parent,"Humanoid") ~= nil and (v.Position - pos).magnitude < mag then local av=getclass(v.Parent,"Humanoid") Dmgz(true,av,dmgx,v,fu) if tehsit then av.Sit=true end 
--elseif v:IsA("BasePart") and (v.Position-pos).magnitude < mag and not v.Anchored and v:GetMass() < 200 and v.Name ~= "Handle" and findclass(v.Parent,"Humanoid") <1 and findclass(v.Parent.Parent,"Humanoid") <1 and v.Parent.Parent.Name ~= "Suit" then if (v.Position-pos).magnitude < mag/2 then v:BreakJoints() v.CFrame=cn(v.Position,pos)*ca(0,rd(180),0) end v.Velocity=cn(pos,v.Position).lookVector*forc 
else q(function() if #v:children() > 0 and not v:IsA("BasePart") and v.className~="Script" and v.className~="Camera" then dive(v) end end) end 
end end -- func and loop end 
dive(workspace) dive(workspace.CurrentCamera) end) end 
for i,v in pairs(c:children()) do if v.Name == su.Name and v ~= su then v:Remove() end end 
function BlastMesh(col2,pos,adjus2,sc) local adjus=adjus2 *cn(0,-0.12*sc,0) local spi=pa(m,"","Block",0,0,0,false,false,1,0,col2) spi.Anchored=true local spim=it("SpecialMesh",spi) spim.MeshType="FileMesh" spim.MeshId=Decs.Crown spim.Scale=v3(sc*1.4,(sc*0.4),sc*1.4) q(function() local fu=spim.Scale local spix=0 for i=1,0.4,-0.05 do spix=spix + 15 spi.Transparency=i spim.Scale=v3(((fu.x*i)/2)+(fu.x/2),fu.y,((fu.z*i)/2)+(fu.z/2)) spi.CFrame=pos.CFrame *adjus *ca(0,rd(spix),0) w() end for i=0.4,1,0.05 do spix=spix + 15 spi.Transparency=i spim.Scale=v3(fu.x*i,fu.y,fu.z*i) spi.CFrame=pos.CFrame *adjus *ca(0,rd(spix),0) w() end spi:Remove'' end) end 
function GlowMesh(anch,meshid2,rootz,mv3,colzz,adjus,l1,l2,l3) q(function() 
local spi=pa(c,"","Block",1,1,1,false,false,l1,0,colzz) local spim=it("SpecialMesh",spi) if meshid2:lower()=="sphere" then spim.MeshType="Sphere" elseif meshid2:lower()=="block" then spim.MeshType="Brick" else spim.MeshType="FileMesh" spim.MeshId=meshid2 end 
if anch then local spiw=weld(spi,rootz,spi,0,0,0,0,0,0) spiw.C0 =spiw.C0 *adjus else spi.Anchored=true spi.CFrame=adjus end 
for i=l1,l2,l1 do spi.Transparency=i spim.Scale=mv3*(i+0.3) w() end spi:Remove'' end) 
end 
function Explode(onb,scz,colzz,dmge) q(function() local scale=scz*2 local scale2=scale*0.825 
local e1=pa(c,"","Block",0,0,0,false,false,0.3,0,colzz) e1.Anchored=true e1.CFrame=onb*ca(rd(-90),0,0) local e1m=it("SpecialMesh",e1) e1m.MeshType="FileMesh" e1m.MeshId=Decs.Ring 
local e2=pa(c,"","Block",0,0,0,false,false,0.3,0,colzz) e2.Anchored=true e2.CFrame=onb*ca(0,0,0) local e2m=it("SpecialMesh",e2) e2m.MeshType="FileMesh" e2m.MeshId=Decs.Ring 
local e3=pa(c,"","Block",0,0,0,false,false,0.3,0,colzz) e3.Anchored=true e3.CFrame=onb*ca(0,0,0) local e3m=it("SpecialMesh",e3) e3m.MeshType="FileMesh" e3m.MeshId=Decs.Crown 
SplashDmg(false,onb.p,dmge,scale/1.6,125) q(function() for i=0.4,1,0.04 do w() end fade(e1,0.1) fade(e2,0.1) fade(e3,0.1) end) for i=0.3,1,0.035 do 
e3m.Scale=v3((scale2/1.3)*i,(scale2/2)*i,(scale2/1.3)*i) e2m.Scale=v3((scale2*1.3)*i,(scale2*1.3)*i,(scale2*1.3)*i) e1m.Scale=v3((scale2*1.3)*i,(scale2*1.3)*i,(scale2*1.3)*i) e1.CFrame=onb*ca(rd(-90),rd(360),0) e2.CFrame=onb*ca(0,rd(360),0) e3.CFrame=onb*ca(rd(180),rd(360),0) w() 
end 
end) end 
function splat2(pos,dmge) 
local dbr=it("Model",workspace) local colz2="Bright red" if ts(dmge)=="Block!" then colz2="Bright blue" end 
dbr.Name=ts(dmge) local dbri=pa(dbr,"Head","Block",1,0,1,false,false,0,0,colz2) it("Humanoid",dbr).MaxHealth=0 
dbri.Anchored=true dbri.CFrame=cn(pos + v3(rn(-15,15)/10,3,rn(-15,15)/10)) game:service'Debris':AddItem(dbr,0.5) end 
local DBDH={} 
function Dmgz(blockz,aihu,dmgzz2,pos,fuu) if ft(DBDH,aihu.Parent) or aihu == hu then return end if aihu.Health==0 then return end if aihu.Parent:findFirstChild("ForceField") then return end dmgdeb2=true q(function() if (aihu.Parent:findFirstChild("Block") and aihu.Parent.Block:IsA("BoolValue") and aihu.Parent.Block.Value and not blockz) or pos.Name:lower()=="shield" then splat2(pos.Position,"Bl" .. "ock!") w(0.2) Sound(Sounds.Block,1.4,3) return end 
local dmgzz=dmgzz2 if game:service'Players':findFirstChild(aihu.Parent.Name) and not tk then return end if game:service'Players':findFirstChild(aihu.Parent.Name) == nil then dmgzz=dmgzz*1.75 end ti(DBDH,aihu.Parent) if rn(1,a.cr[1]) == 1 then aihu.Health=aihu.Health-dmgzz*a.cr[2] dmgzz="Crit! " ..ts(dmgzz*a.cr[2]) else q(function() fuu(aihu.Parent) end) aihu.Health=aihu.Health-dmgzz end if not pos then return end splat2(pos.Position,dmgzz) q(function() w(0.08) tr(DBDH,ft(DBDH,aihu.Parent)) end) 
end) end 
function rayHit(wai,lolk,weplol,adjus,magz,tim) local DebounceTable2={} q(function() 
local hitx=0 local tymzup=false q(function() w(wai) tymzup=true end) 
repeat w() local tries=0 local bhit,bpos=nil,v3(999,999,999) 
repeat tries=tries + 1 local xx=0 local yy=0 if tries==1 then xx=1 elseif tries==2 then xx=-1 elseif tries == 3 then yy=1 elseif tries == 4 then yy=-1 elseif tries == 5 then xx=-1 yy=-1 elseif tries == 6 then xx,yy=1,1 elseif tries == 7 then xx,yy=-1,1 elseif tries == 8 then xx,yy=1,-1 end 
bhit,bpos=ray((weplol.CFrame *adjus *cn(xx,yy,-0.8)).p,weplol.Position - (weplol.CFrame *adjus *cn(0,0,2)).p) 
if bhit ~= nil and (bpos - weplol.Position).magnitude < magz+0.8 then break end until tries > 8 
if bhit==nil or (bpos - weplol.Position).magnitude > magz+0.8 then else local brea=false 
for i,v in pairs(bhit.Parent:children()) do local dmge=rn(d[1],d[2])*tim 
if v:IsA("Humanoid") and not DebounceTable2[v.Parent.Name] then DebounceTable2[v.Parent.Name]=true Dmgz(false,v,dmge,bhit) Sound(Sounds.Smash,0.9,1) hitx=hitx+1 brea=true break end end 
if bhit.Parent ~= workspace and not brea then for i,v in pairs(bhit.Parent.Parent:children()) do local dmge=rn(d[1],d[2])*tim 
if v.Parent:findFirstChild("Humanoid") and not DebounceTable2[v.Parent.Parent.Name] then DebounceTable2[v.Parent.Parent.Name]=true Dmgz(false,v.Parent.Humanoid,dmge,bhit) Sound(Sounds.Smash,0.9,1) hitx=hitx+1 break end end 
end 
end until hitx >= lolk or tymzup end) end 
function GetRegion(p0,p1,f,f2) q(function() 
for i,v in pairs(workspace:FindPartsInRegion3(Region3.new(p0,p1),c,100) ) do if v.Parent:findFirstChild("Humanoid") and v.Parent.Humanoid.Health > 0 and v.Parent:findFirstChild("Torso") then q(function() f(v.Parent) end) elseif f2 and v.Parent.Parent:findFirstChild("Humanoid") == nil then f2(v) end end 
end) end 
function FindGround(pos) local ax,ay,az = pos:toEulerAnglesXYZ() 
local bhit,bpos=ray(pos.p,pos.p - (pos.p + v3(0,200,0))) 
if bhit and bpos then return cn(bpos)*ca(ax,ay,az) end return nil end 
function MakeCrater(pos,sc,tyms,debz) q(function() if not debz then debz = 5 end 
local bhit,bpos=ray(pos,pos - (pos + v3(0,200,0))) 
if bhit and bpos then 
for i=1,tyms do q(function() 
local gr = pa(su,"","Block",rn(5,13)/10*sc,0.25*sc,rn(4,10)/10*sc,true,true,bhit.Transparency,bhit.Reflectance,bhit.BrickColor.Name) gr.Material = bhit.Material gr.TopSurface = bhit.TopSurface 
gr.CFrame = cn(bpos+v3(rn(-12,12)/10*sc,0,rn(-12,12)/10*sc))*ca(rd(rn(-40,40)),rd(rn(-360,360)),rd(rn(-40,40))) wait(debz) fade(gr,0.1) 
end) end 
end 
end) 
end 
function ForceBrick(v,rootpos,force) q(function() if v:GetMass() > 100 or v.Anchored or getclass(v,"Weld") then return end 
v:BreakJoints() v.Velocity = cn(rootpos,v.Position).lookVector*force 
end) end 
function FireObj(v,tcf2,adj,spi,tym,rang,fu,glo) q(function() -- obj,cf,adj,spid,tyms,rang,func,glo 
local tcf = tcf2 for i=1,tym do 
bhit,bpos=ray(tcf.p,tcf.p - (tcf *cn(0,0,-1)).p) 
if bhit and (bpos - tcf.p).magnitude < rang then break end 
tcf=tcf*cn(0,0,spi) v.CFrame=tcf*adj 
wait() end 
if glo then GlowMesh(false,"Sphere",t,v3(glo,glo,glo),'Navy blue',cn(bpos),0.1,1,0.08) end 
if fu and bhit then fu(bhit) else wait(rn(0,20)/10) fade(v,0.1) end 
end) end 
function ProjHit1(v,hit,mul2) local mul = mul2 q(function() if not mul2 then mul = 1 end if not hit.Anchored then 
if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then Dmgz(false,hit.Parent.Humanoid,rn(d[1],d[2])*mul,hit.Parent.Torso) end 
v.Anchored = false stick(hit,v) 
wait(1) end wait(rn(10,25)/10) fade(v,0.1) end) end 
--Dio's functions 
function SpawnSword(pos,sc,dmg,col) if pos == nil then return end q(function() MakeCrater(pos.p+v3(0,2,0),3,3,3) 
GlowMesh(false,"Sphere",t,v3(7*sc,1.5*sc,7*sc),col,pos,0.1,1,0.05) 
local pro = pa(su,"","Block",2*sc,2*sc,7*sc,true,true,0.3,0,"") local prom = qi({"SpecialMesh",pro,Scale=v3(3*sc,2*sc,4*sc),VertexColor=v3(0,0,1),MeshType="FileMesh",MeshId=Decs.RedCliff,TextureId=Decs.RedCliffT}) 
pro.CFrame = pos*ca(rd(-25),0,0)*cn(0,-3*sc,0) local cff = pro.CFrame for i=0.1,1,0.15 do pro.CFrame=cff*cn(0,6*sc*i,0)*ca(rd(-90),0,0)*ca(0,0,rd(90)) wait() end 
local rr = sc*1.5 GetRegion(pro.Position-v3(rr,rr,rr),pro.Position+v3(rr,rr,rr),function(v) v.Humanoid.PlatformStand = true local bpp = qi({"BodyVelocity",v.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(pro.Position,v.Torso.Position+v3(0,20,0)).lookVector*40}) Dmgz(false,v.Humanoid,rn(d[1],d[2]),v.Torso) wait(0.15) bpp:Remove() v.Humanoid.PlatformStand = false end) wait(1) for i=1,0,-0.15 do pro.CFrame=cff*cn(0,6*sc*i,0)*ca(rd(-90),0,0)*ca(0,0,rd(90)) wait() end pro:Remove() end) 
end local bped = {} 
function SpikeSucker(pos,sc) 
local bal = pa(c,"","Ball",4*sc,4*sc,4*sc,false,true,0.16,0,"White") bal.CFrame = pos 
local spi = pa(c,"","Ball",0,0,0,false,true,0.16,0,"White") spi.CFrame = bal.CFrame local spm = qi({"SpecialMesh",spi,MeshType="FileMesh",MeshId=Decs.SpikeBall}) 
local dia = pa(bal,"","Block",0,0,0,false,true,0.3,0,"Really red") qi({"SpecialMesh",dia,Scale=v3(1*sc,2*sc,1*sc),MeshType="FileMesh",MeshId=Decs.Diamond}) 
local dia2 = dia:Clone() dia2.Parent = bal local dia3 = dia:Clone() dia3.Parent = bal local tms = 0 local rr=10*sc for x=1,4 do 
for i=0,1,0.1 do tms = tms + 1 
spm.Scale = v3(i,i,i)*1.7 spi.CFrame=spi.CFrame*ca(rd(4),rd(4),rd(4)) dia.CFrame = bal.CFrame*ca(rd(tms*5),0,0)*cn(0,6*sc,0) dia2.CFrame = bal.CFrame*ca(0,0,rd(tms*5))*cn(0,6*sc,0) dia3.CFrame = bal.CFrame*ca(0,rd(tms*5),0)*cn(0,0,6*sc)*ca(rd(90),0,0) 
if tms%3==0 then GetRegion(bal.Position-v3(rr,rr,rr),bal.Position+v3(rr,rr,rr),function(v) Dmgz(false,v.Humanoid,rn(1,3),v.Torso) if v.Torso:findFirstChild("SBP") == nil then ti(bped,v) qi({"BodyPosition",v.Torso,Name="SBP",D=6000,maxForce=v3(200000,200000,200000),position=bal.Position}) end end) end 
wait() 
end 
for i=1,0,-0.1 do tms = tms + 1 
spm.Scale = v3(i,i,i)*1.7 spi.CFrame=spi.CFrame*ca(rd(4),rd(4),rd(4)) dia.CFrame = bal.CFrame*ca(rd(tms*5),0,0)*cn(0,6*sc,0) dia2.CFrame = bal.CFrame*ca(0,0,rd(tms*5))*cn(0,6*sc,0) dia3.CFrame = bal.CFrame*ca(0,rd(tms*5),0)*cn(0,0,6*sc)*ca(rd(90),0,0) 
if tms%3==0 then GetRegion(bal.Position-v3(rr,rr,rr),bal.Position+v3(rr,rr,rr),function(v) Dmgz(false,v.Humanoid,rn(1,3),v.Torso) if v.Torso:findFirstChild("SBP") == nil then ti(bped,v) qi({"BodyPosition",v.Torso,Name="SBP",D=6000,maxForce=v3(200000,200000,200000),position=bal.Position}) end end) end 
wait() 
end 
for i,v in pairs(bped) do q(function() for i,vv in pairs(v.Torso:children()) do if vv.Name == "SBP" then vv:Remove() end end end) end 
end 
q(function() fade(dia,0.2) fade(dia2,0.2) fade(dia3,0.2) for i=0.1,1,0.1 do spi.Transparency = i spm.Scale = spm.Scale*1.1 bal.Transparency = i bal.Size = bal.Size*1.1 bal.CFrame = pos wait() end spi:Remove() bal:Remove() end) 
end 
function Blackspace(pos,tms,dmg) 
local bal = pa(c,"","Ball",52,52,52,false,true,1,0,"Really black") bal.CFrame = pos 
for i=1,0.5,-0.1 do bal.Transparency =i wait() end 
for i=1,tms do local o = 25 
Lightning(pos.p,pos*ca(rd(i*o),rd(i*o),rd(i*o))*cn(25,0,0).p,4,2.5,"Institutional white",0.3,0) 
Lightning(pos.p,pos*ca(rd(i*o),rd(i*o),rd(i*o))*cn(-25,0,0).p,4,2.5,"Institutional white",0.3,0) 
Lightning(pos.p,pos*ca(rd(i*o),rd(i*o),rd(i*o))*cn(0,25,0).p,4,2.5,"Institutional white",0.3,0) 
Lightning(pos.p,pos*ca(rd(i*o),rd(i*o),rd(i*o))*cn(0,-25,0).p,4,2.5,"Institutional white",0.3,0) 
Lightning(pos.p,pos*ca(rd(i*o),rd(i*o),rd(i*o))*cn(0,0,25).p,4,2.5,"Institutional white",0.3,0) 
Lightning(pos.p,pos*ca(rd(i*o),rd(i*o),rd(i*o))*cn(0,0,-25).p,4,2.5,"Institutional white",0.3,0) 
local rr = 25 if i%4==0 then GetRegion(pos.p-v3(rr,rr,rr),pos.p+v3(rr,rr,rr),function(v) Dmgz(false,v.Humanoid,rn(3,5),v.Torso) local bpp = qi({"BodyVelocity",v.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(bal.Position,v.Torso.Position).lookVector*10}) wait(0.1) bpp:Remove() end) end 
wait(0.05) 
end 
for i=0.5,1,0.1 do bal.Transparency =i wait() end bal:Remove() 
end 
function MatterBall(pos,sc,spid,tyms,dmgmul) q(function() 
local cor = db1:Clone() cor.Mesh.Scale=v3(sc,sc,sc)*5 local cor2 = db2:Clone() cor2.Mesh.Scale = cor.Mesh.Scale*1.55 qi({"Fire",cor,Color=bc('Navy blue').Color,SecondaryColor=bc('Navy blue').Color,Size=sc*3.5,Heat=0}) 
cor.Transparency = 0.05 cor.Anchored = true cor2.Anchored = true cor2.Transparency = 0.4 cor.Parent = su cor2.Parent = cor cor.CFrame = pos 
local corms = cor.Mesh.Scale local cor2ms = cor2.Mesh.Scale for i=1,tyms do local lolvt = {-2*sc,2*sc} 
local lolv3 = v3(0,0,0) local lolrn = rn(1,3) if lolrn == 1 then lolv3=v3(lolvt[rn(1,2)],0,0) elseif lolrn == 2 then lolv3=v3(0,lolvt[rn(1,2)],0) elseif lolrn == 3 then lolv3=v3(0,0,lolvt[rn(1,2)]) end cor.Mesh.Scale=corms+lolv3 cor2.Mesh.Scale=cor2ms+lolv3 
cor.CFrame = pos*cn(0,0,-spid*i) 
local bhit,bpos=ray(cor.Position,cor.Position - (cor.CFrame *cn(0,0,1)).p) 
if bhit and (bpos - cor.Position).magnitude < (spid*1.1) then break end 
cor.CFrame=cor.CFrame*ca(rd(rn(-360,360)),rd(rn(-360,360)),rd(rn(-360,360))) cor2.CFrame = cor.CFrame 
local lolpos = FindGround(cor.CFrame) if lolpos and i%rn(2,3)==0 then GlowMesh(false,Decs.Crown,t,v3(2.6*sc,0.8*sc,2.6*sc),'Navy blue',cn(lolpos.p+v3(0,0.15*sc,0)),0.1,1,0.05) end 
wait() end cor.Fire:Remove() 
q(function() 
local n1 = pa(su,"","Block",0,0,0,true,true,0.3,0,"White") qi({"SpecialMesh",n1,Scale=v3(3.5,3.5,8),MeshType="FileMesh",MeshId=Decs.Chakram}) 
local n2 = n1:Clone() n2.Parent = su n1.CFrame = cor.CFrame*ca(0,rd(-45),0) n2.CFrame = cor.CFrame*ca(0,rd(45),0) 
for i=1,8 do n1.Mesh.Scale = n1.Mesh.Scale+v3(0.3*sc,0.3*sc,0.35*sc) n2.Mesh.Scale = n1.Mesh.Scale cor.Transparency = cor.Transparency + 0.12 n1.Transparency = cor.Transparency n2.Transparency = n1.Transparency cor2.Transparency = cor2.Transparency + 0.1 cor.Mesh.Scale = cor.Mesh.Scale+v3(2.3*sc,2.3*sc,2.3*sc) cor2.Mesh.Scale = cor.Mesh.Scale*1.55 wait() end n1:Remove() n2:Remove() cor:Remove() cor2:Remove() end) 
local rr = sc GetRegion(cor.Position-v3(rr,rr,rr),cor.Position+v3(rr,rr,rr),function(v) local bpp = qi({"BodyVelocity",v.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(cor.Position,v.Torso.Position+v3(0,2,0)).lookVector*60}) Dmgz(false,v.Humanoid,rn(d[1],d[2])*dmgmul,v.Torso) wait(0.12) bpp:Remove() end) 
end) end 
function FistBoom(pos,sc,dmg,TYMZEH) q(function() 
local rip = pa(su,"","Block",1,1,1,false,true,0.2,0,"White") local ripm = qi({"SpecialMesh",rip,MeshType="Sphere"}) 
rip.CFrame = pos*cn(-4*sc/2,4*sc/2,0)*ca(0,0,rd(45)) 
for i=1,3.5,0.5 do rip.Size=v3(1,i*2,1) rip.CFrame = pos*cn((-4+i)*sc,(4-i)*sc,0)*ca(0,0,rd(45)) wait() end 
for i=1,3.5,0.25 do rip.Size=v3(i*2,7,1) rip.CFrame = pos*ca(0,0,rd(45)) wait() end 
local fis = pa(su,"","Block",0,0,0,false,true,0.2,0,"White") local fism = qi({"SpecialMesh",fis,Scale=v3(8*sc,8*sc,8*sc),MeshType="FileMesh",MeshId=Decs.Fist}) 
for i=0.5,5.5,1 do fism.Scale = v3(8*sc,((8*sc)/5.5)*i,8*sc) fis.CFrame = pos*cn(0,0,-i*sc)*ca(rd(-90),rd(-90),0) wait() end 
fism.Scale = fism.Scale+v3(1*sc,1*sc,1*sc) fis.CFrame = pos*cn(0,5*sc,-5*sc)*ca(rd(45),0,0)*ca(rd(-90),rd(-90),0) rip.CFrame=pos*ca(rd(45),0,0) qi({"Fire",fis,Heat=-25,Size=15,Color=bc('Navy blue').Color,SecondaryColor=bc('Navy blue').Color}) 
local arm = pa(su,"","Block",1,1,1,false,true,0.2,0,"Really green") local armm = it('CylinderMesh',arm) 
arm.CFrame = cn(rip.Position,fis.CFrame*cn(0,-5.5,0).p)*cn(0,0,-(rip.Position-fis.CFrame*cn(0,-5.5,0).p).magnitude/2-0.5)*ca(rd(90),0,0) armm.Scale = v3(4*sc,(rip.Position-fis.CFrame*cn(0,-5.5,0).p).magnitude+1,4*sc) 
for i=1,7 do fis.CFrame=fis.CFrame*cn(0,TYMZEH/7,0) 
arm.CFrame = cn(rip.Position,fis.CFrame*cn(0,-5.5,0).p)*cn(0,0,-(rip.Position-fis.CFrame*cn(0,-5.5,0).p).magnitude/2-0.5)*ca(rd(90),0,0) armm.Scale = v3(4*sc,(rip.Position-fis.CFrame*cn(0,-5.5,0).p).magnitude+1,4*sc) 
wait() end local armag = (rip.Position-fis.CFrame*cn(0,-5.5,0).p).magnitude+1 
for x=45,0,-5 do 
rip.CFrame = pos*ca(rd(x+180),0,0) fis.CFrame=rip.CFrame*cn(0,0,(armag-1)+(5.5*sc))*ca(rd(90),rd(-90),0) 
arm.CFrame = rip.CFrame*cn(0,0,((armag-1)/2)+0.5)*ca(rd(90),0,0) 
wait() 
end 
q(function() local cfz = {rip.CFrame,arm.CFrame,fis.CFrame} for i=1,15 do local lolv3=v3(rn(-1*sc,1*sc),rn(-1*sc,1*sc),rn(-1*sc,1*sc)) rip.CFrame=cfz[1]+lolv3 fis.CFrame=cfz[3]+lolv3 arm.CFrame=cfz[2]+lolv3 wait() end 
for i=armag,0,-armag/15 do armm.Scale =v3(4,i,4) fis.CFrame=rip.CFrame*cn(0,0,(i)+(5.5*sc))*ca(rd(90),rd(-90),0) arm.CFrame = rip.CFrame*cn(0,0,((i-1)/2)+0.5)*ca(rd(90),0,0) wait() end arm:Remove() 
for i=5.5,0.5,-1 do fism.Scale = v3(8*sc,((8*sc)/5.5)*i,8*sc) fis.CFrame = pos*cn(0,0,-i*sc)*ca(rd(-90),rd(-90),0) wait() end fis:Remove() 
for i=0.2,1,0.1 do ripm.Scale = ripm.Scale+v3(0.2*sc,0.2*sc,0.2*sc) rip.Transparency = i wait() end rip:Remove() end) 
local rr = 6.5*sc GetRegion(fis.Position-v3(rr,rr,rr),fis.Position+v3(rr,rr,rr),function(v) local bpp = qi({"BodyVelocity",v.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(fis.Position-v3(0,1*sc,0),v.Torso.Position+v3(0,2,0)).lookVector*75}) Dmgz(false,v.Humanoid,rn(d[1]*2,d[2]*2.5),v.Torso) wait(0.15) bpp:Remove() end,function(v) ForceBrick(v,fis.Position,100) end) 
MakeCrater(fis.Position+v3(0,2,0),5,7,10) 
end) end 
WormDrill = function(target,sca) q(function() local spiran = rn(-360,360) local slope = {} 
for i=90,-270,-10 do table.insert(slope,cn(target.p)*ca(0,rd(spiran),0)*cn(0,0,30*sca)*ca(rd(i),0,0)*cn(0,0,30*sca)) end 
local mm = it('Model',su) local tr = 0.15 
local worm0 = pa(mm,"","Block",0,60,0,true,true,tr,0,"White") qi({"SpecialMesh",worm0,Scale=v3(9*sca,12*sca,9*sca),MeshType="FileMesh",MeshId="http://www.roblox.com/asset/?id=12137531"}) 
local worm1 = pa(mm,"","Block",10*sca,6*sca,10*sca,true,true,tr,0,"White") it('CylinderMesh',worm1) 
local worm2 = pa(mm,"","Block",9.5*sca,6*sca,9.5*sca,true,true,tr,0,"White") it('CylinderMesh',worm2) 
local worm3 = pa(mm,"","Block",9*sca,6*sca,9*sca,true,true,tr,0,"White") it('CylinderMesh',worm3) 
local worm4 = pa(mm,"","Block",8.5*sca,6*sca,8.5*sca,true,true,tr,0,"White") it('CylinderMesh',worm4) 
local worm5 = pa(mm,"","Block",8*sca,6*sca,8*sca,true,true,tr,0,"White") it('CylinderMesh',worm5) 
local worm6 = pa(mm,"","Block",7.2*sca,6*sca,7.2*sca,true,true,tr,0,"White") qi({"SpecialMesh",worm6,Scale=v3(4*sca,18.5*sca,4*sca),MeshType="FileMesh",MeshId="http://www.roblox.com/asset/?id=1033714"}) 
for i=1,#slope-6 do if i+6 == 10 then MakeCrater(slope[i+6].p+v3(0,10,0),13,9,20) end if i+5 == 27 then local rr = 8*sca GetRegion(slope[i+5].p-v3(rr,rr,rr),slope[i+5].p+v3(rr,rr,rr),function(v) local bpp = qi({"BodyVelocity",v.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(slope[i+5].p,v.Torso.Position+v3(0,2,0)).lookVector*120}) Dmgz(false,v.Humanoid,rn(d[1],d[2])*3.5,v.Torso) wait(0.2) bpp:Remove() end,function(v) ForceBrick(v,slope[i+5].p,150) end) MakeCrater(slope[i+5].p+v3(0,10,0),13,9,20) end 
worm0.CFrame = slope[i+6]*ca(rd(160),0,0)*ca(0,rd(0),0)*cn(0,5*sca,0) worm1.CFrame = slope[i+5] worm2.CFrame = slope[i+4] worm3.CFrame = slope[i+3] worm4.CFrame = slope[i+2] worm5.CFrame = slope[i+1] worm6.CFrame = slope[i]*ca(rd(180),0,0)*cn(0,4*sca,0) wait(0.04) end 
worm0:Remove() worm1:Remove() worm2:Remove() worm3:Remove() worm4:Remove() worm5:Remove() worm6:Remove() 
end) end 
SpawnTornado = function(pos,sc,ski,tyms) q(function() 
local tor = pa(su,"","Block",0,0,0,true,true,1,0,"White") qi({"SpecialMesh",tor,Scale=v3(6.4*sc,8*sc,6.5*sc),MeshType="FileMesh",MeshId=Decs.Tornado}) 
tor.CFrame = pos q(function() for i=1,0.2,-0.1 do tor.Transparency = i wait() end end) 
local zz = 0 local tpos = tor.Position 
q(function() while tor.Parent do zz = zz+1 
tor.CFrame = pos*cn(0,0,-zz/2.6)*ca(0,rd(zz*5),0)*cn(0,0,zz*ski/30)*ca(0,rd(zz*25),0) wait() 
local rr = 7*sc GetRegion(tor.Position-v3(rr,rr,rr),tor.Position+v3(rr,rr,rr),function(v) if v.Torso:findFirstChild("SRP") == nil then local bp = qi({"BodyPosition",v.Torso,Name="SRP",maxForce=v3(1/0,1/0,1/0),position=tor.CFrame*cn(0,0,-11*sc).p}) while tor.Parent do v.Humanoid.PlatformStand=true bp.position=tor.CFrame*cn(0,0,8*sc).p 
if rn(1,6) == 2 then v.Humanoid.Sit = true Dmgz(false,v.Humanoid,rn(1,2),v.Torso) end 
wait() end bp:Remove() local bpp = qi({"BodyVelocity",v.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(v.Torso.Position,to.Position+v3(0,30,0)).lookVector*135}) wait(0.4) bpp:Remove() wait(2.5) v.Humanoid.PlatformStand = false else end end) 
end end) 
wait(tyms) tpos = tor.Position local torm = tor.Mesh.Scale tor:Remove() GlowMesh(false,Decs.Tornado,t,torm*3,'Navy blue',cn(tpos),0.2,1,0.05) 
end) end 
function CrownSwords(pos) q(function() 
local hol = pa(su,"","Block",1,1,1,false,true,0.1,0,"White") qi({"SpecialMesh",hol,MeshType="Sphere"}) 
hol.CFrame = pos for i=1,6 do hol.Size=v3(1,1,i*5) hol.CFrame=pos*cn(0,0,(5*i)/2) wait() end 
for i=1,6 do hol.Size=v3(i*5,1,30) hol.CFrame=pos*cn(0,0,15) wait() end 
local swr = {} for i=1,14 do local swor = pa(su,"","Block",0,0,0,false,true,0.2,0,"White") qi({"SpecialMesh",swor,MeshType="FileMesh",Scale=v3(4,4,4),MeshId=Decs.SplinteredSky,TextureId=Decs.SplinteredSkyT,VertexColor=v3(0,0,0.8)}) ti(swr,swor) end 
local swr2 ={} for i=1,8 do local swor = pa(su,"","Block",0,0,0,false,true,0.2,0,"White") qi({"SpecialMesh",swor,MeshType="FileMesh",Scale=v3(4,4,4),MeshId=Decs.SplinteredSky,TextureId=Decs.SplinteredSkyT,VertexColor=v3(0,0,0.8)}) ti(swr2,swor) end 
local swor = pa(su,"","Block",0,0,0,false,true,0.2,0,"White") qi({"SpecialMesh",swor,MeshType="FileMesh",Scale=v3(10,14,7.5),MeshId=Decs.SplinteredSky,TextureId=Decs.SplinteredSkyT,VertexColor=v3(0,0,0.8)}) 
q(function() for i=1,20 do 
swor.CFrame=hol.CFrame*cn(0,(i*3.5)-5.5,0)*ca(rd(90),0,0) 
wait() end end) 
for i2,v in pairs(swr) do q(function() for i=1,20 do 
v.CFrame=hol.CFrame*ca(0,rd(((360/14)*i2)+i*6),0)*cn(0,(i*0.32)-5.5,10)*ca(rd(-90+(91/20*i)),0,0) 
wait() end FireObj(v,cn(v.Position,v.CFrame*cn(0,0,-2).p),ca(0,0,0),8,20,6,function(h) ProjHit1(v,h,1.2) end,8) end) end 
for i2,v in pairs(swr2) do q(function() for i=1,20 do 
v.CFrame=hol.CFrame*ca(0,rd(((360/8)*i2)+i*-8),0)*cn(0,(i*1)-5.5,6)*ca(rd(-90+(135/20*i)),0,0) 
wait() end FireObj(v,cn(v.Position,v.CFrame*cn(0,0,-2).p),ca(0,0,0),8,20,6,function(h) ProjHit1(v,h,1.2) end,8) end) end for i=1,20 do wait() end local holp = hol.CFrame fade(hol,0.1) 
for i=20*3.5,0,-20*3.5/12 do 
swor.CFrame = hol.CFrame*cn(0,i-1,0)*ca(rd(90),0,0) GlowMesh(false,Decs.Crown,t,v3(5,10,5),'Navy blue',swor.CFrame*ca(rd(-90),0,0),0.1,1,0.1) 
wait() end local rr = 25 GetRegion(holp.p-v3(rr,rr,rr),holp.p+v3(rr,rr,rr),function(v) local bpp = qi({"BodyVelocity",v.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(holp.p,v.Torso.Position).lookVector*120}) Dmgz(false,v.Humanoid,rn(d[1],d[2])*1.8,v.Torso) wait(0.24) bpp:Remove() end,function(v) ForceBrick(v,holp.p,150) end) 
for i=0,7.5,2.5 do GlowMesh(false,Decs.Ring,t,v3(85-i,85-i,60-i),'Navy blue',hol.CFrame*cn(0,3,0)*ca(rd(-90),0,0),0.1,1,0.05) wait(0.1) end 
wait(5) fade(swor,0.02) 
end) end 
function SpawnDeathBlock(pos,rootvel,sc) q(function() 
local bl = pa(su,"","Block",9.5*sc,12*sc,4*sc,true,true,0.05,0,"Really black") local rca = ca(rd(rn(-6,6)),rd(rn(-6,6)),rd(rn(-6,6))) 
local sk = pa(su,"","Block",0,0,0,false,true,0.05,0,"Really black") qi({"SpecialMesh",sk,Scale=v3(2*sc,2*sc,0.8*sc),MeshType="FileMesh",MeshId=Decs.Skull1}) 
bl.Touched:connect(function(v) if v.Parent == c or v.Parent == su or v.Parent:findFirstChild("Humanoid") == nil or v.Parent:findFirstChild("Torso") == nil then return end 
GlowMesh(false,"Sphere",t,v3(12,12,12),'Navy blue',v.CFrame,0.1,1,0.1) 
local bpp = qi({"BodyVelocity",v.Parent.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(rootvel,v.Parent.Torso.Position+v3(0,7.5,0)).lookVector*80}) Dmgz(false,v.Parent.Humanoid,rn(d[1],d[2])*0.2,v.Parent.Torso) wait(0.2) bpp:Remove() 
end) 
for i=0,1,0.1 do bl.CFrame=pos*cn(0,(-5*sc)+(9*i),0)*rca sk.CFrame=bl.CFrame*cn(0,0,-2.1*sc) wait() end 
wait(rn(23,30)) 
for i,v in pairs({{"Navy blue",v3(30,30,30)},{"Really black",v3(20,20,20)}}) do GlowMesh(false,"Sphere",t,v[2],v[1],bl.CFrame,0.1,1,0.1) end 
local rr = 8 GetRegion(bl.Position-v3(rr,rr,rr),bl.Position+v3(rr,rr,rr),function(v) local bpp = qi({"BodyVelocity",v.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(bl.Position,v.Torso.Position).lookVector*80}) Dmgz(false,v.Humanoid,rn(d[1],d[2])*0.5,v.Torso) wait(0.1) bpp:Remove() end,function(v) ForceBrick(v,holp.p,150) end) 
fade(bl,0.1) fade(sk,0.1) 
end) end 
---- TUT01LOL 
han = pa(su,"","Block",0.4,0.4,0.4,false,false,0,0,"White") it('CylinderMesh',han) 
hanw = qi({"Weld",han,Part0=t,Part1=han,C0=cn(0.7,-0.7,0.65)*ca(0,0,rd(45))*ca(0,rd(90),0)}) 
han2 = pa(su,"","Block",0.35,4,0.35,false,false,0,0,"Black") it('CylinderMesh',han2) 
han2w = qi({"Weld",han2,Part0=han,Part1=han2,C0=cn(0,1,0)}) 
han3 = pa(su,"","Block",0,0,0,false,false,0,1,"White") qi({"SpecialMesh",han3,MeshType="Sphere",Scale=v3(0.4,0.4,0.4)*5}) 
han3w = qi({"Weld",han2,Part0=han2,Part1=han3,C0=cn(0,-2,0)}) 
han4 = pa(su,"","Block",0,0,0,false,false,0,0,"Black") qi({"SpecialMesh",han4,MeshType="Sphere",Scale=v3(0.5,0.7,0.2)*5}) 
han4w = qi({"Weld",han2,Part0=han3,Part1=han4,C0=ca(0,rd(90),0)}) 
for i=1,7 do 
des = pa(su,"","Block",0.4,0.2,0.4,false,false,0,0,"White") it('CylinderMesh',des).Scale = v3(1,0.4,1) 
desw = qi({"Weld",han,Part0=han2,Part1=des,C0=cn(0,-0.9+(i/3),0)*ca(rd(rn(-15,15)),0,rd(rn(-15,15)))}) 
end 
for i=0,270,90 do 
des = pa(su,"","Block",0,0,0,false,false,0,0,"") qi({"SpecialMesh",des,MeshType="FileMesh",Scale=v3(0.1,0.4,0.1),MeshId=Decs.Spike}) 
desw = qi({"Weld",han2,Part0=han2,Part1=des,C0=ca(0,rd(i),0)*cn(0,1.8,0.3)*ca(rd(90),0,0)}) 
end 
han5 = pa(su,"","Block",0,0,0,false,false,0,0,"Black") qi({"SpecialMesh",han5,MeshType="Sphere",Scale=v3(0.35,0.6,0.35)*5}) 
han5w = qi({"Weld",han2,Part0=han2,Part1=han5,C0=cn(0,2,0)}) 
han6 = pa(su,"","Wedge",0,0,0,false,false,0,0,"Black") qi({"SpecialMesh",han6,MeshType="Wedge",Scale=v3(0.1,1,0.5)*5}) 
han6w = qi({"Weld",han2,Part0=han2,Part1=han6,C0=cn(0,2.4,0.05)*ca(rd(10),0,0)}) 
han7 = pa(su,"","Block",0,0,0,false,false,0,1,"") qi({"SpecialMesh",han7,MeshType="FileMesh",Scale=v3(0.75,0.75,2),MeshId=Decs.Ring}) 
han7w = qi({"Weld",han2,Part0=han2,Part1=han7,C0=cn(0,2.9,0)*ca(0,rd(90),0)}) 
han8 = pa(su,"","Block",0,0,0,false,false,0.3,0.1,"White") qi({"SpecialMesh",han8,MeshType="Sphere",Scale=v3(0.7,0.7,0.7)*5}) 
han8w = qi({"Weld",han2,Part0=han2,Part1=han8,C0=cn(0,2.9,0)*ca(0,0,0)}) 
han9 = pa(su,"","Block",0,0,0,false,false,0,0,"Institutional white") qi({"SpecialMesh",han9,Scale=v3(0.25,1,0.25),MeshType="FileMesh",MeshId = Decs.Chakram3}) 
han9w = qi({"Weld",han2,Part0=han2,Part1=han9,C0=cn(0,2.9,0)*ca(0,0,rd(90))}) 
q(function() while true do wait(0.035) han9w.C0 = han9w.C0 *ca(0,rd(10),0) end end) 
for i=0,2 do 
des = pa(su,"","Block",0,0,0,false,false,0,0.05,"Really black") qi({"SpecialMesh",des,MeshType="FileMesh",Scale=v3(0.2,1,0.2),MeshId=Decs.Diamond}) 
desw = qi({"Weld",han2,Part0=han2,Part1=des,C0=cn(0,2.1+(i/2.1),0.6+(i/5))*ca(rd(150-(i*30)),0,0)}) 
end 
des = pa(su,"","Block",0,0,0,false,false,0,0.05,"Really black") qi({"SpecialMesh",des,MeshType="FileMesh",Scale=v3(0.2,1,0.2),MeshId=Decs.Diamond}) 
desw = qi({"Weld",han2,Part0=han2,Part1=des,C0=cn(0,3.6,0.7)*ca(rd(50),0,0)}) 
bla = pa(su,"","Wedge",0.2,1,2,false,false,0,1,"") qi({"SpecialMesh",bla,Scale=v3(0.56,1,1),MeshType="Wedge"}) 
blaw = qi({"Weld",han2,Part0=han8,Part1=bla,C0=cn(0,0.5,-1.2)*ca(rd(30),0,0)}) 
bla2 = pa(su,"","Wedge",0.2,0.7,2,false,false,0,1,"") qi({"SpecialMesh",bla2,Scale=v3(0.53,1,1),MeshType="Wedge"}) 
bla2w = qi({"Weld",han2,Part0=bla,Part1=bla2,C0=cn(0,-0.5,-0.75)*ca(rd(-20),0,0)}) 
bla3 = pa(su,"","Wedge",0.2,0.4,2,false,false,0,1,"") qi({"SpecialMesh",bla3,Scale=v3(0.5,1,1),MeshType="Wedge"}) 
bla3w = qi({"Weld",han2,Part0=bla2,Part1=bla3,C0=cn(0,-0.5,-0.75)*ca(rd(-20),0,0)}) 
han10 = pa(su,"","Block",0,0,0,false,false,0,1,"Really black") it('CylinderMesh',han10).Scale = v3(1.2,0.57,1.2) 
han10 = qi({"Weld",han2,Part0=bla,Part1=han10,C0=cn(0,-0.37,1.35)*ca(0,0,rd(90))}) 
han11 = pa(su,"","Block",0.2,0.37,0.7,false,false,0,1,"") it('BlockMesh',han11).Scale = v3(0.48,1,0.9) 
han11 = qi({"Weld",han2,Part0=bla,Part1=han11,C0=cn(0,-0.32,1.3)}) 
--http://www.roblox.com/Knights-of-the-Seventh-Sanctum-Sword-and-Shield-item?id=60357959 
raa = c["Right Arm"] 
laa = c["Left Arm"] 
clawa1 = pa(su,"","Block",0,0,0,false,false,0,0,"Really black") qi({"SpecialMesh",clawa1,MeshType="FileMesh",Scale=v3(0.12,0.8,0.12),MeshId=Decs.Spike}) 
clawa1w = qi({"Weld",han2,Part0=laa,Part1=clawa1,C0=ca(rd(180),0,0)*cn(-0.2,1.25,0)}) 
clawa2 = pa(su,"","Block",0,0,0,false,false,0,0,"Really black") qi({"SpecialMesh",clawa2,MeshType="FileMesh",Scale=v3(0.12,0.8,0.12),MeshId=Decs.Spike}) 
clawa2w = qi({"Weld",han2,Part0=laa,Part1=clawa2,C0=ca(rd(180),0,0)*cn(0.2,1.25,0)}) 
clawb1 = pa(su,"","Block",0,0,0,false,false,0,0.4,"White") qi({"SpecialMesh",clawb1,MeshType="FileMesh",Scale=v3(0.12,0.8,0.12),MeshId=Decs.Spike}) 
clawb1w = qi({"Weld",han2,Part0=clawa1,Part1=clawb1,C0=cn(0,0.15,0)}) 
clawb2 = pa(su,"","Block",0,0,0,false,false,0,0.4,"White") qi({"SpecialMesh",clawb2,MeshType="FileMesh",Scale=v3(0.12,0.8,0.12),MeshId=Decs.Spike}) 
clawb2w = qi({"Weld",han2,Part0=clawa2,Part1=clawb2,C0=cn(0,0.15,0)}) 
badge = pa(su,"","Block",0,0,0,false,false,0,0,"Really red") qi({"SpecialMesh",badge,MeshType="FileMesh",Scale=v3(0.15,1,0.5),MeshId=Decs.Diamond}) 
badgew = qi({"Weld",han2,Part0=laa,Part1=badge,C0=cn(-0.5,0,0)*ca(rd(25),0,0)}) 
badge2 = pa(su,"","Block",0,0,0,false,false,0,0,"Really black") qi({"SpecialMesh",badge2,MeshType="FileMesh",Scale=v3(0.149,1,0.495),MeshId=Decs.Diamond}) 
badge2w = qi({"Weld",han2,Part0=badge,Part1=badge2}) 
ef = pa(su,"","Block",0,0,0,false,true,1,1,"Black") qi({"SpecialMesh",ef,MeshType="FileMesh",Scale=v3(7,7,4),MeshId=Decs.Chakram2}) 
--efw = qi({"Weld",han2,Part0=t,Part1=ef,C0=cn(0,-2.9,0)*ca(rd(90),0,0)}) 
db1 = pa(su,"","Block",0,0,0,false,false,1,0,"White") qi({"SpecialMesh",db1,MeshType="Sphere",Scale=v3(1,1,1)*5}) 
db1w = qi({"Weld",han2,Part0=laa,Part1=db1,C0=cn(0,-2,0)}) 
db2 = pa(su,"","Block",0,0,0,false,false,1,0.1,"White") qi({"SpecialMesh",db2,MeshType="Sphere",Scale=v3(1.2,1.2,1.2)*5}) 
db2w = qi({"Weld",han2,Part0=db1,Part1=db2,C0=cn(0,0,0)}) 
local ebs = false 
function eb(wutarm,aa,siz) if not siz then siz = 1 end q(function() db1.Mesh.Scale=v3(siz,siz,siz)*5 db1w.Part0 = wutarm db1w.C0 = cn(0,-1+(-siz/1.25),0) if not ebs then ebs = true 
if aa then db1.Transparency = 0.1 else for i=1,0.1,-0.1 do db1.Transparency = i wait() end end 
else 
ebs = false if aa then db1.Transparency = 1 else for i=0.1,1,0.1 do db1.Transparency = i wait() end end 
end end) end 
local efm = ef.Mesh.Scale 
function e(aa) if aa ~= nil then ef.Mesh.Scale=efm*aa else ef.Mesh.Scale=efm end if ef.Transparency < 0.4 then 
for i=0.3,1,0.1 do ef.Transparency = i wait() end 
else 
q(function() for i=1,0.3,-0.1 do ef.Transparency = i wait() end end) 
end end 
q(function() while true do if ebs then for i=0.4,0.7,0.025 do local tra = (i+0.15)*(db1.Mesh.Scale.x/4) db2.Transparency =i wait() db2.Mesh.Scale=db1.Mesh.Scale*1.2+v3(tra*(db1.Mesh.Scale.x/5),tra*(db1.Mesh.Scale.x/5),tra*(db1.Mesh.Scale.x/5)) end 
for i=0.7,0.4,-0.025 do local tra = (i+0.15)*(db1.Mesh.Scale.x/4) db2.Transparency =i db2.Mesh.Scale=db1.Mesh.Scale*1.2+v3(tra*(db1.Mesh.Scale.x/5),tra*(db1.Mesh.Scale.x/5),tra*(db1.Mesh.Scale.x/5)) wait() end else db2.Transparency = 1 db2.Mesh.Scale = v3(1.2,1.2,1.2)*5 end wait() end end) 
q(function() while true do for i=0,1,0.05 do badge.Transparency = i wait() end badge.Transparency = 1 wait(1) for i=1,0,-0.05 do badge.Transparency = i wait() end wait(4) end end) 
sho = pa(su,"","Block",0,0,0,false,false,0,0,"Black") qi({"SpecialMesh",sho,Scale=v3(1.1,1.1,1.1)*5,MeshType="Wedge"}) 
show = qi({"Weld",han2,Part0=raa,Part1=sho,C0=cn(0,0.545,0)*ca(rd(180),rd(90),0)}) 
chak = pa(su,"","Block",0,0,0,false,false,0,0,"") qi({"SpecialMesh",chak,Scale=v3(0.09,0.09,0.24)*5,MeshType="FileMesh",MeshId=Decs.Chakram}) 
chakw = qi({"Weld",han2,Part0=raa,Part1=chak,C0=cn(0.56,0.5,0)*ca(0,rd(-90),0)}) 
chak2 = pa(su,"","Block",0,0,0,false,false,0.1,0.1,"White") qi({"SpecialMesh",chak2,Scale=v3(0.15,0.15,0.05)*5,MeshType="FileMesh",MeshId=Decs.Chakram2}) 
chak2w = qi({"Weld",han2,Part0=raa,Part1=chak2,C0=cn(0.56,0.5,0)*ca(0,rd(-90),0)}) 
local efww = 0 
q(function() while true do wait() if FindGround(to.CFrame) then efww = efww+25 ef.CFrame = FindGround(to.CFrame)*ca(0,rd(efww),0)*ca(rd(90),0,0) else ef.CFrame=cn(10000,10000,10000) end end end) 
q(function() while true do wait(0.035) chak2w.C0 = chak2w.C0*ca(0,0,rd(25)) end end) 
---- TUT02LOL 
function Act(k,kb) 
if kb then 
if k == "e" and Anim=="None" then 
Anim = "SpawnSwords" Armz(false) e() eb(raa) fac = true 
c2(law,spd,3,-1.5,1,0,30,0,30) c2(tw,spd,3,0,0,0,0,-95,0) c2(hw,spd,3,0,1.5,0,0,95,0) 
c1(raw,spd,3,1,0.5,0,0,0,-80) c2(raw,spd,3,1,0.4,0,0,0,-140) for i=1,5 do SpawnSword(FindGround(to.CFrame*cn(0,-2.75,-0.5+(-i*8)-i)),1+(i/10),15,"Navy blue") wait(0.06) end 
eb(raa) fac = false wait(0.2) e() c2(law,spd,3,-1.5,1,0,0,0,0) c2(hw,spd,3,0,1.5,0,0,0,0) c2(tw,spd,3,0,0,0,0,0,0) c1(raw,spd,3,1.5,1,0,0,0,0) Armz(true) 
Anim = "None" 
elseif k == "q" and Anim=="None" then 
Anim = "GravGrab" Armz(false) e() eb(laa) caw = false 
c2(raw,spd,3,1.5,1,0,30,0,20) c2(tw,spd,3,0,0,0,0,95,0) c2(hw,spd,3,0,1.5,0,0,-95,0) 
c1(law,spd,3,-1,0.5,0,0,0,130) SpikeSucker(to.CFrame*cn(0,5,-6),1) eb(laa) hanw.Part0 = raa hanw.C0 = cn(-0.1,-1.1,0)*ca(0,0,rd(75)) hanw.C1=ca(0,rd(-105),0) 
c2(law,spd,3,-1,0.5,0,45,0,90) c2(hw,spd,3,0,1.5,0,0,90,0) c2(tw,spd,3,0,0,0,0,-90,0) c2(hanw,spd,0,-0.1,-2.2,0,0,90,170) 
Trail(bla3,15,0,"White",0.65,cn(0,-0.2,-1)) rayHit(0.6,1,ra,ca(rd(-90),0,0),8,1.3) 
c1(raw,spd,3,1.3,0.5,0,-30,0,-135) wait(0.5) c2(hanw,spd,0,-0.1,-1.1,0,0,0,75) 
caw = true c2(hw,spd,3,0,1.5,0,0,0,0) c2(tw,spd,3,0,0,0,0,0,0) c2(law,spd,3,-1.5,1,0,0,0,0) c1(raw,spd,3,1.5,1,0,30,3,20) hanw.Part0 = t hanw.C1=ca(0,0,0) hanw.C0=cn(0.7,-0.7,0.65)*ca(0,0,rd(45))*ca(0,rd(90),0) c1(raw,spd,3,1.5,1,0,0,0,0) 
e() Anim = "None" Armz(true) 
elseif k == "z" and Anim=="None" then 
Anim = "Blackspace" Armz(false) Legz(false) caw = false 
c2(raw,spd,3,1.5,1,0,20,0,-20) c2(law,spd,3,-1.5,1,0,20,0,20) c2(rlw,spd,3,0.5,-1,0,20,0,-20) c2(llw,spd,3,-0.5,-1,0,20,0,20) c1(tw,spd*0.5,3,0,7,0,0,0,0) Blackspace(t.CFrame,40,3) 
c2(raw,spd,3,1.5,1,0,0,0,0) c2(law,spd,3,-1.5,1,0,0,0,0) c2(rlw,spd,3,0.5,-1,0,0,0,0) c2(llw,spd,3,-0.5,-1,0,0,0,0) c1(tw,spd,3,0,0,0,0,0,0) Anim = "None" Armz(true) Legz(true) caw = true 
elseif k == "g" and Anim=="None" then 
Anim = "MatterBall" e() Armz(false) fac = true 
c2(tw,spd*1.3,3,0,0,0,0,-90,0) c2(hw,spd*1.3,3,0,1.5,0,0,90,0) c1(law,spd*1.3,3,-1,0.5,0,50,0,90-math.deg((to.Position - mouse.hit.p).unit.y)) 
eb(laa,nil,3) wait(0.3) 
c2(tw,spd*1.55,3,0,0,0,0,70,0) c2(hw,spd*1.55,3,0,1.5,0,0,-70,0) c1(law,spd*1.55,3,-1,0.5,0,-20,0,90-math.deg((to.Position - mouse.hit.p).unit.y)) eb(laa,true,2) MatterBall(cn(db1.Position,la.CFrame*cn(0,-20,0).p),3,5,30,1.5) 
fac = false c2(tw,spd*1.3,3,0,0,0,0,0,0) c2(hw,spd*1.3,3,0,1.5,0,0,0,0) c1(law,spd*1.3,3,-1.5,1,0,0,0,0) e() Armz(true) wait(0.1) Anim = "None" 
elseif k == "r" and Anim=="None" then 
Anim = "Block" Armz(false) fac = true 
c2(tw,spd,3,0,0,0,0,-65,0) c2(hw,spd,3,0,1.5,0,0,65,0) c1(raw,spd,3,1.5,0.5,0.2,-100,-25,-5) c2(law,spd,3,-1.3,1,0.2,20,0,20) 
local spm = chak2.Mesh.Scale for i=1,11,1 do chak2.Reflectance = i/40 chak2.Mesh.Scale = spm*i wait() end 
block.Value = true repeat wait(0.4) GlowMesh(true,chak2.Mesh.MeshId,chak2,chak2.Mesh.Scale*1.5,'White',cn(0,0,0),chak2.Transparency,1,0.025) until not ky[k] for i=11,1,-1 do chak2.Reflectance = i/40 chak2.Mesh.Scale = spm*i wait() end chak2.Reflectance = 0 
block.Value = false c2(tw,spd*1.3,3,0,0,0,0,0,0) c2(hw,spd*1.3,3,0,1.5,0,0,0,0) c2(law,spd*1.3,3,-1.5,1,0,0,0,0) c1(raw,spd*1.3,3,1.5,1,0,0,0,0) Armz(true) fac = false Anim = "None" 
elseif k == "v" and Anim=="None" then 
Anim = "RakeFist" Armz(false) fac = true 
c1(raw,spd*1.5,3,1.5,0.5,0,-340/2,0,40) c1(raw,spd*1.5,3,1.5,0.5,0,-340,0,25) hanw.Part0 = raa hanw.C0 = cn(-0.1,-1.1,0)*ca(0,0,rd(75)) hanw.C1=ca(0,rd(-105),0) 
if (to.Position - mouse.hit.p).magnitude < 125 then c2(hanw,spd*1.5,0,-0.1,-1.2,0,0,-30,100) c1(raw,spd*1.5,3,1.5,0.5,0,-135,-60,0) wait(0.2) FistBoom(cn(to.CFrame*cn(-1.5,1.5,-4).p,to.CFrame*cn(-1.5,1.5,-5).p),1,rn(d[1]*2,d[2]*2),(to.Position-v3(mouse.hit.p.x,to.Position.y,mouse.hit.p.z)).magnitude-10) fac = false c1(raw,spd,3,1,0.5,0,-50,70,0) end fac = false 
wait(0.2) c2(hanw,spd*0.7,0,-0.1,-1.2,0,0,0,70) c1(raw,spd,3,1.5,0.5,0,-340/2,0,40) c1(raw,spd,3,1.5,0.5,0,-340,0,25) hanw.Part0 = t hanw.C1=ca(0,0.5,0) hanw.C0=cn(0.7,-0.7,0.65)*ca(0,0,rd(45))*ca(0,rd(90),0) 
c1(raw,spd*0.8,3,1.5,1,0,0,0,0) Armz(true) Anim = "None" 
elseif k=="h" and Anim=="None" then 
Anim = "Worm" Armz(false) e(3) fac = true caw = false 
c2(tw,spd,3,0,0,0,0,-90,0) c2(hw,spd,3,0,1.5,0,0,90,0) c1(raw,spd*1.5,3,1.5,0.5,0,-340/2,0,40) c1(raw,spd*1.5,3,1.5,0.5,0,-340,0,25) hanw.Part0 = raa hanw.C0 = cn(-0.1,-1.1,0)*ca(0,0,rd(75)) hanw.C1=ca(0,rd(-105),0) 
c2(hanw,spd,0,-0.1,-1.5,0,0,0,180) c1(raw,spd,3,1,0.5,0,-180,0,-30) c1(raw,spd,3,1,0.5,0,0,0,-90) 
local tpos = mouse.hit.p if (tpos - bla2.Position).magnitude < 350 then q(function() local to = pa(su,"","Block",2,1,2,false,true,0.1,0,"White") it('CylinderMesh',to) local to2 = pa(su,"","Block",0,0,0,false,true,0.1,0,"White") qi({"SpecialMesh",to2,Scale=v3(2,2,2),MeshType="FileMesh",MeshId=Decs.Totem}) 
for i=1,5,0.5 do to.Size=v3(2,i,2) to.CFrame=cn(tpos+v3(0,i/2,0)) to2.CFrame = to.CFrame*cn(0,(i/2)+1,0) wait() end wait(3.5) for i=0.2,1,0.1 do to.Transparency = i to2.Transparency = i wait() end to:Remove() to2:Remove() end) 
for i=1,8 do Lightning(bla2.Position,tpos,math.floor((bla2.Position-tpos).magnitude/18)+1,1.5,"White",0.3,0) wait(0.04) end fac = false 
caw = true q(function() wait(1) WormDrill(cn(tpos),rn(25,30)/10) end) c1(law,spd,3,-1.5,0.25,0,0,0,180) q(function() local to = pa(su,"","Block",1.5,1.5,1.5,false,true,0.1,0,"White") qi({"SpecialMesh",to,MeshType="Sphere"}) for i=1,15,1 do to.Size=v3(1.5,i*2,1.5) to.CFrame=la.CFrame*cn(0,-2+(-i),0) wait() end GlowMesh(false,"Sphere",t,v3(35,35,35),'Navy blue',la.CFrame*cn(0,-32,0),0.1,1,0.1) fade(to,0.1) end) 
end fac = false caw = true c2(hanw,spd*0.7,0,-0.1,-1.2,0,0,0,70) c1(raw,spd,3,1.5,0.5,0,-340/2,0,40) c1(raw,spd,3,1.5,0.5,0,-340,0,25) hanw.Part0 = t hanw.C1=ca(0,0,0) hanw.C0=cn(0.7,-0.7,0.65)*ca(0,0,rd(45))*ca(0,rd(90),0) 
c2(tw,spd,3,0,0,0,0,0,0) c2(hw,spd,3,0,1.5,0,0,0,0) c2(law,spd*0.8,3,-1.5,1,0,0,0,0) c1(raw,spd*0.8,3,1.5,1,0,0,0,0) Armz(true) e(3) Anim = "None" 
elseif k == "y" and Anim == "None" then 
Anim = "Whirlwind" Armz(false) e() fac = true 
c1(raw,spd*1.5,3,1.5,0.5,0,-340/2,0,40) c1(raw,spd*1.5,3,1.5,0.5,0,-340,0,25) hanw.Part0 = raa hanw.C0 = cn(-0.1,-1.1,0)*ca(0,0,rd(75)) hanw.C1=ca(0,rd(-105),0) 
c2(hanw,spd,0,-0.1,-1.2,0,0,0,90) c2(hanw,spd,1,0,0,0,0,0,0) c1(raw,spd,3,1,0.5,0,-180,0,0) wait(0.1) 
local to = pa(su,"","Block",0,0,0,false,false,0.2,0,"White") it('CylinderMesh',to).Scale=v3(9,0.2,9)*5 local tom = qi({"Weld",to,Part0=ra,Part1=to}) 
q(function() for i=1,40 do if i == 20 then for hax=-50,50,25 do SpawnTornado(t.CFrame*cn(0,3,0)*ca(0,rd(hax),0),1,1.2,6) end end tom.C0 = cn(0,-2.3,0)*ca(rd(rn(-8,8)),0,rd(rn(-8,8))) wait() end fade(to,0.1) end) c1(hanw,spd*0.3,1,0,0,0,360*5,0,0) cleanweld(hanw,"a1") 
c2(hanw,spd*0.7,0,-0.1,-1.2,0,0,0,70) c1(raw,spd,3,1.5,0.5,0,-340/2,0,40) c1(raw,spd,3,1.5,0.5,0,-340,0,25) hanw.Part0 = t hanw.C1=ca(0,0,0) hanw.C0=cn(0.7,-0.7,0.65)*ca(0,0,rd(45))*ca(0,rd(90),0) 
c1(raw,spd,3,1.5,1,0,0,0,0) Armz(true) e() fac = false Anim ="None" 
elseif k == "n" and Anim=="None" then 
Anim = "CrownSwords" Armz(false) Legz(false) e() caw = false c2(tw,spd,3,0,5,2,-20,0,0) c2(llw,spd,3,-0.5,-1,0,20,0,20) c2(rlw,spd,3,0.5,-1,0,20,0,-20) 
c1(raw,spd*1.5,3,1.5,0.5,0,-340/2,0,40) c1(raw,spd*1.5,3,1.5,0.5,0,-340,0,25) hanw.Part0 = raa hanw.C0 = cn(-0.1,-1.1,0)*ca(0,0,rd(75)) hanw.C1=ca(0,rd(-105),0) 
c2(hanw,spd,0,-0.1,-1.2,0,40,0,205) c2(hanw,spd,1,0,0,0,0,-180,0) c2(raw,spd,3,1,0.5,-0.5,-135,-25,0) c1(law,spd,3,-1,0.5,-0.5,-135,25,0) wait(0.15) 
c2(raw,spd,3,1,0.5,-0.5,-70,-25,0) c2(law,spd,3,-1,0.5,-0.5,-70,25,0) c1(tw,spd,3,0,0,0,30,0,0) wait(0.2) GlowMesh(false,"Sphere",t,v3(9,15,12),'Navy blue',to.CFrame,0.1,1,0.05) CrownSwords(to.CFrame*cn(0,-2.5,-3)) to.CFrame = to.CFrame*cn(0,0,30) GlowMesh(false,"Sphere",t,v3(9,15,12),'Navy blue',to.CFrame,0.1,1,0.05) 
wait(0.2) e() c2(tw,spd,3,0,0,0,0,0,0) c2(llw,spd,3,-0.5,-1,0,0,0,0) c2(rlw,spd,3,0.5,-1,0,0,0,0) c2(hanw,spd*0.7,0,-0.1,-1.2,0,0,0,70) c1(raw,spd,3,1.5,0.5,0,-340/2,0,40) c1(raw,spd,3,1.5,0.5,0,-340,0,25) hanw.Part0 = t hanw.C1=ca(0,0,0) hanw.C0=cn(0.7,-0.7,0.65)*ca(0,0,rd(45))*ca(0,rd(90),0) 
c1(law,spd,3,-1.5,1,0,0,0,0) c1(raw,spd,3,1.5,1,0,0,0,0) Legz(true) Armz(true) caw = true Anim ="None" 
elseif k == "b" and Anim=="None" then 
Anim = "DeathWall" Armz(false) e() caw = false 
c1(raw,spd*1.5,3,1.5,0.5,0,-340/2,0,40) c1(raw,spd*1.5,3,1.5,0.5,0,-340,0,25) hanw.Part0 = raa hanw.C0 = cn(-0.1,-1.1,0)*ca(0,0,rd(75)) hanw.C1=ca(0,rd(-105),0) 
c2(hanw,spd,0,-0.1,-1.2,0,40,0,190) c2(hanw,spd,1,0,0,0,0,-180,0) c2(raw,spd,3,1,0.5,-0.5,-135,-25,0) c1(law,spd,3,-1,0.5,-0.5,-135,25,0) wait(0.15) 
c2(raw,spd*1.4,3,1,0.5,-0.5,-45,-25,0) c1(law,spd*1.4,3,-1,0.5,-0.5,-45,25,0) GlowMesh(false,"Sphere",t,v3(15,1,15),'Navy blue',to.CFrame*cn(0,-2.8,-5.5),0.1,1,0.03) 
wait(0.2) for i=0,300,60 do SpawnDeathBlock(to.CFrame*ca(0,rd(i),0)*cn(0,-2.8,-10),to.Position,1) wait() end 
wait(0.2) e() c2(tw,spd,3,0,0,0,0,0,0) c2(llw,spd,3,-0.5,-1,0,0,0,0) c2(rlw,spd,3,0.5,-1,0,0,0,0) c2(hanw,spd*0.7,0,-0.1,-1.2,0,0,0,70) c1(raw,spd,3,1.5,0.5,0,-340/2,0,40) c1(raw,spd,3,1.5,0.5,0,-340,0,25) hanw.Part0 = t hanw.C1=ca(0,0,0) hanw.C0=cn(0.7,-0.7,0.65)*ca(0,0,rd(45))*ca(0,rd(90),0) 
c1(law,spd,3,-1.5,1,0,0,0,0) c1(raw,spd,3,1.5,1,0,0,0,0) Armz(true) caw = true Anim ="None" 
elseif k == "f" and Anim=="None" then 
Anim = "RapidKick" Legz(false) 
c1(tw,spd,3,0,-0.5,0,-90,0,90) local lo = {-1,-1.6} local ty = 0 ws(25) 
c1(tw,0.013,3,0,-0.5,0,-90,0,90+(360*5),function() ty=ty+1 local tz = 35 if lo[1] == -1 then lo = {-1.6,-1} else lo = {-1,-1.6} end 
c2(llw,1,3,-0.5,lo[1],0,rn(-tz,tz),0,rn(-tz,tz)) 
c2(rlw,1,3,0.5,lo[2],0,rn(-tz,tz),0,rn(-tz,tz)) 
local tst = ll if rn(1,2) == 1 then tst = rl end 
local das = pa(su,"","Block",1.5,2.5,1.5,false,true,0.1,0,"White") qi({"SpecialMesh",das,MeshType="Sphere"}) 
das.CFrame=tst.CFrame*cn(0,-4,0) fade(das,0.2) 
if ty%3== 0 then hu:MoveTo(to.CFrame*cn(0,0,-5).p,to) local rr = 2 GetRegion(to.CFrame*cn(0,0,-3).p-v3(rr,rr,rr),to.CFrame*cn(0,0,-3).p+v3(rr,rr,rr),function(v) Dmgz(false,v.Humanoid,rn(d[1],d[2])*0.2,v.Torso) end) end 
if ty%6==0 then GlowMesh(false,Decs.Crown,t,v3(3,6,3),'Navy blue',to.CFrame*cn(0,0,3)*ca(rd(90),0,0),0.1,1,0.05) end 
end) ws(16) 
c2(llw,1,3,-0.5,-1,0,0,0,0) c2(rlw,1,3,0.5,-1,0,0,0,0) c1(tw,spd,3,0,0,0,0,0,360*5) cleanweld(tw,"a1") Legz(true) Anim="None" 
end 
else 
if k == "q" then 
end -- q end 
end -- l end 
end -- func end 
local pla = pa(su,"","Block",7,1,7,true,true,1,0,"White") 
function ButtonDown() if Anim~="None" then return end 
to.Velocity=v3(0,0,0) if hu.Jump then GlowMesh(false,"Sphere",t,v3(8,2,8),'White',to.CFrame*cn(0,-2,0),0.1,1,0.05) GlowMesh(false,Decs.Crown,t,v3(5,3,5),'White',to.CFrame*cn(0,-1.5,0)*ca(rd(180),0,0),0.1,1,0.05) to.CFrame=to.CFrame*cn(0,20,0) 
hu.Jump=false GlowMesh(false,"Sphere",t,v3(8,2,8),'Navy blue',to.CFrame*cn(0,-4,0),0.1,1,0.05) 
else GlowMesh(false,"Sphere",t,v3(8,10,2),'Navy blue',to.CFrame,0.1,1,0.05) 
GlowMesh(false,Decs.Crown,t,v3(5,3,5),'Navy blue',to.CFrame*cn(0,0,1)*ca(rd(90),0,0),0.1,1,0.05) to.CFrame=to.CFrame*cn(0,0,-12) GlowMesh(false,"Sphere",t,v3(8,10,2),'White',to.CFrame*cn(0,0,1),0.1,1,0.05) end 
pla.CFrame= to.CFrame*cn(0,-3.4,0) local orpos = pla.Position repeat wait(0.5) GlowMesh(false,"Sphere",t,v3(14,1,14),'Navy blue',cn(orpos)*cn(0,0.5,0),0.1,1,0.02) until pla.Position~=orpos or (pla.Position-to.Position).magnitude>10 
to.Velocity=v3(0,0,0) 
end 
pl.Chatted:connect(function(ms) local m = ms:lower() if su.Parent == nil then return end 
if m=="tkon" then tk = true 
elseif m=="tkoff" then tk = false 
elseif m == "rake" and Anim=="None" then Anim = "Special" 
for i=1,8 do FistBoom(to.CFrame*ca(0,rd((360/8)*i),0)*cn(0,3,-6),1.5,rn(d[1]*2,d[2]*2),15) end wait(2) Anim="None" 
elseif m == "torn" and Anim=="None" then Anim = "Special" 
for i=1,10 do SpawnTornado(t.CFrame*cn(0,3,0)*ca(0,rd((360/10)*i),0)*cn(0,0,-2.5),1.5,1.5,8) end Anim = "None" 
elseif m == "blast" and Anim=="None" then Anim = "Special" 
for i=1,10 do MatterBall(to.CFrame*ca(0,rd((360/10)*i),0)*cn(0,1.5,-2.5),6,5,30,1.5) end Anim = "None" 
elseif m:sub(1,2) == "s/" then q(function() loadstring(ms:sub(3))() end) 
end end) 
bin = it("HopperBin",nil) --bin = it("Tool") it("Part",bin).Name = "Handle" 
bin.TextureId="http://www.roblox.com/asset/?id=71521159" 
bin.Parent=bp 
bin.Name = sn 
---- TUT03LOL 
bin.Selected:connect(function(mouse2) mouse = mouse2 
mouse.KeyDown:connect(function(k) ky[k:lower()] = true 
Act(k:lower(),true) end) 
mouse.KeyUp:connect(function(k) ky[k:lower()] = false 
Act(k:lower(),false) end) 
mouse.Button1Down:connect(function() ButtonDown() end) 
end) 
---- TUT04LOL 
bin.Deselected:connect(function() 
end) 
--bin.Parent = c 
fac = false local bgg = it('BodyGyro',to) 
---- TUT05LOL 
q(function() while wait() do 
if caw then hu.WalkSpeed = wss else hu.WalkSpeed = 0 end 
if fac then bgg.maxTorque = v3(1/0,1/0,1/0) bgg.D = 50 bgg.cframe = cn(to.Position,v3(mouse.hit.p.x,to.Position.y,mouse.hit.p.z)) else bgg.maxTorque = v3(0,0,0) end 
end end) 
wait(math.huge) 

end}

 
 

module[1] = {"Scython's Blades",function()


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
attack = false 
attackdebounce = false 
combo = 0 
mana = 400
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
charging=false
sheathed=false
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 
 
if Character:findFirstChild("Scython's Blades",true) ~= nil then 
Character:findFirstChild("Scython's Blades",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("manaGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("manaGUI",true).Parent = nil 
end 
 
local gairo = Instance.new("BodyGyro") 
gairo.Parent = nil 
 
local modelzorz = Instance.new("Model") 
modelzorz.Name = "Scython's Blades" 
modelzorz.Parent = Character 
 
local prt1 = Instance.new("Part") 
prt1.formFactor = 1 
prt1.Parent = modelzorz 
prt1.CanCollide = false 
prt1.BrickColor = BrickColor.new("Dark stone grey") 
prt1.Name = "Handle1" 
prt1.Size = Vector3.new(1,1,1) 
prt1.Position = Torso.Position 
local prt2 = Instance.new("Part") 
prt2.formFactor = 1 
prt2.Parent = modelzorz 
prt2.CanCollide = false 
prt2.BrickColor = BrickColor.new("Really black") 
prt2.Name = "Handle2" 
prt2.Size = Vector3.new(1,1,1) 
prt2.Position = Torso.Position 
local prt3 = Instance.new("Part") 
prt3.formFactor = 1 
prt3.Parent = modelzorz 
prt3.CanCollide = false 
prt3.BrickColor = BrickColor.new("Dark grey") 
prt3.Name = "Handle3" 
prt3.Size = Vector3.new(1,1,1) 
prt3.Position = Torso.Position 
local prt4 = Instance.new("Part") 
prt4.formFactor = 1 
prt4.Parent = modelzorz 
prt4.CanCollide = false 
prt4.BrickColor = BrickColor.new("Black") 
prt4.Name = "Blade1" 
prt4.Reflectance = 0.3 
prt4.Size = Vector3.new(1,2,1) 
prt4.Position = Torso.Position 
local prt5 = Instance.new("Part") 
prt5.formFactor = 1 
prt5.Parent = modelzorz 
prt5.CanCollide = false 
prt5.BrickColor = BrickColor.new("Black") 
prt5.Name = "Blade2" 
prt5.Reflectance = 0.3 
prt5.Size = Vector3.new(1,1,1) 
prt5.Position = Torso.Position 
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local prt11 = Instance.new("Part") 
prt11.formFactor = 1 
prt11.Parent = modelzorz 
prt11.CanCollide = false 
prt11.BrickColor = BrickColor.new("Dark stone grey") 
prt11.Name = "Handle11" 
prt11.Size = Vector3.new(1,1,1) 
prt11.Position = Torso.Position 
local prt12 = Instance.new("Part") 
prt12.formFactor = 1 
prt12.Parent = modelzorz 
prt12.CanCollide = false 
prt12.BrickColor = BrickColor.new("Really black") 
prt12.Name = "Handle12" 
prt12.Size = Vector3.new(1,1,1) 
prt12.Position = Torso.Position 
local prt13 = Instance.new("Part") 
prt13.formFactor = 1 
prt13.Parent = modelzorz 
prt13.CanCollide = false 
prt13.BrickColor = BrickColor.new("Dark grey") 
prt13.Name = "Handle13" 
prt13.Size = Vector3.new(1,1,1) 
prt13.Position = Torso.Position 
local prt14 = Instance.new("Part") 
prt14.formFactor = 1 
prt14.Parent = modelzorz 
prt14.CanCollide = false 
prt14.BrickColor = BrickColor.new("Black") 
prt14.Name = "Blade11" 
prt14.Reflectance = 0.3 
prt14.Size = Vector3.new(1,2,1) 
prt14.Position = Torso.Position 
local prt15 = Instance.new("Part") 
prt15.formFactor = 1 
prt15.Parent = modelzorz 
prt15.CanCollide = false 
prt15.BrickColor = BrickColor.new("Black") 
prt15.Name = "Blade12" 
prt15.Reflectance = 0.3 
prt15.Size = Vector3.new(1,1,1) 
prt15.Position = Torso.Position 
modelzorz:BreakJoints()
 
local msh1 = Instance.new("CylinderMesh") 
msh1.Parent = prt1 
msh1.Scale = Vector3.new(0.2,0.4,0.5) 
local msh2 = Instance.new("CylinderMesh") 
msh2.Parent = prt2 
msh2.Scale = Vector3.new(0.24,0.1,0.5) 
local msh3 = Instance.new("BlockMesh") 
msh3.Parent = prt3 
msh3.Scale = Vector3.new(0.16,0.2,0.35) 
local msh4 = Instance.new("BlockMesh") 
msh4.Parent = prt4 
msh4.Scale = Vector3.new(0.1,0.5,0.2) 
local msh5 = Instance.new("SpecialMesh") 
msh5.Parent = prt5 
msh5.MeshType = "Wedge" 
msh5.Scale = Vector3.new(0.1,0.5,0.2) 
local msh11 = Instance.new("CylinderMesh") 
msh11.Parent = prt11 
msh11.Scale = Vector3.new(0.2,0.4,0.5) 
local msh12 = Instance.new("CylinderMesh") 
msh12.Parent = prt12 
msh12.Scale = Vector3.new(0.24,0.1,0.5) 
local msh13 = Instance.new("BlockMesh") 
msh13.Parent = prt13 
msh13.Scale = Vector3.new(0.16,0.2,0.35) 
local msh14 = Instance.new("BlockMesh") 
msh14.Parent = prt14 
msh14.Scale = Vector3.new(0.1,0.5,0.2) 
local msh15 = Instance.new("SpecialMesh") 
msh15.Parent = prt15 
msh15.MeshType = "Wedge" 
msh15.Scale = Vector3.new(0.1,0.5,0.2) 
 
local wld1 = Instance.new("Weld") 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,1.57,-0.8) * CFrame.new(1.2,-1.3,-0.5) 
local wld2 = Instance.new("Weld") 
wld2.Parent = prt2 
wld2.Part0 = prt2 
wld2.Part1 = prt1 
wld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.3,0) 
local wld3 = Instance.new("Weld") 
wld3.Parent = prt3 
wld3.Part0 = prt3 
wld3.Part1 = prt1 
wld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.3,0) 
local wld4 = Instance.new("Weld") 
wld4.Parent = prt4 
wld4.Part0 = prt4 
wld4.Part1 = prt3 
wld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.5,0) 
local wld5 = Instance.new("Weld") 
wld5.Parent = prt5 
wld5.Part0 = prt5 
wld5.Part1 = prt4 
wld5.C0 = CFrame.fromEulerAnglesXYZ(3.14,3.14,0) * CFrame.new(0,0.9,0) 
local wld11 = Instance.new("Weld") 
wld11.Parent = prt11 
wld11.Part0 = prt11 
wld11.Part1 = Torso 
wld11.C0 = CFrame.fromEulerAnglesXYZ(0,1.57,0.8) * CFrame.new(-1.2,-1.3,-0.5) 
local wld12 = Instance.new("Weld") 
wld12.Parent = prt12 
wld12.Part0 = prt12 
wld12.Part1 = prt11 
wld12.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.3,0) 
local wld13 = Instance.new("Weld") 
wld13.Parent = prt13 
wld13.Part0 = prt13 
wld13.Part1 = prt11 
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.3,0) 
local wld14 = Instance.new("Weld") 
wld14.Parent = prt14 
wld14.Part0 = prt14 
wld14.Part1 = prt13 
wld14.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.5,0) 
local wld15 = Instance.new("Weld") 
wld15.Parent = prt15 
wld15.Part0 = prt15 
wld15.Part1 = prt14 
wld15.C0 = CFrame.fromEulerAnglesXYZ(3.14,3.14,0) * CFrame.new(0,0.9,0) 
 
local SlashSound = Instance.new("Sound") -- PRELOADING SOUNDS TROLOLOL 
--SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209645" 
SlashSound.Parent = modelzorz 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=3264793" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
 
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
fentext2.BackgroundColor3 = Color3.new(0,0,0) 
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
Tool.Name = "Scython's Blades" 
script.Parent = Tool 
end 
Bin = Tool
 
function hideanim() 
sheathed=false
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.1-0.6*i,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(-1.57,1-1+1*i,1.57-1.57*i) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(-1.57,-1+1-1*i,1.57-1.57*i) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
equipsound(1) 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,1.57,-0.8) * CFrame.new(1.2,-1.3,-0.5) 
wld11.Part1 = Torso 
wld11.C0 = CFrame.fromEulerAnglesXYZ(0,1.57,0.8) * CFrame.new(-1.2,-1.3,-0.5) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4-4*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4-4*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end 
 
function equipanim() 
sheathed=true
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
equipsound(1) 
wld1.Part1 = LeftArm 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1,0) * CFrame.new(0,1,0) 
wld11.Part1 = RightArm 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1,0) * CFrame.new(0,1,0) 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,1-1*i,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+1*i,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4-4.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(4-4.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
wait(0.1) 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0.3*i,-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,-0.3*i,0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end 
 
function onehit() 
attack=true 
ss(1.1) 
con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,5,10) end) 
local LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
for i = 0,1,0.2 do 
wait() 
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
LastPoint = Point
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2*i,0.3-(0.3+1.57*i),-0.3+0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,-0.3,0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
attack=false 
end 
 
function twohit()
attack=true
ss(1.2) 
con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,5,10) end) 
local LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
for i = 0,1,0.2 do 
wait() 
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
LastPoint = Point
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57+1.7*i,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+2,0.3-(0.3+1.57),-0.3+0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8+2*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,-0.3,0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
attack=false
end
 
function threehit()
attack=true
ss(1) 
con1=prt14.Touched:connect(function(hit) Damagefunc1(hit,5,10) end) 
local LastPoint = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
for i = 0,1,0.2 do 
wait() 
local Point = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
LastPoint = Point
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57+1.7,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5,0.5,-0.5+0.5) * CFrame.fromEulerAnglesXYZ(-0.5+2,0.3-(0.3+1.57),-0.3+0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8+2,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+3*i,-0.3+0.3*i,0.3-0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
attack=false
end
 
function fourhit()
attack=true
ss(1.4) 
con1=prt14.Touched:connect(function(hit) Damagefunc1(hit,5,10) end) 
local LastPoint = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
for i = 0,1,0.2 do 
wait() 
local Point = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
LastPoint = Point
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57+1.7,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57*i) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5,0.5,-0.5+0.5) * CFrame.fromEulerAnglesXYZ(-0.5+2,0.3-(0.3+1.57),-0.3+0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8+2,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+3,1.57*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.5*i,0,0) 
end 
con1:disconnect() 
attack=false
end
 
function fivehit()
attack=true
ss(1.4) 
con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,5,10) end) 
con2=prt14.Touched:connect(function(hit) Damagefunc1(hit,5,10) end) 
local vel = Instance.new("BodyGyro") 
vel.Parent = Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame 
local LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local LastPoint2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
for i = 0,1,0.1 do 
wait() 
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local Point2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
effect("Black",0.5,LastPoint2,Point2)
LastPoint = Point
LastPoint2 = Point2
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57+1.7,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5,0.5,-0.5+0.5) * CFrame.fromEulerAnglesXYZ(-0.5+2,0.3-(0.3+1.57),-0.3+0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8+2,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+3,1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.5,0,0) 
end 
ss(1.4) 
for i = 0,1,0.1 do 
wait() 
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local Point2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
effect("Black",0.5,LastPoint2,Point2)
LastPoint = Point
LastPoint2 = Point2
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57+1.7,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5,0.5,-0.5+0.5) * CFrame.fromEulerAnglesXYZ(-0.5+2,0.3-(0.3+1.57),-0.3+0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8+2,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+3,1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.5,0,0) 
end 
vel.Parent = nil 
lightning=false
con1:disconnect() 
con2:disconnect()
attack=false
end
 
function FlyWave()
if mana >= 60 then
mana=mana-60
attack=true
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,0) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,0.3-0.3*i,-0.3-1.27*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,-0.3+0.3*i,0.3+1.27*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 
con2=prt14.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Player.Character.Torso
vel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel2.velocity = Vector3.new(0,1,0)*60
--[[bodypos=Instance.new("BodyPosition")
bodypos.P=500
bodypos.D=100
bodypos.maxForce=Vector3.new(math.huge,math.huge,math.huge)
bodypos.position=Head.Position
bodypos.Parent=Head
bodypos.position=Head.Position+Vector3.new(0,50,0)]]
local vel = Instance.new("BodyGyro") 
vel.Parent = Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame 
local LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local LastPoint2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
for i=1,2 do
ss(1.4)
for i = 0,1,0.1 do 
wait() 
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local Point2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
effect("Black",0.5,LastPoint2,Point2)
LastPoint = Point
LastPoint2 = Point2
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
end 
end
vel2.velocity = Vector3.new(0,0,0)
con1:disconnect() 
con2:disconnect()
for i=0,1,0.1 do
wait()
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(math.rad(180)*i,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1.57*i,0,-1.57+1.57*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1.57*i,0,1.57-1.57*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
vel2.Parent=nil
local floor = false
coroutine.resume(coroutine.create(function()
repeat
wait(0.05)
hit,pos = rayCast(Torso.Position, (CFrame.new(Torso.Position,Torso.Position - Vector3.new(0,6,0))).lookVector, 6, Character)
if hit ~= nil then
floor = true
end
until floor
end))
local LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local LastPoint2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
repeat
wait()
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local Point2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
effect("Black",0.5,LastPoint2,Point2)
LastPoint = Point
LastPoint2 = Point2
MMMAGIC(prt5,3,3,3,0,0,0,BrickColor.new("Black")) 
MMMAGIC(prt15,3,3,3,0,0,0,BrickColor.new("Black")) 
until floor
    local c = game.Workspace:GetChildren();
    for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
        local head = c[i]:findFirstChild("Head");
                if head ~= nil then
        local targ = head.Position - Torso.Position;
        local mag = targ.magnitude;
        if mag <= 10 and c[i].Name ~= Player.Name then 
        DBHit(head,40) 
        end 
        end 
        end 
    end 
spikesound(1) 
magicsound(0.8) 
MMMAGIC(prt5,15,15,15,0,0,0,BrickColor.new("Black")) 
MMMAGIC(prt15,15,15,15,0,0,0,BrickColor.new("Black")) 
BlastEffect(Head,20,20,20,0,0,0,3.14,0,0,BrickColor.new("Really black")) 
vel.Parent=nil
attack=false
end
end
 
function DecisiveBlow()
if mana>=90 then
mana=mana-90
attack=true
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14*i,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14*i,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,0.3-0.3*i,-0.3+0.6*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0.8*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,-0.3+0.3*i,0.3-0.6*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-0.8*i,0) 
end 
wait(0.3)
con1=prt4.Touched:connect(function(hit) Damagefunc1(hit,50,10) end) 
con2=prt14.Touched:connect(function(hit) Damagefunc1(hit,50,10) end) 
clone()
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Player.Character.Torso
vel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel2.velocity = Torso.CFrame.lookVector*200
local LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local LastPoint2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
wait(0.1)
vel2.Parent=nil
ss(2)
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14,0,0) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5,0.8,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5,-0.8,0) 
for i=0,0.5,0.1 do
wait()
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local Point2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
effect("Black",0.5,LastPoint2,Point2)
LastPoint = Point
LastPoint2 = Point2
end
con1:disconnect()
con2:disconnect()
wait(1)
attack=false
end
end
 
function Charge()
attack=true
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14*i,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14*i,0,0) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+1.5*i,0.3-0.9*i,-0.3+0.6*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+1.5*i,-0.3+0.9*i,0.3-0.6*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
while charging==true do
wait(0.1)
mana=mana+1
MMMAGIC(prt5,1,1,1,0,0,0,BrickColor.new("Black")) 
MMMAGIC(prt15,1,1,1,0,0,0,BrickColor.new("Black")) 
    p=Instance.new("Part")
    p.Name="FlameEm"
    p.Shape=0
    p.TopSurface=0
    p.BottomSurface=0
    p.BrickColor=BrickColor.new("Black") 
    p.Anchored=true
    p.CanCollide=false
    p.Size=Vector3.new(1,1,1)
    p.CFrame=CFrame.new(Character["Torso"].CFrame.p+Vector3.new(0,-3,0))+Vector3.new(math.random(-20,20)/5,0,math.random(-20,20)/5)
    p.Parent=modelzorz
    m=Instance.new("SpecialMesh")
    m.MeshType="Sphere"
    m.Parent=p
    m.Scale=Vector3.new(1,1,1)
    coroutine.resume(coroutine.create(function(pa) for i=1, 9 do pa.Mesh.Scale=pa.Mesh.Scale+Vector3.new(0,1.5,0) pa.Transparency=pa.Transparency+1/9  wait(0)  end pa.Parent=nil end),p)
 
end
MMMAGIC(prt5,3,3,3,0,0,0,BrickColor.new("Black")) 
MMMAGIC(prt15,3,3,3,0,0,0,BrickColor.new("Black")) 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14+3.14*i,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14+3.14*i,0,0) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+1.5-1.5*i,0.3-0.9+0.9*i,-0.3+0.6-0.6*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+1.5-1.5*i,-0.3+0.9-0.9*i,0.3-0.6+0.6*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack=false
end
 
function CloneSlash()
if mana>=30 then
attack=true
mana=mana-30
for i = 0,1,0.1 do 
wait() 
prt4.Reflectance=prt4.Reflectance-0.05
prt5.Reflectance=prt5.Reflectance-0.05
prt14.Reflectance=prt14.Reflectance-0.05
prt15.Reflectance=prt15.Reflectance-0.05
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0.3,-0.3-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,-0.3,0.3+0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
ss(1)
local LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
for i = 0,1,0.2 do 
wait() 
shoottrail2(prt5)
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
LastPoint = Point
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14*i,0,0) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0.5*i)
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+3*i,0.3-0.9*i,-0.6+1.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,-0.3,0.6) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
--shoottrail2(prt5)
ss(1.1)
local LastPoint2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
for i=0,1,0.2 do
wait()
shoottrail2(prt15)
local Point2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint2,Point2)
LastPoint2 = Point2
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14*i,0,0) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0.5-1*i)
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+3-2.5*i,0.3-0.9*i,-0.6+1.2-2.1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+3*i,-0.3+0.9*i,0.6-1.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
local vel = Instance.new("BodyGyro") 
vel.Parent = Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame
gairo.Parent=nil 
--shoottrail2(prt15)
ss(1.3)
local LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
for i = 0,1,0.1 do 
wait() 
shoottrail2(prt5)
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(450)*i,0) 
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
LastPoint = Point
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14,0,0) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0.5-1)
LW.C0 = CFrame.new(-1.5+0.5-0.5,0.5,-0.5+0.5) * CFrame.fromEulerAnglesXYZ(-0.5+3-2.5,0.3-0.9,-0.6+1.2-2.1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(-0.5+3,-0.3+0.9,0.6-1.2) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
vel.Parent=nil
--shoottrail2(prt5)
ss(0.9)
local LastPoint2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
for i=0,1,0.2 do
wait()
shoottrail2(prt15)
local Point2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint2,Point2)
LastPoint2 = Point2
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-3.14,0,0) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0.5-1)
LW.C0 = CFrame.new(-1.5+0.5-0.5,0.5,-0.5+0.5) * CFrame.fromEulerAnglesXYZ(-0.5+3-2.5,0.3-0.9,-0.6+1.2-2.1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+3-3*i,-0.3+0.9-0.9*i,0.6-1.2+1.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
--shoottrail2(prt15)
wait(1)
vel.Parent=nil
gairo.Parent=nil
prt4.Reflectance=0.3
prt5.Reflectance=0.3
prt14.Reflectance=0.3
prt15.Reflectance=0.3
attack=false
end
end
 
function Flamera()
if mana>=400 then
mana=0
attack=true
    local c = game.Workspace:GetChildren();
    for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
        local head = c[i]:findFirstChild("Head");
                if head ~= nil then
        local targ = head.Position - Torso.Position;
        local mag = targ.magnitude;
        if mag <= 10 and c[i].Name ~= Player.Name then 
        DBHit(head,1) 
        end 
        end 
        end 
    end 
magicsound(0.8) 
MMMAGIC(Head,15,15,15,0,0,0,BrickColor.new("Black")) 
BlastEffect(Head,20,20,20,0,0,0,0,0,0,BrickColor.new("Really black")) 
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Player.Character.Torso
vel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel2.velocity = Vector3.new(0,1,0)*400
for i = 0,1,0.2 do 
wait() 
MMMAGIC(LeftLeg,3,3,3,0,1,0,BrickColor.new("Black")) 
MMMAGIC(RightLeg,3,3,3,0,1,0,BrickColor.new("Black")) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,-0.3,0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
vel2.Parent=nil
bodypos=Instance.new("BodyPosition")
bodypos.P=500
bodypos.D=100
bodypos.maxForce=Vector3.new(0,math.huge,0)
bodypos.position=Head.Position
bodypos.Parent=Head
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
CF=Head.CFrame
for i=0,1,0.1 do
wait()
MMMAGIC(LeftLeg,1,1,1,0,-1,0,BrickColor.new("Black")) 
MMMAGIC(RightLeg,1,1,1,0,-1,0,BrickColor.new("Black")) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57*i,0,0) * CFrame.new(0,1,0) 
gairo.cframe=CF*CFrame.fromEulerAnglesXYZ(-1.57,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,0.3-0.3*i,-0.3-1.27*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07*i,-0.3+0.3*i,0.3+1.27*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
local LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local LastPoint2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
for i=0,8,0.1 do
wait(0.05)
shoottrail2(prt5)
shoottrail2(prt15)
--ss(1)
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local Point2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
effect("Black",0.5,LastPoint2,Point2)
LastPoint = Point
LastPoint2 = Point2
MMMAGIC(LeftLeg,1,1,1,0,-1,0,BrickColor.new("Black")) 
MMMAGIC(RightLeg,1,1,1,0,-1,0,BrickColor.new("Black")) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57,0,0) * CFrame.new(0,1,0) 
gairo.cframe=CF*CFrame.fromEulerAnglesXYZ(-1.57,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,0.3-0.3,-0.3-1.27+1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.random()+math.random(-1,0),math.random()+math.random(-1,0),math.random()+math.random(-1,0)) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07,-0.3+0.3,0.3+1.27-1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.random()+math.random(-1,0),math.random()+math.random(-1,0),math.random()+math.random(-1,0)) 
end
for i=0,1,0.1 do
wait()
gairo.cframe=CF*CFrame.fromEulerAnglesXYZ(-1.57-1.57*i,0,0)
MMMAGIC(LeftLeg,1,1,1,0,-1,0,BrickColor.new("Black")) 
MMMAGIC(RightLeg,1,1,1,0,-1,0,BrickColor.new("Black")) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57-1.57,0,0) * CFrame.new(0,1,0) 
gairo.cframe=CF*CFrame.fromEulerAnglesXYZ(-1.57-1.57*i,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07+1.57*i,0.3-0.3,-0.3-1.27+1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+2.07+1.57*i,-0.3+0.3,0.3+1.27-1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
bodypos.Parent=nil
local floor = false
coroutine.resume(coroutine.create(function()
repeat
wait(0.05)
hit,pos = rayCast(Torso.Position, (CFrame.new(Torso.Position,Torso.Position - Vector3.new(0,6,0))).lookVector, 6, Character)
if hit ~= nil then
floor = true
end
until floor
end))
local LastPoint = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local LastPoint2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
repeat
wait()
local Point = prt5.CFrame * CFrame.new(0,prt5.Size.Y/2,0)
local Point2 = prt15.CFrame * CFrame.new(0,prt15.Size.Y/2,0)
effect("Black",0.5,LastPoint,Point)
effect("Black",0.5,LastPoint2,Point2)
LastPoint = Point
LastPoint2 = Point2
MMMAGIC(prt5,3,3,3,0,0,0,BrickColor.new("Black")) 
MMMAGIC(prt15,3,3,3,0,0,0,BrickColor.new("Black")) 
until floor
    local c = game.Workspace:GetChildren();
    for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
        local head = c[i]:findFirstChild("Head");
                if head ~= nil then
        local targ = head.Position - Torso.Position;
        local mag = targ.magnitude;
        if mag <= 40 and c[i].Name ~= Player.Name then 
        DBHit(head,80) 
        end 
        end 
        end 
    end 
Character.Humanoid.Health=10
spikesound(0.6) 
magicsound(0.5) 
MMMAGIC2(prt5,40,40,40,0,0,0,BrickColor.new("Black")) 
MMMAGIC2(prt15,40,40,40,0,0,0,BrickColor.new("Black")) 
WaveEffect2(Head,55,45,55,0,0,0,3.14,0,0,BrickColor.new("Really black")) 
BlastEffect2(Head,55,55,55,0,0,0,3.14,0,0,BrickColor.new("Really black")) 
EVENMOARMAGIX(prt15,60,60,60,0,0,0,0,0,0,BrickColor.new("Black")) 
wait(1)
gairo.Parent=nil
attack=false
end
end
 
function shoottrail2(pos1) 
coroutine.resume(coroutine.create(function()
spread2 = 0 
range2 = 500 
rangepower = 10 
local spreadvector = (Vector3.new(math.random(-spread2,spread2),math.random(-spread2,spread2),math.random(-spread2,spread2)) / 100) * (pos1.Position).magnitude/100
local dir = Head.CFrame.lookVector+spreadvector 
local hit2,pos = rayCast(pos1.Position,dir,10,Character)
local rangepos = range2
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
effectsg.BrickColor = BrickColor.new("Really black") 
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(1,mg*5,1)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.5 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(1-1*i,mg*5,1-1*i)
end 
effectsg.Parent = nil 
end))
end
local newpos = pos1.Position
local inc = rangepower
repeat
wait() 
rangepos = rangepos - 10
dir = dir 
hit2,pos = rayCast(newpos,dir,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir * inc)
if alt==1 then 
inc = 10 
if inc >= 20 then
inc = inc - 10
end
end 
if hit2 ~= nil then
rangepos = 0
end
until rangepos <= 0
if hit2 ~= nil then
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
--effectsmsh.Scale = Vector3.new(1,1,2.5)
effectsmsh.Scale = Vector3.new(3,3,3)
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Arrow"
effectsg.Locked = true
effectsg.Transparency = 1 
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = modelzorz 
effectsg.BrickColor = BrickColor.new("Really black") 
effectsmsh.Parent = effectsg
effectsg.CFrame = CFrame.new(newpos,pos) + CFrame.new(newpos,pos).lookVector*2.5*2
local efwel = Instance.new("Weld") 
efwel.Parent = effectsg 
efwel.Part0 = effectsg 
efwel.Part1 = hit2 
efwel.Parent = nil 
effectsg.Anchored = true 
local HitPos = effectsg.Position + CFrame.new(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + CFrame.new(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + (prt1.CFrame.lookVector * .5) 
local CJ = CFrame.new(HitPos) 
local C0 = effectsg.CFrame:inverse() * CJ
local C1 = hit2.CFrame:inverse() * CJ 
--efwel.C0 = C0
--efwel.C1 = C1
--efwel.Parent = effectsg 
Damg = 1 
coroutine.resume(coroutine.create(function()
wait(3)
effectsg.Parent = nil
end))
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
attackdebounce = false 
Damagefunc1(hit2,Damg,5)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
attackdebounce = false 
Damagefunc1(hit2,Damg,5)
end
end
end))
end
 
function clone()
c=Character:children()
for i=1,#c do
if c[i].className=="Part" then
print(c[i])
d=c[i]:clone()
d.Parent=workspace
d.Transparency=0.4
d.Anchored=true
d.CanCollide=false
d.BrickColor=BrickColor.new("Black")
if d:findFirstChild("roblox")~=nil then
d:findFirstChild("roblox").Parent=nil
end
coroutine.resume(coroutine.create(function(Part)
for x=0,1,0.1 do
wait()
Part.Transparency=Part.Transparency+0.1
end
Part.Parent=nil
end),d)
end
end
end
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , Ignore Descendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
function effect(Color,Ref,LP,P1,returnn)
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
effectsg.Parent = modelzorz
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new(Color)
effectsg.Reflectance = Ref
local point1 = P1
local mg = (LP.p - point1.p).magnitude
effectsg.Size = Vector3.new(0.2,mg,0.2)
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
if returnn then return effectsg end
coroutine.resume(coroutine.create(function()
if not returnn then
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(1-1*i,1,1-1*i)
end
wait()
effectsg.Parent = nil
end
end))
end
 
Stun2=function(Feh,x,y,z,color)
coroutine.resume(coroutine.create(function(part,X,Y,Z)
--[[        if part.Parent:FindFirstChild("Torso")==nil then
            return
        end]]
        Torsoh2=part
        End2=Torsoh2.CFrame+Vector3.new(X/10,Y/10,Z/10)
        ST2=Torsoh2.Position
--[[        p=Instance.new("BodyPosition")
        p.P=3000
        p.D=100
        p.maxForce=Vector3.new(math.huge,0,math.huge)
        p.position=Torsoh2.Position
        p.Parent=Torsoh2]]
        while part.Parent ~= nil and lightning == true do 
--            f1:Play()
--            p.position=ST2+Vector3.new(math.random(-50,50)/50,0,math.random(-50,50)/50)
            Start2=End2
            End2=Torsoh2.CFrame*CFrame.new(X/10,Y/10,Z/10)
            e=Instance.new("Part")
            e.TopSurface=0
            e.BottomSurface=0
            e.CanCollide=false
            e.Anchored=true
            e.formFactor="Symmetric"
            e.Size=Vector3.new(1,1,1)
            Look2=(End2.p-Start2.p).unit
            m=Instance.new("BlockMesh")
            m.Scale=Vector3.new(.2,.2,(Start2.p-End2.p).magnitude)
            m.Parent=e
            e.CFrame=CFrame.new(Start2.p+Look2*(m.Scale.z/2),Start2.p+Look2*99)
            e.Reflectance=.3
            e.Name="Zap"
            e.BrickColor=color
            e.Parent=part.Parent
            coroutine.resume(coroutine.create(function(PAR) for i=1, 25 do PAR.Transparency=i/25 wait() end PAR.Parent=nil end),e)
            wait()
        end
        wait(.45)
--        p.Parent=nil
end),Feh,x,y,z) 
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
    S.Parent=modelzorz
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function MMMAGIC2(part,x1,y1,z1,x2,y2,z2,color) 
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
    S.Parent=modelzorz
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9,0.5 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
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
    S.Parent=modelzorz
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
        p2.Parent=modelzorz
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
    S.Reflectance = 0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
    S.Parent=modelzorz
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9,0.5 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
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
    S.Parent=modelzorz
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function WaveEffect2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
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
    S.Parent=modelzorz
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9,0.5 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
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
    S.Parent=modelzorz
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
 
function BlastEffect2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
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
    S.Parent=modelzorz
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9,0.5 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
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
function equipsound(pitch) 
 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\unsheath.wav" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
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
function spikesound(pitch) 
 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=3264793" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
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
    wait(0.1) 
    attackdebounce = false 
    end)) 
        if mana < 400 then 
        mana = mana + math.random(10,20)  
        end 
        if mana > 400 then 
        mana = 400 
        end 
        Damage=Damage
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
            c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
--            print(c.Value)
        if math.random(0,99)+math.random()<=5 then
            CRIT=true
            Damage=Damage*1.5
--[[            Knockback=Knockback*2
            r=Instance.new("BodyAngularVelocity")
            r.P=3000
            r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
            r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
            r.Parent=hit.Parent.Torso]]
            critsound(2) 
    
        end
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
 
FireDamage=function(hit,Damage,Knockback)
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
        mana = mana + math.random(10,20)  
        end 
        if mana > 400 then 
        mana = 400 
        end 
        Damage=Damage
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
            c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
--            print(c.Value)
        if 1==1 then 
            coroutine.resume(coroutine.create(function() 
            if dur == nil then 
            temp = 20 
            else 
            temp = dur*2 
            end 
            for i = 0,temp do 
            wait(0.1) 
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.5,0.5,0.5) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(2,2,2)
    if math.random(1,2)==1 then 
    S.BrickColor=BrickColor.new("Bright red") 
    else 
    S.BrickColor=BrickColor.new("Bright yellow") 
    end 
    S.Reflectance=0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=hit.CFrame*CFrame.new(math.random(-1,0)*math.random(),math.random(-1,0)*math.random(),math.random(-1,0)*math.random())*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=Character
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=CFrame.new(Part.Position+Vector3.new(0,0.5,0))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
            hit.Parent.Humanoid:TakeDamage(0.5) 
            end 
            end)) 
        end 
        if math.random(0,99)+math.random()<=5 then
            CRIT=true
            Damage=Damage*1.5
--[[            Knockback=Knockback*2
            r=Instance.new("BodyAngularVelocity")
            r.P=3000
            r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
            r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
            r.Parent=hit.Parent.Torso]]
            critsound(2) 
    
        end
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
BurningDamage=function(hit,Damage,Knockback)
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
        mana = mana + math.random(10,20)  
        end 
        if mana > 400 then 
        mana = 400 
        end 
        Damage=Damage
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
            c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
--            print(c.Value)
        if 1==1 then 
            coroutine.resume(coroutine.create(function() 
            for i = 0,10 do 
            wait(0.1) 
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.5,0.5,0.5) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(2,2,2)
    if math.random(1,2)==1 then 
    S.BrickColor=BrickColor.new("Bright red") 
    else 
    S.BrickColor=BrickColor.new("Bright yellow") 
    end 
    S.Reflectance=0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=hit.CFrame*CFrame.new(math.random(-1,0)*math.random(),math.random(-1,0)*math.random(),math.random(-1,0)*math.random())*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=Character
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=CFrame.new(Part.Position+Vector3.new(0,0.5,0))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
            hit.Parent.Humanoid:TakeDamage(0.5) 
            end 
            end)) 
        end 
        Damage=Damage
--        Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
        h:TakeDamage(Damage)
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
 
DBHit=function(hit,Damage) --credits to turdulator for making this function :D
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
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
            c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
--            print(c.Value)
        if 1==1 then 
            coroutine.resume(coroutine.create(function() 
            if dur == nil then 
            temp = 20 
            else 
            temp = dur*2 
            end 
            for i = 0,40 do 
            wait(0.1) 
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.5,0.5,0.5) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(2,2,2)
    if math.random(1,2)==1 then 
    S.BrickColor=BrickColor.new("Black") 
    else 
    S.BrickColor=BrickColor.new("Really black") 
    end 
    S.Reflectance=0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=hit.CFrame*CFrame.new(math.random(-1,0)*math.random(),math.random(-1,0)*math.random(),math.random(-1,0)*math.random())*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=Character
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=CFrame.new(Part.Position+Vector3.new(0,0.5,0))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
            hit.Parent.Humanoid:TakeDamage(0.5) 
            end 
            end)) 
        end 
        if math.random(0,99)+math.random()<=7.8 then
            CRIT=true
            Damage=Damage*1
--[[            Knockback=Knockback*2
            r=Instance.new("BodyAngularVelocity")
            r.P=3000
            r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
            r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
            r.Parent=hit.Parent.Torso]]
            s=Instance.new("Sound")
            s.SoundId="http://www.roblox.com/asset/?id=2801263"
            s.Volume=1
            s.Pitch=2
            s.Parent=hit
            s.PlayOnRemove=true
            s.Parent=nil
    
        end
        h:TakeDamage(Damage) 
        showDamage(hit.Parent,Damage,.5) 
        vl=Instance.new("BodyVelocity")
        vl.P=4500
        vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
--        vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,3,0)
        vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,45,0)
        vl.Parent=t
        game:GetService("Debris"):AddItem(vl,.2)
        rl=Instance.new("BodyAngularVelocity")
        rl.P=3000
        rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
--        rl.angularvelocity=Vector3.new(math.random(-40,40),math.random(-40,40),math.random(-40,40))
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
--        DBExplode(DB)
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
 
hold = false 
 
function ob1d(mouse) 
if attack == true then return end 
onehit() 
twohit() 
threehit()
fourhit()
fivehit()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1,0) 
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
function key(key) 
if attack == true then return end
if key == "z" then 
FlyWave()
end
if key == "x" then
DecisiveBlow()
end
if key == "c" then 
CloneSlash()
end
if key == "g" then
charging=true
Charge()
end
if key == "f" then
Flamera()
end
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1,0) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,1,0) 
end 
 
function key2(key) 
if key == "g" then 
charging=false
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
for i = 0,1,0.1 do 
wait() 
if attack == false and sheathed==true then 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5-0.5*i,0.3-0.3*i,-0.3+0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5-0.5*i,-0.3+0.3*i,0.3-0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
    else 
walking = false 
for i = 0,1,0.1 do 
wait() 
if attack == false and sheathed==true then 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5-0.5+0.5*i,0.3-0.3+0.3*i,-0.3+0.3-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5-0.5+0.5*i,-0.3+0.3-0.3*i,0.3-0.3+0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end 
    end 
end 
Character.Humanoid.Running:connect(onRunning) 
 
while true do 
wait(0)  
fentext3.Size = UDim2.new(mana*0.007,0,0.200000006,0)
fentext.Text = "Flama("..mana..")" 
fentext3.BackgroundColor3 = Color3.new(1,1,1) 
end
end}
module[2] = {"Seokinji",function()
local ply = game.Players.LocalPlayer
char = ply.Character
torso = char.Torso
head = char.Head
holding = false
RS = game:service'RunService'
larm,rarm = char['Left Arm'],char['Right Arm']
Debris = game:service'Debris'
floatforce = 196.25
attacking = false
lh,rh = torso['Left Hip'],torso['Right Hip']
curcam = workspace.CurrentCamera
mouse = ply:GetMouse()
FFS = function(A,B) return A:FindFirstChild(B) end ---- FindFirstChild Shortcut
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
pcall(function() char.Sole:Destroy() end) --- Destroys Physical Tool
Weapon = Instance.new("Model",char) Weapon.Name = 'Sole'
cfn,ang,md,mr = CFrame.new,CFrame.Angles,math.rad,math.random --- Some Shortcuts
udim = function(a,b)
if type(a) ~= 'string' then
return UDim2.new(a,0,b,0)
else
local x,y = a:match('(%.*%d+)%,(%.*%d+)')
return UDim2.new(x,0,y,0)
end
end
for i,v in pairs(head:children()) do
        if v.Name == 'MugSound' then v:Destroy() end
end
Name = 'Seokinji'
pcall(function() ply.Backpack[Name]:Destroy() end) --- Destroys Tool
hop = Instance.new('HopperBin',ply.Backpack)
hop.Name = Name
rw,lw = _,_
Col3 = function(r,g,b) return Color3.new(r/255,g/255,b/255) end
udim = function(x,y) return UDim2.new(x,0,y,0) end
bcol = BrickColor.new
---TOOLS---
Add ={ --- Array for handy functions
BG = function(parent)
        local bg = Instance.new("BodyGyro",parent)
        bg.P = 20e+003
        bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge
        return bg
end;
BP = function(parent,position)
        local bp = Instance.new("BodyPosition",parent)
        bp.maxForce = Vector3.new()*math.huge
        bp.position = position or parent.Position
        return bp
end;
BV = function(parent,force)
        local bv = Instance.new("BodyVelocity",parent)
        bv.maxForce = Vector3.new()*math.huge
        bv.velocity = force or Vector3.new(0,0,0)
        return bv
end;
Sound = function(id,pitch,parent)
        local tab = {}
        local snd = Instance.new("Sound",char.Head)
        snd.Name = 'MugSound'
        snd.SoundId = id
        snd.Pitch = pitch or 1
        tab.Sound = snd
        function tab:Play()
                self.Sound:Play()
        end
        function tab:Stop()
                self.Sound:Stop()
        end
        function tab:Pitch(a)
                self.Sound.Pitch = a
        end
        setmetatable(tab,{
                 __call = function(t,param) local cl = t.Sound:Clone() cl.Parent = param return cl end;
        })
        return tab
end;
Fire = function(parent,size,heat,color,color2)
local f = Instance.new("Fire",parent)
f.Size = size
f.Heat = heat
f.Color = BrickColor.new(color).Color
if color2 then
f.SecondaryColor = BrickColor.new(color2).Color
end
return f
end;
}
function l(a,x,y,z,xx,yy,zz)
if string.find(tostring(a),',') == _ then
return (a.CFrame * cfn(x,y,z))*ang(xx or 0,yy or 0,zz or 0)
else
return (a * cfn(x,y,z))*ang(xx or 0,yy or 0,zz or 0)
end
end
Cur_Parent = _
Part = function(x,y,z,color,tr,cc,an,parent)
local p = Instance.new('Part',parent or Cur_Parent or Weapon)
p.formFactor = 'Custom'
p.Locked = true
p.Size = Vector3.new(x,y,z)
p.BrickColor = BrickColor.new(color or 'White')
p.CanCollide = cc or false
p.Anchored = an or false
p.Transparency = tr or 0
p.TopSurface,p.BottomSurface = 0,0
return p
end
Wedge = function(x,y,z,color,tr,cc,an,parent)
local p = Instance.new('WedgePart',parent or Weapon)
p.formFactor = 'Custom'
p.Size = Vector3.new(x,y,z)
p.BrickColor = BrickColor.new(color or 'White')
p.CanCollide = cc or false
p.Anchored = an or false
p.Transparency = tr or 0
p.TopSurface,p.BottomSurface = 0,0
return p
end
Meshes = {Diamond = 'rbxassetid://9756362'; Spikeball = 'rbxassetid://9982590'; Table = 'rbxassetid://111868131'; --- MeshIds
Egg = 'rbxassetid://1527559'; Ring = 'rbxassetid://3270017'; Bullet = 'rbxassetid://2697549'; Grass = 'rbxassetid://1080954';
Shark = 'rbxassetid://82821384';Sword = 'rbxassetid://12221720'}
Mesh = function(par,num,x,y,z,tex)
local msh = _
if num == 1 then msh = Instance.new("CylinderMesh",par)
elseif num == 2 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 3
elseif num == 3 then msh = Instance.new("BlockMesh",par)
elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par)
msh.MeshId = string.find(num,'://') == _ and Meshes[num] or num
msh.TextureId = tex and tex or ''
end
msh.Scale = Vector3.new(x or 1,y or 1,z or 1)
return msh
end
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
p0.Position = p1.Position
local w = Instance.new('Motor',par or p0)
w.Part0 = p1
w.Part1 = p0
w.C0 = CFrame.new(x or 0,y or 0,z or 0)*CFrame.Angles(rx or 0,ry or 0,rz or 0)
w.MaxVelocity = .1
return w
end
GetGround = function(position,radius) local result = _ --- Check's height from nearest object
        local r = Ray.new(position,Vector3.FromNormalId(Enum.NormalId.Bottom)*radius)
        local o,p = Workspace:FindPartOnRay(r,char)
        if o and p then result = {}
                result.obj = o
                result.pos = p
                result.mag = (position-p).magnitude
        end
        return result
end
gTorso = char.Torso
ftorso = _
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
--Anim
Lock = function(which) --- For using Animation
local torso = ftorso or gTorso
local result = {rw=false,lw=false}
if which == 'R' then
if not rw then
        rabr = Part(1,1,1,'White',0) rabr.Transparency = 1
        rabr.Position = torso.Position
        rw = Weld(rabr,torso,1.5,.5,0,0,0,0) rw.Parent = Weapon rw.Name = 'rw'
        w = Instance.new("Weld",Weapon)
        w.Part0,w.Part1 = char['Right Arm'],rabr
        w.C1 = CFrame.new(0,-.5,0)
else
        rabr:Destroy()
        rw = _
end
elseif which == 'L' then
if not lw then
        labr = Part(1,1,1,'White',0) labr.Transparency = 1
        labr.Position = torso.Position
        lw = Weld(labr,torso,-1.5,.5,0,0,0,0) lw.Parent = Weapon rw.Name = 'lw'
        w = Instance.new("Weld",Weapon)
        w.Part0,w.Part1 = char['Left Arm'],labr
        w.C1 = CFrame.new(0,-.5,0)
else
        labr:Destroy()
        lw = _
end
elseif which == _ then
if b then
        local rw,lw = FFS(b,'rw') FFS(b,'lw')
        return rw,lw
else
        return rw,lw
end
end
end
Lock2 = function(which) --- For using Animation
local torso = ftorso or gTorso
local result = {rw2=false,lw2=false}
if which == 'R' then
if not rw2 then
        rlbr = Part(1,1,1,'White',0) rlbr.Transparency = 1
        rlbr.Position = torso.Position
        rw2 = Weld(rlbr,torso,.5,-1.5,0,0,0,0) rw2.Parent = Weapon rw2.Name = 'rw2'
        w = Instance.new("Weld",Weapon)
        w.Part0,w.Part1 = char['Right Leg'],rlbr
        w.C1 = CFrame.new(0,-.5,0)
else
        rlbr:Destroy()
        rw2 = _
end
elseif which == 'L' then
if not lw2 then
        llbr = Part(1,1,1,'White',0) llbr.Transparency = 1
        llbr.Position = torso.Position
        lw2 = Weld(llbr,torso,-.5,-1.5,0,0,0,0) lw2.Parent = Weapon lw2.Name = 'lw2'
        w = Instance.new("Weld",Weapon)
        w.Part0,w.Part1 = char['Left Leg'],llbr
        w.C1 = CFrame.new(0,-.5,0)
else
        llbr:Destroy()
        lw2 = _
end
elseif which == _ then
if b then
        local rw2,lw2 = FFS(b,'rw2') FFS(b,'lw2')
        return rw2,lw2
else
        return rw2,lw2
end
end
end
tw = function(Weld, Stop, Step,a) --- TweenWeld function
local func = function()
        local Start = Weld.C1
        local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
        local Stop = Stop
        local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
        
        for i = 0, 1, Step or .1 do
                Weld.C1 = CFrame.new( (Start.p.X * (1 - i)) + (Stop.p.X * i), 
                                (Start.p.Y * (1 - i)) + (Stop.p.Y * i), 
                                (Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
                                (X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),
                                (Z1 * (1 - i)) + (Z2 * i) )
                wait()
        end
        
        Weld.C1 = Stop
end
if a then coroutine.wrap(function() func() end)() else func() end
end
tw2 = function(Weld, Stop, Step,a) --- TweenWeld function
local func = function()
        local Start = Weld.C0
        local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
        local Stop = Stop
        local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
        
        for i = 0, 1, Step or .1 do
                Weld.C0 = CFrame.new( (Start.p.X * (1 - i)) + (Stop.p.X * i), 
                                (Start.p.Y * (1 - i)) + (Stop.p.Y * i), 
                                (Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
                                (X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),
                                (Z1 * (1 - i)) + (Z2 * i) )
                wait()
        end
        
        Weld.C0 = Stop
end
if a then coroutine.wrap(function() func() end)() else func() end
end
tc = function(Part, Stop, Step,a) --- TweenCFrame function
local func = function()
        local Start = Part.CFrame
        local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
        local Stop = Stop
        local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
        
        for i = 0, 1, Step or .1 do
                Part.CFrame = CFrame.new( (Start.p.X * (1 - i)) + (Stop.p.X * i), 
                                (Start.p.Y * (1 - i)) + (Stop.p.Y * i), 
                                (Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
                                (X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),
                                (Z1 * (1 - i)) + (Z2 * i) )
                wait()
        end
        
        Part.CFrame = Stop
end
if a then coroutine.wrap(function() func() end)() else func() end
end
--/Anim
--SFX
Sparks = function(part,position,radius,number,number2)
local part = part
part.Parent = _
        mode = Instance.new("Model",Weapon)
        for i = 1,number2 do
                local pos = position+Vector3.new(mr(-radius,radius),mr(-radius,radius),mr(-radius,radius))
                local mag = (position-pos).magnitude
                local laz = part:Clone() laz.Parent = mode laz.Anchored = true
                laz.Size = Vector3.new(laz.Size.x,mag,laz.Size.z)
                --Mesh(laz,1,1,1,1)
                laz.CFrame = (cfn(position,pos)*cfn(0,0,-mag/2))*ang(math.pi/2,0,0)
                cframe = (laz.CFrame*cfn(0,-mag/2,0)).p
                pos2 = cframe+Vector3.new(mr(-radius,radius),mr(-radius,radius),mr(-radius,radius))
                mag2 = (cframe-pos2).magnitude
                local laz2 = part:Clone() laz2.Parent = mode
                laz2.Size = Vector3.new(laz.Size.x,mag2,laz.Size.z) laz2.Anchored = true
                --Mesh(laz2,1,1,1,1)
                laz2.CFrame = (cfn(cframe,pos2)*cfn(0,0,-mag2/2))*ang(math.pi/2,0,0)
                previo = laz2
                for i = 1,number do
                        cframe = (previo.CFrame*cfn(0,-mag/2,0)).p
                        pos2 = cframe+Vector3.new(mr(-radius,radius),mr(-radius,radius),mr(-radius,radius))
                        mag2 = (cframe-pos2).magnitude
                        laz2 = part:Clone() laz2.Parent = mode
                        laz2.Size = Vector3.new(laz.Size.x,mag2,laz.Size.z) laz2.Anchored = true
                        --Mesh(laz2,1,1,1,1)
                        laz2.CFrame = (cfn(cframe,pos2)*cfn(0,0,-mag2/2))*ang(math.pi/2,0,0)
                        previo = laz2
                end
        end
        Debris:AddItem(mode,.1)
        return mode
end
function trace(obj,cf,color,delay,t,thick) -- offset,color,delay,transparency,thickness
if type(thick) == 'table' then
x,y = thick[1],thick[2]
else
x,y = thick,thick
end
local name
for i,v in pairs(getfenv()) do
if v == obj then name = i end
end
getfenv()[name..'tr'] = true
local prev = obj.CFrame
coroutine.wrap(function()
while getfenv()[name..'tr'] do
local cf = obj.CFrame*cf
local mag = (prev.p-cf.p).magnitude
local p = Part(x or .1,mag,y or .1,color or 'White',t or .5) p.Anchored = true
if type(thick) ~= 'table' then Mesh(p,1) end
p.CFrame = (cfn(prev.p,cf.p)*cfn(0,0,-mag/2))*ang(math.pi/2,0,0)
Debris:AddItem(p,delay or 1)
prev = cf
wait()
end end)()
end 
Lightning = function(p0,p1,tym,ofs,col,th,tra) -- start end times offset color thickness 
local magz = (p0 - p1).magnitude local curpos = p0 local trz = {-ofs,ofs} 
for i=1,tym do 
li = Part(th,th,magz/tym,col,tra or .4) li.Anchored = true
local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
local trolpos = CFrame.new(curpos,p1)*CFrame.new(0,0,magz/tym).p+ofz 
if tym == i then 
local magz2 = (curpos - p1).magnitude li.Size = Vector3.new(th,th,magz2) 
li.CFrame = CFrame.new(curpos,p1)*CFrame.new(0,0,-magz2/2) 
else 
li.CFrame = cfn(curpos,trolpos)*cfn(0,0,magz/tym/2) 
end 
curpos = li.CFrame*cfn(0,0,magz/tym/2).p Debris:AddItem(li,0.25) 
end 
end 
--/SFX
--Weapon
hdl = Part(.25,4,.25,'Light stone grey')
hw = Weld(hdl,rarm,0,-1,0,-math.pi/2)
Mesh(hdl,1)
ydin = Part(.5,.5,.5,'Lime green')
Weld(ydin,hdl,0,2.25,0)
Mesh(ydin,2)
tip = Part(1,2,1,'Lime green',.5)
tipw = Weld(tip,ydin,0,.6,0)
Mesh(tip,2,1,1,1)
plate = Part(2,.1,2,'Black') Mesh(plate,1,.5,.5,.5)
Weld(plate,hdl,0,2,0)
r = .5
for i = 1,360,30 do
        p = Part(.11,.1,.1,'Black') Mesh(p,3,1,1,.5)
        Weld(p,plate,math.cos(md(i))*r,0,math.sin(md(i))*r,math.pi/2,0,math.pi/2+md(i))
        p2 = Part(.35,.1,.1,'Black') Mesh(p2,3,1,.5,.5)
        Weld(p2,p,0,r*2.25,0)
end
r = .1
for i = 0,1,.05 do
        if i%5 == 0 then wait() end
        p = Part(.1,.1,.1,'Black') Mesh(p,2)
        Weld(p,hdl,math.cos(md(i*360*3))*r,-2+i*4,math.sin(md(i*360*3))*r)
end
p = Part(1,1,1,'Lime green')
Weld(p,hdl,0,-2,0,math.pi/2)
Mesh(p,'Diamond',.5,.5,.5)
--/Weapon
ftorso = _
ftw = _
function FindHum(a) result = _
        for i,v in pairs(a:children()) do
                if v:IsA'Humanoid' then result = v end
        end
        return result
end
function Equip()
        Lock'R' --Lock'L'
        PutBack'F'
        tw(rw,cfn()*ang(0,0,md(-5)),.1)
        --tw(lw,cfn()*ang(0,0,md(15)))
        equip = rw.C1 --equip2 = lw.C1
end
function Unequip() PutBack'T'
        Lock'R' --Lock'L'
end
BackPos = cfn(0,0,.6)*ang(0,0,md(45))
HoldPos = cfn(0,-1,0)*ang(-math.pi/2,0,0)
function PutBack(a)
        if a == 'T' then
                hw.Part0 = torso
                hw.C0 = BackPos
        elseif a == 'F' then
                hw.Part0 = rarm
                hw.C0 = HoldPos
        end
end
PutBack'T'
--funcs
local function check(k) local downed = false
        if not Keys[k] then downed = true else downed = false end
        return downed
end
local function WK(key)
        return (Keys[key] and downed)
end
local function CreateLoop(tim,keys) local count = 0
        while count < tim do
                for i,v in pairs(keys) do
                if WK(i) then v(mouse) return end
                end
                count = count+1
                wait()
        end
end
--/funcs
function lerp(a,b,c)
    return a+(b-a)*c
end
--Attacks
nsize = tip.Size
Mons = Add.Sound("http://www.roblox.com/Asset/?id=2676305",2)
function slash()
hurt = false
local con = tip.Touched:connect(function(hit)
        local hum = FindHum(hit.Parent)
        if hum and hurt and hum.Health > 0 then 
                hum.Health = hum.Health -(3)
        elseif hum and hum.Health <= 0 and not FFS(hum,'Dead') then hum.Health = -1
                Mons:Play() Instance.new('BoolValue',hum).Name = 'Dead'
                for i,v in pairs(hum.Parent:children()) do
                if v:IsA('Part') then
                        Instance.new('BodyForce',v).force = Vector3.new(0,v:GetMass()*floatforce,0)
                end end
        end 
end)
        function stab() Lock'L'
                bp = Add.BP(torso,l(torso,0,5,-5).p)
                tw(rw,cfn(0,.7,0)*ang(md(-140),md(-45),md(20)),.1,'') --up
                tw(lw,cfn(0,.7,0)*ang(md(-140),md(45),md(20))) wait(3)
        end
        local function second()
                tw(rw,cfn(-.2,.3,.2)*ang(md(-130),md(-45),md(-10)),.1,'') --Rise
                for i = 0,1,.1 do wait() --Morph
                        lerp(nsize,Vector3.new(.5,4,.5),i)
                        tipw.Parent = ydin
                        tipw.Part1 = tip tipw.Part0 = ydin
                        tipw.C0 = cfn(0,.6+i*1.5,0)
                end
                Synth:Pitch(2) Synth:Play() 
                tw(rw,cfn()*ang(md(40),md(0),md(-50)),.3) --Down
                hurt = true
        end
        tw(rw,cfn(-.2,.3,.2)*ang(md(-130),md(-45),md(-50)),.1,'') --Rise
        for i = 0,1,.1 do wait() --Morph
                tip.Size = lerp(nsize,Vector3.new(.5,4,.5),i)
                tipw.Parent = ydin
                tipw.Part1 = tip tipw.Part0 = ydin
                tipw.C0 = cfn(0,.6+i*1.5,0)
        end Synth:Play()
        downed = check('f') hurt = true
        tw(rw,cfn()*ang(md(40),md(0),md(-10)),.3) --Down 
        CreateLoop(1,{f=second;q=stab})
        hurt = false
        tw(rw,equip,.1,'') --Back
        for i = 1,0,-.3 do wait() --Morph back
                tip.Size = lerp(nsize,Vector3.new(.5,4,.5),i)
                tipw.Parent = ydin
                tipw.Part1 = tip tipw.Part0 = ydin
                tipw.C0 = cfn(0,.6+i*1.5,0)
        end
        Synth:Pitch(1) con:disconnect()
end
Whoosh = Add.Sound("http://www.roblox.com/Asset/?id=18426149",1)
function trip()
        Lock2'R'
        local con = char['Right Leg'].Touched:connect(function(hit)
                local hum = FindHum(hit.Parent)
                hum.Health = hum.Health - 5
                if hum then hum.Sit = true end
        end)
        tw(rw2,cfn(0,-.2,-.3)*ang(md(30),0,0)) Whoosh:Play()
        tw(rw2,cfn(0,.5,.3)*ang(md(-70),0,0),.3)
        tw(rw2,cfn(),.3)
        Lock2'R'
        con:disconnect()
end
function sit()
if sitbp == nil then
Lock2'R' Lock2'L' Lock'L'
sitbp = Add.BP(torso,torso.Position)
sitbg = Add.BG(torso)
--rw2.C1 = cfn()*ang(md(i),0,md(i/(90/-30)))
--lw2.C1 = cfn()*ang(md(i),0,md(i/(90/30)))
tw(rw2,cfn(.15,.4,.3)*ang(md(-60),md(30),0),.1,'') --right leg
tw(lw2,cfn(-.15,.4,.3)*ang(md(-60),md(-30),0),.1,'') --left leg
tw(rw,cfn()*ang(md(25),0,md(-20)),.1,'') --rarm down
tw(lw,cfn()*ang(md(25),0,md(20)),.1,'') --larm down
cf = torso.CFrame
for i = 0,1,.1 do wait()
        sitbp.position = torso.Position - Vector3.new(0,i*1.25,0)
        sitbg.cframe = cf*ang(md(i*20),0,0)
end
elseif sitbp ~= nil then
--rw2.C1 = cfn()*ang(md(i),0,md(i/(90/-30)))
--lw2.C1 = cfn()*ang(md(i),0,md(i/(90/30)))
tw(rw2,cfn(),.1,'')
tw(lw2,cfn(),.1,'') tw(rw,equip,.1,'')
for i = 0,1,.1 do wait()
        sitbp.position = torso.Position + Vector3.new(0,i,0)
        sitbg.cframe = cf*cfn(-i,-i,-i)
end
Lock2'R' Lock2'L' Lock'L'
sitbp:Remove() sitbg:Destroy() sitbp = nil sitbg = _
end
end
Crack = Add.Sound("http://www.roblox.com/Asset/?id=15933756",1)
Crack.Sound.Volume = 300
function blast() local list = {}
        tw(rw,cfn()*ang(md(-120),0,0),.1,'')
        tw(hw,cfn()*ang(md(45),0,0))
        met = Part(1,1,1,'White',0,1,1)
        holding = true
        mag = 1 maxmag = 15
        while holding do  mag = mag < maxmag and mag+.5 or maxmag
                met.Size = Vector3.new(1,mag*7,1)
                met.CFrame = l(l(torso,0,0,-7),0,0,-mag*7/2,math.pi/2)
                wait()
        end
        met:Destroy()
                tcf = torso.CFrame
        for y = 0,mag do
                local ground = GetGround(l(tcf,0,0,-7-y*7).p,300)
                if ground.pos then
                        cf = cfn(ground.pos)
                end
                for i = 1,15 do local tab = {}
                        p = Part(1,1,1,i%2 == 0 and 'White' or 'Lime green',0,1,1)
                        p.CFrame = l(cf,mr(-5,5),0,mr(-5,5))
                        tab.obj = p
                        tab.cf = p.CFrame
                        tab.size = mr(5,10)
                        table.insert(list,tab)
                end
        end Crack:Play()
        for i = 0,1,.2 do wait()
                for _,v in pairs(list) do
                        v.obj.Size = Vector3.new(1,v.size*i,1)
                        v.obj.CFrame = v.cf*cfn(0,v.size*i/2,0)
                end
        end
        Delay(4,function()
        for i = 1,0,-.2 do wait()
                for _,v in pairs(list) do
                        v.obj.Size = Vector3.new(1,v.size*i,1)
                        v.obj.CFrame = v.cf*cfn(0,v.size*i/2,0)
                end
        end
        for _,v in pairs(list) do
                v.obj:Destroy()
        end end)
        tw(rw,equip,.1,'') tw(hw,cfn())
end
Cages = {}
function shoudon(mouse) a = 0
        Mod = Instance.new('Model',Weapon)
        Cur_Parent = Mod
        p = Part(1,1,1,'Black',1) p.Anchored = true
        holding = true
        genNew('SelectionBox',p,{
                Adornee = p;
                Color = bcol'Lime green';
        })
        cf = mouse.hit
        while holding do wait() a = a+1
                if Keys.e then for i,v in pairs(Cages) do v:Destroy() end p:Destroy() Cages = {}
                return end
                p.Size = Vector3.new(a,a,a)
                p.CFrame = cfn(cf.p)*cfn(0,a/2,0)
        end
        
        for i = 1,0,-.1 do
                wait()
                p.Transparency = i
        end
        for _,y in pairs({-a/2+.5,a/2+.5}) do
                for _,pos in pairs({ {x=a/2,z=0};{x=-a/2,z=0};{z=a/2,x=0,r=1};{z=-a/2,x=0,r=1} }) do
                        w = Part(1,1,a+1,'Black',0,1,1)
                        w.CFrame = l(p,pos.x,y,pos.z,0,pos.r and math.pi/2 or 0)
                        w = Part(1,a-1,a-1,'Lime green',.5,1,1)
                        w.CFrame = l(p,pos.x,.5,pos.z,0,pos.r and math.pi/2 or 0)
                end
        end
        w = Part(1,a-1,a-1,'Lime green',.5,1,1)
        w.CFrame = l(p,0,a/2,0,0,0,math.pi/2)
        w = Part(1,a-1,a-1,'Lime green',.5,1,1)
        w.CFrame = l(p,0,-a/2,0,0,0,math.pi/2)
        for i,pos in pairs({ {x=a/2,z=a/2};{x=-a/2,z=-a/2};{z=a/2,x=-a/2};{z=-a/2,x= a/2} }) do
                w = Part(1,a,1,'Black',0,1,1)
                w.CFrame = l(p,pos.x,0,pos.z,0)
        end
        table.insert(Cages,Mod) Cur_Parent = _
        for i = 0,1,.1 do
                wait()
                p.Transparency = i
        end
        p:Destroy()
end
for i,v in pairs(torso:children()) do if v:IsA'BodyGyro' or v:IsA'BodyPosition' or v:IsA'BodyVelocity' then v:Destroy() end end
function teleport(mouse) char.archivable = true
        coroutine.wrap(function() loopi = true a = 0
        repeat a = a+1
                local p = Part(5,5,5,a%2 == 0 and 'White' or 'Lime green',.5)
                p.CFrame = l(torso,0,0,0,mr(-10,10),mr(-10,10),mr(-10,10))
                Debris:AddItem(p,.1) wait()
                until not loopi
        end)()
        tc(torso,cfn(mouse.hit.p)*cfn(0,5,0),.1)
        loopi = false
end
function loud()
        tw(rw,cfn()*ang(md(40),md(-25),0),.1,'')
        for i = 0,1,.1 do wait()
                tip.Size = Vector3.new(1+i*1,2-i*1.5,1+i*1)
                tipw.Parent = ydin
                tipw.Part1 = tip
        end
        e = Instance.new("Explosion",Workspace)
        e.BlastPressure = 0
        e.Position = tip.Position
        e.Hit:connect(function(hit)
                local hum = FindHum(hit.Parent)
                if hum and hum.Parent ~= char then
                        hum.Health = hum.Health -(3)
                        hum.Sit = true
                        hum.Torso.Velocity = cfn(e.Position,Vector3.new(hum.Torso.Position.x,torso.Position.y,hum.Torso.Position.z)).lookVector*100
                end
        end)
        coroutine.wrap(function()
                local p = Part(1,1,1,'Lime green',.5,1,0)
                p.CFrame = cfn(tip.CFrame.p)*ang(math.pi/2,0,0)
                msh = Mesh(p,'Ring')
                for i = 1,30 do wait()
                        msh.Scale = Vector3.new(i,i,1)
                        p.Transparency = i/30
                end
                p:Destroy()
        end)()
        q = Add.BV(torso,cfn(l(torso).p,l(torso,0,2,5).p).lookVector*100)
        Debris:AddItem(q,.5)
        tw(rw,equip,.1,'')
        for i = 1,0,-.1 do wait()
                tip.Size = Vector3.new(1+i*1,2-i*1.5,1+i*1)
                tipw.Parent = ydin
                tipw.Part1 = tip
        end
end
--/Attacks
--Sounds
Synth = Add.Sound("http://www.roblox.com/Asset/?id=46153268",1)
--/Sounds
--http://www.roblox.com/asset/?id=107431751
--http://www.roblox.com/asset/?id=107431876
klist = { --- Key Bindings
        f = slash;
        x = sit;
        eq = blast;
        qq = shoudon;
        t = teleport;
        c = loud;
        v = trip;
}
Keys = {}
function CheckKeys(key)
        if Keys[key] then Keys[key] = _
        elseif not Keys[key] then Keys[key] = true
        end
end
hop.Selected:connect(function(mouse) Equip()
        mouse.Button1Up:connect(function() holding = false end)
        mouse.KeyUp:connect(function(key) CheckKeys(key)  for i,v in pairs(klist) do if key == i:sub(1,1) and i:sub(2,2) == 'q' then  holding = false end end end)
        mouse.KeyDown:connect(function(key)
                CheckKeys(key)
                if attacking then return end
                for i,v in pairs(klist) do
                        if key == i:sub(1,1) then attacking = true v(mouse) attacking = false
                end
                end
        end)
end)

end}
module[3] = {"ShoopDahWhoop",function()

me = game.Players.LocalPlayer
if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = "LAZOR"
end
bin = h
function prop(part, parent, collide, tran, ref, x, y, z, color)
part.Parent = parent
part.formFactor = 0
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part:BreakJoints()
end
function weld(w, p, p0, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p0
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end
function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end
using = false
sound = Instance.new("Sound",me.Character.Head)
sound.Volume = 0.6
sound.Pitch = 1
sound.SoundId = "rbxasset://sounds/uuhhh.wav"
bin.Selected:connect(function(mouse)
mouse.Button1Down:connect(function()
if using then return end
using = true
local blagh = Instance.new("Model",me.Character)
blagh.Name = "LAZOR"
local paw = mouse.Hit.p
local pa1 = Instance.new("Part")
prop(pa1,blagh,false,0,0,1,1,1,"Really black")
local m1 = Instance.new("SpecialMesh")
mesh(m1, pa1, 1.07,1,0.3,"Brick")
local w1 = Instance.new("Weld")
weld(w1, me.Character.Head, me.Character.Head, pa1, 0.4, 0, 0, 0, -0.4, 0.9)
local pa2 = pa1:clone()
prop(pa2,blagh,false,0,0,1,1,1,"Really black")
local w2 = Instance.new("Weld")
weld(w2, me.Character.Head, me.Character.Head, pa2, -0.4, 0, 0, 0, 0.4, 0.9)
local pa3 = Instance.new("Part")
prop(pa3,blagh,false,0,0,1,1,1,"Really red")
local m3 = Instance.new("SpecialMesh")
mesh(m3,pa3,1.3,1.23,0.29,"Brick")
local w3 = Instance.new("Weld")
weld(w3, me.Character.Head, me.Character.Head, pa3, 0.4, 0, 0, 0, -0.4, 0.9)
local pa4 = pa3:clone()
prop(pa4,blagh,false,0,0,1,1,1,"Really red")
local w4 = Instance.new("Weld")
weld(w4, me.Character.Head, me.Character.Head, pa4, -0.4, 0, 0, 0, 0.4, 0.9)
local eye1a = Instance.new("Part")
prop(eye1a,blagh,false,0,0,1,1,1,"Institutional white")
eye1a.Shape = "Ball"
local emesh1 = Instance.new("SpecialMesh")
mesh(emesh1,eye1a,0.75,0.75,0.75,"Sphere")
local ew = Instance.new("Weld")
weld(ew, me.Character.Head, me.Character.Head, eye1a, 0, 0, 0, 0.45, -1.3, 1.1)
local eye1b = Instance.new("Part")
prop(eye1b,blagh,false,0,0,1,1,1,"Really black")
eye1b.Shape = "Ball"
local emesh1b = Instance.new("SpecialMesh")
mesh(emesh1b,eye1b,0.4,0.4,0.4,"Sphere")
local ew2 = Instance.new("Weld")
weld(ew2, eye1a, eye1a, eye1b, 0, 0, 0, 0.09, -0.04, 0.2)
local eye2a = eye1a:clone()
prop(eye2a,blagh,false,0,0,1,1,1,"Institutional white")
local ew3 = Instance.new("Weld")
weld(ew3, me.Character.Head, me.Character.Head, eye2a, 0, 0, 0, -0.45, -1.3, 1.1)
local eye2b = eye1b:clone()
prop(eye2b,blagh,false,0,0,1,1,1,"Really black")
local ew5 = Instance.new("Weld")
weld(ew5, eye2a, eye2a, eye2b, 0, 0, 0, -0.05, 0.07, 0.2)
local bill = Instance.new("BillboardGui",pa1)
bill.Adornee = bill.Parent
bill.Size = UDim2.new(0,150,0,80)
local txt = Instance.new("TextLabel",bill)
txt.Size = UDim2.new(0,0,0,0)
txt.Position = UDim2.new(0,100,0,-20)
txt.Text = "IMA FIRIN' MAH LAZORR!!"
txt.FontSize = "Size24"
txt.TextColor3 = Color3.new(0,0,0)
sound.Volume = 0.6
for i=1, 5 do
sound.Pitch = math.random(400,900)/1000
sound:play()
wait(0.1)
end
local bg = Instance.new("BodyGyro",me.Character.Torso)
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bg.cframe = CFrame.new(me.Character.Torso.Position, paw)
for i=1, 5 do
sound.Pitch = math.random(400,900)/1000
sound:play()
wait(0.2)
end
txt.Text = "BLAARGHH!!!!!!"
sound.Volume = 0.85
for i=1, 60 do
local dist = (me.Character.Head.Position - paw).magnitude
if dist >= 600 then
dist = 600
end
bg.cframe = CFrame.new(me.Character.Torso.Position, paw)
sound.Pitch = math.random(550,750)/1000
sound:play()
local bewm = Instance.new("Part")
prop(bewm, blagh, false, 0.4, 0.25, 1, 1, dist, "Cyan")
bewm.Anchored = true
local mes = Instance.new("SpecialMesh")
mesh(mes,bewm,1.2,1.2,1,"Brick")
bewm.CFrame = CFrame.new(me.Character.Head.Position, paw) * CFrame.new(0,0,-bewm.Size.Z/2) * CFrame.new(0,0,-1)
local luck = math.random(1,3)
if luck == 1 then
local cfr = Instance.new("Part",blagh)
cfr.Size = Vector3.new(1,1,1)
cfr.Transparency = 1
cfr.Anchored = true
cfr.CFrame = bewm.CFrame * CFrame.new(0,0,-bewm.Size.Z/2)
local ex = Instance.new("Explosion")
ex.Parent = blagh
ex.Position = cfr.Position
ex.BlastRadius = 9
ex.BlastPressure = 400000
ex.Hit:connect(function(part)
if part:GetMass() < 240 then
part.Anchored = false
part:BreakJoints()
end
end)
end
wait()
bewm:remove()
end
blagh:remove()
bg:remove()
using = false
end)
end)

end}
module[4] = {"Shuriken",function()
script.Parent = nil
it = Instance.new
v3=Vector3.new
bc=BrickColor.new 
c3=Color3.new 
cn=CFrame.new 
ca=CFrame.Angles
ca2=function(a,b,c) 
return ca(math.rad(a),math.rad(b),math.rad(c)) 
end
ti=table.insert 
tr=table.remove 
rn=math.random 
rd=math.rad 
mf=math.floor
ud = UDim2.new
inf=math.huge
dg=math.deg
mdeg=math.deg
v310=v3(1/0,1/0,1/0)
pi=math.pi
w=wait
cf=cn
bn=bc
ts=tostring
Workspace=game:GetService("Workspace")
Players=game:GetService("Players")
Player=Players.LocalPlayer
Lighting=game:GetService("Lighting")
Debris=game:GetService("Debris")
work=Workspace
server=Players
tb=Playe
lighting=Lighting
deb=Debris
Player=game:GetService("Players").LocalPlayer
Char=Player.Character
Backpack=Player.Backpack
PlayerGui=Player.PlayerGui
Torso=Char.Torso
Head=Char.Head
Hum=Char.Humanoid
Cam=workspace.CurrentCamera
Tn="Glaive"

running=false
equip="unequipped"
anim=""
keys={}
dtap={}
fmouse=nil
UseGyro=true
Combo=0
timer=0
Hum.WalkSpeed=18

ids = {}
ids.Chakram = 18430887
ids.chakram = 47260990
ids.Diamond = 9756362
ids.Slash = 10209645
ids.Slash2 = 46760716
ids.Slash3 = 10209640
ids.Shoot = 2691586
ids.Shoot2 = 10209842
ids.Ring =  3270017 
ids.Crown = 20329976
ids.Icon = 52611635
ids.Flame = 31760113
ids.Spike = 1033714
ids.Block = 'rbxasset://sounds\\metal.ogg'
ids.Hit = 10209590

for i,v in pairs(ids) do 
    if type(v)=='number' then 
        ids[i]='http://www.roblox.com/asset/?id='..v
    end
    game:GetService("ContentProvider"):Preload(ids[i])
end

qi = function(ttz)
local qii = it(ttz[1])  table.foreach(ttz,function(oi,oi2) 
if oi ~= 1 and oi ~= 2 then  qii[oi] = oi2  end  end) qii.Parent=ttz[2] return qii end
q = function(f)
coroutine.resume(coroutine.create(function() f() end)) end 
ft = function(tablez,item)
for i=1,#tablez do if tablez[i] == item then return i end end  return nil end
ft2 = function(tablez,item)
for i=1,#tablez do  if tablez[i][1] == item then  return i  end  end  return nil end
pa = function(pa,pn,sh,x,y,z,c,a,tr,re,bc2)
local fp=nil 
if sh ~= "Wedge" and sh ~= "CornerWedge" and sh ~= "VehicleSeat" and sh ~= "Seat" then 
fp=it("Part",pa) 
fp.Material = "SmoothPlastic"
fp.TopSurface = "SmoothNoOutlines"
fp.BottomSurface = "SmoothNoOutlines"
fp.RightSurface = "SmoothNoOutlines"
fp.LeftSurface = "SmoothNoOutlines"
fp.BackSurface = "SmoothNoOutlines"
fp.FrontSurface = "SmoothNoOutlines"
fp.Shape=sh or "Block" 
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
fp.Size=v3(x or 4,y or 2,z or 2) 
fp.Friction = 2 
fp.CanCollide=c or true
fp.Anchored=a or false
fp.BrickColor=bc(bc2 or "") 
fp.Transparency=tr or 0
fp.Reflectance=re or 0
fp.BottomSurface=0 
fp.Name=pn or "TBLib Part"
fp.Locked = true
fp.TopSurface=0 
fp.CFrame=cn(0,0,0)
fp:BreakJoints() 
fp.Anchored = a 
return fp 
end 


function ClearClass(Object,Class) 
for _,v in pairs(Object:GetChildren()) do 
if v:IsA(Class) then 
v:Destroy() 
end 
end 
end

function GetClass(Object,Class)
for _,v in pairs(Object:GetChildren()) do
if v:IsA(Class) then
return v
end
end
end

function re(par,obj)


 if par:findFirstChild(obj) then 


 par[obj]:Remove'' 


 end 


end 




function invis(o)


 for i,v in pairs(o:children()) do 


 if v:IsA("BasePart") then 


 v.Transparency=1 


 end 


 invis(v) 


 end 


end 




function newhats(p,o,o2)


 for i,v in pairs(p:children()) do 


 if v:IsA("Hat") then 


 local np=v.Handle:Clone'' 


 np.Transparency=0 


 np.Mesh.Scale=np.Mesh.Scale*1.04 


 np.Parent=o 


 np.CFrame=v.Handle.CFrame 


 np.Name="Hat"


 stick2(np,o2,o) 


 end 


 end 


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


 


function weld(pa,p0,p1,x,y,z,a,b,c) 


 local fw=it("Weld",pa) 


 fw.Part0=p0 


 fw.Part1=p1 


 fw.C0=cn(x,y,z)*ca(a,b,c) 


 return fw 


end






stick = function(hit2,hit)


 return qi({"Weld",hit2,Part0=hit2,Part1=hit,C0=hit2.CFrame:inverse()*cn(hit2.Position),C1=hit.CFrame:inverse()*cn(hit2.Position)}) 


end 




function stick2(hit2,hit,tostick)


 local weld=it("Weld") 


 weld.Part0=tostick 


 weld.Part1=hit2 


 local HitPos=hit.Position 


 local CJ=cn(HitPos) 


 local C0=hit2.CFrame:inverse() *CJ 


 local C1=hit.CFrame:inverse() * CJ weld.C0=C1 


 weld.C1=C0 


 weld.Parent=hit2 


end 




ray = function(Pos, Dir,tab)


 return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999),tab)


end 


 


function rtab(tabz,obj) 


 for i=1,#tabz do 


 if tabz[i] == obj then 


 tr(tabz,i) 


 break 


 end 


 end 


end 




sTrail={}


function Trail2(lopz,ob,waitz,col,thickz,ofz) cw(function() ti(sTrail,ob)


local oldpos=(ob.CFrame *ofz).p local lopz2=0


local function loltr() local obp=(ob.CFrame *ofz).p lopz2=lopz2 + 1


local mag=(oldpos - obp).magnitude 


local tr=pa(ob,"trail","Block",0,0,0,false,false,0.5,0.15,col) tr.Anchored=true 


tr.CFrame=cn(oldpos,obp) 


tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2)


local trm=it("CylinderMesh",tr) trm.Scale=v3(5*thickz,mag*5,5*thickz)


cw(function() for i=5*thickz,0,-5*thickz/10 do trm.Scale=v3(i,mag*5,i) w() end tr:Remove'' end)


tr.CFrame=tr.CFrame *ca(rd(90),0,0) oldpos=obp end 


repeat loltr()


wait(waitz) until ft(sTrail,ob) == nil or lopz2 == lopz loltr() end) end




Trail = function(ob,times,waitz,col,thickz,ofz) -- Brick Trail


 q(function() 


 local oldpos=(ob.CFrame *ofz).p 


 for i=1,times do 


 if effon==true then


 local obp=(ob.CFrame *ofz).p 


 local mag=(oldpos - obp).magnitude 


 local tr=pa(ob,"trail","Block",0,0,0,false,false,0.5,0.15,col)


 tr.Anchored=true 


 tr.CFrame=cn(oldpos,obp) 


 tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2) 


 trm=it("CylinderMesh",tr) 


 trm.Scale=v3(thickz,mag*5,thickz) 


 q(function() 


 for i=thickz,0,thickz/10 do 


 trm.Scale=v3(i,mag*5,i) 


 wait() 


 end 


 tr:Remove'' 


 end) 


 tr.CFrame=tr.CFrame *ca(rd(90),0,0) 


 oldpos=obp wait(waitz) 


 end


 end


 end) 


end




de = function(it,ti) game:service'Debris':AddItem(it,ti) end -- Debris




GlowMesh = function(anch,meshid2,rootz,mv3,colzz,adjus,l1,l2,l3) q(function() -- Glowmesh


local spi=pa(rootz,"glowmesh","Block",mv3.X,mv3.Y,mv3.Z,false,false,l1,0,colzz) local spim=it("SpecialMesh",spi) spi.CanCollide=false if meshid2:lower()=="sphere" then spim.MeshType="Sphere" elseif meshid2:lower()=="block" then spim=it("BlockMesh",spi) else spim.MeshType="FileMesh" spim.MeshId=meshid2 end


if anch then local spiw=qi({"Weld",spi,Part0=rootz,Part1=spi}) spiw.C0 =spiw.C0 *adjus else spi.Anchored=true spi.CFrame=adjus end 


for i=l1,l2,l3 do spi.Transparency=i spim.Scale=mv3*(i+0.3) wait() end spi:Remove'' end) 


end




DetectSurface = function(pos, part) -- Surface Detector


local surface = nil local pospos = part.CFrame


local pos2 = pospos:pointToObjectSpace(pos) local siz = part.Size local shaep = part.Shape


if shaep == Enum.PartType.Ball or shaep == Enum.PartType.Cylinder then


surface = {"Anything", cn(pospos.p, pos)*cn(0, 0, -(pospos.p - pos).magnitude+0.12)*ca(rd(-90), 0, 0)}


else if pos2.Y > ((siz.Y/2)-0.01) then surface = {"Top", ca(0, 0, 0)}


elseif pos2.Y < -((siz.Y/2)-0.01) then surface = {"Bottom", ca(-math.pi, 0, 0)} elseif pos2.X > ((siz.X/2)-0.01) then surface = {"Right", ca(0, 0, rd(-90))}


elseif pos2.X < -((siz.X/2)-0.01) then surface = {"Left", ca(0, 0, rd(90))} elseif pos2.Z > ((siz.Z/2)-0.01) then surface = {"Back", ca(rd(90), 0, 0)} elseif pos2.Z < -((siz.Z/2)-0.01) then surface = {"Front", ca(rd(-90), 0, 0)} end end return surface end




BulletHole = function(HitPos,HitObj,sc,img,par) -- Bullethole function


local Surface = DetectSurface(HitPos, HitObj)


local C = cn(HitPos) * ca(HitObj.CFrame:toEulerAnglesXYZ()) * Surface[2]


if Surface[1] == "Anything" then C = Surface[2] end local theimg = img or ds.BulletHole


local bl = pa(workspace or par,"bullethole","Block",sc,0,sc,false,true,1,0,"") qi({"Decal",bl,Face="Top",Texture=theimg})


bl.CFrame = C*cn(0,-0.1,0) if not HitObj.Anchored then bl.Anchored = false stick(bl,HitObj) bl.ChildRemoved:connect(function() bl:Remove() end) end q(function() wait(5) for i=0,1,0.05 do bl.Size=v3(-i*sc,0,-i*sc) wait() end de(bl,0) end) 


end




so = function(id,par,vol,pit) q(function() -- Sound maker


local sou = qi({"Sound",par or workspace,Volume=vol,Pitch=pit or 1,SoundId=id})


wait() sou:play() wait(6) sou:Remove() end) end




-- local/so(asset..ds.GothicMusic,workspace,1,2.6)




function GetRegion(p0,p1,f,f2) q(function()


for i,v in pairs(workspace:FindPartsInRegion3(Region3.new(p0,p1),c,100) ) do if v.Parent:findFirstChild("Humanoid") and v.Parent.Humanoid.Health > 0 and v.Parent:findFirstChild("Torso") then q(function() f(v.Parent) end) elseif f2 and v.Parent.Parent:findFirstChild("Humanoid") == nil then f2(v) end end


end) end 


 


FindGround = function(pos) -- ground finder


 local ax,ay,az = pos:toEulerAnglesXYZ()


 local bhit,bpos=ray(pos.p,pos.p - (pos.p + v3(0,200,0)))


 if bhit and bpos then 


 return cn(bpos)*ca(ax,ay,az) 


 end 


 return nil 


end




function NPC(Name, Position) -- npc maker


        local Character = Instance.new("Model")


        Character.Name = Name


        local Humanoid = Instance.new("Humanoid")


        Humanoid.Parent = Character


        local Template = Instance.new("Part")


        Template.FormFactor = "Custom"


        Template.Size = Vector3.new(1, 2, 1)


        Template.Locked = true


        local Head = Template:Clone()


        Head.Name = "Head"


        Head.TopSurface = "Smooth"


        Head.BottomSurface = "Smooth"


        Head.Size = Vector3.new(2, 1, 1)


        Head.Parent = Character


        local Mesh = Instance.new("SpecialMesh")


        Mesh.MeshType = "Head"


        Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)


        Mesh.Parent = Head


        local Face = Instance.new("Decal")


        Face.Name = "face"


        Face.Texture = "rbxasset://textures/face.png"


        Face.Parent = Head


        local Torso = Template:Clone()


        Torso.Name = "Torso"


        Torso.LeftSurface = "Weld"


        Torso.RightSurface = "Weld"


        Torso.CFrame = CFrame.new(0, 10000, 0)


        Torso.Size = Vector3.new(2, 2, 1)


        Torso.Parent = Character


        local TShirt = Instance.new("Decal")


        TShirt.Name = "roblox"


        TShirt.Parent = Torso


        local LeftArm = Template:Clone()


        LeftArm.Name = "Left Arm"


        LeftArm.Parent = Character


        local RightArm = Template:Clone()


        RightArm.Name = "Right Arm"


        RightArm.Parent = Character


        local LeftLeg = Template:Clone()


        LeftLeg.Name = "Left Leg"


        LeftLeg.Parent = Character


        local RightLeg = Template:Clone()


        RightLeg.Name = "Right Leg"


        RightLeg.Parent = Character


        Character:BreakJoints()


        local Neck = Instance.new("Weld")


        Neck.Name = "Neck"


        Neck.Part0 = Torso


        Neck.Part1 = Head


        Neck.C0 = CFrame.new(0, 1.5, 0)


        Neck.Parent = Torso


        local LeftShoulder = Instance.new("Motor")


        LeftShoulder.Name = "Left Shoulder"


        LeftShoulder.Part0 = Torso


        LeftShoulder.Part1 = LeftArm


        LeftShoulder.MaxVelocity = 0.1


        LeftShoulder.C0 = CFrame.new(-Torso.Size.x / 2 - RightArm.Size.x / 2, LeftArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -math.pi / 2, 0)


        LeftShoulder.C1 = CFrame.new(0, LeftArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -math.pi / 2, 0)


        LeftShoulder.Parent = Torso


        local RightShoulder = Instance.new("Motor")


        RightShoulder.Name = "Right Shoulder"


        RightShoulder.Part0 = Torso


        RightShoulder.Part1 = RightArm


        RightShoulder.MaxVelocity = 0.1


        RightShoulder.C0 = CFrame.new(Torso.Size.x / 2 + RightArm.Size.x / 2, RightArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi / 2, 0)


        RightShoulder.C1 = CFrame.new(0, RightArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi / 2, 0)


        RightShoulder.Parent = Torso


        local LeftHip = Instance.new("Motor")


        LeftHip.Name = "Left Hip"


        LeftHip.Part0 = Torso


        LeftHip.Part1 = LeftLeg


        LeftHip.MaxVelocity = 0.1


        LeftHip.C0 = CFrame.new(-LeftLeg.Size.x / 2, -LeftLeg.Size.y / 2, 0) * CFrame.fromEulerAnglesXYZ(0, -math.pi / 2, 0)


        LeftHip.C1 = CFrame.new(0, LeftLeg.Size.y / 2, 0) * CFrame.fromEulerAnglesXYZ(0, -math.pi / 2, 0)


        LeftHip.Parent = Torso


        local RightHip = Instance.new("Motor")


        RightHip.Name = "Right Hip"


        RightHip.Part0 = Torso


        RightHip.Part1 = RightLeg


        RightHip.MaxVelocity = 0.1


        RightHip.C0 = CFrame.new(RightLeg.Size.x / 2, -RightLeg.Size.y / 2, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi / 2, 0)


        RightHip.C1 = CFrame.new(0, RightLeg.Size.y / 2, 0) * CFrame.fromEulerAnglesXYZ(0, math.pi / 2, 0)


        RightHip.Parent = Torso


        local BodyColors = Instance.new("BodyColors")


        BodyColors.LeftArmColor = BrickColor.new("Bright yellow")


        BodyColors.RightArmColor = BrickColor.new("Bright yellow")


        BodyColors.LeftLegColor = BrickColor.new("Br. yellowish green")


        BodyColors.RightLegColor = BrickColor.new("Br. yellowish green")


        BodyColors.HeadColor = BrickColor.new("Bright yellow")


        BodyColors.TorsoColor = BrickColor.new("Bright blue")


        BodyColors.Parent = Character


        Character.Parent = Workspace


        Character:MoveTo(Position)


        Character:MoveTo(Torso.Position + Vector3.new(0, 3, 0))


        return Character


end




AddBV=function(str,cfr,par,debt)


if not par then return end 


if par:findFirstChild'LibBV' then par.LibBV:Remove() end 


tbbodyvelocity=qi{'BodyVelocity',par,velocity=cfr.lookVector*str,maxForce=v3(1/0,1/0,1/0),Name='LibBV'} deb:AddItem(tbbodyvelocity,debt)


end




AddBG=function(str,par,debt)


if not par then return end 


if par:findFirstChild'LibBG' then par.LibBG:Remove() end 


tbbodygyro=qi{'BodyGyro',par,maxTorque=v3(1/0,1/0,1/0),P=100000,cframe=str,Name='LibBG'} deb:AddItem(tbbodygyro,debt)


end




AddBAV=function(vec3,par,debt)


if not par then return end


if par:findFirstChild'LibBAV' then par.LibBAV:Remove() end


tbbodyangularvelocity=qi{'BodyAngularVelocity',par,maxTorque=v3(1/0,1/0,1/0),angularvelocity=vec3,Name='LibBAV'} deb:AddItem(tbbodyangularvelocity,debt)


end




Dmg = function(Hum,Dealt,Critical)


local HM=Hum.Parent


local HMT,HMB=HM:findFirstChild'Torso',HM:findFirstChild'Block'


local Blocks=HMB and HMB.Value>0


if HMT then


local mm=qi{'Model',HMT} qi{'Humanoid',mm,MaxHealth=0} deb:AddItem(mm,1)


local mp= qi{'Part',mm,Name='Head',formFactor="Custom",Anchored=true,CanCollide=false,Size=v3(1,0.2,1),CFrame=HMT.CFrame*cn(rn(-100,100)/50,3,rn(-100,100)/50)} qi{'BlockMesh',mp}


if Blocks then 


mm.Name='Block!'


mp.BrickColor=bn'Bright blue'


HMB.Value=HMB.Value-1


elseif not Blocks then


mm.Name=Dealt


mp.BrickColor=bn'Bright red'


end


end


if not Blocks then  


Hum:TakeDamage(Dealt)


end


end




GetHum = function(part)


local Hum,HT,block


for i,v in pairs(part.Parent:children()) do 


if v:IsA("Humanoid") then


Hum=v


elseif v.Name=='Torso' then


HT=v


elseif v.Name=='Block' and v:IsA("NumberValue") then


block=v


end


end


return Hum,HT,block


end




Lightning = function(p0,p1,tym,ofs,col,th,tra) -- start end times offset color thickness


local magz = (p0 - p1).magnitude local curpos = p0 local trz = {-ofs,ofs}


for i=1,tym do 


local li = it("Part",c) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = tra or 0.4 li.BrickColor = bc(col)


li.formFactor = "Custom" li.CanCollide = false li.Size = v3(th,th,magz/tym) local ofz = v3(trz[rn(1,2)],trz[rn(1,2)],trz[rn(1,2)]) 


local trolpos = cn(curpos,p1)*cn(0,0,magz/tym).p+ofz


if tym == i then 


local magz2 = (curpos - p1).magnitude li.Size = v3(th,th,magz2)


li.CFrame = cn(curpos,p1)*cn(0,0,-magz2/2)


else


li.CFrame = cn(curpos,trolpos)*cn(0,0,magz/tym/2)


end


curpos = li.CFrame*cn(0,0,magz/tym/2).p de(li,0.25)


end


end




MakeCrater = function(pos,sc,tyms,debz,par) -- crater maker


 q(function() 


 if not debz then 


 debz = 5 


 end 


 local bhit,bpos=ray(pos,pos - (pos + v3(0,200,0)))


 if bhit and bpos then
 for i=1,tyms do 
 q(function()
 local gr = pa(par or workspace,"","Block",rn(5,13)/10*sc,0.25*sc,rn(4,10)/10*sc,true,true,bhit.Transparency,bhit.Reflectance,bhit.BrickColor.Name) 
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
MakeCrack = function(pos,sc,debz,par) -- crackmaker
 q(function() 
 if not debz then 
 debz = 5 
 end 
 local bhit,bpos=ray(pos,pos - (pos + v3(0,10,0)))
 if bhit and bpos then
local cr = pa(par or workspace,"Crack","Block",sc,0,sc,false,true,1,0,"") cr.CFrame = cn(bpos)
local dec=qi({"Decal",cr,Face="Top",Texture=ds.Crack}) de(cr,debz)
 end 
 end)
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
Welds={}
Ani=function(w,a,b,c,d,e,f,ty,inc,sined)
if not Welds[w] then
local d0,e0,f0=w.C0:toEulerAnglesXYZ() local d1,e1,f1=w.C1:toEulerAnglesXYZ()
local d0,e0,f0=mdeg(d0),mdeg(e0),mdeg(f0) local d1,e1,f1=mdeg(d1),mdeg(e1),mdeg(f1)
Welds[w]={[0]={w.C0.x,w.C0.y,w.C0.z,d0,e0,f0},[1]={w.C1.x,w.C1.y,w.C1.z,d1,e1,f1}}
end
local c0,c1=Welds[w][0],Welds[w][1]
c0[1],c0[2],c0[3]=w.C0.x,w.C0.y,w.C0.z
c1[1],c1[2],c1[3]=w.C1.x,w.C1.y,w.C1.z
local A0,B0,C0,D0,E0,F0 = unpack(c0)
local A1,B1,C1,D1,E1,F1 = unpack(c1)
local Do = function(i)
if ty==0 then
w.C0=cn( A0-((A0-a)*i) , B0-((B0-b)*i) , C0-((C0-c)*i) ) * ca2( D0-((D0-d)*i) , E0-(((E0-e)/1)*i) , F0-((F0-f)*i) )
elseif ty==1 then
w.C1=cn( A1-((A1-a)*i) , B1-((B1-b)*i) , C1-((C1-c)*i) ) * ca2( D1-((D1-d)*i) , E1-(((E1-e)/1)*i) , F1-((F1-f)*i) )
else
w.C0=cn( A0-((A0-a)*i) , B0-((B0-b)*i) , C0-((C0-c)*i) ) * ca2(D0,E0,F0)
w.C1=cn(A1,B1,C1) * ca2( D1-((D1-d)*i) , E1-(((E1-e)/1)*i) , F1-((F1-f)*i) )
end
end
for i=inc,1,inc do 
Do(sined and math.sin(math.pi/2*i) or i)
wait()
end
Do(1)
if ty==0 then
c0[4],c0[5],c0[6]=d,e,f 
else
c1[4],c1[5],c1[6]=d,e,f 
end
end
qAni=function(w,a,b,c,d,e,f,ty,inc,sined) q(function() Ani(w,a,b,c,d,e,f,ty,inc,sined) end) end
rAni=function(w)
Welds[w]=nil
end
gunshot = function(speed,sc,dmg,cff) q(function() -- gunshot function
local bb = pa(workspace,"bullet","Block",0.2*sc,0.3*sc,0.2*sc,true,true,0,0.1,"Black") qi({"CylinderMesh",bb})
bb.CFrame = cff*ca(rd(rn(-1000,1000)/1500),rd(rn(-1000,1000)/1500),rd(rn(-1000,1000)/1500))
so(ds.Fire,bb,0.3,1) wait() for i=1,50 do 
bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,-1,0)).p)
if bhit and bhit.Name ~= "bullet" and bhit.Name ~= "bullethole" and bpos and (bpos - bb.Position).magnitude < speed  then break end 
bb.CFrame=bb.CFrame*cn(0,speed,0)*ca(rd(-0.2),0,0)
wait()
end bb.CFrame=bb.CFrame*cn(0,(bpos-bb.Position).magnitude,0)
if not bhit.Anchored then 
if bhit.Parent:findFirstChild("Humanoid") then local h = bhit.Parent.Humanoid h.Health=h.Health-dmg so(ds.Hit,bhit,0.3,1) end 
else if bhit.Name~="Base" then bhit.Anchored=false bhit:BreakJoints() end end bb:Remove()
if bhit.Parent:findFirstChild("Humanoid") == nil then BulletHole(bpos,bhit,0.7*sc) end
end) end
dive = function(ob2,pro,ite,stof)
local function div(ob) for i,v in pairs(ob:children()) do if v[pro] == ite then 
for i=1,#stof do v[stof[i][1]] = stof[i][2] end else div(v) end end end 
div(ob2)
end
fc = function(ob,cl)
for i,v in pairs(ob:children()) do if v.className:lower()==cl:lower() then return v end end 
end
function se(Key,Text) 
local Values = {} 
for value in (Text..Key):gmatch("(.-)"..Key) do 
table.insert(Values,value)
end return Values 
end
local thefenv = getfenv()
getfenv()["rmhelp"] = function() 
local nus = 0
for i,v in pairs(thefenv) do if i ~= "wait" and i ~= "script" then nus = nus + 1 wait(0.05)
print(string.rep(" ",3-#tostring(nus)) ..nus.. ")  " ..i.. "  (" ..type(v).. ")")
end
end
end
for i,v in pairs(thefenv) do 
_G[i] = v
--print(i)
end

CModel=qi{'Model',Cam,Name=Tn}
Tool=qi{'HopperBin',Player.Backpack,Name=Tn}
Suit=qi{'Model',Char,Name=''}
Weapon=qi{'Model',Suit,Name=Tn}
Gui=qi{'ScreenGui',PlayerGui,Name=Tn}
Block=qi{'NumberValue',Char,Name='Block',Value=0}



Limbs={LS=Torso:findFirstChild'Left Shoulder',RS=Torso:findFirstChild'Right Shoulder',LH=Torso:findFirstChild'Left Hip',RH=Torso:findFirstChild'Right Hip'}
if _G.Limbz then 
Limbs.LS=Limbs.LS or _G.Limbz.LS
Limbs.RS=Limbs.RS or _G.Limbz.RS
Limbs.LH=Limbs.LH or _G.Limbz.LH
Limbs.RH=Limbs.RH or _G.Limbz.RH
end 
_G.Limbz=Limbs
Torso.Neck.C0=cn(0,1.5,0) Torso.Neck.C1=cn(0,0,0)
c2(Torso.Neck,1,3,0,1.5,0,0,0,0)
LS,RS,LH,RH=Limbs.LS,Limbs.RS,Limbs.LH,Limbs.RH
LA,RA,LL,RL=Char['Left Arm'],Char['Right Arm'],Char['Left Leg'],Char['Right Leg']
LS.Part0,RS.Part0,LH.Part0,RH.Part0=Torso,Torso,Torso,Torso
LS.Part1,RS.Part1,LH.Part1,RH.Part1=LA,RA,LL,RL

pcall(function() thesuit:Remove() end)

fTorso=Char.HumanoidRootPart tw=fTorso.RootJoint hw=Torso.Neck c2(tw,1,3,0,0,0,90,180,0)
la=qi{'Weld',Torso,Part0=Torso,C0=cn(-1.5,0.5,0),C1=cn(0,0.5,0)} ra=qi{'Weld',Torso,Part0=Torso,C0=cn(1.5,0.5,0),C1=cn(0,0.5,0)}
ll=qi{'Weld',Torso,Part0=Torso,C0=cn(-0.5,-1,0),C1=cn(0,1,0)} rl=qi{'Weld',Torso,Part0=Torso,C0=cn(0.5,-1,0),C1=cn(0,1,0)}

Arms = function(on)
    if on then
        LS.Part1=nil RS.Part1=nil
        la.Part0=Torso ra.Part0=Torso
        la.Part1=LA ra.Part1=RA 
        la.C0,la.C1=cn(-1.5,0.5,0),cn(0,0.5,0) 
        ra.C0,ra.C1=cn(1.5,0.5,0),cn(0,0.5,0)
    else
        LS.Parent,RS.Parent=Torso,Torso 
        LS.Part0=Torso 
        RS.Part0=Torso 
        LS.Part1=LA 
        RS.Part1=RA
        la.Part1=nil ra.Part1=nil
    end
end

Legs = function(on)
    if on then
        LH.Part1=nil RH.Part1=nil
        ll.Part0=Torso rl.Part0=Torso
        ll.Part1=LL rl.Part1=RL 
        ll.C0,ll.C1=cn(-0.5,-1,0),cn(0,1,0) 
        rl.C0,rl.C1=cn(0.5,-1,0),cn(0,1,0)
    else
        LH.Parent,RH.Parent=Torso,Torso 
        LH.Part0=Torso 
        RH.Part0=Torso 
        LH.Part1=LL 
        RH.Part1=RL
        ll.Part1=nil rl.Part1=nil
    end
end

WDesign=function()
    ha=pa(Weapon,"","Block",1,1,1,false,false,1,0) haw=weld(ha,RA,ha,0.5,-0.5,0,rd(30),rd(90),0)
    p=pa(Weapon,"","Block",1,1,1,false,false,0,0,"Really black") pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,Scale=v3(0.6,0.6,2),MeshId=ids.Chakram}
    chak=pa(Weapon,"","Block",1,1,1,false,false,0,0,"Navy blue") chakw=weld(chak,ha,chak,0,0,0,0,0,0) qi{"SpecialMesh",chak,Scale=v3(1.2,1.2,2),MeshId=ids.chakram}
    for i=0,360,360/3 do
        p=pa(Weapon,"","Block",0.4,0.6,0.2,false,false,0,0,"Really black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"BlockMesh",p} 
        pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(0.7,0,0)
        p=pa(Weapon,"","Block",0.2,0.3,0.3,false,false,0,0,"Really black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshType="Wedge",Scale=v3(1,1,1)} 
        pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1,0,0)*ca(0,rd(90),0)*cn(0,0.15,0.05)*ca(rd(90),0,0)
        p=pa(Weapon,"","Block",0.2,0.3,0.3,false,false,0,0,"Really black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshType="Wedge",Scale=v3(1,1,1)} 
        pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1,0,0)*ca(0,rd(90),0)*cn(0,-0.15,0.05)*ca(rd(90),0,0)*ca(0,rd(180),0)
        p=pa(Weapon,"","Block",0.4,1,0.2,false,false,0,0,"Really black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"BlockMesh",p}
        pw.C0=ca(0,0,rd(30))*cn(0,0,0)*ca(0,0,rd(i))*cn(0,1.25,0)
        p=pa(Weapon,"","Block",0.2,0.4,0.4,false,false,0,0,"Really black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshType="Wedge",Scale=v3(1,1,1)} 
        pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1.9,0,0)*ca(0,rd(90),0)*cn(0,0,0.05)*ca(rd(90),0,0)*ca(0,rd(180),0)
        p=pa(Weapon,"","Block",0.2,0.4,0.4,false,false,0,0,"Really black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshType="Wedge",Scale=v3(1,1,1)} 
        pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1.9,0,0)*ca(0,rd(90),0)*cn(0,0.4,0.05-0.4)*ca(rd(270),0,0)*ca(0,rd(180),0)
        p=pa(Weapon,"Blade"..tostring(i),"Block",0.2,0.4,1.5,false,false,0,0,"Really black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshType="Wedge",Scale=v3(1,1,1)} 
        pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1.9,0,0)*ca(0,rd(90),0)*cn(0,0.95,0.05)*ca(rd(90),0,0)*ca(0,0,0)
        p=pa(Weapon,"","Block",1,1,1,false,false,0,0,"Navy blue") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshId=ids.Diamond,Scale=v3(0.1,0.3,0.3)} 
        pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1.9,0,0)*ca(0,rd(90),0)*cn(0.1,0.2,0.05-0.2)*ca(0,rd(180),0)*ca(rd(45),0,0)
        p=pa(Weapon,"","Block",1,1,1,false,false,0,0,"Navy blue") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshId=ids.Diamond,Scale=v3(0.1,0.3,0.3)} 
        pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1.9,0,0)*ca(0,rd(90),0)*cn(-0.1,0.2,0.05-0.2)*ca(0,rd(180),0)*ca(rd(45),0,0)
    end
    for i,v in pairs(Weapon:GetChildren()) do v.CanCollide=false end
end

WDesign() Arms(false) Legs(false)

Dealt={4,8}
BBD,BBT=0,{}
CritChance = 5
CriticalSeverity=2.25

BladeHit=function(hit)
    local Hum=GetHum(hit)
    if not Hum or BBD==0 or BBT[Hum.Parent] then return end
    BBT[Hum.Parent]=1
    if rn(1,100)<=CritChance then
        Dmg(Hum,rn(Dealt[1],Dealt[2])*CriticalSeverity,true)
    else
        Dmg(Hum,rn(Dealt[1],Dealt[2]),false)
    end    
    local HMT=Hum.Parent:findFirstChild'Torso' 
    if BBD==2 and HMT then 
        AddBV(10,cn(Torso.Position,HMT.Position),HMT,0.15) 
    end
    so(ids.Hit,HMT,1,1)
    wait(0.07)
    BBT[Hum.Parent]=nil
end

for i,v in pairs(Weapon:GetChildren()) do v.Touched:connect(BladeHit) end

function Stance(speed)
    c2(ra,speed,3,1.5,0.5,0,20,0,-20)
    c2(la,speed,3,-1.5,0.5,0,-20,0,20)
    c2(ll,speed,3,-0.5,-1,0,0,0,0)
    c2(rl,speed,3,0.5,-1,0,0,0,0)
    c2(hw,speed,3,0,1.5,0,0,30,0)
    c2(tw,speed,3,0,0,0,90,180,-30)
    Ani(haw,0,-1.3,0,0,90,30,0,speed/2,1)
end

function Reset(speed)
    c2(ra,speed,3,1.5,0.5,0,0,0,0)
    c2(la,speed,3,-1.5,0.5,0,0,0,0)
    c2(ll,speed,3,-0.5,-1,0,0,0,0)
    c2(rl,speed,3,0.5,-1,0,0,0,0)
    c2(hw,speed,3,0,1.5,0,0,0,0)
    c2(tw,speed,3,0,0,0,90,180,0)
    Ani(haw,0.5,-0.5,0,30,90,0,0,speed/2,1)
end

function Combo1()
    Combo=0.5
    anim="Melee"
    c2(la,0.1,3,-1.5,0.7,-0.2,-135,0,-45)
    c1(hw,0.1,3,0,1.5,0,-25,-30,0)
    anim=""
    Combo=1
end

function Combo2()
    Combo=1.5
    anim="Melee"
    BBD=2
    so(ids.Slash3,ha,1,1.1)
    c2(la,0.3,3,-1,0.7,-0.3,-45,0,-45)
    c1(hw,0.3,3,0,1.5,0,15,10,0)
    BBD=0
    anim=""
    Combo=2
end

function Combo3()
    Combo=2.5
    anim="Melee"
    c2(hw,0.1,3,0,1.5,0,0,0,0) 
    c1(la,0.1,3,-0.5,0.5,-1,0,180,-90)
    wait(0.08)
    Combo=3
    anim=""
end

function Combo4()
    Combo=3.5
    anim="Melee"
    BBD=2
    so(ids.Slash3,ha,1,1.1)
    c2(la,0.25,3,-1.5,0.5,-0.2,160,180,-90)
    c1(hw,0.25,3,0,1.5,0,0,-60,0)
    BBD=0
    anim=""
    Combo=4
end

function Break()
    UseGyro=true
    Combo=-0.5
    Stance(0.1)
    anim=""
    Combo=0
end

function Button1Down()
    if equip=="equipped" and anim=="" and Combo==0 then
        anim="Throw"
        local lolunit=math.deg((Torso.Position-fmouse.Hit.p).unit.y)
        c2(tw,0.1,3,0,0,0,90,180,-50)
        c2(hw,0.1,3,0,1.5,0,lolunit,50,0)
        c1(la,0.1,3,-1.5,0.5,0.25,30,0,90+lolunit)
        wait(0.25)
        c2(tw,0.25,3,0,0,0,90,180,50)
        c2(hw,0.25,3,0,1.5,0,lolunit,-50,0)
        c1(la,0.25,3,-1.5,0.5,-0.5,-40,0,90-lolunit)
        BBD=2 
        q(function() for i=1,8 do so(ids.Slash3,ha,1,1.5) wait(0.05) end end)
        Ani(haw,0,-rn(15,30),0,0,90,1080,0,0.07,1)
        Ani(haw,0,-1.3,0,0,90,30,0,0.11,1)
        BBD=0
        Stance(0.1)
        anim="" 
    end
end

function KeyDown(key)
    key=key:lower()
    keys[key]=true
    print(key:byte())
    local oldtap=dtap[key] or 0
    dtap[key]=tick()
    if key=="f" and equip=="equipped" and anim=="" then 
        anim="Blocking" Block.Value=3 Hum.WalkSpeed=12
        c2(la,0.1,3,-1.25,0.5,0,-55,0,-55) c1(ra,0.1,3,1,0.5,-0.5,50,-180,45)
        local ofs = RA.CFrame:toObjectSpace(ha.CFrame)
        haw.Part0=RA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
        qAni(haw,0.5,-0.5,0,30,90,0,0,0.1/1.3,1)
        c2(la,0.07,3,-1.5,0.5,0,-20,0,20)
        c2(tw,0.07,3,0,0,0,90,180,-70)
        c2(hw,0.07,3,0,1.5,0,0,70,0)
        c1(ra,0.07,3,1.5,0.4,-0.2,-170,0,10)
        anim="Block" 
        so(ids.Block,ha,1,1)
        repeat wait(0.1)  until Block.Value<=0 or not keys[key] 
        if anim=="Block" then
            anim="Unblocking" Block.Value=0 Hum.WalkSpeed=18
            c2(la,0.1,3,-1.25,0.5,0,-55,0,-55) c1(ra,0.1,3,1,0.5,-0.5,50,-180,45)
            local ofs = LA.CFrame:toObjectSpace(ha.CFrame) 
            haw.Part0=LA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw) qAni(haw,0,-1.3,0,0,90,30,0,0.1,1)
            Stance(0.2) anim="" 
            
        end
    elseif key=="e" and equip=="equipped" and anim=="" then
        if Combo==0 then
            Combo1()
            q(function()
                wait(0.5)
                if Combo==1 then
                    Break()
                end
            end)
        elseif Combo==1 then
            Combo2()
            q(function()
                wait(0.5)
                if Combo==2 then
                    Break()
                end
            end)
        elseif Combo==2 then
            Combo3()
            q(function() 
                wait(0.5)
                if Combo==3 then
                    Break()
                end
            end)
        elseif Combo==3 then
            Combo4()
            q(function()
                wait(0.5)
                if Combo==4 then
                    Break()
                end
            end)
        end
    elseif key==" " and anim=="" and equip=="equipped" then
        if Combo==0 then
            UseGyro=false
            Combo=1
            q(function()
                wait(0.3)
                if Combo==1 then
                    Break()
                end
            end)
        elseif Combo==1 then
            UseGyro=false
            Combo=1.5
            anim='Flip'
            Legs''
            Hum.Jump=true
            AddBV(60,fTorso.CFrame*ca(rd(25),0,0),fTorso,0.4)
            c2(ra,0.2,3,1.5,0.5,0,-10,0,15)
            c2(la,0.2,3,-1.5,0.5,0,-10,0,-15)
            c2(rl,0.2,3,0.5,-0.25,-0.8,20,0,0)
            c2(ll,0.2,3,-0.5,-0.25,-0.8,20,0,0)
            c2(hw,0.2,3,0,1.5,-0.25,40,0,0)
            c1(tw,0.1,3,0,0,0,90+360,180,0)
            c1(tw,1,3,0,0,0,90,180,0)
            Stance(0.15)
            Legs()
            anim=''
            wait(0.1)
            Break()
        end        
    elseif key:byte()==48 and anim=="" and equip=="equipped" and running then
        anim="Running" Hum.WalkSpeed=24 UseGyro=false
        q(function()
            for i=70,80,2 do
                Cam.FieldOfView=i
                wait()
            end
        end)
        c2(tw,0.15,3,0,0,0,90+15,180,0)
        c2(hw,0.15,3,0,1.5,0,-15,0,0)
        c2(ra,0.15,3,1.5,0.5,0,20,0,-20)
        c1(la,0.15,3,-1.5,0.5,0,20,0,20)
        repeat wait(0.1) timer=timer+0.1 until not running or not keys[key] or timer>=2.5
        q(function()
            for i=80,70,-2 do
                Cam.FieldOfView=i
                wait()
            end
        end)
        timer=0
        Stance(0.2)
        Hum.WalkSpeed=18
        anim=""
    end
end

function KeyUp(key)
    key=key:lower()
    keys[key]=false
end

Tool.Selected:connect(function(mouse)
    fmouse=mouse Gyr0z=true
    if equip=="unequipped" and anim=="" then
        equip="equipping" Arms(true) c2(la,0.1,3,-1.25,0.5,0,-55,0,-55) c1(ra,0.1,3,1,0.5,-0.5,50,-180,45)
        local ofs = LA.CFrame:toObjectSpace(ha.CFrame) 
        haw.Part0=LA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw) qAni(haw,0,-1.3,0,0,90,30,0,0.1,1)
        Stance(0.2) equip="equipped"
    end
    mouse.Button1Down:connect(Button1Down)
    mouse.KeyDown:connect(KeyDown)
    mouse.KeyUp:connect(KeyUp)
end)

Tool.Deselected:connect(function()
    fmouse=nil Gyr0z=false
    if equip=="equipped" and anim=="" then
        equip="unequipping" c2(la,0.1,3,-1.25,0.5,0,-55,0,-55) c1(ra,0.1,3,1,0.5,-0.5,50,-180,45)
        local ofs = RA.CFrame:toObjectSpace(ha.CFrame)
        haw.Part0=RA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
        qAni(haw,0.5,-0.5,0,30,90,0,0,0.1/1.3,1) Reset(0.1)
        Arms(false) Legs(false) equip="unequipped"
    end
end)

i=0 
Gyro=qi{"BodyGyro",fTorso,D=50,P=1500}
game:GetService("RunService").Stepped:connect(function() 
    if fmouse ~= nil and UseGyro then
        Gyro.maxTorque=v3(1/0,1/0,1/0)
        Gyro.cframe = cn(fTorso.Position,v3(fmouse.Hit.p.x,fTorso.Position.y,fmouse.Hit.p.z))
    else 
        Gyro.maxTorque = v3(0,0,0) 
    end 
    i=i+3
    chakw.C0=ca(0,0,rd(i))
    if anim=="Block" then
        haw.C0=cn(0.5,-0.5,0)*ca(0,rd(90),rd(i*10))
    end
end)

Hum.Running:connect(function(spd) running=spd>0 and true or false end)

end}
module[5] = {"Silver Spear",function()
ToolName = "Test"
Player = game.Players.LocalPlayer
Char = Player.Character
Hum = Char.Humanoid
Head = Char.Head
Torso = Char.Torso
Ra = Char["Right Arm"]
La = Char["Left Arm"]
Rl = Char["Right Leg"]
Ll = Char["Left Leg"]
Mouse = Player:GetMouse()
ThrowDamage = math.random(60,80)
pcall(function()Char[ToolName]:Destroy()end)
pcall(function()Player.Backpack[ToolName]:Destroy()end)
local Main = Instance.new("Model",Char)
Main.Name = ToolName
script.Parent = Main
v3 = Vector3.new;                mr = math.rad;
cw = coroutine.wrap;        mrd = math.random;
cf = CFrame.new;                ud2 = UDim2.new;
ca = CFrame.Angles;                v2 = Vector2.new
bc = BrickColor.new;        inst = Instance.new
http = "http://www.roblox.com/asset/?id="
Attacking = false
Walking = false
--Hum.Jump == Jumping
Sitting = false
FreeFalling = false
function part(par,size,color,tra,can)
        local P = Instance.new("Part",par)
        P.Locked = true
        P.FormFactor = "Custom"
        P.Size = size
        P.Anchored = false
        P.BrickColor = BrickColor.new(color)
        P.Transparency = tra
        P.CanCollide = can
        P.TopSurface = 0
        P.BottomSurface = 0
        P:BreakJoints()
        return P
end
function w(par,p0,p1,cfz,typ)
        local W = Instance.new("Weld",par)
        W.Part0 = p0
        W.Part1 = p1
        if typ == true then
                W.C1 = cfz
        else
                W.C0 = cfz
        end
        return W
end
function mesh(par,id,tex,typ,scal)
        local M = Instance.new("SpecialMesh",par)
        M.MeshId = id 
        M.TextureId = tex
        M.MeshType = typ
        M.Scale = scal
        return M
end
function fj(lim,tor,cf1)
        local w1 = w(Main,tor,lim,cf1)
        w1.C1 = cf(0,.5,0)
        return w1
end
function DamageFunc(hit,Damage,timz) 
        local hum = hit.Parent:FindFirstChild("Humanoid") or hit.Parent.Parent:FindFirstChild("Humanoid")
        if hum and not hum:FindFirstChild("Dmgz:"..Player.Name) and hit.Parent ~= Char and hit.Parent ~= Workspace and Damage and timz then
                hum.Health = hum.Health-Damage
                local a = Instance.new("StringValue",hum)a.Name = "Dmgz:"..Player.Name
                game.Debris:AddItem(a,timz)
                local b = Instance.new("ObjectValue",hum)b.Name = "creator" b.Value = Player
                game.Debris:AddItem(b,10)
                if hum.Health <=0 then return true else return false end -- To see if he died or not.
        end
end
function lerp(a,b,c)return a+(b-a)*c end
function lerp2(a,b,c)return a*(1-c)+b*c end
function clerp(c1,c2,al,x) --Smooth Animation!
        local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
        for i,v in pairs(com1) do if x == true then com1[i] = lerp2(v,com2[i],al) else  com1[i] = lerp(v,com2[i],al)end end
        return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
RaW = fj(Ra,Torso,cf(1.5,.5,0)*ca(mr(35),mr(0),mr(0)) )
Handle = part(Main,v3(.2,.2,.2),0,1,false)HandleW = w(Handle,Ra,Handle,cf(0,-1,0)*ca(mr(-135),0,0))
local staff = part(Main,v3(.2,5,.2),"Brown",0,false)w(staff,Handle,staff,cf(0,-.5,0))inst("CylinderMesh",staff)
local p = part(Main,v3(.25,2,.25),"Nougat",0,false)w(p,staff,p,cf(0,.5,0))inst("CylinderMesh",p)
local p = part(Main,v3(0,0,0),"Nougat",0,false)w(p,staff,p,cf(0,1.5,0)*ca(mr(90),0,0))mesh(p,http.."3270017","","FileMesh",v3(.25,.25,.25))
local p = part(Main,v3(0,0,0),"Nougat",0,false)w(p,staff,p,cf(0,-.5,0)*ca(mr(90),0,0))mesh(p,http.."3270017","","FileMesh",v3(.25,.25,.25))
local ring = part(Main,v3(0,0,0),"Silver",0,false)w(ring,staff,ring,cf(0,-2.75,0)*ca(0,mr(90),0))mesh(ring,http.."3270017","","FileMesh",v3(.75,.5,2))
local p = part(Main,v3(.25,.25,.25),"Silver",0,false)w(p,staff,p,cf(0,-2.5+(.25/2),0))inst("CylinderMesh",p)
local p = part(Main,v3(0,0,0),"Silver",0,false)w(p,staff,p,cf(0,-2.25,0)*ca(mr(90),0,0))mesh(p,http.."3270017","","FileMesh",v3(.25,.25,.25))
local p = part(Main,v3(.25,1,.25),"Silver",0,false)w(p,staff,p,cf(0,-1.5,0))inst("CylinderMesh",p)
local p = part(Main,v3(0,0,0),"Silver",0,false)w(p,staff,p,cf(0,-2,0)*ca(mr(90),0,0))mesh(p,http.."3270017","","FileMesh",v3(.25,.25,.25))
local p = part(Main,v3(0,0,0),"Silver",0,false)w(p,staff,p,cf(0,-1,0)*ca(mr(90),0,0))mesh(p,http.."3270017","","FileMesh",v3(.25,.25,.25))
--A bit below tip
local p = part(Main,v3(.25,.5,.25),"Silver",0,false)w(p,staff,p,cf(0,2.55,.25/2)*ca(mr(180),0,0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.5,.25),"Silver",0,false)w(p,staff,p,cf(0,2.55,-.25/2)*ca(mr(180),mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.35,.35),"Silver",0,false)w(p,staff,p,cf(0,2.6,.35/2)*ca(mr(180),0,0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.35,.35),"Silver",0,false)w(p,staff,p,cf(0,2.6,-.35/2)*ca(mr(180),mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.25,.5),"Silver",0,false)w(p,staff,p,cf(0,2.675,.25)*ca(mr(180),0,0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.25,.5),"Silver",0,false)w(p,staff,p,cf(0,2.675,-.25)*ca(mr(180),mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.3,.5),"Silver",0,false)w(p,staff,p,cf(0,2.95,-.25)*ca(0,mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.3,.5),"Silver",0,false)w(p,staff,p,cf(0,2.95,.25))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.4,.4),"Silver",0,false)w(p,staff,p,cf(0,3,-.3)*ca(0,mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.4,.4),"Silver",0,false)w(p,staff,p,cf(0,3,.3))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.5,.3),"Silver",0,false)w(p,staff,p,cf(0,3.05,-.35)*ca(0,mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.5,.3),"Silver",0,false)w(p,staff,p,cf(0,3.05,.35))mesh(p,"","","Wedge",v3(1,1,1))
--Tip
local p = part(Main,v3(.2,1,.4),"Silver",0,false)w(p,staff,p,cf(0,3.25,0))
local p = part(Main,v3(.2,.25,.25),"Silver",0,false)w(p,staff,p,cf(0,3.625,.3)*ca(mr(180),0,0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,.25,.25),"Silver",0,false)w(p,staff,p,cf(0,3.625,-.3)*ca(mr(180),mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,1,.25),"Silver",0,false)w(p,staff,p,cf(0,4.25,.3))
local p = part(Main,v3(.2,1,.25),"Silver",0,false)w(p,staff,p,cf(0,4.25,-.3))
local p = part(Main,v3(.2,.25,.425),"Silver",0,false)w(p,staff,p,cf(0,4.875,.2125)*ca(0,mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,.25,.425),"Silver",0,false)w(p,staff,p,cf(0,4.875,-.2125))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,.5,.325),"Silver",0,false)w(p,staff,p,cf(0,5,.16)*ca(0,mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,.5,.325),"Silver",0,false)w(p,staff,p,cf(0,5,-.16))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,.75,.275),"Silver",0,false)w(p,staff,p,cf(0,5.125,.2125/2+.025)*ca(0,mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,.75,.275),"Silver",0,false)w(p,staff,p,cf(0,5.125,-.2125/2-.025))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,.25,.25),"Silver",0,false)w(p,staff,p,cf(0,3.875,.25/2))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,.25,.25),"Silver",0,false)w(p,staff,p,cf(0,3.875,-.25/2)*ca(0,mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,.25,.25),"Silver",0,false)w(p,staff,p,cf(0,4.675,-.2/2)*ca(mr(180),0,0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,.25,.25),"Silver",0,false)w(p,staff,p,cf(0,4.675,.2/2)*ca(mr(180),mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
hitbox = part(Main,v3(.3,3,1.25),"Silver",1,false)w(hitbox,staff,hitbox,cf(0,4,0))
Hum.Running:connect(function(s)
        if s == 0 then
                Walking = false
        else
                Walking = true
        end
end)
--[[Hum.FreeFalling:connect(function(s)
        if s == true then
                FreeFalling = true
        else
                FreeFalling = false
        end
end)]]
local didHit = false
Mouse.KeyDown:connect(function(Key)
        if Key == "q" and Attacking == false then
                didHit = true
                Attacking = true
                local aim = true
                local torbg = Instance.new("BodyGyro",Torso)
                torbg.cframe = cf(Torso.CFrame.p,v3(Mouse.Hit.p.x,Torso.CFrame.p.y,Mouse.Hit.p.z))
                torbg.maxTorque = v3()*math.huge
                torbg.D = 0
                torbg.P = 50000
                cw(function()
                        while aim do
                                wait(.02)
                                torbg.cframe = cf(Torso.CFrame.p,v3(Mouse.Hit.p.x,Torso.CFrame.p.y,Mouse.Hit.p.z))
                        end
                        torbg:Destroy()
                end)()
                for i = 0,5 do
                        wait(.02)
                        RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(170),0,mr(0)),.5)
                        HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-90),0,mr(180)),.5)
                end
                wait(.05)
                cw(function()
                        wait(.2)
                        local handlecf = Handle.CFrame
                        local Hit = Mouse.Hit.p
                        HandleW.Part0 = nil
                        Handle.Anchored = true
                        Handle.CFrame = cf(handlecf.p,Hit)*ca(mr(-90),0,0)
                        didHit = false
                        local typez = false
                        local pos = v3()
                        local hit = nil
                        local d = 0
                        cw(function() 
                                repeat wait(.002)
                                        local r = Ray.new(Handle.CFrame.p,(Hit-Handle.CFrame.p).unit*10)
                                        local h,p = workspace:FindPartOnRay(r,Char)
                                        local dis = (Handle.CFrame.p-p).magnitude
                                        --local P=part(Workspace,v3(1,1,1),"Silver",0,false)P.Anchored = true P.CFrame = cf(p)
                                        if h ~= nil and dis >= .5 then
                                                didHit = true
                                                pos = p
                                                hit = h
                                                typez = true
                                        end
                                until didHit == true
                        end)()
                        local x = 0
                        local distance = ((Ra.CFrame*cf(0,-1,0)).p-ring.Position).magnitude
                        local p = part(Main,v3(.2,.2,distance),"Silver",0,false)p.Anchored = true p.CFrame = cf((Ra.CFrame*cf(0,-1,0)).p,ring.Position)*cf(0,-.2,-distance/2)
                        cw(function()
                                while Attacking == true and p ~= nil do
                                        wait(.02)
                                        distance = ((Ra.CFrame*cf(0,-1,0)).p-ring.Position).magnitude
                                        p.Size=v3(.2,.2,distance) 
                                        p.CFrame = cf((Ra.CFrame*cf(0,-1,0)).p,ring.Position)*cf(0,-.25,-distance/2)
                                end
                                p:Destroy()
                        end)()
                        for i = 0,500,2 do
                                if d == 3 then
                                        wait(.02)
                                        d = 0
                                end
                                d = d + 1
                                x = x-.1
                                Handle.CFrame = cf(handlecf.p,Hit)*ca(mr(-90),0,0)*cf(0,i,0)
                                if didHit == true then break end
                        end
                        didHit = false
                        aim = false
                        if typez == true and hit~=nil then
                                local cfz = cf(pos,(Handle.CFrame*cf(0,-10,0)).p)*ca(math.pi/2,0,0)*cf(0,-3,0)
                                Handle.Anchored = false
                                local we = w(Handle,Handle,hit,cfz:toObjectSpace(hit.CFrame))
                                local bp = Instance.new("BodyPosition",Torso)
                                bp.position = ring.Position
                                bp.maxForce = v3()*math.huge
                                repeat wait()bp.position = ring.Position until didHit == true
                                bp:Destroy()
                                we:Destroy()
                                Handle.Anchored = true
                        end
                        didHit = true
                        for i = 0,20 do
                                wait(.002)
                                Handle.CFrame = clerp(Handle.CFrame,Ra.CFrame*cf(0,-1,0)*ca(mr(-90),0,0),.3)
                        end
                        wait(.2)
                        Handle.Anchored = false
                        
                        HandleW.Part0 = Ra
                        HandleW.C0 = cf(0,-1,0)*ca(mr(-90),0,0)
                        Attacking = false
                end)()
                for i = 0,5 do
                        wait(.02)
                        RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(-45),0,mr(0)),.5)
                        --HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-90),mr(180),0),.5)
                end
                aim = false
                wait(1)
                for i = 0,5 do
                        wait(.02)
                        RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(100),0,mr(0)),.5)
                        --HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-90),mr(180),0),.5)
                end
        end
end)
Mouse.Button1Down:connect(function()
        didHit = true
        if Attacking == false then
                Attacking = true
                local aim = true
                local torbg = Instance.new("BodyGyro",Torso)
                torbg.cframe = cf(Torso.CFrame.p,v3(Mouse.Hit.p.x,Torso.CFrame.p.y,Mouse.Hit.p.z))
                torbg.maxTorque = v3()*math.huge
                torbg.D = 0
                torbg.P = 50000
                cw(function()
                        while aim do
                                wait(.02)
                                torbg.cframe = cf(Torso.CFrame.p,v3(Mouse.Hit.p.x,Torso.CFrame.p.y,Mouse.Hit.p.z))
                        end
                        torbg:Destroy()
                end)()
                for i = 0,5 do
                        wait(.02)
                        RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(170),0,mr(0)),.5)
                        HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-90),0,mr(180)),.5)
                end
                wait(.05)
                cw(function()
                        wait(.2)
                        local handlecf = Handle.CFrame
                        local Hit = Mouse.Hit.p
                        HandleW.Part0 = nil
                        Handle.Anchored = true
                        Handle.CFrame = cf(handlecf.p,Hit)*ca(mr(-90),0,0)
                        didHit = false
                        local typez = false
                        local pos = v3()
                        local hit = nil
                        local d = 0
                        cw(function() 
                                repeat wait(.002)
                                        local r = Ray.new(Handle.CFrame.p,(Hit-Handle.CFrame.p).unit*10)
                                        local h,p = workspace:FindPartOnRay(r,Char)
                                        local dis = (Handle.CFrame.p-p).magnitude
                                        --local P=part(Workspace,v3(1,1,1),"Silver",0,false)P.Anchored = true P.CFrame = cf(p)
                                        if h ~= nil and dis >= .5 then
                                                didHit = true
                                                pos = p
                                                hit = h
                                                typez = true
                                        end
                                until didHit == true
                        end)()
                        local x = 0
                        for i = 0,500,2 do
                                if d == 3 then
                                        wait(.02)
                                        d = 0
                                end
                                d = d + 1
                                x = x-.01
                                Handle.CFrame = cf(handlecf.p,Hit)*ca(mr(-90),0,0)*cf(0,i,0)
                                Hit = Hit+v3(0,x,0)
                                if didHit == true then break end
                        end
                        didHit = false
                        aim = false
                        if typez == true and hit~=nil then
                                local cfz = cf(pos,(Handle.CFrame*cf(0,-10,0)).p)*ca(math.pi/2,0,0)*cf(0,-3,0)
                                Handle.Anchored = false
                                local we = w(Handle,Handle,hit,cfz:toObjectSpace(hit.CFrame))
                                DamageFunc(hit,ThrowDamage,.1) 
                                for i = 0,10,.1 do
                                        wait(.1)
                                        if didHit == true or hit == nil then
                                                break
                                        else
                                                local x = DamageFunc(hit,math.random(2,5),0) 
                                                if x == true then
                                                        didHit = true
                                                end
                                        end
                                end
                                we:Destroy()
                                Handle.Anchored = true
                        end
                        didHit = true
                        for i = 0,30 do
                                wait(.002)
                                Handle.CFrame = clerp(Handle.CFrame,Ra.CFrame*cf(0,-1,0)*ca(mr(-90),0,0),.2)
                        end
                        wait(.2)
                        Handle.Anchored = false
                        
                        HandleW.Part0 = Ra
                        HandleW.C0 = cf(0,-1,0)*ca(mr(-90),0,0)
                        Attacking = false
                end)()
                for i = 0,5 do
                        wait(.02)
                        RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(-45),0,mr(0)),.5)
                        --HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-90),mr(180),0),.5)
                end
                aim = false
                wait(1)
                for i = 0,5 do
                        wait(.02)
                        RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(100),0,mr(0)),.5)
                        --HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-90),mr(180),0),.5)
                end
        end
end)
cw(function()
        while true do
                wait(.02)
                if Attacking == false then
                        if Walking == true then
                                for i = 0,5 do
                                        wait(.02)
                                        if Walking == false or Attacking == true then break end
                                        RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(0),0,mr(20)),.5)
                                        HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-135),0,0),.5)
                                end
                                repeat wait() until Walking == false or Attacking == true
                        else
                                if FreeFalling == true then
                                        for i = 0,5 do
                                                wait(.02)
                                                if Hum.Jump == false or Attacking == true then break end
                                                RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(0),0,mr(100)),.5)
                                                HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-100),0,0),.5)
                                        end
                                        repeat wait() until FreeFalling == false or Attacking == true
                                elseif Hum.Jump == true then
                                        for i = 0,5 do
                                                wait(.02)
                                                if Hum.Jump == false or Attacking == true then break end
                                                RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(0),0,mr(30)),.5)
                                                HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-90),0,0),.5)
                                        end
                                        repeat wait() until Hum.Jump == false or FreeFalling == true or Attacking == true
                                else
                                        for i = 0,10 do
                                                wait(.02)
                                                if Walking == true or Attacking == true then break end
                                                RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(100),0,mr(5)),.4)
                                                HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-90),0,0),.4)
                                        end
                                        for i = 0,20 do
                                                wait(.02)
                                                if Walking == true or Attacking == true then break end
                                                RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(90),0,mr(5)),.2)
                                                HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-90),0,0),.2)
                                        end
                                        repeat wait() until Walking == true or Attacking == true or Hum.Jump == true or FreeFalling == true
                                end
                        end
                end
        end
end)()

end}
module[6] = {"SlenderMe",function()


script.Name="Slendy"

		if game.Players.LocalPlayer.Character:FindFirstChild("Body Colors") ~= nil then
			game.Players.LocalPlayer.Character:FindFirstChild("Body Colors").HeadColor = BrickColor.new("White")
			game.Players.LocalPlayer.Character:FindFirstChild("Body Colors").LeftArmColor = BrickColor.new("Really black")
			game.Players.LocalPlayer.Character:FindFirstChild("Body Colors").LeftLegColor = BrickColor.new("Really black")
			game.Players.LocalPlayer.Character:FindFirstChild("Body Colors").RightArmColor = BrickColor.new("Really black")
			game.Players.LocalPlayer.Character:FindFirstChild("Body Colors").RightLegColor = BrickColor.new("Really black")
			game.Players.LocalPlayer.Character:FindFirstChild("Body Colors").TorsoColor = BrickColor.new("Really black")
		end

BigTorso=Instance.new("SpecialMesh",game.Players.LocalPlayer.Character.Torso)
BigTorso.Offset=Vector3.new(0,0,0)
BigTorso.MeshType="Brick"
BigTorso.Scale=Vector3.new(1,2,1)

a=game.Players.LocalPlayer.Character["Right Arm"]
aa=game.Players.LocalPlayer.Character.Torso["Right Shoulder"]
a.Size=Vector3.new(1,4,1)
aa.C0 = CFrame.new(1.5,(a.Size.y/2)-0.5,0) * CFrame.Angles(0,math.pi/2,0) 
aa.C1 = CFrame.new(0,(a.Size.y/2)-0.5,0) * CFrame.Angles(0,math.pi/2,0) 
aa.Parent=game.Players.LocalPlayer.Character.Torso

b=game.Players.LocalPlayer.Character["Right Leg"]
bb=game.Players.LocalPlayer.Character.Torso["Right Hip"]
b.Size=Vector3.new(1,7,1)
bb.C0 = CFrame.new(0.5,-b.Size.y/2+(BigTorso.Scale.y)-0.5,0) * CFrame.Angles(0,math.pi/2,0) 
bb.C1 = CFrame.new(0,b.Size.y/2,0) * CFrame.Angles(0,math.pi/2,0) 
bb.Parent=game.Players.LocalPlayer.Character.Torso

c=game.Players.LocalPlayer.Character["Left Arm"]
cc=game.Players.LocalPlayer.Character.Torso["Left Shoulder"]
c.Size=Vector3.new(1,4,1)
cc.C0 = CFrame.new(-1.5,(c.Size.y/2)-0.5,0) * CFrame.Angles(0,-math.pi/2,0) 
cc.C1 = CFrame.new(0,(c.Size.y/2)-0.5,0) * CFrame.Angles(0,-math.pi/2,0) 
cc.Parent=game.Players.LocalPlayer.Character.Torso

d=game.Players.LocalPlayer.Character["Left Leg"]
dd=game.Players.LocalPlayer.Character.Torso["Left Hip"]
d.Size=Vector3.new(1,7,1)
dd.C0 = CFrame.new(-0.5,-(d.Size.y/2)+(BigTorso.Scale.y)-0.5,0) * CFrame.Angles(0,-math.pi/2,0) 
dd.C1 = CFrame.new(0,d.Size.y/2,0) * CFrame.Angles(0,-math.pi/2,0) 
dd.Parent=game.Players.LocalPlayer.Character.Torso

e=game.Players.LocalPlayer.Character["Head"]
ee=game.Players.LocalPlayer.Character.Torso["Neck"]
ee.C0=CFrame.new(0,2,0,-1,-0,-0,0,0,1,0,1,0)
ee.Parent=game.Players.LocalPlayer.Character.Torso


v = game.Players.LocalPlayer
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Head") then 
for c,b in pairs(v.Character:findFirstChild("Head"):GetChildren()) do
	if b.ClassName == "Decal" then
		b:Remove()
	end
end
for a, moda in pairs(v.Character:children()) do if moda:findFirstChild("NameTag") then v.Character.Head.Transparency = 0 moda:Destroy() end end
local char = v.Character
local moda = Instance.new("Model", char) moda.Name = "FHEAD"
local cl = char.Head:Clone() cl.Transparency = 0 cl.Parent = moda cl.Name = "Head" 
local weld = Instance.new("Weld", cl) weld.Part0 = cl weld.Part1 = char.Head
char.Head.Transparency = 1
end
end))



ab = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
ab.Name = "Slender"
abu = Instance.new("TextButton",ab)
abu.Text = "InVisible"
abu.Position = UDim2.new(0,0,1,-30)
abu.Size = UDim2.new(0,100,0,30)
abu.MouseButton1Click:connect(function()
if abu.Text == "InVisible" then
abu.Text = "Visible"
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.ClassName == "Part" then
v.Transparency = 1
elseif v.Name == "FHEAD" then
	v.Head.Transparency = 1
end
end
elseif abu.Text == "Visible" then
abu.Text = "InVisible"
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.ClassName == "Part" then
if v.Name == "Head" or v.Name == "HumanoidRootPart" then else
v.Transparency = 0
end
elseif v.Name == "FHEAD" then
	v.Head.Transparency = 0
end
end
end	
end)
mouse=game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:connect(function(key) local key=key:lower()
if key=="g" then
if abu.Text == "InVisible" then
abu.Text = "Visible"
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.ClassName == "Part" then
v.Transparency = 1
elseif v.Name == "FHEAD" then
	v.Head.Transparency = 1
end
end
elseif abu.Text == "Visible" then
abu.Text = "InVisible"
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.ClassName == "Part" then
if v.Name == "Head" or v.Name == "HumanoidRootPart" then else
v.Transparency = 0
end
elseif v.Name == "FHEAD" then
	v.Head.Transparency = 0
end
end
end	
end
end)


for i,v in pairs(game.Players.LocalPlayer.StarterGear:children()) do
print(v.Name)
        if i<=#game.Players.LocalPlayer.StarterGear:children()-1 then
                v:Remove()
        end 
end 
while wait() do 
        pcall(function() game.Players.LocalPlayer.Character.Shirt:Remove() end) 
        pcall(function() game.Players.LocalPlayer.Character.Pants:Remove() end) 
        pcall(function() game.Players.LocalPlayer.Character["Shirt Graphic"]:Remove() end) 
        pcall(function() game.Players.LocalPlayer.Character.Torso.roblox:Remove() end)
        for i,v in pairs(game.Players.LocalPlayer.Character:children()) do
                if v:IsA("CharacterMesh") then 
                        v:Remove()
                end 
        end
end 

end}

 
 

module[1] = {"SoRate",function()


Plrs = game:GetService("Players")

me = Plrs.LocalPlayer

char = me.Character

Modelname = "SoulKarate"

dmgs = {Pdmg = {7, 13, "Punch"}, Kdmg = {10, 19, "Kick"}, K2dmg = {12, 16, "Doublekick"}, Rdmg = {16, 23, "RoundHouse"},

Kardmg = {8, 15, "Karate"}}

dmg = dmgs.Pdmg

Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}

necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)

able = true

block = false

breakblock = 19

holdkey = false

effectOn = false

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

function getHead(c, pos, m)

local h = nil

local n = nil

t = c:findFirstChild("Torso")

if t ~= nil then

n = t:findFirstChild("Neck")

end

for i,v in pairs(c:children()) do

if v.Name == "Head" then

if (v.Position - pos).magnitude < m then

h = v

end

end

end

return h, n

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

LastHP = hum.Health

function HpChange(newhp)

if block and hum.Health > 0.1 then

local dif = LastHP - newhp

if dif > 0 then

local h = LastHP - ((LastHP-newhp)/3)

hum.Health = h

wait()

hum.Health = h

end

if dif > breakblock then

block = false

local a = Add.BP(torso)

a.position = torso.Position

local b = Add.BG(torso)

b.cframe = CFrame.new(torso.Position, torso.CFrame * CFrame.new(0, 0, -5).p)

wait(0.6)

a:remove()

b:remove()

able = true

end

end

LastHP = hum.Health

end

hum.HealthChanged:connect(HpChange)

hc = Instance.new("Humanoid")

hc.Health = 0

hc.MaxHealth = 0

slash = Instance.new("Sound")

slash.SoundId = "rbxasset://sounds//swordslash.wav"

slash.Volume = 0.8

slash.Pitch = 1.4

slash.Parent = Rarm

hitsound = Instance.new("Sound")

hitsound.SoundId = "http://www.roblox.com/asset/?id=2801263"

hitsound.Volume = 0.55

hitsound.Pitch = 2.1

hitsound.Parent = torso

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

TBricks = {}

for i, v in pairs({Rarm, Larm, Rleg, Lleg}) do

local p = Part(Mo, false, false, 1, 0, "White", 0.9, 0.9, 0.8, true)

Weld(v, p, 0, 0.7, 0, 0, 0, 0)

table.insert(TBricks, {p, hurt = false, able = true})

end

function startEff(part)

effectOn = true

local lastPoint = part.Position

coroutine.resume(coroutine.create(function()

while effectOn do

wait()

local mag = (lastPoint - part.Position).magnitude

local p = Part(Mo, true, false, 0.2, 0.05, "Institutional white", 0.1, 0.1, mag+0.2, true)

p.CFrame = CFrame.new(lastPoint, part.Position) * CFrame.new(0, 0, -mag/2)

Instance.new("BlockMesh",p)

lastPoint = part.Position

coroutine.resume(coroutine.create(function()

for x=0.2,1,0.2 do

wait()

p.Transparency = x

end

p:remove()

end))

end

end))

end

function endEff()

effectOn = false

end

function ShowDMG(p, d)

local mo = Instance.new("Model")

mo.Name = d

local pa = Part(mo, false, true, 0, 0, "Bright red", 0.8, 0.2, 0.8, true)

pa.CFrame = CFrame.new(p.Position)

pa.Name = "Head"

local hah = hc:clone()

hah.Parent = mo

local bp = Add.BP(pa)

bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)

bp.position = p.Position + Vector3.new(0, 2.5, 0)

Add.BG(pa)

coroutine.resume(coroutine.create(function()

wait(0.2)

mo.Parent = workspace

wait(1.5)

mo:remove()

end))

end

for i, v in pairs(TBricks) do

v[1].Touched:connect(function(hit)

local fig = hit.Parent

H, T = getHumanoid(fig), fig:findFirstChild("Torso")

if H ~= nil and T ~= nil and v.hurt and v.able then

hitsound:play()

v.able = false

local d = math.random(dmg[1], dmg[2])

local hed, ne = getHead(fig, v[1].Position, 2.5)

if dmg[3] == "RoundHouse" and hed ~= nil then

d = math.random(dmg[1]*2.4, dmg[2]*2.4)

coroutine.resume(coroutine.create(function()

if ne ~= nil then

for i=0,60,20 do

ne.C0 = necko * CFrame.Angles(math.rad(-i), 0, 0)

wait()

end

for i=60,0,-20 do

ne.C0 = necko * CFrame.Angles(math.rad(-i), 0, 0)

wait()

end

ne.C0 = necko

end

end))

end

H.Health = H.Health - d

local xd = CFrame.new(v[1].Position, hit.Position)

hit.Velocity = xd.lookVector * (d*2.3)

ShowDMG(v[1], d)

wait(0.34)

v.able = true

end

end)

end

Mo.Parent = char

RAWBattle = nil

LAWBattle = nil

function nilparts()

LAW.Part1 = nil

RAW.Part1 = nil

RLW.Part1 = nil

LLW.Part1 = nil

LAW.C0 = CFrame.new(0, 0, 0)

RLW.C0 = CFrame.new(0, 0, 0)

LLW.C0 = CFrame.new(0, 0, 0)

RAW.C0 = CFrame.new(0, 0, 0)

end

function attach()

LAW.Part1 = Larm

RLW.Part1 = Rleg

LLW.Part1 = Lleg

RAW.Part1 = Rarm

LAW.C0 = CFrame.new(0, 0, 0)

RLW.C0 = CFrame.new(0, 0, 0)

LLW.C0 = CFrame.new(0, 0, 0)

RAW.C0 = CFrame.new(0, 0, 0)

end

attacks = {

function(mouse)

local Orig = torso.CFrame

local MousePos = mouse.Hit.p

local bg = Add.BG(torso)

local bp = Add.BP(torso)

bp.position = Orig.p

local CF = ComputePos(Orig.p, MousePos)

local CF2 = CF

bg.cframe = CF2

attach()

bp.position = CF * CFrame.new(0, 0, -1.5).p

startEff(TBricks[3][1])

TBricks[3].hurt = true

slash:play()

dmg = dmgs.Kdmg

for i = 0, 100, 100/4 do

neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i))

RLW.C0 = CFrame.Angles(0, 0, math.rad(i)) * CFrame.new(0, -i/200, 0)

LLW.C0 = CFrame.Angles(0, 0, math.rad(-i/4))

RAW.C0 = CFrame.Angles(math.rad(i/8), 0, math.rad(-i/7))

LAW.C0 = CFrame.Angles(math.rad(i/6), 0, math.rad(-i/7))

CF2 = CF * CFrame.Angles(math.rad(i/4), math.rad(i), 0)

bg.cframe = CF2

wait()

end

wait(0.1)

TBricks[3].hurt = false

for i = 100, 0, -100/5 do

neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i))

RLW.C0 = CFrame.Angles(0, 0, math.rad(i)) * CFrame.new(0, -i/150, 0)

LLW.C0 = CFrame.Angles(0, 0, math.rad(-i/4))

RAW.C0 = CFrame.Angles(math.rad(i/8), 0, math.rad(-i/7))

LAW.C0 = CFrame.Angles(math.rad(i/8), 0, math.rad(-i/7))

CF2 = CF * CFrame.Angles(math.rad(i/4), math.rad(i), 0)

bg.cframe = CF2

wait()

end

endEff()

wait()

nilparts()

bg:remove()

bp:remove()

neck.C0 = necko

end,

function(mouse)

local Orig = torso.CFrame

local MousePos = mouse.Hit.p

local bg = Add.BG(torso)

local bp = Add.BP(torso)

bp.position = Orig.p

local CF = ComputePos(Orig.p, MousePos)

local CF2 = CF

bg.cframe = CF2

attach()

bp.position = CF * CFrame.new(0, 0, -1.5).p

TBricks[2].hurt = true

startEff(TBricks[2][1])

slash:play()

dmg = dmgs.Pdmg

for i = 0, -90, -90/4 do

neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i))

RLW.C0 = CFrame.Angles(0, 0, math.rad(-i/4))

LLW.C0 = CFrame.Angles(0, 0, math.rad(i/4))

RAW.C0 = CFrame.Angles(0, 0, 0)

LAW.C0 = CFrame.Angles(math.rad(-i), 0, math.rad(i))

CF2 = CF * CFrame.Angles(math.rad(i/8), math.rad(i), 0)

bg.cframe = CF2

wait()

end

wait(0.07)

TBricks[2].hurt = false

endEff()

startEff(TBricks[1][1])

TBricks[1].hurt = true

bp.position = CF * CFrame.new(0, 0, -3).p

slash:play()

for i = -90, 0, 90/7 do

neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-(i*2+90)))

RAW.C0 = CFrame.Angles(math.rad(i-90), math.pi, math.rad(i-90))

LAW.C0 = CFrame.Angles(math.rad(-i), 0, math.rad(i))

CF2 = CF * CFrame.Angles(math.rad(i/8), math.rad(i*2+90), 0)

bg.cframe = CF2

wait()

end

wait(0.07)

TBricks[1].hurt = false

for i = 0, -90, -90/5 do

neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-(i+90)))

RAW.C0 = CFrame.Angles(math.rad(i-90), math.pi, math.rad(i-90))

RLW.C0 = CFrame.Angles(0, 0, math.rad(i/4+23))

LLW.C0 = CFrame.Angles(0, 0, math.rad(-i/4-23))

CF2 = CF * CFrame.Angles(0, math.rad(i+90), 0)

bg.cframe = CF2

wait()

end

endEff()

wait()

nilparts()

bg:remove()

bp:remove()

neck.C0 = necko

end,

function(mouse)

local Orig = torso.CFrame

local MousePos = mouse.Hit.p

local bg = Add.BG(torso)

local bp = Add.BP(torso)

bp.position = Orig.p

local CF = ComputePos(Orig.p, MousePos)

local CF2 = CF

bg.cframe = CF2

attach()

bp.position = CF * CFrame.new(0, 0, -1.5).p

TBricks[4].hurt = true

startEff(TBricks[4][1])

slash:play()

dmg = dmgs.K2dmg

for i = 0, -100, -100/4 do

neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i))

RLW.C0 = CFrame.Angles(0, 0, math.rad(-i/4))

LLW.C0 = CFrame.Angles(0, 0, math.rad(i))

RAW.C0 = CFrame.Angles(math.rad(-i/6), 0, math.rad(-i/7))

LAW.C0 = CFrame.Angles(math.rad(i/6), 0, math.rad(-i/7))

CF2 = CF * CFrame.Angles(math.rad(-i/5), math.rad(i), 0)

bg.cframe = CF2

wait()

end

wait(0.1)

bp.position = CF * CFrame.new(0, 0, -3).p

TBricks[4].hurt = false

endEff()

startEff(TBricks[3][1])

TBricks[3].hurt = true

local lol1, lol2 = RLW.C0, LLW.C0

slash:play()

for i = -100, -290, -190/5 do

RLW.C0 = lol1 * CFrame.Angles(0, 0, math.rad(-i/3-(100/4)))

LLW.C0 = CFrame.Angles(0, 0, math.rad((-i/3)-100))

CF2 = CF * CFrame.Angles(math.rad(100/5), math.rad(i), 0)

bg.cframe = CF2

wait()

end

wait(0.1)

bp.position = CF * CFrame.new(0, 0, -4.5).p

TBricks[3].hurt = false

lol1, lol2 = RLW.C0, LLW.C0

for i = 0, -70, -70/3 do

neck.C0 = necko * CFrame.Angles(0, 0, math.rad((i*1.3)+100))

RLW.C0 = lol1 * CFrame.Angles(0, 0, math.rad(i*1.4))

LLW.C0 = lol2 * CFrame.Angles(0, 0, 0)

RAW.C0 = CFrame.Angles(0, 0, 0)

LAW.C0 = CFrame.Angles(0, 0, 0)

CF2 = CF * CFrame.Angles(0, math.rad(-290+i), 0)

bg.cframe = CF2

wait()

end

endEff()

wait()

nilparts()

bg:remove()

bp:remove()

neck.C0 = necko

end,

function(mouse)

if mouse ~= nil then

local Orig = torso.CFrame

local MousePos = mouse.Hit.p

local bg = Add.BG(torso)

local bp = Add.BP(torso)

bp.position = Orig.p

local CF = ComputePos(Orig.p, MousePos)

local CF2 = CF

bg.cframe = CF2

startEff(TBricks[3][1])

attach()

bp.position = CF * CFrame.new(0, 0, -1).p

dmg = dmgs.Rdmg

for i = 0, 180, 180/7 do

neck.C0 = necko * CFrame.Angles(0, 0, math.rad(i/2))

RLW.C0 = CFrame.Angles(0, 0, 0)

LLW.C0 = CFrame.Angles(0, 0, 0)

RAW.C0 = CFrame.Angles(math.rad(i/5), 0, math.rad(i/10))

LAW.C0 = CFrame.Angles(math.rad(-i/5), 0, math.rad(-i/10))

CF2 = CF * CFrame.Angles(math.rad(i/5.8), math.rad(-i), 0)

bg.cframe = CF2

wait()

end

slash:play()

TBricks[3].hurt = true

for i = 180, 180+90, 90/4 do

neck.C0 = necko * CFrame.Angles(0, 0, math.rad((-i*2-180)-90))

RLW.C0 = CFrame.Angles(0, 0, math.rad((i*1.45)-(180*1.45))) * CFrame.new(0, (-i+180)/100, 0)

LLW.C0 = CFrame.Angles(0, 0, math.rad((-i/3)+(180/3)))

RAW.C0 = CFrame.Angles(math.rad(i/5), 0, math.rad(i/10))

LAW.C0 = CFrame.Angles(math.rad(-i/5), 0, math.rad(-i/10))

CF2 = CF * CFrame.Angles(math.rad(180/5.8), math.rad(-i), 0)

bg.cframe = CF2

wait()

end

TBricks[3].hurt = false

wait()

for i = 270, 360, 90/5 do

local a = i-270

neck.C0 = necko * CFrame.Angles(0, 0, math.rad(i))

RLW.C0 = CFrame.Angles(0, 0, math.rad((-a*1.1)-(180*1.45))) * CFrame.new(0, (a/100)+((-270+180)/100), 0)

LLW.C0 = CFrame.Angles(0, 0, math.rad((a/3)-(90/3)))

RAW.C0 = CFrame.Angles(math.rad(270/5-((a*3)/5)), 0, math.rad(270/10-((a*3)/10)))

LAW.C0 = CFrame.Angles(math.rad(-270/5+((a*3)/5)), 0, math.rad(-270/10+((a*3)/10)))

CF2 = CF * CFrame.Angles(math.rad((180/5.8)-((a*2)/5.8)), math.rad(-i), 0)

bg.cframe = CF2

wait()

end

endEff()

wait()

nilparts()

bg:remove()

bp:remove()

neck.C0 = necko

end

end,

function(mouse)

local Orig = torso.CFrame

local MousePos = mouse.Hit.p

local bg = Add.BG(torso)

local bp = Add.BP(torso)

bp.position = Orig.p

local CF = ComputePos(Orig.p, MousePos)

local CF2 = CF

bg.cframe = CF2

startEff(TBricks[2][1])

attach()

bp.position = CF * CFrame.new(0, 0, -0.8).p

dmg = dmgs.Kardmg

for i = 0, -45, -45/3 do

neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i))

RLW.C0 = CFrame.Angles(0, 0, math.rad(-i/4))

LLW.C0 = CFrame.Angles(0, 0, math.rad(i/4))

RAW.C0 = CFrame.Angles(0, 0, math.rad(-i/3))

LAW.C0 = CFrame.Angles(math.rad(-i*4), 0, 0)

CF2 = CF * CFrame.Angles(0, math.rad(i), 0)

bg.cframe = CF2

wait()

end

TBricks[2].hurt = true

bp.position = CF * CFrame.new(0, 0, -1.6).p

slash:play()

for i = -45, -110, -65/3 do

neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i))

LAW.C0 = CFrame.Angles(math.rad(-45*4), 0, math.rad((i*2+110)))

CF2 = CF * CFrame.Angles(0, math.rad(i), 0)

bg.cframe = CF2

wait()

end

wait()

TBricks[2].hurt = false

for i = -110, 0, 110/4 do

neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i))

LAW.C0 = CFrame.Angles(0, 0, math.rad(i) )

RAW.C0 = CFrame.Angles(0, 0, math.rad(-i/2/3))

RLW.C0 = CFrame.Angles(0, 0, math.rad(45/4-(((i/2)+45)/4)))

LLW.C0 = CFrame.Angles(0, 0, math.rad(45/4+(((i/2)-45)/4)))

CF2 = CF * CFrame.Angles(0, math.rad(i), 0)

bg.cframe = CF2

wait()

end

endEff()

wait()

nilparts()

bg:remove()

bp:remove()

neck.C0 = necko

end

}

bloc = function(mouse)

local hold = true

local bg = Add.BG(nil)

attach()

RLW.Part1 = nil

LLW.Part1 = nil

slash:play()

local duh = true

block = true

mouse.KeyUp:connect(function(k)

k = k:lower()

if duh == true and k == "t" then

block = false

duh = false

hold = false

end

end)

coroutine.resume(coroutine.create(function()

for i = 0, 90, 90/7 do

RAW.C0 = CFrame.new(-i/150, 0, -i/170) * CFrame.Angles(math.rad(i/1.1), 0, math.rad(-i/1.2))

LAW.C0 = CFrame.new(i/150, 0, -i/170) * CFrame.Angles(math.rad(i*1.25), 0, math.rad(i/1.5))

wait()

end

end))

bg.Parent = torso

while block and hold do

wait()

bg.cframe = ComputePos(torso.Position, mouse.Hit.p)

end

for i = 90, 0, -90/7 do

RAW.C0 = CFrame.new(-i/150, 0, -i/170) * CFrame.Angles(math.rad(i/1.1), 0, math.rad(-i/1.2))

LAW.C0 = CFrame.new(i/150, 0, -i/170) * CFrame.Angles(math.rad(i*1.25), 0, math.rad(i/1.5))

wait()

end

nilparts()

bg:remove()

neck.C0 = necko

end

function select(mouse)

mouse.Button1Down:connect(function()

if able then

able = false

attacks[1](mouse)

attacks[2](mouse)

attacks[3](mouse)

attacks[4](mouse)

attacks[5](mouse)

able = true

end

end)

mouse.KeyDown:connect(function(key)

key = key:lower()

if able then

if key == "q" then

able = false

attacks[2](mouse)

able = true

elseif key == "e" then

able = false

attacks[1](mouse)

able = true

elseif key == "r" then

able = false

attacks[3](mouse)

able = true

elseif key == "f" then

able = false

attacks[4](mouse)

able = true

elseif key == "g" then

able = false

attacks[5](mouse)

able = true

elseif key == "t" then

able = false

bloc(mouse)

able = true

elseif key == "z" then

able = false

holdkey = true

while holdkey do

attacks[math.random(1,#attacks)](mouse)

end

able = true

end

end

end)

mouse.KeyUp:connect(function(key)

key = key:lower()

if key == "z" then

holdkey = false

end

end)

end

if script.Parent.className ~= "HopperBin" then

h = Instance.new("HopperBin",me.Backpack)

h.Name = "SoRate"


end

bin = h

bin.Selected:connect(select) 
end}
module[2] = {"Soul Solid",function()
--==Made by LuisPambid==--
--==Soul Solid==--

local player=game.Players.LocalPlayer
local char=player.Character
repeat wait() until player and char
local torso=char.Torso
local head=char.Head
local human=char.Humanoid
local arm={Left=char["Left Arm"], Right=char["Right Arm"]}
local leg={Left=char["Left Leg"], Right=char["Right Leg"]}
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
local scriptname="Soul Solid" --Name here
pcall(function() player.Backpack[scriptname]:remove() char[scriptname]:remove() char["Objects"]:remove() player.PlayerGui[scriptname]:remove()  end)
local model=Instance.new("Model", char) model.Name="Objects"
local modelB=Instance.new("Model", char) modelB.Name=scriptname
local gui=Instance.new("ScreenGui", player.PlayerGui) gui.Name=scriptname
local bin=Instance.new("HopperBin", player.Backpack) bin.Name=scriptname
local skincolor="New Yeller"
local suitcolor="Really black"
local body={}
local animate={}
local obj={}
function createParts()
	--==PARTS==--
	body.Head=head:clone() body.Head.Parent=model body.Head.BrickColor=BrickColor.new(skincolor) body.Head.Transparency=0
	body.Torso=add.Part(model, false, false, skincolor, 0, Vector3.new(2, 2, 1), nil)
	body.ArmLeft, body.ArmRight=add.Part(model, false, false, skincolor, 0, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 0, Vector3.new(1, 1, 1), nil)
	body.LegLeft, body.LegRight=add.Part(model, false, false, skincolor, 0, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 0, Vector3.new(1, 1, 1), nil)
	p(function() for i, v in pairs(char:children()) do v.Transparency=1 end end)
	p(function() for i, v in pairs(char:children()) do v["face"]:clone().Parent=body.Head v["face"]:remove() end end)
	p(function() for i, v in pairs(char:children()) do if v.ClassName=="Hat" then v:remove() end end end)
	--==WELDS==--
	body.HeadW=add.Weld(body.Head, body.Torso, CFrame.new(0, 1.5, 0))
	body.TorsoW=add.Weld(body.Torso, torso, nil)
	body.ArmLeftW, body.ArmRightW=add.Weld(body.ArmLeft, body.Torso, CFrame.new(-1.5, .5, 0)), add.Weld(body.ArmRight, body.Torso, CFrame.new(1.5, .5, 0))
	body.LegLeftW, body.LegRightW=add.Weld(body.LegLeft, body.Torso, CFrame.new(-.5, -1.5, 0)), add.Weld(body.LegRight, body.Torso, CFrame.new(.5, -1.5, 0))
	--==MESHES==--
	add.Mesh("BlockMesh", body.ArmLeft, Vector3.new(1, 2, 1), Vector3.new(0, -.5, 0), nil)
	add.Mesh("BlockMesh", body.ArmRight, Vector3.new(1, 2, 1), Vector3.new(0, -.5, 0), nil)
	add.Mesh("BlockMesh", body.LegLeft, Vector3.new(1, 2, 1), Vector3.new(0, -.5, 0), nil)
	add.Mesh("BlockMesh", body.LegRight, Vector3.new(1, 2, 1), Vector3.new(0, -.5, 0), nil)
	---------------------------------------------------------------------------------------
	animate={
		["Head"]=function(cf) p(function() for i, v in pairs(model:children()) do v.Transparency=0 end end)
			body.HeadW.C1=CFrame.new(0, 1.5, 0)*cf
		end;
		["Torso"]=function(cf) p(function() for i, v in pairs(model:children()) do v.Transparency=0 end end)
			body.TorsoW.C1=cf
		end;
		["ArmLeft"]=function(cf) p(function() for i, v in pairs(model:children()) do v.Transparency=0 end end)
			body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*cf
		end;
		["ArmRight"]=function(cf) p(function() for i, v in pairs(model:children()) do v.Transparency=0 end end)
			body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*cf
		end;
		["LegLeft"]=function(cf) p(function() for i, v in pairs(model:children()) do v.Transparency=0 end end)
			body.LegLeftW.C1=CFrame.new(-.5, -1.5, 0)*cf
		end;
		["LegRight"]=function(cf) p(function() for i, v in pairs(model:children()) do v.Transparency=0 end end)
			body.LegRightW.C1=CFrame.new(.5, -1.5, 0)*cf
		end;
	}
	--==Objects==--
	--Suit--
	obj.ArmLeft, obj.ArmRight=add.Part(model, false, false, suitcolor, 0, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, suitcolor, 0, Vector3.new(1, 1, 1), nil)
	obj.ArmLeftW, obj.ArmRightW=add.Weld(obj.ArmLeft, body.ArmLeft, nil), add.Weld(obj.ArmRight, body.ArmRight, nil)
	obj.LegLeft, obj.LegRight=add.Part(model, false, false, suitcolor, 0, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, suitcolor, 0, Vector3.new(1, 1, 1), nil)
	obj.LegLeftW, obj.LegRightW=add.Weld(obj.LegLeft, body.LegLeft, nil), add.Weld(obj.LegRight, body.LegRight, nil)
	obj.Torso=add.Part(model, false, false, suitcolor, 0, Vector3.new(2, 2, 1), nil)
	obj.TorsoW=add.Weld(obj.Torso, body.Torso, nil)
	add.Mesh("BlockMesh", obj.ArmLeft, Vector3.new(1.1, 1.6, 1.1), Vector3.new(0, -.25, 0), nil)
	add.Mesh("BlockMesh", obj.ArmRight, Vector3.new(1.1, 1.6, 1.1), Vector3.new(0, -.25, 0), nil)
	add.Mesh("BlockMesh", obj.LegLeft, Vector3.new(1.1, 1.6, 1.1), Vector3.new(0, -.25, 0), nil)
	add.Mesh("BlockMesh", obj.LegRight, Vector3.new(1.1, 1.6, 1.1), Vector3.new(0, -.25, 0), nil)
	add.Mesh("BlockMesh", obj.Torso, Vector3.new(1.05, 1.05, 1.05), nil, nil)
	---------------------------------------------------------------------------------------
	obj.Handle=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.25, 2, .25), nil)
	obj.HandleW=add.Weld(obj.Handle, body.ArmRight, CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, 0))
	for i=1, 5 do
		obj.Design=add.Part(modelB, false, false, "White", 0, Vector3.new(.3, .1, .1), nil)
		obj.DesignW=add.Weld(obj.Design, obj.Handle, CFrame.new(0, -1+i/3, 0)*CFrame.Angles(math.rad(45), 0, 0))
	end
	--SEALS--
	obj.Seal=add.Part(modelB, false,false, "White", 0, Vector3.new(.2, .2, .2), nil)
	obj.SealM=add.Mesh("BlockMesh", obj.Seal, Vector3.new(.2, .5, 1), nil, nil)
	obj.SealW=add.Weld(obj.Seal, obj.Handle, CFrame.new(0, -1.15, .1))
	obj.Seal2=add.Part(modelB, false,false, "White", 0, Vector3.new(.2, .2, .2), nil)
	obj.Seal2M=add.Mesh("BlockMesh", obj.Seal2, Vector3.new(.25, 1, .5), nil, nil)
	obj.Seal2W=add.Weld(obj.Seal2, obj.Handle, CFrame.new(0, -1.1, 0))
	obj.Seal3=add.Part(modelB, false,false, "White", 0, Vector3.new(.3, 2, .2), nil)
	obj.Seal3M=add.Mesh("BlockMesh", obj.Seal3, Vector3.new(1, 1, .5), nil, nil)
	obj.Seal3W=add.Weld(obj.Seal3, obj.Handle, nil)
	---------------------------------------------------------------------------------------
	obj.Guard=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.5, .2, .5), nil)
	obj.GuardW=add.Weld(obj.Guard, obj.Handle, CFrame.new(0, 1.1, 0))
	obj.GuardB=add.Part(modelB, false, false, "White", 0, Vector3.new(.25, .2, .3), nil)
	obj.GuardBM=add.Mesh("BlockMesh", obj.GuardB, Vector3.new(.5, 1, 1), nil, nil)
	obj.GuardBW=add.Weld(obj.GuardB, obj.Handle, CFrame.new(0, 1.25, 0))
	obj.Blade=add.Part(modelB, false, false, "Mid gray", 0, Vector3.new(.2, 4, .25), nil) obj.Blade.Reflectance=.5
	obj.BladeM=add.Mesh("BlockMesh", obj.Blade, Vector3.new(.5, 1, 1), nil, nil)
	obj.BladeW=add.Weld(obj.Blade, obj.Handle, CFrame.new(0, 3, 0))
	obj.Point=add.Wedge(modelB, false, false, "Mid gray", 0, Vector3.new(.2, 1, .25), nil) obj.Point.Reflectance=.5
	obj.PointM=add.Mesh("SpecialMesh", obj.Point, Vector3.new(.5, 1, 1), nil, "Wedge")
	obj.PointW=add.Weld(obj.Point, obj.Blade, CFrame.new(0, 2.5, 0)*CFrame.Angles(math.rad(0), 0, 0))
	--==Signature(L)==--
	obj.LH=add.Part(model, false, false, "White", 0, Vector3.new(.5, 1, .2), nil)
	obj.LHW=add.Weld(obj.LH, obj.ArmLeft, CFrame.new(-.4, -.25, -.2))
	obj.LH=add.Part(model, false, false, "White", 0, Vector3.new(.5, .2, .5), nil)
	obj.LHW=add.Weld(obj.LH, obj.ArmLeft, CFrame.new(-.4, -.65, 0))
end
function removeParts()
	p(function()
		for i, v in pairs(model:children()) do v:remove() end		for i, v in pairs(modelB:children()) do v:remove() end	for i, v in pairs(char:children()) do v.Transparency=0 end
	end)
end
--Variables--
local trailDeb=false
local running=false
local hitDeb=false
local attacking=false
local hitting=false
local shield=false
local keyDeb=false
local keyDeb2=false
local looping=false
local w, a, s, d=false, false, false, false
local combo=0
local speed=32
local attackspeed=.25
local dmg=math.random(5, 10)
local looping2=false
local rage=1
local Slash=add.Sound(torso, "rbxasset://sounds//swordslash.wav", 1, 1)
local Dash=add.Sound(torso, "http://www.roblox.com/asset/?id=22968437", 1, 1)
local Clang=add.Sound(torso, "http://www.roblox.com/asset/?id=11113679", 1, 1)
local Heal=add.Sound(torso, "http://www.roblox.com/asset/?id=2101144", 1, 1)
local Electricity=add.Sound(torso, "http://www.roblox.com/asset/?id=10756118", 1, 1)
local attackLabel=add.Gui("TextLabel", gui, "Really black", "Really black", "White", "Size18", "Dash(C)", 0, UDim2.new(0, 150, 0, 50), UDim2.new(0, 0, 0, 150))
local attackLabel2=add.Gui("TextLabel", attackLabel, "Really black", "Really black", "White", "Size18", "Block(V)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
local attackLabel3=add.Gui("TextLabel", attackLabel2, "Really black", "Really black", "White", "Size18", "Jump(Space)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
local attackLabel4=add.Gui("TextLabel", attackLabel3, "Really black", "Really black", "White", "Size18", "Regenerate(X)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
local attackLabel5=add.Gui("TextLabel", attackLabel4, "Really black", "Really black", "White", "Size18", "Ultimate(Z)ON/OFF", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
function lightningGen(startPos, endPos)
	local magnitude=(startPos-endPos).magnitude
	local distance=(startPos+endPos)/2
	local pattern=add.Part(workspace, true, false, "White", 1, Vector3.new(.2, .2, magnitude), CFrame.new(distance, startPos)) pattern.Name="Effect"
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
		local lightning=add.Part(workspace, true, false, "Bright yellow", 0, Vector3.new(.2, .2, magnitude), CFrame.new(distance, startPosProx2)) lightning.Name="Effect"
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

function hit(h)
	if hitting==true and looping2==true and h.Parent:findFirstChild("Humanoid")==nil and h~=nil and h.Parent~=char and h.Parent~=model and h.Parent~=modelB and h.Name~="Effect" and h.Name~="Base" and hitDeb==false then hitDeb=true
		p(function() print("found")
			local pYPos=h.Position.y-(h.Size.y/2)
			local sYPos=obj.Blade.Position.y
			if sYPos<=pYPos or sYPos>=(pYPos+h.Size.y) then return end
			local p=h:clone() p.Parent=workspace p.Anchored=false p.CanCollide=true --p.Name="Effect"
			local p2=h:clone() p2.Parent=workspace p2.Anchored=false p2.CanCollide=true --p2.Name="Effect"
			h:remove()
			p.formFactor="Custom"
			p2.formFactor="Custom"
			p.Size=Vector3.new(h.Size.x, sYPos-pYPos, h.Size.z)
			p2.Size=Vector3.new(h.Size.x, p2.Size.y-(sYPos-pYPos), h.Size.z)
			p.CFrame=h.CFrame*CFrame.new(0, -p2.Size.y/2, 0)
			p2.CFrame=h.CFrame*CFrame.new(0, p.Size.y/2, 0)
			c(function() wait(2) 
			--[[p.Anchored=false p2.Anchored=false
				for i=0, 1, .05 do
					wait()
					p.Transparency=i p2.Transparency=i
				end]]
				p:remove() p2:remove()
			end)
		end)
		wait()
		hitDeb=false
	elseif hitting==true and game.Players[h.Parent.Name] and h.Parent~=char and hitDeb==false then hitDeb=true
		pcall(function()
			local hHuman=h.Parent:findFirstChild("Humanoid")
			hHuman.Health=hHuman.Health-dmg
			--[[for i=1, 5 do
				local spark=add.Part(workspace, true, false, "Bright yellow", 0, Vector3.new(.2, 1, .2), obj.Point.CFrame*CFrame.Angles(math.random(-45, 45), math.random(-45, 45), math.random(-45, 45))) spark.Name="Effect"
				local sparkM=add.Mesh("BlockMesh", spark, Vector3.new(.5, 1, .5), nil, nil)
				c(function()
					for i=0, 1, .05 do wait()
						spark.Transparency=i
					end spark:remove()
				end)
			end]]
			local fakeM=Instance.new("Model", workspace) fakeM.Name=dmg
			local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
			local effect=add.Part(fakeM, false, false, "Bright red", 0, Vector3.new(1, 1, 1), h.CFrame) effect.Name="Head"
			local fakeMesh=add.Mesh("CylinderMesh", effect, Vector3.new(1, .5, 1), nil, nil)
			local bp=Instance.new("BodyPosition", effect) bp.maxForce=Vector3.new(math.huge, math.huge, math.huge) bp.position=h.Position+Vector3.new(0, 4, 0)
			game.Debris:addItem(fakeM, 2)	
		end)
		wait(.2)
		hitDeb=false
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
			local trail=add.Part(workspace, true, false, "Pastel light blue", 0, Vector3.new(.2, mag, .2), CFrame.new(dis, new)*CFrame.Angles(math.pi/2, 0, 0)) trail.Name="Effect"
			trail.Touched:connect(hit)
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

function onRunning() while attacking or looping do wait() end
	if w or a or s or d then
		animate.ArmLeft(CFrame.Angles(0, 0, math.rad(-15)))
		animate.ArmRight(CFrame.Angles(0, 0, math.rad(15)))
		animate.LegLeft(CFrame.Angles(0, 0, math.rad(-5)))
		animate.LegRight(CFrame.Angles(0, 0, math.rad(5)))
	end
end

function doAttacks() combo=combo+1 rage=rage+1 print("Combo: "..combo)
	if attacking==false and looping==false then attacking=true
		if combo==1 then hitting=true Slash:play()
			for i, v in pairs(modelB:children()) do v.Touched:connect(hit) end
			for i=0, 1, attackspeed do wait()
				animate.Torso(CFrame.Angles(0, -math.rad(45)*i, 0))
				animate.ArmRight(CFrame.Angles(0, 0, math.rad(90)*i))
				obj.HandleW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)-(math.rad(135)*i), 0, 0)
			end
			trailDeb=true	trail(obj.Point, CFrame.new(0, 1, 0))
			for i=0, 1, attackspeed do wait()
				animate.Torso(CFrame.Angles(0, -math.rad(45)-(-math.rad(135)*i), 0))
				obj.HandleW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(225)-(-math.rad(135)*i), 0, -math.rad(15)*i)
			end
			if combo>1 then combo=2 print("Combo: "..combo) Slash:play()
				for i=1, 0, -attackspeed do wait()
					animate.Torso(CFrame.Angles(0, -math.rad(90)+(math.rad(90)*i), 0))
					animate.ArmRight(CFrame.Angles(0, 0, math.rad(180)*i))
					obj.HandleW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, -math.rad(15)*i)
				end
				trailDeb=false
				for i=1, 0, -attackspeed do wait()
					animate.Torso(CFrame.Angles(0, -math.rad(90)*i, 0))
				end
				attacking=false
				hitting=false
				combo=0
				onRunning()
				return
			end
			trailDeb=false
			for i=1, 0, -.2 do wait()
				animate.Torso(CFrame.Angles(0, math.rad(90)*i, 0))
				animate.ArmRight(CFrame.Angles(0, 0, math.rad(180)*i))
				obj.HandleW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, -math.rad(15)*i)
			end
		end
		attacking=false
		hitting=false
		combo=0
		onRunning()
	end
end

local Abilities={
	["Dash"]=function() Dash:play()
		local aura=add.Part(workspace, true, false, "Bright yellow", 0, Vector3.new(1, 1, 1), body.Torso.CFrame*CFrame.new(0, 0, 1.5)*CFrame.Angles(math.rad(90), 0, 0)) aura.Name="Effect"
		local auraM=add.Mesh("SpecialMesh", aura, Vector3.new(4, 2, 4), nil, "File") auraM.MeshId="http://www.roblox.com/asset/?id=20329976"
		c(function()
			for i=0, 2, .1 do wait()
				auraM.Scale=auraM.Scale+Vector3.new(i, i/2, i)
			end
		end)
		c(function()
			for i=0, 1, .1 do
				wait()
				aura.Transparency=i
			end
			pcall(function() aura:remove() end)
		end)
		torso.CFrame=torso.CFrame+torso.CFrame.lookVector*10
	end;
	["DashJump"]=function() Dash:play()
		local aura=add.Part(workspace, true, false, "Bright yellow", 0, Vector3.new(1, 1, 1), body.Torso.CFrame*CFrame.new(0, -2, 0)*CFrame.Angles(math.rad(180), 0, 0)) aura.Name="Effect"
		local auraM=add.Mesh("SpecialMesh", aura, Vector3.new(4, 2, 4), nil, "File") auraM.MeshId="http://www.roblox.com/asset/?id=20329976"
		c(function()
			for i=0, 2, .1 do wait()
				auraM.Scale=auraM.Scale+Vector3.new(i, i/2, i)
			end
		end)
		c(function()
			for i=0, 1, .1 do
				wait()
				aura.Transparency=i
			end
			pcall(function() aura:remove() end)
		end)
		pcall(function() torso:findFirstChild("BodyPosition"):remove() end)
		c(function()
			local bp=Instance.new("BodyPosition", torso) bp.maxForce=Vector3.new(0, math.huge, 0) bp.position=torso.Position+Vector3.new(0, 10, 0)
			wait(3)
			bp:remove()
		end)
	end;
	["Shield"]=function(mouse) human.WalkSpeed=0
		local bp=Instance.new("BodyPosition", torso) bp.maxForce=Vector3.new(math.huge, math.huge, math.huge) bp.position=torso.Position
		looping=true
		for i=0, 1, .2 do wait()
			animate.ArmRight(CFrame.Angles(math.rad(45)*i, 0, 0))
			animate.ArmLeft(CFrame.Angles(math.rad(135)*i, 0, -math.rad(15)*i))
			obj.HandleW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)+(-math.rad(45)*i), math.rad(35)*i, math.rad(90)*i)
		end
		Clang:play()
		local shieldPart=add.Part(model, true, false, "White", 1, Vector3.new(15, 15, 4), torso.CFrame+torso.CFrame.lookVector*1.5)
		while looping do wait() computePos(torso.CFrame.p, mouse.Hit.p) shieldPart.CFrame=torso.CFrame+torso.CFrame.lookVector*1.5
			shieldPart.Touched:connect(function(h)
				if h.Parent~=char and h.Parent~=modelB and h.Parent~=model and h.Name~="Trail" and h.Name~="Base" and hitDeb==false then hitDeb=true print(h.Name)
					Clang:play()
					c(function()
						--[[local effect=add.Part(workspace, true, false, "Bright yellow", 0, Vector3.new(1, 1, 1), CFrame.new(h.CFrame.p, torso.CFrame.p)) effect.Name="Trail"
						local mesh=add.Mesh("SpecialMesh", effect, Vector3.new(1.5, 1.5, 1.5), nil, "File") mesh.MeshId="http://www.roblox.com/asset/?id=3270017"
						c(function()
							for i=0, 1, .1 do
								wait()
								effect.Mesh.Scale=effect.Mesh.Scale+Vector3.new(i, i, i)
							end
							effect:remove()
						end)
						c(function()
							for i=0, 1, .1 do
								wait()
								effect.Transparency=i
							end
						end)]]
						h.Anchored=false
						local bp=Instance.new("BodyPosition", h) bp.maxForce=Vector3.new(math.huge, math.huge, math.huge) bp.position=(CFrame.new(torso.CFrame.p, h.CFrame.p)*CFrame.new(0, 0, -h.Velocity.z*1.5)).p
						local bg=Instance.new("BodyGyro", h) bg.maxTorque=Vector3.new(0, math.huge, 0) bg.cframe=CFrame.new(h.CFrame.p, torso.CFrame.p)
						h.Velocity=Vector3.new(0, 0, 0) h.RotVelocity=Vector3.new(0, 0, 0)
						game.Debris:addItem(bp, .2) game.Debris:addItem(bg, .2)
					end)
					wait()
					hitDeb=false
				end
			end)
		end
		bp:remove()
		shieldPart:remove()
		for i=1, 0, -.2 do wait()
			animate.ArmRight(CFrame.Angles(math.rad(45)*i, 0, 0))
			animate.ArmLeft(CFrame.Angles(math.rad(135)*i, 0, -math.rad(15)*i))
			obj.HandleW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)+(-math.rad(45)*i), math.rad(35)*i, math.rad(90)*i)
		end
		human.WalkSpeed=speed
	end;
	["Regenerate"]=function(mouse) human.WalkSpeed=0
		looping=true
		for i=0, 1, .1 do wait()
			animate.Torso(CFrame.new(0, -1*i, 0))
			animate.ArmLeft(CFrame.new(.5*i, 0, -.5*i)*CFrame.Angles(math.rad(90)*i, 0, math.rad(45)*i))
			animate.ArmRight(CFrame.new(-.5*i, 0, -.5*i)*CFrame.Angles(math.rad(90)*i, 0, -math.rad(45)*i))
			animate.LegLeft(CFrame.new(0, 1*i, -1*i))
			animate.LegRight(CFrame.Angles(-math.rad(90)*i, 0, 0))
			obj.HandleW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)+(-math.rad(180)*i), -math.rad(45)*i, 0)
		end
		while looping and human.Health<100 do wait() human.Health=human.Health+1 Heal:play()
			local aura=add.Part(workspace, true, false, "Pastel light blue", .5, Vector3.new(1, 1, 1), body.Torso.CFrame*CFrame.new(0, -2, 0)*CFrame.Angles(0, math.rad(math.random(-45, 45)), 0)) aura.Name="Effect"
			local auraM=add.Mesh("SpecialMesh", aura, Vector3.new(1, 1, 1), nil, "File") auraM.MeshId="http://www.roblox.com/asset/?id=20329976"
			local aura2=add.Part(workspace, true, false, "Pastel light blue", .5, Vector3.new(5, 5, 5), body.Torso.CFrame*CFrame.new(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15))*CFrame.Angles(math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45))))
			aura2.Name="Effect"
			c(function()
				for i=0, 3, .2 do wait()
					auraM.Scale=auraM.Scale+Vector3.new(i, i/2, i)
				end
				c(function()
					for i=.5, 1, .1 do
						wait()
						aura.Transparency=i	aura2.Transparency=i
					end
				end)
				aura:remove() aura2:remove()
			end)
		end
		for i=1, 0, -.1 do wait()
			animate.Torso(CFrame.new(0, -1*i, 0))
			animate.ArmLeft(CFrame.new(.5*i, 0, -.5*i)*CFrame.Angles(math.rad(90)*i, 0, math.rad(45)*i))
			animate.ArmRight(CFrame.new(-.5*i, 0, -.5*i)*CFrame.Angles(math.rad(90)*i, 0, -math.rad(45)*i))
			animate.LegLeft(CFrame.new(0, 1*i, -1*i))
			animate.LegRight(CFrame.Angles(-math.rad(90)*i, 0, 0))
			obj.HandleW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)+(-math.rad(180)*i), -math.rad(45)*i, 0)
		end
		human.WalkSpeed=speed
	end;
	["Ultimate"]=function()
		c(function()
			looping2=true
			speed=40 attackspeed=.25 dmg=dmg*2.5
			while looping2 and human.Health>2 do wait(.2) human.Health=human.Health-2 Electricity:play()
				lightningGen(body.Torso.CFrame.p, body.Torso.Position+Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)))
				local aura=add.Part(workspace, true, false, "Bright yellow", 0, Vector3.new(1, 1, 1), body.Torso.CFrame*CFrame.new(0, -2, 0)*CFrame.Angles(0, math.rad(math.random(-45, 45)), 0)) aura.Name="Effect"
				local auraM=add.Mesh("SpecialMesh", aura, Vector3.new(4, 2, 4), nil, "File") auraM.MeshId="http://www.roblox.com/asset/?id=20329976"
				c(function()
					for i=0, 1, .1 do wait()
						auraM.Scale=auraM.Scale+Vector3.new(i, i/2, i)
					end
				end)
				c(function()
					for i=0, 1, .1 do
						wait()
						aura.Transparency=i
					end
					aura:remove()
				end)
			end
			speed=32 attackspeed=.2 dmg=math.random(5, 10)
			keyDeb=false looping2=false
		end)
	end;
}

bin.Selected:connect(function(mouse) createParts() human.WalkSpeed=speed
	onRunning()
	while attacking do wait() end
	mouse.Button1Down:connect(doAttacks)
	mouse.KeyDown:connect(function(key) key=key:lower()
		if key=="w" then w=true onRunning() end
		if key=="a" then a=true onRunning() end
		if key=="s" then s=true onRunning() end
		if key=="d" then d=true onRunning() end
		if key=="c" and keyDeb2==false then keyDeb2=true Abilities.Dash() wait() keyDeb2=false end
		if key==" " and keyDeb2==false then keyDeb2=true Abilities.DashJump() wait() keyDeb2=false end
		if key=="v" and keyDeb==false then keyDeb=true Abilities.Shield(mouse) keyDeb=false end
		if key=="x" and keyDeb==false and human.Health<100 then keyDeb=true Abilities.Regenerate(mouse) keyDeb=false end
		if key=="z" and keyDeb==false and human.Health>5 then
			keyDeb=true
			Abilities.Ultimate(mouse)
		elseif key=="z" and keyDeb==true then
			keyDeb=false looping2=false
		end
	end)
	mouse.KeyUp:connect(function(key) key=key:lower()
		if key=="v" then looping=false end
		if key=="x" then looping=false end
	end)
end)
bin.Deselected:connect(function() removeParts() end)--mediafire
end}
module[3] = {"Soul Weaver",function()
-- Hellu, this is tool maded by damko00.. Well, not all but its mostly maded by me, damko00 :P 
-- Its designed for Script Builders - use in that place command create/SCRIPTNAME/local and run it.
-- Put ur name intro line 6, between quotes, adjust colors if u want..
-- AND REMEMBER!! Put that intro LocalScript !

name = game.Players.LocalPlayer.Name
plr = game.Players[name]
char = plr.Character
prim = BrickColor.new("Black") -- PRIMARY COLOR, Color of HANDLE
seco = BrickColor.new("Royal Purple") --SECONDARY COLOR, Color of Claws, etc.
c3 = Color3.new(0/255, 0/255, 190/255) -- FIRE/LIGHT COLOR, Red/on 255 max, Green/on 255 max, Blue/on 255 max.
cf = CFrame.new

if script.Parent.Name ~= "Soul Weaving" then

mod = Instance.new("Model", char)
mod.Name = "Wep"

p = Instance.new("Part", mod)
p.Name = "Handle"
p.CanCollide = false
p.TopSurface = 0
p.BottomSurface = 0
p.FormFactor = 0
p.BrickColor = prim
p.Size = Vector3.new(1,1,1)
SM = Instance.new("SpecialMesh", p)
SM.MeshType = "Sphere"
SM.Scale = Vector3.new(.5,1,1)

swirl = Instance.new("Animation", mod)
swirl.AnimationId = "http://www.roblox.com/Asset?ID=32326245"
swirl.Name = "Swirl"

Shot = Instance.new("Animation", mod)
Shot.AnimationId = "http://www.roblox.com/Asset?ID=32326245"
Shot.Name = "Shot"

slash = Instance.new("Animation", mod)
slash.AnimationId = "http://www.roblox.com/Asset?ID=68484538"
slash.Name = "Slash"

Raise = Instance.new("Animation", mod)
Raise.AnimationId = "http://www.roblox.com/Asset?ID=93693205"
Raise.Name = "Raise"


slashS = Instance.new("Sound", p)
slashS.SoundId = "http://www.roblox.com/Asset?ID=92628581"
slashS.Name = "SlashSound"
slashS.Volume = 1
slashS.Pitch = .9

shotS = Instance.new("Sound", p)
shotS.SoundId = "http://roblox.com/asset/?id=2785493"
shotS.Name = "shotSound"
shotS.Volume = 1
shotS.Pitch = 5

TPA = Instance.new("Animation", mod)
TPA.AnimationId = "http://www.roblox.com/Asset?ID=97170520"
TPA.Name = "DashAnim"

TPS = Instance.new("Sound", p)
TPS.SoundId = "http://www.roblox.com/asset/?id=2767090"
TPS.Volume = .5
TPS.Pitch = .8

c = Instance.new("Part", mod)
c.Name = "Crystal"
c.FormFactor = 0
c.BrickColor = seco
c.Size = Vector3.new(1,1,1)
c.Reflectance = .3
CPM = Instance.new("SpecialMesh", c)
CPM.MeshId = "http://www.roblox.com/Asset/?id=9756362"
CPM.Scale = Vector3.new(.25,.5,.5)

l = Instance.new("PointLight", c)
l.Color = c3
l.Range = 10
l.Brightness = 1.1

p1 = Instance.new("Part", mod)
p1.Name = "Claw1"
p1.FormFactor = 0
p1.CanCollide = false
p1.BrickColor = seco
p1.Size = Vector3.new(1,1,1)
p1.Transparency = .3
CM = Instance.new("CylinderMesh", p1)
CM.Scale = Vector3.new(.2,1,1)

p2 = Instance.new("Part", mod)
p2.Name = "Claw2"
p2.FormFactor = 0
p2.CanCollide = false
p2.BrickColor = seco
p2.Size = Vector3.new(1,1,1)
p2.Transparency = .3
CM2 = Instance.new("CylinderMesh", p2)
CM2.Scale = Vector3.new(.2,1,1)

Fajer = Instance.new("Fire", c)
Fajer.Color = c3
Fajer.Heat = -10 -- Go down-Claw
Fajer.SecondaryColor = Color3.new(0,0,0)
Fajer.Enabled = false

weld = function(par,p0,p1,c0,c1,name)
local weld = Instance.new("Weld",par)
weld.Part0 = p0
weld.Part1 = p1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 

weld(mod, p, p1, cf(0,0,0), cf(0,0.9,0.2), "W1")

weld = function(par,p0,p1,c0,c1,name)
local weld = Instance.new("Weld",par)
weld.Part0 = p0
weld.Part1 = p1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 

weld(mod, p, p2, cf(0,0,0), cf(0,0.9,-0.2), "W3")

weld = function(par,p0,p1,c0,c1,name)
local weld = Instance.new("Weld",par)
weld.Part0 = p0
weld.Part1 = p1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 

weld(mod, p, c, cf(0,0,0), cf(-0.2,0,0), "W4")

weld = function(par,p0,p1,c0,c1,name)
local weld = Instance.new("Weld",par)
weld.Part0 = p0
weld.Part1 = p1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 

weld(mod, p, char["Right Arm"], cf(0,0,0), cf(0.5,-1,0), "MAIN")

------------------------------------------------------------------- CLAW 2

H = Instance.new("Part", mod)
H.Name = "Handle"
H.TopSurface = 0
H.CanCollide = false
H.BottomSurface = 0
H.FormFactor = 0
H.BrickColor = prim
H.Size = Vector3.new(1,1,1)
SM = Instance.new("SpecialMesh", H)
SM.MeshType = "Sphere"
SM.Scale = Vector3.new(.5,1,1)

c2 = Instance.new("Part", mod)
c2.Name = "Crystal"
c2.FormFactor = 0
c2.BrickColor = seco
c2.Size = Vector3.new(1,1,1)
c2.Reflectance = .3
CHM2 = Instance.new("SpecialMesh", c2)
CHM2.MeshId = "http://www.roblox.com/Asset/?id=9756362"
CHM2.Scale = Vector3.new(.25,.5,.5)

l2 = Instance.new("PointLight", c2)
l2.Color = c3
l2.Range = 10
l2.Brightness = 1.1

H1 = Instance.new("Part", mod)
H1.Name = "Claw1"
H1.FormFactor = 0
H1.CanCollide = false
H1.BrickColor = seco
H1.Size = Vector3.new(1,1,1)
H1.Transparency = .3
CM = Instance.new("CylinderMesh", H1)
CM.Scale = Vector3.new(.2,1,1)

H2 = Instance.new("Part", mod)
H2.Name = "Claw2"
H2.FormFactor = 0
H2.CanCollide = false
H2.BrickColor = seco
H2.Size = Vector3.new(1,1,1)
H2.Transparency = .3
CM2 = Instance.new("CylinderMesh", H2)
CM2.Scale = Vector3.new(.2,1,1)

Fajer2 = Instance.new("Fire", c2)
Fajer2.Color = c3
Fajer2.Heat = -10 -- Go down-Claw
Fajer2.SecondaryColor = Color3.new(0,0,0)
Fajer2.Enabled = false

weld = function(Har,H0,H1,c0,c1,name)
local weld = Instance.new("Weld",Har)
weld.Part0 = H0
weld.Part1 = H1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 

weld(mod, H, H1, cf(0,0,0), cf(0,0.9,0.2), "W1")

weld = function(Har,H0,H1,c0,c1,name)
local weld = Instance.new("Weld",Har)
weld.Part0 = H0
weld.Part1 = H1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 

weld(mod, H, H2, cf(0,0,0), cf(0,0.9,-0.2), "W3")

weld = function(Har,H0,H1,c0,c1,name)
local weld = Instance.new("Weld",Har)
weld.Part0 = H0
weld.Part1 = H1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 

weld(mod, H, c2, cf(0,0,0), cf(0.2,0,0), "W4")

weld = function(Har,H0,H1,c0,c1,name)
local weld = Instance.new("Weld",Har)
weld.Part0 = H0
weld.Part1 = H1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 

weld(mod, H, char["Left Arm"], cf(0,0,0), cf(-0.5, -1,0), "MAIN")

end

-----------------------------------------------------------------------------------------------------------------------------------------------------

if script.Parent.ClassName ~= "HopperBin" then
local bin = Instance.new("HopperBin",plr.Backpack)
bin.Name = "Soul Weaver"
bin.BinType = "Script"
script:Clone().Parent = bin
script:remove()
else
bin = script.Parent;

print("Done")

Slash = function()

char.Humanoid:LoadAnimation(slash):Play(.5)
slashS:Play()

function DoDamage(hit)
h = hit.Parent:findFirstChild("Humanoid")
if h then
print("MWHAHHAHA")
h:TakeDamage(35)
end
end
p1.Touched:connect(DoDamage)
H1.Touched:connect(DoDamage)

end 

SwirlMove = function() ----------------------------

print("Phase1")

--if bin.Active == false then
--bin.Active = true

print("Phase2")

char.Humanoid:LoadAnimation(swirl):Play(.10)

Fajer.Enabled = true
Fajer2.Enabled = true

Bpos = Instance.new("BodyPosition", char.Torso)
Bpos.position = char.Torso.Position
Bpos.maxForce = Vector3.new(10000,100000, 10000)

Bang = Instance.new("BodyAngularVelocity", char.Torso)
Bang.maxTorque = Vector3.new(10000,10000,10000)
Bang.angularvelocity = Vector3.new(0,100,0)

char.Humanoid.PlatformStand = true

game.Debris:AddItem(Bang, .5)
game.Debris:AddItem(Bpos, 1.3)

wait(1.25)
--bin.Active = false
char.Humanoid.PlatformStand = false

Fajer.Enabled = false
Fajer2.Enabled = false

print("Phase4")
function DoDamage(hit)
h = hit.Parent:findFirstChild("Humanoid")
if h then
print("MWHAHHAHA")
h:TakeDamage(75)
end
end
p1.Touched:connect(DoDamage)
H1.Touched:connect(DoDamage)

end 

function SpiritShot(mouse)

char.Humanoid:LoadAnimation(Shot):Play()

shotS:Play()

sb = Instance.new("Part", game.Workspace)
sb.Shape = 0
sb.CanCollide = false
sb.CFrame = char.Torso.CFrame * CFrame.new(0,0,-7.5)
sb.Transparency = .5
sb.BrickColor = seco
sb.Size = Vector3.new(2,2,2)

target = Instance.new("Part", game.Workspace)
target.CFrame = mouse.Hit
target.Anchored = true
target.Transparency = 1
target.CanCollide = false

sf = Instance.new("RocketPropulsion", sb)
sf.Target = target
sf.MaxSpeed = 10000
sf.MaxThrust = 10000
sf.ThrustD = 2.5
sf.ThrustP = 200
sf.MaxTorque = Vector3.new(500000, 500000, 500000)
sf.TurnD = 1000
sf.TurnP = 10000

sf:Fire()

Fair = Fajer:Clone()
Fair.Enabled = true
Fair.Parent = sb

game.Debris:AddItem(sb, 5)
game.Debris:AddItem(target,5.1)

function DoDamage(hit)
h = hit.Parent:findFirstChild("Humanoid")
if h then
print("MWHAHHAHA")
h.Parent:BreakJoints()
end
end
sb.Touched:connect(DoDamage)

end 

function Dash(mouse)
        
        Fajer.Enabled = true
        Fajer2.Enabled = true
        char.Humanoid:LoadAnimation(TPA):Play()        
        
        TPPart = Instance.new("Part", game.Workspace)
        TPPart.CFrame = mouse.Hit
        TPPart.Anchored = true
        TPPart.CanCollide = false
        TPPart.Transparency = 1
        game.Debris:AddItem(TPPart, 2)
        wait(.3)
                                local teleportto=TPPart
                                if teleportto~=nil then
                                        local torso = char.Torso
                                        local location = {teleportto.Position}
                                        local i = 1

                                        local x = location[i].x
                                        local y = location[i].y
                                        local z = location[i].z
                                
                                        x = x + math.random(-1, 1)
                                        z = z + math.random(-1, 1)
                                        y = y + math.random(2, 3)

                                        local cf = torso.CFrame
                                        local lx = 0
                                        local ly = y
                                        local lz = 0
                                        
                                
                                        
                                        torso.CFrame = CFrame.new(Vector3.new(x,y,z), Vector3.new(lx,ly,lz))
                                        TPS:Play()
                                        
                                        wait(.3)
                                        Fajer.Enabled = false
                                        Fajer2.Enabled = false
                                        
                                        
                                else
                                        print("Could not find teleporter!")
                        end
                end

function Wall()
        
        Fajer.Enabled = true
        Fajer2.Enabled = true
        
        WallA = char.Humanoid:LoadAnimation(Raise)
        WallA:Play()        
        
        wait(1)        
        
        p = Instance.new("Part", game.Workspace)
        p.Anchored = true
        p.Size = Vector3.new(15,16,2)
        p.TopSurface = 0
        p.BottomSurface = 0
        p.CFrame = char.Torso.CFrame * CFrame.new(0,-11,-6.5)
        p.BrickColor = prim
        p.Transparency = .4
        
        p2 = Instance.new("Part", game.Workspace)
        p2.Anchored = true
        p2.Size = Vector3.new(7,25,2)
        p2.TopSurface = 0
        p2.BottomSurface = 0
        p2.CFrame = char.Torso.CFrame * CFrame.new(0,-16,-6.5)
        p2.BrickColor = seco
        p2.Transparency = .4
        
        wait(1)        
        
        p.CFrame = p.CFrame*CFrame.new(0,1,0)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)
        p.CFrame = p.CFrame*CFrame.new(0,1,0)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)                
        p.CFrame = p.CFrame*CFrame.new(0,1,0)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)
                p.CFrame = p.CFrame*CFrame.new(0,1,0)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)
                p.CFrame = p.CFrame*CFrame.new(0,1,0)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)
                p.CFrame = p.CFrame*CFrame.new(0,1,0)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)
                p.CFrame = p.CFrame*CFrame.new(0,1,0)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
                wait(.05)
                p.CFrame = p.CFrame*CFrame.new(0,1,0)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
                wait(.05)
                p.CFrame = p.CFrame*CFrame.new(0,1,0)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)
                p.CFrame = p.CFrame*CFrame.new(0,1,0)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)
        p2.CFrame = p2.CFrame*CFrame.new(0,.5,0)        
        wait(.25)
        
        Fajer.Enabled = false
        Fajer2.Enabled = false        
        WallA:Stop()        
        
end


bin.Selected:connect(function(mouse)
mouse.Button1Down:connect(Slash)
mouse.KeyDown:connect(function(key)
key = key:lower()
if key == "z" then
SwirlMove()
elseif key == "x" then 
SpiritShot(mouse)
elseif key == "t" then
Dash(mouse)
elseif key == ";" then
Wall()
end
end)
end)

end --- damko00's credit :P

end}
module[4] = {"SoulBall",function()


SnowC = {"Institutional white", "White", "Transparent", "Phosph. White", "Light stone grey"}
me = game.Players.LocalPlayer
char = me.Character
Modelname = "SoulBall"
dmg = 30
Dist = 2.5
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
snowname = "Snow"
ball = nil
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
able = true
Modes = {"Throw", "Collect"}
MaxBallzies = 1000
Ballzies = 1000
Order = 1
Mode = Modes[Order]

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
		bg.P = 8000
		return bg
	end
}

function GetNoobs(Pos, Mag)
	local obs = {}
	for i,v in pairs(workspace:children()) do
		if v:IsA("Model") and v ~= char then
			local t, h = v:findFirstChild("Torso"), v:findFirstChild("Humanoid")
			if t ~= nil and h ~= nil then
				local p = nil
				local d = Mag
				for a,k in pairs(v:children()) do
					if k:IsA("BasePart") then
						if (k.Position - Pos).magnitude < d then
							p = k
							d = (k.Position - Pos).magnitude
						end
					end
				end
				if p ~= nil then
					table.insert(obs, {t, h})
				end
			end
		end
	end
	return obs
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

for i,v in pairs(char:children()) do
	if v.Name == Modelname then
		v:remove()
	end
end

gui = me.PlayerGui

for i,v in pairs(gui:children()) do
	if v.Name == "SnowGui" then
		v:remove()
	end
end

sc = Instance.new("ScreenGui")
sc.Name = "SnowGui"

mainframe = Instance.new("Frame",sc)
mainframe.Size = UDim2.new(0,300,0,40)
mainframe.Position = UDim2.new(0.5, -150, 0, 2)
mainframe.BackgroundTransparency = 0.3
mainframe.BackgroundColor3 = Color3.new(0.6, 0.6, 0.85)

mo = Instance.new("TextLabel",mainframe)
mo.Text = Mode
mo.FontSize = "Size14"
mo.BackgroundColor3 = Color3.new(0.8, 0.8, 1)
mo.TextColor3 = Color3.new(0.2, 0.2, 0.5)
mo.Size = UDim2.new(0, 180, 0, 32)
mo.Position = UDim2.new(0, 4, 0, 4)
mo.BackgroundTransparency = 0.3

ma = Instance.new("TextLabel",mainframe)
ma.Text = Ballzies.."/"..MaxBallzies
ma.FontSize = "Size14"
ma.BackgroundColor3 = Color3.new(0.8, 0.8, 1)
ma.TextColor3 = Color3.new(0.2, 0.2, 0.5)
ma.Size = UDim2.new(0, 108, 0, 32)
ma.Position = UDim2.new(0, 188, 0, 4)
ma.BackgroundTransparency = 0.3

function CheckBallzies()
	if Ballzies > MaxBallzies then
		Ballzies = MaxBallzies
	elseif Ballzies < 0 then
		Ballzies = 0
	end
	ma.Text = Ballzies.."/"..MaxBallzies
end

sc.Parent = gui

torso = char.Torso
neck = torso.Neck
hum = char.Humanoid
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
Rleg = char["Right Leg"]
Lleg = char["Left Leg"]

throwsound = Instance.new("Sound")
throwsound.SoundId = "rbxasset://sounds//swordslash.wav"
throwsound.Volume = 0.8
throwsound.Pitch = 1.2
throwsound.Parent = Rarm
hitsound = Instance.new("Sound")
hitsound.SoundId = "http://www.roblox.com/asset/?id=2801263"
hitsound.Volume = 0.55
hitsound.Pitch = 1.8

Mo = Instance.new("Model")
Mo.Name = Modelname

main = Part(Mo, false, false, 0, 0, "Brown", 2, 2, 0.2, true)
Weld(torso, main, 0, 0, -0.6, 0, 0, 0)
Floor = Part(Mo, false, false, 0, 0, "Reddish brown", 1.95, 0.2, 1, true)
Weld(main, Floor, 0, 0.93, -0.4, 0, 0, 0)

for i=-0.9, 1, 1.8 do
	local side = Part(Mo, false, false, 0, 0, "Brown", 0.2, 2, 0.8, true)
	Weld(main, side, i, 0, -0.36, 0, 0, 0)
end

for i = -60, 55, 15 do
	local ba = Part(Mo, false, false, 0, 0, "Brown", 2, 0.44, 0.2, true)
	local wa = Weld(main, ba, 0, 0, 0, 0, 0, 0)
	wa.C0 = CFrame.new(0,-0.1,0.1) * CFrame.Angles(math.rad(i),0,0)
	wa.C1 = CFrame.new(0,0,-1.1)
	for x=-0.9, 1, 1.8 do
		local si = Part(Mo, false, false, 0, 0, "Brown", 0.2, 0.5, 0.7, true)
		Weld(ba, si, x, 0, 0.34, 0, 0, 0)
	end
end

for i = -0.8, 0.85, 1.6 do
	for x = -1, 1.1, 2 do
		local bah = Part(Mo, false, false, 0, 0, "Reddish brown", 0.45, 0.2, 1.1, true)
		Weld(main, bah, i, x, 0.5, 0, 0, 0)
	end
	for x = -20, 20, 5 do
		local p = Part(Mo, false, false, 0, 0, "Reddish brown", 0.45, 0.4, 0.2, true)
		local wa = Weld(main, p, 0, 0, 0, 0, 0, 0)
		wa.C0 = CFrame.new(i,0,1.2) * CFrame.Angles(math.rad(x),0,0)
		wa.C1 = CFrame.new(0,0,2.4)
	end
end

for i = 90, -91, -180 do
	local pock = Part(Mo, false, false, 0, 0, "Reddish brown", 0.7, 0.8, 0.3, true)
	local wa = Weld(main, pock, 0, 0, 0, 0, 0, 0)
	wa.C0 = CFrame.new(0, -0.1, 0.5) * CFrame.Angles(0, math.rad(i), 0)
	wa.C1 = CFrame.new(0, 0, 1)
	local pock2 = Part(Mo, false, false, 0, 0, "Reddish brown", 0.8, 0.4, 0.4, true)
	Weld(pock, pock2, 0, -0.25, 0, 0, 0, 0)
	local shin = Part(Mo, false, false, 0, 0.05, "Bright yellow", 0.4, 0.2, 0.2, true)
	Weld(pock2, shin, 0, -0.06, 0.15, 0, 0, 0)
	Add.Sphere(shin)
end
local lastpart = nil

for i = -120, 0, 20 do
	local p = Part(Mo, false, false, 0, 0, "Reddish brown", 2, 0.47, 0.2, true)
	local wa = Weld(main, p, 0, 0, 0, 0, 0, 0)
	wa.C0 = CFrame.new(0,0.23,0.5) * CFrame.Angles(math.rad(i),0,0)
	wa.C1 = CFrame.new(0,0,-0.9)
	lastpart = p
end

shiny = Part(Mo, false, false, 0, 0.05, "Bright yellow", 0.5, 0.3, 0.2, true)
Weld(lastpart, shiny, 0, 0, -0.07, 0, 0, 0)


RABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
RLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)

RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)
RLBW = Weld(torso, RLBrick, -0.5, 1, 0, 0, 0, 0)
LLBW = Weld(torso, LLBrick, 0.5, 1, 0, 0, 0, 0)

RAW = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
LAW = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)
RLW = Weld(RLBrick, nil, 0, 1, 0, 0, 0, 0)
LLW = Weld(LLBrick, nil, 0, 1, 0, 0, 0, 0)

Mo.Parent = char

RAWBattle = nil
LAWBattle = nil

function SelectAnim()
	RAW.Part1 = Rarm
	LAW.Part1 = Larm
	for i=0,16,2 do
		RAW.C0 = CFrame.Angles(0,0,math.rad(i))
		LAW.C0 = CFrame.Angles(0,0,math.rad(-i))
		wait()
	end
	if RAWBattle == nil then
		RAWBattle = RAW.C0
		LAWBattle = LAW.C0
	end
end

function DeselectAnim()
	for i=16,0,-2 do
		RAW.C0 = CFrame.Angles(0,0,math.rad(i))
		LAW.C0 = CFrame.Angles(0,0,math.rad(-i))
		wait()
	end
	RAW.Part1 = nil
	LAW.Part1 = nil
end

function makeball()
	local b = Part(Mo, false, false, 0, 0, SnowC[math.random(1,#SnowC)],1,1,1,true)
	local bw = Weld(Rarm, b, 0, 1.2, 0, 0, 0, 0)
	local m = Add.Sphere(b)
	m.Scale = Vector3.new(0.1,0.1,0.1)
	b.Material = "Concrete"
	ball = {b, bw}
	for i=0.1,1.25,0.1 do
		wait()
		m.Scale = Vector3.new(i,i,i)
	end
	wait(0.04)
end

function throw(Mousepos)
	if able and Ballzies > 0 then
	able = false
	coroutine.resume(coroutine.create(function()
	makeball()
	end))
	Ballzies = Ballzies - 1
	CheckBallzies()
	local torsopos = torso.CFrame
	local bgcf = ComputePos(torsopos.p, Mousepos)
	local bg = Add.BG(torso)
	
	local bp = Add.BP(torso)
	bp.position = torsopos.p
	
	RLW.Part1 = Rleg
	LLW.Part1 = Lleg
	for i=0,-90,-90/4 do
		bg.cframe = bgcf * CFrame.Angles(0,math.rad(i),0)
		RAW.C0 = RAWBattle * CFrame.Angles(0,0,math.rad(-i/1.7))
		LAW.C0 = LAWBattle * CFrame.Angles(0,0,math.rad(i/1.9))
		neck.C0 = necko * CFrame.Angles(0,0,math.rad(-i))
		RLW.C0 = CFrame.Angles(0,0,math.rad(-i/4.5))
		LLW.C0 = CFrame.Angles(0,0,math.rad(i/4.5))
		wait()
	end
	wait(0.08)
	for i = 0, 90, 90/3 do
		bg.cframe = bgcf * CFrame.Angles(0,math.rad(i-90),0)
		RAW.C0 = RAWBattle * CFrame.Angles(0,0,math.rad(i-(-90/1.7)))
		neck.C0 = necko * CFrame.Angles(0,0,math.rad(-i+90))
		RLW.C0 = CFrame.Angles(0,0,math.rad(-(i/4.5)-(-90/4.5)))
		LLW.C0 = CFrame.Angles(0,0,math.rad((i/4.5)-(90/4.5)))
		wait()
	end
	throwsound:play()
	coroutine.resume(coroutine.create(function()
	local ta = ball
	ta[1].Parent = workspace
	ta[2]:remove()
	local c = CFrame.new(ball[1].Position, Mousepos) * CFrame.Angles(math.pi/8.5,0,0)
	local mag = (torsopos.p - Mousepos).magnitude
	mag = mag-(mag/5)
	if mag > 70 then mag = 70 end
	local kert = (40+(mag*2))
	wait()
	ta[1].Velocity = c.lookVector * kert
	local abletohit = true
	ta[1].Touched:connect(function(hit)
		if hit.Parent ~= char and hit.Parent.Parent ~= char and abletohit then
			abletohit = false
			local pz = ta[1].Position
			local siz = ta[1].Size.x
			local bla = Part(workspace, true, false, 0, 0, "White", 0.1, 0.1, 0.1, true)
			bla.CFrame = CFrame.new(pz)
			local saa = hitsound:clone()
			saa.Parent = bla
			saa:play()
			coroutine.resume(coroutine.create(function()
			local toz = GetNoobs(pz, Dist)
			for i,v in pairs(toz) do
				v[2].PlatformStand = true
				v[2].Health = v[2].Health - dmg
				local caa = CFrame.new(pz, v[1].Position)
				v[1].Velocity = caa.lookVector * (dmg*2)
				coroutine.resume(coroutine.create(function()
					wait(0.07)
					v[2].PlatformStand = false
				end))
			end
			wait(0.5)
			bla:remove()
			end))
			ta[1]:remove()
			for i=1,math.random(2,7) do
				siz = math.random(40, 120)/100
				local sho = Part(workspace, false, false, 0, 0, SnowC[math.random(1,#SnowC)], siz, siz, siz, true)
				sho.CFrame = CFrame.new(pz)
				sho.Velocity = Vector3.new(math.random(-40,40),math.random(-20,40),math.random(-40,40))
				sho.Material = "Concrete"
				Add.Sphere(sho)
				coroutine.resume(coroutine.create(function()
					wait(1)
					sho:remove()
				end))
			end
		end
	end)
	wait(4)
	ta[1]:remove()
	end))
	for i = 90, 180, 90/3 do
		bg.cframe = bgcf * CFrame.Angles(0,math.rad(i-90),0)
		RAW.C0 = RAWBattle * CFrame.Angles(0,0,math.rad(-i-(180/1.7)))
		neck.C0 = necko * CFrame.Angles(0,0,math.rad(-i+90))
		RLW.C0 = CFrame.Angles(0,0,math.rad((i/4.5)+(-90/4.5)))
		LLW.C0 = CFrame.Angles(0,0,math.rad(-(i/4.5)+(90/4.5)))
		wait()
	end
	wait(0.16)
	for i = 180, 90, -90/6 do
		bg.cframe = bgcf * CFrame.Angles(0,math.rad(i-90),0)
		RAW.C0 = RAWBattle * CFrame.Angles(0,0,math.rad(i-90))
		neck.C0 = necko * CFrame.Angles(0,0,math.rad(-i+90))
		LAW.C0 = LAWBattle * CFrame.Angles(0,0,math.rad(-i/1.9+(90/1.9)))
		RLW.C0 = CFrame.Angles(0,0,math.rad((i/4.5)+(-90/4.5)))
		LLW.C0 = CFrame.Angles(0,0,math.rad(-(i/4.5)+(90/4.5)))
		wait()
	end
	wait(0.06)
	bg:remove()
	bp:remove()
	RLW.Part1 = nil
	LLW.Part1 = nil
	RAW.C0 = RAWBattle
	LAW.C0 = LAWBattle
	neck.C0 = necko
	ball = nil
	able = true
	end
end

function GrabSnow(Snow, mouse)
	if able == true then
	able = false
	if Snow.Name == snowname and (Snow.Position - torso.Position).magnitude < 50 then
		local pos = CFrame.new(torso.Position, Snow.Position)
		pos = pos *  CFrame.new(0,0,-(torso.Position - Snow.Position).magnitude + Snow.Size.X/2.2).p
		local blah = true
		mouse.Button1Down:connect(function()
			if blah == true then
				blah = false
			end
		end)
		repeat
			wait()
			if Snow.Parent ~= nil then
				hum:MoveTo(pos, Snow)
			else break end
			if blah == false then break end
		until (torso.Position - pos).magnitude < 4.4
		if blah then
		local bp = Add.BP(torso)
		bp.position = Vector3.new(pos.x, torso.Position.Y, pos.z)
		local bg = Add.BG(torso)
		bg.cframe = CFrame.new(torso.Position, Vector3.new(Snow.Position.x, torso.Position.y - 0.4, Snow.Position.z))
		RLW.Part1 = Rleg
		LLW.Part1 = Lleg
		for i=0,80,10 do
			wait()
			RAW.C0 = RAWBattle * CFrame.Angles(math.rad(i),0,math.rad(-i/2)) * CFrame.new(0,-i/130,0)
			LAW.C0 = LAWBattle * CFrame.Angles(math.rad(i),0,math.rad(i/2)) * CFrame.new(0,-i/130,0)
			RLW.C0 = CFrame.Angles(0,0,math.rad(i/6.5))
			LLW.C0 = CFrame.Angles(0,0,math.rad(-i/6.5))
		end
		local c1, c2 = RAW.C0, LAW.C0
		local makingball = true
		coroutine.resume(coroutine.create(function()
			while makingball == true do
				RAW.C0 = c1 * CFrame.Angles(math.random(-30,30)/100, math.random(-20,20)/100, math.random(-30,30)/100)
				LAW.C0 = c2 * CFrame.Angles(math.random(-30,30)/100, math.random(-20,20)/100, math.random(-30,30)/100)
				wait()
			end
		end))
		makeball()
		makingball = false
		ball[1]:remove()
		wait(0.1)
		bp:remove()
		bg:remove()
		for i=80,0,-10 do
			wait()
			RAW.C0 = RAWBattle * CFrame.Angles(math.rad(i),0,math.rad(-i/2)) * CFrame.new(0,-i/130,0)
			LAW.C0 = LAWBattle * CFrame.Angles(math.rad(i),0,math.rad(i/2)) * CFrame.new(0,-i/130,0)
			RLW.C0 = CFrame.Angles(0,0,math.rad(i/6.5))
			LLW.C0 = CFrame.Angles(0,0,math.rad(-i/6.5))
		end
		Ballzies = Ballzies + 1
		CheckBallzies()
		RLW.Part1 = nil
		LLW.Part1 = nil
		else
			hum:MoveTo(torso.Position, torso)
		end
	end
	able = true end
end

function KD(key)
	key = key:lower()
	if key == "q" then
		Order = Order - 1
	elseif key == "e" then
		Order = Order + 1
	end
	if Order > #Modes then
		Order = 1
	elseif Order < 1 then
		Order = #Modes
	end
	Mode = Modes[Order]
	mo.Text = Modes[Order]
end

function Select(mouse)
	SelectAnim()
	mouse.KeyDown:connect(function(key) KD(key) end)
	mouse.Button1Down:connect(function()
		if Mode == Modes[2] then
			GrabSnow(mouse.Target, mouse)
		elseif Mode == Modes[1] then
			throw(mouse.Hit.p)
		end
	end)
end

function Deselect(mouse)
	DeselectAnim()
end

if not script.Parent:IsA("HopperBin") then
	H = Instance.new("HopperBin",me.Backpack)
	H.Name = Modelname
	script.Parent = H
end

bin = H

bin.Selected:connect(Select)
bin.Deselected:connect(Deselect)


coroutine.resume(coroutine.create(function()
	while true do
			local touchy = false
			for i = 1, math.random(26,40) do
				local siz = math.random(120,280)/100
				local RandX, RandY, RandZ = math.random(-150,150), math.random(90,110), math.random(-150,150)
				local s = Part(Mo, false, false, 0, 0, SnowC[math.random(1,#SnowC)],siz,siz,siz,true)
				Add.Sphere(s)
				local b = Add.BF(s)
				b.force = Vector3.new(0, s:GetMass() * 164, 0)
				s.CFrame = CFrame.new(RandX, RandY, RandZ)
				coroutine.resume(coroutine.create(function()
					repeat wait() until s.Position.Y < 0
					local po = s.Position
					touchy = true
					s:remove()
				end))
				wait(0.04)
			end
			repeat wait(0.1) until touchy
			wait(1)
			for i = 1, math.random(12, 26) do
				wait()
				local siz = math.random(180,260)/100
				local RandX, RandZ = math.random(-150,150), math.random(-150,150)
				local pile = Part(workspace:findFirstChild("Base"), true, false, 1, 0, SnowC[math.random(1,#SnowC)],siz*6.5,siz*2.7,siz*6.5,true)
				pile.CFrame = CFrame.new(RandX, 1.05, RandZ)
				pile.Name = snowname
				Add.Sphere(pile)
				coroutine.resume(coroutine.create(function()
					for i=1,-0.05,-0.05 do
						pile.Transparency = i
						wait()
					end
					wait(30)
					for i=0,1,0.03 do
						pile.Transparency = i
						wait()
					end
					pile:remove()
				end))
			end
		wait(20)
	end
end))



end}
module[5] = {"SoulSword",function()
local name = game.Players.LocalPlayer.Name
local me = game.Players.LocalPlayer
local char = me.Character
selected = false
attacking = false
attack = false
dela = 0.4
normdmg = 9
avgdmg = normdmg
normal = 14
speed = 14
normchance = 9
criticalchance = normchance
splashdist = 14
plat = 1
healcols = {"Bright blue", "Light blue", "Medium blue", "White"}
if char:findFirstChild("Sword",true) ~= nil then
char:findFirstChild("Sword",true).Parent = nil
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
function getcharparts(path)
local objs = {}
for _,v in pairs(path:children()) do
if v:IsA("Model") and v.Name ~= name then
for _,k in pairs(v:children()) do
if k.Name == "Torso" then
table.insert(objs,k)
end
end
end
end
return objs
end
sword = Instance.new("Model",me.Character)
sword.Name = "Sword"
--Parts-------------------------Parts-------------------------Parts-------------------------Parts----------------------
rarm = char:findFirstChild("Right Arm")
larm = char:findFirstChild("Left Arm")
torso = char:findFirstChild("Torso")
hum = char:findFirstChild("Humanoid")
main = Instance.new("Part")
prop(main, sword, false, 0, 0, 0.38, 2.2, 0.38, "White", false, "Custom")
mme = Instance.new("SpecialMesh")
mesh(mme,main,1,1,1,"Head")
part1 = Instance.new("Part")
prop(part1, sword, false, 0, 0, 0.7, 0.45, 0.4, "Medium blue", false, "Custom")
p1m = Instance.new("BlockMesh",part1)
w1 = Instance.new("Weld")
weld(w1, main, part1, 0, 0, 0, 0, 0.9, 0)
part2 = Instance.new("Part")
prop(part2, sword, false, 0, 0, 0.7, 0.45, 0.4, "Medium blue", false, "Custom")
p2m = Instance.new("BlockMesh",part2)
w2 = Instance.new("Weld")
weld(w2, main, part2, 0, 0, 0.8, 0.5, 0.85, 0)
part3 = Instance.new("Part")
prop(part3, sword, false, 0, 0, 0.7, 0.45, 0.4, "Medium blue", false, "Custom")
p3m = Instance.new("BlockMesh",part3)
w3 = Instance.new("Weld")
weld(w3, main, part3, 0, 0, -0.8, -0.5, 0.85, 0)
part4 = Instance.new("Part")
prop(part4, sword, false, 0, 0, 1.3, 0.45, 0.4, "Medium blue", false, "Custom")
p4m = Instance.new("BlockMesh",part4)
w4 = Instance.new("Weld")
weld(w4, main, part4, 0, 0, -1.25, 0.8, 1, 0)
part5 = Instance.new("Part")
prop(part5, sword, false, 0, 0, 1.3, 0.45, 0.4, "Medium blue", false, "Custom")
p5m = Instance.new("BlockMesh",part5)
w5 = Instance.new("Weld")
weld(w5, main, part5, 0, 0, 1.25, -0.8, 1, 0)
part6 = Instance.new("Part")
prop(part6, sword, false, 0, 0, 0.45, 0.6, 0.45, "Light blue", false, "Custom")
p6m = Instance.new("SpecialMesh")
mesh(p6m,part6,1.3,1.2,1.3,"Sphere")
w6 = Instance.new("Weld")
weld(w6, main, part6, 0, 0, 0, 0, -0.9, 0)
blade1 = Instance.new("Part")
prop(blade1, sword, false, 0, 0.2, 0.85, 2, 0.1, "Light blue", false, "Custom")
b1m = Instance.new("SpecialMesh")
mesh(b1m,blade1,1,1,1,"Torso")
bw1 = Instance.new("Weld")
weld(bw1, main, blade1, 0, 0, 0, 0, 2, 0)
uns = Instance.new("Sound",blade1)
uns.Volume = 1
uns.Pitch = 1
uns.SoundId = "rbxasset://sounds\\unsheath.wav"
slash = Instance.new("Sound",blade1)
slash.Volume = 1
slash.Pitch = 1
slash.SoundId = "rbxasset://sounds\\swordslash.wav"
shea = Instance.new("Sound",blade1)
shea.Volume = 1
shea.Pitch = -0.9
shea.SoundId = "rbxasset://sounds\\unsheath.wav"
spi = Instance.new("Sound",blade1)
spi.Volume = 1
spi.Pitch = 1
spi.SoundId = "http://www.roblox.com/asset/?id=28144268"
charge = Instance.new("Sound",blade1)
charge.Volume = 1
charge.Pitch = 0.5
charge.SoundId = "http://www.roblox.com/asset/?id=2692844"
boom = Instance.new("Sound",blade1)
boom.Volume = 1
boom.Pitch = 2.2
boom.SoundId = "rbxasset://sounds\\Rocket shot.wav"
blade2 = Instance.new("Part")
prop(blade2, sword, false, 0, 0.2, 1.2, 1.2, 0.1, "Light blue", false, "Custom")
b2m = Instance.new("BlockMesh",blade2)
bw2 = Instance.new("Weld")
weld(bw2, main, blade2, 0, 0, math.pi/4, 0, 3, 0)
blade3 = Instance.new("Part")
prop(blade3, sword, false, 0, 0.2, 0.1, 4.5, 0.6, "Light blue", false, "Custom")
b3m = Instance.new("SpecialMesh")
mesh(b3m,blade3,1,1,1,"Wedge")
bw3 = Instance.new("Weld")
weld(bw3, main, blade3, math.pi, math.pi/2, 0, 0.3, 5.2, 0)
blade4 = Instance.new("Part")
prop(blade4, sword, false, 0, 0.2, 0.1, 4.5, 0.6, "Light blue", false, "Custom")
b4m = Instance.new("SpecialMesh")
mesh(b4m,blade4,1,1,1,"Wedge")
bw4 = Instance.new("Weld")
weld(bw4, main, blade4, math.pi, -math.pi/2, 0, -0.3, 5.2, 0)
blade5 = Instance.new("Part")
prop(blade5, sword, false, 0, 0.2, 0.6, 0.6, 0.1, "Light blue", false, "Custom")
b5m = Instance.new("BlockMesh",blade5)
bw5 = Instance.new("Weld")
weld(bw5, main, blade5, 0, 0, math.pi/4, 0, 6.6, 0)
part7 = Instance.new("Part")
prop(part7, sword, false, 0.2, 0.2, 0.7, 1.6, 0.22, "Medium blue", false, "Custom")
p7m = Instance.new("SpecialMesh")
mesh(p7m,part7,1.3,1.2,1.3,"Sphere")
w7 = Instance.new("Weld")
weld(w7, main, part7, 0, 0, 0, 0, 3, 0)
tup1 = Instance.new("Part")
prop(tup1, sword, false, 0, 0.4, 1.2, 0.7, 0.4, "Bright blue", false, "Custom")
tw1 = Instance.new("Weld")
weld(tw1, torso, tup1, -0.3+(math.pi/2), -0.3, 0.2+(math.pi/2), 1.1, 1.2, 0)
holdpart = Instance.new("Part")
prop(holdpart, char, false, 1, 0, 0.5, 0.5, 0.5, "White", false, "Custom")
hu = Instance.new("Weld")
weld(hu, rarm, holdpart, 0, 0, 0, 0, 1, 0)
holdweld = Instance.new("Weld")
weld(holdweld, main, tup1, 0, 0, 0, 0, 1.5, 0)
weaponweld = Instance.new("Weld")
weld(weaponweld, holdpart, nil, -(math.pi/2), 0, (math.pi/2), 0, 0, 0)
--Arm connections----------Arm connections----------Arm connections----------Arm connections--------
rb = Instance.new("Part")
prop(rb, char, false, 1, 0, 1, 1, 1, "White", false, "Symmetric")
rh = Instance.new("Weld")
weld(rh, rb, torso, 0, 0, 0, 1.5, 0.5, 0)
lb = Instance.new("Part")
prop(lb, char, false, 1, 0, 1, 1, 1, "White", false, "Symmetric")
lh = Instance.new("Weld")
weld(lh, lb, torso, 0, 0, 0, -1.5, 0.5, 0)
rw = Instance.new("Weld")
weld(rw, rb, nil, 0, 0, 0, 0, 0.5, 0)
lw = Instance.new("Weld")
weld(lw, lb, nil, 0, 0, 0, 0, 0.5 ,0)
neck = torso.Neck
neor = neck.C1
rightfight = CFrame.fromEulerAnglesXYZ(0.85,0.7,0) * CFrame.new(-0.23,-0.25,-0.1)
leftfight = CFrame.fromEulerAnglesXYZ(0.3,0,0.4) * CFrame.new(0.2,-0.4,0.1)
function selectmotion()
weaponweld.C0 = CFrame.new(0,0,0)
rw.C0 = CFrame.new(0,0,0)
lw.C0 = CFrame.new(0,0,0)
rw.Part1 = rarm
lw.Part1 = larm
for i=1, 15 do
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.04,0,-0.07) * CFrame.new(0,0,0)
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.07,0.16,0.04) * CFrame.new(-0.01,-0.05,-0.04)
lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(0.04,0.08,0.01) * CFrame.new(0,0,0)
wait()
end
weaponweld.Part1 = main
holdweld.Part1 = nil
wait(0.14)
uns:play()
for i=1, 4 do
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.05,0,0.03) * CFrame.new(0,0,0)
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.12,-0.03,0.26)
lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(-0.05,0.04,0.03) * CFrame.new(0,0,0)
wait()
end
for i=1, 10 do
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0,0,0.15) * CFrame.new(0,0,0)
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.15,-0.22,0.1) * CFrame.new(0.05,0.1,0.05)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.1,0,0) * CFrame.new(0,0.07,0)
lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(-0.04,0.06,0.03) * CFrame.new(0,0,0)
wait()
end
wait(0.1)
for i=1, 6 do
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.05,-0.04,-0.09) * CFrame.new(0,0,0)
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.04,0.18,-0.14) * CFrame.new(-0.08,0.05,0.05)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0.2,0,0) * CFrame.new(0,0,0)
lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(0,0,-0.12) * CFrame.new(0,-0.04,0)
wait()
end
rw.C0 = rightfight
lw.C0 = leftfight
neck.C1 = neor
weaponweld.C0 = CFrame.new(0,0,0)
selected = true
end
function deselmotion()
for i=1, 12 do
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.04,0,-0.07) * CFrame.new(0,0,0)
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.07,0.16,0.04) * CFrame.new(0.02,-0.05,-0.04)
lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.05) * CFrame.new(-0.02,0.03,0)
wait()
end
shea:play()
weaponweld.Part1 = nil
holdweld.Part1 = tup1
wait(0.1)
for i=1, 8 do
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.05,0,0.09) * CFrame.new(0,0,0)
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.12,0,-0.12) * CFrame.new(-0.07,0.11,0)
lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(0.05,0,0.04) * CFrame.new(0,0,0)
wait()
end
rw.Part1 = nil
lw.Part1 = nil
rw.C0 = CFrame.new(0,0,0)
lw.C0 = CFrame.new(0,0,0)
neck.C1 = neor
weaponweld.C0 = CFrame.new(0,0,0)
selected = false
end
----Effects--------------------------Effects--------------------------Effects--------------------------Effects----------------------
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
function block(part,avg,cols)
for i=1, math.random(1,3) do
local s = (avg*1.4)*100
local s2 = (avg/5)*100
local size = math.random(s2,s)/100
local p = Instance.new("Part",me.Character)
prop(p,me.Character,false,math.random(15,50)/100,0,size,size,size,cols[math.random(1,#cols)],true,"Custom")
p.CFrame = CFrame.new(part.Position) * CFrame.Angles(math.random(-320,320)/100,math.random(-320,320)/100,math.random(-320,320)/100)
coroutine.resume(coroutine.create(function()
for i=p.Transparency, 1, 0.2 do
wait(0.15)
p.Transparency = i
local cf = p.CFrame
p.Size = Vector3.new(size,size,size)
p.CFrame = cf * CFrame.Angles(math.random(-320,320)/100,math.random(-320,320)/100,math.random(-320,320)/100)
size = size - 0.2
end
p:remove()
end))
end
end
function blocks(part,avg,cols)
for i=1, math.random(1,3) do
local s = (avg*1.4)*100
local s2 = (avg/5)*100
local size = math.random(s2,s)/100
local p = Instance.new("Part",me.Character)
local pos = p.CFrame
local pos2 = pos * CFrame.new(0,12,-15)
local pos3 = pos2 * CFrame.new(0,-12,-12)
local bv = Instance.new("BodyPosition",p)
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bv.position = pos2.p
local bg = Instance.new("BodyGyro",p)
bg.cframe = CFrame.new(pos.p,pos3.p)
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bg.P = 30000
prop(p,me.Character,false,math.random(15,50)/100,0,size,size,size,cols[math.random(1,#cols)],true,"Custom")
p.CFrame = CFrame.new(part.Position) * CFrame.Angles(math.random(-320,320)/100,math.random(-320,320)/100,math.random(-320,320)/100)
coroutine.resume(coroutine.create(function()
for i=p.Transparency, 1, 0.2 do
wait(0.15)
p.Transparency = i
local cf = p.CFrame
p.Size = Vector3.new(size,size,size)
p.CFrame = cf * CFrame.Angles(math.random(-320,320)/100,math.random(-320,320)/100,math.random(-320,320)/100)
size = size - 0.2
end
p:remove()
end))
end
end
function blading(part,color)
local p = Instance.new("Part",me.Character)
prop(p,me.Character,false,0.4,0,0.2,1.4,3.8,color,true,"Custom")
p.CFrame = part.CFrame
coroutine.resume(coroutine.create(function()
for i=p.Transparency, 1, 0.04 do
wait()
p.Transparency = i
end
p:remove()
end))
end
function spikes(part,color)
local p = Instance.new("Part",me.Character)
prop(p,me.Character,false,0.4,0,0.2,0.2,0.2,color,true,"Custom")
p.CFrame = part.CFrame * CFrame.new(0,-3,0)
local mww = Instance.new("SpecialMesh")
mesh(mww,p,6,5,6,"FileMesh")
mww.MeshId = "http://www.roblox.com/asset/?id=20329976"
fade(p,mww,0.55,p.Transparency,0.08)
end
function spikes2(part,color)
local p = Instance.new("Part",me.Character)
prop(p,me.Character,false,0.4,0,0.2,0.2,0.2,color,true,"Custom")
p.CFrame = part.CFrame * CFrame.new(0,0,6) * CFrame.Angles(math.pi/2,0,0)
local mww = Instance.new("SpecialMesh")
mesh(mww,p,8,7,8,"FileMesh")
mww.MeshId = "http://www.roblox.com/asset/?id=20329976"
fade(p,mww,0.55,p.Transparency,0.06)
end
function bal(part,color,dist)
local p = Instance.new("Part",me.Character)
prop(p,me.Character,false,0.4,0,1,1,1,color,true,"Custom")
p.CFrame = part.CFrame
local mww = Instance.new("SpecialMesh")
mesh(mww,p,dist,dist,dist,"Sphere")
fade(p,mww,3,p.Transparency,0.06)
end
--Kill function----------------------Kill function----------------------Kill function--------------------
function blast(dmg,part,crit)
local randomposx = math.random(-30,30)
local randomposy = math.random(-50,-10)
local bil = Instance.new("BillboardGui",part)
bil.Adornee = bil.Parent
bil.Size = UDim2.new(0,110,0,70)
local img = Instance.new("ImageLabel",bil)
img.Size = UDim2.new(1,0,1,0)
img.Image = "http://www.roblox.com/asset/?id=42621332"
img.Position = UDim2.new(0,randomposx,0,randomposy)
img.BackgroundTransparency = 1
local txt = Instance.new("TextLabel",img)
txt.Size = UDim2.new(1,0,1,0)
txt.BackgroundTransparency = 1
txt.Text = dmg
txt.TextColor3 = Color3.new(0,0,0)
txt.FontSize = "Size18"
if crit then
img.Image = "http://www.roblox.com/asset/?id=42621315"
txt.FontSize = "Size24"
txt.TextColor3 = Color3.new(0.6,0,0)
end
coroutine.resume(coroutine.create(function()
wait(0.2)
for i=1, math.random(30,50) do
img.Position = UDim2.new(0,randomposx,0,randomposy)
randomposy = randomposy - 4
wait()
end
bil:remove()
end))
end
deb = true
function kill(hit,mod)
if deb and attack and hit.Parent.Name ~= name then
local ch = hit.Parent
if ch:findFirstChild("Humanoid") and ch:findFirstChild("Head") and ch:findFirstChild("Torso") and ch.Name ~= game.Players.LocalPlayer.Name then
deb = false
local dm = math.random(0,avgdmg*2)
local cri = false
local cripro = math.random(1,criticalchance)
if cripro == 1 then
cri = true
dm = math.random(avgdmg*1.5,avgdmg*4.5)
end
ch["Humanoid"].Health = ch["Humanoid"].Health - dm
blast(dm,ch.Head,cri)
if cri then
coroutine.resume(coroutine.create(function()
local lol = math.random(1,plat)
if lol == 1 then
ch["Humanoid"].PlatformStand = true
ch.Torso.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
wait(0.9)
ch["Humanoid"].PlatformStand = false
if mod == true then
ch.Torso.RotVelocity = Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
ch.Torso.Velocity = Vector3.new(math.random(-30,30),math.random(15,70),math.random(-30,30))
end
end
end))
end
wait(dela)
deb = true
end
end
end
function ris(hit,mod)
if deb and attack and hit.Parent.Name ~= name then
local ch = hit.Parent
if ch:findFirstChild("Humanoid") and ch:findFirstChild("Head") and ch:findFirstChild("Torso") and ch.Name ~= game.Players.LocalPlayer.Name then
deb = false
local dm = math.random(0,avgdmg*2)
local cri = false
local cripro = math.random(1,criticalchance)
if cripro == 1 then
cri = true
dm = math.random(avgdmg*1.5,avgdmg*4.5)
end
ch["Humanoid"].Health = ch["Humanoid"].Health - dm
blast(dm,ch.Head,cri)
if cri then
coroutine.resume(coroutine.create(function()
local lol = math.random(1,plat)
if lol == 1 then
ch["Humanoid"].PlatformStand = true
ch.Torso.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
wait(0.9)
ch["Humanoid"].PlatformStand = false
if mod == true then
ch.Torso.RotVelocity = Vector3.new(math.random(-100,100),math.random(-100,100),math.random(-100,100))
ch.Torso.Velocity = Vector3.new(math.random(-100,100),math.random(105,170),math.random(-100,100))
end
end
end))
end
wait(dela)
deb = true
end
end
end
blade3.Touched:connect(kill)
blade4.Touched:connect(kill)
blade2.Touched:connect(kill)
blade1.Touched:connect(kill)
blade5.Touched:connect(kill)
blade5.Touched:connect(ris)
----Attacks----------------------Attacks----------------------Attacks----------------------Attacks------------------
-- block(blade5,2,{"Medium blue", "Light blue", "White", "Tr. Blue"})
-- blading(blade2,"Bright red")
function att()
attacking = true
for i=1,8 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.32,-0.06,0) * CFrame.new(0,0,0)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.1,0,0) * CFrame.new(0,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.05,0,0.03)
wait()
end
slash:play()
wait(0.13)
attack = true
for i=1,6 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.44,0.08,0) * CFrame.new(0,0,0)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.04,0,0) * CFrame.new(0,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.14,0,0)
block(blade5,2,{"Medium blue", "Light blue", "White", "Tr. Blue"})
wait()
end
attack = false
wait(0.08)
for i=1,3 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0,0,0.08)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0.23,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.1,0,-0.05)
wait()
end
rw.C0 = rightfight
lw.C0 = leftfight
neck.C1 = neor
weaponweld.C0 = CFrame.new(0,0,0)
attacking = false
end
function stab()
attacking = true
for i=1,8 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.32,-0.06,0) * CFrame.new(0,0,0)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.1,0,0) * CFrame.new(0,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.05,0,0.03)
wait()
end
slash:play()
avgdmg = 15
criticalchance = 95
wait(0.13)
attack = true
for i=1,6 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0,-0.44,-0.8) * CFrame.new(0,0,0)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.04,0,0) * CFrame.new(0,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.14,0,0)
block(blade5,2,{"Medium blue", "Light blue", "White", "Tr. Blue"})
bal(blade5,"Tr. Blue",25)
wait()
end
attack = false
wait(0.08)
for i=1,3 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0,0,0.08)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0.23,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.1,0,-0.05)
blocks(blade5,2,{"Medium blue", "Light blue", "White", "Tr. Blue"})
bal(blade5,"Tr. Blue",25)
wait()
end
rw.C0 = rightfight
lw.C0 = leftfight
neck.C1 = neor
weaponweld.C0 = CFrame.new(0,0,0)
attacking = false
end
function attas()
attacking = true
local pos = torso.CFrame
local pos2 = pos * CFrame.new(0,12,-15)
local pos3 = pos2 * CFrame.new(0,-12,-12)
for i=1,6 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.32,-0.06,0) * CFrame.new(0,0,0)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.1,0,0) * CFrame.new(0,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.05,0,0.03)
spikes(torso,"Light blue")
spikes2(torso,"Bright blue")
bal(torso,"Tr. Blue",25)
wait()
end
slash:play()
avgdmg = 15
criticalchance = 65
wait(0.13)
attack = true
local bv = Instance.new("BodyPosition",torso)
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bv.position = pos2.p
local bg = Instance.new("BodyGyro",torso)
bg.cframe = CFrame.new(pos.p,pos3.p)
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bg.P = 30000
for i=1,6 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.54,0.08,0) * CFrame.new(0,0,0)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.05,0,0) * CFrame.new(0,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.24,0,0)
block(blade5,2,{"Medium blue", "Light blue", "White", "Tr. Blue"})
wait()
end
attack = false
wait(0.08)
for i=1,3 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0,0,0.08)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0.23,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.1,0,-0.05)
wait()
end
rw.C0 = rightfight
lw.C0 = leftfight
bv:remove()
bg:remove()
neck.C1 = neor
weaponweld.C0 = CFrame.new(0,0,0)
attacking = false
end
function spin()
attacking = true
hum.WalkSpeed = 0
for i=1,7 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.08,0.1,0.03) * CFrame.new(0,0,0)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.2,0,0) * CFrame.new(0,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
wait()
end
spi:play()
wait(0.3)
spi:play()
dela = 0.1
avgdmg = 6
criticalchance = 12
local bv = Instance.new("BodyVelocity",torso)
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bv.velocity = torso.CFrame.lookVector * 22
local bav = Instance.new("BodyAngularVelocity",torso)
bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bav.angularvelocity = Vector3.new(0,36,0)
bav.P = 15000
attack = true
for i=1, 30 do
wait()
spikes(torso,"Medium blue")
end
bv:remove()
bav:remove()
hum.WalkSpeed = normal
attack = false
avgdmg = normdmg
for i=1,5 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.1,-0.12,-0.04) * CFrame.new(0,0,0)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0.25,0,0) * CFrame.new(0,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
wait()
end
dela = 0.4
rw.C0 = rightfight
lw.C0 = leftfight
neck.C1 = neor
weaponweld.C0 = CFrame.new(0,0,0)
attacking = false
criticalchance = normchance
end
function spins()
attacking = true
hum.WalkSpeed = 0
for i=1,7 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.08,0.1,0.03) * CFrame.new(0,0,0)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.2,0,0) * CFrame.new(0,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
bal(torso,"Tr. Blue",25)
wait()
end
spi:play()
wait(0.3)
spi:play()
dela = 0.1
avgdmg = 6
criticalchance = 12
local bv = Instance.new("BodyVelocity",torso)
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bv.velocity = torso.CFrame.lookVector * 22
local bav = Instance.new("BodyAngularVelocity",torso)
bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bav.angularvelocity = Vector3.new(0,36,0)
bav.P = 15000
attack = true
for i=1, 30 do
wait()
spikes(torso,"Medium blue")
end
bv:remove()
bav:remove()
hum.WalkSpeed = normal
attack = false
avgdmg = normdmg
for i=1,5 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.1,-0.12,-0.04) * CFrame.new(0,0,0)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0.25,0,0) * CFrame.new(0,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
wait()
end
dela = 0.4
rw.C0 = rightfight
lw.C0 = leftfight
neck.C1 = neor
weaponweld.C0 = CFrame.new(0,0,0)
attacking = false
criticalchance = normchance
end
function rise()
attacking = true
local pos = torso.CFrame
local pos2 = pos * CFrame.new(0,5,-15)
local pos3 = pos2 * CFrame.new(0,-3,-12)
hum.WalkSpeed = 0
for i=1,7 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.08,0.1,0.03) * CFrame.new(0,0,0)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.2,0,0) * CFrame.new(0,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
bal(torso,"Tr. Blue",25)
wait()
end
spi:play()
wait(0.3)
spi:play()
dela = 0.1
avgdmg = 6
criticalchance = 12
local bv = Instance.new("BodyPosition",torso)
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bv.position = pos2.p
local bg = Instance.new("BodyGyro",torso)
bg.cframe = CFrame.new(pos.p,pos3.p)
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bg.P = 30000
attack = true
for i=1, 30 do
wait()
spikes2(torso,"Medium blue")
end
bv:remove()
bg:remove()
hum.WalkSpeed = normal
attack = false
avgdmg = normdmg
for i=1,5 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.1,-0.12,-0.04) * CFrame.new(0,0,0)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0.25,0,0) * CFrame.new(0,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
wait()
end
dela = 0.4
rw.C0 = rightfight
lw.C0 = leftfight
neck.C1 = neor
weaponweld.C0 = CFrame.new(0,0,0)
attacking = false
criticalchance = normchance
end
function sprint()
attacking = true
hum.WalkSpeed = 0
local pos = torso.CFrame
local pos2 = pos * CFrame.new(0,12,-15)
local pos3 = pos2 * CFrame.new(0,-12,-12)
for i=1,6 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.2,0,0)
lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(-0.2,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.1,0,0) * CFrame.new(0,0,0)
wait()
end
avgdmg = 14
local bv = Instance.new("BodyPosition",torso)
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bv.position = pos2.p
local bg = Instance.new("BodyGyro",torso)
bg.cframe = CFrame.new(pos.p,pos3.p)
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bg.P = 30000
for i=1, 7 do
wait()
spikes2(torso,"Medium blue")
end
wait(0.1)
coroutine.resume(coroutine.create(function()
for i=1, 17 do
wait()
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.15,0,-0.04)
lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(0.16,0,0.05)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.02,0,0) * CFrame.new(0,0,0)
end
end))
coroutine.resume(coroutine.create(function()
for i=0.4, 5.3,0.07 do
wait(0.04)
block(blade5,i,{"Medium blue", "Light blue", "White", "Tr. Blue"})
end
end))
charge:play()
coroutine.resume(coroutine.create(function()
wait(2.5)
for i=1, 11 do
wait()
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.05,0,0)
lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(0.08,0,0)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0,-(math.pi/11),0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.03,0,0) * CFrame.new(0,0,0)
end
end))
criticalchance = 1
plat = 1
dela = 0
wait(3.8)
boom:play()
attack = true
coroutine.resume(coroutine.create(function()
for i=1, 5 do
wait()
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.34,0,0)
lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(-0.34,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.1,0,0) * CFrame.new(0,0,0)
end
end))
bv.position = pos3.p
for i=1, 7 do
wait()
spikes2(torso,"Medium blue")
end
coroutine.resume(coroutine.create(function()
for i=1, 12 do
wait()
bal(blade5,"Medium blue",splashdist*2)
end
end))
local parts = getcharparts(workspace)
for _,v in pairs(parts) do
if (v.Position - blade5.Position).magnitude < 14 then
kill(v,true)
end
end
wait(0.3)
attack = false
bv:remove()
bg:remove()
hum.WalkSpeed = normal
avgdmg = normdmg
rw.C0 = rightfight
lw.C0 = leftfight
neck.C1 = neor
weaponweld.C0 = CFrame.new(0,0,0)
attacking = false
criticalchance = normchance
plat = 2
end
function sprint2()
attacking = true
hum.WalkSpeed = 0
local pos = torso.CFrame
local pos2 = pos * CFrame.new(0,15,-15)
local pos3 = pos2 * CFrame.new(0,-13,-12)
for i=1,6 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.2,0,0)
lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(-0.2,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.1,0,0) * CFrame.new(0,0,0)
wait()
end
avgdmg = 14
local bv = Instance.new("BodyPosition",torso)
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bv.position = pos2.p
local bg = Instance.new("BodyGyro",torso)
bg.cframe = CFrame.new(pos.p,pos3.p)
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bg.P = 30000
for i=1, 4 do
wait()
spikes2(torso,"Medium blue")
spikes2(torso,"Light blue")
spikes2(torso,"Bright blue")
end
wait(0.1)
coroutine.resume(coroutine.create(function()
for i=1, 34 do
wait()
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.15,0,-0.04)
lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(0.16,0,0.05)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.02,0,0) * CFrame.new(0,0,0)
end
end))
coroutine.resume(coroutine.create(function()
for i=0.4, 5.3,0.07 do
wait(0.04)
block(blade5,i,{"Medium blue", "Light blue", "White", "Tr. Blue"})
end
end))
charge:play()
coroutine.resume(coroutine.create(function()
wait(2.5)
for i=1, 11 do
wait()
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.05,0,0)
lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(0.08,0,0)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0,-(math.pi/11),0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.03,0,0) * CFrame.new(0,0,0)
end
end))
criticalchance = 1
plat = 1
dela = 0
wait(3.8)
boom:play()
attack = true
coroutine.resume(coroutine.create(function()
for i=1, 5 do
wait()
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.34,0,0)
lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(-0.34,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.1,0,0) * CFrame.new(0,0,0)
end
end))
bv.position = pos3.p
for i=1, 7 do
wait()
spikes2(torso,"Medium blue")
end
coroutine.resume(coroutine.create(function()
for i=1, 12 do
wait()
bal(blade5,"Medium blue",splashdist*2)
end
end))
local parts = getcharparts(workspace)
for _,v in pairs(parts) do
if (v.Position - blade5.Position).magnitude < 14 then
kill(v,true)
end
end
wait(0.3)
attack = false
bv:remove()
bg:remove()
hum.WalkSpeed = normal
avgdmg = normdmg
rw.C0 = rightfight
lw.C0 = leftfight
neck.C1 = neor
weaponweld.C0 = CFrame.new(0,0,0)
attacking = false
criticalchance = normchance
plat = 2
end
function combo()
att()
attas()
sprint()
spin()
end
function run()
spin()
spin()
spin()
end
function rush()
attacking = true
for i=1,8 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.03,0.1,0) * CFrame.new(0,0,0)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-(math.pi/2)/12,0.03,0.07) * CFrame.new(0,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.05,0,0.03)
wait(0.1)
end
slash:play()
wait(0.13)
attack = true
local bv = Instance.new("BodyVelocity",torso)
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bv.velocity = torso.CFrame.lookVector * 220
local bav = Instance.new("BodyAngularVelocity",torso)
bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bav.angularvelocity = Vector3.new(0,36,0)
bav.P = 15000
for i=1,6 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.44,0.08,0) * CFrame.new(0,0,0)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.04,0,0) * CFrame.new(0,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.14,0,0)
block(blade5,2,{"Medium blue", "Light blue", "White", "Tr. Blue"})
wait()
end
attack = false
wait(0.08)
for i=1,3 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0,0,0.08)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0.23,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.1,0,-0.05)
block(blade5,2,{"Medium blue", "Light blue", "White", "Tr. Blue"})
wait()
end
rw.C0 = rightfight
lw.C0 = leftfight
bv:remove()
bav:remove()
neck.C1 = neor
weaponweld.C0 = CFrame.new(0,0,0)
attacking = false
end
function masta()
attacking = true
for i=1,8 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.03,0.1,0) * CFrame.new(0,0,0)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-(math.pi/2)/12,0.03,0.07) * CFrame.new(0,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.05,0,0.03)
bal(torso,"Tr. Blue",25)
spikes2(torso,"Medium blue")
block(blade5,i,{"Medium blue", "Light blue", "White", "Tr. Blue"})
wait(0.1)
end
slash:play()
avgdmg = 37
criticalchance = 125
wait(0.13)
attack = true
local bv = Instance.new("BodyVelocity",torso)
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bv.velocity = torso.CFrame.lookVector * 220
local bav = Instance.new("BodyAngularVelocity",torso)
bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bav.angularvelocity = Vector3.new(0,36,0)
bav.P = 15000
for i=1,6 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.44,0.08,0) * CFrame.new(0,0,0)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.04,0,0) * CFrame.new(0,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.14,0,0)
bal(torso,"Tr. Blue",25)
spikes2(torso,"Medium blue")
block(blade5,i,{"Medium blue", "Light blue", "White", "Tr. Blue"})
wait()
end
attack = false
wait(0.08)
for i=1,3 do
rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0,0,0.08)
weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0.23,0,0)
neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.1,0,-0.05)
bal(torso,"Tr. Blue",25)
spikes2(torso,"Medium blue")
block(blade5,i,{"Medium blue", "Light blue", "White", "Tr. Blue"})
wait()
end
rw.C0 = rightfight
lw.C0 = leftfight
bv:remove()
bav:remove()
neck.C1 = neor
weaponweld.C0 = CFrame.new(0,0,0)
attacking = false
end
if script.Parent.className ~= "HopperBin" then
local h = Instance.new("HopperBin",me.Backpack)
h.Name = "SoulSword"
bin = h
end
wait(.15)
function sel(mouse)
neck.C1 = neor
if (selected == false) then
selectmotion()
end
mouse.Button1Down:connect(function()
if (attacking == false) then
att()
end
end)
mouse.KeyDown:connect(function(kuu)
local kai = kuu:lower()
if attacking == false then
if (kai == "q") then
spin()
elseif (kai == "e") then
att()
elseif (kai == "r") then
sprint()
elseif (kai == "l") then
stab()
elseif (kai == "t") then
attas()
elseif (kai == "z") then
masta()
elseif (kai == "y") then
spins()
elseif (kai == "g") then
combo()
elseif (kai == "p") then
rise()
elseif (kai == "j") then
sprint2()
elseif (kai == "h") then
run()
elseif (kai == "f") then
rush()
end
end
end)
while selected do
wait(0.8)
local k = math.random(1,5)
if k == 1 then
if hum.Health < 50 then
for i=1, math.random(4,24) do
wait(0.1)
local col = healcols[math.random(1,#healcols)]
local sa = math.random(30,90)/100
local p = Instance.new("Part")
prop(p,me.Character,false,0.1,0.05,1,1,1,col,false,"Symmetric")
p.CFrame = CFrame.new(torso.Position) * CFrame.Angles(math.random(-320,320)/100,math.random(-320,320)/100,math.random(-320,320)/100) * CFrame.new(0,0,math.random(4,12))
local mes = Instance.new("SpecialMesh")
mesh(mes,p,sa,sa,sa,"Sphere")
local bg = Instance.new("BodyPosition",p)
bg.maxForce = Vector3.new(1000000,1000000,1000000)
bg.P = 100000
bg.position = torso.Position
coroutine.resume(coroutine.create(function()
repeat
bg.position = torso.Position
wait()
until (p.Position - torso.Position).magnitude < 1.8
hum.Health = hum.Health + 1.2
p:remove()
end))
end
end
end
end
end
function desel()
neck.C1 = neor
if selected then
deselmotion()
end
end
bin.Selected:connect(sel)
bin.Deselected:connect(desel)
end}
module[6] = {"Spell Shooter",function()

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
attackdebounce = false 
MMouse=nil
combo=0
Loaded=false
AmmoType="None"
BulletTable={}
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
if Character:findFirstChild("Blitz",true) ~= nil then 
Character:findFirstChild("Blitz",true).Parent = nil 
end 
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp = it("Part")
fp.formFactor = formfactor 
fp.Material = "SmoothPlastic"
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = false 
fp.Locked=true
fp.BrickColor = brickcolor
fp.Name = name
fp.Size = size
fp.Position = Torso.Position 
fp.CFrame = Torso.CFrame
fp.BottomSurface="SmoothNoOutlines"
fp.TopSurface="SmoothNoOutlines"
fp.RightSurface="SmoothNoOutlines"
fp.LeftSurface="SmoothNoOutlines"
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
modelzorz.Name = "Blitz" 
BaseColour=BrickColor.new("Navy blue")
local prt1=part(3,modelzorz,0,1,BrickColor.new("Really black"),"Part1",vt(0.5,0.5,0.5))
local prt2=part(3,modelzorz,0,0,BaseColour,"Part2",vt(0.3,1,0.3))
local prt3=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part3",vt(0.5,1,0.5))
local prt4=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part4",vt(0.7,0.7,0.7))
local prt5=part(3,modelzorz,0,0,BaseColour,"Part5",vt(0.3,0.7,0.3))
local prt6=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part6",vt(0.7,0.7,0.9))
local prt7=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part7",vt(0.5,0.3,0.2))
local prt8=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part8",vt(0.3,1,0.3))
local prt9=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part9",vt(0.8,1,0.8))
local prt9b=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part9b",vt(0.6,1.01,0.6))
local prt10=part(3,modelzorz,0,0,BaseColour,"Part10",vt(0.6,0.6,1.5))
local prt11=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Part11",vt(0.61,0.61,0.2))
local prt12=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part12",vt(0.62,0.62,0.45))
local prt13=part(3,modelzorz,0,0,BaseColour,"Part13",vt(0.6,0.6,1.6))
local prt14=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Part14",vt(0.61,0.61,0.2))
local prt15=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part15",vt(0.62,0.62,0.45))
local prt16=part(3,modelzorz,0,0,BaseColour,"Part16",vt(0.6,0.2,0.6))
local prt17=part(3,modelzorz,0,0,BaseColour,"Part17",vt(0.6,0.6,0.2))
local prt18=part(3,modelzorz,0,1,BaseColour,"Part18",vt(0.5,0.5,0.5))
local prt19=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part19",vt(0.1,0.2,2))
local prt20=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part20",vt(0.1,0.2,2))
local prt22=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part22",vt(1,1,1))
local prt22b=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part22b",vt(0.8,1.01,0.8))
local msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(1,1,1))
local msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(1,1,1))
local msh3=mesh("BlockMesh",prt3,"","",vt(0,0,0),vt(1,1,1))
local msh4=mesh("SpecialMesh",prt4,"Sphere","",vt(0,0,0),vt(1,1,1))
local msh5=mesh("CylinderMesh",prt5,"","",vt(0,0,0),vt(1,1,1))
local msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(1,1,1))
local msh7=mesh("BlockMesh",prt7,"","",vt(0,0,0),vt(1,1,1))
local msh8=mesh("CylinderMesh",prt8,"","",vt(0,0,0),vt(1,1,1))
local msh9=mesh("CylinderMesh",prt9,"","",vt(0,0,0),vt(1,1,1))
local msh9b=mesh("CylinderMesh",prt9b,"","",vt(0,0,0),vt(1,1,1))
local msh10=mesh("BlockMesh",prt10,"","",vt(0,0,0),vt(1,1,1))
local msh11=mesh("BlockMesh",prt11,"","",vt(0,0,0),vt(1,1,1))
local msh12=mesh("BlockMesh",prt12,"","",vt(0,0,0),vt(1,1,1))
local msh13=mesh("BlockMesh",prt13,"","",vt(0,0,0),vt(1,1,1))
local msh14=mesh("BlockMesh",prt14,"","",vt(0,0,0),vt(1,1,1))
local msh15=mesh("BlockMesh",prt15,"","",vt(0,0,0),vt(1,1,1))
local msh16=mesh("BlockMesh",prt16,"","",vt(0,0,0),vt(1,1,1))
local msh17=mesh("BlockMesh",prt17,"","",vt(0,0,0),vt(1,1,1))
local msh18=mesh("BlockMesh",prt18,"","",vt(0,0,0),vt(1,1,1))
local msh19=mesh("BlockMesh",prt19,"","",vt(0,0,0),vt(1,1,1))
local msh20=mesh("BlockMesh",prt20,"","",vt(0,0,0),vt(1,1,1))
local msh22=mesh("CylinderMesh",prt22,"","",vt(0,0,0),vt(1,1,1))
local msh22b=mesh("CylinderMesh",prt22b,"","",vt(0,0,0),vt(1,1,1))
local wld1=weld(prt1,prt1,Torso,euler(2.5,1.57,0)*cf(-0.5,-1,-0.7))
local wld2=weld(prt2,prt2,prt1,euler(0.5,0,0)*cf(0,0,0))
local wld3=weld(prt3,prt3,prt2,euler(0.8,0,0)*cf(0,0.6,-0.2))
local wld4=weld(prt4,prt4,prt3,euler(0,0,0)*cf(0,0.5,0))
local wld5=weld(prt5,prt5,prt4,euler(0,0,1.57)*cf(0,0,0))
local wld6=weld(prt6,prt6,prt2,euler(-0.5,0,0)*cf(0,-0.7,0))
local wld7=weld(prt7,prt7,prt6,euler(0,0,0)*cf(0,0.5,0.35))
local wld8=weld(prt8,prt8,prt6,euler(0,0,1.57)*cf(0,0,0.3))
local wld9=weld(prt9,prt9,prt6,euler(1.57,0,0)*cf(0,-0.3,-0.4))
local wld9b=weld(prt9b,prt9b,prt9,euler(0,0,0)*cf(0,0,0))
local wld10=weld(prt10,prt10,prt6,euler(0,0,0)*cf(0,0,1))
local wld11=weld(prt11,prt11,prt10,euler(0,0,0)*cf(0,0,0.1))
local wld12=weld(prt12,prt12,prt10,euler(0,0,0)*cf(0,0,0.55))
local wld13=weld(prt13,prt13,prt6,euler(0,0,0)*cf(0,-0.65,0.8))
local wld14=weld(prt14,prt14,prt13,euler(0,0,0)*cf(0,0,0.3))
local wld15=weld(prt15,prt15,prt13,euler(0,0,0)*cf(0,0,0.75))
local wld16=weld(prt16,prt16,prt13,euler(0,0,0)*cf(0,-0.2,-1))
local wld17=weld(prt17,prt17,prt13,euler(0,0,0)*cf(0,0.2,-1.2))
local wld18=weld(prt18,prt18,prt6,euler(0,0,0)*cf(0,0,0.8))
local wld19=weld(prt19,prt19,prt18,euler(0,0,0)*cf(0.4,-0.3,0))
local wld20=weld(prt20,prt20,prt18,euler(0,0,0)*cf(-0.4,-0.3,0))
local wld22=weld(prt22,prt22,prt6,euler(1.57,0,0)*cf(0,-0.3,1.6))
local wld22b=weld(prt22b,prt22b,prt22,euler(0,0,0)*cf(0,0,0))
numb=-0.8
for i=1,9 do
local prt21=part(3,modelzorz,0,0,BaseColour,"Part21",vt(0.5,0.5,0.5))
local msh21=mesh("SpecialMesh",prt21,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(0.8,0.8,0.8))
local wld21=weld(prt21,prt21,prt18,euler(0,0,0)*cf(0,-0.3,numb))
numb=numb+0.2
end
function MakeBullet(Color)
model=Instance.new("Model")
model.Parent=modelzorz
model.Name="Bullet"
local bulletbase=part(3,model,0,0,BrickColor.new("Really black"),"BulletBase",vt(0.5,0.5,0.5))
bulletbase.CFrame=prt22.CFrame
local bullet1=part(3,model,0,0,BrickColor.new(Color),"Bullet1",vt(0.51,0.1,0.51))
local bullet2=part(3,model,0,0,BrickColor.new(Color),"Bullet2",vt(0.5,0.5,0.5))
local bullet3=part(3,model,0,0,BrickColor.new(Color),"Bullet3",vt(0.5,0.5,0.5))
local bullet4=part(3,model,0,0,BrickColor.new("Really black"),"Bullet4",vt(0.5,0.5,0.5))
local bulmsh=mesh("CylinderMesh",bulletbase,"","",vt(0,0,0),vt(1.5,1,1.5))
local bulmsh1=mesh("CylinderMesh",bullet1,"","",vt(0,0,0),vt(1.5,0.5,1.5))
local bulmsh2=mesh("SpecialMesh",bullet2,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(0.55,0.2,0.55))
local bulmsh3=mesh("CylinderMesh",bullet3,"","",vt(0,0,0),vt(1,0.5,1))
local bulmsh4=mesh("CylinderMesh",bullet4,"","",vt(0,0,0),vt(1.5,0.2,1.5))
local bulwld1=weld(bullet1,bullet1,bulletbase,euler(0,0,0)*cf(0,0.1,0))
local bulwld2=weld(bullet2,bullet2,bulletbase,euler(3.14,0,0)*cf(0,0.4,0))
local bulwld3=weld(bullet3,bullet3,bulletbase,euler(0,0,0)*cf(0,-0.3,0))
local bulwld4=weld(bullet4,bullet4,bulletbase,euler(0,0,0)*cf(0,-0.35,0))
bulletbase.CFrame=prt22.CFrame
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.1 do
wait()
end
end),bulletbase)
return bulletbase,model
end
--[[local bullet=MakeBullet("Bright red")
local wldbul=weld(bullet,bullet,Torso,euler(0,0,0)*cf(0,-5,0))]]
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Blitz" 
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
wld1.C0=euler(2.5,1.57,0)*cf(-0.5,-1,-0.7)
end 
function equipweld() 
wld1.Part1=RightArm
wld1.C0=euler(1.57,0,0)*cf(0,1,0)
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
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function() 
for i=0,1,0.2 do
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
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
function MagicFreeze(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
local prt=part(3,workspace,0.4,0.3,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.3,0)
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
wait(5)
Part.Parent=nil
end),prt,msh)
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
Damagefunc1=function(hit,Damage,Type)
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
                        game:GetService("Debris"):AddItem(c,100)
                Damage=Damage+math.random(0,100)
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,100)
                if Type=="" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*10
                vp.velocity=Head.CFrame.lookVector*10+Head.Velocity/1.05
                if 10>0 then
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
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Explosion" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,40,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,.5)
                end
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,100)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
        end 
end
freezeDamagefunc=function(hit,Damage,Knockback)
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
                Damage=Damage+math.random(0,100)
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
                showDamage(hit.Parent,Damage,100)
                else
                h:TakeDamage(1)
                showDamage(hit.Parent,1,.5)
                end
                if math.random(1,1)==1 then
                BodPos=Instance.new("BodyPosition")
                BodPos.P=50000
                BodPos.D=1000
                BodPos.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                BodPos.position=hit.Parent.Torso.Position
                BodPos.Parent=hit.Parent.Torso
                BodGy = it("BodyGyro") 
                BodGy.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
                BodGy.P = 20e+003 
                BodGy.Parent=hit.Parent.Torso
                BodGy.cframe = hit.Parent.Torso.CFrame
                showDamage(hit.Parent,"Freeze!",3)
                so("http://www.roblox.com/asset/?id=41763367",hit,1,2) 
                for i=1,10 do
                local freezepart=part(3,hit.Parent,0.5,0.5,BrickColor.new("Bright blue"),"Ice Part",vt(math.random(2,3)+math.random(),math.random(2,3)+math.random(),math.random(2,3)+math.random()))
                freezepart.Anchored=true
                freezepart.CFrame=hit.Parent.Torso.CFrame*cf(math.random(-1,0)+math.random(),-2.5,math.random(-1,0)+math.random())*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
                coroutine.resume(coroutine.create(function(Part) 
                wait(3)
                Part.Anchored=false
                Part.Velocity=vt(math.random(-20,20),math.random(20,30),math.random(-20,20))
                wait(5)
                Part.Parent=nil
                end),freezepart)
                end
                coroutine.resume(coroutine.create(function(BodyPos,BodyGy,Hitted) 
                wait(3)
                BodyPos.Parent=nil
                BodyGy.Parent=nil
                so("http://www.roblox.com/asset/?id=87015121",Hitted,1,2) 
                end),BodPos,BodGy,hit)
                end
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
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
        c.Material = "SmoothPlastic"
        c.BottomSurface="SmoothNoOutlines"
        c.TopSurface="SmoothNoOutlines"
        c.RightSurface="SmoothNoOutlines"
        c.LeftSurface="SmoothNoOutlines"
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
        wait(2)
        c:remove()
end
local function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
spread=0
range=500
rangepower=10
function shoottrail(mouse,baseprt,Type)
coroutine.resume(coroutine.create(function(v) 
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))) * (baseprt.Position-MMouse.Hit.p).magnitude/100
local dir = CFrame.new((baseprt.Position+MMouse.Hit.p)/2,MMouse.Hit.p+spreadvector)
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,Character)
local rangepos = range
BulletType=Type
NewCol="White"
if BulletType=="Explosion" then
NewCol="Bright red"
elseif BulletType=="Freeze" then
NewCol="Bright blue"
elseif BulletType=="Tornado" then
NewCol="Pastel Blue"
end
local ShootBullet,ShootModel=MakeBullet(NewCol)
ShootBullet.Anchored=false
ShootBullet.CFrame=baseprt.CFrame
local shodderp=weld(ShootBullet,ShootBullet,prt22,euler(3.14,0,0)*cf(0,0,0))
shodderp.Parent=nil
local function drawtrail(From,To)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.Material = "SmoothPlastic"
effectsg.TopSurface = "SmoothNoOutlines"
effectsg.BottomSurface = "SmoothNoOutlines"
effectsg.RightSurface = "SmoothNoOutlines"
effectsg.LeftSurface = "SmoothNoOutlines"
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = modelzorz
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new(NewCol)
effectsg.Reflectance = 0.25
effectsg.Transparency = 1
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(1.5,mg*5,1.5)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
ShootBullet.CFrame=effectsg.CFrame*euler(3.14,0,0)
local shodderp=weld(ShootBullet,ShootBullet,effectsg,euler(3.14,0,0)*cf(0,0,0))
MagicBlock(BrickColor.new(NewCol),ShootBullet.CFrame,0,0,0,0.5,0.5,0.5)
coroutine.resume(coroutine.create(function()
effectsg.Transparency=1
wait(0.1)
effectsg.Parent = nil 
end))
end
local newpos = baseprt.Position
local inc = rangepower
repeat
wait(0)
rangepos = rangepos - 10
dir = dir * CFrame.Angles(math.rad(-0.5),0,0)
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
TehCF=ShootBullet.CFrame
NewCF=CFrame.new(ShootBullet.Position)
NewPOS=ShootBullet.Position
rand=math.random(1,3)
ShootModel.Parent=nil
if Type=="Explosion" then
MagicCircle(BrickColor.new("Bright red"),TehCF,1,1,1,5,5,5)
coroutine.resume(coroutine.create(function()
for i=1,10 do
wait(0.05)
MagicCircle(BrickColor.new("Bright red"),NewCF*cf(math.random(-5,5),0,math.random(-5,5)),rand,1,rand,1,8,1)
end
end))
local cc = game.Workspace:GetChildren()
for i = 1, #cc do
local hum = cc[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = cc[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - NewPOS
local mag = targ.magnitude
if mag <= 20 and cc[i].Name ~= Player.Name then 
attackdebounce=false
Damagefunc1(head,20,"Explosion")
end
end
end
end
elseif Type=="Freeze" then
MagicBlock(BrickColor.new("Bright blue"),NewCF,1,1,1,5,5,5)
for i=1,6 do
MagicFreeze(BrickColor.new("Bright blue"),NewCF,0.5,0.5,0.5,0.1,0.3,0.1)
BreakEffect(BrickColor.new("Bright blue"),NewCF,0.5,math.random(5,15),0.5)
end
local cc = game.Workspace:GetChildren()
for i = 1, #cc do
local hum = cc[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = cc[i]:findFirstChild("Head")
if head ~= nil then
local targ = head.Position - NewPOS
local mag = targ.magnitude
if mag <= 10 and cc[i].Name ~= Player.Name then 
attackdebounce=false
freezeDamagefunc(head,10,10)
end
end
end
end
elseif Type=="Tornado" then
end
--[[if hit ~= nil then
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
end]]
end))
end
function Melee()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-1*i, 0.5, -0.5*i) * euler(0.8+0.77*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-1.77*i,-0.2+1.2*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
so("http://roblox.com/asset/?id=10209640",prt22,1,1) 
con1=prt22.Touched:connect(function(hit) Damagefunc1(hit,10,"") end) 
for i=0,1,0.2 do
wait()
RW.C0=cf(0.5+1*i, 0.5, -0.5+0.5*i) * euler(1.57,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57,1-2.5*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5*i,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
con1:disconnect()
for i=0,1,0.1 do
wait()
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57,-1.5-0.1*i)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1.57-0.77*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.57+1.77*i,-1.6+1.4*i)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5+0.5*i,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
function Shoot(Model)
attack=true
Humanoid.WalkSpeed=0
coroutine.resume(coroutine.create(function()
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 9000
bg.Parent = Torso
MainCFX=workspace.CurrentCamera.CoordinateFrame.X
MainCFZ=workspace.CurrentCamera.CoordinateFrame.Z
HeadCF=Head.Position.Y
--wld1.C0 = euler(0,0,0) * cf(0,0,0) 
local pos4 = vt(workspace.CurrentCamera.CoordinateFrame.X,Head.Position.Y,workspace.CurrentCamera.CoordinateFrame.Z)
MainCF=cf(Head.Position,pos4) * euler(0,3.14,0)
while attack==true do
wait()
bg.cframe = MainCF
bg.Parent = Head
end
for i=0,1,0.1 do
wait()
bg.Parent=nil
Neck.C0=necko*euler(0,0,0)
end
end))
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,-1.57*i)
RW.C0=cf(1.5, 0.5, 0) * euler(0.8+0.77*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-0.2*i,-0.2-1.37*i)
end
wait(0.3)
so("http://roblox.com/asset/?id=151776307",prt7,1,1) 
MainModel=BulletTable[1]
table.remove(BulletTable,1)
MainModel.Parent=nil
shoottrail(mouse,prt22,AmmoType)
Loaded=false
AmmoType=""
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0,0,-1.57)
RW.C0=cf(1.5, 0.5, 0) * euler(1.57,0,0)
RW.C1=cf(0, 0.5, 0) * euler(-0.3*i,0,-1.57)
end
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,-1.57)
RW.C0=cf(1.5, 0.5, 0) * euler(1.57,0,0)
RW.C1=cf(0, 0.5, 0) * euler(-0.3-0.2*i,0,-1.57)
end
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,-1.57+1.57*i)
RW.C0=cf(1.5, 0.5, 0) * euler(1.57-0.77*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(-0.5+0.5*i,0.2*i,-1.57+1.37*i)
end
wait(0.2)
Humanoid.WalkSpeed=16
attack=false
end
function LoadExplode(bullet,BulletModel)
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5*i,0,-0.2+0.6*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
local bullet,BulletModel=MakeBullet("Bright red")
local wldbul=weld(bullet,bullet,LeftArm,euler(1.57,0,0)*cf(0,1,0))
table.insert(BulletTable,BulletModel)
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5*i, 0.5, -1*i) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-1.6*i,-0.2+0.2*i)
LW.C0=cf(-1.5+0.3*i, 0.5-0.2*i, -1*i) * euler(-0.5+2*i,0,0.4+0.7*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0.8*i,0)
end
so("http://www.roblox.com/asset/?id=10209845",prt9,1,0.7) 
wldbul.Part1=prt9
wldbul.C0=euler(3.14,0,0)*cf(0,0.8,0)
Loaded=true
AmmoType="Explosion"
for i=0,1,0.1 do
wait()
wldbul.C0=euler(3.14,0,0)*cf(0,0.8-2.2*i,0)
RW.C0=cf(1.5-0.5, 0.5, -1) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-1.6,0)
LW.C0=cf(-1.5+0.3, 0.5-0.2, -1) * euler(1.5,0,0.4+0.7)
LW.C1=cf(0, 0.5, 0) * euler(1*i,0.8,0)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1+0.5*i, 0.5, -1+1*i) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.4+1.6*i,-0.2*i)
LW.C0=cf(-1.2-0.3*i, 0.5-0.2+0.2*i, -1+1*i) * euler(1.5-1.5*i,0,1.1-1.3*i)
LW.C1=cf(0, 0.5, 0) * euler(1-1*i,0.8-0.8*i,0)
end
attack=false
return bullet,BulletModel
end
function LoadFreeze(bullet,BulletModel)
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5*i,0,-0.2+0.6*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
local bullet,BulletModel=MakeBullet("Bright blue")
local wldbul=weld(bullet,bullet,LeftArm,euler(1.57,0,0)*cf(0,1,0))
table.insert(BulletTable,BulletModel)
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5*i, 0.5, -1*i) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-1.6*i,-0.2+0.2*i)
LW.C0=cf(-1.5+0.3*i, 0.5-0.2*i, -1*i) * euler(-0.5+2*i,0,0.4+0.7*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0.8*i,0)
end
so("http://www.roblox.com/asset/?id=10209845",prt9,1,0.7) 
wldbul.Part1=prt9
wldbul.C0=euler(3.14,0,0)*cf(0,0.8,0)
Loaded=true
AmmoType="Freeze"
for i=0,1,0.1 do
wait()
wldbul.C0=euler(3.14,0,0)*cf(0,0.8-2.2*i,0)
RW.C0=cf(1.5-0.5, 0.5, -1) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-1.6,0)
LW.C0=cf(-1.5+0.3, 0.5-0.2, -1) * euler(1.5,0,0.4+0.7)
LW.C1=cf(0, 0.5, 0) * euler(1*i,0.8,0)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1+0.5*i, 0.5, -1+1*i) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.4+1.6*i,-0.2*i)
LW.C0=cf(-1.2-0.3*i, 0.5-0.2+0.2*i, -1+1*i) * euler(1.5-1.5*i,0,1.1-1.3*i)
LW.C1=cf(0, 0.5, 0) * euler(1-1*i,0.8-0.8*i,0)
end
attack=false
return bullet,BulletModel
end
function LoadTornado(bullet,BulletModel)
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.5*i,0,-0.2+0.6*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
local bullet,BulletModel=MakeBullet("Pastel Blue")
local wldbul=weld(bullet,bullet,LeftArm,euler(1.57,0,0)*cf(0,1,0))
table.insert(BulletTable,BulletModel)
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5*i, 0.5, -1*i) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-1.6*i,-0.2+0.2*i)
LW.C0=cf(-1.5+0.3*i, 0.5-0.2*i, -1*i) * euler(-0.5+2*i,0,0.4+0.7*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0.8*i,0)
end
so("http://www.roblox.com/asset/?id=10209845",prt9,1,0.7) 
wldbul.Part1=prt9
wldbul.C0=euler(3.14,0,0)*cf(0,0.8,0)
Loaded=true
AmmoType="Tornado"
for i=0,1,0.1 do
wait()
wldbul.C0=euler(3.14,0,0)*cf(0,0.8-2.2*i,0)
RW.C0=cf(1.5-0.5, 0.5, -1) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2-1.6,0)
LW.C0=cf(-1.5+0.3, 0.5-0.2, -1) * euler(1.5,0,0.4+0.7)
LW.C1=cf(0, 0.5, 0) * euler(1*i,0.8,0)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1+0.5*i, 0.5, -1+1*i) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.4+1.6*i,-0.2*i)
LW.C0=cf(-1.2-0.3*i, 0.5-0.2+0.2*i, -1+1*i) * euler(1.5-1.5*i,0,1.1-1.3*i)
LW.C1=cf(0, 0.5, 0) * euler(1-1*i,0.8-0.8*i,0)
end
attack=false
return bullet,BulletModel
end
function ob1d(mouse) 
if attack == true then return end 
hold=true
if Loaded==false then
Melee()
else
Shoot(TehModel)
end
RW.C0=cf(1.5, 0.5, 0) * euler(0.8,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0.2,-0.2)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end 
function ob1u(mouse) 
hold = false 
end 
buttonhold = false 
eul=0
function key(key) 
if attack == true then return end 
if Loaded==false then
if key=="z" then
local Bullet,TehModel=LoadExplode(bullet,BulletModel)
end
if key=="x" then
local Bullet,TehModel=LoadFreeze(bullet,BulletModel)
end
if key=="c" then
local Bullet,TehModel=LoadTornado(bullet,BulletModel)
end
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
print("Blitz loaded.")
-- mediafire
--[[ 
Copyrighted (C) Fenrier 2013
]]

end}

 
 

module[1] = {"Spider",function()
Player = game.Players.LocalPlayer
Char = Player.Character
Head = Char.Head
Torso = Char.Torso 
h = Char.Humanoid

necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local gairo = Instance.new("BodyGyro") 
gairo.Parent = nil 

if Char:findFirstChild("Weapon",true) ~= nil then 
Char:findFirstChild("Weapon",true).Parent = nil 
end 

bets = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," "}
col = {"Really black","Really black","Really red"}
Anims = {}
act = {key = {}}
for i=1,#bets do table.insert(act.key,bets) end 
act.mousedown = false 
act.keydown = false 
act.Walking = false
act.Jumping = false 
act.Anim = ""
hitted=false
roflcopter=false
bodypos=Instance.new("BodyPosition")
holdshoot=false
Prop = {}

difficulty=0.05
Prop.LegLength = 5
Prop.LegWide = 1
Prop.BallSize = 0.9


coroutine.resume(coroutine.create(function()
for i=0,50 do
wait()
if h~= nil then
	h.WalkSpeed=18
	walksped=h.WalkSpeed
	h.MaxHealth=math.huge
	h.Health=math.huge
end
end
end))

Spider = {w = {}}
attack = false 
attackdebounce = false

it = Instance.new
bc = BrickColor.new
v3 = Vector3.new
cf = CFrame.new
ca = CFrame.Angles
pi = math.pi
rd = math.rad
br = BrickColor.new

function r(pa,ob)
pcall(function() pa[ob]:Remove() end)
end 

function p(pa,sh,x,y,z,c,a,tr,re,bc)
local fp = it("Part",pa)
fp.formFactor = "Custom"
fp.Shape = sh
fp.Size = v3(x,y,z)
fp.CanCollide = c
fp.Anchored = false
fp.BrickColor = br(bc)
fp.Transparency = tr
fp.Reflectance = re
fp.BottomSurface = 0
fp.TopSurface = 0
fp.CFrame = Torso.CFrame + Vector3.new(0,50,0)
fp.Velocity = Vector3.new(0,10,0)
fp:BreakJoints()
return fp 
end 

function weld(pa,p0,p1,x,y,z,a,b,c)
local fw = it("Weld",pa)
fw.Part0 = p0 fw.Part1 = p1
fw.C0 = cf(x,y,z) *ca(a,b,c)
return fw
end

function spm(ty,pa,ss)
local sp = it("SpecialMesh",pa)
sp.MeshType = ty
sp.Scale = Vector3.new(ss,ss,ss)
end


pcall(function() Torso.Spider:Remove() end)
wait(0.1)
pack = it("Model",Torso)
pack.Name = "Spider"

Spider.Back = p(pack,"Block",1.2,1.7,0.5,false,false,0,0,col[1])
--Right Arm
Spider.RAb1 = p(pack,"Ball",1,1,1,false,false,0,0,col[2]) spm("Sphere",Spider.RAb1,Prop.BallSize)
Spider.w.RAb1 = weld(Spider.RAb1,Spider.Back,Spider.RAb1,0.5,0.6,0.35,0,0,0) Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120),math.rad(70),0)
Spider.RAa1 = p(pack,"Block",Prop.LegWide,Prop.LegLength,Prop.LegWide,true,false,0,0,col[1])
Spider.w.RAa1 = weld(Spider.RAa1,Spider.RAb1,Spider.RAa1,0,Prop.LegLength/2,0,0,0,0)
Spider.RAb2 = p(pack,"Ball",1,1,1,false,false,0,0,col[2]) spm("Sphere",Spider.RAb2,Prop.BallSize)
Spider.w.RAb2 = weld(Spider.RAb2,Spider.RAa1,Spider.RAb2,0,(Prop.LegLength/2),0,0,0,0) Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(40),0)
Spider.RAa2 = p(pack,"Block",Prop.LegWide,Prop.LegLength,Prop.LegWide,true,false,0,0,col[1])
Spider.w.RAa2 = weld(Spider.RAa2,Spider.RAb2,Spider.RAa2,0,Prop.LegLength/2,0,0,0,0)
--Left Arm
Spider.LAb1 = p(pack,"Ball",1,1,1,false,false,0,0,col[2]) spm("Sphere",Spider.LAb1,Prop.BallSize)
Spider.w.LAb1 = weld(Spider.LAb1,Spider.Back,Spider.LAb1,-0.5,0.6,0.35,0,0,0) Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120),math.rad(-70),0)
Spider.LAa1 = p(pack,"Block",Prop.LegWide,Prop.LegLength,Prop.LegWide,true,false,0,0,col[1])
Spider.w.LAa1 = weld(Spider.LAa1,Spider.LAb1,Spider.LAa1,0,Prop.LegLength/2,0,0,0,0)
Spider.LAb2 = p(pack,"Ball",1,1,1,false,false,0,0,col[2]) spm("Sphere",Spider.LAb2,Prop.BallSize)
Spider.w.LAb2 = weld(Spider.LAb2,Spider.LAa1,Spider.LAb2,0,(Prop.LegLength/2),0,0,0,0) Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(-40),0)
Spider.LAa2 = p(pack,"Block",Prop.LegWide,Prop.LegLength,Prop.LegWide,true,false,0,0,col[1])
Spider.w.LAa2 = weld(Spider.LAa2,Spider.LAb2,Spider.LAa2,0,Prop.LegLength/2,0,0,0,0)
--Upper Right
Spider.URb1 = p(pack,"Ball",1,1,1,false,false,0,0,col[3]) spm("Sphere",Spider.URb1,Prop.BallSize)
Spider.w.URb1 = weld(Spider.URb1,Spider.Back,Spider.URb1,0.5,-0.6,0.35,0,0,0) Spider.w.URb1.C1 = CFrame.Angles(math.rad(80),math.rad(40),0)
Spider.URa1 = p(pack,"Block",Prop.LegWide,Prop.LegLength,Prop.LegWide,true,false,0,0,col[1])
Spider.w.URa1 = weld(Spider.URa1,Spider.URb1,Spider.URa1,0,Prop.LegLength/2,0,0,0,0)
Spider.URb2 = p(pack,"Ball",1,1,1,false,false,0,0,col[3]) spm("Sphere",Spider.URb2,Prop.BallSize)
Spider.w.URb2 = weld(Spider.URb2,Spider.URa1,Spider.URb2,0,(Prop.LegLength/2),0,0,0,0) Spider.w.URb2.C1 = CFrame.Angles(math.rad(100),math.rad(0),0)
Spider.URa2 = p(pack,"Block",Prop.LegWide,Prop.LegLength,Prop.LegWide,true,false,0,0,col[1])
Spider.w.URa2 = weld(Spider.URa2,Spider.URb2,Spider.URa2,0,Prop.LegLength/2,0,0,0,0)
--Upper Left
Spider.ULb1 = p(pack,"Ball",1,1,1,false,false,0,0,col[3]) spm("Sphere",Spider.ULb1,Prop.BallSize)
Spider.w.ULb1 = weld(Spider.ULb1,Spider.Back,Spider.ULb1,-0.5,-0.6,0.35,0,0,0) Spider.w.ULb1.C1 = CFrame.Angles(math.rad(80),math.rad(-40),0)
Spider.ULa1 = p(pack,"Block",Prop.LegWide,Prop.LegLength,Prop.LegWide,true,false,0,0,col[1])
Spider.w.ULa1 = weld(Spider.ULa1,Spider.ULb1,Spider.ULa1,0,Prop.LegLength/2,0,0,0,0)
Spider.ULb2 = p(pack,"Ball",1,1,1,false,false,0,0,col[3]) spm("Sphere",Spider.ULb2,Prop.BallSize)
Spider.w.ULb2 = weld(Spider.ULb2,Spider.ULa1,Spider.ULb2,0,(Prop.LegLength/2),0,0,0,0) Spider.w.ULb2.C1 = CFrame.Angles(math.rad(100),math.rad(0),0)
Spider.ULa2 = p(pack,"Block",Prop.LegWide,Prop.LegLength,Prop.LegWide,true,false,0,0,col[1])
Spider.w.ULa2 = weld(Spider.ULa2,Spider.ULb2,Spider.ULa2,0,Prop.LegLength/2,0,0,0,0)
--Lower Right
Spider.LRb1 = p(pack,"Ball",1,1,1,false,false,0,0,col[3]) spm("Sphere",Spider.LRb1,Prop.BallSize)
Spider.w.LRb1 = weld(Spider.LRb1,Spider.Back,Spider.LRb1,0.5,-0.6,0.35,0,0,0) Spider.w.LRb1.C1 = CFrame.Angles(math.rad(-80),math.rad(-40),0)
Spider.LRa1 = p(pack,"Block",Prop.LegWide,Prop.LegLength,Prop.LegWide,true,false,0,0,col[1])
Spider.w.LRa1 = weld(Spider.LRa1,Spider.LRb1,Spider.LRa1,0,Prop.LegLength/2,0,0,0,0)
Spider.LRb2 = p(pack,"Ball",1,1,1,false,false,0,0,col[3]) spm("Sphere",Spider.LRb2,Prop.BallSize)
Spider.w.LRb2 = weld(Spider.LRb2,Spider.LRa1,Spider.LRb2,0,(Prop.LegLength/2),0,0,0,0) Spider.w.LRb2.C1 = CFrame.Angles(math.rad(-100),math.rad(0),0)
Spider.LRa2 = p(pack,"Block",Prop.LegWide,Prop.LegLength,Prop.LegWide,true,false,0,0,col[1])
Spider.w.LRa2 = weld(Spider.LRa2,Spider.LRb2,Spider.LRa2,0,Prop.LegLength/2,0,0,0,0)
--Lower Left
Spider.LLb1 = p(pack,"Ball",1,1,1,false,false,0,0,col[3]) spm("Sphere",Spider.LLb1,Prop.BallSize)
Spider.w.LLb1 = weld(Spider.LLb1,Spider.Back,Spider.LLb1,-0.5,-0.6,0.35,0,0,0) Spider.w.LLb1.C1 = CFrame.Angles(math.rad(-80),math.rad(40),0)
Spider.LLa1 = p(pack,"Block",Prop.LegWide,Prop.LegLength,Prop.LegWide,true,false,0,0,col[1])
Spider.w.LLa1 = weld(Spider.LLa1,Spider.LLb1,Spider.LLa1,0,Prop.LegLength/2,0,0,0,0)
Spider.LLb2 = p(pack,"Ball",1,1,1,false,false,0,0,col[3]) spm("Sphere",Spider.LLb2,Prop.BallSize)
Spider.w.LLb2 = weld(Spider.LLb2,Spider.LLa1,Spider.LLb2,0,(Prop.LegLength/2),0,0,0,0) Spider.w.LLb2.C1 = CFrame.Angles(math.rad(-100),math.rad(0),0)
Spider.LLa2 = p(pack,"Block",Prop.LegWide,Prop.LegLength,Prop.LegWide,true,false,0,0,col[1])
Spider.w.LLa2 = weld(Spider.LLa2,Spider.LLb2,Spider.LLa2,0,Prop.LegLength/2,0,0,0,0)

local prt1 = Instance.new("Part") 
prt1.formFactor = 1 
prt1.Parent = pack 
prt1.CanCollide = false 
prt1.BrickColor = br(col[1])
prt1.Name = "Part1" 
prt1.Size = Vector3.new(1,1,1) 
prt1.Position = Torso.Position 
local prt2 = Instance.new("Part") 
prt2.formFactor = 1 
prt2.Parent = pack 
prt2.CanCollide = false 
prt2.BrickColor = BrickColor.new("Really red") 
prt2.Name = "Part2" 
prt2.Reflectance=0.3
prt2.Size = Vector3.new(1,2,1) 
prt2.Position = Torso.Position 
local prt3 = Instance.new("Part") 
prt3.formFactor = 1 
prt3.Parent = pack 
prt3.CanCollide = false 
prt3.BrickColor = BrickColor.new("Medium stone grey") 
prt3.Name = "Part3" 
prt3.Reflectance=0.6
prt3.Size = Vector3.new(1,2,1) 
prt3.Position = Torso.Position 
local prt4 = Instance.new("Part") 
prt4.formFactor = 1 
prt4.Parent = pack 
prt4.CanCollide = false 
prt4.BrickColor = BrickColor.new("Really red") 
prt4.Name = "Part4" 
prt4.Reflectance=0.3
prt4.Size = Vector3.new(1,1,1) 
prt4.Position = Torso.Position 
local prt5 = Instance.new("Part") 
prt5.formFactor = 1 
prt5.Parent = pack 
prt5.CanCollide = false 
prt5.BrickColor = br(col[1])
prt5.Name = "Part5" 
prt5.Size = Vector3.new(1,1,1) 
prt5.Position = Torso.Position 
local prt6 = Instance.new("Part") 
prt6.formFactor = 1 
prt6.Parent = pack 
prt6.CanCollide = false 
prt6.BrickColor = br(col[1])
prt6.Name = "Part6" 
prt6.Size = Vector3.new(1,1,1) 
prt6.Position = Torso.Position 
local prt7 = Instance.new("Part") 
prt7.formFactor = 1 
prt7.Parent = pack 
prt7.CanCollide = false 
prt7.BrickColor = BrickColor.new("Really black") 
prt7.Name = "Part7" 
prt7.Size = Vector3.new(1,1,1) 
prt7.Position = Torso.Position 
local prt8 = Instance.new("Part") 
prt8.formFactor = 1 
prt8.Parent = pack 
prt8.CanCollide = false 
prt8.BrickColor = br(col[1])
prt8.Name = "Part8" 
prt8.Size = Vector3.new(1,1,1) 
prt8.Position = Torso.Position 
local prt9 = Instance.new("Part") 
prt9.formFactor = 1 
prt9.Parent = pack 
prt9.CanCollide = false 
prt9.BrickColor = br(col[1])
prt9.Name = "Part9" 
prt9.Size = Vector3.new(1,1,1) 
prt9.Position = Torso.Position 
local prt10 = Instance.new("Part") 
prt10.formFactor = 1 
prt10.Parent = pack 
prt10.CanCollide = false 
prt10.BrickColor = br(col[1])
prt10.Name = "Part10" 
prt10.Size = Vector3.new(1,1,1) 
prt10.Position = Torso.Position 
local prt11 = Instance.new("Part") 
prt11.formFactor = 1 
prt11.Parent = pack 
prt11.CanCollide = false 
prt11.BrickColor = br(col[1])
prt11.Name = "Part11" 
prt11.Size = Vector3.new(1,1,1) 
prt11.Position = Torso.Position 
local prt12 = Instance.new("Part") 
prt12.formFactor = 1 
prt12.Parent = pack 
prt12.CanCollide = false 
prt12.BrickColor = br(col[1])
prt12.Name = "Part12" 
prt12.Size = Vector3.new(1,1,1) 
prt12.Position = Torso.Position 

local msh1 = Instance.new("BlockMesh")
msh1.Parent = prt1
--msh1.Scale = Vector3.new(0.9,0.8,3)
msh1.Scale = Vector3.new(Prop.LegWide/0.9,Prop.LegWide/1,Prop.LegLength/1.3)
local msh2 = Instance.new("BlockMesh")
msh2.Parent = prt2
--msh2.Scale = Vector3.new(0.3,2.5,1)
msh2.Scale = Vector3.new(Prop.LegWide/2.5,Prop.LegLength/1.6,Prop.LegWide*1.3)
local msh3 = Instance.new("BlockMesh")
msh3.Parent = prt3
--msh3.Scale = Vector3.new(0.1,2.6,1.5)
msh3.Scale = Vector3.new(Prop.LegWide/6,Prop.LegLength/1.6,Prop.LegWide*1.9)
local msh4 = Instance.new("SpecialMesh")
msh4.Parent = prt4
msh4.MeshType = "Wedge"
--msh4.Scale = Vector3.new(0.3,2,1)
msh4.Scale = Vector3.new(Prop.LegWide/2.5,Prop.LegLength/2,Prop.LegWide*1.3)
local msh5 = Instance.new("CylinderMesh")
msh5.Parent = prt5
--msh5.Scale = Vector3.new(1.5,1,1.5)
msh5.Scale = Vector3.new(Prop.LegWide*2,Prop.LegLength/4,Prop.LegWide*2)
local msh6 = Instance.new("CylinderMesh")
msh6.Parent = prt6
--msh6.Scale = Vector3.new(2.5,1.6,2.5)
msh6.Scale = Vector3.new(Prop.LegWide*3.1,Prop.LegLength/2.5,Prop.LegWide*3.1)
local msh7 = Instance.new("CylinderMesh")
msh7.Parent = prt7
--msh7.Scale = Vector3.new(1.4,1.7,1.4)
msh7.Scale = Vector3.new(Prop.LegWide*1.8,Prop.LegLength/2.3,Prop.LegWide*1.8)
local msh8 = Instance.new("BlockMesh")
msh8.Parent = prt8
--msh8.Scale = Vector3.new(0.5,2,0.5)
msh8.Scale = Vector3.new(Prop.LegWide/1.6,Prop.LegLength/2,Prop.LegWide/1.6)
local msh9 = Instance.new("BlockMesh")
msh9.Parent = prt9
--msh9.Scale = Vector3.new(0.5,2,0.5)
msh9.Scale = Vector3.new(Prop.LegWide/1.6,Prop.LegLength/2,Prop.LegWide/1.6)
local msh10 = Instance.new("BlockMesh")
msh10.Parent = prt10
--msh10.Scale = Vector3.new(0.5,2,0.5)
msh10.Scale = Vector3.new(Prop.LegWide/1.6,Prop.LegLength/2,Prop.LegWide/1.6)
local msh11 = Instance.new("BlockMesh")
msh11.Parent = prt11
--msh11.Scale = Vector3.new(0.5,2,0.5)
msh11.Scale = Vector3.new(Prop.LegWide/1.6,Prop.LegLength/2,Prop.LegWide/1.6)
local msh12 = Instance.new("BlockMesh")
msh12.Parent = prt12
--msh12.Scale = Vector3.new(0.5,2,0.5)
msh12.Scale = Vector3.new(0,0,0)

local wld1 = Instance.new("Weld")
wld1.Parent = prt1
wld1.Part0 = prt1
wld1.Part1 = Spider.RAa2
--wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.5,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-Prop.LegLength/6,0) 
local wld2 = Instance.new("Weld")
wld2.Parent = prt2
wld2.Part0 = prt2
wld2.Part1 = prt1
--wld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-3,0) 
wld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-Prop.LegLength/1.3,0) 
local wld3 = Instance.new("Weld")
wld3.Parent = prt3
wld3.Part0 = prt3
wld3.Part1 = prt1
--wld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-3,0) 
wld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-Prop.LegLength/1.3,0) 
local wld4 = Instance.new("Weld")
wld4.Parent = prt4
wld4.Part0 = prt4
wld4.Part1 = prt2
wld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-4.2,0) 
wld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-Prop.LegLength/1.1,0) 
local wld5 = Instance.new("Weld")
wld5.Parent = prt5
wld5.Part0 = prt5
wld5.Part1 = Spider.LAa2
--wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-2.5,0) 
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-Prop.LegLength/1.6,0) 
local wld6 = Instance.new("Weld")
wld6.Parent = prt6
wld6.Part0 = prt6
wld6.Part1 = prt5
--wld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.5,0) 
wld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-Prop.LegLength/2.6,0) 
local wld7 = Instance.new("Weld")
wld7.Parent = prt7
wld7.Part0 = prt7
wld7.Part1 = prt6
wld7.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld8 = Instance.new("Weld")
wld8.Parent = prt8
wld8.Part0 = prt8
wld8.Part1 = prt6
--wld8.C0 = CFrame.fromEulerAnglesXYZ(0,0,-0.5) * CFrame.new(1.5,-1,0) 
wld8.C0 = CFrame.fromEulerAnglesXYZ(0,0,-0.5) * CFrame.new(Prop.LegWide*2,-Prop.LegLength/4,0) 
local wld9 = Instance.new("Weld")
wld9.Parent = prt9
wld9.Part0 = prt9
wld9.Part1 = prt6
--wld9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0.5) * CFrame.new(-1.5,-1,0) 
wld9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0.5) * CFrame.new(-Prop.LegWide*2,-Prop.LegLength/4,0) 
local wld10 = Instance.new("Weld")
wld10.Parent = prt10
wld10.Part0 = prt10
wld10.Part1 = prt6
--wld10.C0 = CFrame.fromEulerAnglesXYZ(-0.5,0,0) * CFrame.new(0,-1,-1.5) 
wld10.C0 = CFrame.fromEulerAnglesXYZ(-0.5,0,0) * CFrame.new(0,-Prop.LegLength/4,-Prop.LegWide*2) 
local wld11 = Instance.new("Weld")
wld11.Parent = prt11
wld11.Part0 = prt11
wld11.Part1 = prt6
--wld11.C0 = CFrame.fromEulerAnglesXYZ(0.5,0,0) * CFrame.new(0,-1,1.5) 
wld11.C0 = CFrame.fromEulerAnglesXYZ(0.5,0,0) * CFrame.new(0,-Prop.LegLength/4,Prop.LegWide*2) 
local wld12 = Instance.new("Weld")
wld12.Parent = prt12
wld12.Part0 = prt12
wld12.Part1 = prt6
--wld12.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,0,0) 
wld12.C0 = CFrame.fromEulerAnglesXYZ(-1.57,0,0) * CFrame.new(0,0,0) 

wait()
Spider.w.Back = weld(Spider.Back,Torso,Spider.Back,0,0,0.5,0,0,0)
wait()
Torso.CFrame = Torso.CFrame + Vector3.new(0,10,0)

function Anim()
attack=true
for i=0,1,0.1 do
wait()
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120-(120*i)),math.rad(70-(70*i)),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100+(10*i)),math.rad(40+(50*i)),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120-(120*i)),math.rad(-70+(70*i)),0)
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100+(10*i)),math.rad(-40-(50*i)),0)
end
bodypos=Instance.new("BodyPosition")
bodypos.P=500
bodypos.D=100
bodypos.maxForce=Vector3.new(0,math.huge,0)
bodypos.position=Head.Position+Vector3.new(0,50,0)
bodypos.Parent=Head
while roflcopter==true do
for i = 0,1,0.1 do
wait()
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120-(120)),math.rad(70-(70)),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100+(10)),math.rad(90+(360*i)),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120-(120)),math.rad(-70+(70)),0)
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100+(10)),math.rad(-90+(360*i)),0)
end
end
bodypos.Parent=nil
for i=0,1,0.1 do
wait()
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120-(120-120*i)),math.rad(70-(70-70*i)),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100+(10-10*i)),math.rad(90-(50*i)),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120-(120-120*i)),math.rad(-70+(70-70*i)),0)
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100+(10-10*i)),math.rad(-90+(50*i)),0)
end
attack=false
end

function RoflCopter()
act.Jumping=true
for i=0,1,0.1 do
wait()
Spider.w.LRb1.C1 = CFrame.Angles(math.rad(-80),math.rad(-40),0)
Spider.w.LRb2.C1 = CFrame.Angles(math.rad(-100+80*i),math.rad(0),0)
Spider.w.ULb1.C1 = CFrame.Angles(math.rad(80),math.rad(-40),0)
Spider.w.ULb2.C1 = CFrame.Angles(math.rad(100-80*i),math.rad(0),0)
Spider.w.LLb1.C1 = CFrame.Angles(math.rad(-80),math.rad(40),0)
Spider.w.LLb2.C1 = CFrame.Angles(math.rad(-100+80*i),math.rad(0),0)
Spider.w.URb1.C1 = CFrame.Angles(math.rad(80),math.rad(40),0)
Spider.w.URb2.C1 = CFrame.Angles(math.rad(100-80*i),math.rad(0),0)
end
bodypos.P=500
bodypos.D=100
bodypos.maxForce=Vector3.new(0,math.huge,0)
bodypos.position=Head.Position+Vector3.new(0,10,0)
bodypos.Parent=Head
while roflcopter==true do
derpcon1=Spider.LRa2.Touched:connect(function(hit) Damagefunc1(hit,Prop.LegLength,5) end) 
derpcon2=Spider.LLa2.Touched:connect(function(hit) Damagefunc1(hit,Prop.LegLength,5) end) 
derpcon3=Spider.URa2.Touched:connect(function(hit) Damagefunc1(hit,Prop.LegLength,5) end) 
derpcon4=Spider.ULa2.Touched:connect(function(hit) Damagefunc1(hit,Prop.LegLength,5) end) 
for i=0,1,0.1 do
wait()
Spider.w.LRb1.C1 = CFrame.Angles(math.rad(-80),math.rad(-40+360*i),0)
Spider.w.LRb2.C1 = CFrame.Angles(math.rad(-100+80),math.rad(0),0)
Spider.w.ULb1.C1 = CFrame.Angles(math.rad(80),math.rad(-40+360*i),0)
Spider.w.ULb2.C1 = CFrame.Angles(math.rad(100-80),math.rad(0),0)
Spider.w.LLb1.C1 = CFrame.Angles(math.rad(-80),math.rad(40+360*i),0)
Spider.w.LLb2.C1 = CFrame.Angles(math.rad(-100+80),math.rad(0),0)
Spider.w.URb1.C1 = CFrame.Angles(math.rad(80),math.rad(40+360*i),0)
Spider.w.URb2.C1 = CFrame.Angles(math.rad(100-80),math.rad(0),0)
end
derpcon1:disconnect()
derpcon2:disconnect()
derpcon3:disconnect()
derpcon4:disconnect()
end
bodypos.Parent=nil
for i=0,1,0.1 do
wait()
Spider.w.LRb1.C1 = CFrame.Angles(math.rad(-80),math.rad(-40),0)
Spider.w.LRb2.C1 = CFrame.Angles(math.rad(-100+80-80*i),math.rad(0),0)
Spider.w.ULb1.C1 = CFrame.Angles(math.rad(80),math.rad(-40),0)
Spider.w.ULb2.C1 = CFrame.Angles(math.rad(100-80+80*i),math.rad(0),0)
Spider.w.LLb1.C1 = CFrame.Angles(math.rad(-80),math.rad(40),0)
Spider.w.LLb2.C1 = CFrame.Angles(math.rad(-100+80-80*i),math.rad(0),0)
Spider.w.URb1.C1 = CFrame.Angles(math.rad(80),math.rad(40),0)
Spider.w.URb2.C1 = CFrame.Angles(math.rad(100-80+80*i),math.rad(0),0)
end
act.Jumping=false
end

function Shoot()
attack=true
for i=0,1,0.1 do
wait()
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120),math.rad(70),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(40),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120-50*i),math.rad(-70),0)
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100+20*i),math.rad(-40+40*i),0)
end
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,1.57*i)
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120),math.rad(70),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(40),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120-50+20*i),math.rad(-70-20*i),0)
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100+20+80*i),math.rad(-40+40),0)
end
wait(0.1)
for i = 1,3 do
DerpMagic(prt7,Prop.LegWide*4,Prop.LegWide*4,Prop.LegWide*4,0,1,0,BrickColor.new("Black")) 
shoottrail2(prt7) 
wait(0.5)
end
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,1.57-1.57*i)
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120),math.rad(70),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(40),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120-50+20+30*i),math.rad(-70-20+20*i),0)
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100+20+80-100*i),math.rad(-40+40-40*i),0)
end
gairo.Parent=nil
Torso.Neck.C0=necko
attack=false
end

function Shoot2()
attack=true
for i=0,1,0.1 do
wait()
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120),math.rad(70),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(40),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120-60*i),math.rad(-70),0)
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100+15*i),math.rad(-40-60*i),0)
end
for i=0,0.3,0.1 do
wait(0.1)
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120),math.rad(70),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(40),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120-60),math.rad(-70),0)
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100+15+40*i),math.rad(-40-60),0)
DerpMagic(prt7,Prop.LegWide*4,Prop.LegWide*4,Prop.LegWide*4,0,1,0,BrickColor.new("Black")) 
shoottrail2(prt7) 
end
for i=0,1,0.1 do
wait() 
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120),math.rad(70),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(40),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120-60+60*i),math.rad(-70),0)
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100+15+20-55*i),math.rad(-40-60+60*i),0)
end
attack=false
end

function Shoot3()
attack=true
for i=0,1,0.1 do
wait()
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120),math.rad(70),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(40),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120-50*i),math.rad(-70+70*i),math.rad(90*i))
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100+60*i),math.rad(-40+40*i),math.rad(3*i))
end
for i=0,1,0.1 do
wait()
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120),math.rad(70),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(40),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120-50+60*i),math.rad(-70+70),math.rad(90))
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100+60+40*i),math.rad(-40+40),math.rad(3))
DerpMagic(prt7,Prop.LegWide*4,Prop.LegWide*4,Prop.LegWide*4,0,1,0,BrickColor.new("Black")) 
shoottrail2(prt7) 
end
for i=0,1,0.1 do
wait()
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120),math.rad(70),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(40),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120-50+60-10*i),math.rad(-70+70-70*i),math.rad(90-90*i))
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100+60+40-100*i),math.rad(-40+40-40*i),math.rad(3-3*i))
end
attack=false
end

function Shoot4()
attack=true
for i=0,1,0.1 do
wait()
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120),math.rad(70),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(40),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120+60*i),math.rad(-70+70*i),math.rad(0))
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100+50*i),math.rad(-40+40*i),math.rad(0))
end
for i=0,1,0.1 do
wait()
DerpMagic(prt7,Prop.LegWide*4,Prop.LegWide*4,Prop.LegWide*4,0,1,0,BrickColor.new("Black")) 
shoottrail2(prt7) 
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120),math.rad(70),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(40),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120+60),math.rad(-70+70),math.rad(0))
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100+50+50*i),math.rad(-40+40),math.rad(0))
end
for i=0,1,0.1 do
wait()
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120),math.rad(70),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(40),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120+60-60*i),math.rad(-70+70-70*i),math.rad(0))
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100+50+50-100*i),math.rad(-40+40-40*i),math.rad(0))
end
attack=false
end

function Attack()
attack=true
for i=0,1,0.1 do
wait()
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120-80*i),math.rad(70-70*i),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(40-40*i),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120),math.rad(-70),0)
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(-40),0)
end
ss(1) 
con1=prt2.Touched:connect(function(hit) slashdamage1(hit,Prop.LegLength*3,20) end) 
con2=Spider.RAa2.Touched:connect(function(hit) slashdamage1(hit,Prop.LegLength*3,20) end) 
for i=0,1,0.2 do
wait()
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120-80+90*i),math.rad(70-70),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100+70*i),math.rad(40-40),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120),math.rad(-70),0)
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(-40),0)
end
wait(0.1) 
con1:disconnect()
con2:disconnect()
for i=0,1,0.1 do
wait()
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120+10-10*i),math.rad(70-70+70*i),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100+70-70*i),math.rad(40-40+40*i),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120),math.rad(-70),0)
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(-40),0)
end
attack=false
end

function MegaBonk()
attack=true
for i=0,1,0.1 do
wait()
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120-80*i),math.rad(70-70*i),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(40-40*i),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120),math.rad(-70),0)
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(-40),0)
end
wait(0.1) 
for i=0,1,0.02 do
wait()
MMMAGIC(prt4,Prop.BallSize*2,Prop.BallSize*2,Prop.BallSize*2,0,Prop.LegLength/2,0,BrickColor.new("Really black")) 
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120-80-30*i),math.rad(70-70),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100-30*i),math.rad(40-40),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120),math.rad(-70),0)
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(-40),0)
end
ss(1.3)
con1=prt2.Touched:connect(function(hit) Damagefunc2(hit,Prop.LegLength*10,100) end) 
con2=Spider.RAa2.Touched:connect(function(hit) Damagefunc2(hit,Prop.LegLength*10,100) end) 
for i=0,1,0.2 do
wait()
MMMAGIC(prt4,Prop.BallSize*2,Prop.BallSize*2,Prop.BallSize*2,0,Prop.LegLength/2,0,BrickColor.new("Really black")) 
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120-80-30+110*i),math.rad(70-70),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100-30+120*i),math.rad(40-40),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120),math.rad(-70),0)
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(-40),0)
end
MMMAGIC(prt4,Prop.BallSize*4,Prop.BallSize*4,Prop.BallSize*4,0,Prop.LegLength/2,0,BrickColor.new("Really black")) 
wait(0.5) 
con1:disconnect()
con2:disconnect()
for i=0,1,0.1 do
wait()
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120-110+110),math.rad(70-70+70*i),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100-30+120-100*i),math.rad(40-40+40*i),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120),math.rad(-70),0)
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(-40),0)
end
attack=false
end

function DualAttack()
attack=true
for i=0,1,0.1 do
wait()
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120-30*i),math.rad(70-90*i),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(40+40*i),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120),math.rad(-70),0)
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(-40),0)
end
ss(1)
con1=prt2.Touched:connect(function(hit) slashdamage1(hit,Prop.LegLength*3,20) end) 
con2=Spider.RAa2.Touched:connect(function(hit) slashdamage1(hit,Prop.LegLength*3,20) end) 
for i=0,1,0.2 do
wait()
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120-30),math.rad(70-90+100*i),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100+50*i),math.rad(40+40),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120),math.rad(-70),0)
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(-40),0)
end
con1:disconnect()
con2:disconnect()
for i=0,1,0.1 do
wait()
Spider.w.RAb1.C1 = CFrame.Angles(math.rad(120-30+30*i),math.rad(70-90+100-10*i),0)
Spider.w.RAb2.C1 = CFrame.Angles(math.rad(-100+50-50*i),math.rad(40+40-40*i),0)
Spider.w.LAb1.C1 = CFrame.Angles(math.rad(120),math.rad(-70),0)
Spider.w.LAb2.C1 = CFrame.Angles(math.rad(-100),math.rad(-40),0)
end
attack=false
end

function Stomp()
attack=true
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Player.Character.Torso
vel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel2.velocity = Vector3.new(0,1,0) * 20 
wait(0.05)
vel2.Parent=nil
act.Jumping=true
Char.Humanoid.WalkSpeed=0
for i=0,1,0.1 do 
wait()
Spider.w.LRb1.C1 = CFrame.Angles(math.rad(-80-50*i),math.rad(-40),0)
Spider.w.LRb2.C1 = CFrame.Angles(math.rad(-100+50*i),math.rad(0),0)
Spider.w.ULb1.C1 = CFrame.Angles(math.rad(80),math.rad(-40),0)
Spider.w.ULb2.C1 = CFrame.Angles(math.rad(100),math.rad(0),0)
Spider.w.LLb1.C1 = CFrame.Angles(math.rad(-80-50*i),math.rad(40),0)
Spider.w.LLb2.C1 = CFrame.Angles(math.rad(-100+50*i),math.rad(0),0)
Spider.w.URb1.C1 = CFrame.Angles(math.rad(80),math.rad(40),0)
Spider.w.URb2.C1 = CFrame.Angles(math.rad(100),math.rad(0),0)
end
for i=0,1,0.1 do 
wait()
Spider.w.LRb1.C1 = CFrame.Angles(math.rad(-80-50),math.rad(-40),0)
Spider.w.LRb2.C1 = CFrame.Angles(math.rad(-100+50),math.rad(0),0)
Spider.w.ULb1.C1 = CFrame.Angles(math.rad(80-50*i),math.rad(-40+40*i),0)
Spider.w.ULb2.C1 = CFrame.Angles(math.rad(100-30*i),math.rad(0),0)
Spider.w.LLb1.C1 = CFrame.Angles(math.rad(-80-50),math.rad(40),0)
Spider.w.LLb2.C1 = CFrame.Angles(math.rad(-100+50),math.rad(0),0)
Spider.w.URb1.C1 = CFrame.Angles(math.rad(80-50*i),math.rad(40-40*i),0)
Spider.w.URb2.C1 = CFrame.Angles(math.rad(100-30*i),math.rad(0),0)
end
ss(0.9)
con1=Spider.URa1.Touched:connect(function(hit) DBHit(hit,50,Prop.LegLength*2) end) 
con2=Spider.URa2.Touched:connect(function(hit) DBHit(hit,50,Prop.LegLength*2) end) 
for i=0,1,0.2 do 
wait()
Spider.w.LRb1.C1 = CFrame.Angles(math.rad(-80-50+50*i),math.rad(-40),0)
Spider.w.LRb2.C1 = CFrame.Angles(math.rad(-100+50-50*i),math.rad(0),0)
Spider.w.ULb1.C1 = CFrame.Angles(math.rad(80-50+50*i),math.rad(-40+40),0)
Spider.w.ULb2.C1 = CFrame.Angles(math.rad(100-30+30*i),math.rad(0),0)
Spider.w.LLb1.C1 = CFrame.Angles(math.rad(-80-50+50*i),math.rad(40),0)
Spider.w.LLb2.C1 = CFrame.Angles(math.rad(-100+50-50*i),math.rad(0),0)
Spider.w.URb1.C1 = CFrame.Angles(math.rad(80-50+50*i),math.rad(40-40),0)
Spider.w.URb2.C1 = CFrame.Angles(math.rad(100-30+30*i),math.rad(0),0)
end
wait(0.1) 
con1:disconnect()
con2:disconnect()
for i=0,1,0.1 do 
wait()
Spider.w.LRb1.C1 = CFrame.Angles(math.rad(-80-50+50),math.rad(-40),0)
Spider.w.LRb2.C1 = CFrame.Angles(math.rad(-100+50-50),math.rad(0),0)
Spider.w.ULb1.C1 = CFrame.Angles(math.rad(80-50+50),math.rad(-40+40-40*i),0)
Spider.w.ULb2.C1 = CFrame.Angles(math.rad(100-30+30),math.rad(0),0)
Spider.w.LLb1.C1 = CFrame.Angles(math.rad(-80-50+50),math.rad(40),0)
Spider.w.LLb2.C1 = CFrame.Angles(math.rad(-100+50-50),math.rad(0),0)
Spider.w.URb1.C1 = CFrame.Angles(math.rad(80-50+50),math.rad(40-40+40*i),0)
Spider.w.URb2.C1 = CFrame.Angles(math.rad(100-30+30),math.rad(0),0)
end
Char.Humanoid.WalkSpeed=walksped
act.Jumping=false
attack=false
end

function Jump()
attack=true
act.Jumping=true
for i=0,1,0.1 do 
wait()
Spider.w.LRb1.C1 = CFrame.Angles(math.rad(-80+50*i),math.rad(-40),0)
Spider.w.LRb2.C1 = CFrame.Angles(math.rad(-100-50*i),math.rad(0),0)
Spider.w.ULb1.C1 = CFrame.Angles(math.rad(80-50*i),math.rad(-40),0)
Spider.w.ULb2.C1 = CFrame.Angles(math.rad(100+50*i),math.rad(0),0)
Spider.w.LLb1.C1 = CFrame.Angles(math.rad(-80+50*i),math.rad(40),0)
Spider.w.LLb2.C1 = CFrame.Angles(math.rad(-100-50*i),math.rad(0),0)
Spider.w.URb1.C1 = CFrame.Angles(math.rad(80-50*i),math.rad(40),0)
Spider.w.URb2.C1 = CFrame.Angles(math.rad(100+50*i),math.rad(0),0)
end
for i=0,1,0.2 do 
wait()
Spider.w.LRb1.C1 = CFrame.Angles(math.rad(-80+50-100*i),math.rad(-40),0)
Spider.w.LRb2.C1 = CFrame.Angles(math.rad(-100-50+100*i),math.rad(0),0)
Spider.w.ULb1.C1 = CFrame.Angles(math.rad(80-50+100*i),math.rad(-40),0)
Spider.w.ULb2.C1 = CFrame.Angles(math.rad(100+50-100*i),math.rad(0),0)
Spider.w.LLb1.C1 = CFrame.Angles(math.rad(-80+50-100*i),math.rad(40),0)
Spider.w.LLb2.C1 = CFrame.Angles(math.rad(-100-50+100*i),math.rad(0),0)
Spider.w.URb1.C1 = CFrame.Angles(math.rad(80-50+100*i),math.rad(40),0)
Spider.w.URb2.C1 = CFrame.Angles(math.rad(100+50-100*i),math.rad(0),0)
end
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Player.Character.Torso
vel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel2.velocity = Vector3.new(0,1,0) * 100 
wait(0.1)
vel2.Parent=nil
for i=0,1,0.1 do 
wait()
Spider.w.LRb1.C1 = CFrame.Angles(math.rad(-80+50-100+50*i),math.rad(-40),0)
Spider.w.LRb2.C1 = CFrame.Angles(math.rad(-100-50+100-50*i),math.rad(0),0)
Spider.w.ULb1.C1 = CFrame.Angles(math.rad(80-50+100-50*i),math.rad(-40),0)
Spider.w.ULb2.C1 = CFrame.Angles(math.rad(100+50-100+50*i),math.rad(0),0)
Spider.w.LLb1.C1 = CFrame.Angles(math.rad(-80+50-100+50*i),math.rad(40),0)
Spider.w.LLb2.C1 = CFrame.Angles(math.rad(-100-50+100-50*i),math.rad(0),0)
Spider.w.URb1.C1 = CFrame.Angles(math.rad(80-50+100-50*i),math.rad(40),0)
Spider.w.URb2.C1 = CFrame.Angles(math.rad(100+50-100+50*i),math.rad(0),0)
end
act.Jumping=false
attack=false
end

function shoottrail2(pos1) 
coroutine.resume(coroutine.create(function()
spread2 = 0 
range2 = Prop.LegLength*150
rangepower = Prop.LegLength*1.5
local spreadvector = (Vector3.new(math.random(-spread2,spread2),math.random(-spread2,spread2),math.random(-spread2,spread2)) / 100) * (pos1.Position).magnitude/100
--local dir = Head.CFrame.lookVector+spreadvector 
local dir = prt12.CFrame.lookVector+spreadvector
local hit2,pos = rayCast(pos1.Position,dir,10,pack)
local rangepos = range2
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
effectsg.Size = Vector3.new(Prop.LegLength/4,Prop.LegLength/5,Prop.LegLength/4)
effectsg.Parent = pack
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Really black") 
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(1,mg*5,1)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.2 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(1-1*i,mg*5,1-1*i)
end 
effectsg.Parent = nil 
end))
end
local newpos = pos1.Position
local inc = rangepower
repeat
wait() 
rangepos = rangepos - 10
dir = dir 
hit2,pos = rayCast(newpos,dir,inc,pack)
drawtrail(newpos,pos)
newpos = newpos + (dir * inc)
if alt==1 then 
inc = 10 
if inc >= 20 then
inc = inc - 10
end
end 
if hit2 ~= nil then
rangepos = 0
end
until rangepos <= 0
if hit2 ~= nil then
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
--effectsmsh.Scale = Vector3.new(1,1,2.5)
effectsmsh.Scale = Vector3.new(3,3,3)
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Arrow"
effectsg.Locked = true
effectsg.Transparency = 1 
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = pack 
effectsg.BrickColor = BrickColor.new("Really black") 
effectsmsh.Parent = effectsg
effectsg.CFrame = CFrame.new(newpos,pos) + CFrame.new(newpos,pos).lookVector*2.5*2
local efwel = Instance.new("Weld") 
efwel.Parent = effectsg 
efwel.Part0 = effectsg 
efwel.Part1 = hit2 
efwel.Parent = nil 
effectsg.Anchored = true 
local HitPos = effectsg.Position + CFrame.new(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + CFrame.new(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + (prt1.CFrame.lookVector * .5) 
local CJ = CFrame.new(HitPos) 
local C0 = effectsg.CFrame:inverse() * CJ
local C1 = hit2.CFrame:inverse() * CJ 
--efwel.C0 = C0
--efwel.C1 = C1
--efwel.Parent = effectsg 
Damg = Prop.LegLength*5
coroutine.resume(coroutine.create(function()
boomsound(1) 
coroutine.resume(coroutine.create(function()
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - effectsg.Position;
local mag = targ.magnitude;
if mag <= Prop.LegLength*3 then 
wait() 
DBHit(head,effectsg,Prop.LegLength) 
end 
end 
end 
end
end)) 
EVENMOARMAGIX(effectsg,Prop.LegLength*3,Prop.LegLength*2,Prop.LegLength*3,0,0,0,0,0,0,BrickColor.new("Black")) 
for i = 0,5 do 
wait() 
MMMAGIC(effectsg,Prop.LegLength*3,Prop.LegLength*2,Prop.LegLength*3,0,0,0,BrickColor.new("Black")) 
end 
end))
coroutine.resume(coroutine.create(function()
wait(3)
effectsg.Parent = nil
end))
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
attackdebounce = false 
Damagefunc1(hit2,Damg,50)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
attackdebounce = false 
Damagefunc1(hit2,Damg,50)
end
end
end))
end

function rayCast(Pos, Dir, Max, Ignore) -- Origin Position , Direction, MaxDistance , Ignore Descendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
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
S.Parent=pack
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
S.Parent=pack
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
p2.Parent=pack
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
S.Reflectance = 0
S.TopSurface=0
S.BottomSurface=0
S.Transparency=0
S.Anchored=true
S.CanCollide=false
S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
S.Parent=pack
msh1.Parent = S
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.15,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
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
S.Parent=pack
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
S.Parent=pack
msh1.Parent = S
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.15,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function DerpMagic(part,x1,y1,z1,x2,y2,z2,color) 
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
S.Parent=pack
msh1.Parent = S
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
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
function equipsound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\unsheath.wav" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
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
function spikesound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=3264793" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function boomsound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset?id=2101148" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function lasersound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds/Launching rocket.wav" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function omnomnom(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=12544690" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function boomsound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset?id=2101148" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
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
S.Parent=workspace
msh1.Parent = S
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

attackdebounce = false
Damagefunc1=function(hit,Damage,Knockback)
if hit.Parent==nil then
return
end
CPlayer=Bin 
h=hit.Parent:FindFirstChild("Humanoid")
if h~=nil and hit.Parent.Name~=Char.Name and hit.Parent:FindFirstChild("Torso")~=nil then
if attackdebounce == false then 
critsound(2) 
attackdebounce = true 
coroutine.resume(coroutine.create(function() 
wait(0.1) 
attackdebounce = false 
end)) 
Damage=Damage
--[[ if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
return
end]]
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=game.Players.LocalPlayer
c.Parent=h
game:GetService("Debris"):AddItem(c,.5)
-- print(c.Value)
if math.random(0,99)+math.random()<=5 then
CRIT=true
Damage=Damage*150
--[[ Knockback=Knockback*2
r=Instance.new("BodyAngularVelocity")
r.P=3000
r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
r.Parent=hit.Parent.Torso]]
--critsound(2) 

end
Damage=Damage+math.random(50,100)
-- Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/20))
h:TakeDamage(Damage)
showDamage(hit.Parent,Damage,50)
vp=Instance.new("BodyVelocity")
vp.P=500
vp.maxForce=Vector3.new(math.huge,0,math.huge)
-- vp.velocity=Character.Torso.CFrame.lookVector*Knockback
vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
if Knockback>0 then
vp.Parent=hit.Parent.Torso
end
game:GetService("Debris"):AddItem(vp,.25)
--[[ r=Instance.new("BodyAngularVelocity")
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
if hit.Parent==nil then
return
end
CPlayer=Bin 
h=hit.Parent:FindFirstChild("Humanoid")
if h~=nil and hit.Parent.Name~=Char.Name and hit.Parent:FindFirstChild("Torso")~=nil then
if attackdebounce == false then 
critsound(1) 
attackdebounce = true 
coroutine.resume(coroutine.create(function() 
wait(0.1) 
attackdebounce = false 
end)) 
Damage=Damage
--[[ if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
return
end]]
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=game.Players.LocalPlayer
c.Parent=h
game:GetService("Debris"):AddItem(c,.5)
-- print(c.Value)
if math.random(0,99)+math.random()<=5 then
CRIT=true
Damage=Damage*100
--[[ Knockback=Knockback*2
r=Instance.new("BodyAngularVelocity")
r.P=3000
r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
r.Parent=hit.Parent.Torso]]
--critsound(2) 

end
Damage=Damage+math.random(50,100)
-- Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/20))
h:TakeDamage(Damage)
showDamage(hit.Parent,Damage,50)
vp=Instance.new("BodyVelocity")
vp.P=500
vp.maxForce=Vector3.new(math.huge,0,math.huge)
-- vp.velocity=Character.Torso.CFrame.lookVector*Knockback
vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(5000,5000,5000)*500000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=t
game:GetService("Debris"):AddItem(rl,.2)
vl=Instance.new("BodyVelocity")
vl.P=4500
vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,10,0)
vl.Parent=t
game:GetService("Debris"):AddItem(vl,.2)
if Knockback>0 then
vp.Parent=hit.Parent.Torso
end
game:GetService("Debris"):AddItem(vp,.25)
--[[ r=Instance.new("BodyAngularVelocity")
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

slashdamage1=function(hit,Damage,Knockback)
if hit.Parent==nil then
return
end
CPlayer=Bin 
h=hit.Parent:FindFirstChild("Humanoid")
if h~=nil and hit.Parent.Name~=Char.Name and hit.Parent:FindFirstChild("Torso")~=nil then
if attackdebounce == false then 
attackdebounce = true 
coroutine.resume(coroutine.create(function() 
wait(0.1) 
attackdebounce = false 
end)) 
Damage=Damage
--[[ if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
return
end]]
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=game.Players.LocalPlayer
c.Parent=h
game:GetService("Debris"):AddItem(c,.5)
-- print(c.Value)
if math.random(0,99)+math.random()<=5 then
Damage=Damage*50
--[[ Knockback=Knockback*2
r=Instance.new("BodyAngularVelocity")
r.P=3000
r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
r.Parent=hit.Parent.Torso]]
--critsound(2) 

end
Damage=Damage+math.random(65,90)
-- Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/20))
h:TakeDamage(Damage)
showDamage(hit.Parent,Damage,50)
vp=Instance.new("BodyVelocity")
vp.P=500
vp.maxForce=Vector3.new(math.huge,0,math.huge)
-- vp.velocity=Character.Torso.CFrame.lookVector*Knockback
vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
if Knockback>0 then
vp.Parent=hit.Parent.Torso
end
game:GetService("Debris"):AddItem(vp,.25)
--[[ r=Instance.new("BodyAngularVelocity")
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

DBHit=function(hit,DB,Dmg) --credits to turdulator for making this function :D
if hit.Parent==nil then
return
end
h=hit.Parent:FindFirstChild("Humanoid")
if h==nil then
h=hit.Parent.Parent:FindFirstChild("Humanoid")
end
t=hit.Parent:FindFirstChild("Torso")
if h~=nil and t~=nil then
--[[ if h.Parent==Character then
return
end]]
critsound(1.5) 
Damage=Dmg+math.random(20,100)
h:TakeDamage(Damage) 
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=game.Players.LocalPlayer
c.Parent=h
game:GetService("Debris"):AddItem(c,.5)
showDamage(hit.Parent,Damage,59) 
vl=Instance.new("BodyVelocity")
vl.P=4500
vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,10,0)
vl.Parent=t
game:GetService("Debris"):AddItem(vl,.2)
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(5000,5000,5000)*500000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=t
game:GetService("Debris"):AddItem(rl,.2)
else
if hit.CanCollide==false then
return
end
MagicCom:disconnect()
-- DBExplode(DB)
CRIT=false
end
end

showDamage=function(Char,Dealt,du)
m=Instance.new("Model")
m.Name=tostring(Dealt)
h=Instance.new("Humanoid")
h.Health=math.huge
h.MaxHealth=math.huge
h.Parent=m
c=Instance.new("Part")
c.Transparency=0
c.BrickColor=BrickColor:Red()
c.Name="Head"
c.TopSurface=0
c.BottomSurface=0
c.formFactor="Plate"
c.Size=Vector3.new(1,.4,1)
ms=Instance.new("CylinderMesh")
ms.Scale=Vector3.new(.8,.8,.8)
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

Anims.Walking = function()
derpcon1=Spider.LRa2.Touched:connect(function(hit) Damagefunc1(hit,Prop.LegLength,5) end) 
derpcon2=Spider.LLa2.Touched:connect(function(hit) Damagefunc1(hit,Prop.LegLength,5) end) 
derpcon3=Spider.URa2.Touched:connect(function(hit) Damagefunc1(hit,Prop.LegLength,5) end) 
derpcon4=Spider.ULa2.Touched:connect(function(hit) Damagefunc1(hit,Prop.LegLength,5) end) 
for i=0,1,difficulty do 
if act.Jumping ~= true then 
Spider.w.LRb1.C1 = CFrame.Angles(math.rad(-80+(20*i)),math.rad(-40-(40*i)),0)
Spider.w.LRb2.C1 = CFrame.Angles(math.rad(-100-(20*i)),math.rad(0),0)
Spider.w.ULb1.C1 = CFrame.Angles(math.rad(80-(20*i)),math.rad(-40-(40*i)),0)
Spider.w.ULb2.C1 = CFrame.Angles(math.rad(100+(20*i)),math.rad(0),0)
wait()
end 
end
coroutine.resume(coroutine.create(function()
for i=0,1,difficulty do 
if act.Jumping ~= true then 
Spider.w.LLb1.C1 = CFrame.Angles(math.rad(-80+(20*i)),math.rad(40+(40*i)),0)
Spider.w.LLb2.C1 = CFrame.Angles(math.rad(-100-(20*i)),math.rad(0),0)
Spider.w.URb1.C1 = CFrame.Angles(math.rad(80-(20*i)),math.rad(40+(40*i)),0)
Spider.w.URb2.C1 = CFrame.Angles(math.rad(100+(20*i)),math.rad(0),0)
wait()
end
end 
for i=1,0,-difficulty do 
if act.Jumping ~= true then 
Spider.w.LLb1.C1 = CFrame.Angles(math.rad(-80+(20*i)),math.rad(40+(40*i)),0)
Spider.w.LLb2.C1 = CFrame.Angles(math.rad(-100-(20*i)),math.rad(0),0)
Spider.w.URb1.C1 = CFrame.Angles(math.rad(80-(20*i)),math.rad(40+(40*i)),0)
Spider.w.URb2.C1 = CFrame.Angles(math.rad(100+(20*i)),math.rad(0),0)
wait()
end 
end 
end))
for i=1,0,-difficulty do 
if act.Jumping ~= true then 
Spider.w.LRb1.C1 = CFrame.Angles(math.rad(-80+(20*i)),math.rad(-40-(40*i)),0)
Spider.w.LRb2.C1 = CFrame.Angles(math.rad(-100-(20*i)),math.rad(0),0)
Spider.w.ULb1.C1 = CFrame.Angles(math.rad(80-(20*i)),math.rad(-40-(40*i)),0)
Spider.w.ULb2.C1 = CFrame.Angles(math.rad(100+(20*i)),math.rad(0),0)
wait()
end
end 
derpcon1:disconnect()
derpcon2:disconnect()
derpcon3:disconnect()
derpcon4:disconnect()
if act.Jumping ~= true then 
Spider.w.LRb1.C1 = CFrame.Angles(math.rad(-80),math.rad(-40),0)
Spider.w.LRb2.C1 = CFrame.Angles(math.rad(-100),math.rad(0),0)
Spider.w.ULb1.C1 = CFrame.Angles(math.rad(80),math.rad(-40),0)
Spider.w.ULb2.C1 = CFrame.Angles(math.rad(100),math.rad(0),0)
end
end 


--[[while true do 
wait()
if act.Walking == true then return end
if Torso.Velocity.magnitude >= 19 then 
act.Walking = true
Anims.Walking()
act.Walking = false 
end 
end ]]

t = it("HopperBin")
t.Name = "[Spider]"
t.Selected:connect(function(mouse)
Mouse = mouse

mouse.KeyDown:connect(function(k) act.keydown = true 
pcall(function() act.key[k:lower()] = true end)
local kk = k:lower()
if kk == "w" or kk == "a" or kk == "s" or kk == "d" then
if act.Walking == true then return end
while act.key["w"] == true or act.key["a"] == true or act.key["s"] == true or act.key["d"] == true do
act.Walking = true
Anims.Walking()
wait()
end
act.Walking = false 

end
if kk == "q" then 
if roflcopter==false then
roflcopter=true
RoflCopter()
elseif roflcopter==true then
roflcopter=false
end
--[[if roflcopter==false then
roflcopter=true
Anim()
elseif roflcopter==true then
roflcopter=false
end]]
end
if kk == "e" then 
bodypos.position=bodypos.position+Vector3.new(0,10,0)
end
if kk == "r" then 
bodypos.position=bodypos.position-Vector3.new(0,10,0)
end 
if attack == true then return end
if kk == "f" then 
Shoot()
end 
if kk == "g" then 
Shoot2()
end
if kk == "h" then
Shoot3()
end
if kk == "j" then
Shoot4()
end
if kk == "z" then 
Attack()
end
if kk == "x" then
DualAttack()
end
if kk == "c" then 
MegaBonk()
end 
if kk == "v" then
Stomp()
end
if kk == " " then
Jump()
end
end)

mouse.KeyUp:connect(function(k) act.keydown = false 
pcall(function() act.key[k:lower()] = false end)
end) 
end)

wait(0.1)
t.Parent = game.Players.LocalPlayer.Backpack

 

end}
module[2] = {"Spike",function()

local color = "Really black"
wt = 0.1 s = script it = Instance.new v3 = Vector3.new c3 = Color3.new ud = UDim2.new cf = CFrame.new ca = CFrame.Angles pi = math.pi rd = math.rad 
bc = BrickColor.new ab = math.abs de = math.deg ts = tostring tn = tonumber ti = table.insert tr = table.remove 
mf = math.floor cr = coroutine.resume cc = coroutine.create sf = string.find sb = string.sub rn = math.random 
asset = "http://www.roblox.com/asset/?id=" 
sr = string.reverse sl = string.lower su = string.upper 
Serv = {} Serv.p = game:GetService(sr("sreyalP")) Serv.l = game:GetService(sr("gnithgiL")) 
Serv.is = game:GetService(sr("ecivreStresnI")) if game:findFirstChild(sr("revreSkrowteN")) then Serv.ns = game:GetService(sr("revreSkrowteN")) else NetworkServer = nil end 
Serv.sg = game:GetService(sr("iuGretratS")) Serv.sp = game:GetService(sr("kcaPretratS")) Serv.d = game:GetService(sr("sirbeD")) 
Decs = {} 
Decs.Shine = "48965808" Decs.Crack = "49173398" Decs.Cloud = "1095708" Decs.Spike = "1033714" Decs.Rock = "1290033" Decs.Crown = "20329976" Decs.Crown2 = "1323306" 
function ft(tablez,item) if not tablez or not item then return nil end for i=1,#tablez do if tablez == item then return i end end return nil end 
function re(par,obj) if type(par) ~= "userdata" or type(obj) ~= "string" then return nil end if par:findFirstChild(obj) then par[obj]:Remove() end end 
function pa(pa,pn,sh,x,y,z,c,a,tr,re,bc2) local fp = nil if sh ~= "Wedge" and sh ~= "CornerWedge" then fp = it("Part",pa) fp.Shape = sh fp.formFactor = "Custom" elseif sh == "Wedge" then fp = it("WedgePart",pa) fp.formFactor = "Custom" 
elseif sh == "CornerWedge" then fp = it("CornerWedgePart",pa) end fp.Size = v3(x,y,z) fp.CanCollide = c fp.Anchored = false fp.BrickColor = bc(bc2) fp.Transparency = tr fp.Reflectance = re fp.BottomSurface = 0 fp.Name = pn --fp.FrontSurface = "Hinge" 
fp.TopSurface = 0 fp.Velocity = Vector3.new(0,10,0) fp:BreakJoints() return fp end 
function clearit(tab) for xx=1,#tab do tab[xx]:Remove() end end 
function weld(pa,p0,p1,x,y,z,a,b,c) local fw = it("Weld",pa) fw.Part0 = p0 fw.Part1 = p1 fw.C0 = cf(x,y,z) *ca(a,b,c) return fw end 
function spm(ty,pa,ss) local sp = it("SpecialMesh",pa) sp.MeshType = ty sp.Scale = Vector3.new(ss,ss,ss) end function mbm(pa,sx,sy,sz) local bm = Instance.new("BlockMesh",pa) bm.Scale = Vector3.new(sx,sy,sz) end 
function fd(pa,ob) if pa:findFirstChild(ob) then return pa[ob] else return nil end end 
function ccn(pa,cl) for i,v in pairs(pa:children()) do if sf(v.className:lower(),cl:lower()) then v:Remove() end end end 
function stick(hit2,hit) local weld = Instance.new("Weld") weld.Part0 = hit2 weld.Part1 = hit local HitPos = hit2.Position local CJ = CFrame.new(HitPos) 
local C0 = hit2.CFrame:inverse() *CJ local C1 = hit.CFrame:inverse() * CJ weld.C0 = C0 weld.C1 = C1 weld.Parent = hit2 end 
function stick2(hit2,hit,tostick) local weld = Instance.new("Weld") weld.Part0 = tostick weld.Part1 = hit2 local HitPos = hit.Position local CJ = CFrame.new(HitPos) local C0 = hit2.CFrame:inverse() *CJ local C1 = hit.CFrame:inverse() * CJ weld.C0 = C1 weld.C1 = C0 weld.Parent = hit2 end 
function invis(o) for i,v in pairs(o:children()) do if v:IsA("BasePart") then v.Transparency = 1 end invis(v) end end 
function newhats(p,o,o2) for i,v in pairs(p:children()) do if v:IsA("Hat") then local np = v.Handle:Clone() np.Transparency = 0 np.Mesh.Scale = np.Mesh.Scale*1.1 np.Parent = o np.CFrame = v.Handle.CFrame stick2(np,o2,o) end end end 
function ray(Pos, Dir) return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999), c) end 
function hasclass(prt,cls) clases = 0 for i,v in pairs(prt:children()) do if v.className:lower() == cls:lower() then clases = clases + 1 end end return clases end 
function fade(prt,incr) cr(cc(function() for i=prt.Transparency,1,incr do prt.Transparency = i wait() end prt:Remove() end)) end 
function rtab(tabz,obj) for i=1,#tabz do if tabz == obj then tr(tabz,i) break end end end 
function RandomPlayer(spiz) local torz = spis local torses = {} for i,v in pairs(Serv.p:children()) do if v ~= Serv.p.LocalPlayer and v.Character ~= nil and v.Character:findFirstChild("Torso") then ti(torses,v.Character.Torso) end end if #torses > 0 then torz = torses[rn(1,#torses)] end return torz end 
function Trail(ob,times,waitz,col,thickz,ofz) local oldpos = (ob.CFrame *ofz).p for i=1,times do local obp = (ob.CFrame *ofz).p local mag = (oldpos - obp).magnitude local tr = pa(ob,"trail","Block",0,0,0,false,false,0.5,0,col) tr.Anchored = true tr.CFrame = cf(oldpos,obp) tr.CFrame = tr.CFrame + tr.CFrame.lookVector* (mag/2) 
local trm = it("CylinderMesh",tr) trm.Scale = v3(5*thickz,mag*5,5*thickz) cr(cc(function() for i=5*thickz,0,-5*thickz/10 do trm.Scale = v3(i,mag*5,i) wait() end tr:Remove() end)) tr.CFrame = tr.CFrame *ca(rd(90),0,0) oldpos = obp wait(waitz) end end 
sTrail = {} 
function Trail2(ob,waitz,col,thickz,ofz) cr(cc(function() ti(sTrail,ob) 
local oldpos = (ob.CFrame *ofz).p 
repeat local obp = (ob.CFrame *ofz).p 
local mag = (oldpos - obp).magnitude 
local tr = pa(ob,"trail","Block",0,0,0,false,false,0.5,0,col) tr.Anchored = true 
tr.CFrame = cf(oldpos,obp) 
tr.CFrame = tr.CFrame + tr.CFrame.lookVector* (mag/2) 
local trm = it("CylinderMesh",tr) trm.Scale = v3(5*thickz,mag*5,5*thickz) 
cr(cc(function() for i=5*thickz,0,-5*thickz/10 do trm.Scale = v3(i,mag*5,i) wait() end tr:Remove() end)) 
tr.CFrame = tr.CFrame *ca(rd(90),0,0) oldpos = obp 
wait(waitz) until ft(sTrail,ob) == nil end)) 
end 
nocf = cf(0,0,0) noca = ca(0,0,0) 
repeat wait() until Serv.p.LocalPlayer.Character and Serv.p.LocalPlayer.Character:findFirstChild("Torso") 
pl = Serv.p.LocalPlayer 
bp = pl.Backpack 
pg = pl.PlayerGui 
c = pl.Character 
he = c.Head 
to = c.Torso ccn(to,"BodyPosition") ccn(to,"BodyGyro") 
hu = c.Humanoid hu.PlatformStand = false 
mou = nil 
Button = false 
Key = false 
Anim = {} 
Anim.ClickHold = 0 
Anim.c = true -- weapon change or act debounce 
Anim.a = "None" -- current weapon 
Anim.b = "None" -- weapon act 
bets = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," "} 
act = {key = {}} 
for i=1,#bets do table.insert(act.key,bets) end 
Sounds = { 
Boom = "16976189"; 
SniperFire = "1369158"; 
ShotgunFire2 = "1868836"; 
MinigunFire = "2692806"; 
MinigunCharge = "2692844"; 
MinigunDischarge = "1753007"; 
Flashbang = "16976189"; 
Beep = "15666462"; 
Smash = "2801263"; 
Punch = "31173820"; 
Slash = "rbxasset://sounds/swordslash.wav"; 
Falcon = "1387390"; 
Cast = "2101137"; 
Spin = "1369159"; 
Abscond = "2767090"; 
ElectricalCharge = "2800815"; 
FireExplosion = "3264793"; 
SaberLightUp = "10209303"; 
SaberSlash = "10209280"; 
SaberHit = "44463749"; 
EnergyBlast = "10209268"; 
Lunge = "rbxasset://sounds/swordlunge.wav"; 
Unsheath = "rbxasset://sounds/unsheath.wav"; 
} 
local SoundTest = asset .. Sounds.Spin 
local hd = he:Clone() 
Anim.BodyAnims = 0 
Anim.Welding = 0 function c1(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz) local xx2,yy2,zz2 = 0,0,0 local x2,y2,z2 = 0,0,0 if c0orc1 == 0 then
xx2,yy2,zz2 = wexx.C0:toEulerAnglesXYZ() x2,y2,z2 = wexx.C0.x,wexx.C0.y,wexx.C0.z elseif c0orc1 == 1 then xx2,yy2,zz2 = wexx.C1:toEulerAnglesXYZ() x2,y2,z2 = wexx.C1.x,wexx.C1.y,wexx.C1.z else xx2,yy2,zz2 = wexx.C1:toEulerAnglesXYZ() 
x2,y2,z2 = wexx.C0.x,wexx.C0.y,wexx.C0.z end Anim.Welding = Anim.Welding + 1 local twa = 1 for i=0,twa,smmx do if c0orc1 == 0 then wexx.C0 = cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) elseif c0orc1 == 1 then 
wexx.C1 = cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) else wexx.C0 = cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) 
wexx.C1 = ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))end wait() end local i = 1 if c0orc1 == 0 then wexx.C0 = cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) elseif c0orc1 == 1 then wexx.C1 = cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) 
else wexx.C0 = cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) wexx.C1 = ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) end Anim.Welding = Anim.Welding - 1 end 
to["Left Hip"].Part0 = to to["Right Hip"].Part0 = to to["Left Shoulder"].Part0 = to to["Right Shoulder"].Part0 = to 
if c:findFirstChild("Suit") then game:service'Debris':AddItem(c["Suit"],0.035) end 
m = it("Model",c) m.Name = "Suit" 
Misc = {} 
Misc["x"] = it("Model",m) 
invis(c) 
p = {} 
t = pa(m,"Torso","Block",0,0,0,false,false,0,0,ts(color)) tw = weld(t,to,t,0,0,0,0,0,0) 
la = pa(m,"Left Arm","Block",0,0,0,false,false,0,0,ts(color)) law = weld(la,t,la,-1.5,1,0,0,0,0) 
ra = pa(m,"Right Arm","Block",0,0,0,false,false,0,0,ts(color)) raw = weld(ra,t,ra,1.5,1,0,0,0,0) 
ll = pa(m,"Left Leg","Block",0,0,0,false,false,0,0,ts(color)) llw = weld(ll,t,ll,-0.5,-1,0,0,0,0) 
rl = pa(m,"Right Leg","Block",0,0,0,false,false,0,0,ts(color)) rlw = weld(rl,t,rl,0.5,-1,0,0,0,0) 
hd.Parent = m hd.Transparency = 0 hd.face.Face = "Front" hdw = weld(hd,t,hd,0,1.5,0,0,0,0) he.face.Face = "Bottom" 
local nbb = it("BlockMesh") nbb.Offset = v3(0,-1,0) nbb.Scale = v3(5,10,5) 
nbb:Clone().Parent = la nbb:Clone().Parent = ra nbb:Clone().Parent = ll nbb:Clone().Parent = rl 
nbb:Clone().Parent = t t.Mesh.Offset = v3(0,0,0) t.Mesh.Scale = Vector3.new(10,10,5) 
to["Left Hip"].Part0 = t to["Right Hip"].Part0 = t to["Left Shoulder"].Part0 = t to["Right Shoulder"].Part0 = t 
function Armz(ison) if ison then 
c["Left Arm"].Transparency = 0 c["Right Arm"].Transparency = 0 la.Transparency = 1 ra.Transparency = 1
law.Part0 = c["Left Arm"] law.C0 = cf(0,1,0) raw.Part0 = c["Right Arm"] raw.C0 = cf(0,1,0) 
else 
c["Left Arm"].Transparency = 1 c["Right Arm"].Transparency = 1 la.Transparency = 0 ra.Transparency = 0
law.Part0 = t law.C0 = cf(-1.5,1,0) raw.Part0 = t raw.C0 = cf(1.5,1,0) 
end end 
function Legz(ison) if ison then 
c["Left Leg"].Transparency = 0 c["Right Leg"].Transparency = 0 ll.Transparency = 1 rl.Transparency = 1
llw.Part0 = c["Left Leg"] llw.C0 = cf(0,1,0) rlw.Part0 = c["Right Leg"] rlw.C0 = cf(0,1,0) 
else 
c["Left Leg"].Transparency = 1 c["Right Leg"].Transparency = 1 ll.Transparency = 0 rl.Transparency = 0
llw.Part0 = t llw.C0 = cf(-0.5,-1,0) rlw.Part0 = t rlw.C0 = cf(0.5,-1,0) 
end end function Headz(ison) if ison then he.Transparency = 0 else he.Transparency = 1 end end 
Legz(true) Armz(true) newhats(c,hd,he) 
function Sound(sid,pit,vol) local ss = it("Sound") ss.Name = "Sound" ss.Parent = hd ss.SoundId = sid ss.Pitch = pit ss.Volume = vol/3 ss.PlayOnRemove = true wait() ss:Remove() end 
Healthz = 250 hu.MaxHealth = Healthz hu.Health = Healthz 
mp = 1250000 maxmp = 1250000 ns = 18 
function addmp(mpz) mp = mp + mpz if mp > maxmp then mp = maxmp end end 
function DmgHumanoidsNear(pos,dmg,rndmg,mag,forc) 
local function kidive(ob) 
for i,v in pairs(ob:children()) do 
if not v.Parent:IsA("Hat") and v:IsA("BasePart") and v.Parent.Name ~= "Suit" and v.Parent.Parent:findFirstChild("Humanoid") == nil and v.Parent.Parent.Name ~= "Suit" and v.Parent:findFirstChild("Humanoid") == nil and (v.Position - pos).magnitude < mag*1.3 and v.Anchored == false and v:GetMass() < 150 then 
v:BreakJoints() v.Velocity = cf(pos,v.Position).lookVector*forc 
end 
if v:IsA("Humanoid") and v ~= hu and v.Parent:findFirstChild("Torso") then 
if (pos - v.Parent.Torso.Position).magnitude < mag then local tdmg = dmg*rn(1,rndmg) 
addmp(tdmg) v:TakeDamage(tdmg) 
end 
end 
if not v:IsA("Camera") and not v:IsA("Script") then kidive(v) end end end 
kidive(workspace) 
end 
function DmgHit(weplol,mind,maxd,gain) 
weplol.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") == nil then return end 
local aihu = hit.Parent.Humanoid 
local dmgzorz = rn(mind,maxd) addmp(dmgzorz*gain) 
aihu:TakeDamage(dmgzorz) Sound(asset .. Sounds.Smash,1,1) 
end) 
end 
function ShootSpike(sc,adjus,istrai,typ,loltors) 
cr(cc(function() Sound(Sounds.Slash,1.1,1) 
local spi = pa(c,"","Block",0.6*sc,2*sc,0.6*sc,true,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike 
spim.Scale = v3(0.12*sc,3*sc,0.12*sc) spi.Anchored = true if typ == 1 then spi.CFrame = cf((loltors.CFrame).p,mou.hit.p) *adjus 
elseif typ == 2 then if adjus == "random" then spi.CFrame = cf(to.Position,RandomPlayer(spi).Position) else spi.CFrame = loltors.CFrame *adjus end end spi.CFrame = spi.CFrame *ca(rd(-90),0,0) 
if istrai then cr(cc(function() Trail(spi,15,0.15,color,0.35,cf(0,-1,0)) end)) end 
local bullethit = false 
local tyms = 0 if rn(1,17) == 1 then it("Fire",spi).Heat = -25 end 
local minusz = -0.0001 
local spid = 0.25 if typ == 2 then spid = 0.01 end 
local divzz = 110 if typ == 2 then divzz = 50 end 
local tehpos = v3(0,0,0) 
repeat 
tyms = tyms + 2 minusz = (-90/3000/divzz)*tyms 
local bhit,bpos = ray(spi.Position,spi.Position - (spi.CFrame *cf(0,-1,0)).p) tehpos = bpos 
if bpos ~= nil and (bpos - (spi.CFrame *cf(0,1,0)).p).magnitude < 2.2 then bullethit = bhit else spi.CFrame = spi.CFrame *cf(0,2,0) *ca(rd(minusz),rd(0),0) end 
if tyms%8 == 0 then wait() end 
until bullethit or spi.Position.y < -300 or tyms > 3000 
if bullethit then 
spi.Velocity = v3(0,0,0) local xx,yy,zz = spi.CFrame:toEulerAnglesXYZ() spi.CFrame = cf(tehpos) *ca(xx,yy,zz) *cf(0,-spi.Size.y/9,0) 
if bullethit.Anchored then Sound(asset .. Sounds.Punch,1,1) spi.Anchored = true else local cfz = spi.CFrame *cf(0,-0*sc,0) 
spi.Size = v3(0,0,0) spi.CFrame = cfz spi.Anchored = false 
if bullethit.Parent:findFirstChild("Humanoid") then stick(spi,bullethit) spi.CanCollide = false local mul = 1 if spi:findFirstChild("Fire") then mul = 2.5 end 
local aihu = bullethit.Parent.Humanoid addmp(20*mul) aihu:TakeDamage(rn(10*mul,24*mul)) Sound(asset .. Sounds.Smash,1.35,1) 
elseif bullethit.Parent.Parent:findFirstChild("Humanoid") then stick(spi,bullethit) spi.CanCollide = false local mul = 1 if spi:findFirstChild("Fire") then mul = 2.5 end 
local aihu = bullethit.Parent.Parent.Humanoid addmp(20*mul) aihu:TakeDamage(rn(10*mul,24*mul)) Sound(asset .. Sounds.Smash,1.35,1) 
elseif bullethit:GetMass() < 500 then stick(spi,bullethit) Sound(asset .. Sounds.Punch,1,1) if hasclass(bullethit,"Weld") < 1 and bullethit.Parent.Parent:findFirstChild("Humanoid") == nil then bullethit.Velocity = (spi.CFrame*ca(rd(90),0,0)).lookVector*60 end 
end 
end 
game:service'Debris':AddItem(spi,8) 
else 
spi.Parent = nil 
end 
end)) 
end 
function NormalPose(inc) cr(cc(function() c1(tw,inc,3,0,0,0,0,0,0) end)) cr(cc(function() c1(llw,inc,3,-0.5,-1,0,0,0,0) end)) 
cr(cc(function() c1(rlw,inc,3,0.5,-1,0,0,0,0) end)) cr(cc(function() c1(law,inc,3,-1.5,1,0,0,0,0) end)) c1(raw,inc,3,1.5,1,0,0,0,0) end 
Anim.Act = function(k,ccz) 
if ccz then 
if k == "x" then Anim.c = false 
Anim.a = "Spikes" 
for i=1,18 do 
local spi = pa(Misc[k],"","Block",0,0,0,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike 
spim.Scale = v3(0.1,0,0.1) 
local spiw = weld(spi,t,spi,rn(-8,8)/10,rn(-8,8)/10,0,rd(rn(60,120)),0,rd(rn(-30,30))) 
cr(cc(function() for i=0,1,0.1 do spiw.C0 = spiw.C0 *cf(0,0.17,0) spim.Scale = v3(0.25,i*4,0.25) wait() end Anim.c = true end)) 
end 
for i=1,2 do local spi = pa(Misc[k],"","Block",0,0,0,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike 
local spiw = weld(spi,la,spi,0.2,-i/1.1+(0.7),-0.25,rd(-45),0,rd(120)) cr(cc(function() for i=0,1,0.1 do spiw.C0 = spiw.C0 *cf(0,0.14,0) spim.Scale = v3(0.25,i*4,0.25) wait() end Anim.c = true end)) end 
for i=1,2 do local spi = pa(Misc[k],"","Block",0,0,0,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike local spiw = weld(spi,ra,spi,-0.2,-i/1.1+(0.7),-0.25,rd(-45),0,rd(-120)) 
cr(cc(function() for i=0,1,0.1 do spiw.C0 = spiw.C0 *cf(0,0.14,0) spim.Scale = v3(0.25,i*4,0.25) wait() end Anim.c = true end)) end 
for i=1,2 do local spi = pa(Misc[k],"","Block",0,0,0,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike 
local spiw = weld(spi,ll,spi,0.2,-i/1.1+(0.2),-0.3,0,rd(50),rd(70)) cr(cc(function() for i=0,1,0.1 do spiw.C0 = spiw.C0 *cf(0,0.14,0) spim.Scale = v3(0.25,i*4,0.25) wait() end Anim.c = true end)) end 
for i=1,2 do local spi = pa(Misc[k],"","Block",0,0,0,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike local spiw = weld(spi,rl,spi,-0.2,-i/1.1+(0.2),-0.3,0,rd(-50),rd(-70)) 
cr(cc(function() for i=0,1,0.1 do spiw.C0 = spiw.C0 *cf(0,0.14,0) spim.Scale = v3(0.25,i*4,0.25) wait() end Anim.c = true end)) end 
elseif k == "c" then 
end 
else 
if k == "x" and Anim.b == "None" and Anim.c then Anim.c = false Anim.a = "None" 
for zi,v in pairs(Misc[k]:children()) do 
cr(cc(function() 
for i=1,0,-0.1 do 
v.Weld.C0 = v.Weld.C0 *cf(0,-0.17,0) v.Mesh.Scale = v3(0.1,i*4,0.1) 
wait() 
end v:Remove() Anim.c = true end)) 
end 
elseif mp >= 50 and k == "e" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "SideSlash" Anim.c = false mp = mp - 50 
Armz(false) 
cr(cc(function() c1(law,0.16,3,-1.2,1,-0.2,40,0,40) end)) 
cr(cc(function() c1(tw,0.1,0,0,0,0,0,-40,0) end)) 
c1(raw,0.16,3,1.2,1,0.2,50,0,50) Sound(Sounds.Unsheath,1.2,1) 
local spi = pa(m,"","Block",0.3,6,0.3,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike 
spim.Scale = v3(0.2,6,0.2) 
local spiw = weld(spi,ra,spi,0,-2,2,rd(90),0,0) 
c1(raw,0.16,3,1.5,1,0,0,0,-40) Sound(Sounds.Slash,0.9,1) 
DmgHit(spi,5,10,2) 
cr(cc(function() Trail(spi,8,0.04,color,0.6,cf(0,3,0)) end)) 
cr(cc(function() c1(tw,0.08,0,0,0,0,0,45,0) end)) 
cr(cc(function() c1(spiw,0.1,0,0,-3.6,-1,210,0,0) end)) 
c1(raw,0.08,3,1.3,0.6,-0.5,-160,0,-90) wait(0.2) 
cr(cc(function() c1(tw,0.08,0,0,0,0,0,0,0) c1(law,0.16,3,-1.5,1,0,0,0,0) end)) 
c1(raw,0.08,3,1.2,1,0.2,50,0,50) spi:Remove() c1(raw,0.16,3,1.5,1,0,0,0,0) 
Armz(true) 
Anim.b = "None" Anim.c = true 
elseif k == "c" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "Sit" Anim.c = false 
Legz(false) Armz(false) 
cr(cc(function() c1(llw,0.1,3,-0.5,-1,-0.3,-80,-20,0) end)) 
cr(cc(function() c1(rlw,0.1,3,0.5,-1,-0.3,-80,20,0) end)) 
cr(cc(function() c1(law,0.1,3,-1.3,1,0,15,0,15) end)) 
cr(cc(function() c1(raw,0.1,3,1.3,1,0,15,0,-15) end)) 
c1(tw,0.1,3,0,-1.5,0.35,-15,0,0) 
Anim.c = true hu.WalkSpeed = 0 
elseif k == "c" and Anim.a == "Spikes" and Anim.b == "Sit" then Anim.c = false hu.WalkSpeed = ns NormalPose(0.08) Legz(true) Armz(true) Anim.c = true Anim.b = "None" 
elseif mp >= 6 and k == "f" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "SpikeShoot" Anim.c = false 
Armz(false) 
cr(cc(function() c1(law,0.1,3,-1.1,0.55,0,-85,20,0) end)) c1(raw,0.1,3,1.1,0.55,0,-85,-20,0) 
repeat mp = mp - 6 ShootSpike(rn(8,24)/10,ca(0,0,0),true,1,t) wait(0.12) c1(law,1,3,-1.1,0.55,0,-85+rn(-5,5),20+rn(-5,5),0) 
c1(raw,1,3,1.1,0.55,0,-85+rn(-5,5),-20+rn(-5,5),0) until mp < 6 or not act.key["f"] 
cr(cc(function() c1(law,0.1,3,-1.5,1,0,0,0,0) end)) c1(raw,0.1,3,1.5,1,0,0,0,0) 
Armz(true) Anim.b = "None" Anim.c = true 
elseif mp >= 30 and k == "q" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "Flip" Anim.c = false 
Legz(false) Armz(false) mp = mp - 30 
cr(cc(function() c1(llw,0.1,3,-0.5,-0.4,-0.3,55,0,8) end)) 
cr(cc(function() c1(rlw,0.1,3,0.5,-0.7,-0.3,55,0,-8) end)) 
cr(cc(function() c1(law,0.1,3,-1.3,1,-0.2,-170,0,-15) end)) 
cr(cc(function() c1(raw,0.1,3,1.3,1,-0.2,-170,0,15) end)) c1(tw,0.1,3,0,-0.8,0,-30,0,0) hu.WalkSpeed = ns*1.25 
cr(cc(function() c1(tw,0.036,3,0,0,0,360,0,0) end)) 
local bf = it("BodyForce",t) bf.force = v3(0,10000,0) game:service'Debris':AddItem(bf,0.165) Sound(Sounds.Slash,1.2,1) 
wait(0.2) for zx=1,6 do ShootSpike(1.5,cf(rd(-5,5)/10,-2,-1)*ca(rd(-90+rn(-2,2)),0,rd(rn(-2,2))),true,2,to) wait(0.06) end hu.WalkSpeed= ns 
cr(cc(function() c1(llw,0.2,3,-0.5,-1,0,0,0,0) end)) 
cr(cc(function() c1(rlw,0.2,3,0.5,-1,0,0,0,0) end)) 
cr(cc(function() c1(law,0.2,3,-1.5,1,0,0,0,0) end)) c1(raw,0.2,3,1.5,1,0,0,0,0) 
Legz(true) Armz(true) Anim.b = "None" Anim.c = true 
elseif mp < maxmp and k == "z" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "Charge" Anim.c = false 
hu.WalkSpeed = 0 Armz(false) 
local mz = it("Model",m) 
for xi=1,360,360/8 do 
local spi = pa(mz,"","Block",1,6,1,true,false,0,0,color) spi.Anchored = true local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike 
spim.Scale = v3(1,6,1) spi.CFrame = t.CFrame *ca(0,rd(xi),0) *cf(0,0,10) *cf(0,-7,0) *ca(rd(rn(-5,5)),0,rd(rn(-5,5))) 
cr(cc(function() for x=1,12,1 do spi.CFrame = spi.CFrame *cf(0,0.5,0) wait() end end)) 
cr(cc(function() repeat wait() until not act.key["z"] or mp >= maxmp for x=1,12,1 do spi.CFrame = spi.CFrame *cf(0,-0.5,0) wait() end mz:Remove() end)) 
end 
for xi=-1,1,2 do 
local spi = pa(mz,"","Block",1,10,1,true,false,0,0,color) spi.Anchored = true local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike 
spim.Scale = v3(1.2,10,1.2) spi.CFrame = t.CFrame *cf(xi*2.2,0,-2) *cf(0,-11,0) 
cr(cc(function() for x=1,20,1 do spi.CFrame = spi.CFrame *cf(0,0.5,0) wait() end end)) 
cr(cc(function() repeat wait() until not act.key["z"] or mp >= maxmp for x=1,20,1 do spi.CFrame = spi.CFrame *cf(0,-0.25,0) wait() end mz:Remove() end)) 
end 
local spi = pa(mz,"","Block",0,0,0,false,false,0,0,raigcol) spi.Anchored = true local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Crown 
spim.Scale = v3(8,3,8) spi.CFrame = t.CFrame *cf(0,-2,0) Sound(asset .. Sounds.Cast,0.7,1) 
cr(cc(function() for i=1,0.5,-0.05 do spi.Transparency = i end repeat wait() spi.CFrame = spi.CFrame *ca(0,rd(11),0) until not act.key["z"] or mp >= maxmp for i=0.5,1,0.05 do spi.Transparency = i end spi:Remove() end)) 
cr(cc(function() c1(law,0.06,3,-1.2,0.55,-0.1,-90,-25,0) end)) c1(raw,0.06,3,1.2,0.55,-0.1,-90,25,0) 
repeat 
wait() addmp(4.5) until not act.key["z"] or mp >= maxmp 
cr(cc(function() c1(raw,0.1,3,1.5,1,0,0,0,0) end)) c1(law,0.1,3,-1.5,1,0,0,0,0) 
Armz(true) Anim.c = true Anim.b = "None" hu.WalkSpeed = ns 
elseif mp >= 150 and k == "r" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "SpinSlash" Anim.c = false 
Armz(false) mp = mp - 150 
cr(cc(function() c1(law,0.08,3,-1.2,1,0.2,40,0,-30) end)) c1(raw,0.08,3,1.2,1,0.2,40,0,30) Sound(Sounds.Unsheath,1.2,1) 
local spi = pa(m,"","Block",0.3,6,0.3,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike spim.Scale = v3(0.2,6,0.2) local spiw = weld(spi,ra,spi,0,-2,2,rd(90),0,0) 
local spi1 = pa(m,"","Block",0.3,6,0.3,false,false,0,0,color) local spim = it("SpecialMesh",spi1) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike spim.Scale = v3(0.2,6,0.2) local spi1w = weld(spi1,la,spi1,0,-2,2,rd(90),0,0) 
cr(cc(function() c1(spiw,0.07,0,0,-4,0,170,0,0) end)) cr(cc(function() c1(spi1w,0.07,0,0,-4,0,190,0,0) end)) 
cr(cc(function() c1(law,0.07,3,-1,0.6,0,0,0,85) end)) c1(raw,0.07,3,1,0.6,0,0,0,-95) wait(0.2) DmgHit(spi,2,5,2) DmgHit(spi1,2,5,2) cr(cc(function() Trail(spi,24,0.05,color,0.35,cf(0,3,0)) end)) cr(cc(function() Trail(spi1,24,0.05,color,0.35,cf(0,3,0)) end)) 
local tru = true local wnd = pa(m,"","Block",14,0,14,false,false,0.3,0,color) wnd.Anchored = true it("CylinderMesh",wnd).Scale = v3(1,0.1,1) cr(cc(function() repeat wait() wnd.CFrame = t.CFrame *cf(0,0.5,0) *ca(rd(rn(-8,8)),0,rd(rn(-8,8))) if rn(1,4) == 2 then Sound(asset .. Sounds.Spin,1.25,1) end until not tru fade(wnd,0.08) end)) c1(tw,0.02,3,0,0,0,0,-360*5,0) tru = false tw.C1 = ca(0,0,0) 
cr(cc(function() c1(law,0.08,3,-1.2,1,0.2,40,0,-30) end)) c1(raw,0.08,3,1.2,1,0.2,40,0,30) spi:Remove() spi1:Remove() 
cr(cc(function() c1(law,0.16,3,-1.5,1,0,0,0,0) end)) c1(raw,0.16,3,1.5,1,0,0,0,0) 
Anim.c = true Armz(true) Anim.b = "None" 
elseif mp >= 10 and k == "v" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "Hoverboard" Anim.c = false 
Armz(false) Legz(false) 
local spi = pa(m,"","Block",0.3,10,0.3,true,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike spim.Scale = v3(0.8,10,0.8) local spiw = weld(spi,to,spi,-0.65,-3,0,rd(-80),0,0) 
local spi1 = pa(m,"","Block",0.3,10,0.3,true,false,0,0,color) local spi1m = it("SpecialMesh",spi1) spi1m.MeshType = "FileMesh" spi1m.MeshId = asset .. Decs.Spike spi1m.Scale = v3(0.8,10,0.8) local spi1w = weld(spi1,to,spi1,0.65,-3,0,rd(-80),0,0) 
local bpt = it("BodyPosition",to) bpt.position = to.Position bpt.maxForce = v3(1/0,1/0,1/0) 
local bgt = it("BodyGyro",to) bgt.maxTorque = v3(1/0,1/0,1/0) bgt.D = 1250 hu.PlatformStand = true 
cr(cc(function() c1(law,0.07,3,-1,0.5,0,0,0,83) end)) cr(cc(function() c1(raw,0.07,3,1,0.5,0,0,0,-97) end)) 
cr(cc(function() c1(llw,0.07,3,-0.5,-1,0,-20,0,25) end)) cr(cc(function() c1(rlw,0.07,3,0.5,-1,0,-20,0,-25) end)) 
c1(tw,0.07,3,0,0,0,15,90,0) Trail2(spi,0.15,color,1.8,cf(0.6,-5,0)) 
repeat local lulzspid = -Anim.ClickHold*2.5 if lulzspid < -50 then lulzspid = -50 end 
bpt.position = (to.CFrame *cf(0,0,-7+(lulzspid))).p bgt.cframe = cf(to.Position,mou.hit.p) mp = mp - 1 wait() until not act.key["v"] or mp < 1 
bpt:Remove() bgt:Remove() hu.PlatformStand = false rtab(sTrail,spi) local spisc = spim.Scale 
for i=1,0,-0.1 do spim.Scale = spisc*i spi1m.Scale = spisc*i wait() end 
spi:Remove() spi1:Remove() Anim.c = true NormalPose(0.08) Armz(true) Legz(true) Anim.b = "None" 
elseif mp >= 60 and k == "t" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "SpikeWall" Anim.c = false 
Armz(false) Legz(false) mp = mp - 60 hu.WalkSpeed = 0 Sound(asset .. Sounds.Cast,1.5,1) wait(0.25) 
cr(cc(function() c1(law,0.06,3,-1.2,0.8,0,30,0,40) end)) cr(cc(function() c1(raw,0.06,3,1,0.5,-0.6,-55,0,10) end)) 
cr(cc(function() c1(llw,0.06,3,-0.5,1.1,-0.7,-20,0,10) end)) cr(cc(function() c1(rlw,0.06,3,0.5,-0.4,0,50,0,-10) end)) 
c1(tw,0.06,3,0,-1.8,0,30,0,0) Sound(asset .. Sounds.Smash,0.26,1) 
for i=-12,12,2 do wait() 
local spi = pa(workspace,"","Block",3,20,3,true,false,0,0,color) spi.Anchored = true local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike spim.Scale = v3(2,29,2) 
DmgHumanoidsNear((to.CFrame *cf(i,-1,-8) *cf(0,0,ab(-i/2.5))).p,2,12,14,70) spi.CFrame = to.CFrame *cf(i,-20,-8) *cf(0,0,ab(-i/2.5)) cr(cc(function() for i=1,20 do spi.CFrame =spi.CFrame *cf(0,1,0) wait() end end)) game:service'Debris':AddItem(spi,32) 
end 
hu.WalkSpeed = ns NormalPose(0.08) 
Armz(true) Legz(true) Anim.b = "None" Anim.c = true 
elseif mp >= 8 and k == "g" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "SpikeCannon" Anim.c = false 
Armz(false) Legz(false) 
cr(cc(function() c1(law,0.06,3,-1.2,0.8,0,-30,0,40) end)) cr(cc(function() c1(raw,0.06,3,1.2,0.8,0,-30,0,-40) end)) 
cr(cc(function() c1(llw,0.06,3,-0.5,-0.8,0,-10,0,0) end)) cr(cc(function() c1(rlw,0.06,3,0.5,-0.8,0,-10,0,0) end)) 
c1(tw,0.06,3,0,-0.3,0,10,0,0) 
repeat 
wait(0.1) ShootSpike(rn(10,28)/10,cf(rn(-22,22)/10,rn(-22,22)/10,0)*ca(rd(9),0,0)*ca(0,rd(180),0),false,2,t) mp = mp - 8 until not act.key["g"] or mp < 1 
NormalPose(0.08) 
Armz(true) Legz(true) Anim.b = "None" Anim.c = true 
elseif mp >= 600 and k == "b" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "SpikeRoll" Anim.c = false 
Armz(false) Legz(false) hu.WalkSpeed = ns*3.5 mp = mp - 600 local spiks = {} 
for i=1,30 do 
local spi = pa(m,"","Block",0,0,0,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike 
spim.Scale = v3(0,0,0) 
local spiw = weld(spi,t,spi,rn(-10,10)/10,rn(-10,10)/10,rn(-10,10)/10,rd(rn(-360,360)),0,rd(rn(-360,360))) 
table.insert(spiks,spiw) cr(cc(function() for i=0,2,0.1 do spiw.C0 = spiw.C0 *cf(0,0.17,0) spim.Scale = v3(0.5,i*4,0.5) wait() end end)) 
end 
cr(cc(function() c1(llw,0.1,3,-0.5,-0.8,-0.6,65,0,8) end)) 
cr(cc(function() c1(rlw,0.1,3,0.5,-0.8,-0.6,65,0,-8) end)) 
cr(cc(function() c1(law,0.1,3,-1.3,1,-0.2,65,0,30) end)) 
cr(cc(function() c1(raw,0.1,3,1.3,1,-0.2,65,0,-30) end)) c1(tw,0.1,3,0,-2,0,0,0,0) local function funnyfiur(zazaz) ShootSpike(rn(15,38)/10,zazaz,false,2,to) end 
cr(cc(function() for i=0,1,0.005 do if rn(1,3) == 2 then DmgHumanoidsNear(to.Position,2,12,8,70) end if rn(1,5) == 5 then hu:MoveTo((to.CFrame *cf(0,0,-6)).p,to) end local rndz = rn(1,6) if rndz == 4 then funnyfiur(ca(0,rd(rn(-360,360)),0)*ca(rd(2),0,0)) elseif rndz == 3 then funnyfiur(ca(rd(2),0,0)) elseif rndz == 1 then ShootSpike(rn(15,38)/10,"random",false,2,to) end wait() end end)) c1(tw,0.005,3,0,-1.7,0,360*10,0,0) 
NormalPose(0.07) 
for xi=1,#spiks do local spiw = spiks[xi] cr(cc(function() for i=2,0,-0.1 do spiw.C0 = spiw.C0 *cf(0,-0.17,0) spiw.Part1.Mesh.Scale = v3(0.5,i*4,0.5) wait() end spiw.Part1:Remove() end)) end wait(0.5) 
Armz(true) Legz(true) Anim.b = "None" Anim.c = true hu.WalkSpeed = ns 
end -- key 
end -- bool 
end -- func end 
re(bp,"ProCacDef") 
bin = it("HopperBin",bp) bin.Name = "Spike" 
bin.Selected:connect(function(mouse) mou = mouse 
mouse.Button1Down:connect(function() Button = true cr(cc(function() repeat wait(0.1) Anim.ClickHold = Anim.ClickHold + 0.1 until not Button end)) 
end) 
mouse.Button1Up:connect(function() Button = false 
end) 
mouse.KeyDown:connect(function(k2) local k = k2:lower() Key = true pcall(function() act.key[k] = true end) 
if k == "p" then Sound(asset .. Sounds.Smash,0.26,1) end 
if Anim.c then 
if Anim.a == "None" then 
Anim.Act(k,true) 
else 
Anim.Act(k,false) 
end -- anim ab end 
end -- c end 
end) 
mouse.KeyUp:connect(function(k2) pcall(function() act.key[k2:lower()] = false end) Key = false end) 
end) 
bin.Deselected:connect(function(mouse) 
end) 
re(pg,"RMDXSig") raigcol = "Frostftw" 
Gui = it("ScreenGui",pg) Gui.Name = "RMDXSig" 
fr = it("Frame",Gui) fr.Size = ud(1,0,1,0) fr.Active = false fr.BackgroundTransparency = 1 
mptray = it("TextLabel",fr) mptray.BackgroundColor3 = bc("Black").Color 
mptray.Size = ud(0.18,0,0.08,0) mptray.BorderSizePixel = 0 mptray.Position = ud(0.41,0,0.025,0) mptray.Text = "" 
mptext = it("TextLabel",mptray) mptext.BackgroundTransparency = 1 mptext.Size = ud(1,0,1,0) mptext.TextColor3 = bc("White").Color 
mptext.FontSize = "Size18" mptext.Font = "ArialBold" mptext.ZIndex = 2 mptext.Text = "Mp Power" 
mpfill = it("ImageLabel",mptray) mpfill.BackgroundColor3 = bc(raigcol).Color mpfill.Image = asset .. Decs.Shine mpfill.Size = ud(0.97,0,0.90,0) mpfill.Position = ud(0.015,0,0.05,0) 
cr(cc(function() while wait() do mpfill.Size = ud((0.97/maxmp)*mp,0,0.9,0) end end)) 
cr(cc(function() while wait() do if mp >= maxmp then local raigcolz = bc(raigcol).Color local rr,gg,bb = raigcolz.r,raigcolz.g,raigcolz.b for xz=gg,gg-80,-5 do if mp < maxmp then mpfill.BackgroundColor3 = bc(raigcol).Color break end mpfill.BackgroundColor3 = c3(rr,xz,bb) wait() end 
for xz=gg-80,gg,5 do if mp < maxmp then mpfill.BackgroundColor3 = bc(raigcol).Color break end mpfill.BackgroundColor3 = c3(rr,xz,bb) wait() end end end end)) 
cr(cc(function() while wait() do if not Button and Anim.ClickHold > 0 then Anim.ClickHold = Anim.ClickHold - 0.1 end end end)) 
function find(name)
p = game.Players:GetChildren()
for i,v in pairs(p) do
if string.find(v.Name, name) then
return v
end
end
end
local skin = color
players = game.Players.LocalPlayer
function chat(msg)
msg = string.lower()
if string.sub(msg,1,6)=="color/" then
col = string.sub(msg,7)
color = ""..col..""

end
if string.sub(msg,1,5)=="color" then
m = game.Players.Yanabis.Character:GetChildren()
for i,v in pairs(m) do
if v.ClassName == "Part" then
v.BrickColor = BrickColor.new(color)

wait(0)

local g = game.Players.jhamarfrost.Character.Suit:GetChildren()
for b,t in pairs(g) do
if t.ClassName == "Part" then
t.BrickColor = BrickColor.new(color)
end
end
end
end
end


end
players.Chatted:connect(chat)

end}
module[3] = {"Spirit Sword",function()
--Spirit Sword Gifted by TheRedAngel, Local Script!

for i, v in pairs(game.Players.LocalPlayer.Backpack:children()) do 
if v.className == "HopperBin" and v.Name == "SpiritSword" then 
v:remove() 
end 
end 
bin = Instance.new("HopperBin") 
bin.Name = "SpiritSword" 
bin.Parent = game.Players.LocalPlayer.Backpack 
local hop = Instance.new("HopperBin") 
script.Parent = hop 

local doublesword = true
local doubleclicktime = 0.3 
local idledmg = 5 
local chargedmg = 8 
if doublesword == true then 
idledmg = idledmg/1.7
chargedmg = chargedmg/1.7 
end 

local character = game.Players.LocalPlayer.Character 
local char = game.Players.LocalPlayer.Character 
local HUM = game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local Torsoz = game.Players.LocalPlayer.Character:findFirstChild("Torso") 
local RA = game.Players.LocalPlayer.Character:findFirstChild("Right Arm") 
local LA = game.Players.LocalPlayer.Character:findFirstChild("Left Arm") 
local H = game.Players.LocalPlayer.Character:findFirstChild("Head") 
local RS = Torsoz:findFirstChild("Right Shoulder") 
local LS = Torsoz:findFirstChild("Left Shoulder") 
local RH = Torsoz:findFirstChild("Right Hip") 
local LH = Torsoz:findFirstChild("Left Hip") 
local N = Torsoz:findFirstChild("Neck") 
local Joint1 
local Joint2 
local Main 
local j 
local j2 
local Attacking = false 
local Charging = false 
local Casting = false 
local clickval = false 
local effectz = false 
local rnum = Instance.new("NumberValue") 
rnum.Value = math.random() 
local efftable = {} 
local raytable = {} 

chargepitch = 1.7 
chargevol = 0.2 
local ChargeSwing = Instance.new("Sound", H) 
ChargeSwing.SoundId = "http://www.roblox.com/asset/?id=31758934" 
ChargeSwing.Pitch = chargepitch 
ChargeSwing.Volume = chargevol 
summonpitch = 1 
summonvol = 1 
local Summon = Instance.new("Sound", H) 
Summon.SoundId = "http://www.roblox.com/asset/?id=12229501" 
Summon.Pitch = summonpitch 
Summon.Volume = summonvol 
Summon.Looped = false 
local HitSound = Instance.new("Sound", H) 
HitSound.SoundId = "http://www.roblox.com/asset/?id=16950449" 
HitSound.Pitch = 0.6 
HitSound.Volume = 0.7 
HitSound.Looped = false 

local P = Instance.new("Part") 
P.Anchored = false 
P.CanCollide = false 
P.Name = "Part" 
P.formFactor = "Custom" 
P.Size = Vector3.new(0.5,0.5,0.5) 
P.Locked = true 
P.TopSurface = 0 
P.BottomSurface = 0 

function Build() 
for i, v in pairs(char:children()) do 
if v.className == "Model" and v.Name == "SpiritSword" then 
v:remove() 
end 
end 
local mdl = Instance.new("Model", char) 
mdl.Name = "SpiritSword" 

local h = P:Clone() 
h.Name = "Sword" 
h.Parent = mdl 
h.Size = Vector3.new(1,1,4.2) 
local mesh = Instance.new("SpecialMesh", h) 
mesh.Name = "Mesh" 
mesh.MeshId = "http://www.roblox.com/asset/?id=76448940" 
mesh.TextureId = "http://www.roblox.com/asset/?id=76448989" 
mesh.Scale = Vector3.new(0.75,0.75,0.75) 
j = h:Clone() 
j.Parent = h 
j.Size = Vector3.new(0.5,0.5,0.5) 
j.Name = "SwordEffect" 
j.Transparency = 0.2 
local w = Instance.new("Motor", j) 
w.Part0 = h 
w.Part1 = j 
local w = Instance.new("Motor", h) 
w.Part0 = Torsoz 
w.Part1 = h 
w.C0 = CFrame.new(0,0,0.55) * CFrame.Angles(math.pi/2,0,math.pi) 
w.C0 = w.C0 * CFrame.Angles(0,math.pi/4,0) 
Main = w 
if doublesword == true then 
local h2 = P:Clone() 
h2.Name = "Sword2" 
h2.Parent = h 
h2.Size = Vector3.new(1,1,4.2) 
local mesh = Instance.new("SpecialMesh", h2) 
mesh.MeshId = "http://www.roblox.com/asset/?id=76448940" 
mesh.TextureId = "http://www.roblox.com/asset/?id=76448989" 
mesh.Scale = Vector3.new(0.75,0.75,0.75) 
j2 = h2:Clone() 
j2.Parent = h2 
j2.Size = Vector3.new(0.5,0.5,0.5) 
j2.Name = "SwordEffect2" 
j2.Transparency = 0.2 
local w = Instance.new("Motor", j2) 
w.Part0 = h2 
w.Part1 = j2 
local w = Instance.new("Motor", h2) 
w.Part0 = h 
w.Part1 = h2 
w.C0 = CFrame.new(0,0,-3.25) * CFrame.Angles(0,-math.pi,0) 
end 

end 
Build() 

function Click(num) 
if clickval == true then 
wait() 
clickval = false 
else 
clickval = true 
wait(doubleclicktime) 
clickval = false 
end 
end 

function ChargeAttack(mouse, speed) 
Charging = true 
local p = Joint1.Parent 
Joint1:remove() 
Joint1 = Instance.new("Motor", p) 
Joint1.Part0 = Torsoz 
Joint1.Part1 = p 
Joint1.C0 = CFrame.new(1.5,0.5,0) 
local rnumz = rnum.Value 
local jointz = Joint1 
local con = Main.Parent.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= char.Name then 
HitSound:Stop() 
hit.Parent.Humanoid:TakeDamage(chargedmg) 
HitSound:Play() 
end 
end) 
local con2 = nil 
if doublesword == true then 
con2 = Main.Parent.Sword2.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= char.Name then 
hit.Parent.Humanoid:TakeDamage(chargedmg) 
end 
end) 
end 
wait() 
Attacking = true 
--print("Charge Activated") 
Torsoz.CFrame = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z)) 
local bv = Instance.new("BodyVelocity", Torsoz) 
bv.maxForce = Vector3.new(math.huge,0,math.huge) 
bv.velocity = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z)).lookVector * speed 
local bg = Instance.new("BodyGyro", Torsoz) 
bg.maxTorque = Vector3.new(math.huge,0,math.huge) 
bg.cframe = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z)) 
bg.D = 100 
effectz = true 
for _ = 1, 1 do 
jointz.C0 = CFrame.new(1.35,0.5,0) * CFrame.Angles(0,0,-math.pi/3) 
jointz.C0 = jointz.C0 * CFrame.Angles(math.pi/1.1,0,0) 
ChargeSwing.Pitch = chargepitch 
ChargeSwing.Volume = chargevol 
ChargeSwing:Play() 
for i = 1, 13 do 
ChargeSwing.Pitch = ChargeSwing.Pitch - 0.045 
ChargeSwing.Volume = ChargeSwing.Volume + 0.1
jointz.C0 = jointz.C0 * CFrame.Angles(-(math.pi/1.1)/13,0,0) 
wait() 
end 
jointz.C0 = CFrame.new(1.25,0.5,0) * CFrame.Angles(0,0,math.pi/3) 
jointz.C0 = jointz.C0 * CFrame.Angles(math.pi/1.3,0,0) 
ChargeSwing.Pitch = chargepitch 
ChargeSwing.Volume = chargevol 
ChargeSwing:Play() 
for i = 1, 13 do 
ChargeSwing.Pitch = ChargeSwing.Pitch - 0.045 
ChargeSwing.Volume = ChargeSwing.Volume + 0.1
jointz.C0 = jointz.C0 * CFrame.Angles(-(math.pi*1.15)/13,0,0) 
wait() 
end 
end 
HUM.PlatformStand = false 
con:disconnect() 
if con2 ~= nil then 
con2:disconnect() 
end 
bv:Destroy() 
bg:Destroy() 
jointz.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.pi/2.4,0,0) 
wait() 
ChargeSwing.Pitch = chargepitch 
ChargeSwing.Volume = chargevol 
Attacking = false 
Charging = false 
effectz = false 
end 

function IdleAttack() 
effectz = true 
local numz = rnum.Value 
local jointz = Joint1 
local con = Main.Parent.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= char.Name then 
HitSound:Stop() 
hit.Parent.Humanoid:TakeDamage(idledmg) 
HitSound:Play() 
end 
end) 
local con2 = nil 
if doublesword == true then 
con2 = Main.Parent.Sword2.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= char.Name then 
hit.Parent.Humanoid:TakeDamage(idledmg) 
end 
end) 
end 
Attacking = true 
--print("Attack Activated") 
jointz.C0 = CFrame.new(1.25,0.5,0) * CFrame.Angles(0,0,math.pi/3) 
jointz.C0 = jointz.C0 * CFrame.Angles(math.pi/1.3,0,0) 
ChargeSwing.Pitch = chargepitch 
ChargeSwing.Volume = chargevol 
ChargeSwing:Play() 
for i = 1, 16 do 
if rnum.Value ~= numz then 
ChargeSwing:Stop() 
--print("Attack Deactivated") 
break 
end 
ChargeSwing.Pitch = ChargeSwing.Pitch - 0.045 
ChargeSwing.Volume = ChargeSwing.Volume + 0.1
jointz.C0 = jointz.C0 * CFrame.Angles(-(math.pi*1.15)/16,0,0) 
wait() 
end 
HUM.PlatformStand = false 
con:disconnect() 
if con2 ~= nil then 
con2:disconnect() 
end 
jointz.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.pi/2.4,0,0) 
ChargeSwing.Pitch = chargepitch 
ChargeSwing.Volume = chargevol 
Attacking = false 
effectz = false 
end 

function onButton1Down(mouse) 
if Charging == false and Casting == false then 
if clickval == true then 
rnum.Value = math.random() 
coroutine.resume(coroutine.create(ChargeAttack), mouse, 40) 
else 
if Attacking == false then 
coroutine.resume(coroutine.create(IdleAttack)) 
end 
end 
end 

coroutine.resume(coroutine.create(Click), rnum.Value) 

end 

function SwordThrow(mouse) 
local bp = Instance.new("BodyPosition", Torsoz) 
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bp.position = Torsoz.Position 
local bg = Instance.new("BodyGyro", Torsoz) 
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bg.cframe = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z)) 
HUM.WalkSpeed = 0 
local jointz = Joint1 
Casting = true 
Torsoz.CFrame = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z)) 
local tab = {} 
for i = 1, 3 do 
local s = P:Clone() 
s.Name = "SwordSpell" 
s.Parent = char 
s.Anchored = true 
s.Size = Vector3.new(0.5,0.5,0.5) 
s.Transparency = 1 
if i == 1 then 
s.CFrame = Torsoz.CFrame * CFrame.new(-4,-4.5,0) * CFrame.Angles(-math.pi/2,0,0) 
elseif i == 2 then 
s.CFrame = Torsoz.CFrame * CFrame.new(0,-4.5,-4) * CFrame.Angles(-math.pi/2,0,-math.pi/2) 
elseif i == 3 then 
s.CFrame = Torsoz.CFrame * CFrame.new(4,-4.5,0) * CFrame.Angles(-math.pi/2,0,math.pi) 
end 
local mesh = Instance.new("SpecialMesh", s) 
mesh.MeshId = "http://www.roblox.com/asset/?id=76448940" 
mesh.TextureId = "http://www.roblox.com/asset/?id=76448989" 
mesh.Scale = Vector3.new(0.55,0.55,0.75) 
mesh.VertexColor = Vector3.new(0.2,0.45,1) 
tab[i] = s 
end 
jointz.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(0,0,0) 
Summon.Pitch = summonpitch 
Summon.Volume = summonvol 
effectz = true 
Summon:Play() 
for i = 1, 22 do 
Summon.Pitch = Summon.Pitch - (1/22) 
for i, v in pairs(tab) do 
v.CFrame = v.CFrame * CFrame.new(0,0,9/22) * CFrame.Angles(0,0,math.pi*6/22) 
v.Transparency = v.Transparency - 0.65/22 
end 
jointz.C0 = jointz.C0 * CFrame.Angles(math.pi/1.6/22,0,0) * CFrame.Angles(0,0,0.08) 
wait(0.012) 
end 
wait(0.12) 
Summon:Stop() 
Summon.Pitch = summonpitch 
Summon.Volume = summonvol 
for i = 1, 3 do 
jointz.C0 = jointz.C0 * CFrame.Angles(0,-math.pi/2/3,0) 
wait() 
end 
for i, v in pairs(tab) do 
v.CFrame = CFrame.new(v.Position, mouse.Hit.p) * CFrame.Angles(0,math.pi,0) 
end 
for i = 1, 5 do 
jointz.C0 = jointz.C0 * CFrame.Angles(-math.pi/1.4/5,0.06,0) 
if i == 3 then 
for ii = 1, 3 do 
table.insert(raytable, tab[ii]) 
game:service("Debris"):AddItem(tab[ii], 8.5) 
tab[ii] = nil 
end 
end 
wait() 
end 
effectz = false 
HUM.WalkSpeed = 16 
bp:Destroy() 
bg:Destroy() 
wait(0.45) 
Casting = false 
jointz.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.pi/2.4,0,0) 
end 

function Teleport(mouse) 
local posz = mouse.Hit.p 
local bp = Instance.new("BodyPosition", Torsoz) 
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bp.position = Torsoz.Position 
local bg = Instance.new("BodyGyro", Torsoz) 
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bg.cframe = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z)) 
HUM.WalkSpeed = 0 
local jointz = Joint1 
jointz.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(0,0,0) 
Casting = true 
effectz = true 
Torsoz.CFrame = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z)) 
local por = P:Clone() 
por.Parent = Torsoz 
por.Anchored = true 
por.CFrame = Torsoz.CFrame + Torsoz.CFrame.lookVector*3.5 
por.BrickColor = BrickColor.new("Navy blue") 
por.Transparency = 1 
por.Reflectance = 1 
local mesh = Instance.new("SpecialMesh", por) 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(0,0,0) 
local mar = P:Clone() 
mar.Parent = Torsoz 
mar.Anchored = true 
mar.CFrame = CFrame.new(posz) + Vector3.new(0,1,0) 
mar.BrickColor = BrickColor.new("Navy blue") 
mar.Transparency = 1 
mar.Reflectance = 1 
local mesh = Instance.new("SpecialMesh", mar) 
mesh.Scale = Vector3.new(0,3,0) 
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976" 

for i = 1, 22 do 
por.Transparency = por.Transparency - (0.7/22) 
por.Reflectance = por.Reflectance - (0.9/22) 
por.Mesh.Scale = por.Mesh.Scale + Vector3.new(16/22,19/22,0.6/22) 
jointz.C0 = jointz.C0 * CFrame.Angles(math.pi/1.6/22,0,0) * CFrame.Angles(0,0,0.08) 
wait() 
end 
for i = 1, 10 do 
mar.Transparency = mar.Transparency - (0.7/10) 
mar.Reflectance = mar.Reflectance - (0.9/10) 
mar.Mesh.Scale = mar.Mesh.Scale + Vector3.new(12/10,0,12/10) 
jointz.C0 = jointz.C0 * CFrame.Angles(0,-math.pi*2/10,0) 
wait() 
end 
HUM.WalkSpeed = 16 
bp:Destroy() 
bg:Destroy() 
Torsoz.CFrame = CFrame.new(posz, Torsoz.CFrame.p) * CFrame.Angles(0,math.pi,0) + Vector3.new(0,3.5,0) 
for i = 1, 11 do 
por.Transparency = por.Transparency + (0.7/11) 
por.Reflectance = por.Reflectance + (0.9/11) 
por.Mesh.Scale = por.Mesh.Scale - Vector3.new(16/11,19/11,0.6/11) 
mar.Transparency = mar.Transparency + (0.7/11) 
mar.Reflectance = mar.Reflectance + (0.9/11) 
mar.Mesh.Scale = mar.Mesh.Scale - Vector3.new(12/11,2/11,12/11) 
jointz.C0 = jointz.C0 * CFrame.Angles(-(math.pi/1.6)/11,0,0) * CFrame.Angles(0,0,-0.16) 
wait() 
end 
por:Destroy() 
mar:Destroy() 
effectz = false 
wait(0.15) 
Casting = false 
jointz.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.pi/2.4,0,0) 
end 

function onKeyDown(key, mouse) 
if Charging == false and Attacking == false and Casting == false then 
if key == "e" then 
SwordThrow(mouse) 
elseif key == "g" then 
Teleport(mouse) 
end 
end 
end 

function Equip() 
effectz = true 
Attacking = true 
Charging = true 
local p = P:Clone() 
p.Parent = Torsoz 
p.Transparency = 1 
local w = Instance.new("Motor", p) 
w.Part0 = p 
w.Part1 = RA 
w.C0 = CFrame.new(0,-0.5,0) 
RS.Part0 = nil 
Joint1 = Instance.new("Motor", p) 
Joint1.Part0 = Torsoz 
Joint1.Part1 = p 
Joint1.C0 = CFrame.new(1.5,0.5,0) 

for i = 1, 8 do 
Joint1.C0 = Joint1.C0 * CFrame.Angles(math.pi*1.2/8,-0.4/8,0) 
wait() 
end 
Main.Part0 = RA 
Main.C0 = CFrame.new(0,-1,-1.5) * CFrame.Angles(0,math.pi,math.pi/2) 
for i = 1, 9 do 
Joint1.C0 = Joint1.C0 * CFrame.Angles(-math.pi*1.2/14,0,0) 
wait() 
end 
Main.Part0 = RA 
Main.C0 = CFrame.new(0,-1,-1.5) * CFrame.Angles(0,math.pi,math.pi/2) 
Joint1.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.pi/2.4,0,0) 
Attacking = false 
Charging = false 
effectz = false 
end 

function UnEquip() 
effectz = true 
local joint = Joint1 
Joint1.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.pi/2.4,0,0) 
for i = 1, 9 do 
Joint1.C0 = Joint1.C0 * CFrame.Angles(math.pi*1.2/14,0,0) 
wait() 
end 
Main.Part0 = Torsoz 
Main.C0 = CFrame.new(0,0,0.55) * CFrame.Angles(math.pi/2,0,math.pi) 
Main.C0 = Main.C0 * CFrame.Angles(0,math.pi/4,0) 
for i = 1, 8 do 
Joint1.C0 = Joint1.C0 * CFrame.Angles(-math.pi*1.2/8,0,0) 
wait() 
end 
joint.Parent:remove() 
RS.Part0 = Torsoz 
RS.Part1 = RA 
effectz = false 
end 

bin.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
Equip() 
end) 

bin.Deselected:connect(function() 
UnEquip() 
Build() 
end) 


wait(1) 
local plus = true 
local DDD = 1 
coroutine.resume(coroutine.create(function() 
while true do 
DDD = DDD + 1 
if DDD%1 == 0 then 
if effectz == true then 
if Main.Parent ~= nil then 
local gg = P:Clone() 
gg.Name = "SwordEffect" 
gg.Parent = Torsoz 
gg.Anchored = true 
gg.Size = Vector3.new(0.5,0.5,0.5) 
gg.CFrame = Main.Parent.CFrame 
local mesh = Instance.new("SpecialMesh", gg) 
mesh.MeshId = "http://www.roblox.com/asset/?id=76448940" 
mesh.TextureId = "http://www.roblox.com/asset/?id=76448989" 
mesh.Scale = Vector3.new(0.75,0.75,0.75) 
table.insert(efftable, gg) 
if doublesword == true then 
local gg2 = P:Clone() 
gg2.Name = "SwordEffect2" 
gg2.Parent = Torsoz 
gg2.Anchored = true 
gg2.Size = Vector3.new(0.5,0.5,0.5) 
gg2.CFrame = gg.CFrame * CFrame.new(0,0,-3.25) * CFrame.Angles(0,math.pi,0) 
local mesh = Instance.new("SpecialMesh", gg2) 
mesh.MeshId = "http://www.roblox.com/asset/?id=76448940" 
mesh.TextureId = "http://www.roblox.com/asset/?id=76448989" 
mesh.Scale = Vector3.new(0.75,0.75,0.75) 
table.insert(efftable, gg2) 
end 
end 
end 
end 
for i, v in pairs(efftable) do 
if v.Transparency > 0.9 then 
efftable[i]:remove() 
efftable[i] = nil 
end 
v.Transparency = v.Transparency + 0.055 
end 
if j ~= nil then 
if j.Transparency > 0.96 then 
plus = false 
j.Transparency = 0.25 
j.Mesh.Scale = Vector3.new(0.75,0.75,0.75) 
j.Mesh.VertexColor = Vector3.new(1,1,1) 
if j2 ~= nil then 
j2.Transparency = 0.25 
j2.Mesh.Scale = Vector3.new(0.75,0.75,0.75) 
j2.Mesh.VertexColor = Vector3.new(1,1,1) 
end 
Spawn(function() wait(0.5) plus = true end)
end 
if plus == true then 
j.Transparency = j.Transparency + 0.045 
j.Mesh.Scale = j.Mesh.Scale + Vector3.new(0.022*2,0.028*2,0.004*2) 
j.Mesh.VertexColor = j.Mesh.VertexColor - Vector3.new(0.1,0.04,0) 
if j2 ~= nil then 
j2.Transparency = j2.Transparency + 0.045 
j2.Mesh.Scale = j2.Mesh.Scale + Vector3.new(0.022*2,0.028*2,0.004*2) 
j2.Mesh.VertexColor = j2.Mesh.VertexColor - Vector3.new(0.1,0.04,0) 
end 
end 
end 

------------------------- Projectiles ------------------------
for i, v in pairs(raytable) do 
if v ~= nil and v.className == "Part" then 
local posz1 = v.CFrame * CFrame.new(0,0,-2.25) 
local ray = Ray.new(posz1.p, posz1.lookVector*-4.5) 
local hitz, enz = workspace:FindPartOnRay(ray, char) 

if hitz ~= nil then 
x = Instance.new("Explosion", workspace) 
x.Position = enz 
raytable[i]:remove() 
raytable[i] = nil 
end 
v.CFrame = v.CFrame - v.CFrame.lookVector*4.5 

end 
end 


wait() 
end 
end))
end}
module[4] = {"SpyKnife",function()
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
local p=function(f) pcall(f) end
local add={
	Part=function(par, a, c, col, t, s, cf)
		local p=Instance.new("Part", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or CFrame.new()  end)
		return p
	end,	
	Wedge=function(par, a, c, col, t, s, cf)
		local p=Instance.new("WedgePart", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or CFrame.new()  end)
		return p
	end,
	Gui=function(ins, par, bc, bg, tc, fs, text, t, s, pos)
		local g=Instance.new(ins, par) ypcall(function() g.BorderColor=BrickColor.new(bc) g.BackgroundColor=BrickColor.new(bg) g.TextColor=BrickColor.new(tc) g.FontSize=fs g.Font="ArialBold" g.Text=text g.Transparency=t g.Size=s g.Position=pos  end)
		return g
	end,
	Weld=function(par, p1, cf)
		local w=Instance.new("Weld", par) pcall(function() w.Part0=w.Parent or par w.Part1=p1 w.C1=cf or CFrame.new() end)
		return w
	end,
	Mesh=function(ins, par, s, of, t)
		local m=Instance.new(ins, par) pcall(function() m.Scale=s or Vector3.new() m.Offset=of or Vector3.new() m.MeshType=t end)
		return m
	end
}
local scriptname="Spy" --Name here
pcall(function() player.Backpack[scriptname]:remove() char[scriptname]:remove() char["Objects"]:remove() player.PlayerGui[scriptname]:remove()  end)
local model=Instance.new("Model", char) model.Name="Objects"
local modelB=Instance.new("Model", char) modelB.Name=scriptname
local gui=Instance.new("ScreenGui", player.PlayerGui) gui.Name=scriptname
local bin=Instance.new("HopperBin", player.Backpack) bin.Name=scriptname
local skincolor="Really black"
local body={}
local animate={}
local obj={}
function createParts()
	--==PARTS==--
	body.Torso=add.Part(model, false, false, skincolor, 1, Vector3.new(2, 2, 1), nil)
	body.ArmLeft, body.ArmRight=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	body.LegLeft, body.LegRight=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	--==WELDS==--
	body.TorsoW=add.Weld(body.Torso, torso, nil)
	body.ArmLeftW, body.ArmRightW=add.Weld(body.ArmLeft, body.Torso, CFrame.new(-1.5, .5, 0)), add.Weld(body.ArmRight, body.Torso, CFrame.new(1.5, .5, 0))
	body.LegLeftW, body.LegRightW=add.Weld(body.LegLeft, body.Torso, CFrame.new(-.5, -1.5, 0)), add.Weld(body.LegRight, body.Torso, CFrame.new(.5, -1.5, 0))
	--==MESHES==--
	add.Weld(arm.Left, body.ArmLeft, CFrame.new(0, -.5, 0))
	add.Weld(arm.Right, body.ArmRight, CFrame.new(0, -.5, 0))
	--add.Weld(leg.Left, body.LegLeft, CFrame.new(0, -.5, 0))
	--add.Weld(leg.Right, body.LegRight, CFrame.new(0, -.5, 0))
	---------------------------------------------------------------------------------------
	animate={
		["Torso"]=function(cf) body.Torso.Transparency=0 torso.Transparency=1
			body.TorsoW.C1=cf
		end;
		["ArmLeft"]=function(cf)
			body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*cf
		end;
		["ArmRight"]=function(cf)
			body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*cf
		end;
		["LegLeft"]=function(cf)
			body.LegLeftW.C1=CFrame.new(-.5, -1.5, 0)*cf
		end;
		["LegRight"]=function(cf)
			body.LegRightW.C1=CFrame.new(.5, -1.5, 0)*cf
		end;
	}
	--==Objects==--
	obj.HandleBack=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.2, 1, .2), nil)
	obj.HandleBackW=add.Weld(obj.HandleBack, body.ArmRight, CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, 0))
	obj.EdgeBot=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.2, .2, .2), nil)
	obj.EdgeBotM=add.Mesh("CylinderMesh", obj.EdgeBot, Vector3.new(1, 1, 1), nil, nil)
	obj.EdgeBotW=add.Weld(obj.EdgeBot, obj.HandleBack, CFrame.new(0, -.5, 0)*CFrame.Angles(math.rad(90), 0, math.rad(90)))
	obj.EdgeTop=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.2, .2, .2), nil)
	obj.EdgeTopM=add.Mesh("CylinderMesh", obj.EdgeTop, Vector3.new(1, 1, 1), nil, nil)
	obj.EdgeTopW=add.Weld(obj.EdgeTop, obj.HandleBack, CFrame.new(0, .5, 0)*CFrame.Angles(math.rad(90), 0, math.rad(90)))
	
	obj.HandleFor=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.2, 1, .2), nil)
	obj.HandleForW=add.Weld(obj.HandleFor, obj.HandleBack, CFrame.new(0, 0, -.2)*CFrame.Angles(0, 0, 0))
	obj.EdgeBot=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.2, .2, .2), nil)
	obj.EdgeBotM=add.Mesh("CylinderMesh", obj.EdgeBot, Vector3.new(1, 1, 1), nil, nil)
	obj.EdgeBotW=add.Weld(obj.EdgeBot, obj.HandleFor, CFrame.new(0, -.5, 0)*CFrame.Angles(math.rad(90), 0, math.rad(90)))
	obj.EdgeTop=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.2, .2, .2), nil)
	obj.EdgeTopM=add.Mesh("CylinderMesh", obj.EdgeTop, Vector3.new(1, 1, 1), nil, nil)
	obj.EdgeTopW=add.Weld(obj.EdgeTop, obj.HandleFor, CFrame.new(0, .5, 0)*CFrame.Angles(math.rad(90), 0, math.rad(90)))

	obj.Blade=add.Part(modelB, false, false, "Mid gray", 0, Vector3.new(.2, .8, .2), nil)
	obj.BladeM=add.Mesh("BlockMesh", obj.Blade, Vector3.new(.5, 1, 1), nil, nil)
	obj.BladeW=add.Weld(obj.Blade, obj.HandleBack, CFrame.new(0, .9, -.1))
	obj.Point=add.Part(modelB, false, false, "Mid gray", 0, Vector3.new(.2, .4, .2), nil)
	obj.PointM=add.Mesh("SpecialMesh", obj.Point, Vector3.new(.5, 1, .5), nil, "Wedge")
	obj.PointW=add.Weld(obj.Point, obj.Blade, CFrame.new(0, .6, .05)*CFrame.Angles(0, math.rad(180), 0))
	obj.Point2=add.Part(modelB, false, false, "Mid gray", 0, Vector3.new(.2, .4, .2), nil)
	obj.Point2M=add.Mesh("SpecialMesh", obj.Point2, Vector3.new(.5, 1, .5), nil, "Wedge")
	obj.Point2W=add.Weld(obj.Point2, obj.Blade, CFrame.new(0, .6, -.05))
end
function removeParts()
	p(function()
		for i, v in pairs(model:children()) do v:remove() end	for i, v in pairs(modelB:children()) do v:remove() end	for i, v in pairs(char:children()) do v.Transparency=0 end
	end)
end
function play(id, pitch)
	c(function()
		local sound=Instance.new("Sound", torso)
		sound.Pitch=pitch
		sound.Volume=1
		sound.SoundId=id
		sound:play()
		wait(1)
		sound:remove()
	end)
end

--Variables--
local trailDeb=false
local using=false
local combo=1
local onStab=false
local keyDeb=false
local switch=false
local switch2=false
local keyDeb2=false
local hitDeb=false
local dmg=math.random(5, 10)
local speed=32

local attackLabel=add.Gui("TextLabel", gui, "Really black", "Really black", "White", "Size18", "Invisible(Q)", 0, UDim2.new(0, 150, 0, 50), UDim2.new(0, 0, 0, 150))
local attackLabel2=add.Gui("TextLabel", attackLabel, "Really black", "Really black", "White", "Size18", "Disguise(E)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))

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
function trail(pos, cf, col)
	c(function()
		local old=(pos.CFrame*cf).p
		while trailDeb==true do
			wait()
			local new=(pos.CFrame*cf).p
			local mag=(old-new).magnitude
			local dis=(old+new)/2
			local trail=add.Part(workspace, true, false, col, 0, Vector3.new(.2, mag, .2), CFrame.new(dis, new)*CFrame.Angles(math.pi/2, 0, 0)) trail.Name="Trail"
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

function running() while using==true do wait() end
	animate.ArmLeft(CFrame.Angles(-math.rad(45), 0, -math.rad(15)))
	animate.ArmRight(CFrame.Angles(math.rad(45), 0, math.rad(15)))
	obj.HandleBackW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, 0)
end

function hit(h)
	if using==true then
		if switch==false then
			if onStab==false and h.Parent:findFirstChild("Humanoid") and h.Parent~=char and hitDeb==false then hitDeb=true print("NormalStab") play("http://www.roblox.com/asset/?id=30715280", 1)
				local hHuman=h.Parent:findFirstChild("Humanoid")
				hHuman.Health=hHuman.Health-dmg
				local fakeM=Instance.new("Model", workspace) fakeM.Name=dmg
				local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
				local effect=add.Part(fakeM, false, false, "Bright red", 0, Vector3.new(1, 1, 1), h.CFrame) effect.Name="Head"
				local fakeMesh=add.Mesh("CylinderMesh", effect, Vector3.new(1, .5, 1), nil, nil)
				local bp=Instance.new("BodyPosition", effect) bp.maxForce=Vector3.new(math.huge, math.huge, math.huge) bp.position=h.Position+Vector3.new(0, 4, 0)
				game.Debris:addItem(fakeM, 2)	
				wait(1)
				hitDeb=false
			end
			if onStab==true and h.Parent~=char and h.Parent:findFirstChild("Humanoid") and hitDeb==false then hitDeb=true print("NormalStab") play("http://www.roblox.com/asset/?id=30715280", 1)
				h.Parent:breakJoints()
				local fakeM=Instance.new("Model", workspace) fakeM.Name="BACKSTABBED"
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
end

function findStab()
	while using==false do wait()
		--pcall(function()
			local nTorso=nearTorso(torso.CFrame.p, 3)
			if nTorso then
				local offSet=nTorso.CFrame:toObjectSpace(torso.CFrame)
				if offSet.z>0 then
					onStab=true
					animate.ArmRight(CFrame.Angles(math.rad(135), 0, 0))
					obj.HandleBackW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(math.rad(90), 0, 0)
				else
					onStab=false
					running()
				end
			else
				onStab=false
				running()
			end
		--end)
	end
end

function attack() combo=combo+1
	if using==false then using=true for i, v in pairs(modelB:children()) do v.Touched:connect(hit) end
		if combo==1 and onStab==false then play("rbxasset://sounds/swordslash.wav", .5)
			--[[trailDeb=true
			trail(obj.Blade, CFrame.new(0, 1, 0), "White")]]
			for i=0, 1, .2 do wait()
				animate.Torso(CFrame.Angles(0, math.rad(45)*i, 0))
				animate.ArmRight(CFrame.Angles(math.rad(90)*i, 0, 0))
				obj.HandleBackW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, math.rad(45)*i)
			end
			for i=1, 0, -.2 do wait()
				animate.Torso(CFrame.Angles(0, math.rad(45)*i, 0))
				animate.ArmRight(CFrame.Angles(math.rad(90)*i, 0, 0))
				obj.HandleBackW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, math.rad(45)*i)
			end
			if combo>1 and onStab==false then combo=2 play("rbxasset://sounds/swordslash.wav", .5)
				for i=0, 1, .2 do wait() 
					animate.Torso(CFrame.Angles(0, math.rad(45)*i, 0))
					animate.ArmRight(CFrame.Angles(math.rad(90)*i, 0, math.rad(45)*i))
					obj.HandleBackW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90+(90*i)), 0, 0)
				end
				for i=1, 0, -.2 do wait() 
					animate.Torso(CFrame.Angles(0, math.rad(45)*i, 0))
					animate.ArmRight(CFrame.Angles(math.rad(90)*i, 0, math.rad(45)*i))
					obj.HandleBackW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90+(90*i)), 0, 0)
				end
			end
		end
		if onStab==true then
			for i=0, 1, .2 do wait()
				animate.ArmRight(CFrame.Angles(math.rad(135-(45*i)), 0, 0))
				obj.HandleBackW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(math.rad(90), 0, 0)
			end
			onStab=false
		end
		using=false
		--trailDeb=false
		combo=0
		body.Torso.Transparency=1 torso.Transparency=0
		running()
		findStab()
	end
end

bin.Selected:connect(function(mouse) createParts()
	human.WalkSpeed=speed
	running() using=true
	for i=1, 4 do wait()
		obj.HandleBackW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, math.rad(45)*i)
	end using=false
	mouse.Button1Down:connect(attack)
	mouse.KeyDown:connect(function(key) 
		local key=key:lower()
		--INVISBLE--
		if key=="q" and keyDeb==false and switch==false and using==false then keyDeb=true switch=true using=true
			attackLabel.Text="Visible(Q)" print("1") play("http://www.roblox.com/asset/?id=2767090", 1)
			pcall(function() char.Sound.Disabled=true end)
			for i, v in pairs(char:children()) do
				c(function()
					for i=0, 1, .2 do wait()
						pcall(function()
							c(function() if v.Head~=nil then head.Transparency=1 end end)
							v.Transparency=i
						end)
						pcall(function() v.Handle.Transparency=i end)
						pcall(function() v.face.Transparency=i end)
						pcall(function() v.roblox.Transparency=i end)
						pcall(function() v.Head.Transparency=i end)
					end
				end)
			end
			for i, v in pairs(modelB:children()) do
				c(function()
					for i=0, 1, .2 do wait()
						pcall(function()
							v.Transparency=i
						end)
						pcall(function() v.Handle.Transparency=i end)
						pcall(function() v.face.Transparency=i end)
					end
				end)
			end
			wait(.5)
			keyDeb=false
		elseif key=="q" and keyDeb==false and switch==true and using==true then keyDeb=true switch=false using=false
			attackLabel.Text="Invisible(Q)" print("2") play("http://www.roblox.com/asset/?id=2767090", 1)
			pcall(function() char.Sound.Disabled=false end)
			for i, v in pairs(char:children()) do
				c(function()
					for i=1, 0, -.2 do wait()
						pcall(function()
							c(function() if v.Head~=nil then head.Transparency=1 end end)
							v.Transparency=i
						end)
						pcall(function() v.Handle.Transparency=i end)
						pcall(function() v.face.Transparency=i end)
						pcall(function() v.roblox.Transparency=i end)
						pcall(function() v.Head.Transparency=i end)
					end
				end)
			end
			for i, v in pairs(modelB:children()) do
				c(function()
					for i=1, 0, -.2 do wait()
						pcall(function()
							v.Transparency=i
						end)
						pcall(function() v.Handle.Transparency=i end)
						pcall(function() v.face.Transparency=i end)
					end
				end)
			end
			--findStab()
			wait(.5)
			keyDeb=false
		end
		--DISGUISE MENU--
		local xSpace=0
		if key=="e" and keyDeb2==false and switch2==false then keyDeb2=true switch2=true
			attackLabel2.Text="Menu:"
			for i, v in pairs(game.Players:children()) do
				if v~=player then xSpace=xSpace+1
					local playersLabel=add.Gui("TextButton", attackLabel2, "Really black", "Really black", "Bright red", "Size18", v.Name, 0, UDim2.new(1, 0, 1, 0), UDim2.new(xSpace, 0, 0, 0))
					playersLabel.MouseButton1Click:connect(function() play("http://www.roblox.com/asset/?id=2767090", 1)
						pcall(function()
							for i, v in pairs(char:children()) do
								pcall(function() v.face:remove() end)
								pcall(function() v.roblox:remove() end)
								pcall(function() v.Head:remove() end)
								if v:IsA("BodyColors") then v:remove() end
								if v:IsA("Hat") then v:remove() end
								if v:IsA("ShirtGraphic") then v:remove() end
								if v:IsA("Pants") then v:remove() end
								if v:IsA("Shirt") then v:remove() end
								if v:IsA("CharacterMesh") then v:remove() end
								if v:IsA("BodyColors") then v:remove() end
							end
							for i, v in pairs(game.Players[playersLabel.Text].Character:children()) do
								pcall(function() local cloned=v.face:clone() cloned.Parent=head if switch==true then pcall(function() cloned.Transparency=1 end) end end)
								pcall(function() v.roblox:clone().Parent=torso end)
								if v:IsA("BodyColors") then v:clone().Parent=char end
								if v:IsA("Hat") then local cloned=v:clone() cloned.Parent=char if switch==true then pcall(function() cloned.Handle.Transparency=1 end) end end
								if v:IsA("ShirtGraphic") then v:clone().Parent=char end
								if v:IsA("Pants") then v:clone().Parent=char end
								if v:IsA("Shirt") then v:clone().Parent=char end
								if v:IsA("CharacterMesh") then v:clone().Parent=char end
								if v:IsA("BodyColors") then v:clone().Parent=char end
							end
							head.Transparency=1
							local fakeModel=Instance.new("Model", char) fakeModel.Name=playersLabel.Text
							local fakeHumanoid=Instance.new("Humanoid", fakeModel) fakeHumanoid.Health=100 fakeHumanoid.MaxHealth=100
							local fakeHead=add.Part(fakeModel, false, false, game.Players[playersLabel.Text].Character.Head.Color, 0, Vector3.new(1, 1, 1), nil) fakeHead.Name="Head"
							if switch==true then fakeHead.Transparency=1 end
							local fakeHeadM=add.Mesh("SpecialMesh", fakeHead, Vector3.new(1.25, 1.25, 1.25), nil, "Head")
							local fakeHeadW=add.Weld(fakeHead, torso, CFrame.new(0, 1.5, 0))
						end)
					end)
				end
			end
			keyDeb2=false
		elseif key=="e" and keyDeb2==false and switch2==true then keyDeb2=true switch2=false
			attackLabel2.Text="Disguise(E)"
			for i, v in pairs(attackLabel2:children()) do
				pcall(function()v:remove()end)
			end
			keyDeb2=false
		end
	end)
	findStab()
end)
bin.Deselected:connect(function()
	for i=4, 0, -1 do wait()
		obj.HandleBackW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, math.rad(45)*i)
	end
switch2=false using=false for i, v in pairs(attackLabel2:children()) do pcall(function()v:remove()end) end removeParts() end)

--mediafire gtfo password
end}
module[5] = {"Staff Of Disasterous",function()
Modelname = "Staff Of Disasterous Explosions"
Toolname = "Staff Of Disasterous Explosions"
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
local Selected = false
local inuse = false
local mousedown = false
local Character = nil

function Execute(f)
        return coroutine.resume(coroutine.create(function()f()end))
end

function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)
	local p = Instance.new("Part")
	p.formFactor = "Custom"
	p.Anchored = Anchor
	p.CanCollide = Collide
	p.Transparency = Tran
	p.Reflectance = Ref
	p.BrickColor = BrickColor.new(Color)
	p.Material = 272
	
		for _, Surf in pairs(Surfaces) do
			p[Surf] = "Smooth"
		end
		
	p.Size = Vector3.new(X, Y, Z)
	
		if Break then
			p:BreakJoints()
		else 
			p:MakeJoints() 
		end
		
	p.Parent = Parent
	p.Locked = true
		
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

Add = {
	Sphere = function(P)
		local m = Instance.new("SpecialMesh",P)
		m.MeshType = "Sphere"
		return m
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


local Model,handle,toptip,bottip,HB,HW,TH,HBW,Crystal
local player = game.Players.LocalPlayer
local StaffModel = nil
local Rarm = nil
local RABrick, RABW, RAW

function GenerateModel(Parent,Torso,Rarm)
	Model = Instance.new("Model")
	Model.Name = Modelname
	handle = Part(Model, false, false, 0, 0, "Brown", 0.3, 4.4, 0.3, true)
	handle.Name = "Handle"
	Instance.new("CylinderMesh",handle)
	toptip = Part(Model, false, false, 0, 0, "Brown", 0.6, 0.2, 0.6, true)
	Weld(handle, toptip, 0, -2, 0, 0, 0, 0)
	Instance.new("CylinderMesh",toptip)
	Crystal = Part(Model, false, false, 0, 0.2, "Bright blue", 0.5, 0.75, 0.5, true)
	local w1 = Weld(handle, Crystal, 0, -2.2, 0, 0, 0, 0)
	Add.Mesh(Crystal, "http://www.roblox.com/asset/?id=9756362", 0.5, 0.75, 0.5)
	Crystal.Reflectance = 0.25
	Crystal.Transparency = 0.25
	local BotTip = Part(Model, false, false, 0, 0, "Brown", 0.2, 1.5, 0.2, true)
	local w1 = Weld(handle, BotTip, 0, 2.15, 0, 0, 0, 0)
	Add.Mesh(BotTip, "http://www.roblox.com/asset/?id=9756362", 0.4, 0.7, 0.4)
	Model.Parent = Parent
	StaffModel = Model
	
	RABrick = Part(Model, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
	RABW = Weld(Torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
	RAW = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
	
	HB = Part(Model, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
	HBW = Weld(Rarm, HB, 0, 1, -1.5, 0, 0, 0)
	HW = Weld(HB, nil, 0, -1.3, 0, math.pi/2, 0, 0)
	TH = Weld(Torso, nil, -0.6, 0.1, 0, 0, math.pi/2, math.rad(-140))
	TH.Part1 = handle
	
end

local tool = nil
function GenerateTool()
	if player:IsA("Player") then
		if player.Character ~= nil then
			if player.Character:FindFirstChild("Torso") ~= nil then
				if player.Character:FindFirstChild(Modelname) == nil then
					if player.Character:FindFirstChild("Right Arm") then
						GenerateModel(player.Character,player.Character:FindFirstChild("Torso"),player.Character:FindFirstChild("Right Arm"))
						Rarm = player.Character:FindFirstChild("Right Arm")
						Character = player.Character
					end
				else
					StaffModel = player.Character:FindFirstChild(Modelname)
				end
				if player.Character:FindFirstChild(Modelname) ~= nil then
					if player.Backpack:FindFirstChild(Toolname) == nil then
					tool = Instance.new("HopperBin",player.Backpack)
					tool.Name = Toolname
					wait()
					script.Parent = tool
					end
				end
			end
		end
	end
end

function ToolAnimSelect()
	RAW.Part1 = Rarm
	local ah = CFrame.Angles(0, 0, math.rad(90))
	RAW.Part1 = Rarm
	for i = 0, 270, 270/5 do
		RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
		wait()
	end
	HW.C0 = ah
	TH.Part1 = nil
	HW.Part1 = handle
	for i = 270, 70, -200/5 do
		RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
		wait()
	end
	RAW.C0 = CFrame.new(0, 0, -70/500) * CFrame.Angles(70,0,0)
	inuse = false
end

function ToolAnimUnSelect()
	RAW.Part1 = Rarm
	local ah = CFrame.Angles(0, 0, math.rad(90))
		for i = 70, 270, 200/5 do
		RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
		wait()
	end
	HW.C0 = ah
	HW.Part1 = nil
	TH.Part1 = handle
	for i = 270, 0, -270/5 do
		RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
	wait()
	end
	RAW.Part1 = nil
	inuse = false
end

function prop(part, parent, collide, tran, ref, x, y, z, color)
	part.Parent = parent
	part.formFactor = 3
	part.Anchored = true
	part.CanCollide = collide
	part.Transparency = tran
	part.Reflectance = ref
	part.Material = 288
	part.Size = Vector3.new(x,y,z)
	part.BrickColor = BrickColor.new(color)
	part.TopSurface = 0
	part.BottomSurface = 0
	part:BreakJoints()
end

local a,b,c -- explosion
function Selected(mouse)
	if inuse == false then
		inuse = true
		ToolAnimSelect()
		Selected = true
	end
	if Selected == true then
		mouse.Button1Down:connect(function()
				mousedown = true
			while mousedown do
				if Character:FindFirstChild("Humanoid") ~= nil then
					if Character:FindFirstChild("Humanoid").Health > 0 then
						if Character:FindFirstChild("ForceField") == nil then
							c = Instance.new("ForceField",Character)
						end
						b = Instance.new("Part")
						prop(b, Character, false, 0.4, 0.25, 0.05, 0.05, (Crystal.Position - mouse.hit.p).magnitude, "Cyan")
						b.CFrame = CFrame.new(Crystal.Position, mouse.hit.p) * CFrame.new(0,0,-b.Size.Z/2)
						local ex = Instance.new("Explosion")
						ex.Parent = Character
						ex.DestroyJointRadiusPercent = 1
						ex.ExplosionType = 2
						ex.Position = mouse.hit.p
						ex.BlastRadius = 5
						ex.BlastPressure = 100000
						game:GetService("Debris"):AddItem(b,.25)
					end
				end
			wait(0.1)

			end
		end)
		mouse.Button1Up:connect(function()
			if Character:FindFirstChild("ForceField") ~= nil then
				game:GetService("Debris"):AddItem(Character:FindFirstChild("ForceField"),.5)
			end
			mousedown = false
		end)
	end
end




function UnSelected()
	if inuse == false then
			if Character:FindFirstChild("ForceField") ~= nil then
				game:GetService("Debris"):AddItem(Character:FindFirstChild("ForceField"),.5)
			end
		mousedown = false
		inuse = true
		ToolAnimUnSelect()
		HW.Part1 = nil
		TH.Part1 = handle
		Selected = false
	end
end

GenerateTool()

if tool ~= nil then
	tool.Selected:connect(Selected)
	tool.Deselected:connect(UnSelected)
end

end}
module[6] = {"Steampunk Wings",function()

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
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles

act = {key = {}}
hold=false
MMouse=nil
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
grabbed=false
speed=1
jumpcount=0
doinganimation=false
moveforward=false
movebackward=false
moveleft=false
moveright=false
doflying=false
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW , RWL, LWL = it("Weld"), it("Weld"), it("Weld"), it("Weld")
--what anim 
anim = "none" 

bod = it("BodyPosition")
bod.position = Torso.Position 
bod.maxForce = vt(4e+080, 4e+080, 4e+080) 

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp = it("Part")
fp.formFactor = formfactor 
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = false 
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

if Character:findFirstChild("Steampunk Wings",true) ~= nil then 
Character:findFirstChild("Steampunk Wings",true).Parent = nil 
end 

local modelzorz = it("Model") 
modelzorz.Name = "Steampunk Wings"
modelzorz.Parent = Character 

local part1 = part(1,modelzorz,0,0,BrickColor.new("Br. yellowish green"),"Part1",vt(1,1,1))
local part2 = part(1,modelzorz,0,0,BrickColor.new("Dark green"),"Part2",vt(1,1,1))
local part3 = part(1,modelzorz,0,0,Torso.BrickColor,"Part3",vt(1,1,1))
local part4 = part(1,modelzorz,0,0,BrickColor.new("Br. yellowish green"),"Part4",vt(1,1,1))
local part5 = part(1,modelzorz,0,0,BrickColor.new("Br. yellowish green"),"Part5",vt(1,1,1))
local part6 = part(1,modelzorz,0,0,BrickColor.new("Br. yellowish green"),"Part6",vt(1,1,1))
local part7 = part(1,modelzorz,0,0,BrickColor.new("Br. yellowish green"),"Part7",vt(1,1,1))
local part8 = part(1,modelzorz,0,0,BrickColor.new("Br. yellowish green"),"Part8",vt(1,1,1))
local part9 = part(1,modelzorz,0,0,BrickColor.new("Bright green"),"Part9",vt(1,1,1))
local part10 = part(1,modelzorz,0,0,BrickColor.new("White"),"Part10",vt(1,1,1))
local part11 = part(1,modelzorz,0,1,BrickColor.new("Black"),"Part11",vt(1,1,1))
local part12 = part(1,modelzorz,0,0,BrickColor.new("White"),"Part12",vt(1,1,1))
local part13 = part(1,modelzorz,0,0,BrickColor.new("White"),"Part13",vt(1,1,1))
local part14 = part(1,modelzorz,0,1,BrickColor.new("Black"),"Part14",vt(1,1,1))
local part15 = part(1,modelzorz,0,0,BrickColor.new("White"),"Part15",vt(1,1,1))

local mesh1 = mesh("BlockMesh",part1,"","",vt(0,0,0),vt(2.1,0.5,1.1))
local mesh2 = mesh("BlockMesh",part2,"","",vt(0,0,0),vt(1.3,1.3,0.8))
local mesh3 = mesh("CylinderMesh",part3,"","",vt(0,0,0),vt(0.9,0.3,0.9))
local mesh4 = mesh("BlockMesh",part4,"","",vt(0,0,0),vt(0.3,1.6,0.3))
local mesh5 = mesh("BlockMesh",part5,"","",vt(0,0,0),vt(0.3,1.6,0.3))
local mesh6 = mesh("BlockMesh",part6,"","",vt(0,0,0),vt(0.3,1.8,0.3))
local mesh7 = mesh("BlockMesh",part7,"","",vt(0,0,0),vt(0.3,2,0.3))
local mesh8 = mesh("BlockMesh",part8,"","",vt(0,0,0),vt(0.3,2,0.3))
local mesh9 = mesh("BlockMesh",part9,"","",vt(0,0,0),vt(0.6,2.5,0.6))
local mesh10 = mesh("BlockMesh",part10,"","",vt(0,0,0),vt(0.1,1.5,2))
local mesh11 = mesh("BlockMesh",part11,"","",vt(0,0,0),vt(0.5,0.5,0.5))
local mesh12 = mesh("SpecialMesh",part12,"Wedge","",vt(0,0,0),vt(0.1,1.5,2))
local mesh13 = mesh("BlockMesh",part13,"","",vt(0,0,0),vt(0.1,1.5,2))
local mesh14 = mesh("BlockMesh",part14,"","",vt(0,0,0),vt(0.5,0.5,0.5))
local mesh15 = mesh("SpecialMesh",part15,"Wedge","",vt(0,0,0),vt(0.1,1.5,2))

local weld1 = it("Weld") 
weld1.Parent = part1
weld1.Part0 = part1 
weld1.Part1 = Torso
weld1.C0 = euler(0,0,0) * cf(0,0,0) 
local weld2 = it("Weld") 
weld2.Parent = part2
weld2.Part0 = part2
weld2.Part1 = part1
weld2.C0 = euler(0,0,0) * cf(0,0,-0.9) 
local weld3 = it("Weld") 
weld3.Parent = part3
weld3.Part0 = part3
weld3.Part1 = part2
weld3.C0 = euler(1.57,0,0) * cf(0,0,-0.3) 
local weld4 = it("Weld") 
weld4.Parent = part4
weld4.Part0 = part4
weld4.Part1 = part2
weld4.C0 = euler(-0.7,0,0) * cf(0,-0.8,-0.9) 
local weld5 = it("Weld") 
weld5.Parent = part5
weld5.Part0 = part5
weld5.Part1 = part2
weld5.C0 = euler(-1.1,0,0) * cf(0,-1.1,-0.6) 
local weld6 = it("Weld") 
weld6.Parent = part6
weld6.Part0 = part6
weld6.Part1 = part2
weld6.C0 = euler(0,0,1.57) * cf(0,-0.5,0) 
local weld7 = it("Weld") 
weld7.Parent = part7
weld7.Part0 = part7
weld7.Part1 = part6
weld7.C0 = euler(0,0,-0.5) * cf(0.6,-0.5,-0.8) 
weld7.C1 = euler(1,0,0)
local weld8 = it("Weld") 
weld8.Parent = part8
weld8.Part0 = part8
weld8.Part1 = part6
weld8.C0 = euler(0,0,0.5) * cf(0.6,0.5,-0.8) 
weld8.C1 = euler(-1,0,0)
local weld9 = it("Weld") 
weld9.Parent = part9
weld9.Part0 = part9
weld9.Part1 = part2
weld9.C0 = euler(-1.4,0,0) * cf(0,-1.5,-1.6) 
local weld10 = it("Weld") 
weld10.Parent = part10
weld10.Part0 = part10
weld10.Part1 = part9
weld10.C0 = cf(0,-0.59,1.2) * euler(0,1.57,0)
weld10.C1 = euler(0,-0.3,0)
local weld11 = it("Weld") 
weld11.Parent = part11
weld11.Part0 = part11
weld11.Part1 = part10
weld11.C0 = cf(0,0,1) * euler(0,0,0)
local weld12 = it("Weld") 
weld12.Parent = part12
weld12.Part0 = part12
weld12.Part1 = part11
weld12.C0 = cf(0,0,1) * euler(0,0,3.14)
weld12.C1 = euler(0,-0.5,0)
local weld13 = it("Weld") 
weld13.Parent = part13
weld13.Part0 = part13
weld13.Part1 = part9
weld13.C0 = cf(0,-0.59,-1.2) * euler(0,1.57,0)
weld13.C1 = euler(0,0.3,0)
local weld14 = it("Weld") 
weld14.Parent = part14
weld14.Part0 = part14
weld14.Part1 = part13
weld14.C0 = cf(0,0,-1) * euler(0,0,0)
local weld15 = it("Weld") 
weld15.Parent = part15
weld15.Part0 = part15
weld15.Part1 = part14
weld15.C0 = cf(0,0,1) * euler(0,3.14,3.14)
weld15.C1 = euler(0,0.5,0)

local refpart = part(1,modelzorz,0,0,BrickColor.new("White"),"ReferencePart",vt(1,1,1))

derp=0
for i=1,4 do
local part = part(1,modelzorz,0,0,Torso.BrickColor,"PartGear",vt(1,1,1))
local mesh = mesh("BlockMesh",part,"","",vt(0,0,0),vt(1.1,0.3,0.2))
local weld = it("Weld") 
weld.Parent = part
weld.Part0 = part
weld.Part1 = part3
weld.C0 = euler(0,derp,0) * cf(0,0,0) 
derp = derp + math.rad(45) 
end
derp=0
for i=1,8 do
local part = part(1,modelzorz,0,0,Torso.BrickColor,"Part",vt(1,1,1))
local mesh = mesh("BlockMesh",part,"","",vt(0,0,0),vt(0.61,0.1,0.61))
local weld = it("Weld") 
weld.Parent = part
weld.Part0 = part
weld.Part1 = part9
weld.C0 = euler(0,0,0) * cf(0,1.3-derp,0) 
derp = derp + 0.3
end
derp=0
for i=1,7 do
local part = part(1,modelzorz,0,0,BrickColor.new("Black"),"Part",vt(1,1,1))
local mesh = mesh("CylinderMesh",part,"","",vt(0,0,0),vt(0.2,0.1,0.2))
local weld = it("Weld") 
weld.Parent = part
weld.Part0 = part
weld.Part1 = part10
weld.C0 = euler(0,0,1.57) * cf(0,-0.8,-1+derp) 
derp = derp + 0.3
end
derp=0
for i=1,5 do
local part = part(1,modelzorz,0,0,BrickColor.new("Black"),"Part",vt(1,1,1))
local mesh = mesh("CylinderMesh",part,"","",vt(0,0,0),vt(0.2,0.1,0.2))
local weld = it("Weld") 
weld.Parent = part
weld.Part0 = part
weld.Part1 = part12
weld.C0 = euler(0,0,1.57) * cf(0,0.8,-1+0.3+derp) 
derp = derp + 0.3
end
derp=0
for i=1,7 do
local part = part(1,modelzorz,0,0,BrickColor.new("Black"),"Part",vt(1,1,1))
local mesh = mesh("CylinderMesh",part,"","",vt(0,0,0),vt(0.2,0.1,0.2))
local weld = it("Weld") 
weld.Parent = part
weld.Part0 = part
weld.Part1 = part13
weld.C0 = euler(0,0,1.57) * cf(0,-0.8,-1+derp) 
derp = derp + 0.3
end
derp=0
for i=1,5 do
local part = part(1,modelzorz,0,0,BrickColor.new("Black"),"Part",vt(1,1,1))
local mesh = mesh("CylinderMesh",part,"","",vt(0,0,0),vt(0.2,0.1,0.2))
local weld = it("Weld") 
weld.Parent = part
weld.Part0 = part
weld.Part1 = part15
weld.C0 = euler(0,0,1.57) * cf(0,0.8,-1+0.3+derp) 
derp = derp + 0.3
end

BP=nil
doflying=false
--[[
bv.velocity = mouse.Hit.lookVector * 40 
bg.cframe = CFrame.new(bg.Parent.Position, mouse.Hit.p) 
bv.Parent = Torso
bf.Parent = Torso
bf.force = Vector3.new(0, 190 * Torso:GetMass(), 0) 
]]
bv = Instance.new("BodyVelocity") 
bv.maxForce = Vector3.new(4e+020, 4e+020, 4e+020) 
bf = Instance.new("BodyForce") 
bf.force = Vector3.new(0, 196 * Torso:GetMass(), 0) 
local bodpos=Instance.new("BodyPosition")
bodpos.maxForce = vt(80000,40000,80000)
bodpos.Name = "BP"
local bg = Instance.new("BodyGyro") 
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bg.P = 2000
m = Player:GetMouse()
m.KeyDown:connect(function(k) 
if k=="w" then
if doflying==true then
moveforward=true
while moveforward==true do
wait()
speed=2
refpart.Parent=modelzorz
refweld=Instance.new("Weld")
refweld.Parent=refpart
refweld.Part0=refpart
refweld.Part1=Torso
refweld.C0=euler(-0.5,0,0)
bv.Parent=Torso
bv.velocity = refpart.CFrame.lookVector*25
--bodpos.position=Torso.CFrame.lookVector
end
end
end
if k=="s" then
if doflying==true then
movebackward=true
while movebackward==true do
wait()
speed=2
refpart.Parent=modelzorz
refweld=Instance.new("Weld")
refweld.Parent=refpart
refweld.Part0=refpart
refweld.Part1=Torso
refweld.C0=euler(0.5,0,0)
bv.Parent=Torso
bv.velocity = refpart.CFrame.lookVector*-25
--bodpos.position=Torso.CFrame.lookVector
end
end
end
if k=="a" then
if doflying==true then
moveleft=true
while moveleft==true do
wait()
speed=2
refpart.Parent=modelzorz
refweld=Instance.new("Weld")
refweld.Parent=refpart
refweld.Part0=refpart
refweld.Part1=Torso
refweld.C0=euler(0,-1.57,0.5)
bv.Parent=Torso
bv.velocity = refpart.CFrame.lookVector*25
--bodpos.position=Torso.CFrame.lookVector
end
end
end
if k=="d" then
if doflying==true then
moveright=true
while moveright==true do
wait()
speed=2
refpart.Parent=modelzorz
refweld=Instance.new("Weld")
refweld.Parent=refpart
refweld.Part0=refpart
refweld.Part1=Torso
refweld.C0=euler(0,1.57,-0.5)
bv.Parent=Torso
bv.velocity = refpart.CFrame.lookVector*25
--bodpos.position=Torso.CFrame.lookVector
end
end
end
if k:byte() == 32 then 
print(doflying)
jumpcount=jumpcount+1
coroutine.resume(coroutine.create(function()
wait(1)
jumpcount=0
end))
if jumpcount==2 then
if doflying==false then
--print("YUNOWORK")
doflying=true
bg.Parent=Torso
bodpos.Parent=Torso
bodpos.position=Torso.Position+vt(0,10,0)
BP=bodpos.position
--print(mouse.Hit.p)
print(bodpos.Parent)
print("FLY PUPA, FLYYYYYYY")
coroutine.resume(coroutine.create(function()
while doflying==true do
wait()
doinganimation=true
for i=0,1,0.1*speed do
wait()
bodpos.position=BP+vt(0,-4*i,0)
weld10.C1 = euler(0,-0.3+0.5*i,0)
weld12.C1 = euler(0,-0.5+0.7*i,0)
weld13.C1 = euler(0,0.3-0.5*i,0)
weld15.C1 = euler(0,0.5-0.7*i,0)
end
for i=0,1,0.2*speed do
wait()
bodpos.position=BP+vt(0,-4-2*i,0)
weld10.C1 = euler(0,-0.3+0.5+0.4*i,0)
weld12.C1 = euler(0,-0.5+0.7+0.6*i,0)
weld13.C1 = euler(0,0.3-0.5-0.4*i,0)
weld15.C1 = euler(0,0.5-0.7-0.6*i,0)
end
for i=0,1,0.2*speed do
wait()
bodpos.position=BP+vt(0,-4-2+7*i,0)
weld10.C1 = euler(0,-0.3+0.5+0.4-1.6*i,0)
weld12.C1 = euler(0,-0.5+0.7+0.6-1.4*i,0)
weld13.C1 = euler(0,0.3-0.5-0.4+1.6*i,0)
weld15.C1 = euler(0,0.5-0.7-0.6+1.4*i,0)
end
for i=0,1,0.1*speed do
wait()
bodpos.position=BP+vt(0,-4-2+7-1*i,0)
weld10.C1 = euler(0,-0.3+0.5+0.4-1.6+0.6*i,0)
weld12.C1 = euler(0,-0.5+0.7+0.6-1.8,0)
weld13.C1 = euler(0,0.3-0.5-0.4+1.6-0.6*i,0)
weld15.C1 = euler(0,0.5-0.7-0.6+1.8,0)
end
doinganimation=false
end
end))
elseif doflying==true then
doflying=false
bg.Parent=nil
bv.Parent = nil
bf.Parent = nil
bodpos.Parent=nil
wait()
while doinganimation==true do
wait()
end
for i=0,1,0.1 do
weld10.C1 = euler(0,-0.3,0)
weld12.C1 = euler(0,-0.5,0)
weld13.C1 = euler(0,0.3,0)
weld15.C1 = euler(0,0.5,0)
wait()
end
end
end
end 
end)
m.KeyUp:connect(function(k)
if k=="w" then
for i=0,1,0.1 do
wait()
speed=1
bodpos.position=Torso.Position
BP=bodpos.position
refpart.Parent=nil
bv.Parent=nil
bv.velocity = Torso.CFrame.lookVector*0
moveforward=false
end
end
if k=="s" then
for i=0,1,0.1 do
wait()
speed=1
bodpos.position=Torso.Position
BP=bodpos.position
refpart.Parent=nil
bv.Parent=nil
bv.velocity = Torso.CFrame.lookVector*0
movebackward=false
end
end
if k=="a" then
for i=0,1,0.1 do
wait()
speed=1
bodpos.position=Torso.Position
BP=bodpos.position
refpart.Parent=nil
bv.Parent=nil
bv.velocity = Torso.CFrame.lookVector*0
moveleft=false
end
end
if k=="d" then
for i=0,1,0.1 do
wait()
speed=1
bodpos.position=Torso.Position
BP=bodpos.position
refpart.Parent=nil
bv.Parent=nil
bv.velocity = Torso.CFrame.lookVector*0
moveright=false
end
end
end)

coroutine.resume(coroutine.create(function()
while true do
wait()
if moveforward==true then
bg.cframe = workspace.CurrentCamera.CoordinateFrame*euler(-0.5,0,0)
elseif movebackward==true then
bg.cframe = workspace.CurrentCamera.CoordinateFrame*euler(0.5,0,0)
elseif moveleft==true then
bg.cframe = workspace.CurrentCamera.CoordinateFrame*euler(0,0,0.5)
elseif moveright==true then
bg.cframe = workspace.CurrentCamera.CoordinateFrame*euler(0,0,-0.5)
else
bg.cframe = workspace.CurrentCamera.CoordinateFrame
end
end
end))

end}
module[7] = {"Storm",function()
ply = game.Players.LocalPlayer
char = ply.Character
torso = char.Torso
 
holding = false
 
legpos = CFrame.new(.5,-1.5,0)
armpos = CFrame.new(1.5,.5,0)
 
ang = CFrame.Angles
cfn = CFrame.new
 
list = {}
 
Arms = {char["Left Arm"],char["Right Arm"]}
Legs = {char["Left Leg"],char["Right Leg"]}
 
track = false
m = Instance.new("Model",char)
 
meshids = {["blast"] = "http://www.roblox.com/asset/?id=20329976", ["penguin"] = "http://www.roblox.com/asset/?id=15853464", ["ring"] = "http://www.roblox.com/asset/?id=3270017",
["spike"] = "http://www.roblox.com/asset/?id=1033714",["cone"] = "http://www.roblox.com/asset/?id=1082802",["crown"] = "http://www.roblox.com/asset/?id=20329976",["arrow"] = "http://www.roblox.com/asset/?id=15886761",
["cloud"] = "http://www.roblox.com/asset/?id=1095708",["mjolnir"] = "http://www.roblox.com/asset/?id=1279013",["diamond"] = "http://www.roblox.com/asset/?id=9756362",["hand"] = "http://www.roblox.com/asset/?id=37241605"}
 
textureids = {["cone"] = "http://www.roblox.com/asset/?id=1082804",["rainbow"] = "http://www.roblox.com/asset/?id=28488599",
["grass"] = "http://www.roblox.com/asset/?id=2861779"}
 
function kill(mouse)
for i,v in pairs(mouse.Target.Parent:GetChildren()) do
if v:IsA("Humanoid") then v.Health = 0
 
local head = v.Parent.Head
bbg = Instance.new("BillboardGui",v.Parent)
bbg.Adornee = head
bbg.Size = UDim2.new(4,0,4,0)
bbg.StudsOffset = Vector3.new(0,6,0)
 
img = Instance.new("ImageLabel",bbg)
img.Size = UDim2.new(1,0,1,0)
img.Image = "rbxassetid://49173398"
img.BackgroundTransparency = 1
 
txtlbl = Instance.new("TextLabel",gui)
txtlbl.Size = UDim2.new(1,0,1,0)
txtlbl.BackgroundTransparency = 1
txtlbl.Text = "PWNED!"
txtlbl.FontSize = 6
txtlbl.TextColor3 = Color3.new(1,0,0)
 
end
end
end
 
 
 
--TOOLS--
T = {["P"] = function(x,y,z,color,transparency,cancollide,anchored)
c = Instance.new("Part",m)
 
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
["W"] = function(part0,part1,x,y,z,rx,ry,rz)
w = Instance.new("Weld",m)
w.Part0,w.Part1 = part0,part1
w.C1 = CFrame.new(x,y,z) * CFrame.Angles(rx,ry,rz)
return w
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
["BP"] = function(parent,position)
local bp = Instance.new("BodyPosition",parent)
bp.maxForce = Vector3.new()*math.huge
bp.position = position
return bp
end
,
["R"] = function(part,x,y,z)
if part == "lleg" then
legw[1].C1 = CFrame.new(.5,-1.5,0)*ang(x,y,z)
elseif part == "rleg" then
legw[2].C1 = CFrame.new(-.5,-1.5,0)*ang(x,y,z)
elseif part == "larm" then
armw[1].C1 = CFrame.new(1.5,.5,0)*ang(x,y,z)
elseif part == "rarm" then
armw[2].C1 = CFrame.new(-1.5,.5,0)*ang(x,y,z)
end
end
,
["Track"] = function(obj,t,lt)
coroutine.resume(coroutine.create(function()
while track do
old = obj.Position
wait()
new = obj.Position
 
mag = (old-new).magnitude
dist = (old+new)/2
 
ray = T.P(t,mag+.2,t,obj.Color,t)
Instance.new("CylinderMesh",ray)
ray.Anchored = true
ray.CanCollide = false
ray.CFrame = CFrame.new(dist,old)*ang(math.pi/2,0,0)
game:GetService("Debris"):AddItem(ray,lt)
end
end)) end,
["Reset"] = function(a)
if a == "all" then
T.R("lleg",0,0,0) T.R("rleg",0,0,0) T.R("rarm",0,0,0) T.R("larm",0,0,0)
else
for i,v in pairs({"lleg","llarm","rarm","rleg"}) do T.R(v,0,0,0) end
end
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
mesh.MeshId = meshids[meshid]
else mesh.MeshType = 3 end
mesh.Scale = Vector3.new(x,y,z)
if meshtexture ~= nil then
mesh.TextureId = textureids[meshtexture]
end
return mesh
end
end
,
["Findplys"] = function(position,radius,toreturn)
 
 
function findfromlist(a)
local found = false
for _,v in pairs(list) do
if v == a then found = true
end
end
return found
end
 
for i,v in pairs(game.Workspace:GetChildren()) do
if v:IsA("Model") and v ~= char then
for _,o in pairs(v:GetChildren()) do
if o:IsA("Humanoid") then
if (o.Torso.Position-position).magnitude < radius then
 
if toreturn == "hum" and findfromlist(o) == false then table.insert(list,o)
elseif toreturn == "char" and findfromlist(o.Parent) == false then table.insert(list,o.Parent)
elseif toreturn == "player" then local ply = game.Players[o.Parent.Name]
if ply ~= nil then table.insert(list,ply) end
end
 
end end end end end return list end
,
["Clearlist"] = function()
for i = 1,#list do
table.remove(list,i)
end
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
["C"] = function(func) coroutine.resume(coroutine.create(func)) end
,
["Lazor"] = function(from,to,size,color,transparency,lt,ball)
mag = (from-to).magnitude
 
p = T.P(size,mag,size,color,transparency,false,true)
p.Name = "Ray"
p.CFrame = (CFrame.new(from,to) * CFrame.new(0,0,-mag/2))* ang(math.pi/2,0,0)
if lt > 0 then
game:GetService("Debris"):AddItem(p,lt)
end
 
if ball ~= nil then
ball.Anchored = true
ball.Parent = p
ball.CFrame = p.CFrame * CFrame.new(0,-mag/2,0)
end
return p
end
}
---------
M = {["R"] = function(a,b) return math.random(a,b) end,
["Cos"] = function(a) return math.cos(a) end,
["Sin"] = function(a) return math.sin(a) end,
["D"] = function(a) return math.rad(a) end
}
 
hold = false
function epicmove(mouse)
 
tbp = T.BP(torso,torso.Position + Vector3.new(0,30,0))
local pos = torso.Position
while (tbp.position-torso.Position).magnitude > 3 do wait() end
 
cloud = T.P(1,1,1,"Earth green",0,false,false)
T.FM(cloud,"cloud",70,70,70)
cloud.Position = torso.Position + Vector3.new(-1000,300,1000)
cbp = T.BP(cloud,pos + Vector3.new(0,100,0))
while (cbp.position-cloud.Position).magnitude > 3 do wait() end
local light = T.P(10,1,10,"New Yeller",.4,false,true)
for i = 1,(cloud.Position.y+pos.y),5 do
wait()
light.Size = Vector3.new(10,i,10)
Instance.new("CylinderMesh",light)
light.CFrame = cfn(cloud.Position) - Vector3.new(0,light.Size.y/2,0)
end
 
r = 30
T.C(function()
for i = 1,360,30 do
local spike = T.P(0,0,0,"White",0,false,true)
T.FM(spike,"spike",6,50,6)
spike.CFrame = cfn(pos) + Vector3.new(math.cos(math.rad(i))*r,0,math.sin(math.rad(i))*r)
spike.CFrame = cfn(spike.CFrame.p,pos-Vector3.new(0,10,0)) * ang(math.pi/2,0,0)
delay(.5,function()
for i = 0,1,.05 do
wait()
spike.Transparency = i
end
spike:Remove()
end)
 
end
 
local part = T.P(1,1,1,"Black",0,false,true)
part.CFrame = cfn(pos)
msh = T.FM(part,"blast",1,1,1)
for i = 1,200,5 do
wait()
msh.Scale = Vector3.new(i,i/2,i)
part.Transparency = i/200
end
part:Remove()
end)
hammer = T.P(5,5,5,"New Yeller",.5,false,false)
hammer.Position = pos
T.FM(hammer,"mjolnir",5,5,5)
bp = T.BP(hammer,pos + Vector3.new(0,20,0))
bg = T.BG(hammer)
r = 5
mpart = T.P(1,1,1,"White",1,false,false)
mw = T.W(mpart,hammer,0,10,0,0,0,0)
 
for i = 1,360,60 do --- Make Diamonds
wait()
part = T.P(1,1,1,"Bright blue",.5,false,false)
part.Parent = hammer
T.FM(part,"diamond",3,10,3)
local w = T.W(part,mpart,math.cos(math.rad(i))*r,0,math.sin(math.rad(i))*r,0,0,0)
end ---
--------------------------------------------
hold = true
mouse.Button1Up:connect(function()
hold = false
hammer:Remove() cloud:Remove() light:Remove() tbp:Remove() ray:Remove()
end)
pos3 = (hammer.CFrame * CFrame.new(0,10,0)).p
ray = T.P(5,mag,5,"White",0,false,true)
 
while hold == true do
wait()
 
local list = T.Findplys(mouse.hit.p,30,"char") ---Findplayers/Damage
if #list > 0 then
for i,v in pairs(list) do 
v:BreakJoints()
end
end
 
if mouse.Target ~= nil then
pos3 = (hammer.CFrame * CFrame.new(0,10,0)).p
local mag = (pos3-mouse.hit.p).magnitude
ray.Size = Vector3.new(5,mag,5)
ray.CFrame = (CFrame.new(pos3,mouse.hit.p)*CFrame.new(0,0,-mag/2)) * ang(math.pi/2,0,0)
 
bg.cframe = mouse.hit * ang(-math.pi/2,0,0)
 
mw.C1 = mw.C1 * ang(0,math.rad(10),0) ---rotate diamonds
 
Instance.new("CylinderMesh",ray)
 
T.C(function() ---coroutine start
local ball = T.P(3,3,3,"Bright red",1,false,true)
ball.CFrame = cfn(ray.CFrame * cfn(0,-ray.Size.y/2,0).p)
Instance.new("SpecialMesh",ball).MeshType = 3
 
for i = 1,360,60 do
local part = T.P(1,1,1,"Bright blue",0,false,true)
part.Parent = ball
local msh = T.FM(part,"ring",30,30,10)
part.Size = Vector3.new(1,1,1)
part.CFrame = ball.CFrame * ang(math.random(-10,10),math.random(-10,10),math.random(-10,10))
T.C(function()
for i = 30,50,5 do
wait()
msh.Scale = Vector3.new(i,i,i)
part.Transparency = i/100
end
ball:Remove()
end)
end
 
end) --- coroutine end
 
end
end
 
end
 
function iceshards(mouse)
if mouse.Target ~= nil then
holding = true
local shard = T.P(.5,3,.5,"White",.5,false,false)
shard.Position = torso.Position
T.FM(shard,"diamond",1,3,1)
bp = T.BP(shard,torso.Position)
bg = T.BG(shard)
 
c = T.P(.1,.1,.1,"White",1,false,false)
c.Parent = shard
T.W(c,shard,0,-1.5,0,0,0,0)
T.F(c,2,1,"Black","Cyan")
 
while holding do
wait()
unit = (torso.Position-mouse.hit.p).unit
bp.position = torso.Position + unit*-5
bg.cframe = cfn(torso.Position,mouse.hit.p) * ang(-math.pi/2,0,0)
end
 
local pos = shard.CFrame * CFrame.new(0,-1.5,0)
 
T.C(function()
local p = T.P(1,1,1,"Neon orange",0,false,true)
msh = T.FM(p,"crown",1,1,1)
p.CFrame = pos
for i = 1,10,2 do
wait()
msh.Scale = Vector3.new(i,i/2,i)
p.Transparency = i/10
end
p:Remove()
end)
 
local cf = shard.CFrame * CFrame.new(0,1000,0)
bp:Remove() bg:Remove()
bv = Instance.new("BodyVelocity",shard)
bv.maxForce = Vector3.new() * math.huge
bv.velocity = unit*-300
game:GetService("Debris"):AddItem(shard,1)
shard.Touched:connect(function(hit)
 
for i,v in pairs(hit.Parent:GetChildren()) do
if v:IsA("Humanoid") and v.Parent ~= char then
 
for _,o in pairs(hit.Parent:GetChildren()) do
if o:IsA("Clothing") or o:IsA("Hat") then o:Remove() end
end
 
Instance.new("Skin",hit.Parent).SkinColor = BrickColor.new("White")
end
end
end)
 
end
end
 
function cloud(mouse)
local ball = T.P(1,1,1,"Bright red",0,false,true)
T.FM(ball,"sphere",1,1,1)
holding = true
while holding do
if mouse.Target ~= nil then
wait()
ball.CFrame = cfn(mouse.hit.p)
end
end
ring = T.P(1,1,1,"White",0,false,true)
ring.CFrame = cfn(ball.Position) * ang(math.pi/2,0,0)
T.FM(ring,"ring",10,10,1)
 
for i = 1,360,60 do
p = T.P(1,1,1,"White",0,false,true)
T.FM(p,"cone",2,2,2,"cone")
p.CFrame = cfn(ball.Position) * cfn(math.cos(math.rad(i))*10,0,math.sin(math.rad(i))*10)
end
 
local cloud = T.P(1,1,1,"Black",0,false,false)
cloud.Position = torso.Position
T.FM(cloud,"cloud",10,10,10)
 
local bp = T.BP(cloud,ball.Position + Vector3.new(0,20,0))
track = true
 
while (cloud.Position-bp.position).magnitude > 3 do wait() end
T.C(function()
while true do
local pos = cloud.Position + Vector3.new(math.random(-1.5,1.5),0,math.random(-1.5,1.5))
local pos2 = ball.Position + Vector3.new(math.random(-5,5),0,math.random(-5,5))
lazer = T.Lazor(pos,pos2,2,"New Yeller",.5,.5)
Instance.new("CylinderMesh",lazer)
T.C(function()
local p = T.P(1,1,1,"White",.5,false,true)
p.CFrame = cfn((lazer.CFrame * cfn(0,-lazer.Size.y/2,0)).p)
msh = T.FM(p,"crown",1,1,1)
for i = 1,10 do
wait()
msh.Scale = Vector3.new(i,i,i)
p.Transparency = i/10
end
p:Remove()
end)
wait(.1)
end
end)
 
end
 
function tree(mouse)
r = 5
for o = 1,-1,-1 do
for i = 1,360,60 do
p = T.P(20,1,20,"Brown",0,true,true)
p.Material = "Slate"
p.CFrame = cfn(mouse.hit.p) * cfn(M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)
p.CFrame = cfn(p.Position,mouse.hit.p-Vector3.new(0,o,0))
end
end
local startpos = mouse.hit.p
r = 30
 
for i = 1,360,20 do ---RAYS
wait()
local endpos = startpos + Vector3.new(M.Cos(M.D(i))*r,10,M.Sin(M.D(i))*r)
local part = T.P(.1,.1,.1,"White",0,true,true)
T.FM(part,"cylinder",1,1,1)
part.CFrame = (cfn(startpos,endpos) * cfn(0,0,-part.Size.y/2)) * ang(math.pi/2,0,0)
 
for i = 1,30,10 do
wait()
part.Size = Vector3.new(.5,i,.5)
part.CFrame = (cfn(startpos,endpos) * cfn(0,0,-part.Size.y/2))  * ang(math.pi/2,0,0)
end
 
ball = T.P(3,3,3,"Bright red",0,true,true)
T.FM(ball,"sphere",1,1,1)
ball.CFrame = (part.CFrame * cfn(0,-part.Size.y/2,0)) * ang(math.pi,0,0)
 
end ----
 
-------TREE START-----
local tree = T.P(2,.1,2,"Black",0,true,true)
tree.CFrame = cfn(startpos)
tree.Material = "Wood"
 
for i = 1,60 do
wait()
tree.Size = Vector3.new(2,i,2)
tree.CFrame = cfn(startpos) + Vector3.new(0,tree.Size.y/2,0)
end
 
local startpos = (tree.CFrame * CFrame.new(0,tree.Size.y/2,0)).p
 
for i = 1,360,60 do ---RAYS
wait()
local endpos = startpos + Vector3.new(M.Cos(M.D(i))*r,10,M.Sin(M.D(i))*r)
local branch = T.P(2,.1,2,"Black",0,false,true)
branch.CFrame = (cfn(startpos,endpos) * cfn(0,0,-branch.Size.y/2)) * ang(math.pi/2,0,0)
 
for i = 1,30,5 do
wait()
branch.Size = Vector3.new(2,i,2)
branch.CFrame = (cfn(startpos,endpos) * cfn(0,0,-branch.Size.y/2))  * ang(math.pi/2,0,0)
end
 
bush = T.P(.1,.1,.1,"Earth green",0,false,true)
bush.CFrame = cfn(branch.CFrame * cfn(0,-branch.Size.y/2,0).p) * ang(0,M.R(-3,3),0)
local msh = T.FM(bush,"cloud",1,1,1,"grass")
for i = 1,40,5 do
wait()
msh.Scale = Vector3.new(i,i,i)
 
end
 
end
end
 
function grab(mouse)
local endpos = mouse.hit.p
local cloud = T.P(1,1,1,"New Yeller",0,false,false)
local bp = T.BP(cloud,torso.Position + Vector3.new(0,5,0))
T.FM(cloud,"cloud",6,6,6)
while (cloud.Position-bp.position).magnitude > 1 do wait() end
 
local ray = T.P(1,1,1,"Earth green",.5,false,true)
local startpos = cloud.Position
local hand = T.P(1,1,1,"Earth green",.5,false,true)
T.FM(hand,"hand",4,4,4)
T.FM(ray,"cylinder",1,1,1)
 
 
mag = (startpos-endpos).magnitude
 
for i = 1,mag do --- FORWARD
wait()
ray.Size = Vector3.new(1,i,1)
ray.CFrame = (cfn(startpos,endpos) * cfn(0,0,-ray.Size.y/2)) * ang(math.pi/2,0,0)
hand.CFrame = (ray.CFrame * cfn(0,-ray.Size.y/2,-1.6)) * ang(-math.pi/2,0,0)
end
local rock = T.P(3,3,3,"Black",0,true,true)
rock.Parent = Workspace
T.FM(rock,"sphere",1,1,1)
 
for i = mag,3,-1 do --- BACKWARD
wait()
ray.Size = Vector3.new(1,i,1)
ray.CFrame = (cfn(startpos,endpos) * cfn(0,0,-ray.Size.y/2)) * ang(math.pi/2,0,0)
hand.CFrame = (ray.CFrame * cfn(0,-ray.Size.y/2,-1.6)) * ang(-math.pi/2,0,0)
rock.CFrame = hand.CFrame * cfn(0,0,-1.5)
end
 
ray:Remove()
local endpos = mouse.hit.p
unit = (startpos-endpos).unit
rock.Anchored = false
rock.CFrame = hand.CFrame * cfn(0,0,-1.5)
rock:BreakJoints()
for i = .5,1,.05 do
wait()
hand.Transparency = i
end hand:Remove()
for i = 0,1,.05 do
wait()
cloud.Transparency = i
end cloud:Remove()
end
 
 
h = Instance.new("HopperBin",ply.Backpack)
h.Name = "Thunder"
 
h.Selected:connect(function(mouse)
mouse.KeyUp:connect(function(key) for _,v in pairs({"f","r"}) do if key == v then holding = false end end end)
mouse.Button1Down:connect(function() epicmove(mouse) end)
mouse.KeyDown:connect(function(key)
if key == "f" then iceshards(mouse)
elseif key == "r" then cloud(mouse)
elseif key == "t" then tree(mouse)
elseif key == "q" then grab(mouse)
end
end)
end)
end}

 
 

module[1] = {"Storm Spirit",function()

local modelName="Storm Spirit" --Name here
repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character
local player=game.Players.LocalPlayer
local char=player.Character

--CharacterParts
local humanoid=char.Humanoid
local head=char.Head
local torso=char.Torso
local LA=char:findFirstChild("Left Arm")
local RA=char:findFirstChild("Right Arm")
local LL=char:findFirstChild("Left Leg")
local RL=char:findFirstChild("Right Leg")

--Joints
local LS=torso:findFirstChild("Left Shoulder")
local RS=torso:findFirstChild("Right Shoulder")
local LH=torso:findFirstChild("Left Hip")
local RH=torso:findFirstChild("Right Hip")
LS.Part0=torso RS.Part0=torso LH.Part0=torso RH.Part0=torso

--Local Functions
local s=function(f) Spawn(f) end
local c=function(f) coroutine.resume(coroutine.create(f)) end
pcall(function() player.Backpack[modelName]:remove() end) 
pcall(function() char["CharacterParts"]:remove() end)
pcall(function() char[modelName]:remove() end)
pcall(function() player.PlayerGui[modelName]:remove() end)
pcall(function() for i, v in pairs(char:children()) do if v:isA("BasePart") then v.Transparency=0 end end end)
--Settings
local model=Instance.new("Model", char) model.Name="CharacterParts"
local model2=Instance.new("Model", char) model2.Name=modelName
local bin=Instance.new("HopperBin", player.Backpack) bin.Name=modelName
local gui=Instance.new("ScreenGui") gui.Name=modelName
local skincolor="Really black"
local body={}
local animate={}
local obj={}
local onTrail=false
local onKey=false
local onHit=false
local onBlock=false
local onHold=false
local onClick=false
local onClick2=false
local onAttack=false
local onCast=false
local cast=0
local colorSet={
	Handle="Dark orange";
	Blade="Mid gray";
	Extra="Bright blue";
}
local combo=0
local dmg=math.random(5, 10)
local m

local add={
	Part=function(par, a, c, col, t, s, cf, ms)
		local p=Instance.new("Part", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or CFrame.new()  end)
		local m=Instance.new("BlockMesh", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) end)
		return p
	end;
	Wedge=function(par, a, c, col, t, s, cf, ms)
		local p=Instance.new("WedgePart", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.BrickColor=BrickColor.new(col) p.Transparency=t p.Size=s p.CFrame=cf or CFrame.new()  end)
		local m=Instance.new("SpecialMesh", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) m.MeshType="Wedge" end)
		return p
	end;
	Gui=function(ins, par, bc, bg, tc, fs, text, t, s, pos)
		local g=Instance.new(ins, par) pcall(function() g.BorderColor=BrickColor.new(bc) g.BackgroundColor=BrickColor.new(bg) g.TextColor=BrickColor.new(tc) g.FontSize=fs g.Font="ArialBold" g.Text=text g.BackgroundTransparency=t g.Size=s g.Position=pos  end)
		return g
	end;
	Weld=function(par, p1, cf)
		local w=Instance.new("Weld", par) pcall(function() w.Part0=w.Parent or par w.Part1=p1 w.C1=cf or CFrame.new() end)
		return w
	end;
	Mesh=function(ins, par, s, of, t, id, tid)
		local m=Instance.new(ins, par) pcall(function() m.Scale=s or Vector3.new(1, 1, 1) m.Offset=of or Vector3.new() m.MeshId=id or "" m.TextureId=tid or "" m.MeshType=t end)
		return m
	end;
	Sound=function(parent, id, pitch, volume)
		local s=Instance.new("Sound", parent) pcall(function() s.SoundId=id s.Volume=volume s.Pitch=pitch end)
		return s
	end;
}

--Sounds
local Sounds={
	Slash="rbxasset://sounds//swordslash.wav";
	Hit="http://www.roblox.com/asset/?id=11113679 ";
	Equip="rbxasset://sounds/unsheath.wav";
	Charge="http://www.roblox.com/asset/?id=2101137";
	ElectricShortage="http://roblox.com/asset/?id=10209481";
	Elec="http://www.roblox.com/asset/?id=2800815";
	ElectricSound="http://www.roblox.com/asset/?id=10756118";
	Abscond="http://www.roblox.com/asset/?id=2767090";
}

--Decals
local Decals={
	SlashDecal="http://www.roblox.com/asset/?id=25539335";
}

--MeshIds
local Meshes={
	Charge="http://www.roblox.com/asset/?id=20329976";
	Noob="http://www.roblox.com/asset/?id=29515710";
	Ring="http://www.roblox.com/asset/?id=3270017";
	Crown="http://www.roblox.com/asset/?id=1323306";
}

------------------------CreateParts------------------------
body.Torso=add.Part(model2, false, false, skincolor, 1, Vector3.new(2, 2, 1), nil)
body.TorsoW=add.Weld(body.Torso, torso, nil)
function createParts()
	for i, v in pairs(char:children()) do if v:isA("CharacterMesh") then v:remove() end end
	torso.Transparency=1 body.Torso.Transparency=0
	--Parts--
	gui.Parent=player.PlayerGui
	body.Head=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	body.LA, body.RA=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	body.LL, body.RL=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	
	--Welds--
	body.HeadW=add.Weld(body.Head, body.Torso, CFrame.new(0, 1.5, 0))
	body.LAW, body.RAW=add.Weld(body.LA, body.Torso, CFrame.new(-1.5, .5, 0)), add.Weld(body.RA, body.Torso, CFrame.new(1.5, .5, 0))
	body.LLW, body.RLW=add.Weld(body.LL, body.Torso, CFrame.new(-.5, -1.5, 0)), add.Weld(body.RL, body.Torso, CFrame.new(.5, -1.5, 0))
	
	--Welds2--
	add.Weld(body.Head, head, nil)
	add.Weld(LA, body.LA, CFrame.new(0, -.5, 0))
	add.Weld(RA, body.RA, CFrame.new(0, -.5, 0))
	LH.Part0=body.Torso
	RH.Part0=body.Torso
	
	--Sign--
	body.Part=add.Part(model, false, false, "White", 0, Vector3.new(.2, 1, .2))
	add.Weld(body.Part, body.Torso, CFrame.new(.25, 0, -.45))
	body.Part=add.Part(model, false, false, "White", 0, Vector3.new(.7, .2, .2))
	add.Weld(body.Part, body.Torso, CFrame.new(0, -.5, -.45))
	
	--Animation--
	animate={
		["Head"]=function(cf)
			body.HeadW.C1=CFrame.new(0, 1.5, 0)*cf
		end;
		["Torso"]=function(cf)
			body.TorsoW.C1=(cf or CFrame.new()*CFrame.Angles(0, 0, 0))
		end;
		["LA"]=function(cf)
			body.LAW.C1=CFrame.new(-1.5, .5, 0)*(cf or CFrame.new()*CFrame.Angles(0, 0, 0))
		end;
		["RA"]=function(cf)
			body.RAW.C1=CFrame.new(1.5, .5, 0)*(cf or CFrame.new()*CFrame.Angles(0, 0, 0))
		end;
		["LL"]=function(cf)
			LLW=add.Weld(LL, body.LL, CFrame.new(0, -1, 0))
			body.LLW.C1=CFrame.new(-.5, -1, 0)*(cf or CFrame.new()*CFrame.Angles(0, 0, 0))
			c(function()
				wait()
				LLW:remove()
			end)
		end;
		["RL"]=function(cf)
			RLW=add.Weld(RL, body.RL, CFrame.new(0, -1, 0))
			body.RLW.C1=CFrame.new(.5, -1, 0)*(cf or CFrame.new()*CFrame.Angles(0, 0, 0))
			c(function()
				wait()
				RLW:remove()
			end)
		end;
	}
	--GuiLabels--
	obj.AL=add.Gui("TextLabel", gui, "Really black", "Really black", "White", "Size18", "Attack(ClickPLAYER)", 0, UDim2.new(0, 150, 0, 50), UDim2.new(0, 0, 0, 150))
	obj.AL2=add.Gui("TextLabel", obj.AL, "Really black", "Really black", "White", "Size18", "StaticRemnant(Z)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
	obj.AL3=add.Gui("TextLabel", obj.AL2, "Really black", "Really black", "White", "Size18", "ElectricVortex(X)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
	obj.AL4=add.Gui("TextLabel", obj.AL3, "Really black", "Really black", "White", "Size18", "BallLightning(C)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
	--WeaponDesgin--
	for i, v in pairs(model2:children()) do
		if i~=1 then return end
	end
end

------------------------Functions------------------------
function removeParts()
	pcall(function()
		if torso then
			LS.Part0=torso
			RS.Part0=torso LH.Part0=torso
			RH.Part0=torso
			torso.Transparency=0
			body.Torso.Transparency=1
		end
		player.PlayerGui[modelName]:remove()
		for i, v in pairs(model:children()) do
			v:remove()
		end
	end)
end
function play(soundid, pitch, vol)
	local sound=add.Sound(workspace, soundid, pitch or 1, volume or 1)
	sound:play()
	s(function() wait(5) sound:remove() end)
end
function fade(part, incr)
	if part:isA("BasePart") then
		for i=part.Transparency, 1, incr do wait() part.Transparency=i end
	elseif part:isA("Model") then
		for i, v in pairs(part:children() or part) do
			if v:isA("BasePart") then
				for i=part.Transparency, 1, incr do wait() v.Transparency=i end
			end
		end
	end
end
function appear(part, incr)
	if part:isA("BasePart") then
		for i=part.Transparency, 0, -incr do wait() part.Transparency=i end
	elseif part:isA("Model") then
		for i, v in pairs(part:children() or part) do
			if v:isA("BasePart") then
				for i=part.Transparency, 0, -incr do wait() v.Transparency=i end
			end
		end
	end
end
function computePos(pos, pos2)
	local pos3=Vector3.new(pos2.x, pos.y, pos2.z) 
	return CFrame.new(pos, pos3)
end
function rayCast(pos, dir, max, ingore)
	return workspace:findPartOnRay(Ray.new(pos, dir.unit*(max or 9999)), ignore)
end
function nearPos(pos, dis)
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
function lightningGen(startPos, endPos, col)
	local magnitude=(startPos-endPos).magnitude
	local distance=(startPos+endPos)/2
	local pattern=add.Part(workspace, true, false, "White", 1, Vector3.new(.2, .2, magnitude), CFrame.new(distance, startPos))
	local startPosProx=startPos
	for i=1, 9 do
		local startPosProx2=startPosProx local random=Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
		local findSize=pattern.Size.z/10 local findOffSet=pattern.CFrame.lookVector*-1
		local compute=i*findSize*findOffSet local newStartPos=startPos
		local newEndPos=CFrame.new(random+compute+newStartPos).p
		local magnitude=(startPosProx2-newEndPos).magnitude
		local distance=(startPosProx2+newEndPos)/2
		local lightning=add.Part(workspace, true, false, col or "Bright yellow", 0, Vector3.new(.2, .2, magnitude), CFrame.new(distance, startPosProx2))
		s(function()
			fade(lightning, .1) lightning:remove()
		end)
		startPosProx=newEndPos
	end 
	pattern:remove()
end
function trail(pos, cf, col, thick)
	onTrail=true
	s(function()
		local old=(pos.CFrame*(cf or CFrame.new())).p 
		while onTrail do wait()
			local new=(pos.CFrame*(cf or CFrame.new())).p
			local mag=(old-new).magnitude
			local dis=(old+new)/2 local trail=add.Part(char, true, false, col or "White", 0, Vector3.new(1, mag, 1), CFrame.new(dis, new)*CFrame.Angles(math.pi/2, 0, 0))
			trail.Name="Effect" local tMesh=add.Mesh("CylinderMesh", trail, Vector3.new(thick or 1, 1, thick or 1), nil, nil)
			old=new
			s(function()
				for i=1, 0, -.1 do wait() tMesh.Scale=tMesh.Scale*Vector3.new(i, 1, i) end trail:remove()
			end)
			s(function()
				fade(trail, .1)
			end)
		end
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
			s(function()
				for i=0, size, speed do wait() v.Scale=v.Scale+Vector3.new(i, i, i) end
			end)
			s(function()
				fade(glow, .1) glow:remove()
			end)
		end
	end
end
function charge(prt, cf, col, start, endval, incr)
	local aura=add.Part(workspace, false, false, col or "Bright yellow", 0, Vector3.new(1, 1, 1), cf or torso.CFrame)
	local auraM=add.Mesh("SpecialMesh", aura, Vector3.new(start, .5, start), nil, "File") auraM.MeshId=Meshes.Charge
	add.Weld(aura, prt or torso, cf*CFrame.Angles(0, math.rad(math.random(-45, 45)), 0))
	s(function()
		for i=start, endval, incr do wait()
			auraM.Scale=Vector3.new(i, auraM.Scale.y, i)
		end
		aura:remove()
	end)
	s(function()
		fade(aura, .1)
	end)
end
function makeCircle(prt, prts, dis, incr)
	local radius=dis+(prts+incr)
	for i=1, prts do
		local prt2=prt:clone()
		prt2.Parent=model
		local x = math.sin((360/prts + 360/prts*i)/(180/math.pi))*radius
		local y = 0
		local z = math.cos((360/prts + 360/prts*i)/(180/math.pi))*radius
		prt2.CFrame=prt.CFrame:toWorldSpace(CFrame.new(x,y,z))
		prt:remove()
		return prt2
	end
end
function antiExplosion(model)
	local ffs={}
	for i, v in pairs(model:children()) do
		pcall(function()
			local ff2=Instance.new("ForceField", v.Handle)
			table.insert(ffs, ff2) end)
			if v:isA("BasePart") then
				local ff=Instance.new("ForceField", v)
				table.insert(ffs, ff)
			end
		end
	return ffs
end
function dmgHit(prt)
	prt.Touched:connect(function(h)
		if onKey==true and h.Parent:findFirstChild("Humanoid") and onHit==false and h.Parent~=char then
			onHit=true print("dmg")
			local fakeM=Instance.new("Model", workspace) 
			fakeM.Name=-dmg
			local hHuman=h.Parent:findFirstChild("Humanoid")
			hHuman.Health=hHuman.Health-dmg
			local hTorso=h.Parent:findFirstChild("Torso")
			local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
			local label=add.Part(fakeM, true, false, "Bright red", 0, Vector3.new(.5, .5, .5), h.CFrame*CFrame.new(math.random(-4, 4), 4, math.random(-4, 4))) label.Name="Head"
			game.Debris:addItem(fakeM, 1)
			wait(.1)
			onHit=false
		end
	end)
end
function blockHit(prt)
	prt.Touched:connect(function(h)
		if onBlock==true and onKey==true and not h.Parent:findFirstChild("Humanoid") and onHit==false and h.Parent~=char then
			onHit=true
			play(Sounds.Hit, 1, 1)
			print'Blocked'
			local bp=Instance.new("BodyPosition", h) bp.maxForce=Vector3.new(math.huge, math.huge, math.huge) bp.position=(CFrame.new(torso.CFrame.p, h.CFrame.p)*CFrame.new(0, 0, -math.random(100, 200))).p
			local bg=Instance.new("BodyGyro", h) bg.maxTorque=Vector3.new(math.huge, math.huge, math.huge) bg.cframe=CFrame.new(h.CFrame.p, torso.CFrame.p)
			game.Debris:addItem(bp, .2) game.Debris:addItem(bg, .2)
			wait(.1)
			onHit=false
		end
	end)
end
function idle()
	animate.LA(CFrame.Angles(0, 0, -math.rad(15)))
	animate.RA(CFrame.Angles(0, 0, math.rad(15)))
end
function StaticRemnant()
	casted()
	play(Sounds.ElectricShortage, 1, 1)
	play(Sounds.Abscond, 1, 1)
	local trans=.5
	local color="Bright blue"
	local rem=add.Part(workspace, true, false, color, .25, Vector3.new(4, 4, 4), torso.CFrame*CFrame.new(0, -.2, 0))
	local remM=add.Mesh("SpecialMesh", rem, Vector3.new(7, 7, 7), nil, nil, Meshes.Noob)
	s(function()
		while wait() do
			for i=.25, .5, .01 do wait()
				rem.Transparency=i
				remM.Scale=remM.Scale+Vector3.new(i*.05, i*.05, i*.05)
			end
			for i=.5, .25, -.01 do wait()
				rem.Transparency=i
				remM.Scale=remM.Scale-Vector3.new(i*.05, i*.05, i*.05)
			end
		end
	end)
	rem.Touched:connect(function(h)
		if h.Parent:findFirstChild("Humanoid") and onHit==false and h.Parent~=char then
			onHit=true
			play(Sounds.ElectricSound, 1, 1)
			local blast=add.Part(workspace, true, false, color, .25, Vector3.new(4, 4, 1), rem.CFrame*CFrame.new(0, -3, 0)*CFrame.Angles(math.rad(90), 0, 0))
			local blastM=add.Mesh("SpecialMesh", blast, blast.Size, nil, nil, Meshes.Ring)
			local blast2=add.Part(workspace, true, false, color, .25, Vector3.new(4, 1, 4), rem.CFrame*CFrame.new(0, -3, 0))
			local blast2M=add.Mesh("SpecialMesh", blast2, blast.Size, nil, nil, Meshes.Charge)
			s(function()
			for i=blast.Size.x, 12, 1 do wait()
				blastM.Scale=Vector3.new(i, i, i)
				blast2M.Scale=Vector3.new(i, i*.2, i)
			end
			blast:remove()
			blast2:remove()
			end)
			rem:remove()
			local fakeM=Instance.new("Model", workspace) 
			fakeM.Name=-20
			local hHuman=h.Parent:findFirstChild("Humanoid")
			hHuman.Health=hHuman.Health-20
			local hTorso=h.Parent:findFirstChild("Torso")
			local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
			local label=add.Part(fakeM, true, false, "Bright red", 0, Vector3.new(.5, .5, .5), h.CFrame*CFrame.new(math.random(-4, 4), 4, math.random(-4, 4))) label.Name="Head"
			game.Debris:addItem(fakeM, 1)
			wait(.1)
			onHit=false
		end
	end)
	game.Debris:addItem(rem, 12)
	wait(2)
end
function ElectricVortex(target)
	casted()
	onClick=false
	humanoid.WalkSpeed=8
	for i=0, 1, .2 do wait()
		animate.Torso(CFrame.Angles(0, -math.rad(45)*i, 0))
		animate.RA(CFrame.Angles(0, 0, math.rad(135)*i))
	end
	for i=0, 1, .2 do wait()
		animate.Torso(CFrame.Angles(0, -math.rad(45-90*i), 0))
		animate.RA(CFrame.Angles(-math.rad(45)*i, 0, math.rad(135)))
	end
	for i=1, 0, -.2 do wait()
		animate.Torso(CFrame.Angles(0, math.rad(45)*i, 0))
		animate.RA(CFrame.Angles(-math.rad(45)*i, 0, math.rad(135)*i))
	end
	idle()
	local start=add.Part(model, true, false, "Bright blue", .2, Vector3.new(1.5, 1.5, 1.5), torso.CFrame)
	local startM=add.Mesh("SpecialMesh", start, nil, nil, "Sphere")
	local bg=Instance.new("BodyGyro", target) bg.maxTorque=Vector3.new(math.huge, math.huge, math.huge) bg.D=100
	local bv=Instance.new("BodyVelocity", target) bv.maxForce=Vector3.new(math.huge, math.huge, math.huge)
	for i=0, 1, .01 do wait()
		bv.velocity=target.CFrame.lookVector*10
		bg.cframe=CFrame.new(target.CFrame.p, start.CFrame.p)
		local mag=(start.CFrame.p-target.CFrame.p).magnitude
		local dis=(start.CFrame.p+target.CFrame.p)/2
		local con=add.Part(workspace, true, false, "Bright blue", .2, Vector3.new(1, mag, 1), CFrame.new(dis, start.CFrame.p)*CFrame.Angles(math.rad(90), 0, 0))
		local conM=add.Mesh("CylinderMesh", con)
		s(function()
			for i=.2, 1, .1 do wait() con.Transparency=i end con:remove()
		end)
		play(Sounds.Electric, 1, 1)
		play(Sounds.ElectricSound, 1, 1)
	end
	loop=false
	bg:remove()
	bv:remove()
	start:remove()
	humanoid.WalkSpeed=16
end
function BallLightning()
	casted()
	humanoid.WalkSpeed=0
	onKey=true
	play(Sounds.Electric, 1, 1)
	play(Sounds.ElectricSound, 1, 1)
	for i=0, 1, .2 do wait()
		animate.Torso(CFrame.Angles(-math.rad(90)*i, 0, 0))
	end
	torso.CFrame=computePos(torso.CFrame.p, m.Hit.p)
	local ball=add.Part(workspace, false, false, "Cyan", 0, Vector3.new(7, 7, 7), torso.CFrame)
	for i, v in pairs(char:children()) do if v.ClassName=="Part" then dmgHit(v) end end
	dmgHit(ball)
	local ballM=add.Mesh("SpecialMesh", ball, nil, nil, "Sphere")
	local ballW=add.Weld(ball, torso)
	local bp=Instance.new("BodyPosition", torso) bp.maxForce=bp.maxForce*math.huge bp.D=bp.D*1.5
	trail(ball, CFrame.new(), "Cyan", ball.Size.x)
	local pos=m.Hit.p
	dmg=(torso.CFrame.p-m.Hit.p).magnitude/2
	bp.position=Vector3.new(pos.x, pos.y, pos.z)
	wait(.4)
	for i=1, 0, -.2 do wait()
		animate.Torso(CFrame.Angles(-math.rad(90)*i, 0, 0))
	end
	bp:remove()
	ball:remove()
	onKey=false
	onTrail=false
	dmg=math.random(5, 10)
	humanoid.WalkSpeed=16
	idle()
end
function findClick()
	if onClick then
		local dis=nearPos(torso.CFrame.p, 25)
		local tgt=m.Target
		if tgt and dis then
			if tgt.Parent:findFirstChild("Humanoid") then
				m.Icon=""
				ElectricVortex(tgt.Parent:findFirstChild("Torso"))
			end
		end
	end
	if onClick2 then
		onClick2=false
		m.Icon=""
		BallLightning()
	end
end
function Attack()
	if not onAttack then
		onAttack=true
		play(Sounds.Electric, 1, 1)
		play(Sounds.ElectricSound, 1, 1)
		for i=0, 1, .2 do wait()
			animate.Torso(CFrame.Angles(0, -math.rad(45)*i, 0))
			animate.RA(CFrame.Angles(0, 0, math.rad(135)*i))
		end
		for i=0, 1, .2 do wait()
			animate.Torso(CFrame.Angles(0, -math.rad(45-90*i), 0))
			animate.RA(CFrame.Angles(-math.rad(45)*i, 0, math.rad(135)))
		end
		for i=1, 0, -.2 do wait()
			animate.Torso(CFrame.Angles(0, math.rad(45)*i, 0))
			animate.RA(CFrame.Angles(-math.rad(45)*i, 0, math.rad(135)*i))
			end
		local bolt=add.Part(workspace, false, false, "Cyan", 0, Vector3.new(.2, .2, 1.5), CFrame.new(body.RA.CFrame.p, m.Hit.p))
		local bf=Instance.new("BodyForce", bolt) bf.force=Vector3.new(0, bolt:getMass()*196.25, 0)
		local bv=Instance.new("BodyVelocity", bolt) bv.maxForce=bv.maxForce*math.huge bv.velocity=bolt.CFrame.lookVector*100
		idle()
		game.Debris:addItem(bolt, 5)
		bolt.Touched:connect(function(h)
			if not onCast and h.Parent:findFirstChild("Humanoid") and onHit==false and h.Parent~=char then
				onHit=true print("dmg")
				dmg=math.random(5, 10)
				local blast=add.Part(workspace, true, false, "Bright blue", .25, Vector3.new(2, .5, 2), CFrame.new(h.CFrame.p, torso.CFrame.p)*CFrame.Angles(-math.rad(90), 0, 0))
				local blastM=add.Mesh("SpecialMesh", blast, blast.Size, nil, nil, Meshes.Charge)
				game.Debris:addItem(blast, 1)
				bolt:remove()
				local effect
				local fakeM=Instance.new("Model", workspace) 
				fakeM.Name=-dmg
				local hHuman=h.Parent:findFirstChild("Humanoid")
				hHuman.Health=hHuman.Health-dmg
				local hTorso=h.Parent:findFirstChild("Torso")
				local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
				local label=add.Part(fakeM, true, false, "Bright red", 0, Vector3.new(.5, .5, .5), h.CFrame*CFrame.new(math.random(-4, 4), 4, math.random(-4, 4))) label.Name="Head"
				game.Debris:addItem(fakeM, 1)
				wait(.1)
				onHit=false
			elseif onCast and h.Parent:findFirstChild("Humanoid") and onHit==false and h.Parent~=char then
				onTrail=false
				onHit=true
				print("dmg")
				onCast=false
				cast=0
				dmg=math.random(20, 25)
				local blast=add.Part(workspace, true, false, "Bright blue", .25, Vector3.new(2, .5, 2), CFrame.new(h.CFrame.p, torso.CFrame.p)*CFrame.Angles(-math.rad(90), 0, 0))
				local blastM=add.Mesh("SpecialMesh", blast, blast.Size, nil, nil, Meshes.Charge)
				game.Debris:addItem(blast, 1)
				bolt:remove()
				local effect
				local fakeM=Instance.new("Model", workspace) 
				fakeM.Name=-dmg.." Slowed!"
				local hHuman=h.Parent:findFirstChild("Humanoid")
				hHuman.Health=hHuman.Health-dmg
				local hTorso=h.Parent:findFirstChild("Torso")
				local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
				local label=add.Part(fakeM, true, false, "Bright red", 0, Vector3.new(.5, .5, .5), h.CFrame*CFrame.new(math.random(-4, 4), 4, math.random(-4, 4))) label.Name="Head"
				game.Debris:addItem(fakeM, 1)
				s(function()
					s(function() hHuman.WalkSpeed=2 wait(.6) hHuman.WalkSpeed=16 end)
					local blast=add.Part(workspace, true, false, "Bright blue", .25, Vector3.new(4, 1, 4), hTorso.CFrame*CFrame.new(0, -3, 0))
					local blastM=add.Mesh("SpecialMesh", blast, blast.Size, nil, nil, Meshes.Charge)
					s(function()
					for i=blast.Size.x, 12, 1 do wait()
						blastM.Scale=Vector3.new(i, i*.2, i)
					end
					blast:remove()
					end)
				end)
				wait(.1)
				onHit=false
			end
		end)
		onAttack=false
	end
end
function keyDown(key)
	local key=key:lower()
	if key=="z" and not onKey then
		onCast=true
		onKey=true
		StaticRemnant()
		onKey=false
	end
	if key=="x" and not onClick then
		onClick=true
		m.Icon="http://www.roblox.com/asset/?id=81886817"
		s(function()
			while onClick do wait()
				local tgt=m.Target
				local dis=nearPos(torso.CFrame.p, 25)
				if tgt and dis then
					if tgt.Parent:findFirstChild("Humanoid") then
						print(tgt)
						m.Button1Down:connect(findClick)
					end
				end
			end
		end)
	elseif key=="x" and onClick then
		onClick=false
		m.Icon=""
	end
	if key=="c" and not onClick then
		onClick2=true
		m.Icon="http://www.roblox.com/asset/?id=81886817"
		m.Button1Down:connect(findClick)
	elseif key=="c" and onClick then
		onClick2=false
		m.Icon=""
	end
end
function casted()
	onCast=true
	cast=cast+1
	if cast>1 then return end
	s(function()
	trail(body.RA, CFrame.new(0, -1.5, 0), "Cyan", .8)
	while onCast do wait()
		local effect=add.Part(workspace, false, false, "Cyan", .5, Vector3.new(1, 1, 1), body.RA.CFrame*CFrame.new(0, -1.5, 0))
		local effectW=add.Weld(effect, body.RA, CFrame.new(0, -1.5, 0)*CFrame.Angles(math.rad(math.random(-45, 45)),math.rad(math.random(-45, 45)),math.rad(math.random(-45, 45))))
		s(function()
			for i=.5, 1, .1 do wait()
				effect.Transparency=i
			end
			effect:remove()
		end)
	end
	end)
end
bin.Selected:connect(function(mouse)
	onKey=false
	m=mouse
	createParts()
	for i=0, 1, .1 do wait()
		animate.LA(CFrame.Angles(0, 0, -math.rad(15)*i))
		animate.RA(CFrame.Angles(0, 0, math.rad(15)*i))
	end
	mouse.KeyDown:connect(keyDown)
	mouse.Button1Down:connect(Attack)
	charge(torso, CFrame.new(0, -2.5, 0), "Bright blue", 5, 10, .2)
	idle()
end)
bin.Deselected:connect(function()
	removeParts()
	onKey=true
	for i=1, 0, -.1 do wait()
		animate.LA(CFrame.Angles(0, 0, -math.rad(15)*i))
		animate.RA(CFrame.Angles(0, 0, math.rad(15)*i))
	end
end)

end}
module[2] = {"Striker Unit",function()
--[[                                              
Script shared by eletronix                                              ]]

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

--mediafire
		
end}
module[3] = {"Strobe Gun",function()

	me = game.Players.LocalPlayer
walkspeed = 35
walkspeed2 = 16
WaitTime = 0.01
WaitTime2 = 0.41
WaitTime3 = 3
god = false
fakeff = true -- don't enable if god is enabled. it won't break, they both basically god you, but fakeff has a cooler effect.

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin")
h.Parent = me.Backpack
h.Name = "5tr0b3 v3"
script.Parent = h
end

sp = script.Parent

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
module[4] = {"Sunset Dance",function()
Attacking = false
Health = 500
NorWalkSpeed = 20
RunWalkSpeed = 100
ButtonHold = false
Walking = false
Jumping = false
FastRunning = false
MouseHold = false
ComboN = 0
SwordStandBy = true
Dmg = {
        SlashDamage = math.random(10,20);
        MagicDmg = math.random(20,50);
};
Player = game.Players.LocalPlayer
Char = Player.Character
Hum = Char.Humanoid
Head = Char.Head
Torso = Char.Torso
Ra = Char["Right Arm"]
La = Char["Left Arm"]
Rl = Char["Right Leg"]
Ll = Char["Left Leg"]
Torso["Right Shoulder"].Part1 = Ra
Torso["Left Shoulder"].Part1 = La
pcall(function()Player.Backpack["Sunset Dance"]:Destroy()end)
Hb = Instance.new("HopperBin",Player.Backpack)Hb.Name = "Sunset Dance"
pcall(function()Char.Mod:Destroy()end)
pcall(function()Char.Sword:Destroy()end)
pcall(function()Torso.Bg:Destroy()end)
BgTor = Instance.new("BodyGyro",Torso)
BgTor.Name = "Bg"
script.Name = "Sword"
local Main = Instance.new("Model",Char)
Main.Name = "Mod"
v3 = Vector3.new;                mr = math.rad;
cw = coroutine.wrap;        mrd = math.random;
cf = CFrame.new;                ud2 = UDim2.new;
ca = CFrame.Angles;                v2 = Vector2.new
bc = BrickColor.new;        inst = Instance.new
function part(par,size,color,tra,can)
        local P = Instance.new("Part",par)
        P.FormFactor = "Custom"
        P.Size = size
        P.Anchored = false
        P.BrickColor = BrickColor.new(color)
        P.Transparency = tra
        P.CanCollide = can
        P.TopSurface = 0
        P.BottomSurface = 0
        P:BreakJoints()
        return P
end
function w(par,p0,p1,typ,cfz)
        local W = Instance.new("Snap",par)
        W.Part0 = p0
        W.Part1 = p1
        if typ == true then
                W.C0 = cfz
        else
                W.C1 = cfz
        end
        return W
end
function mesh(par,id,tex,typ,scal)
        local M = Instance.new("SpecialMesh",par)
        if id then M.MeshId = "http://www.roblox.com/asset/?id="..tostring(id) end
        if tex then M.TextureId = "http://www.roblox.com/asset/?id="..tostring(tex) end
        M.MeshType = typ
        M.Scale = scal
        return M
end
function fj(lim,tor,cf1,sd)
        sd.Part1 = nil
        local w1 = w(Main,tor,lim,true,cf1)
        w1.C1 = cf(0,.5,0)
        return w1
end
function lerp(a,b,c)return a+(b-a)*c end
function clerp(c1,c2,al) --Smooth Animation!
        local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
        for i,v in pairs(com1) do com1[i] = lerp(v,com2[i],al)end
        return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
function DamageFunc(hit,Damage,timz) 
        local hum = hit.Parent:FindFirstChild("Humanoid")
        if hum and not hum:FindFirstChild("Dmgz:"..Player.Name)  and hit.Parent ~= Char and hit.Parent ~= Workspace and Damage and timz then
                hum:TakeDamage(Damage)
                local a = Instance.new("StringValue",hum)a.Name = "Dmgz:"..Player.Name
                game.Debris:AddItem(a,timz)
                local b = Instance.new("ObjectValue",hum)b.Name = "creator" b.Value = Player
                game.Debris:AddItem(b,10)
        end
end
function makeBall(Color,Size,Number,Intervals) 
        local Cp = part(Workspace,v3(Size.x,Size.y,Size.z),Color,1,false)
        local pl = inst("PointLight",Cp)
        pl.Color = BrickColor.new(Color).Color
        pl.Brightness = 10
        pl.Range = 10
        Cp.CFrame = cf(0,10,0)
        local Sizez = Size
        for i = 0,Number-1 do 
                local p = part(Workspace,Size,Color,.5,false)
                p.Anchored = true
                p.CFrame = Cp.CFrame*ca(mr(mrd(-360,360)),mr(mrd(-360,360)),mr(mrd(-360,360)))
                --Sizez = Sizez+v3(Intervals,Intervals,Intervals)
                game:service'RunService'.Stepped:connect(function()p.CFrame = Cp.CFrame*ca(mr(mrd(-360,360)),mr(mrd(-360,360)),mr(mrd(-360,360))) end)
                cw(function()repeat wait() until Cp.Parent == nil or not Cp or not Cp:IsA("Part")
                p:Destroy() end)()
        end
        return Cp
end
--[[Stuff below:]]
Hum.MaxHealth = Health 
wait(.2)
Hum.Health = Health
Hum.WalkSpeed = NorWalkSpeed
Slash = Instance.new("Sound",Head)Slash.SoundId = "http://www.roblox.com/asset/?id=10209640" Slash.Volume = 10
local RaW = false
local LaW = false
local NorCfR = cf(1.5,.5,0)
local NorCfL = cf(-1.5,.5,0)
cw(function()
        while true do wait()
                if not RaW or not LaW then repeat wait() until RaW~=false and LaW~=false end
                if Attacking == true then repeat wait() until Attacking == false end
                if SwordStandBy == false then repeat wait() until SwordStandBy == true end
                local a = math.random(-5,5) local a2 = math.random(-5,5)
                local b = math.random(15,25)  local b2 = math.random(-25,-15)
                for i = 0,50 do wait(.1)
                        if Attacking == true then break end
                        if SwordStandBy == false then break end
                        RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(a),0,mr(b)),.05)
                        LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(a2),0,mr(b2)),.05)
                        Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.1)
                        Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),0,0),.1)
                end
        end
end)()
----------------Sword 1--------------------------
local Color1 = "Bright orange" local Color2 = "Really black" local BladeC = "Medium stone grey"
Sheath1 = part(Main,v3(.25,3,1),Color1,0,false)w(Sheath1,Torso,Sheath1,true,cf(1+(.25/2),-1.5,1)*ca(mr(-60),0,0))
local p = part(Main,v3(.25,1,1),Color1,0,false)w(p,Sheath1,p,true,cf(0,-1.5+-.5,0)*ca(mr(180),0,0))mesh(p,nil,nil,"Wedge",v3(1,1,1))
-------cf(-1+(.25/-2),-1.5,1)*ca(mr(-60),0,0)
Handle1 = part(Main,v3(0,0,0),"",0,false)Handle1W = w(Handle1,Sheath1,Handle1,true,cf(0,1.5+1+(.25/2),0)*ca(mr(180),0,0)*cf(0,-.25,0))
local a = Color1
for i = -1,1,2/15 do
        local p = part(Main,v3(.4,.25,.4),a,0,false)w(p,Handle1,p,true,cf(0,i,0))inst("SpecialMesh",p).MeshType = "Sphere"
        if a == Color1 then a = Color2 else a = Color1 end
end
local p = part(Main,v3(.4,.25,1),Color1,0,false)w(p,Handle1,p,true,cf(0,1,0))
local p2 = part(Main,v3(.4,.25,.5),Color1,0,false)w(p2,p,p2,true,cf(0,0,-.5+.05)*ca(mr(-45),0,0)*cf(0,0,-.5/2+.06))
local p2 = part(Main,v3(.4,.25,.5),Color1,0,false)w(p2,p,p2,true,cf(0,0,.5-.05)*ca(mr(-45),0,0)*cf(0,0,.5/2-.06))
local p = part(Main,v3(.1,3,.5),BladeC,0,false)w(p,Handle1,p,true,cf(0,1+1.5,-.15))
local p = part(Main,v3(.1,3,.1),BladeC,0,false)w(p,Handle1,p,true,cf(0,1+1.5,.3))
local p = part(Main,v3(.1,1,.8),BladeC,0,false)w(p,Handle1,p,true,cf(0,1+3+.5,0))mesh(p,nil,nil,"Wedge",v3(1,1,1))
local pl = inst("PointLight",p)pl.Color = BrickColor.new(Color1).Color pl.Brightness = 100 pl.Range = 4
HurtBrick1 = part(Main,v3(.2,4,.9),BladeC,1,false)w(HurtBrick1,Handle1,HurtBrick1,true,cf(0,1+2,0))
----------------Sword 2--------------------------
Color1 = "Bright orange" local Color2 = "Really black" BladeC = "Medium stone grey"
Sheath2 = part(Main,v3(.25,3,1),Color1,0,false)w(Sheath2,Torso,Sheath2,true,cf(-1+(.25/-2),-1.5,1)*ca(mr(-60),0,0))
local p = part(Main,v3(.25,1,1),Color1,0,false)w(p,Sheath2,p,true,cf(0,-1.5+-.5,0)*ca(mr(180),0,0))mesh(p,nil,nil,"Wedge",v3(1,1,1))
Handle2 = part(Main,v3(0,0,0),"",0,false)Handle2W = w(Handle2,Sheath2,Handle2,true,cf(0,1.5+1+(.25/2),0)*ca(mr(180),0,0)*cf(0,-.25,0))
local a = Color1
for i = -1,1,2/15 do
        local p = part(Main,v3(.4,.25,.4),a,0,false)w(p,Handle2,p,true,cf(0,i,0))inst("SpecialMesh",p).MeshType = "Sphere"
        if a == Color1 then a = Color2 else a = Color1 end
end
local p = part(Main,v3(.4,.25,1),Color1,0,false)w(p,Handle2,p,true,cf(0,1,0))
local p2 = part(Main,v3(.4,.25,.5),Color1,0,false)w(p2,p,p2,true,cf(0,0,-.5+.05)*ca(mr(-45),0,0)*cf(0,0,-.5/2+.06))
local p2 = part(Main,v3(.4,.25,.5),Color1,0,false)w(p2,p,p2,true,cf(0,0,.5-.05)*ca(mr(-45),0,0)*cf(0,0,.5/2-.06))
local p = part(Main,v3(.1,3,.5),BladeC,0,false)w(p,Handle2,p,true,cf(0,1+1.5,-.15))
local p = part(Main,v3(.1,3,.1),BladeC,0,false)w(p,Handle2,p,true,cf(0,1+1.5,.3))
local p = part(Main,v3(.1,1,.8),BladeC,0,false)w(p,Handle2,p,true,cf(0,1+3+.5,0))mesh(p,nil,nil,"Wedge",v3(1,1,1))
local pl = inst("PointLight",p)pl.Color = BrickColor.new(Color1).Color pl.Brightness = 100 pl.Range = 4
HurtBrick2 = part(Main,v3(.2,4,.9),BladeC,1,false)w(HurtBrick2,Handle2,HurtBrick2,true,cf(0,1+2,0))
Hb.Selected:connect(function(Mouse)
        Attacking = true
        RaW = fj(Ra,Torso,NorCfR*ca(0,0,mr(-10)),Torso["Right Shoulder"])
        LaW = fj(La,Torso,NorCfL*ca(0,0,mr(-10)),Torso["Left Shoulder"])
        for i = 0,6 do wait(.01)
                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(20),mr(0),mr(-20)),.4)
                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(20),mr(0),mr(20)),.4)
        end
        Handle1W.Part0 = Ra
        Handle1W.C0 = cf(0,-1,0)*ca(mr(80),0,0)
        wait(.01)
        Handle2W.Part0 = La
        Handle2W.C0 = cf(0,-1,0)*ca(mr(80),0,0)
        wait(.01)
        for i = 0,6 do wait(.01)
                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(60),mr(0),mr(-20)),.4)
                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(60),mr(0),mr(20)),.4)
        end
        for i = 0,6 do wait(.01)
                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(0),mr(0),mr(20)),.4)
                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(0),mr(0),mr(-20)),.4)
                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.4)
                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.4)
        end
        
        Attacking = false
        Mouse.KeyDown:connect(function(Key)
                if Key == '\48' and Attacking == false then SwordStandBy = false
                        ButtonHold = true
                        Hum.WalkSpeed = RunWalkSpeed
                        FastRunning = true
                        for i = 0,3 do wait(.01)
                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(-80),mr(0),mr(20)),.8)
                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(-80),mr(0),mr(-20)),.8)
                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90-45),0,0) ,.4)
                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90-45),0,mr(0)) ,.4)
                        end
                        repeat wait()SwordStandBy = false until ButtonHold == false 
                        FastRunning = false
                        Hum.WalkSpeed = NorWalkSpeed
                        for i = 0,8 do wait(.01)
                                if Attacking == true then break end
                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(0),0,mr(20)),.4)
                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(0),0,mr(-20)),.4)
                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.4)
                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),0,0),.4)
                        end
                        SwordStandBy = true
                elseif Key == "e" then
                        for i = 0,8 do wait(.01)
                                if Attacking == true then break end
                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(0),0,mr(90)),.4)
                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(0),0,mr(-90)),.4)
                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90+-85),0,0) ,.4)
                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90+-85),0,0),.4)
                        end        
                        local p = part(Main,v3(.1,3,.5),"Medium stone grey",0,false)w(p,Handle2,p,true,cf(0,1+1.5,-.15))
                        local p = part(Main,v3(.1,3,.1),"Medium stone grey",0,false)w(p,Handle2,p,true,cf(0,1+1.5,.3))
                        
                elseif Key == "r" and Attacking == false then
                        Attacking = true
                        local B1 = nil
                        local attack = false
                        cw(function()
                                wait(.1)
                                B1 = makeBall("Bright orange",v3(2.5,2.5,2.5),3,.5)
                                
                                while attack==false do B1.CFrame = Torso.CFrame*cf(0,0,-4)  wait() end
                        end)()
                        for i = 0,3 do wait(.01)
                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(90),mr(0),mr(0)),.8)
                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(90),mr(0),mr(0)),.8)
                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90-20),mr(-45),mr(90)),.5) 
                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90-20),mr(45),mr(-90)),.5)
                        end
                        repeat wait(.01) until B1 ~= nil
                        Dmg1 = HurtBrick1.Touched:connect(function(hit)DamageFunc(hit,DMG_N*2,0)end)
                        Dmg2 = HurtBrick1.Touched:connect(function(hit)DamageFunc(hit,DMG_N*2,0)end)
                        Slash:Play()
                        Slash:Play()
                        local StartP = Torso.CFrame*cf(0,0,-4).p
                        B1.CFrame = cf(Mouse.Hit.p,StartP)*cf(0,0,-(Mouse.Hit.p-StartP).magnitude)*ca(0,mr(180),0)
                        local bv = Instance.new("BodyVelocity",B1)
                        bv.maxForce = v3(1e5,1e5,1e5)
                        local oldcf = B1.CFrame
                        bv.velocity = oldcf.lookVector*100
                        game.Debris:AddItem(B1,10)
                        attack = true
                        B1.Touched:connect(function(hit)
                                if hit.Parent ~= Char and hit.Parent.Parent ~= Char and hit.Parent ~= Main and hit.Parent:FindFirstChild("Humanoid") then
                                        if B1 then B1:Destroy()end
                                        DamageFunc(hit,Dmg.MagicDmg,0)
                                end
                        end)
                        for i = 0,3 do wait(.01)
                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(90),mr(0),mr(90)),.8)
                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(90),mr(0),mr(-90)),.8)
                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90-20),mr(-45),mr(90)),.5)
                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90-20),mr(45),mr(-90)),.5)
                        end
                        Dmg1:disconnect()Dmg2:disconnect()
                        Attacking = false
                        for i = 0,8 do wait(.01)
                                if Attacking == true then break end
                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(0),0,mr(20)),.4)
                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(0),0,mr(-20)),.4)
                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.5)
                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),0,0),.5)
                        end
                end
        end)
        Mouse.KeyUp:connect(function(Key)
                if Key == '\48' then
                        ButtonHold = false
                end
        end)
        Mouse.Button1Down:connect(function()
                MouseHold = true
                if Attacking == false then ButtonHold = false
                        Attacking = true
                        SwordStandBy = false
                        local DMG_N =        Dmg.SlashDamage
                        local Dmg1 = false
                        local Dmg2 = false
                        ComboN = ComboN + 1
                        if ComboN <= 1 then
                                
                                if Hum.Jump == true then
                                        for i = 0,3 do wait(.01)
                                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(160),mr(0),mr(-45)),.8)
                                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(160),mr(0),mr(45)),.8)
                                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90-20),0,mr(0)),.5)
                                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90-20),0,mr(0)),.5)
                                        end
                                        wait(.3)
                                        Dmg1 = HurtBrick1.Touched:connect(function(hit)DamageFunc(hit,DMG_N*1.25,0)end)
                                        Dmg2 = HurtBrick1.Touched:connect(function(hit)DamageFunc(hit,DMG_N*1.25,0)end)
                                        Slash:Play()
                                        Slash:Play()
                                        for i = 0,3 do wait(.01)
                                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(-10),mr(0),mr(20)),.8)
                                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(-10),mr(0),mr(-20)),.8)
                                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90-45),0,0),.5)
                                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90-45),0,mr(0)),.5) 
                                        end
                                elseif FastRunning == true then
                                        for i = 0,3 do wait(.01)
                                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(90),mr(0),mr(0)),.8)
                                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(90),mr(0),mr(0)),.8)
                                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90-20),mr(-45),mr(90)),.5) 
                                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90-20),mr(45),mr(-90)),.5)
                                        end
                                        Dmg1 = HurtBrick1.Touched:connect(function(hit)DamageFunc(hit,DMG_N*2,0)end)
                                        Dmg2 = HurtBrick1.Touched:connect(function(hit)DamageFunc(hit,DMG_N*2,0)end)
                                        Slash:Play()
                                        Slash:Play()
                                        local bv = Instance.new("BodyVelocity",Torso)
                                        bv.maxForce = v3(1e5,1e5,1e5)
                                        local oldcf = Torso.CFrame
                                        bv.velocity = oldcf.lookVector*40
                                        for i = 0,3 do wait(.01)
                                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(90),mr(0),mr(90)),.8)
                                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(90),mr(0),mr(-90)),.8)
                                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90-20),mr(-45),mr(90)),.5)
                                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90-20),mr(45),mr(-90)),.5)
                                        end
                                        if bv then bv:Destroy() end
                                else
                                        for i = 0,5 do wait(.01)
                                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(100),mr(0),mr(-45)),.4)
                                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(-5),0,mr(-20)),.4)
                                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),mr(0),mr(20)),.5)
                                        end
                                        Dmg1 = HurtBrick1.Touched:connect(function(hit)DamageFunc(hit,DMG_N*1.5,.05)end)
                                        Slash:Play()
                                        for i = 0,3 do wait(.01)
                                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(-45),mr(0),mr(45)),.8)
                                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(10),0,mr(-20)),.8)
                                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),mr(0),mr(20)),.5)
                                        end
                                end
                                ComboN = 1
                                cw(function()wait(.5)if ComboN >= 2 then  else ComboN = 0 end end)()
                        elseif ComboN == 2 then
                                for i = 0,5 do wait(.01)
                                        RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(10),mr(0),mr(20)),.5)
                                        LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(90),mr(0),mr(45)),.5)
                                        Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),0,0),.5)
                                        Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),mr(45),mr(-90)) ,.5)
                                end
                                Dmg1 = HurtBrick1.Touched:connect(function(hit)DamageFunc(hit,DMG_N,.1)end)
                                Slash:Play()
                                for i = 0,3 do wait(.01)
                                        RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(-10),mr(0),mr(20)),.8)
                                        LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(90),0,mr(-90)),.8)
                                        Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.5)
                                        Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),mr(20),mr(-90)),.5)
                                end
                                ComboN = 2
                                cw(function()wait(.5)if ComboN >= 3 then  else ComboN = 0 end  end)()
                        elseif ComboN == 3 then
                                for i = 0,5 do wait(.01)
                                        RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(120),mr(0),mr(20)),.5)
                                        LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(-5),0,mr(-20)),.5)
                                        Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90+20),0,0),.5)
                                        Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.5)                
                                end
                                Dmg1 = HurtBrick1.Touched:connect(function(hit)DamageFunc(hit,DMG_N,.1)end)
                                Slash:Play()
                                for i = 0,3 do wait(.01)
                                        RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(20),mr(0),mr(-45)),.8)
                                        LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(10),0,mr(-20)),.8)
                                        Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90-20),0,0) ,.5)                
                                        Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.5)                
                                end
                                ComboN = 3
                                cw(function()wait(.5)if ComboN >= 4 then  else ComboN = 0 end  end)()
                        elseif ComboN <=4 then
                                --local bg = Instance.new("BodyGyro",Torso)
                                local oldcf = Torso.CFrame
                                --bg.cframe = oldcf*ca(mr(0),0,0)
                                --bg.maxTorque = v3(1e100,1e100,1e100)
                                local b = false
                                cw(function()
                                        for i = 0,360,360/8 do wait(.01)
                                                Torso.CFrame = oldcf*ca(0,mr(i),0)
                                                if i >= 100 then b = true end
                                        end
                                        wait(.5)
                                        if bg then bg:Destroy() end
                                end)()
                                Dmg2 = HurtBrick1.Touched:connect(function(hit)DamageFunc(hit,DMG_N*2,.1)end)
                                for i = 0,5 do wait(.01)
                                        RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(10),mr(0),mr(20)),.5)
                                        LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(90),mr(0),mr(45)),.5)
                                        Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.5)
                                        Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),mr(45),mr(-90)) ,.5)
                                end
                                repeat wait() until b == true
                                Slash:Play()
                                for i = 0,3 do wait(.01)
                                        RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(-10),mr(0),mr(20)),.8)
                                        LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(90),0,mr(-90)),.8)
                                        Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.5)
                                        Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),mr(20),mr(-90)),.5)
                                end
                                ComboN = 0 
                        else
                                ComboN = 0
                        end
                        if Dmg1 then Dmg1:disconnect() end
                        if Dmg2 then Dmg2:disconnect() end
                        Attacking = false
                        for i = 0,8 do wait(.01)
                                if Attacking == true then break end
                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(0),0,mr(20)),.4)
                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(0),0,mr(-20)),.4)
                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.5)
                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),0,0),.5)
                        end
                        if not Attacking == true then SwordStandBy = true end
                end
        end)
        Mouse.Button1Up:connect(function()
                MouseHold = false
        end)
end)
Hb.Deselected:connect(function(Mouse)
        Attacking = true
        for i = 0,6 do wait(.01)
                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(60),mr(0),mr(-20)),.4)
                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(60),mr(0),mr(20)),.4)
                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(80),0,0) ,.4)
                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(80),0,0) ,.4)
        end
        for i = 0,6 do wait(.01)
                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(20),mr(0),mr(-20)),.4)
                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(20),mr(0),mr(20)),.4)
        end
        Handle1W.Part0 = Sheath1
        Handle1W.C0 = cf(0,1.5+1+(.25/2),0)*ca(mr(180),0,0)*cf(0,-.25,0)
        wait(.01)
        Handle2W.Part0 = Sheath2
        Handle2W.C0 = cf(0,1.5+1+(.25/2),0)*ca(mr(180),0,0)*cf(0,-.25,0)
        wait(.01)
        if RaW then RaW:Destroy() RaW = nil end
        if LaW then LaW:Destroy() RaW = nil end
        Attacking = false
end)

end}
module[5] = {"TF2 Heavy",function()

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
bladecolor = BrickColor.new("New Yeller") 
attack = false 
attackdebounce = false 
readytoshoot = false 
Modes = {"Fists", "Minigun"} 
Number = 1
mode = Modes[Number]
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 



local model1 = Instance.new("Model") 
model1.Name = "Fists" 
local model2 = Instance.new("Model") 
model2.Name = "Minigun" 
local model3 = Instance.new("Model") 
model3.Name = "Sandvich" 

local leftfist = LeftArm:Clone() 
leftfist.Parent = model1 
leftfist.Name = "Left Arm" 
local rightfist = RightArm:Clone() 
rightfist.Parent = model1 
rightfist.Name = "Right Arm" 
local hum = Instance.new("Humanoid") 
hum.Parent = model1 
Children = Character:GetChildren() 
for i = 1, #Children do 
if Children[i].className == "Shirt" or Children[i].className == "Pants" then 
local stuff = Children[i]:Clone() 
stuff.Parent = model1 
end 
end 
local minigun1 = Instance.new("Part") 
minigun1.formFactor = 1 
minigun1.CanCollide = false 
minigun1.Name = "Handle" 
minigun1.Locked = true 
minigun1.Size = Vector3.new(1,1,1) 
minigun1.Parent = model2 
minigun1.BrickColor = BrickColor.new("Black") 
local minigun2 = Instance.new("Part") 
minigun2.formFactor = 1 
minigun2.CanCollide = false 
minigun2.Name = "Part2" 
minigun2.Locked = true 
minigun2.Size = Vector3.new(1,1,1) 
minigun2.Parent = model2 
minigun2.BrickColor = BrickColor.new("Black") 
local minigun3 = Instance.new("Part") 
minigun3.formFactor = 1 
minigun3.CanCollide = false 
minigun3.Name = "Part3" 
minigun3.Locked = true 
minigun3.Size = Vector3.new(1,1,1) 
minigun3.Parent = model2 
minigun3.BrickColor = BrickColor.new("Black") 
local minigun4 = Instance.new("Part") 
minigun4.formFactor = 1 
minigun4.CanCollide = false 
minigun4.Name = "Part4" 
minigun4.Locked = true 
minigun4.Size = Vector3.new(1,1,1) 
minigun4.Parent = model2 
minigun4.BrickColor = BrickColor.new("Black") 
local minigun5 = Instance.new("Part") 
minigun5.formFactor = 1 
minigun5.CanCollide = false 
minigun5.Name = "Part5" 
minigun5.Locked = true 
minigun5.Size = Vector3.new(1,1,1) 
minigun5.Parent = model2 
minigun5.BrickColor = BrickColor.new("Black") 
local minigun6 = Instance.new("Part") 
minigun6.formFactor = 1 
minigun6.CanCollide = false 
minigun6.Name = "Part6" 
minigun6.Locked = true 
minigun6.Size = Vector3.new(1,1,1) 
minigun6.Parent = model2 
minigun6.BrickColor = BrickColor.new("Black") 
local minigun7 = Instance.new("Part") 
minigun7.formFactor = 1 
minigun7.CanCollide = false 
minigun7.Name = "Part7" 
minigun7.Locked = true 
minigun7.Size = Vector3.new(1,1,1) 
minigun7.Parent = model2 
minigun7.BrickColor = BrickColor.new("Black") 
local minigun8 = Instance.new("Part") 
minigun8.formFactor = 1 
minigun8.CanCollide = false 
minigun8.Name = "Part8" 
minigun8.Locked = true 
minigun8.Size = Vector3.new(1,1,1) 
minigun8.Parent = model2 
minigun8.BrickColor = BrickColor.new("Black") 
local minigun9 = Instance.new("Part") 
minigun9.formFactor = 1 
minigun9.CanCollide = false 
minigun9.Name = "Part9" 
minigun9.Locked = true 
minigun9.Size = Vector3.new(2,2,2) 
minigun9.Parent = model2 
minigun9.BrickColor = BrickColor.new("Black") 
local minigun10 = Instance.new("Part") 
minigun10.formFactor = 1 
minigun10.CanCollide = false 
minigun10.Name = "Part10" 
minigun10.Locked = true 
minigun10.Size = Vector3.new(2,2,2) 
minigun10.Parent = model2 
minigun10.BrickColor = BrickColor.new("Black") 
local minigun11 = Instance.new("Part") 
minigun11.formFactor = 1 
minigun11.CanCollide = false 
minigun11.Name = "Part11" 
minigun11.Locked = true 
minigun11.Size = Vector3.new(2,2,2) 
minigun11.Parent = model2 
minigun11.BrickColor = BrickColor.new("White") 
local minigun12 = Instance.new("Part") 
minigun12.formFactor = 1 
minigun12.CanCollide = false 
minigun12.Name = "Part12" 
minigun12.Locked = true 
minigun12.Size = Vector3.new(1,1,1) 
minigun12.Parent = model2 
minigun12.BrickColor = BrickColor.new("Black") 
local minigun13 = Instance.new("Part") 
minigun13.formFactor = 1 
minigun13.CanCollide = false 
minigun13.Name = "Part13" 
minigun13.Locked = true 
minigun13.Size = Vector3.new(1,1,1) 
minigun13.Parent = model2 
minigun13.BrickColor = BrickColor.new("Black") 
local minigun14 = Instance.new("Part") 
minigun14.formFactor = 1 
minigun14.CanCollide = false 
minigun14.Name = "Part14" 
minigun14.Locked = true 
minigun14.Size = Vector3.new(1,2,1) 
minigun14.Parent = model2 
minigun14.BrickColor = BrickColor.new("Black") 
local minigun15 = Instance.new("Part") 
minigun15.formFactor = 1 
minigun15.CanCollide = false 
minigun15.Name = "Part15" 
minigun15.Locked = true 
minigun15.Size = Vector3.new(1,1,1) 
minigun15.Parent = model2 
minigun15.BrickColor = BrickColor.new("Black") 
local minigun16 = Instance.new("Part") 
minigun16.formFactor = 1 
minigun16.CanCollide = false 
minigun16.Name = "Part16" 
minigun16.Locked = true 
minigun16.Size = Vector3.new(1,2,1) 
minigun16.Parent = model2 
minigun16.BrickColor = BrickColor.new("Black") 
local minigun17 = Instance.new("Part") 
minigun17.formFactor = 1 
minigun17.CanCollide = false 
minigun17.Name = "Part17" 
minigun17.Locked = true 
minigun17.Size = Vector3.new(1,1,1) 
minigun17.Parent = model2 
minigun17.BrickColor = BrickColor.new("Black") 
local minigun18 = Instance.new("Part") 
minigun18.formFactor = 1 
minigun18.CanCollide = false 
minigun18.Name = "Part18" 
minigun18.Locked = true 
minigun18.Size = Vector3.new(1,1,1) 
minigun18.Parent = model2 
minigun18.BrickColor = BrickColor.new("Black") 
local minigun19 = Instance.new("Part") 
minigun19.formFactor = 1 
minigun19.CanCollide = false 
minigun19.Name = "Part19" 
minigun19.Locked = true 
minigun19.Size = Vector3.new(1,1,1) 
minigun19.Parent = model2 
minigun19.BrickColor = BrickColor.new("Black") 
local minigun20 = Instance.new("Part") 
minigun20.formFactor = 1 
minigun20.CanCollide = false 
minigun20.Name = "Part20" 
minigun20.Locked = true 
minigun20.Size = Vector3.new(1,1,1) 
minigun20.Parent = model2 
minigun20.BrickColor = BrickColor.new("Black") 
local minigun21 = Instance.new("Part") 
minigun21.formFactor = 1 
minigun21.CanCollide = false 
minigun21.Name = "Part21" 
minigun21.Locked = true 
minigun21.Size = Vector3.new(1,1,1) 
minigun21.Parent = model2 
minigun21.BrickColor = BrickColor.new("Black") 
local minigun22 = Instance.new("Part") 
minigun22.formFactor = 1 
minigun22.CanCollide = false 
minigun22.Name = "Part22" 
minigun22.Locked = true 
minigun22.Size = Vector3.new(1,1,1) 
minigun22.Parent = model2 
minigun22.BrickColor = BrickColor.new("Black") 
local minigun23 = Instance.new("Part") 
minigun23.formFactor = 1 
minigun23.CanCollide = false 
minigun23.Name = "Part23" 
minigun23.Locked = true 
minigun23.Size = Vector3.new(1,1,1) 
minigun23.Parent = model2 
minigun23.BrickColor = BrickColor.new("Black") 
local minigun24 = Instance.new("Part") 
minigun24.formFactor = 1 
minigun24.CanCollide = false 
minigun24.Name = "Part24" 
minigun24.Locked = true 
minigun24.Size = Vector3.new(1,1,1) 
minigun24.Parent = model2 
minigun24.BrickColor = BrickColor.new("Black") 
local minigun25 = Instance.new("Part") 
minigun25.formFactor = 1 
minigun25.CanCollide = false 
minigun25.Name = "Part25" 
minigun25.Locked = true 
minigun25.Size = Vector3.new(1,1,1) 
minigun25.Parent = model2 
minigun25.BrickColor = BrickColor.new("Black") 
local minigun26 = Instance.new("Part") 
minigun26.formFactor = 1 
minigun26.CanCollide = false 
minigun26.Name = "Part26" 
minigun26.Locked = true 
minigun26.Size = Vector3.new(1,1,1) 
minigun26.Parent = model2 
minigun26.BrickColor = BrickColor.new("Black") 
local minigun27 = Instance.new("Part") 
minigun27.formFactor = 1 
minigun27.CanCollide = false 
minigun27.Name = "Part27" 
minigun27.Locked = true 
minigun27.Size = Vector3.new(1,1,1) 
minigun27.Parent = model2 
minigun27.BrickColor = BrickColor.new("Black") 
local minigun28 = Instance.new("Part") 
minigun28.formFactor = 1 
minigun28.CanCollide = false 
minigun28.Name = "Barrel" 
minigun28.Locked = true 
minigun28.Size = Vector3.new(1,1,1) 
minigun28.Parent = model2 
minigun28.BrickColor = BrickColor.new("Black") 
local minigun29 = Instance.new("Part") 
minigun29.formFactor = 1 
minigun29.CanCollide = false 
minigun29.Name = "Part29" 
minigun29.Locked = true 
minigun29.Size = Vector3.new(1,2,1) 
minigun29.Parent = model2 
minigun29.BrickColor = BrickColor.new("Black") 
local minigun30 = minigun29:Clone() 
minigun30.Name = "Part30" 
minigun30.Size = Vector3.new(1,2,1) 
minigun30.Parent = model2 
local minigun31 = minigun29:Clone() 
minigun31.Name = "Part31" 
minigun31.Size = Vector3.new(1,2,1) 
minigun31.Parent = model2 
local minigun31 = minigun29:Clone() 
minigun31.Name = "Part31" 
minigun31.Size = Vector3.new(1,2,1) 
minigun31.Parent = model2 
local minigun32 = minigun29:Clone() 
minigun32.Name = "Part32" 
minigun32.Size = Vector3.new(1,2,1) 
minigun32.Parent = model2 
local minigun33 = minigun29:Clone() 
minigun33.Name = "Part33" 
minigun33.Size = Vector3.new(1,2,1) 
minigun33.Parent = model2 
local minigun34 = minigun29:Clone() 
minigun34.Name = "Part34" 
minigun34.Size = Vector3.new(1,2,1) 
minigun34.Parent = model2 
local minigun35 = Instance.new("Part") 
minigun35.formFactor = 1 
minigun35.CanCollide = false 
minigun35.Name = "Part35" 
minigun35.Locked = true 
minigun35.Size = Vector3.new(1,2,1) 
minigun35.Parent = model2 
minigun35.BrickColor = BrickColor.new("Black") 
local minigun36 = Instance.new("Part") 
minigun36.formFactor = 1 
minigun36.CanCollide = false 
minigun36.Name = "Part36" 
minigun36.Locked = true 
minigun36.Size = Vector3.new(1,2,1) 
minigun36.Parent = model2 
minigun36.BrickColor = BrickColor.new("Black") 
local minigun37 = minigun36:Clone() 
minigun37.Name = "Part37" 
minigun37.Size = Vector3.new(1,2,1) 
minigun37.Parent = model2 
local minigun38 = Instance.new("Part") 
minigun38.formFactor = 1 
minigun38.CanCollide = false 
minigun38.Name = "Part38" 
minigun38.Locked = true 
minigun38.Size = Vector3.new(1,1,1) 
minigun38.Parent = model2 
minigun38.BrickColor = BrickColor.new("Black") 

local mesh1 = Instance.new("BlockMesh") 
mesh1.Parent = minigun1 
mesh1.Scale = Vector3.new(0.3,1,0.3) 
local mesh2 = Instance.new("BlockMesh") 
mesh2.Parent = minigun2 
mesh2.Scale = Vector3.new(0.3,0.4,0.3) 
local mesh3 = Instance.new("BlockMesh") 
mesh3.Parent = minigun3 
mesh3.Scale = Vector3.new(0.3,0.8,0.3) 
local mesh4 = Instance.new("BlockMesh") 
mesh4.Parent = minigun4 
mesh4.Scale = Vector3.new(0.3,1.1,0.3) 
local mesh5 = Instance.new("BlockMesh") 
mesh5.Parent = minigun5 
mesh5.Scale = Vector3.new(0.3,1.1,0.3) 
local mesh6 = Instance.new("BlockMesh") 
mesh6.Parent = minigun6 
mesh6.Scale = Vector3.new(0.3,0.7,0.3) 
local mesh7 = Instance.new("BlockMesh") 
mesh7.Parent = minigun7 
mesh7.Scale = Vector3.new(0.3,1.45,0.3) 
local mesh8 = Instance.new("BlockMesh") 
mesh8.Parent = minigun8 
mesh8.Scale = Vector3.new(0.3,0.5,0.3) 
local mesh9 = Instance.new("CylinderMesh") 
mesh9.Parent = minigun9 
mesh9.Scale = Vector3.new(0.8,0.3,0.8) 
local mesh10 = Instance.new("CylinderMesh") 
mesh10.Parent = minigun10 
mesh10.Scale = Vector3.new(0.75,0.1,0.75) 
local mesh11 = Instance.new("CylinderMesh") 
mesh11.Parent = minigun11 
mesh11.Scale = Vector3.new(0.74,0.5,0.74) 
local mesh12 = Instance.new("BlockMesh") 
mesh12.Parent = minigun12 
mesh12.Scale = Vector3.new(0.5,0.5,0.5) 
local mesh13 = Instance.new("CylinderMesh") 
mesh13.Parent = minigun13 
mesh13.Scale = Vector3.new(0.2,0.2,0.2) 
local mesh14 = Instance.new("CylinderMesh") 
mesh14.Parent = minigun14 
mesh14.Scale = Vector3.new(0.15,0.69,0.15) 
local mesh15 = Instance.new("BlockMesh") 
mesh15.Parent = minigun15 
mesh15.Scale = Vector3.new(0.2,0.2,0.2) 
local mesh16 = Instance.new("CylinderMesh") 
mesh16.Parent = minigun16 
mesh16.Scale = Vector3.new(0.15,0.5,0.15) 
local mesh17 = Instance.new("CylinderMesh") 
mesh17.Parent = minigun17 
mesh17.Scale = Vector3.new(0.2,0.2,0.2) 
local mesh18 = Instance.new("BlockMesh") 
mesh18.Parent = minigun18 
mesh18.Scale = Vector3.new(0.35,0.35,0.35) 
local mesh19 = Instance.new("CylinderMesh") 
mesh19.Parent = minigun19 
mesh19.Scale = Vector3.new(0.3,0.2,0.3) 
local mesh20 = Instance.new("BlockMesh") 
mesh20.Parent = minigun20 
mesh20.Scale = Vector3.new(0.3,0.7,0.3) 
local mesh21 = Instance.new("BlockMesh") 
mesh21.Parent = minigun21 
mesh21.Scale = Vector3.new(0.6,0.6,0.6) 
local mesh22 = Instance.new("BlockMesh") 
mesh22.Parent = minigun22 
mesh22.Scale = Vector3.new(0.2,0.6,0.2) 
local mesh23 = Instance.new("BlockMesh") 
mesh23.Parent = minigun23 
mesh23.Scale = Vector3.new(0.2,0.6,0.2) 
local mesh24 = Instance.new("BlockMesh") 
mesh24.Parent = minigun24 
mesh24.Scale = Vector3.new(0.2,0.3,0.2) 
local mesh25 = Instance.new("CylinderMesh") 
mesh25.Parent = minigun25 
mesh25.Scale = Vector3.new(0.2,0.6,0.2) 
local mesh26 = Instance.new("CylinderMesh") 
mesh26.Parent = minigun26 
mesh26.Scale = Vector3.new(0.7,1.3,0.7) 
local mesh27 = Instance.new("CylinderMesh") 
mesh27.Parent = minigun27 
mesh27.Scale = Vector3.new(0.8,0.5,0.8) 
local mesh28 = Instance.new("CylinderMesh") 
mesh28.Parent = minigun28 
mesh28.Scale = Vector3.new(0.9,0.3,0.9) 
local mesh29 = Instance.new("CylinderMesh") 
mesh29.Parent = minigun29 
mesh29.Scale = Vector3.new(0.3,1.1,0.3) 
local mesh30 = mesh29:Clone() 
mesh30.Parent = minigun30 
local mesh31 = mesh29:Clone() 
mesh31.Parent = minigun31 
local mesh32 = mesh29:Clone() 
mesh32.Parent = minigun32 
local mesh33 = mesh29:Clone() 
mesh33.Parent = minigun33 
local mesh34 = mesh29:Clone() 
mesh34.Parent = minigun34 
local mesh35 = Instance.new("CylinderMesh") 
mesh35.Parent = minigun35 
mesh35.Scale = Vector3.new(1,0.2,1) 
local mesh36 = Instance.new("CylinderMesh") 
mesh36.Parent = minigun36 
mesh36.Scale = Vector3.new(1,0.05,1) 
local mesh37 = mesh36:Clone() 
mesh37.Parent = minigun37 
local mesh38 = Instance.new("SpecialMesh") 
mesh38.Parent = minigun38 
mesh38.MeshId = "http://www.roblox.com/asset/?id=3270017" 
mesh38.Scale = Vector3.new(1,1,8) 

local leftfistweld = Instance.new("Weld") 
leftfistweld.Parent = model1 
leftfistweld.Part0 = leftfist 
leftfistweld.Part1 = LeftArm 
local rightfistweld = Instance.new("Weld") 
rightfistweld.Parent = model1 
rightfistweld.Part0 = rightfist 
rightfistweld.Part1 = RightArm 
local sashaweld1 = Instance.new("Weld") 
sashaweld1.Parent = minigun1 
sashaweld1.Part0 = minigun1 
sashaweld1.Part1 = RightArm 
sashaweld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 
local sashaweld2 = Instance.new("Weld") 
sashaweld2.Parent = minigun2 
sashaweld2.Part0 = minigun2 
sashaweld2.Part1 = minigun1 
sashaweld2.C0 = CFrame.fromEulerAnglesXYZ(2,0,0) * CFrame.new(0,0.5,0.3) 
local sashaweld3 = Instance.new("Weld") 
sashaweld3.Parent = minigun3 
sashaweld3.Part0 = minigun3 
sashaweld3.Part1 = minigun2 
sashaweld3.C0 = CFrame.fromEulerAnglesXYZ(-1.5,0,0) * CFrame.new(0,-0.2,-0.2) 
local sashaweld4 = Instance.new("Weld") 
sashaweld4.Parent = minigun4 
sashaweld4.Part0 = minigun4 
sashaweld4.Part1 = minigun3 
sashaweld4.C0 = CFrame.fromEulerAnglesXYZ(2.3,0,0) * CFrame.new(0,-0.8,-0.45) 
local sashaweld5 = Instance.new("Weld") 
sashaweld5.Parent = minigun5 
sashaweld5.Part0 = minigun5 
sashaweld5.Part1 = minigun3 
sashaweld5.C0 = CFrame.fromEulerAnglesXYZ(-2.3,0,0) * CFrame.new(0,-1.5,-0.45) 
local sashaweld6 = Instance.new("Weld") 
sashaweld6.Parent = minigun6 
sashaweld6.Part0 = minigun6 
sashaweld6.Part1 = minigun1 
sashaweld6.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,-0.5,0.2) 
local sashaweld7 = Instance.new("Weld") 
sashaweld7.Parent = minigun7 
sashaweld7.Part0 = minigun7 
sashaweld7.Part1 = minigun3 
sashaweld7.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,0,0.9) 
local sashaweld8 = Instance.new("Weld") 
sashaweld8.Parent = minigun8 
sashaweld8.Part0 = minigun8 
sashaweld8.Part1 = minigun7 
sashaweld8.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,-0.7,-0.3) 
local sashaweld9 = Instance.new("Weld") 
sashaweld9.Parent = minigun9 
sashaweld9.Part0 = minigun9 
sashaweld9.Part1 = minigun8 
sashaweld9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.6,-0.2) 
local sashaweld10 = Instance.new("Weld") 
sashaweld10.Parent = minigun10 
sashaweld10.Part0 = minigun10 
sashaweld10.Part1 = minigun9 
sashaweld10.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.45,0) 
local sashaweld11 = Instance.new("Weld") 
sashaweld11.Parent = minigun11 
sashaweld11.Part0 = minigun11 
sashaweld11.Part1 = minigun10 
sashaweld11.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.7,0) 
local sashaweld12 = Instance.new("Weld") 
sashaweld12.Parent = minigun12 
sashaweld12.Part0 = minigun12 
sashaweld12.Part1 = minigun9 
sashaweld12.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,-0.7) 
local sashaweld13 = Instance.new("Weld") 
sashaweld13.Parent = minigun13 
sashaweld13.Part0 = minigun13 
sashaweld13.Part1 = minigun12 
sashaweld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.3,-0.15) 
local sashaweld14 = Instance.new("Weld") 
sashaweld14.Parent = minigun14 
sashaweld14.Part0 = minigun14 
sashaweld14.Part1 = minigun13 
sashaweld14.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.85,0) 
local sashaweld15 = Instance.new("Weld") 
sashaweld15.Parent = minigun15 
sashaweld15.Part0 = minigun15 
sashaweld15.Part1 = minigun14 
sashaweld15.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.85,0) 
local sashaweld16 = Instance.new("Weld") 
sashaweld16.Parent = minigun16 
sashaweld16.Part0 = minigun16 
sashaweld16.Part1 = minigun15 
sashaweld16.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,0,0.6) 
local sashaweld17 = Instance.new("Weld") 
sashaweld17.Parent = minigun17 
sashaweld17.Part0 = minigun17 
sashaweld17.Part1 = minigun16 
sashaweld17.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.5,0) 
local sashaweld18 = Instance.new("Weld") 
sashaweld18.Parent = minigun18 
sashaweld18.Part0 = minigun18 
sashaweld18.Part1 = minigun11 
sashaweld18.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.5,0) 
local sashaweld19 = Instance.new("Weld") 
sashaweld19.Parent = minigun19 
sashaweld19.Part0 = minigun19 
sashaweld19.Part1 = minigun18 
sashaweld19.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,0.3,0) 
local sashaweld20 = Instance.new("Weld") 
sashaweld20.Parent = minigun20 
sashaweld20.Part0 = minigun20 
sashaweld20.Part1 = minigun5 
sashaweld20.C0 = CFrame.fromEulerAnglesXYZ(2.3,0,0) * CFrame.new(0,0.83,0.26) 
local sashaweld21 = Instance.new("Weld") 
sashaweld21.Parent = minigun21 
sashaweld21.Part0 = minigun21 
sashaweld21.Part1 = minigun20 
sashaweld21.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.5,0.15) 
local sashaweld22 = Instance.new("Weld") 
sashaweld22.Parent = minigun22 
sashaweld22.Part0 = minigun22 
sashaweld22.Part1 = minigun21 
sashaweld22.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(-0.16,0.1,-0.3) 
local sashaweld23 = Instance.new("Weld") 
sashaweld23.Parent = minigun23 
sashaweld23.Part0 = minigun23 
sashaweld23.Part1 = minigun21 
sashaweld23.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0.16,0.1,-0.3) 
local sashaweld24 = Instance.new("Weld") 
sashaweld24.Parent = minigun24 
sashaweld24.Part0 = minigun24 
sashaweld24.Part1 = minigun23 
sashaweld24.C0 = CFrame.fromEulerAnglesXYZ(1.57,1.57,0) * CFrame.new(-0.2,0.26,0) 
local sashaweld25 = Instance.new("Weld") 
sashaweld25.Parent = minigun25 
sashaweld25.Part0 = minigun25 
sashaweld25.Part1 = minigun7 
sashaweld25.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,0.3,-0.1) 
local sashaweld26 = Instance.new("Weld") 
sashaweld26.Parent = minigun26 
sashaweld26.Part0 = minigun26 
sashaweld26.Part1 = minigun25 
sashaweld26.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1,0) 
local sashaweld27 = Instance.new("Weld") 
sashaweld27.Parent = minigun27 
sashaweld27.Part0 = minigun27 
sashaweld27.Part1 = minigun26 
sashaweld27.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1,0) 
local sashaweld28 = Instance.new("Weld") 
sashaweld28.Parent = minigun28 
sashaweld28.Part0 = minigun28 
sashaweld28.Part1 = minigun27 
sashaweld28.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.2,0) 
local sashaweld29 = Instance.new("Weld") 
sashaweld29.Parent = minigun29 
sashaweld29.Part0 = minigun29 
sashaweld29.Part1 = minigun28 
sashaweld29.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.24,1.2,-0.16) 
local sashaweld30 = Instance.new("Weld") 
sashaweld30.Parent = minigun30 
sashaweld30.Part0 = minigun30 
sashaweld30.Part1 = minigun28 
sashaweld30.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.24,1.2,0.16) 
local sashaweld31 = Instance.new("Weld") 
sashaweld31.Parent = minigun31 
sashaweld31.Part0 = minigun31 
sashaweld31.Part1 = minigun28 
sashaweld31.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.2,0.35) 
local sashaweld32 = Instance.new("Weld") 
sashaweld32.Parent = minigun32 
sashaweld32.Part0 = minigun32 
sashaweld32.Part1 = minigun28 
sashaweld32.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.24,1.2,0.16) 
local sashaweld33 = Instance.new("Weld") 
sashaweld33.Parent = minigun33 
sashaweld33.Part0 = minigun33 
sashaweld33.Part1 = minigun28 
sashaweld33.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.24,1.2,-0.16) 
local sashaweld34 = Instance.new("Weld") 
sashaweld34.Parent = minigun34 
sashaweld34.Part0 = minigun34 
sashaweld34.Part1 = minigun28 
sashaweld34.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.2,-0.35) 
local sashaweld35 = Instance.new("Weld") 
sashaweld35.Parent = minigun35 
sashaweld35.Part0 = minigun35 
sashaweld35.Part1 = minigun28 
sashaweld35.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.8,0) 
local sashaweld36 = Instance.new("Weld") 
sashaweld36.Parent = minigun36 
sashaweld36.Part0 = minigun36 
sashaweld36.Part1 = minigun28 
sashaweld36.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.5,0) 
local sashaweld37 = Instance.new("Weld") 
sashaweld37.Parent = minigun37 
sashaweld37.Part0 = minigun37 
sashaweld37.Part1 = minigun28 
sashaweld37.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.7,0) 
local sashaweld38 = Instance.new("Weld") 
sashaweld38.Parent = minigun38 
sashaweld38.Part0 = minigun38 
sashaweld38.Part1 = minigun28 
sashaweld38.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,2.5,0) 

if script.Parent.className ~= "HopperBin" then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Heavy" 
script.Parent = Tool 
end 
Bin = Tool

function unequipweld() 
model1.Parent = nil 
model2.Parent = nil 
model3.Parent = nil 
end 

function equipanim() 
if mode == "Fists" then 
for i = 0 , 1 , 0.2 do 
wait(0) 
LW.C0 = CFrame.new(-1.5+0.3*i,0.5,-0.3*i) * CFrame.fromEulerAnglesXYZ(1.7*i,0,0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.3*i,0.5,-0.3*i) * CFrame.fromEulerAnglesXYZ(1.7*i,0,-0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
elseif mode == "Minigun" then 
for i = 0 , 1 , 0.2 do 
wait(0) 
LW.C0 = CFrame.new(-1.5+1.5*i,0.5,-1.4*i) * CFrame.fromEulerAnglesXYZ(1.7*i,0,0.9*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end 
-- 9650882

function equipweld() 
if mode == "Fists" then 
model1.Parent = workspace 
rightfistweld.Parent = rightfist 
leftfistweld.Parent = leftfist 
elseif mode == "Minigun" then 
model2.Parent = workspace 
sashaweld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,1,0) 
end 
end 

function OT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage) 
end 

end 

function ss(parent,pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function startup(parent,pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209788" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function winddown(parent,pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209786" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 

function shoot(parent,pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209798" 
SlashSound.Parent = workspace 
SlashSound.Volume = .2 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 

function Punch() 
attack = true 
wait() 
local either = math.random(1,2) 
if either == 1 then 
ss(LeftArm,0.8) 
con1=leftfist.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
for i = 0 , 1 , 0.2 do 
wait() 
LW.C0 = CFrame.new(-1.2+0.4*i,0.5,-0.3-0.5*i) * CFrame.fromEulerAnglesXYZ(1.7,0,0.3+0.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
for i = 0 , 1 , 0.2 do 
wait() 
LW.C0 = CFrame.new(-1.2+0.4-0.4*i,0.5,-0.3-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.7,0,0.3+0.2-0.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
elseif either == 2 then 
ss(RightArm,0.8) 
con2=rightfist.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
for i = 0 , 1 , 0.2 do 
wait() 
RW.C0 = CFrame.new(1.2-0.4*i,0.5,-0.3-0.5*i) * CFrame.fromEulerAnglesXYZ(1.7,0,-0.3-0.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con2:disconnect() 
for i = 0 , 1 , 0.2 do 
wait() 
RW.C0 = CFrame.new(1.2-0.4+0.4*i,0.5,-0.3-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.7,0,-0.3-0.2+0.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
attack = false 
end 

function minigunshoop() 
attack = true 
if readytoshoot == false then 
startup(minigun28,1) 
Character.Humanoid.WalkSpeed = 10 
for i = 0 , 1 , 0.05 do 
wait(0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.2+0.37*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
sashaweld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+1.1*i,0,0) * CFrame.new(0,1,0) 
sashaweld28.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) * CFrame.new(0,0.2,0) 
end 
wait(0.5) 
end 
while hold == true do 
wait(0) 
boomeffect() 
bulletshoot() 
--Ammo() 
shoot(minigun28,0.9) 
sashaweld28.C0 = sashaweld28.C0 * CFrame.fromEulerAnglesXYZ(0,0.6,0) 
end 
if readytoshoot == false then
winddown(minigun28,1) 
Character.Humanoid.WalkSpeed = 16 
for i = 0 , 1 , 0.05 do 
wait(0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.2+0.37-0.37*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5+1.5,0.5,-1.4) * CFrame.fromEulerAnglesXYZ(1.7,0,0.9) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
sashaweld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+1.1-1.1*i,0,0) * CFrame.new(0,1,0) 
sashaweld28.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) * CFrame.new(0,0.2,0) 
end 
attack = false 
end 
end 

function Taunt() 
for i = 0 , 1 , 0.1 do 
wait() 
LW.C0 = CFrame.new(-1.2-0.3*i,0.5,-0.3+0.3*i) * CFrame.fromEulerAnglesXYZ(1.7-1.7*i,0,0.3-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.2+0.3*i,0.5,-0.3+0.3*i) * CFrame.fromEulerAnglesXYZ(1.7-1.7*i,0,-0.3+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
for i = 1 , 2 do 
wait(0) 
ss(LeftArm,0.8) 
for i = 0 , 1 , 0.2 do 
wait() 
LW.C0 = CFrame.new(-1.2-0.3+0.3*i,0.5+0.3*i,-0.3*i) * CFrame.fromEulerAnglesXYZ(1.6*i,1.57*i,0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+1*i,0,0) 
end 
wait(0.2) 
for i = 0 , 1 , 0.1 do 
wait() 
LW.C0 = CFrame.new(-1.2-0.3*i,0.5+0.3-0.3*i,-0.3+0.3*i) * CFrame.fromEulerAnglesXYZ(1.6-1.6*i,1.57-1.57*i,0.3-0.6*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+1-0.5*i,0,0) 
end 
ss(LeftArm,0.8) 
for i = 0 , 1 , 0.2 do 
wait() 
RW.C0 = CFrame.new(1.2+0.3-0.3*i,0.5+0.3*i,-0.3*i) * CFrame.fromEulerAnglesXYZ(1.6*i,-1.57*i,-0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+1*i,0,0) 
end 
wait(0.2) 
for i = 0 , 1 , 0.2 do 
wait() 
RW.C0 = CFrame.new(1.2+0.3*i,0.5+0.3-0.3*i,-0.3+0.3*i) * CFrame.fromEulerAnglesXYZ(1.6-1.6*i,-1.57+1.57*i,-0.3+0.6*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+1-0.5*i,0,0) 
end 
end 
equipanim() 
end 

function readyshoot() 
attack = true 
readytoshoot = false 
startup(minigun28,1) 
Character.Humanoid.WalkSpeed = 10 
for i = 0 , 1 , 0.05 do 
wait(0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.2+0.37*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
sashaweld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+1.1*i,0,0) * CFrame.new(0,1,0) 
sashaweld28.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) * CFrame.new(0,0.2,0) 
end 
attack = false 
while readytoshoot == true do 
wait(0) 
attack = false 
sashaweld28.C0 = sashaweld28.C0 * CFrame.fromEulerAnglesXYZ(0,0.6,0) 
end 
attack = true 
readytoshoot = false 
winddown(minigun28,1) 
Character.Humanoid.WalkSpeed = 16 
for i = 0 , 1 , 0.05 do 
wait(0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.2+0.37-0.37*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5+1.5,0.5,-1.4) * CFrame.fromEulerAnglesXYZ(1.7,0,0.9) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
sashaweld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90)+1.1-1.1*i,0,0) * CFrame.new(0,1,0) 
sashaweld28.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) * CFrame.new(0,0.2,0) 
end 
readytoshoot = false 
attack = false 
end 

function changeequipleft() 
if Number > 1 then 
Number = Number - 1 
mode = Modes[Number] 
unequipweld() 
equipweld() 
equipanim() 
end 
end 

function changeequipright() 
if Number < #Modes then 
Number = Number + 1 
mode = Modes[Number] 
unequipweld() 
equipweld() 
equipanim() 
end 
end 

function boomeffect() 
local mesh = Instance.new("SpecialMesh") 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(1,1,1)
local shell = Instance.new("Part") 
mesh.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(1,2,1) 
shell.CFrame = minigun37.CFrame * CFrame.new(0,-2,0) * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 
shell.Parent = game.workspace 
shell.Transparency = 0.2 
shell.BrickColor = BrickColor.new("Bright yellow") 
shell.CanCollide = false 
coroutine.resume(coroutine.create(function(shel) 
wait() 
shel.Parent = nil 
end),shell) 
end 

function bulletshoot() 
local freakingbullet = Instance.new("Part") 
freakingbullet.formFactor = 1 
freakingbullet.Parent = workspace 
freakingbullet.CanCollide = false 
freakingbullet.BrickColor = BrickColor.new("New Yeller") 
freakingbullet.Name = "Bullet" 
freakingbullet.Size = Vector3.new(1,3,1) 
freakingbullet.CFrame = Torso.CFrame 
--freakingbullet.CFrame = minigun38.CFrame * CFrame.new(0,-0.5,0) 
freakingbullet.CFrame = minigun27.CFrame * CFrame.new(0,-1.1,-0.25) 
freakingbullet.Velocity = minigun38.CFrame.lookVector * 300 
--freakingbullet.Velocity = freakingbullet.CFrame.lookVector * 300 
local freakingbulmsh = Instance.new("CylinderMesh") 
freakingbulmsh.Parent = freakingbullet 
freakingbulmsh.Scale = Vector3.new(1.1,1.5,0.15) 
local force = Instance.new("BodyForce") 
force.Parent = freakingbullet 
force.force = Vector3.new(0,450,0) 
coroutine.resume(coroutine.create(function() 
while freakingbullet.Parent ~= nil do --I use this function instead of the touch function :3
wait() 
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Torso");
if head ~= nil then
local targ = head.Position - freakingbullet.Position;
local mag = targ.magnitude;
if mag <= 6 and c[i].Name ~= Player.Name then
hum:TakeDamage(5)
v=Instance.new("BodyVelocity")
v.P=1000
v.maxForce=Vector3.new(math.huge,0,math.huge)
v.velocity=Torso.CFrame.lookVector*25+Torso.Velocity/1.05
v.Parent=hum.Parent.Torso
Blood=Instance.new("Part")
Blood.Name="Blood"
Blood.TopSurface="Smooth"
Blood.BottomSurface="Smooth"
Blood.formFactor="Plate"
Blood.BrickColor=BrickColor:Red()
Blood.Size=Vector3.new(1,.4,1)
Blood.Velocity=Vector3.new(math.random(-4,4),math.random(5,25),math.random(-4,4))
Blood.CFrame=head.CFrame 
Blood.Parent=workspace 
coroutine.resume(coroutine.create(function(vel,blod) 
wait(0.3) 
vel.Parent = nil 
wait(2) 
blod.Parent = nil 
end),v,Blood) 
game:GetService("Debris"):AddItem(v,.1)
freakingbullet.Parent = nil 
end
end
end
end
end 
end)) 
coroutine.resume(coroutine.create(function() 
wait(1) 
freakingbullet.Parent = nil 
end)) 
end 

function Ammo() 
local shellz = Instance.new("Part")
local shellmsh = Instance.new("CylinderMesh")
shellmsh.Scale = Vector3.new(0.25,0.5,0.25)
shellmsh.Parent = shellz
shellz.Position = minigun11.Position + Vector3.new(0,2,0) 
shellz.Parent = game.Workspace
shellz.Size = Vector3.new(1,1,1)
shellz.CFrame = minigun11.CFrame + Vector3.new(0,0,0) 
shellz.BrickColor = BrickColor.new("Bright yellow")
shellz.Anchored = false
shellz.CanCollide = false 
shellz.BottomSurface = "Smooth" 
shellz.TopSurface = "Smooth" 
shellz.Velocity = Vector3.new(math.random(5,30),math.random(5,30),math.random(-20,-5)) 
game:GetService("Debris"):addItem(shellz,2) 
end 

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
if h~=nil and hit.Parent~=Character and hit.Parent:FindFirstChild("Torso")~=nil then
Damage=Damage
--[[ if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
return
end]]
c=Instance.new("ObjectValue")
c.Name="creator"
c.Value=game.Players.LocalPlayer
c.Parent=h
game:GetService("Debris"):AddItem(c,.5)
-- print(c.Value)
if math.random(1,10)==1 then
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
s.PlayOnRemove=true
s.Parent=nil

end
Damage=Damage+math.random(0,10) 
BloodRandom = math.random(1,5) 
if CRIT == true then 
BloodRandom = BloodRandom * 5 
end 
for i = 0,BloodRandom do 
Blood=Instance.new("Part")
Blood.Name="Blood"
Blood.TopSurface="Smooth"
Blood.BottomSurface="Smooth"
Blood.formFactor="Plate"
Blood.BrickColor=BrickColor:Red()
Blood.Size=Vector3.new(1,.4,1)
Blood.Velocity=Vector3.new(math.random(-2,2),math.random(5,10),math.random(-2,2))
Blood.CFrame=hit.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1),math.random(-1,1)) 
Blood.Parent=workspace 
coroutine.resume(coroutine.create(function(blod) 
wait(2) 
blod.Parent = nil 
end),Blood) 
end 
h:TakeDamage(Damage)
-- showDamage(hit.Parent,Damage,.5)
vp=Instance.new("BodyVelocity")
vp.P=500
vp.maxForce=Vector3.new(math.huge,0,math.huge)
-- vp.velocity=Character.Torso.CFrame.lookVector*Knockback
vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
if Knockback>0 then
vp.Parent=hit.Parent.Torso
end
game:GetService("Debris"):AddItem(vp,.25)
--[[ r=Instance.new("BodyAngularVelocity")
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

showDamage=function(Char,Dealt,du)
m=Instance.new("Model")
m.Name=tostring(Dealt)
h=Instance.new("Humanoid")
h.Health=0
h.MaxHealth=0
h.Parent=m
c=Instance.new("Part")
c.Transparency=0
c.CanCollide=false 
if CRIT==true then
c.BrickColor=BrickColor.new("New Yeller")
else 
c.BrickColor=BrickColor.new("Bright red")
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

hold = false 

function ob1d(mouse) 
hold = true 
if attack == true then return end 
if mode == "Fists" then 
Punch() 
elseif mode == "Minigun" then 
getPos=function(Pos,TorsoPos)
return Vector3.new(Pos.x,TorsoPos.y,Pos.z)
end 
coroutine.resume(coroutine.create(function() 
while hold == true do 
wait() 
g.cframe=CFrame.new(Torso.Position,getPos(mouse.Hit.p,Torso.Position))
offset=(Torso.Position.y-mouse.Hit.p.y)/60
mag=(Torso.Position-mouse.Hit.p).magnitude/80
offset=offset/mag 
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(offset,0,0)
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.2+0.37-offset,0,0) 
LW.C0 = CFrame.new(-1.5+1.5,0.5,-1.4) * CFrame.fromEulerAnglesXYZ(1.7,-offset,0.9) 
end 
Torso.Neck.C0=necko
end)) 
minigunshoop() 
end 
end 

function ob1u(mouse) 
hold = false 
end 

buttonhold = false 

function key(key) 
if key == "z" then 
if mode == "Fists" then 
Taunt() 
elseif mode == "Minigun" then 
readyshoot() 
end 
end 
if attack == true then return end 
if readytoshoot == true then return end 
if key == "q" then 
changeequipleft() 
end 
if key == "e" then 
changeequipright() 
end 
end 

function key2(key) 
if key == "z" then 
readytoshoot = false 
end 
end 

function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
g=Instance.new("BodyGyro")
g.P=18000
g.D=600
g.maxTorque=Vector3.new(80000,80000000,80000)*50000000000000000000000000
g.cframe=Torso.CFrame
equipweld() 
player = Player 
ch = Character 
equipped = true 
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
_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
_G.L = LW 
--
equipanim() 
end 

function ds(mouse) 
equipped = false 
unequipweld() 
wait(0.1) 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 

Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 

while true do 
wait() 
if equipped == true then 
rightfistweld.Parent = rightfist 
leftfistweld.Parent = leftfist 
model1.Parent = workspace 
if mode == "Fists" then 
elseif mode == "Minigun" then 
model2.Parent = workspace 
sashaweld1.Parent = minigun1 
sashaweld2.Parent = minigun2 
sashaweld3.Parent = minigun3 
sashaweld4.Parent = minigun4 
sashaweld5.Parent = minigun5 
sashaweld6.Parent = minigun6 
sashaweld7.Parent = minigun7 
sashaweld8.Parent = minigun8 
sashaweld9.Parent = minigun9 
sashaweld10.Parent = minigun10 
sashaweld11.Parent = minigun11 
sashaweld12.Parent = minigun12 
sashaweld13.Parent = minigun13 
sashaweld14.Parent = minigun14 
sashaweld15.Parent = minigun15 
sashaweld16.Parent = minigun16 
sashaweld17.Parent = minigun17 
sashaweld18.Parent = minigun18 
sashaweld19.Parent = minigun19 
sashaweld20.Parent = minigun20 
sashaweld21.Parent = minigun21 
sashaweld22.Parent = minigun22 
sashaweld23.Parent = minigun23 
sashaweld24.Parent = minigun24 
sashaweld25.Parent = minigun25 
sashaweld26.Parent = minigun26 
sashaweld27.Parent = minigun27 
sashaweld28.Parent = minigun28 
sashaweld29.Parent = minigun29 
sashaweld30.Parent = minigun30 
sashaweld31.Parent = minigun31 
sashaweld32.Parent = minigun32 
sashaweld33.Parent = minigun33 
sashaweld34.Parent = minigun34 
sashaweld35.Parent = minigun35 
sashaweld36.Parent = minigun36 
sashaweld37.Parent = minigun37 
sashaweld38.Parent = minigun38 
end 
end 
end 

end}
module[6] = {"TF2 Spy",function()


local player=game.Players.LocalPlayer
local char=player.Character
repeat wait() until player and char
local torso=char.Torso
local head=char.Head
local human=char.Humanoid
local arm={Left=char["Left Arm"], Right=char["Right Arm"]}
local leg={Left=char["Left Leg"], Right=char["Right Leg"]}
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
		local g=Instance.new(ins, par) pcall(function() g.BorderColor=BridckColor.new(bc) g.BackgroundColor=BrickColor.new(bg) g.TextColor=BrickColor.new(tc) g.FontSize=fs g.Font="ArialBold" g.Text=text g.Transparency=t g.Size=s g.Position=pos  end)
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
local scriptname="Spy" --Name here
pcall(function() player.Backpack[scriptname]:remove() char[scriptname]:remove() char["Objects"]:remove() player.PlayerGui[scriptname]:remove()  end)
local model=Instance.new("Model", char) model.Name="Objects"
local modelB=Instance.new("Model", char) modelB.Name=scriptname
local gui=Instance.new("ScreenGui", player.PlayerGui) gui.Name=scriptname
local bin=Instance.new("HopperBin", player.Backpack) bin.Name=scriptname
local skincolor="Really black"
local body={}
local animate={}
local obj={}
function createParts()
	--==PARTS==--
	body.Torso=add.Part(model, false, false, skincolor, 1, Vector3.new(2, 2, 1), nil)
	body.ArmLeft, body.ArmRight=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	body.LegLeft, body.LegRight=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	--==WELDS==--
	body.TorsoW=add.Weld(body.Torso, torso, nil)
	body.ArmLeftW, body.ArmRightW=add.Weld(body.ArmLeft, body.Torso, CFrame.new(-1.5, .5, 0)), add.Weld(body.ArmRight, body.Torso, CFrame.new(1.5, .5, 0))
	body.LegLeftW, body.LegRightW=add.Weld(body.LegLeft, body.Torso, CFrame.new(-.5, -1.5, 0)), add.Weld(body.LegRight, body.Torso, CFrame.new(.5, -1.5, 0))
	--==MESHES==--
	add.Weld(arm.Left, body.ArmLeft, CFrame.new(0, -.5, 0))
	add.Weld(arm.Right, body.ArmRight, CFrame.new(0, -.5, 0))
	torso["Left Hip"].Part0=body.Torso
	torso["Right Hip"].Part0=body.Torso
	---------------------------------------------------------------------------------------
	animate={
		["Torso"]=function(cf) body.Torso.Transparency=0 torso.Transparency=1
			body.TorsoW.C1=cf
		end;
		["ArmLeft"]=function(cf)
			body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*cf
		end;
		["ArmRight"]=function(cf)
			body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*cf
		end;
		["LegLeft"]=function(cf)
			body.LegLeftW.C1=CFrame.new(-.5, -1.5, 0)*cf
		end;
		["LegRight"]=function(cf)
			body.LegRightW.C1=CFrame.new(.5, -1.5, 0)*cf
		end;
	}
	--==Objects==--
	obj.HandleBack=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.2, 1, .2), nil)
	obj.HandleBackW=add.Weld(obj.HandleBack, body.ArmRight, CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, 0))
	obj.EdgeBot=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.2, .2, .2), nil)
	obj.EdgeBotM=add.Mesh("CylinderMesh", obj.EdgeBot, Vector3.new(1, 1, 1), nil, nil)
	obj.EdgeBotW=add.Weld(obj.EdgeBot, obj.HandleBack, CFrame.new(0, -.5, 0)*CFrame.Angles(math.rad(90), 0, math.rad(90)))
	obj.EdgeTopR=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.2, .2, .2), nil)
	obj.EdgeTopRM=add.Mesh("CylinderMesh", obj.EdgeTopR, Vector3.new(1, 1, 1), nil, nil)
	obj.EdgeTopRW=add.Weld(obj.EdgeTopR, obj.HandleBack, CFrame.new(0, .5, 0)*CFrame.Angles(math.rad(90), 0, math.rad(90)))

	obj.Blade=add.Part(modelB, false, false, "Mid gray", 0, Vector3.new(.2, .8, .2), nil)
	obj.BladeM=add.Mesh("BlockMesh", obj.Blade, Vector3.new(.5, 1, 1), nil, nil)
	obj.BladeW=add.Weld(obj.Blade, obj.EdgeTopR, CFrame.new(-.1, 0, -.4)*CFrame.Angles(-math.rad(90), math.rad(90), 0))
	obj.Point=add.Part(modelB, false, false, "Mid gray", 0, Vector3.new(.2, .4, .2), nil)
	obj.PointM=add.Mesh("SpecialMesh", obj.Point, Vector3.new(.5, 1, .5), nil, "Wedge")
	obj.PointW=add.Weld(obj.Point, obj.Blade, CFrame.new(0, .6, .05)*CFrame.Angles(0, math.rad(180), 0))
	obj.Point2=add.Part(modelB, false, false, "Mid gray", 0, Vector3.new(.2, .4, .2), nil)
	obj.Point2M=add.Mesh("SpecialMesh", obj.Point2, Vector3.new(.5, 1, .5), nil, "Wedge")
	obj.Point2W=add.Weld(obj.Point2, obj.Blade, CFrame.new(0, .6, -.05))

	obj.Joints=add.Part(modelB, false, false, "Medium mid-gray", 0, Vector3.new(.2, .25, .2), nil)
	obj.JointsM=add.Mesh("CylinderMesh", obj.Joints, Vector3.new(.5, 1, .5), nil, nil)
	obj.JointsW=add.Weld(obj.Joints, obj.EdgeBot, nil)
	obj.Joints=add.Part(modelB, false, false, "Medium mid-gray", 0, Vector3.new(.2, .25, .2), nil)
	obj.JointsM=add.Mesh("CylinderMesh", obj.Joints, Vector3.new(.5, 1, .5), nil, nil)
	obj.JointsW=add.Weld(obj.Joints, obj.EdgeTopR, nil)

	obj.EdgeTopR2=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.2, .2, .2), nil)
	obj.EdgeTopR2M=add.Mesh("CylinderMesh", obj.EdgeTopR2, Vector3.new(1, 1, 1), nil, nil)
	obj.EdgeTopR2W=add.Weld(obj.EdgeTopR2, obj.Blade, CFrame.new(0, -.4, -.1)*CFrame.Angles(math.rad(90), 0, math.rad(90)))
	obj.HandleFor=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.2, 1, .2), nil)
	obj.HandleForW=add.Weld(obj.HandleFor, obj.EdgeTopR2, CFrame.new(0, 0, .5)*CFrame.Angles(-math.rad(90), -math.rad(90), 0))
	obj.EdgeBot=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.2, .2, .2), nil)
	obj.EdgeBotM=add.Mesh("CylinderMesh", obj.EdgeBot, Vector3.new(1, 1, 1), nil, nil)
	obj.EdgeBotW=add.Weld(obj.EdgeBot, obj.HandleFor, CFrame.new(0, -.5, 0)*CFrame.Angles(math.rad(90), 0, math.rad(90)))
	obj.Joints=add.Part(modelB, false, false, "Medium mid-gray", 0, Vector3.new(.2, .25, .2), nil)
	obj.JointsM=add.Mesh("CylinderMesh", obj.Joints, Vector3.new(.5, 1, .5), nil, nil)
	obj.JointsW=add.Weld(obj.Joints, obj.EdgeBot, nil)
	obj.Joints=add.Part(modelB, false, false, "Medium mid-gray", 0, Vector3.new(.2, .25, .2), nil)
	obj.JointsM=add.Mesh("CylinderMesh", obj.Joints, Vector3.new(.5, 1, .5), nil, nil)
	obj.JointsW=add.Weld(obj.Joints, obj.EdgeTopR2, nil)
end
function removeParts()
	p(function()
		if torso then
			torso["Left Hip"].Part0=torso
			torso["Right Hip"].Part0=torso
		end
		for i, v in pairs(model:children()) do v:remove() end	for i, v in pairs(modelB:children()) do v:remove() end	for i, v in pairs(char:children()) do v.Transparency=0 if v.Name == "HumanoidRootPart" then v.Transparency = 1 end end
	end)
end
--Variables--
local trailDeb=false
local using=false
local combo=1
local onStab=false
local keyDeb=false
local switch=false
local switch2=false
local keyDeb2=false
local hitDeb=false
local dmg=math.random(5, 10)
local speed=20
local pitch=.8
local Slash=add.Sound(torso, "rbxasset://sounds//swordslash.wav", 1, pitch)
local Hit=add.Sound(torso, "http://www.roblox.com/asset/?id=30715280", 1, 1)
local Abscond=add.Sound(torso, "http://www.roblox.com/asset/?id=2767090", 1, 1)
local Equip=add.Sound(torso, "http://www.roblox.com/asset/?id=13510737", 1, 1)
local attackLabel=add.Gui("TextLabel", gui, "Really black", "Really black", "White", "Size18", "Invisible(Q)", 0, UDim2.new(0, 150, 0, 50), UDim2.new(0, 0, 0, 150))
local attackLabel2=add.Gui("TextLabel", attackLabel, "Really black", "Really black", "White", "Size18", "Disguise(E)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))

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
function trail(pos, cf, col)
	c(function()
		local old=(pos.CFrame*cf).p
		while trailDeb==true do
			wait()
			local new=(pos.CFrame*cf).p
			local mag=(old-new).magnitude
			local dis=(old+new)/2
			local trail=add.Part(workspace, true, false, col, 0, Vector3.new(.2, mag, .2), CFrame.new(dis, new)*CFrame.Angles(math.pi/2, 0, 0)) trail.Name="Trail"
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

function running()
	animate.ArmLeft(CFrame.Angles(-math.rad(45), 0, -math.rad(15)))
	animate.ArmRight(CFrame.Angles(math.rad(45), 0, math.rad(15)))
	obj.HandleBackW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, 0)
end

function hit(h)
	if using==true then
		if switch==false then
			if onStab==false and h.Parent:findFirstChild("Humanoid") and h.Parent~=char and hitDeb==false then hitDeb=true print("NormalStab") Hit:play()
				local hHuman=h.Parent:findFirstChild("Humanoid")
				hHuman.Health=hHuman.Health-dmg
				local fakeM=Instance.new("Model", workspace) fakeM.Name=-dmg
				local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
				local effect=add.Part(fakeM, false, false, "Bright red", 0, Vector3.new(1, 1, 1), h.CFrame) effect.Name="Head"
				local fakeMesh=add.Mesh("CylinderMesh", effect, Vector3.new(1, .5, 1), nil, nil)
				local bp=Instance.new("BodyPosition", effect) bp.maxForce=Vector3.new(math.huge, math.huge, math.huge) bp.position=h.Position+Vector3.new(0, 4, 0)
				game.Debris:addItem(fakeM, 2)	
				wait(1)
				hitDeb=false
			end
			if onStab==true and h.Parent~=char and h.Parent:findFirstChild("Humanoid") and hitDeb==false then hitDeb=true print("NormalStab") Hit:play()
				h.Parent:breakJoints()
				local fakeM=Instance.new("Model", workspace) fakeM.Name="BACKSTABBED"
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
end

function findStab()
	while using==false do wait()
		--pcall(function()
			local nTorso=nearTorso(torso.CFrame.p, 3)
			if nTorso then
				local offSet=nTorso.CFrame:toObjectSpace(torso.CFrame)
				if offSet.z>0 then
					onStab=true
					animate.ArmRight(CFrame.Angles(math.rad(135), 0, 0))
					obj.HandleBackW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(math.rad(90), 0, 0)
				else
					onStab=false
					running()
				end
			else
				onStab=false
				running()
			end
		--end)
	end
end

function attack() combo=combo+1
	if using==false then using=true for i, v in pairs(modelB:children()) do v.Touched:connect(hit) end
		if combo==1 and onStab==false then Slash:play()
			--[[trailDeb=true
			trail(obj.Blade, CFrame.new(0, 1, 0), "White")]]
			for i=0, 1, .2 do wait()
				animate.Torso(CFrame.Angles(0, math.rad(45)*i, 0))
				animate.ArmRight(CFrame.Angles(math.rad(90)*i, 0, 0))
				obj.HandleBackW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, math.rad(45)*i)
			end
			for i=1, 0, -.2 do wait()
				animate.Torso(CFrame.Angles(0, math.rad(45)*i, 0))
				animate.ArmRight(CFrame.Angles(math.rad(90)*i, 0, 0))
				obj.HandleBackW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, math.rad(45)*i)
			end
			if combo>1 and onStab==false then combo=2 Slash:play()
				for i=0, 1, .2 do wait() 
					animate.Torso(CFrame.Angles(0, math.rad(45)*i, 0))
	
