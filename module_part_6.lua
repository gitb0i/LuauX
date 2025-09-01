d
end)
for i,v in pairs(Character:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
for i,v in pairs(Character:children()) do
    if v:IsA("Accessory") then
        v:Destroy()
    end
end
for i,v in pairs(Character:children()) do
    if v:IsA("Hair") then
        v:Destroy()
    end
end
for i,v in pairs(Character:children()) do
    if v:IsA("Shirt") then
        v:Destroy()
    end
end
for i,v in pairs(Character:children()) do
    if v:IsA("Pants") then
        v:Destroy()
    end
end
for i,v in pairs(Character:children()) do
    if v:IsA("Graphic Shirt") then
        v:Destroy()
    end
end
Humanoid.Animator.Parent = nil
Character.Animate.Parent = nil

local newMotor = function(part0, part1, c0, c1)
    local w = Create('Motor'){
        Parent = part0,
        Part0 = part0,
        Part1 = part1,
        C0 = c0,
        C1 = c1,
    }
    return w
end

function clerp(a, b, t)
    return a:lerp(b, t)
end

RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
NeckCF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)

local RW = newMotor(Torso, RightArm, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0)) 
local LW = newMotor(Torso, LeftArm, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
local RH = newMotor(Torso, RightLeg, CFrame.new(.5, -2, 0), CFrame.new(0, 0, 0))
local LH = newMotor(Torso, LeftLeg, CFrame.new(-.5, -2, 0), CFrame.new(0, 0, 0))
RootJoint.C1 = CFrame.new(0, 0, 0)
RootJoint.C0 = CFrame.new(0, 0, 0)
Torso.Neck.C1 = CFrame.new(0, 0, 0)
Torso.Neck.C0 = CFrame.new(0, 1.5, 0)

local rarmc1 = RW.C1
local larmc1 = LW.C1
local rlegc1 = RH.C1
local llegc1 = LH.C1

local resetc1 = false

function PlayAnimationFromTable(table, speed, bool)
    RootJoint.C0 = clerp(RootJoint.C0, table[1], speed) 
    Torso.Neck.C0 = clerp(Torso.Neck.C0, table[2], speed) 
    RW.C0 = clerp(RW.C0, table[3], speed) 
    LW.C0 = clerp(LW.C0, table[4], speed) 
    RH.C0 = clerp(RH.C0, table[5], speed) 
    LH.C0 = clerp(LH.C0, table[6], speed) 
    if bool == true then
        if resetc1 == false then
            resetc1 = true
            RootJoint.C1 = RootJoint.C1
            Torso.Neck.C1 = Torso.Neck.C1
            RW.C1 = rarmc1
            LW.C1 = larmc1
            RH.C1 = rlegc1
            LH.C1 = llegc1
        end
    end
end

ArtificialHB = Create("BindableEvent", script){
    Parent = script,
    Name = "Heartbeat",
}

script:WaitForChild("Heartbeat")

frame = 1 / 30
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
    tf = tf + s
    if tf >= frame then
        if allowframeloss then
            script.Heartbeat:Fire()
            lastframe = tick()
        else
            for i = 1, math.floor(tf / frame) do
                script.Heartbeat:Fire()
            end
            lastframe = tick()
        end
        if tossremainder then
            tf = 0
        else
            tf = tf - frame * math.floor(tf / frame)
        end
    end
end)

function swait(num)
    if num == 0 or num == nil then
        ArtificialHB.Event:wait()
    else
        for i = 0, num do
            ArtificialHB.Event:wait()
        end
    end
end

function RemoveOutlines(part)
    part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
    
CFuncs = {  
    ["Part"] = {
        Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
            local Part = Create("Part"){
                Parent = Parent,
                Reflectance = Reflectance,
                Transparency = Transparency,
                CanCollide = false,
                Locked = true,
                BrickColor = BrickColor.new(tostring(BColor)),
                Name = Name,
                Size = Size,
                Material = Material,
            }
            RemoveOutlines(Part)
            return Part
        end;
    };
    
    ["Mesh"] = {
        Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
            local Msh = Create(Mesh){
                Parent = Part,
                Offset = OffSet,
                Scale = Scale,
            }
            if Mesh == "SpecialMesh" then
                Msh.MeshType = MeshType
                Msh.MeshId = MeshId
            end
            return Msh
        end;
    };
    
    ["Mesh"] = {
        Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
            local Msh = Create(Mesh){
                Parent = Part,
                Offset = OffSet,
                Scale = Scale,
            }
            if Mesh == "SpecialMesh" then
                Msh.MeshType = MeshType
                Msh.MeshId = MeshId
            end
            return Msh
        end;
    };
    
    ["Weld"] = {
        Create = function(Parent, Part0, Part1, C0, C1)
            local Weld = Create("Weld"){
                Parent = Parent,
                Part0 = Part0,
                Part1 = Part1,
                C0 = C0,
                C1 = C1,
            }
            return Weld
        end;
    };

    ["Sound"] = {
        Create = function(id, par, vol, pit) 
            coroutine.resume(coroutine.create(function()
                local S = Create("Sound"){
                    Volume = vol,
                    Pitch = pit or 1,
                    SoundId = id,
                    Parent = par or workspace,
                }
                wait() 
                S:play() 
                game:GetService("Debris"):AddItem(S, 6)
            end))
        end;
    };
    
    ["ParticleEmitter"] = {
        Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
            local fp = Create("ParticleEmitter"){
                Parent = Parent,
                Color = ColorSequence.new(Color1, Color2),
                LightEmission = LightEmission,
                Size = Size,
                Texture = Texture,
                Transparency = Transparency,
                ZOffset = ZOffset,
                Acceleration = Accel,
                Drag = Drag,
                LockedToPart = LockedToPart,
                VelocityInheritance = VelocityInheritance,
                EmissionDirection = EmissionDirection,
                Enabled = Enabled,
                Lifetime = LifeTime,
                Rate = Rate,
                Rotation = Rotation,
                RotSpeed = RotSpeed,
                Speed = Speed,
                VelocitySpread = VelocitySpread,
            }
            return fp
        end;
    };

    CreateTemplate = {
    
    };
}



New = function(Object, Parent, Name, Data)
    local Object = Instance.new(Object)
    for Index, Value in pairs(Data or {}) do
        Object[Index] = Value
    end
    Object.Parent = Parent
    Object.Name = Name
    return Object
end

Handle = New("Part",m,"Handle",{Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(1.78105354, 1.21267569, 0.446083069),CFrame = CFrame.new(3.48884702, 1.89424598, -23.6011944, 0.0172098875, -7.30156898e-07, 0.999851942, 0.999853492, 1.19907781e-08, -0.0172098596, -1.80598714e-09, 1.00000083, 1.4975667e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
moter = New("Weld",Handle,"mot",{Part0 = RightArm,Part1 = Handle,})
Part = New("Part",m,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(3.46324158, 2.55061626, -23.0996056, 0.0172099378, 1.26508749e-05, 0.999852061, 0.999856234, 0.000737910799, -0.0172098614, -0.000738026109, 1.00000215, 2.29468287e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.492160469, 0.24608025, 0.123040132),})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098838, 0.999853015, -0.000738022442, 1.18836761e-05, 0.000737924012, 1.00000048, 0.999851942, -0.0172098614, 1.52736902e-06),C1 = CFrame.new(0.655831456, 0.501588821, -0.0368974209, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",m,"Part",{Material = Enum.Material.SmoothPlastic,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.200000003, 0.270688266, 0.270688266),CFrame = CFrame.new(3.47537327, 1.11045444, -23.2953625, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.123040125, 1, 1),MeshType = Enum.MeshType.Cylinder,})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(-0.783906102, 0.305831909, 1.74045563e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",m,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.47648132, 0.221472263, 0.344512314),CFrame = CFrame.new(3.48828244, 1.86040294, -23.3093491, 0.0172099452, 3.70001203e-08, 0.999852061, 0.99985671, -3.59708352e-09, -0.0172098596, -4.18887769e-09, 1.0000025, 2.26488032e-06),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 1.00999999, 1),})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),C1 = CFrame.new(-0.0338476896, 0.291845322, 1.8119812e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",m,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.98432076, 0.200000003, 0.24608022),CFrame = CFrame.new(3.48404813, 1.61474013, -23.4433804, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.246080264, 1),})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(-0.279546618, 0.157814026, 1.21593475e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",m,"Part",{Material = Enum.Material.SmoothPlastic,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.984321058, 0.200000003, 0.200000003),CFrame = CFrame.new(3.36101127, 1.61687815, -23.4187717, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.492160618, 0.492160439),MeshType = Enum.MeshType.Cylinder,})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(-0.279526353, 0.182422638, -0.123043299, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",m,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(3.53706741, 2.54934502, -23.0996056, 0.0172099378, 1.26508749e-05, 0.999852061, 0.999856234, 0.000737910799, -0.0172098614, -0.000738026109, 1.00000215, 2.29468287e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.492160469, 0.246080235, 0.123040132),})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098838, 0.999853015, -0.000738022442, 1.18836761e-05, 0.000737924012, 1.00000048, 0.999851942, -0.0172098614, 1.52736902e-06),C1 = CFrame.new(0.655830979, 0.501588821, 0.0369393826, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",m,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.47648132, 0.200000003, 0.200000003),CFrame = CFrame.new(3.48828554, 1.86097884, -23.1606178, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.369120389, 0.7382406),})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(-0.0332717896, 0.440576553, 1.14440918e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Partss = New("Part",m,"Part",{BrickColor = BrickColor.new("Yellow"),Material = Enum.Material.SmoothPlastic,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.200000003, 0.221472204, 0.221472189),CFrame = CFrame.new(3.47526526, 1.10428262, -23.2953568, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Partss,"Mesh",{Scale = Vector3.new(0.123040125, 1, 1),MeshType = Enum.MeshType.Cylinder,})
mot = New("Weld",Partss,"mot",{Part0 = Partss,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(-0.790078878, 0.305837631, 1.57356262e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",m,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(3.49040294, 1.9837563, -23.5174713, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.615200579, 0.36912033, 0.24608025),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(0.0895236731, 0.0837230682, 1.52587891e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",m,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.295296252, 0.738240778, 0.369120389),CFrame = CFrame.new(3.49802279, 2.42631888, -23.8138046, 0.0172099452, 3.70001203e-08, 0.999852061, 0.99985671, -3.59708352e-09, -0.0172098596, -4.18887769e-09, 1.0000025, 2.26488032e-06),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),C1 = CFrame.new(0.532151103, -0.212610245, 1.74045563e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",m,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.344512314, 0.78745681, 0.344512314),CFrame = CFrame.new(3.49802279, 2.42631888, -23.8138046, 0.0172099452, 3.70001203e-08, 0.999852061, 0.99985671, -3.59708352e-09, -0.0172098596, -4.18887769e-09, 1.0000025, 2.26488032e-06),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),C1 = CFrame.new(0.532151103, -0.212610245, 1.74045563e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",m,"Part",{Material = Enum.Material.SmoothPlastic,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.984321058, 0.200000003, 0.200000003),CFrame = CFrame.new(3.60706425, 1.61264217, -23.4187698, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.492160618, 0.492160439),MeshType = Enum.MeshType.Cylinder,})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(-0.279527187, 0.182424545, 0.12304616, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",m,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(3.47672749, 1.18911982, -23.1232109, 0.999851942, 0.00638213893, 0.0159827713, -0.0172098316, 0.37065956, 0.928613782, 4.44045327e-06, -0.928749561, 0.370713741),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(0.24608025, 0.246080264, 0.615200639),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999851882, -0.0172098316, 3.67313623e-06, 0.00638283044, 0.370658338, -0.928748012, 0.0159824342, 0.928610861, 0.370713145),C1 = CFrame.new(-0.705229163, 0.477983475, 1.76429749e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",m,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.344512254, 0.787456751, 0.200000003),CFrame = CFrame.new(3.50247502, 2.68478155, -23.8132839, 0.999851942, 1.0713723e-05, -0.0172099732, -0.0172098912, 0.000738376984, -0.999856234, 4.21693585e-06, 1.00000226, 0.000738456321),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 1, 0.861280859),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999851882, -0.0172098912, 3.44961882e-06, 9.9465251e-06, 0.000738390256, 1.0000006, -0.0172099192, -0.999853015, 0.000738452654),C1 = CFrame.new(0.790651679, -0.212089539, 2.07424164e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",m,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(3.4904809, 1.98827124, -23.5162678, -0.999852061, -0.0148990965, 0.00861407723, 0.0172099397, -0.865535975, 0.500560343, -4.36594746e-06, 0.500633478, 0.865662456),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(0.24608025, 0.369120389, 0.861280918),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.999851942, 0.0172099397, -3.59863043e-06, -0.0148994327, -0.865533173, 0.500632644, 0.00861338526, 0.500558794, 0.865661025),C1 = CFrame.new(0.0940393209, 0.0849266052, 1.54972076e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",m,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.442944348, 0.200000003, 0.200000003),CFrame = CFrame.new(3.37415838, 2.37982368, -23.1609974, 0.0172098633, 1.48413446e-05, 0.999851882, 0.999856234, 0.0007376945, -0.0172097869, -0.000737846654, 1.00000215, 7.44058752e-08),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 0.369120389, 0.492160529),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098093, 0.999853015, -0.000737842987, 1.40741467e-05, 0.000737707771, 1.00000048, 0.999851823, -0.0172097888, -6.92903996e-07),C1 = CFrame.new(0.483531356, 0.440196991, -0.12302804, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",m,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.61520052, 0.200000003, 0.200000003),CFrame = CFrame.new(3.35783243, 1.43252242, -23.1602993, 0.0172098633, 1.48413446e-05, 0.999851882, 0.999856234, 0.0007376945, -0.0172097869, -0.000737846654, 1.00000215, 7.44058752e-08),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 0.369120389, 0.492160529),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098093, 0.999853015, -0.000737842987, 1.40741467e-05, 0.000737707771, 1.00000048, 0.999851823, -0.0172097888, -6.92903996e-07),C1 = CFrame.new(-0.463909149, 0.440895081, -0.123048544, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",m,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.47648132, 0.200000003, 0.200000003),CFrame = CFrame.new(3.61130548, 1.85886192, -23.160614, -0.0172098689, 1.04156998e-05, -0.99985218, -0.999856234, 0.000738191127, 0.0172097925, 0.000738266157, 1.00000238, -4.55221243e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 0.369120389, 0.492160529),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.0172098149, -0.999853075, 0.00073826249, 9.64850187e-06, 0.00073820434, 1.00000072, -0.999852121, 0.0172097944, -3.78489494e-06),C1 = CFrame.new(-0.0332713127, 0.440580368, 0.123049498, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",m,"Wedge",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.36912033, 0.738240778, 0.200000003),CFrame = CFrame.new(3.50183868, 2.64789343, -23.8132629, 0.999851942, 1.0818032e-05, -0.017209895, -0.0172098186, 0.000737608876, -0.999856234, 4.13497901e-06, 1.00000238, 0.000737691764),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 1, 0.738240719),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999851882, -0.0172098186, 3.36766243e-06, 1.00508332e-05, 0.000737622147, 1.00000072, -0.0172098409, -0.999853015, 0.000737688097),C1 = CFrame.new(0.753758311, -0.212068558, 1.93119049e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",m,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.344512254, 0.787456751, 0.200000003),CFrame = CFrame.new(3.49357963, 2.16808391, -23.8129005, 0.999852061, -1.05647114e-05, 0.0172100067, -0.0172099303, -0.000737611321, 0.999856114, 4.36594746e-06, -1.00000226, -0.000737689785),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 1, 0.861280859),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999851942, -0.0172099303, 3.59863043e-06, -9.79751348e-06, -0.000737624592, -1.0000006, 0.0172099527, 0.999852955, -0.000737686118),C1 = CFrame.new(0.273878455, -0.211706161, 1.90734863e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",m,"Wedge",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.36912033, 0.738240659, 0.200000003),CFrame = CFrame.new(3.49420977, 2.20497489, -23.8129292, 0.999852061, -1.05647114e-05, 0.0172100067, -0.0172099303, -0.000737611321, 0.999856114, 4.36594746e-06, -1.00000226, -0.000737689785),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 1, 0.738240719),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999851942, -0.0172099303, 3.59863043e-06, -9.79751348e-06, -0.000737624592, -1.0000006, 0.0172099527, 0.999852955, -0.000737686118),C1 = CFrame.new(0.310774684, -0.211734772, 1.43051147e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})

for _,v in pairs(m:children()) do
if v:IsA("Part") then
v.CanCollide = false
end
end
for _,v in pairs(m:children()) do
if v:IsA("Part") then
v.Material = "Neon"
end
end
spawn(function()
while wait() do
for _,v in pairs(m:children()) do
if v:IsA("Part") then
v.BrickColor=BrickColor.random()
end
end
end
end)


function rayCast(Position, Direction, Range, Ignore)
    return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

--[[FindNearestTorso = function(pos)
    local list = (game.Workspace:children())
    local torso = nil
    local dist = 1000
    local temp, human, temp2 = nil, nil, nil
    for x = 1, #list do
        temp2 = list[x]
        if temp2.className == "Model" and temp2.Name ~= Character.Name then
            temp = temp2:findFirstChild("Torso")
            human = temp2:findFirstChild("Humanoid")
            if temp ~= nil and human ~= nil and human.Health > 0 and (temp.Position - pos).magnitude < dist then
                local dohit = true
                if dohit == true then
                    torso = temp
                    dist = (temp.Position - pos).magnitude
                end
            end
        end
    end
    return torso, dist
end]]
function FindNearestTorso(Position, Distance, SinglePlayer)
    if SinglePlayer then
        return (SinglePlayer.Torso.CFrame.p - Position).magnitude < Distance
    end
    local List = {}
    for i, v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") then
            if v:findFirstChild("Torso") then
                if v ~= Character then
                    if (v.Torso.Position - Position).magnitude <= Distance then
                        table.insert(List, v)
                    end 
                end 
            end 
        end 
    end
    return List
end
function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
    if hit.Parent == nil then
        return
    end
    local h = hit.Parent:FindFirstChild("Humanoid")
    for _, v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
            h = v
        end
    end
    if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
        if hit.Parent:findFirstChild("DebounceHit") ~= nil then
            if hit.Parent.DebounceHit.Value == true then
                return
            end
        end
        local c = Create("ObjectValue"){
            Name = "creator",
            Value = game:service("Players").LocalPlayer,
            Parent = h,
        }
        game:GetService("Debris"):AddItem(c, .5)
        if HitSound ~= nil and HitPitch ~= nil then
            CFuncs.Sound.Create(HitSound, hit, 1, HitPitch) 
        end
        local Damage = math.random(minim, maxim)
        local blocked = false
        local block = hit.Parent:findFirstChild("Block")
        if block ~= nil then
            if block.className == "IntValue" then
                if block.Value > 0 then
                    blocked = true
                    block.Value = block.Value - 1
                    print(block.Value)
                end
            end
        end
        if blocked == false then
            h.Health = h.Health - Damage
            ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really black").Color)
        else
            h.Health = h.Health - (Damage / 2)
            ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really black").Color)
        end
        if Type == "Knockdown" then
            local hum = hit.Parent.Humanoid
            hum.PlatformStand = true
            coroutine.resume(coroutine.create(function(HHumanoid)
                swait(1)
                HHumanoid.PlatformStand = false
            end), hum)
            local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
            local bodvol = Create("BodyVelocity"){
                velocity = angle * knockback,
                P = 5000,
                maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
                Parent = hit,
            }
            local rl = Create("BodyAngularVelocity"){
                P = 3000,
                maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
                angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
                Parent = hit,
            }
            game:GetService("Debris"):AddItem(bodvol, .5)
            game:GetService("Debris"):AddItem(rl, .5)
        elseif Type == "Normal" then
            local vp = Create("BodyVelocity"){
                P = 500,
                maxForce = Vector3.new(math.huge, 0, math.huge),
                velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
            }
            if knockback > 0 then
                vp.Parent = hit.Parent.Torso
            end
            game:GetService("Debris"):AddItem(vp, .5)
        elseif Type == "Up" then
            local bodyVelocity = Create("BodyVelocity"){
                velocity = Vector3.new(0, 20, 0),
                P = 5000,
                maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
                Parent = hit,
            }
            game:GetService("Debris"):AddItem(bodyVelocity, .5)
        elseif Type == "DarkUp" then
            coroutine.resume(coroutine.create(function()
                for i = 0, 1, 0.1 do
                    swait()
                    Effects.Block.Create(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, .08, 1)
                end
            end))
            local bodyVelocity = Create("BodyVelocity"){
                velocity = Vector3.new(0, 20, 0),
                P = 5000,
                maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
                Parent = hit,
            }
            game:GetService("Debris"):AddItem(bodyVelocity, 1)
        elseif Type == "Snare" then
            local bp = Create("BodyPosition"){
                P = 2000,
                D = 100,
                maxForce = Vector3.new(math.huge, math.huge, math.huge),
                position = hit.Parent.Torso.Position,
                Parent = hit.Parent.Torso,
            }
            game:GetService("Debris"):AddItem(bp, 1)
        elseif Type == "Freeze" then
            local BodPos = Create("BodyPosition"){
                P = 50000,
                D = 1000,
                maxForce = Vector3.new(math.huge, math.huge, math.huge),
                position = hit.Parent.Torso.Position,
                Parent = hit.Parent.Torso,
            }
            local BodGy = Create("BodyGyro") {
                maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
                P = 20e+003,
                Parent = hit.Parent.Torso,
                cframe = hit.Parent.Torso.CFrame,
            }
            hit.Parent.Torso.Anchored = true
            coroutine.resume(coroutine.create(function(Part) 
                swait(1.5)
                Part.Anchored = false
            end), hit.Parent.Torso)
            game:GetService("Debris"):AddItem(BodPos, 3)
            game:GetService("Debris"):AddItem(BodGy, 3)
        end
        local debounce = Create("BoolValue"){
            Name = "DebounceHit",
            Parent = hit.Parent,
            Value = true,
        }
        game:GetService("Debris"):AddItem(debounce, Delay)
        c = Create("ObjectValue"){
            Name = "creator",
            Value = Player,
            Parent = h,
        }
        game:GetService("Debris"):AddItem(c, .5)
    end
end

function ShowDamage(Pos, Text, Time, Color)
    local Rate = (1 / 30)
    local Pos = (Pos or Vector3.new(0, 0, 0))
    local Text = (Text or "")
    local Time = (Time or 2)
    local Color = (Color or Color3.new(1, 0, 1))
    local EffectPart = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
    EffectPart.Anchored = true
    local BillboardGui = Create("BillboardGui"){
        Size = UDim2.new(3, 0, 3, 0),
        Adornee = EffectPart,
        Parent = EffectPart,
    }
    local TextLabel = Create("TextLabel"){
        BackgroundTransparency = 1,
        Size = UDim2.new(1, 0, 1, 0),
        Text = Text,
        Font = "SciFi",
        TextColor3 = Color,
        TextScaled = true,
        Parent = BillboardGui,
    }
    game.Debris:AddItem(EffectPart, (Time))
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

function dmg(dude)
if dude.Name ~= Character then
dude.Humanoid.PlatformStand = true
local bgf = Instance.new("BodyGyro",dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
local val = Instance.new("BoolValue",dude)
val.Name = "IsHit"
for i = 1, 6 do
local blo = Instance.new("Part",game.Workspace)
blo.Size = Vector3.new(.6,.2,.6)
blo.Material = "Neon"
blo.BrickColor = BrickColor.new("Crimson")
--blo.Position = dude.Head.Position
blo.CFrame = dude.Head.CFrame
game:GetService("Debris"):AddItem(blo,30)
end
local ds = coroutine.wrap(function()
wait(.2)
dude.Torso:BreakJoints()
end)
ds()
end
end

function mdmg(Part, Magnitude)--, MinimumDamage, MaximumDamage, KnockBack, Type, HitSound, HitPitch)
    --local buddy
    for _, c in pairs(workspace:children()) do
        local hum = c:findFirstChild("Humanoid")
        if hum ~= nil then
            local head = c:findFirstChild("Torso")
            if head ~= nil then
                local targ = head.Position - Part.Position
                local mag = targ.magnitude
                if mag <= Magnitude and c.Name ~= Player.Name then 
                if c.Name ~= Character then
                if c.Name ~= "CKbackup" then
            local asd = Instance.new("ParticleEmitter",c.Torso)
            asd.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.5, 0, 0))
            asd.LightEmission = .1
            asd.Size = NumberSequence.new(0.2)
            asd.Texture = "http://www.roblox.com/asset/?ID=183711814"
            aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 5)})
            bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
            asd.Transparency = bbb
            asd.Size = aaa
            asd.ZOffset = .9
            asd.Acceleration = Vector3.new(0, -5, 0)
            asd.LockedToPart = false
            asd.EmissionDirection = "Back"
            asd.Lifetime = NumberRange.new(1, 2)
            asd.Rate = 1000
            asd.Rotation = NumberRange.new(-100, 100)
            asd.RotSpeed = NumberRange.new(-100, 100)
            asd.Speed = NumberRange.new(6)
            asd.VelocitySpread = 10000
            asd.Enabled=true
                    --Damage(head, head, MinimumDamage, MaximumDamage, KnockBack, Type, RootPart, .1, "rbxassetid://" .. HitSound, HitPitch)
                    dmg(c)
                    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=836454385", c.Torso, 1.2, 1)
                    coroutine.wrap(function()
                    wait(.2)
                    asd.Enabled = false
                    wait(2)
                    asd:Remove()
                    end)()
                       else
        CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=836454385", c.Torso, 1.5, 1)        
        Effects.Sphere.Create(BrickColor.random(), c.Torso.CFrame, 30, 30, 30, .5, .5, .5, 0.04)

                    end
                end
            end
        end
    end
    end
end
EffectModel = Create("Model"){
    Parent = Character,
    Name = "Effects",
}

Effects = {
    Block = {
        Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
            local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
            prt.Anchored = true
            prt.CFrame = cframe
            prt.Material = "Neon"
            local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
            game:GetService("Debris"):AddItem(prt, 10)
            if Type == 1 or Type == nil then
                table.insert(Effects, {
                    prt,
                    "Block1",
                    delay,
                    x3,
                    y3,
                    z3,
                    msh
                })
            elseif Type == 2 then
                table.insert(Effects, {
                    prt,
                    "Block2",
                    delay,
                    x3,
                    y3,
                    z3,
                    msh
                })
            end
        end;
    };

        Cylinder = {
        Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
            local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
            prt.Anchored = true
            prt.Material = "Neon"
            prt.CFrame = cframe
            local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
            game:GetService("Debris"):AddItem(prt, 10)
            table.insert(Effects, {
                prt,
                "Cylinder",
                delay,
                x3,
                y3,
                z3,
                msh
            })
        end;
    };
    Head = {
        Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
            local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
            prt.Anchored = true
            prt.Material = "Neon"
            prt.CFrame = cframe
            local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Head", "nil", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
            game:GetService("Debris"):AddItem(prt, 10)
            table.insert(Effects, {
                prt,
                "Cylinder",
                delay,
                x3,
                y3,
                z3,
                msh
            })
        end;
    };
    
    Sphere = {
        Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
            local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
            prt.Anchored = true
            prt.Material = "Neon"
            prt.CFrame = cframe
            local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
            game:GetService("Debris"):AddItem(prt, 10)
            table.insert(Effects, {
                prt,
                "Cylinder",
                delay,
                x3,
                y3,
                z3,
                msh
            })
        end;
    };
    
    Elect = {
        Create = function(cff, x, y, z)
            local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, BrickColor.new("Lime green"), "Part", Vector3.new(1, 1, 1))
            prt.Anchored = true
            prt.Material = "Neon"
            prt.CFrame = cff * CFrame.new(math.random(-x, x), math.random(-y, y), math.random(-z, z))
            prt.CFrame = CFrame.new(prt.Position)
            game:GetService("Debris"):AddItem(prt, 2)
            local xval = math.random() / 2
            local yval = math.random() / 2
            local zval = math.random() / 2
            local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(xval, yval, zval))
            table.insert(Effects, {
                prt,
                "Elec",
                0.1,
                x,
                y,
                z,
                xval,
                yval,
                zval
            })
        end;

    };
    
    Ring = {
        Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
            local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
            prt.Anchored = true
            prt.CFrame = cframe
            prt.Material = "Neon"
            local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
            game:GetService("Debris"):AddItem(prt, 10)
            table.insert(Effects, {
                prt,
                "Cylinder",
                delay,
                x3,
                y3,
                z3,
                msh
            })
        end;
    };


    Wave = {
        Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
            local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
            prt.Anchored = true
            prt.CFrame = cframe
            prt.Material = "Neon"
            local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
            game:GetService("Debris"):AddItem(prt, 10)
            table.insert(Effects, {
                prt,
                "Cylinder",
                delay,
                x3,
                y3,
                z3,
                msh
            })
        end;
    };

    Break = {
        Create = function(brickcolor, cframe, x1, y1, z1)
            local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
            prt.Anchored = true
            prt.Material = "Neon"
            prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
            local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
            local num = math.random(10, 50) / 1000
            game:GetService("Debris"):AddItem(prt, 10)
            table.insert(Effects, {
                prt,
                "Shatter",
                num,
                prt.CFrame,
                math.random() - math.random(),
                0,
                math.random(50, 100) / 100
            })
        end;
    };
    
    Fire = {
        Create = function(brickcolor, cframe, x1, y1, z1, delay)
            local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
            prt.Anchored = true
            prt.Material = "Neon"
            prt.CFrame = cframe
            msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
            game:GetService("Debris"):AddItem(prt, 10)
            table.insert(Effects, {
                prt,
                "Fire",
                delay,
                1,
                1,
                1,
                msh
            })
        end;
    };
    
    FireWave = {
        Create = function(brickcolor, cframe, x1, y1, z1)
            local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 1, brickcolor, "Effect", Vector3.new())
            prt.Anchored = true
            prt.CFrame = cframe
            prt.Material = "Neon"
            msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
            local d = Create("Decal"){
                Parent = prt,
                Texture = "rbxassetid://26356434",
                Face = "Top",
            }
            local d = Create("Decal"){
                Parent = prt,
                Texture = "rbxassetid://26356434",
                Face = "Bottom",
            }
            game:GetService("Debris"):AddItem(prt, 10)
            table.insert(Effects, {
                prt,
                "FireWave",
                1,
                30,
                math.random(400, 600) / 100,
                msh
            })
        end;
    };
    
    Lightning = {
        Create = function(p0, p1, tym, ofs, col, th, tra, last)
            local magz = (p0 - p1).magnitude
            local curpos = p0
            local trz = {
                -ofs,
                ofs
            }
            for i = 1, tym do
                local li = CFuncs.Part.Create(EffectModel, "Neon", 0, tra or 0.4, col, "Ref", Vector3.new(th, th, magz / tym))
                local ofz = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
                local trolpos = CFrame.new(curpos, p1) * CFrame.new(0, 0, magz / tym).p + ofz
                li.Material = "Neon"
                if tym == i then
                    local magz2 = (curpos - p1).magnitude
                    li.Size = Vector3.new(th, th, magz2)
                    li.CFrame = CFrame.new(curpos, p1) * CFrame.new(0, 0, -magz2 / 2)
                    table.insert(Effects, {
                        li,
                        "Disappear",
                        last
                    })
                else
                    do
                        do
                            li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / tym / 2)
                            curpos = li.CFrame * CFrame.new(0, 0, magz / tym / 2).p
                            game.Debris:AddItem(li, 10)
                            table.insert(Effects, {
                                li,
                                "Disappear",
                                last
                            })
                        end
                    end
                end
            end
        end
    };

    EffectTemplate = {

    };
}

function chatfunc(text)
local chat = coroutine.wrap(function()
if Character:FindFirstChild("TalkingBillBoard")~= nil then
Character:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = Character.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Cartoon"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(.6,0,0)
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
local tecks3 = Instance.new("TextLabel",naeeym2)
tecks3.BackgroundTransparency = 1
tecks3.BorderSizePixel = 0
tecks3.Text = ""
tecks3.Font = "Cartoon"
tecks3.TextSize = 30
tecks3.TextStrokeTransparency = 0
tecks3.TextColor3 = BrickColor.new("Hot white").Color
tecks3.TextStrokeColor3 = Color3.new(0,0,0)
tecks3.Size = UDim2.new(1,0,0.5,0)
spawn(function()
    while wait() do
        tecks3.TextColor3 = BrickColor.random().Color
        tecks2.TextColor3 = BrickColor.random().Color
    end
end)
for i = 1,string.len(text),1 do
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=178104975", Character, 1, 1)
tecks2.Text = string.sub(text,1,i)
tecks3.Text = string.sub(text,1,i)
wait(0.01)
end
wait(2)
for i = 1, 50 do
swait()
tecks2.Position = tecks2.Position - UDim2.new(math.random(-1,1),math.random(-5,5),.05,math.random(-5,5))
tecks2.Rotation = tecks2.Rotation - .8
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.Position = tecks2.Position - UDim2.new(math.random(-1,1),math.random(-5,5),.05,math.random(-5,5))
tecks3.Rotation = tecks2.Rotation + .8
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
naeeym2:Destroy()
end)
chat()
end
function onChatted(msg)
chatfunc(msg)
end
Player.Chatted:connect(onChatted)

abss = Instance.new("BillboardGui",Character)
abss.Size = UDim2.new(10,0,10,0)
abss.Enabled = false
imgl = Instance.new("ImageLabel",abss)
imgl.Position = UDim2.new(0,0,0,0)
imgl.Size = UDim2.new(1,0,1,0)
imgl.Image = "rbxassetid://183711814"
imgl.BackgroundTransparency = 1
imgl.ImageColor3 = Color3.new(.9,0,0)
img2 = Instance.new("ImageLabel",abss)
img2.Position = UDim2.new(0,0,0,0)
img2.Size = UDim2.new(1,0,1,0)
img2.Image = "rbxassetid://183711814"
img2.BackgroundTransparency = 1
img2.ImageColor3 = Color3.new(.9,0,0)
spawn(function()
    while wait() do
        imgl.ImageColor3 = BrickColor.random().Color
        img2.ImageColor3 = BrickColor.random().Color
    end
end)

spawn(function()
chatfunc("Noobcider By Skrubl0rdzI")
wait(3)
chatfunc("Modified Date : 06/16/2017")
wait(3)
chatfunc("Original Script : Genocider")
wait(3)
chatfunc("Have Fun!1!!")
end)

spawn(function()
    while wait(1) do
        Effects.Sphere.Create(BrickColor.random(), RootPart.CFrame, 40,40,40, 1, 1, 1, 0.07)
    end
end)
function attackone()
    attack = true
    Humanoid.WalkSpeed = 0
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=138080313", Character, 1, .5)
    if targetted.Name ~= "Skrubl0rdzI" then
            local partasdeff = Instance.new("ParticleEmitter",targetted.Torso)
            partasdeff.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.5, 0, 0))
            partasdeff.LightEmission = .1
            partasdeff.Size = NumberSequence.new(0.2)
            partasdeff.Texture = "http://www.roblox.com/asset/?ID=183711814"
            aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 5)})
            bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
            partasdeff.Transparency = bbb
            partasdeff.Size = aaa
            partasdeff.ZOffset = .9
            partasdeff.Acceleration = Vector3.new(0, -5, 0)
            partasdeff.LockedToPart = false
            partasdeff.EmissionDirection = "Back"
            partasdeff.Lifetime = NumberRange.new(1, 2)
            partasdeff.Rate = 1000
            partasdeff.Rotation = NumberRange.new(-100, 100)
            partasdeff.RotSpeed = NumberRange.new(-100, 100)
            partasdeff.Speed = NumberRange.new(6)
            partasdeff.VelocitySpread = 10000
            partasdeff.Enabled=false
    for i = 0, 3, 0.1 do
        swait()
        PlayAnimationFromTable({
         CFrame.new(0.0150662307, -4.88092428e-06, 0.0148906102, -0.01982099, -1.08002496e-12, 0.999803543, -4.46946984e-07, 1, -8.86181084e-09, -0.999803782, 3.27825546e-07, -0.0198209975) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.00189219415, 1.50098944, -0.129972562, 0.0201512501, 0.0765038878, -0.996864021, 0.0566192083, 0.995383799, 0.0775336027, 0.998202145, -0.0580037907, 0.0157258138) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(2.01696348, 0.389823437, -0.060955409, -0.000397110358, -0.999624014, -0.0274192169, 0.00981300231, 0.0274140034, -0.999576092, 0.999951839, -0.0006660074, 0.00979842618) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.64040112, 0.216884568, 1.93210121e-06, 0.962137103, 0.272578239, -7.02217221e-07, -0.272574633, 0.962141275, -9.83368591e-06, -2.00979412e-06, 9.69739631e-06, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.64369607, -1.98395038, 0.206737444, 0.19058302, -0.152998164, -0.969677031, 0.0664296299, 0.987527609, -0.142758414, 0.979424179, -0.0372077115, 0.198368743) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.641120076, -1.92643452, -0.0258421432, 0.848103583, 0.133398816, -0.51276207, -0.0662644878, 0.986892581, 0.147146463, 0.52567035, -0.0908175632, 0.845826566) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .1, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.011209704, -1.63770795, -0.318749219, -0.0172089972, -4.19956632e-06, -0.999852002, 0.999852061, 8.99471343e-06, -0.0172089972, 9.06549394e-06, -1.00000012, 4.04558159e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
    end
    Effects.Block.Create(BrickColor.random(), Partss.CFrame, 2, 2, 2, 0.9, 0.9, 0.9, 0.05)
    Effects.Block.Create(BrickColor.random(), Partss.CFrame, 2, 2, 2, 0.5, 0.5, 0.5, 0.05)
    dmg(targetted)
    local ex = Instance.new("Explosion",workspace)
    ex.Position = Partss.Position
    ex.BlastRadius = 0
    partasdeff.Enabled=true
    for i = 0, 1, 0.1 do
        swait()
        PlayAnimationFromTable({
         CFrame.new(0.0150662307, -4.88092428e-06, 0.0148906102, -0.01982099, -1.08002496e-12, 0.999803543, -4.46946984e-07, 1, -8.86181084e-09, -0.999803782, 3.27825546e-07, -0.0198209975) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0879677385, 1.49240708, -0.127746791, 0.0201510563, -0.100440688, -0.994740784, 0.0566197298, 0.99346137, -0.0991647467, 0.998197258, -0.0543235913, 0.0257058665) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(2.03539443, 0.729742587, 0.0108130341, -0.00389442407, -0.967803538, 0.251676887, 0.0148300035, -0.251707017, -0.967689872, 0.999882519, -3.62247229e-05, 0.0153327845) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.64040112, 0.216884568, 1.93210121e-06, 0.962137103, 0.272578239, -7.02217221e-07, -0.272574633, 0.962141275, -9.83368591e-06, -2.00979412e-06, 9.69739631e-06, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.64369607, -1.98395038, 0.206737444, 0.19058302, -0.152998164, -0.969677031, 0.0664296299, 0.987527609, -0.142758414, 0.979424179, -0.0372077115, 0.198368743) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.641120076, -1.92643452, -0.0258421432, 0.848103583, 0.133398816, -0.51276207, -0.0662644878, 0.986892581, 0.147146463, 0.52567035, -0.0908175632, 0.845826566) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .3, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0112083517, -1.63770616, -0.318746239, -0.0172079317, -2.87033617e-06, -0.999851942, 0.999852002, 8.28504562e-06, -0.0172079336, 8.27014446e-06, -1.00000012, 2.72750913e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
    end
    partasdeff.Enabled=false
    for i = 0, 2, 0.1 do
        swait()
        PlayAnimationFromTable({
         CFrame.new(0.0150662307, -4.88092428e-06, 0.0148906102, -0.01982099, -1.08002496e-12, 0.999803543, -4.46946984e-07, 1, -8.86181084e-09, -0.999803782, 3.27825546e-07, -0.0198209975) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.00189219415, 1.50098944, -0.129972562, 0.0201512501, 0.0765038878, -0.996864021, 0.0566192083, 0.995383799, 0.0775336027, 0.998202145, -0.0580037907, 0.0157258138) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(2.01696348, 0.389823437, -0.060955409, -0.000397110358, -0.999624014, -0.0274192169, 0.00981300231, 0.0274140034, -0.999576092, 0.999951839, -0.0006660074, 0.00979842618) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.64040112, 0.216884568, 1.93210121e-06, 0.962137103, 0.272578239, -7.02217221e-07, -0.272574633, 0.962141275, -9.83368591e-06, -2.00979412e-06, 9.69739631e-06, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.64369607, -1.98395038, 0.206737444, 0.19058302, -0.152998164, -0.969677031, 0.0664296299, 0.987527609, -0.142758414, 0.979424179, -0.0372077115, 0.198368743) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.641120076, -1.92643452, -0.0258421432, 0.848103583, 0.133398816, -0.51276207, -0.0662644878, 0.986892581, 0.147146463, 0.52567035, -0.0908175632, 0.845826566) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .3, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.011209704, -1.63770795, -0.318749219, -0.0172089972, -4.19956632e-06, -0.999852002, 0.999852061, 8.99471343e-06, -0.0172089972, 9.06549394e-06, -1.00000012, 4.04558159e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
    end
    coroutine.wrap(function()
    wait(2)
    partasdeff:Remove()
    end)()
    else
    sel = math.random(1,3)
    if sel == 1 then    
    chatfunc("...")
    elseif sel == 2 then    
    chatfunc("No...")
    elseif sel == 3 then
    chatfunc("I can't do that...")
    end
    for i = 0, 5, 0.1 do
        swait()
        PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 0.999999881, 5.04870979e-29, -4.21790838e-43, 5.04870979e-29, 1, -5.04870979e-29, -4.21790838e-43, -5.04870979e-29, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.055980958, 1.49253583, -0.318915963, 0.999889553, 0.0107171191, -0.0102898544, -0.00218299939, 0.791040659, 0.611759722, 0.0146959936, -0.61166966, 0.790976703) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0- .4 * math.cos((sine) / 5), 0), 
         CFrame.new(1.54004693, 0.0494250022, 1.90734852e-06, 0.997847795, -0.0655719861, 0, 0.0655719936, 0.997847855, 7.53468894e-22, -4.94064563e-23, -7.51847299e-22, 0.99999994) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.51232088, 0.0410207808, -3.73942044e-06, 0.998558879, 0.053665854, -2.33806347e-07, -0.0536658242, 0.998558939, -1.04548817e-05, -3.27600219e-07, 1.04523697e-05, 0.99999994) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.540300906, -1.99793804, -2.11055158e-06, 0.998698354, -0.0510031469, 6.26438805e-07, 0.0510031544, 0.998698473, -1.04335422e-05, -9.34800966e-08, 1.04519122e-05, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.539562821, -1.99794102, -5.75710146e-09, 0.998630941, 0.0523070693, -1.67712614e-07, -0.0523070768, 0.99863106, -1.0458818e-05, -3.79587107e-07, 1.04532719e-05, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .3, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0111967381, -1.6377008, -0.318754196, -0.0172117949, 0, -0.999851942, 0.999851942, 0, -0.0172117949, 0, -1, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
    end
    end
    Humanoid.WalkSpeed = 8
    attack = false
end
local Grabbed = false

function shoot()
    attack = true
    for i = 0, 3, 0.1 do
        swait()
        PlayAnimationFromTable({
         CFrame.new(0.0150662307, -4.88092428e-06, 0.0148906102, -0.01982099, -1.08002496e-12, 0.999803543, -4.46946984e-07, 1, -8.86181084e-09, -0.999803782, 3.27825546e-07, -0.0198209975) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.00189219415, 1.50098944, -0.129972562, 0.0201512501, 0.0765038878, -0.996864021, 0.0566192083, 0.995383799, 0.0775336027, 0.998202145, -0.0580037907, 0.0157258138) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(2.01696348, 0.389823437, -0.060955409, -0.000397110358, -0.999624014, -0.0274192169, 0.00981300231, 0.0274140034, -0.999576092, 0.999951839, -0.0006660074, 0.00979842618) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.64040112, 0.216884568, 1.93210121e-06, 0.962137103, 0.272578239, -7.02217221e-07, -0.272574633, 0.962141275, -9.83368591e-06, -2.00979412e-06, 9.69739631e-06, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.64369607, -1.98395038, 0.206737444, 0.19058302, -0.152998164, -0.969677031, 0.0664296299, 0.987527609, -0.142758414, 0.979424179, -0.0372077115, 0.198368743) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.641120076, -1.92643452, -0.0258421432, 0.848103583, 0.133398816, -0.51276207, -0.0662644878, 0.986892581, 0.147146463, 0.52567035, -0.0908175632, 0.845826566) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .1, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.011209704, -1.63770795, -0.318749219, -0.0172089972, -4.19956632e-06, -0.999852002, 0.999852061, 8.99471343e-06, -0.0172089972, 9.06549394e-06, -1.00000012, 4.04558159e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
    end
    for i = 1,10 do
        Effects.Block.Create(BrickColor.random(), Partss.CFrame, 11,11,11, -1,-1,-1, 0.07)
        wait(0.01)
    end
    wait(0.5)
    local ref1 = New("Part",m,"ref",{Transparency = 1,Size = Vector3.new(.2,.2,.2),CFrame = Mouse.Hit,Anchored = true,CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
    local fc = Instance.new("Explosion",workspace) fc.Position = ref1.Position
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=141679994", Character, 1.5, 1)
    for i = 1,10 do
        Effects.Block.Create(BrickColor.random(), ref1.CFrame, 33,33,33, 9,9,9, 0.07)
    end
    wait(0.75)
    ref1:Destroy()
    attack = false
end

function hedshoot()
    attack = true

    --local GGyro = Instance.new("BodyPosition")
    local grab = nil
    for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 10)) do
        if v:FindFirstChild('Torso') then
            Grabbed = true
                CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=160718677", v.Torso, 1, .8)
            grab = v
        end
    end
    spawn(function()
    for i = 1,10 do
        Effects.Wave.Create(BrickColor.random(), RootPart.CFrame * CFrame.Angles(0,math.rad(90),math.rad(90)), .5, .5, .5, 1, .2, 1, 0.07)
        wait(0.03)
    end
    end)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=721590903", RootPart, 0, .5)
        for i = 0, 1, 0.1 do
        swait()
        if Grabbed == true then
            grab.Humanoid.PlatformStand = true
            --GGyro.position = Partss.Position
            --GGyro.Parent = grab.Head
            grab.Torso.CFrame = Partss.CFrame * CFrame.Angles(0,math.rad(-90),0)
        end
        PlayAnimationFromTable({
         CFrame.new(0.104281992, -1.37529127e-22, -0.179345995, 0.249840975, 5.92156003e-22, 0.968286872, -5.57068883e-22, 1, -4.67813147e-22, -0.968286872, -4.22523594e-22, 0.249840975) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0029296279, 1.47845411, -0.120581962, 0.0750327855, 0.428286105, -0.900522709, 0.166523039, 0.885005891, 0.434781253, 0.983178616, -0.18258062, -0.00491504371) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.96751118, 0.433084905, -0.278422326, 0.305184275, -0.951701581, -0.033564698, 0.012345003, 0.0391969904, -0.999155343, 0.952213347, 0.304512084, 0.0237110667) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.66092706, 0.266950369, 2.51774691e-06, 0.876968205, 0.480548859, -2.5331974e-06, -0.480548888, 0.876968026, -7.03267551e-06, -1.13248825e-06, 7.38352537e-06, 1.00000048) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.146832585, -1.7542398, 0.105335698, 0.266426086, 0.491796821, -0.828946948, 0.0135936746, 0.8580302, 0.513420045, 0.96375972, -0.148056909, 0.221916124) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.09110987, -1.74702656, 0.342675447, 0.765578806, 0.632523358, 0.117487431, -0.642276406, 0.740949869, 0.196148768, 0.0370163769, -0.225626737, 0.973510265) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .3, false)
        RootPart.Velocity = RootPart.CFrame.lookVector * 90
        moter.C0 = clerp(moter.C0, CFrame.new(0.0111932121, -1.63769805, -0.318755955, -0.0172044784, -1.3951445e-05, -0.999852121, 0.999852002, 3.55020165e-06, -0.0172044784, 3.78862023e-06, -1.00000012, 1.38879986e-05) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
        end
        if Grabbed == true then
        Humanoid.WalkSpeed = 0
        for i = 0, 2, 0.1 do
        swait()
        if Grabbed == true then
            grab.Humanoid.PlatformStand = true
            --GGyro.position = Partss.Position
            --GGyro.Parent = grab.Head
            grab.Torso.CFrame = Partss.CFrame * CFrame.Angles(0,math.rad(-90),0)
        end
        PlayAnimationFromTable({
         CFrame.new(0.104281992, -1.37529127e-22, -0.179345995, 0.249840975, 5.92156003e-22, 0.968286872, -5.57068883e-22, 1, -4.67813147e-22, -0.968286872, -4.22523594e-22, 0.249840975) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0029296279, 1.47845411, -0.120581962, 0.0750327855, 0.428286105, -0.900522709, 0.166523039, 0.885005891, 0.434781253, 0.983178616, -0.18258062, -0.00491504371) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.96751118, 0.433084905, -0.278422326, 0.305184275, -0.951701581, -0.033564698, 0.012345003, 0.0391969904, -0.999155343, 0.952213347, 0.304512084, 0.0237110667) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.58139038, 0.176945746, 5.27966768e-06, 0.939729631, 0.341920435, -3.69548798e-06, -0.341920793, 0.93972975, -6.50105221e-06, -5.81145287e-07, 6.40749931e-06, 1.00000048) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.569345832, -1.89868093, -0.00942828506, 0.266425997, -0.0769406706, -0.960779786, 0.0135936281, 0.997010291, -0.0760724545, 0.963760078, 0.00720720552, 0.266675085) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.849354744, -2.01616573, 0.241646215, 0.948664129, 0.308412433, 0.0701368451, -0.312046438, 0.948832989, 0.0484089628, -0.0516182035, -0.0678096861, 0.996362925) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .3, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0111932121, -1.63769805, -0.318755955, -0.0172044784, -1.3951445e-05, -0.999852121, 0.999852002, 3.55020165e-06, -0.0172044784, 3.78862023e-06, -1.00000012, 1.38879986e-05) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
        end
        if grab.Name ~= "CKbackup" then
            local partasdeff = Instance.new("ParticleEmitter",grab.Torso)
            partasdeff.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.5, 0, 0))
            partasdeff.LightEmission = .1
            partasdeff.Size = NumberSequence.new(0.2)
            partasdeff.Texture = "http://www.roblox.com/asset/?ID=183711814"
            aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 5)})
            bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
            partasdeff.Transparency = bbb
            partasdeff.Size = aaa
            partasdeff.ZOffset = .9
            partasdeff.Acceleration = Vector3.new(0, -5, 0)
            partasdeff.LockedToPart = false
            partasdeff.EmissionDirection = "Back"
            partasdeff.Lifetime = NumberRange.new(1, 2)
            partasdeff.Rate = 1000
            partasdeff.Rotation = NumberRange.new(-100, 100)
            partasdeff.RotSpeed = NumberRange.new(-100, 100)
            partasdeff.Speed = NumberRange.new(10)
            partasdeff.VelocitySpread = 20
            partasdeff.Enabled=false
    sel = math.random(1,3)
    if sel == 1 then    
    chatfunc("im teting sori")
    end
    for i = 0, 2, 0.1 do
        swait()
                if Grabbed == true then
            grab.Humanoid.PlatformStand = true
            --GGyro.position = Partss.Position
            --GGyro.Parent = grab.Head
            grab.Torso.CFrame = Partss.CFrame * CFrame.Angles(0,math.rad(-90),0)
        end
        PlayAnimationFromTable({
         CFrame.new(0.104281992, -1.37529127e-22, -0.179345995, 0.249840975, 5.92156003e-22, 0.968286872, -5.57068883e-22, 1, -4.67813147e-22, -0.968286872, -4.22523594e-22, 0.249840975) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0791492164, 1.44711375, -0.0994036943, 0.0100336075, -0.292051941, -0.95634979, -0.000366999942, 0.956396878, -0.29207015, 0.999949574, 0.00328149647, 0.00948894024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.94523025, 1.02494264, -0.272673488, 0.287940055, -0.795002162, 0.533912063, 0.0434400104, -0.546107173, -0.836588264, 0.956662774, 0.264080375, -0.122711219) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.58139038, 0.176945746, 5.27966768e-06, 0.939729631, 0.341920435, -3.69548798e-06, -0.341920793, 0.93972975, -6.50105221e-06, -5.81145287e-07, 6.40749931e-06, 1.00000048) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.569345832, -1.89868093, -0.00942828506, 0.266425997, -0.0769406706, -0.960779786, 0.0135936281, 0.997010291, -0.0760724545, 0.963760078, 0.00720720552, 0.266675085) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.849354744, -2.01616573, 0.241646215, 0.948664129, 0.308412433, 0.0701368451, -0.312046438, 0.948832989, 0.0484089628, -0.0516182035, -0.0678096861, 0.996362925) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .1, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0111939851, -1.63769794, -0.31875661, -0.0172049776, -1.39437616e-05, -0.999852121, 0.999852002, 5.96046448e-06, -0.0172049757, 6.16908073e-06, -1, 1.38394535e-05) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
    end
    Effects.Block.Create(BrickColor.random(), Partss.CFrame, 2, 2, 2, 0.9, 0.9, 0.9, 0.05)
    Effects.Block.Create(BrickColor.random(), Partss.CFrame, 2, 2, 2, 0.5, 0.5, 0.5, 0.05)
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=836454385", Character, 1, .5)
    dmg(grab)
        grab.Head.Velocity = grab.Head.CFrame.lookVector * -60
    partasdeff.Enabled=true
    for i = 0, 1, 0.1 do
        swait()
        PlayAnimationFromTable({
         CFrame.new(0.104281992, -1.37529127e-22, -0.179345995, 0.249840975, 5.92156003e-22, 0.968286872, -5.57068883e-22, 1, -4.67813147e-22, -0.968286872, -4.22523594e-22, 0.249840975) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0791492164, 1.44711375, -0.0994036943, 0.0100336075, -0.292051941, -0.95634979, -0.000366999942, 0.956396878, -0.29207015, 0.999949574, 0.00328149647, 0.00948894024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.95760894, 1.20200562, -0.275867403, 0.278526366, -0.669772983, 0.688351095, 0.0506580099, -0.705469668, -0.706927419, 0.959091723, 0.23176837, -0.162562534) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.58139038, 0.176945746, 5.27966768e-06, 0.939729631, 0.341920435, -3.69548798e-06, -0.341920793, 0.93972975, -6.50105221e-06, -5.81145287e-07, 6.40749931e-06, 1.00000048) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.569345832, -1.89868093, -0.00942828506, 0.266425997, -0.0769406706, -0.960779786, 0.0135936281, 0.997010291, -0.0760724545, 0.963760078, 0.00720720552, 0.266675085) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.849354744, -2.01616573, 0.241646215, 0.948664129, 0.308412433, 0.0701368451, -0.312046438, 0.948832989, 0.0484089628, -0.0516182035, -0.0678096861, 0.996362925) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .3, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0111932531, -1.63769579, -0.318755656, -0.0172050633, -1.61863863e-05, -0.999852121, 0.999851882, 5.15580177e-06, -0.017205067, 5.453825e-06, -1, 1.60960481e-05) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
    end
    partasdeff.Enabled=false
    for i = 0, 2.5, 0.1 do
        swait() 
        PlayAnimationFromTable({
         CFrame.new(0.104281992, -1.37529127e-22, -0.179345995, 0.249840975, 5.92156003e-22, 0.968286872, -5.57068883e-22, 1, -4.67813147e-22, -0.968286872, -4.22523594e-22, 0.249840975) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0791492164, 1.44711375, -0.0994036943, 0.0100336075, -0.292051941, -0.95634979, -0.000366999942, 0.956396878, -0.29207015, 0.999949574, 0.00328149647, 0.00948894024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.94523025, 1.02494264, -0.272673488, 0.287940055, -0.795002162, 0.533912063, 0.0434400104, -0.546107173, -0.836588264, 0.956662774, 0.264080375, -0.122711219) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.58139038, 0.176945746, 5.27966768e-06, 0.939729631, 0.341920435, -3.69548798e-06, -0.341920793, 0.93972975, -6.50105221e-06, -5.81145287e-07, 6.40749931e-06, 1.00000048) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.569345832, -1.89868093, -0.00942828506, 0.266425997, -0.0769406706, -0.960779786, 0.0135936281, 0.997010291, -0.0760724545, 0.963760078, 0.00720720552, 0.266675085) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.849354744, -2.01616573, 0.241646215, 0.948664129, 0.308412433, 0.0701368451, -0.312046438, 0.948832989, 0.0484089628, -0.0516182035, -0.0678096861, 0.996362925) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .2, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0111939851, -1.63769794, -0.31875661, -0.0172049776, -1.39437616e-05, -0.999852121, 0.999852002, 5.96046448e-06, -0.0172049757, 6.16908073e-06, -1, 1.38394535e-05) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
    end
    coroutine.wrap(function()   
        wait(2)
    partasdeff:Remove() 
    end)()
        else
    grab.Humanoid.PlatformStand = false
    for i = 0, 3, 0.1 do
        swait()
        PlayAnimationFromTable({
         CFrame.new(0.104280457, -1.46030498e-22, -0.179343686, 0.249860913, 5.18448626e-22, 0.968281686, -5.82335151e-22, 1, -5.29395592e-22, -0.968281686, -3.70576914e-22, 0.249860913) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.00671941042, 1.48144531, -0.121562012, 0.0679168552, 0.388981611, -0.918738663, 0.158512011, 0.904961228, 0.394866198, 0.985018492, -0.172449201, -0.000196114182) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.5714488, -0.100437641, -0.219321564, 0.297819793, -0.653239965, -0.696118593, -0.0311920028, 0.722160041, -0.691022456, 0.954112411, 0.227513462, 0.194697708) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.5814501, 0.177012652, 5.41775626e-06, 0.939689815, 0.342028022, -2.68220901e-06, -0.342027992, 0.939689755, -6.1805149e-06, 4.17232513e-07, 6.72787428e-06, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.569012046, -1.89856982, -0.00933695585, 0.266445845, -0.0764764398, -0.960811257, 0.0135949478, 0.997046292, -0.075590536, 0.963754177, 0.00707861409, 0.266698539) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.849534154, -2.01595497, 0.241721377, 0.948572636, 0.308689058, 0.070150286, -0.312330276, 0.948733151, 0.0485308319, -0.0515729487, -0.067945078, 0.996355295) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .1, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0111981034, -1.63767779, -0.318741798, -0.0172085222, -1.4077872e-05, -0.999851882, 0.999851942, 7.4505806e-06, -0.0172085222, 7.68899918e-06, -1.00000012, 1.39512122e-05) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
    end
sel = math.random(1,3)
if sel == 1 then    
chatfunc("im testing sori!")
end
        for i = 0, 5, 0.1 do
        swait()
        PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 0.999999881, 5.04870979e-29, -4.21790838e-43, 5.04870979e-29, 1, -5.04870979e-29, -4.21790838e-43, -5.04870979e-29, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0399715528, 1.42130852, -0.217550665, 0.985933542, -0.136098281, -0.097015582, 0.166522697, 0.849608123, 0.500436008, 0.0143167432, -0.509551942, 0.860320628) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0- .4 * math.cos((sine) / 5), 0), 
         CFrame.new(1.57258642, 0.0433240086, 3.83948304e-08, 0.990993857, -0.133906633, -2.60571618e-08, 0.133906662, 0.990993977, 5.96046341e-08, 1.78410318e-08, -6.25570422e-08, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.693957031, 0.999676406, -0.811627388, 0.817211449, -0.569911301, -0.0858340934, -0.499626935, -0.626295447, -0.598442137, 0.287295371, 0.531934083, -0.796558976) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.540301144, -1.99792778, 1.70425119e-06, 0.998698354, -0.0510031469, 6.26438805e-07, 0.0510031544, 0.998698473, -1.04335422e-05, -9.34800966e-08, 1.04519122e-05, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.539563119, -1.99793291, 1.9016752e-06, 0.998630941, 0.0523070693, -1.67712614e-07, -0.0523070768, 0.99863106, -1.0458818e-05, -3.79587107e-07, 1.04532719e-05, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .3, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0111991819, -1.63769639, -0.318748534, -0.0172109455, -5.96046448e-08, -0.999852002, 0.999852061, -1.19209318e-07, -0.0172108412, 5.96046519e-08, -0.99999994, -1.19209275e-07) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
    end
    end
    end
    --GGyro.Parent = nil
    attack = false
    Grabbed = false
    Humanoid.WalkSpeed = 20

end
function moarblood()
    attack = true
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=160718677", Character, 1, .8)
    RootPart.CFrame = targetted.Torso.CFrame * CFrame.new(0,0,4)
local k = New("Part",LeftArm,"k",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.200000003, 0.221472204, 0.221472189),CFrame = CFrame.new(4.93319941, -1.31948221, -45.7696877, 0.141969427, -5.55023435e-05, -0.989871144, 0.989874005, 1.80069164e-05, 0.141970903, 1.06166653e-05, -1.00000143, 5.59078326e-05),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Weld",k,"mot",{Part0 = k,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 0.141969457, 0.989873946, 1.06166663e-05, -5.55023507e-05, 1.80069164e-05, -1.00000167, -0.989871264, 0.141970903, 5.59078399e-05),C1 = CFrame.new(6.67572021e-06, -1.40000057, -3.81469727e-06, 0.989870846, -0.14197053, -1.2531201e-06, 0.141970515, 0.989870906, 1.03843358e-05, -2.33842215e-07, -1.04570581e-05, 0.99999994),})
wait(.5)
    for i = 0, 1.2, 0.1 do
        swait()
        PlayAnimationFromTable({
         CFrame.new(0.0246932413, -0.0966757834, -0.0092370566, 0.713696778, 5.59592329e-22, 0.700454772, -9.27150216e-22, 1, 1.45779223e-22, -0.700454772, -7.53468894e-22, 0.713696778) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.098094359, 1.53651738, -0.281765848, 0.593379974, 0.280785412, -0.754360616, -0.0276839901, 0.943748772, 0.329502523, 0.804446399, -0.174636483, 0.567774832) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.58677018, 0.143787161, 0.0495693758, 0.968102753, -0.250522822, -0.00394502282, 0.250228018, 0.965921044, 0.0662006512, -0.0127741396, -0.0650762022, 0.997798622) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.74332106, 0.446618229, -0.859300971, 0.795205951, 0.606264353, -0.0095520094, -0.0538869984, 0.0549720451, -0.997032762, -0.603940368, 0.793361068, 0.0763838589) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.648194611, -1.97843742, -0.088139981, 0.954304218, -0.129303336, -0.269414723, 0.107585981, 0.989748061, -0.0939367935, 0.278798997, 0.0606590137, 0.958431959) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.671899676, -2.02211809, 0.00866907835, 0.94230175, 0.108399026, -0.316728801, -0.108764999, 0.993929207, 0.0165804606, 0.316603303, 0.0188252106, 0.948371291) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .2, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0111978557, -1.63769853, -0.318748116, -0.0172083378, 3.06963921e-06, -0.999852002, 0.999851942, -2.01165676e-07, -0.0172083378, -2.4586916e-07, -1, -3.09944153e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
    end
    if targetted.Name ~= "CKbackup" then
    local grab = nil
    for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 7)) do
        if v:FindFirstChild('Head') then
            Grabbed = true
                CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=160718677", v.Head, 1, .8)
            grab = v
        end
    end
         Humanoid.WalkSpeed = 0
        for i = 0, 2, 0.1 do
        swait()
        if Grabbed == true then
            grab.Humanoid.PlatformStand = true
            --GGyro.position = Partss.Position
            --GGyro.Parent = grab.Head
            grab.Head.CFrame = k.CFrame * CFrame.Angles(0,math.rad(-90),0)
        end
        PlayAnimationFromTable({
         CFrame.new(-0.203895777, -0.0966757089, 0.221102715, 0.860356927, 5.59592329e-22, -0.509691954, -9.74120787e-23, 1, 9.33471908e-22, 0.509691954, -7.53468894e-22, 0.860356927) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0263810754, 1.49789393, -0.36129567, 0.83927381, -0.177804202, 0.513814509, -0.0293880031, 0.928800881, 0.369412124, -0.542914331, -0.325137854, 0.774292946) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.70567894, 0.192227185, 0.324310064, 0.910149336, -0.402004361, -0.100104719, 0.41140601, 0.848634601, 0.332512379, -0.0487190783, -0.343819588, 0.937771142) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.925376594, 0.275374949, -0.912649989, 0.847262561, -0.507846355, 0.155686736, 0.278232396, 0.17463918, -0.944503605, 0.452473402, 0.84355998, 0.289265245) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.648186982, -1.97843516, -0.0881449506, 0.954305232, -0.129303262, -0.269411147, 0.107586049, 0.989748061, -0.0939371213, 0.278795511, 0.0606598109, 0.958432913) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.671897829, -2.02211738, 0.00865991414, 0.942302644, 0.108399101, -0.316726208, -0.108764961, 0.993929207, 0.0165806562, 0.31660068, 0.0188247077, 0.948372126) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .25, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0111928731, -1.63769662, -0.318741947, -0.0172089636, 8.2552433e-06, -0.999852061, 0.999852061, 7.4505806e-07, -0.0172089189, 5.66244125e-07, -1.00000012, -8.2552433e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
        end
        if Grabbed == true then
                sel = math.random(1,3)
    if sel == 1 then    
    chatfunc("im testing sori")
    end
            local partasdeff = Instance.new("ParticleEmitter",targetted.Head)
            partasdeff.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.5, 0, 0))
            partasdeff.LightEmission = .1
            partasdeff.Size = NumberSequence.new(0.2)
            partasdeff.Texture = "http://www.roblox.com/asset/?ID=183711814"
            aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 5)})
            bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
            partasdeff.Transparency = bbb
            partasdeff.Size = aaa
            partasdeff.ZOffset = .9
            partasdeff.Acceleration = Vector3.new(0, -5, 0)
            partasdeff.LockedToPart = false
            partasdeff.EmissionDirection = "Back"
            partasdeff.Lifetime = NumberRange.new(1, 2)
            partasdeff.Rate = 1000
            partasdeff.Rotation = NumberRange.new(-100, 100)
            partasdeff.RotSpeed = NumberRange.new(-100, 100)
            partasdeff.Speed = NumberRange.new(6)
            partasdeff.VelocitySpread = 10000
            partasdeff.Enabled=false    
    for i = 0, 3, 0.1 do
        swait()
        if Grabbed == true then
            grab.Humanoid.PlatformStand = true
            --GGyro.position = Partss.Position
            --GGyro.Parent = grab.Head
            grab.Head.CFrame = k.CFrame * CFrame.Angles(0,math.rad(-90),0)
        end
        PlayAnimationFromTable({
         CFrame.new(-0.203895777, -0.0966757089, 0.221102715, 0.860356927, 5.59592329e-22, -0.509691954, -9.74120787e-23, 1, 9.33471908e-22, 0.509691954, -7.53468894e-22, 0.860356927) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0996288583, 1.46053851, -0.148588806, 0.834862471, 0.0359686315, 0.549282432, -0.0103890011, 0.998714745, -0.0496083908, -0.550360739, 0.0357096791, 0.83416307) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.70567894, 0.192227185, 0.324310064, 0.910149336, -0.402004361, -0.100104719, 0.41140601, 0.848634601, 0.332512379, -0.0487190783, -0.343819588, 0.937771142) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.5511272, 1.22937977, -0.634234905, 0.785770595, 0.333147645, 0.521131098, 0.522403002, -0.808557391, -0.270795107, 0.331149668, 0.485022962, -0.809378147) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.648186982, -1.97843516, -0.0881449506, 0.954305232, -0.129303262, -0.269411147, 0.107586049, 0.989748061, -0.0939371213, 0.278795511, 0.0606598109, 0.958432913) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.684103072, -2.02189779, 0.0673112273, 0.973016024, 0.108399175, -0.203689545, -0.109960191, 0.993929327, 0.00367253274, 0.202851087, 0.0188243091, 0.979028702) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .1, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0111928731, -1.63769662, -0.318741947, -0.0172089636, 8.2552433e-06, -0.999852061, 0.999852061, 7.4505806e-07, -0.0172089189, 5.66244125e-07, -1.00000012, -8.2552433e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
    end
    partasdeff.Enabled=true
    grab.Torso.Transparency = 1
    dmg(grab)
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=160718677", grab.Head, .8, .8)
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=160718677", grab.Head, 1, .7)
    
    coroutine.wrap(function()
    wait(.4)
    partasdeff.Enabled=false
    end)()
    for i = 0, 3.5, 0.1 do
        swait()
        PlayAnimationFromTable({
         CFrame.new(-0.203895777, -0.0966757089, 0.221102715, 0.860356927, 5.59592329e-22, -0.509691954, -9.74120787e-23, 1, 9.33471908e-22, 0.509691954, -7.53468894e-22, 0.860356927) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0996288583, 1.46053851, -0.148588806, 0.834862471, 0.0359686315, 0.549282432, -0.0103890011, 0.998714745, -0.0496083908, -0.550360739, 0.0357096791, 0.83416307) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.70567894, 0.192227185, 0.324310064, 0.910149336, -0.402004361, -0.100104719, 0.41140601, 0.848634601, 0.332512379, -0.0487190783, -0.343819588, 0.937771142) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.40260935, 1.29555511, -0.560751677, 0.832364976, 0.188659444, 0.521130562, 0.370884001, -0.88832134, -0.2707977, 0.411842346, 0.418681324, -0.809378505) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.648186982, -1.97843516, -0.0881449506, 0.954305232, -0.129303262, -0.269411147, 0.107586049, 0.989748061, -0.0939371213, 0.278795511, 0.0606598109, 0.958432913) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.684103072, -2.02189779, 0.0673112273, 0.973016024, 0.108399175, -0.203689545, -0.109960191, 0.993929327, 0.00367253274, 0.202851087, 0.0188243091, 0.979028702) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .3, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0111928731, -1.63769662, -0.318741947, -0.0172089636, 8.2552433e-06, -0.999852061, 0.999852061, 7.4505806e-07, -0.0172089189, 5.66244125e-07, -1.00000012, -8.2552433e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
    end
    end
    else
         Humanoid.WalkSpeed = 0
    for i = 0, 3, 0.1 do
        swait()
        PlayAnimationFromTable({
         CFrame.new(0.0246932413, -0.0966757834, -0.0092370566, 0.713696778, 5.59592329e-22, 0.700454772, -9.27150216e-22, 1, 1.45779223e-22, -0.700454772, -7.53468894e-22, 0.713696778) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.098094359, 1.53651738, -0.281765848, 0.593379974, 0.280785412, -0.754360616, -0.0276839901, 0.943748772, 0.329502523, 0.804446399, -0.174636483, 0.567774832) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.58677018, 0.143787161, 0.0495693758, 0.968102753, -0.250522822, -0.00394502282, 0.250228018, 0.965921044, 0.0662006512, -0.0127741396, -0.0650762022, 0.997798622) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.74332106, 0.446618229, -0.859300971, 0.795205951, 0.606264353, -0.0095520094, -0.0538869984, 0.0549720451, -0.997032762, -0.603940368, 0.793361068, 0.0763838589) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.648194611, -1.97843742, -0.088139981, 0.954304218, -0.129303336, -0.269414723, 0.107585981, 0.989748061, -0.0939367935, 0.278798997, 0.0606590137, 0.958431959) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.671899676, -2.02211809, 0.00866907835, 0.94230175, 0.108399026, -0.316728801, -0.108764999, 0.993929207, 0.0165804606, 0.316603303, 0.0188252106, 0.948371291) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .2, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0111978557, -1.63769853, -0.318748116, -0.0172083378, 3.06963921e-06, -0.999852002, 0.999851942, -2.01165676e-07, -0.0172083378, -2.4586916e-07, -1, -3.09944153e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
    end 
sel = math.random(1,3)
if sel == 1 then    
chatfunc("Aahhh...")
elseif sel == 2 then    
chatfunc("Oh Sugarie, I thought you're enemy...")
elseif sel == 3 then
chatfunc("Sigh...")
end
    for i = 0, 5, 0.1 do
        swait()
        PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 0.999999881, 5.04870979e-29, -4.21790838e-43, 5.04870979e-29, 1, -5.04870979e-29, -4.21790838e-43, -5.04870979e-29, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0399715528, 1.42130852, -0.217550665, 0.985933542, -0.136098281, -0.097015582, 0.166522697, 0.849608123, 0.500436008, 0.0143167432, -0.509551942, 0.860320628) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0- .4 * math.cos((sine) / 5), 0), 
         CFrame.new(1.57258642, 0.0433240086, 3.83948304e-08, 0.990993857, -0.133906633, -2.60571618e-08, 0.133906662, 0.990993977, 5.96046341e-08, 1.78410318e-08, -6.25570422e-08, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.693957031, 0.999676406, -0.811627388, 0.817211449, -0.569911301, -0.0858340934, -0.499626935, -0.626295447, -0.598442137, 0.287295371, 0.531934083, -0.796558976) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.540301144, -1.99792778, 1.70425119e-06, 0.998698354, -0.0510031469, 6.26438805e-07, 0.0510031544, 0.998698473, -1.04335422e-05, -9.34800966e-08, 1.04519122e-05, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.539563119, -1.99793291, 1.9016752e-06, 0.998630941, 0.0523070693, -1.67712614e-07, -0.0523070768, 0.99863106, -1.0458818e-05, -3.79587107e-07, 1.04532719e-05, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .3, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0111991819, -1.63769639, -0.318748534, -0.0172109455, -5.96046448e-08, -0.999852002, 0.999852061, -1.19209318e-07, -0.0172108412, 5.96046519e-08, -0.99999994, -1.19209275e-07) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
    end
    end
    attack = false
    Grabbed = false 
    k:Remove()
         Humanoid.WalkSpeed = 8
end

function painlessrain2()
attack = true
    Humanoid.WalkSpeed = 0
   local ref1 = New("Part",m,"ref",{Transparency = 1,Size = Vector3.new(.2,.2,.2),CFrame = Torso.CFrame,Anchored = true,CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})

    coroutine.wrap(function()
    for i = 0, 4 do
    wait(.2)
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=158475221", RootPart, 1, 1)
    end
    end)()
    for i = 0, 4, 0.1 do
        swait()
        PlayAnimationFromTable({
         CFrame.new(0.160091802, -3.66497677e-23, -0.0753167868, 0.153125972, 2.95760942e-22, 0.988206744, 9.50910858e-23, 1, -3.14025256e-22, -0.988206744, 1.42055005e-22, 0.153125986) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.115934461, 1.42953098, -0.0387745127, 0.0422455594, -0.156738758, -0.986736298, 0.091215007, 0.984098434, -0.152414545, 0.994934857, -0.083566308, 0.0558707118) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.88563442, 0.849646449, -0.150348112, 0.134151325, -0.917590559, 0.374207288, 0.151069015, -0.354270071, -0.922860146, 0.979378283, 0.180334046, 0.0910937041) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.53188074, 0.0735950321, 2.69606994e-06, 0.978446901, 0.206499115, 2.48849392e-06, -0.2064991, 0.978446841, -1.05276868e-05, -4.61935997e-06, 9.78447497e-06, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.6596874, -2.0274992, -0.0100709619, 0.00881013274, -0.161221251, -0.986878991, 0.00903601572, 0.986890376, -0.161142424, 0.999920428, -0.0074977763, 0.0101515204) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.56669867, -2.04759455, -0.0995163321, 0.988194227, 0.0786855519, 0.131456956, -0.0635150596, 0.991232872, -0.115859069, -0.139420897, 0.106141761, 0.984528303) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .07, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.00354172289, -1.19249964, -0.318736732, -0.017209189, -1.8668361e-06, -0.999851942, 0.999851882, 1.90734863e-06, -0.0172091946, 1.93715096e-06, -1.00000012, 1.82725489e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, math.rad(doe * 22)), 0.3)
    end
    for i = 0, 1.5, 0.1 do
        swait()
        PlayAnimationFromTable({
         CFrame.new(0.160091802, -3.66497677e-23, -0.0753167868, 0.153125972, 2.95760942e-22, 0.988206744, 9.50910858e-23, 1, -3.14025256e-22, -0.988206744, 1.42055005e-22, 0.153125986) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.181723118, 1.42154801, -0.0812263489, 0.0422911495, -0.473342478, -0.879862845, 0.0912349299, 0.878800809, -0.468385875, 0.994931221, -0.0604656339, 0.0803508535) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.46608233, 1.280774, -0.0335922651, 0.00761340559, -0.0420075022, 0.999088407, 0.0443810038, -0.998118579, -0.0423049256, 0.998985708, 0.044662632, -0.00573477149) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.53188074, 0.0735950321, 2.69606994e-06, 0.978446901, 0.206499115, 2.48849392e-06, -0.2064991, 0.978446841, -1.05276868e-05, -4.61935997e-06, 9.78447497e-06, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.6596874, -2.0274992, -0.0100709619, 0.00881013274, -0.161221251, -0.986878991, 0.00903601572, 0.986890376, -0.161142424, 0.999920428, -0.0074977763, 0.0101515204) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.56669867, -2.04759455, -0.0995163321, 0.988194227, 0.0786855519, 0.131456956, -0.0635150596, 0.991232872, -0.115859069, -0.139420897, 0.106141761, 0.984528303) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .2, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0112083405, -1.63769615, -0.31873402, -0.0172121376, -2.89082527e-06, -0.999851882, 0.999851942, 4.58210707e-07, -0.0172121413, 5.06639481e-07, -1.00000012, 2.89082527e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
    end
    for i = 0, 0 do
      Effects.Block.Create(BrickColor.random(), Partss.CFrame, 33,33,33, -1,-1,-1, 0.07)
      wait(2)
    end
attack = false
Humanoid.WalkSpeed = 8
    for i = 0, 99 do
        wait(0.01)
        mdmg(ref1, 3)
        CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=141679994", Character, 1.5, 1)      
        ref1.Position = Mouse.hit.p
        ref1.CFrame = ref1.CFrame * CFrame.new(math.random(-.5,.5),0,math.random(-.5,.5))
        Effects.Cylinder.Create(BrickColor.random(), ref1.CFrame, 5, 9999, 5, -5, 0, -5, 0.07)
        Effects.Sphere.Create(BrickColor.random(), ref1.CFrame, 7,7,7, -9,-9,-9, 0.07)
    end
    ref1:Remove()
end

function painlessrain()
attack = true
    Humanoid.WalkSpeed = 0
   local ref1 = New("Part",m,"ref",{Transparency = 1,Size = Vector3.new(.2,.2,.2),CFrame = Torso.CFrame,Anchored = true,CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})

    coroutine.wrap(function()
    for i = 0, 4 do
    wait(.2)
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=158475221", RootPart, 1, 1)
    end
    end)()
    for i = 0, 4, 0.1 do
        swait()
        PlayAnimationFromTable({
         CFrame.new(0.160091802, -3.66497677e-23, -0.0753167868, 0.153125972, 2.95760942e-22, 0.988206744, 9.50910858e-23, 1, -3.14025256e-22, -0.988206744, 1.42055005e-22, 0.153125986) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.115934461, 1.42953098, -0.0387745127, 0.0422455594, -0.156738758, -0.986736298, 0.091215007, 0.984098434, -0.152414545, 0.994934857, -0.083566308, 0.0558707118) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.88563442, 0.849646449, -0.150348112, 0.134151325, -0.917590559, 0.374207288, 0.151069015, -0.354270071, -0.922860146, 0.979378283, 0.180334046, 0.0910937041) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.53188074, 0.0735950321, 2.69606994e-06, 0.978446901, 0.206499115, 2.48849392e-06, -0.2064991, 0.978446841, -1.05276868e-05, -4.61935997e-06, 9.78447497e-06, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.6596874, -2.0274992, -0.0100709619, 0.00881013274, -0.161221251, -0.986878991, 0.00903601572, 0.986890376, -0.161142424, 0.999920428, -0.0074977763, 0.0101515204) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.56669867, -2.04759455, -0.0995163321, 0.988194227, 0.0786855519, 0.131456956, -0.0635150596, 0.991232872, -0.115859069, -0.139420897, 0.106141761, 0.984528303) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .07, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.00354172289, -1.19249964, -0.318736732, -0.017209189, -1.8668361e-06, -0.999851942, 0.999851882, 1.90734863e-06, -0.0172091946, 1.93715096e-06, -1.00000012, 1.82725489e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, math.rad(doe * 22)), 0.3)
    end
    for i = 0, 1.5, 0.1 do
        swait()
        PlayAnimationFromTable({
         CFrame.new(0.160091802, -3.66497677e-23, -0.0753167868, 0.153125972, 2.95760942e-22, 0.988206744, 9.50910858e-23, 1, -3.14025256e-22, -0.988206744, 1.42055005e-22, 0.153125986) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.181723118, 1.42154801, -0.0812263489, 0.0422911495, -0.473342478, -0.879862845, 0.0912349299, 0.878800809, -0.468385875, 0.994931221, -0.0604656339, 0.0803508535) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.46608233, 1.280774, -0.0335922651, 0.00761340559, -0.0420075022, 0.999088407, 0.0443810038, -0.998118579, -0.0423049256, 0.998985708, 0.044662632, -0.00573477149) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.53188074, 0.0735950321, 2.69606994e-06, 0.978446901, 0.206499115, 2.48849392e-06, -0.2064991, 0.978446841, -1.05276868e-05, -4.61935997e-06, 9.78447497e-06, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.6596874, -2.0274992, -0.0100709619, 0.00881013274, -0.161221251, -0.986878991, 0.00903601572, 0.986890376, -0.161142424, 0.999920428, -0.0074977763, 0.0101515204) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.56669867, -2.04759455, -0.0995163321, 0.988194227, 0.0786855519, 0.131456956, -0.0635150596, 0.991232872, -0.115859069, -0.139420897, 0.106141761, 0.984528303) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .2, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0112083405, -1.63769615, -0.31873402, -0.0172121376, -2.89082527e-06, -0.999851882, 0.999851942, 4.58210707e-07, -0.0172121413, 5.06639481e-07, -1.00000012, 2.89082527e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
    end
    for i = 0, 2 do
      Effects.Block.Create(BrickColor.random(), Partss.CFrame, 66,66,66, -1,-1,-1, 0.07)
      wait(1)
    end
attack = false
Humanoid.WalkSpeed = 8
    for i = 0, 1 do
        wait(0.01)
        mdmg(ref1, 50)
        CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=141679994", Character, 1.5, 1)      
        ref1.Position = Mouse.hit.p
        ref1.CFrame = ref1.CFrame * CFrame.new(math.random(-.5,.5),0,math.random(-.5,.5))
        for i = 1,10 do
            Effects.Cylinder.Create(BrickColor.random(), ref1.CFrame, 520, 9999, 520, -1, 0, -1, 0.07)
            Effects.Sphere.Create(BrickColor.random(), ref1.CFrame, 700,700,700,-1,-1,-1, 0.07)
        end
    end
    ref1:Remove()
end

function TargetSelect(person)
local dd=coroutine.wrap(function()
if targetted ~= person then
targetted = person
img2.Size = UDim2.new(1,0,1,0)
img2.ImageTransparency = 0
img2.Position = UDim2.new(0,0,0,0)
for i = 0, 2, 0.1 do
swait()
img2.Size = img2.Size + UDim2.new(.05,0,.05,0)
img2.Position = img2.Position + UDim2.new(-.025,0,-.025,0)
img2.ImageTransparency = img2.ImageTransparency + 0.05
end
end
end)
dd()
end

function LockOn()
if Mouse.Target.Parent ~= Character and Mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil then
TargetSelect(Mouse.Target.Parent)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=606862847", Character, 1, 1)
end
end


function ofmoosic() -- 2 lazi hoh
delays = true
while wait() and kkk and kkk.Volume >= 0.02 do
    kkk.Volume = kkk.Volume - 0.05
end
wait(0.1)
kkk.Pitch = 0
kkk.PlaybackSpeed = 0
play = false
delays = false
end
function onmoosic()
delays = true
kkk.Pitch = 1
kkk.PlaybackSpeed = 1
while wait() and kkk and kkk.Volume <= 1.5 do
    kkk.Volume = kkk.Volume + 0.05
end
wait(0.1)
play = true
delays = false
end
Mouse.Button1Down:connect(function()
    if attack == false and targetted ~= nil then
        attackone()
    end
end)

Mouse.KeyDown:connect(function(k)
    k = k:lower()
    if attack == false and k == 'q' then
    LockOn()
    end
    if k == 'z' and attack == false then
    spawn(function()    
    Head.face.Texture = "http://www.roblox.com/asset/?id=664468442"
    wait(2)
    Head.face.Texture = Orin
    end)
    hedshoot()
    elseif k == 'x' and attack == false and targetted ~= nil then
    spawn(function()
    Head.face.Texture = "http://www.roblox.com/asset/?id=183711814"
    wait(2)
    Head.face.Texture = Orin
    end)
    moarblood()
    elseif k == 'c' and attack == false then
    spawn(function()
    Head.face.Texture = "http://www.roblox.com/asset/?id=168092687"
    wait(2)
    Head.face.Texture = Orin
    end)
    painlessrain()
    chatfunc("Boom.")
    elseif k == 'v' and attack == false then
    spawn(function()
    Head.face.Texture = "http://www.roblox.com/asset/?id=183708981"
    wait(2)
    Head.face.Texture = Orin
    end)
    painlessrain2()
    wait(6)
    chatfunc("Ded!")
    elseif k == 'e' and attack == false then
    shoot()
    elseif k == 'g' and delays == false and Character.Name == "Skrubl0rdzI" then
    delays = true
    chatfunc("Finally!")
    wait(3)
    chatfunc("i pay 999 tix for dis gun.")
    wait(4)
    chatfunc("Now let testing!")
    delays = false
    elseif k == 'm' and play == true and delays == false then
    ofmoosic()
    elseif k == 'm' and play == false and delays == false then
    onmoosic()
    end
end)

kkk = Instance.new("Sound",Character)
kkk.Volume = 3
kkk.Pitch = 1
kkk.SoundId = "rbxassetid://494244670"
kkk:Play()
kkk.Name = "a"
kkk.Looped = true


coroutine.wrap(function()
while true do
swait()
    for i, v in pairs(Character.WeaponModel:GetChildren()) do
        if v:IsA("Part") then
        v.Anchored = false
        end
        end
    for i, v in pairs(Character:GetChildren()) do
        if v:IsA("Part") then
        v.Anchored = false
        elseif v:IsA("Accessory") then
        v.Handle.Anchored = false
        end
        end
end
end)()
coroutine.wrap(function()
while 1 do
swait()
if doe <= 360 then
    doe = doe + 2
else
    doe = 0
end
end
end)()
while true do
    swait()
    for i, v in pairs(Character:GetChildren()) do
        if v:IsA("Part") then
            v.Material = "SmoothPlastic"
        elseif v:IsA("Accessory") then
            v:WaitForChild("Handle").Material = "SmoothPlastic"
        end
    end
while true do
swait()
Character.Humanoid.MaxHealth = math.huge
Character.Humanoid.Health = math.huge
imgl.Rotation = imgl.Rotation + 3
img2.Rotation = img2.Rotation + 3
if targetted ~= nil then
abss.Adornee = targetted:FindFirstChild("Torso") or targetted:FindFirstChild("UpperTorso")
abss.Enabled = true
elseif targetted == nil then
abss.Adornee = nil
abss.Enabled = false
end

P=Instance.new("ForceField",Character)
P.Visible = false

while true and imgl.Rotation >= 360 do
imgl.Rotation = 0   
img2.Rotation = 0
end
    Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
    velocity = RootPart.Velocity.y
    sine = sine + change
    local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
        if RootPart.Velocity.y > 1 and hit == nil then 
            Anim = "Jump"
            if attack == false then
        PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 1, -2.21689355e-12, -5.11591203e-13, -2.21689355e-12, 1, 7.74860496e-07, -5.11591203e-13, 7.74860496e-07, 1.00000048) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0579944476, 1.48445117, -0.000906195492, 0.999631822, -0.0259140469, -0.00804444961, 0.0262291897, 0.998776913, 0.0419151038, 0.0069484422, -0.0421099029, 0.999089062) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.68067598, 0.167780995, 5.50026158e-08, 0.965881884, -0.258982956, -3.41060513e-13, 0.258982956, 0.965881884, 4.47034836e-07, 8.49010675e-08, 3.16640808e-07, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.67620921, 0.188169807, -3.04922651e-07, 0.95698452, 0.290146649, -2.61441073e-07, -0.290146649, 0.95698452, -1.0069979e-05, -2.89639524e-06, 1.04542296e-05, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.537238836, -1.93797374, 0.176598221, 0.998698533, -0.0506777391, -0.00574572897, 0.0510024093, 0.992341697, 0.112511501, -6.35704041e-08, -0.112657718, 0.993634105) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.536944568, -1.94808352, 0.126473114, 0.998626292, 0.0520468242, 0.00521374354, -0.0523067154, 0.993665218, 0.0995327011, -3.84102691e-07, -0.099668026, 0.995023906) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .3, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0111988392, -1.63769972, -0.318750381, -0.0172117054, 0, -0.999851942, 0.999851942, 0, -0.0172116756, 0, -1, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
                    end
        elseif RootPart.Velocity.y < -1 and hit == nil then 
            Anim = "Fall"
            if attack == false then
        PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 1, -2.21689355e-12, -5.11591203e-13, -2.21689355e-12, 1, 7.74860496e-07, -5.11591203e-13, 7.74860496e-07, 1.00000048) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0576509275, 1.50532985, -0.129091382, 0.999631822, -0.0231846143, -0.0140984114, 0.0262298863, 0.958684564, 0.283279002, 0.00694822101, -0.283544153, 0.958935201) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.68622994, 0.21415168, 7.02040666e-08, 0.881990671, -0.471266806, -3.41060513e-13, 0.471266806, 0.881990671, 4.47034836e-07, 1.54493137e-07, 2.89139166e-07, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.72513735, 0.240890861, 2.54038241e-07, 0.814108491, 0.58071363, -2.61430017e-07, -0.580713034, 0.814108849, -1.00698489e-05, -6.08482924e-06, 8.98058715e-06, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.536720514, -1.92783141, 0.223740995, 0.998698533, -0.0498600565, -0.0107376017, 0.0510031059, 0.976314366, 0.210260883, -3.04512355e-07, -0.210534185, 0.977587521) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.535922825, -1.92850935, 0.222419083, 0.99863112, 0.0512506701, 0.0104565797, -0.0523065142, 0.978474379, 0.199629858, -3.7062793e-07, -0.199902818, 0.97981596) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .3, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0112015437, -1.63769758, -0.318750381, -0.0172110498, 0, -0.999851942, 0.999851942, 0, -0.0172110498, 0, -1, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
                    end
        elseif Torsovelocity < 1 and hit ~= nil then
            Anim = "Idle"
            if attack == false then
                change = 1
        PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 1, -2.21689355e-12, -5.11591203e-13, -2.21689355e-12, 1, 7.74860496e-07, -5.11591203e-13, 7.74860496e-07, 1.00000048) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0575585738, 1.52553558, 0, 0, 0, 0, 0, 0, 0, 0.0143168001, 0, 0.897985697) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.54809988, 0.041232653, 1.35168499e-08, 0.996376455, -0.0850530341, -3.41060513e-13, 0.0850530341, 0.996376455, 4.47034836e-07, 2.78823862e-08, 3.26637689e-07, 1.00000024) * CFrame.new(0- 0.025 * math.cos((sine) / 45), 0, 0) * CFrame.Angles(0, 0, 0- 0.05 * math.cos((sine) / 45)), 
         CFrame.new(-1.53598976, 0.0413191095, -1.86092848e-06, 0.995650649, 0.0931596532, -2.61508148e-07, -0.0931649953, 0.995651186, -1.00695124e-05, -7.49969331e-07, 1.08217946e-05, 1.00000024) * CFrame.new(0+ 0.025 * math.cos((sine) / 45), 0, 0) * CFrame.Angles(0, 0, 0+ 0.05 * math.cos((sine) / 45)), 
         CFrame.new(0.540300786, -1.99793816, -9.82598067e-07, 0.998698533, -0.0510031395, 6.36324955e-07, 0.0510031395, 0.998698533, -1.00461093e-05, -8.35937328e-08, 1.08393433e-05, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.539563596, -1.99794078, 1.12228372e-06, 0.998635888, 0.0523072146, -1.77852357e-07, -0.0523072146, 0.998635888, -1.00715051e-05, -3.89727461e-07, 1.08406466e-05, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .3, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0111980997, -1.6377027, -0.318750381, -0.0172109306, 0, -0.999851882, 0.999851882, 0, -0.0172109306, 0, -1, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
            end
        elseif Torsovelocity > 2 and hit ~= nil then
            Anim = "Walk"
            if attack == false then
        PlayAnimationFromTable({        
         CFrame.new(0, 0, 0, 1, -2.21689355e-12, -5.11591203e-13, -2.21689355e-12, 1, 7.74860496e-07, -5.11591203e-13, 7.74860496e-07, 1.00000048) * CFrame.new(0, 0- .08 * math.cos((sine) / 5), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0595112406, 1.55331731, -0.0425721854, 0.999631822, -0.0248252042, -0.010953242, 0.0262294486, 0.987443328, 0.155781403, 0.00694842171, -0.156010598, 0.987731278) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.54809988, 0.041232653, 1.35168499e-08, 0.996376455, -0.0850530341, -3.41060513e-13, 0.0850530341, 0.996376455, 4.47034836e-07, 2.78823862e-08, 3.26637689e-07, 1.00000024) * CFrame.new(0, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, 0), 
         CFrame.new(-1.53598976, 0.0413191095, -1.86092848e-06, 0.995650649, 0.0931596532, -2.61508148e-07, -0.0931649953, 0.995651186, -1.00695124e-05, -7.49969331e-07, 1.08217946e-05, 1.00000024) * CFrame.new(0, 0.5, -0.5) * CFrame.Angles(math.rad(90), 0, 0), 
         CFrame.new(0.540300786, -1.99793816, -9.82598067e-07, 0.998698533, -0.0510031395, 6.36324955e-07, 0.0510031395, 0.998698533, -1.00461093e-05, -8.35937328e-08, 1.08393433e-05, 1.00000024) * CFrame.new(0, 0, 0+ .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 - 30 * math.cos((sine) / 10)), 0, 0), 
         CFrame.new(-0.539563596, -1.99794078, 1.12228372e-06, 0.998635888, 0.0523072146, -1.77852357e-07, -0.0523072146, 0.998635888, -1.00715051e-05, -3.89727461e-07, 1.08406466e-05, 1.00000024) * CFrame.new(0, 0, 0- .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 + 30 * math.cos((sine) / 10)), 0, 0), 
        }, .3, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0111980997, -1.6377027, -0.318750381, -0.0172109306, 0, -0.999851882, 0.999851882, 0, -0.0172109306, 0, -1, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
            end
        end
    if 0 < #Effects then
        for e = 1, #Effects do
            if Effects[e] ~= nil then
                local Thing = Effects[e]
                if Thing ~= nil then
                    local Part = Thing[1]
                    local Mode = Thing[2]
                    local Delay = Thing[3]
                    local IncX = Thing[4]
                    local IncY = Thing[5]
                    local IncZ = Thing[6]
                    if Thing[2] == "Shoot" then
                        local Look = Thing[1]
                        local move = 30
                        if Thing[8] == 3 then
                            move = 10
                        end
                        local hit, pos = rayCast(Thing[4], Thing[1], move, m)
                        if Thing[10] ~= nil then
                            da = pos
                            cf2 = CFrame.new(Thing[4], Thing[10].Position)
                            cfa = CFrame.new(Thing[4], pos)
                            tehCF = cfa:lerp(cf2, 0.2)
                            Thing[1] = tehCF.lookVector
                        end
                        local mag = (Thing[4] - pos).magnitude
                        Effects["Head"].Create(Torso.BrickColor, CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.2)
                        if Thing[8] == 2 then
                            Effects["Ring"].Create(Torso.BrickColor, CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0), 1, 1, 0.1, 0.5, 0.5, 0.1, 0.1, 1)
                        end
                        Thing[4] = Thing[4] + Look * move
                        Thing[3] = Thing[3] - 1
                        if 2 < Thing[5] then
                            Thing[5] = Thing[5] - 0.3
                            Thing[6] = Thing[6] - 0.3
                        end
                        if hit ~= nil then
                            Thing[3] = 0
                            if Thing[8] == 1 or Thing[8] == 3 then
                                Damage(hit, hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, "", 1)
                            else
                                if Thing[8] == 2 then
                                    Damage(hit, hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, "", 1)
                                    if (hit.Parent:findFirstChild("Humanoid")) ~= nil or (hit.Parent.Parent:findFirstChild("Humanoid")) ~= nil then
                                        ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
                                        ref.Anchored = true
                                        ref.CFrame = CFrame.new(pos)
                                        CFuncs["Sound"].Create("161006093", ref, 1, 1.2)
                                        game:GetService("Debris"):AddItem(ref, 0.2)
                                        Effects["Block"].Create(Torso.BrickColor, CFrame.new(ref.Position) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 10, 10, 10, 0.1, 2)
                                        Effects["Ring"].Create(BrickColor.new("Bright yellow"), CFrame.new(ref.Position) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 0.1, 4, 4, 0.1, 0.1)
                                        MagnitudeDamage(ref, 15, Thing[5] / 1.5, Thing[6] / 1.5, 0, "Normal", "", 1)
                                    end
                                end
                            end
                            ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
                            ref.Anchored = true
                            ref.CFrame = CFrame.new(pos)
                            Effects["Sphere"].Create(Torso.BrickColor, CFrame.new(pos), 5, 5, 5, 1, 1, 1, 0.07)
                            game:GetService("Debris"):AddItem(ref, 1)
                        end
                        if Thing[3] <= 0 then
                            table.remove(Effects, e)
                        end
                    end
                    do
                        do
                            if Thing[2] == "FireWave" then
                                if Thing[3] <= Thing[4] then
                                    Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(0, 1, 0)
                                    Thing[3] = Thing[3] + 1
                                    Thing[6].Scale = Thing[6].Scale + Vector3.new(Thing[5], 0, Thing[5])
                                else
                                    Part.Parent = nil
                                    table.remove(Effects, e)
                                end
                            end
                            if Thing[2] ~= "Shoot" and Thing[2] ~= "Wave" and Thing[2] ~= "FireWave" then
                                if Thing[1].Transparency <= 1 then
                                    if Thing[2] == "Block1" then
                                        Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                                        Mesh = Thing[7]
                                        Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                    else
                                        if Thing[2] == "Block2" then
                                            Thing[1].CFrame = Thing[1].CFrame
                                            Mesh = Thing[7]
                                            Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                        else
                                            if Thing[2] == "Fire" then
                                                Thing[1].CFrame = CFrame.new(Thing[1].Position) + Vector3.new(0, 0.2, 0)
                                                Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                                                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                            else
                                                if Thing[2] == "Cylinder" then
                                                    Mesh = Thing[7]
                                                    Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                                                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                else
                                                    if Thing[2] == "Blood" then
                                                        Mesh = Thing[7]
                                                        Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, 0.5, 0)
                                                        Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                                                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                    else
                                                        if Thing[2] == "Elec" then
                                                            Mesh = Thing[10]
                                                            Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
                                                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                        else
                                                            if Thing[2] == "Disappear" then
                                                                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                            else
                                                                if Thing[2] == "Shatter" then
                                                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                        Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
                                                        Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
                                                        Thing[6] = Thing[6] + Thing[5]
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                else
                                    Part.Parent = nil
                                    table.remove(Effects, e)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
end
end}

 
 

module[1] = {"One Punch Man",function()
--One Punch Man Script 
p = game.Players.LocalPlayer
char = p.Character
des = false
fling = true
dot = false
falling = false
jump = true
--char.Shirt:Remove()
--for i,v in pairs(char:GetChildren()) do if v:IsA("Pants") then v:Remove() end end
for i,v in pairs(char:GetChildren()) do if v:IsA("Hat") then v.Handle:Remove() end end
wait()--shirt = Instance.new("Shirt", char)
--shirt.Name = "Shirt"
--pants = Instance.new("Pants", char)
--pants.Name = "Pants"

--char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=451927425"
--char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=236412261"
tp = true
shoot = true
hum = char.Humanoid
punch = true
neckp = char.Torso.Neck.C0
neck = char.Torso.Neck
hum.MaxHealth = 9999999999999999999999999999999999999999
wait()
hum.Health =hum.MaxHealth
des = false
root=char.HumanoidRootPart
torso = char.Torso
char.Head.face.Texture = "rbxassetid://332768867"
local ChatService = game:GetService("Chat")
local player = game.Players.LocalPlayer
lig = Instance.new("PointLight",player.Character.Torso)
lig.Color=Color3.new(255,0,0)
m=player:GetMouse()
bb = Instance.new("BillboardGui",player.Character.Head)
bb.Enabled = true
function newRay(start,face,range,wat)
       local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
       hit,pos=Workspace:FindPartOnRayWithIgnoreList(rey,wat)
       return rey,hit,pos
end
aa1={}
torso=game.Players.LocalPlayer.Character.Torso

local WorldUp = Vector3.new(0,1,0)
function look2(Vec1,Vec2)
   local Orig = Vec1
   Vec1 = Vec1+Vector3.new(0,1,0)
   Vec2 = Vec2+Vector3.new(0,1,0)
   local Forward = (Vec2-Vec1).unit
   local Up = (WorldUp-WorldUp:Dot(Forward)*Forward).unit
   local Right = Up:Cross(Forward).unit
   Forward = -Forward
   Right = -Right
   return CFrame.new(Orig.X,Orig.Y,Orig.Z,Right.X,Up.X,Forward.X,Right.Y,Up.Y,Forward.Y,Right.Z,Up.Z,Forward.Z)
end

function look(CFr,Vec2)
   local A = Vector3.new(0,0,0)
   local B = CFr:inverse()*Vec2
   local CF = look2(A,Vector3.new(A.X,B.Y,B.Z))
   if B.Z > 0 then
       CF = CFr*(CF*CFrame.Angles(0,0,math.pi))
   elseif B.Z == 0 then
       if B.Y > 0 then
           CF = CFr*CFrame.Angles(math.pi/2,0,0)
       elseif B.Y < 0 then
           CF = CFr*CFrame.Angles(-math.pi/2,0,0)
       else
           CF = CFr
       end
   end
   local _,_,_,_,X,_,_,Y,_,_,Z,_ = CF:components()
   local Up = Vector3.new(X,Y,Z)
   local Forward = (Vec2-CFr.p).unit
   local Right = Up:Cross(Forward)
   Forward = -Forward
   Right = -Right
   return CFrame.new(CFr.X,CFr.Y,CFr.Z,Right.X,Up.X,Forward.X,Right.Y,Up.Y,Forward.Y,Right.Z,Up.Z,Forward.Z)
end

function simulate(j,d,m,r,t)
       local joint = j
       for i,v in ipairs(t) do
               if v[1]:FindFirstChild("Weld") then
                       local stiff = m.CFrame.lookVector*0.03
                       if i > 1 then joint = t[i-1][1].CFrame*CFrame.new(0,0,d*.5) end
                       local dir = (v[2].p-(joint.p+Vector3.new(0,0.2,0)+stiff)).unit
                       local dis = (v[2].p-(joint.p+Vector3.new(0,0.2,0)+stiff)).magnitude
                       local pos = joint.p+(dir*(d*0.5))
                     --if v[1].CFrame.y<=workspace.Base.CFrame.y then pos = joint.p+(dir*(d*.5)) end
                       local inv = v[1].Weld.Part0.CFrame
                       local rel1 = inv:inverse()*pos
                       local rel2 = inv:inverse()*(pos-(dir*dis))
                       local cf = look(CFrame.new(rel1),rel2)--CFrame.new(pos,pos-(dir*dis))*CFrame.fromEulerAnglesXYZ(r.x,r.y,r.z)
                       v[1].Weld.C0 = cf
                       v[2] = inv*cf
                       --v[1].CFrame = cf
               end
       end
end
for i=1,8 do
local p = Instance.new("Part",char)
p.Anchored = false
p.BrickColor = BrickColor.new("Institutional white")
p.CanCollide = false
p.FormFactor="Custom"
p.Material = "SmoothPlastic"
p.TopSurface = "SmoothNoOutlines"
p.BottomSurface = "SmoothNoOutlines"
p.RightSurface = "SmoothNoOutlines"
p.LeftSurface = "SmoothNoOutlines"
p.FrontSurface = "SmoothNoOutlines"
p.BackSurface = "SmoothNoOutlines"

p.Size=Vector3.new(2,.2,0.2)
p:BreakJoints() -- sometimes the parts are stuck to something so you have to breakjoints them
mesh = Instance.new("BlockMesh",p)
mesh.Scale = Vector3.new(1,1,4)
local w = Instance.new("Motor6D",p)
w.Part0 = aa1[i-1] and aa1[i-1][1] or torso
w.Part1 = p
w.Name = "Weld"
--table.insert(aa1,p)
aa1[i] = {p,p.CFrame}

end
game:service"RunService".Stepped:connect(function()
simulate(torso.CFrame*CFrame.new(0,0.9,.5),.6,torso,Vector3.new(),aa1)
end)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,200,0,50)
bb.StudsOffset = Vector3.new(0,1,0)
gui=Instance.new("TextBox",bb)
gui.Text = "* "
gui.Size = UDim2.new(0,133,0,45)
gui.Position=UDim2.new(0,57,0,-40)
gui.TextColor3 = Color3.new(255,255,255)
gui.BackgroundColor3=Color3.new(0,0,0)
gui.TextWrapped = true
gui.TextScaled = true
gui.TextXAlignment = "Left"
gui.TextYAlignment = "Top"
gui.Visible = false
gui.BorderColor3 = Color3.new(0,0,0)
punch2 = true
gui1=Instance.new("TextButton",bb)
gui1.Position=UDim2.new(0,5,0,-43)
gui1.Size = UDim2.new(0,190,0,51)

gui1.TextColor3 = Color3.new(255,255,255)
gui1.BackgroundColor3=Color3.new(255,255,255)
jump2 = true
gui1.Visible = false
img = Instance.new("ImageLabel",bb)
img.Size = UDim2.new(0,46,0,47)
img.Position = UDim2.new(0,10,0,-41)
img.Image = "rbxassetid://447301252"
img.BorderColor3 = Color3.new(0,0,0)
img.Visible = false
soka = Instance.new("Sound",char)
soka.SoundId = "http://www.roblox.com/asset/?id = 447199232"
soka.Volume = 1
boom = Instance.new("Sound",char)
boom.SoundId = "http://www.roblox.com/asset/?id = 447041606"
boom.Volume = 1
boom2 = Instance.new("Sound",char)
boom2.SoundId = "http://www.roblox.com/asset/?id = 449025737"
boom2.Volume = 1
boom3 = Instance.new("Sound",char)
boom3.SoundId = "http://www.roblox.com/asset/?id = 450719019"
boom3.Volume = 1
tps = Instance.new("Sound",char)
tps.SoundId = "http://www.roblox.com/asset/?id = 449860746"
tps.Volume = 1
asd = Instance.new("Sound",char)
asd.SoundId = "http://www.roblox.com/asset/?id = 447310433"
asd.Volume =1 
asd1 = Instance.new("Sound",char)
asd1.SoundId = "http://www.roblox.com/asset/?id = 358280695"

asd2 = Instance.new("Sound",char)
asd2.SoundId = "http://www.roblox.com/asset/?id = 386713054"
asd2.Looped = true
asd2.Volume = 5
asd3 = Instance.new("Sound",char)
asd3.SoundId = "http://www.roblox.com/asset/?id = 378387996"
asd3.Looped = true
asd4 = Instance.new("Sound",char)
asd4.SoundId = "http://www.roblox.com/asset/?id = 401258325"
asd4.Looped = true
asd5 = Instance.new("Sound",char)
asd5.SoundId = "http://www.roblox.com/asset/?id = 362252261"
asd5.Looped = true
gas = Instance.new("Sound",char)
gas.SoundId = "http://www.roblox.com/asset/?id = 345052019"
asd6 = Instance.new("Sound",char)
asd6.SoundId = "http://www.roblox.com/asset/?id = 401258325"
asd6.Looped = true
function play(play)
asd:Play()
wait(0.05)
--asd1:Play()
end



------------
-------------------------

function stream(origin,dir,length,size)
       local parts = {}
       for i = 1,length do
               local p = Instance.new("Part",char)
               p.Anchored = true
               p.Transparency = 0.5
               p.TopSurface = 0
               p.BottomSurface = 0
               p.CanCollide = false
               p.BrickColor = BrickColor.new("Institutional white")
               p.Size = Vector3.new(10,30,10) -- for now
               p.CFrame = CFrame.new(origin+dir*i*size)*CFrame.Angles(math.random()*math.pi,math.random()*math.pi,math.random()*math.pi)
               parts[i] = {p,CFrame.Angles(math.random()*math.pi/5,math.random()*math.pi/5,math.random()*math.pi/5)}
               game:GetService("Debris"):AddItem(p,3)
       end
       Spawn(function()
               while parts do
                       for i,v in pairs(parts) do
                               if v[1].Parent == char then
                                       v[1].CFrame = v[1].CFrame*v[2]
                               else
                                       parts = nil
                                       break
                               end
                       end
                       wait(0.02)
               end
       end)
end

--[[-- listen for their chatting
player.Chatted:connect(function(message)
a = string.len(message)
gui.Text = ""
gui.Visible = true
gui1.Visible = true
des = false
img.Visible = true
print(a)
if dot == false then
gui.Text = ""
for i = 1,string.len(message) do 
gui.Text =gui.Text..message:sub(i,i)
play()

end
end


des = true
end)]]--
m.KeyDown:connect(function(k)
if k == "g" then
asd2:Play()


end
end)

m.KeyDown:connect(function(k)
if k == "r" then

asd4:Play()
end
end)
m.KeyDown:connect(function(k)
if k == "q" then

asd3:Play()
end
end)
m.KeyDown:connect(function(k)
if k == "z" then
img.Image = "rbxassetid://332766052"

end
end)
m.KeyDown:connect(function(k)
if k == "c" then
img.Image = "rbxassetid://447301252"

end
end)
m.KeyDown:connect(function(k)
if k == "b" then

asd6:Play()
end
end)
mouse = p:GetMouse()
m.KeyDown:connect(function(k)
if k:byte() == 48 then

hum.WalkSpeed = 100
end
end)
m.KeyDown:connect(function(k)
if k:byte() == 50 then

soka:Play()
end
end)
m.KeyDown:connect(function(k)
if k:byte() == 52 then

char.Head.face.Texture = "rbxassetid://444037452"
end
end)
m.KeyDown:connect(function(k)
if k:byte() == 51 then

char.Head.face.Texture = "rbxassetid://332768867"
end
end)
m.KeyUp:connect(function(k)
if k:byte() == 48 then

hum.WalkSpeed = 16
end
end)
p.Chatted:connect(function(m)
if m == "Okay." then
soka:Play()
end
end)
m.KeyDown:connect(function(k)
if k == "x" then
if des == true then
gui.Visible = false
gui.Text = "* "
gui1.Visible = false
img.Visible = false
end
end
end)
m.KeyDown:connect(function(key)
if key == "j" then
if tp == true then
tp = false
tps:Play()
char.Head.face.Parent = game.Lighting
for i,v in pairs(char:GetChildren()) do if v:IsA("Part") then v.Transparency = 1
end

end
  wait(0.5)
for i,v in pairs(char:GetChildren()) do if v:IsA("Part") then v.Transparency = 0          
end

end
char.HumanoidRootPart.CFrame = mouse.Hit * CFrame.new(0, 3, 0)
char.HumanoidRootPart.Transparency =  1
game.Lighting.face.Parent = char.Head
   wait(0.2)

tp = true


end
end
end)


m.KeyDown:connect(function(key)
   if key == "t" then
if punch2 == true then
punch2 = false
punch = false

local ChatService = game:GetService("Chat")

neck.C0 = neck.C0 * CFrame.Angles(0.3,0,0)
ChatService:Chat(char.Head, "Mind if I get Serious?")
wait(1)
local ChatService = game:GetService("Chat")


ChatService:Chat(char.Head ,"Killer Move: Serious Series...")
wait(1)
local ChatService = game:GetService("Chat")


ChatService:Chat(char.Head, "SERIOUS PUNCH.")
neck.C0 = neckp
wait(0.6)
org = char.Torso["Left Shoulder"].C0
char.Torso["Left Shoulder"].C0 = char.Torso["Left Shoulder"].C0 * CFrame.new(-0.3,0,0) * CFrame.Angles(0,0,math.rad(-90))
wait()
killbrick2 = Instance.new("Part",char)
killbrick2.Size = Vector3.new(80,80,9000)
killbrick2.Transparency = 1

killbrick2.CanCollide = true
wait(0.1)
killbrick2.CanCollide = false

killbrick2.Anchored = true

killbrick2.CFrame = char.Torso.CFrame * CFrame.new(0,0,-1005)

killbrick2.Touched:connect(function(h)
local x = h.Parent:FindFirstChild("Humanoid")
if x then
if x.Parent.Name == game.Players.LocalPlayer.Name then
safe = true
else safe = false
end
if x then
if safe == false then
h.Parent.Torso.Velocity = CFrame.new(char.Torso.Position,h.Parent.Torso.Position).lookVector * 900
local bodyforc = Instance.new("BodyForce", h.Parent.Torso)
boom:Play()
bodyforc.force = Vector3.new(0, h.Parent.Torso:GetMass() * 196.1, 0)


wait(0.2)
x.Parent:BreakJoints()
wait()
safe = true
end
end
end
end)








 local rng = Instance.new("Part", char)
       rng.Anchored = true
   rng.BrickColor = BrickColor.new("Institutional white")
       rng.CanCollide = false
   rng.FormFactor = 3
       rng.Name = "Ring"
    rng.Size = Vector3.new(1, 1, 1)
       rng.Transparency = 0.8
    rng.TopSurface = 0
    rng.BottomSurface = 0
rng.CFrame = char["Left Arm"].CFrame * CFrame.new(0,-2,0)
--rng.Rotation = Vector3.new(math.pi/2,0,0)
       rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
       local rngm = Instance.new("SpecialMesh", rng)
    rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
       rngm.Scale = Vector3.new(1, 1.3, 2)
local rng1 = Instance.new("Part", char)
       rng1.Anchored = true
   rng1.BrickColor = BrickColor.new("Institutional white")
       rng1.CanCollide = false
   rng1.FormFactor = 3
       rng1.Name = "Ring"
    rng1.Size = Vector3.new(1, 1, 1)
       rng1.Transparency = 0.8
    rng1.TopSurface = 0
    rng1.BottomSurface = 0
rng1.CFrame = char["Left Arm"].CFrame * CFrame.new(0,-2,0)
--rng1.Rotation = Vector3.new(math.pi/2,0,0)
       rng1.CFrame = rng1.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
       local rngm1 = Instance.new("SpecialMesh", rng1)
    rngm1.MeshId = "http://www.roblox.com/asset/?id=3270017"
       rngm1.Scale = Vector3.new(1, 1.3, 2)
       
       local p = (torso.CFrame*CFrame.new(-20,0,3))
       stream(p.p,((p*Vector3.new(-0.7,0,1))-p.p).unit,90,5) -- 20 is number of parts, 6 is distance between each one
       local p = (torso.CFrame*CFrame.new(20,0,3))
       stream(p.p,((p*Vector3.new(0.7,0,1))-p.p).unit,90,5) -- same here

local rng2 = Instance.new("Part", char)
       rng2.Anchored = true
   rng2.BrickColor = BrickColor.new("Institutional white")
       rng2.CanCollide = false
   rng2.FormFactor = 3
       rng2.Name = "Ring"
    rng2.Size = Vector3.new(1, 1, 1)
       rng2.Transparency = 0.8
    rng2.TopSurface = 0
    rng2.BottomSurface = 0
rng2.CFrame = char["Left Arm"].CFrame * CFrame.new(0,-2,0)
--rng1.Rotation = Vector3.new(math.pi/2,0,0)
       rng2.CFrame = rng2.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
       local rngm2 = Instance.new("SpecialMesh", rng2)
    rngm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
       rngm2.Scale = Vector3.new(1, 1.3, 2)
wait(0.1)
          
boom3:Play()
    coroutine.wrap(function()
     for i = 1, 35, 0.5 do





       rngm.Scale = Vector3.new(50 + i*2, 10 + i*2, 2.5+ i*4)
rngm1.Scale = Vector3.new(50 + i*2, 1.4 + i*2, 1.4+ i*4)
rngm2.Scale = Vector3.new(50 + i*2, 10 + i*2, 1.2+ i*4)
   
         wait()
           end
             wait()
           rng:Destroy()
rng1:Destroy()
rng2:Destroy()
             killbrick2:Remove()
      wait(0.5)
char.Torso["Left Shoulder"].C0 = org
   wait(1)
punch2 = true
punch = true
wait()


end)()



end


wait(.1)


end
end)





m.KeyDown:connect(function(key)
   if key == "k" then
if punch == true then
punch = false
org = char.Torso["Left Shoulder"].C0
char.Torso["Left Shoulder"].C0 = char.Torso["Left Shoulder"].C0 * CFrame.new(-0.3,0,0) * CFrame.Angles(0,0,math.rad(-90))
killbrick = Instance.new("Part",char)
killbrick.Size = Vector3.new(5,1,5)
killbrick.Transparency = 1
killbrick:BreakJoints()
killbrick.CanCollide = false
local wel = Instance.new("Weld",killbrick)
wel.Part0 = killbrick
wel.Part1 = char["Left Arm"]
wel.C0 = CFrame.new(0,1,0)
force = 90

killbrick.Touched:connect(function(h)
local x = h.Parent.Humanoid
if x.Health >= 6000 then
       fling = false
end
if x.Health < 6000 then
       fling = true
end
local stop = h.Parent.Torso.Velocity
if x.Parent.Name == game.Players.LocalPlayer.Name then
safe = true
else safe = false
end
if x then
if safe == false then
       if fling == true then
               force = 900
       
       end
if fling == false then
       force = 200
end
       
    
h.Parent.Torso.Velocity = CFrame.new(char.Torso.Position,h.Parent.Torso.Position).lookVector * force
local bodyforc = Instance.new("BodyForce", h.Parent.Torso)
boom:Play()
bodyforc.force = Vector3.new(0, h.Parent.Torso:GetMass() * 196.1, 0)


wait(0.2)
x:TakeDamage(5000)
wait()
safe = true
bodyforc:Remove()
h.Parent.Torso.Velocity = stop

end
end
end)










 local rng = Instance.new("Part", char)
       rng.Anchored = true
   rng.BrickColor = BrickColor.new("Institutional white")
       rng.CanCollide = false
   rng.FormFactor = 3
       rng.Name = "Ring"
    rng.Size = Vector3.new(1, 1, 1)
       rng.Transparency = 0.8
    rng.TopSurface = 0
    rng.BottomSurface = 0
rng.CFrame = char["Left Arm"].CFrame * CFrame.new(0,-2,0)
--rng.Rotation = Vector3.new(math.pi/2,0,0)
       rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
       local rngm = Instance.new("SpecialMesh", rng)
    rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
       rngm.Scale = Vector3.new(1, 1.3, 2)
wait(0.1)
          
boom2:Play()
    coroutine.wrap(function()
     for i = 1, 10, .4 do
       rngm.Scale = Vector3.new(2 + i*2, 2 + i*2, 1)
   
         wait()
           end
             wait()
           rng:Destroy()
             killbrick:Remove()
      wait(0.5)
char.Torso["Left Shoulder"].C0 = org
   wait(1)

punch = true
wait()
end)()



end


wait(.1)


end
end)














m.KeyDown:connect(function(key)
   if key == "m" then
if jump == true then
jump = false


 local rng = Instance.new("Part", char)
       rng.Anchored = true
   rng.BrickColor = BrickColor.new("Institutional white")
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
       rngm.Scale = Vector3.new(1, 1.3, 2)
wait(0.1)
            BV = Instance.new("BodyVelocity", torso)
    BV.maxForce = Vector3.new(0,20000,0)
      BV.P = 1000
    BV.velocity = Vector3.new(0,100,0)
boom:Play()
    coroutine.wrap(function()
       for i = 1, 60, 2 do
       rngm.Scale = Vector3.new(2 + i*2, 2 + i*2, 1)
        rng.Transparency = i/60
         wait()
           end
             wait()
           rng:Destroy()
             
       hum.WalkSpeed = 50
   wait(1)

for i,v in pairs(torso:GetChildren()) do if v:IsA("BodyVelocity") then
v:Destroy() jumping2 = true falling = true wait(0.3) jumping2 = false falling = false wait(1.7) jump = true hum.WalkSpeed = 16  falling = false
end end
wait()
end)()



end


wait(.1)


end
end)






m.KeyDown:connect(function(key)
   if key == "n" then

if falling == true then
falling = false
if jumping2 == true then
jumping2 = false
jump = false
BV = Instance.new("BodyVelocity", torso)
    BV.maxForce = Vector3.new(0,-20000,0)
      BV.P = -1000
    BV.velocity = Vector3.new(0,-70,0)
wait(0.6)
 local rng = Instance.new("Part", char)
       rng.Anchored = true
   rng.BrickColor = BrickColor.new("Institutional white")
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
       rngm.Scale = Vector3.new(1, 1.3, 2)

            
boom:Play()
    coroutine.wrap(function()
       for i = 1, 60, 2 do
       rngm.Scale = Vector3.new(2 + i*2, 2 + i*2, 1)
        rng.Transparency = i/60
         wait()
           end
             wait()
           rng:Destroy()
             
      


for i,v in pairs(torso:GetChildren()) do if v:IsA("BodyVelocity") then
v:Destroy()  wait(2)  jumping2 = true hum.WalkSpeed = 16 
end end
wait()
end)()



end


wait(.1)

end
end
end)
m.KeyDown:connect(function(k)
if k == "f" then
asd3:Stop()
asd2:Stop()
asd4:Stop()
asd6:Stop()
asd5:Stop()
end
end) 
------------
-- ~CLarramore 2016
end}
module[2] = {"Operation",function()
--==Made by LuisPambid==--
--==NODACHI OPERATION==--

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
		local g=Instance.new(ins, par) pcall(function() g.BorderColor=BrickColor.new(bc) g.BackgroundColor=BrickColor.new(bg) g.TextColor=BrickColor.new(tc) g.TextStrokeColor=BrickColor.new("Really black") g.FontSize=fs g.TextFont="ArialBold" g.Text=text g.Transparency=t g.Size=s g.Position=pos  end)
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
local scriptname="Operation"
pcall(function() player.Backpack[scriptname]:remove() char[scriptname]:remove() char[scriptname.."B"]:remove() player.PlayerGui[scriptname]:remove() end)
local model=Instance.new("Model", char) model.Name=scriptname
local modelB=Instance.new("Model", char) modelB.Name=scriptname.."B"
local sound=Instance.new("Sound", model)
local bin=Instance.new("HopperBin", player.Backpack) bin.Name=model.Name
local skincolor="New Yeller"
local body={}
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
	body.TorsoW=add.Weld(torso, body.Torso, nil)
	body.ArmLeftW, body.ArmRightW=add.Weld(body.ArmLeft, body.Torso, CFrame.new(-1.5, .5, 0)), add.Weld(body.ArmRight, body.Torso, CFrame.new(1.5, .5, 0))
	body.LegLeftW, body.LegRightW=add.Weld(body.LegLeft, body.Torso, CFrame.new(-.5, -1.5, 0)), add.Weld(body.LegRight, body.Torso, CFrame.new(.5, -1.5, 0))
	--==MESHES==--
	add.Mesh("BlockMesh", body.ArmLeft, Vector3.new(1, 2, 1), Vector3.new(0, -.5, 0), nil)
	add.Mesh("BlockMesh", body.ArmRight, Vector3.new(1, 2, 1), Vector3.new(0, -.5, 0), nil)
	add.Mesh("BlockMesh", body.LegLeft, Vector3.new(1, 2, 1), Vector3.new(0, -.5, 0), nil)
	add.Mesh("BlockMesh", body.LegRight, Vector3.new(1, 2, 1), Vector3.new(0, -.5, 0), nil)
	---------------------------------------------------------------------------------------
	--==Objects==--
	obj.LH=add.Part(model, false, false, "Really black", 0, Vector3.new(.5, 1, .2), nil)
	obj.LHW=add.Weld(obj.LH, body.ArmLeft, CFrame.new(-.3, -.5, -.2))
	obj.LH=add.Part(model, false, false, "Really black", 0, Vector3.new(.5, .2, .5), nil)
	obj.LHW=add.Weld(obj.LH, body.ArmLeft, CFrame.new(-.3, -.9, 0))
	
	obj.Handle=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.25, 2, .25), nil)
	obj.HandleW=add.Weld(obj.Handle, body.ArmRight, CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), 0, 0))
	for i=1, 5 do
		obj.Design=add.Part(modelB, false, false, "New Yeller", 0, Vector3.new(.3, .1, .1), nil)
		obj.DesignW=add.Weld(obj.Design, obj.Handle, CFrame.new(0, -1+i/3, 0)*CFrame.Angles(math.rad(45), 0, 0))
	end
	obj.Guard=add.Part(modelB, false, false, "Really black", 0, Vector3.new(.5, .2, .5), nil)
	obj.GuardW=add.Weld(obj.Guard, obj.Handle, CFrame.new(0, 1.1, 0))
	obj.GuardB=add.Part(modelB, false, false, "New Yeller", 0, Vector3.new(.25, .2, .3), nil)
	obj.GuardBM=add.Mesh("BlockMesh", obj.GuardB, Vector3.new(.5, 1, 1), nil, nil)
	obj.GuardBW=add.Weld(obj.GuardB, obj.Handle, CFrame.new(0, 1.25, 0))
	obj.Blade=add.Part(modelB, false, false, "Mid gray", 0, Vector3.new(.2, 4, .25), nil) obj.Blade.Reflectance=.5
	obj.BladeM=add.Mesh("BlockMesh", obj.Blade, Vector3.new(.5, 1, 1), nil, nil)
	obj.BladeW=add.Weld(obj.Blade, obj.Handle, CFrame.new(0, 3, 0))
	obj.Point=add.Wedge(modelB, false, false, "Mid gray", 0, Vector3.new(.2, 1, .25), nil) obj.Point.Reflectance=.5
	obj.PointM=add.Mesh("SpecialMesh", obj.Point, Vector3.new(.5, 1, 1), nil, "Wedge")
	obj.PointW=add.Weld(obj.Point, obj.Blade, CFrame.new(0, 2.5, 0)*CFrame.Angles(math.rad(0), 0, 0))
	obj.Ope=add.Part(model, false, false, "White", 1, Vector3.new(1, 1, 1), nil)
	obj.OpeM=add.Mesh("SpecialMesh", obj.Ope, Vector3.new(2, 2, 2), nil, "File") obj.OpeM.MeshId="http://www.roblox.com/asset/?id=3270017"
	obj.OpeW=add.Weld(obj.Ope, body.ArmLeft, CFrame.new(0, -1.5, 0))
	c(function() for i=1, math.huge do wait() obj.OpeM.Scale=Vector3.new(math.random(2, 4), math.random(2, 4), 2) obj.OpeW.C1=CFrame.new(0, -1.8, 0)*CFrame.Angles(math.rad(90), 0, math.rad(i*10)) end end)
end
function removeParts()
	p(function()
		for i, v in pairs(model:children()) do v:remove() end
		for i, v in pairs(modelB:children()) do v:remove() end
		for i, v in pairs(char:children()) do v.Transparency=0 end
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
local whileDeb=false
local keyDeb=false
local tDeb=false
local hDeb=false
local loopDeb=false
local loopDeb2=false
local loopDeb3=false
local speed=32
local mana=100

local gui=Instance.new("ScreenGui", player.PlayerGui) gui.Name=scriptname
local label=Instance.new("TextLabel", gui)
label.Position=UDim2.new(0, 0, 0, 200)
label.Size=UDim2.new(0, 150, 0, 50)
label.BorderColor=BrickColor.Black() label.BackgroundColor=BrickColor.Black()
label.TextColor=BrickColor.White()
label.Font="ArialBold"
label.FontSize="Size18"
label.Text="Room(Q)"
local labelb=Instance.new("TextLabel", label)
labelb.Position=UDim2.new(0, 0, 1, 0)
labelb.Size=UDim2.new(1, 0, 1, 0)
labelb.BorderColor=BrickColor.Black() labelb.BackgroundColor=BrickColor.Black()
labelb.TextColor=BrickColor.White()
labelb.Font="ArialBold"
labelb.FontSize="Size18"
labelb.Text="Shambles(E)"
local labelc=Instance.new("TextLabel", labelb)
labelc.Position=UDim2.new(0, 0, 1, 0)
labelc.Size=UDim2.new(1, 0, 1, 0)
labelc.BorderColor=BrickColor.Black() labelc.BackgroundColor=BrickColor.Black()
labelc.TextColor=BrickColor.White()
labelc.Font="ArialBold"
labelc.FontSize="Size18"
labelc.Text="Mes(R)"
local labeld=Instance.new("TextLabel", labelc)
labeld.Position=UDim2.new(0, 0, 1, 0)
labeld.Size=UDim2.new(1, 0, 1, 0)
labeld.BorderColor=BrickColor.Black() labeld.BackgroundColor=BrickColor.Black()
labeld.TextColor=BrickColor.White()
labeld.Font="ArialBold"
labeld.FontSize="Size18"
labeld.Text="Shield(F)"
local labele=Instance.new("TextLabel", labeld)
labele.Position=UDim2.new(0, 0, 1, 0)
labele.Size=UDim2.new(1, 0, 1, 0)
labele.BorderColor=BrickColor.Black() labele.BackgroundColor=BrickColor.Black()
labele.TextColor=BrickColor.White()
labele.Font="ArialBold"
labele.FontSize="Size18"
labele.Text="Charge(Z)"
local labelf=Instance.new("TextLabel", labele)
labelf.Position=UDim2.new(0, 0, 1, 0)
labelf.Size=UDim2.new(1, 0, 1, 0)
labelf.BorderColor=BrickColor.Black() labelf.BackgroundColor=BrickColor.Black()
labelf.TextColor=BrickColor.White()
labelf.Font="ArialBold"
labelf.FontSize="Size18"
labelf.Text="Rappid(X)"
local labelg=Instance.new("TextLabel", labelf)
labelg.Position=UDim2.new(0, 0, 1, 0)
labelg.Size=UDim2.new(1, 0, 1, 0)
labelg.BorderColor=BrickColor.Black() labelg.BackgroundColor=BrickColor.Black()
labelg.TextColor=BrickColor.White()
labelg.Font="ArialBold"
labelg.FontSize="Size18"
labelg.Text="Catastrophe(C)"

--==MANA==--
local frame=Instance.new("Frame", gui)
frame.Position=UDim2.new(0, 0, 0, 150)
frame.Size=UDim2.new(0, 200, 0, 20)
frame.BorderColor=BrickColor.Black() frame.BackgroundColor=BrickColor.White()
local clabel=Instance.new("TextLabel", frame)
clabel.Position=UDim2.new(0, 0, 0, 0)
clabel.Size=UDim2.new(1, 0, 1, 0)
clabel.BorderColor=BrickColor.Black() clabel.BackgroundColor=BrickColor.White()
clabel.TextColor=BrickColor.Black()
clabel.Font="ArialBold"
clabel.FontSize="Size18"
clabel.Text="--==100%==--"
local charge=Instance.new("TextLabel", frame) charge.Transparency=.5
charge.Position=UDim2.new(0, 0, 0, 0)
charge.Size=UDim2.new(1, 0, 1, 0)
charge.BorderColor=BrickColor.Black() charge.BackgroundColor=BrickColor.Blue()
charge.Text=""

function trail(pos, cf, col)
	c(function()
		local old=(pos.CFrame*cf).p
		while tDeb==true do
			wait()
			local new=(pos.CFrame*cf).p
			local mag=(old-new).magnitude
			local dis=(old+new)/2
			local trail=add.Part(model, true, false, col, 0, Vector3.new(.2, mag, .2), CFrame.new(dis, new)*CFrame.Angles(math.pi/2, 0, 0))
			local tMesh=add.Mesh("CylinderMesh", trail, Vector3.new(1, 1, 1), nil, nil)
			old=new
			c(function()
				for i=1, 0, -.1 do
					wait()
					trail.Mesh.Scale=trail.Mesh.Scale*Vector3.new(i, 1, i)
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

local dmg=math.random(10, 25)
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
		wait(.1)
		hDeb=false
		--end)
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

local Attacks={
	["Room"]=function(mouse) human.WalkSpeed=0
		computePos(torso.CFrame.p, mouse.Hit.p)
		for i=0, 1, .1 do wait()
			body.TorsoW.C1=CFrame.Angles(0, math.rad(45), 0)
			body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(45)*i)
			body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, math.rad(45)*i)
		end
		local room=add.Part(model, true, false, "White", .5, Vector3.new(1, 1, 1), torso.CFrame+torso.CFrame.lookVector*25)
		local dust=add.Part(model, true, false, "White", .5, Vector3.new(1, 1, 1), room.CFrame*CFrame.Angles(math.rad(90), 0, 0))
		local dustM=add.Mesh("SpecialMesh", dust, Vector3.new(1, 1, 1), nil, "File") dustM.MeshId="http://www.roblox.com/asset/?id=3270017"
		local doomed={}
		room.Touched:connect(function(h)
			p(function()
				if h.Parent:findFirstChild("Humanoid") and h.Parent:findFirstChild("Humanoid")~=human then
					h.Parent["Humanoid"].WalkSpeed=0 print(h.Parent.Name.." is on the ROOM")
					table.insert(doomed, h.Parent)
				end
			end)
		end)
		dust.Touched:connect(function(h)
			p(function()
				if h.Parent:findFirstChild("Humanoid") and h.Parent:findFirstChild("Humanoid")~=human then
					h.Parent["Humanoid"].WalkSpeed=0
					table.insert(doomed, h.Parent)
				end
			end)
		end)
		local roomM=add.Mesh("SpecialMesh", room, Vector3.new(1, 1, 1), nil, "Sphere")
		for i=1, 0, -.1 do wait() obj.Ope.Transparency=i end
		for i=0, 120, 10 do wait() room.Size=Vector3.new(i, i, i) room.CFrame=torso.CFrame+torso.CFrame.lookVector*25 dustM.Scale=Vector3.new(i, i, i) dust.CFrame=room.CFrame*CFrame.Angles(math.rad(90), 0, 0) end
		for i=0, 1, .1 do wait() obj.Ope.Transparency=i end
		tDeb=true
		trail(obj.Point, CFrame.new(), "White")
		for i=0, 1, .1 do wait()
			body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i)
			body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(0, 0, math.rad(90)*i)
			obj.HandleW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)+(-math.rad(90)*i), 0, 0)
		end
		play("rbxasset://sounds/swordslash.wav", 1)
		for i=0, 1, .1 do wait()
			body.TorsoW.C1=CFrame.Angles(0, -math.rad(180)*i, 0)
		end
		for i, v in pairs(doomed) do
			p(function()
				local tor=v["Torso"]
				local pYPos=tor.Position.y-(tor.Size.y/2)
				local sYPos=obj.Point.Position.y
				local p=tor:clone()
				local p2=tor:clone() tor:remove()
				p.formFactor="Custom" p2.formFactor="Custom" p.Anchored=false p.CanCollide=true
				p.Size=Vector3.new(tor.Size.x, sYPos-pYPos, tor.Size.z) p2.Anchored=false p2.CanCollide=true
				p2.Size=Vector3.new(tor.Size.x, p2.Size.y-(sYPos-pYPos), tor.Size.z)
				p.CFrame=tor.CFrame*CFrame.new(0, -p2.Size.y/2, 0)
				p2.CFrame=tor.CFrame*CFrame.new(0, p.Size.y/2, 0)
				p.Parent=workspace
				p2.Parent=workspace
				c(function() wait(2)
					--[[for i=0, 1, .05 do
						wait()
						p.Transparency=i p2.Transparency=i
					end]]
					p:remove() p2:remove()
				end)
			end)
		end
		tDeb=false
		for i=1, 0, -.1 do wait()
			body.TorsoW.C1=CFrame.Angles(0, -math.rad(180)*i, 0)
			body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i)
			body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(0, 0, math.rad(90)*i)
			obj.HandleW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)+(-math.rad(90)*i), 0, 0)
		end
		for i=1, 0, -.05 do wait() dustM.Scale=dustM.Scale*Vector3.new(i, i, i) roomM.Scale=roomM.Scale*Vector3.new(i, i, i) end
		room:remove() dust:remove()
		human.WalkSpeed=speed
		whileDeb=false
		wait(1)
	end;
	["Shambles"]=function(mouse) human.WalkSpeed=0
		computePos(torso.CFrame.p, mouse.Hit.p)
		for i=0, 1, .1 do wait()
			body.TorsoW.C1=CFrame.Angles(0, math.rad(45), 0)
			body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(45)*i)
			body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, math.rad(45)*i)
		end
		local room=add.Part(model, true, false, "White", .5, Vector3.new(1, 1, 1), torso.CFrame+torso.CFrame.lookVector*25)
		local dust=add.Part(model, true, false, "White", .5, Vector3.new(1, 1, 1), room.CFrame*CFrame.Angles(math.rad(90), 0, 0))
		local dustM=add.Mesh("SpecialMesh", dust, Vector3.new(1, 1, 1), nil, "File") dustM.MeshId="http://www.roblox.com/asset/?id=3270017"
		local doomed={}
		room.Touched:connect(function(h)
			p(function()
				if h.Parent:findFirstChild("Humanoid") and h.Parent:findFirstChild("Humanoid")~=human then
					h.Parent["Humanoid"].WalkSpeed=0 print(h.Parent.Name.." is on the ROOM")
					table.insert(doomed, h.Parent)
				end
			end)
		end)
		dust.Touched:connect(function(h)
			p(function()
				if h.Parent:findFirstChild("Humanoid") and h.Parent:findFirstChild("Humanoid")~=human then
					h.Parent["Humanoid"].WalkSpeed=0
					table.insert(doomed, h.Parent)
				end
			end)
		end)
		local roomM=add.Mesh("SpecialMesh", room, Vector3.new(1, 1, 1), nil, "Sphere")
		for i=1, 0, -.1 do wait() obj.Ope.Transparency=i end
		for i=0, 120, 10 do wait() room.Size=Vector3.new(i, i, i) room.CFrame=torso.CFrame+torso.CFrame.lookVector*25 dustM.Scale=Vector3.new(i, i, i) dust.CFrame=room.CFrame*CFrame.Angles(math.rad(90), 0, 0) end
		tDeb=true
		trail(obj.Ope, CFrame.new(), "White")
		for i=0, 1, .1 do wait() play("rbxasset://sounds/swordslash.wav", 1)
			body.TorsoW.C1=CFrame.Angles(0, math.rad(45), 0)
			body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(math.random(90, 135)), 0, -math.rad(math.random(-45, 45)))
			body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(-math.rad(45), 0, math.rad(45))
		end
		for i, v in pairs(doomed) do
			ypcall(function()
				local random=doomed[math.random(1, #doomed)]
				local armleft, armright=v["Left Arm"], v["Right Arm"]
				local legleft, legright=v["Left Leg"], v["Right Leg"]
				local head=v["Head"]
				add.Weld(armleft, random.Torso, CFrame.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))*CFrame.Angles(math.random(-45, 45),math.random(-45, 45),math.random(-45, 45)))
				add.Weld(armright, random.Torso, CFrame.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))*CFrame.Angles(math.random(-45, 45),math.random(-45, 45),math.random(-45, 45)))
				add.Weld(legleft, random.Torso, CFrame.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))*CFrame.Angles(math.random(-45, 45),math.random(-45, 45),math.random(-45, 45)))
				add.Weld(legright, random.Torso, CFrame.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))*CFrame.Angles(math.random(-45, 45),math.random(-45, 45),math.random(-45, 45)))
				add.Weld(head, random.Torso, CFrame.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))*CFrame.Angles(math.random(-45, 45),math.random(-45, 45),math.random(-45, 45)))
			end)
		end
		tDeb=false
		for i=0, 1, .1 do wait() obj.Ope.Transparency=i end
		for i=1, 0, -.1 do wait()
			body.TorsoW.C1=CFrame.Angles(0, math.rad(45), 0)
			body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(45)*i)
			body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, math.rad(45)*i)
		end
		for i=1, 0, -.05 do wait() dustM.Scale=dustM.Scale*Vector3.new(i, i, i) roomM.Scale=roomM.Scale*Vector3.new(i, i, i) end
		room:remove() dust:remove()
		human.WalkSpeed=speed
		whileDeb=false
		wait(1)
	end;
	["Mes"]=function(mouse) human.WalkSpeed=1
		computePos(torso.CFrame.p, mouse.Hit.p)
		for i=0, 1, .1 do
			wait()
			body.TorsoW.C1=CFrame.Angles(0, -math.rad(90)*i, 0)
			body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i)
			body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(0, 0, math.rad(90)*i)
			obj.HandleW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)+(-math.rad(90)*i), 0, 0)
		end
		obj.Blade.Touched:connect(hit)
		tDeb=true trail(obj.Point, CFrame.new(), "White")
		for i=0, 1, .25 do
			wait()
			body.TorsoW.C1=CFrame.new(-10*i, 0, 0)*CFrame.Angles(0, -math.rad(90), 0)
		end
		play("rbxasset://sounds/swordslash.wav", 1)
		for i=1, 0, -.2 do
			wait()
			body.TorsoW.C1=CFrame.new(-10*i, 0, 0)*CFrame.Angles(0, -math.rad(90), 0)
		end
		obj.Blade.Touched:connect(hit):disconnect()
		for i=1, 0, -.1 do
			wait()
			body.TorsoW.C1=CFrame.Angles(0, -math.rad(90)*i, 0)
			body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i)
			body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(0, 0, math.rad(90)*i)
			obj.HandleW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)+(-math.rad(90)*i), 0, 0)
		end
		human.WalkSpeed=speed
		tDeb=false
		whileDeb=false
		wait(1)
	end;
	["Shield"]=function(mouse) human.WalkSpeed=0
		for i=0, 1, .1 do
			wait()
			body.TorsoW.C1=CFrame.Angles(0, 0, 0)
			body.ArmLeftW.C1=CFrame.new(-1.5+(.5*i), .5, -.5*i)*CFrame.Angles(math.rad(90)*i, 0, math.rad(45)*i)
			body.ArmRightW.C1=CFrame.new(1.5-(.5*i), .5, -.5*i)*CFrame.Angles(math.rad(90)*i, 0, -math.rad(45)*i)
			obj.HandleW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)+(-math.rad(90)*i), 0, math.rad(45)*i)
		end
		obj.Blade.Touched:connect(hit)
		tDeb=true trail(obj.Point, CFrame.new(), "White")
		local rotate=45
		while loopDeb==true and mana>0 do wait() rotate=rotate+45 mana=mana-1
			computePos(torso.CFrame.p, mouse.Hit.p) torso.CFrame=torso.CFrame+torso.CFrame.lookVector*2
			obj.HandleW.C0=CFrame.Angles(math.rad(rotate), 0, 0)
			local wind=add.Part(model, true, false, "White", .5, Vector3.new(math.random(10, 15), 1, math.random(10, 15)), obj.Handle.CFrame*CFrame.Angles(0, 0, math.rad(90)))
			local windM=add.Mesh("CylinderMesh", wind, Vector3.new(1, 1, 1), nil, nil)
			wind.Touched:connect(hit)
			c(function()
			for i=.5, 1, .1 do
					wait()
					wind.Transparency=i
				end
				wind:remove()
			end)
		end
		obj.Blade.Touched:connect(hit):disconnect()
		tDeb=false
		loopDeb=false
	end;
	["Rappid"]=function(mouse) human.WalkSpeed=0
		for i=0, 1, .1 do
			wait()
			body.TorsoW.C1=CFrame.Angles(0, -math.rad(90)*i, 0)
			body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i)
			body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(0, 0, math.rad(90)*i)
			obj.HandleW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)+(-math.rad(90)*i), 0, 0)
		end
		obj.Blade.Touched:connect(hit)
		tDeb=true trail(obj.Point, CFrame.new(), "White")
		while loopDeb2==true and mana>0 do wait() mana=mana-1 play("rbxasset://sounds/swordslash.wav", 1)
			computePos(torso.CFrame.p, mouse.Hit.p) torso.CFrame=torso.CFrame+torso.CFrame.lookVector*.2
			body.ArmRightW.C1=CFrame.new(1.5, .5, math.random(-.2, .2))*CFrame.Angles(math.rad(math.random(-45, 45)), 0, math.rad(90)+math.rad(math.random(-45, 45)))
		end
		obj.Blade.Touched:connect(hit):disconnect()
		tDeb=false
		loopDeb2=false
	end;
	["Charge"]=function() human.WalkSpeed=0
		for i=0, 1, .1 do
			wait()
			body.TorsoW.C1=CFrame.Angles(0, -math.rad(90)*i, 0)
			body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(0, 0, -math.rad(45)*i)
			body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(0, 0, math.rad(135)*i)
			obj.HandleW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)+(-math.rad(90)*i), 0, 0)
		end
		while loopDeb3==true do wait() if mana>=0 and mana<100 then mana=mana+1 end play("http://www.roblox.com/asset/?id=2101137", 1)
			local aura=add.Part(model, true, false, "Really black", .5, Vector3.new(1, 1, 1), body.Torso.CFrame*CFrame.new(0, -4, 0)*CFrame.Angles(0, math.rad(math.random(-45, 45)), 0))
			local auraM=add.Mesh("SpecialMesh", aura, Vector3.new(1, 1, 1), nil, "File") auraM.MeshId="http://www.roblox.com/asset/?id=20329976"
			local aura2=add.Part(model, true, false, "Really black", .5, Vector3.new(5, 5, 5), body.Torso.CFrame*CFrame.new(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15))*CFrame.Angles(math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45))))
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
		for i=1, 0, -.1 do
			wait()
			body.TorsoW.C1=CFrame.Angles(0, -math.rad(90)*i, 0)
			body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(0, 0, -math.rad(45)*i)
			body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(0, 0, math.rad(135)*i)
			obj.HandleW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)+(-math.rad(90)*i), 0, 0)
		end
		human.WalkSpeed=speed
	end;
	["Catastrophe"]=function() ypcall(function()
		local range=40
		local nChar=nearTorso(torso.CFrame.p, range).Parent
		if nChar then mana=mana-20 human.WalkSpeed=0
			local nTorso=nChar["Torso"]
			local nTorsoW=add.Weld(nTorso, torso, CFrame.new(0, 0, -range))
			for i=0, 1, .1 do wait()
				body.TorsoW.C1=CFrame.Angles(0, math.rad(45), 0)
				body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(135)*i, 0, -math.rad(45)*i)
				body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, math.rad(45)*i)
			end
			local room=add.Part(model, true, false, "White", .5, Vector3.new(1, 1, 1), torso.CFrame+torso.CFrame.lookVector*range)
			local dust=add.Part(model, true, false, "White", .5, Vector3.new(1, 1, 1), room.CFrame*CFrame.Angles(math.rad(90), 0, 0))
			local dustM=add.Mesh("SpecialMesh", dust, Vector3.new(1, 1, 1), nil, "File") dustM.MeshId="http://www.roblox.com/asset/?id=3270017"
			local roomM=add.Mesh("SpecialMesh", room, Vector3.new(1, 1, 1), nil, "Sphere")
			for i=1, 0, -.1 do wait() obj.Ope.Transparency=i end
			for i=0, 20, 5 do wait() room.Size=Vector3.new(i, i, i) room.CFrame=torso.CFrame+torso.CFrame.lookVector*range dustM.Scale=Vector3.new(i, i, i) dust.CFrame=room.CFrame*CFrame.Angles(math.rad(90), 0, 0) end
			for i=0, 1, .1 do wait() obj.Ope.Transparency=i end
			tDeb=true
			trail(obj.Point, CFrame.new(), "White")
			for i=0, 1, .1 do wait()
				body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(math.rad(90)*i, 0, -math.rad(45)*i)
				body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(0, 0, math.rad(90)*i)
				obj.HandleW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)+(-math.rad(90)*i), 0, 0)
			end
			for i=0, 1, .1 do wait()
				body.TorsoW.C1=CFrame.Angles(0, -math.rad(180)*i, 0)
			end
			ypcall(function()
				local nHead=nChar["Head"]
				local nTorso=nChar["Torso"]
				local nHumanoid=nChar["Humanoid"] nHumanoid.WalkSpeed=0
				local nHeadW=add.Weld(nHead, nTorso, CFrame.new(0, 1.5, 0))
				for i=0, 1, .1 do
					wait()
					nHeadW.C1=CFrame.new(0, 1.5+i, 0)
				end
				for i=0, 1, .1 do
					wait()
					nHeadW.C1=CFrame.new(0, 2.5, (range-2)*i)
				end
				nHeadW.Part1=body.ArmLeft
				nHeadW.C1=CFrame.new(0, -2, 0)
				local bomb=add.Part(model, false, false, "Really black", 0, Vector3.new(1, 1, 1), nil)
				local bombM=add.Mesh("SpecialMesh", bomb, Vector3.new(1.5, 1.5, 1.5), nil, "Sphere")
				local bombW=add.Weld(bomb, nTorso, CFrame.new(0, 1.5, 0))
				wait(1)
				local exp=Instance.new("Explosion", bomb)
				exp.Position=bomb.Position
				exp.BlastPressure=1
				exp.BlastRadius=3 nHumanoid.Health=0
				nTorsoW:remove()
			end)
			tDeb=false
			for i=1, 0, -.1 do wait()
				body.TorsoW.C1=CFrame.Angles(0, -math.rad(180)*i, 0)
				body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i)
				body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(0, 0, math.rad(90)*i)
				obj.HandleW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)+(-math.rad(90)*i), 0, 0)
			end
			for i=1, 0, -.05 do wait() dustM.Scale=dustM.Scale*Vector3.new(i, i, i) roomM.Scale=roomM.Scale*Vector3.new(i, i, i) end
			room:remove() dust:remove()
			whileDeb=false
			human.WalkSpeed=speed
		end end)
	end;
	["Centipede"]=function()
	end;
}

bin.Selected:connect(function(mouse) createParts()
	for i=0, 1, .1 do wait()
		body.TorsoW.C1=CFrame.Angles(0, -math.rad(45), 0)
		body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i)
		body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(45)*i, 0, math.rad(45)*i)
		body.LegLeftW.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(0, 0, -math.rad(15)*i)
		body.LegRightW.C1=CFrame.new(.5, -1.5, 0)*CFrame.Angles(0, 0, math.rad(15)*i)
	end
	c(function()
		while true do
			wait()
			clabel.Text="--=="..mana.."==--"
			charge.Size=UDim2.new(mana/100, 0, 1, 0)
		end
	end)
	human.Running:connect(function(speed)
		if speed>0 then while whileDeb==true do wait() end
			for i=0, 1, .1 do wait()
				body.TorsoW.C1=CFrame.Angles(0, -math.rad(45), 0)
				body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i)
				body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(math.rad(45)*i, 0, math.rad(45)*i)
				body.LegLeftW.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(0, 0, -math.rad(15)*i)
				body.LegRightW.C1=CFrame.new(.5, -1.5, 0)*CFrame.Angles(0, 0, math.rad(15)*i)
			end
		end
	end)
	mouse.Button1Down:connect(function()
		local fakeP=add.Part(workspace, true, false, "White", 0, Vector3.new(2, 2, 2), CFrame.new((torso.CFrame*CFrame.new(0, 0, 1.5)).p, torso.CFrame.p)*CFrame.Angles(math.rad(90), 0, 0))
		local mesh=add.Mesh("SpecialMesh", fakeP, Vector3.new(1, 1, 1), nil, "File") mesh.MeshId="http://www.roblox.com/asset/?id=20329976"
		c(function()
			for i=0, 1, .1 do
				wait()
				fakeP.Mesh.Scale=fakeP.Mesh.Scale+Vector3.new(i, 0, i)
				fakeP.Transparency=i
			end
			fakeP:remove()
		end)
		for i, v in pairs(model:getChildren()) do
			if v:isA("BasePart") then
				local clone=v:clone()
				clone.Anchored=true
				clone.CanCollide=false
				clone.CFrame=v.CFrame
				clone.Parent=workspace
				c(function()
					for i=0, 1, .1 do
						wait()
						clone.Transparency=i
					end
					clone:remove()
				end)
			end
		end
		torso.CFrame=torso.CFrame+torso.CFrame.lookVector*20
	end)
	mouse.KeyDown:connect(function(key)
		if key=="q" and mana>=50 and keyDeb==false then mana=mana-50 whileDeb=true keyDeb=true Attacks.Room(mouse) keyDeb=false end
		if key=="e" and mana>=40 and keyDeb==false then mana=mana-40 whileDeb=true keyDeb=true Attacks.Shambles(mouse) keyDeb=false end
		if key=="r" and mana>=10 and keyDeb==false then mana=mana-10 whileDeb=true keyDeb=true Attacks.Mes(mouse) keyDeb=false end
		if key=="c" and mana>=20 and keyDeb==false then whileDeb=true keyDeb=true Attacks.Catastrophe(mouse) keyDeb=false end
		--if key=="v" and mana>=30 and keyDeb==false then whileDeb=true keyDeb=true Attacks.Centipede(mouse) keyDeb=false end
		if key=="f" and keyDeb==false then whileDeb=true loopDeb=true keyDeb=true Attacks.Shield(mouse) end
		if key=="x" and keyDeb==false then whileDeb=true loopDeb2=true keyDeb=true Attacks.Rappid(mouse) end
		if key=="z" and keyDeb==false then whileDeb=true loopDeb3=true keyDeb=true Attacks.Charge() end
	end)
	mouse.KeyUp:connect(function(key)
		if key=="f" and keyDeb==true then keyDeb=false loopDeb=false whileDeb=false tDeb=false
			for i=1, 0, -.1 do
				wait()
				obj.HandleW.C0=CFrame.Angles(0, 0, 0)
				body.ArmLeftW.C1=CFrame.new(-1.5+(.5*i), .5, -.5*i)*CFrame.Angles(math.rad(90)*i, 0, math.rad(45)*i)
				body.ArmRightW.C1=CFrame.new(1.5-(.5*i), .5, -.5*i)*CFrame.Angles(math.rad(90)*i, 0, -math.rad(45)*i)
				obj.HandleW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)+(-math.rad(90)*i), 0, math.rad(45)*i)
			end	human.WalkSpeed=speed
		end
		if key=="x" and keyDeb==true then keyDeb=false loopDeb2=false whileDeb=false tDeb=false
			for i=1, 0, -.1 do
				wait()
				body.TorsoW.C1=CFrame.Angles(0, -math.rad(90)*i, 0)
				body.ArmLeftW.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i)
				body.ArmRightW.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(0, 0, math.rad(90)*i)
				obj.HandleW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90)+(-math.rad(90)*i), 0, 0)
			end	human.WalkSpeed=speed
		end
		if key=="z" and keyDeb==true then keyDeb=false loopDeb3=false whileDeb=false tDeb=false end
	end)
end)
bin.Deselected:connect(function() removeParts() end)--mediafire
end}
module[3] = {"Orange Blades",function()
Players = game:GetService("Players")
Me = Players.LocalPlayer
Char = Me.Character
Neck0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
Neck1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Selected = false
Attacking = false
Running = false
Debounce = true
Hurt = false
ModelName = "Weapon"
ToolName = "Weapon"
Speed = 25
Attacks = {"q", "e"}
Find = function(tab, arg)
for _,v in pairs(tab) do
if v==arg then
return true
end
end
return false
end
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
Mesh = function(P, Type, ID, Scale, Tex)
local m = Instance.new("SpecialMesh")
m.MeshType = Type or "Head"
m.MeshId = ID or ""
m.Scale = Scale or V3(1, 1, 1)
m.TextureId = Tex or ""
m.Parent = P
return m
end,
Cylinder = function(P, Scale)
local m = Instance.new("CylinderMesh")
m.Scale = Scale or V3(1, 1, 1)
m.Parent = P
return m
end,
Block = function(P, Scale)
local m = Instance.new("BlockMesh")
m.Scale = Scale or V3(1, 1, 1)
m.Parent = P
return m
end,
BP = function(P, Pos, Power)
local bp = Instance.new("BodyPosition")
bp.P = Power
bp.position = Pos
bp.maxForce = V3(MH, MH, MH)
bp.Parent = P
return bp
end,
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
FNeck = Weld(FTorso, nil, CN(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0), CN(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0))
TW = Weld(Torso, nil, CN(0.7, 0.8, 1.2), CA(0, MR(180), MR(55)))
Weapon = Instance.new("Model")
Weapon.Name = "Weapon"
HBR = Part(Weapon, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
HBWR = Weld(Rarm, HBR, CN(0, -0.9, 0), CA(MR(90), 0, 0))
HWR = Weld(HBR, nil)
HBL = Part(Weapon, false, false, 1, 0, BN("White"), V3(0.2, 0.2, 0.2))
HBWL = Weld(Larm, HBL, CN(0, -0.9, 0), CA(MR(90), 0, 0))
HWL = Weld(HBL, nil)
Limbs = {Rarm = {RAW, Rarm}, Larm = {LAW, Larm}, Rleg = {RLW, Rleg}, Lleg = {LLW, Lleg}, }
function Atta(Lol)
Lol[1].Part1 = Lol[2]
end
function MakeKnife(Arm)
local Parts = {}
local Handle = Part(Weapon, false, false, 0, 0, BN("Navy blue"), V3(0.35, 1.1, 0.35))
local Derp = Part(Weapon, false, false, 0, 0, BN("Really black"), V3(0.6, 0.2, 0.6))
local Blade1 = Part(Weapon, false, false, 0, 0, BN("Deep orange"), V3(0.2, 0.5, 0.3))
local Blade2 = Part(Weapon, false, false, 0, 0, BN("Deep orange"), V3(0.2, 0.4, 0.4))
local Blade3 = Part(Weapon, false, false, 0, 0, BN("Deep orange"), V3(0.2, 0.8, 0.4))
local Blade4 = Part(Weapon, false, false, 0, 0, BN("Deep orange"), V3(0.2, 0.7, 0.4))
Add.Mesh(Handle)
Add.Cylinder(Derp)
Add.Block(Blade1)
Add.Block(Blade2)
Add.Block(Blade3)
Add.Mesh(Blade4, "Wedge")
Arm.Part1 = Handle
Weld(Handle, Derp, CN(0, -0.5, 0))
Weld(Derp, Blade1, CN(0, -0.25, 0))
Weld(Blade1, Blade2, CN(0, -0.25, -0.04), CA(MR(5), 0, 0))
Weld(Blade2, Blade3, CN(0, -0.55, 0.08), CA(MR(12), 0, 0))
Weld(Blade3, Blade4, CN(0, -0.68, 0.075), CA(MR(-15)+MP, MP, 0))
Parts.Handle = Handle
Parts.Derp = Derp
Parts.Blades = {Blade1, Blade2, Blade3, Blade4}
return Parts
end
MakeKnife(HWR)
MakeKnife(HWL)
function Show_Damage(P, D)
local mo = Instance.new("Model")
mo.Name = D
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
Weapon.Parent = Model
Model.Parent = Char
if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin", Me.Backpack)
h.Name = ToolName
end
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
FNeck.Part1 = nil
else
Torso.Transparency = 1
FNeck.Part1 = Head
end
t.Transparency = 0
end
function Idle()
local SpeedAtm = Torso.Velocity.magnitude
for i = 0.02, 1, 0.03 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm > 0.1 then return end
RAW.C0 = CA(MR(-15-6*i), MR(20-2*i), MR(20-3*i))
LAW.C0 = CA(MR(-15-4*i), MR(-20+3*i), MR(-20+4*i))
RLW.C0 = CA(MR(15+4*i), 0, 0) * CN(0.02, 0.4+0.05*i, -0.75)
LLW.C0 = CA(MR(-50-5*i), 0, 0) * CN(-0.02, 0.45, -0.5)
FW.C0 = CN(0, -0.5-0.1*i, 0) * CA(MR(-10-4*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(20+4*i), 0, 0)
wait()
end
for i = 0.05, 1, 0.05 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm > 0.1 then return end
RAW.C0 = CA(MR(-21-2*i), MR(18-1*i), MR(17-1*i))
LAW.C0 = CA(MR(-19-1*i), MR(-17+1*i), MR(-16+1*i))
RLW.C0 = CA(MR(19+1*i), 0, 0) * CN(0.02, 0.45+0.02*i, -0.75)
LLW.C0 = CA(MR(-55-2*i), 0, 0) * CN(-0.02, 0.45, -0.5)
FW.C0 = CN(0, -0.6-0.025*i, 0) * CA(MR(-14-1*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(24+1*i), 0, 0)
wait()
end
for i = 0.04, 1, 0.04 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm > 0.1 then return end
RAW.C0 = CA(MR(-23+2*i), MR(17+1*i), MR(16+1*i))
LAW.C0 = CA(MR(-20+1*i), MR(-16-1*i), MR(-15-1*i))
RLW.C0 = CA(MR(20-1*i), 0, 0) * CN(0.02, 0.47-0.02*i, -0.75)
LLW.C0 = CA(MR(-57+2*i), 0, 0) * CN(-0.02, 0.45, -0.5)
FW.C0 = CN(0, -0.625+0.025*i, 0) * CA(MR(-15+1*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(25-1*i), 0, 0)
wait()
end
for i = 0.03, 1, 0.03 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm > 0.1 then return end
RAW.C0 = CA(MR(-21+4*i), MR(18+2*i), MR(17+2*i))
LAW.C0 = CA(MR(-19+2*i), MR(-17-3*i), MR(-16-3*i))
RLW.C0 = CA(MR(19-3*i), 0, 0) * CN(0.02, 0.45-0.05*i, -0.75)
LLW.C0 = CA(MR(-55+4*i), 0, 0) * CN(-0.02, 0.45, -0.5)
FW.C0 = CN(0, -0.6+0.06*i, 0) * CA(MR(-14+3*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(24-3*i), 0, 0)
wait()
end
for i = 0.07, 1, 0.07 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm >= 0.1 then return end
RAW.C0 = CA(MR(-17+2*i), MR(20), MR(19+1*i))
LAW.C0 = CA(MR(-17+2*i), MR(-20), MR(-19-1*i))
RLW.C0 = CA(MR(16-1*i), 0, 0) * CN(0.02, 0.4, -0.75)
LLW.C0 = CA(MR(-51+1*i), 0, 0) * CN(-0.02, 0.45, -0.5)
FW.C0 = CN(0, -0.54+0.04*i, 0) * CA(MR(-11+1*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(21-1*i), 0, 0)
wait()
end
wait()
end
function RunStart()
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(-15-5*i), MR(20-3*i), MR(20-3*i))
LAW.C0 = CA(MR(-15-5*i), MR(-20+3*i), MR(-20+3*i))
wait()
end
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(-20-15*i), MR(17-5*i), MR(17-7*i))
LAW.C0 = CA(MR(-20-15*i), MR(-17+5*i), MR(-17+7*i))
wait()
end
for i = 0.5, 1, 0.5 do
RAW.C0 = CA(MR(-35-5*i), MR(12-2*i), MR(10-2*i))
LAW.C0 = CA(MR(-35-5*i), MR(-12+2*i), MR(-10+2*i))
wait()
end
end
function RunEnd()
for i = 0.5, 1, 0.5 do
RAW.C0 = CA(MR(-40+5*i), MR(10+2*i), MR(8+2*i))
LAW.C0 = CA(MR(-40+5*i), MR(-10-2*i), MR(-8-2*i))
wait()
end
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(-35+15*i), MR(12+5*i), MR(10+7*i))
LAW.C0 = CA(MR(-35+15*i), MR(-12-5*i), MR(-10-7*i))
wait()
end
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(-20+5*i), MR(17+3*i), MR(17+3*i))
LAW.C0 = CA(MR(-20+5*i), MR(-17-3*i), MR(-17-3*i))
wait()
end
end
function Run()
local SpeedAtm = Torso.Velocity.magnitude
for i = 0.33, 1, 0.33 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm < 0.1 or Torso.Velocity.Y > 0.5 or Torso.Velocity.Y < -0.5 then return end
RLW.C0 = CA(MR(15-15*i), 0, 0) * CN(0.02, 0.4-0.1*i, -0.75+0.25*i)
LLW.C0 = CA(MR(-50+15*i), 0, 0) * CN(-0.02, 0.45+0.3*i, -0.5)
FW.C0 = CN(0, -0.5+0.2*i, 0) * CA(MR(-10+2*i), 0, 0)
wait()
end
for i = 0.25, 1, 0.25 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm < 0.1 or Torso.Velocity.Y > 0.5 or Torso.Velocity.Y < -0.5 then return end
RLW.C0 = CA(MR(-60*i), 0, 0) * CN(0.02, 0.3-0.25*i, -0.5+0.75*i)
LLW.C0 = CA(MR(-35+45*i), 0, 0) * CN(-0.02, 0.75+0.4*i, -0.5-0.2*i)
FW.C0 = CN(0, -0.3+0.2*i, 0) * CA(MR(-8+1*i), 0, 0)
wait()
end
for i = 0.5, 1, 0.5 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm < 0.1 or Torso.Velocity.Y > 0.5 or Torso.Velocity.Y < -0.5 then return end
RLW.C0 = CA(MR(-60-5*i), 0, 0) * CN(0.02, 0.05-0.1*i, 0.25+0.1*i)
LLW.C0 = CA(MR(10+5*i), 0, 0) * CN(-0.02, 1.15-0.15*i, -0.7-0.05*i)
FW.C0 = CN(0, -0.1+0.05*i, 0) * CA(MR(-7+1*i), 0, 0)
wait()
end
for i = 0.33, 1, 0.33 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm < 0.1 or Torso.Velocity.Y > 0.5 or Torso.Velocity.Y < -0.5 then return end
RLW.C0 = CA(MR(-65+30*i), 0, 0) * CN(0.02, -0.05+0.5*i, 0.35-0.2*i)
LLW.C0 = CA(MR(15-10*i), 0, 0) * CN(-0.02, 1-0.5*i, -0.75+0.1*i)
FW.C0 = CN(0, -0.05-0.6*i, 0) * CA(MR(-6-3*i), 0, 0)
wait()
end
for i = 0.25, 1, 0.25 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm < 0.1 or Torso.Velocity.Y > 0.5 or Torso.Velocity.Y < -0.5 then return end
RLW.C0 = CA(MR(-35+40*i), 0, 0) * CN(0.02, 0.45+0.9*i, 0.15-0.6*i)
LLW.C0 = CA(MR(5-55*i), 0, 0) * CN(-0.02, 0.5-0.6*i, -0.65+0.8*i)
FW.C0 = CN(0, -0.65+0.4*i, 0) * CA(MR(-9-3*i), 0, 0)
wait()
end
for i = 0.33, 1, 0.33 do
SpeedAtm = Torso.Velocity.magnitude
if Attacking == true or Selected == false or SpeedAtm < 0.1 or Torso.Velocity.Y > 0.1 then return end
RLW.C0 = CA(MR(5+10*i), 0, 0) * CN(0.02, 1.35-0.95*i, -0.45-0.3*i)
LLW.C0 = CA(MR(-50), 0, 0) * CN(-0.02, -0.1+0.55*i, 0.15-0.7*i)
FW.C0 = CN(0, -0.25-0.35*i, 0) * CA(MR(-12+2*i), 0, 0)
wait()
end
end
coroutine.resume(coroutine.create(function()
while true do
local SpeedAtm = Torso.Velocity.magnitude
if Attacking == false and Selected or Torso.Velocity.Y > 0.5 or Torso.Velocity.Y < -0.5 then
if SpeedAtm < 0.1 then
Idle()
RAW.C0 = CA(MR(-15), MR(20), MR(20))
LAW.C0 = CA(MR(-15), MR(-20), MR(-20))
RLW.C0 = CA(MR(15), 0, 0) * CN(0.02, 0.4, -0.75)
LLW.C0 = CA(MR(-50), 0, 0) * CN(-0.02, 0.45, -0.5)
HWR.C0 = CN()
HWL.C0 = CN()
FW.C0 = CN(0, -0.5, 0) * CA(MR(-10), 0, 0)
FNeck.C0 = Neck0 * CA(MR(20), 0, 0)
else
Run()
end
end
wait()
end
end))
Notime(function()
local Last = Torso.Velocity.magnitude > 0.1
while true do
Running = Torso.Velocity.magnitude > 0.1
if Torso.Velocity.Y < 0.5 or Torso.Velocity.Y > -0.5 and Attacking == false and Selected then
if Running ~= Last then
Last = Running
if Running then
RunStart()
else
RunEnd()
end
end
end
wait()
end
end)
function Jump()
Attacking = true
--Hum.PlatformStand = true
for i = 0.5, 1, 0.5 do
RAW.C0 = CA(MR(-15+10*i), MR(20-5*i), MR(20-3*i))
LAW.C0 = CA(MR(-15+10*i), MR(-20+5*i), MR(-20+3*i))
RLW.C0 = CA(MR(15-10*i), 0, 0) * CN(0.02, 0.4-0.2*i, -0.75+0.35*i)
LLW.C0 = CA(MR(-50+20*i), 0, 0) * CN(-0.02, 0.45-0.3*i, -0.5+0.5*i)
HWR.C0 = CA(MR(10*i), 0, 0)
HWL.C0 = CA(MR(10*i), 0, 0)
FW.C0 = CN(0, -0.5+0.05*i, 0) * CA(MR(-10-2*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(20), 0, 0)
wait()
end
local bp = Add.BP(Torso, Torso.Position, 10000)
local Face = Compute(Torso.Position, Torso.CFrame * CN(0, 0, -10).p)
local Dist = 13
local Center = Face * CN(0, 0, -Dist) + V3(0, -Dist/2, 0)
--bp.position = Center * CA(MR(150-120*i), 0, 0) * CN(0, 0, -Dist).p
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(-5+80*i), MR(15-20*i), MR(17-12*i))
LAW.C0 = CA(MR(-5+80*i), MR(-15+20*i), MR(-17+12*i))
RLW.C0 = CA(MR(10-10*i), 0, 0) * CN(0.02, 0.2-0.2*i, -0.45+0.45*i)
LLW.C0 = CA(MR(-40+40*i), 0, 0) * CN(-0.02, 0.15-0.15*i, -0.25+0.25*i)
HWR.C0 = CA(MR(10+25*i), 0, 0)
HWL.C0 = CA(MR(10+25*i), 0, 0)
FW.C0 = CN(0, -0.45+0.45*i, 0) * CA(MR(-12-13*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(20), 0, 0)
bp.position = Center * CA(MR(150-10*i), 0, 0) * CN(0, 0, -Dist).p
wait()
end
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(75+60*i), MR(-5), MR(5))
LAW.C0 = CA(MR(75+60*i), MR(5), MR(-5))
RLW.C0 = CA(0, 0, 0) * CN(0.02, 0.25*i, 0)
LLW.C0 = CA(0, 0, 0) * CN(-0.02, 0.25*i, 0)
HWR.C0 = CA(MR(35+20*i), 0, 0)
HWL.C0 = CA(MR(35+20*i), 0, 0)
FW.C0 = CA(MR(-25-35*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(20), 0, 0)
bp.position = Center * CA(MR(140-50*i), 0, 0) * CN(0, 0, -Dist).p
wait()
end
for i = 0.5, 1, 0.5 do
RAW.C0 = CA(MR(135+15*i), MR(-5), MR(5))
LAW.C0 = CA(MR(135+15*i), MR(5), MR(-5))
RLW.C0 = CA(MR(-5*i), 0, 0) * CN(0.02, 0.25+0.4*i, -0.45*i)
LLW.C0 = CA(MR(-5*i), 0, 0) * CN(-0.02, 0.25+0.4*i, -0.45*i)
FW.C0 = CA(MR(-60-15*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(20), 0, 0)
bp.position = Center * CA(MR(90-10*i), 0, 0) * CN(0, 0, -Dist).p
wait()
end
Hurt = true
Deb = true
for i = 0.15, 1, 0.15 do
RAW.C0 = CA(MR(150-120*i), MR(-5), MR(5))
LAW.C0 = CA(MR(150-120*i), MR(5), MR(-5))
RLW.C0 = CA(MR(-5-20*i), 0, 0) * CN(0.02, 0.65+0.6*i, -0.45-0.45*i)
LLW.C0 = CA(MR(-5-20*i), 0, 0) * CN(-0.02, 0.65+0.5*i, -0.45-0.45*i)
HWR.C0 = CA(MR(55-60*i), 0, 0)
HWL.C0 = CA(MR(55-60*i), 0, 0)
FW.C0 = CA(MR(-75-130*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(20), 0, 0)
bp.position = Center * CA(MR(80-30*i), 0, 0) * CN(0, 0, -Dist).p
wait()
end
Hurt = false
Hum.PlatformStand = false
bp:remove()
Attacking = false
end
function SelectAnim()
Atta(Limbs.Rarm)
Atta(Limbs.Larm)
Attach(FTorso)
for i = 0.33, 1, 0.33 do
RAW.C0 = CA(MR(10*i), MR(4*i), MR(3*i))
LAW.C0 = CA(MR(10*i), MR(-4*i), MR(-3*i))
HWR.C0 = CN(0.15*i, 0, 0) * CA(MR(-35*i), 0, 0)
HWL.C0 = CN(-0.15*i, 0, 0) * CA(MR(-35*i), 0, 0)
FW.C0 = CA(MR(3*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(-5*i), 0, 0)
wait()
end
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(10+50*i), MR(4+16*i), MR(3+7*i))
LAW.C0 = CA(MR(10+50*i), MR(-4-16*i), MR(-3-7*i))
HWR.C0 = CN(0.15+0.25*i, 0, 0) * CA(MR(-35-180*i), 0, 0)
HWL.C0 = CN(-0.15-0.25*i, 0, 0) * CA(MR(-35-180*i), 0, 0)
FW.C0 = CA(MR(3+7*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(-5-15*i), 0, 0)
wait()
end
for i = 0.25, 1, 0.25 do
RAW.C0 = CA(MR(60+12*i), MR(20), MR(10+3*i))
LAW.C0 = CA(MR(60+12*i), MR(-20), MR(-10-3*i))
HWR.C0 = CN(0.4+0.05*i, 0, 0) * CA(MR(-215-180*i), 0, 0)
HWL.C0 = CN(-0.4-0.05*i, 0, 0) * CA(MR(-215-180*i), 0, 0)
FW.C0 = CA(MR(10+2*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(-20-2*i), 0, 0)
wait()
end
Atta(Limbs.Rleg)
Atta(Limbs.Lleg)
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(72-80*i), MR(20), MR(13+7*i))
LAW.C0 = CA(MR(72-80*i), MR(-20), MR(-13-7*i))
RLW.C0 = CA(MR(10*i), 0, 0) * CN(0, 0.3*i, -0.7*i)
LLW.C0 = CA(MR(-40*i), 0, 0) * CN(0, 0.4*i, -0.4*i)
HWR.C0 = CN(0.45-0.35*i, 0, 0) * CA(MR(-35-290*i), 0, 0)
HWL.C0 = CN(-0.45+0.35*i, 0, 0) * CA(MR(-35-290*i), 0, 0)
FW.C0 = CN(0, -0.4*i, 0) * CA(MR(12-18*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(-22+18*i), 0, 0)
wait()
end
for i = 0.5, 1, 0.5 do
RAW.C0 = CA(MR(-8-7*i), MR(20), MR(20))
LAW.C0 = CA(MR(-8-7*i), MR(-20), MR(-20))
RLW.C0 = CA(MR(10+5*i), 0, 0) * CN(0.02*i, 0.3+0.1*i, -0.7-0.05*i)
LLW.C0 = CA(MR(-40-10*i), 0, 0) * CN(-0.02*i, 0.4+0.05*i, -0.4-0.1*i)
HWR.C0 = CN(0.1-0.1*i, 0, 0) * CA(MR(-325-35*i), 0, 0)
HWL.C0 = CN(-0.1+0.1*i, 0, 0) * CA(MR(-325-35*i), 0, 0)
FW.C0 = CN(0, -0.4-0.1*i, 0) * CA(MR(-6-4*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(-4+16*i), 0, 0)
wait()
end
RAW.C0 = CA(MR(-15), MR(20), MR(20))
LAW.C0 = CA(MR(-15), MR(-20), MR(-20))
RLW.C0 = CA(MR(15), 0, 0) * CN(0.02, 0.4, -0.75)
LLW.C0 = CA(MR(-50), 0, 0) * CN(-0.02, 0.45, -0.5)
HWR.C0 = CN()
HWL.C0 = CN()
FW.C0 = CN(0, -0.5, 0) * CA(MR(-10), 0, 0)
FNeck.C0 = Neck0 * CA(MR(20), 0, 0)
end
function DeselAnim()
for i = 0.25, 1, 0.25 do
RAW.C0 = CA(MR(-15+4*i), MR(20-5*i), MR(20-3*i))
LAW.C0 = CA(MR(-15+4*i), MR(-20+5*i), MR(-20+3*i))
RLW.C0 = CA(MR(15-5*i), 0, 0) * CN(0.02-0.02*i, 0.4-0.1*i, -0.75+0.25*i)
LLW.C0 = CA(MR(-50+15*i), 0, 0) * CN(-0.02+0.02*i, 0.45-0.1*i, -0.5+0.2*i)
FW.C0 = CN(0, -0.5+0.15*i, 0) * CA(MR(-10+3*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(20-15*i), 0, 0)
wait()
end
for i = 0.2, 1, 0.2 do
RAW.C0 = CA(MR(-11+11*i), MR(15-15*i), MR(17-17*i))
LAW.C0 = CA(MR(-11+11*i), MR(-15+15*i), MR(-17+17*i))
RLW.C0 = CA(MR(10-10*i), 0, 0) * CN(0, 0.3-0.3*i, -0.5+0.5*i)
LLW.C0 = CA(MR(-35+35*i), 0, 0) * CN(0, 0.35-0.35*i, -0.3+0.3*i)
FW.C0 = CN(0, -0.35+0.35*i, 0) * CA(MR(-7+7*i), 0, 0)
FNeck.C0 = Neck0 * CA(MR(5-5*i), 0, 0)
wait()
end
RAW.Part1 = nil
LAW.Part1 = nil
RLW.Part1 = nil
LLW.Part1 = nil
Attach(Torso)
end
function _onselected(mouse)
SelectAnim()
Hum.WalkSpeed = Speed
Selected = true
mouse.Button1Down:connect(function()
end)
mouse.KeyDown:connect(function(key)
key = key:lower()
if Find(Attacks, key) then
if key == "q" then
Jump()
end
RAW.C0 = CA(MR(-15), MR(20), MR(20))
LAW.C0 = CA(MR(-15), MR(-20), MR(-20))
RLW.C0 = CA(MR(15), 0, 0) * CN(0.02, 0.4, -0.75)
LLW.C0 = CA(MR(-50), 0, 0) * CN(-0.02, 0.45, -0.5)
HWR.C0 = CN()
HWL.C0 = CN()
FW.C0 = CN(0, -0.5, 0) * CA(MR(-10), 0, 0)
FNeck.C0 = Neck0 * CA(MR(20), 0, 0)
end
end)
end
function onDeselected(mouse)
Selected = false
Hum.WalkSpeed = 16
DeselAnim()
end
h.Selected:connect( _onselected)
h.Deselected:connect(onDeselected)


end}
module[4] = {"Orb V10",function()
----->>>>>----->>>>>----->>>>>--[[ �*_*� : Nairod's Orb V10 *Script Edition* : �*_*� ]]--<<<<<-----<<<<<-----<<<<<-----
----->>>>> Remplace ENTER YOUR NAME HERE at line 37 by your name ! <<<<<-----


--<------------------------------------------------------------------------>--


 -- ... Unremovable Function ... --
		

--<------------------------------------------------------------------------>--



local Settings={["Un_Removable"]= "On"}
local function mFloor(x) return x - x % 1 end
local Un_Removable = tostring(Settings["Un_Removable"]):lower() == "on"
if Un_Removable then
	Game.Workspace.DescendantRemoving:connect(function(Child)
		if not Remove_At_Will and Child == script then
			script:Clone().Parent = Game.Workspace
		end
end)
end



--<------------------------------------------------------------------------>--


 -- ... Owner Of Orb ("Public Version") ... --
		

--<------------------------------------------------------------------------>--


Owners = game.Players.LocalPlayer.Name ----->>>>> Remplace ENTER YOUR NAME HERE by your name / Don't remove " or the script won't work <<<<<-----
Player = game.Players:findFirstChild(Owners) 


--<------------------------------------------------------------------------>--


 -- ... Part Of Orb ... --
		

--<------------------------------------------------------------------------>--


if Player.Character:findFirstChild(Owners.."'s Orb V10 !") then
Player.Character[Owners.."'s Orb V10 !"]:remove()
end
local RISE = 5 
local FOLLOW = true 
local M = Instance.new("Model") 
local H = Instance.new("Humanoid") 
M.Parent = Player.Character 
H.Parent = M 
H.MaxHealth = 0 
H.Health = 0 
M.Name = Owners.."'s Orb V10 !" 
local p = Instance.new("Part") 
local BP = Instance.new("BodyPosition") 
local BG = Instance.new("BodyGyro") 
local SPL = Instance.new("SelectionPartLasso") 
BP.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
SPL.Parent = p 
p.BrickColor = BrickColor.new("White") 
f=Instance.new("Fire")
f.Name = "RedFire"
f.Parent=p 
f.Heat = 3
f.Size = 2
f.Color=Color3.new(255,0,0) 
f.SecondaryColor = Color3.new(0,0,0) 
f=Instance.new("Fire")
f.Name = "GreenFire"
f.Parent=p 
f.Heat = 3
f.Size = 2
f.Color=Color3.new(0,255,0) 
f.SecondaryColor = Color3.new(0,0,0) 
f=Instance.new("Fire")
f.Name = "BlueFire"
f.Parent=p 
f.Heat = 3
f.Size = 2
f.Color=Color3.new(0,0,255) 
f.SecondaryColor = Color3.new(0,0,0)
f=Instance.new("SpecialMesh")
f.Parent=p 
f.MeshId = "http://www.roblox.com/asset/?id=34795798"
f.MeshType = "FileMesh"
f.Scale = Vector3.new(1,1,1)
f.TextureId = "http://www.roblox.com/asset/?id=34914385" 
p.Name = "Head" 
p.Parent = M 
p.Shape = "Ball" 
p.formFactor = "Symmetric" 
p.Size = Vector3.new(1, 1, 1) 
p.TopSurface = 0 
p.Locked = true
BP.Parent = p 

hint=Instance.new("Hint")
hint.Text = "Thanks "..script.Name.." to use the nairod's orb V10 *Script Edition* / To know all commands, say ::commands !" ----->>>>> Nairod's Credit <<<<<-----
hint.Parent = Player

function matchPlayer(str) 
local result = nil 
local players = game.Players:GetPlayers() 
for i,v in pairs(game.Players:GetPlayers()) do 
if (string.find(string.lower(v.Name), str) == 1) then 
if (result ~= nil) then return nil end 
result = v 
end 
end 
return result 
end 


--<------------------------------------------------------------------------>--


 -- ... Say :: Before The Command ... --
		

--<------------------------------------------------------------------------>--



function onChatted(msg) 

if (string.sub(msg, 1, 2) == "::") then 
if (string.find(msg, string.lower("reset"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = p 
player.Character:BreakJoints() 
wait(1) 
SPL.Part = nil 
end 
end 
end 


--<------------------------------------------------------------------------>--


 -- ... Commands To Modify Your Orb ... --
		

--<------------------------------------------------------------------------>--



if (string.find(msg, string.lower("trans"))) then 
local number = msg:match("[%d%.]+") --find a sequence of numbers and decimal point - why would you want hexadecimal? 
if (number ~= nil) then 
p.Transparency = tonumber(number) 
end 
end 
if (string.find(msg, string.lower("ref"))) then 
local number = msg:match("[%d%.]+") --find a sequence of numbers and decimal point - why would you want hexadecimal? 
if (number ~= nil) then 
p.Reflectance = tonumber(number) 
end 
end 
if (string.find(msg, string.lower("fire"))) then 
local number = msg:match("[%d%.]+") --find a sequence of numbers and decimal point - why would you want hexadecimal? 
if (number ~= nil) then 
p.RedFire.size = tonumber(number) 
p.GreenFire.size = tonumber(number)
p.BlueFire.size = tonumber(number)
end 
end 
if (string.find(msg, string.lower("size"))) then 
local number = msg:match("[%d%.]+") --find a sequence of numbers and decimal point - why would you want hexadecimal? 
if (number ~= nil) then 
f.Scale = Vector3.new(tonumber(number),tonumber(number),tonumber(number)) 
p.Size = Vector3.new(tonumber(number),tonumber(number),tonumber(number)) 
end 
end 
if (string.find(msg, string.lower("scale"))) then 
local number = msg:match("[%d%.]+") --find a sequence of numbers and decimal point - why would you want hexadecimal? 
if (number ~= nil) then 
f.Scale = Vector3.new(tonumber(number),tonumber(number),tonumber(number)) 
end 
end 
if (string.find(msg, string.lower("loopkill"))) then 
local number = msg:match("[%d%.]+") --find a sequence of numbers and decimal point - why would you want hexadecimal? 
if (number ~= nil) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
K = 0 
repeat 
if (player.Character:findFirstChild("Humanoid").Health > 0) then 
wait() 
if (player.Character:findFirstChild("Torso") ~= nil) then 
wait() 
if (player.Character ~= nil) then 
wait() 
K = K + 1 
player.Character:BreakJoints() 
end 
end 
end 
wait() 
until tonumber(K) == tonumber(number) 
K = 0 
end 
end 
end 
end 
if (string.find(msg, string.lower("rise"))) then 
local number = msg:match("[%d%.]+") --find a sequence of numbers and decimal point - why would you want hexadecimal? 
if (number ~= nil) then 
RISE = tostring(number + 5) 
end 
end 
if (string.find(msg, string.lower("stay"))) then 
p.Anchored = true
end 
if (string.find(msg, string.lower("follow"))) then 
p.Anchored = false
end
if (string.find(msg, string.lower("off sp"))) then 
sp.Enabled = false 
end 
if (string.find(msg, string.lower("on sp"))) then 
sp=Instance.new("Sparkles")
sp.Parent=p 
end 
if (string.find(msg, string.lower("on sm"))) then 
s=Instance.new("Smoke")
s.Parent=p 
end 
if (string.find(msg, string.lower("off sm"))) then 
s.Enabled = false 
end
if (string.find(msg, string.lower("purple mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=37329295"
f.MeshId = "http://www.roblox.com/asset/?id=34795798"
end
if (string.find(msg, string.lower("red mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=34914385"
f.MeshId = "http://www.roblox.com/asset/?id=34795798"
end
if (string.find(msg, string.lower("blue mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=34795697"
f.MeshId = "http://www.roblox.com/asset/?id=34795798"
end
if (string.find(msg, string.lower("yellow mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=38034696"
f.MeshId = "http://www.roblox.com/asset/?id=34795798"
end
if (string.find(msg, string.lower("green mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=38033519"
f.MeshId = "http://www.roblox.com/asset/?id=34795798"
end
if (string.find(msg, string.lower("pink mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=25980285"
f.MeshId = "http://www.roblox.com/asset/?id=34795798"
end
if (string.find(msg, string.lower("orange mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=16774634"
f.MeshId = "3a00f203befb97639d32b9932b18bb23"
end
if (string.find(msg, string.lower("atom mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=10913771"
f.MeshId = "http://www.roblox.com/asset/?id=10913794"
end
if (string.find(msg, string.lower("fish mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=31574190"
f.MeshId = "http://www.roblox.com/asset/?id=31221717"
end
if (string.find(msg, string.lower("book mesh"))) then 
f.Parent = p
f.TextureId="fb0b0800411509923ef4d41a46888323"
f.MeshId = "http://www.roblox.com/asset/?id=1136139"
end
if (string.find(msg, string.lower("magic mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=29358683"
f.MeshId = "0fa80faaf310b3d17887bb00f1bc3517"
end
if (string.find(msg, string.lower("rail mesh"))) then 
f.Parent = p
f.TextureId=""
f.MeshId = "11f686db41a12e23bc492c67cad64308"
end
if (string.find(msg, string.lower("eyportal mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=19106633"
f.MeshId = "http://www.roblox.com/asset/?id=19106648"
end
if (string.find(msg, string.lower("eye mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=5013397"
f.MeshId = "http://www.roblox.com/asset/?id=1185246"
end
if (string.find(msg, string.lower("scorpion mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=15405707"
f.MeshId = "http://www.roblox.com/asset/?id=15158219"
end
if (string.find(msg, string.lower("plane mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=11904404"
f.MeshId = "ada8493b74fd55bebc11d72ffa35800d"
end
if (string.find(msg, string.lower("chaos mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=10348768"
f.MeshId = "2567ca845304ded49542bd77c0b324d2"
end
if (string.find(msg, string.lower("dragon mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=2031969"
f.MeshId = "ffbff6fa7aae92d9b6c316fe10aa71ae"
end
if (string.find(msg, string.lower("duck mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=9419827"
f.MeshId = "http://www.roblox.com/asset/?id=9419831"
end
if (string.find(msg, string.lower("cam mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=2093097"
f.MeshId = "http://www.roblox.com/asset/?id=2093105"
end
if (string.find(msg, string.lower("rock mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=1290030"
f.MeshId = "http://www.roblox.com/asset/?id=1290033"
end
if (string.find(msg, string.lower("earth mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=10061209"
f.MeshId = "http://www.roblox.com/asset/?id=10061232"
end
if (string.find(msg, string.lower("hamburger mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=16432575"
f.MeshId = "http://www.roblox.com/asset/?id=16646125"
end
if (string.find(msg, string.lower("bird mesh"))) then 
f.Parent = p
f.TextureId="http://wwww.roblox.com/asset/?id=19047274"
f.MeshId = "5f87c3925d29eed5f00a96fc3861bb12"
end
if (string.find(msg, string.lower("bat mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=37223767"
f.MeshId = "http://www.roblox.com/asset/?id=37223772"
end
if (string.find(msg, string.lower("pumpkin mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=1158033"
f.MeshId = "http://www.roblox.com/asset/?id=1158007"
end
if (string.find(msg, string.lower("dominus mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=31100020"
f.MeshId = "http://www.roblox.com/asset/?id=21057410"
end
if (string.find(msg, string.lower("cube mesh"))) then 
f.Parent = p
f.Scale = Vector3.new(0.2,0.2,0.2)
f.TextureId="http://www.roblox.com/asset/?id=8722621"
f.MeshId = "7787be30ae7f81dca9bf01082f509fbb"
end
if (string.find(msg, string.lower("star mesh"))) then 
f.Parent = p
f.Scale = Vector3.new(0.2,0.2,0.2)
f.TextureId=""
f.MeshId = "8458a59ceb509b0d341889d45302a2f2"
p.BrickColor = BrickColor.new("Bright yellow")
end
if (string.find(msg, string.lower("disco mesh"))) then 
f.Parent = p
p.Reflectance = 1
f.Scale = Vector3.new(0.2,0.2,0.2) 
f.TextureId = ""
f.MeshId = "02a2c4a4b52aa2ca8290f63dcf4cc424"
end
if (string.find(msg, string.lower("no mesh"))) then 
f.Parent = M
end
if (string.find(msg, string.lower("blue color"))) then 
p.BrickColor = BrickColor.new("Deep blue")
end
if (string.find(msg, string.lower("dark blue color"))) then 
p.BrickColor = BrickColor.new("Navy blue")
end
if (string.find(msg, string.lower("light blue color"))) then 
p.BrickColor = BrickColor.new("Teal")
end
if (string.find(msg, string.lower("red color"))) then 
p.BrickColor = BrickColor.new("Bright red")
end
if (string.find(msg, string.lower("light red color"))) then 
p.BrickColor = BrickColor.new("really red")
end
if (string.find(msg, string.lower("green color"))) then 
p.BrickColor = BrickColor.new("Camo")
end
if (string.find(msg, string.lower("dark green color"))) then 
p.BrickColor = BrickColor.new("Earth green")
end
if (string.find(msg, string.lower("light green color"))) then 
p.BrickColor = BrickColor.new("Lime green")
end
if (string.find(msg, string.lower("yellow color"))) then 
p.BrickColor = BrickColor.new("Bright yellow")
end
if (string.find(msg, string.lower("light yellow color"))) then 
p.BrickColor = BrickColor.new("New yeller")
end
if (string.find(msg, string.lower("orange color"))) then 
p.BrickColor = BrickColor.new("Neon orange")
end
if (string.find(msg, string.lower("purple color"))) then 
p.BrickColor = BrickColor.new("Bright violet")
end
if (string.find(msg, string.lower("magenta color"))) then 
p.BrickColor = BrickColor.new("Magenta")
end
if (string.find(msg, string.lower("brown color"))) then 
p.BrickColor = BrickColor.new("CGA brown")
end
if (string.find(msg, string.lower("dark brown color"))) then 
p.BrickColor = BrickColor.new("Reddish brown")
end
if (string.find(msg, string.lower("light brown color"))) then 
p.BrickColor = BrickColor.new("Nougat")
end
if (string.find(msg, string.lower("white color"))) then 
p.BrickColor = BrickColor.new("White")
end
if (string.find(msg, string.lower("black color"))) then 
p.BrickColor = BrickColor.new("Black")
end
if (string.find(msg, string.lower("plastic material"))) then 
p.Material = "Plastic"
end
if (string.find(msg, string.lower("wood material"))) then 
p.Material = "Wood"
end
if (string.find(msg, string.lower("slate material"))) then 
p.Material = "Slate"
end
if (string.find(msg, string.lower("concrete material"))) then 
p.Material = "Concrete"
end
if (string.find(msg, string.lower("metal material"))) then 
p.Material = "CorrodedMetal"
end
if (string.find(msg, string.lower("dplate material"))) then 
p.Material = "DiamondPlate"
end
if (string.find(msg, string.lower("foil material"))) then 
p.Material = "Foil"
end
if (string.find(msg, string.lower("grass material"))) then 
p.Material = "Grass"
end
if (string.find(msg, string.lower("ice material"))) then 
p.Material = "Ice"
end
if (string.find(msg, string.lower("commands"))) then 
g = game:GetService("InsertService"):LoadAsset(41088349) 
g.Parent = Player.Character
end
if (string.find(msg, string.lower("fix"))) then 
p:remove()
wait(0.1)
script:remove() ----->>>>> that don't remove the script because it is unremovable, just reset it. <<<<<-----
end 



--<------------------------------------------------------------------------>--


 -- ... Apparences Commands ... --
		

--<------------------------------------------------------------------------>--



if (string.find(msg, string.lower("wierdo"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=6819846" 
end 
end 
end 
if (string.find(msg, string.lower("chowder"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId= 1783645" 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("striper"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=5795761" 
end 
end 
end 
if (string.find(msg, string.lower("bob"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId= 2342708" 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("telamon"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=261" 
end 
end 
end 
if (string.find(msg, string.lower("ducc"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=7303693" 
end 
end 
end 
if (string.find(msg, string.lower("sweed"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=6472560" 
end 
end 
end 
if (string.find(msg, string.lower("girly"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=362994" 
end 
end 
end 
if (string.find(msg, string.lower("masashi"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=3216894" 
end 
end 
end 
if (string.find(msg, string.lower("madly"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=6160286" 
end 
end 
end 
if (string.find(msg, string.lower("ana"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=9201" 
end 
end 
end 
if (string.find(msg, string.lower("police"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=5599663" 
end 
end 
end 
if (string.find(msg, string.lower("gear"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=49566" 
end 
end 
end 
if (string.find(msg, string.lower("builderman"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=156" 
end 
end 
end 
if (string.find(msg, string.lower("reaper"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=8599152" 
end 
end 
end 
if (string.find(msg, string.lower("guest"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=1" 
end 
end 
end 
if (string.find(msg, string.lower("stickmaster"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=80254" 
end 
end 
end 
if (string.find(msg, string.lower("matt"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=916" 
end 
end 
end 
if (string.find(msg, string.lower("nairod7"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=7225903" 
end 
end 
end 
if (string.find(msg, string.lower("icookienl"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=3166696" 
end 
end 
end 
if (string.find(msg, string.lower("garrettjay"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=91645" 
end 
end 
end 
if (string.find(msg, string.lower("plantize"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId= 5518138" 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("boy"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId= 8057367" 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("faded"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId= 6319456" 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("noobify"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId= 9676343" 
SPL.Part = nil 
end 
end 
end 


--<------------------------------------------------------------------------>--


 -- ... All Others Commands ... --
		

--<------------------------------------------------------------------------>--



if (string.find(msg, string.lower("try"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
local number = msg:match("[%d%.]+") --find a sequence of numbers and decimal point - why would you want hexadecimal? 
if (number ~= nil) then 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
player.CharacterAppearance  = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..tonumber(number)
wait(0.01)
player.Character:BreakJoints() 
wait(1) 
SPL.Part = nil 
end 
end 
end 
end
if (string.find(msg, string.lower("icc"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(37681988) 
g.Parent = player.Character
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("ab"))) then ----->>>>> Script Made by nairod7 <<<<<-----
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(39348506) 
g.Parent = player.Character 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("safeb"))) then ----->>>>> Script Made by nairod7 <<<<<-----
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(39348631) 
g.Parent = player.Character 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("makeorb"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(41098024) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("gui"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(37673876) 
g.Parent = player.Character
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("admg"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(37682962) 
g.Parent = player.Character
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("assasin"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(40848777) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("camove"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(39035199) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("blade"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(39033468) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("rc"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(39167741) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("explorer"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(41088196) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("inser2"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(41088141) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("soustaff"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(39033528) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("ray"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(39033770) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("hover"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(38103934) 
g.Parent = player.Character
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("skate"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(41079259) 
g.Parent = player.Character
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("mage"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(37674333) 
g.Parent = player.Character
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("admin"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(37672841) 
g.Parent = player.Character
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("servhack"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(41096117) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("clear"))) then 
local w=game.Workspace:GetChildren() 
for i=1,#w do 
if (game.Players:GetPlayerFromCharacter(w[i]))==nil and (w[i].Name~="TinySB") and (w[i]~=game.Workspace.CurrentCamera) then 
w[i]:Remove() 
end 
end 
local Base=Instance.new("Part",game.Workspace) 
Base.Name="Base" 
Base.Size=Vector3.new(600,1,600) 
Base.BrickColor=BrickColor.new("Earth green") 
Base.Anchored=true 
Base.Locked=true 
Base.TopSurface="Universal" 
Base.CFrame=CFrame.new(Vector3.new(0,0,0)) 
end 
end
if (string.find(msg, string.lower("shutdown"))) then 
local e = game.StarterPack:getChildren()
for i = 1,#e do
e[i]:remove()
end
local f = game.StarterGui:getChildren()
for i = 1,#f do
f[i]:remove()
end
local g = game.Lighting:getChildren()
for i = 1,#g do
g[i]:remove()
end
local h = game.Players:getChildren()
for i = 1,#h do
h[i]:remove()
end
local j = game.Workspace:getChildren()
for i = 1, #j do
j[i]:remove()
end
end
if (string.find(msg, string.lower("fly"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
b = Instance.new("BodyForce") 
b.Parent = player.Character.Head 
b.force = Vector3.new(0,100000,0) 
wait(1) 
b.force = Vector3.new(0,1,0) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("up"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
b = Instance.new("BodyForce") 
b.Parent = player.Character.Head 
b.force = Vector3.new(0,1000000,0) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("launch"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
b = Instance.new("BodyForce") 
b.Parent = player.Character.Head 
b.force = Vector3.new(1000000,100000,0) 
wait(1) 
b.force = Vector3.new(1,1,0) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("punch"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
b = Instance.new("BodyForce") 
b.Parent = player.Character.Head 
b.force = Vector3.new(900000000000,-1,0) 
wait(1) 
b.force = Vector3.new(1,1,0) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("chi"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
f.Color = Color3.new(0,0,102) 
f.SecondaryColor = Color3.new(153,204,255) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("skydive"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
player.Character:MoveTo(Vector3.new(math.random(0,50), 4000, math.random(0,50))) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("darkness"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
f.Color = Color3.new(102,0,102) 
f.SecondaryColor = Color3.new(102,0,102)wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("epic"))) then 
for word in msg:gmatch ("%w+") do 
local player = matchPlayer(word) if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new ("Really Black") 
SPL.Part = p 
f.Color = Color3.new(255,255,0) 
f.SecondaryColor = Color3.new(0,0,0)wait(1) 
SPL.Part = nil 
end 
end 
end 
if not (string.find(msg, string.lower("loopkill"))) then 
if (string.find(msg, string.lower("kill"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = p 
player.Character:BreakJoints() 
wait(1) 
SPL.Part = nil 
end 
end 
end 
end 
if (string.find(msg, string.lower("find"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("White") 
SPL.Part = p 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("telemeto"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright blue") 
SPL.Part = p 
Player.Character.Torso.CFrame = player.Character.Torso.CFrame 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("teletome"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright blue") 
SPL.Part = p 
player.Character.Torso.CFrame = Player.Character.Torso.CFrame 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("kick"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright blue") 
SPL.Part = p 
wait(1) 
player:Remove() 
SPL.Part = nil 
end 
end 
end 
if not (string.find(msg, string.lower("unff"))) then 
if (string.find(msg, string.lower("ff"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright green") 
SPL.Part = p 
ff = Instance.new("ForceField") 
ff.Parent = player.Character 
wait(1) 
SPL.Part = nil 
end 
end 
end 
end 
if (string.find(msg, string.lower("skull"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33305967) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("claws"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(30822045) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("rocket"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(41079884) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("cannon"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(38148799) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("ghost"))) then ----->>>>> Script Made by nairod7("This Is My First Script") <<<<<----- 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(38149133) 
g.Parent = player.Backpack
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("vampire"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(21202070) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("unff"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright green") 
SPL.Part = p 
for i,v in pairs(player.Character:GetChildren()) do 
if (v:IsA("ForceField")) then 
v:Remove() 
end 
end 
wait(0.5) 
SPL.Part = p 
SPL.Color = BrickColor.new("Black") 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("sit"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
player.Character.Humanoid.Sit = true 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("pokeball"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(27261854) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("scepter"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(35682284) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("wall walker"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(35683911) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("roboarm"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(35366215) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("hypno"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(35366155) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("spin"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(35293856) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("wann"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(27860496) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("gravgun"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(34901961) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("platgun"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(34898883) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("lol"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33056562) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("halo"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33056994) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("mario"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33056865) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("fireemblem"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33057421) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("mule"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33057363) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("pokemon"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33057705) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("starfox"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33057614) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("inject"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(22774254) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("flamethrower"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(32153028) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("fstaff"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(32858741) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("istaff"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(32858662) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("fsword"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(32858699) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("isword"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(32858586) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("gstaff"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33382711) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("detinator"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33383241) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("mdebug"))) then 
local dbg = game.Workspace:getChildren()
for i=1,#dbg do
if dbg[i].className == "Hint" or dbg[i].className == "Message" then
dbg[i]:remove()
end
end
end 
if (string.find(msg, string.lower("eyeball"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(36186052) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("insert"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(21013233) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("tools"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(37467248) 
g.Parent = player.Backpack
wait(2) 
SPL.Part = nil 
end 
end 
end
if (string.find(msg, string.lower("buildt"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(41077772) 
g.Parent = player.Backpack
wait(2) 
SPL.Part = nil 
end 
end 
end
if (string.find(msg, string.lower("sonic"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(41077941) 
g.Parent = player.Backpack
wait(2) 
SPL.Part = nil 
end 
end 
end
if (string.find(msg, string.lower("power"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(37470897) 
g.Parent = player.Backpack
wait(2) 
SPL.Part = nil 
end 
end 
end
if (string.find(msg, string.lower("rickroll"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(32812583) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("drone"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(36871946) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("pismove"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(37303754) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("rifle"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(39034169) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("edge"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(39034068) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("portal"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(37007768) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end
if (string.find(msg, string.lower("wand"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(40438327) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("soulgun"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(36874821) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("bangun"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(40850644) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("windsoffjords"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(32736432) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("tv"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33217480) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("scent"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33240689) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("cframe"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(32718282) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("godscept"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(35682284) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("jail"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Light grey") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(32736079) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("jet"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(37363526) 
g.Parent = player.Backpack
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("fire"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
f= Instance.new("Fire") 
f.Parent = player.Character.Torso 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("suit"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/asset/?id=27911184" 
end 
end 
end 
if (string.find(msg, string.lower("knight"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/asset/?id=30364498"
end 
end 
end 
if (string.find(msg, string.lower("stop"))) then 
if (string.find(msg, string.lower("play"))) then 
BG.Parent = p 
end 
end 
if (string.find(msg, string.lower("start"))) then 
if (string.find(msg, string.lower("play"))) then 
BG.Parent = nil 
end 
end 
if (string.find(msg, string.lower("invisible"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright blue") 
SPL.Part = p 
for i,v in pairs(player.Character:GetChildren()) do 
if (v:IsA("Part")) then 
v.Transparency = 1 
end 
end 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if not (string.find(msg, string.lower("invisible"))) then 
if (string.find(msg, string.lower("visible"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright blue") 
SPL.Part = p 
for i,v in pairs(player.Character:GetChildren()) do 
if (v:IsA("Part")) then 
v.Transparency = 0 
end 
end 
wait(1) 
SPL.Part = nil 
end 
end 
end 
end 
end 

Player.Chatted:connect(onChatted) 


--<------------------------------------------------------------------------>--


 -- ... Leviated Orb ... --
		

--<------------------------------------------------------------------------>--

local Levitated = 0 
local LevitateDir = -1 

while true do wait() 
pcall(function() 

M.Parent = Player.Character 

Levitated = Levitated + LevitateDir / 20 
if Levitated >= 1 or Levitated <= -1 then 
LevitateDir = -LevitateDir 
end 
if (FOLLOW == true) then 
BP.position = (Player.Character.Torso.CFrame * CFrame.new(5, RISE, -2.5)).p + Vector3.new(0, Levitated, 0) 
end
end)
end

Game.JointsService.DescendantAdded:connect()
Workspace.DescendantAdded:connect()

--<---------------------------------------------------------------------------------------------------------------------------------------------------------->--


 -- ... End Of Orb Script Edited And Updated By Me, nairod7 / I don't know who made this awesome orb but I credit him for his awesome creation ! ... --


--<---------------------------------------------------------------------------------------------------------------------------------------------------------->--
end}

 
 

module[1] = {"Orian Slicer",function()
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
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
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

local Stats=Instance.new("BoolValue")
Stats.Name="Stats"
Stats.Parent=Character
local Atk=Instance.new("NumberValue")
Atk.Name="Damage"
Atk.Parent=Stats
Atk.Value=1
local Def=Instance.new("NumberValue")
Def.Name="Defense"
Def.Parent=Stats
Def.Value=1
local Speed=Instance.new("NumberValue")
Speed.Name="Speed"
Speed.Parent=Stats
Speed.Value=1
local Mvmt=Instance.new("NumberValue")
Mvmt.Name="Movement"
Mvmt.Parent=Stats
Mvmt.Value=1

local donum=0
 

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
game:service'RunService'.Heartbeat:wait(0)
else
for i=0,num do
game:service'RunService'.Heartbeat:wait(0)
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


	user=game:service'Players'.localPlayer
	char=user.Character
	mouse=user:GetMouse()
	m=Instance.new('Model',char)
	game:service'Lighting'.Outlines=false
	
	
local Handle  = Instance.new("Part", m)
			Handle:BreakJoints()
			Handle.TopSurface = "Smooth"
			Handle.Transparency = 0			Handle.Material = "SmoothPlastic"
			Handle.Name = 'Handle'
			Handle.BottomSurface = "Smooth"
			Handle.FormFactor = "Custom" Handle.CanCollide = false
			Handle.BrickColor = BrickColor.new("Institutional white")
			Handle.Size = Vector3.new(0.337107092, 1.12369001, 0.337107033)
			    local Handleweld = Instance.new("ManualWeld")
   Handleweld.Part0 = Character["Right Arm"]
   Handleweld.Part1 = Handle  Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Handleweld.C1 = CFrame.new(-0.000732421875, -0.0344696045, -0.945665836, -0.999993205, 0, 0, 0, 0, -1, 0, -0.999993086, 0)
    Handleweld.Parent = Character["Right Arm"]
		
					local HandleMesh = Instance.new("CylinderMesh",Handle)
				HandleMesh.Name = "Mesh"
				HandleMesh.Offset = Vector3.new(0, 0, 0)
				HandleMesh.Scale = Vector3.new(1, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, -0.393207669, 0.99998641, 0, 1.77634477e-015, -1.32347999e-023, 1, 0, -1.77634477e-015, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.337107092, 0.224738032, 0.337107033)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-4.00543213e-005, 0.674224854, -1.33514404e-005, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
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
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.561845124, 0.200000003, 0.449476033)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.730434418, 7.62939453e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.561845124, 0.200000003, 0.449476033)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.730434418, 7.62939453e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.955184937, -0.179762959, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, -0.393225789, 0.99998641, 0, 1.77634477e-015, -1.32347999e-023, 1, 0, -1.77634477e-015, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.597281575, -0.842823029, -0.00578403473, -0.258815438, 0, 0.965912819, 0, 1, 0, -0.965912819, 0, -0.258815438)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0.5			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 4.62046242, 0.449476063)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(3.24249268e-005, -3.32155609, -4.76837158e-007, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.597218513, -0.842823029, 0.00602054596, 0.258815646, 0, 0.9659127, 0, 1, 0, -0.9659127, 0, 0.258815646)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.337107092, 1.12369001, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, 0, -0.123583317, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 0.561845064)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, 0.393286943, 0.99998641, 1.07852229e-016, -0, -1.14204248e-016, 1, -2.3803019e-013, -0, 2.38031816e-013, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, -0.230328798, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.337107092, 0.200000003, 0.337107033)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.618034363, 9.53674316e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.200000003, 4.60922527, 0.224738017)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -3.3159256, -1.14440918e-005, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.337107092, 0.200000003, 0.337107033)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, 0.618049622, 9.53674316e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.337107092, 1.12369001, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, 0, 0.117978811, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 1, 0.561845064)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.561845124, 0.200000003, 0.561845005)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, 9.53674316e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.53044498, -0.842823029, 0.0229825974, 0.258815438, -1.97460321e-017, -0.965912819, 3.30120669e-017, 1, -1.15873321e-017, 0.965912819, -2.88872116e-017, 0.258815438)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.529430389, -0.842823029, 0.0128250122, 0.258815438, 1.35525272e-020, -0.965912819, -3.50722156e-021, 1, 1.35524351e-020, 0.965912819, 0, 0.258815438)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.529132843, -0.842823029, -0.0117540359, -0.258815706, -3.25260652e-018, -0.965912759, 3.89845789e-017, 1, -1.38099317e-017, 0.965912759, -4.1236952e-017, -0.258815706)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, -0.393235803, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.525370121, -0.842823029, 0.0256881714, 0.258815676, -6.64073831e-019, 0.9659127, 1.05359266e-018, 1, 4.06573049e-019, -0.9659127, 9.14795583e-019, 0.258815676)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.730434418, 0.174170732, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.59340477, -0.842823029, 0.00790405273, -0.258815557, 0, -0.9659127, 0, 1, 0, 0.9659127, 0, -0.258815557)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.382054657)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.00023651123, -0.842823029, -0.364931583, 0.99998641, -2.62516024e-017, -1.67287184e-026, 2.62512451e-017, 1, 3.6862117e-018, 1.67287184e-026, -3.68626216e-018, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.598263144, -0.842823029, 0.00432395935, -0.258815438, 0, 0.965912819, 0, 1, 0, -0.965912819, 0, -0.258815438)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.449476063)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, 0.398794174, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.955184937, 0.174145699, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0.5			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 1.01132107, 0.449476063)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-8.39233398e-005, -6.13697433, 0.00012421608, -0.99998641, 0, 5.96042398e-008, 0, 1, 0, -5.96042398e-008, 0, -0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("SpecialMesh",Part)
					PartMesh.MeshId = ""
					PartMesh.MeshType = Enum.MeshType.Wedge				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.221366972, 1, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.561845124, 0.200000003, 0.449476033)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.955184937, -2.38418579e-007, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.842823029, 0.230348349, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Transparency = 0			Part.Name = 'Part'
			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Toothpaste")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -0.730434418, -0.179762959, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("CylinderMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
				
local hitbox  = Instance.new("Part", m)
			hitbox:BreakJoints()
			hitbox.TopSurface = "Smooth"
			hitbox.Material = "SmoothPlastic"
			hitbox.Transparency = 1			hitbox.Name = 'hitbox'
			hitbox.BottomSurface = "Smooth"
			hitbox.FormFactor = "Custom" hitbox.CanCollide = false
			hitbox.BrickColor = BrickColor.new("Institutional white")
			hitbox.Size = Vector3.new(0.200000003, 5.60922527, 0.624738038)
			    local hitboxweld = Instance.new("ManualWeld")
   hitboxweld.Part0 =  Handle   hitboxweld.Part1 = hitbox  hitboxweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   hitboxweld.C1 = CFrame.new(0, -3.8159256, -1.12056732e-005, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
    hitboxweld.Parent = hitbox		
					local hitboxMesh = Instance.new("BlockMesh",hitbox)
				hitboxMesh.Name = "Mesh"
				hitboxMesh.Offset = Vector3.new(0, 0, 0)
				hitboxMesh.Scale = Vector3.new(0.561845124, 1, 1)
				
local Wedge  = Instance.new("WedgePart", m)
			Wedge:BreakJoints()
			Wedge.TopSurface = "Smooth"
			Wedge.Material = "SmoothPlastic"
			Wedge.Transparency = 0			Wedge.Name = 'Wedge'
			Wedge.BottomSurface = "Smooth"
			Wedge.FormFactor = "Custom" Wedge.CanCollide = false
			Wedge.BrickColor = BrickColor.new("Institutional white")
			Wedge.Size = Vector3.new(0.200000003, 0.561845124, 0.224738076)
			    local Wedgeweld = Instance.new("ManualWeld")
   Wedgeweld.Part0 =  Handle   Wedgeweld.Part1 = Wedge  Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Wedgeweld.C1 = CFrame.new(7.62939453e-006, -5.9009819, -4.0769577e-005, -0.999992788, 1.60944605e-010, -8.94063589e-007, 1.60504526e-010, 0.999993563, -4.18958729e-010, 7.897562e-007, -4.18840851e-010, -0.999986649)
    Wedgeweld.Parent = Wedge		
					local WedgeMesh = Instance.new("SpecialMesh",Wedge)
					WedgeMesh.MeshId = ""
					WedgeMesh.MeshType = Enum.MeshType.Wedge				WedgeMesh.Name = "Mesh"
				WedgeMesh.Offset = Vector3.new(0, 0, 0)
				WedgeMesh.Scale = Vector3.new(0.561845124, 1, 1)

local function weldBetween(a, b, name)
    local weld = Instance.new("ManualWeld")
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = CFrame.new()
    weld.C1 = b.CFrame:inverse() * a.CFrame
    weld.Parent = a
	weld.Name=name or 'weldb1'
	weld.Parent=m
    return weld;
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

function EVENMOARMAGIX(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
       local S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.15,0.15,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function SummonSword(Part,cframe1,cframe2)
coroutine.resume(coroutine.create(function() 
 
local sword=part(1,workspace,0,0.5,BrickColor.new("Cyan"),"Sword",vt(2,2,2))
sword.Anchored=true
--con1=sword.Touched:connect(function(hit) Damagefunc2(hit,5,1) end) 
local smesh=mesh("SpecialMesh",sword,"FileMesh","http://www.roblox.com/asset/?id=50798664",vt(0,0,0),vt(3,3,3))
--smesh.Parent=nil
smesh.VertexColor=Vector3.new(0, 0, 0)
sword.CFrame=Part.CFrame*cframe1
con1=sword.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
	so("http://roblox.com/asset/?id=231917788",sword,0.5,1)
					hitconasdf = sword.Touched:connect(function(hit)
		local hum12 = hit.Parent:FindFirstChild("Humanoid")
		if hum12 and not hum12:IsDescendantOf(Character) then
			so('http://roblox.com/asset/?id=220025675',sword,1,3)
			hitconasdf:disconnect()
		end
	end)
EVENMOARMAGIX(sword,4,4,4,0,0,0,0,0,0,BrickColor.new("Cyan")) 
for i=0,1,0.2 do
wait()
local dir = sword.CFrame.lookVector*-1
hit2,pos = rayCast(sword.Position,dir,5,Character)
if hit2~=nil then
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
--Damagefunc2(hit2,5,1)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
--Damagefunc2(hit2,5,1)
end
end
sword.CFrame=sword.CFrame*cframe2
end
EVENMOARMAGIX(sword,4,4,4,0,0,0,0,0,0,BrickColor.new("Cyan")) 
sword.Parent=nil
pcall(function()
		hitconasdf:disconnect()
	end)
con1:disconnect()
end))
end


rings=Instance.new('Model',Character)

ring=function(way,way2,where,vector,rv1,rv2,rv3,c1,c2)
	local rng = Instance.new("Part", rings)
	rng.Anchored = true
	rng.BrickColor = BrickColor.new("Bright blue")
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = .5
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = where.CFrame * CFrame.Angles(math.rad(way), math.rad(way2), 0) 
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
	rngm.Scale = vector--10,10,1
	for i = 1, 20, 1 do
		rngm.Scale = Vector3.new(rv1 + i*c1, rv2 + i*c2, rv3)--(10 + i*2, 10 + i*2, 1)
		rng.Transparency = i/20
		swait()
	end
	wait()
	rng:destroy''
end

player=game.Players.localPlayer
char=player.Character
Effects={}
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
m=Instance.new("Model",char)

mouse.Button1Down:connect(function()
	if equipped==true and hand==false then
		if attacktype==1 then
			attackone()
		elseif attacktype==2 then
			attacktwo()
		elseif attacktype==3 then
			attackthree()
		end
	end
end)

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='q' then
		if attack==false then
			spin()
		end
	elseif k=='f' then
		if attack==false then
			boom()
		end
		elseif k=='e' then
		if attack==false then
			JumpSwing()
		end
	end
end)

function JumpSwing()
attack=true
for i=0,0.5,0.1 do
swait()
local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0.8),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1)*euler(0,0,-0.8),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(.5,-2,0)*euler(.5,0,0),.3)
LW.C0=clerp(LW.C0,cf(-.2,-.1,-0.5)*euler(1,-1.8,0)*euler(.9,0,0),.3)
RH.C0=clerp(RH.C0,RHC0*cf(.2,1,.1)*euler(0,-.5,-.2),.3)
LH.C0=clerp(LH.C0,LHC0*cf(-.2,1,.1)*euler(0,.5,.2),.3)
end
Humanoid.Jump=true
bodvol=Instance.new("BodyVelocity")
bodvol.Parent=RootPart
bodvol.velocity=vt(0,1,0)*100
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
--Torso.Velocity=vt(0,1,0)*100
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,20,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=231917987",hitbox,1,1)
		hitconasdf = hitbox.Touched:connect(function(hit)
		local hum12 = hit.Parent:FindFirstChild("Humanoid")
		if hum12 and not hum12:IsDescendantOf(Character) then
			so('http://roblox.com/asset/?id=220025675',hitbox,1,3)
			hitconasdf:disconnect()
		end
	end)
for i=0,1,0.1 do
swait()
local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(3,-2.4,0)*euler(.1,0,0),.3)
LW.C0=clerp(LW.C0,cf(-.2,.8,-0.5)*euler(3.1,-1.8,0)*euler(.9,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,-0.8),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0,0,1.3),.3)
RH.C0=clerp(RH.C0,RHC0,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
end
con1:disconnect()
hitconasdf:disconnect()
bodvol.Parent=nil
attack=false
end

function spin()
attack=true
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
for i=0,1,0.2 do
swait()
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.45)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.45)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(.5,0,0),.45)
LW.C0=clerp(LW.C0,cf(0,0.5,-0.7)*euler(1.5,-1.5,0)*euler(.7,0,0),.45)
RH.C0=clerp(RH.C0,RHC0*euler(-.2,0,0),.45)
LH.C0=clerp(LH.C0,LHC0*euler(-.2,0,0),.45)
end
for i=0,1,0.15 do
so("http://roblox.com/asset/?id=231917987",hitbox,1,1)
swait()
local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
for i=0,1,0.1 do
swait()
local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
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
RootJoint.C0=RootCF*euler(0,0,6.6*i)
end
end
con1:disconnect()
attack=false
end

function attackone()
if attack==false and attacktype==1 then
	attacktype=2
	attack=true
	con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
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
	so("http://roblox.com/asset/?id=234365549",hitbox,1,1)
		hitconasdf = hitbox.Touched:connect(function(hit)
		local hum12 = hit.Parent:FindFirstChild("Humanoid")
		if hum12 and not hum12:IsDescendantOf(Character) then
			so('http://roblox.com/asset/?id=220025675',hitbox,1,3)
			hitconasdf:disconnect()
		end
	end)
	for i=0,1,0.3 do
		swait()
		local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
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
	for i=0,1,0.2 do
		swait()
				local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
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
	con1:disconnect()
	hitconasdf:disconnect()
	attack=false
end
end

function attacktwo()
	if attack==false and attacktype==2 then
	attacktype=3
	attack=true
	con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
	for i=0,1,0.2 do
		swait()
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.7)*euler(.2,0,0),.4)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.7),.4)
		RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(1.57,0,-1)*euler(0,1.2,0),.4)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.8,0,-.4),.4)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		RH.C0=clerp(RH.C0,cf(.8,-1,.2)*euler(0,1.57,0)*euler(0,-.7,0),.4)
		LH.C0=clerp(LH.C0,cf(-.8,-1,.2)*euler(0,-1.57,0)*euler(0,-.7,0),.4)
	end
	so("http://roblox.com/asset/?id=234365573",hitbox,1,1)
			hitconasdf = hitbox.Touched:connect(function(hit)
		local hum12 = hit.Parent:FindFirstChild("Humanoid")
		if hum12 and not hum12:IsDescendantOf(Character) then
			so('http://roblox.com/asset/?id=220025675',hitbox,1,3)
			hitconasdf:disconnect()
		end
	end)
	for i=0,1,0.3 do
		swait()
				local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5)*euler(0,0,0),.4)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.4)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.3,0,1)*euler(0,1.6,0),.4)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.2),.4)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.4)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.4)
	end
	for i=0,1,0.2 do
		swait()
				local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,trispeed) end if b then game.Debris:AddItem(b,trispeed) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5)*euler(.1,0,0),.4)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.4)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,.8)*euler(0,1.3,0),.4)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.2),.4)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.4)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.4)
	end
	attack=false
	con1:disconnect()
	hitconasdf:disconnect()
	end
end

function attackthree()
	if attack==false and attacktype==3 then
		attacktype=1
		attack=true
		con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
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
		so("http://roblox.com/asset/?id=231917871",hitbox,1,1)
					hitconasdf = hitbox.Touched:connect(function(hit)
		local hum12 = hit.Parent:FindFirstChild("Humanoid")
		if hum12 and not hum12:IsDescendantOf(Character) then
			so('http://roblox.com/asset/?id=220025675',hitbox,1,3)
			hitconasdf:disconnect()
		end
	    end)
		for i=0,1,0.1 do
			swait()
					local blcf = hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
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
		hitconasdf:disconnect()
	end
end

function boom()
	attack=true
	for i=0,3,0.2 do
		swait()
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,.2),.4)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(math.rad(0),math.rad(0),math.rad(0)),.4)
		RW.C0=clerp(RW.C0,cf(1, 1, -.5)*euler(math.rad(145),math.rad(180),math.rad(45)),.4)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(0)),.4)
		LW.C0=clerp(LW.C0,cf(-1, 1, -.5)*euler(math.rad(145),math.rad(0),math.rad(45)),.4)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(math.rad(0),math.rad(0),math.rad(0)),.4)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(0)),.4)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(0)),.4)
	end
	so("http://roblox.com/asset/?id=231917813",hitbox,1,1)
	for i=0,1,0.07 do
		swait()
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.1+(0.04/2),0,0),.4)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.5)*euler(0.1,0,0),.4)
		RW.C0=clerp(RW.C0,cf(1, 1, -.5)*euler(math.rad(90),math.rad(180),math.rad(45)),.4)
		LW.C0=clerp(LW.C0,cf(-1, 1, -.5)*euler(math.rad(90),math.rad(0),math.rad(45)),.4)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(-1.2,1.57,0),.4)
		LH.C0=clerp(LH.C0,cf(-1.1,0.4,-0.8)*euler(-0.05,-1.57,0),.4)
		for i=0,1 do
 inc=1
wait(0)
SummonSword(Torso,CFrame.fromEulerAnglesXYZ(.1,0,1)*CFrame.new(0,inc,-6),CFrame.new(0,0,-3))
inc=inc-5
end
	end
	attack=false
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
Mesh=Thing[1].Mesh
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

idleanim=.4

while true do
swait()
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
if Anim~='Fly' then
		pcall(function()
	RightLeg.Transparency=0
	LeftLeg.Transparency=0
	m.fakerleg:destroy()
	m.fakelleg:destroy()
	end)
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
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
--[[Neck.C0=clerp(Neck.C0,necko*angles(math.rad(-10),0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*angles(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(15),0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(0,0,0.1),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),0,math.rad(45)),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-.5,-.5)*angles(math.rad(15),math.rad(90),0),.3)
RH.C1=clerp(RH.C1,RHC1,.3)
LH.C0=clerp(LH.C0,cf(1,-.5,0)*angles(math.rad(15),math.rad(-90),0),.3)
LH.C1=clerp(LH.C1,LHC1,.3)]]
idleanim=.4
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5-idleanim)*euler(0.4+(idleanim/2),0,-0.4),.3)
--RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-idleanim/2,0,0.4),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-25),math.rad(-35),math.rad(45)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(90),math.rad(0),math.rad(45)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-idleanim)*euler(-0.2-(idleanim/2),1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5+idleanim,0)*euler(0.5+(idleanim/2),-1.2,0)*euler(-.2,0,0),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
idleanim=-1
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0.4,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.2,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-35),math.rad(45)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(0),math.rad(35),math.rad(-45)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.2,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0.5,-1.57,0)*euler(0,0,0),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5)*euler(0.4,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.2,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-35),math.rad(-35),math.rad(45)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-35),math.rad(35),math.rad(-45)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.2,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0.5,-1.57,0)*euler(0,0,0),.3)
end
end
end
end
end}
module[2] = {"Orion Zerstoter",function()
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
cam=workspace.CurrentCamera
RocketTarget=nil
Targetting=false
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
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Toothpaste"))
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
                so("http://www.roblox.com/asset/?id=240429615",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://57605688"
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

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle",Vector3.new(0.34799999, 0.927999973, 0.34799999))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.938414574, -0.115570068, -0.00793266296, 0, 0.999999881, 0, 0, 0, -0.999999046, -0.999999046, 0, 0))
mesh("CylinderMesh",handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Toothpaste","Hitbox",Vector3.new(1.08780003, 9, 0.899399996))
Hitboxweld=weld(m,handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0970962048, -5.57445526, 0.00290489197, 1, 0, 0, 0, 0.999999046, 0, 0, 0, 0.999999046))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.34799999, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.15255737e-007, -1.68219757, -5.14984131e-005, 0.999999821, 0, -4.02306711e-007, 0, 0.999991417, 0, 3.57606126e-007, 0, 0.999991179))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(1.24815989, 0.867680013, 1.23192))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.34799999, 0.232000008, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.15255737e-007, -3.59598541, -1.71661377e-005, 1, 0, 0, 0, 0.999991417, 0, 0, 0, 0.999991417))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.782999933, 1.39431989, 0.778360009))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.34799999, 7.42399979, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.15255737e-007, -5.68367767, -3.24249268e-005, 0.999999821, 0, -5.36409459e-007, 0, 0.999991417, 0, 4.91710011e-007, 0, 0.999991179))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.870000005, 5.19216013, 0.22040002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.34799999, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.15255737e-007, -2.14612579, -7.05718994e-005, 0.999999821, 0, -4.47007636e-007, 0, 0.999991417, 0, 4.0230745e-007, 0, 0.999991179))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.91523993, 0.867680013, 0.907119989))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.34799999, 7.42399979, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.71661377e-005, -5.68369293, -6.91413879e-006, -1.19198532e-007, -0, -0.999991179, 0, 0.999991417, 0, 0.999999821, 0, -1.63901163e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.870000005, 5.19216013, 0.22040002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.34799999, 0.200000003, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.15255737e-007, -0.521995544, 9.53674316e-006, 1, 1.7108473e-010, -2.23197063e-007, 1.71018547e-010, -0.999998093, 1.04308484e-007, -2.23197276e-007, -1.04308427e-007, -0.999998093))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.34799999, 0.927999794, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.15255737e-007, 1.50800323, 0, 0.999999821, -2.96461249e-021, -4.91710807e-007, 0, 0.999991417, 0, 4.47011018e-007, 0, 0.999991179))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.305079967, 0.361919999, 0.591600001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.34799999, 0.200000003, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.83718109e-005, -0.754074097, -0.000329971313, 1, 1.87817525e-010, -8.59441116e-006, 1.89217239e-010, -0.999993324, 1.04302835e-007, -8.59442116e-006, -1.04302607e-007, -0.999993324))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.34799999, 0.200000003, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.15255737e-007, -0.522018433, 0, 1, 0, 0, 0, 0.999996185, 0, 0, 0, 0.999996185))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.34799999, 7.42399979, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.91413879e-006, -5.33583832, -1.71661377e-005, 1, 0, 0, 0, 0.999991417, 0, 0, 0, 0.999991417))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.870000005, 4.88244009, 0.870000005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.34799999, 0.200000003, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.15255737e-007, -0.75402832, 0, 1, 0, 0, 0, 0.999999046, 7.10543075e-015, 0, -7.10543075e-015, 0.999999046))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799999, 0.579999983, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.83718109e-005, -1.10206604, -0.000329971313, 1, 1.87817525e-010, -8.59441116e-006, 1.89217336e-010, -0.999993801, 1.04302885e-007, -8.59442571e-006, -1.04302657e-007, -0.999993801))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799999, 0.579999983, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.15255737e-007, -1.10198212, -1.71661377e-005, 1, 0, 0, 0, 0.999991417, 7.10537654e-015, 0, -7.10537654e-015, 0.999991417))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799999, 0.200000003, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.91413879e-006, -0.637992859, 0, 1, 4.60644977e-013, -8.94141579e-008, 4.88280857e-013, -0.999998093, 1.04307915e-007, -8.94142431e-008, -1.04307858e-007, -0.999998093))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799999, 0.200000003, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.15255737e-007, -0.638046265, 0, 1, 0, 0, 0, 0.999999046, 0, 0, 0, 0.999999046))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232000008, 0.579999983, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.18641663, -0.249622345, -0.000322341919, 0.500003457, 0.866022587, -3.37136134e-006, 0.866023421, -0.50000298, -8.41949077e-006, -8.97717655e-006, 1.29009675e-006, -0.999999046))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.34799999, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.15255737e-007, -1.79817963, -4.19616699e-005, 0.999999821, 0, -1.78808278e-007, 0, 0.999991417, 0, 1.3410579e-007, 0, 0.999991179))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(1.15999997, 0.867680013, 1.15999997))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.34799999, 0.927999794, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.15255737e-007, 1.50806427, 2.0980835e-005, 1, 7.81442897e-011, -5.80920357e-007, -7.8144366e-011, 0.999999046, -1.0800461e-012, 5.80920926e-007, 1.08009142e-012, 0.999999046))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 0.361919999, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.34799999, 0.927999794, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.39097595e-006, -3.17259979, -1.90734863e-006, -0.999999821, 1.19231245e-007, 3.65482788e-006, -1.19235082e-007, -0.999991417, -7.90913816e-007, 3.61015532e-006, -7.90914498e-007, 0.999991179))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1.65067995, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.231999978, 0.579999983, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.174030304, -2.95802307, -0.000284194946, 1, 1.8752648e-010, -8.46019702e-006, 1.88912469e-010, -0.999994755, 1.04302373e-007, -8.46021976e-006, -1.04302146e-007, -0.999994755))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.231999978, 0.579999983, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.173971176, -2.95800018, 0.000217437744, -1, -1.87007035e-010, 8.46098919e-006, 1.8662806e-010, -0.999994755, -1.04306039e-007, 8.46101102e-006, -1.04306267e-007, 0.999994755))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.34799999, 0.200000003, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.83718109e-005, -1.45005798, -0.000329971313, 1, 1.87817525e-010, -8.59441116e-006, 1.89217517e-010, -0.999994755, 1.04302984e-007, -8.59443389e-006, -1.04302757e-007, -0.999994755))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.34799996, 0.579999983, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.231966019, -2.37802124, -0.000297546387, 1, 1.87817525e-010, -8.37092921e-006, 1.89194216e-010, -0.999994755, 1.04303041e-007, -8.37095104e-006, -1.04302813e-007, -0.999994755))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.463999957, 0.579999983, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.290027618, -1.7980423, -0.000324249268, 1, 1.87817525e-010, -8.72850342e-006, 1.89231505e-010, -0.999994755, 1.04302856e-007, -8.72852706e-006, -1.04302629e-007, -0.999994755))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.34799999, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.15255737e-007, -3.53798676, -1.71661377e-005, 1, 0, 0, 0, 0.999991417, 0, 0, 0, 0.999991417))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.843319952, 1.90935993, 0.842159986))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(1.68780005, 0.200000003, 1.69939995))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0029027462, -0.974441528, 0.00290489197, 1, 0, 0, 0, 0.999999046, 0, 0, 0, 0.999999046))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.40999973, -0.0220399927, 0.964000046))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.34799999, 0.927999794, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.39097595e-006, -3.17259979, -1.90734863e-006, -0.999999821, 1.19231245e-007, 3.65482788e-006, -1.19235082e-007, -0.999991417, -7.90913816e-007, 3.61015532e-006, -7.90914498e-007, 0.999991179))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.37816, 1.65067995, 0.58348))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.34799996, 0.579999983, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.232032299, -2.37804413, -0.000301361084, 1, 1.87817525e-010, -8.32623846e-006, 1.89189539e-010, -0.999994755, 1.04303076e-007, -8.32626029e-006, -1.04302849e-007, -0.999994755))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.463999957, 0.579999983, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.289971113, -1.79801941, 0.00030708313, -1, -1.87825297e-010, 8.29646706e-006, 1.87463448e-010, -0.999994755, -1.04311042e-007, 8.29648798e-006, -1.04311269e-007, 0.999994755))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.232000008, 0.200000003, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.62643528, -0.951271057, -0.000335693359, 1, -3.96298265e-006, -8.49380376e-006, -3.9629922e-006, -0.999999046, -7.02569139e-007, -8.49380922e-006, 7.0260279e-007, -0.999999046))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.232000008, 0.347999901, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.626426697, -0.603294373, -0.00036239624, 1, -3.9629831e-006, -8.49380558e-006, -3.96299265e-006, -0.999999046, -7.02569196e-007, -8.49381104e-006, 7.02602847e-007, -0.999999046))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232000008, 0.812000036, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.626428843, -0.0233230591, -0.000335693359, 1, -3.9633087e-006, -8.49454591e-006, -3.96331825e-006, -0.999999046, -7.02571128e-007, -8.49455137e-006, 7.0260478e-007, -0.999999046))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.232000008, 0.200000003, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.626432657, 0.904624939, -0.0003490448, 1, -3.96292535e-006, -8.4936737e-006, -3.9629349e-006, -0.999999046, -7.02568741e-007, -8.49367916e-006, 7.02602392e-007, -0.999999046))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232000008, 0.232000008, 0.232000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.626425028, -1.00920105, -0.000328063965, 1, -3.94804647e-006, -8.76134891e-006, -3.94805465e-006, -0.999999046, -4.96231166e-007, -8.76135528e-006, 4.96265784e-007, -0.999999046))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232000008, 0.200000003, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.626425743, -0.835296631, -0.000347137451, 1, -3.9628535e-006, -8.49350818e-006, -3.96286305e-006, -0.999999046, -7.025684e-007, -8.49351363e-006, 7.02602051e-007, -0.999999046))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Toothpaste","Part",Vector3.new(0.232000008, 0.347999901, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.626431227, 0.556632996, -0.000364303589, 1, -3.9629831e-006, -8.49380649e-006, -3.96299265e-006, -0.999999046, -7.02569196e-007, -8.49381195e-006, 7.02602847e-007, -0.999999046))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232000008, 0.200000003, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.626422167, 0.788658142, -0.0003490448, 1, -3.96295445e-006, -8.49373919e-006, -3.962964e-006, -0.999999046, -7.02568968e-007, -8.49374464e-006, 7.0260262e-007, -0.999999046))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Wedge",Vector3.new(0.200000003, 0.579999983, 0.231999993))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000308990479, -1.7980423, 0.637979746, -6.71722273e-006, -6.84618513e-008, -0.999994755, -4.47188995e-006, -0.999994755, 6.84921204e-008, -1, 4.47186721e-006, 6.71721045e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Wedge",Vector3.new(0.200000003, 0.200000003, 0.463999987))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000324249268, 1.45005798, 0.290027618, -7.92391802e-006, 4.49062575e-012, -0.999994755, -1.88321053e-010, 0.999994755, 4.26325251e-012, 1, 1.87817512e-010, -7.92389801e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 0.579999983, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Wedge",Vector3.new(0.200000003, 0.200000003, 0.463999987))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.24249268e-005, 1.45010376, 0.290006161, -8.94506798e-008, -2.06058938e-013, 0.999991179, 1.5543988e-014, 0.999991417, 2.06058884e-013, -0.999999821, 1.55438796e-014, -4.47463009e-008))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 0.579999983, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000303268433, -2.14605713, 0.463969707, -1.46147377e-005, 2.92297784e-007, -0.999994755, 5.21027971e-007, -0.999994755, -2.92305174e-007, -1, -5.21028994e-007, 1.4614684e-005))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 0.579999983, 0.579999983))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Wedge",Vector3.new(0.200000003, 0.34799999, 0.34799999))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000150680542, -3.42198181, 0.231970549, -1.48875824e-006, -6.99275446e-008, -0.999994755, 3.68025803e-006, -0.999994755, 6.99223008e-008, -1, -3.68023825e-006, 1.48877371e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Wedge",Vector3.new(0.200000003, 0.34799999, 0.34799999))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000110626221, -3.42199707, 0.2320292, -3.17398462e-006, 2.9802635e-008, 0.999994755, 3.96858286e-006, -0.999994755, 2.98154603e-008, 1, 3.96856194e-006, 3.1739462e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Wedge",Vector3.new(0.200000003, 0.579999983, 0.200000003))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000276565552, -2.95803833, 0.347976208, -8.62883098e-008, 2.9804923e-008, -0.999994755, -3.96778796e-006, -0.999994755, -2.98043332e-008, -1, 3.96776795e-006, 8.63109619e-008))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Wedge",Vector3.new(0.200000003, 0.579999983, 0.200000003))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000217437744, -2.95804596, 0.348043203, 5.35680556e-007, 2.97995939e-008, 0.999994755, 3.96787027e-006, -0.999994755, 2.97976968e-008, 1, 3.96784935e-006, -5.35700053e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000305175781, -2.14606476, 0.464031935, 1.08596987e-005, -3.78481161e-007, 0.999999046, 7.11488326e-007, -0.999999046, -3.78488892e-007, 1, 7.11491737e-007, -1.08596887e-005))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 0.579999983, 0.579999983))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Wedge",Vector3.new(0.200000003, 0.579999983, 0.232000008))
Wedgeweld=weld(m,handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00023651123, -1.79804993, 0.638024807, 5.36701737e-006, 1.93710392e-007, 0.999994755, -4.97899055e-006, -0.999994755, 1.9373735e-007, 1, -4.97896599e-006, -5.36701009e-006))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))

function attackone()
        attack=true
        for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(15),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,-0.3)*angles(math.rad(10),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.3)*angles(math.rad(0),math.rad(-90),math.rad(-5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(50),math.rad(-10),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=189505639",Hitbox,1,1.1) 
local con = Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,0,"Target",600,1,2) end) 
 for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(15),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(100), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,-0.2)*angles(math.rad(10),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.2)*angles(math.rad(0),math.rad(-90),math.rad(-15))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(10),math.rad(0)),.3)
Torso.Velocity=Head.CFrame.lookVector*50
        end
attack=false
con:disconnect()
end

function attacktwo()
        attack=true
       for i=0,1.5,0.2 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(15),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,-0.3)*angles(math.rad(10),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.3)*angles(math.rad(0),math.rad(-90),math.rad(-5))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(-10),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=189505649",Hitbox,1,1) 
local con = Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(10,20),"Normal",RootPart,.2,1) end) 
 for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(30),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(130), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,-0.2)*angles(math.rad(10),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.2)*angles(math.rad(0),math.rad(-90),math.rad(-15))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,-1,-1)*angles(math.rad(-100),math.rad(10),math.rad(0)),.3)
Torso.Velocity=Head.CFrame.lookVector*90
        end
attack=false
con:disconnect()
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
               --[[ elseif attacktype==3 then
                        attack=true
                        attacktype=1
                        attacktwo()]]--
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,-0.3)*angles(math.rad(20),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.3)*angles(math.rad(0),math.rad(-90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(-10),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,-0.3)*angles(math.rad(20),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.3)*angles(math.rad(0),math.rad(-90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(-10),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,-0.3)*angles(math.rad(20),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.3)*angles(math.rad(0),math.rad(-90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(-10),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(30),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30*math.cos(sine/10)), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(20))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(25),math.rad(-10),math.rad(0)),.3)
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
module[3] = {"Overseer's Demise",function()
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


local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BC, Name, Size)
	local Part = Create("Part"){
		formFactor = FormFactor,
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BC)),
		Name = Name,
		Size = Size,
		Material = Material,
	}
	RemoveOutlines(Part)
	return Part
end
	
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh){
		Parent = Part,
		Offset = OffSet,
		Scale = Scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
	
function CreateWeld(Parent, P0, P1, c0, c1)
	local W = Create("Weld"){
		Parent = Parent,
		Part0 = P0,
		Part1 = P1,
		C0 = c0,
		C1 = c1,
	}
	return W
end
	
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
wait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t)
return a:lerp(b,t)
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Handle=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Lime green","Handle",Vector3.new(0.301632881, 2.05244946, 0.301632911))
Handleweld=CreateWeld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.900724411, 0.0686532855, 0.100441933, -9.87591953e-013, -0.999999881, 4.85088272e-012, 5.21260915e-007, -4.85088272e-012, -1, 1, -9.87589351e-013, 5.21260915e-007))
CreateMesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
FakeHandle=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Lime green","FakeHandle",Vector3.new(0.301632881, 1.05244946, 0.301632911))
FakeHandleweld=CreateWeld(m,Handle,FakeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.100000024, 0, 1, 0, 3.49105374e-020, 0, 1, 0, 3.49105374e-020, 0, 1))
CreateMesh("CylinderMesh",FakeHandle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Lime green","Part",Vector3.new(0.200000003, 0.904898763, 1.50816441))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000781536102, 0.000250577927, 6.81403255, -1.49028878e-008, 9.31697571e-007, -0.999994278, 0.999994278, 1.89689118e-007, -1.49028523e-008, 1.89689047e-007, -0.999999702, -1.03599632e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.123669446, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.452449292, 0.200000003, 0.301632941))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000460863113, -0.000703811646, 5.1551156, 0.999994278, -2.56082499e-011, -8.24284271e-013, 7.24824226e-013, 6.13397333e-010, 0.999994278, -2.4641773e-011, -0.999999702, -1.0368808e-007))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.904898703, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.603265822, 1.05571508))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000776290894, 0.00021648407, 6.58780527, -1.49040176e-008, 1.66174368e-006, -0.999994278, 0.999994278, 1.89681401e-007, -1.4903847e-008, 1.89681316e-007, -0.999999702, -1.76603862e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 4.67530966, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000900506973, -3.72235155, -0.000814437866, 0.999994278, -9.57904242e-011, -5.90481917e-012, 9.48240444e-011, 0.999999702, 7.09023971e-006, 5.73459726e-012, -6.98597478e-006, 0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 1, 0.829490483))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.452449292, 0.200000003, 0.301632941))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000506877899, -0.000769615173, 4.40096092, 0.999994278, -7.22328586e-011, -4.83882639e-012, 4.68256814e-012, -4.27471787e-006, 0.999994278, -7.12533782e-011, -0.999999702, -4.37899871e-006))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.904898703, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000766277313, -0.226443529, -3.57149124, 1.48977106e-008, 6.26339715e-006, -0.999994278, -0.999994278, -1.93668285e-007, -1.48987827e-008, -1.93668299e-007, 0.999999702, 6.36766708e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lime green","Part",Vector3.new(0.200000003, 4.67530966, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000900506973, -3.72235155, -0.000761985779, 0.999994278, -9.81090348e-011, -6.22590998e-012, 9.71359521e-011, 0.999999702, 7.29890962e-006, 6.05515291e-012, -7.19464515e-006, 0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.120653138, 1, 0.837031305))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.603265882, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.22638917, -3.94854045, -0.000765800476, 0.999994278, -7.93771299e-011, -4.7180081e-012, 7.83965046e-011, 0.999999702, 5.94327139e-006, 4.55733238e-012, -5.83899919e-006, 0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 1, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.200000003, 1.65898108, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.22638917, -5.2304635, -0.000760555267, 0.999994278, -6.92162577e-011, -4.20806055e-012, 6.8235681e-011, 0.999999702, 5.52625534e-006, 4.04747373e-012, -5.42198086e-006, 0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 1, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000786304474, 0.226445198, -4.32553482, -1.48974175e-008, -5.79835444e-007, 0.999994278, 0.999994278, -1.89793411e-007, 1.4897128e-008, 1.89791407e-007, 0.999999702, 6.84136694e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000786304474, 0.226443529, 3.57149148, -1.49031347e-008, 8.27100678e-007, -0.999994278, 0.999994278, 1.89686276e-007, -1.49031187e-008, 1.89686205e-007, -0.999999702, -9.31400564e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lime green","Part",Vector3.new(0.452449292, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000460863113, 0.00170040131, 3.48783398, 0.999994278, -6.29633429e-011, -4.78628595e-012, 4.66688624e-012, -3.23251811e-006, 0.999994278, -6.19969701e-011, -0.999999702, -3.33680305e-006))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.942602754, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lime green","Part",Vector3.new(0.452449292, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000460863113, 0.00170660019, 5.14681053, 0.999994278, -6.29633429e-011, -4.78628595e-012, 4.66688624e-012, -3.23251811e-006, 0.999994278, -6.19969701e-011, -0.999999702, -3.33680305e-006))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.942602754, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.301632881, 4.67530966, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, -3.72235155, -0.00077009201, 0.999994278, -7.02250896e-011, -3.89532287e-012, 6.9244506e-011, 0.999999702, 5.10900372e-006, 3.73475946e-012, -5.00472652e-006, 0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lime green","Part",Vector3.new(0.452449292, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000460863113, 0.00170373917, 4.3927021, 0.999994278, -6.29633429e-011, -4.78628595e-012, 4.66688624e-012, -3.23251811e-006, 0.999994278, -6.19969701e-011, -0.999999702, -3.33680305e-006))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.942602754, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000761985779, -0.226445198, 4.32553482, 1.49031258e-008, -6.22759217e-006, 0.999994278, -0.999994278, 1.9377616e-007, 1.49045132e-008, -1.93774227e-007, -0.999999702, -6.3318621e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000786304474, -0.226062298, -3.57149124, 7.45085771e-008, -9.02447312e-007, 0.999994278, 0.999994278, -1.29337536e-007, -7.45088684e-008, 1.2933593e-007, 0.999999702, 1.00674674e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000760555267, 0.226063848, -4.32552719, -7.45085771e-008, 6.58613544e-006, -0.999994278, -0.999994278, -2.54132573e-007, 7.45070352e-008, -2.54131749e-007, 0.999999702, 6.69040401e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.452449352, 0.301632941, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.40486073, 2.28881836e-005, 4.76837158e-007, -7.4510659e-008, 0.999999642, -5.19771334e-007, -0.999999464, 8.94021142e-008, -4.55381871e-010, 1.08580016e-008, 4.77549349e-007, 0.999999642))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.463006377, 0.473563731, 1.8791728))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.301632881, 0.452449381, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.5, 4.76837158e-007, 1, 0, 3.49105374e-020, 0, 1, 0, 3.49105374e-020, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, -0.706498325, -0.000161170959, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000784397125, -0.226063848, 4.32552719, -7.45085771e-008, 9.38253208e-007, -0.999994278, 0.999994278, 2.58115534e-007, -7.45084705e-008, 2.5811508e-007, -0.999999702, -1.04255219e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.301632881, 0.452449381, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, -0.404852629, -0.000162601471, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.2649765e-005, 0.952409267, -5.24520874e-006, 1, -2.90482699e-012, -6.25005202e-013, 2.90482742e-012, 1, 3.1322088e-007, 6.25004334e-013, -3.13220937e-007, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, 0.198386788, -0.000166416168, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.603265882, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.226004839, -3.94852328, 0.000782966614, -0.999994278, -6.44144791e-008, 7.45087902e-008, -6.44149978e-008, 0.999999702, 1.63986601e-006, -7.45087405e-008, 1.53557016e-006, -0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 1, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.200000003, 1.65898108, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.226004839, -5.23044777, 0.000778198242, -0.999994278, -6.44043041e-008, 7.45087902e-008, -6.44047944e-008, 0.999999702, 2.05687343e-006, -7.45087618e-008, 1.95257962e-006, -0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 1, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632822, 0.301632911, 0.301632941))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, -1.23431873, -0.000158309937, 0.999994278, -7.58783383e-011, -4.41249901e-012, 7.49053597e-011, 0.999999702, 5.52591155e-006, 4.24203684e-012, -5.42163707e-006, 0.999994278))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.2649765e-005, 0.801642776, -5.24520874e-006, 1, -2.90482699e-012, -6.25005202e-013, 2.90482742e-012, 1, 3.1322088e-007, 6.25004334e-013, -3.13220937e-007, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, 0.047641933, -0.000165462494, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000116825104, 1.10333133, -0.000106334686, 1, -8.73691189e-011, -7.57409153e-012, 8.73691744e-011, 1, 7.19496757e-006, 7.57346269e-012, -7.19496757e-006, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000766277313, 0.226062536, 3.57149148, 7.45085771e-008, -6.33886475e-006, 0.999994278, -0.999994278, 1.25355314e-007, 7.45095434e-008, -1.25354148e-007, -0.999999702, -6.44313423e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 0.754082263, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.452449292, 0.200000003, 0.301632941))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000506877899, -0.000774383545, 3.49609566, 0.999994278, -7.31991967e-011, -4.93830194e-012, 4.78204325e-012, -4.1704161e-006, 0.999994278, -7.22190502e-011, -0.999999702, -4.27469786e-006))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.904898703, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Lime green","Part",Vector3.new(0.904898703, 4.67530966, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000299930573, -3.72235155, 0.000774860382, -0.999994278, -6.44028191e-008, 7.45117816e-008, -6.44031601e-008, 0.999999702, 3.93397568e-006, -7.45118669e-008, 3.82969256e-006, -0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.0980306864))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.452449292, 0.200000003, 0.301632941))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000506877899, -0.000778675079, 2.74198365, 0.999994278, -7.27333055e-011, -4.87426852e-012, 4.67926956e-012, -3.96196538e-006, 0.999994278, -7.17527218e-011, -0.999999702, -4.06624804e-006))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.904898703, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.301632911, 0.452449381))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000200271606, 1.23434317, 0.376773, 1.23888171e-008, 3.24624557e-006, -0.999994278, -8.94632066e-008, -0.999999702, -3.35053187e-006, -0.999994278, 8.94646988e-008, -1.23883597e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.301632911, 0.603265882))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000160217285, -0.301415563, -1.08350956, -1.19206696e-007, -3.91693493e-006, 0.999994278, 0.999994278, 2.97053617e-008, 1.19206646e-007, -2.97066389e-008, 0.999999702, 4.02121714e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.452449381, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000160217285, 1.00810027, 0.301787853, -2.97987164e-008, -4.72161719e-006, 0.999994278, -7.00291214e-011, -0.999999702, -4.8258953e-006, 0.999994278, -7.11414885e-011, 2.9798553e-008))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.200000003, 1.20653164))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.15527344e-005, -0.376680851, 1.98807502, 6.10957045e-007, 2.30473438e-006, -0.999994278, 0.999994278, -5.97264247e-008, 6.10956761e-007, -5.97237104e-008, -0.999999702, -2.40902614e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632822, 0.316714555, 0.301632941))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.452566624, -0.000160217285, 1.23431873, 0.999994278, -6.81050077e-011, -3.46748129e-012, 3.30411198e-012, -3.64876109e-006, 0.999994278, -6.71349226e-011, -0.999999702, -3.75304512e-006))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.200000003, 1.20653164))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000101566315, 0.225869298, 1.98805106, -5.51343817e-007, 2.41004295e-006, 0.999994278, -0.999994278, -5.97035381e-008, -5.51343476e-007, 5.97028773e-008, -0.999999702, 2.30572573e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.22638917, -1.30971909, -0.000157833099, 0.999994278, -7.5721332e-011, -4.24837986e-012, 7.47407344e-011, 0.999999702, 5.4216589e-006, 4.08776485e-012, -5.31738306e-006, 0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.200000003, 2.11143041, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.226004958, -2.44035769, 0.000785827637, -0.999994278, -6.44114166e-008, 7.45090389e-008, -6.44119211e-008, 0.999999702, 1.84849864e-006, -7.45090034e-008, 1.7442037e-006, -0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 1, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lime green","Part",Vector3.new(0.452449292, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000460863113, 0.00169754028, 2.73375678, 0.999994278, -6.29633429e-011, -4.78628595e-012, 4.66688624e-012, -3.23251811e-006, 0.999994278, -6.19969701e-011, -0.999999702, -3.33680305e-006))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.942602754, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, -1.00806975, -0.000158786774, 0.999994278, -8.51322832e-011, -5.37915415e-012, 8.41605743e-011, 0.999999702, 6.15139652e-006, 5.21480515e-012, -6.04712568e-006, 0.999994278))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lime green","Part",Vector3.new(0.301632822, 0.331796169, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.452520609, -9.58442688e-005, 1.23446751, 0.999994278, -5.5805336e-011, -2.06513279e-012, 1.90487188e-012, -8.32826402e-007, 0.999994278, -5.48248356e-011, -0.999999702, -9.37126288e-007))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.754082322))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, -0.857257009, -0.000160217285, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Light stone grey","Part",Vector3.new(0.200000003, 2.11143041, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.22638917, -2.44035769, -0.000775337219, 0.999994278, -7.71317871e-011, -4.71892274e-012, 7.61511756e-011, 0.999999702, 6.04763136e-006, 4.55825265e-012, -5.94335961e-006, 0.999994278))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.754082203, 1, 0.754082263))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Lime green","Part",Vector3.new(0.301632881, 0.301632911, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.2649765e-005, -4.76837158e-007, -1.40486121, -1, -4.85088315e-012, -9.87589459e-013, 9.87591953e-013, -5.21260915e-007, -1, 4.85088272e-012, -1, 5.21260915e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0935061872, 0.18248795, 0.334812433))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.200000003, 0.301632911))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000160694122, -0.103231549, -0.00016450882, 0.999994278, -8.12544892e-011, -4.6401741e-012, 8.02827874e-011, 0.999999702, 5.73445595e-006, 4.46345478e-012, -5.63018284e-006, 0.999994278))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.301632881, 0.301632911, 0.452449381))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000157356262, -0.452600718, 1.46049201, 3.77276812e-012, -5.00457736e-006, 0.999994278, -0.999994278, 2.98778282e-008, 4.08561423e-012, -2.98766878e-008, -0.999999702, -5.10885457e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Lime green","Hitbox",Vector3.new(0.904898703, 6.27530956, 0.200000003))
Hitboxweld=CreateWeld(m,FakeHandle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000299930573, -4.52235365, 0.000774860382, -0.999994278, -6.44028191e-008, 7.45117816e-008, -6.44031601e-008, 0.999999702, 3.93397568e-006, -7.45118669e-008, 3.82969256e-006, -0.999994278))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.452449381))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00029706955, 0.00348496437, 6.28616476, -1.49025681e-008, 4.09715824e-007, -0.999994278, 0.999994278, 1.89689203e-007, -1.49026409e-008, 1.89689132e-007, -0.999999702, -5.14017074e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.791786313, 0.754082263, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lime green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00029706955, 0.00348496437, 6.13534832, -1.49025681e-008, 4.0970491e-007, -0.999994278, 0.999994278, 1.89689203e-007, -1.49026409e-008, 1.89689132e-007, -0.999999702, -5.1400616e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.806038439, 0.102555193, 0.754082263))

function attackone()
attack = true
for i = 0,1,0.1 do
wait()
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
wait()
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(0,0,0),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(0,0,0),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(0,0,0), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(0,0,0), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(0,1.6,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(0,-1.6,0),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(0,0,0),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(0,0,0),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(0,0,0), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(0,0,0), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(0,1.6,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(0,-1.6,0),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(0,0,0),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(0,0,0),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(0,0,0), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(0,0,0), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(0,1.6,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(0,-1.6,0),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(1,0,0),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(0,0,0),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(0,0,0), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(0,0,0), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(0,1.6,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(0,-1.6,0),.3)
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

 
 

module[1] = {"Parkour Script",function()
--Made By wistfulandrei--



local player = game:service("Players").LocalPlayer
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera
local char = player.Character
local Torsoz = char:findFirstChild("Torso")
local RA = char:findFirstChild("Right Arm")
local LA = char:findFirstChild("Left Arm")
local RL = char:findFirstChild("Right Leg")
local LL = char:findFirstChild("Left Leg")
local H = char:findFirstChild("Head")
local Hu = char:findFirstChild("Humanoid")
local RS = Torsoz:findFirstChild("Right Shoulder")
local LS = Torsoz:findFirstChild("Left Shoulder")
local RH = Torsoz:findFirstChild("Right Hip")
local LH = Torsoz:findFirstChild("Left Hip")
local N = Torsoz:findFirstChild("Neck")
local NV = Vector3.new(0,0,0)
local FOV = 70
local Shift, Space, Sitting = false,false,false
local GravPoint = 0
local Diving = false
local DivingCooldown = 0
local DivingDir = NV
local DivingCF = CFrame.new(0,0,0)
local DivingBG, DivingBV
local HWallRunning = false
local HWRGravDrop = false
local HWRLastPart
local HWRCooldown = 0
local HWRDir
local VWallRunning = false
local VWRLastPart
local VWRCooldown = 0
local VWRLeft,VWRRight = false,false
local Sliding = false
local SlideCooldown = 0
local Standing = true
local Action = "Standing"
local animplus = true
local animspeed = 0
local animangle = 0.01
local Joint1, Joint2, Joint3, Joint4, Joint5
 
for i, v in pairs(char:children()) do
if (v.className == "LocalScript" and v.Name == "ParkourSkrip") or v.className == "NumberValue" or v.className == "BoolValue" or v.className == "Model" or v.Name == "Animate" then
v:remove()
end
end
 
local loadids = {112474909, 112474911, 112474909}
 
local stamina = 99999
local maxstamina = 999999
local defsprint = 28
local sprint = defsprint  
 
local pause = Instance.new("BoolValue", char)
pause.Name = "Pause"
pause.Value = false
local flow = Instance.new("NumberValue", char)
flow.Name = "Flow"
flow.Value = 0
local flowcooldown = 0
 
local m = Instance.new("Model", char)
m.Name = "FlowChainPartz"
 
local P = Instance.new("Part")
P.Name = "TrailPart"
P.formFactor = "Custom"
P.Size = Vector3.new(0.2,0.2,0.2)
P.Locked = true
P.Anchored = true
P.CanCollide = false
P.TopSurface = 0
P.BottomSurface = 0
 
script.Name = "ParkourSkrip"
 
local hue = 0
 
function HSV(H,S,V)
H = H % 360
local C = V * S
local H2 = H/60
local X = C * (1 - math.abs((H2 %2) -1))
local color = Color3.new(0,0,0)
if H2 <= 0 then
color = Color3.new(C,0,0)
elseif 0 <= H2 and H2 <= 1 then
color = Color3.new(C,X,0)
elseif 1 <= H2 and H2 <= 2 then
color = Color3.new(X,C,0)
elseif 2 <= H2 and H2 <= 3 then
color = Color3.new(0,C,X)
elseif 3 <= H2 and H2 <= 4 then
color = Color3.new(0,X,C)
elseif 4 <= H2 and H2 <= 5 then
color = Color3.new(X,0,C)
elseif 5 <= H2 and H2 <= 6 then
color = Color3.new(C,0,X)
end
local m = V - C
return Color3.new(color.r + m, color.g + m, color.b + m)
end
 
function GetWeld(weld)
if weld:findFirstChild("XAngle") == nil then
local a = Instance.new("NumberValue", weld)
a.Name = "XAngle"
end
if weld:findFirstChild("YAngle") == nil then
local a = Instance.new("NumberValue", weld)
a.Name = "YAngle"
end
if weld:findFirstChild("ZAngle") == nil then
local a = Instance.new("NumberValue", weld)
a.Name = "ZAngle"
end
return weld.C0.p, Vector3.new(weld.XAngle.Value, weld.YAngle.Value, weld.ZAngle.Value)
end
 
function SetWeld(weld, i, loops, origpos,origangle, nextpos,nextangle)
if weld:findFirstChild("XAngle") == nil then
local a = Instance.new("NumberValue", weld)
a.Name = "XAngle"
end
if weld:findFirstChild("YAngle") == nil then
local a = Instance.new("NumberValue", weld)
a.Name = "YAngle"
end
if weld:findFirstChild("ZAngle") == nil then
local a = Instance.new("NumberValue", weld)
a.Name = "ZAngle"
end
 
local tox,toy,toz = 0,0,0
if origangle.x > nextangle.x then
tox = -math.abs(origangle.x - nextangle.x) /loops*i
else
tox = math.abs(origangle.x - nextangle.x) /loops*i
end
if origangle.y > nextangle.y then
toy = -math.abs(origangle.y - nextangle.y) /loops*i
else
toy = math.abs(origangle.y - nextangle.y) /loops*i
end
if origangle.z > nextangle.z then
toz = -math.abs(origangle.z - nextangle.z) /loops*i
else
toz = math.abs(origangle.z - nextangle.z) /loops*i
end
 
local tox2,toy2,toz2 = 0,0,0
if origpos.x > nextpos.x then
tox2 = -math.abs(origpos.x - nextpos.x) /loops*i
else
tox2 = math.abs(origpos.x - nextpos.x) /loops*i
end
if origpos.y > nextpos.y then
toy2 = -math.abs(origpos.y - nextpos.y) /loops*i
else
toy2 = math.abs(origpos.y - nextpos.y) /loops*i
end
if origpos.z > nextpos.z then
toz2 = -math.abs(origpos.z - nextpos.z) /loops*i
else
toz2 = math.abs(origpos.z - nextpos.z) /loops*i
end
 
weld.XAngle.Value = origangle.x + tox
weld.YAngle.Value = origangle.y + toy
weld.ZAngle.Value = origangle.z + toz
weld.C0 = CFrame.new(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2) * CFrame.Angles(origangle.x + tox,origangle.y + toy,origangle.z + toz)
end
 
function LoadTextures()
local pls = game:service("ContentProvider")
for i, v in pairs(loadids) do
pls:Preload("http://www.roblox.com/asset/?id="..v)
wait(0.04)
end
end
LoadTextures()
 
function CreateGui()
for i, v in pairs(player.PlayerGui:children()) do
if v.className == "ScreenGui" and v.Name == "staminaGui" then
v:remove()
end
end
local g = Instance.new("ScreenGui", player.PlayerGui)
g.Name = "staminaGui"
 
local c = Instance.new("Frame", g)
c.Visible = false
c.Size = UDim2.new(0,86,0,320)
c.BackgroundTransparency = 1
c.Position = UDim2.new(1,-96,0.5,-160)
c.Name = "Container"
 
local t = Instance.new("TextLabel", c)
t.Size = UDim2.new(0,0,-0.1,0)
t.Position = UDim2.new(0.3,0,0.5,0)
t.TextXAlignment = "Right"
t.Font = "ArialBold"
t.TextTransparency = 0.1
t.TextColor3 = Color3.new(0,0.6,0.8)
t.TextStrokeColor3 = Color3.new(0,0.2,0.8)
t.TextStrokeTransparency = 0.3
t.FontSize = 6
t.BackgroundTransparency = 1
local t2 = t:Clone()
t2.Parent = c
t2.Size = UDim2.new(0,0,0.1,0)
local l = t:Clone()
l.Parent = c
l.Size = UDim2.new(0,0,0,0)
l.Text = "-----"
 
local f1 = Instance.new("Frame", c)
f1.Name = "Backing"
f1.ClipsDescendants = true
f1.Size = UDim2.new(1,0,0,0)
f1.BackgroundColor3 = Color3.new(0.8,0,0)
f1.BackgroundTransparency = 1
local f1img = Instance.new("ImageLabel", f1)
f1img.BackgroundTransparency = 1
f1img.Image = "http://www.roblox.com/asset/?id=112474909"
f1img.Size = UDim2.new(1,0,0,c.Size.Y.Offset)
 
local f2 = Instance.new("Frame", c)
f2.Name = "Overlay"
f2.ClipsDescendants = true
f2.Size = UDim2.new(1,0,1,0)
f2.BackgroundColor3 = Color3.new(0,0,0.8)
f2.BackgroundTransparency = 1
local f2img = Instance.new("ImageLabel", f2)
f2img.BackgroundTransparency = 1
f2img.Image = "http://www.roblox.com/asset/?id=112474911"
f2img.Size = UDim2.new(1,0,0,c.Size.Y.Offset)
 
function Calculate()
local ysize = c.Size.Y.Offset
local per = (stamina/maxstamina) * c.Size.Y.Offset
local rem = (-(stamina/maxstamina-1)) * c.Size.Y.Offset
f1.Size = UDim2.new(1,0,0,rem)
f2.Size = UDim2.new(1,0,0,per)
f2.Position = UDim2.new(0,0,0,rem)
f2img.Position = UDim2.new(0,0,0,-rem)
t.Text = math.floor(stamina)
t2.Text = maxstamina
end
Calculate()
 
wait(0.01)
c.Visible = true
end
CreateGui()
 
player.CharacterAdded:connect(function()
char = player.Character
Torsoz = char:findFirstChild("Torso")
RA = char:findFirstChild("Right Arm")
LA = char:findFirstChild("Left Arm")
RL = char:findFirstChild("Right Leg")
LL = char:findFirstChild("Left Leg")
H = char:findFirstChild("Head")
Hu = char:findFirstChild("Humanoid")
RS = Torsoz:findFirstChild("Right Shoulder")
LS = Torsoz:findFirstChild("Left Shoulder")
RH = Torsoz:findFirstChild("Right Hip")
LH = Torsoz:findFirstChild("Left Hip")
N = Torsoz:findFirstChild("Neck")
stamina = maxstamina
CreateGui()
end)
 
function RAY(pos, dir, startpos, endpos, distleft, collidedlist)
collidedlist = collidedlist or {char}
startpos = startpos or pos
distleft = distleft or dir.unit * dir.magnitude
endpos = endpos or pos + distleft
local ray = Ray.new(pos, distleft)
local hitz,enz = workspace:FindPartOnRayWithIgnoreList(ray, collidedlist)
--[[
local p = P:Clone()
p.Parent = char
p.Size = Vector3.new(0.4,0.4,0.4)
p.BrickColor = BrickColor.new("Lime green")
p.CanCollide = false
p.CFrame = CFrame.new(enz)
p.Transparency = 0.3
]]
if hitz ~= nil then
if hitz.CanCollide == false then
table.insert(collidedlist, hitz)
local newpos = enz
local newdistleft = distleft - (dir.unit * (pos - newpos).magnitude)
if newdistleft ~= NV then
return RAY(newpos-(dir*0.01), dir, startpos, endpos, newdistleft+(dir*0.01), collidedlist)
end
end
end
 
return hitz, enz, ray
end
 
function Sit()
Standing = false
local hitz,enz = RAY(Torsoz.Position, Vector3.new(0,-4.1,0))
local tordir = Vector3.new(Torsoz.CFrame.lookVector.x,0,Torsoz.CFrame.lookVector.z)
if (hitz ~= nil and hitz.CanCollide == true) then
local cf = CFrame.new(enz+Vector3.new(0,1.28,0), enz+Vector3.new(0,1.28,0)+tordir) * CFrame.Angles(math.pi/6,0,0)
local hitz2,enz2 = RAY(enz+Vector3.new(0,2.25,0), tordir*-2.2)
Hu.PlatformStand = true
Torsoz.CFrame = cf
local bp = Instance.new("BodyPosition", Torsoz)
bp.Name = "StaminaBodyObject"
bp.maxForce = Vector3.new(1/0,1/0,1/0)
bp.D = 100
bp.position = cf.p
local bg = Instance.new("BodyGyro", Torsoz)
bg.Name = "StaminaBodyObject"
bg.maxTorque = Vector3.new(1/0,1/0,1/0)
bg.cframe = cf
bg.D = 100
SetWeld(Joint1,1,1, NV,NV, Vector3.new(0.34,-1,0.2), Vector3.new((math.pi/2)-(math.pi/6),0,math.pi/8))
SetWeld(Joint2,1,1, NV,NV, Vector3.new(-0.34,-1,0.2), Vector3.new((math.pi/2)-(math.pi/6),0,-math.pi/8))
 
if hitz2 ~= nil and hitz2.CanCollide == true then
Joint3.C0 = CFrame.new(0.9,0.4,-0.45) * CFrame.Angles(0,math.pi/2.13,0) * CFrame.Angles(math.pi/2.3,0,0)
Joint4.C0 = CFrame.new(-0.9,0.4,-0.4) * CFrame.Angles(0,-math.pi/2.05,0) * CFrame.Angles(math.pi/2.3,0,0)
Joint5.C0 = CFrame.new(0,1,0) * CFrame.Angles(-math.pi/8.8,0,0)
else
SetWeld(Joint3,1,1, NV,NV, Vector3.new(1.4,0.4,0.1), Vector3.new(-(math.pi/6)-(math.pi/10),0,math.pi/9))
SetWeld(Joint4,1,1, NV,NV, Vector3.new(-1.4,0.4,0.1), Vector3.new(-(math.pi/6)-(math.pi/10),0,-math.pi/9))
SetWeld(Joint5,1,1, NV,NV, Vector3.new(0,1,0), Vector3.new(-math.pi/12,0,0))
end
 
Sitting = true
Action = "Sitting"
end
end
 
 
function Stand()
Hu.PlatformStand = false
if Sitting == true then
local tordir = Torsoz.Position + (Torsoz.CFrame.lookVector*10000)
local cf = CFrame.new(Torsoz.Position + Vector3.new(0,1.8,0), Vector3.new(tordir.x,Torsoz.Position.y,tordir.z))
Torsoz.CFrame = cf
end
for i, v in pairs(Torsoz:children()) do
if v.Name == "StaminaBodyObject" then
v:remove()
end
end
RH.Part0 = nil
LH.Part0 = nil
RS.Part0 = nil
LS.Part0 = nil
Joint1.Part0 = Torsoz
Joint1.Part1 = RL
Joint1.C0 = CFrame.new(0.5,-1,0)
Joint1.C1 = CFrame.new(0,1,0)
Joint2.Part0 = Torsoz
Joint2.Part1 = LL
Joint2.C0 = CFrame.new(-0.5,-1,0)
Joint2.C1 = CFrame.new(0,1,0)
Joint3.Part0 = Torsoz
Joint3.Part1 = RA
Joint3.C0 = CFrame.new(1.5,0.5,0)
Joint3.C1 = CFrame.new(0,0.5,0)
Joint4.Part0 = Torsoz
Joint4.Part1 = LA
Joint4.C0 = CFrame.new(-1.5,0.5,0)
Joint4.C1 = CFrame.new(0,0.5,0)
Joint5.Part0 = Torsoz
Joint5.Part1 = H
Joint5.C0 = CFrame.new(0,1,0)
Joint5.C1 = CFrame.new(0,-0.5,0)
Sitting = false
Diving = false
Standing = true
Action = "Standing"
end
 
--------------------------------------- Dive ----------------------------------
 
function Dive()
stamina = stamina - 10
flow.Value = flow.Value + 10
if flow.Value > 100 then
flow.Value = 100
end
Standing = false
local dir = Vector3.new(Torsoz.CFrame.lookVector.x,0,Torsoz.CFrame.lookVector.z)
GravPoint = 18
DivingDir = dir
local cf = CFrame.new(Torsoz.Position, dir+Vector3.new(0,Torsoz.Position.y,0))
DivingCF = cf
DivingDir = dir
Hu.PlatformStand = true
local bv = Instance.new("BodyVelocity", Torsoz)
bv.Name = "StaminaBodyObject"
bv.maxForce = Vector3.new(1/0,1/0,1/0)
bv.velocity = Vector3.new(DivingDir.x*24,GravPoint,DivingDir.z*24)
DivingBV = bv
local bg = Instance.new("BodyGyro", Torsoz)
bg.Name = "StaminaBodyObject"
bg.maxTorque = Vector3.new(1/0,1/0,1/0)
bg.cframe = CFrame.new(Torsoz.Position, Torsoz.Position+bv.velocity) * CFrame.Angles(-math.pi/2,0,0)
bg.D = 100
DivingBG = bg
 
local joint = Joint3
joint.C1 = CFrame.new(0,0.5,0)
local joint2 = Joint4
joint2.C1 = CFrame.new(0,0.5,0)
local joint3 = Joint1
joint3.C1 = CFrame.new(0,1,0)
local joint4 = Joint2
joint4.C1 = CFrame.new(0,1,0)
 
local joint5 = Joint5
 
Diving = true
Action = "Diving"
 
for i = 1, 8 do
SetWeld(joint,i,8, Vector3.new(1.5,0.5,0), NV, Vector3.new(1.45,0.5,0.1), Vector3.new(-0.2,-math.pi/9,math.pi/13))
SetWeld(joint2,i,8, Vector3.new(-1.5,0.5,0), NV, Vector3.new(-1.45,0.5,0.1), Vector3.new(-0.2,math.pi/9,-math.pi/13))
SetWeld(joint3,i,8, Vector3.new(0.5,-1,0), NV, Vector3.new(0.5,-1,0.03), Vector3.new(-0.2,-math.pi/10,math.pi/14))
SetWeld(joint4,i,8, Vector3.new(-0.5,-1,0), NV, Vector3.new(-0.5,-1,0.03), Vector3.new(-0.2,math.pi/10,-math.pi/14))
SetWeld(joint5,i,8, Vector3.new(0,1,0), NV, Vector3.new(0,1,0), Vector3.new(0.45,0,0))
wait(0.025)
end
 
local counter = 0
while Diving == true do
counter = counter + 1
bg.Parent = Torsoz
local hitz, enz = RAY(Torsoz.Position, bv.velocity.unit*4.6)
if hitz ~= nil and hitz.CanCollide == true then
local hitz2, enz2 = RAY(Torsoz.Position, Vector3.new(0,-4,0))
if hitz2 ~= nil then
Diving = "Rolling"
Action = "DiveRolling"
else
Torsoz.CFrame = Torsoz.CFrame * CFrame.new(0,-0.3,0)
Torsoz.Velocity = NV
flow.Value = 0
break
end
end
if counter > 190 then
break
end
wait(0.02)
end
 
bv.velocity = (dir*20) + Vector3.new(0,-0.5,0)
 
local bgcf = bg.cframe
local haslanded = false
local count = 0
 
while haslanded == false do
bg.cframe = bgcf * CFrame.Angles(-0.3*count,0,0)
local hitz, enz = RAY(Torsoz.Position, ((Torsoz.CFrame*CFrame.new(0,-1,0)).p - Torsoz.CFrame.p).unit*1.6)
if hitz ~= nil and hitz.CanCollide == true then
haslanded = true
end
local hitz2, enz2 = RAY(Torsoz.Position, Vector3.new(0,-3.8,0))
if hitz2 == nil then
Torsoz.Velocity = NV
break
elseif haslanded == true then
local bp = Instance.new("BodyPosition", Torsoz)
bp.Name = "StaminaJumpFix"
bp.maxForce = Vector3.new(0,1/0,0)
bp.P = 7000
bp.position = enz2 + Vector3.new(0,2.8,0)
game:service("Debris"):AddItem(bp, 0.3)
else
bv.velocity = (dir*20) + Vector3.new(0,-(Torsoz.Position - enz2).magnitude*3,0)
 
end
count = count + 1
if count <= 6 then
local i = count
local j1,j1a = GetWeld(joint)
local j2,j2a = GetWeld(joint2)
local j3,j3a = GetWeld(joint3)
local j4,j4a = GetWeld(joint4)
local j5,j5a = GetWeld(joint5)
SetWeld(joint,i,6, j1,j1a, Vector3.new(1.35,0.5,-0.2), Vector3.new(math.pi/2.6,0,-math.pi/5.8))
SetWeld(joint2,i,6, j2,j2a, Vector3.new(-1.35,0.5,-0.2), Vector3.new(math.pi/2.6,0,math.pi/5.8))
SetWeld(joint3,i,6, j3,j3a, Vector3.new(0.51,0.4,-0.6), Vector3.new(-0.1,0,0.05))
SetWeld(joint4,i,6, j4,j4a, Vector3.new(-0.51,0.4,-0.6), Vector3.new(-0.1,0,-0.05))
SetWeld(joint5,i,6, j5,j5a, Vector3.new(0,1,0), Vector3.new(-0.4,0,0))
elseif count >= 50 then
break
end
wait(0.02)
end
 
Torsoz.Velocity = NV
 
Stand()
DivingCooldown = 9
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
 
function HWallRun(part, pos, side)
if (part.className == "Part" and part.Shape == Enum.PartType.Block) or part.className ~= "Part" then
flow.Value = flow.Value + 9
Standing = false
HWallRunning = true
Action = "HWallRunning"
GravPoint = 10
HWRLastPart = part
local dir, dirc = FindSurface(part, pos)
towall = -dir
dir = (CFrame.new(NV, dir) * CFrame.Angles(0,side,0)).lookVector
 
local bv = Instance.new("BodyVelocity", Torsoz)
bv.Name = "StaminaBodyObject"
bv.maxForce = Vector3.new(1/0,1/0,1/0)
bv.P = 9000
bv.velocity = (dir*(sprint-0.5)) + Vector3.new(0,GravPoint,0)
local bg = Instance.new("BodyGyro", Torsoz)
bg.Name = "StaminaBodyObject"
bg.maxTorque = Vector3.new(1/0,1/0,1/0)
bg.cframe = CFrame.new(Torsoz.Position+(towall*-2), Torsoz.Position) * CFrame.Angles(0,-side,-side/4.2)
bg.D = 100
 
local sid = Instance.new("Snap")
 
local joint1 = Joint3
if side == -math.pi/2 then
SetWeld(joint1,1,1, NV,NV, Vector3.new(1.5,0.5,0), Vector3.new(math.pi/1.3,0.1,math.pi/2.5))
else
sid = joint1
SetWeld(joint1,1,1, NV,NV, Vector3.new(1.4,0.6,0), Vector3.new(-math.pi/12,0,math.pi/7))
end
local j1c0 = joint1.C0
 
local joint2 = Joint4
if side == math.pi/2 then
SetWeld(joint2,1,1, NV,NV, Vector3.new(-1.5,0.5,0), Vector3.new(math.pi/1.3,-0.1,-math.pi/2.5))
else
sid = joint2
SetWeld(joint2,1,1, NV,NV, Vector3.new(-1.4,0.6,0), Vector3.new(-math.pi/12,0,-math.pi/7))
end
local j2c0 = joint2.C0
 
local joint3 = Joint1
joint3.C1 = CFrame.new(0,1,0)
if side == -math.pi/2 then
SetWeld(joint3,1,1, NV,NV, Vector3.new(0.5,-0.38,-0.3), Vector3.new(0,math.pi/2,0.14))
else
SetWeld(joint3,1,1, NV,NV, Vector3.new(0.5,-0.8,-0.2), Vector3.new(0,math.pi/2,0.2))
end
 
local joint4 = Joint2
joint4.C1 = CFrame.new(0,1,0)
if side == -math.pi/2 then
SetWeld(joint4,1,1, NV,NV, Vector3.new(-0.5,-0.8,-0.2), Vector3.new(0,0,0.2))
else
SetWeld(joint4,1,1, NV,NV, Vector3.new(-0.5,-0.38,-0.3), Vector3.new(0,0,0.14))
end
 
local joint5 = Joint5
SetWeld(joint5,1,1,NV,NV,Vector3.new(0,0.9,0),Vector3.new(0,0,side/7))
 
Torsoz.CFrame = CFrame.new(pos+(towall*-2), pos) * CFrame.Angles(0,-side,-side/2.2)
bg.cframe = CFrame.new(pos+(towall*-2), pos) * CFrame.Angles(0,-side,-side/2.2)
 
local aniangle = 0
local aniplus = true
local aniangle2 = 0
local aniplus2 = true
 
local prevpart = part
HWRLastPart = part
while HWallRunning == true do
 
if aniangle > math.pi then
aniplus = false
elseif aniangle < -math.pi then
aniplus = true  
end
if aniplus == true then
aniangle = aniangle + 0.95
elseif aniplus == false then
aniangle = aniangle - 0.95
end
 
if aniangle2 > math.pi then
aniplus2 = false
elseif aniangle2 < -math.pi then
aniplus2 = true  
end
if aniplus2 == true then
aniangle2 = aniangle2 + 0.23
elseif aniplus2 == false then
aniangle2 = aniangle2 - 0.23
end
 
Hu.PlatformStand = true
local hitz, enz = RAY(Torsoz.Position, Vector3.new(0,-3,0))
local hitz2, enz2 = RAY(Torsoz.Position, towall*3.4)
 
--- if player ends wall run on ground
if hitz ~= nil and hitz.CanCollide == true then
bg.cframe = CFrame.new(enz2+(towall*-2), enz2) * CFrame.Angles(0,-side,0)
local offset = (bg.cframe.p.y+enz2.y) - bg.cframe.p.y
Torsoz.CFrame = CFrame.new(Vector3.new(bg.cframe.p.x,offset,bg.cframe.p.z), enz2) * CFrame.Angles(0,-side,0)
Torsoz.Velocity = NV
break
end
 
---- if new wall found --------
if hitz2 ~= nil and hitz2.CanCollide == true then
if hitz2 ~= prevpart then
local direct = CFrame.new(Torsoz.Position, Torsoz.Position+dir) * CFrame.Angles(0,side,0)
local hitz3, enz3 = RAY(Torsoz.Position, (direct * CFrame.Angles(0,-side/2.3,0)).lookVector*4)
if hitz3 ~= nil then
Torsoz.CFrame = CFrame.new(enz2+(towall*-2), enz2) * CFrame.Angles(0,-side*1.1,-side/2.2)
bg.cframe = CFrame.new(enz2+(towall*-2), enz2) * CFrame.Angles(0,-side*1.1,-side/2.2)
dir, dirc = FindSurface(hitz2, enz2)
towall = -dir
dir = (CFrame.new(NV, dir) * CFrame.Angles(0,side,0)).lookVector
prevpart = hitz2
HWRLastPart = hitz2
else
---- if player fails to find new wall to run on
Torsoz.CFrame = CFrame.new(Torsoz.Position, Torsoz.Position+dir)
bg.cframe = CFrame.new(Torsoz.Position, Torsoz.Position+dir)
Torsoz.Velocity = NV
HWRCooldown = 8
break
end
end
--- continue to wall run
Torsoz.CFrame = CFrame.new(enz2+(towall*-2), enz2) * CFrame.Angles(0,-side,-side/2.2)
bg.cframe = CFrame.new(enz2+(towall*-2), enz2) * CFrame.Angles(0,-side,-side/2.2)
else
---- if player ends wall run at end of wall
Torsoz.CFrame = CFrame.new(Torsoz.Position, Torsoz.Position+dir)
bg.cframe = CFrame.new(Torsoz.Position, Torsoz.Position+dir)
Torsoz.Velocity = NV
HWRCooldown = 8
break
end
 
local hitz3, enz3 = RAY(Torsoz.Position, Torsoz.CFrame.lookVector*2)
if hitz3 ~= nil and hitz3.CanCollide == true then
Torsoz.CFrame = CFrame.new(Torsoz.Position, Torsoz.Position+dir)
bg.cframe = CFrame.new(Torsoz.Position, Torsoz.Position+dir)
Torsoz.Velocity = NV
HWRCooldown = 8
break
end
 
bv.Parent = Torsoz
bv.velocity = (dir*(sprint-0.5)) + Vector3.new(0,GravPoint,0)
bg.cframe = bg.cframe * CFrame.Angles(aniangle/80,aniangle/80,0)
Torsoz.CFrame = Torsoz.CFrame * CFrame.Angles(aniangle/80,aniangle/80,0)
local j3,j3a = GetWeld(joint3)
local j4,j4a = GetWeld(joint4)
SetWeld(joint3,1,1, j3,j3a, j3,Vector3.new(-0.2+(aniangle/4),0,0))
SetWeld(joint4,1,1, j4,j4a, j4,Vector3.new(-0.2+(-aniangle/4),0,0))
if side == math.pi/2 then
local j1,j1a = GetWeld(joint1)
SetWeld(joint1,1,1, j1,j1a, j1, Vector3.new(0,0,0.8+(aniangle2/14)))
else
local j2,j2a = GetWeld(joint2)
SetWeld(joint2,1,1, j2,j2a, j2, Vector3.new(0,0,-0.8-(aniangle2/14)))
end
 
wait(0.025)
if GravPoint < -100 then
bg.cframe = CFrame.new(enz2+(towall*-2), enz2) * CFrame.Angles(0,-side,0)
local offset = math.abs((bg.cframe.p.y+enz2.y) - bg.cframe.p.y)
Torsoz.CFrame = CFrame.new(Vector3.new(bg.cframe.p.x,offset,bg.cframe.p.z), enz2) * CFrame.Angles(0,-side,0)
break
end
 
end
 
if HWallRunning == "Jumping" then
HWRCooldown = 6
joint1.C1 = CFrame.new(0,0.5,0)
 
joint2.C1 = CFrame.new(0,0.5,0)
if side == -math.pi/2 then
joint2.C0 = CFrame.new(-1.35,0.5,0) * CFrame.Angles(0,side/2.4,-math.pi/3)
else
joint2.C0 = CFrame.new(-1.35,0.5,0) * CFrame.Angles(0,side/2.4,-math.pi/4)
end
 
joint3.C1 = CFrame.new(0,1,0)
if side == -math.pi/2 then
joint3.C0 = CFrame.new(0.5,-0.8,0) * CFrame.Angles(0,math.pi+(side/2.4),-math.pi/4)
else
joint3.C0 = CFrame.new(0.5,-0.8,0) * CFrame.Angles(0,(side/2.4),math.pi/4)
end
joint4.MaxVelocity = 10
joint4.DesiredAngle = 0
joint4.C1 = CFrame.new(0,1,0)
if side == -math.pi/2 then
joint4.C0 = CFrame.new(-0.5,-0.8,0) * CFrame.Angles(0,math.pi+(side/2.4),math.pi/4)
else
joint4.C0 = CFrame.new(-0.5,-0.8,0) * CFrame.Angles(0,(side/2.4),-math.pi/4)
end
 
local joint5 = Joint5
joint5.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(0,side/2.4,0)
joint5.C0 = CFrame.new(0,1,0)
 
local j1,j1a = GetWeld(joint1)
local j2,j2a = GetWeld(joint2)
local j3,j3a = GetWeld(joint3)
local j4,j4a = GetWeld(joint4)
local j5,j5a = GetWeld(joint5)
 
GravPoint = 26
local collidecount = 0
local bgangle = side/2
local count = 1
local dir2 = (CFrame.new(NV, dir) * CFrame.Angles(0,-side/2.4,0)).lookVector
HWRDir = dir2
bv.velocity = (dir2*(sprint+5)) + Vector3.new(0,GravPoint,0)
while HWallRunning == "Jumping" do
local hitz, enz = RAY(Torsoz.Position, Vector3.new(0,-4,0))
local hitz2, enz2 = RAY(Torsoz.Position, dir2*1.4)
if hitz ~= nil and hitz.CanCollide == true then
local offset = math.abs(enz.y - Torsoz.CFrame.p.y)
Torsoz.CFrame = CFrame.new(enz+Vector3.new(0,2.9,0), enz+Vector3.new(0,2.9,0)+dir2)
Torsoz.Velocity = NV
break
end
 
if hitz2 ~= nil and hitz2.CanCollide == true then
collidecount = collidecount + 1
if collidecount == 4 then
Torsoz.CFrame = CFrame.new(Torsoz.Position, Torsoz.Position+dir2) * CFrame.new(0,0,0.4)
Torsoz.Velocity = Vector3.new(0,Torsoz.Velocity.y,0)
HWRCooldown = 5
VWRCooldown = 5
wait(0.02)
break
end
end
 
if side/2 > 0 then
if bgangle > 0.2 then
bgangle = bgangle - 0.055
end
else
if bgangle < -0.2 then
bgangle = bgangle + 0.055
end
end
 
if count <= 5 then
if side == -math.pi/2 then
SetWeld(joint1,count,5, j1,j1a, Vector3.new(1.35,0.5,0), Vector3.new(0,side/2.4,math.pi/4))
SetWeld(joint2,count,5, j2,j2a, Vector3.new(-1.35,0.5,0), Vector3.new(0,side/2.4,-math.pi/3))
SetWeld(joint3,count,5, j3,j3a, Vector3.new(0.5,-0.8,0), Vector3.new(0,-side/1.7,0))
joint3.C0 = joint3.C0 * CFrame.Angles((-math.pi/4)/5*count,0,0)
SetWeld(joint4,count,5, j4,j4a, Vector3.new(-0.5,-0.8,0), Vector3.new(0,-side/1.7,0))
joint4.C0 = joint4.C0 * CFrame.Angles((math.pi/4)/5*count,0,0)
else
SetWeld(joint1,count,5, j1,j1a, Vector3.new(1.35,0.5,0), Vector3.new(0,side/2.4,math.pi/3))
SetWeld(joint2,count,5, j2,j2a, Vector3.new(-1.35,0.5,0), Vector3.new(0,side/2.4,-math.pi/4))
SetWeld(joint3,count,5, j3,j3a, Vector3.new(0.5,-0.8,0), Vector3.new(0,-side/1.7,0))
joint3.C0 = joint3.C0 * CFrame.Angles((math.pi/4)/5*count,0,0)
SetWeld(joint4,count,5, j4,j4a, Vector3.new(-0.5,-0.8,0), Vector3.new(0,-side/1.7,0))
joint4.C0 = joint4.C0 * CFrame.Angles((-math.pi/4)/5*count,0,0)
end
 
count = count + 1
end
 
bg.Parent = Torsoz
bg.cframe = CFrame.new(NV, dir) * CFrame.Angles(0,side/15,-bgangle)
bv.velocity = (dir2*(sprint+5)) + Vector3.new(0,GravPoint,0)
if collidecount ~= 0 then
bv.velocity = Vector3.new(0,bv.velocity.y,0)
end
if GravPoint < -120 then
break
end
wait(0.025)
end
end
 
Hu.PlatformStand = false
bv:remove()
 
HWRGravDrop = false
Stand()
HWallRunning = false
end
end
 
function VWR(part, pos)
if (part.className == "Part" and part.Shape == Enum.PartType.Block) or part.className ~= "Part" then
print("VWR Activated")
flow.Value = flow.Value + 9
Standing = false
VWallRunning = true
Action = "VWallRunning"
GravPoint = 0
local percent = 1
VWRLastPart = part
local dir, dirc = FindSurface(part, pos)
towall = -dir
dir = (CFrame.new(NV, -dir) * CFrame.Angles(math.pi/2,0,0)).lookVector
--[[
local p = P:Clone()
p.Parent = char
p.Size = Vector3.new(2,2,2)
p.BrickColor = BrickColor.new("Lime green")
p.CanCollide = false
p.CFrame = part.CFrame * CFrame.new(dirc*5)
p.Transparency = 0.3
]]
local bv = Instance.new("BodyVelocity", Torsoz)
bv.Name = "StaminaBodyObject"
bv.maxForce = Vector3.new(1/0,1/0,1/0)
bv.P = 9000
bv.velocity = (dir*(sprint-1))*percent
 
local bg = Instance.new("BodyGyro", Torsoz)
bg.Name = "StaminaBodyObject"
bg.maxTorque = Vector3.new(1/0,1/0,1/0)
bg.D = 100
local posi = pos + (-towall*1.8)
bg.cframe = CFrame.new(posi, posi+towall) * CFrame.Angles((math.pi/5),0,0)
Torsoz.CFrame = CFrame.new(posi, posi+towall) * CFrame.Angles((math.pi/5),0,0)
 
local joint1 = Joint3
SetWeld(joint1,1,1, NV,NV, Vector3.new(1.4,0.45,-0.1), Vector3.new(-math.pi/3.2,0,math.pi/8))
 
local joint2 = Joint4
SetWeld(joint2,1,1, NV,NV, Vector3.new(-1.4,0.45,-0.1), Vector3.new(-math.pi/3.2,0,-math.pi/8))
 
local joint3 = Joint1
SetWeld(joint3,1,1, NV,NV, Vector3.new(0.48,-0.6,-0.1), Vector3.new(0,math.pi/2,0))
joint3.C1 = CFrame.new(0,0.7,0.2) * CFrame.Angles(0,math.pi/2,0)
 
local joint4 = Joint2
SetWeld(joint4,1,1, NV,NV, Vector3.new(-0.48,-0.6,-0.1), Vector3.new(0,math.pi/2,0))
joint4.C1 = CFrame.new(0,0.7,0.2) * CFrame.Angles(0,math.pi/2,0)
 
local joint5 = Joint5
SetWeld(joint5,1,1, NV,NV, Vector3.new(0,1,0), Vector3.new(math.pi/20,0,0))
 
local aniangle = 0
local aniplus = true
 
while VWallRunning == true do
local hitz, enz = RAY(Torsoz.Position, towall*2.1)
local hitz2, enz2 = RAY(Torsoz.Position, (CFrame.new(NV,towall)*CFrame.Angles(math.pi/2,0,0)).lookVector*2.4)
 
if aniangle > math.pi then
aniplus = false
elseif aniangle < -math.pi then
aniplus = true  
end
if aniplus == true then
aniangle = aniangle + (1.3*(percent+0.2))
elseif aniplus == false then
aniangle = aniangle - (1.3*(percent+0.2))
end
 
bv.velocity = (dir*(sprint-1))*percent
if VWRLeft == true then
bv.velocity = bv.velocity + ((CFrame.new(NV, towall) * CFrame.Angles(0,math.pi/2,0)).lookVector * (11*percent+5))
end
if VWRRight == true then
bv.velocity = bv.velocity - ((CFrame.new(NV, towall) * CFrame.Angles(0,math.pi/2,0)).lookVector * (11*percent+5))
end
 
bg.cframe = CFrame.new(posi, posi+towall) * CFrame.Angles((math.pi/5),0,0) * CFrame.Angles(0,aniangle/60,0)
 
SetWeld(joint1,1,1, NV,NV, Vector3.new(1.4,0.45,-0.1), Vector3.new(-math.pi/3.2,aniangle/52,(math.pi/8)+(aniangle/30)))
SetWeld(joint2,1,1, NV,NV, Vector3.new(-1.4,0.45,-0.1), Vector3.new(-math.pi/3.2,aniangle/52,(-math.pi/8)+(-aniangle/30)))
SetWeld(joint3,1,1, NV,NV, Vector3.new(0.51,-0.75,-(aniangle/30)), Vector3.new(0,math.pi/2,(aniangle/8)-0.3))
SetWeld(joint4,1,1, NV,NV, Vector3.new(-0.51,-0.75,(aniangle/30)), Vector3.new(0,math.pi/2,(-aniangle/8)-0.3))
 
if hitz == nil then
local lv = Torsoz.Position + (Torsoz.CFrame.lookVector*100)
Torsoz.CFrame = CFrame.new(Torsoz.Position, Vector3.new(lv.x,Torsoz.Position.y,lv.z))
break
end
 
if hitz2 ~= nil then
percent = 0
VWallRunning = "Falling"
Action = "VWRFalling"
GravPoint = -7
break
end
 
wait(0.02)
percent = percent - 0.028
if percent <= 0.15 then
VWallRunning = "Falling"
Action = "VWRFalling"
end
end
 
-------------------------- Falling from VWR ------------------------------
if VWallRunning == "Falling" then
GravPoint = GravPoint - 1
local dirpos = (-towall *5) + Vector3.new(0,GravPoint,0)
bv.velocity = CFrame.new(NV, dirpos).lookVector * dirpos.magnitude
 
local j1,j1a = GetWeld(joint1)
local j2,j2a = GetWeld(joint2)
local j3,j3a = GetWeld(joint3)
local j4,j4a = GetWeld(joint4)
local j5,j5a = GetWeld(joint5)
 
local counter = 0
while VWallRunning == "Falling" do
counter = counter + 1
local hitz, enz = RAY(H.Position, Vector3.new(0,-2.4,0))
 
dirpos = (-towall *5) + Vector3.new(0,GravPoint,0)
bv.velocity = CFrame.new(NV, dirpos).lookVector * dirpos.magnitude
if VWRLeft == true then
bv.velocity = bv.velocity + ((CFrame.new(NV, towall) * CFrame.Angles(0,math.pi/2,0)).lookVector * 9)
end
if VWRRight == true then
bv.velocity = bv.velocity - ((CFrame.new(NV, towall) * CFrame.Angles(0,math.pi/2,0)).lookVector * 9)
end
bg.cframe = CFrame.new(NV, (-towall*30) + Vector3.new(0,GravPoint,0)) * CFrame.Angles(-math.pi/2.55,math.pi,0)
 
if counter <= 35 then
SetWeld(joint1,counter,35, j1,j1a, Vector3.new(1.4,0.45,-0.1), Vector3.new(math.pi/9,0,math.pi/9))
SetWeld(joint2,counter,35, j2,j2a, Vector3.new(-1.4,0.45,-0.1), Vector3.new(math.pi/9,0,-math.pi/9))
SetWeld(joint3,counter,35, j3,j3a, Vector3.new(0.5,-0.75,0), Vector3.new(0,math.pi/2,math.pi/9))
joint3.C1 = CFrame.new(0,0.7 + (0.3/35*counter),0.2 - (0.2/35*counter)) * CFrame.Angles(0,math.pi/2,0)
SetWeld(joint4,counter,35, j4,j4a, Vector3.new(-0.5,-0.75,0), Vector3.new(0,math.pi/2,math.pi/9))
joint4.C1 = CFrame.new(0,0.7 + (0.3/35*counter),0.2 - (0.2/35*counter)) * CFrame.Angles(0,math.pi/2,0)
SetWeld(joint5,counter,35, j5,j5a, Vector3.new(0,1,0), Vector3.new(-math.pi/6,0,0))
end
 
if hitz ~= nil then
bv:remove()
Torsoz.CFrame = CFrame.new(enz+Vector3.new(0,2,0), (enz+Vector3.new(0,2,0)) + ((-towall*25) + Vector3.new(0,GravPoint,0))) * CFrame.Angles(-math.pi/2.55,math.pi,0)
Torsoz.Velocity = NV
Torsoz.RotVelocity = NV
local bp = Instance.new("BodyPosition", Torsoz)
bp.maxForce = Vector3.new(1/0,1/0,1/0)
bp.position = Torsoz.CFrame.p
game:service("Debris"):AddItem(bp, 0.16)
flow.Value = 0
break
end
 
if GravPoint > - 180 then
GravPoint = GravPoint - 1.9
end
if counter > 200 then
break
end
wait(0.02)
end
 
local bp = Instance.new("BodyPosition")
 
local counter2 = counter
local bgangleplus = 0
 
local j1,j1a = GetWeld(joint1)
local j2,j2a = GetWeld(joint2)
local j3,j3a = GetWeld(joint3)
local j4,j4a = GetWeld(joint4)
local j5,j5a = GetWeld(joint5)
 
local landingpos
 
while VWallRunning == "BackflipFromFall" do
counter2 = counter2 + 1
local hitz, enz = RAY(H.Position+Vector3.new(0,2,0), Vector3.new(0,-4.4,0))
 
if counter2 - counter < 13 then
bgangleplus = bgangleplus - ((math.pi*1.1)/13)
end
if counter2 - counter <= 13 then
SetWeld(joint1,counter2-counter,13, j1,j1a, Vector3.new(1.4,0.5,0.1), Vector3.new(math.pi/2,0.1,math.pi/2))
SetWeld(joint2,counter2-counter,13, j2,j2a, Vector3.new(-1.4,0.5,0.1), Vector3.new(math.pi/2,-0.1,-math.pi/2))
SetWeld(joint3,counter2-counter,13, j3,j3a, Vector3.new(0.52,-0.3,-0.65), Vector3.new(0,math.pi/2,0))
SetWeld(joint4,counter2-counter,13, j4,j4a, Vector3.new(-0.51,-0.9,-0.05), Vector3.new(0,math.pi/2,0))
SetWeld(joint5,counter2-counter,13, j5,j5a, Vector3.new(0,0.9,0), Vector3.new(-math.pi/7,0,0))
end
 
dirpos = (-towall *5) + Vector3.new(0,GravPoint,0)
--bv.velocity = Vector3.new(0,-2,0)
bv.velocity = CFrame.new(NV, dirpos).lookVector * dirpos.magnitude
if VWRLeft == true then
bv.velocity = bv.velocity + ((CFrame.new(NV, towall) * CFrame.Angles(0,math.pi/2,0)).lookVector * 9)
end
if VWRRight == true then
bv.velocity = bv.velocity - ((CFrame.new(NV, towall) * CFrame.Angles(0,math.pi/2,0)).lookVector * 9)
end
bg.cframe = CFrame.new(NV, (-towall*30) + Vector3.new(0,GravPoint,0)) * CFrame.Angles((-math.pi/2.4) + bgangleplus,math.pi,0)
 
if hitz ~= nil then
bv:remove()
landingpos = enz - (towall*1.3)
if counter2 - counter > 8 then
bp = Instance.new("BodyPosition", Torsoz)
bp.maxForce = Vector3.new(1/0,1/0,1/0)
bp.position = enz+Vector3.new(0,2.4,0) + (-towall*1)
VWallRunning = "LandingFall"
else
Torsoz.CFrame = bg.cframe + (enz+Vector3.new(0,2.3,0))
Torsoz.Velocity = NV
Torsoz.RotVelocity = NV
local bp = Instance.new("BodyPosition", Torsoz)
bp.maxForce = Vector3.new(1/0,1/0,1/0)
bp.position = Torsoz.CFrame.p
game:service("Debris"):AddItem(bp, 0.14)
flow.Value = 0
end
break
end
 
if GravPoint > - 180 then
GravPoint = GravPoint - 1.9
end
if counter2 > 200 then
break
end
wait(0.02)
end
 
if VWallRunning == "LandingFall" then
print("Landing")
 
joint3.C1 = CFrame.new(0,1,0) * CFrame.Angles(0,math.pi/2,0)
joint4.C1 = CFrame.new(0,1,0) * CFrame.Angles(0,math.pi/2,0)
local j1,j1a = GetWeld(joint1)
local j2,j2a = GetWeld(joint2)
local j3,j3a = GetWeld(joint3)
local j4,j4a = GetWeld(joint4)
local j5,j5a = GetWeld(joint5)
 
local a
local mesh
if GravPoint < -70 then
a = P:Clone()
a.Parent = Torsoz
a.Name = "AirLandingEffect"
a.BrickColor = BrickColor.new("Medium stone grey")
a.Transparency = 0.3
a.CFrame = CFrame.new(landingpos+Vector3.new(0,0.4,0))
mesh = Instance.new("SpecialMesh", a)
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
mesh.Scale = Vector3.new(0,0,0)
end
 
local bgcf = CFrame.new(NV, Vector3.new(towall.x,0,towall.z))
bg.cframe = bgcf * CFrame.Angles(-math.pi/7,0,0)
local bgval = math.pi/7/2
 
for i = 1, 6 do
Hu.PlatformStand = true
SetWeld(joint1,i,6, j1,j1a, Vector3.new(1.2,0.5,0.2), Vector3.new(math.pi/2,0.5,math.pi/1.2))
SetWeld(joint2,i,6, j2,j2a, Vector3.new(-1.2,0.5,0.2), Vector3.new(math.pi/2,-0.5,-math.pi/1.2))
SetWeld(joint3,i,6, j3,j3a, Vector3.new(0.51,-0.3,-0.8), Vector3.new(0,math.pi/2,-math.pi/7))
SetWeld(joint4,i,6, j4,j4a, Vector3.new(-0.51,-0.8,-0.7), Vector3.new(0,math.pi/2,-math.pi/3))
SetWeld(joint5,i,6, j5,j5a, Vector3.new(0,0.85,0), Vector3.new(-math.pi/8,0,0))
bp.position = bp.position + Vector3.new(0,-0.07,0)
bg.cframe = bgcf * CFrame.Angles((-bgval*2) + (bgval/6*i),0,0)
Torsoz.CFrame = bg.cframe + bp.position
if a ~= nil then
mesh.Scale = mesh.Scale + Vector3.new(1.3,0.35,1.3)
a.Transparency = 0.3 + (0.7/6*i)
end
wait(0.02)
end
if a ~= nil then
a:remove()
end
local j1,j1a = GetWeld(joint1)
local j2,j2a = GetWeld(joint2)
local j3,j3a = GetWeld(joint3)
local j4,j4a = GetWeld(joint4)
local j5,j5a = GetWeld(joint5)
for i = 1, 6 do
Hu.PlatformStand = true
SetWeld(joint1,i,6, j1,j1a, Vector3.new(1.5,0.5,0), Vector3.new(0,0,0))
SetWeld(joint2,i,6, j2,j2a, Vector3.new(-1.5,0.5,0), Vector3.new(0,0,0))
SetWeld(joint3,i,6, j3,j3a, Vector3.new(0.5,-1,0), Vector3.new(0,math.pi/2,0))
SetWeld(joint4,i,6, j4,j4a, Vector3.new(-0.5,-1,0), Vector3.new(0,math.pi/2,0))
SetWeld(joint5,i,6, j5,j5a, Vector3.new(0,1,0), Vector3.new(0,0,0))
bp.position = bp.position + Vector3.new(0,0.1,0)
bg.cframe = bgcf * CFrame.Angles(-bgval + (bgval/6*i),0,0)
Torsoz.CFrame = bg.cframe + bp.position
wait(0.02)
end
 
bp:remove()
end
 
end
 
bv:remove()
bg:remove()
VWallRunning = false
Stand()
end
end
 
function Slide(pos)
flow.Value = flow.Value + 6
Action = "Sliding"
Sliding = true
GravPoint = Torsoz.Velocity.y
local spd = Vector3.new(Torsoz.Velocity.x,0,Torsoz.Velocity.z).magnitude + 10
local dir = Vector3.new(Torsoz.Velocity.x,0,Torsoz.Velocity.z).unit
 
local bv = Instance.new("BodyVelocity", Torsoz)
bv.maxForce = Vector3.new(1/0,1/0,1/0)
bv.velocity = dir*spd
local bg = Instance.new("BodyGyro", Torsoz)
bg.maxTorque = Vector3.new(1/0,1/0,1/0)
bg.cframe = CFrame.new(NV, dir) * CFrame.Angles(math.pi/2.2,0.24,0)
 
local joint1 = Joint1
local joint2 = Joint2
local joint3 = Joint3
local joint4 = Joint4
local joint5 = Joint5
local j1,j1a = GetWeld(joint1)
local j2,j2a = GetWeld(joint2)
 
SetWeld(joint1,1,1, NV,NV, Vector3.new(j1.x,j1.y,j1.z), Vector3.new(j1a.x,math.pi/2,j1a.z))
joint1.C1 = CFrame.new(0,1,0) * CFrame.Angles(0,math.pi/2,0)
SetWeld(joint2,1,1, NV,NV, Vector3.new(j2.x,j2.y,j2.z), Vector3.new(j2a.x,math.pi/2,j2a.z))
joint2.C1 = CFrame.new(0,1,0) * CFrame.Angles(0,math.pi/2,0)
 
local j1,j1a = GetWeld(joint1)
local j2,j2a = GetWeld(joint2)
local j3,j3a = GetWeld(joint3)
local j4,j4a = GetWeld(joint4)
local j5,j5a = GetWeld(joint5)
 
local count = 0
local lastpos
 
while Sliding == true do
count = count + 1
Hu.PlatformStand = true
local hitz1, enz1 = RAY(Torsoz.Position+Vector3.new(0,0.03,0), dir *2.5)
local hitz2, enz2 = RAY(Torsoz.Position-Vector3.new(0,0.2,0), dir *2.5)
local ghitz, genz = RAY(Torsoz.Position, Vector3.new(0,-2.6,0))
bv.velocity = dir*spd + Vector3.new(0,GravPoint,0)
 
if count <= 5 then
SetWeld(joint1,count,5, j1,j1a, Vector3.new(0.5,-0.8,-0.15), Vector3.new(0,(math.pi/2)+0.1,-0.4))
SetWeld(joint2,count,5, j2,j2a, Vector3.new(-0.5,-1,0), Vector3.new(0,(math.pi/2)-0.4,0))
SetWeld(joint3,count,5, j3,j3a, Vector3.new(1.5,0.5,0), Vector3.new(-0.7,-0.24,math.pi/5))
SetWeld(joint4,count,5, j4,j4a, Vector3.new(-1.5,0.5,0), Vector3.new(-0.1,0,-math.pi/1.5))
SetWeld(joint5,count,5, j5,j5a, Vector3.new(0,1,0), Vector3.new(-0.5,-0.2,0))
end
 
if (hitz1 ~= nil and hitz1.CanCollide == true) or (hitz2 ~= nil and  hitz2.CanCollide == true) then
bv:remove()
bg:remove()
Sliding = "HitObject"
end
if ghitz ~= nil then
GravPoint = 0
Torsoz.CFrame = CFrame.new(genz, genz+dir) * CFrame.Angles(math.pi/2.2,0.24,0) + Vector3.new(0,0.7,0)
spd = spd - 0.95
else
if GravPoint > -180 then
GravPoint = GravPoint - 5.6
end
spd = spd - 0.36
end
if spd < 7 then
Sliding = false
end
wait(0.02)
end
 
if Sliding == false then
local j1,j1a = GetWeld(joint1)
local j2,j2a = GetWeld(joint2)
local j3,j3a = GetWeld(joint3)
local j4,j4a = GetWeld(joint4)
local j5,j5a = GetWeld(joint5)
for i = 1, 4 do
SetWeld(joint1,i,4, j1,j1a, Vector3.new(0.5,-1,0), Vector3.new(0,math.pi/2,0))
SetWeld(joint2,i,4, j2,j2a, Vector3.new(-0.5,-1,0), Vector3.new(0,math.pi/2,0))
SetWeld(joint3,i,4, j3,j3a, Vector3.new(1.5,0.5,0), NV)
SetWeld(joint4,i,4, j4,j4a, Vector3.new(-1.5,0.5,0), NV)
SetWeld(joint5,i,4, j5,j5a, Vector3.new(0,1,0), NV)
local hitz, enz = RAY(Torsoz.Position, Vector3.new(0,-2.6,0))
bg.cframe = CFrame.new(NV, dir) * CFrame.Angles((math.pi/2.2) - ((math.pi/2.2)/4*i),0.24 - (0.24/4*i),0)
bv.velocity = dir*spd + Vector3.new(0,GravPoint,0)
 
if hitz ~= nil then
GravPoint = 0
Torsoz.CFrame = CFrame.new(enz, enz+dir) * CFrame.Angles((math.pi/2.2) - ((math.pi/2.2)/4*i),0.24 - (0.24/4*i),0) + Vector3.new(0,0.7+(1.8/4*i),0)
spd = spd - 0.95
else
if GravPoint > -180 then
GravPoint = GravPoint - 5.6
end
spd = spd - 0.36
end
wait(0.02)
end
local hitz, enz = RAY(Torsoz.Position, Vector3.new(0,-2.6,0))
Torsoz.CFrame = CFrame.new(enz, enz+dir) + Vector3.new(0,3,0)
end
bv:remove()
bg:remove()
SlideCooldown = 10
Stand()
end
 
function KD(key)
if pause.Value == false then
if key == string.char(32) then
Space = true
 
local ghitz, genz = RAY(Torsoz.Position, Vector3.new(0,-3.7,0))
local hitz, enz = RAY(Torsoz.Position+Vector3.new(0,1.1,0), Torsoz.CFrame.lookVector*2.3)
local righthitz, rightenz
local lefthitz, leftenz
 
if HWallRunning == false then
righthitz, rightenz = RAY(Torsoz.Position, ((Torsoz.CFrame * CFrame.new(1.5,0,-0.2)).p - Torsoz.CFrame.p).unit*3.9)
lefthitz, leftenz = RAY(Torsoz.Position, ((Torsoz.CFrame * CFrame.new(-1.5,0,-0.2)).p - Torsoz.CFrame.p).unit*3.9)
 
elseif HWallRunning == "Jumping" then
righthitz, rightenz = RAY(Torsoz.Position, ((CFrame.new(Torsoz.Position, Torsoz.Position + HWRDir) * CFrame.new(1.5,0,-0.2)).p - Torsoz.Position).unit*3.9)
lefthitz, leftenz = RAY(Torsoz.Position, ((CFrame.new(Torsoz.Position, Torsoz.Position + HWRDir) * CFrame.new(-1.5,0,-0.2)).p - Torsoz.Position).unit*3.9)
 
end
 
if Action == "Standing" and Shift == true and (hitz == nil or hitz.CanCollide == false) and (righthitz == nil or righthitz.CanCollide == false) and (lefthitz == nil or lefthitz.CanCollide == false) and (ghitz == nil or ghitz.CanCollide == false) and (Torsoz.Velocity.y > 6 and Torsoz.Velocity.y < 50) and DivingCooldown <= 0 then
if stamina >= 10 then
--if Vector3.new(Torsoz.Velocity.x,0,Torsoz.Velocity.z).magnitude > 12 then
Dive()
--end
end
end
 
if hitz == nil and VWallRunning == "Falling" then
VWallRunning = "BackflipFromFall"
end
 
if Shift == true and Torsoz.Velocity.y > -50 and Diving == false and DivingCooldown <= 0 then
local hitz2, enz2 = RAY(Torsoz.Position, Vector3.new(0,-3.5,0))
 
if hitz ~= nil then
if Action == "Standing" and VWRCooldown == 0 then
if hitz2 == nil or hitz2.CanCollide == false then
VWR(hitz, enz)
end
end
end
 
if (HWallRunning == false or (HWallRunning == "Jumping" and (HWRLastPart ~= righthitz or HWRLastPart ~= lefthitz))) and HWRCooldown == 0 and VWallRunning == false then
 
if (hitz == nil or HWallRunning == "Jumping") and ((righthitz ~= nil and righthitz.Parent:findFirstChild("Humanoid") == nil and righthitz.Parent.className ~= "Hat") or (lefthitz ~= nil and lefthitz.Parent:findFirstChild("Humanoid") == nil and lefthitz.Parent.className ~= "Hat")) then
if hitz2 == nil or hitz2.CanCollide == false then
local right = (rightenz - Torsoz.Position).magnitude
local left = (leftenz - Torsoz.Position).magnitude
if right < left then
if HWallRunning == "Jumping" and HWRLastPart ~= righthitz then
HWallRunning = false
while Standing == false do
wait(0.01)
end
print("2nd Right Activated!")
HWallRun(righthitz, rightenz, -math.pi/2)
else
if hitz == nil then
print("Right Activated")
HWallRun(righthitz, rightenz, -math.pi/2)
end
end
elseif left < right then
if HWallRunning == "Jumping" and HWRLastPart ~= lefthitz then
HWallRunning = false
while Standing == false do
wait(0.01)
end
print("2nd Left Activated!")
HWallRun(lefthitz, leftenz, math.pi/2)
else
if hitz == nil then
print("Left Activated")
HWallRun(lefthitz, leftenz, math.pi/2)
end
end
end
end
end
end
 
end
 
if HWallRunning == true then
HWallRunning = "Jumping"
Action = "HWRJumping"
end
 
elseif key == string.char(48) then
Shift = true
elseif key == string.char(50) then
if Action == "Standing" then
Sit()
elseif HWallRunning == true then
HWRGravDrop = true
end
elseif key == string.char(52) then
if Shift == true and Action == "Standing" and SlideCooldown == 0 and Vector3.new(Torsoz.Velocity.x,0,Torsoz.Velocity.z).magnitude > 15 and Torsoz.Velocity.y > -40 then
print("Sliding")
Slide()
end
elseif key == "a" then
VWRLeft = true
elseif key == "d" then
VWRRight = true
end
end
end
 
function KU(key)
if key == string.char(32) then
Space = false
elseif key == string.char(48) then
Shift = false
elseif key == string.char(50) then
if Action == "Sitting" then
Stand()
end
elseif key == string.char(52) then
Sliding = false
elseif key == "a" then
VWRLeft = false
elseif key == "d" then
VWRRight = false
end
end
 
mouse.KeyDown:connect(function(key) KD(key) end)
mouse.KeyUp:connect(function(key) KU(key) end)
 
Joint1 = Instance.new("Snap", Torsoz)
GetWeld(Joint1)
Joint2 = Instance.new("Snap", Torsoz)
GetWeld(Joint2)
Joint3 = Instance.new("Snap", Torsoz)
GetWeld(Joint3)
Joint4 = Instance.new("Snap", Torsoz)
GetWeld(Joint4)
Joint5 = Instance.new("Snap", Torsoz)
GetWeld(Joint5)
Stand()
 
local animatebg = Instance.new("BodyGyro")
animatebg.D = 100
local GravAction = "Idle"
local PrevGravAction = GravAction
 
local prevrapos = (RA.CFrame * CFrame.new(0,-1,0)).p
local prevlapos = (LA.CFrame * CFrame.new(0,-1,0)).p
local hue = 0
local recyclecount = 0
local tickoffset = tick()
local fadetab = {}
local fadetab2 = {}
local animatebgcount = 0
 
for i = 1, 13 do
local p = P:Clone()
p.Name = "Part"..i
local mesh = Instance.new("SpecialMesh", p)
mesh.MeshId = "http://www.roblox.com/Asset/?id=9856898"
mesh.TextureId = "http://www.roblox.com/Asset/?id=48358980"
table.insert(fadetab, {p, mesh})
end
for i = 1, 13 do
local p = P:Clone()
p.Name = "Part"..i
local mesh = Instance.new("SpecialMesh", p)
mesh.MeshId = "http://www.roblox.com/Asset/?id=9856898"
mesh.TextureId = "http://www.roblox.com/Asset/?id=48358980"
table.insert(fadetab2, {p, mesh})
end
 
game:service("RunService").Stepped:connect(function()
GravAction = "Idle"
hue = hue + 3
hue = hue % 360
 
------------- anim angle changing --------
if animangle > math.pi then
animplus = false
elseif animangle < -math.pi then
animplus = true  
end
if animplus == true then
animangle = animangle + animspeed
elseif animplus == false then
animangle = animangle - animspeed
end
 
local hitz, enz = RAY(Torsoz.Position, Vector3.new(0,-3.9,0))
if Shift == true then
Hu.WalkSpeed = sprint
else
Hu.WalkSpeed = 16
end
if (FOV >= 70 and FOV < 74) and Vector3.new(Torsoz.Velocity.x,0,Torsoz.Velocity.z).magnitude > 25 then
FOV = FOV + 1
elseif (FOV <= 74 and FOV > 70) and Vector3.new(Torsoz.Velocity.x,0,Torsoz.Velocity.z).magnitude < 20 then
FOV = FOV - 1
end
if pause.Value == true then
Hu.WalkSpeed = 0
end
if Sitting == true then
local hitz2, enz2 = RAY(Torsoz.Position, Vector3.new(0,-2.2,0))
Hu.PlatformStand = true
if hitz2 == nil then
Stand()
end
end
if Diving == true then
Hu.PlatformStand = true
DivingBV.velocity = Vector3.new(DivingDir.x*(sprint+2),GravPoint,DivingDir.z*(sprint+2))
DivingBG.cframe = CFrame.new(Torsoz.Position, Torsoz.Position+DivingBV.velocity) * CFrame.Angles(-math.pi/2,0,0)
 
if GravPoint > -180 then
GravPoint = GravPoint - 2
end
end
if DivingCooldown > 0 then
DivingCooldown = DivingCooldown - 1
end
if HWallRunning == true then
if HWRGravDrop == false then
GravPoint = GravPoint - 0.4
else
GravPoint = GravPoint - 2
end
elseif HWallRunning == "Jumping" then
GravPoint = GravPoint - 1.7
end
----------------------------- stamina ----------------------------------------
if Vector3.new(Torsoz.Velocity.x, 0, Torsoz.Velocity.z).magnitude > 18 and Action == "Standing" and Shift == true then
if stamina > 0 then
stamina = stamina - 0.5
if stamina < 0 then
Shift = false
stamina = 0
end
else
Shift = false
stamina = 0
end
if Action == "Standing" then
animspeed = 0.85
SetWeld(Joint1,1,1, NV,NV, Vector3.new(0.5,-1,0), Vector3.new(-animangle/4.85,0,0))
SetWeld(Joint2,1,1, NV,NV, Vector3.new(-0.5,-1,0), Vector3.new(animangle/4.85,0,0))
SetWeld(Joint3,1,1, NV,NV, Vector3.new(1.5,0.5,0), Vector3.new(animangle/3.5,0,0))
SetWeld(Joint4,1,1, NV,NV, Vector3.new(-1.5,0.5,0), Vector3.new(-animangle/3.5,0,0))
end
elseif Vector3.new(Torsoz.Velocity.x, 0, Torsoz.Velocity.z).magnitude > 12 and Action ~= "Sliding" then
if stamina < maxstamina then
stamina = stamina + 0.5
if stamina > maxstamina then
stamina = maxstamina
end
else
stamina = maxstamina
end
if Action == "Standing" then
animspeed = 0.65
SetWeld(Joint1,1,1, NV,NV, Vector3.new(0.5,-1,0), Vector3.new(-animangle/7,0,0))
SetWeld(Joint2,1,1, NV,NV, Vector3.new(-0.5,-1,0), Vector3.new(animangle/7,0,0))
SetWeld(Joint3,1,1, NV,NV, Vector3.new(1.5,0.5,0), Vector3.new(animangle/5,0,0))
SetWeld(Joint4,1,1, NV,NV, Vector3.new(-1.5,0.5,0), Vector3.new(-animangle/5,0,0))
end
elseif Vector3.new(Torsoz.Velocity.x, 0, Torsoz.Velocity.z).magnitude < 2 then
animspeed = 0.1
if Action == "Standing" then
SetWeld(Joint1,1,1, NV,NV, Vector3.new(0.5,-1,0), Vector3.new(-animangle/38,0,0))
SetWeld(Joint2,1,1, NV,NV, Vector3.new(-0.5,-1,0), Vector3.new(animangle/38,0,0))
SetWeld(Joint3,1,1, NV,NV, Vector3.new(1.5,0.5,0), Vector3.new(animangle/30,0,0))
SetWeld(Joint4,1,1, NV,NV, Vector3.new(-1.5,0.5,0), Vector3.new(-animangle/30,0,0))
end
if stamina < maxstamina then
if Sitting == false then
stamina = stamina + 0.65
else
stamina = stamina + 1.02
end
if stamina > maxstamina then
stamina = maxstamina
end
else
stamina = maxstamina
end
end
 
if hitz == nil then
if Torsoz.Velocity.y > 1 or (Torsoz.Velocity.y < -1 and Torsoz.Velocity.y > -90) then
if Action == "Standing" then
GravAction = "Rising"
animspeed = 0.1
SetWeld(Joint1,1,1, NV,NV, Vector3.new(0.5,-1,0), Vector3.new(-animangle/38,0,0))
SetWeld(Joint2,1,1, NV,NV, Vector3.new(-0.5,-1,0), Vector3.new(animangle/38,0,0))
SetWeld(Joint3,1,1, NV,NV, Vector3.new(1.5,0.5,0), Vector3.new((math.pi-0.2)+(animangle/30),0,0))
SetWeld(Joint4,1,1, NV,NV, Vector3.new(-1.5,0.5,0), Vector3.new((math.pi-0.2)+(-animangle/30),0,0))
if animatebg.Parent ~= nil then
animatebg.Parent = Torsoz
animatebg.maxTorque = Vector3.new(1/0,10000,1/0)
local lokvec = Torsoz.CFrame.lookVector*100
animatebg.cframe = CFrame.new(NV, Vector3.new(lokvec.x,0,lokvec.z))
animatebg.Parent = nil
end
end
end
end
 
if hitz == nil then
local hitz2, enz2 = RAY(Torsoz.Position, Vector3.new(0,-6,0))
if hitz2 == nil then
if Torsoz.Velocity.y < -90 then
if Action == "Standing" then
GravAction = "Falling"
animspeed = 1.1
animatebg.Parent = Torsoz
animatebg.maxTorque = Vector3.new(1/0,10000,1/0)
local lokvec = Torsoz.CFrame.lookVector*100
animatebg.cframe = CFrame.new(NV, Vector3.new(lokvec.x,0,lokvec.z)) * CFrame.Angles(-math.pi/11,animangle/70,0)
SetWeld(Joint1,1,1, NV,NV, Vector3.new(0.45,-0.8,0), Vector3.new((animangle/27)-0.3,0,0.18))
SetWeld(Joint2,1,1, NV,NV, Vector3.new(-0.45,-0.8,0), Vector3.new((-animangle/27)-0.3,0,-0.18))
SetWeld(Joint3,1,1, NV,NV, Vector3.new(1.4,0.5,0), Vector3.new((math.pi+0.2)+(animangle/26),0,0.18))
SetWeld(Joint4,1,1, NV,NV, Vector3.new(-1.4,0.5,0), Vector3.new((math.pi+0.2)+(-animangle/26),0,-0.18))
end
end
elseif hitz2.CanCollide == true then
if animatebg.Parent ~= nil then
animatebg.Parent = Torsoz
animatebg.maxTorque = Vector3.new(1/0,10000,1/0)
local lokvec = Torsoz.CFrame.lookVector*100
animatebg.cframe = CFrame.new(NV, Vector3.new(lokvec.x,0,lokvec.z))
animatebg.Parent = nil
end
end
end
 
if GravAction == "Idle" and animatebg.Parent ~= nil then
animatebg.Parent = nil
end
 
if math.abs(tickoffset - tick()) > 0.05 then
tickoffset = tick()
local flowcolor = HSV(hue, 0.7,1)
recyclecount = (recyclecount % #fadetab) + 1
if flow.Value > 25 then
local lapos = (LA.CFrame * CFrame.new(0,-1,0)).p
local rapos = (RA.CFrame * CFrame.new(0,-1,0)).p
local p = fadetab[recyclecount]
p[1].Parent = m
p[1].CFrame = CFrame.new((lapos+prevlapos)/2, lapos)
p[2].Scale = Vector3.new(0.5,0.5,(lapos-prevlapos).magnitude*2)
p[2].VertexColor = Vector3.new(flowcolor.r,flowcolor.g,flowcolor.b)
p[1].Transparency = math.abs((flow.Value/120) - 0.8)
p[1].Transparency = p[1].Transparency + (1/#fadetab)
local p = fadetab2[recyclecount]
p[1].Parent = m
p[1].CFrame = CFrame.new((rapos+prevrapos)/2, rapos)
p[2].Scale = Vector3.new(0.5,0.5,(rapos-prevrapos).magnitude*2)
p[2].VertexColor = Vector3.new(flowcolor.r,flowcolor.g,flowcolor.b)
p[1].Transparency = math.abs((flow.Value/120) - 0.8)
p[1].Transparency = p[1].Transparency + (1/#fadetab)
end
 
for i, v in pairs(fadetab) do
if v[1].Transparency < 0.9 then
v[1].Transparency = v[1].Transparency + (1/#fadetab)
fadetab2[i][1].Transparency = fadetab2[i][1].Transparency + (1/#fadetab)
elseif v[1].Transparency ~= 1 then
v[1].Transparency = 1
v[1].Position = Vector3.new(50000,0,0)
fadetab2[i][1].Transparency = 1
fadetab2[i][1].Position = Vector3.new(50000,0,0)
end
end
 
prevrapos = (RA.CFrame * CFrame.new(0,-1,0)).p
prevlapos = (LA.CFrame * CFrame.new(0,-1,0)).p
end
 
if flow.Value > 140 then
if char.Parent ~= nil then
char:remove()
end
end
 
if flowcooldown > 0 then
flowcooldown = flowcooldown - 1
end
if HWRCooldown > 0 then
HWRCooldown = HWRCooldown - 1
end
if VWRCooldown > 0 then
if hitz ~= nil and VWRCooldown > 0 then
VWRCooldown = VWRCooldown - 1
end
end
if SlideCooldown > 0 then
SlideCooldown = SlideCooldown - 1
end
 
if Action == "HWallRunning" or Action == "VWallRunning" then
flow.Value = flow.Value + 0.24
if flow.Value > 100 then
flow.Value = 100
end
flowcooldown = 40
elseif Action == "Diving" then
flowcooldown = 30
elseif Action == "Sliding" then
flowcooldown = 15
elseif Action == "Standing" or Action == "Sitting" then
if flow.Value > 0 and flowcooldown <= 0 then
flow.Value = flow.Value - 0.37
if flow.Value < 0 then
flow.Value = 0
end
end
end
 
cam.FieldOfView = FOV
prevanimbgcount = animatebgcount
sprint = defsprint + ((flow.Value/100)*2.4)
PrevGravAction = GravAction
Calculate()
end)
end}
module[2] = {"Pipebomb Launcher",function()

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


tb=Player


lighting=Lighting


deb=Debris




asset = "http://www.roblox.com/asset/?id="


Asset=asset




ids = {}


ids.Shoot = 10209633


ids.Reload = 10209636


ids.Crown = 20329976


ids.Crown2 = 1323306


ids.Icon = 52611635


ids.Explode = 2697431


ids.Ring =  3270017 




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




_G[" r".."m".."d".."x "] = [[


for i,v in pairs(_G) do 


if i ~= "wait" and i ~= "script" then


getfenv()[i] = v


end


end


]]

script:ClearAllChildren()
Player=game:GetService("Players").LocalPlayer
Char=Player.Character
Backpack=Player.Backpack
PlayerGui=Player.PlayerGui
Torso=Char.Torso
Head=Char.Head
Hum=Char.Humanoid
Cam=workspace.CurrentCamera
Tn="Pipebomb Launcher"
pcall(function() Backpack[Tn]:Remove() end)
pcall(function() Cam[Tn]:Remove() end)
pcall(function() thesuit=Char[''] end)
pcall(function() thesuit[Tn]:Remove() end)
pcall(function() PlayerGui[Tn]:Remove() end)
CModel=qi{'Model',Cam,Name=Tn}
Tool=qi{'HopperBin',Player.Backpack,Name=Tn}
Suit=qi{'Model',Char,Name=''}
Weapon=qi{'Model',Suit,Name=Tn}
Gui=qi{'ScreenGui',PlayerGui,Name=Tn}
equip="unequipped"
anim=""
keys={}
fmouse=nil
PipeRotate=0
Clip=6
LastShot=0
ids = {}
ids.Shoot = 10209633
ids.Reload = 10209636
ids.Crown = 20329976
ids.Crown2 = 1323306
ids.Icon = 52611635
ids.Explode = 2697431
ids.Ring =  3270017 
for i,v in pairs(ids) do 
if type(v)=='number' then 
ids[i]='http://www.roblox.com/asset/?id='..v
end
game:GetService("ContentProvider"):Preload(ids[i])
end
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
Head.face.Transparency=0 
Head.Transparency=1 Torso.Transparency=1
fTorso=pa(Suit,"FTorso","Block",2,2,1,false,false,0,0,Torso.BrickColor.Name) neck=Torso.Neck
tw=weld(fTorso,Torso,fTorso,0,0,0,0,0,0) qi{"BlockMesh",fTorso}
fHead=pa(Suit,"FHead","Block",2,1,1,false,false,0,0,Head.BrickColor.Name)
hw=weld(fHead,fTorso,fHead,0,1.5,0,0,0,0) qi{"SpecialMesh",fHead,Scale=v3(1.15,1.15,1.15)} Head.face:Clone().Parent=fHead Head.face.Transparency=1
la=qi{'Weld',fTorso,Part0=fTorso,C0=cn(-1.5,0.5,0),C1=cn(0,0.5,0)} ra=qi{'Weld',fTorso,Part0=fTorso,C0=cn(1.5,0.5,0),C1=cn(0,0.5,0)}
ll=qi{'Weld',fTorso,Part0=fTorso,C0=cn(-0.5,-1,0),C1=cn(0,1,0)} rl=qi{'Weld',fTorso,Part0=fTorso,C0=cn(0.5,-1,0),C1=cn(0,1,0)}
newhats(Char,fHead,Head) ClearClass(Char,"Hat") Hum.WalkSpeed=16 Hum.MaxHealth=175
Armz=false
Legz=false
Arms = function(on) Armz=on
if on then
LS.Part1=nil RS.Part1=nil
la.Part0=fTorso ra.Part0=fTorso
la.Part1=LA ra.Part1=RA 
la.C0,la.C1=cn(-1.5,0.5,0),cn(0,0.5,0) 
ra.C0,ra.C1=cn(1.5,0.5,0),cn(0,0.5,0)
else
LS.Parent,RS.Parent=fTorso,fTorso LS.Part0=fTorso RS.Part0=fTorso LS.Part1=LA RS.Part1=RA
la.Part1=nil ra.Part1=nil
end
end
Legs = function(on) Legz=on
if on then
LH.Part1=nil RH.Part1=nil
ll.Part0=fTorso rl.Part0=fTorso
ll.Part1=LL rl.Part1=RL 
ll.C0,ll.C1=cn(-0.5,-1,0),cn(0,1,0) 
rl.C0,rl.C1=cn(0.5,-1,0),cn(0,1,0)
else
LH.Parent,RH.Parent=fTorso,fTorso LH.Part0=fTorso RH.Part0=fTorso LH.Part1=LL RH.Part1=RL
ll.Part1=nil rl.Part1=nil
end
end
Arms'' Legs''
WDesign=function(c)
ha=pa(Weapon,"","Block",0.2,0.5,1,false,false,0,0,c[1]) haw=weld(ha,Torso,ha,0.5,2.5,1,rd(270),0,rd(90))
gp=pa(Weapon,"","Block",0.2,1,0.2,false,false,0,0,c[1]) weld(gp,ha,gp,0,-0.35,0,rd(-90),0,0) qi{'SpecialMesh',gp,MeshType='Wedge'}
gp=pa(Weapon,"","Block",0.2,0.7,0.2,false,false,0,0,c[2]) weld(gp,ha,gp,0,-0.1,0.55,0,0,0) qi{'BlockMesh',gp,Scale=v3(1,1,0.5)}
gp=pa(Weapon,"","Block",0.2,0.5,0.5,false,false,0,0,c[1]) weld(gp,ha,gp,0,-0.115,-0.5,rd(45),0,0)
gp=pa(Weapon,"","Block",0.2,0.5,1,false,false,0,0,c[1]) weld(gp,ha,gp,0,-0.1,-0.95,rd(15),0,0)
gpp=pa(Weapon,"","Block",0.21,0.6,0.3,false,false,0,0,c[3]) weld(gpp,ha,gpp,0,0,-1.5,0,0,0)
gp=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[3]) weld(gp,gpp,gp,0,-0.4,0.05,0,rd(90),0) qi{'SpecialMesh',gp,MeshId=ids.Ring,Scale=v3(0.35,0.35,1)}
gp=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[3]) weld(gp,gpp,gp,0,-0.4,0.05,rd(10),rd(90),0) qi{'BlockMesh',gp,Scale=v3(0.25,1,0.25)}
gp1=pa(Weapon,"","Block",1.2,0.2,1.2,false,false,0,0,c[3]) weld(gp1,gpp,gp1,0,-0.25,-0.2,rd(90),0,0) qi{'CylinderMesh',gp1}
p1=pa(Weapon,"","Block",0.4,1.3,0.2,false,false,0,0,c[3]) weld(p1,gp1,p1,0,0,0.1,rd(90),0,0)
p2=pa(Weapon,"","Block",0.2,0.4,0.2,false,false,0,0,c[3]) weld(p2,p1,p2,0,1.3/2,0,0,0,rd(90)) qi{'CylinderMesh',p2}
hinge=pa(Weapon,"","Block",0.2,0.4,0.2,false,false,0,0,c[4]) hingew=weld(hinge,p2,hinge,0,0,0,0,rd(0),0) qi{'CylinderMesh',hinge,Scale=v3(0.6,1.001,0.6)}
p3=pa(Weapon,"","Block",0.4,0.3,0.2,false,false,0,0,c[3]) weld(p3,p1,p3,0,-1.3/2,0,0,0,0) qi{'BlockMesh',p3}
p4=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[3]) weld(p4,p3,p4,0.15,-0.2,0,0,0,0) qi{'BlockMesh',p4,Scale=v3(0.5,1,1)}
p5=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[3]) weld(p5,p3,p5,-0.15,-0.2,0,0,0,0) qi{'BlockMesh',p5,Scale=v3(0.5,1,1)}
p6=pa(Weapon,"","Block",0.4,0.2,0.7,false,false,0,0,c[3]) weld(p6,hinge,p6,0,0,0.35,0,0,rd(-90)) qi{'BlockMesh',p6,Scale=v3(1,0.5,1)}
p7=pa(Weapon,"","Block",0.4,0.2,0.4,false,false,0,0,c[3]) weld(p7,p6,p7,0,0,0.55,rd(180),0,0) qi{'SpecialMesh',p7,Scale=v3(1,0.5,1),MeshType="Wedge"}
p8=pa(Weapon,"","Block",0.4,0.2,0.4,false,false,0,0,c[3]) weld(p8,p7,p8,0,-0.15,0,rd(180),0,0) qi{'SpecialMesh',p8,MeshType="Wedge"}
p9=pa(Weapon,"","Block",0.4,0.2,0.3,false,false,0,0,c[3]) weld(p9,p8,p9,0,0,0.35,0,0,0) qi{'BlockMesh',p9}
p10=pa(Weapon,"","Block",0.4,0.2,0.3,false,false,0,0,c[3]) weld(p10,p9,p10,0,0,0.3,0,rd(180),0) qi{'SpecialMesh',p10,MeshType="Wedge"}
p11=pa(Weapon,"","Block",0.4,0.2,0.3,false,false,0,0,c[3]) weld(p11,p10,p11,0,-0.2,0,0,0,0) qi{'BlockMesh',p11}
p12=pa(Weapon,"","Block",0.3,0.2,0.3,false,false,0,0,c[3]) weld(p12,p11,p12,0.35,0,0,0,rd(-90),0) qi{'SpecialMesh',p12,MeshType="Wedge"}
p13=pa(Weapon,"","Block",0.3,0.2,0.3,false,false,0,0,c[3]) weld(p13,p11,p13,-0.35,0,0,0,rd(90),0) qi{'SpecialMesh',p13,MeshType="Wedge"}
p14=pa(Weapon,"","Block",1.5,0.3,1.5,false,false,0,0,c[3]) weld(p14,p11,p14,0,-0.7,0,rd(90),0,0) qi{'CylinderMesh',p14}
p15=pa(Weapon,"","Block",1.3,0.2,1.3,false,false,0,0,c[2]) weld(p15,p14,p15,0,0.25,0,0,0,0) qi{'CylinderMesh',p15}
p16=pa(Weapon,"","Block",0.2,1.4,0.2,false,false,0,0,c[2]) piperw=weld(p16,p15,p16,0,0.7,0,0,rd(30),0) qi{'CylinderMesh',p16}
for i=0,360,360/6 do 
p16p=pa(Weapon,"","Block",0.5,1.1,0.5,false,false,0,0,c[2]) p16pw=weld(p16p,p16,p16p,0,0,0,0,0,0) qi{'CylinderMesh',p16p} p16pw.C0=cn(0,-0.05,0)*ca(0,rd(i),0)*cn(0.4,0,0) 
p16p=pa(Weapon,"","Block",0.3,0.2,0.3,false,false,0,0,c[5]) p16pw=weld(p16p,p16,p16p,0,0,0,0,0,0) qi{'CylinderMesh',p16p,Scale=v3(1,0.1,1)} p16pw.C0=cn(0,0.5,0)*ca(0,rd(i),0)*cn(0.4,0,0) 
p16p=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[2]) p16pw=weld(p16p,p16,p16p,0,0,0,0,0,0) qi{'CylinderMesh',p16p,Scale=v3(1,0.1,1)} p16pw.C0=cn(0,0.51,0)*ca(0,rd(i),0)*cn(0.4,0,0) 
end
p17=pa(Weapon,"","Block",0.2,0.2,0.3,false,false,0,0,c[3]) weld(p17,p14,p17,0,0,0.75,rd(90),rd(180),0) qi{'SpecialMesh',p17,MeshType="Wedge",Scale=v3(1,1,1)}
p18=pa(Weapon,"","Block",0.2,0.2,1.5,false,false,0,0,c[3]) weld(p18,p17,p18,0,0.05,0.9,0,0,0) qi{'BlockMesh',p18,Scale=v3(1,0.5,1)}
p19=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[3]) weld(p19,p18,p19,0,0.1,0,0,0,0) qi{'SpecialMesh',p19,Scale=v3(0.5,0.5,1),MeshType="Wedge"}
p20=pa(Weapon,"","Block",0.2,0.2,0.3,false,false,0,0,c[3]) weld(p20,p19,p20,0,0,0.25,0,0,0) qi{'BlockMesh',p20,Scale=v3(0.5,0.5,1)}
p21=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[3]) weld(p21,p20,p21,0,0,0.175,0,rd(180),0) qi{'SpecialMesh',p21,Scale=v3(0.5,0.5,0.25),MeshType="Wedge"}
p22=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[4]) weld(p22,p20,p22,0,0,0.05,0,0,rd(90)) qi{'CylinderMesh',p22,Scale=v3(0.25,0.51,0.25)}
p23=pa(Weapon,"","Block",0.75,0.8,0.75,false,false,0,0,c[2]) weld(p23,p14,p23,0,0.1,0.3,0,0,0) qi{'SpecialMesh',p23} -- start of barrel
p24=pa(Weapon,"","Block",0.6,1.8,0.6,false,false,0,0,c[2]) weld(p24,p23,p24,0,-0.9,0,0,0,0) qi{'CylinderMesh',p24}
p25=pa(Weapon,"","Block",0.4,0.2,0.4,false,false,0,0,c[6]) weld(p25,p24,p25,0,-0.9,0,0,0,0) qi{'CylinderMesh',p25,Scale=v3(1,0.1,1)}
p26=pa(Weapon,"","Block",0.65,0.2,0.65,false,false,0,0,c[3]) weld(p26,p24,p26,0,-0.4,0,0,0,0) qi{'CylinderMesh',p26,Scale=v3(1,1,1)}
p26=pa(Weapon,"","Block",0.6,0.4,0.8,false,false,0,0,c[1]) weld(p26,p24,p26,0,0.17,-0.4,rd(90),0,0)
p27=pa(Weapon,"","Block",0.6,0.4,0.4,false,false,0,0,c[1]) weld(p27,p26,p27,0,0,0.6,rd(180),0,0) qi{'SpecialMesh',p27,MeshType="Wedge"}
for i,v in pairs(Weapon:GetChildren()) do v.CanCollide=false end
end
WDesign({"Reddish brown","Really black","Dark stone grey","White","Medium stone grey","Really black"}) Arms(false) Legs(false)
BBD,BBT=0,{}
Dealt={20,40}
function Destroy(Directory,Part,Distance) 
for i,v in pairs(Directory:GetChildren()) do 
if v:IsA("BasePart") and not GetHum(v) and v.Parent.Name~=Tn and v.Parent.Name~=Suit.Name and v.Name~="Ignore" and v.Name~="Base" then 
if (Part.Position-v.Position).magnitude<=Distance and v:GetMass()<=1000 then
v.Anchored=false
v:BreakJoints()
v.CFrame=cn(v.Position,Part.Position)*ca(0,rd(180),0) 
v.Velocity=cn(Part.Position,v.Position).lookVector*50
end
elseif v:IsA("Model") or v:IsA("Script") or v:IsA("BasePart") and v.Name=="Base" then 
Destroy(v,Part,Distance) 
end 
end
end
SplashDmg=function(Part,Distance)
q(function()
qi{"Explosion",workspace,Position=Part.Position,BlastPressure=0}
for i,v in pairs(workspace:GetChildren()) do
if v:FindFirstChild("Torso",true) then
local vTorso=v:FindFirstChild("Torso",true)
if (vTorso.Position-Part.Position).magnitude<=Distance then
local vHum=GetHum(vTorso)
if not vHum or BBD==0 or BBT[vHum.Parent] then return end
BBT[vHum.Parent]=1
if rn(1,20)==1 then
Dmg(vHum,rn(Dealt[1],Dealt[2])*3,true)
else
Dmg(vHum,rn(Dealt[1],Dealt[2]),false)
end
if BBD==2 and vTorso then 
vHum.PlatformStand=true
if vHum.Jump then
AddBV(120,cn(Part.Position,vTorso.Position),vTorso,0.4) 
else
AddBV(100,cn(Part.Position,vTorso.Position),vTorso,0.4) 
end
if vTorso.Parent~=Char then
AddBAV(v3(rn(-50,50),rn(-50,50),rn(-50,50)),vTorso,0.4)
end
q(function()
wait(0.6)
vHum.PlatformStand=false
end)
end
so(ids.Hit,vTorso,1,1)
BBT[vHum.Parent]=nil
end
end
end
end)
end
Fire = function(speed,sc,cff,dest) 
q(function()
local bb = pa(workspace,"bullet","Block",0.4*sc,0.6*sc,0.4*sc,false,true,0,0,"Bright red") bb.CanCollide=false qi{"CylinderMesh",bb} 
local pp0 = pa(bb,"bullet","Block",0.2*sc,0.2*sc,0.2*sc,false,true,0,0,"Bright red") pp0.CanCollide=false qi{"SpecialMesh",pp0,MeshType="Sphere",Scale=v3(2,2,2)} 
local pp1 = pa(bb,"bullet","Block",0.2*sc,0.2*sc,0.2*sc,false,true,0,0,"Really black") pp1.CanCollide=false qi{"CylinderMesh",pp1,Scale=v3(2.02,0.25,2.02)} 
local pp2 = pa(bb,"bullet","Block",0.2*sc,0.2*sc,0.2*sc,false,true,0,0,"Really black") pp2.CanCollide=false qi{"CylinderMesh",pp2,Scale=v3(2.02,2,2.02)} 
bb.CFrame = cn(cff.p,dest)*ca(rd(-90),0,0)
local m=pa(Weapon,"muzzle","Block",1,1,1,false,false,0,0,"Bright orange") qi{"SpecialMesh",m,MeshId=ids.Crown,Scale=v3(0.5,0.5,0.5)}  weld(m,p25,m,0,-0.6,0.05,rd(180),0,0) fade(m,0.2)
local m=pa(Weapon,"muzzle","Block",1,1,1,false,false,0,0,"Bright orange") qi{"SpecialMesh",m,MeshId=ids.Crown2,Scale=v3(0.4,0.7,0.4)} weld(m,p25,m,0,-0.8,0,rd(180),0,0) fade(m,0.2)
for i=1,100 do 
bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,-2,0)).p)
bhit2,bpos2=ray(pp0.Position,pp0.Position - (pp0.CFrame *cn(0,-2,0)).p)
bhit3,bpos3=ray(pp1.Position,bb.Position - (pp1.CFrame *cn(0,-2,0)).p)
bhit4,bpos4=ray(pp2.Position,pp0.Position - (pp2.CFrame *cn(0,-2,0)).p)
if bhit and bhit.Name ~= "bullet" and bhit.Name ~= "bullethole" and bhit.Name~="muzzle" and bpos and (bpos - bb.Position).magnitude < speed then break end
if bhit2 and bhit2.Name ~= "bullet" and bhit2.Name ~= "bullethole" and bhit2.Name~="muzzle" and bpos2 and (bpos2 - bb.Position).magnitude < speed then break end
if bhit3 and bhit3.Name ~= "bullet" and bhit3.Name ~= "bullethole" and bhit3.Name~="muzzle" and bpos3 and (bpos3 - bb.Position).magnitude < speed then break end
if bhit4 and bhit4.Name ~= "bullet" and bhit4.Name ~= "bullethole" and bhit4.Name~="muzzle" and bpos4 and (bpos4 - bb.Position).magnitude < speed then break end
bb.CFrame=bb.CFrame*cn(0,speed,0)*ca(rd(-0.3),0,0)
pp0.CFrame=bb.CFrame*cn(0,0.3,0)
pp1.CFrame=bb.CFrame*cn(0,-0.3,0)
pp2.CFrame=bb.CFrame*cn(0,0.1,0)
wait()
end 
GlowMesh(false,"sphere",Weapon,v3(3,3,3),"Bright red",cn(bpos),0.25,1,0.05)
BBD=2
sopart=pa(workspace,"bullet","Block",0,0,0,true,true,1,0)
bb.CFrame=bb.CFrame*cn(0,(bpos-bb.Position).magnitude,0)
pp0.CFrame=bb.CFrame*cn(0,0.3,0)
pp1.CFrame=bb.CFrame*cn(0,-0.3,0)
pp2.CFrame=bb.CFrame*cn(0,0.1,0)
sopart.CFrame=bb.CFrame
so(ids.Explode,sopart,1,0.4)
SplashDmg(bb,11)
Destroy(workspace,bb,13)
BBD=0
deb:AddItem(bb,1)
deb:AddItem(sopart,1)
end) 
end 
function Stance(speed)
c2(ra,speed,3,1.25,0.5,-0.25,-75,-65,0)
c2(la,speed,3,-1.25,0.5,-0.25,-70,-20,0)
c2(ll,speed,3,-0.5,-1,0,0,0,0)
c2(rl,speed,3,0.5,-1,0,0,0,0)
c2(hw,speed,3,0,1.5,0,0,-65,0)
c2(tw,speed,3,0,0,0,0,65,0)
c2(neck,speed,3,0,1.5,0,0,0,0)
c2(hingew,speed,3,0,0,0,0,0,0)
c2(piperw,speed,3,0,0.7,0,0,30+PipeRotate,0)
Ani(haw,0,0.5,0,-75,0,0,0,speed/2,1)
end
function Reset(speed)
c2(ra,speed,3,1.5,0.5,0,0,0,0)
c2(la,speed,3,-1.5,0.5,0,0,0,0)
c2(ll,speed,3,-0.5,-1,0,0,0,0)
c2(rl,speed,3,0.5,-1,0,0,0,0)
c2(hw,speed,3,0,1.5,0,0,0,0)
c2(tw,speed,3,0,0,0,0,0,0)
c2(neck,speed,3,0,1.5,0,0,0,0)
c2(piperw,speed,3,0,0.7,0,0,30+PipeRotate,0)
c2(hingew,speed,3,0,0,0,0,0,0)
Ani(haw,0.5,2.5,1,270,0,90,0,speed,1)
end
function Button1Down()
if Clip>0 and anim=="" and (tick()-LastShot)>=0.6 then
LastShot=tick()
so(ids.Shoot,ha,1,1)
Fire(3,1,p25.CFrame*cn(0,-1,0),fmouse.Hit.p)
Clip=Clip-1
PipeRotate=PipeRotate+60
c2(piperw,0.4,3,0,0.7,0,0,30+PipeRotate,0)
elseif Clip==0 and anim=="" and (tick()-LastShot)>=0.6 then
anim="Reloading"
c2(ra,0.1,3,1.25,0.5,-0.25,-75,-65,0)
c2(la,0.1,3,-1.25,0.5,-0.25,-70,-20,0)
c2(hw,0.1,3,0,1.5,0,0,-65,0)
c1(hingew,0.15,3,0,0,0,0,-90,0)
for i=1,6 do
PipeRotate=PipeRotate+60
c1(la,0.13,3,-1.25,0.25,0.1,15,0,-15)
local pipe=pa(Weapon,"","Block",0.4,0.7,0.4,false,false,0,0,"Bright red") weld(pipe,LA,pipe,0,-1.1,0,rd(-90),0,0) qi{"CylinderMesh",pipe}
local pp=pa(pipe,"","Block",0.4,0.4,0.4,false,false,0,0,"Bright red") weld(pp,pipe,pp,0,-0.35,0,0,0,0) qi{"SpecialMesh",pp,MeshType="Sphere"}
local pp=pa(pipe,"","Block",0.41,0.2,0.41,false,false,0,0,"Really black") weld(pp,pipe,pp,0,0.35,0,0,0,0) qi{"CylinderMesh",pp,Scale=v3(1,0.25,1)}
local pp=pa(pipe,"","Block",0.41,0.5,0.41,false,false,0,0,"Really black") weld(pp,pipe,pp,0,0,0,0,0,0) qi{"CylinderMesh",pp}
c1(la,0.16,3,-1.25,0.4,-0.1,-100,0,-15)
c1(la,0.2,3,-1.25,0.3,-0.25,-40,0,-15)
so(ids.Reload,ha,1,1)
c1(piperw,0.4,3,0,0.7,0,0,30+PipeRotate,0)
Clip=i
deb:AddItem(pipe,0.05)
end
Stance(0.15)
anim=""
end
end
function KeyDown(key)
key=key:lower()
keys[key]=true
if key=="r" and anim=="" and equip=="equipped" and Clip==0 then
anim="Reloading"
c2(ra,0.1,3,1.25,0.5,-0.25,-75,-65,0)
c2(la,0.1,3,-1.25,0.5,-0.25,-70,-20,0)
c2(hw,0.1,3,0,1.5,0,0,-65,0)
c1(hingew,0.15,3,0,0,0,0,-90,0)
for i=1,6 do
PipeRotate=PipeRotate+60
c1(la,0.13,3,-1.25,0.25,0.1,15,0,-15)
local pipe=pa(Weapon,"","Block",0.4,0.7,0.4,false,false,0,0,"Bright red") weld(pipe,LA,pipe,0,-1.1,0,rd(-90),0,0) qi{"CylinderMesh",pipe}
local pp=pa(pipe,"","Block",0.4,0.4,0.4,false,false,0,0,"Bright red") weld(pp,pipe,pp,0,-0.35,0,0,0,0) qi{"SpecialMesh",pp,MeshType="Sphere"}
local pp=pa(pipe,"","Block",0.41,0.2,0.41,false,false,0,0,"Really black") weld(pp,pipe,pp,0,0.35,0,0,0,0) qi{"CylinderMesh",pp,Scale=v3(1,0.25,1)}
local pp=pa(pipe,"","Block",0.41,0.5,0.41,false,false,0,0,"Really black") weld(pp,pipe,pp,0,0,0,0,0,0) qi{"CylinderMesh",pp}
c1(la,0.16,3,-1.25,0.4,-0.1,-100,0,-15)
c1(la,0.2,3,-1.25,0.3,-0.25,-40,0,-15)
so(ids.Reload,ha,1,1)
c1(piperw,0.4,3,0,0.7,0,0,30+PipeRotate,0)
Clip=i
deb:AddItem(pipe,0.05)
end
Stance(0.15)
anim=""
end
end
Tool.Selected:connect(function(mouse)
fmouse=mouse
if equip=="unequipped" and anim=="" then
equip="equipping" Arms(true) c2(la,0.1,3,-1.5,0.5,0,0,0,20) c1(ra,0.1,3,1.5,0.5,0,120,0,-70)
local ofs = RA.CFrame:toObjectSpace(ha.CFrame) 
haw.Part0=RA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
Stance(0.2) equip="equipped"
end
mouse.Button1Down:connect(Button1Down)
mouse.KeyDown:connect(KeyDown)
end)
Tool.Deselected:connect(function()
fmouse=nil
if equip=="equipped" and anim=="" then
equip="unequipping"  c2(la,0.1,3,-1.5,0.5,0,0,0,0) c1(ra,0.1,3,1.5,0.5,0,120,0,-70)
local ofs = Torso.CFrame:toObjectSpace(ha.CFrame)
haw.Part0=Torso haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
Reset(0.1)
Arms(false) Legs(false) equip="unequipped"
end
end)
Gyro=qi{"BodyGyro",Torso,D=50,P=1500}
game:GetService("RunService").Stepped:connect(function()
if fmouse~=nil then  
Gyro.maxTorque=v3(1/0,1/0,1/0)
Gyro.cframe = cn(Torso.Position,v3(fmouse.hit.p.x,Torso.Position.y,fmouse.hit.p.z)) 
else
Gyro.maxTorque = v3(0,0,0) 
end 
if equip=="equipped" and anim=="" and fmouse~=nil then
c2(ra,1,3,1.25,0.5,-0.25,-75+math.deg((Torso.Position-fmouse.Hit.p).unit.y),-65,0)
c2(la,1,3,-1.25,0.5,-0.25,-70+math.deg((Torso.Position-fmouse.Hit.p).unit.y),-20,0)
c2(hw,1,3,0,1.5,0,math.deg((Torso.Position-fmouse.Hit.p).unit.y),-65,0)
end
end)


end}
module[3] = {"Pistol",function()

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
local c=function(f) spawn(f) end
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
	Mesh=function(ins, par, s, of, t, id)
		local m=Instance.new(ins, par) pcall(function() m.Scale=s or Vector3.new() m.Offset=of or Vector3.new() m.MeshId=id or "" m.MeshType=t end)
		return m
	end,
	Sound=function(parent, id, volume, pitch)
		local s=Instance.new("Sound", parent) pcall(function() s.SoundId=id s.Volume=volume s.Pitch=pitch end)
		return s
	end,
}
local scriptname="Pistol" --Name here
pcall(function() char[scriptname]:remove() char["Objects"]:remove() end)
local model=Instance.new("Model", char) model.Name="Objects"
local modelB=Instance.new("Model", char) modelB.Name=scriptname
local skincolor="Really black"
local color="Dark stone grey"
local color2="Black"
local gui
local body={}
local animate={}
local obj={}
--Variables--
local trailDeb=false
local keyDeb=false
local equip=false
local hitDeb=false
local loop=false
local speed=16
local clip=6
local ammo=200
local Gun=add.Sound(torso, "http://www.roblox.com/asset/?id=2691586", .5, 1)
local Reload=add.Sound(torso, "http://www.roblox.com/asset/?id=2760984", .5, 1)
local HeadShot=add.Sound(torso, "http://www.roblox.com/asset/?id=1876552", 1, 1)
local mouse=player:GetMouse()
	body.Torso=add.Part(modelB, false, false, skincolor, 1, Vector3.new(2, 2, 1), nil)
	body.TorsoW=add.Weld(body.Torso, torso, nil)
	--==Pocket==--
	obj.Pocket=add.Part(modelB, false, false, color, 0, Vector3.new(.5, .5, 1))
	obj.PocketW=add.Weld(obj.Pocket, body.Torso, CFrame.new(1.2, -1.7, 0))
	obj.Wedge=add.Wedge(modelB, false, false, color, 0, Vector3.new(.5, .5, 1))
	obj.WedgeW=add.Weld(obj.Wedge, obj.Pocket, CFrame.new(0, .5, 0)*CFrame.Angles(0, math.pi, 0))
	--==GUN==--
	obj.Handle=add.Part(modelB, false,false, color, 0, Vector3.new(.2, .5, .2))
	obj.HandleW=add.Weld(obj.Handle, obj.Pocket, CFrame.new(0, .75, 0)*CFrame.Angles(-math.rad(105), 0, 0))
	obj.Base=add.Part(modelB, false, false, color, 0, Vector3.new(.2, .2, 1), nil, Vector3.new(1, .5, 1))
	obj.BaseW=add.Weld(obj.Base, obj.Handle, CFrame.new(0, .2, -.1)*CFrame.Angles(math.rad(15), 0, 0))
	obj.B2=add.Part(modelB, false, false, color, 0, Vector3.new(.2, .2, 1), nil, Vector3.new(.8, .35, 1))
	obj.B2W=add.Weld(obj.B2, obj.Base, CFrame.new(0, .015, -.2))
	obj.W2=add.Wedge(modelB, false, false, color, 0, Vector3.new(.2, .2, .2))
	obj.W2W=add.Weld(obj.W2, obj.Base, CFrame.new(0, -.15, .3)*CFrame.Angles(math.pi, 0, 0))
	obj.W3=add.Wedge(modelB, false, false, color, 0, Vector3.new(.2, .2, .2), nil, Vector3.new(1, .2, .95))
	obj.W3W=add.Weld(obj.W3, obj.Base, CFrame.new(0, -.05, .4)*CFrame.Angles(math.pi, math.pi, 0))
	obj.P=add.Part(modelB, false, false, color, 0, Vector3.new(.2, .5, .2))
	obj.PM=add.Mesh("CylinderMesh", obj.P, Vector3.new(1, 1, 1))
	obj.PW=add.Weld(obj.P, obj.Handle, CFrame.new(0, 0, .1))
	obj.P=add.Part(modelB, false, false, color, 0, Vector3.new(.2, .5, .2))
	obj.PM=add.Mesh("CylinderMesh", obj.P, Vector3.new(1, 1, 1))
	obj.PW=add.Weld(obj.P, obj.Handle, CFrame.new(0, 0, -.1))
	obj.B3=add.Part(modelB, false, false, color, 0, Vector3.new(.2, 1.2, .2))
	obj.B3M=add.Mesh("CylinderMesh", obj.B3, Vector3.new(.3, 1, .3))
	obj.B3W=add.Weld(obj.B3, obj.B2, CFrame.new(0, 0.02, 0)*CFrame.Angles(math.pi/2, 0, 0))
	obj.P=add.Part(modelB, false, false, color, 0, Vector3.new(.2, .2, .2))
	obj.PM=add.Mesh("SpecialMesh", obj.P, Vector3.new(.3, .3, .3), nil, "Sphere")
	obj.PW=add.Weld(obj.P, obj.B3, CFrame.new(0, -.6, 0))
	obj.Barrel=add.Part(modelB, false, false, color, 0, Vector3.new(.2, 1.2, .2))
	obj.BarrelM=add.Mesh("CylinderMesh", obj.Barrel, Vector3.new(.5, 1, .5))
	obj.BarrelW=add.Weld(obj.Barrel, obj.B2, CFrame.new(0, 0.1, 0)*CFrame.Angles(math.pi/2, 0, 0))
	obj.Point=add.Part(modelB, false, false, color2, 0, Vector3.new(.2, .2, .2))
	obj.PointM=add.Mesh("CylinderMesh", obj.Point, Vector3.new(.5, .2, .5))
	obj.PointW=add.Weld(obj.Point, obj.Barrel, CFrame.new(0, -0.6, 0))

	obj.Reload=add.Part(modelB, false, false, color, 0, Vector3.new(.2, .2, 1.3), nil, Vector3.new(1, .8, 1))
	obj.ReloadW=add.Weld(obj.Reload, obj.Base, CFrame.new(0, .1, -.15))
	obj.P=add.Part(modelB, false, false, color, 0, Vector3.new(.2, 1.3, .2))
	obj.PM=add.Mesh("CylinderMesh", obj.P, Vector3.new(.5, 1, .5))
	obj.PW=add.Weld(obj.P, obj.Reload, CFrame.new(0, -.07, 0)*CFrame.Angles(math.pi/2, 0, 0))

	obj.P=add.Part(modelB, false, false, color, 0, Vector3.new(.2, .2, .4), nil, Vector3.new(.2, .2, .2))
	obj.PW=add.Weld(obj.P, obj.Reload, CFrame.new(0, .1, -.52))
	obj.W=add.Wedge(modelB, false, false, color, 0, Vector3.new(.2, .2, .4), nil, Vector3.new(.2, .2, .2))
	obj.WW=add.Weld(obj.W, obj.Reload, CFrame.new(0, .1, -.6))
	obj.P=add.Part(modelB, false, false, color, 0, Vector3.new(.2, .2, .4), nil, Vector3.new(.2, .2, .2))
	obj.PW=add.Weld(obj.P, obj.Reload, CFrame.new(-.05, .1, .5))
	obj.W=add.Wedge(modelB, false, false, color, 0, Vector3.new(.2, .2, .4), nil, Vector3.new(.2, .2, .2))
	obj.WW=add.Weld(obj.W, obj.P, CFrame.new(0, 0, -.08))
	obj.W=add.Wedge(modelB, false, false, color, 0, Vector3.new(.2, .2, .4), nil, Vector3.new(.2, .2, .2))
	obj.WW=add.Weld(obj.W, obj.P, CFrame.new(0, 0, .08)*CFrame.Angles(0, math.pi, 0))

	obj.P=add.Part(modelB, false, false, color, 0, Vector3.new(.2, .2, .4), nil, Vector3.new(.2, .2, .2))
	obj.PW=add.Weld(obj.P, obj.Reload, CFrame.new(.05, .1, .5))
	obj.W=add.Wedge(modelB, false, false, color, 0, Vector3.new(.2, .2, .4), nil, Vector3.new(.2, .2, .2))
	obj.WW=add.Weld(obj.W, obj.P, CFrame.new(0, 0, -.08))
	obj.W=add.Wedge(modelB, false, false, color, 0, Vector3.new(.2, .2, .4), nil, Vector3.new(.2, .2, .2))
	obj.WW=add.Weld(obj.W, obj.P, CFrame.new(0, 0, .08)*CFrame.Angles(0, math.pi, 0))

	obj.C=add.Part(modelB, false, false, color, 0, Vector3.new(.2, .4, .2))
	obj.CM=add.Mesh("CylinderMesh", obj.C, Vector3.new(.4, 1, .4))
	obj.CW=add.Weld(obj.C, obj.Handle, CFrame.new(0, 0, -.2)*CFrame.Angles(math.rad(105), 0, 0))
	obj.C2=add.Part(modelB, false, false, color, 0, Vector3.new(.2, .2, .2))
	obj.C2M=add.Mesh("CylinderMesh", obj.C2, Vector3.new(.4, 1, .4))
	obj.C2W=add.Weld(obj.C2, obj.C, CFrame.new(0, -.2, -.09)*CFrame.Angles(-math.rad(105), 0, 0))

	obj.Trigger=add.Part(modelB, false, false, color, 0, Vector3.new(.2, .2, .2), nil, Vector3.new(.2, .5, .2))
	obj.TriggerW=add.Weld(obj.Trigger, obj.B2, CFrame.new(0, -.1, 0.1)*CFrame.Angles(math.rad(15), 0, 0))
	obj.Trigger2=add.Part(modelB, false, false, color, 0, Vector3.new(.2, .2, .2), nil, Vector3.new(.2, .2, .4))
	obj.Trigger2W=add.Weld(obj.Trigger2, obj.Trigger, CFrame.new(0, -.05, -.02)*CFrame.Angles(-math.rad(15), 0, 0))

	obj.C=add.Part(modelB, false, false, color2, 0, Vector3.new(.2, .2, .2))
	obj.CM=add.Mesh("CylinderMesh", obj.C, Vector3.new(.4, 1.1, .4))
	obj.CW=add.Weld(obj.C, obj.Handle, CFrame.new(0, .1, -.1)*CFrame.Angles(0, 0, math.pi/2))

	obj.P=add.Part(modelB, false, false, color, 0, Vector3.new(.2, .2, 1.2), nil, Vector3.new(.5, .5, 1))
	obj.PW=add.Weld(obj.P, obj.Reload, CFrame.new(-.06, 0, 0))

	obj.P=add.Part(modelB, false, false, color, 0, Vector3.new(.2, .2, 1.2), nil, Vector3.new(.5, .5, 1))
	obj.PW=add.Weld(obj.P, obj.Reload, CFrame.new(.06, 0, 0))

	obj.W=add.Wedge(modelB, false, false, color, 0, Vector3.new(.2, .2, .2), nil, Vector3.new(.5, .35, .4))
	obj.WW=add.Weld(obj.W, obj.Reload, CFrame.new(0, .035, .68)*CFrame.Angles(0, math.pi, 0))
	obj.W=add.Wedge(modelB, false, false, color, 0, Vector3.new(.2, .2, .2), nil, Vector3.new(.5, .35, .4))
	obj.WW=add.Weld(obj.W, obj.Reload, CFrame.new(0, -.035, .68)*CFrame.Angles(math.pi, 0, 0))
function createParts()
	torso.Transparency=1
	body.Torso.Transparency=0
	gui=Instance.new("ScreenGui", player.PlayerGui) gui.Name=scriptname
	--==PARTS==--
	body.Head=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	body.ArmLeft, body.ArmRight=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	body.LegLeft, body.LegRight=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	--==WELDS==--
	body.HeadW=add.Weld(body.Head, body.Torso, CFrame.new(0, 1.5, 0))
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
	obj.Clip=add.Gui("TextLabel", gui, "Really black", "Really black", "White", "Size18", clip.."/6", 0, UDim2.new(0, 150, 0, 50), UDim2.new(0, 0, 0, 150))
	obj.Ammo=add.Gui("TextLabel", obj.Clip, "Really black", "Really black", "White", "Size18", ammo.."/200", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
end
function removeParts()
	p(function()
		body.Torso.Transparency=1
		if torso then
			joints.LeftShoulder.Part0=torso
			joints.RightShoulder.Part0=torso
			joints.LeftHip.Part0=torso
			joints.RightHip.Part0=torso
		end
		player.PlayerGui[scriptname]:remove()
		for i, v in pairs(model:children()) do v:remove() end
		for i, v in pairs(char:children()) do v.Transparency=0 end
		torso.Transparency=0
	end)
end
function hit(h)
	if h.Parent:findFirstChild("Humanoid") and hitDeb==false and h.Parent~=char then
		hitDeb=true
		local hHuman=h.Parent:findFirstChild("Humanoid")
		local hTorso=h.Parent:findFirstChild("Torso")
		local dmg=math.random(5, 10)
		if h.Name=="Head" then local headshot=HeadShot:clone() headshot.Parent=h headshot:play()
			h.Parent:BreakJoints()
			local fakeM=Instance.new("Model", workspace) fakeM.Name="HeadShot!"
			local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
			local effect=add.Part(fakeM, true, false, "Bright red", 0, Vector3.new(1, 1, 1), h.CFrame*CFrame.new(0, 4, 0)) effect.Name="Head"
			local fakeMesh=add.Mesh("CylinderMesh", effect, Vector3.new(1, .5, 1), nil, nil)
			game.Debris:addItem(fakeM, 2)
		else
			hHuman.Health=hHuman.Health-dmg
			local fakeM=Instance.new("Model", workspace) fakeM.Name=-dmg
			local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
			local effect=add.Part(fakeM, true, false, "Bright red", 0, Vector3.new(1, 1, 1), h.CFrame*CFrame.new(0, 4, 0)) effect.Name="Head"
			local fakeMesh=add.Mesh("CylinderMesh", effect, Vector3.new(1, .5, 1), nil, nil)
			hTorso.RotVelocity=Vector3.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100))
			game.Debris:addItem(fakeM, 2)
			local effect=add.Part(workspace, true, false, "White", .5, Vector3.new(1, 1, 1), CFrame.new(h.CFrame.p, torso.CFrame.p)*CFrame.Angles(-math.pi/2, 0, 0))
			local effectM=add.Mesh("SpecialMesh", effect, Vector3.new(1, 1, 1), nil, nil, "http://www.roblox.com/asset/?id=20329976")
			c(function()
				for i=1, 2, .2 do wait()
					effectM.Scale=Vector3.new(i, i/2, i)
				end
				effect:remove()
			end)
		end
		wait(.1)
		hitDeb=false
	end
end
function computePos(pos, pos2)
	local pos3=Vector3.new(pos2.x, pos.y, pos2.z)
	return CFrame.new(pos, pos3)
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
				for i=1, 0, -.25 do
					wait()
					tMesh.Scale=tMesh.Scale*Vector3.new(i, 1, i)
				end
				trail:remove()
			end)
			c(function()
				for i=0, 1, .25 do
					wait()
					trail.Transparency=i
				end
			end)
		end
	end)
end
function reload()
	Reload:play()
	for i=0, 1, .1 do wait()
		animate.Torso(CFrame.Angles(0, math.rad(90-90*i), 0))
		animate.ArmLeft(CFrame.new(.5*i, 0, -.5*i)*CFrame.Angles(math.rad(90)*i, 0, math.rad(25)*i))
		animate.ArmRight(CFrame.new(-.5*i, 0, -.5*i)*CFrame.Angles(math.rad(90), 0, math.rad(90-135*i)))
	end
	for i=0, 1, .1 do wait()
		obj.ReloadW.C1=CFrame.new(0, .1, -.15+.4*i)
		animate.ArmLeft(CFrame.new(.5, 0, -.5)*CFrame.Angles(math.rad(90), 0, math.rad(25+20*i)))
	end
	c(function()
		for i=1, 10 do wait()
			local clips=add.Part(workspace, false, true, "Bright yellow", 0,Vector3.new(.2, .2, .4), obj.Handle.CFrame*CFrame.new(0, -.2, 0), Vector3.new(.5, .5, 1))
			c(function()
				wait(2)
				for i=0, 1, .1 do wait()
					clips.Transparency=i
				end
				clips:remove()
			end)
		end
	end)
	for i=1, 0, -.1 do wait()
		obj.ReloadW.C1=CFrame.new(0, .1, -.15+.4*i)
		animate.ArmLeft(CFrame.new(.5, 0, -.5)*CFrame.Angles(math.rad(90), 0, math.rad(25+20*i)))
	end
	for i=1, 0, -.1 do wait()
		animate.Torso(CFrame.Angles(0, math.rad(90-90*i), 0))
		animate.ArmLeft(CFrame.new(.5*i, 0, -.5*i)*CFrame.Angles(math.rad(90)*i, 0, math.rad(25)*i))
		animate.ArmRight(CFrame.new(-.5*i, 0, -.5*i)*CFrame.Angles(math.rad(90), 0, math.rad(90-135*i)))
	end
	animate.ArmLeft(CFrame.Angles(-math.rad(15), 0, -math.rad(15)))
	if ammo>0 then
		local take=6-clip
		ammo=ammo-take
		clip=clip+take
	end
end
mouse.KeyDown:connect(function(key) local key=key:lower()
	local bg=Instance.new("BodyGyro") bg.maxTorque=Vector3.new(math.huge, math.huge, math.huge) bg.D=500
	if key=="q" and keyDeb==false and equip==false then
		keyDeb=true equip=true
		mouse.Icon="http://www.roblox.com/asset/?id=35649261"
		createParts()
		obj.HandleW.Part1=arm.Right
		obj.HandleW.C1=CFrame.new(0, -1.2, 0)*CFrame.Angles(-math.rad(105), 0, 0)
		for i=0, 1, .1 do wait()
			animate.ArmRight(CFrame.new(0, .5*i, 0)*CFrame.Angles(0, 0, -math.rad(10)*i))
		end
		for i=0, 1, .1 do wait()
			animate.Torso(CFrame.Angles(0, math.rad(90)*i, 0))
			animate.ArmLeft(CFrame.Angles(-math.rad(15)*i, 0, -math.rad(15)*i))
			animate.ArmRight(CFrame.new(0, .5-.5*i, 0)*CFrame.Angles(math.rad(90)*i, 0, math.rad(90)*i))
		end
		bg.Parent=torso
		keyDeb=false
	elseif key=="q" and keyDeb==false and equip==true then
		keyDeb=true equip=false
		mouse.Icon=""
		for i=1, 0, -.1 do wait()
			animate.ArmRight(CFrame.new(0, .5-.5*i, 0)*CFrame.Angles(math.rad(90)*i, 0, math.rad(90)*i))
		end
		for i=1, 0, -.1 do wait()
			animate.Torso(CFrame.Angles(0, math.rad(90)*i, 0))
			animate.ArmLeft(CFrame.Angles(-math.rad(15)*i, 0, -math.rad(15)*i))
			animate.ArmRight(CFrame.new(0, .5*i, 0)*CFrame.Angles(0, 0, -math.rad(10)*i))
		end
		removeParts() for i, v in pairs(torso:children()) do if v:isA("BodyGyro") then v:remove() end end
		obj.HandleW.Part1=obj.Pocket
		obj.HandleW.C1=CFrame.new(0, .75, 0)*CFrame.Angles(-math.rad(105), 0, 0)
		keyDeb=false
	end
	if key=="r" and keyDeb==false and equip==true then
		keyDeb=true
		reload()
		keyDeb=false
	end
	while equip==true do wait()
		body.HeadW.C1=CFrame.new(Vector3.new(0, 1.5, 0), mouse.Hit.p)
		bg.cframe=computePos(torso.CFrame.p, mouse.Hit.p)
		obj.Clip.Text=clip.."/6"
		obj.Ammo.Text=ammo.."/200"
	end
end)
mouse.Button1Down:connect(function()
	local speed=500
	if equip==true and keyDeb==false and clip>=1 then Gun:play() keyDeb=true
		clip=clip-1
		animate.ArmRight(CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(90), math.rad(15), math.rad(90)))
		local bullet=add.Part(workspace, false, false, "Bright yellow", 0, Vector3.new(.2, 1, .2), CFrame.new(obj.Point.CFrame.p, mouse.Hit.p)*CFrame.Angles(math.pi/2, 0, 0))
		local bulletM=add.Mesh("SpecialMesh", bullet, Vector3.new(.04, .05, .04), nil, nil, "http://www.roblox.com/Asset/?id=10207677")
		local bf=Instance.new("BodyForce", bullet) bf.force=Vector3.new(0, bullet:GetMass()*196.2, 0)
		local effect=add.Part(workspace, true, false, "Bright yellow", .5, Vector3.new(.5, .5, .5), obj.Point.CFrame*CFrame.Angles(math.rad(-45, 45), math.rad(-45, 45), math.rad(-45, 45)))
		c(function()
			for i=0, 1, .1 do wait()
				effect.Transparency=effect.Transparency+(i/2)
				effect.Mesh.Scale=effect.Mesh.Scale+Vector3.new(i, i, i)
			end
			effect:remove()
		end)
		trailDeb=true
		trail(bullet, CFrame.new())
		bullet.Touched:connect(hit)
		bullet.Velocity=CFrame.new((obj.Point.CFrame*CFrame.Angles(math.pi/2, 0, 0)).p, mouse.Hit.p).lookVector*speed
		c(function() wait(1.5) bullet:destroy() trailDeb=false end)
		wait(.5)
		animate.ArmRight(CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(90), 0, math.rad(90)))
		keyDeb=false
	elseif equip==true and keyDeb==false then
		keyDeb=true
		reload()
		keyDeb=false
	end
end)
end}
module[4] = {"Plane",function()

repeat wait() until game:IsLoaded() and game:service("Players").LocalPlayer.Character ~= nil;
wait(0.4) 
for i, v in pairs(game:service("Players").LocalPlayer.Character:children()) do 
if v ~= script then 
v:Destroy() 
end 
end 

local player = game:service("Players").LocalPlayer
local mouse = player:GetMouse() 
local cam = workspace.CurrentCamera 
local char = player.Character 
local Torsoz = char:findFirstChild("Torso") 
local NV = Vector3.new() 
local Main 
local W,S = false,false 
local DoublePress = {nil,0} 
script.Parent = char 

local TrailParts = {} 
local Acceleration = 0.08 
local Speed = 0 
local MinSpeed = 0 
local MaxSpeed = 3.2 
local DesiredDirection = cam.CoordinateFrame.lookVector 
local Direction = DesiredDirection 
local Roll = 0 
local AllowTrails = true 

script.Name = "AdvFlight" 

local P = Instance.new("Part") 
P.Anchored = true 
P.CanCollide = false 
P.Name = "Part" 
P.formFactor = "Custom" 
P.Size = Vector3.new(0.2,0.2,0.2) 
P.Locked = true 
P.TopSurface = 10 
P.BottomSurface = 10 
P.FrontSurface = 10 
P.BackSurface = 10 
P.LeftSurface = 10 
P.RightSurface = 10 
P.Material = "Pebble" 
P.BrickColor = BrickColor.new("White") 

local shipp 
local shadow 
local campart 

function RAY(pos, dir, startpos, endpos, distleft, collidedlist) 
collidedlist = collidedlist or {char} 
startpos = startpos or pos 
distleft = distleft or dir.unit * dir.magnitude 
endpos = endpos or pos + distleft 
local ray = Ray.new(pos, distleft) 
local hitz,enz = workspace:FindPartOnRayWithIgnoreList(ray, collidedlist) 
if hitz ~= nil then 
if hitz.CanCollide == false then 
table.insert(collidedlist, hitz) 
local newpos = enz 
local newdistleft = distleft - (dir.unit * (pos - newpos).magnitude) 
if newdistleft ~= NV then 
return RAY(newpos-(dir*0.01), dir, startpos, endpos, newdistleft+(dir*0.01), collidedlist) 
end 
end 
end 
return hitz, enz, ray 
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

function HSV(H,S,V) 
H = H % 360 
local C = V * S 
local H2 = H/60 
local X = C * (1 - math.abs((H2 %2) -1)) 
local color = Color3.new(0,0,0) 
if H2 <= 0 then 
color = Color3.new(C,0,0) 
elseif 0 <= H2 and H2 <= 1 then 
color = Color3.new(C,X,0) 
elseif 1 <= H2 and H2 <= 2 then 
color = Color3.new(X,C,0) 
elseif 2 <= H2 and H2 <= 3 then 
color = Color3.new(0,C,X) 
elseif 3 <= H2 and H2 <= 4 then 
color = Color3.new(0,X,C) 
elseif 4 <= H2 and H2 <= 5 then 
color = Color3.new(X,0,C) 
elseif 5 <= H2 and H2 <= 6 then 
color = Color3.new(C,0,X) 
end 
local m = V - C
return Color3.new(color.r + m, color.g + m, color.b + m) 
end 

function Build(shiptype) 
AllowTrails = true 
for i, v in pairs(char:children()) do 
if v.className == "Model" and v.Name == "Ship" then 
v:remove() 
end 
end 
for i, v in pairs(TrailParts) do 
for _,V in pairs(v[3]) do 
V:Destroy() 
end 
end 
local mdl = Instance.new("Model", char) 
mdl.Name = "Ship" 

------------------------ Speeder Ship Type -----------------------------
if shiptype == "Speeder" then 

shipp = P:Clone() 
shipp.Parent = mdl 
shipp.Size = Vector3.new(1,1,2.2) 
local shipwing1 = P:Clone() 
shipwing1.Parent = mdl 
shipwing1.Size = Vector3.new(0.6,1.2,2) 
local mesh = Instance.new("SpecialMesh", shipwing1) 
mesh.MeshType = "Wedge" 
local shipwing2 = shipwing1:Clone() 
shipwing2.Parent = mdl 
campart = P:Clone() 
campart.Transparency = 1 
local shipwing21 = P:Clone() 
shipwing21.Parent = mdl 
shipwing21.Size = Vector3.new(0.32,1.1,2.6) 
local mesh = Instance.new("SpecialMesh", shipwing21) 
mesh.MeshType = "Wedge" 
local shipwing22 = shipwing21:Clone() 
shipwing22.Parent = mdl 
campart = P:Clone() 
campart.Transparency = 1 

local shipwi = P:Clone() 
shipwi.Parent = mdl 
shipwi.Size = Vector3.new(1,1,1.2) 
local mesh = Instance.new("SpecialMesh", shipwi) 
mesh.MeshType = "Wedge" 
local shipwi2 = P:Clone() 
shipwi2.Parent = mdl 
shipwi2.Size = Vector3.new(0.7,0.7,0.84) 
shipwi2.Material = "SmoothPlastic" 
shipwi2.BrickColor = BrickColor.new("Pastel blue") 
shipwi2.Reflectance = 0.6 
local mesh = Instance.new("SpecialMesh", shipwi2) 
mesh.MeshType = "Wedge" 

shadow = P:Clone() 
shadow.Parent = mdl 
shadow.Name = "Shadow" 
shadow.Material = "SmoothPlastic" 
shadow.BrickColor = BrickColor.new("Really black") 
local mesh = Instance.new("SpecialMesh",shadow) 
mesh.MeshType = "Sphere" 

TrailParts = {} 
table.insert(TrailParts,{shipp,1,{},cam.CoordinateFrame.p,CFrame.new(0,0,1),0.5,18}) 
table.insert(TrailParts,{shipwing1,1,{},cam.CoordinateFrame.p,CFrame.new(0,0.45,1),0.3,15}) 
table.insert(TrailParts,{shipwing2,1,{},cam.CoordinateFrame.p,CFrame.new(0,0.45,1),0.3,15}) 
for _, V in pairs(TrailParts) do 
for i = 1, V[7] do 
local p = P:Clone() 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshId = "http://www.roblox.com/asset/?id=9856898" 
mesh.TextureId = "http://www.roblox.com/asset/?id=48358980" 
p.BrickColor = BrickColor.new("Dark stone grey") 
table.insert(V[3],p) 
end 
end 

function ReposParts() 
shipwing1.CFrame = shipp.CFrame * CFrame.new(-1.1,-0.195,-0.14) * CFrame.Angles(0,0,math.pi/2) 
shipwing2.CFrame = shipp.CFrame * CFrame.new(1.1,-0.195,-0.14) * CFrame.Angles(0,0,-math.pi/2) 
shipwing21.CFrame = shipp.CFrame * CFrame.new(-1.05,-0.34,-0.45) * CFrame.Angles(0,0,math.pi/2) 
shipwing22.CFrame = shipp.CFrame * CFrame.new(1.05,-0.34,-0.45) * CFrame.Angles(0,0,-math.pi/2) 
shipwi.CFrame = shipp.CFrame * CFrame.new(0,0,-1.7) 
shipwi2.CFrame = shipwi.CFrame * CFrame.new(0,0.015,-0.015) 
campart.CFrame = shipp.CFrame + Vector3.new(0,1.5,0) 
end 
cam.CameraSubject = campart 
cam.CameraType = "Track" 

shipp.CFrame = CFrame.new(NV,Direction) + cam.CoordinateFrame.p 
ReposParts() 

end 

AllowTrails = true 
end 
Build("Speeder") 

function B1D() 
Build("Speeder") 
end 

function RollThatSht(direc) 
if Roll == 0 then 
for i = 1, 50 do 
Roll = (-360 + math.cos(math.pi/50*i) * 360) * direc 
wait(0.02) 
end 
Roll = 0 
end 
end 

function KD(key) 
if key == "w" then 
W = true 
elseif key == "s" then 
S = true 
end 

local rollpls = 0 
if key == DoublePress[1] and tick() - DoublePress[2] < 0.32 then 
DoublePress = {nil,0} 
if key == "a" then 
rollpls = -1 
elseif key == "d" then 
rollpls = 1 
end 
end 

DoublePress = {key,tick()} 
if rollpls ~= 0 then 
RollThatSht(rollpls) 
end 
end 

function KU(key) 
if key == "w" then 
W = false 
elseif key == "s" then 
S = false 
end 
end 

function Equip() 
end 

function Unequip() 
end 

mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(B1D) 
mouse.KeyDown:connect(KD) 
mouse.KeyUp:connect(KU) 



local count = 0 
local hue = 0 
--game:GetService("RunService").Stepped:connect(function() 
while wait(0.02) do 

------ Speed --------
local valu = (0.002*MaxSpeed) + ((Speed/MaxSpeed)*Acceleration)
if W == true then 
Speed = Speed + valu 
elseif S == true then 
Speed = Speed - valu 
end 
if Speed > MaxSpeed then 
Speed = MaxSpeed 
elseif Speed < MinSpeed then 
Speed = MinSpeed 
end 

------ left/right tilt ---------
local target = 180 + math.floor(math.deg(math.atan2(DesiredDirection.x,DesiredDirection.z))) 
local current = 180 + math.floor(math.deg(math.atan2(Direction.x,Direction.z))) 
local swing = 0 
if math.abs(math.abs(current-target) - 360) > math.abs(target-current) then 
swing = target-current 
else 
swing = (current > target and -(math.abs(current-target) - 360)) or (current < target and math.abs(current-target) - 360) 
end 

DesiredDirection = cam.CoordinateFrame.lookVector 
------ direction smoothening ------ 
local dir = DesiredDirection.unit 
if Direction ~= dir then 
if (Direction - dir).magnitude < 0.01 then 
Direction = dir 
else 
local dist = ((dir - Direction).unit * (dir - Direction).magnitude) /10 
Direction = (Direction + dist).unit 
end 
end 

shipp.CFrame = (CFrame.new(NV,Direction) + shipp.Position + (Direction.unit * Speed)) * CFrame.Angles(0,0,math.rad(Roll) + math.rad(swing/2)) 
ReposParts() 

------ shadow ------
local ghitz, genz = RAY(shipp.Position,Vector3.new(0,-26,0)) 
local angles = CFrame.new() 
if ghitz ~= nil and ghitz.className ~= "Terrain" and ((ghitz.className == "Part" and ghitz.Shape == Enum.PartType.Block) or (ghitz.className ~= "Part" and ghitz:IsA("BasePart"))) then 
local wvec,vec = FindSurface(ghitz,genz) 
angles = CFrame.new(NV,wvec) * CFrame.Angles(-math.pi/2,0,0) 
elseif ghitz ~= nil and (ghitz.className == "Part" and ghitz.Shape == Enum.PartType.Ball) then 
angles = (CFrame.new(ghitz.Position, genz) - ghitz.Position) * CFrame.Angles(-math.pi/2,0,0) 
end 
shadow.CFrame = CFrame.new(genz) * angles 
shadow.Transparency = 0.5 + (((shipp.Position - genz).magnitude /26)*0.5)
shadow.Mesh.Scale = (Vector3.new(4.4,0.25,4.4) * 5) * (1-(shipp.Position - genz).magnitude /26)

------- Trails ----------------------- 
if AllowTrails == true then 
count = (count+1)%1 
hue = (hue+1) % 360
local rgb = HSV(hue,0.65,0.85) 
for _,v in pairs(TrailParts) do 
local to = (v[1].CFrame * v[5]).p
if Speed > MinSpeed + 0.2 then 
v[2] = (v[2]%#v[3]) + 1 
v[3][v[2]].CFrame = CFrame.new((v[4] + to)/2,to) * CFrame.Angles(math.pi/2,math.rad(Roll) + math.rad(swing/2),0) 
v[3][v[2]].Mesh.Scale = Vector3.new(v[6],(v[4] - to).magnitude*2,v[6]) 
v[3][v[2]].Mesh.VertexColor = Vector3.new(rgb.r,rgb.g,rgb.b) 
v[3][v[2]].Transparency = 0.15 
v[3][v[2]].Parent = game.Players.LocalPlayer.Character
else 
v[2] = (v[2]%#v[3]) + 1 
v[3][v[2]].Parent = nil 
end 

v[4] = to 
end 
end 

end 

end}
module[5] = {"Plasma Shotgun",function()
--madiik's plasma shottie

--variables

local plr = game:service'Players'.LocalPlayer
local char = plr.Character
local mouse = plr:GetMouse()
local humanoid = char:findFirstChild("Humanoid")
local torso = char:findFirstChild("Torso")
local head = char.Head
local ra = char:findFirstChild("Right Arm")
local la = char:findFirstChild("Left Arm")
local rl = char:findFirstChild("Right Leg")
local ll = char:findFirstChild("Left Leg")
local rs = torso:findFirstChild("Right Shoulder")
local ls = torso:findFirstChild("Left Shoulder")
local rh = torso:findFirstChild("Right Hip")
local lh = torso:findFirstChild("Left Hip")
local neck = torso:findFirstChild("Neck")
local animate = char.Animate


--some more variables
local equipping = false
	local equipped = false
	local spread = 0
	-- end of some more variables
	
	local sound = Instance.new("Sound",head)
	sound.SoundId = "http://www.roblox.com/asset?id=130113322"
	sound.Volume = 1
	sound.Pitch = 1
	
	local sound2 = Instance.new("Sound",head)
	sound2.SoundId = "http://www.roblox.com/asset?id=130113370"
	sound2.Volume = 1
	sound2.Pitch = 0.9


modelName = "Gun"

pcall(function()
	char:findFirstChild(modelName):Destroy()
	end)


local gun = Instance.new("Model", char)
gun.Name = modelName



function attach(weld, part0, part1)
	weld.Part0 = part0
	weld.Part1 = part1
	end









--create func
function part(parent, size, color, formfactor, collide, transparency)
	if transparency == nil then transparency = 0 end
	if collide == nil then collide = false end
		if formfactor == nil then formfactor = Enum.FormFactor.Custom end
        local p=Instance.new("Part", parent)
        p.FormFactor=formfactor
        p.CanCollide=false
        p.Size=size
        p.Locked=true
                p.Transparency=transparency
        p.Position=torso.Position
        p.BrickColor=color
        p.FrontSurface="SmoothNoOutlines" 
        p.BackSurface="SmoothNoOutlines"         
        p.LeftSurface="SmoothNoOutlines" 
        p.BottomSurface="SmoothNoOutlines" 
        p.TopSurface="SmoothNoOutlines"  
        p.RightSurface="SmoothNoOutlines" 
        return p
end
function wedge(parent, size, color, formfactor, collide, transparency)
	
		if transparency == nil then transparency = 0 end
	if collide == nil then collide = false end
		if formfactor == nil then formfactor = Enum.FormFactor.Custom end
		
                local p=Instance.new("WedgePart", parent)
        p.FormFactor=formfactor
        p.CanCollide=false
        p.Size=size
        p.Locked=true
        p.Position = torso.Position
        p.BrickColor=color
        p.FrontSurface="SmoothNoOutlines" 
        p.BackSurface="SmoothNoOutlines"         
        p.LeftSurface="SmoothNoOutlines" 
        p.BottomSurface="SmoothNoOutlines" 
        p.TopSurface="SmoothNoOutlines"  
        p.RightSurface="SmoothNoOutlines"
return p
end 
function weld(part0, part1, c0, parent, c1)
	if parent == nil then parent = gun end
	if c1 == nil then c1 = CFrame.new() end

        local wel=Instance.new("Weld", parent)
        wel.Part0 = part0
        wel.Part1 = part1
        wel.C0 = c0
        wel.C1 = c1
        return wel
end
function specialmesh(parent, meshType, scale, meshId)
        local mesh = Instance.new("SpecialMesh", parent)
        mesh.Scale = scale
        mesh.MeshType = meshType
        mesh.MeshId = meshId
        return mesh
end


--some ray functi0n

function rayCast(speed, gravity, from)
	coroutine.wrap(function()		
	if char.Humanoid.Health == 0 then return end
    local rayP         = Instance.new("Part")
    rayP.Name          = "rayP"
    rayP.BrickColor    = BrickColor.new("Cyan")
    rayP.Anchored      = true
    rayP.CanCollide    = false
	rayP.Locked = true
    rayP.TopSurface    = Enum.SurfaceType.Smooth
    rayP.BottomSurface = Enum.SurfaceType.Smooth
    rayP.formFactor    = Enum.FormFactor.Custom
    rayP.Size          = Vector3.new(0.2, 0.2, 0.2)

Instance.new("PointLight", rayP).Color = Color3.new(0, 255, 255)
	
Instance.new("BlockMesh", rayP).Scale = Vector3.new(0.3, 0.3, 20)





	
	

    local bulletposition = from.Position + Vector3.new(0, 0.3, 0)

   local bulletvelocity = (Vector3.new(math.random(-spread*4,spread*4), math.random(-spread*4,spread*4), math.random(-spread*4,spread*4)))+( plr:GetMouse().Hit.p - bulletposition).unit*speed
    local bulletlastposition = bulletposition



    
    coroutine.resume(coroutine.create(function()
        while true do
	        local dt = wait()
            bulletlastposition = bulletposition
            bulletvelocity = bulletvelocity + (Vector3.new(0, -9.81*gravity, 0)*dt)
	        bulletposition = bulletposition + (bulletvelocity*dt)
                
            local ray = Ray.new(bulletlastposition,  (bulletposition - bulletlastposition))

            local hit, hitposition = workspace:FindPartOnRayWithIgnoreList( ray, { char, rayP, TrailPart} )
	            
	if (torso.Position - rayP.Position).magnitude > 540 then
	 	rayP:Destroy()
	 break
	 end
	
	
            if hit then
				local damage = math.random(14, 17)
				if hit.Parent:findFirstChild("Humanoid") ~= nil then
					hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - damage
				end
				if hit.Parent:IsA("Hat") and hit.Parent.Parent:findFirstChild("Humanoid") ~= nil then
					hit.Parent.Parent.Humanoid.Health = hit.Parent.Parent.Humanoid.Health - damage		
					end
                bulletposition = hitposition
                rayP.CFrame = CFrame.new(bulletposition, bulletposition+bulletvelocity)
                rayP:Destroy()
                break
            end
	        rayP.CFrame = CFrame.new(bulletposition, bulletposition+bulletvelocity)
			rayP.Parent = workspace
        end
    end))
	end)()
end



--part(parent, size, color, formfactor(opt), collide(opt), transparency(opt))
--specialmesh(parent, meshType, scale, meshId)
p1 = part(gun, Vector3.new(0.2, 0.85, 1), BrickColor.new("Cyan"))
w1 = weld(p1, torso, CFrame.new(0.6, 0, -1)* CFrame.Angles(-math.pi/4, -math.pi/2, 0))


p2 = wedge(gun, Vector3.new(0.2, 0.2, 0.2), BrickColor.new("Cyan"))
w2 = weld(p2, p1, CFrame.new(0, -0.325, 0.6))


p3 = wedge(gun, Vector3.new(0.2, 0.2, 0.2), BrickColor.new("Cyan"))
w3 = weld(p3, p1, CFrame.new(0, -0.325, 0.6)*CFrame.Angles(math.pi, math.pi, 0))


p4 = part(gun, Vector3.new(0.2, 0.45, 2), BrickColor.new("Dark stone grey"))
w4 = weld(p4, p1, CFrame.new(0, 0, 1.5))


p5 = part(gun, Vector3.new(0.2, 0.2, 1), BrickColor.new("Dark stone grey"))
Instance.new("BlockMesh", p5).Scale = Vector3.new(1.01, 0.5, 1.01)
w5 = weld(p5, p1, CFrame.new(0, 0.175, 0))




p6 = part(gun, Vector3.new(0.2, 0.2, 1), BrickColor.new("Dark stone grey"))
Instance.new("BlockMesh", p6).Scale = Vector3.new(1.01, 0.5, 1.01)
w6 = weld(p6, p1, CFrame.new(0, -0.175, 0))



p7 = part(gun, Vector3.new(0.2, 0.75, 0.25), BrickColor.new("Cyan"))
Instance.new("BlockMesh", p7).Scale = Vector3.new(.9, 1, 1)
w7 = weld(p7, p1, CFrame.new(0, -0.2, 1)*CFrame.Angles(math.pi/6, 0, 0))



p8 = part(gun, Vector3.new(0.2, 1, 0.2), BrickColor.new("Dark stone grey"))
Instance.new("CylinderMesh", p8)
w8 = weld(p8, p1, CFrame.new(0, -3, -0.1)*CFrame.Angles(math.pi/2, 0, 0))



--part(parent, size, color, formfactor(opt), collide(opt), transparency(opt))
--specialmesh(parent, meshType, scale, meshId)



p9 = part(gun, Vector3.new(0.2, 1, 0.2), BrickColor.new("Dark stone grey"))
Instance.new("CylinderMesh", p9).Scale = Vector3.new(0.8, 1, 0.8)
w9 = weld(p9, p1, CFrame.new(0, -2.8, 0.08)*CFrame.Angles(math.pi/2, 0, 0))




pa1 = part(gun, Vector3.new(0.2, 0.2, 0.2), BrickColor.new("Dark stone grey"))
specialmesh(pa1, "FileMesh", Vector3.new(0.4, 0.4, 1), "http://www.roblox.com/asset/?id=3270017")
we1 = weld(pa1, p1, CFrame.new(1.1, 0.2, 0)*CFrame.Angles(0, math.pi/2, 0))


pa2 = part(gun, Vector3.new(0.2, 0.2, 0.2), BrickColor.new("Dark stone grey"))
specialmesh(pa2, "FileMesh", Vector3.new(0.35, 0.35, 1.5), "http://www.roblox.com/asset/?id=3270017")
we2 = weld(pa2, p1, CFrame.new(1.9 - 0.6, 0, 0.05)*CFrame.Angles(0, math.pi/2, 0))

pa3 = part(gun, Vector3.new(0.2, 0.2, 0.2), BrickColor.White())
Instance.new("BlockMesh", pa3).Scale = Vector3.new(0.95, 1, 0.1)
we3 = weld(pa3, p1, CFrame.new(-0.01, 0, 1.82 - 0.6))

pa4 = part(gun, Vector3.new(0.2, 0.2, 0.2), BrickColor.White())
Instance.new("BlockMesh", pa4).Scale = Vector3.new(0.95, 1, 0.1)
we4 = weld(pa4, p1, CFrame.new(-0.01, 0, 1.98 - 0.6))

pa5 = part(gun, Vector3.new(0.2, 0.2, 0.2), BrickColor.White())
Instance.new("BlockMesh", pa5).Scale = Vector3.new(0.95, 0.1, 0.1)
we5 = weld(pa5, p1, CFrame.new(-0.01, -0.05, 1.85 - 0.6))

pa6 = part(gun, Vector3.new(0.2, 0.2, 0.2), BrickColor.White())
Instance.new("BlockMesh", pa6).Scale = Vector3.new(0.95, 0.1, 0.1)
we6 = weld(pa6, p1, CFrame.new(-0.01, -0.05, 1.95 - 0.6))

pa7 = part(gun, Vector3.new(0.2, 0.2, 0.2), BrickColor.White())
Instance.new("BlockMesh", pa7).Scale = Vector3.new(0.95, 0.1, 0.1)
we7 = weld(pa7, p1, CFrame.new(-0.01, -0.02, 1.9 - 0.6))


pa8 = wedge(gun, Vector3.new(0.2, 0.2, 0.2), BrickColor.new("Dark stone grey"))
specialmesh(pa8, "Wedge", Vector3.new(0.2, 1, 1), "")
we8 = weld(pa8, p1, CFrame.new(0, -0.23, -3.35)*CFrame.Angles(0, math.pi, 0))

pa9 = part(gun, Vector3.new(0.21, 0.8, 0.21), BrickColor.new("Cyan"))
we9 = weld(pa9, p1, CFrame.new(0, -2.3, 0.2)*CFrame.Angles(math.pi/2, 0, 0))


--part(parent, size, color, formfactor(opt), collide(opt), transparency(opt))
--specialmesh(parent, meshType, scale, meshId)


for pos = 0.9, 1.9, 0.2 do
	local lpart = part(gun, Vector3.new(0.201, 0.201, 0.201), BrickColor.new("Cyan"))
	Instance.new("BlockMesh", lpart).Scale = Vector3.new(1, 0.5, 0.8)
		local lweld = weld(lpart, p1, CFrame.new(0, -0.25, pos))
end



--function attach(weld, part0, part1)
	--weld.Part0 = part0
	--weld.Part1 = part1
	--end

function equip()
	animate.Disabled = true
	--weld(part0, part1, c0, c1)
	--part(parent, size, color, formfactor(opt), collide(opt), transparency(opt))
	local ftorso = part(gun, torso.Size, torso.BrickColor)
	ftorso.Name = "FakeTorsoShotgun"
	Instance.new("SpecialMesh", ftorso).MeshId = "rbxasset://fonts/torso.mesh"
	local ftorsoweld = weld(ftorso, torso, CFrame.new(),ftorso)
	torso.Transparency = 1
		local ar = Instance.new("Part", gun)
ar.FormFactor = "Custom"
ar.Size = Vector3.new(1, 1, 1)
ar.Transparency = 1
ar.CanCollide = false
ar.Locked = true
ar.Name = "ShoulderJoint"
ar:BreakJoints()
local weldf = Instance.new("Motor", ar)
weldf.C0 = CFrame.new(0, 0.5, 0)
weldf.Part0 = ra
weldf.Part1 = ar
	motor = Instance.new("Motor", ar)
	motor.Part0 = ftorso
	motor.Part1 = ar
	motor.C0 = CFrame.new(1.5, 0.5, 0)
	local ar2 = Instance.new("Part", gun)
ar2.FormFactor = "Custom"
ar2.Size = Vector3.new(1, 1, 1)
ar2.Transparency = 1
ar2.CanCollide = false
ar2.Locked = true
ar2.Name = "ShoulderJoint2"
ar2:BreakJoints()
local weldf2 = Instance.new("Motor", ar2)
weldf2.C0 = CFrame.new(0, 0.5, 0)
weldf2.Part0 = la
weldf2.Part1 = ar2
	motor2 = Instance.new("Motor", ar2)
	motor2.Part0 = ftorso
	motor2.Part1 = ar2
	motor2.C0 = CFrame.new(-1.5, 0.5, 0)
	w1.Part1 = ra
	for angle = 0, 180, 20 do
	w1.C0 = CFrame.new(0+angle/460, 0.5-angle/160, 0.5-angle/360) * CFrame.Angles(math.pi + math.rad(angle/2), math.rad(angle), math.rad(angle))
	wait()
	end
	attach(rh, ftorso, rl)
	attach(lh, ftorso, ll)
	for angle = 0, 90, 10 do
		ftorsoweld.C0 = CFrame.new() * CFrame.Angles(0, math.rad(angle-30), 0)
		motor.C0 = CFrame.new(1.3, 0.5, 0-angle/120) * CFrame.Angles(math.rad(angle), 0, -math.rad(angle-30))
		motor2.C0 = CFrame.new(-1.3, 0.5, 0-angle/180) * CFrame.Angles(math.rad(angle), 0, 0)
		wait()
	end
	
	
			
	
end

function unequip()
	animate.Disabled = false
		attach(rh, torso, rl)
	attach(lh, torso, ll)
w1.C0 = CFrame.new(0.6, 0, -1)* CFrame.Angles(-math.pi/4, -math.pi/2, 0)
w1.Part1 = torso
torso.Transparency = 0
pcall(function()
	gun.FakeTorsoShotgun:Destroy()
	gun.FakeTorsoShotgun:Destroy()
	gun.ShoulderJoint:Destroy()
	gun.ShoulderJoint:Destroy()
	gun.ShoulderJoint2:Destroy()
	gun.ShoulderJoint2:Destroy()
	end)

end
	
	
local tool = Instance.new("HopperBin", plr.Backpack)
tool.Name = "Plasma Shotgun"
	
	

tool.Selected:connect(function(mouse2)
	equipped = true
	local mainGui = Instance.new("ScreenGui", plr.PlayerGui)
	mainGui.Name = "AccuracyStuff"
	
	local accuracyFrame = Instance.new("Frame", mainGui)
accuracyFrame.Size = UDim2.new(0, 100, 0, 100)
accuracyFrame.BackgroundTransparency = 1

mouse2.Icon = "http://www.roblox.com/asset/?id=108625356"



local accuracy1 = Instance.new("TextLabel", accuracyFrame)
accuracy1.Text = ""
accuracy1.BorderSizePixel = 0
accuracy1.BackgroundColor = BrickColor.new("Lime green")
accuracy1.Size = UDim2.new(0, -15, 0, 2)

local accuracy2 = Instance.new("TextLabel", accuracyFrame)
accuracy2.Text = ""
accuracy2.BorderSizePixel = 0
accuracy2.BackgroundColor = BrickColor.new("Lime green")
accuracy2.Size = UDim2.new(0, 15, 0, 2)

local accuracy3 = Instance.new("TextLabel", accuracyFrame)
accuracy3.Text = ""
accuracy3.BorderSizePixel = 0
accuracy3.BackgroundColor = BrickColor.new("Lime green")
accuracy3.Size = UDim2.new(0, 2, 0, -15)

local accuracy4 = Instance.new("TextLabel", accuracyFrame)
accuracy4.Text = ""
accuracy4.BorderSizePixel = 0
accuracy4.BackgroundColor = BrickColor.new("Lime green")
accuracy4.Size = UDim2.new(0, 2, 0, 15)

coroutine.wrap(function()
	while equipped do
	if spread < 0 then spread = 0 end
			if humanoid.Health == 0 then break end
	accuracy1.Position = UDim2.new(0, 41-(spread*40), 0, 50)
	accuracy2.Position = UDim2.new(0, 60+(spread*40), 0, 50)
	accuracy3.Position = UDim2.new(0, 50, 0, 40-(spread*40))
	accuracy4.Position = UDim2.new(0, 50, 0, 60+(spread*40))	
	accuracyFrame.Position = UDim2.new(0, mouse.X-50, 0, mouse.Y-50)
	game:service'RunService'.Stepped:wait()
	end
end)()

equip()
mouse2.Button1Down:connect(function()
	if debounce then return end
	debounce = true
	sound:play()
	motor.C0 = motor.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), -math.rad(12), 0)
	coroutine.wrap(function()
		wait(0.3)
		for angle = 0, 4 do
			motor.C0 = motor.C0 * CFrame.Angles(-math.rad(3.5), math.rad(2.2), 0)
			wait()
		end
		motor.C0 = CFrame.new(1.3, 0.5, 0-90/120) * CFrame.Angles(math.rad(90), 0, -math.rad(90-30))
		wait(0.2)
		sound2:play()
				we9.C0 = we9.C0 * CFrame.new(0, 0, -0.3)
		motor2.C0 = motor2.C0 * CFrame.new(0.3, 0, 0)
		wait(0.1)
		for move = 0, 3 do
			if move > 2 then return end
		we9.C0 = we9.C0 * CFrame.new(0, 0, 0.1)
		motor2.C0 = motor2.C0 * CFrame.new(-0.1, 0, 0)
		wait(0.06)
		end
	end)()
	spread = spread + 1
	coroutine.wrap(function()
	for bullitz = 0, 7 do
		if bullitz > 6 then return end
	rayCast(200, 2, pa8)
	end
	end)()
	coroutine.wrap(function()
		for _ = 0, 50 do
			pcall(function()
		spread = spread - 0.02
		end)
		wait()
		end
	end)()
	wait(1)
	debounce = false
	end)
	
end)

tool.Deselected:connect(function()
	equipped = false
	pcall(function()
		unequip()
		plr.PlayerGui.AccuracyStuff:Destroy()
		plr.PlayerGui.AccuracyStuff:Destroy()
		plr.PlayerGui.AccuracyStuff:Destroy()
	end)
end)
	



end}
module[6] = {"Portal",function()


me = game.Players.LocalPlayer

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = "Portal"
script.Parent = h
end

bin = h
mode = true
hold = false

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

out = false
inn = false

function sel(mouse)
	local mk = nil
	local km = nil
	mouse.Button1Down:connect(function()
		if mode then
			if inn == false then
			inn = true
			mode = false
			hold = true
			local holdpos = mouse.Hit.p + Vector3.new(0,4,0)
			local portal = Instance.new("Model",workspace)
			portal.Name = "InPortal"
			local main = Instance.new("Part")
			prop(main, portal, false, 0.1, 0.1, 2.4, 2.4, 0.6, "Medium blue", true, "Custom")
			main.CFrame = CFrame.new(holdpos,mouse.Hit.p) * CFrame.new(0,3,0)
			local mes = Instance.new("SpecialMesh")
			mesh(mes,main,7,7,4,"FileMesh")
			mes.MeshId = "http://www.roblox.com/asset/?id=3270017"
			local f = Instance.new("Fire",main)
			f.Size = 7
			f.Heat = 0
			f.Color = Color3.new(0.1,0.2,1)
			f.SecondaryColor = Color3.new(0.4,0.4,0.6)
			while hold do
				wait()
				main.CFrame = CFrame.new(holdpos,mouse.Hit.p)
			end
			mk = main
			end
		else
			if inn == true and out == false then
			out = true
			mode = true
			hold = true
			local holdpos = mouse.Hit.p + Vector3.new(0,4,0)
			local portal = Instance.new("Model",workspace)
			portal.Name = "OutPortal"
			local main = Instance.new("Part")
			prop(main, portal, false, 0.1, 0.1, 2.4, 2.4, 0.6, "Neon orange", true, "Custom")
			main.CFrame = CFrame.new(holdpos,mouse.Hit.p) * CFrame.new(0,3,0)
			local mes = Instance.new("SpecialMesh")
			mesh(mes,main,7,7,4,"FileMesh")
			mes.MeshId = "http://www.roblox.com/asset/?id=3270017"
			local f = Instance.new("Fire",main)
			f.Size = 7
			f.Heat = 0
			f.Color = Color3.new(1,0.2,0.1)
			f.SecondaryColor = Color3.new(0.8,0.1,0.08)
			km = main
			hold = true
			while hold do
				wait()
				main.CFrame = CFrame.new(holdpos,mouse.Hit.p)
			end
			local tuch = true
			mk.Touched:connect(function(hit)
				local pla = game.Players:findFirstChild(hit.Parent.Name)
				if pla then
					if tuch then
						tuch = false
						local ff = Instance.new("Part")
						prop(ff,me.Character,false,1,0.2,2.3,2.3,1,"Medium blue",true,"Custom")
						local mag = (mk.Position - main.Position).magnitude
						ff.Size = Vector3.new(2.3,2.3,1)
						ff.CFrame = CFrame.new(mk.Position, main.Position) * CFrame.new(0,0,-mag/2)
						local mee = Instance.new("SpecialMesh",ff)
						mee.MeshType = "Brick"
						mee.Scale = Vector3.new(0.65,0.65,mag)
						for i=0.1, 1.1, 0.05 do
							mk.Transparency = i
							ff.Transparency = ff.Transparency - 0.04
							mee.Scale = Vector3.new(math.random(5,130)/100,math.random(5,130)/100,mag)
							wait()
						end
						pla.Character:MoveTo(main.Position)
						for i=0.1,1.1,0.05 do
							main.Transparency = i
							ff.Transparency = ff.Transparency + 0.08
							mee.Scale = Vector3.new(math.random(30,120)/100,math.random(30,120)/100,mag)
							wait()
						end
						ff:remove()
						main:remove()
						mk:remove()
						mk = nil
						inn = false
						out = false
					end
				end
			end)
			end
		end
	end)
	mouse.Button1Up:connect(function()
		hold = false
	end)
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if (key == "q") then
			mode = true
			if mk ~= nil then
				mk:remove()
				mk = nil
				inn = false
			end
			if km ~= nil then
				km:remove()
				km = nil
				out = false
			end
		end
	end)
end

bin.Selected:connect(sel)


end}

 
 

module[1] = {"A.X.R X-2 PIERCER",function()
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
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Dark grey"))
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

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Handle",Vector3.new(1.00000012, 0.200000003, 0.600000024))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00497817993, 1.09852839, -0.00498199463, -1.00772247e-025, 2.44568227e-013, 1, 2.26874075e-013, 0.999999881, 2.44568255e-013, -1, -2.26874048e-013, 1.00166402e-025))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.WoodPlanks,0,1,"Mid gray","Hitbox",Vector3.new(0.400000036, 1.60000014, 0.600000024))
Hitboxweld=weld(m,handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -0.101213217, 0, 1, 2.45206633e-013, 2.23613988e-025, -2.45206633e-013, -1, 2.26374475e-013, -2.25900477e-025, 2.26374475e-013, -1))
mesh("SpecialMesh",Hitbox,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.479999989, 0.300000012))
PBNeedle=part(Enum.FormFactor.Custom,m,Enum.Material.WoodPlanks,0,0,"Mid gray","PBNeedle",Vector3.new(0.400000006, 0.400000006, 0.200000003))
PBNeedleweld=weld(m,handle,PBNeedle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -0.501211882, 0, 1, 2.45206633e-013, 2.23613988e-025, -2.45206633e-013, -1, 2.26374475e-013, -2.25900477e-025, 2.26374475e-013, -1))
mesh("SpecialMesh",PBNeedle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.479999989, 0.300000012))
PBPart1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","PBPart1",Vector3.new(0.800000012, 0.399999946, 0.600000024))
PBPart1weld=weld(m,handle,PBPart1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -3.69963789, -7.15255737e-006, 1, 5.05664954e-013, -1.30451205e-015, 4.97449304e-013, 1, -4.5374815e-013, 1.30451205e-015, -4.5374815e-013, 1))
mesh("CylinderMesh",PBPart1,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
PBPart2=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","PBPart2",Vector3.new(0.400000006, 0.600000024, 0.400000006))
PBPart2weld=weld(m,handle,PBPart2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700050354, -7.00950623e-005, 3.49907684, -1, -1.60482286e-005, -1.59286301e-007, 1.58860502e-007, 2.65327035e-005, -1, 1.60482323e-005, -1, -2.65327017e-005))
mesh("SpecialMesh",PBPart2,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
PBPole=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","PBPole",Vector3.new(0.400000006, 3.5999999, 0.600000024))
PBPoleweld=weld(m,handle,PBPole,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -1.69878912, 0, 1, 2.91981717e-013, 2.13405832e-025, 2.91981717e-013, 1, -2.97428748e-013, 2.22223004e-025, -2.40585329e-013, 1))
mesh("CylinderMesh",PBPole,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 2, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -1.09998429, 0, 1, 2.45206633e-013, 2.23613988e-025, 2.45205765e-013, 0.999996424, -2.26373662e-013, 2.25900477e-025, -2.26374475e-013, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.400000006, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.325069427, -0.366897583, 0, 0.707222462, -0.706991136, 1.60148153e-013, 0.706991136, 0.707222462, -1.60200642e-013, 2.25900477e-025, -2.26374475e-013, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 2, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -1.09959769, -0.40000391, 1, 2.45206633e-013, 2.23613988e-025, 2.45206633e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.560000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000006, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699993134, 1.09672546e-005, 0.200021386, -0.999997139, -5.88281814e-008, 2.74286049e-005, -2.76967985e-005, -7.53964502e-010, -0.999998033, 5.88349671e-008, -0.999996901, -2.88369467e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.420000017, 0.460000008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, 1.99907148, 0.400010586, 1, -2.3827215e-007, 4.58606735e-007, -2.38272577e-007, -1, -1.63917434e-007, 4.58606763e-007, 1.6391779e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 2, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -1.09944224, 0.399987221, 1, 2.45206633e-013, 2.23613988e-025, 2.45206633e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.560000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599994659, 1.99895847, -0.399979591, 1, -2.38257996e-007, 4.58606735e-007, -2.38258409e-007, -1, -1.63927155e-007, 4.58606763e-007, 1.63927496e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, 0.198883891, -0.399979591, 1, -2.38229688e-007, 4.58606735e-007, -2.38230101e-007, -1, -1.63946595e-007, 4.58606763e-007, 1.63946936e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, 0.198892951, 0.400010586, 1, -2.38208457e-007, 4.58606735e-007, -2.3820887e-007, -1, -1.63961175e-007, 4.58606763e-007, 1.63961516e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.800000012))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -0.199686766, 0, 1, 2.49342214e-013, 2.23281582e-025, 2.41071052e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.800000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -1.99940848, 0, 1, 2.49342214e-013, 2.23281582e-025, 2.41071052e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.800000012, 0.799999952, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -1.09965634, -7.15255737e-006, 1, 2.53450039e-013, -1.30451205e-015, 2.36963227e-013, 1, -2.26374475e-013, 1.30451205e-015, -2.26374475e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700004578, -2.67028809e-005, 0.699332714, -1, -1.60535947e-005, -1.59286301e-007, 1.58860217e-007, 2.65416365e-005, -1, 1.60535983e-005, -1, -2.65416347e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700019836, -1.66893005e-005, 1.49919093, -1, -1.60516884e-005, -1.59286301e-007, 1.58860317e-007, 2.65384861e-005, -1, 1.6051692e-005, -1, -2.65384842e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(0.400000006, 0.600000024, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700023651, -4.29153442e-005, 1.89885879, -1, -1.60487161e-005, -1.59286301e-007, 1.58860473e-007, 2.65335711e-005, -1, 1.60487198e-005, -1, -2.65335693e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.600000024, 0.400000006, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -2.09877872, 0, 1, 2.63532252e-013, 2.20870009e-025, 2.26881014e-013, 1, -2.40585329e-013, 2.29174052e-025, -2.1216362e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(0.400000006, 0.600000024, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700031281, -3.81469727e-005, 2.29907608, -1, -1.60496675e-005, -1.59286301e-007, 1.58860416e-007, 2.65351464e-005, -1, 1.60497293e-005, -0.999996424, -2.65352392e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.900005341, -2.09888887, 0.0100111961, 1, 2.6353919e-013, 2.20464535e-025, 2.26873208e-013, 0.999996424, -2.69013165e-013, 2.35117084e-025, -1.83734972e-013, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.400000036, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.09933496, 0.00994968414, -1.1000061, -7.43166083e-007, 0.999996424, 2.72369789e-007, 1.49011719e-008, -2.72368425e-007, 1, 1, 7.431629e-007, -1.49009649e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409999847, -0.404999018, -3.0040741e-005, 1, 1.05336483e-010, -5.11527077e-021, 1.05335976e-010, 1, -9.92765453e-011, -5.11568477e-021, -9.9276018e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409999847, -1.60497594, -3.0040741e-005, 1, 1.12981839e-010, -5.89094849e-021, -1.12491558e-010, 1, -1.06496659e-010, -6.08833769e-021, 1.0604289e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409996033, -1.60497594, -3.0040741e-005, 1, 1.13225755e-010, -5.9168516e-021, -1.12735474e-010, 1, -1.06724032e-010, -6.11401341e-021, 1.06270263e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.60497594, 0.40499115, 1, 7.82292217e-011, -2.80034948e-021, -7.77389403e-011, 1, -7.37259559e-011, -2.93059226e-021, 7.32721869e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.60497594, -0.405024052, 1, 7.93888774e-011, -2.8813423e-021, -7.88986237e-011, 1, -7.48344303e-011, -3.02257208e-021, 7.43806614e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.404999018, -0.405024052, 1, 7.9389488e-011, -2.88135442e-021, 7.93889815e-011, 1, -7.48338752e-011, -2.88212869e-021, -7.48333479e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409996033, -0.404999018, -3.0040741e-005, 1, 3.79056439e-011, -6.35164548e-022, 3.79058382e-011, 1, -3.57250896e-011, -6.35662047e-022, -3.57250896e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.404999018, 0.40499115, 1, 7.82298046e-011, -2.80033434e-021, 7.8229298e-011, 1, -7.37254285e-011, -2.80000274e-021, -7.37249012e-011, 1))

function attackone()
attack = true
local con = LeftLeg.Touched:connect(function(hit) Damagefunc(hit,15,20,math.random(5,15),"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=200632211",LeftLeg,1,1)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-50),math.rad(0),math.rad(-90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(50),math.rad(0),math.rad(20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(40)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
attack = false
con:disconnect()
end

function attacktwo()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -.5) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(140),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-5)),.3)
end
so("http://roblox.com/asset/?id=200632211",LeftArm,1,.9)
local con = LeftArm.Touched:connect(function(hit) Damagefunc(hit,15,20,math.random(5,15),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-140),math.rad(-5)),.3)
end
attack = false
con:disconnect()
end

--[[remiders: PBPART1,PBPART2,PBPOLE,PBNEEDLE,HITBOX ]]--

function attackthree()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-120),math.rad(0)),.3)
end
local con = Hitbox.Touched:connect(function(hit) Damagefunc(hit,25,40,math.random(10,15),"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=240429891",Hitbox,1,1)
so("http://roblox.com/asset/?id=240429289",Hitbox,1,1)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(60),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-140),math.rad(0)),.3)
PBNeedleweld.C0=clerp(PBNeedleweld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPoleweld.C0=clerp(PBPoleweld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPart1weld.C0=clerp(PBPart1weld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPart2weld.C0=clerp(PBPart2weld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
Hitboxweld.C0=clerp(Hitboxweld.C0,cf(0,-1.,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
end
attack = false
con:disconnect()
end

function attackfour()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(150), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(140),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-5)),.3)
end
so("http://roblox.com/asset/?id=240429891",Hitbox,1,.9)
so("http://roblox.com/asset/?id=240429289",Hitbox,1,.8)
local con = Hitbox.Touched:connect(function(hit) Damagefunc(hit,25,40,math.random(10,15),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-80)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-140),math.rad(-5)),.3)
PBNeedleweld.C0=clerp(PBNeedleweld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPoleweld.C0=clerp(PBPoleweld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPart1weld.C0=clerp(PBPart1weld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPart2weld.C0=clerp(PBPart2weld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
Hitboxweld.C0=clerp(Hitboxweld.C0,cf(0,-1.,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
end
attack = false
con:disconnect()
end

mouse.Button1Down:connect(function()
if attack == false and
attacktype == 1 then
attacktype = 2
attackone()
elseif attack == false and
attacktype == 2 then
attacktype = 3
attacktwo()
elseif attack == false and
attacktype == 3 then
attacktype = 4
attackthree()
elseif attack == false and
attacktype == 4 then
attacktype = 1
attackfour()
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(10),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-15),math.rad(-90),math.rad(0)),.3)
PBNeedleweld.C0=clerp(PBNeedleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPoleweld.C0=clerp(PBPoleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPart1weld.C0=clerp(PBPart1weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPart2weld.C0=clerp(PBPart2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
Hitboxweld.C0=clerp(Hitboxweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(20),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-20),math.rad(-90),math.rad(0)),.3)
PBNeedleweld.C0=clerp(PBNeedleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPoleweld.C0=clerp(PBPoleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPart1weld.C0=clerp(PBPart1weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPart2weld.C0=clerp(PBPart2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Hitboxweld.C0=clerp(Hitboxweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-5)),.3)
PBNeedleweld.C0=clerp(PBNeedleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPoleweld.C0=clerp(PBPoleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPart1weld.C0=clerp(PBPart1weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPart2weld.C0=clerp(PBPart2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Hitboxweld.C0=clerp(Hitboxweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-15)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-15)),.3)
PBNeedleweld.C0=clerp(PBNeedleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPoleweld.C0=clerp(PBPoleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPart1weld.C0=clerp(PBPart1weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPart2weld.C0=clerp(PBPart2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Hitboxweld.C0=clerp(Hitboxweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
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
module[2] = {"AXE Of Doom",function()
--Axe of Doom Gifted by TheRedAngel, Regular Script!

Plrs = game:GetService("Players")



Name = Plrs.Name

me = Plrs.LocalPlayer

char = me.Character

Modelname = "Ax of Doom"

Toolname = "Ax of Doom"

Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}

necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 

selected = false

Hurt = false

Able = true



CA = CFrame.Angles

CN = CFrame.new

MR = math.rad

MP = math.pi

MD = math.deg

MH = math.huge

MRA = math.random



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

	w.C1 = CN(x,y,z) * CA(a,b,c)

	return w

end



function ComputePos(pos1, pos2)

	local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)

	return CN(pos1, pos3)

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



TH = Weld(torso, nil, -0.75, 0.7, 0.4, 0, math.pi/2, MR(-140))

TH.C0 = CA(MR(-10), MR(10), 0)



handle = Part(Mo, false, false, 0, 0, "Camo", 0.45, 5.5, 0.45, true)

Instance.new("SpecialMesh",handle)

handle.Name = "Handle"



dec1 = Part(Mo, false, false, 0, 0, "Dark green", 0.2, 6, 0.2, true)

Add.Mesh(dec1, "http://www.roblox.com/asset/?id=16606212", 0.38, 0.38, 1.55)

Weld(handle, dec1, 0, 0, 0, math.pi/2, 0, 0)



dec2 = Part(Mo, false, false, 0, 0, "Earth green", 0.2, 6, 0.2, true)

Add.Mesh(dec2, "http://www.roblox.com/asset/?id=16606212", -0.3, 0.3, 1.55)

Weld(handle, dec2, 0, 0, 0, math.pi/2, math.pi/2, 0)



skull = Part(Mo, false, false, 0, 0, "Bright green", 0.2, 6, 0.2, true)

Add.Mesh(skull, "http://www.roblox.com/asset/?id=4770583", 2.9, 2.9, 2.3)

Weld(handle, skull, 0, -2.5, 0, 0, 0, 0)



for x = 0, 180, 180 do

	for i = -40, 70, 110/3 do

		local asd = (i+90)/85

		local p = Part(Mo, false, false, 0, 0, "Camo", 0.3, 0.8, 0.3, true)

		Add.Mesh(p, "http://www.roblox.com/asset/?id=1033714", 0.16, asd*1.2, 0.16)

		local w = Weld(skull, p, 0, 0, 0, 0, 0, 0)

		w.C0 = CA(0, MR(x), MR(i))

		w.C1 = CN(0, -1, 0) * CA(math.pi/2, math.pi/2, 0)

	end

end



handletip1 = Part(Mo, false, false, 0, 0.2, "Earth green", 0.5, 0.5, 0.5, true)

w1 = Weld(handle, handletip1, 0, 2.6, 0, 0, 0, 0)

Add.Mesh(handletip1, "http://www.roblox.com/asset/?id=9756362", 0.6, 0.5, 0.6)



handletip2 = Part(Mo, false, false, 0, 0.2, "Camo", 0.5, 0.5, 0.5, true)

Weld(handletip1, handletip2, 0, 0, 0, 0, MR(45), 0)

Add.Mesh(handletip2, "http://www.roblox.com/asset/?id=9756362", 0.6, 0.55, 0.6)



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



function detach(bool)

	LLW.C0 = CN(0, 0, 0)

	RLW.C0 = CN(0, 0, 0)

	LAW.C0 = CN(0, 0, 0)

	RAW.C0 = CN(0, 0, 0)

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

	for i = 0, 1, 0.016 do

		RAW.C0 = RAWStand * CA(0, MR(-7*i), MR(12*i))

		LAW.C0 = LAWStand * CA(0, MR(-5*i), MR(7*i)) * CN(0, -0.2*i, 0)

		RLW.C0 = RLWStand * CA(MR(-4*i), 0, MR(3*i))

		LLW.C0 = LLWStand * CA(MR(4*i), 0, MR(-3*i))

		neck.C0 = necko * CA(MR(7*i), 0, MR(-6*i))

		if selected == false or torso.Velocity.magnitude > 4 or Able == false then break end

		wait()

	end

	wait()

	for i = 1, 0, -0.013 do

		RAW.C0 = RAWStand * CA(0, MR(-7*i), MR(12*i))

		LAW.C0 = LAWStand * CA(0, MR(-5*i), MR(7*i)) * CN(0, -0.2*i, 0)

		RLW.C0 = RLWStand * CA(MR(-4*i), 0, MR(3*i))

		LLW.C0 = LLWStand * CA(MR(4*i), 0, MR(-3*i))

		neck.C0 = necko * CA(MR(7*i), 0, MR(-6*i))

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

		RAW.C0 = CA(MR(185*i), MR(70*i), 0)

		LLW.C0 = CA(MR(2*i), 0, MR(-5*i))

		RLW.C0 = CA(MR(-2*i), 0, MR(5*i))

		neck.C0 = necko * CA(0, 0, MR(-40*i))

		wait()

	end

	TH.Part1 = nil

	HW.Part1 = handle

	HW.C0 = CA(MR(40), 0, MR(-20))

	for i = 0, 1, 0.08 do

		RAW.C0 = CA(MR(185-110*i), MR(70-60*i), MR(30*i))

		LLW.C0 = CA(MR(2-8*i), 0, MR(-5-10*i))

		RLW.C0 = CA(MR(-2+8*i), 0, MR(5+10*i))

		neck.C0 = necko * CA(MR(-15*i), 0, MR(-40+35*i))

		HW.C0 = CA(MR(40-80*i), 0, MR(-20+20*i))

		wait()

	end

	LAW.Part1 = Larm

	for i = 0, 1, 0.1 do

		RAW.C0 = CA(MR(185-110+15*i), MR(70-60-10*i), MR(30-65*i)) * CN(0, -0.8*i, 0)

		LAW.C0 = CA(MR(90*i), 0, MR(35*i)) * CN(0.1*i, -0.1*i, 0) * CN(0, -0.8*i, 0)

		LLW.C0 = CA(MR(-6), 0, MR(-5-10+10*i))

		RLW.C0 = CA(MR(6), 0, MR(5+10-10*i))

		neck.C0 = necko * CA(MR(-15+15*i), 0, MR(-5+5*i))

		HW.C0 = CA(MR(-40+40*i), 0, MR(35*i)) * CN(0, 0, 1.6*i)

		wait()

	end

	selected = true

end



function deselanim()

	selected = false

	for i = 1, 0, -0.1 do

		RAW.C0 = CA(MR(185-110+15*i), MR(70-60-10*i), MR(30-65*i)) * CN(0, -0.8*i, 0)

		LAW.C0 = CA(MR(90*i), 0, MR(35*i)) * CN(0.1*i, -0.1*i, 0) * CN(0, -0.8*i, 0)

		LLW.C0 = CA(MR(-6), 0, MR(-5-10+10*i))

		RLW.C0 = CA(MR(6), 0, MR(5+10-10*i))

		neck.C0 = necko * CA(MR(-15+15*i), 0, MR(-5+5*i))

		HW.C0 = CA(MR(-40+40*i), 0, 0) * CN(0, 0, 1.6*i)

		wait()

	end

	LAW.Part1 = nil

	for i = 1, 0, -0.08 do

		RAW.C0 = CA(MR(185-110*i), MR(70-60*i), MR(30*i))

		LLW.C0 = CA(MR(2-8*i), 0, MR(-5-10*i))

		RLW.C0 = CA(MR(-2+8*i), 0, MR(5+10*i))

		neck.C0 = necko * CA(MR(-15*i), 0, MR(-40+35*i))

		HW.C0 = CA(MR(40-70*i), 0, MR(-20+20*i))

		wait()

	end

	TH.Part1 = handle

	HW.Part1 = nil

	HW.C0 = CA(MR(40), 0, MR(-20))

	for i = 1, 0, -0.2 do

		RAW.C0 = CA(MR(185*i), MR(70*i), 0)

		LLW.C0 = CA(MR(2*i), 0, MR(-5*i))

		RLW.C0 = CA(MR(-2*i), 0, MR(5*i))

		neck.C0 = necko * CA(0, 0, MR(-40*i))

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

	for i = 0, 1, 0.05 do

		RAW.C0 = RAWStand * CA(MR(-80*i), 0, MR(20*i)) * CN(0, 0.2*i, 0.8*i)

		LAW.C0 = LAWStand * CA(MR(-50*i), 0, MR(40*i)) * CN(0, -0.8*i, 0)

		HW.C0 = HWStand * CA(0, 0, 0) * CN(0, 0, 0.4*i)

		neck.C0 = necko * CA(MR(20*i), 0, MR(-40*i))

		wait()

	end

	for i = 0, 1, 0.1 do

		RAW.C0 = RAWStand * CA(MR(-80-4*i), 0, MR(20+2*i)) * CN(0, 0.2-0.1*i, 0.8-0.1*i)

		LAW.C0 = LAWStand * CA(MR(-50-3*i), 0, MR(40-2*i)) * CN(0, -0.8-0.1*i, 0)

		HW.C0 = HWStand * CA(0, 0, MR(-35*i)) * CN(0, 0, 0.4)

		neck.C0 = necko * CA(MR(20+2*i), 0, MR(-40))

		wait()

	end

	wait(1)

	for i = 0, 1, 0.03 do

		RAW.C0 = RAWStand * CA(MR(-84+64*i), 0, MR(22)) * CN(0, 0.1, 0.7)

		LAW.C0 = LAWStand * CA(MR(-53), 0, MR(38)) * CN(0, -0.9, 0)

		HW.C0 = HWStand * CA(MR(-45*i), MR(15*i), MR(-35)) * CN(-1.5*i, 0, 0.4-2.4*i)

		neck.C0 = necko * CA(MR(22), 0, MR(-40))

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
module[3] = {"AXE Of Night",function()
--Ax of Night Gifted by TheRedAngel, Regular Script!

Plrs = game:GetService("Players")

me = Plrs.LocalPlayer
char = me.Character
Modelname = "Ax of night"
Toolname = "Ax of night"
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
module[4] = {"Angel Sword",function()
--~Angel Sword~--
repeat Wait()until Game.Players.LocalPlayer ~= nil;Player = Game.Players.LocalPlayer Tool = script.Parent if not script.Parent:IsA("Tool")then Tool = Instance.new("Tool",Player.Backpack)script.Parent = Tool end
Character,PlayerGui,Power = Player.Character,Player.PlayerGui,0
RA,LA,RL,LL,H,T = Character["Right Arm"],Character["Left Arm"],Character["Right Leg"],Character["Left Leg"],Character.Head,Character.Torso
RS,LS,RH,LH,N = T["Right Shoulder"],T["Left Shoulder"],T["Right Hip"],T["Left Hip"],T.Neck
Settings = {Colors = {BrickColor.new("Institutional white"),BrickColor.new("Gold")};ExplosionColors = {BrickColor.new("Institutional white"),BrickColor.new("Gold"),BrickColor.new("Gold"),BrickColor.new("White")}}
if Player.Name == "LocalPlayer" then
Settings.Colors[1]= BrickColor.new("White")
Settings.Colors[2]= BrickColor.new("Navy blue")
end
H:findFirstChild("face").Texture = "http://www.roblox.com/asset/?id=53769373"
local Face,FaceTexture,IceTexture = H:findFirstChild("face"),H:findFirstChild("face").Texture,"http://www.roblox.com/asset/?id=53769373"
Cam = Workspace.CurrentCamera
Way = 0
local ChosenColor,ChangeText,Descriptions
AttackState = "Melee"
Equiped,StopPower,StopTrail,StopRockTrail,StopSwordTrail,RageMode,RageWait,StopFlyTrail = false,false,false,false,false,false,false,false
GeneratedParts = {}
Debounces = {
IsHealing = false;
IsCharging = false;
Attacking = false;
Floating = false;
Shielding = false;
Flying = false;
}
local GripPos,RiseRate,HitDebounce,STGyro,Stance,rHandle = CFrame.new(0,0,0),1,false
local function MakeFloatMesh()
local s = Instance.new("Part",Character)
s.BrickColor = BrickColor.new("White")
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
pcall(function()
Tag(Hit.Parent.Humanoid)
Hit.Parent:BreakJoints()
end)end
function Damage(Vec,Object,Bool)
if Object.Parent:findFirstChild("AngelRegistration")and Object.Parent.Name == Character.Name then return end
if Object.Parent == Character then return end
local Dmg,Humanoid = math.random(30,45),Object.Parent:findFirstChild("Humanoid")
if Bool then Dmg = math.random(15,25)end
if Humanoid and not HitDebounce then
HitDebounce = true
if not RageMode then
if Humanoid.Health -Dmg <= 0 then Tag(Humanoid)end
Humanoid:TakeDamage(Dmg)
else
Kill(Object)
end
for i,v in pairs(Object.Parent:GetChildren())do
if v:IsA("BasePart")then
local BP = Instance.new("BodyForce",v)
BP.force = Vec.CFrame.lookVector *85
Game:GetService("Debris"):AddItem(BP,2)
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
Character.Archivable = false
Clone.Parent = Workspace
Clone.Archivable = false
return Clone
end
function GetDirection()
if Player == nil then return{CFrame.new(0,0,0),CFrame.new(0,0,0)}end
return{CFrame.new(T.Position,Vector3.new(Cam.CoordinateFrame.x,T.Position.y,Cam.CoordinateFrame.z))* CFrame.fromEulerAnglesXYZ(0,math.pi,0),Vector3.new(Cam.CoordinateFrame.p.x,T.CFrame.p.y,Cam.CoordinateFrame.p.z)}
end
function FaceForward()
STGyro.cframe = GetDirection()[1]
return STGyro.cframe
end
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
while Wait()do
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
if Bool then
coroutine.wrap(function()
for i = 1,2 do
local p = Instance.new("Part",Character)
p.TopSurface = 0
p.BottomSurface = 0
p.formFactor = "Custom"
p.Anchored = true
p.CanCollide = false
p.BrickColor = math.random(1,2)%2 == 1 and Settings.Colors[1]or Color
p.Transparency = 0.5
p.Size = Vector3.new(1,1,1)
p.CFrame = T.CFrame * CFrame.new(0,-4,0)* CFrame.Angles(0,math.rad(math.random(-45,45)),0)
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
end)()end)()
Wait(0.1)
end end)()end
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
function IsNear(Position,Distance)
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
KeyBindings = {
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
local RayPart = gp:findFirstChild("AngelLaser")or Instance.new("Part",gp)
RayPart.Name = "AngelLaser"
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
z = function(Mouse)
if Power <= 0 then return end
if Debounces.IsHealing or Debounces.IsCharging or Debounces.Attacking or Debounces.Shielding or Debounces.Flying then return end
if AttackState ~= "LightningBolt" then AttackState = "LightningBolt" else AttackState = "Melee" end
end;
x = function(Mouse)
if Debounces.IsHealing or Debounces.IsCharging or Debounces.Attacking or Debounces.Shielding or Debounces.Flying then return end
if AttackState ~= "GroundSmash" then AttackState = "GroundSmash" else AttackState = "Melee" end
end;
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
Registration.Name = "AngelRegistered"
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
if RageMode then
if RageWait then return end
RageMode = false
local Sayings = {"Ugh...","That was fun!"}
ypcall(function()
local sg = PlayerGui:findFirstChild("RedTintAngel"):findFirstChild("Frame")
coroutine.wrap(function()
for i = 35,1,1 do
sg.BackgroundColor3 = Color3.new(i/35,0,0)
sg.BackgroundTransparency = sg.BackgroundTransparency +0.01
Wait()
end end)()
sg.Parent:Destroy()
end)
Game:GetService("Chat"):Chat(H,Sayings[math.random(1,#Sayings)],2)
Face.Texture = FaceTexture
LA.Anchored = true
RA.Anchored = true
LL.Anchored = true
RL.Anchored = true
T.Anchored = true
local s = Instance.new("Part",Workspace)
s.Anchored = true
s.TopSurface = 0
s.BottomSurface = 0
s.Locked = true
s.Transparency = 1
s.CanCollide = false
s.Shape = "Ball"
s.Reflectance = 0
s.BrickColor = BrickColor.new("Gold")
s.CFrame = T.CFrame
coroutine.wrap(function()
for i = 1,5 do
s.Size = s.Size + Vector3.new(2,2,2)
s.CFrame = T.CFrame
s.Transparency = s.Transparency -0.2
Wait()
end
Wait(0.1)
s.BrickColor = BrickColor.new("Institutional white")
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
f.BrickColor = BrickColor.new("Gold")
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
RageWait = true
RageMode = true
local Sayings = {"Rage!","Reminds me of the time I defeated 500 devils","Can't stop me now!","GO BACK TO ONCE WHERE YOU CAME DEMON!"}
Face.Texture = "http://www.roblox.com/asset/?id=33483624"
Game:GetService("Chat"):Chat(H,Sayings[math.random(1,#Sayings)],2)
local s = Instance.new("ScreenGui",PlayerGui)
s.Name = "RedTintAngel"
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
local s = Instance.new("Part",Workspace)
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
s.BrickColor = BrickColor.new("Gold")
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
delay(5,function()RageWait = false end)
end end;
}
NonSwordKeys = {
j = function(Mouse)
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
if Power -30 >= 0 then
Stance = "null"
ChargePosition(false)
Power = Power -30
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
for i,v in pairs(IsNear(Wind.Position,33))do Clr = BrickColor.new("Gold")Damage(T,v.Torso)delay(0.02,function()Clr = nil end)end
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
}
GlobalKeys = {
h = function(Mouse)
if Power <= 0 then return end
if Debounces.IsHealing or Debounces.IsCharging or Debounces.Attacking or Debounces.Shielding or Debounces.Flying then return end
Debounces.IsHealing = true
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
Power = Power -20
Charge(BrickColor.new("Lime green"),true)
end
Character.Humanoid.WalkSpeed = 45
pcall(function()T:findFirstChild("ChargeLight"):Destroy()end)
ChargePosition(false)
Stance = "Standing"
Debounces.IsHealing = false
end;
c = function(Mouse)
if Debounces.IsHealing or Debounces.IsCharging or Debounces.Attacking or Debounces.Shielding or Debounces.Flying then return end
Debounces.IsCharging = true
ChargePosition(true)
local BreakLoop,x = false;x = Mouse.KeyUp:connect(function(k)
if k == 'c' then
BreakLoop = true
x:disconnect()
end end)
while Wait(0.2)do
if Power == 26000 then break end
if BreakLoop then break end
if Power > 26000 then Power = 26000 break end
Power = Power +500
Charge(Settings.Colors[2],true)
end
StopTrailing = true
Character.Humanoid.WalkSpeed = 45
ChargePosition(false)
Stance = "Standing"
Debounces.IsCharging = false
pcall(function()T:findFirstChild("ChargeLight"):Destroy()end)
end;
b = function()
if Power <= 0 then return end
if Power -560 <= 0 then return end
if Debounces.IsHealing or Debounces.IsCharging or Debounces.Attacking or Debounces.Shielding or Debounces.Flying then return end
Debounces.Attacking = true
Power = Power -560
for x,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
if v.Name:find("Arm")or v.Name:find("Head")or v.Name:find("Torso")or v.Name:find("Leg")then
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.Transparency = 0.5
p.BrickColor = BrickColor.new("White")
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
for i = 1,2 do
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
T.CFrame = T.CFrame * CFrame.new(0,0,-60)
for x,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
if v.Name:find("Arm")or v.Name:find("Head")or v.Name:find("Torso")or v.Name:find("Leg")then
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.Transparency = 0.5
p.BrickColor = BrickColor.new("White")
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
s.BrickColor = i == 1 and BrickColor.new("Institutional white")or BrickColor.new("White")
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
p.BrickColor = BrickColor.new("White")
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
t = function(_Mouse)
if not _Mouse.Target then return end
if Debounces.Attacking or Debounces.Shielding then return end
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
p.BrickColor = BrickColor.new("White")
p.Size = v.Size
p.CFrame = v.CFrame
coroutine.wrap(function()
for i = 1,5 do
p.Transparency = p.Transparency +0.1
Wait(0.2)
end
p:Destroy()
end)()end end end
local CF = _Mouse.Hit
local s = Instance.new("Part",Character)
s.BrickColor = i == 1 and BrickColor.new("Institutional white")or BrickColor.new("White")
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
p.BrickColor = math.random(1,2)%2 == 1 and Settings.Colors[1]or BrickColor.new("White")
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
}
function Effect2(part,x1,y1,z1,x2,y2,z2,color,ref)
if part:IsDescendantOf(Workspace)then
local msh2 = Instance.new("BlockMesh")
msh2.Scale = Vector3.new(x1,y1,z1) 
local S = Instance.new("Part", Character)
S.FormFactor = 0
S.Size=Vector3.new(1, 1, 1)
S.BrickColor = color
S.Reflectance = ref or 0
S.TopSurface = 0
S.BottomSurface = 0
S.Transparency = 0.5
S.Anchored = true
S.CanCollide = false
msh2.Parent = S
S.CFrame = part.CFrame*CFrame.new(x2, y2, z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
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
Tool.Name = "Angel Sword"
Tool.Equipped:connect(function()
Equiped = true
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
v.Touched:connect(function(Hit)
if not Debounces.Attacking then return end
if Hit.Parent == Character or HitDebounce then return end
if not Hit.Parent:findFirstChild("Humanoid")then return end
pcall(function()Hit.Parent.Humanoid.PlatformStand = true end)
for n,x in pairs(Hit.Parent:GetChildren())do
if x:IsA("BasePart")then
local bf = Instance.new("BodyForce",x)
bf.force = T.CFrame.lookVector *325
Game:GetService("Debris"):AddItem(bf,0.26)
end end
local cf = Hit.CFrame
local s = Instance.new("Part",Workspace)
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
Equiped = false
table.foreach(Tool:GetChildren(),function(_,v)
if v:IsA("BasePart")then
v.Anchored = true
end end)end)
-- Health gui
if Game:GetService("StarterGui"):GetCoreGuiEnabled(1)then Game:GetService("StarterGui"):SetCoreGuiEnabled(1,false)end
HealthGui = Instance.new("ScreenGui",PlayerGui)
HealthGui.Name = "Angel HealthGui"
_MainFr = Instance.new("Frame",HealthGui)
_MainFr.Size = UDim2.new(0.4,0,0.1,0)
_MainFr.Position = UDim2.new(0.3,0,0,0)
_MainFr.BackgroundColor = Settings.Colors[1]
_MainFr.BorderColor3 = Settings.Colors[1].Color
_MainFr.BorderSizePixel = 3
Bar = Instance.new("Frame",_MainFr)
Bar.Size = UDim2.new(0,0,1,0)
Bar.ZIndex = 2
Bar.BackgroundColor = BrickColor.new("Gold")
Bar.BorderSizePixel = 0
_Shine = Instance.new("Frame",_MainFr)
_Shine.Size = UDim2.new(1,0,0.5,0)
_Shine.Position = UDim2.new(0,0,0.25,0)
_Shine.BackgroundTransparency = 0.5
_Shine.BackgroundColor = BrickColor.new("Gold")
_Shine.ZIndex = 3
_Shine.BorderSizePixel = 0
xTxt = Instance.new("TextLabel",_MainFr)
xTxt.Size = UDim2.new(1,0,1,0)
xTxt.Text = tostring(Character.Humanoid.Health)
xTxt.TextScaled = true
xTxt.Font = "SourceSansBold"
xTxt.TextColor = Settings.Colors[1]
xTxt.TextTransparency = 0.55
xTxt.ZIndex = 4
xTxt.BackgroundTransparency = 1
HCCon = Character.Humanoid.HealthChanged:connect(function(Health)
if Health > 600 then Health = 600 end
xTxt.Text = tostring(math.ceil(Health))
Bar:TweenSize(UDim2.new(Health/Character.Humanoid.MaxHealth,0,1,0),"InOut","Quad",0.6,true)
if Health < Character.Humanoid.MaxHealth/4 then
Bar.BackgroundColor = BrickColor.new("Gold")
else
Bar.BackgroundColor = BrickColor.new("Really blue")
end end)
Character.Humanoid.MaxHealth = 600
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
while Wait(0.8)do
if not pcall(function()Character.Humanoid.Health = Character.Humanoid.Health +math.random(0,1)end)then
break
end end end)()
--Move Frame
_MoveFrame = Instance.new("ScreenGui",PlayerGui)
_MoveFrame.Name = "Angel Move"
_Backing = Instance.new("Frame",_MoveFrame)
_Backing.Size = UDim2.new(0.2,0,0.1,0)
_Backing.Position = UDim2.new(0.71,0,0.9,0)
_Backing.BackgroundColor = Settings.Colors[1]
_Backing.BorderSizePixel = 3
MoveTxt = Instance.new("TextLabel",_Backing)
MoveTxt.Size = UDim2.new(1,0,1,0)
MoveTxt.BorderSizePixel = 0
MoveTxt.Font = "SourceSansBold"
MoveTxt.BackgroundTransparency = 1
MoveTxt.Text = "Made by InternalRecursion"
MoveTxt.TextColor = BrickColor.new("Gold")
MoveTxt.TextTransparency = 0.55
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
MoveTxt.TextColor = BrickColor.new("Gold")
end)()end
--Power bar
Power = 26000
_Power = Instance.new("ScreenGui",PlayerGui)
_Power.Name = "Angel Power"
PBar = Instance.new("Frame",_Power)
PBar.BackgroundColor = Settings.Colors[1]
PBar.Size = UDim2.new(0.4,0,0.1,0)
PBar.Position = UDim2.new(0.3,0,0.9,0)
PBar_back = Instance.new("Frame",PBar)
PBar_back.BackgroundColor = BrickColor.new("Gold")
PBar_back.Size = UDim2.new(0,0,1,0)
PBar_back.ZIndex = 2
PBar.BorderSizePixel = 3
Txt = Instance.new("TextLabel",PBar)
Txt.Size = UDim2.new(1,0,1,0)
Txt.Text = tostring(Power)
Txt.TextScaled = true
Txt.Font = "SourceSansBold"
Txt.TextColor = Settings.Colors[1]
Txt.TextTransparency = 0.55
Txt.ZIndex = 4
Txt.BackgroundTransparency = 1
_Shine2 = Instance.new("Frame",PBar)
_Shine2.Size = UDim2.new(1,0,0.5,0)
_Shine2.Position = UDim2.new(0,0,0.25,0)
_Shine2.BackgroundTransparency = 0.5
_Shine2.BackgroundColor = BrickColor.new("Gold")
_Shine2.ZIndex = 3
_Shine2.BorderSizePixel = 0
Spawn(function()
while wait()do
if Power <= 26000 then
if Power < 0 then Power = 0 end
PBar_back:TweenSize(UDim2.new(Power/26000,0,1,0),"InOut","Quad",0.2,true)
Txt.Text = tostring(Power)
if Power < 26000/4 then
PBar_back.BackgroundColor = BrickColor.new("Gold")
else
if not RageMode then
PBar_back.BackgroundColor = BrickColor.new("Gold")
end end end end end)
Character.Humanoid.Died:connect(function()
Power = 26000
for i = 1,9 do
PBar_back.BackgroundTransparency = PBar_back.BackgroundTransparency + 0.1
Wait()
end
Power = 0
end)
Game:GetService("RunService").Stepped:connect(function()math.randomseed(tick())end)
Character.Humanoid.Died:connect(function()
local DeathPhraze = {"How could I lose?!","InternalRecursion will avenge me!","Avenge me, Internal!","All good things must come to an end I guess..."}
Game:GetService("Chat"):Chat(H,DeathPhraze[math.random(1,#DeathPhraze)],2)
T.Anchored = true
pcall(function()Cam:Destroy()end)
coroutine.wrap(function()
repeat Wait()until Workspace.CurrentCamera ~= nil
Workspace.CurrentCamera.Focus = H
end)()
Character:MakeJoints()
pcall(function()H.face:Destroy()end)
pcall(function()T.roblox:Destroy()end)
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = true
coroutine.wrap(function()
for i = 1,10 do
v.Transparency = v.Transparency + 0.1
Wait()
end end)()end end
for i,v in pairs(Character:GetChildren())do
if v:IsA("BasePart")then
coroutine.wrap(function()
for i = 1,10 do
v.Transparency = v.Transparency + 0.1
Wait()
end end)()end end end)
SwordAttacks,HandAttacks = {"Spin","Slash","DoubleSwing"}
local StandardSwing,SwingLeft,DoubleSwing,SpinSwing
Stance = "Standing"
Tool.Equipped:connect(function(Mouse)
AttackState = "Melee"
table.foreach(Debounces,function(_,v)v = false end)
Equiped = true
Mouse.KeyDown:connect(function(Key)
if Debounces.Shielding then return end
if GlobalKeys[Key]then
coroutine.wrap(function()GlobalKeys[Key](Mouse)end)()
Wait()
Descriptions = {
h = "Healing!";
c = "Charging!";
b = "Boost!";
n = "Float!";
t = "Teleport!";
q = "Fly!"}
ChangeText(Descriptions[Key])
end
if KeyBindings[Key]~= nil then
KeyBindings[Key](Mouse)
Wait()
Descriptions = {
l = AttackState.."!";
z = AttackState.."!";
x = AttackState.."!";
y = "Clone attack!";
r = "Rage!"}
ChangeText(Descriptions[Key])
end end)
local cntr = 1
Mouse.Button1Down:connect(function()
if Debounces.Attacking or Debounces.IsCharging or Debounces.IsHealing or Debounces.Shielding then return end
if Debounces.Flying then
local Speed,DC = RageMode and 350 or 200
StopFlyTrail = false
FlyTrail(LA,CFrame.new(0,0,0))
FlyTrail(RA,CFrame.new(0,0,0))
coroutine.wrap(function()
while Wait()do
if Debounces.Flying then
Power = Power -9
MakeFloatMesh()
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
end
return
end
if AttackState == "Melee" then
local Attack = SwordAttacks[cntr]
cntr = cntr == 3 and 1 or cntr +1
ChangeText(Attack)
if Attack == "DoubleSwing" then
Debounces.Attacking = true
StopSwordTrail = false
SwordTrail(qHandle,CFrame.new(0,0,0),Settings.Colors[2])
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
Game:GetService("Debris"):AddItem(spinForce,1)
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
StandardSwing:Play()
SwordTrail(qHandle,CFrame.new(0,0,0),Settings.Colors[2])
Wait(1)
StopSwordTrail = true
Debounces.Attacking = false
end
elseif AttackState == "LightningBolt" then
local Marker = Instance.new("Part",Cam)
Marker.Size = Vector3.new(2,0.1,2)
Marker.Transparency = 1
Marker.BrickColor = Settings.Colors[2]
Marker.Anchored = true
Marker.CanCollide = false
Marker.Locked = true
coroutine.wrap(function()
while Wait()do
if AttackState ~= "LightningBolt" then Marker:Destroy()break end
if not Marker then break end
if Mouse.Target ~= Marker then
Marker.Position = Mouse.Hit.p
end end end)()
local con;con = Mouse.Button1Down:connect(function()
if Power -1000 >= 0 then
if Debounces.Attacking then return end
Debounces.Attacking = true
Power = Power -1000
local hitCF,scale,Lightning = Marker.CFrame,1
local Last = hitCF * CFrame.new(0,460,0)
local Lights = {}
repeat
local si = math.random(15,45)
local p = Instance.new("Part",Workspace)
p.FormFactor = "Custom"
p.BrickColor = Settings.Colors[math.random(1,2)]
p.Anchored = true
p.TopSurface = 0
p.BottomSurface = 0
p.CanCollide = false
p.Locked = true
p.Size = Vector3.new(5,si,5)
p.CFrame = Last * CFrame.new(0,-scale/2,0)
p.CFrame = CFrame.new(p.Position)* CFrame.Angles(math.random(-120,120)/100,math.random(-30,30)/100,math.random(-120,120)/100)* CFrame.new(0,-si/2,0)
Lightning = p
Last = p.CFrame
scale = si
table.insert(Lights,p)
until Last.y < 14
local brightness = Game.Lighting.Brightness
Game.Lighting.Brightness = 1000
delay(0.1,function()Game.Lighting.Brightness = brightness end)
local e = Instance.new("Part",Workspace)
e.BrickColor = Settings.Colors[2]
e.Size = Vector3.new(1,1,1)
e.Shape = "Ball"
e.CanCollide = false
e.Locked = true
e.Anchored = true
e.TopSurface = 0
e.BottomSurface = 0
e.Touched:connect(function(Hit)
if Hit.Parent:findFirstChild("Humanoid")and Hit.Parent ~= Character then
for i,v in pairs(Hit.Parent:GetChildren())do
if v:IsA("BasePart")then
local x = Instance.new("Fire",v)
x.Size = 9
x.Heat = 200
x.SecondaryColor = Settings.Colors[2].Color
x.Color = Color3.new(0,0,0)
end end 
Kill(Hit)
end end)
for i = 1,10 do
e.Transparency = e.Transparency +0.1
e.Size = e.Size + Vector3.new(20,20,20)
e.CFrame = Last * CFrame.new(0,-(Lightning.Size/2),0)
Wait()
end
e:Destroy()
for i,v in pairs(Lights)do
coroutine.wrap(function()
for i = 1,10 do
v.Transparency = v.Transparency +0.1
Wait()
end
v:Destroy()
Lights = {}
end)()end
Marker:Destroy()
con:disconnect()
Wait(3)
Debounces.Attacking = false
end end)
Debounces.Attacking = false
elseif AttackState == "Laser" then

elseif AttackState == "GroundSmash" then
if Power -7000 >= 0 then
Power = Power -7000
Stance = "Melee"
Debounces.Attacking = true
local xf = T.CFrame
Character.Humanoid.Jump = true
Wait(0.2)
T.Anchored = true
coroutine.wrap(function()
for a = 1,60 do
local s = Instance.new("Part",Character)
s.BrickColor = Settings.Colors[2]
s.Size = Vector3.new(5,1,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.CFrame = T.CFrame * CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for x = 1,10 do
s.Transparency = s.Transparency + 0.1
sm.Scale = sm.Scale + Vector3.new(3,3,3)
Wait()
end
s:Destroy()
end)()
Wait()
end end)()
for i = 1,100 do
T.CFrame = T.CFrame * CFrame.new(0,2,0)
Wait(0.01)
end
RH.DesiredAngle = -1.6
RH.C0 = RH.C0 * CFrame.new(0.5,0,0)
LH.DesiredAngle = 0
LH.C0 = LH.C0 * CFrame.new(-0.8,1.25,0)
LS.DesiredAngle = 0
LS.C0 = LS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/8,0,0)
RS.C0 = RS.C0 * CFrame.fromEulerAnglesXYZ(-math.pi/4,0,0)
RS.DesiredAngle = 2
N.MaxVelocity = 0.075
Wait(0.2)
coroutine.wrap(function()
for i = 1,5 do
N.DesiredAngle = -1
Wait(0.2)
N.DesiredAngle = -0.1
Wait(0.2)
end end)()
local Done = false
coroutine.wrap(function()
while Wait(0.01)do 
if Done then break end
for i = 1,10 do
Wait()
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,2,0)
Wait()
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,-2,0)
end end end)()
coroutine.wrap(function()
while Wait()do
if Done then break end
Charge(BrickColor.new("Gold"))
end end)()
Wait(2.5)
Done = true
coroutine.wrap(function()
for a = 1,45 do
local s = Instance.new("Part",Character)
s.BrickColor = Settings.Colors[1]
s.Size = Vector3.new(5,1,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.CFrame = T.CFrame
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=20329976"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for x = 1,10 do
s.Transparency = s.Transparency + 0.1
sm.Scale = sm.Scale + Vector3.new(1,1,1)
Wait()
end
s:Destroy()
end)()
Wait()
end end)()
for i = 1,25 do
T.CFrame = T.CFrame * CFrame.new(0,-8,0)
Wait()
end
Done = false
coroutine.wrap(function()
while Wait(0.01)do 
if Done then break end
for i = 1,10 do
Wait()
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,2,0)
Wait()
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,-2,0)
end end end)()
T.CFrame = xf
Character.Humanoid.WalkSpeed = 45
T.Anchored = true
coroutine.wrap(function()
local function BreakAll(Obj)
for i,z in pairs(Obj:GetChildren())do
if not Game.Players:GetPlayerFromCharacter(z.Parent)and z:IsA("BasePart")then
if z.Size.x < 500 and z.Size.z < 500 then
z.Anchored = false
local s = Instance.new("BodyVelocity",z)
s.velocity = T.CFrame.lookVector *230
s.P = 20
s.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Game:GetService("Debris"):AddItem(s,1)
end end 
Spawn(function()BreakAll(z)end)
end end
BreakAll(Workspace)
end)()
coroutine.wrap(function()
for i,v in pairs(Game.Players:GetPlayers())do
pcall(function()
if v ~= Player then
for s,z in pairs(v.Character:GetChildren())do
if z:IsA("BasePart")then
local b = Instance.new("BodyForce",z)
b.force = T.CFrame.lookVector *100
Game:GetService("Debris"):AddItem(b,1)
elseif z:IsA("Humanoid")then
z.Sit = true
TakeDamage(z,80)
end end end end)end end)()
for z = 1,25 do
local p = Instance.new("Part",Character)
p.Size = Vector3.new(1,1,1)
p.Shape = "Ball"
p.TopSurface = 0
p.BottomSurface = 0
p.BrickColor = Settings.ExplosionColors[math.random(1,#Settings.ExplosionColors)]
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.CFrame = xf
coroutine.wrap(function()
for l = 1,10 do
p.Transparency = p.Transparency + 0.1
p.Size = p.Size + Vector3.new(5,5,5)
p.CFrame = xf * CFrame.new(math.random(-10,10),0,math.random(-10,10))
Wait()
end
p:Destroy()
end)()
Wait()
end
Wait(1)
Done = true
T.Anchored = false
pcall(function()T:findFirstChild("ChargeLight"):Destroy()end)
ChargePosition(false)
Debounces.Attacking = false
Stance = "Standing"
end
elseif AttackState == '' then


end end)end)
_Mouse = Player:GetMouse()
_Mouse.KeyDown:connect(function(Key)
if Debounces.Shielding then return end
if not Equiped then
if Key == 'f' then
if Power -26000 < 0 then return end
if Debounces.Attacking or Debounces.IsCharging or Debounces.IsHealing then return end
ChangeText("Angel's wrath!")
Stance = "Null"
Power = Power -26000
Debounces.Attacking = true
ChosenColor = BrickColor.new(154)
T.Anchored = true
local Done,Intensity = false,1
coroutine.wrap(function()
while Wait(0.01)do 
if Stop then break end
for i = 1,10 do
Wait()
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,Intensity,0)
Wait()
Cam.CoordinateFrame = Cam.CoordinateFrame * CFrame.new(0,-Intensity,0)
end end end)()
coroutine.wrap(function()
ChargePosition(false)
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
end)()
coroutine.wrap(function()
while Wait()do
if Done then break end
Charge(math.random(1,2)%2 == 1 and BrickColor.new(154)or BrickColor.new(193))
end end)()
coroutine.wrap(function()
for a = 1,75 do
local s = Instance.new("Part",Character)
s.BrickColor = a%2 == 1 and BrickColor.new("Gold")or Settings.Colors[1]
s.Size = Vector3.new(5,1,5)
s.Anchored = true
s.Locked = true
s.CanCollide = false
s.TopSurface = 0
s.BottomSurface = 0
s.CFrame = T.CFrame *CFrame.new(0,-2,0)* CFrame.fromEulerAnglesXYZ(1.57,0,0)
local sm = Instance.new("SpecialMesh",s)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for x = 1,10 do
s.Transparency = s.Transparency +0.1
sm.Scale = sm.Scale + Vector3.new(4,4,4)
Wait()
end
s:Destroy()
end)()
Wait()
end end)()
Wait(1)
Done = true
pcall(function()T:findFirstChild("ChargeLight"):Destroy()end)
StopPower = true
Wait()
Intensity = 2
Done = false
local inc = 0
Wait(0.2)
local Stop,x = false,{}
coroutine.wrap(function()
while Wait(0.2)do
if Stop then break end
if not Done then
pcall(function()
table.foreach(x,function(_,v)
v.BrickColor = BrickColor.new(({"White","Institutional white","Gold","Gold"})[math.random(1,6)])
end)end)
Charge(BrickColor.new("White"))
end if StopPower then
Effect2(T,inc,inc,inc,0,0,0,BrickColor.new(131),0.3)
Effect2(LA,2,2,2,0,-0.8,0,BrickColor.new("Institutional white"))
Effect2(RA,2,2,2,0,-0.8,0,BrickColor.new("White"))
if inc < 5 then
inc = inc +1
end end end end)()
Wait(3)
local l,s,tod = Game.Lighting.Ambient,Game.Lighting.OutdoorAmbient,Game.Lighting.TimeOfDay
local Sky = Instance.new("Sky",Game.Lighting)
Sky.CelestialBodiesShown = false
coroutine.wrap(function()
for i = 1,21 do
Game.Lighting.TimeOfDay = i
Wait(0.01)
end end)()
Game.Lighting.Ambient = Color3.new(0.666666667,0,0)
pcall(function()Game.Lighting.CelestialBodiesShown = false end)
Game.Lighting.OutdoorAmbient = Color3.new(0,0,0)
Intensity = 2.4
local p = Instance.new("Part",Character)
p.Anchored = true
p.CanCollide = false
p.Locked = true
p.Transparency = 1
p.Size = Vector3.new(1,1,1)
p.CFrame = T.CFrame * CFrame.new(0,0.6,-8)
table.insert(x,p)
local AINC = 6
coroutine.wrap(function()
while Wait(0.2)do
if Stop then break end
Effect2(p,AINC,AINC,AINC,0,0,0,p.BrickColor)
end end)()
local a = Instance.new("Part",Character)
a.Anchored = true
a.CanCollide = false
a.Locked = true
a.Size = Vector3.new(4,4,4)
a.CFrame = p.CFrame * CFrame.new(Vector3.new(0,0.5,0))* CFrame.fromEulerAnglesXYZ(1.57,0,0)
a.TopSurface = 0
a.BottomSurface = 0
coroutine.wrap(function()
local function BreakAll(Obj)
for i,z in pairs(Obj:GetChildren())do
if not Game.Players:GetPlayerFromCharacter(z.Parent)and z:IsA("BasePart")then
if z.Size.x < 500 and z.Size.z < 500 then
z.Anchored = false
local s = Instance.new("BodyVelocity",z)
s.velocity = T.CFrame.lookVector *230
s.P = 20
s.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Game:GetService("Debris"):AddItem(s,1)
end end 
Spawn(function()BreakAll(z)end)
end end
BreakAll(Workspace)
end)()
local StopKilling = false
coroutine.wrap(function()
while Wait()do
if StopKilling then break end
for i,v in pairs(Game.Players:GetPlayers())do
pcall(function()
if v ~= Player then
pcall(function()Kill(v.Character.Torso)end)
for s,z in pairs(v.Character:GetChildren())do
if z:IsA("BasePart")then
if not z:findFirstChild("PushAway")then
local b = Instance.new("BodyForce",z)
b.force = T.CFrame.lookVector *230
b.Name = "PushAway"
Game:GetService("Debris"):AddItem(b,0.2)
end end end end end)end end end)()
local m = Instance.new("CylinderMesh",a)
m.Scale = Vector3.new(3.8,0,3.8)
table.insert(x,a)
coroutine.wrap(function()
while Wait(0.2)do
if Stop then break end
Effect2(a,10,10,10,0,-m.Scale.y *(a.Position - p.Position).magnitude,0,p.BrickColor)
end end)()
local ls = Instance.new("PointLight",p)
ls.Brightness = 5000
ls.Color = Color3.new(1,0,0)
local GrowthRate = 0.05
for i = 1,260 do
a.Transparency = a.Transparency +0.002
a.CFrame = a.CFrame * CFrame.new(Vector3.new(0,-10.8,0))
p.CFrame = p.CFrame * CFrame.new(Vector3.new(0,0,-0.1))
AINC = AINC +0.15
m.Scale = m.Scale + Vector3.new(-GrowthRate,6,-GrowthRate)
if m.Scale.x < 0 then GrowthRate = 0.1 end
ls.Range = ls.Range +10
inc = inc +GrowthRate -0.04
Wait()
end
for i = 1,10 do
a.Transparency = a.Transparency + 0.1
m.Scale = m.Scale + Vector3.new(0.05,0,0.05)
ls.Range = ls.Range -26
Wait()
end
a:Destroy()
Done = true
Stop = true
StopPower = false
Intensity = 0
ChosenColor = nil
T.Anchored = false
Game.Lighting.Ambient = Color3.new(0,0,0)
coroutine.wrap(function()
for i = 1,10 do
Game.Lighting.Ambient = Color3.new(Game.Lighting.Ambient.r +0.1,Game.Lighting.Ambient.g +0.1,Game.Lighting.Ambient.b +0.1)
Wait(0.01)
end
Game.Lighting.Ambient = l
Game.Lighting.OutdoorAmbient = s
Game.Lighting.TimeOfDay = tod
end)()
Debounces.Attacking = false
Sky.CelestialBodiesShown = true
Sky:Destroy()
RA.Anchored = false
StopKilling = true
LA.Anchored = false
LL.Anchored = false
RL.Anchored = false
pcall(function()Character.Humanoid.WalkSpeed = 45 end)
pcall(function()T:findFirstChild("ChargeLight"):Destroy()end)
ChargePosition(false)
Stance = "Standing"
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
Effect2(LA,i/2,i/2,i/2,0,-0.8,0,BrickColor.new("/"),tonumber("0."..i))
Wait(0.2)
end
local CF = T.CFrame * CFrame.new(-2,2,-5)
local Rock = Instance.new("Part",Workspace)
Rock.Size = Vector3.new(1,1,1)
Rock.TopSurface = 0
Rock.BottomSurface = 0
Rock.Transparency = 1
Rock.Locked = true
Rock.BrickColor = BrickColor.new("Gold")
Rock.Shape = "Ball"
Rock.CanCollide = false
Rock.CFrame = CF
Rock.Anchored = true
StopRockTrail = false
RockTrail(Rock,CFrame.new(0,0,0),BrickColor.new("Gold"))
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
Rockx.BrickColor = BrickColor.new("Institutional white")
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
Effect2(Rock,2.3,2.3,2.3,0,0,0,BrickColor.new("Gold"),0.3)
end end)()
coroutine.wrap(function()
while Wait()do
if ssss then break end
asdd = asdd +1
l.Range = l.Range +0.5
local f = Instance.new("Part",Character)
f.BrickColor = asdd%2 == 1 and BrickColor.new("1017")or BrickColor.new(41)
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
sm.Scale = sm.Scale + Vector3.new(0.5,0.5,0.5)
Wait()
end
f:Destroy()
end)()end end)()
Wait(1.5)
ssss = true
coroutine.wrap(function()
for a = 1,3 do
local s = Instance.new("Part",Character)
s.BrickColor = BrickColor.new("Gold")
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
local function Kll(Hit,Bool)
if Hit.Parent ~= Character then
if Hit.Parent ~= Workspace then
if not Hit.Parent:findFirstChild("Humanoid")then return end
pcall(function()Hit.Parent.Humanoid.PlatformStand = true end)
for n,x in pairs(Hit.Parent:GetChildren())do
if x:IsA("BasePart")then
local bf = Instance.new("BodyForce",x)
bf.force = T.CFrame.lookVector *130
Game:GetService("Debris"):AddItem(bf,0.26)
end end
if Bool then
Kill(Hit)
return
end
local cf = Rock.CFrame
local f = Instance.new("Part",Character)
f.BrickColor = BrickColor.new("Gold")
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
ax.BrickColor = BrickColor.new("Gold")
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
local int = 3
coroutine.wrap(function()
while Wait()do
if not ax then break end
int = int +4
Effect2(ax,int,int,int,0,0,0,BrickColor.new("Gold"),0)
end end)()
Kill(Hit)
pcall(function()
Rock:Destroy()
Rockx:Destroy()
end)
for i,v in pairs(Hit.Parent:GetChildren())do
if v:IsA("BasePart")then
v.Anchored = false
end end end end end
Rock.Touched:connect(Kll)
Game:GetService("Debris"):AddItem(Rock,5)
StopPower = false
Debounces.Attacking = false
end elseif Key:byte()== 32 then
local Con;Con = _Mouse.Button1Down:connect(function()
Character.Humanoid.Jump = true
local s = Instance.new("Part",Character)
s.BrickColor = BrickColor.new("White")
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

}
ChangeText(Descriptions[Key])
end
if GlobalKeys[Key]then
coroutine.wrap(function()GlobalKeys[Key](_Mouse)end)()
Wait()
Descriptions = {
h = "Healing!";
c = "Charging!";
b = "Boost!";
n = "Float!";
t = "Teleport!";
q = "Fly!"}
ChangeText(Descriptions[Key])
end end end)
_Mouse.Button1Down:connect(function()
if Debounces.Shielding or Debounces.IsCharging or Debounces.Attacking or Debounces.IsHealing then return end
if not Equiped then
if Debounces.Flying then
local bg,bv
local Speed,DC = RageMode and 350 or 200,function()
Debounces.Flying = false
StopFlyTrail = true
bg:Destroy()
bv:Destroy()
MouseMoveConnection:disconnect()
Con:disconnect()
end
StopFlyTrail = false
FlyTrail(LA,CFrame.new(0,0,0))
FlyTrail(RA,CFrame.new(0,0,0))
coroutine.wrap(function()
while Wait()do
if Debounces.Flying then
Power = Power -9
MakeFloatMesh()
if Power == 0 then
pcall(function()DC()end)
break
end
Speed = RageMode and 350 or 200
else
pcall(function()DC()end)
break end end end)()
bv = Instance.new("BodyVelocity",T)
bv.Name = "FlyVelocityVector"
bv.maxForce = Vector3.new(0,math.huge,0)
bv.velocity = Vector3.new(0,0,0)
bg = Instance.new("BodyGyro",T)
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
return
end
Debounces.Attacking = true
ChangeText("FALCO, PAWNCH!")
Stance = "NULL"
ChargePosition(false)
StopTrail = false
Trail(LA,CFrame.new(0,0,0),Settings.Colors[2])
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
for n,x in pairs(Hit.Parent:GetChildren())do
if x:IsA("BasePart")then
local bf = Instance.new("BodyForce",x)
bf.force = T.CFrame.lookVector *130
Game:GetService("Debris"):AddItem(bf,0.26)
end end
local cf = Hit.CFrame
local s = Instance.new("Part",Workspace)
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
local STCO = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
local StandRS = CFrame.new(1,0.5,0,0.707106709,0,0.707106709,0,1,0,-0.707106709,0,0.707106709)
local StandRH = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)
local StandLS = CFrame.new(-1,0.5,0,-0.923879445,0,-0.382683426,0,1,0,0.382683426,0,-0.923879445)
local StandLH = CFrame.new(-1,-1,0,0,0.0392597914,-0.999228895,0,0.999228895,0.0392597914,1,0,0)
STGyro = Instance.new("BodyGyro")
STGyro.maxTorque = Vector3.new(5000000000,5000000000,5000000000)*500000000000000
STGyro.P = 15000
STGyro.D = 750
STGyro.Name = "StanceGyro"
coroutine.wrap(function()
while Wait()do
if Power == 0 and RageMode then
KeyBindings.r()
end end end)()
Character.Humanoid.Jumping:connect(function()
Debounces.Shielding = false
LH.DesiredAngle = -0.7
LS.DesiredAngle = 0.7
RH.DesiredAngle = -0.7
RS.DesiredAngle = 0.7
N.C0 = STCO * CFrame.fromEulerAnglesXYZ(-math.pi/12,0,0)
N.DesiredAngle = 0
local vu = Instance.new("BodyVelocity",T)
vu.P = 5000
vu.maxForce = Vector3.new(0,5000000000000000000000,0)
vu.velocity = Vector3.new(0,45,0)
game:GetService("Debris"):AddItem(vu,0.267)
RiseRate = RiseRate +2
Wait(0.6)
RiseRate = RiseRate -2
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
STGyro.cframe = FaceForward()* CFrame.fromEulerAnglesXYZ(0,-math.pi/4,0)
STGyro.Parent = T
STGyro.P = 10000
STGyro.maxTorque = Vector3.new(5000,5000,5000)*50000
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
while Wait(0.2)do
if not StopPower then
Effect2(LA,1,1,1,0,-0.8,0,ChosenColor or Settings.Colors[1],0.1)
Effect2(RA,1,1,1,0,-0.8,0,ChosenColor or Settings.Colors[2],0.1)
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
if RageMode then
MoveTxt.TextColor = BrickColor.new("Gold")
PBar_back.BackgroundColor = BrickColor.new("Gold")
_Shine.BackgroundColor = BrickColor.new("Gold")
_Shine2.BackgroundColor = BrickColor.new("Gold")
Bar.BackgroundColor = BrickColor.new("Institutional white")
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
if v.BrickColor == Cached[2]then
v.BrickColor = BrickColor.new("Gold")
end end end
Settings.Colors[1]= BrickColor.new("Gold")
Settings.Colors[2]= BrickColor.new("Gold")
Power = Power -15
else
if Character.Humanoid.Health > Character.Humanoid.MaxHealth/4 then Bar.BackgroundColor = BrickColor.new("Gold")end
_Shine2.BackgroundColor = BrickColor.new("Gold")
_Shine.BackgroundColor = BrickColor.new("Gold")
if Power > 26000/4 then PBar_back.BackgroundColor = BrickColor.new("Gold")end
MoveTxt.TextColor = BrickColor.new("Gold")
for i,v in pairs(Tool:GetChildren())do
if v:IsA("BasePart")then
if v.BrickColor == BrickColor.new("Gold")then
v.BrickColor = Cached[2]
end end end
for i,v in pairs(Cached)do
Settings.Colors[i]= v
end end end)end end)()
Player.Idled:connect(function()
ChargePosition(false)
local Sayings = {"Come on player! I want to kill things.","HEY PLAYER! IT'S TIME TO PLAY!","Come on already!","The player left me...again.","Don't make me break the fourth wall again!"}
Game:GetService("Chat"):Chat(H,Sayings[math.random(1,#Sayings)],2)
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
while Wait()do
if RageMode then
local CanChange = true
for i,v in pairs(Debounces)do
if v then
CanChange = false
end end
if CanChange then Character.Humanoid.WalkSpeed = 65 end
H.BrickColor = BrickColor.new("Gold")
LA.BrickColor = BrickColor.new("Gold")
RA.BrickColor = BrickColor.new("Gold")
LL.BrickColor = BrickColor.new("Gold")
RL.BrickColor = BrickColor.new("Gold")
T.BrickColor = BrickColor.new("Gold")
else
local CanChange = true
for i,v in pairs(Debounces)do
if v then
CanChange = false
end end
if CanChange then Character.Humanoid.WalkSpeed = 45 end
T.BrickColor = BrickColor.new("Institutional white")
H.BrickColor = BrickColor.new("Institutional white")
LA.BrickColor = BrickColor.new("Institutional white")
RA.BrickColor = BrickColor.new("Institutional white")
LL.BrickColor = BrickColor.new("Institutional white")
RL.BrickColor = BrickColor.new("Institutional white")
end
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
end end
--~InternalRecursion~--
end}
module[5] = {"Angel Wings",function()
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
mainwingpart.BrickColor=BrickColor.White()
mainwingpart.Parent=player.Character
weld=new('Weld',torso)
weld.Part0=weld.Parent
weld.Part1=mainwingpart
weld.C0=fnew(0,.4,0)
WingRight=new('WedgePart')
WingRight.formFactor=3
WingRight.Size=vnew(.04,.3,.5)
WingRight.CanCollide=false
WingRight.BrickColor=BrickColor.White()
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
pp.BrickColor=BrickColor.White()
pp.formFactor=3
if w==1 then
pp.Size=vnew(.3,2.5,.8)
else
pp.Size=vnew(.3,1/(w/5),2/w)
end
pp.CanCollide=false
pp.BrickColor=BrickColor.White()
pp.CFrame=WingRight.CFrame
pp.Material='Slate'
pp.Parent=WingRight
if dan==1 then
dan=0
asdlal=new('WedgePart')
asdlal.BrickColor=BrickColor.White()
asdlal.formFactor=3
asdlal.Size=vnew(.25,pp.Size.y,15/w)
for lawlz,Evil in pairs(Evil)do
if player.Name==Evil then
asdlal:remove()
asdlal=new('WedgePart')
asdlal.formFactor=3
asdlal.BrickColor=BrickColor.White()
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
WingLeft.BrickColor=BrickColor.White()
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
pp.BrickColor=BrickColor.White()
pp.formFactor=3
if w==1 then
pp.Size=vnew(.3,2.5,.8)
else
pp.Size=vnew(.3,1/(w/5),2/w)
end
pp.CanCollide=false
pp.BrickColor=BrickColor.White()
pp.CFrame=WingLeft.CFrame
pp.Material='Slate'
pp.Parent=WingLeft
if dan==1 then
dan=0
asdlal=new('WedgePart')
asdlal.BrickColor=BrickColor.White()
asdlal.formFactor=3
asdlal.Size=vnew(.25,pp.Size.y,15/w)
for lawlz,Evil in pairs(Evil)do
if player.Name==Evil then
asdlal:remove()
asdlal=new('WedgePart')
asdlal.formFactor=3
asdlal.BrickColor=BrickColor.White()
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
lball.BrickColor=BrickColor.White()
for i,v in pairs(Evil)do
if player.Name==v then
lball.BrickColor=BrickColor.White()
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
rball.BrickColor=BrickColor.White()
for i,v in pairs(Evil)do
if player.Name==v then
rball.BrickColor=BrickColor.White()
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
part.BrickColor=BrickColor.White()
for i,v in pairs(Evil)do
if player.Name==v then
part.BrickColor=BrickColor.White()
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
part.BrickColor=BrickColor.White()
for i,v in pairs(Evil)do
if player.Name==v then
part.BrickColor=BrickColor.White()
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
pp.BrickColor=BrickColor.White()
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
Join.BrickColor=BrickColor.White()
Join.Transparency=.5
Join.CFrame=rot(0,math.rad(3.6*wasd)*2,0)+pos+vnew(math.random(-3,3),0,math.random(-3,3))
Join.Parent=pp
pJoin=new('Part')
life(pJoin,.4)
new('BlockMesh',pJoin).Scale=vnew(10,10,10)+vnew((wasd/30),(wasd/30),(wasd/30))
pJoin.formFactor=0
pJoin.Size=vnew(1,1,1)
pJoin.Anchored=true
pJoin.BrickColor=BrickColor.White()
pJoin.Transparency=.5
pJoin.CFrame=rot(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))+pos+vnew(math.random(-3,3),0,math.random(-3,3))
pJoin.Parent=workspace
pp.Parent=player.Character
wait()
pp.BrickColor=BrickColor.White()
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
part.BrickColor=BrickColor.White()
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
part.BrickColor=BrickColor.White()
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

 
 

module[1] = {"Rapier",function()
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

LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)

RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)

attack = false 

attacktype = 1 

damage = 5 

oridamage = 50 

attackdebounce = false 

ssdebounce=false

MMouse=nil

combo=0

magic=true

RootPart=Character.HumanoidRootPart

RootJoint=RootPart.RootJoint

RootCF=euler(-1.57,0,3.14)

--player 

player = nil 

--save shoulders 

RSH, LSH = nil, nil 

--welds 

RW, LW = Instance.new("Weld"), Instance.new("Weld") 

RW.Name="Right Shoulder" LW.Name="Left Shoulder"

 

 

if Character:findFirstChild("Rapier",true) ~= nil then 

Character:findFirstChild("Rapier",true).Parent = nil 

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

modelzorz.Name = "Rapier" 

 

local prt1=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part1",vt(1,1,1))

local prt2=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part2",vt(1,1,1))

local prt3=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part3",vt(1,1,1))

local prt4=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part4",vt(1,1,1))

local prt5=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part5",vt(1,1,1))

local prt6=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part6",vt(1,1,1))

local prt7=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part7",vt(1,1,1))

local prt8=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part8",vt(1,1,1))

local prt9=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part9",vt(1,1,1))

local prt10=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part10",vt(1,1,1))

local prt11=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part11",vt(1,1,1))

local prt12=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part12",vt(1,1,1))

local prt13=part(3,modelzorz,0,1,BrickColor.new("Black"),"Part13",vt(0.5,4,0.5))

 

local msh1=mesh("CylinderMesh",prt1,"","",vt(0,0,0),vt(0.2,1,0.2))

local msh2=mesh("SpecialMesh",prt2,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(0.2,0.5,0.2))

local msh3=mesh("SpecialMesh",prt3,"Sphere","",vt(0,0,0),vt(0.1,0.6,0.1))

local msh4=mesh("BlockMesh",prt4,"","",vt(0,0,0),vt(0.3,0.2,0.05))

local msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(0.05,0.2,0.3))

local msh6=mesh("SpecialMesh",prt6,"Sphere","",vt(0,0,0),vt(0.4,0.4,0.4))

local msh7=mesh("CylinderMesh",prt7,"","",vt(0,0,0),vt(0.1,0.5,0.1))

local msh8=mesh("CylinderMesh",prt8,"","",vt(0,0,0),vt(0.4,0.5,0.4))

local msh9=mesh("CylinderMesh",prt9,"","",vt(0,0,0),vt(0.3,0.05,0.3))

local msh10=mesh("BlockMesh",prt10,"","",vt(0,0,0),vt(0.2,0.1,0.2))

local msh11=mesh("SpecialMesh",prt11,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(0.2,1,0.2))

local msh12=mesh("SpecialMesh",prt12,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(0.2,3,0.2))

local msh13=mesh("BlockMesh",prt13,"","",vt(0,0,0),vt(1,1,1))

 

local wld1=weld(prt1,prt1,Torso,euler(-2,0,0)*cf(1,0.5,1.5))

local wld2=weld(prt2,prt2,prt1,cf(0,0.3,0))

local wld3=weld(prt3,prt3,prt2,cf(0,0.3,0))

local wld4=weld(prt4,prt4,prt2,cf(0,0.3,0))

local wld5=weld(prt5,prt5,prt2,cf(0,0.3,0))

local wld6=weld(prt6,prt6,prt1,cf(0,-0.5,0))

local wld7=weld(prt7,prt7,prt6,cf(0,-0.25,0))

local wld8=weld(prt8,prt8,prt7,cf(0,0,0))

local wld9=weld(prt9,prt9,prt7,cf(0,-0.3,0))

local wld10=weld(prt10,prt10,prt9,cf(0,-0.05,0))

local wld11=weld(prt11,prt11,prt10,cf(0,-0.5,0))

local wld12=weld(prt12,prt12,prt11,cf(0,-1.5,0))

local wld13=weld(prt13,prt13,prt12,cf(0,0,0))

 

numb=0

for i=1,4 do

local prt13=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part13",vt(1,1,1))

local prt14=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part14",vt(1,1,1))

local prt15=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part15",vt(1,1,1))

local prt16=part(3,modelzorz,0,0,BrickColor.new("Really black"),"Part16",vt(1,1,1))

 

local msh13=mesh("SpecialMesh",prt13,"Wedge","",vt(0,0,0),vt(0.05,0.5,0.5))

local msh14=mesh("SpecialMesh",prt14,"Wedge","",vt(0,0,0),vt(0.051,0.5,0.3))

local msh15=mesh("BlockMesh",prt15,"","",vt(0,0,0),vt(0.052,0.3,0.2))

local msh16=mesh("SpecialMesh",prt16,"Wedge","",vt(0,0,0),vt(0.051,0.5,0.5))

 

local wld13=weld(prt13,prt13,prt6,euler(0,0,3.14)*cf(0,0.2,0.3)*euler(0,numb,0))

local wld14=weld(prt14,prt14,prt13,euler(-0.3,0,3.14)*cf(0,0.4,0.2))

local wld15=weld(prt15,prt15,prt14,euler(-0.2,0,0)*cf(0,-0.3,-0.1))

local wld16=weld(prt16,prt16,prt15,euler(0.5,0,0)*cf(0,-0.3,0))

 

numb=numb+1.57

end

 

numb=0

color="Bright red"

for i=1,6 do

if i==1 then color="White" elseif i==2 then color="Bright blue" elseif i==3 then color="Bright green" elseif i==4 then color="Black" elseif i==5 then color="Bright red" elseif i==6 then color="Bright yellow" end

local prt17=part(3,modelzorz,0,0,BrickColor.new(color),"Part17",vt(1,1,1))

 

local msh17=mesh("BlockMesh",prt17,"","",vt(0,0,0),vt(0.1,0.2,0.1))

 

local wld17=weld(prt17,prt17,prt7,cf(0.15,0.13,0)*euler(0,numb,0))

 

numb=numb+1.046

end

 

if (script.Parent.className ~= "HopperBin") then 

Tool = Instance.new("HopperBin") 

Tool.Parent = Backpack 

Tool.Name = "Rapier" 

script.Parent = Tool 

end 

Bin = Tool

 

local bg = it("BodyGyro") 

bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 

bg.P = 20e+003 

bg.Parent = nil 

        bp=it("BodyPosition")

        bp.P=2000

        bp.D=100

        bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)

 

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

wld1.C0=euler(-2,0,0)*cf(1,0.5,1.5)

end 

 

function equipweld() 

wld1.Part1=LeftArm

wld1.C0=euler(1.57,0,0)*cf(0,1,0)

end 

 

function hideanim() 

equipped=false

wait(0.1) 

Torso.Neck.C0=necko

RootJoint.C0=RootCF

unequipweld() 

end 

 

function equipanim() 

equipped=true

wait(0.1) 

equipweld() 

Torso.Neck.C0=necko*euler(0,0,1)

RootJoint.C0=RootCF*euler(0,0,-1)

RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.3)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(0.5,-1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(0.2,0,0)

end 

 

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants

return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 

end 

 

function oneslash()

attack=true

for i=0,1,0.1 do

wait()

LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(0.5+1.5*i,-1.57+0.2*i,0)

LW.C1=cf(0, 0.5, 0) * euler(0.2-0.8*i,0,0)

end

so("http://roblox.com/asset/?id=10209640",prt12,1,1) 

local LastPoint = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

con1=prt13.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 

for i=0,1,0.2 do

wait()

Torso.Neck.C0=necko*euler(0,0,1-2*i)

RootJoint.C0=RootCF*euler(0,0,-1+2*i)

wld1.C0=euler(1.57+1*i,0,0)*cf(0,1,0)

LW.C0=cf(-1-0.5*i, 0.5, -0.5+0.5*i) * euler(2-0.5*i,-1.37,0)

LW.C1=cf(0, 0.5, 0) * euler(0.2-0.8+1.6*i,0,0)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

local Point2 = prt12.CFrame

effect("White",0.5,0.1,LastPoint,Point)

LastPoint = Point

end

con1:disconnect()

attack=false

end

 

function twoslash()

attack=true

for i=0,1,0.1 do

wait()

RootJoint.C0=RootCF*euler(0,0,1+3.14*i)

wld1.C0=euler(1.57+1-1*i,0,0)*cf(0,1,0)

LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(1.5+0.07*i,-1.37-0.2*i,0)

LW.C1=cf(0, 0.5, 0) * euler(1-2*i,0,0)

end

so("http://roblox.com/asset/?id=10209640",prt12,1,1.1) 

local LastPoint = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

con1=prt13.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 

for i=0,1,0.2 do

wait()

RootJoint.C0=RootCF*euler(0,0,1+3.14+3.14*i)

wld1.C0=euler(1.57+1*i,0,0)*cf(0,1,0)

LW.C0=cf(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * euler(1.57,-1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(-1+2*i,0,0)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

effect("White",0.5,0.1,LastPoint,Point)

LastPoint = Point

end

con1:disconnect()

attack=false

end

 

function threeslash()

attack=true

for i=0,1,0.1 do

wait()

RootJoint.C0=RootCF*euler(0,0,1-1*i)

Torso.Neck.C0=necko*euler(0,0,-1+1*i)

wld1.C0=euler(1.57+1-1*i,0,0)*cf(0,1,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(1.57+3.64*i,-1.57+1*i,0)

LW.C1=cf(0, 0.5, 0) * euler(1,0,0)

end

so("http://roblox.com/asset/?id=10209640",prt12,1,1) 

local LastPoint = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

con1=prt13.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 

for i=0,1,0.2 do

wait()

RootJoint.C0=RootCF*euler(0,0,-1*i)

Torso.Neck.C0=necko*euler(0,0,1*i)

LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(5.21-0.3*i,-0.57,0)

LW.C1=cf(0, 0.5, 0) * euler(1+4*i,0,0)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

effect("White",0.5,0.1,LastPoint,Point)

LastPoint = Point

end

con1:disconnect()

attack=false

end

 

function fourslash()

attack=true

so("rbxasset://sounds\\swordlunge.wav",prt12,1,1.5) 

local LastPoint = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

con1=prt13.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 

for i=0,1,0.2 do

wait()

RootJoint.C0=RootCF*euler(0,0,-1-0.57*i)

Torso.Neck.C0=necko*euler(0,0,1+0.57*i)

wld1.C0=euler(1.57+1*i,0,0)*cf(0,1,0)

LW.C0=cf(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * euler(4.91+1.57*i,-0.57+0.57*i,0)

LW.C1=cf(0, 0.5, 0) * euler(5,-1.57*i,0)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

effect("White",0.5,0.1,LastPoint,Point)

LastPoint = Point

end

for i=0,1,0.2 do

wait()

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

effect("White",0.5,0.1,LastPoint,Point)

LastPoint = Point

end

con1:disconnect()

attack=false

end

 

function FlameBarrage()

attack=true

magic=true

for i=0,1,0.1 do

wait()

Torso.Neck.C0=necko*euler(0.5*i,0,1-1*i)

wld1.C0=euler(1.57+0.2*i,0,0)*cf(0,1,0)

RW.C0=cf(1.5-1*i, 0.5, -0.5*i) * euler(1*i,0,0.3-1*i)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(0.5+0.5*i,-1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(0.2-0.4*i,0,0)

end

for i=0,1,0.1 do

wait()

RW.C0=cf(1.5-1, 0.5, -0.5) * euler(1-0.4*i,0,0.3-1)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

wld7.C0=wld7.C0*euler(0,-0.2,0)

so("http://roblox.com/asset/?id=28445431",prt7,1,20) 

end

coroutine.resume(coroutine.create(function()

for i=1,10 do

so("http://roblox.com/asset/?id=131382140",prt12,1,10) 

wait(0)

end

end))

reffect=prt12:Clone()

reffect.Parent=modelzorz

reffect.Transparency=1

reffect.Mesh.Scale=vt(0.3,3,0.3)

reffect.BrickColor=BrickColor.new("Bright red")

local efwld=weld(reffect,reffect,prt12,cf(0,-0.4,0))

coroutine.resume(coroutine.create(function(Part)

for i=0,1,0.1 do

wait()

Part.Transparency=Part.Transparency-0.05

end

while magic==true do

wait()

MagicBlock(BrickColor.new("Bright red"),prt12.CFrame*cf((math.random()/4)-(math.random()/4),math.random(-2,1)+math.random(),(math.random()/4)-(math.random()/4)),.5,.5,.5,.05,.05,.05)

end

for i=0,1,0.1 do

wait()

Part.Transparency=Part.Transparency+0.1

end

Part.Parent=nil

end),reffect)

for i=0,1,0.05 do

wait()

Torso.Neck.C0=necko*euler(0.5-0.5*i,0,1*i)

RW.C0=cf(1.5-1+0.5*i, 0.5, -0.5+0.3*i) * euler(0.6,0,-0.7)

RW.C1=cf(0, 0.5, 0) * euler(-0.4*i,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(1+0.2*i,-1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(-0.2-0.2*i,0,0)

end

so("http://roblox.com/asset/?id=10209640",prt12,1,1) 

local LastPoint = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

con1=prt13.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 

for i=1,3 do

so("http://roblox.com/asset/?id=130865054",Torso,1,1.5) 

end

for i=0,0.2,0.1 do

wait()

RootJoint.C0=RootCF*euler(0,0,-1+7.28*i)

Torso.Neck.C0=necko*euler(0,0,1-1*i)

RW.C0=cf(1.5-0.5, 0.5, -0.5+0.3-0.3*i) * euler(0.6,0,-0.7-0.5*i)

RW.C1=cf(0, 0.5, 0) * euler(-0.4,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(1.2+0.37*i,-1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(-0.4+2.4*i,0,0)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

effect("Bright red",0.5,0.3,LastPoint,Point)

LastPoint = Point

end 

local exprt=part(3,modelzorz,0,1,BrickColor.new("Bright red"),"Explosion Part",vt(1,1,1))

exprt.Anchored=true

exprt.CFrame=RootPart.CFrame*cf(0,0,-7)

so("http://www.roblox.com/asset/?id=2101148",exprt,1,0.6)

game:GetService("Debris"):AddItem(exprt,1)

MagicCircle(BrickColor.new("Bright red"),exprt.CFrame,3,3,3,3,3,3)

for i=1,4 do

MagicRing(BrickColor.new("Bright red"),exprt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),3,3,0.1,1,1,0.05)

end

local c = game.Workspace:GetChildren()

for i = 1, #c do

local hum = c[i]:findFirstChild("Humanoid")

if hum ~= nil and hum.Health ~= 0 then

local head = c[i]:findFirstChild("Head")

if head ~= nil then

local targ = head.Position - exprt.Position

local mag = targ.magnitude

if mag <= 10 and c[i].Name ~= Player.Name then 

attackdebounce=false

Damagefunc1(head,15,50)

end

end

end

end

for i=0.2,1,0.1 do

wait()

RootJoint.C0=RootCF*euler(0,0,-1+7.28*i)

Torso.Neck.C0=necko*euler(0,0,1-1*i)

RW.C0=cf(1.5-0.5, 0.5, -0.5+0.3-0.3*i) * euler(0.6,0,-0.7-0.5*i)

RW.C1=cf(0, 0.5, 0) * euler(-0.4,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(1.2+0.37*i,-1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(-0.4+2.4*i,0,0)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

effect("Bright red",0.5,0.3,LastPoint,Point)

LastPoint = Point

end

con1:disconnect()

for i=0,1,0.1 do

wait()

RootJoint.C0=RootCF*euler(0,0,1*i)

Torso.Neck.C0=necko*euler(0,0,-1*i)

wld1.C0=euler(1.77-1.2*i,0,0)*cf(0,1,0)

RW.C0=cf(1.5-0.5, 0.5, -0.5) * euler(0.6,0,-1.2)

RW.C1=cf(0, 0.5, 0) * euler(-0.4,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,-1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(2-0.43*i,0,0)

end

so("rbxasset://sounds\\swordlunge.wav",prt12,1,1.2) 

local LastPoint = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

con1=prt13.Touched:connect(function(hit) Damagefunc1(hit,20,30) end) 

for i=0,1,0.2 do

wait()

RootJoint.C0=RootCF*euler(0,0,1-2.57*i)

Torso.Neck.C0=necko*euler(0,0,-1+2.57*i)

wld1.C0=euler(0.57+2.57*i,0,0)*cf(0,1,0)

RW.C0=cf(1.5-0.5+0.5*i, 0.5, -0.5+0.5*i) * euler(0.6,0,-1.2+2.4*i)

RW.C1=cf(0, 0.5, 0) * euler(-0.4,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,-1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(1.57,0,0)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

effect("Bright red",0.5,0.3,LastPoint,Point)

LastPoint = Point

end

con1:disconnect()

numb=-7

for i=1,3 do

local exprt=part(3,modelzorz,0,1,BrickColor.new("Bright red"),"Explosion Part",vt(1,1,1))

exprt.Anchored=true

exprt.CFrame=RootPart.CFrame*cf(0,0,numb)

so("http://www.roblox.com/asset/?id=2101148",exprt,1,1)

game:GetService("Debris"):AddItem(exprt,1)

MagicCircle(BrickColor.new("Bright red"),exprt.CFrame,3,3,3,3,3,3)

coroutine.resume(coroutine.create(function(Part)

for i=1,4 do

MagicBlock(BrickColor.new("Bright red"),Part.CFrame,3,3,3,2,2,2)

wait(0.1)

end

end),exprt)

local c = game.Workspace:GetChildren()

for i = 1, #c do

local hum = c[i]:findFirstChild("Humanoid")

if hum ~= nil and hum.Health ~= 0 then

local head = c[i]:findFirstChild("Head")

if head ~= nil then

local targ = head.Position - exprt.Position

local mag = targ.magnitude

if mag <= 10 and c[i].Name ~= Player.Name then 

attackdebounce=false

Damagefunc1(head,5,30)

end

end

end

end

numb=numb-5

wait(0.2)

end

wait(1)

Torso.Neck.C0=necko*euler(0,0,1)

RootJoint.C0=RootCF*euler(0,0,-1)

magic=false

attack=false

end

 

function IcePrison()

attack=true

magic=true

for i=0,1,0.1 do

wait()

Torso.Neck.C0=necko*euler(0,0,1-1*i)

RootJoint.C0=RootCF*euler(0,0,-1+1*i)

wld1.C0=euler(1.57,0,0)*cf(0,1,0)

RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(1.9*i,0,0.3-0.8*i)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(0.5+1.07*i,-1.57+1.57*i,0.7*i)

LW.C1=cf(0, 0.5, 0) * euler(0.2-0.2*i,0,0)

end

for i=0,1,0.1 do

wait()

RW.C0=cf(1.5-0.5, 0.5, -0.5) * euler(1.9,0,-0.5-0.2*i)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

wld7.C0=wld7.C0*euler(0,0.2,0)

so("http://roblox.com/asset/?id=28445431",prt7,1,20) 

end

reffect=prt12:Clone()

reffect.Parent=modelzorz

reffect.Transparency=1

reffect.Mesh.Scale=vt(0.3,3,0.3)

reffect.BrickColor=BrickColor.new("Bright blue")

local efwld=weld(reffect,reffect,prt12,cf(0,-0.4,0))

coroutine.resume(coroutine.create(function(Part)

for i=0,1,0.1 do

wait()

Part.Transparency=Part.Transparency-0.05

end

while magic==true do

wait()

MagicBlock(BrickColor.new("Bright blue"),prt12.CFrame*cf((math.random()/4)-(math.random()/4),math.random(-2,1)+math.random(),(math.random()/4)-(math.random()/4)),.5,.5,.5,.05,.05,.05)

end

for i=0,1,0.1 do

wait()

Part.Transparency=Part.Transparency+0.1

end

Part.Parent=nil

end),reffect)

for i=1,3 do

so("http://roblox.com/asset/?id=25605551",prt12,1,1) 

end

wait(0.5)

for i=0,1,0.1 do

wait()

wld1.C0=euler(1.57+1*i,0,0)*cf(0,1,0)

RW.C0=cf(1.5-0.5, 0.5, -0.5) * euler(1.9-0.6*i,0,-0.7)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(1.57-0.57*i,0,0.7-0.2*i)

LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)

end

local LastPoint = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

con1=prt13.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 

for i=1,3 do

so("http://roblox.com/asset/?id=10209640",prt12,1,1) 

for i=0,1,0.2 do

wait()

RootJoint.C0=RootCF*euler(0,0,6.32*i)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

effect("Bright blue",0.5,0.3,LastPoint,Point)

LastPoint = Point

end

end

so("http://roblox.com/asset/?id=10209640",prt12,1,1) 

for i=0,1,0.2 do

wait()

RootJoint.C0=RootCF*euler(0,0,3.14*i)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

effect("Bright blue",0.5,0.3,LastPoint,Point)

LastPoint = Point

end

con1:disconnect()

for i=0,1,0.1 do

wait()

wld1.C0=euler(2.57-1*i,3.14*i,0)*cf(0,1,0)

RootJoint.C0=RootCF*euler(0,0,3.14+3.14*i)

RW.C0=cf(1.5-0.5, 0.5, -0.5) * euler(1.3+1.2*i,0,-0.7)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(1+1.5*i,0,0.5+0.2*i)

LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)

end

local LastPoint = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

so("http://roblox.com/asset/?id=10209640",prt12,1,1.1) 

bg.Parent=Torso

bg.cframe=Torso.CFrame

local bp = Instance.new("BodyPosition")

bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)

bp.P = 10000

local CF = Torso.CFrame

bp.position = CF.p

bp.Parent=Torso

for i=0,1,0.2 do

wait()

bp.position = CF.p - Vector3.new(0,1.5,0)

Torso["Left Hip"].C0=LHC0*cf(-0.7*i,1.2*i,0)

Torso["Right Hip"].C0=RHC0*cf(0,1.2*i,0)*euler(0,0,-0.5*i)

RW.C0=cf(1.5-0.5, 0.5, -0.5) * euler(2.5-1*i,0,-0.7)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(2.5-1*i,0,0.7)

LW.C1=cf(0, 0.5, 0) * euler(0,0,0)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

effect("Bright blue",0.5,0.3,LastPoint,Point)

LastPoint = Point

end

numb=-3

numb2=0

for i=1,40 do

local exprt=part(3,modelzorz,0,1,BrickColor.new("Bright red"),"Explosion Part",vt(1,1,1))

exprt.Anchored=true

exprt.CFrame=RootPart.CFrame*cf(numb2,0,numb)

so("http://www.roblox.com/asset/?id=32656754",exprt,0.5,1) 

game:GetService("Debris"):AddItem(exprt,3)

for i=1,5 do

--Icicle(exprt.CFrame*euler(math.random(-2,1)+math.random(),0,math.random(-2,1)+math.random()),2,5,2)

MagicFreeze(BrickColor.new("Bright blue"),exprt.CFrame*cf(0,-3,0),0.5,0.5,0.5,0.1,0.3,0.1)

end

local c = game.Workspace:GetChildren()

for i = 1, #c do

local hum = c[i]:findFirstChild("Humanoid")

if hum ~= nil and hum.Health ~= 0 then

local head = c[i]:findFirstChild("Head")

if head ~= nil then

local targ = head.Position - exprt.Position

local mag = targ.magnitude

if mag <= 5 and c[i].Name ~= Player.Name then 

attackdebounce=false

freezeDamagefunc(head,0,0)

end

end

end

end

numb=numb-1

if numb2==1 then

wait(0)

numb2=0

end

numb2=numb2+1

end

wait(0.5)

bg.Parent=nil

bp.Parent=nil

Torso["Left Hip"].C0=LHC0

Torso["Right Hip"].C0=RHC0

Torso.Neck.C0=necko*euler(0,0,1)

RootJoint.C0=RootCF*euler(0,0,-1)

magic=false

attack=false

end

 

function AirDash()

attack=true

magic=true

for i=0,1,0.1 do

wait()

wld1.C0=euler(1.57-1.2*i,0,0)*cf(0,1,0.3*i)

Torso.Neck.C0=necko*euler(0,0,1+0.57*i)

RootJoint.C0=RootCF*euler(0,0,-1-0.57*i)

RW.C0=cf(1.5, 0.5, 0) * euler(0.7*i,0,0.3-0.9*i)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5+1*i, 0.5, -0.5*i) * euler(0.5+1.07*i,-1.57+3.16*i,0)

LW.C1=cf(0, 0.5, 0) * euler(0.2+0.8*i,0,0)

end

for i=0,1,0.1 do

wait()

wld7.C0=wld7.C0*euler(0,0.2,0)

so("http://roblox.com/asset/?id=28445431",prt7,1,20) 

end

so("http://roblox.com/asset/?id=10209640",prt12,1,0.7) 

local vel2 = Instance.new("BodyVelocity")

vel2.Parent = RootPart

vel2.maxForce = vt(4e+005,4e+005,4e+005)*1

vel2.velocity = Head.CFrame.lookVector*100

local LastPoint = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

bg.Parent = Head

bg.cframe=Head.CFrame

jointhit=false

con1=prt13.Touched:connect(function(hit) 

coroutine.resume(coroutine.create(function()

        if hit.Parent==nil then

                return

        end

        h=hit.Parent:FindFirstChild("Humanoid")

        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil and jointhit==false then

jointhit=true

        bp.position=RootPart.Position

--        bp.Parent=RootPart

bg.Parent=RootPart

bg.cframe=RootPart.CFrame

for i=0,1,0.1 do

wait()

RootJoint.C0=RootCF*cf(0,-5*i,5*i)*euler(1.57*i,0,-1.57)

end

for i=0,1,0.1 do

wait()

Torso.Neck.C0=necko*euler(0,0,1.57-1.57*i)

RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.6+0.97*i)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(-1.57,0,0)

RootJoint.C0=RootCF*cf(0,-5-5*i,5+5*i)*euler(1.57+1.57*i,0,-1.57-3.14*i)

end

coroutine.resume(coroutine.create(function()

while attack==true do

wait()

Torso.Neck.C0=necko

wld1.C0=euler(1.57-1.2+2.77,0,0)*cf(0,1,0)

RW.C0=cf(1.5, 0.5, 0) * euler(0,0,1.57)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(-1.57,0,0)

end

end))

vel2.Parent=nil

for i=0,1,0.1 do

wait()

RootJoint.C0=RootCF*cf(0,-10,10-3*i)*euler(3.14+1.57*i,0,-1.57-3.14-1.57*i)

end

for i=0,1,0.15 do

wait()

RootJoint.C0=RootCF*cf(0,-10,7-3*i)*euler(3.14+1.57+1.57*i,0,-1.57-3.14-1.57+1.57*i)

end

for i=0,1,0.2 do

wait()

RootJoint.C0=RootCF*cf(0,-10,4-4*i)*euler(3.14+3.14,0,-1.57-3.14-1.57+1.57+1.57*i)

end

RootPart.CFrame=Torso.CFrame*euler(0,1,0)

RootJoint.C0=RootCF*euler(0,0,-1)

bg.Parent=nil

bp.Parent=nil

wait(0.5)

attack=false

wait()

Torso.Neck.C0=necko*euler(0,0,1)

end

end))

Damagefunc1(hit,10,10) 

end) 

numb=-1

for i=0,1,0.2 do

wait()

so("http://roblox.com/asset/?id=10209640",prt12,1,numb) 

numb=numb+0.2

wld1.C0=euler(1.57-1.2+2.77*i,0,0)*cf(0,1,0.3-0.3*i)

Torso.Neck.C0=necko*euler(0,0,1.57)

RW.C0=cf(1.5, 0.5, 0) * euler(0.7-0.7*i,0,-0.6+1.2*i)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5+1-1*i, 0.5, -0.5+0.5*i) * euler(1.57,1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(1-2.57*i,0,0)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

local Point2 = prt12.CFrame

effect("White",0.5,0.1,LastPoint,Point)

LastPoint = Point

end

for i=0,1,0.1 do

wait()

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

local Point2 = prt12.CFrame

effect("White",0.5,0.1,LastPoint,Point)

LastPoint = Point

end

con1:disconnect()

if jointhit==false then

vel2.Parent=nil

end

wait(1)

Torso.Neck.C0=necko*euler(0,0,1)

if jointhit==false then

bg.Parent=nil

RootJoint.C0=RootCF*euler(0,0,-1)

attack=false

end

magic=false

end

 

local LastPoint = prt12.CFrame * CFrame.new(0,-prt12.Size.Y*2.5,0)

local Point = prt12.CFrame * CFrame.new(0,prt12.Size.Y*2.5,0)

function effect(Color,Ref,Size,LP,P1,returnn)

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

effectsg.Size = Vector3.new(Size,mg,Size)

effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)

if returnn then return effectsg end

coroutine.resume(coroutine.create(function()

if not returnn then

for i = 0 , 1 , 0.1 do

wait()

effectsg.Transparency = 1*i

effectsmsh.Scale = Vector3.new(Size-Size*i,1,Size-Size*i)

end

wait()

effectsg.Parent = nil

end

end))

end

 

function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3)

local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))

prt.Anchored=true

prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))

local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))

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

 

function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3)

local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))

prt.Anchored=true

prt.CFrame=cframe

local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))

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

 

function MagicFreeze(brickcolor,cframe,x1,y1,z1,x3,y3,z3)

local prt=part(3,workspace,0.4,0.3,brickcolor,"Effect",vt(0.5,0.5,0.5))

prt.Anchored=true

prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))

local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(x1,y1,z1))

coroutine.resume(coroutine.create(function(Part,Mesh) 

for i=0,1,0.1 do

Part.CFrame=Part.CFrame*cf(0,0.3,0)

Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)

end

wait(5)

Part.Parent=nil

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

                vp.velocity=RootPart.CFrame.lookVector*Knockback+RootPart.Velocity/1.05

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

                Damage=Damage+math.random(0,5)

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

                showDamage(hit.Parent,Damage,.5)

                so("http://www.roblox.com/asset/?id=41763367",hit,1,2) 

--[[                for i=1,10 do

                local freezepart=part(3,hit.Parent,0.5,0.5,BrickColor.new("Bright blue"),"Ice Part",vt(math.random(2,3)+math.random(),math.random(2,3)+math.random(),math.random(2,3)+math.random()))

                freezepart.Anchored=true

                freezepart.CFrame=hit.Parent.Torso.CFrame*cf(math.random(-1,0)+math.random(),-2.5,math.random(-1,0)+math.random())*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))

                coroutine.resume(coroutine.create(function(Part) 

                wait(5)

                Part.Anchored=false

                Part.Velocity=vt(math.random(-20,20),math.random(20,30),math.random(-20,20))

                wait(5)

                Part.Parent=nil

                end),freezepart)

                end]]

                coroutine.resume(coroutine.create(function(BodyPos,BodyGy,Hitted) 

                wait(5)

                BodyPos.Parent=nil

                BodyGy.Parent=nil

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

 

function ob1d(mouse) 

if attack == true then return end 

hold=true

if combo==0 then

combo=1

oneslash()

elseif combo==1 then

combo=2

twoslash()

elseif combo==2 then

combo=3

threeslash()

elseif combo==3 then

combo=4

fourslash()

end

coroutine.resume(coroutine.create(function() 

wait(0.5)

if attack==false then

combo=0

Torso.Neck.C0=necko*euler(0,0,1)

RootJoint.C0=RootCF*euler(0,0,-1)

wld1.C0=euler(1.57,0,0)*cf(0,1,0)

RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.3)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(0.5,-1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(0.2,0,0)

end

end))

end 

 

function ob1u(mouse) 

hold = false 

end 

 

buttonhold = false 

 

function key(key) 

if attack == true then return end 

--attack=true

if key=="z" then

FlameBarrage()

end

if key=="x" then

IcePrison()

end

if key=="c" then

AirDash()

end

if key=="f" then

--so("http://roblox.com/asset/?id=130839563",Torso,1,1) 

so("http://www.roblox.com/asset/?id=10209810",Torso,1,1) 

wait(5)

for i=0,1,0.1 do

wait()

so("http://www.roblox.com/asset/?id=10209810",Torso,1,2) 

end

end

combo=0

wld1.C0=euler(1.57,0,0)*cf(0,1,0)

RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.3)

RW.C1=cf(0, 0.5, 0) * euler(0,0,0)

LW.C0=cf(-1.5, 0.5, 0) * euler(0.5,-1.57,0)

LW.C1=cf(0, 0.5, 0) * euler(0.2,0,0)

Humanoid.WalkSpeed=16

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

print("Spell Rapier loaded.")

-- mediafire

--[[ 

Copyrighted (C) Fenrier 2013

]]
end}
module[2] = {"Realistic Watch",function()
--[[
Watch
Zomg a watch.
--]]


if script == nil then return end


ModelName = "Watch"
Player = Game.Players.LocalPlayer
Char = Player.Character
animate = Char:findFirstChild("Animate")
if animate then
animate:Destroy()
end
Selected = false
Connected = false
Button1Down = false
CanUse = true
WatchColor = BrickColor.new("Navy blue")
FaceColor = BrickColor.new("Navy blue")
FaceBackColor = BrickColor.new("Really black")
CenterHandColor = BrickColor.new("Navy blue")
NotchColor1 = BrickColor.new("Bright green")
NotchColor2 = BrickColor.new("Bright green")
HourHandColor = BrickColor.new("Navy blue")
MinuteHandColor = BrickColor.new("Navy blue")
SecondHandColor = BrickColor.new("Really red")



function CheckPlayer()
	if Player.Character == nil then return false end
	if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Right Arm") == nil or Player.Character:FindFirstChild("Humanoid") == nil then return false end
	if Player.Character.Humanoid.Health <= 0 then return false end
	return true
end




function Time()
	local Hours = math.floor((tick() / 3600) % 24)
	local Minutes = math.floor((tick() % 3600) / 60)
	local Seconds = math.floor(tick() % 60)
	local Section = ""
	if Hours == 24 or Hours < 12 then
		Section = "AM"
	else
		Section = "PM"
	end
	if Hours > 12 then
		Hours = Hours - 12
	end
	if Minutes <= 9 then
		Minutes = "0" ..tostring(Minutes)
	end
	if Seconds <= 9 then
		Seconds = "0" ..tostring(Seconds)
	end
	return Hours, Minutes, Seconds, Section
end


function CreateParts(Parent, Format)
	if Parent == nil then return end
	local Parts = Instance.new("Model")
	Parts.Name = ModelName
	if Format == 1 then
		Parts.Name = Parts.Name.. " (Holstered)"
	end
	Parts.Parent = Player.Character

	local MasterPart1 = Instance.new("Part")
	MasterPart1.Material = "SmoothPlastic"
	MasterPart1.Name = "Handle"
	MasterPart1.FormFactor = "Custom"
	MasterPart1.Size = Vector3.new(1.1, 0.2, 1.1)
	MasterPart1.BrickColor = WatchColor
	MasterPart1.TopSurface = 0
	MasterPart1.BottomSurface = 0
	MasterPart1.Parent = Parts
	Instance.new("BlockMesh", MasterPart1)
	local Weld = Instance.new("Weld", MasterPart1)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
	Weld.C0 = CFrame.new(0, 0.7, 0)

	local MasterPart2 = Instance.new("Part")
	MasterPart2.Material = "SmoothPlastic"
	MasterPart2.Name = "Watch"
	MasterPart2.FormFactor = "Custom"
	MasterPart2.Size = Vector3.new(0.5, 0.21, 0.5)
	MasterPart2.BrickColor = WatchColor
	MasterPart2.TopSurface = 0
	MasterPart2.BottomSurface = 0
	MasterPart2.Parent = Parts
	Instance.new("CylinderMesh", MasterPart2)
	local Weld = Instance.new("Weld", MasterPart2)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(90), 0) * CFrame.new(-0.5, 0, 0)

	for i = 0, 360, 15 do
		local Part = Instance.new("Part")
		Part.Material = "SmoothPlastic"
		Part.Name = "Face Rim"
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.2, 0.2)
		Part.BrickColor = WatchColor
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.Parent = Parts
		Instance.new("BlockMesh", Part).Scale = Vector3.new(0.065 / 0.2, 0.03 / 0.2, 0.05 / 0.2)
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = MasterPart2
		Weld.C0 = CFrame.new(0, 0.12, 0.224) * CFrame.fromEulerAnglesXYZ(0, math.rad(i), 0)
	end

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Face"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.4, 0.2, 0.4)
	Part.BrickColor = FaceColor
	Part.Transparency = 0.8
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(1, 0.06 / 0.2, 1)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0.1, 0)

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Face Back"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.4, 0.2, 0.4)
	Part.BrickColor = FaceBackColor
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(1, 0.0105 / 0.2, 1)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0.1, 0)

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Hand Center"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.BrickColor = CenterHandColor
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.035 / 0.2, 0.04 / 0.2, 0.035 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0.1, 0)

	for i = 0, 360, 360 / 20 do
		if i % (360 / 4) ~= 0 then
			local Part = Instance.new("Part")
			Part.Material = "SmoothPlastic"
			Part.Name = "Notch 1"
			Part.FormFactor = "Custom"
			Part.Size = Vector3.new(0.2, 0.2, 0.2)
			Part.BrickColor = NotchColor1
			Part.TopSurface = 0
			Part.BottomSurface = 0
			Part.Parent = Parts
			Instance.new("BlockMesh", Part).Scale = Vector3.new(0.01 / 0.2, 0.01075 / 0.2, 0.03 / 0.2)
			local Weld = Instance.new("Weld", Part)
			Weld.Part0 = Weld.Parent
			Weld.Part1 = MasterPart2
			Weld.C0 = CFrame.new(0, 0.1, 0.17) * CFrame.fromEulerAnglesXYZ(0, math.rad(i), 0)
		end
	end

	for i = 0, 360, 360 / 4 do
		local Part = Instance.new("Part")
		Part.Material = "SmoothPlastic"
		Part.Name = "Notch 2"
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.2, 0.2)
		Part.BrickColor = NotchColor2
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.Parent = Parts
		Instance.new("BlockMesh", Part).Scale = Vector3.new(0.02 / 0.2, 0.011 / 0.2, 0.05 / 0.2)
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = MasterPart2
		Weld.C0 = CFrame.new(0, 0.1, 0.17) * CFrame.fromEulerAnglesXYZ(0, math.rad(i), 0)
	end

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Hand Hour"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.BrickColor = HourHandColor
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("BlockMesh", Part).Scale = Vector3.new(0.03 / 0.2, 0.015 / 0.2, 0.1 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0.11, 0.05)

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Hand Minute"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.BrickColor = MinuteHandColor
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("BlockMesh", Part).Scale = Vector3.new(0.02 / 0.2, 0.0125 / 0.2, 0.15 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0.11, 0.075)

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Hand Second"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.BrickColor = SecondHandColor
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("BlockMesh", Part).Scale = Vector3.new(0.01 / 0.2, 0.01 / 0.2, 0.17 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0.11, 0.085)

	for _, Part in pairs(Parts:GetChildren()) do
		Part.Locked = true
		Part.CanCollide = false
	end

	coroutine.wrap(function()
		while Parts.Parent ~= nil do
			local Hours, Minutes, Seconds = Time()
			--SoundToServer("Tick", "http://www.roblox.com/Asset/?id=14863866", 5, 0.5, false, Parts:FindFirstChild("Watch"))
			pcall(function() Parts["Hand Hour"].Weld.C1 = CFrame.fromEulerAnglesXYZ(0, (math.pi * (Hours / 12) * 2) - math.rad(90), 0) end)
			pcall(function() Parts["Hand Minute"].Weld.C1 = CFrame.fromEulerAnglesXYZ(0, (math.pi * (Minutes / 60) * 2) - math.rad(90), 0) end)
			pcall(function() Parts["Hand Second"].Weld.C1 = CFrame.fromEulerAnglesXYZ(0, (math.pi * (Seconds / 60) * 2) - math.rad(90), 0) end)
			wait(1)
		end
	end)()
end


function RemoveParts(Parent, Format)
	if Format == 1 then
		pcall(function() Parent[ModelName.. " (Holstered)"]:Remove() end)
	elseif Format == 2 then
		pcall(function() Parent[ModelName]:Remove() end)
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
	local Joint = Instance.new("Motor6D")
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


function onButton1Down(Mouse)
	if Button1Down == true then return end
	Button1Down = true
	if CheckPlayer() == false then return end
	if CanUse == true then
		CanUse = false
		DisableLimb(1, Player.Character)
		SetSpeed(1, 0.5, Player.Character)
		SetAngle(1, 0, Player.Character)
		RemoveParts(Player.Character, 1)
		CreateParts(Player.Character, 2)
		wait(0.2)
		for i = 0, 1, 0.075 do
			pcall(function()
				Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - (40 * i)), math.rad(-5 * i), math.rad(180 - (15 * i)))
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.15 * i), 0.5, -0.2 * i) * CFrame.fromEulerAnglesXYZ(math.rad(100 * i), math.rad(90 + (130 * i)), math.rad(40 * i))
			end)
			wait()
		end
		pcall(function()
			Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-130), math.rad(-5), math.rad(165))
			Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.35, 0.5, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(100), math.rad(220), math.rad(40))
		end)
		wait(0.1)
		CanUse = true
		coroutine.wrap(function()
			while Selected == true and Button1Down == true do
				wait()
			end
			CanUse = false
			for i = 1, 0, -0.075 do
				pcall(function()
					Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - (40 * i)), math.rad(-5 * i), math.rad(180 - (15 * i)))
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.15 * i), 0.5, -0.2 * i) * CFrame.fromEulerAnglesXYZ(math.rad(100 * i), math.rad(90 + (130 * i)), math.rad(40 * i))
				end)
				wait()
			end
			pcall(function()
				Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180))
			end)
			ResetLimbCFrame(1, Player.Character)
			EnableLimb(1, Player.Character)
			RemoveParts(Player.Character, 2)
			CreateParts(Player.Character, 1)
			CanUse = true
		end)()
	end
end


function onButton1Up(Mouse)
	Button1Down = false
end


function onKeyDown(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if Button1Down == false and CanUse == true and CheckPlayer() == true then
		if Key == "q" then
			if Mouse.Target == nil then return end
			if CheckPlayer() == false then return end
			local NewPlayer = game:GetService("Players"):GetPlayerFromCharacter(Mouse.Target.Parent)
			if NewPlayer == nil then return end
			if NewPlayer.Character == nil then return end
			if NewPlayer.Character:FindFirstChild("Torso") == nil then return end
			if (NewPlayer.Character.Torso.Position - Player.Character.Torso.Position).magnitude > 10 then return end
			onDeselected(Mouse)
			wait()
			RemoveParts(Player.Character, 1)
			script.Parent.Parent = NewPlayer.Backpack
			Player = NewPlayer
		end
	end
end


function onSelected(Mouse)
	if Selected == true or CanUse == false then return end
	CanUse = false
	while true do
		if CheckPlayer() == true then
			if Player.Character.Torso:FindFirstChild("Right Shoulder") ~= nil then
				break
			end
		end
		wait(0.1)
	end
	Selected = true
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.Button1Down:connect(function() onButton1Down(Mouse) end)
	Mouse.Button1Up:connect(function() onButton1Up(Mouse) end)
	Mouse.KeyDown:connect(function(Key) onKeyDown(Key, Mouse) end)
	CanUse = true
end


function onDeselected(Mouse)
	if Selected == false then return end
	Selected = false
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = ModelName
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
elseif script.Parent.ClassName == "HopperBin" and Connected == false then
	Connected = true
	Player = script.Parent.Parent.Parent
	end wait() if script.Parent.ClassName == "HopperBin" then
	while script.Parent.Parent.ClassName ~= "Backpack" do
		wait()
	end
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
	CreateParts(Player.Character, 1)

end
end}
module[3] = {"Reaper Apocalypse",function()
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

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Dark stone grey","Handle",Vector3.new(0.232000008, 0.812000036, 0.34799999))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0146102905, -0.318485737, 0.839184284, 1.00000632, -4.93172472e-008, -0.000935511896, -0.000935515272, -6.51810888e-006, -1.00000536, 4.32263612e-008, 0.999999762, -6.51843266e-006))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Dark stone grey","Hitbox",Vector3.new(5.11999989, 1.03200006, 0.800000012))
Hitboxweld=weld(m,handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.26914215, -2.28439808, -0.0138931274, 5.5279628e-008, 0.000357966754, -0.999999583, -0.000903482374, 1.00000536, 0.000357964687, 1.00000632, 0.000903477019, 3.78699411e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.463999987, 0.200000003, 0.232000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0174179077, -4.69187212, -0.754995346, -1.0000025, 0.000546428899, -0.00286973943, -0.00286977179, -2.13581079e-005, 0.999995589, 0.000546361669, 1.00000572, 2.29263151e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599992, 0.579999983, 0.927999973))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00373840332, -2.08894491, 2.90544128, 1.00000536, 0.00170327828, -1.6089453e-007, -0.00170328422, 1.00000441, 1.36183207e-005, 1.84098781e-007, -1.36177896e-005, 0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.200000003, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.79949474, -0.180219173, -0.227863312, -0.00172967673, 1.00001013, 2.24112646e-005, 6.46309104e-007, 2.24120486e-005, -0.999999523, -1.00001204, -0.00172966474, -6.85080067e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799999, 0.200000003, 0.696000099))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.74123478, -0.409946442, 4.40184164, -0.00107316044, 1.00000525, 1.4551938e-005, 1.0000062, 0.00107315509, 7.93131278e-007, 7.77512412e-007, 1.45525482e-005, -0.999999642))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.69599998, 0.579999983, 0.927999914))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000267028809, -0.582561016, -1.50176382, 1.00001347, -3.86033207e-007, -3.92623845e-009, 3.77418473e-007, 1.00001156, 2.45045476e-006, 3.94029254e-009, -2.44983767e-006, 0.999999285))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00412750244, 1.45268583, -1.05011797, 1.00001216, 0.00172310648, 2.03311345e-007, 0.00172311824, -1.00001025, 6.49886579e-006, 2.14497248e-007, -6.49923504e-006, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(3.13199997, 0.231999978, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.80415058, -0.524322987, -0.00103759766, 9.72363068e-007, 2.15515029e-005, -0.999999285, -0.00172366935, 1.00001025, 2.15501732e-005, 1.00001216, 0.00172365736, 1.0095107e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.463999987, 0.231999993, 0.232000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00213241577, 0.754931927, -3.58990145, -1.00000894, 0.00341619202, 7.19290369e-007, -0.00341618108, -1.00000799, -2.25470994e-005, 6.42287603e-007, -2.25490967e-005, 0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.200000003, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.79969883, -0.180217266, 0.23601532, -0.00172980642, 1.00001013, 2.24137202e-005, 6.46412275e-007, 2.24145024e-005, -0.999999285, -1.00001204, -0.00172979443, -6.85189946e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00409317017, 1.45303392, 2.21011066, -1.00001216, -0.00168438489, -1.55491065e-007, 0.00168439688, -1.00001025, 6.03345643e-006, -1.6564087e-007, 6.03390299e-006, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.928000152, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0164337158, 0.00995254517, 0.378734589, 1.00000417, -0.000275396451, 0.000659934303, -0.000271914061, 0.707111299, 0.70709461, -0.000661380531, -0.707101762, 0.707109511))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.463999957, 0.452400029))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0109825134, -0.0555400848, 0.707753658, 1.00001204, 0.00170851196, -1.88033137e-005, -0.0017085236, 1.00001013, 1.71195006e-005, 1.88328195e-005, -1.70869171e-005, 0.999999285))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.812000036, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.96466255, -0.414768219, 0.721370459, -0.00134572294, 0.500003576, 0.866025984, 1.00001371, 0.000263436057, 0.00140178087, 0.000472741085, 0.866039276, -0.499996334))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.60000002384186,"Pastel Blue","Part",Vector3.new(2.31999993, 0.34799999, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.2697916, -1.39367867, 0.285621643, 9.60484385e-007, 2.34255967e-005, -0.999999404, -0.00169333746, 1.00001848, 2.34244617e-005, 1.00002027, 0.00169331662, 1.00015268e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999904, 0.231999978, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.02214336, -0.756259918, -0.00161361694, 9.72405815e-007, 2.15511936e-005, -0.999999046, -0.00172374037, 1.00001574, 2.15500022e-005, 1.00001884, 0.00172372279, 1.00955594e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.812000036, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0164260864, 0.299938202, -0.537542105, 1.00001764, -0.000275420141, 0.000659916259, -0.000271896773, 0.707119524, 0.707094133, -0.000661385478, -0.707109988, 0.707109034))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.579999983, 0.695999742, 0.463999987))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.39053106, -0.458235741, -0.011390686, -0.000440491422, 1.00001991, 1.48311792e-005, -5.82179155e-007, -1.48307363e-005, 0.999999404, 1.00002158, 0.000440472504, 5.88722855e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999993, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0137062073, 0.00253915787, -1.46745825, -1.00000048, 0.00355784409, 1.83245029e-005, 0.00355784269, 0.999999583, 2.01142084e-005, -1.82529657e-005, 2.0179079e-005, -0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999993, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0136070251, 0.113649845, 0.986213684, -1.00001204, -0.00167019933, -1.89533148e-005, 0.0016702119, -1.00001013, -2.11289407e-005, -1.89182501e-005, -2.11601837e-005, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.812000036, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.96466923, 0.397167206, 0.721361637, -0.0013458092, 0.50001061, 0.86602205, 1.00001383, 0.00026367465, 0.00140174653, 0.000472528627, 0.866035402, -0.500003278))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.69599998, 0.200000003, 0.928000033))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.56735134, -0.408821106, 3.24180651, -0.000670250331, 1.00001955, 1.51960503e-005, 1.00002134, 0.000670230889, 6.58439376e-007, 6.48245248e-007, 1.51957993e-005, -0.999999404))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.60000002384186,"Pastel Blue","Part",Vector3.new(2.31999993, 0.34799999, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.26982021, -1.39350224, -0.295120239, 1.08945255e-006, 2.34336403e-005, -0.999999404, -0.00210836693, 1.00001788, 2.34318177e-005, 1.00001955, 0.00210834551, 1.13885642e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999904, 0.231999978, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.02117348, 1.4526372, 0.0043182373, -8.55062524e-007, -7.5024268e-006, -0.999999642, 0.00172491686, -1.00000417, 7.50057416e-006, -1.00000513, -0.00172491092, 8.67988547e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.170059204, -2.2058959, 4.45978069, -1.00001419, -0.00135475828, -4.16571709e-007, -0.00135477353, 1.00001323, 4.34294707e-005, 3.57724417e-007, 4.34299582e-005, -0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232000008, 0.200000003, 0.34800005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00218582153, -0.812090874, 2.42410946, 1.0000062, -0.000122337253, -0.000491121027, -0.000139618875, 0.866030037, -0.499999434, 0.000486493052, 0.500002682, 0.866024911))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.34799999, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00135040283, 0.462905884, 3.42825031, -1.00001216, -0.00170107209, -3.2242329e-007, 0.00170108408, -1.00001025, -4.80908056e-007, -3.21594428e-007, -4.80819381e-007, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999993, 1.27600002, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00625753403, -1.16150713, -0.00413131714, 9.68375389e-007, 2.27232595e-005, -0.999999404, -0.00171916001, 1.00001824, 2.27220989e-005, 1.00002003, 0.00171913893, 1.0074408e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.174598694, -2.20604086, 4.45978403, -1.0000217, 3.07324808e-006, 3.6950091e-008, 3.05491267e-006, 1.00001991, 4.44986144e-005, -3.68387809e-008, 4.44985162e-005, -0.999999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.231999993, 0.34800005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.7220459e-005, -0.171551704, 2.84820986, 1.00001347, 1.32246059e-005, -1.8708166e-005, -1.32331043e-005, 1.00001156, 9.19823833e-007, 1.87084588e-005, -9.18944352e-007, 0.999999285))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.812000155, 0.200000003, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90776682, -1.85868549, -0.00782012939, 1.8466252e-006, 2.3490722e-005, -0.999999404, -0.00454348512, 1.0000093, 2.34826093e-005, 1.00001109, 0.00454345904, 1.95331836e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.232000038, 0.463999987))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.69186592, -0.987005711, -0.00565719604, 1.16656577e-006, 2.24069317e-005, -0.999999642, -0.0023512831, 1.00000334, 2.24043106e-005, 1.00000429, 0.00235127681, 1.21924631e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599992, 0.463999987, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.008228302, -2.14741659, -0.0642538071, -1.00000715, 0.00357599347, 3.75979994e-007, 0.00357599184, 1.00000525, 2.70939381e-007, -3.75028975e-007, 2.71639692e-007, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000347137451, -1.8586607, -0.167779922, 1.00002146, -7.44219869e-006, -3.64530095e-008, 7.4239797e-006, 1.00001967, 2.38242046e-006, 3.6459241e-008, -2.38146504e-006, 0.999999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999993, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0133476257, 0.114125729, -1.46745729, 1.00000048, -0.00355736027, 1.89384191e-005, -0.00355735887, -0.999999583, 2.02438559e-006, 1.8931225e-005, -2.09207792e-006, -0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.74000013, 0.232000083, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.64782763, -2.03162193, -0.00580215454, 1.18259686e-006, 2.35495809e-005, -0.999999404, -0.00240779901, 1.00001693, 2.35471889e-005, 1.00001872, 0.00240777642, 1.23929362e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(2.31999993, 0.232000008, 0.463999987))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.26977873, -1.68380308, -0.00464248657, 1.04666037e-006, 2.36031628e-005, -0.999999285, -0.00197039847, 1.00000978, 2.36014093e-005, 1.00001168, 0.00197038613, 1.09316613e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.463999987, 0.579999983, 1.15999985))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000141143799, -0.00238656998, -1.38578653, 1.00001347, -2.6228372e-007, -3.18987103e-009, 2.53668986e-007, 1.00001156, 2.2798049e-006, 3.2041374e-009, -2.27918736e-006, 0.999999285))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34800005, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.12457228, 0.377754211, -2.04072428, -0.00161815656, 2.28647568e-005, 0.999998331, 1.00000501, -0.000935775577, 0.00161816564, 0.000935807999, 1.00000536, -2.13500443e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.69599998, 0.34800005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00218963623, -1.21802139, 2.42397022, 1.00000656, -0.000122337195, -0.000491121318, -0.000139618875, 0.866030455, -0.499999672, 0.000486493111, 0.500002742, 0.866025031))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.200000003, 0.59740001))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.012588501, -0.230174541, 1.22678614, 1.00001204, 0.00170156895, -1.85436711e-005, -0.00170158059, 1.00001013, 1.60903783e-005, 1.85713052e-005, -1.60583568e-005, 0.999999285))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232000187, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.28582335, -2.20614576, 0.16740036, 1.29392276e-006, 2.35486077e-005, -0.999999285, -0.00276590372, 1.00000787, 2.35452953e-005, 1.00000978, 0.00276589021, 1.3590477e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.579999983, 0.927999735, 0.463999987))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.39041233, -1.27023077, -0.011089325, -0.000441556913, 1.00001168, 1.47172686e-005, -5.82458881e-007, -1.47170649e-005, 0.999999285, 1.00001359, 0.0004415476, 5.88964099e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.463999987, 0.200000003, 0.928000033))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.56732988, 0.403812408, 3.24179888, -0.000671263493, 1.00000596, 1.39352715e-005, 1.00000691, 0.000671258371, 6.59181296e-007, 6.49824415e-007, 1.39354743e-005, -0.999999642))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.27600002, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.180254936, -1.16150093, -0.0041885376, 9.68362087e-007, 2.2722732e-005, -0.999999285, -0.00171916536, 1.00001013, 2.27213986e-005, 1.00001204, 0.00171915337, 1.00742602e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.231999993, 0.916400015))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0164260864, 0.589895248, 0.094648838, 1.00001764, -0.000275413156, 0.000659923593, -0.000271906902, 0.707119524, 0.707094133, -0.000661385711, -0.707109988, 0.707109034))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.34799999, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00074005127, -0.113721371, 2.02377272, 1.00001466, -2.03231466e-005, 3.07392952e-007, -2.03155214e-005, -1.00001335, -1.85632734e-006, 3.07421914e-007, 1.85568797e-006, -0.999999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599992, 0.232000008, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000648498535, 0.523108482, 3.42824936, -1.00001204, -0.00170232763, -3.22026239e-007, 0.00170233962, -1.00001013, -4.4727858e-007, -3.21253964e-007, -4.47188995e-007, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599992, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00292205811, -2.03163147, 4.63377762, -1.00001311, -0.000978587777, -2.91069369e-007, -0.000978597905, 1.00001121, 4.45006881e-005, 2.4750986e-007, 4.45008554e-005, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.62399995, 0.927999794, 0.928000033))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.1038084, 0.702246666, -0.00408935547, -0.00171928364, 1.00001013, 1.46179427e-005, -5.92813478e-007, -1.46185203e-005, 0.999999285, 1.00001204, 0.00171927165, 6.17952878e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.463999987))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.180233479, -1.85741377, -0.00400161743, 9.68401537e-007, 2.21498412e-005, -0.999999285, -0.00171989296, 1.00001013, 2.2148517e-005, 1.00001204, 0.00171988097, 1.00649675e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 0.580000103, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.463999987, 0.34799999, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00061416626, 0.113962173, -0.515907764, 1.00000679, 8.48609488e-007, -1.58665658e-009, -8.52916855e-007, 1.00000584, 8.92841399e-007, 1.59491531e-009, -8.9252535e-007, 0.999999642))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.69599998, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000152587891, 0.350605965, -0.979739666, -1.00001347, 3.24973371e-007, -3.23643548e-007, -3.16358637e-007, -1.00001156, -4.67361169e-005, -3.23648152e-007, -4.67360405e-005, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.200000003, 0.231999978))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0134773254, -2.03588963, 0.0627288818, 1.0000118, 0.00168008753, -0.000919409504, -0.000919448154, 1.43879734e-005, -0.999998927, -0.00168008532, 1.00001025, 1.59331266e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.34799999, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00144577026, 0.465278625, 2.25577259, 1.00000525, -0.00357661862, 2.83521615e-007, -0.00357662095, -1.00000381, -2.32054535e-005, 3.66508516e-007, 2.32040093e-005, -0.999999404))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.231999993, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.4577775, -0.755722523, -0.00420379639, 9.68686891e-007, 2.31499107e-005, -0.999999285, -0.00171863148, 1.00001037, 2.31485628e-005, 1.00001228, 0.00171861949, 1.00847365e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.927999914, 0.231999978, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.63014698, -0.756272316, -0.00161361694, 9.72395696e-007, 2.15512227e-005, -0.999999285, -0.00172371534, 1.00001013, 2.15498931e-005, 1.00001204, 0.00172370335, 1.00954367e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000984191895, -0.756361485, 0.354147911, 1.00001216, 0.00168376672, -1.40138248e-008, -0.00168377871, 1.00001025, 2.1083024e-005, 4.95281753e-008, -2.10825874e-005, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.463999987, 0.200000003, 0.231999844))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.19616699e-005, -0.350408554, -0.921793938, 1.00001347, 8.28295015e-008, -2.89782998e-009, -9.14442353e-008, 1.00001156, 2.05126844e-006, 2.91285485e-009, -2.05064771e-006, 0.999999285))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999993, 0.200000003, 0.463999987))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00622749329, -1.85754061, -0.00392532349, 9.6856877e-007, 2.22277413e-005, -0.999999285, -0.00171961775, 1.00001037, 2.2226408e-005, 1.00001228, 0.00171960576, 1.00679244e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.580000103, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(3.13199997, 0.231999978, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.804111, 1.68473339, 0.00412750244, -8.36535833e-007, -6.4935798e-006, -0.999999285, 0.00172392465, -1.00001013, 6.49140156e-006, -1.00001204, -0.00172391266, 8.47700733e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00101089478, -0.756358147, 3.25414419, 1.00001884, 0.00168378535, -1.40127501e-008, -0.00168380293, 1.00001574, 2.10829876e-005, 4.953597e-008, -2.1082411e-005, 0.999999046))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00154876709, -0.345762253, -0.747890472, -1.00000513, 0.00184790534, -9.90573952e-008, -0.00184790278, -1.00000417, -3.50944756e-005, -1.63901603e-007, -3.50941227e-005, 0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.200000003, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00116729736, 0.582655907, 0.921771049, 1.0000118, -0.0018872465, 3.00768534e-007, -0.00188724138, -1.00000989, -2.33032779e-006, 3.05155339e-007, 2.32914181e-006, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(2.31999993, 0.34799999, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.26979065, -1.04566193, -0.00424575806, 9.68193035e-007, 2.35501375e-005, -0.999999285, -0.00171805895, 1.00001037, 2.35487987e-005, 1.00001228, 0.00171804742, 1.00865361e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232000187, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.28582954, -2.20552588, -0.181804657, 1.45761271e-006, 2.37911408e-005, -0.999999285, -0.00329261925, 1.00000644, 2.37865734e-005, 1.00000834, 0.00329260482, 1.53593442e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.69599998, 0.200000003, 0.928000033))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.56748581, 0.403205872, 3.24181366, -0.000669696892, 1.00001156, 1.54301233e-005, 1.00001347, 0.000669687288, 6.58446311e-007, 6.48107061e-007, 1.54301015e-005, -0.999999285))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599992, 0.232000008, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00191497803, -2.03143692, -2.60386896, 1.00001359, 0.000368760899, 2.53006078e-007, -0.000368769979, 1.00001168, 2.77856907e-006, -2.51969908e-007, -2.77804475e-006, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999993, 0.231999993, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.79963732, -0.0062046051, -0.227901459, -0.00172873132, 1.00001025, 2.30093628e-005, 6.45988621e-007, 2.30101468e-005, -0.999999285, -1.00001216, -0.00172871957, -6.85771909e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999993, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000247955322, -1.85837555, 0.515717983, -1.00001347, 0.00037799112, 1.62256811e-007, 0.000377983262, 1.00001156, 4.46234044e-005, -1.45407441e-007, 4.4623368e-005, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599992, 0.231999993, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00257110596, -1.6831336, 3.42826033, 1.00001204, 0.00170258048, -1.60158933e-007, -0.00170259248, 1.00001013, 1.46196398e-005, 1.8506725e-007, -1.46188831e-005, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000370025635, -1.8587203, -1.44380522, 1.00001359, -8.11205246e-006, -3.67194701e-008, 8.10361234e-006, 1.00001168, 2.74641434e-006, 3.67127662e-008, -2.74579975e-006, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(2.31999993, 0.231999993, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.27035666, -1.68360662, 0.293216705, -6.99449004e-007, 0.000311892974, 0.999999285, -0.00104407989, 1.00001121, -0.000311888987, -1.00001323, -0.00104407, -3.73821621e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.928000152, 0.464000016, 0.463999987))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.16985369, -0.871246338, -0.0051651001, 1.16509625e-006, 2.38373486e-005, -0.999998808, -0.00235050265, 1.00001895, 2.38351458e-005, 1.00002158, 0.00235049031, 1.22111521e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232000008, 0.200000003, 1.04399979))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000732421875, 0.345625401, -1.32782841, 1.00001347, 1.57987233e-006, -3.28700223e-009, -1.58848707e-006, 1.00001156, 1.30031594e-006, 3.30395888e-009, -1.29968794e-006, 0.999999285))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000172, 0.200000003, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.341750622, -1.85878611, -0.00778961182, 1.84655323e-006, 2.3751556e-005, -0.999999285, -0.00454270514, 1.00000131, 2.3743276e-005, 1.00000322, 0.00454268791, 1.9544193e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.69599998, 0.200000003, 1.2759999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-005, -0.466629028, -0.399776936, 1.00001347, -3.22703272e-007, -3.16622373e-009, 3.14088538e-007, 1.00001156, 2.64065238e-006, 3.18028226e-009, -2.6400412e-006, 0.999999285))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0040397644, 1.45275879, 0.354114056, -1.00001884, -0.00168373343, -1.7531282e-007, 0.00168375147, -1.00001597, 6.02276077e-006, -1.85434587e-007, 6.02347882e-006, 0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999993, 0.231999993, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.79963207, -0.00620794296, 0.236164093, -0.00172861468, 1.00001025, 2.30448168e-005, 6.46028013e-007, 2.30456026e-005, -0.999999285, -1.00001216, -0.00172860292, -6.85869907e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.62399995, 1.27599967, 0.928000033))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.10384512, 2.7322464, -0.00403213501, -0.00171939307, 1.00001013, 1.46226739e-005, -5.92917615e-007, -1.46232505e-005, 0.999999285, 1.00001204, 0.00171938131, 6.18066792e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.231999993, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000701904297, -0.345462322, 1.90779448, 1.00001347, -2.00413051e-005, 3.0602007e-007, -2.00327486e-005, -1.00001156, -2.15015098e-006, 3.06052669e-007, 2.14952706e-006, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.04400015, 0.811999977, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.2278223, -1.50939083, -0.00476455688, 1.06762559e-006, 2.37910026e-005, -0.999999285, -0.00203778502, 1.00000966, 2.37891327e-005, 1.00001156, 0.00203777291, 1.11610427e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.463999987, 0.200000003, 0.928000033))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.56723642, -0.411323547, 3.2417984, -0.000671109243, 1.0000056, 1.40209831e-005, 1.00000656, 0.000671104353, 6.59014859e-007, 6.49602271e-007, 1.40211887e-005, -0.999999642))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00456619263, 1.45251989, 3.25319099, -1.00000548, -0.00168398093, -1.74997453e-007, 0.0016839871, -1.00000453, 7.01806357e-006, -1.86809473e-007, 7.01812223e-006, 0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0012512207, 0.756712437, 0.921786785, 1.00001192, -0.00188787864, 2.99965563e-007, -0.00188787398, -1.00001001, -2.71932527e-006, 3.05087923e-007, 2.71814042e-006, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00101852417, -0.756660938, -1.05014706, -1.00001204, -0.00172244979, 6.12758271e-008, -0.00172246178, 1.00001013, 2.15474902e-005, -9.84062183e-008, 2.15469754e-005, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.580000103, 2.204))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00379943848, -2.08976412, 1.34025192, 1.00001204, 0.00171907921, 2.17523793e-005, -0.00171909155, 1.00001013, 1.06986054e-005, -2.17342458e-005, -1.07354717e-005, 0.999999285))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.27600014, 1.04400003, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.06781864, -1.39336252, -0.00276947021, 6.42567954e-007, 2.37156328e-005, -0.999999285, -0.000670476642, 1.00001156, 2.37155527e-005, 1.00001347, 0.000670467038, 6.58474448e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.696000159, 0.200000003, 0.232000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.457955837, -0.580825329, -0.0055770874, 1.16664842e-006, 2.21116316e-005, -0.999999642, -0.00235209521, 1.00000632, 2.21090704e-005, 1.00000727, 0.0023520845, 1.21865253e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00102996826, -0.756342888, -2.7901454, -1.00001884, -0.00172247365, 6.13245135e-008, -0.001722491, 1.00001574, 2.15474611e-005, -9.84643691e-008, 2.15468062e-005, -0.999999046))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.927999973, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.35656452, -0.0282249451, -2.04077148, -0.00161817856, 2.2865348e-005, 0.999997616, 1.00001848, -0.000935790653, 0.00161816448, 0.000935816381, 1.00001693, -2.13497078e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34799999, 0.200000003, 0.696000099))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.7414937, 0.402587891, 4.40184164, -0.00107212085, 1.00001121, 1.57967261e-005, 1.00001311, 0.00107211061, 7.93275149e-007, 7.76334844e-007, 1.57971135e-005, -0.999999285))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999993, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0135307312, 0.00276422501, 0.986213207, 1.00001204, 0.00167110038, -1.825656e-005, -0.00167111226, 1.00001013, -1.0784629e-006, 1.82550084e-005, 1.10962583e-006, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.231999964, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0116043091, -0.169836521, 2.03595734, 1.00001204, 0.00170413801, -1.86736106e-005, -0.00170414965, 1.00001013, 1.63084733e-005, 1.87016558e-005, -1.62761844e-005, 0.999999285))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.927999914, 0.231999978, 0.69599998))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.62992048, 1.45317078, 0.00423812866, -8.35475475e-007, -7.49478841e-006, -0.999999642, 0.00172465458, -1.00001037, 7.49267065e-006, -1.00001204, -0.00172464119, 8.48372508e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0048866272, 1.45256662, -2.78931189, 1.00000513, 0.00172351021, 2.02878823e-007, 0.00172351615, -1.00000417, 7.49809578e-006, 2.15795779e-007, -7.49809897e-006, -0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.175273895, -2.2061739, -4.11187935, 1.00001371, 0.00036665576, 8.8621448e-008, -0.000366665074, 1.0000118, 2.83818667e-006, -8.7566761e-008, -2.8376005e-006, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232000008, 0.579999983, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000499725342, -0.350563049, -2.02378225, 1.00001347, -5.64614311e-007, -3.58900643e-009, 5.56057785e-007, 1.00001156, 2.58954788e-006, 3.60246588e-009, -2.58893624e-006, 0.999999285))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.463999957, 0.452400029))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0107460022, -0.0555205345, 1.75172997, 1.00001204, 0.00170685095, -1.87402256e-005, -0.00170686259, 1.00001013, 1.71129595e-005, 1.87696915e-005, -1.7080516e-005, 0.999999285))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.463999987, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000179290771, -0.11830616, -0.515934467, 1.00000679, 1.18016033e-006, -1.49793378e-009, -1.18446769e-006, 1.00000584, 4.800022e-007, 1.50599488e-009, -4.79683422e-007, 0.999999642))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.579999983, 0.695999742, 0.463999987))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.39072371, -2.08222008, -0.0108184814, -0.000440219301, 1.00001168, 1.49555108e-005, -5.82121402e-007, -1.49553034e-005, 0.999999285, 1.00001359, 0.000440209988, 5.88711941e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.232000038, 0.200000003, 3.59599972))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000350952148, -0.34586668, 1.57220888, 1.00001347, -8.66054324e-006, -1.0555099e-009, 8.65192851e-006, 1.00001156, 6.67146651e-007, 1.06459686e-009, -6.66510914e-007, 0.999999285))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.69599998, 0.232000008, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000980377197, -0.756362438, 2.21014261, 1.00001216, 0.00168377184, -1.39758196e-008, -0.00168378383, 1.00001025, 2.10831458e-005, 4.94904349e-008, -2.10827075e-005, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.231999993, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000228881836, -1.85836792, 2.37173796, -1.00001347, 0.000378501718, 1.62424982e-007, 0.000378494151, 1.00001156, 4.46612976e-005, -1.45538479e-007, 4.46612685e-005, -0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(1.62399995, 0.927999794, 0.928000033))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.1039381, 1.63024521, -0.0039024353, -0.00172031764, 1.00001013, 1.46122475e-005, -5.72987631e-007, -1.46127904e-005, 0.999999285, 1.00001204, 0.00172030565, 5.98132715e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2.9000001, 0.232000038, 0.232000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.2558732, -0.755105019, -0.005027771, 1.16550927e-006, 2.32517414e-005, -0.999999046, -0.00235130615, 1.00001335, 2.32494094e-005, 1.00001562, 0.00235129381, 1.22017377e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.812000036, 0.34799999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000499725342, -0.000572681427, -0.399878502, 1.00001347, -3.89991328e-009, -1.60411329e-009, -4.71482053e-009, 1.00001156, 9.86925897e-007, 1.61898139e-009, -9.86294253e-007, 0.999999285))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.463999987, 0.69599998, 0.231999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000854492188, -0.060251236, -0.689863205, 1.00000679, 9.31904651e-008, -2.52386245e-009, -9.7497832e-008, 1.00000584, 1.58413877e-006, 2.53151944e-009, -1.58382682e-006, 0.999999642))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.69599998, 0.34799999, 0.34799996))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000202178955, -0.698717594, -0.863790989, 1.00001359, -9.37085133e-007, -4.30265912e-009, 9.28586815e-007, 1.00001168, 2.73720707e-006, 4.31539515e-009, -2.73659361e-006, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.232000008, 0.200000003, 0.59740001))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0118713379, 0.117973328, 1.22682953, 1.00001204, 0.00170348049, -1.86220968e-005, -0.00170349213, 1.00001013, 1.60979762e-005, 1.86497764e-005, -1.60657855e-005, 0.999999285))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.170646667, -2.20620346, -4.11187887, 1.00001299, 0.00135321938, 4.18644504e-007, -0.00135323033, 1.00001109, 2.83407667e-006, -4.147997e-007, -2.83402255e-006, 0.999999285))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.579999983, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.34800005, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.12456751, -0.434249878, -2.04071569, -0.00161815656, 2.28647568e-005, 0.999998331, 1.00000501, -0.000935775577, 0.00161816564, 0.000935807999, 1.00000536, -2.13500443e-005))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 0.579999983))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(2.31999993, 0.231999993, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.27036333, -1.68534136, 0.286766052, 4.37200288e-006, -0.00031248352, -0.999999225, -0.00104415184, 1.00001121, -0.000312483375, 1.00001323, 0.00104414311, 4.04568164e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.579999983))
Barrel=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Barrel",Vector3.new(0.695999742, 0.200000003, 0.928000033))
Barrelweld=weld(m,handle,Barrel,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09376717, 3.31707621, -0.00493240356, -0.00171980122, 1.00000441, 1.36221133e-005, -5.93967741e-007, -1.36229164e-005, 0.999999642, 1.00000536, 0.00171979528, 6.1739911e-007))
mesh("CylinderMesh",Barrel,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.579999983, 1))

LASER_WIDTH = 5
LASER_MAGIC_CIRCLE_DISTANCE = 6.25
laser_data = {}

player=game.Players.localPlayer
char=player.Character
active=false

math = {
abs = math.abs,
acos = math.acos,
asin = math.asin,
atan = math.atan,
atan2 = math.atan2,
ceil = math.ceil,
cos = math.cos,
cosh = math.cosh,
deg = math.deg,
exp = math.exp,
floor = math.floor,
fmod = math.fmod,
frexp = math.frexp,
huge = math.huge,
ldexp = math.ldexp,
log = math.log,
log10 = math.log10,
max = math.max,
min = math.min,
modf = math.modf,
phi = 1.618033988749895,
pi = math.pi,
pow = math.pow,
rad = math.rad,
random = math.random,
randomseed = math.randomseed,
sin = math.sin,
sinh = math.sinh,
sqrt = math.sqrt,
tan = math.tan,
tanh = math.tanh,
tau = 2 * math.pi
}
magicCircleData = {}
MAGIC_CIRCLE_DEFAULT_OFFSET = 6.25
function AnimateMagicCircle(data)
    local frame, direction, magic_circle_model, magic_circle_part, magic_circle_light, magic_circle_decal_back, magic_circle_decal_front, duration, 

stay, magic_circle_adornee_func, magic_circle_offset = unpack(data)
    frame = frame + 1
    data[1] = frame
    local transparency = (frame / duration) ^ stay
    local opacity = 1 - transparency
    if frame == duration then
        pcall(game.Destroy, magic_circle_model)
        magicCircleData[data] = nil
    else
        if magic_circle_model.Parent ~= workspace then
            magic_circle_model.Parent=workspace
        end
        local magic_circle_adornee = magic_circle_adornee_func()
        magic_circle_position = magic_circle_adornee.Position + direction * magic_circle_offset
        local magic_circle_cframe = CFrame.new(magic_circle_position, magic_circle_position + direction) * CFrame.Angles(0, 0, math.tau * frame / 

25)
        magic_circle_part.CFrame = magic_circle_cframe
        magic_circle_light.Brightness = opacity
        magic_circle_decal_back.Transparency = transparency
        magic_circle_decal_front.Transparency = transparency
    end
end
function CreateMagicCircle(target, magic_circle_scale, magic_circle_image, light_color, duration, stay, magic_circle_adornee_func, 

magic_circle_offset)
    local magic_circle_adornee = magic_circle_adornee_func()
    if magic_circle_adornee then
        local origin = magic_circle_adornee.Position
        local direction = (target - origin).unit
        local magic_circle_position = origin + direction * magic_circle_offset
        local magic_circle_cframe = CFrame.new(magic_circle_position, magic_circle_position + direction)
        local magic_circle_model = Instance.new("Model")
        local magic_circle_part = Instance.new("Part", magic_circle_model)
        local magic_circle_mesh = Instance.new("BlockMesh", magic_circle_part)
        local magic_circle_light = Instance.new("PointLight", magic_circle_part)
        local magic_circle_decal_back = Instance.new("Decal", magic_circle_part)
        local magic_circle_decal_front = Instance.new("Decal", magic_circle_part)
        magic_circle_model.Archivable = false
        magic_circle_part.Anchored = true
        magic_circle_part.BottomSurface = "Smooth"
        magic_circle_part.CanCollide = false
        magic_circle_part.CFrame = magic_circle_cframe
        magic_circle_part.FormFactor = "Custom"
        magic_circle_part.Locked = true
        magic_circle_part.Size = Vector3.new(0.2, 0.2, 0.2)
        magic_circle_part.TopSurface = "Smooth"
        magic_circle_part.Transparency = 1
        magic_circle_mesh.Scale = Vector3.new(60, 60, 0) * magic_circle_scale
        magic_circle_light.Color = light_color
        magic_circle_light.Range = 16 * magic_circle_scale
        magic_circle_light.Shadows = true
        magic_circle_decal_back.Face = "Back"
        magic_circle_decal_back.Texture = magic_circle_image
        magic_circle_decal_front.Face = "Front"
        magic_circle_decal_front.Texture = magic_circle_image
        magic_circle_model.Parent = workspace
        local data = {0, direction, magic_circle_model, magic_circle_part, magic_circle_light, magic_circle_decal_back, magic_circle_decal_front, 

duration, stay, magic_circle_adornee_func, magic_circle_offset}
        magicCircleData[data] = true
        return data
    end
end

--GraphicalEffects.fragmentation = {}
function AnimateLaserOfDeath(data)
    local frame, directionOrientation, direction, magic_circle_model, laser_part, laser_mesh, magic_circle_part, magic_circle_light, 

magic_circle_decal_back, magic_circle_decal_front, sound, laser_scale, fragmentation_size, duration, laser_lights, laser_effects, stay, light_effects = 

unpack(data)
    local laser_color = laser_part.Color
    frame = frame + 1
    data[1] = frame
    local transparency = (frame / duration) ^ stay
    local opacity = 1 - transparency
    if frame == 2 then
        sound:Play()
    end
    if frame == duration then
        pcall(game.Destroy, magic_circle_model)
        laser_data[data] = nil
    else
        if magic_circle_model.Parent ~= workspace then
            magic_circle_model.Parent=workspace
        end
        local laser_distance = 0
        local origin = Barrel.CFrame
        if not light_effects then
            direction = (origin * directionOrientation - origin.p).unit
        end
        local magic_circle_position = origin.p + direction * LASER_MAGIC_CIRCLE_DISTANCE
        local magic_circle_cframe = CFrame.new(magic_circle_position, magic_circle_position + direction) * CFrame.Angles(0, 0, math.tau * frame / 

25)
        local loop_scale = (laser_scale - 1) / 10
        for x_offset = -loop_scale, loop_scale, 2 do
            for y_offset = -loop_scale, loop_scale, 2 do
                local origin_position = magic_circle_cframe * Vector3.new(x_offset, y_offset, 0)
                for index = 1, 8 do
                    local part, position
                    for ray_index = 1, 10 do
                        local ray = Ray.new(origin_position + direction * (999 * (ray_index - 1)), direction * 999)
                        part, position = workspace:FindPartOnRay(ray, magic_circle_model)
                        if part then
                            break
                        end
                    end
                    if part then
                        laser_distance = (position - origin_position).magnitude
                        if frame % 8 == 1 and index == 1 then
                            Instance.new("Explosion", workspace).Position = position
                        end
                        if not part:IsA("Terrain") then
                            pcall(part.BreakJoints, part)
                            local is_block = part:IsA("Part") and part.Shape == Enum.PartType.Block
                            local mass = part:GetMass()
                            local size = part.Size
                            if (is_block and ((size.X < fragmentation_size and size.Y < fragmentation_size and size.Z < 

fragmentation_size) or (not part.Anchored and mass < 750))) or (not is_block and mass < 250000) then
                                local part_transparency = math.max(part.Transparency + 0.007 * fragmentation_size, 0.5)
                                if part_transparency >= 0.5 then -- temporarily to minimize debris
                                    pcall(game.Destroy, part)
                                else
                                    local cframe = part.CFrame
                                    part.Anchored = false
                                    part.BrickColor = BrickColor.new("Medium stone grey")
                                    part.CanCollide = true
                                    if part:IsA("FormFactorPart") then
                                        part.FormFactor = "Custom"
                                    end
                                    part.Size = size - Vector3.new(0.135, 0.135, 0.135) * fragmentation_size
                                    part.Transparency = part_transparency
                                    part.CFrame = cframe + direction * 5
                                    part.Velocity = part.Velocity + direction * 40
                                end
                            elseif is_block then
                                local parts = {part}
                                local model = Instance.new("Model", part.Parent)
                                model.Name = "Fragments"
                                if size.X >= fragmentation_size then
                                    size = Vector3.new(0.5, 1, 1) * size
                                    local archivable = part.Archivable
                                    local cframe = part.CFrame
                                    part.FormFactor = "Custom"
                                    part.Size = size
                                    part.Archivable = true
                                    local part_clone = part:Clone()
                                    part.Archivable = archivable
                                    part_clone.Archivable = archivable
                                    part.CFrame = cframe * CFrame.new(-0.5 * size.X, 0, 0)
                                    part_clone.CFrame = cframe * CFrame.new(0.5 * size.X, 0, 0)
                                    part_clone.Parent = model
                                    parts[2] = part_clone
                                end
                                if size.Y >= fragmentation_size then
                                    size = Vector3.new(1, 0.5, 1) * size
                                    for part_index = 1, #parts do
                                        local part = parts[part_index]
                                        local archivable = part.Archivable
                                        local cframe = part.CFrame
                                        part.FormFactor = "Custom"
                                        part.Size = size
                                        part.Archivable = true
                                        local part_clone = part:Clone()
                                        part.Archivable = archivable
                                        part_clone.Archivable = archivable
                                        part.CFrame = cframe * CFrame.new(0, -0.5 * size.Y, 0)
                                        part_clone.CFrame = cframe * CFrame.new(0, 0.5 * size.Y, 0)
                                        part_clone.Parent = model
                                        table.insert(parts, part_clone)
                                    end
                                end
                                if size.Z >= fragmentation_size then
                                    size = Vector3.new(1, 1, 0.5) * size
                                    for part_index = 1, #parts do
                                        local part = parts[part_index]
                                        local archivable = part.Archivable
                                        local cframe = part.CFrame
                                        part.FormFactor = "Custom"
                                        part.Size = size
                                        part.Archivable = true
                                        local part_clone = part:Clone()
                                        part.Archivable = archivable
                                        part_clone.Archivable = archivable
                                        part.CFrame = cframe * CFrame.new(0, 0, -0.5 * size.Z)
                                        part_clone.CFrame = cframe * CFrame.new(0, 0, 0.5 * size.Z)
                                        part_clone.Parent = model
                                        table.insert(parts, part_clone)
                                    end
                                end
                                for _, part in ipairs(parts) do
                                    part:MakeJoints()
                                end
                            else
                                break
                            end
                        end
                    else
                        laser_distance = 9990
                        break
                    end
                end
            end
        end
        local laser_cframe = magic_circle_cframe * CFrame.Angles(-0.5 * math.pi, 0, 0)
        local laser_width = LASER_WIDTH * opacity * laser_scale
        local laser_mesh_offset = Vector3.new(0, 0.5 * laser_distance, 0)    
        laser_part.CFrame = laser_cframe
        if laser_effects then
            local laser_effect_data_1, laser_effect_data_2 = laser_effects[1], laser_effects[2]
            local laser_effect_1, laser_effect_mesh_1 = laser_effect_data_1[1], laser_effect_data_1[2]
            local laser_effect_2, laser_effect_mesh_2 = laser_effect_data_2[1], laser_effect_data_2[2]
            laser_effect_1.CFrame = laser_cframe
            laser_effect_2.CFrame = laser_cframe
            laser_effect_mesh_1.Offset = laser_mesh_offset
            laser_effect_mesh_2.Offset = laser_mesh_offset
            local game_time = time()
            local effect_scale_1 = 0.5 + 0.5 * math.sin(16 * math.pi * game_time)
            local effect_scale_2 = 0.5 + 0.5 * math.cos(16 * math.pi * game_time)
            laser_effect_mesh_1.Scale = 5 * Vector3.new(laser_width * effect_scale_1, laser_distance, laser_width * effect_scale_1)
            laser_effect_mesh_2.Scale = 5 * Vector3.new(laser_width * effect_scale_2, laser_distance, laser_width * effect_scale_2)
            laser_width = laser_width * 0.25
        end
        laser_mesh.Offset = laser_mesh_offset            
        laser_mesh.Scale = 5 * Vector3.new(laser_width, laser_distance, laser_width)
        magic_circle_part.CFrame = magic_circle_cframe
        magic_circle_light.Brightness = opacity
        magic_circle_decal_back.Transparency = transparency
        magic_circle_decal_front.Transparency = transparency
        if light_effects then
            for index, data in ipairs(laser_lights) do
                local laser_spotlight_part, laser_spotlight = data[1], data[2]
                local laser_spotlight_offset = 30 * (index - 1)
                if laser_spotlight_offset <= laser_distance then
                    laser_spotlight_part.CFrame = magic_circle_cframe * CFrame.new(0, 0, -laser_spotlight_offset)
                    laser_spotlight.Brightness = opacity
                    laser_spotlight.Enabled = true
                else
                    laser_spotlight.Enabled = false
                end
            end
        end
    end
end
function ShootLaserOfDeath(target, data)
        data = data or {}
        local brickcolor = data.brickcolor or BrickColor.new("Really black")
        local duration = data.duration or 40
        local fragmentation_size = data.fragmentation_size or 3
        local laser_scale = data.laser_scale or 1
        local light_color = data.light_color or Color3.new(1, 0.5, 1)
        local magic_circle_image = data.magic_circle_image or "rbxassetid://122610943"
        local magic_circle_scale = data.magic_circle_scale or 1
        local sound_volume = data.sound_volume or 1 / 3
        local special_effects = data.special_effects
        local stay = data.stay or 4
        local origin = Barrel.CFrame
        local directionOrientation = origin:pointToObjectSpace(target)
        local direction = (target - origin.p).unit
        local magic_circle_position = origin.p + direction * LASER_MAGIC_CIRCLE_DISTANCE
        local magic_circle_cframe = CFrame.new(magic_circle_position, magic_circle_position + direction)
        local magic_circle_model = Instance.new("Model")
        local laser_part = Instance.new("Part", magic_circle_model)
        local laser_mesh = Instance.new("CylinderMesh", laser_part)
        local magic_circle_part = Instance.new("Part", magic_circle_model)
        local magic_circle_mesh = Instance.new("BlockMesh", magic_circle_part)
        local magic_circle_light = Instance.new("PointLight", magic_circle_part)
        local magic_circle_decal_back = Instance.new("Decal", magic_circle_part)
        local magic_circle_decal_front = Instance.new("Decal", magic_circle_part)
        local sound = Instance.new("Sound", magic_circle_part)
        sound.Pitch = 0.9
        sound.SoundId = "rbxassetid://222371404"
        sound.Volume = 1
        magic_circle_model.Archivable = false
        laser_part.Anchored = true
        laser_part.BottomSurface = "Smooth"
        laser_part.BrickColor = brickcolor
        laser_part.CanCollide = false
        laser_part.CFrame = magic_circle_cframe * CFrame.Angles(-0.5 * math.pi, 0, 0)
        laser_part.FormFactor = "Custom"
        laser_part.Locked = true
        laser_part.Size = Vector3.new(0.2, 0.2, 0.2)
        laser_part.TopSurface = "Smooth"
        laser_mesh.Offset = Vector3.new(0, 0, 0)
        laser_mesh.Name = "Mesh"
        laser_mesh.Scale = 5 * laser_scale * Vector3.new(LASER_WIDTH, 0, LASER_WIDTH)
        magic_circle_part.Anchored = true
        magic_circle_part.BottomSurface = "Smooth"
        magic_circle_part.CanCollide = false
        magic_circle_part.CFrame = magic_circle_cframe
        magic_circle_part.FormFactor = "Custom"
        magic_circle_part.Locked = true
        magic_circle_part.Size = Vector3.new(0.2, 0.2, 0.2)
        magic_circle_part.TopSurface = "Smooth"
        magic_circle_part.Transparency = 1
        magic_circle_mesh.Scale = Vector3.new(60, 60, 0) * magic_circle_scale
        magic_circle_light.Color = light_color
        magic_circle_light.Range = 16 * magic_circle_scale
        magic_circle_light.Shadows = true
        magic_circle_decal_back.Face = "Back"
        magic_circle_decal_back.Texture = magic_circle_image
        magic_circle_decal_front.Face = "Front"
        magic_circle_decal_front.Texture = magic_circle_image
        magic_circle_model.Parent = workspace
        local laser_color = brickcolor.Color
        local laser_lights = {}
        local light_effects = laser_color.r + laser_color.g + laser_color.b > 0.25
        if light_effects then
            local laser_spotlight_part_template = Instance.new("Part")
            local laser_spotlight_light_template = Instance.new("SpotLight", laser_spotlight_part_template)
            laser_spotlight_part_template.Anchored = true
            laser_spotlight_part_template.Anchored = true
            laser_spotlight_part_template.BottomSurface = "Smooth"
            laser_spotlight_part_template.CanCollide = false
            laser_spotlight_part_template.FormFactor = "Custom"
            laser_spotlight_part_template.Locked = true
            laser_spotlight_part_template.Size = Vector3.new(0.2, 0.2, 0.2)
            laser_spotlight_part_template.TopSurface = "Smooth"
            laser_spotlight_part_template.Transparency = 1
            laser_spotlight_light_template.Angle = 45
            laser_spotlight_light_template.Color = laser_color
            laser_spotlight_light_template.Enabled = true
            laser_spotlight_light_template.Name = "Light"
            laser_spotlight_light_template.Range = 60
            for index = 1, 40 do
                local laser_spotlight_part = laser_spotlight_part_template:Clone()
                laser_spotlight_part.CFrame = magic_circle_cframe * CFrame.new(0, 0, -30 * (index - 1))
                laser_spotlight_part.Parent = magic_circle_model
                laser_lights[index] = {laser_spotlight_part, laser_spotlight_part.Light}
            end
        end
        local laser_effects
        if special_effects then
            laser_effects = {}
            local laser_effect_1 = laser_part:Clone()
            laser_effect_1.BrickColor = special_effects
            laser_effect_1.Transparency = 0.5
            local laser_effect_2 = laser_effect_1:Clone()
            laser_effects[1], laser_effects[2] = {laser_effect_1, laser_effect_1.Mesh}, {laser_effect_2, laser_effect_2.Mesh}
            laser_effect_1.Parent = magic_circle_model
            laser_effect_2.Parent = magic_circle_model
        end
        laser_data={0, directionOrientation, direction, magic_circle_model, laser_part, laser_mesh, magic_circle_part, 

magic_circle_light, magic_circle_decal_back, magic_circle_decal_front, sound, laser_scale, fragmentation_size, duration, laser_lights, laser_effects, stay, 

light_effects}
    end

function laser(target)
ShootLaserOfDeath(target, {brickcolor = BrickColor.new("New Yeller"), duration = 20, fragmentation_size = 10, 

laser_scale = 3, light_color = Color3.new(1, 0.5, 0), magic_circle_image = "rbxassetid://1", magic_circle_scale = 1.5, sound_volume = 1, 

special_effects = BrickColor.new("Deep orange"), stay = 2})
end

function LaserAtMouse()
    laser(mouse.Hit.p)
end

mouse.Button1Down:connect(function()
        pcall(function()
                shoot()
        end)
end)

ready=false

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
elseif k=='q' and attack==false then
		Melee()
        end
end)

function Melee()
        attack = true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,50,100,math.random(10,15),"Normal",RootPart,.2,1) end) 
 for i=0,3,0.3 do
                        swait()
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(5),math.rad(25),math.rad(-20)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(160),math.rad(0),math.rad(0)),.3)

                end
 so("http://www.roblox.com/asset/?id=200632136",Hitbox,1,0.8) 
                for i=0,3,0.3 do
                        swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-150),math.rad(0),math.rad(0)),.3)
                end
                attack=false
con1:disconnect()
        end

function shoot()
        if attack==true and ready==true then
                ready=false
                attack=true
                LaserAtMouse()
                for i=0,3,0.3 do
                        swait()
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(120),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-0,0.5,-.7)*angles(math.rad(180),math.rad(0),math.rad(40)),.3)
Torso.Velocity=Head.CFrame.lookVector*-100
                end
                attack=false
        end
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
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(60),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-0,0.5,-.7)*angles(math.rad(120),math.rad(0),math.rad(40)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(60),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-0,0.5,-.7)*angles(math.rad(120),math.rad(0),math.rad(40)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(60),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-0,0.5,-.7)*angles(math.rad(120),math.rad(0),math.rad(40)),.3)
if attack==false then
end
end
end
if ready==true then
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-0,0.5,-.7)*angles(math.rad(160),math.rad(0),math.rad(40)),.3)
        end
        pcall(function()
                AnimateLaserOfDeath(laser_data)
        end)
end


end}
module[4] = {"RedCliff Knight",function()

Me = game.Players.LocalPlayer
Char = Me.Character
Selected = false
Attack = 1
Attacking = false
Hurt = false
Deb = true
Effect = false
DMG = 35
BlockAnim = false
Rotation = 0
RotationOn = false

CamStyles = {"Attach", "Custom", "Fixed", "Follow"}
Where = 2
Style = CamStyles[Where]

Asset = "http://www.roblox.com/asset/?id="

CA = CFrame.Angles
CN = CFrame.new
V3 = Vector3.new
MR = math.rad
MP = math.pi
MRA = math.random
MH = math.huge

Add = {
	Mesh = function(P, Id, Id2, scale)
		local m = Instance.new("SpecialMesh", P)
		m.Scale = scale
		m.MeshId = Id
		m.TextureId = Id2
	end
}

Sounds = {
	Hit = {"http://www.roblox.com/asset/?id=10209590", 0.8, 1},
	Block = {"rbxasset://sounds\\metal.ogg", 1.3, 1},
	Slash = {"rbxasset://sounds\\swordslash.wav", 1.6, 1},
}

Meshes = {
	Coif = {Asset..(52238093), Asset..(33364735)},
	Torso = {Asset..(33309581), Asset..(33308631)},
	Rarm = {Asset..(33309581), Asset..(33308774)},
	Larm = {Asset..(33309581), Asset..(33308496)},
	Rleg = {Asset..(33309581), Asset..(33308827)}, 
	Lleg = {Asset..(33309581), Asset..(33308564)},
	Sword = {Asset..(49754754), Asset..(49754655)},
	Shield = {Asset..(49759449), Asset..(49757732)},
}

function waitChild(p, n)
	local child = p:findFirstChild(n)
	if child then return child end
	while true do
		child = p.ChildAdded:wait()
		if child.Name == n then return child end
	end
end

function Part(P, Anch, Coll, Tran, Ref, Col, Size)
	local p = Instance.new("Part")
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Transparency = Tran
	p.Reflectance = Ref
	p.CanCollide = Coll
	p.Anchored = Anch
	p.BrickColor = BrickColor.new(Col)
	p.formFactor = "Custom"
	p.Size = Size
	p.Parent = P
	p.Locked = true
	p:BreakJoints()
	return p
end

function Weld(P0, P1, C0, C1)
	local w = Instance.new("Weld")
	w.Part0 = P0
	w.Part1 = P1
	w.C0 = C0
	w.C1 = C1
	w.Parent = P0
	return w
end

for i,v in pairs(Char:children()) do
	if v.Name == "Icy" then v:remove() end 
end

Mod = Instance.new("Model")
Mod.Name = "Icy"

Rarm = waitChild(Char, "Right Arm")
Larm = waitChild(Char, "Left Arm")
Rleg = waitChild(Char, "Right Leg")
Lleg = waitChild(Char, "Left Leg")
Torso = waitChild(Char, "Torso")
Hum = waitChild(Char, "Humanoid")
Neck = waitChild(Torso, "Neck")

RH = waitChild(Torso, "Right Hip")
LH = waitChild(Torso, "Left Hip")

function Play(Sound)
	local s = Instance.new("Sound")
	s.SoundId = Sound[1]
	s.Pitch = Sound[2]
	s.Volume = Sound[3]
	s.PlayOnRemove = true
	s.Parent = Torso
	game.Debris:AddItem(s, 0.0001)
end

for _,v in pairs(Char:children()) do
	if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("Hat") or v:IsA("CharacterMesh") or v:IsA("BodyColors") then
		v:remove()
	elseif v:IsA("BoolValue") and v.Name == "Block" then
		v:remove()
	end
end

for _,v in pairs(Torso:children()) do
	if v:IsA("Decal") or v:IsA("Texture") then v:remove() end
end

CamBlock = Part(Mod, true, false, 1, 0, "White", V3(0.4, 0.4, 0.4))
Cam = workspace.CurrentCamera

local Blocking = Instance.new("BoolValue")
Blocking.Value = false
Blocking.Name = "Block"
Blocking.Parent = Char

Torso.Transparency = 1

Faketorso = Part(Mod, false, false, 0, 0, Torso.BrickColor.Name, V3(1.98, 1.98, 0.98))
FW = Weld(Torso, Faketorso, CN(), CN())

Hat = Instance.new("Hat", Char)
Hat.Name = "Epoc."

HatHandle = Part(Hat, false, false, 0, 0, "White", V3(1.5, 1.8, 1.4))
HatHandle.Name = "Handle"
Hat.AttachmentPos = V3(0, 0.3, 0.1)
Add.Mesh(HatHandle, Meshes.Coif[2], Meshes.Coif[1], V3(1.1,1.1,1.1))

for _,v in pairs({{Rarm, Meshes.Rarm}, {Larm, Meshes.Larm}, {Rleg, Meshes.Rleg}, {Lleg, Meshes.Lleg}, {Faketorso, Meshes.Torso}}) do
	for _,v in pairs(v[1]:children()) do
		if v:IsA("SpecialMesh") then
			v:remove()
		end
	end
	local mes = Add.Mesh(v[1], v[2][2], v[2][1], V3(1,1,1))
end

Sword = Part(Mod, false, false, 0, 0, "White", V3(0.8, 0.4, 4.5))
Add.Mesh(Sword, Meshes.Sword[2], Meshes.Sword[1], V3(2.1, 2.5, 2.15))

Shield = Part(Mod, false, false, 0, 0, "White", V3(2.3, 0.6, 3))
Add.Mesh(Shield, Meshes.Shield[2], Meshes.Shield[1], V3(1.5, 1.6, 1.3))

RABrick = Part(Mod, false, false, 1, 0, "White", V3(0.1, 0.1, 0.1))
LABrick = Part(Mod, false, false, 1, 0, "White", V3(0.1, 0.1, 0.1))
RLBrick = Part(Mod, false, false, 1, 0, "White", V3(0.1, 0.1, 0.1))
LLBrick = Part(Mod, false, false, 1, 0, "White", V3(0.1, 0.1, 0.1))

RABW = Weld(Torso, RABrick, CN(), CN(-1.5, -0.5, 0))
LABW = Weld(Torso, LABrick, CN(), CN(1.5, -0.5, 0))
RLBW = Weld(Torso, RLBrick, CN(), CN(-0.5, 1.2, 0))
LLBW = Weld(Torso, LLBrick, CN(), CN(0.5, 1.2, 0))

function Atch(p)
	RABW.Part0 = p
	LABW.Part0 = p
	RLBW.Part0 = p
	LLBW.Part0 = p
	RH.Part0 = p
	LH.Part0 = p
end

RAW = Weld(RABrick, nil, CN(), CN(0, 0.5, 0))
LAW = Weld(LABrick, nil, CN(), CN(0, 0.5, 0))
RLW = Weld(RLBrick, nil, CN(), CN(0, 0.8, 0))
LLW = Weld(LLBrick, nil, CN(), CN(0, 0.8, 0))

HB = Part(Mod, false, false, 1, 0, "White", V3(0.1, 0.1, 0.1))
HBW = Weld(Rarm, HB, CN(0, -1, 0), CN())
HW = Weld(HB, nil, CN(), CN(0, 0, -2) * CA(MP, 0, MR(90)))

SW = Weld(Larm, Shield, CA(MR(-90), 0, MR(90)), CN(0, 0.4, 0.2) * CA(MR(160), 0, 0))
TW = Weld(Torso, Sword, CA(MR(90), MR(-40), 0), CN(0, -0.7, 0))

function Normal()
	SW.C1 = CN(0, 0.4, 0.2) * CA(MR(160), 0, 0)
	HW.C0 = CN()
	RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(70), MR(40), MR(-30))
	LAW.C0 = CN(0.3, 0, -0.5) * CA(MR(45), MR(-35), MR(20))
	HW.C1 = CN(0, 0, -2) * CA(MP, 0, MR(-90))
	FW.C0 = CN()
end

Mod.Parent = Char

if script.Parent.className ~= "HopperBin" then
	h = Instance.new("HopperBin",Me.Backpack)
	h.Name = "Redcliff"
	script.Parent = h
end

Bin = h

function getStat(c)
	local blo = false
	local h
	for _,v in pairs(c:children()) do
		if v:IsA("Humanoid") then
			if v.Health > 0 then
				h = v
			end
		elseif v:IsA("BoolValue") then
			if v.Name == "Block" then
				blo = v.Value
			end
		end
	end
	return h, blo
end

function Damage(h, dmg)
	h.Health = h.Health - dmg
end

function SwordDmg(hit)
	local h, b = getStat(hit.Parent)
	if h then
		if Hurt and Deb and b == false then
			Damage(h, MRA(50000+(DMG/1000000), DMG+100000000))
			Play(Sounds.Hit)
		elseif Hurt and Deb and b then
			Play(Sounds.Block)
		end
		Deb = false
	end
end

Sword.Touched:connect(SwordDmg)

function SE(part, cf)
	coroutine.resume(coroutine.create(function()
		Effect = true
		local lastP = (part.CFrame * cf).p
		while Effect do
			wait()
			local p = Part(Mod, true, false, 0, 0, "Neon orange", V3(0.2, 0.2, 0.2))
			local posnow = (part.CFrame * cf).p
			local magn = (lastP - posnow).magnitude
			local cc = CN(lastP, posnow) * CA(MR(-90), 0, 0) * CN(0, magn/2, 0)
			local m = Instance.new("SpecialMesh", p)
			m.MeshType = "Head"
			m.Scale = V3(0.9, magn*5+0.45, 0.9)
			p.CFrame = cc
			coroutine.resume(coroutine.create(function()
				for i = 0, 1, 0.15 do
					wait()
					m.Scale = V3(0.9-0.9*i, magn*5+0.45-0.45*i, 0.9-0.9*i)
					p.Transparency = -0.2+1.2*i
				end
				p:remove()
			end))
			lastP = (part.CFrame * cf).p
		end
	end))
end

function EE()
	Effect = false
end

function SetAtk(S, E)
	coroutine.resume(coroutine.create(function()
		Attack = E
		wait(0.25)
		Attack = S
	end))
end

Combo = {
	function()
		Attack = 1
		Atch(Faketorso)
		Attacking = true
		for i = 0.15, 1, 0.15 do
			FW.C0 = CA(0, MR(-35*i), 0)
			RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(70+90*i), MR(40-20*i), MR(-30+30*i))
			HW.C0 = CA(MR(20*i), 0, MR(-10*i))
			LAW.C0 = CN(0.3, 0, -0.5) * CA(MR(45+10*i), MR(-35+20*i), MR(20))
			wait()
		end
		Play(Sounds.Slash)
		for i = 0.33, 1, 0.33 do
			FW.C0 = CA(0, MR(-35-10*i), 0)
			RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(160+10*i), MR(20-5*i), MR(10*i))
			HW.C0 = CA(MR(20+5*i), 0, MR(-10))
			LAW.C0 = CN(0.3, 0, -0.5) * CA(MR(55+5*i), MR(-15+5*i), MR(20))
			wait()
		end
		SE(Sword, CN(0, 0, 2.2))
		Hurt = true
		Deb = true
		for i = 0.16, 1, 0.16 do
			FW.C0 = CA(0, MR(-45+60*i), 0)
			RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(170-140*i), MR(15+10*i), MR(10-20*i))
			HW.C0 = CA(MR(25-75*i), 0, MR(-10))
			LAW.C0 = CN(0.3, 0, -0.5+0.8*i) * CA(MR(60-90*i), MR(-10+20*i), MR(20-30*i))
			wait()
		end
		Hurt = false
		for i = 0.25, 1, 0.25 do
			FW.C0 = CA(0, MR(15+10*i), 0)
			RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(30-10*i), MR(25+5*i), MR(-10-5*i))
			HW.C0 = CA(MR(-50-5*i), 0, MR(-10))
			LAW.C0 = CN(0.3, 0, 0.3+0.1*i) * CA(MR(-30-10*i), MR(10+5*i), MR(-10-5*i))
			wait()
		end
		EE()
		SetAtk(1, 2)
		Attacking = false
		wait(0.08)
		for i = 0.2, 1, 0.2 do
			if Attacking then return end
			FW.C0 = CA(0, MR(25-25*i), 0)
			RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(20+40*i), MR(30+8*i), MR(-15-10*i))
			HW.C0 = CA(MR(-55+45*i), 0, MR(-10+10*i))
			LAW.C0 = CN(0.3, 0, 0.4-0.8*i) * CA(MR(-40+75*i), MR(15-45*i), MR(-15+30*i))
			wait()
		end
		for i = 0.33, 1, 0.33 do
			if Attacking then return end
			FW.C0 = CA(0, 0, 0)
			RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(60+10*i), MR(38+2*i), MR(-25-5*i))
			HW.C0 = CA(MR(-10+10*i), 0, 0)
			LAW.C0 = CN(0.3, 0, -0.4-0.1*i) * CA(MR(35+10*i), MR(-30-5*i), MR(15+5*i))
			wait()
		end
		Attack = 1
		Attacking = false
		FW.C0 = CN()
		RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(70), MR(40), MR(-30))
		HW.C0 = CN()
		Atch(Torso)
	end,
	function()
		Attack = 2
		Attacking = true
		for i = 0.1, 1, 0.1 do
			FW.C0 = CA(0, MR(25+15*i), 0)
			RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(20+65*i), MR(30-30*i), MR(-15-35*i))
			LAW.C0 = CN(0.3+0.3*i, 0, 0.2) * CA(MR(-40-10*i), MR(15), MR(-15))
			HW.C0 = CA(MR(-55+45*i), MR(80*i), MR(-10+10*i))
			wait()
		end
		Play(Sounds.Slash)
		for i = 0.25, 1, 0.25 do
			FW.C0 = CA(0, MR(40+5*i), 0)
			RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(85+5*i), 0, MR(-50-5*i))
			LAW.C0 = CN(0.6, 0, 0.2) * CA(MR(-50-5*i), MR(15), MR(-15))
			HW.C0 = CA(MR(-10+10*i), MR(80+10*i), 0)
			wait()
		end
		SE(Sword, CN(0, 0, 2.2))
		Hurt = true
		Deb = true
		for i = 0.16, 1, 0.16 do
			FW.C0 = CA(0, MR(45-80*i), 0)
			RAW.C0 = CN(-0.3+0.3*i, 0.2, -0.4) * CA(MR(90), 0, MR(-55+95*i))
			LAW.C0 = CN(0.6-0.3*i, 0, 0.2-0.8*i) * CA(MR(-55+130*i), MR(15-15*i), MR(-15+50*i))
			HW.C0 = CA(0, MR(90), 0)
			HW.C1 = CN(0, 0, -2) * CA(MP, MR(-40*i), MR(-90))
			wait()
		end
		Hurt = false
		for i = 0.25, 1, 0.25 do
			FW.C0 = CA(0, MR(-35-10*i), 0)
			RAW.C0 = CN(0.1*i, 0.2, -0.4) * CA(MR(90), 0, MR(40+10*i))
			LAW.C0 = CN(0.3, 0, -0.6+0.1*i) * CA(MR(75+10*i), 0, MR(35+10*i))
			HW.C0 = CA(0, MR(90), 0)
			HW.C1 = CN(0, 0, -2) * CA(MP, MR(-40-5*i), MR(-90))
			wait()
		end
		EE()
		SetAtk(1, 3)
		Attacking = false
		wait(0.08)
		for i = 0.16, 1, 0.16 do
			if Attacking then return end
			FW.C0 = CA(0, MR(-45+35*i), 0)
			RAW.C0 = CN(0.1-0.4*i, 0.2, -0.4) * CA(MR(90-15*i), MR(35*i), MR(50-70*i))
			LAW.C0 = CN(0.3, 0, -0.6+0.1*i) * CA(MR(85-30*i), MR(-30*i), MR(45-20*i))
			HW.C0 = CA(0, MR(90-80*i), 0)
			HW.C1 = CN(0, 0, -2) * CA(MP, MR(-45+40*i), MR(-90))
			wait()
		end
		for i = 0.25, 1, 0.25 do
			if Attacking then return end
			FW.C0 = CA(0, MR(-10+10*i), 0)
			RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(75-5*i), MR(35+5*i), MR(-20-10*i))
			LAW.C0 = CN(0.3, 0, -0.6+0.1*i) * CA(MR(55-10*i), MR(-30-5*i), MR(25-5*i))
			HW.C0 = CA(0, MR(10-10*i), 0)
			HW.C1 = CN(0, 0, -2) * CA(MP, MR(-5+5*i), MR(-90))
			wait()
		end
		Normal()
		Atch(Torso)
	end,
	function()
		Attack = 3
		Attacking = true
		for i = 0.15, 1, 0.15 do
			FW.C0 = CA(0, MR(-45+35*i), 0)
			RAW.C0 = CN(0.1-0.2*i, 0.2-0.2*i, -0.4) * CA(MR(90+30*i), 0, MR(50-70*i)) * CN(0, -0.5*i, 0)
			LAW.C0 = CN(0.3-0.2*i, 0, -0.5) * CA(MR(85+35*i), 0, MR(45-25*i)) * CN(0, -0.5*i, 0)
			HW.C0 = CA(0, MR(90-70*i), MR(-45*i))
			HW.C1 = CN(0, 0, -2) * CA(MP, MR(-45+45*i), MR(-90))
			wait()
		end
		for i = 0.18, 1, 0.18 do
			FW.C0 = CA(0, MR(-10+10*i), 0)
			RAW.C0 = CN(-0.1, 0, -0.4) * CA(MR(120+80*i), 0, MR(-20-15*i)) * CN(0, -0.5-0.1*i, 0)
			LAW.C0 = CN(0.1, 0, -0.5) * CA(MR(120+80*i), 0, MR(20+15*i)) * CN(0, -0.5-0.1*i, 0)
			HW.C0 = CA(0, MR(20-20*i), MR(-45-10*i))
			HW.C1 = CN(0, 0, -2) * CA(MP, 0, MR(-90))
			wait()
		end
		Play(Sounds.Slash)
		for i = 0.25, 1, 0.25 do
			FW.C0 = CA(0, 0, 0)
			RAW.C0 = CN(-0.1, 0, -0.4) * CA(MR(200+10*i), 0, MR(-35-5*i)) * CN(0, -0.6, 0)
			LAW.C0 = CN(0.1, 0, -0.5) * CA(MR(200+10*i), 0, MR(35+5*i)) * CN(0, -0.6, 0)
			HW.C0 = CA(0, 0, MR(-55+5*i))
			wait()
		end
		SE(Sword, CN(0, 0, 2.2))
		Hurt = true
		Deb = true
		for i = 0.14, 1, 0.14 do
			RAW.C0 = CN(-0.1, 0, -0.4) * CA(MR(210-180*i), 0, MR(-40)) * CN(0, -0.6-0.25*i, 0)
			LAW.C0 = CN(0.1, 0, -0.5) * CA(MR(210-180*i), 0, MR(40)) * CN(0, -0.6-0.25*i, 0)
			HW.C0 = CA(MR(-55*i), MR(-30*i), MR(-50))
			wait()
		end
		Hurt = false
		EE()
		Play(Sounds.Block)
		for i = 0.33, 1, 0.33 do
			RAW.C0 = CN(-0.1, 0, -0.4) * CA(MR(30+5*i), 0, MR(-40)) * CN(0, -0.85+0.4*i, 0)
			LAW.C0 = CN(0.1, 0, -0.5) * CA(MR(30+5*i), 0, MR(40)) * CN(0, -0.85+0.4*i, 0)
			HW.C0 = CA(MR(-55+5*i), MR(-30), MR(-50))
			wait()
		end
		for i = 0.16, 1, 0.16 do
			RAW.C0 = CN(-0.1-0.2*i, 0.2*i, -0.4) * CA(MR(35+25*i), MR(30*i), MR(-40+7*i)) * CN(0, -0.45+0.3*i, 0)
			LAW.C0 = CN(0.1+0.2*i, 0, -0.5) * CA(MR(35+5*i), MR(-30*i), MR(40-15*i)) * CN(0, -0.45+0.3*i, 0)
			HW.C0 = CA(MR(-50+40*i), MR(-30+25*i), MR(-50+45*i))
			wait()
		end
		for i = 0.25, 1, 0.25 do
			RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(60+10*i), MR(30+10*i), MR(-33+3*i)) * CN(0, -0.15+0.15*i, 0)
			LAW.C0 = CN(0.3, 0, -0.5) * CA(MR(40+5*i), MR(-30-5*i), MR(25-5*i)) * CN(0, -0.15+0.15*i, 0)
			HW.C0 = CA(MR(-10+10*i), MR(-5+5*i), MR(-5+5*i))
			wait()
		end
		Attack = 1
		Atch(Torso)
		Attacking = false
		Normal()
	end
}

function onButtonDown()
	if Attacking == false and BlockAnim == false and Blocking.Value == false then
		Combo[Attack]()
	end
end

function Block()
	coroutine.resume(coroutine.create(function()
		Blocking.Value = true
		BlockAnim = trueCN
		for i = 0.15, 1, 0.15 do
			LAW.C0 = CN(0.3+0.4*i, 0, -0.5-0.4*i) * CA(MR(45+35*i), MR(-35+30*i), MR(20+50*i))
			RAW.C0 = CN(-0.3-0.1*i, 0.2, -0.4) * CA(MR(70+15*i), MR(40-30*i), MR(-30-30*i))
			SW.C1 = CN(0, 0.4, 0.2) * CA(MR(160+15*i), MR(-75*i), 0)
			wait()
		end
		Play(Sounds.Block)
		for i = 0.33, 1, 0.33 do
			LAW.C0 = CN(0.7+0.1*i, 0, -0.9-0.1*i) * CA(MR(80+5*i), MR(-5+5*i), MR(70+10*i))
			RAW.C0 = CN(-0.4, 0.2, -0.4) * CA(MR(85+5*i), MR(10-10*i), MR(-60-5*i))
			SW.C1 = CN(0, 0.4, 0.2) * CA(MR(175+5*i), MR(-75-15*i), 0)
			wait()
		end
		LAW.C0 = CN(0.8, 0, -1) * CA(MR(85), 0, MR(80))
		repeat wait() until Blocking.Value == false
		for i = 0.14, 1, 0.14 do
			LAW.C0 = CN(0.8-0.5*i, 0, -1+0.5*i) * CA(MR(85-40*i), MR(-35*i), MR(80-60*i))
			RAW.C0 = CN(-0.4+0.1*i, 0.2, -0.4) * CA(MR(90-20*i), MR(40*i), MR(-65+35*i))
			SW.C1 = CN(0, 0.4, 0.2) * CA(MR(180-20*i), MR(-90+90*i), 0)
			wait()
		end
		BlockAnim = false
		Normal()
	end))
end

function SelectAnim()
	RAW.Part1 = Rarm
	for i = 0.14, 1, 0.14 do
		RAW.C0 = CA(MR(205*i), MR(30*i), MR(-10*i))
		wait()
	end
	for i = 0.33, 1, 0.33 do
		RAW.C0 = CA(MR(205+15*i), MR(30), MR(-10))
		wait()
	end
	HW.C0 = CA(MR(40), MR(30), MR(120))* CN(0, 0, 0.15)
	HW.Part1 = Sword
	TW.Part1 = nil
	for i = 0.18, 1, 0.18 do
		RAW.C0 = CA(MR(220-80*i), MR(30-50*i), MR(-10+30*i))
		HW.C0 = CA(MR(40-40*i), MR(30-30*i), MR(120-120*i))* CN(0, 0, 0.15-0.15*i)
		wait()
	end
	for i = 0.33, 1, 0.33 do
		RAW.C0 = CA(MR(140-15*i), MR(-20-5*i), MR(20+5*i))
		HW.C0 = CA(MR(-10*i), 0, 0)
		wait()
	end
	LAW.Part1 = Larm
	for i = 0.18, 1, 0.18 do
		RAW.C0 = CN(-0.3*i, 0.2*i, -0.4*i) * CA(MR(125-45*i), MR(-25+60*i), MR(25-50*i))
		LAW.C0 = CN(0.3*i, 0, -0.5*i) * CA(MR(40*i), MR(-30*i), MR(15*i))
		HW.C0 = CA(MR(-10+10*i), 0, 0)
		wait()
	end
	HW.C0 = CN()
	for i = 0.33, 1, 0.33 do
		RAW.C0 = CN(-0.3, 0.2, -0.4) * CA(MR(80-10*i), MR(35+5*i), MR(-25-5*i))
		LAW.C0 = CN(0.3, 0, -0.5) * CA(MR(40+5*i), MR(-30-5*i), MR(15+5*i))
		wait()
	end
	Normal()
end

function DeselectAnim()
	for i = 0.14, 1, 0.14 do
		RAW.C0 = CN(-0.3+0.3*i, 0.2-0.2*i, -0.4+0.4*i) * CA(MR(70+80*i), MR(40-60*i), MR(-30+20*i))
		LAW.C0 = CN(0.3-0.3*i, 0, -0.5+0.5*i) * CA(MR(45-35*i), MR(-35+25*i), MR(20-15*i))
		wait()
	end
	for i = 0.33, 1, 0.33 do
		RAW.C0 = CA(MR(150+10*i), MR(-20-5*i), MR(-10+5*i))
		LAW.C0 = CA(MR(10-10*i), MR(-10+10*i), MR(5-5*i))
		wait()
	end
	LAW.Part1 = nil
	for i = 0.18, 1, 0.18 do
		RAW.C0 = CA(MR(160+50*i), MR(-25+50*i), MR(-5-5*i))
		HW.C0 = CA(MR(30*i), MR(25*i), MR(110*i))* CN(0, 0, 0.15*i)
		wait()
	end
	for i = 0.33, 1, 0.33 do
		RAW.C0 = CA(MR(210+10*i), MR(25+5*i), MR(-10))
		HW.C0 = CA(MR(30+10*i), MR(25+5*i), MR(110+10*i))* CN(0, 0, 0.15)
		wait()
	end
	HW.Part1 = nil
	TW.Part1 = Sword
	for i = 0.2, 1, 0.2 do
		RAW.C0 = CA(MR(220-200*i), MR(30-20*i), MR(-10+10*i))
		wait()
	end
	for i = 0.33, 1, 0.33 do
		RAW.C0 = CA(MR(20-20*i), MR(10-10*i), 0)
		wait()
	end
	RAW.Part1 = nil
end

function onSelected(mouse)
	SelectAnim()
	Selected = true
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if key == "f" and Blocking.Value == false and BlockAnim == false and Attacking == false then
			Block()
			local k
			repeat k = mouse.KeyUp:wait() until k == "f"
			Blocking.Value = false
		elseif key == "q" then
			Where = Where - 1
		elseif key == "e" then
			Where = Where + 1
		elseif key == "z" then
			local h = nil
			local t = mouse.Target
			if t then
				h = getStat(t.Parent)
				if h == nil and t.Parent.Parent ~= game and t.Parent.Parent ~= nil then
					h = getStat(t.Parent.Parent)
				end
			end
			if h == nil then
				CamBlock.CFrame = CFrame.new(mouse.Hit.p)
				Cam.CameraSubject = CamBlock
				Cam.CameraType = Enum.CameraType[CamStyles[Where] ]
			else
				Cam.CameraSubject = h
			end
		elseif key == "x" then
			Cam.CameraSubject = Hum
		elseif key == "r" then
			RotationOn = not RotationOn
		elseif key == "t" then
			local k
			coroutine.resume(coroutine.create(function()
				repeat
					wait()
					Rotation = Rotation - 0.05
				until k == "t"
			end))
			repeat k = mouse.KeyUp:wait() until k == "t"
		elseif key == "y" then
			local k
			coroutine.resume(coroutine.create(function()
				repeat
					wait()
					Rotation = Rotation + 0.05
				until k == "y"
			end))
			repeat k = mouse.KeyUp:wait() until k == "y"
		end
		if Where > #CamStyles then Where = 1 elseif Where < 1 then Where = #CamStyles end
		Cam.CameraType = Enum.CameraType[CamStyles[Where] ]
	end)
	mouse.Button1Down:connect(function()
		onButtonDown()
	end)
end

function onDeselected(mouse)
	Selected = false
	DeselectAnim()
end

Bin.Selected:connect(onSelected)
Bin.Deselected:connect(onDeselected)

while true do
	wait()
	if RotationOn then
		Cam.Coo