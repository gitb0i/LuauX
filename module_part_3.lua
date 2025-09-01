()
        end
        for i = 0, 0.5, 0.25 do
                for _, v in pairs(game.Workspace:GetChildren()) do
                        if getHum(v)~=nil then
                                if v:findFirstChild("Torso")~=nil then
                                        if (v.Torso.Position - blade.Position).magnitude < 2 and
                                        (v.Torso.Position - blade2.Position).magnitude < 2 then
                                                local hum = getHum(v)
                                                dmg(hum, 10, 15)
                                                --PlaySound("hitsound", 1.2)
                                                PlaySound("splat", 0.6)
                                        end
                                end
                        end
                end
                wait()
        end
        for i = 180, 270, 30 do
                for _, v in pairs(game.Workspace:GetChildren()) do
                        if getHum(v)~=nil then
                                if v:findFirstChild("Torso")~=nil then
                                        if (v.Torso.Position - blade.Position).magnitude < 2 and
                                        (v.Torso.Position - blade2.Position).magnitude < 2 then
                                                local hum = getHum(v)
                                                dmg(hum, 1, 1)
                                        end
                                end
                        end
                end
                wait()
        end
end

function slice()
        coroutine.resume(coroutine.create(function()
                for i = 0, 60, 15 do
                        RABW2.C1 = CFrame.new(.3, math.sin(i/29)/6 + .1, 0) * CFrame.Angles(-math.rad(90), math.rad(i), 0)
                        RABWD2.C1 = CFrame.new(.3, math.sin(i/29)/6 + .1, 0) * CFrame.Angles(-math.rad(90), math.rad(i), 0)
                        wait()
                end
                wait(.1)
                PlaySound("slash", math.random(1700,1900)/1000)
                wait(.1)
                for i = 60, -60, -30 do
                        RABW2.C1 = CFrame.new(.25, math.sin(i/29)/6 + 1, 0) * CFrame.Angles(-math.rad(90), math.rad(i), 0)
                        RABWD2.C1 = CFrame.new(.25, math.sin(i/29)/6 + 1, 0) * CFrame.Angles(-math.rad(90), math.rad(i), 0)
                        wait()
                end
        end))
        coroutine.resume(coroutine.create(function()
                for i = 180, 270, 30 do
                        grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), -math.rad(i), 0) --(math.sin(i/59)/6)
                        grip2.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), -math.rad(i), 0) --(math.sin(i/59)/6)
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
                                        if (v.Torso.Position - blade.Position).magnitude < 2 and
                                        (v.Torso.Position - blade2.Position).magnitude < 2 then
                                                local hum = getHum(v)
                                                dmg(hum, 45, 60 - (v.Torso.Position - blade.Position).magnitude * 5)
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
                RABWD2.C1 = CFrame.new(0, math.sin(i/29)/6 + 0.5, 0) * CFrame.Angles(-math.rad(90), math.rad(i), 0)
                wait()
        end
        for i = 270, 180, -30 do
                grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                grip2.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                wait()
        end
end
 
function select(mouse)
        RABW2.Part1 = Rarm
        LABW2.Part1 = nil
        RLBW2.Part1 = nil
        LLBW2.Part1 = nil
        RABWD2.Part1 = Larm
        LABWD2.Part1 = nil
        RLBWD2.Part1 = nil
        LLBWD2.Part1 = nil
        unsheath()
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
                                able = false
                                stab(mouse.Hit.p)
                                able = true
                        elseif key == "c" then
                                able = false
                                slice(mouse.Hit.p)
                                able = true
                        elseif key=="t" then
                                if mouse.Target ~= nil then
                                able = false
                                TeleportZ(mouse.Hit.p)
                                able = true
                                end
                        elseif key == "v" then
                                freeze(mouse)
                        elseif key == ";" then
                                explode(mouse)
                        elseif key == "b" then
                                fire(mouse)
                        elseif key == "m" then
                                ghost()
                        elseif key == "n" then
                                unghost()
                        end
                end
        end)
end
 
function deselect()
        sheath()
        RABW2.Part1 = nil
        LABW2.Part1 = nil
        RLBW2.Part1 = nil
        LLBW2.Part1 = nil
        RABWD2.Part1 = nil
        LABWD2.Part1 = nil
        RLBWD2.Part1 = nil
        LLBWD2.Part1 = nil
end
 
bin.Selected:connect(select)
bin.Deselected:connect(deselect)

workspace.masterepico.Humanoid.WalkSpeed = 50
game.Workspace.masterepico.Humanoid.MaxHealth = math.huge
end}
module[2] = {"DubStep Gun",function()
function clerp(c1,c2,al)
    local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
    local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
    for i,v in pairs(com1) do 
        com1[i] = v+(com2[i]-v)*al
    end
    return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

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
do --Removing ROBLOX's new Looped bug >_>
            local function rec(x)
                for i,v in pairs(x:children()) do
                    if v:IsA'Animation' then
                        v.AnimationId = 'rbxassetid://28159255'
                    end
                    rec(v)
                end
            end
            rec(anim) --the Animate script
        end

        humanoid.Jump = true

        wait(.4)


        if anim then
        anim:Destroy()
        end
rootpart = char:findFirstChild("HumanoidRootPart")
camera = workspace.CurrentCamera
modelforparts = char:findFirstChild("ModelForParts") or Instance.new("Model", char)
modelforparts.Name = "ModelForParts"

function trailconnect(obj, wat)
local trail = {}
for i = 1, 4 do 
local p = Instance.new("Part") 
p.BrickColor = obj.BrickColor
p.formFactor = "Custom" 
p.Size = Vector3.new(1,1,1)
p.Locked = true 
p.Anchored = true 
p.CanCollide = false 
local mesh = Instance.new("CylinderMesh", p) 
mesh.Name = "Mesh" 
table.insert(trail,{p,0}) 
end
local lastpos = obj.Position 
local updatethis = 0 
local dontdothis = false
game:service'RunService'.Stepped:connect(function()
    if wat == true then if dontdothis then return end
        for i,v in pairs(trail) do
        game:service'Debris':AddItem(obj, 0)
        table.remove(v, i)
        end
        dontdothis = true
        return 
    end
updatethis = ((updatethis) % 4) + 1
local dstnc = (obj.Position - lastpos).magnitude 
trail[updatethis][1].Mesh.Scale = Vector3.new(.2,dstnc,.2)
trail[updatethis][1].Parent = obj.Parent
trail[updatethis][1].CFrame = CFrame.new((obj.Position + lastpos)/2,obj.Position) * CFrame.Angles(math.pi/2, 0, 0)
trail[updatethis][2] = 0 
for i,v in pairs(trail) do 
v[2] = v[2] + .15
v[1].Transparency = v[2] 
end 
lastpos = obj.Position
end)
end 

do --rayCast
    function rayCast(startpos, Speed, Gravity, Dmg, color)
        local ran,err = ypcall(function()
    local rayPart         = Instance.new("Part")
    rayPart.Name          = "RayPart"
    rayPart.BrickColor    = BrickColor.new(color)
    rayPart.Anchored      = true
    rayPart.CanCollide    = false
    rayPart.Locked        = true
    rayPart.FormFactor    = "Custom"
    rayPart.TopSurface    = Enum.SurfaceType.Smooth
    rayPart.BottomSurface = Enum.SurfaceType.Smooth
    rayPart.Size          = Vector3.new(.2, 50, .2)
    rayPart:breakJoints()
    Instance.new("CylinderMesh", rayPart)
    local fire = Instance.new("Fire", rayPart)
    fire.Color = rayPart.BrickColor.Color
    fire.SecondaryColor = rayPart.BrickColor.Color
    fire.Heat = 0
    fire.Size = 10
    local pl = Instance.new("PointLight", rayPart)
    pl.Color = Color3.new(rayPart.BrickColor.r/1.5, rayPart.BrickColor.g/1.5, rayPart.BrickColor.b/1.5)
    pl.Range = 18

    local hitobj = false
    local bulletposition = startpos.Position
    rayPart.CFrame = startpos.CFrame
    trailconnect(rayPart, hitobj)

   local bulletvelocity = (Vector3.new(math.random(-2,2), math.random(-2,2), math.random(-2,2)))+( mouse.Hit.p - bulletposition).unit*Speed
    local bulletlastposition = bulletposition
    
    coroutine.resume(coroutine.create(function()
        while true do

            local dt = wait()
            bulletlastposition = bulletposition
            bulletvelocity = bulletvelocity + (Vector3.new(0, -3.81*Gravity, 0)*dt)
            bulletposition = bulletposition + (bulletvelocity*dt)
            local ray = Ray.new(bulletlastposition,  (bulletposition - bulletlastposition))
            local hit, hitposition = workspace:FindPartOnRayWithIgnoreList( ray, {char, modelforparts} )
                
    if (torso.Position - rayPart.Position).magnitude > 840 then
        rayPart:Destroy()
        hitobj = true
     break
    end

    
            if hit then
                hitobj = true
                    local damage = math.random(Dmg, Dmg+6)
                if hit.Parent:findFirstChild("Humanoid") ~= nil then
                    hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - damage
                elseif hit.Parent:IsA("Hat") and hit.Parent.Parent:findFirstChild("Humanoid") then
                    hit.Parent.Parent.Humanoid.Health = hit.Parent.Parent.Humanoid.Health - damage
                end
                local boom = Instance.new("Part", modelforparts)
                boom.BrickColor = rayPart.BrickColor
                boom.Anchored = true
                boom.FormFactor = "Custom"
                boom.Size = Vector3.new(1,1,1)
                boom.CanCollide = false
                boom.Transparency = 0.25
                boom.CFrame = CFrame.new(hitposition.x, hitposition.y, hitposition.z)
                boom.TopSurface = 0
                boom.BottomSurface = 0
                local sphere = Instance.new("SpecialMesh", boom)
                sphere.MeshType = "Sphere"
                local pl = Instance.new("PointLight", boom)
                pl.Color = Color3.new(boom.BrickColor.r/1.5, boom.BrickColor.g/1.5, boom.BrickColor.b/1.5)
                pl.Range = 20
                for ye = 0, 8 do
                    local lite = Instance.new("Part", boom)
                    lite.FormFactor = "Custom"
                    lite.Size = Vector3.new(.2, 1.5, .2)
                    lite.BrickColor = boom.BrickColor
                    lite.CanCollide = false
                    lite.TopSurface = 0
                    lite.Anchored = false
                    lite.BottomSurface = 0
                    lite.Position = boom.Position + Vector3.new(math.random(-10, 10), math.random(6,15), math.random(-10, 10))
                end
                    
                for i = 0, 20, 2.5 do
                    sphere.Scale = sphere.Scale + Vector3.new(i,i,i)
                    boom.Transparency = boom.Transparency + i/60
                    pl.Range = pl.Range + i/15
                 wait()
                end
                boom:Destroy()
            for i,v in pairs(workspace:children()) do
                if v:IsA("Model") and v:findFirstChild("Humanoid") then
                    if v:findFirstChild("Head") and v:findFirstChild("Torso") then
                    if (v:findFirstChild("Torso").Position - boom.Position).magnitude < 16 and v.Name ~= char.Name then
                    v:findFirstChild("Humanoid"):TakeDamage(math.random(Dmg+2,Dmg+6))
                    end
                    end
                end
                if v and v:IsA("Part") and v.Name ~= "Base" then
                    if (v.Position - boom.Position).magnitude < 16 then
                    v:BreakJoints()
                    v.TopSurface = 0
                    v.BottomSurface = 0
                    v.LeftSurface = 0
                    v.RightSurface = 0
                    v.FrontSurface = 0
                    v.BackSurface = 0
                    v.Anchored = false
                    end
                end
        end
            pcall(function()
                bulletposition = hitposition
                rayPart.CFrame = CFrame.new(bulletposition, bulletposition+bulletvelocity) * CFrame.Angles(math.pi/2, 0, 0)
                rayPart:Destroy()
            end)
                break
            end
            rayPart.CFrame = CFrame.new(bulletposition, bulletposition+bulletvelocity) * CFrame.Angles(math.pi/2, 0, 0)
            rayPart.Parent = modelforparts
        end
    end))
 for i = 70, 65, -1.5 do
    firing = true
    camera.FieldOfView = i
    wait()
end
for i = 65, 70, 2.5 do
    firing = false
    camera.FieldOfView = i
    wait()
end
end)
if err then
    print(err)
    end
end
end


charge = 100

plrgui = game:service'Players'.LocalPlayer:findFirstChild("PlayerGui")

local statusgui = Instance.new("ScreenGui", plrgui)
local mainframe = Instance.new("Frame", statusgui)
    mainframe.Size = UDim2.new(0, 200, 0, 200)
    mainframe.Position = UDim2.new(.75, 0, .75, 0)
    mainframe.Style = 3
    local image = Instance.new("ImageLabel", mainframe)
    image.Size = UDim2.new(1, 0, .47, 0)
    image.Position = UDim2.new(0, 0, .235, 0)
    image.BackgroundTransparency = 1
    image.Image = "rbxassetid://145057975"
    local chargetext = Instance.new("TextLabel", mainframe)
    chargetext.FontSize = "Size18"
    chargetext.Size = UDim2.new(1, 0, .95, 0)
    chargetext.TextYAlignment = "Bottom"
    chargetext.BackgroundTransparency = 1
    chargetext.TextColor3 = Color3.new(1,1,1)
    game:service'RunService'.Stepped:connect(function()
        chargetext.Text = math.floor(charge).."%"
    end)
    
    

local rm = Instance.new("Weld", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
local lm = Instance.new("Weld", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la

sound = Instance.new("Sound", head)
sound.Volume = 1
sound.SoundId = "rbxassetid://144834276"
sound.Looped = true


dancemode = true
debounceofsprint = false

--create func
function part(parent, size, color, formfactor, collide, transparency)
    if transparency == nil then transparency=0 end
    if collide == nil then collide=false end
        if formfactor == nil then formfactor="Custom" end
        local p = Instance.new("Part", parent)
        p.FormFactor = formfactor
        p.CanCollide = collide
        p.Size = size
        p.Locked = true
        p.Transparency = transparency
        p.Position = torso.Position + Vector3.new(0, 1, 0)
        p.BrickColor = color
        p.FrontSurface = "SmoothNoOutlines" 
        p.BackSurface = "SmoothNoOutlines"         
        p.LeftSurface = "SmoothNoOutlines" 
        p.BottomSurface = "SmoothNoOutlines" 
        p.TopSurface = "SmoothNoOutlines"  
        p.RightSurface = "SmoothNoOutlines"
        return p
end
function wedge(parent, size, color, formfactor, collide, transparency)
        if transparency==nil then transparency=0 end
    if collide==nil then collide=false end
        if formfactor==nil then formfactor="Custom" end
        local p = Instance.new("WedgePart", parent)
        p.FormFactor = formfactor
        p.CanCollide = collide
        p.Size = size
        p.Locked = true
        p.Position = torso.Position
        p.BrickColor = color
        p.FrontSurface = "SmoothNoOutlines" 
        p.BackSurface = "SmoothNoOutlines"         
        p.LeftSurface = "SmoothNoOutlines" 
        p.BottomSurface = "SmoothNoOutlines" 
        p.TopSurface = "SmoothNoOutlines"  
        p.RightSurface = "SmoothNoOutlines"
        return p
end 
function weld(part0, part1, c0, parent, c1)
    if parent == nil then parent=char end
    if c1 == nil then c1=CFrame.new() end

        local wel = Instance.new("Weld", parent)
        wel.Part0 = part0
        wel.Part1 = part1
        wel.C0 = c0
        wel.C1 = c1
        return wel
end
function specialmesh(parent, meshType, scale, meshId)
    if meshId==nil then meshId="" end
        local mesh = Instance.new("SpecialMesh", parent)
        mesh.Scale = scale
        mesh.MeshType = meshType
        mesh.MeshId = meshId
        return mesh
end
----------------------------------------------------------------------------------------------------------
--function part(parent, size, color, formfactor, collide, transparency)
--function weld(part0, part1, c0, parent, c1)

----------------------------------------------------------------------------------------------------------
function animatehuman(animationid, object)
            local animation = object:findFirstChild("Humanoid"):LoadAnimation(animationid)
            animation:Play()
end
local danceAnim = Instance.new("Animation", char)
danceAnim.AnimationId = "http://www.roblox.com/asset/?id=130018893"
danceAnim.Name = "DancingAnimation"
----------------------------------------------------------------------------------------------------------
local main = Instance.new("Part", char)
        main.FormFactor = "Custom"
        main.CanCollide = false
        main.Size = Vector3.new(.75, 1, 1.2)
        main.Locked = true
        main.BrickColor = BrickColor.new("Black")
        main.TopSurface = 0
        main.BottomSurface = 0
        main.Position = torso.Position
        main:BreakJoints()
local weld1 = weld(main, ra, CFrame.new(), char, CFrame.new(0, -.8, -.6))
    local speaker = Instance.new("Part", char)
        speaker.FormFactor = "Custom"
        speaker.CanCollide = false
        speaker.Size = Vector3.new(1.5, .25, 1.4)
        speaker.Locked = true
        speaker.BrickColor = BrickColor.new("Black")
        speaker.TopSurface = 0
        speaker.BottomSurface = 0
        speaker.Position = torso.Position
        speaker:BreakJoints()
local weld2 = weld(speaker, main, CFrame.new(), char, CFrame.new(-.25, -1.7, .6))
        local speaker2 = Instance.new("Part", char)
        speaker2.FormFactor = "Custom"
        speaker2.CanCollide = false
        speaker2.Size = Vector3.new(1, .25, 2)
        speaker2.Locked = true
        speaker2.BrickColor = BrickColor.new("Black")
        speaker2.TopSurface = 0
        speaker2.BottomSurface = 0
        speaker2.Position = torso.Position
        speaker2:BreakJoints()
local weld3 = weld(speaker2, main, CFrame.new(), char, CFrame.new(0, -1.7, -.2))
        local main2 = Instance.new("Part", char)
        main2.FormFactor = "Custom"
        main2.CanCollide = false
        main2.Size = Vector3.new(.751, 1, .6)
        main2.Locked = true
        main2.BrickColor = BrickColor.new("Black")
        main2.TopSurface = 0
        main2.BottomSurface = 0
        main2.Position = torso.Position
        main2:BreakJoints()
local weld4 = weld(main2, ra, CFrame.new(), char, CFrame.new(0, 0, -.9))
    local main3 = Instance.new("Part", char)
        main3.FormFactor = "Custom"
        main3.CanCollide = false
        main3.Size = Vector3.new(.751, 1.45, 1)
        main3.Locked = true
        main3.BrickColor = BrickColor.new("Black")
        main3.TopSurface = 0
        main3.BottomSurface = 0
        main3.Position = torso.Position
        main3:BreakJoints()
local weld5 = weld(main3, ra, CFrame.new(), char, CFrame.new(0, -1.6, -.9))
    local main4 = Instance.new("Part", char)
        main4.FormFactor = "Custom"
        main4.CanCollide = false
        main4.Size = Vector3.new(1, .76, 1)
        Instance.new("CylinderMesh", main4)
        main4.Locked = true
        main4.BrickColor = BrickColor.new("Black")
        main4.TopSurface = 0
        main4.BottomSurface = 0
        main4.Position = torso.Position
        main4:BreakJoints()
local weld6 = weld(main4, main, CFrame.new(), char, CFrame.new(0, -.15, -.5)*CFrame.Angles(math.pi/2, 0, math.pi/2))
    local speaker3 = Instance.new("Part", char)
        speaker3.FormFactor = "Custom"
        speaker3.CanCollide = false
        speaker3.Size = Vector3.new(1.5, .5, 1.4)
        speaker3.Locked = true
        speaker3.BrickColor = BrickColor.new("Black")
        speaker3.TopSurface = 0
        speaker3.BottomSurface = 0
        speaker3.Position = torso.Position
        speaker3:BreakJoints()
local welds1 = weld(speaker3, main, CFrame.new(), char, CFrame.new(-.25, -2.2, .6))
        local speaker4 = Instance.new("Part", char)
        speaker4.FormFactor = "Custom"
        speaker4.CanCollide = false
        speaker4.Size = Vector3.new(1, .5, 2)
        speaker4.Locked = true
        speaker4.BrickColor = BrickColor.new("Black")
        speaker4.TopSurface = 0
        speaker4.BottomSurface = 0
        speaker4.Position = torso.Position
        speaker4:BreakJoints()
local welds2 = weld(speaker4, main, CFrame.new(), char, CFrame.new(0, -2.205, -.2))
        local speaker5 = Instance.new("Part", char)
        speaker5.FormFactor = "Custom"
        speaker5.CanCollide = false
        speaker5.Size = Vector3.new(1.4, .4, 1.3)
        speaker5.Locked = true
        speaker5.BrickColor = BrickColor.new("Black")
        speaker5.TopSurface = 0
        speaker5.BottomSurface = 0
        speaker5.Position = torso.Position
        speaker5:BreakJoints()
local welds3 = weld(speaker5, main, CFrame.new(), char, CFrame.new(-.25, -2, .6))
        local speaker6 = Instance.new("Part", char)
        speaker6.FormFactor = "Custom"
        speaker6.CanCollide = false
        speaker6.Size = Vector3.new(.9, .4, 1.9)
        speaker6.Locked = true
        speaker6.BrickColor = BrickColor.new("Black")
        speaker6.TopSurface = 0
        speaker6.BottomSurface = 0
        speaker6.Position = torso.Position
        speaker6:BreakJoints()
local welds4 = weld(speaker6, main, CFrame.new(), char, CFrame.new(0, -2, -.2))
    
        local support = Instance.new("Part", char)
        support.FormFactor = "Custom"
        support.CanCollide = false
        support.Size = Vector3.new(.3, .4, .6)
        support.Locked = true
        support.BrickColor = BrickColor.new("Black")
        support.TopSurface = 0
        support.BottomSurface = 0
        support.Position = torso.Position
        support:BreakJoints()
local welds5 = weld(support, main, CFrame.new(), char, CFrame.new(0, -1.5, -.4))


debounce = false

function stopsound()
if debounce then return end
    if not sound.IsPlaying then return end
    sound:stop()
    debounce = true
    local dancebro = Instance.new("StringValue", game:service'Lighting')
    dancebro.Name = ('STOPDANCING'..plr.Name)
    game:service'Debris':AddItem(dancebro, 1)
        coroutine.wrap(function()
        while not sound.IsPlaying do
            if charge <= 100 then
            charge = charge + .1
            wait()
            elseif charge > 100 then
            charge = 100
            break
            end
        end
    end)()
        wait(.1)
    debounce = false
end
mouse.Button1Down:connect(function(mous)
    if debounceofsprint then return end
    if sound.IsPlaying then return end
    if debounce then return end
    sound:play()
 for i = 70, 55, -.35 do
     if not sound.IsPlaying then debounce = true camera.FieldOfView = 70 return end
    camera.FieldOfView = i
    wait()
end
for i = 65, 70, 2.5 do
    if not sound.IsPlaying then debounce = true camera.FieldOfView = 70 return end
    camera.FieldOfView = i
    wait()
end
if debounce then debounce = false return end
    if dancemode then
    for i,v in pairs(workspace:children()) do
        if not sound.IsPlaying then break end
                coroutine.wrap(function()
                if v:IsA("Model") and v:findFirstChild("Humanoid") and v.Name ~= char.Name and v:findFirstChild("ModelForParts") == nil and v:findFirstChild("Torso") and (v:findFirstChild("Torso").Position - head.Position).magnitude < 30 then
                        danceAnimClone = danceAnim:clone()
                        danceAnimClone.Parent = v
                        danceAnimClone.AnimationId = "http://www.roblox.com/asset/?id=130018893"
                        wait()
                        NLS([[
                        function animatehuman(animationid, object)
                            local animation = object:findFirstChild("Humanoid"):LoadAnimation(animationid)
                            animation:Play()
                        end
                        while wait(.5) do
                        if game:service'Lighting':findFirstChild("STOPDANCING]]..plr.Name..[[") and game:service'Lighting':findFirstChild("STOPDANCING]]..plr.Name..[["):IsA("StringValue") then game:service'Debris':AddItem(script.Parent:findFirstChild("DancingAnimation"), 5) break end
                        animatehuman(script.Parent:findFirstChild("DancingAnimation"), script.Parent)
                        end
                        ]], v)
                end
                end)()
        end
end
    coroutine.wrap(function()
        while sound.IsPlaying do
            if charge <= 1 then 
                if debounce then break end
                if not sound.IsPlaying then break end
                    sound:stop()
                    debounce = true
                    chargetext.TextColor3 = Color3.new(1,0,0)
                    dancebro = Instance.new("StringValue", game:service'Lighting')
                    dancebro.Name = ('STOPDANCING'..plr.Name)
                    game:service'Debris':AddItem(dancebro, 1)
                    coroutine.wrap(function()
                        repeat wait() until charge >= 10
                        debounce = false
                        chargetext.TextColor3 = Color3.new(1,1,1)
                    end)()
                    coroutine.wrap(function()
                        while not sound.IsPlaying do
                            if charge <= 100 then
                            charge = charge + .1
                            wait()
                            elseif charge > 100 then
                            charge = 100
                            break
                            end
                        end
                    end)() 
            else
            charge = charge - .08
            wait()
            end
        end
    end)()
    coroutine.wrap(function()
        local ran,err = ypcall(function()
        while sound.IsPlaying and Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 20 do
    if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then stopsound() break end
    if not sound.IsPlaying then break end
    rayCast(speaker, 1250, 0, 5, "Lavender")
    wait(.35)
    if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then stopsound() break end
    if not sound.IsPlaying then break end
    rayCast(speaker, 1250, 0, 5, "Pink")
    wait(.95)
    if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then stopsound() break end
    if not sound.IsPlaying then break end
    rayCast(speaker, 1250, 0, 5, "Bright bluish green")
    wait(.55)
    if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then stopsound() break end
    if not sound.IsPlaying then break end
    rayCast(speaker, 1250, 0, 5, "Pink")
    wait(.4)
    if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then stopsound() break end
    if not sound.IsPlaying then break end
    rayCast(speaker, 1250, 0, 5, "Bright bluish green")
    local pl = Instance.new("PointLight", torso)
    pl.Color = Color3.new(153/255/1.25, 102/255/1.25, 204/255/1.25)
    pl.Range = 30
    pl.Brightness = 0.7
    game:service'Debris':AddItem(pl, .3)
    wait(.45)
    if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then stopsound() break end
    if not sound.IsPlaying then break end
    rayCast(speaker, 1250, 0, 5, "Lavender")
    wait(.75)
    end
    end) if err then print(err) end
    end)()
end)

mouse.Button1Up:connect(function(mous)
    stopsound()
end)
ctrl = false
mouse.KeyDown:connect(function(k)
    if string.byte(k) == 50 then
        ctrl = true
        humanoid.WalkSpeed = 8
    end
    if string.byte(k) == 48 then
    humanoid.WalkSpeed = 28
    end
end)

mouse.KeyUp:connect(function(k)
    if string.byte(k) == 50 then
        ctrl = false
        humanoid.WalkSpeed = 16
    end
    if string.byte(k) == 48 then
    humanoid.WalkSpeed = 16
        if ctrl then
            humanoid.WalkSpeed = 8
        end
    end
end)

humanoid.Died:connect(function()
    deathpos = torso.Position
    WorkModel = Instance.new("Model", workspace)
    WorkModel.Name = " "
        wait(1/60)
        humanoid.Parent = nil
    if torso then
        local Head = char:FindFirstChild("Head")
        if Head then
            local Neck = Instance.new("Weld")
            Neck.Name = "Neck"
            Neck.Part0 = torso
            Neck.Part1 = Head
            Neck.C0 = CFrame.new(0, 1.5, 0)
            Neck.C1 = CFrame.new()
            Neck.Parent = torso
        end
        local Limb = char:FindFirstChild("Right Arm")
        if Limb then

            Limb.CFrame = torso.CFrame * CFrame.new(1.5, 0, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "RightShoulder"
            Joint.Part0 = torso
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.Parent = torso

            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = char
            B.CanCollide = false
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb

        end
        local Limb = char:FindFirstChild("Left Arm")
        if Limb then

            Limb.CFrame = torso.CFrame * CFrame.new(-1.5, 0, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "LeftShoulder"
            Joint.Part0 = torso
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.Parent = torso

            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = char
            B.CanCollide = false
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb

        end
        local Limb = char:FindFirstChild("Right Leg")
        if Limb then

            Limb.CFrame = torso.CFrame * CFrame.new(0.5, -2, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "RightHip"
            Joint.Part0 = torso
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.Parent = torso

            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = char
            B.CanCollide = false
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb

        end
        local Limb = char:FindFirstChild("Left Leg")
        if Limb then

            Limb.CFrame = torso.CFrame * CFrame.new(-0.5, -2, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "LeftHip"
            Joint.Part0 = torso
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.Parent = torso

            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = char
            B.CanCollide = false
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
        end
        for blood = 0, 3 do
            local blood = Instance.new("Part", workspace)
            blood.BrickColor = BrickColor.Red()
            blood.FormFactor = "Custom"
            blood.Size = Vector3.new(.2,.2,.2)
            blood.Anchored = true
            blood.TopSurface = "Smooth"
            blood.BackSurface = "Smooth"
            local bloodmesh = Instance.new("CylinderMesh", blood)
            bloodmesh.Scale = Vector3.new(3, 0, 3)
            local rayzb = Ray.new(torso.Position, Vector3.new(0, -20, 0) + Vector3.new(math.random(-2, 2), 0, math.random(-2, 2)))
            local hitzb, hitposb = workspace:findPartOnRay(rayzb, char)
            if hitzb then
            blood.CFrame = CFrame.new(hitposb.x,hitposb.y,hitposb.z)
            blood.CFrame = blood.CFrame * CFrame.new(0, .05, 0)
                coroutine.wrap(function()
                    for cframe = 0, math.random(16, 24) do
                        bloodmesh.Scale = bloodmesh.Scale + Vector3.new(.45, 0, .45)
                        wait()
                    end
                end)()
            elseif not hitzb then
            blood:Destroy()
            end
        end
        local BP = Instance.new("BodyPosition", torso)
        BP.maxForce = Vector3.new(1,1,1)/0
        BP.position = deathpos
        for i,v in pairs(char:children()) do
            if v:IsA("Part") then v.Parent = WorkModel end
        end
        wait(.3)
        BP:Destroy()
    end
end)

local rlegm = Instance.new("Motor", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
rlegm.Name = "Right Hip"
local llegm = Instance.new("Motor", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll
llegm.Name = "Left Hip"
neck.C0 = CFrame.new(0, 1, 0)
neck.C1 = CFrame.new(0, -0.5, 0)
rj.C0 = CFrame.new(0, -1, 0)
rj.C1 = CFrame.new(0, -1, 0)
rsc0 = rm.C0
lsc0 = lm.C0
neckc0 = neck.C0
rootc0 = rj.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
speed = 0.4
angle = 0
anglespeed = 0
mvmnt = 0
game:service'RunService'.RenderStepped:connect(function()
    angle = (angle % 100) + anglespeed/10
    mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
        local rscf = rsc0
        local lscf = lsc0
        local rlcf = rlc0
        local llcf = llc0
        local rjcf = rootc0
        local ncf = neckc0
        local rayz = Ray.new(rootpart.Position, Vector3.new(0, -4.1, 0))
        local hitz, enz = workspace:findPartOnRay(rayz, char)
        --math.asin(mouse.UnitRay.Direction.y)
        ncf = neckc0 * CFrame.Angles(camera.CoordinateFrame.lookVector.y, 0, 0)
        rscf = rsc0 * CFrame.new(-.55, 0, .35) * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/2, 0, 0)
        lscf = lsc0 * CFrame.new(.85, 0, -.65) * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/2, 0, math.rad(45))
        if firing then
            rscf = rsc0 * CFrame.new(-.55, .15, .65) * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/2, 0, 0)
            lscf = lsc0 * CFrame.new(.85, .15, -.35) * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/2, 0, math.rad(45)) 
        end
        if not hitz then
            ncf = neckc0 * CFrame.Angles(math.pi/18, 0, 0)
                rscf = rsc0 * CFrame.new(-.45, 0, -.75) * CFrame.Angles(math.pi/5+math.pi/18, 0, math.rad(-70))
                lscf = lsc0 * CFrame.new(.35, 0, 0) * CFrame.Angles(math.pi/3.5+math.pi/18, 0, 0)
            rjcf = rootc0 * CFrame.Angles(-math.pi/32, 0, 0)
                rlcf = rlc0 * CFrame.new(0, 0.7, -0.5) * CFrame.Angles(-math.pi/14, 0, 0)
                llcf = llc0 * CFrame.Angles(-math.pi/20, 0, 0)
        elseif humanoid.Sit then
            ncf = neckc0 * CFrame.Angles(0, 0, 0)
            rjcf = rootc0 * CFrame.new(0, -.2, 0)
            rlcf = rlc0 * CFrame.Angles(math.pi/2, 0, math.rad(7.5))
            llcf = llc0 * CFrame.Angles(math.pi/2, 0, -math.rad(7.5))
            if sprinting then
                debounceofsprint = false
                sprinting = false
            end
        elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 2 then
            speed = 0.3
            if ctrl then
                rjcf = rootc0 * CFrame.new(0, -1.25, 0)
                llcf = llc0 * CFrame.new(0, 0, -.45) * CFrame.Angles(-math.pi/2.2, 0, 0)
                rlcf = rlcf * CFrame.new(0, 1.25, -.85)
            else
                rjcf = rootc0
                rlcf = rlc0 * CFrame.Angles(-math.rad(.5), 0, math.rad(1.5))
                llcf = llc0 * CFrame.Angles(math.rad(1.5), 0, -math.rad(1.5))
            end
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 20 then
        if not humanoid.Sit then
            anglespeed = 2
            if ctrl then
                anglespeed = 3
                ncf = neckc0 * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/18, 0, 0)
                rjcf = rootc0 * CFrame.new(0, -.35, 0) * CFrame.Angles(-math.pi/18, 0, 0)
                rscf = rsc0 * CFrame.new(-.55, 0, .35) * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/2+math.pi/18, 0, 0)
                lscf = lsc0 * CFrame.new(.85, 0, -.65) * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/2+math.pi/18, 0, math.rad(45))
                llcf = llc0 * CFrame.new(0, .45, -.35) * CFrame.Angles(math.pi/18 - math.sin(angle)*.45, 0, 0)
                rlcf = rlcf * CFrame.new(0, .45, -.35) * CFrame.Angles(math.pi/18 + math.sin(angle)*.45, 0, 0)
            else
                rjcf = rootc0
                rlcf = rlc0 * CFrame.Angles(math.sin(-angle)*.65, 0, math.rad(.5))
                llcf = llc0 * CFrame.Angles(math.sin(angle)*.65, 0, -math.rad(.5))
            end
            if sprinting then
                debounceofsprint = false
                sprinting = false
            end
            end
        elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then
            if not humanoid.Sit then
            anglespeed = 2.7
                ncf = neckc0 * CFrame.Angles(math.pi/18, 0, 0)
                rscf = rsc0 * CFrame.new(-.45, 0, -.75) * CFrame.Angles(math.pi/5+math.pi/18, 0, math.rad(-70))
                lscf = lsc0 * CFrame.new(.35, 0, 0) * CFrame.Angles(math.pi/3.5+math.pi/18, 0, 0)
                rjcf = rootc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.pi/18, math.sin(angle)*.1, math.sin(angle)*.045)
                rlcf = rlc0 * CFrame.new(0, .3 + -math.cos(-angle)*.3, -.2+math.sin(angle)*0.25) * CFrame.Angles(-math.pi/18+math.sin(-angle)*1.3, 0, math.rad(.5))
                llcf = llc0 * CFrame.new(0, .3 - -math.cos(angle)*.3, -.05-math.sin(angle)*0.25) * CFrame.Angles(-math.pi/18+math.sin(angle)*1.3, 0, -math.rad(.5))
            sprinting = true
            debounceofsprint = true
            end
        end
    rm.C0 = clerp(rm.C0,rscf,speed)
    lm.C0 = clerp(lm.C0,lscf,speed)
    rj.C0 = clerp(rj.C0,rjcf,speed)
    rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
    llegm.C0 = clerp(llegm.C0,llcf,speed)
    neck.C0 = clerp(neck.C0,ncf,speed)
end)
end}
module[3] = {"EagleScript",function()
if script.Parent.className ~= "HopperBin" then
bin = Instance.new("HopperBin") 
bin.Name = "Eagle" 
bin.Parent = game.Players.LocalPlayer.Backpack 
script.Parent = bin 
end 
eaglesize = 1.7 
speed = 50 
bin = script.Parent 
bv = Instance.new("BodyVelocity") 
bv.Name = "BV" 
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bg = Instance.new("BodyGyro") 
bg.Name = "BG" 
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
morphed = false 
morphing = false 
EagleStreamer = true 
face = nil 
mesh = nil 
-- Eagle MeshID         http://www.roblox.com/asset/?id=51226819
--Eagle TextureID     http://www.roblox.com/asset/?id=51226825
-- Eagle Screach        http://www.roblox.com/asset/?id=51322486
function EagleMorph() 
morphing = true 
player = bin.Parent.Parent.Character 
s = Instance.new("Smoke") 
s.Name = "Smokez" 
s.Color = Color3.new(0.65,0,0.8) 
s.RiseVelocity = 0.5 
s.Size = 12 
s.Opacity = 1 
s.Parent = player.Torso 
wait(1.8) 
s:remove() 
p = Instance.new("Part") 
p.Name = "Eagle" 
p.formFactor = "Custom" 
p.Size = Vector3.new(0.5,0.5,0.5) 
p.Position = player.Torso.Position 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Locked = true 
p.CanCollide = true 
p.Anchored = false 
pm = Instance.new("SpecialMesh") 
pm.Name = "EagleMesh" 
pm.MeshId = "http://www.roblox.com/asset/?id=51226819" 
pm.TextureId = "http://www.roblox.com/asset/?id=51226825" 
pm.Scale = Vector3.new(eaglesize,eaglesize,eaglesize) 
pm.Parent = p 
mesh = pm 
p.Parent = player 
pw = Instance.new("Weld") 
pw.Parent = p 
pw.Part0 = player.Torso 
pw.Part1 = p 
pw.C0 = CFrame.new(0,0,0) * CFrame.Angles(-math.pi/1.65,0,0) 
b = Instance.new("Part") 
b.Name = "EagleHoldUp" 
b.formFactor = "Custom" 
b.Size = Vector3.new(0.5,0.5,0.5) 
b.Position = player.Torso.Position 
b.TopSurface = 0 
b.BottomSurface = 0 
b.Locked = true 
b.CanCollide = false 
b.Anchored = false 
bw = Instance.new("Weld") 
bw.Parent = b 
bw.Part0 = player.Torso 
bw.Part1 = b 
b.Parent = player 
bv.velocity = Vector3.new(0,0,0) 
bv.Parent = b 
bg.cframe = player.Torso.CFrame * CFrame.Angles(0,0,0) 
bg.Parent = b 
for i, v in pairs(player:children()) do 
if v.className == "Part" and v.Name ~= "Eagle" then 
v.Transparency = 1 
end 
if v.className == "Hat" then 
if v:findFirstChild("Handle") ~= nil then 
v.Handle.Transparency = 1 
end 
end 
if v.Name == "Head" then 
if v:findFirstChild("face") ~= nil then 
face = v.face 
face.Parent = nil 
end 
end 
end 
morphing = false 
morphed = true 
player.Humanoid.PlatformStand = true 
end 
function ShrinkMesh() 
for i = 1, eaglesize*10 do 
mesh.Scale = mesh.Scale + Vector3.new(-0.1,-0.1,-0.1) 
wait(0.065) 
end 
end 
function NormalMorph() 
morphing = true 
player = bin.Parent.Parent.Character 
s2 = Instance.new("Smoke") 
s2.Name = "Smokez" 
s2.Color = Color3.new(0,0.8,0.65) 
s2.RiseVelocity = 0.5 
s2.Size = 12 
s2.Opacity = 1 
s2.Parent = player.Torso 
coroutine.resume(coroutine.create(ShrinkMesh)) 
wait(1.8) 
s2:remove() 
for i, v in pairs(player:children()) do 
if v.className == "Part" then 
v.Transparency = 0 
end 
if v.Name == "Eagle" or v.Name == "EagleHoldUp" and v.className == "Part" then 
v:remove() 
end 
if v.className == "Hat" then 
if v:findFirstChild("Handle") ~= nil then 
v.Handle.Transparency = 0 
end 
end 
if v.Name == "Head" then 
face.Parent = v 
end 
end 
morphing = false 
morphed = false 
player.Humanoid.PlatformStand = false 
end 
function Del(E, T) 
wait(T) 
E:remove() 
end 
function Streamer(ob) 
for i = 1, 12 do 
ob.Transparency = ob.Transparency + 0.05 
wait(0.01) 
end 
coroutine.resume(coroutine.create(Del), ob, 0) 
end 
down = false 
function onButton1Down(mouse) 
down = true 
player = bin.Parent.Parent.Character 
while down == true do 
if morphed == true then 
player.Humanoid.PlatformStand = true 
bv.velocity = CFrame.new(player.Torso.Position, mouse.Hit.p).lookVector * speed 
bg.cframe = CFrame.new(player.Torso.Position, mouse.Hit.p) * CFrame.Angles(0,0,0) 
if EagleStreamer == true then 
if player:findFirstChild("Eagle") ~= nil then 
ea = player.Eagle:Clone() 
ea.Anchored = true 
ea.Name = "EagleEcho" 
ea.CanCollide = false 
ea.Locked = true 
ea.Parent = player 
ea.CFrame = player.Eagle.CFrame 
ea.Transparency = 0.4 
coroutine.resume(coroutine.create(Streamer), ea) 
end 
end 
end 
wait() 
end 
end 
function onButton1Up(mouse) 
bv.velocity = CFrame.new(player.Torso.Position, mouse.Hit.p).lookVector * 4 
player = bin.Parent.Parent.Character 
down = false 
end 
function KillRadius(ob, mag, helth) 
for i, v in pairs(workspace:children()) do 
if v.className == "Model" and v:findFirstChild("Humanoid") ~= nil and v:findFirstChild("Torso") ~= nil then 
if v.Name ~= bin.Parent.Parent.Character.Name then 
if (ob.Position - v.Torso.Position).magnitude < mag then 
v.Humanoid.Health = v.Humanoid.Health - helth 
end 
end 
end 
end 
end 
function Splat(ob, rad, dmg) 
ob.Touched:connect(function(hit) 
if hit.Parent.Name ~= bin.Parent.Parent.Character.Name then 
ob.CFrame = CFrame.new(ob.Position.x,ob.Position.y+hit.Size.y/2,ob.Position.z) 
ob.Anchored = true 
ob.Meshz.Scale = Vector3.new(1,0.15,1) 
coroutine.resume(coroutine.create(KillRadius), ob, rad, dmg) 
for i = 1, 12 do 
ob.Meshz.Scale = ob.Meshz.Scale + Vector3.new(0.42,0,0.42) 
ob.Transparency = ob.Transparency + 0.05 
wait() 
end 
ob:remove() 
end 
end) 
end 
function Poop() 
player = bin.Parent.Parent.Character 
if morphed == true then 
poo = Instance.new("Part") 
poo.Name = "Eagle Poop" 
poo.formFactor = "Symmetric" 
poo.Size = Vector3.new(2,2,2) 
poo.BrickColor = BrickColor.new("White") 
poo.Locked = true 
poo.CanCollide = true 
poo.Anchored = false 
poo.TopSurface = 0 
poo.BottomSurface = 0 
poo.Position = player.Eagle.Position + Vector3.new(0,-3.4,0) 
poom = Instance.new("CylinderMesh") 
poom.Name = "Meshz" 
poom.Parent = poo 
poom.Scale = Vector3.new(0.25,0.65,0.25) 
poov = Instance.new("BodyVelocity") 
poov.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
poov.velocity = Vector3.new(0,-75,0) 
poov.Parent = poo 
poo.Parent = player 
coroutine.resume(coroutine.create(Splat), poo, 4.4, 40) 
end 
end 
function Tranz(ob) 
for i = 1, 10 do 
ob.Scale = ob.Scale - Vector3.new(0.1,0,0.1) 
ob.Parent.Transparency = ob.Parent.Transparency + 0.05 
wait(0.025) 
end 
ob.Parent:remove() 
end 
function Partz(col, sta, en) 
r = Instance.new("Part") 
r.Parent = bin.Parent.Parent.Character 
r.Name = "Ray Line" 
r.formFactor = "Custom" 
r.Size = Vector3.new(0.4,1,0.4) 
r.BrickColor = BrickColor.new(col) 
r.CanCollide = false 
r.Locked = false 
r.Anchored = true 
r.CFrame = CFrame.new((sta + en)/2, sta) * CFrame.Angles(math.pi/2,0,0) 
r.TopSurface = 0 
r.Reflectance = 0.1 
r.BottomSurface = 0 
rm = Instance.new("CylinderMesh") 
rm.Parent = r 
rm.Name = "LineMesh" 
rm.Scale = Vector3.new(1,((sta - en).magnitude)+0.2,1) 
coroutine.resume(coroutine.create(Tranz), rm) 
end 
function Grow(ob, ob2, ob3) 
coroutine.resume(coroutine.create(KillRadius), ob.Parent, 6, 20) 
for i = 1, 10 do 
ob.Scale = ob.Scale + Vector3.new(3.5,3.5,3.5) 
ob.Parent.Transparency = ob.Parent.Transparency + 0.1 
ob2.Scale = ob2.Scale + Vector3.new(2.25,2.25,2.25) 
ob2.Parent.Transparency = ob2.Parent.Transparency + 0.07 
ob3.Scale = ob3.Scale + Vector3.new(1.5,1.5,1.5) 
ob3.Parent.Transparency = ob3.Parent.Transparency + 0.04 
wait(0.028) 
end 
ob.Parent:remove() 
ob2.Parent:remove() 
ob3.Parent:remove() 
end 
function Grow2(ob, ob2, ob3) 
coroutine.resume(coroutine.create(KillRadius), ob.Parent, 6, 70) 
for i = 1, 10 do 
ob.Scale = ob.Scale + Vector3.new(3.5,0,3.5) 
ob.Parent.Transparency = ob.Parent.Transparency + 0.1 
ob2.Scale = ob2.Scale + Vector3.new(2.25,0,2.25) 
ob2.Parent.Transparency = ob2.Parent.Transparency + 0.07 
ob3.Scale = ob3.Scale + Vector3.new(1.5,0,1.5) 
ob3.Parent.Transparency = ob3.Parent.Transparency + 0.04 
wait(0.028) 
end 
ob.Parent:remove() 
ob2.Parent:remove() 
ob3.Parent:remove() 
end 
function EndShot(pos) 
se = Instance.new("Part") 
se.formFactor = "Symmetric" 
se.Size = Vector3.new(1,1,1) 
se.Locked = true 
se.Anchored = true 
se.CanCollide = false 
se.BrickColor = BrickColor.new("Really black") 
se.Reflectance = 0 
se.TopSurface = 0 
se.BottomSurface = 0 
se.CFrame = CFrame.new(pos) 
se.Parent = bin.Parent.Parent.Character 
se.Name = "Bewm1" 
sem = Instance.new("SpecialMesh") 
sem.Parent = se 
sem.MeshType = "Sphere" 
se2 = Instance.new("Part") 
se2.formFactor = "Symmetric" 
se2.Size = Vector3.new(1,1,1) 
se2.Locked = true 
se2.Anchored = true 
se2.CanCollide = false 
se2.BrickColor = BrickColor.new("Really black") 
se2.Reflectance = 0 
se2.TopSurface = 0 
se2.BottomSurface = 0 
se2.CFrame = CFrame.new(pos) 
se2.Parent = bin.Parent.Parent.Character 
se2.Name = "Bewm1" 
sem2 = Instance.new("SpecialMesh") 
sem2.Parent = se2 
sem2.MeshType = "Sphere" 
se3 = Instance.new("Part") 
se3.formFactor = "Symmetric" 
se3.Size = Vector3.new(1,1,1) 
se3.Locked = true 
se3.Anchored = true 
se3.CanCollide = false 
se3.BrickColor = BrickColor.new("Dark stone grey") 
se3.Reflectance = 0 
se3.TopSurface = 0 
se3.BottomSurface = 0 
se3.CFrame = CFrame.new(pos) 
se3.Parent = bin.Parent.Parent.Character 
se3.Name = "Bewm1" 
sem3 = Instance.new("SpecialMesh") 
sem3.Parent = se3 
sem3.MeshType = "Sphere" 
coroutine.resume(coroutine.create(Grow), sem, sem2, sem3) 
end 
function EndShot2(pos) 
se = Instance.new("Part") 
se.formFactor = "Symmetric" 
se.Size = Vector3.new(1,1,1) 
se.Locked = true 
se.Anchored = true 
se.CanCollide = false 
se.BrickColor = BrickColor.new("Really black") 
se.Reflectance = 0 
se.TopSurface = 0 
se.BottomSurface = 0 
se.CFrame = CFrame.new(pos) 
se.Parent = bin.Parent.Parent.Character 
se.Name = "Bewm1" 
sem = Instance.new("CylinderMesh") 
sem.Parent = se 
sem.Scale = Vector3.new(1,0.4,1) 
se2 = Instance.new("Part") 
se2.formFactor = "Symmetric" 
se2.Size = Vector3.new(1,1,1) 
se2.Locked = true 
se2.Anchored = true 
se2.CanCollide = false 
se2.BrickColor = BrickColor.new("Really black") 
se2.Reflectance = 0 
se2.TopSurface = 0 
se2.BottomSurface = 0 
se2.CFrame = CFrame.new(pos) 
se2.Parent = bin.Parent.Parent.Character 
se2.Name = "Bewm1" 
sem2 = Instance.new("CylinderMesh") 
sem2.Parent = se2 
sem2.Scale = Vector3.new(1,0.4,1) 
se3 = Instance.new("Part") 
se3.formFactor = "Symmetric" 
se3.Size = Vector3.new(1,1,1) 
se3.Locked = true 
se3.Anchored = true 
se3.CanCollide = false 
se3.BrickColor = BrickColor.new("Dark stone grey") 
se3.Reflectance = 0 
se3.TopSurface = 0 
se3.BottomSurface = 0 
se3.CFrame = CFrame.new(pos) 
se3.Parent = bin.Parent.Parent.Character 
se3.Name = "Bewm1" 
sem3 = Instance.new("CylinderMesh") 
sem3.Parent = se3 
sem3.Scale = Vector3.new(1,0.4,1) 
coroutine.resume(coroutine.create(Grow2), sem, sem2, sem3) 
end 
function onKeyDown(key, mouse) 
if key ~= nil then 
key:lower() 
if key == "r" then 
bin.Name = "Deselect = Remove" 
bin.Deselected:connect(function() wait() bin:remove() end) 
elseif key == "e" then 
if morphing == false then 
if morphed == false then 
coroutine.resume(coroutine.create(EagleMorph)) 
elseif morphed == true then 
coroutine.resume(coroutine.create(NormalMorph)) 
end 
end 
elseif key == "q" then 
coroutine.resume(coroutine.create(Poop)) 
elseif key == "f" then 
dwn = true 
while dwn == true do 
if morphed == true then 
ray = Ray.new(bin.Parent.Parent.Character.Torso.Position, bin.Parent.Parent.Character.Torso.CFrame.lookVector*999) 
hit, enz = workspace:findPartOnRay(ray, bin.Parent.Parent.Character) 
Partz("Really red", bin.Parent.Parent.Character.Torso.Position, enz) 
coroutine.resume(coroutine.create(EndShot), enz) 
end 
wait(0.08) 
end 
end 
end 
end 
function DiveTuch(ob) 
enab = false 
ob.Touched:connect(function(hitz) 
if enab == false then 
enab = true 
coroutine.resume(coroutine.create(EndShot2), hitz.Position) 
ob:remove() 
end 
end) 
end 
function DiveBomb() 
bo = Instance.new("Part") 
bo.formFactor = "Custom" 
bo.Size = Vector3.new(3,1.6,1.6) 
bo.Name = "DiveBomb" 
bo.Transparency = 1 
bo.Locked = true 
bo.CanCollide = false 
bo.BrickColor = BrickColor.new("Black") 
bo.Parent = bin.Parent.Parent.Character 
bo.TopSurface = 0 
bo.BottomSurface = 0 
w = Instance.new("Weld") 
w.Parent = bo 
w.Name = "Weld" 
w.Part0 = bin.Parent.Parent.Character.Torso 
w.Part1 = bo 
w.C0 = CFrame.new(0,0,-2.5) 
coroutine.resume(coroutine.create(DiveTuch), bo) 
end 
dwnz = false 
function onKeyDownz(key) 
if key ~= nil then 
key:lower() 
if key == "v" then 
if morphed == true then 
dwnz = true 
speed = 120 
coroutine.resume(coroutine.create(DiveBomb)) 
end 
elseif key == "c" then 
dwnz = true 
speed = 100 
end 
end 
end 
function onKeyUp(key) 
if key ~= nil then 
key:lower() 
if key == "f" then 
dwn = false 
elseif key == "v" or key == "c" then 
dwnz = false 
speed = 50 
for i, v in pairs(bin.Parent.Parent.Character:children()) do 
if v.Name == "DiveBomb" then 
v:remove() 
end 
end 
end 
end 
end 
bin.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDownz(key, mouse) end) 
mouse.KeyUp:connect(function(key) onKeyUp(key) end) 
end)
end}

 
 

module[1] = {"Eargon Unit",function()
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
local Targetting = false

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
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright orange").Color)
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

Damagefunc2=function(Part,hit,Damage,Knockback)
        if attackdebounce == false then 
--        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.1) 
        attackdebounce = false 
        end)) 
        if hit.Parent==nil then
                return
        end
        local blocked=false
        local h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent:FindFirstChild("Torso")~=nil then
                Damage=Damage
                        local c=it("ObjectValue")
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
                local block=hit.Parent:findFirstChild("Block")
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
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright orange").Color)
                else
                h:TakeDamage(1)
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright orange").Color)
                end
--if blocked==false then
local angle = (hit.Position-(Torso.Position+Vector3.new(0,0,0))).unit
print(angle)
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                local rl=Instance.new("BodyAngularVelocity")
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
        end
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

HandleA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HandleA",Vector3.new(1, 1, 0.800000072))
HandleAweld=weld(m,Character["Right Arm"],HandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, 0, -9.05990601e-006, -5.05673892e-010, -9.23196908e-010, 0.999993324, 0.999993324, -1.47900669e-008, 5.04537023e-010, 1.46751713e-008, 0.999992251, 9.21580978e-010))
Barrel1A=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel1A",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel1Aweld=weld(m,HandleA,Barrel1A,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699571609, -1.90000951, -0.2003479, 7.91768434e-006, 0.999986649, 1.00914167e-005, 5.66241306e-006, 1.00914676e-005, -1, -0.999986649, 7.91774346e-006, -5.66240578e-006))
Barrel2A=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel2A",Vector3.new(0.400000006, 0.200000003, 0.400000006))
Barrel2Aweld=weld(m,HandleA,Barrel2A,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.69956398, -1.90001082, 0.0996513367, 7.91767434e-006, 0.999986649, 1.00916686e-005, 5.66189283e-006, 1.00917196e-005, -1, -0.999986649, 7.91773255e-006, -5.6618851e-006))
Barrel3A=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel3A",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel3Aweld=weld(m,HandleA,Barrel3A,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699560165, -1.90001285, 0.39963913, 7.91766342e-006, 0.999986649, 1.00919206e-005, 5.6613726e-006, 1.00919715e-005, -1, -0.999986649, 7.91772163e-006, -5.66136487e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200450897, -2.29999614, 0.699605942, 0.999986649, 2.01113654e-010, 4.28733493e-010, -4.34172753e-010, -5.51018218e-008, 1, 2.03384726e-010, -0.999986649, -5.48661063e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 0.210000008, 0.800000012))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.099697113, 1.70499849, 0.699567795, 0.999986649, 3.20816929e-010, 7.34710071e-011, -7.69249109e-011, -5.26488186e-008, 1, 3.22863347e-010, -0.999986649, -5.24188479e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.74000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0994491577, 0.699581146, 0.699999809, -0.999993324, -5.04537023e-010, -9.21580978e-010, 5.05673892e-010, -0.999993324, -1.46751713e-008, -9.23204069e-010, -1.47901815e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.599999964))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699541092, -0.600000381, -0.199619293, 1.87184355e-006, -0.999986649, 1.07918208e-006, -3.12210403e-007, -1.078938e-006, -1, 0.999986649, 1.87184094e-006, -3.12219839e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 0.400000006, 0.800000072))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100307465, -0.699611664, -0.599999905, 0.999986649, -5.68162184e-012, -1.03317355e-011, 3.40788509e-012, 0.999986649, -5.81779958e-010, 7.07311987e-012, 3.51557006e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.800000012))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399723053, 1.70499837, 0.699588776, 0.999979973, 3.28089528e-010, -3.71732811e-010, 3.66905506e-010, -5.37965974e-008, 1, 3.32864347e-010, -0.999979973, -5.34519344e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.74000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 1.39999986, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0995674133, 0.899999619, 0.699586868, 0.999986649, 1.66285097e-010, 3.84224985e-010, -3.87478327e-010, -5.54243442e-008, 1, 1.68558861e-010, -0.999986649, -5.51948673e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399646759, 1.6999985, 0.699571609, 0.999979973, 1.84390309e-010, 3.75398046e-011, -4.23643343e-011, -5.66705758e-008, 1, 1.88255633e-010, -0.999979973, -5.63259412e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.39999986, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399570465, 0.899999619, 0.699586868, 0.999986649, 1.90463506e-010, 4.11560452e-010, -4.14813461e-010, -5.52680746e-008, 1, 1.92737243e-010, -0.999986649, -5.50385977e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.400000006, 0.400000066))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0996818542, -0.699586868, 4.76837158e-007, 0.999986649, 1.94817495e-011, 5.78722625e-011, -2.17554863e-011, 0.999986649, -1.31851685e-009, -6.112999e-011, 1.08828324e-009, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410079956, -0.700000763, -0.000110626221, 0.999986649, 3.13225945e-010, 5.58399271e-010, -5.638357e-010, -5.12430809e-008, 1, 3.15497045e-010, -0.999986649, -5.1007305e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.99999988, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399532318, -1.19999957, 0.699613571, 0.999986649, 1.96598182e-010, 4.09048739e-010, -4.12301748e-010, -5.60532456e-008, 1, 1.98871919e-010, -0.999986649, -5.58237794e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000102996826, -0.700000763, -0.405073166, 0.999986649, 2.9397576e-010, 4.77100359e-010, -4.82539675e-010, -5.1360427e-008, 1, 2.9624686e-010, -0.999986649, -5.11246618e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0994491577, 0.699581146, -1.69999957, -0.999993324, -5.04537023e-010, -9.21580978e-010, 5.05673892e-010, -0.999993324, -1.46751713e-008, -9.23204069e-010, -1.47901815e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699573517, -0.900001526, 0.400360107, 2.85113401e-006, -0.999986649, 1.24874362e-006, -2.03818695e-006, -1.24850249e-006, -1, 0.999986649, 2.85112901e-006, -2.03822106e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200325012, 1.69999766, 0.699609756, 0.999986649, 6.62784883e-010, -1.45084575e-008, 1.45049066e-008, -5.6450606e-008, 1, 6.65740574e-010, -0.999986649, -5.62205251e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.800000012))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200233459, 1.70499849, 0.69960022, 0.999986649, 3.14450521e-010, 3.71330522e-010, -3.74782427e-010, -5.33727729e-008, 1, 3.1649694e-010, -0.999986649, -5.31428022e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.74000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0996131897, 1.69999862, 0.699584961, 0.999986649, 1.77117737e-010, 1.78062898e-010, -1.8151608e-010, -5.61730893e-008, 1, 1.79164156e-010, -0.999986649, -5.59431363e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-005, -0.700000763, 0.404912949, 0.999986649, 2.92983943e-010, 4.96789276e-010, -5.02226261e-010, -5.34053335e-008, 1, 2.95255043e-010, -0.999986649, -5.31695932e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000316619873, 0.699999809, 0.404588699, 0.999986649, 1.1153159e-010, 2.77556311e-010, -2.80811041e-010, -4.94035142e-008, 1, 1.13805299e-010, -0.999986649, -4.91739556e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0994491577, 0.699581146, 1.49999833, -0.999993324, -5.04537023e-010, -9.21580978e-010, 5.05673892e-010, -0.999993324, -1.46751713e-008, -9.23204069e-010, -1.47901815e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 1.80000019))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400295258, -0.699577332, -0.0999999046, 0.999986649, 2.07385775e-011, 6.28357366e-011, -2.30123143e-011, 0.999986649, -7.07412795e-010, -6.60934085e-011, 4.77189843e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.39999986, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200366974, 0.900000572, 0.699565887, 0.999986649, 1.9678098e-010, 4.23990953e-010, -4.27243796e-010, -5.48795889e-008, 1, 1.99054717e-010, -0.999986649, -5.46501049e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0994491577, 0.699581146, 1.09999835, -0.999993324, -5.04537023e-010, -9.21580978e-010, 5.05673892e-010, -0.999993324, -1.46751713e-008, -9.23204069e-010, -1.47901815e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.399999976, 0.399999946, 3.8599999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.39957428, -2.29999614, 0.699617386, 0.999986649, 2.06792028e-010, 4.21613855e-010, -4.27053171e-010, -5.59482594e-008, 1, 2.09063072e-010, -0.999986649, -5.5712551e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409893036, -0.700000763, -9.53674316e-005, 0.999986649, 3.06400627e-010, 5.35766098e-010, -5.41204637e-010, -5.17249639e-008, 1, 3.08671699e-010, -0.999986649, -5.14891987e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000228881836, 0.69989109, -0.405414581, 0.999986649, 9.22598942e-011, 2.078413e-010, -2.13284224e-010, -5.09687972e-008, 1, 9.45309664e-011, -0.999986649, -5.07330284e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409645081, 0.699999809, -0.000415802002, 0.999986649, 1.09286219e-010, 2.74369194e-010, -2.77624035e-010, -4.96409172e-008, 1, 1.11559956e-010, -0.999986649, -4.94113586e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409934998, 0.70000124, -2.0980835e-005, 0.999986649, 3.69289765e-010, 6.34756692e-010, -6.37979558e-010, -4.70661625e-008, 1, 3.71549347e-010, -0.999986649, -4.68323584e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 1.59999967, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0994720459, -1.00000167, 0.699565887, 0.999986649, 1.63843272e-010, 3.70188213e-010, -3.73441722e-010, -5.61400029e-008, 1, 1.66117037e-010, -0.999986649, -5.59105366e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699556351, -2.19999361, 0.400417328, -1.13278213e-006, 0.999986649, -1.23997575e-006, 3.2160392e-007, 1.23972927e-006, 1, 0.999986649, 1.13277952e-006, -3.21612873e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 0.80000025))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400325775, -0.699573517, -1.40000105, 0.999986649, 3.54179464e-011, 8.36694047e-011, -3.76917386e-011, 0.999986649, 3.27542438e-010, -8.69266326e-011, -5.57753843e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.399999976))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.69952774, -0.600001335, 0.299598694, 1.08607458e-006, -0.999986649, 1.22987899e-006, 2.51857699e-007, 1.22963252e-006, 1, -0.999986649, -1.08607196e-006, 2.51865629e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0994491577, 0.699581146, -1.10000062, -0.999993324, -5.04537023e-010, -9.21580978e-010, 5.05673892e-010, -0.999993324, -1.46751713e-008, -9.23204069e-010, -1.47901815e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.19999969, 0.400000006))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200454712, -1.59999967, 0.699554443, 0.999986649, 1.63983938e-010, 3.76599196e-010, -3.82038789e-010, -5.52081758e-008, 1, 1.6625501e-010, -0.999986649, -5.49724604e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.09948349, -1.89999557, 0.699590683, 0.999986649, 1.69683823e-010, 3.82608611e-010, -3.88048149e-010, -5.55553079e-008, 1, 1.71975129e-010, -0.999986649, -5.53195072e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

HandleB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","HandleB",Vector3.new(1, 1, 0.800000072))
HandleBweld=weld(m,Character["Left Arm"],HandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.34057617e-005, 0.000112533569, -8.82148743e-006, -5.13637077e-010, -9.34523126e-010, 0.999993324, 0.999993324, -1.55961271e-008, 5.12500209e-010, 1.54810991e-008, 0.999992251, 9.32938282e-010))
Barrel4A=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel4A",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel4Aweld=weld(m,HandleB,Barrel4A,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700273514, -1.89999568, -0.200382233, 7.9176798e-006, 0.999986649, 1.00922007e-005, 5.66249946e-006, 1.00922507e-005, -1, -0.999986649, 7.91774073e-006, -5.66249219e-006))
Barrel5A=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel5A",Vector3.new(0.400000006, 0.200000003, 0.400000006))
Barrel5Aweld=weld(m,HandleB,Barrel5A,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700338364, -1.89999771, 0.0996551514, 7.91767525e-006, 0.999986649, 1.00922598e-005, 5.662278e-006, 1.00923098e-005, -1, -0.999986649, 7.91773527e-006, -5.66227072e-006))
Barrel6A=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel6A",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel6Aweld=weld(m,HandleB,Barrel6A,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700332642, -1.89999914, 0.399604797, 7.91767798e-006, 0.999986649, 1.00922207e-005, 5.66242488e-006, 1.00922707e-005, -1, -0.999986649, 7.917738e-006, -5.66241761e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.39950943, -2.3000021, -0.700250626, 0.999986649, 2.24909646e-010, 4.70967154e-010, -4.74188411e-010, -5.56574378e-008, 1, 2.27183439e-010, -0.999986649, -5.54278046e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.800000012))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200298309, 1.70499992, -0.70026207, 0.999986649, 3.25459687e-010, 6.09574891e-010, -6.1279426e-010, -5.37770717e-008, 1, 3.27733451e-010, -0.999986649, -5.35474207e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.74000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 0.210000008, 0.800000012))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0996704102, 1.70499897, -0.700256348, 0.999986649, 3.25459326e-010, 6.09557238e-010, -6.12776663e-010, -5.28618074e-008, 1, 3.27733063e-010, -0.999986649, -5.26321386e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.74000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0994110107, -0.700311661, -1.70000124, -0.999993324, -5.12500209e-010, -9.32938282e-010, 5.13637077e-010, -0.999993324, -1.54810991e-008, -9.34530342e-010, -1.55962478e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0994110107, -0.700311661, 0.699999332, -0.999993324, -5.12500209e-010, -9.32938282e-010, 5.13637077e-010, -0.999993324, -1.54810991e-008, -9.34530342e-010, -1.55962478e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000354766846, 0.699999332, 0.404693604, 0.999986649, 1.1949472e-010, 2.8891356e-010, -2.92137314e-010, -5.02095787e-008, 1, 1.21768429e-010, -0.999986649, -4.9979878e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0994300842, -1.89999723, -0.700302124, 0.999986649, 1.81069548e-010, 4.05318112e-010, -4.08540202e-010, -5.60037847e-008, 1, 1.83343313e-010, -0.999986649, -5.57741586e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00016784668, -0.700058937, 0.404985428, 0.999986649, 5.06481115e-007, -8.88550039e-006, 8.88538398e-006, -1.53480414e-005, 1, 5.06347078e-007, -0.999986649, -1.53480123e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410140991, -0.700058937, -2.86102295e-005, 0.999986649, 5.06480035e-007, -8.88562045e-006, 8.88550676e-006, -1.53479523e-005, 1, 5.06345941e-007, -0.999986649, -1.53479305e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409835815, -0.700058699, -2.47955322e-005, 0.999986649, 5.06473384e-007, -8.88574777e-006, 8.88563409e-006, -1.53484561e-005, 1, 5.0633929e-007, -0.999986649, -1.53484343e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200374603, 1.69999969, -0.700273514, 0.999986649, 1.95510885e-010, 4.26103208e-010, -4.29325075e-010, -5.68092915e-008, 1, 1.9778465e-010, -0.999986649, -5.65796761e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 1.39999986, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0995597839, 0.899998665, -0.700296402, 0.999986649, 1.82185933e-010, 4.06940814e-010, -4.10131984e-010, -5.61190348e-008, 1, 1.84459698e-010, -0.999986649, -5.58892772e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 0.80000025))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400348663, 0.700309753, -1.39999938, 0.999986649, 4.33706404e-011, 9.50293177e-011, -4.56443772e-011, 0.999986649, 2.17802665e-010, -9.82245951e-011, -4.48304505e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.599999964))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.700330734, -0.600002289, -0.199569702, 1.87184696e-006, -0.999986649, 1.0768357e-006, -3.12246243e-007, -1.0765915e-006, -1, 0.999986649, 1.87184435e-006, -3.12255651e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.39999986, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399551392, 0.900000334, -0.700281143, 0.999986649, 2.12532297e-010, 4.46642945e-010, -4.4986459e-010, -5.53439889e-008, 1, 2.14806062e-010, -0.999986649, -5.51143557e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0994110107, -0.700311661, 1.49999881, -0.999993324, -5.12500209e-010, -9.32938282e-010, 5.13637077e-010, -0.999993324, -1.54810991e-008, -9.34530342e-010, -1.55962478e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0994110107, -0.700311661, -1.10000229, -0.999993324, -5.12500209e-010, -9.32938282e-010, 5.13637077e-010, -0.999993324, -1.54810991e-008, -9.34530342e-010, -1.55962478e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.399999976, 0.399999946, 0.559999943))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.19999969, 0.400000006))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200496674, -1.60000134, -0.700332642, 0.999986649, 1.74215392e-010, 3.95577848e-010, -3.98800049e-010, -5.57730289e-008, 1, 1.76489184e-010, -0.999986649, -5.55433957e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.39999986, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200405121, 0.900000334, -0.700304031, 0.999986649, 2.04794931e-010, 4.35489422e-010, -4.38711178e-010, -5.59133824e-008, 1, 2.07068696e-010, -0.999986649, -5.56837598e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.399999976))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.700307846, -0.600000143, 0.299545288, 1.0860814e-006, -0.999986649, 1.22885763e-006, 2.51865401e-007, 1.22861104e-006, 1, -0.999986649, -1.08607878e-006, 2.51873274e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.400000006, 0.400000066))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0996398926, 0.70029068, -2.14576721e-006, 0.999986649, 3.7787995e-011, 9.27144472e-011, -4.00617317e-011, 0.999986649, 1.00676356e-009, -9.59097246e-011, -1.23725208e-009, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200492859, -2.30000019, -0.700273514, 0.999986649, 2.13633666e-010, 4.54880855e-010, -4.58102278e-010, -5.5424934e-008, 1, 2.15907459e-010, -0.999986649, -5.51953008e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.99999988, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399505615, -1.20000219, -0.700250626, 0.999986649, 2.20402863e-010, 4.64567773e-010, -4.67789085e-010, -5.56560096e-008, 1, 2.22676655e-010, -0.999986649, -5.54263728e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.800000012))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399719238, 1.70499969, -0.700256348, 0.999986649, 3.29966443e-010, 6.15962115e-010, -6.19181484e-010, -5.33209956e-008, 1, 3.3224018e-010, -0.999986649, -5.3091334e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.74000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.400000006, 0.400000006, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0994110107, -0.700311661, 1.09999871, -0.999993324, -5.12500209e-010, -9.32938282e-010, 5.13637077e-010, -0.999993324, -1.54810991e-008, -9.34530342e-010, -1.55962478e-008, 1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.399999976, 0.399999946, 3.8599999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 1.80000019))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400318146, 0.700298309, -0.100000381, 0.999986649, 2.87218582e-011, 7.42863548e-011, -3.0995595e-011, 0.999986649, 3.27936789e-010, -7.74819098e-011, -5.58436852e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 0.400000006, 0.800000072))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100364685, 0.700286865, -0.600000858, 0.999986649, 2.75119372e-011, 7.16121606e-011, -2.97856739e-011, 0.999986649, 4.25513846e-010, -7.48077711e-011, -6.56010357e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.700284958, -0.900002718, 0.400382996, 2.85113333e-006, -0.999986649, 1.24790631e-006, -2.03824266e-006, -1.24766507e-006, -1, 0.999986649, 2.85112856e-006, -2.03827699e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409973145, 0.700000763, 8.39233398e-005, 0.999986649, 3.77252896e-010, 6.4611394e-010, -6.49305831e-010, -4.78722271e-008, 1, 3.79512477e-010, -0.999986649, -4.76382809e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000339508057, 0.699999332, -0.405292511, 0.999986649, 1.17249405e-010, 2.85726331e-010, -2.88950197e-010, -5.04469853e-008, 1, 1.19523141e-010, -0.999986649, -5.0217281e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409610748, 0.699999332, -0.000310897827, 0.999986649, 1.17249349e-010, 2.85726443e-010, -2.88950308e-010, -5.04469853e-008, 1, 1.19523086e-010, -0.999986649, -5.0217281e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.200000003, 0.210000008))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000164031982, -0.700058937, -0.405000687, 0.999986649, 5.06467813e-007, -8.88587419e-006, 8.88576051e-006, -1.53488418e-005, 1, 5.0633372e-007, -0.999986649, -1.53488199e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 1.59999967, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0994300842, -1.00000286, -0.700296402, 0.999986649, 1.7766863e-010, 4.00603883e-010, -4.03795108e-010, -5.63463871e-008, 1, 1.79942367e-010, -0.999986649, -5.61166367e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.70032692, -2.19999671, 0.400455475, -1.13279009e-006, 0.999986649, -1.23916982e-006, 3.2159258e-007, 1.23892323e-006, 1, 0.999986649, 1.13278747e-006, -3.21601505e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0995979309, 1.69999874, -0.700267792, 0.999986649, 1.93360383e-010, 4.22906765e-010, -4.26128688e-010, -5.61221967e-008, 1, 1.9563412e-010, -0.999986649, -5.58925741e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399623871, 1.69999945, -0.70026207, 0.999986649, 1.97764305e-010, 4.29296765e-010, -4.32518632e-010, -5.65812428e-008, 1, 2.00038042e-010, -0.999986649, -5.63516203e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

BackHandle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","BackHandle",Vector3.new(0.800000012, 0.600000024, 1.20000005))
BackHandleweld=weld(m,Character["Torso"],BackHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000143051147, 0.799930573, 0.20047307, 0.999993324, -1.62740506e-008, 2.05381559e-010, 2.06515763e-010, 6.19668095e-010, -0.999993324, 1.61529243e-008, 0.999992371, 6.15865525e-010))
JointConnectorA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","JointConnectorA",Vector3.new(0.600000024, 0.400000066, 0.800000012))
JointConnectorAweld=weld(m,BackHandle,JointConnectorA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.86645508e-005, -0.797990799, -0.199465752, -1.34834088e-011, -0.999986649, -8.9196428e-012, 0.999986649, -1.12150289e-011, -9.5399777e-010, 7.12287118e-010, -1.33471012e-012, 0.999969482))
mesh("CylinderMesh",JointConnectorA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
JointConnectorB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","JointConnectorB",Vector3.new(0.600000024, 0.400000066, 0.800000012))
JointConnectorBweld=weld(m,BackHandle,JointConnectorB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.95910645e-005, 0.80194664, -0.199468851, -1.46291035e-011, -0.999986649, -5.74146286e-012, 0.999986649, -1.23607374e-011, -5.9252514e-010, 3.50306451e-010, 1.86239912e-012, 0.999984741))
mesh("CylinderMesh",JointConnectorB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.600000024, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.47955322e-005, -8.01086426e-005, 0.699928761, 0.999986649, 1.23872718e-011, -5.78133594e-008, 1.01188918e-011, -0.999986649, 1.65803482e-011, -5.75726382e-008, -2.4165725e-011, -0.999969482))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.05718994e-005, 0.199935913, 0.899125814, 0.999986649, 6.78561374e-012, -5.93669185e-008, 4.51723381e-012, -0.999986649, 2.27040609e-014, -5.91262115e-008, -7.60785879e-012, -0.999969482))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, 0.500015259, -0.199979782, -3.37949113e-012, -0.999979973, 5.4230509e-012, 0.999979973, 1.14908083e-014, -1.20904176e-010, -2.39820608e-010, 1.46018753e-011, 0.999969482))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2.01999998, 0.600000024, 0.210000008))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.300014019, 0.394981384, 0.999986649, 1.15046861e-014, -1.90425431e-012, -2.39820608e-010, 1.46018753e-011, 0.999969482, -2.25686136e-012, -0.999986649, 7.01660952e-012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000003, 0.410000086))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.90501976, 0.100106955, 0.904968262, 0.999982357, 1.14569465e-012, -1.22765798e-010, -1.18957288e-010, 1.83945081e-011, 0.999965191, -1.12268528e-012, -0.999986649, 1.08093534e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.210000008, 0.200000003, 0.810000062))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.905035019, 0.500083685, 1.30494308, 0.999986649, 2.27988461e-012, -2.43625564e-010, 1.90603111e-012, 2.21874186e-011, 0.999969482, 1.15185639e-014, -0.999986649, 1.46020418e-011))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000018, 0.410000086))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.904981613, 0.100171328, 0.904911041, 0.999986589, 3.41407458e-012, -3.64481778e-010, 1.22762245e-010, 2.5980329e-011, 0.999969423, 1.14569465e-012, -0.999986649, 1.83948967e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.210000008, 0.600000024, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.904953003, 0.300099134, 1.20991135, 0.999986649, 3.41407458e-012, -3.64483554e-010, 1.22764021e-010, 2.5980329e-011, 0.999969482, 1.14569465e-012, -0.999986649, 1.83948967e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000003, 0.810000062))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.904973984, 0.300121784, 1.30490875, 0.999986649, 3.41407458e-012, -3.64483554e-010, 1.22764021e-010, 2.5980329e-011, 0.999969482, 1.14569465e-012, -0.999986649, 1.83948967e-011))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.210000008, 0.200000003, 0.810000062))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.904973984, 0.100127697, 1.30490875, 0.999986649, 3.41407458e-012, -3.64483554e-010, 1.22764021e-010, 2.5980329e-011, 0.999969482, 1.14569465e-012, -0.999986649, 1.83948967e-011))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000003, 0.810000062))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.904958725, 0.300130844, 1.30488205, 0.999986649, 4.54826454e-012, -4.85337992e-010, 2.43620235e-010, 2.97732949e-011, 0.999969482, 2.27989849e-012, -0.999986649, 2.21878071e-011))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.210000008, 0.600000024, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.904930115, 0.300135851, 1.2098465, 0.999986649, 5.68245451e-012, -6.06190653e-010, 3.64476449e-010, 3.35663164e-011, 0.999969482, 3.41407458e-012, -0.999986649, 2.59807731e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.210000008, 0.200000018, 0.410000086))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.904924393, 0.300127745, 0.904846191, 0.999986649, 5.68245451e-012, -6.06190653e-010, 3.64476449e-010, 3.35663164e-011, 0.999969482, 3.41407458e-012, -0.999986649, 2.59807731e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.210000008, 0.600000024, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.904916763, 0.300007582, 0.599971771, 0.999979496, 1.14568077e-012, -1.22764021e-010, -1.18957288e-010, 1.83944526e-011, 0.99996233, -1.12268528e-012, -0.999986649, 1.08093534e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.210000008, 0.200000003, 0.810000062))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.904888153, 0.50006032, 1.3048172, 0.999986649, 6.81664447e-012, -7.27041538e-010, 4.8532911e-010, 3.73593934e-011, 0.999969482, 4.54827842e-012, -0.999986649, 2.97737945e-011))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000018, 0.410000086))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.904928207, 0.500139236, 0.904846191, 0.999986649, 5.68245451e-012, -6.06190653e-010, 3.64476449e-010, 3.35663164e-011, 0.999969482, 3.41407458e-012, -0.999986649, 2.59807731e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000003, 0.410000086))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.904945374, 0.50014782, 0.904872894, 0.999986649, 4.54826454e-012, -4.85339768e-010, 2.43622011e-010, 2.97732949e-011, 0.999969482, 2.27989849e-012, -0.999986649, 2.21878071e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.210000008, 0.200000003, 0.410000086))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.904937744, 0.300155163, 0.904872894, 0.999986649, 4.54826454e-012, -4.85339768e-010, 2.43622011e-010, 2.97732949e-011, 0.999969482, 2.27989849e-012, -0.999986649, 2.21878071e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-005, -0.299953461, 0.199994802, -1.12268528e-012, -0.999986649, 1.08093534e-011, 0.999978065, 1.14568077e-012, -1.22764021e-010, -1.18957288e-010, 1.83944526e-011, 0.999960899))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.210000008, 0.600000024, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.905002594, 0.299999952, 0.599971771, 0.999982357, 1.14569465e-012, -1.22765798e-010, -1.18957288e-010, 1.83945081e-011, 0.999965191, -1.12268528e-012, -0.999986649, 1.08093534e-011))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.210000008, 0.200000003, 0.810000062))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.904874802, 0.100106001, 1.30477905, 0.999986649, 7.95083444e-012, -8.47890647e-010, 6.06181771e-010, 4.11525813e-011, 0.999969482, 5.68245451e-012, -0.999986649, 3.35668715e-011))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.600000024, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -3.81469727e-005, 0.700012445, -0.999986649, -2.26865748e-012, -2.95600895e-008, 2.77555756e-016, -0.999986649, 9.21701604e-012, -2.98023206e-008, 1.68021708e-011, 0.999969482))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.701107025, -1.20487595, 0.300156593, 0.999986649, 4.54826454e-012, -4.85339768e-010, -2.27989849e-012, 0.999986649, -2.21878071e-011, 2.43622011e-010, 2.97732949e-011, 0.999969482))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-005, -0.499929428, -0.199991226, -2.24531505e-012, -0.999979973, 9.21596133e-012, 0.999979973, 1.14568077e-012, -2.41730191e-010, -1.18957288e-010, 1.83946192e-011, 0.999969482))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699016571, -1.20474625, 0.29998374, 0.999986649, 9.0850244e-012, -9.68737979e-010, -6.81665835e-012, 0.999986649, -3.73600595e-011, 7.27029104e-010, 4.49458248e-011, 0.999969482))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.200000003, 0.210000008, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499229431, -1.20484924, 0.299696445, 0.999986589, 5.68245451e-012, -6.0619243e-010, -3.41407458e-012, 0.999986649, -1.83948967e-011, 3.64476449e-010, 2.5980329e-011, 0.999969423))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.210000008, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000780105591, -1.20481873, 0.299640179, 0.999986649, 6.81664447e-012, -7.27043314e-010, -4.54827842e-012, 0.999986649, -1.46020418e-011, 4.85330887e-010, 2.21874186e-011, 0.999969482))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.200000003, 0.210000008, 0.200000003))
Partweld=weld(m,BackHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.500785828, -1.20478821, 0.299716949, 0.999986589, 7.95083444e-012, -8.47890647e-010, -5.68245451e-012, 0.999986649, -1.08092979e-011, 6.06181771e-010, 1.83945637e-011, 0.999969423))

JointHandleA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","JointHandleA",Vector3.new(0.600000024, 0.400000066, 0.800000012))
JointHandleAweld=weld(m,JointConnectorA,JointHandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.95910645e-005, -5.91278076e-005, -9.53674316e-007, 0.999986649, 1.01844921e-011, 6.03297412e-011, -1.24528582e-011, 0.999986649, 2.30521913e-009, -6.79519219e-011, -2.54792187e-009, 1))
mesh("CylinderMesh",JointHandleA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
GunConnectorA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Mid gray","GunConnectorA",Vector3.new(0.600000024, 0.200000003, 0.800000012))
GunConnectorAweld=weld(m,JointHandleA,GunConnectorA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-005, -1.10033035, -0.600126028, 0.999986649, -5.74137266e-011, -4.820222e-011, 5.51453327e-011, 0.999986649, -2.96968938e-009, 4.05803169e-011, 2.72697953e-009, 1))
mesh("CylinderMesh",GunConnectorA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld=weld(m,JointHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000270843506, 0.701763153, 0.601624489, 0.999986649, 2.62356498e-010, 1.72325603e-008, 2.64626931e-010, -0.999986649, -1.20365556e-007, 1.72399481e-008, 1.20606614e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld=weld(m,JointHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000247955322, 0.501737595, 0.601624966, 0.999986649, 2.5675484e-010, 1.72236128e-008, 2.5902322e-010, -0.999986649, -3.20770077e-010, 1.72309988e-008, 5.63439961e-010, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld=weld(m,JointHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000305175781, -0.901706696, -0.601625204, 0.999986649, -3.76128156e-011, 1.66311658e-008, 3.53444635e-011, 0.999986649, -4.45636417e-010, -1.66385625e-008, 2.02958539e-010, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 1.19999993))
Partweld=weld(m,JointHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.301893234, 1.90734863e-005, -0.200528145, -3.0438152e-011, 0.999986649, 1.30145672e-010, -0.999986649, -2.81697998e-011, -3.97587518e-012, -1.15972232e-011, -3.72825326e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,JointHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.301876068, 1.52587891e-005, 0.49947238, -3.15723281e-011, 0.999986649, 2.5146818e-010, -0.999986649, -2.9303962e-011, -2.42461606e-012, -1.00464637e-011, -4.9414961e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,JointHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.301876068, 1.52587891e-005, -0.900527954, -3.15723281e-011, 0.999986649, 2.5146818e-010, -0.999986649, -2.9303962e-011, -2.42461606e-012, -1.00464637e-011, -4.9414961e-010, 1))

JointHandleB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","JointHandleB",Vector3.new(0.600000024, 0.400000066, 0.800000012))
JointHandleBweld=weld(m,JointConnectorB,JointHandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, -2.86102295e-005, -9.53674316e-007, 0.999986649, 7.93920485e-012, 4.95208874e-011, -1.02075709e-011, 0.999986649, 2.06251638e-009, -5.71430681e-011, -2.3052209e-009, 1))
mesh("CylinderMesh",JointHandleB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
GunConnectorB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Mid gray","GunConnectorB",Vector3.new(0.600000024, 0.200000003, 0.800000012))
GunConnectorBweld=weld(m,JointHandleB,GunConnectorB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.2479248e-005, 1.09965706, -0.600126028, 0.999986649, -6.42187553e-011, -7.10619341e-011, 6.19503615e-011, 0.999986649, -3.69769282e-009, 6.34394759e-011, 3.4549652e-009, 1))
mesh("CylinderMesh",GunConnectorB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld=weld(m,JointHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-005, 0.699949265, -0.600000381, 0.999986649, -5.30060024e-011, -6.93863855e-011, 5.07376224e-011, 0.999986649, -3.23638005e-009, 6.17638718e-011, 2.99365954e-009, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.200000063, 0.800000012))
Partweld=weld(m,JointHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, 0.899938583, -0.600000381, 0.999986649, -5.2982993e-011, -6.49554854e-011, 5.07146408e-011, 0.999986649, -3.23178284e-009, 5.73329162e-011, 2.98905789e-009, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.200000003, 0.800000012))
Partweld=weld(m,JointHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-005, 0.49993515, -0.600000381, 0.999986649, -3.48823748e-011, -1.28634325e-011, 3.26140087e-011, 0.999986649, -1.29975941e-009, 5.24147392e-012, 1.05705666e-009, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 1.19999993))
Partweld=weld(m,JointHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.298002243, 2.28881836e-005, -0.200527906, -2.9303962e-011, 0.999986649, 8.83737528e-012, -0.999986649, -2.7035596e-011, -1.70308212e-013, -7.79232234e-012, -2.51525911e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,JointHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.298007965, 2.28881836e-005, 0.499472857, -3.15723281e-011, 0.999986649, 8.81961171e-012, -0.999986649, -2.9303962e-011, 5.19134735e-012, -2.4307778e-012, -2.51514365e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=weld(m,JointHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.298036575, 1.90734863e-005, -0.900527716, -2.47674659e-011, 0.999986649, 2.51393573e-010, -0.999986649, -2.24990998e-011, -2.43050025e-012, -1.00525144e-011, -4.94083885e-010, 1))

GunHandleA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","GunHandleA",Vector3.new(0.600000024, 0.200000003, 0.800000012))
GunHandleAweld=weld(m,GunConnectorA,GunHandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000495910645, -0.00170707703, -0.00163197517, 0.999986649, 4.22736013e-011, 1.67127983e-008, -4.45420784e-011, 0.999986649, 6.05984596e-009, -1.67201968e-008, -6.30252028e-009, 1))
mesh("CylinderMesh",GunHandleA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Barrel1B=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel1B",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel1Bweld=weld(m,GunHandleA,Barrel1B,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299650192, -6.30939817, -0.0999298096, 7.04892182e-006, 0.999986649, 8.64386311e-006, -5.5855362e-006, -8.64395406e-006, 1, 0.999986649, -7.04897229e-006, 5.58554302e-006))
Barrel2B=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel2B",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Barrel2Bweld=weld(m,GunHandleA,Barrel2B,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299751282, -6.30939913, 0.110038757, 7.04892091e-006, 0.999986649, 8.64386493e-006, -5.58553575e-006, -8.64395315e-006, 1, 0.999986649, -7.04897093e-006, 5.58554211e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 4, 0.400000036))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0999755859, -3.99940777, 0.299608231, 0.999986649, 1.87717064e-011, 6.78319623e-011, -7.50084439e-011, -3.61608059e-008, 1, 2.10400725e-011, -0.999986649, -3.59122794e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.800000072, 0.200000003, 0.800000012))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299999237, -1.09940839, 0.299634933, 0.999986649, 2.82321666e-011, 7.93853872e-011, -8.65618688e-011, -3.57268064e-008, 1, 3.05005743e-011, -0.999986649, -3.5439804e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.410000026, 0.200000003, 0.420000017))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.103290558, -5.0994072, 0.299604416, 0.999986649, 2.4718419e-010, 1.99356975e-009, -2.00068051e-009, -5.15729184e-008, 1, 2.49452597e-010, -0.999986649, -5.13267508e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.800000072, 0.200000003, 0.800000012))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299999237, -1.69940782, 0.299634933, 0.999986649, 2.82321805e-011, 7.93853872e-011, -8.65618688e-011, -3.57193741e-008, 1, 3.05005604e-011, -0.999986649, -3.54472363e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.29961586, -0.200057983, 3.79895067, 2.13912638e-011, -0.999986649, -6.56187495e-008, -0.999986649, -1.91228977e-011, -5.76907411e-011, 6.48689991e-011, 6.58733015e-008, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 2.60000014, 0.400000006))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.10005188, -2.29933381, 0.299648285, 0.999986649, 2.75553191e-011, 7.10276282e-011, -7.82041099e-011, -3.55043284e-008, 1, 2.98236852e-011, -0.999986649, -3.52535992e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.410000026, 0.400000006, 0.420000017))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.105106354, -5.79940701, 0.299518585, 0.999986649, 3.70316972e-011, 1.00063957e-010, -1.07240439e-010, -3.55386618e-008, 1, 3.93000354e-011, -0.999986649, -3.52837048e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000006, 0.599999964))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.2996521, -0.299938202, 2.49895358, 5.95576388e-008, 0.999986649, -3.29861848e-007, 0.999986649, -5.95598699e-008, 1.04771942e-007, 1.04777698e-007, -3.29583315e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.200000033))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.10004425, -6.09940624, 0.299728394, 0.999986649, 4.31236297e-011, 1.27535316e-010, -1.34711797e-010, -3.54994683e-008, 1, 4.53919818e-011, -0.999986649, -3.52445113e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 4, 0.200000033))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100036621, -3.99940777, 0.299730301, 0.999986649, 4.15442264e-011, 1.24748212e-010, -1.31924693e-010, -3.54412393e-008, 1, 4.38125786e-011, -0.999986649, -3.51862823e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.600000024, 0.599999964))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299654007, -6.10351563e-005, 1.30104566, -1.30056219e-006, 0.999986649, -1.09659254e-006, -0.999986351, -1.30056003e-006, -2.5342942e-007, -2.53433171e-007, 1.09625705e-006, 0.999999702))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.599999964))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299655914, -0.399936676, 1.30104542, 1.31132742e-006, -0.999986529, 1.10181782e-006, 0.999986172, 1.35602795e-006, 2.03000127e-007, -2.03004603e-007, 1.10145118e-006, 0.999999702))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000072, 0.400000095, 0.800000012))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299999237, -1.39940763, 0.299631119, 0.999986649, 2.93663704e-011, 8.29771807e-011, -9.01501096e-011, -3.58695225e-008, 1, 3.16347365e-011, -0.999986649, -3.55525174e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299638748, 4.57763672e-005, 3.79895139, 5.95718248e-008, 0.999977767, -3.29568849e-007, 0.999977767, -5.9575239e-008, 1.0476812e-007, 1.04775012e-007, -3.29288326e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000006, 0.400000095))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299846649, -0.299566269, -1.99945617, 0.999986649, 1.37982542e-011, 5.55164803e-011, -1.60665647e-011, 0.999986649, 5.41747536e-009, -6.26894092e-011, -5.6728342e-009, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.400000036, 0.200000003, 0.800000012))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.09998703, -6.09940815, 0.299606323, 0.999986649, 2.55307581e-011, 8.1385565e-011, -8.85584939e-011, -3.59121159e-008, 1, 2.77990686e-011, -0.999986649, -3.56571626e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.410000026, 0.200000003, 0.420000017))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.105091095, -4.0994091, 0.299537659, 0.999977767, 3.94622668e-011, 1.05954356e-010, -1.15194965e-010, -3.5688295e-008, 1, 4.29140057e-011, -0.999977767, -3.54158836e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.400000006, 2))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0999565125, -0.299642563, 0.000543832779, 0.999986649, 2.77870227e-011, 7.3027806e-011, -3.00553471e-011, 0.999986649, 5.58665203e-009, -8.02007349e-011, -5.83997073e-009, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299556732, -2.59933615, -0.69916153, 1.6257079e-010, -0.999993324, -1.67127823e-009, 4.52045246e-009, -1.79694659e-009, 1, -0.999993324, -1.61436628e-010, 4.52407178e-009))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9944765",Vector3.new(0, 0, 0),Vector3.new(0.439999998, 0.440000027, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.420000017, 0.399999857, 0.240000039))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0899353027, -5.79940748, 0.299671173, 0.999986649, 4.13125367e-011, 1.22746258e-010, -1.29922739e-010, -3.55472736e-008, 1, 4.35809028e-011, -0.999986649, -3.5296388e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.420000017, 0.200000003, 0.240000039))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0899467468, -4.09941006, 0.299654007, 0.999986649, 3.59194202e-011, 1.14781074e-010, -1.21957555e-010, -3.60487249e-008, 1, 3.81877863e-011, -0.999986649, -3.579785e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.420000017, 0.200000003, 0.240000039))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0910987854, -5.0994072, 0.299730301, 0.999986649, 2.46745208e-010, 2.0127402e-009, -2.01985095e-009, -5.18812868e-008, 1, 2.49013615e-010, -0.999986649, -5.1637155e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 2.60000014, 0.400000006))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499950409, -1.29932857, 0.299531937, 0.999986649, 1.50425006e-010, 1.78168413e-009, -1.78883752e-009, -5.6819303e-008, 1, 1.52693469e-010, -0.999986649, -5.65730751e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.299625397, -0.400112152, 2.69894886, 1.28948019e-010, -0.999986649, -4.97068584e-007, -0.999986649, -1.26930494e-010, 5.04395871e-007, -5.04382001e-007, 4.97311134e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000036, 0.599999964))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.299612045, -0.50005722, 0.301045656, -1.25586371e-006, 0.999986649, -1.09769735e-006, -0.999986649, -1.25586166e-006, -2.53439595e-007, -2.53444767e-007, 1.09743087e-006, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 2.5999999, 0.400000036))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699977875, -1.29938722, 0.299581528, 0.999986649, 3.30914324e-011, 9.33244593e-011, -1.00529363e-010, -3.58384717e-008, 1, 3.53800877e-011, -0.999986649, -3.55875578e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.400000036, 0.399999857, 0.400000036))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699893951, -2.59933877, 0.2995224, 0.999986649, 3.47104429e-011, 1.21461952e-010, -1.28638433e-010, -3.68895847e-008, 1, 3.69788089e-011, -0.999986649, -3.66408948e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.800000012))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0999526978, -6.10440731, 0.299612045, 0.999986649, 4.19847213e-011, 1.15514709e-010, -1.22691191e-010, -3.73906026e-008, 1, 4.42530734e-011, -0.999986649, -3.71397419e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.210000008, 0.200000033))
Partweld=weld(m,GunHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100048065, -6.10440731, 0.29970932, 0.999986649, 3.88416105e-011, 1.19168675e-010, -1.26345157e-010, -3.58849448e-008, 1, 4.11099904e-011, -0.999986649, -3.56340664e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.620000005))

GunHandleB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","GunHandleB",Vector3.new(0.600000024, 0.200000003, 0.800000012))
GunHandleBweld=weld(m,GunConnectorB,GunHandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.19616699e-005, -7.62939453e-006, -1.66893005e-006, 0.999986649, 1.24759092e-011, 7.23904825e-011, -1.47443169e-011, 0.999986649, 2.54799559e-009, -8.00138289e-011, -2.79077916e-009, 1))
mesh("CylinderMesh",GunHandleB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Barrel3B=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel3B",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Barrel3Bweld=weld(m,GunHandleB,Barrel3B,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.298568726, -6.3110342, 0.109573364, 7.04887543e-006, 0.999986649, 8.64993217e-006, -5.60172384e-006, -8.65001311e-006, 1, 0.999986649, -7.04892591e-006, 5.60173248e-006))
Barrel4B=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"White","Barrel4B",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Barrel4Bweld=weld(m,GunHandleB,Barrel4B,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.298635483, -6.31103134, -0.10042572, 7.04887498e-006, 0.999986649, 8.64966933e-006, -5.60180706e-006, -8.64975755e-006, 1, 0.999986649, -7.04892545e-006, 5.60181343e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300489426, -2.59933567, -0.699710846, 2.66085681e-010, -0.999993324, -1.69247603e-008, -3.04048804e-008, -1.70460215e-008, 1, -0.999993324, -2.64950978e-010, -3.04012708e-008))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9944765",Vector3.new(0, 0, 0),Vector3.new(0.439999998, 0.440000027, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.800000012))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.100124359, -6.10440683, -0.300443649, 0.999986649, 1.39920048e-010, 3.49109297e-010, -3.54513918e-010, -5.19872998e-008, 1, 1.42181072e-010, -0.999986649, -5.17518686e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000072, 0.400000095, 0.800000012))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300243378, -1.39940548, -0.300363541, 0.999986649, 1.51865548e-010, 3.62255059e-010, -3.67659569e-010, -4.92494365e-008, 1, 1.54126545e-010, -0.999986649, -4.90139769e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 2.5999999, 0.400000036))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699794769, -1.299366, -0.300420761, 0.999986649, 1.22327856e-010, 3.10851983e-010, -3.16283805e-010, -4.91525753e-008, 1, 1.24598942e-010, -0.999986649, -4.89167107e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.200000033))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0998840332, -6.09941149, -0.300338745, 0.999986649, 1.75362419e-010, -3.21161819e-010, 3.15980297e-010, -5.09166682e-008, 1, 1.77860865e-010, -0.999986649, -5.06810736e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300373077, -0.000152587891, 3.79894924, 5.94459806e-008, 0.999993324, -3.15209547e-007, 0.999993324, -5.94470819e-008, 1.05053815e-007, 1.05056905e-007, -3.15086055e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 4, 0.200000033))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0998573303, -3.99940681, -0.300294876, 0.999986649, 1.62245842e-010, 4.01816996e-010, -4.09433931e-010, -5.10763698e-008, 1, 1.64514263e-010, -0.999986649, -5.08343021e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.400000036, 0.399999857, 0.400000036))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699703217, -2.5993371, -0.300477982, 0.999986649, 1.59587107e-010, 3.70679432e-010, -3.7608372e-010, -5.124447e-008, 1, 1.61855473e-010, -0.999986649, -5.10089535e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.600000024, 0.599999964))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300346375, 7.62939453e-005, 1.30104756, -1.25599331e-006, 0.999986649, -1.08324866e-006, -0.999986649, -1.25599138e-006, -2.53723101e-007, -2.53726483e-007, 1.08299741e-006, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.420000017, 0.200000003, 0.240000039))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0897331238, -4.09940767, -0.300321579, 0.999986649, 1.75541956e-010, 4.23136887e-010, -4.28540536e-010, -4.99766983e-008, 1, 1.77802967e-010, -0.999986649, -4.97412458e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300380707, -0.399925232, 2.69894695, 2.54958943e-010, -0.999986649, -5.11322526e-007, -0.999986649, -2.52948495e-010, 5.04145078e-007, -5.0413297e-007, 5.11551889e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.420000017, 0.200000003, 0.240000039))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0896949768, -5.09941053, -0.300304413, 0.999986649, 2.16437007e-010, 5.04708164e-010, -5.10111731e-010, -4.76247095e-008, 1, 2.18473767e-010, -0.999986649, -4.74842494e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 2.60000014, 0.400000006))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499893188, -1.29933453, -0.30043602, 0.999986649, 1.24942667e-010, 3.0064895e-010, -3.06080966e-010, -4.97747621e-008, 1, 1.2721374e-010, -0.999986649, -4.95389116e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.410000026, 0.200000003, 0.420000017))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.105361938, -5.09940863, -0.300439835, 0.999986649, 2.19144619e-010, 4.92763108e-010, -4.98166786e-010, -4.75694506e-008, 1, 2.21181351e-010, -0.999986649, -4.74289905e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000036, 0.599999964))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300424576, -0.499774933, 0.301050901, -1.16660328e-006, 0.999986649, -1.08499785e-006, -0.999986649, -1.16660124e-006, -2.5373717e-007, -2.53740467e-007, 1.08474649e-006, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.800000072, 0.200000003, 0.800000012))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.30022049, -1.09940672, -0.300344467, 0.999986649, 1.32488548e-010, 3.23731736e-010, -3.29136274e-010, -4.74834252e-008, 1, 1.34745423e-010, -0.999986649, -4.72433328e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.410000026, 0.200000003, 0.420000017))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.105297089, -4.09940767, -0.30047226, 0.999993324, 1.69849676e-010, 3.96380623e-010, -4.0018916e-010, -4.98077881e-008, 1, 1.70983894e-010, -0.999993324, -4.96867543e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.400000006, 2))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.100025177, 0.300323486, 0.000544548035, 0.999986649, 1.76003934e-011, 4.28246882e-011, -1.9868801e-011, 0.999986649, 1.89625915e-009, -5.04464248e-011, -2.13898055e-009, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.420000017, 0.399999857, 0.240000039))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0897445679, -5.79940653, -0.300327301, 0.999986649, 1.55701896e-010, 3.90041111e-010, -3.97658184e-010, -5.18663867e-008, 1, 1.5797029e-010, -0.999986649, -5.16243261e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.399999976))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300367355, -0.199840546, 3.79894853, 1.59872254e-010, -0.999986649, -7.96914179e-008, -0.999986649, -1.57611257e-010, -3.62458841e-010, 3.67863295e-010, 7.99264726e-008, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 2.60000014, 0.400000006))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0998916626, -2.29933071, -0.300395966, 0.999986649, 1.41108e-010, 3.18053445e-010, -3.23485155e-010, -5.00977677e-008, 1, 1.43379086e-010, -0.999986649, -4.98619173e-008))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000006, 0.400000095))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300045013, 0.300441742, -1.99945283, 0.999986649, 1.41472348e-010, 3.41166845e-010, -1.43733345e-010, 0.999986649, 1.990154e-008, -3.46571577e-010, -2.0137394e-008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.400000036, 0.200000003, 0.800000012))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.100158691, -6.09941149, -0.300437927, 0.999986649, 1.56263169e-010, -7.46887552e-011, 6.95088431e-011, -5.0951229e-008, 1, 1.58761615e-010, -0.999986649, -5.07156344e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.410000026, 0.400000006, 0.420000017))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.105251312, -5.79940557, -0.300508499, 0.999986649, 1.52321961e-010, 3.68549413e-010, -3.76166764e-010, -5.18612779e-008, 1, 1.54590341e-010, -0.999986649, -5.16192173e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.599999964))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300346375, -0.400138855, 1.30104756, 1.31146123e-006, -0.999986529, 1.0877593e-006, 0.999986172, 1.35616187e-006, 2.03296949e-007, -2.03299621e-007, 1.08741017e-006, 0.999999702))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000036, 4, 0.400000036))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.10011673, -3.99940634, -0.300430298, 0.999986649, 1.33827005e-010, 3.36718153e-010, -3.44335921e-010, -5.2595162e-008, 1, 1.36095413e-010, -0.999986649, -5.23531156e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Bright orange","Part",Vector3.new(0.800000072, 0.200000003, 0.800000012))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300197601, -1.69940472, -0.300382614, 0.999986649, 1.56137825e-010, 3.67033265e-010, -3.72437692e-010, -5.02825515e-008, 1, 1.58399002e-010, -0.999986649, -4.98551174e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.400000006, 0.599999964))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.300363541, -0.300140381, 2.49895048, 5.94261316e-008, 0.999986649, -3.15601568e-007, 0.999986649, -5.9428352e-008, 1.05065951e-007, 1.05069944e-007, -3.15336081e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.210000008, 0.200000033))
Partweld=weld(m,GunHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0998954773, -6.10440683, -0.300350189, 0.999986649, 1.26621949e-010, 3.31786959e-010, -3.39404865e-010, -5.15411713e-008, 1, 1.28890357e-010, -0.999986649, -5.12991107e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.620000005))

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

function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
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
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
prt.CanCollide = false
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
local efprt=part(3,Parent,"Neon",0,0.5,BrickColor.new("Bright orange"),"Effect",vt(0.2,0.2,0.2))
efprt.Anchored=true
local efmsh=mesh("CylinderMesh",efprt,"","",vt(0,0,0),vt(1,1,1))
local spread=vt((math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7)*(Prt.Position-mouse.Hit.p).magnitude/100
--spread=vt(0,0,0)
coroutine.resume(coroutine.create(function(Part,Mesh,Spreaded) 
game:GetService("Debris"):AddItem(Part,6)
local TheHit=mouse.Hit.p
local MouseLook=cf((Prt.Position+TheHit)/2,TheHit+Spreaded)
local hit,pos = rayCast(Prt.Position,MouseLook.lookVector,1000,Parent)
so("Elec",Prt,0.2,1) 
local tefprt=part(3,workspace,"Neon",0,1,BrickColor.new("Black"),"Effect",vt(0.2,0.2,0.2))
tefprt.CFrame=cf(pos)
MagicCircle(BrickColor.new("Bright orange"),cf(pos),0.5,0.5,0.5,0.5,0.5,0.5,0.04)
so("Elec",tefprt,0.3,1) 
game:GetService("Debris"):AddItem(tefprt,3)
Part.CFrame=CFrame.new((Prt.Position+pos)/2,pos)*angles(1.57,0,0) 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
hit.Parent.Humanoid:TakeDamage(15)
MagniDamage(efprt,hit,20,10,20,30,"Normal")
end 
end 
local mag=(Prt.Position-pos).magnitude 
MagicCylinder(BrickColor.new("Bright orange"),Part.CFrame,1,mag*5,1,0.5,0,0.5,0.05)
Part.Parent=nil
end),efprt,efmsh,spread)
end

function attackone()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
JointHandleAweld.C0=clerp(JointHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
JointHandleBweld.C0=clerp(JointHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
GunHandleAweld.C0=clerp(GunHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
GunHandleBweld.C0=clerp(GunHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=268192025",Barrel2A,1,1) 
so("http://roblox.com/asset/?id=268191996",Barrel2A,1,1) 
so("http://roblox.com/asset/?id=268191976",Barrel2A,1,1) 
ShootCannon(Barrel2A)
ShootCannon(Barrel1A)
ShootCannon(Barrel3A)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-3),math.rad(3),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(130)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-130),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
JointHandleAweld.C0=clerp(JointHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
JointHandleBweld.C0=clerp(JointHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
GunHandleAweld.C0=clerp(GunHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
GunHandleBweld.C0=clerp(GunHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
end
attack = false
end

function attacktwo()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(130),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
JointHandleAweld.C0=clerp(JointHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
JointHandleBweld.C0=clerp(JointHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
GunHandleAweld.C0=clerp(GunHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
GunHandleBweld.C0=clerp(GunHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=268192025",Barrel5A,1,1) 
so("http://roblox.com/asset/?id=268191996",Barrel5A,1,1) 
so("http://roblox.com/asset/?id=268191976",Barrel5A,1,1) 
ShootCannon(Barrel5A)
ShootCannon(Barrel4A)
ShootCannon(Barrel6A)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(150), math.rad(-60), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(130),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
JointHandleAweld.C0=clerp(JointHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
JointHandleBweld.C0=clerp(JointHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
GunHandleAweld.C0=clerp(GunHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
GunHandleBweld.C0=clerp(GunHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
end
attack = false
end

local Effects={}
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Block1",delay,x3,y3,z3}) --part, type, delay
end

function MagicCylinder2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Character,"Neon",0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
--table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3})
Effects[#Effects+1]={prt,"Cylinder",delay,x3,y3,z3} --part, type, delay
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

RocketTarget = RootPart
function ShootCannon(asd)
so("rbxassetid://263623156",asd,.5,1) 
so("rbxassetid://263610152",asd,.5,1) 
so("rbxassetid://263623139",asd,.5,1) 
local MainPos=asd.Position
local MainPos2=mouse.Hit.p
local MouseLook=cf((MainPos+MainPos2)/2,MainPos2)
--[[local mag=(MainPos-pos).magnitude 
MagicCylinder(BrickColor.new("Neon"),CFrame.new((MainPos+pos)/2,pos)*angles(1.57,0,0),1,mag*5,1,0.5,0,0.5,0.05)]]
num=30
coroutine.resume(coroutine.create(function() 
repeat
wait()
local hit,pos = rayCast(MainPos,MouseLook.lookVector,10,RocketTarget.Parent)
local mag=(MainPos-pos).magnitude 
MagicCylinder2(BrickColor.new("Bright orange"),CFrame.new((MainPos+pos)/2,pos)*angles(1.57,0,0),3,mag*5,3,1.5,0,1.5,0.1)
MainPos=MainPos+(MouseLook.lookVector*10)
num=num-1
if hit~=nil then
num=0
local ref=part(3,workspace,"Neon",0,1,BrickColor.new("Bright orange"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
MagniDamage(ref,hit,1,30,50,1,"Normal")
so("rbxassetid://263610039",ref,1,1) 
so("rbxassetid://263610111",ref,1,1) 
MagicBlock(BrickColor.new("Bright orange"),cf(pos),20,20,20,5,5,5,0.05)
game:GetService("Debris"):AddItem(ref,1)
MagniDamage(ref,ref,15,10,20,10,"Normal")
end
until num<=0
end))
end

function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh,num) 
for i=0,1,delay do
swait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,(math.random(0,1)+math.random())/5)
end

deeznuts = true

function BeamBlast()
if deeznuts==true then
deeznuts=false
attack = true
local n=2
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.5)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(100)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-100)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.5,-.5)*angles(math.rad(0),math.rad(90),math.rad(-20))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5,-.5)*angles(math.rad(0),math.rad(-90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
JointHandleAweld.C0=clerp(JointHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-80),math.rad(0)),.3)
JointHandleBweld.C0=clerp(JointHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-80),math.rad(0)),.3)
GunHandleAweld.C0=clerp(GunHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
GunHandleBweld.C0=clerp(GunHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
local orb=part(3,Character,"Neon",0,1,BrickColor.new("Bright orange"),"Orb",vt())
local omsh=mesh("SpecialMesh",orb,"Sphere","",vt(0,0,0),vt(15,15,15))
local owld=weld(orb,orb,Torso,cf(0,-1.5,8),cf(0,0,0))
so("http://roblox.com/asset/?id=169445572",orb,1,0.9)
so("http://roblox.com/asset/?id=169380495",orb,1,0.6)  
so("http://roblox.com/asset/?id=203691346",orb,1,0.9)
for i=1,0.3,-0.01 do
wait()
orb.Transparency=i
omsh.Scale=omsh.Scale+vt(0.5,0.5,0.5)
MagicBlock(BrickColor.new("Really black"),orb.CFrame,15,15,15,2,2,2,0.1)
local ef=part(3,workspace,"Neon",0,0,BrickColor.new("Bright orange"),"Effect",vt())
ef.Anchored=true
local emsh=mesh("SpecialMesh",ef,"Sphere","",vt(0,0,0),vt(2,math.random(1000,1500)/100,2))
local ceef=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(0,math.random(10,20),0)
ef.CFrame=orb.CFrame*ceef
game:GetService("Debris"):AddItem(ef,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.Transparency=i
Part.CFrame=Part.CFrame*cf(0,-1,0)
end
Part.Parent=nil
end),ef,emsh)
end
local Pos=cf(orb.Position,Player:GetMouse().Hit.p).lookVector
wait(.5)
orb.Parent=nil
local hit,pos = rayCast(orb.Position,Pos,999,Character)
local mag=(orb.Position-pos).magnitude 
MagicCircle(BrickColor.new("Bright orange"),cf(pos),15,15,15,8,8,8,0.02)
MagicBlock(BrickColor.new("Bright orange"),cf(pos),15,15,15,8,8,8,0.02)
MagicCylinder(BrickColor.new("Bright orange"),CFrame.new((orb.Position+pos)/2,pos)*euler(1.57,0,0),10,mag*5,10,0.5,0,0.5,0.01)
for i=1,2 do
MagicRing(BrickColor.new("Bright orange"),cf(pos)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),3,3,3,1,1,1,0.04)
end
for i=1,5 do
local tehcf=CFrame.new((orb.Position+pos)/2,pos)*euler(1.57,0,0)*cf(0,(mag/5)*(i/2),0)
MagicRing(BrickColor.new("Really black"),tehcf*euler(1.57,0,0),1,1,1,0.5,0.5,0.5,0.01)
end
for i=0,5 do
local tehcf=CFrame.new((orb.Position+pos)/2,pos)*euler(1.57,0,0)*cf(0,(-mag/5)*(i/2),0)
MagicRing(BrickColor.new("Bright orange"),tehcf*euler(1.57,0,0),1,1,1,0.5,0.5,0.5,0.01)
end
local ref=part(3,workspace,"Neon",0,1,BrickColor.new("Really black"),"Effect",vt())
ref.CFrame=cf(pos)
so("http://roblox.com/asset/?id=203691378",Torso,1,0.7) 
so("http://roblox.com/asset/?id=169445602",Torso,1,0.7) 
so("http://www.roblox.com/Asset?ID=203691282",Torso,1,.8) 
coroutine.resume(coroutine.create(function(Part) 
Part.Parent=nil
end),ref)
if hit~=nil then
MagniDamage(Part,hit,30,90,100,0,"Normal")
end
local n=2
for i = 0,1,0.03 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.5)* angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(150)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(-50), math.rad(-150)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.5,-.5)*angles(math.rad(0),math.rad(90),math.rad(-30))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5,-.5)*angles(math.rad(0),math.rad(-90),math.rad(20))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
JointHandleAweld.C0=clerp(JointHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-50),math.rad(0)),.3)
JointHandleBweld.C0=clerp(JointHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-50),math.rad(0)),.3)
GunHandleAweld.C0=clerp(GunHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
GunHandleBweld.C0=clerp(GunHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
deeznuts=true
end
attack = false
end


function QuadHailShot()
attack = true
Torso.Velocity=vt(0,200,0)
so("http://roblox.com/asset/?id=199145327",Torso,1,1)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(-6*i,math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(150), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(150), math.rad(-0), math.rad(-0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
JointHandleAweld.C0=clerp(JointHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-80),math.rad(0)),.3)
JointHandleBweld.C0=clerp(JointHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-80),math.rad(0)),.3)
GunHandleAweld.C0=clerp(GunHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
GunHandleBweld.C0=clerp(GunHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
ShootCannon(Barrel2A)
ShootCannon(Barrel5A)
so("http://roblox.com/asset/?id=203691837",Torso,1,1)
so("http://roblox.com/asset/?id=203691653",Torso,1,1)
so("http://www.roblox.com/asset/?id=138083993",Torso,1,.8)
for i = 1,10 do
LaserBarrage(Barrel1B)
LaserBarrage(Barrel3B)
LaserBarrage(Barrel2B)
LaserBarrage(Barrel4B)
--LaserBarrage(Barrel3B)
--LaserBarrage(Barrel4B)
end
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(90), math.rad(-0), math.rad(-0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
JointHandleAweld.C0=clerp(JointHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-10),math.rad(0)),.3)
JointHandleBweld.C0=clerp(JointHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-10),math.rad(0)),.3)
GunHandleAweld.C0=clerp(GunHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
GunHandleBweld.C0=clerp(GunHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
attack = false
end

mouse.Button1Down:connect(function()
if attack == false and attacktype == 1 then
attacktype = 2
attackone()
elseif attack == false and attacktype == 2 then
attacktype = 1
attacktwo()
end
end)

mouse.KeyDown:connect(function(k)
k=k:lower()
if attack == false and k == 'q' then
BeamBlast()
elseif attack == false and k == 'e' then
QuadHailShot()
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
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-30))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5,-.5)*angles(math.rad(0),math.rad(-90),math.rad(20))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
JointHandleAweld.C0=clerp(JointHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
JointHandleBweld.C0=clerp(JointHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
GunHandleAweld.C0=clerp(GunHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
GunHandleBweld.C0=clerp(GunHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(20)),.3)
JointHandleAweld.C0=clerp(JointHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
JointHandleBweld.C0=clerp(JointHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
GunHandleAweld.C0=clerp(GunHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
GunHandleBweld.C0=clerp(GunHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.3)* angles(math.rad(20),math.rad(0),math.rad(10)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(-10)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.5) * angles(math.rad(80), math.rad(0), math.rad(20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.5,-.5)*angles(math.rad(0),math.rad(80),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.5)*angles(math.rad(0),math.rad(-100),math.rad(20))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
JointHandleAweld.C0=clerp(JointHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
JointHandleBweld.C0=clerp(JointHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
GunHandleAweld.C0=clerp(GunHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
GunHandleBweld.C0=clerp(GunHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(30),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
JointHandleAweld.C0=clerp(JointHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
JointHandleBweld.C0=clerp(JointHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
GunHandleAweld.C0=clerp(GunHandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
GunHandleBweld.C0=clerp(GunHandleBweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
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
module[2] = {"Emotion Cube",function()
plyr = game.Players.LocalPlayer
char = plyr.Character
torso = char.Torso
head = char.Head
Run = game:service'RunService'
sizeCu = 2
local MODE = "Lime green"
coroutine.wrap(function()
while true do
coroutine.wrap(function()
		local charge = Instance.new("Part", char)
		charge.FormFactor = "Custom"
		charge.TopSurface = 0
		charge.BottomSurface = 0
		charge.Transparency = 0.4
		charge.BrickColor = BrickColor.new(MODE)
		charge.Anchored = true
		charge.CanCollide = false
		charge.Size = Vector3.new(sizeCu, sizeCu, sizeCu)
				charge.CFrame = head.CFrame * CFrame.new(0, 5.8, 0) * CFrame.Angles(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2))
		wait()
		for tra = 0.4, 1, 0.1 do
			charge.Transparency = tra
			wait()
		end
		charge:Destroy()
		end)()
		wait(0.06)
end
end)()

happy = {"yay", "good", "like", "come here", "yolo", "swag", "win","nice","xD" ,"lol","yus","yes","omg", "ogm", "umg", "thnx", "thx", "thanz", "thanx", "thank you", "thank yoo", "rofl", "hax" , "Z0mg", "hackz" , "hack","impossible","boss","epix","epic", "awesome"} --is THat Good, yes
anger = {"narb","bad","shut up", "noob", "get off","stop", "hate", "ugly", "bish","no", "idiot", "stfu", "gtfo" ,"fk y", "troll", "mad","angry"}
sad = {"sad","why?", "D:"}
plyr.Chatted:connect(function(msg)
	if msg:lower():match(string.lower("AFK")) or msg:upper():match(string.upper("AFK")) then
		MODE = "Br. yellowish orange"
	end
	
                for i, t in pairs(happy) do        
                        if msg:lower():match(string.lower(t)) or msg:upper():match(string.upper(t)) then
                                MODE = "Lime green"
                        end
                end
                for f, h in pairs(sad) do        
                        if msg:lower():match(string.lower(h)) or msg:upper():match(string.upper(h)) then
                                MODE = "Royal purple" ---Make it Purple
                        end
                end
                                for v, k in pairs(anger) do        
                        if msg:lower():match(string.lower(k)) or msg:upper():match(string.upper(k)) then
                                MODE = "Really red"
                        end
                end
        end) 




end}
module[3] = {"EpicSword",function()
me = game.Players.LocalPlayer
char = me.Character
selected = false
selanim = false
attacking = false
hurt = false
normaldmg = 25
jumpdmg = 30
jumpdist = 7
flipdist = 7
linedist = 30
splashdmg = 15
linecolors = {"Bright blue", "Light blue", "Medium blue", "Tr. Blue"}
dmg = normaldmg

function getnoobs(pos,dist)
local stoof = {}
for _,v in pairs(workspace:children()) do
local h,t = v:findFirstChild("Humanoid"), v:findFirstChild("Torso")
if h ~= nil and t ~= nil and v:IsA("Model") and v ~= char then
if (t.Position - pos).magnitude < dist then
table.insert(stoof,v)
end
end
end
return stoof
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

rarm = char:findFirstChild("Right Arm")
larm = char:findFirstChild("Left Arm")
torso = char:findFirstChild("Torso")
hum = char:findFirstChild("Humanoid")

slash = Instance.new("Sound",torso)
slash.Volume = 1
slash.Pitch = 1
slash.SoundId = "rbxasset://sounds\\swordslash.wav"

charge = Instance.new("Sound",torso)
charge.Volume = 1
charge.Pitch = 0.5
charge.SoundId = "http://www.roblox.com/asset/?id=2101137"

brek = Instance.new("Sound",torso)
brek.Volume = 1
brek.Pitch = 0.5
brek.SoundId = "http://www.roblox.com/asset/?id=2974249"

uns = Instance.new("Sound",torso)
uns.Volume = 1
uns.Pitch = 1
uns.SoundId = "rbxasset://sounds\\unsheath.wav"

absc = Instance.new("Sound",torso)
absc.Volume = 1
absc.Pitch = 0.34
absc.SoundId = "http://www.roblox.com/asset/?id=13775494"

jump = Instance.new("Sound",torso)
jump.Volume = 1
jump.Pitch = 2.4
jump.SoundId = "http://www.roblox.com/asset/?id=12222124"

pwns = Instance.new("Sound",torso)
pwns.Volume = 1
pwns.Pitch = 1.6
pwns.SoundId = "http://www.roblox.com/asset/?id=2974000"

bg = Instance.new("BodyGyro",nil)
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bg.P = 15000
bp = Instance.new("BodyPosition",nil)
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.P = 15000

pcall(function() char.Sword:remove() end)

mod = Instance.new("Model",char)
mod.Name = "Sword"

hold = Instance.new("Part")
prop(hold,mod,false,1,0,0.5,0.5,0.5,1,false,"Custom")
hw = Instance.new("Weld")
weld(hw,rarm,hold,0,0,0,0,1,0)

main = Instance.new("Part")
prop(main,mod,false,0,0.04,0.44,1.7,0.44,"Dark grey",false,"Custom")
Instance.new("CylinderMesh",main)
wewe = Instance.new("Weld")
weld(wewe,hold,nil,math.pi/2,0,math.pi/2,0,0,0)

torsohold = Instance.new("Weld")
weld(torsohold,torso,main,0,0,math.rad(36)+math.pi,-1.1,-1.65,-0.8)

sp = Instance.new("Part")
prop(sp,mod,false,0,0,0.6,0.4,0.6,"Navy blue",false,"Custom")
Instance.new("SpecialMesh",sp).MeshType = "Sphere"
w1 = Instance.new("Weld")
weld(w1,main,sp,0,0,0,0,0.8,0)

heh = Instance.new("Part")
prop(heh,mod,false,0,0.12,0.9,0.3,0.5,"Navy blue",false,"Custom")
w2 = Instance.new("Weld")
weld(w2,main,heh,0,0,0,0,-0.9,0)
Instance.new("BlockMesh",heh)

blade = Instance.new("Part")
prop(blade,mod,false,0,0.1,0.65,4,0.15,"Medium grey",false,"Custom")
w3 = Instance.new("Weld")
weld(w3,heh,blade,0,0,0,0,-blade.Size.Y/2,0)
Instance.new("BlockMesh",blade)

tip = Instance.new("Part")
prop(tip,mod,false,0,0.1,0.46,0.46,0.12,"Medium grey",false,"Custom")
w4 = Instance.new("Weld")
weld(w4,blade,tip,0,0,math.pi/4,0,-blade.Size.Y/2,0)
Instance.new("BlockMesh",tip)

lols = {}
touchs = {}
table.insert(lols,blade)
table.insert(lols,tip)
table.insert(touchs,blade)
table.insert(touchs,tip)

for i=blade.Size.Y/2,-blade.Size.Y/2,-0.2 do
local pf = Instance.new("Part")
prop(pf,mod,false,1,0,0.65,0.1,0.15,1,false,"Custom")
local wa = Instance.new("Weld")
weld(wa,blade,pf,0,0,0,0,i,0)
table.insert(touchs,pf)
end

rb = Instance.new("Part")
prop(rb,mod,false,1,0,0.5,0.5,0.5,1,false,"Custom")
rbw = Instance.new("Weld")
weld(rbw,torso,rb,0,0,0,-1.5,-0.5,0)

lb = Instance.new("Part")
prop(lb,mod,false,1,0,0.5,0.5,0.5,1,false,"Custom")
lbw = Instance.new("Weld")
weld(lbw,torso,lb,0,0,0,1.5,-0.5,0)

rw = Instance.new("Weld")
weld(rw,rb,nil,0,0,0,0,0.5,0)

lw = Instance.new("Weld")
weld(lw,lb,nil,0,0,0,0,0.5,0)

function showdmg(d)
local pa = Instance.new("Part")
prop(pa,mod,false,1,0,1,1,1,1,true,"Symmetric")
pa.CFrame = CFrame.new(blade.Position)
local bill = Instance.new("BillboardGui",pa)
bill.Size = UDim2.new(0,50,0,35)
bill.Adornee = pa
local tx = Instance.new("TextLabel",bill)
tx.Size = bill.Size
tx.Position = UDim2.new(0,0,0,-30)
tx.BackgroundTransparency = 1
tx.Text = d
tx.FontSize = "Size24"
tx.TextColor3 = Color3.new(0,0,0)
local poz = pa.Position
for i=0,7,0.4 do
wait()
pa.CFrame = CFrame.new(poz.X, poz.Y+i, poz.Z)
end
pa:remove()
end

deb = true

function kill(h)
if hurt and deb then
local hu, to = h.Parent:findFirstChild("Humanoid"), h.Parent:findFirstChild("Torso")
if hu ~= nil and to ~= nil and h.Parent ~= char then
if hu.Health > 0 then
deb = false
local damg = math.random(dmg/4,dmg)
local chance = math.random(1,5)
if chance > 2 then
hu.PlatformStand = true
coroutine.resume(coroutine.create(function()
wait()
to.Velocity = CFrame.new(torso.Position, to.Position).lookVector * damg*2
wait(0.1)
hu.PlatformStand = false
end))
else
damg = 0
end
hu.Health = hu.Health - damg
coroutine.resume(coroutine.create(function()
showdmg(damg)
end))
wait(0.25)
deb = true
end
end
end
end

for _,v in pairs(touchs) do
v.Touched:connect(kill)
end

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = "Sword"
script.Parent = h
end

bin = script.Parent

local mw = nil
local meow = nil
local tsah = nil
battleright = nil
battleleft = nil
battlewep = nil

function eff()
for _,v in pairs(lols) do
local ah = v:clone()
ah.Parent = mod
ah.Anchored = true
ah.CFrame = v.CFrame
ah.Transparency = 0.3
ah.Reflectance = 0.3
coroutine.resume(coroutine.create(function()
wait(0.15)
for i=0.3,1,0.12 do
ah.Transparency = i
wait()
end
ah:remove()
end))
end
end

function eff2()
local pa = Instance.new("Part")
prop(pa,mod,false,0.1,0,1,1,1,"Institutional white",true,"Custom")
pa.CFrame = CFrame.new(torso.Position) * CFrame.new(0,-2.9,0) * CFrame.Angles(0,math.random(-320,320)/100,0)
local md = Instance.new("SpecialMesh",pa)
md.Scale = Vector3.new(5.5,4,5.5)
md.MeshId = "http://www.roblox.com/asset/?id=20329976"
coroutine.resume(coroutine.create(function()
for i=5.5,0,-0.6 do
md.Scale = Vector3.new(i,i/1.4,i)
pa.Transparency = pa.Transparency + 0.1
wait()
end
pa:remove()
end))
end

function selmot()
rw.Part1 = rarm
for i=0,140,14 do
rw.C0 = CFrame.Angles(-math.rad(i/1.1),math.rad(i/2.5),math.rad(-i/6))
wait()
end
lo = rw.C0
meow = lo
torsohold.Part1 = nil
wewe.Part1 = main
uns:play()
for i=0,140,17 do
rw.C0 = lo * CFrame.Angles(math.rad(-i),0,0)
wewe.C0 = CFrame.Angles(math.rad(-i/2),0,0)
wait()
end
lo = rw.C0
mw = lo
local hih = wewe.C0
tsah = hih
lw.Part1 = larm
wait()
for i=0,130,17 do
rw.C0 = lo * CFrame.Angles(math.rad(i/4),math.rad(i/4),math.rad(-i/1.8)) * CFrame.new(-i/220,-i/500,0)
lw.C0 = CFrame.new(i/130,-i/600,-i/160) * CFrame.Angles(math.rad(i/1.4),0,math.rad(i/2.6))
wewe.C0 = hih * CFrame.Angles(math.rad(i/1.8),0,0)
wait()
end
if battleright == nil then
battleright = rw.C0
battleleft = lw.C0
battlewep = wewe.C0
end
selected = true
end

function deselmot()
for i=130,0,-17 do
rw.C0 = mw * CFrame.Angles(math.rad(i/4),math.rad(i/4),math.rad(-i/1.8)) * CFrame.new(-i/220,-i/500,0)
lw.C0 = CFrame.new(i/130,-i/600,-i/160) * CFrame.Angles(math.rad(i/1.4),0,math.rad(i/2.6))
wewe.C0 = tsah * CFrame.Angles(math.rad(i/1.8),0,0)
wait()
end
lw.Part1 = nil
for i=140,0,-17 do
rw.C0 = meow * CFrame.Angles(math.rad(-i),0,0)
wewe.C0 = CFrame.Angles(math.rad(-i/2),0,0)
wait()
end
wewe.Part1 = nil
torsohold.Part1 = main
for i=140,0,-14 do
rw.C0 = CFrame.Angles(-math.rad(i/1.1),math.rad(i/2.5),math.rad(-i/6))
wait()
end
rw.Part1 = nil
rw.C0 = CFrame.new(0,0,0)
lw.C0 = CFrame.new(0,0,0)
selected = false
end

function attack()
if attacking == false then
attacking = true
slash.Pitch = 1
slash:play()
for i=0,100,18 do
rw.C0 = battleright * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.5),0,0)
lw.C0 = battleleft * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.5),0,0)
wait()
end
local lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
hurt = true
for i=0,120,20 do
rw.C0 = lo * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i),0,0)
lw.C0 = lo2 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i/1.4),0,0)
wewe.C0 = lo3 * CFrame.Angles(math.rad(-i/2.8),0,0)
eff()
wait()
end
hurt = false
lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
for i=0,70,15 do
rw.C0 = lo * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.2),0,0)
lw.C0 = lo2 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.9),0,0)
wewe.C0 = lo3 * CFrame.Angles(math.rad(i/2),0,0)
wait()
end
rw.C0 = battleright
lw.C0 = battleleft
wewe.C0 = battlewep
attacking = false
end
end

function stab()
if attacking == false then
attacking = true
for i=0,100,15 do
rw.C0 = battleright * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i/1.1),math.rad(-i/7),math.rad(-i/2.6))
lw.C0 = battleleft * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i/1.1),0,0)
wewe.C0 = battlewep * CFrame.Angles(math.rad(i/2.2),0,0)
wait()
end
local lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
hurt = true
slash.Pitch = 1.1
slash:play()
for i=0,100,18 do
rw.C0 = lo * CFrame.new(-i/150,0,-i/150) * CFrame.Angles(math.rad(i/1.4),0,0)
lw.C0 = lo2 * CFrame.new(-i/240,0,i/400) * CFrame.Angles(math.rad(i/1.4),0,0)
wewe.C0 = lo3 * CFrame.Angles(math.rad(-i*1.3),0,0)
eff()
wait()
end
hurt = false
lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
for i=0,90,12 do
rw.C0 = lo * CFrame.new(i/150,i/170,i/240) * CFrame.Angles(math.rad(i/5.4),math.rad(i/2.3),0)
lw.C0 = lo2 * CFrame.new(i/240,-i/280,0) * CFrame.Angles(math.rad(i/4),0,0)
wewe.C0 = lo3 * CFrame.Angles(math.rad(i/1.2),0,0)
wait()
end
rw.C0 = battleright
lw.C0 = battleleft
wewe.C0 = battlewep
attacking = false
end
end

function spin()
if attacking == false then
attacking = true
for i=0,90,10 do
rw.C0 = battleright * CFrame.new(i/140,0,0) * CFrame.Angles(math.rad(-i/4),0,math.rad(i))
lw.C0 = battleleft * CFrame.new(0,i/90,0) * CFrame.Angles(0,0,math.rad(-i*1.5))
wewe.C0 = battlewep * CFrame.Angles(math.rad(-i),0,math.rad(-i))
wait()
end
local lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
bp.position = torso.Position
bp.Parent = torso
bg.Parent = torso
local cf = torso.CFrame
local ef = Instance.new("Part")
prop(ef,mod,false,1,0,1,1,1,"Light blue",true,"Custom")
ef.CFrame = cf
local mc = Instance.new("SpecialMesh",ef)
mc.MeshType = "Sphere"
local spin = true
charge:play()
coroutine.resume(coroutine.create(function()
while spin do
local d = Instance.new("Part")
prop(d,mod,false,1,0,1,1,1,"Medium blue",true,"Custom")
local poa = cf * CFrame.new(0,-2.3,0)
d.CFrame = poa
local r = Instance.new("SpecialMesh",d)
r.MeshId = "http://www.roblox.com/asset/?id=3270017"
r.Scale = Vector3.new(1,1,1)
coroutine.resume(coroutine.create(function()
for i=3,20,1 do
wait()
r.Scale = Vector3.new(i,i,i/3)
d.CFrame = poa * CFrame.new(0,i/4,0) * CFrame.Angles(math.pi/2,0,0)
d.Transparency = (i/14)-0.5
end
d:remove()
end))
wait(0.4)
end
end))
coroutine.resume(coroutine.create(function()
for o=1,14,0.25 do
wait()
mc.Scale = Vector3.new(o/1.18,o,o/1.18)
ef.Transparency = ef.Transparency - 0.014
ef.CFrame = cf * CFrame.Angles(0,o,0)
end
wait(0.15)
for o=12,0,-1.2 do
wait()
mc.Scale = Vector3.new(o/1.1,o,o/1.1)
end
local e = Instance.new("Part")
prop(e,mod,false,0,0.05,1,1,1,"Medium blue",true,"Custom")
e.CFrame = cf
local ha = Instance.new("SpecialMesh",e)
ha.Scale = Vector3.new(1,1,1)
ha.MeshId = "http://www.roblox.com/asset/?id=20329976"
local nubs = getnoobs(cf.p,10)
brek:play()
for _,v in pairs(nubs) do
v.Humanoid.Health = v.Humanoid.Health - math.random(40,60)
v.Humanoid.PlatformStand = true
coroutine.resume(coroutine.create(function()
wait(0.06)
v.Torso.Velocity = CFrame.new(torso.Position, v.Torso.Position).lookVector * 70
v.Torso.RotVelocity = Vector3.new(math.random(-25,25),math.random(-25,25),math.random(-25,25))
wait(0.6)
v.Humanoid.PlatformStand = false
end))
end
for o=1,18,0.95 do
ha.Scale = Vector3.new(o,o/1.4,o)
e.Transparency = o/15
e.CFrame = cf * CFrame.Angles(0,o/3,0)
ef.Transparency = o/17
mc.Scale = Vector3.new(o*1.2,o/1.4,o*1.2)
wait()
end
spin = false
ef:remove()
e:remove()
end))
local i = 0
repeat
local hj = cf * CFrame.Angles(0,math.rad(i),0) * CFrame.new(0,0,-30)
bg.cframe = CFrame.new(cf.p,hj.p)
i = i + 40
wait()
until spin == false
for i=90,0,-10 do
rw.C0 = battleright * CFrame.new(i/140,0,0) * CFrame.Angles(math.rad(-i/4),0,math.rad(i))
lw.C0 = battleleft * CFrame.new(0,i/90,0) * CFrame.Angles(0,0,math.rad(-i*1.5))
wewe.C0 = battlewep * CFrame.Angles(math.rad(-i),0,math.rad(-i))
wait()
end
bg.Parent = nil
bp.Parent = nil
wait()
rw.C0 = battleright
lw.C0 = battleleft
wewe.C0 = battlewep
attacking = false
end
end

function stoof()
if attacking == false then
attacking = true
bg.cframe = CFrame.new(torso.Position, torso.CFrame * CFrame.new(0,0,-20).p)
bg.Parent = torso
bp.position = torso.Position
bp.Parent = torso
local norm = torso.CFrame
local center = norm * CFrame.new(0,0,-jumpdist)
for i=0,60,15 do
rw.C0 = battleright * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i),0,0)
lw.C0 = battleleft * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i),0,0)
wewe.C0 = battlewep * CFrame.Angles(0,0,0)
wait()
end
slash.Pitch = 1.7
slash:play()
local lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
for i=180,0,-16 do
bp.position = center * CFrame.Angles(math.rad(i),0,0) * CFrame.new(0,0,-jumpdist).p
wait()
end
hurt = true
dmg = jumpdmg
slash.Pitch = 1
slash:play()
for i=0,150,24 do
rw.C0 = lo * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i/1.1),0,0)
lw.C0 = lo2 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i/1.2),0,0)
wewe.C0 = lo3 * CFrame.Angles(math.rad(-i/2.5),0,0)
eff()
wait()
end
lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
slash.Pitch = 1.8
slash:play()
hurt = false
dmg = normaldmg
bp.position = norm.p
for i=0,150,24 do
rw.C0 = lo * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.75),0,0)
lw.C0 = lo2 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.9),0,0)
wewe.C0 = lo3 * CFrame.Angles(math.rad(i/2.5),0,0)
eff()
wait()
end
rw.C0 = battleright
lw.C0 = battleleft
wewe.C0 = battlewep
wait(0.15)
bp.Parent = nil
bg.Parent = nil
wait(0.1)
attacking = false
end
end

function flip()
if attacking == false then
attacking = true
local c = CFrame.new(torso.Position, torso.CFrame * CFrame.new(0,0,-20).p)
bg.cframe = c
bg.Parent = torso
bp.position = torso.Position
bp.Parent = torso
local norm = torso.CFrame
local center = norm * CFrame.new(0,0,-flipdist)
for i=0,60,15 do
rw.C0 = battleright * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i),0,0)
lw.C0 = battleleft * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i),0,0)
wewe.C0 = battlewep * CFrame.Angles(0,0,0)
wait()
end
local lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
hum.PlatformStand = true
hurt = true
jump:play()
for i=180,0,-10 do
bp.position = center * CFrame.Angles(math.rad(i),0,0) * CFrame.new(0,0,-flipdist).p
bg.cframe = c * CFrame.Angles(math.rad(i*2),0,0)
eff()
wait()
end
hum.PlatformStand = false
for i=0,120,20 do
rw.C0 = lo * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i/1.1),0,0)
lw.C0 = lo2 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i/1.5),0,0)
wewe.C0 = lo3 * CFrame.Angles(math.rad(-i/1.6),0,0)
eff()
wait()
end
lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
local po = torso.CFrame * CFrame.new(0,-5,0)
local now = 4
dmg = normaldmg*2
absc:play()
coroutine.resume(coroutine.create(function()
repeat
local pa = Instance.new("Part")
prop(pa,mod,false,0.2,0,2,4,2,linecolors[math.random(1,#linecolors)],true,"Custom")
pa.CFrame = po * CFrame.new(math.random(-40,40)/10,0,-now) * CFrame.Angles(math.random(-60,60)/100,math.random(-60,60)/100,math.random(-60,60)/100)
local m = Instance.new("SpecialMesh",pa)
m.MeshType = "Sphere"
m.Scale = Vector3.new(3.5,3,3.5)
local pk = pa.CFrame
local nubs = getnoobs(pa.Position, 5)
for _,v in pairs(nubs) do
v.Humanoid.PlatformStand = true
v.Humanoid.Health = v.Humanoid.Health - math.random(dmg/3,dmg)
v.Torso.Velocity = CFrame.new(pa.Position, v.Torso.Position).lookVector * 60
v.Torso.RotVelocity = Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
coroutine.resume(coroutine.create(function()
wait(0.2)
v.Humanoid.PlatformStand = false
end))
end
coroutine.resume(coroutine.create(function()
for i=0,12,1.5 do
wait()
pa.CFrame = pk * CFrame.new(0,i,0)
pa.Transparency = i/10
end
pa:remove()
end))
now = now + 4
wait(0.1)
until now >= linedist
end))
dmg = normaldmg
hurt = false
for i=0,70,15 do
rw.C0 = lo * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.2),0,0)
lw.C0 = lo2 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/2.7),0,0)
wewe.C0 = lo3 * CFrame.Angles(math.rad(i*1.25),0,0)
wait()
end
wait(0.1)
rw.C0 = battleright
lw.C0 = battleleft
wewe.C0 = battlewep
wait(0.2)
bp.Parent = nil
bg.Parent = nil
wait(0.15)
attacking = false
end
end

function pwn()
if attacking == false then
attacking = true
local c = CFrame.new(torso.Position, torso.CFrame * CFrame.new(0,0,-20).p)
bg.cframe = c
bg.Parent = torso
bp.position = torso.Position
bp.Parent = torso
local norm = torso.CFrame
dmg = normaldmg/1.3
for i=0,60,20 do
rw.C0 = battleright * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i),0,0)
lw.C0 = battleleft * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i),0,0)
wewe.C0 = battlewep * CFrame.Angles(0,0,0)
wait()
end
local lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
wait(0.3)
pwns:play()
local poz = norm * CFrame.new(0,0,-18).p
local pa = Instance.new("Part")
prop(pa,mod,false,0.1,0.03,0.9,0.9,(norm.p - torso.Position).magnitude,"Black",true,"Custom")
pa.CFrame = CFrame.new(norm.p, poz) * CFrame.new(0,0,-(norm.p - poz).magnitude/2)
coroutine.resume(coroutine.create(function()
coroutine.resume(coroutine.create(function()
for i=1,20 do
wait()
pa.Size = Vector3.new(0.9,0.9,(norm.p - torso.Position).magnitude)
pa.CFrame = CFrame.new(norm.p, torso.Position) * CFrame.new(0,0,-(norm.p - torso.Position).magnitude/2)
end
end))
wait(0.25)
for i=0.1,1,0.15 do
pa.Transparency = i
wait()
end
pa:remove()
end))
hum.PlatformStand = true
hurt = true
bp.position = poz
for i=60,-80,-40 do
rw.C0 = battleright * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i),0,0)
lw.C0 = battleleft * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/2),0,0)
wewe.C0 = battlewep * CFrame.Angles(0,0,0)
eff2()
wait()
end
wait(0.1)
hurt = false
hum.PlatformStand = false
for i = -80,0,20 do
rw.C0 = battleright * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i),0,0)
lw.C0 = battleleft * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/2),0,0)
wewe.C0 = battlewep * CFrame.Angles(0,0,0)
wait()
end
rw.C0 = battleright
lw.C0 = battleleft
wewe.C0 = battlewep
dmg = normaldmg
wait(0.2)
bp.Parent = nil
bg.Parent = nil
wait(0.15)
attacking = false
end
end

function spinattack()
if attacking == false then
attacking = true
coroutine.resume(coroutine.create(function()
bp.position = torso.Position
bp.Parent = torso
bg.Parent = torso
for i=0,90,10 do
rw.C0 = battleright * CFrame.new(i/140,0,0) * CFrame.Angles(math.rad(-i/4),0,math.rad(i))
lw.C0 = battleleft * CFrame.new(0,i/90,0) * CFrame.Angles(0,0,math.rad(-i*1.5))
wewe.C0 = battlewep * CFrame.Angles(math.rad(-i),0,math.rad(-i))
wait()
end
end))
local cf = torso.CFrame
local spin = true
charge:play()
coroutine.resume(coroutine.create(function()
while spin do
local d = Instance.new("Part")
prop(d,mod,false,1,0,1,1,1,"Medium blue",true,"Custom")
local poa = cf
d.CFrame = poa
local r = Instance.new("SpecialMesh",d)
r.MeshId = "http://www.roblox.com/asset/?id=3270017"
r.Scale = Vector3.new(1,1,1)
coroutine.resume(coroutine.create(function()
for i=3,20,1 do
wait()
r.Scale = Vector3.new(i,i,i/3)
d.CFrame = poa * CFrame.new(0,i/10,0) * CFrame.Angles(math.pi/2,0,0)
d.Transparency = (i/14)-0.5
end
d:remove()
end))
wait(0.4)
end
end))
hurt = true
for i=0,360*5, 40 do
local hj = cf * CFrame.Angles(0,math.rad(i),0) * CFrame.new(0,0,-30)
bg.cframe = CFrame.new(cf.p,hj.p)
wait()
end
hurt = false
spin = false
for i=90,0,-10 do
rw.C0 = battleright * CFrame.new(i/140,0,0) * CFrame.Angles(math.rad(-i/4),0,math.rad(i))
lw.C0 = battleleft * CFrame.new(0,i/90,0) * CFrame.Angles(0,0,math.rad(-i*1.5))
wewe.C0 = battlewep * CFrame.Angles(math.rad(-i),0,math.rad(-i))
wait()
end
bg.Parent = nil
bp.Parent = nil
wait()
rw.C0 = battleright
lw.C0 = battleleft
wewe.C0 = battlewep
attacking = false
end
end

function side()
if attacking == false then
attacking = true
for i=0,90,9 do
rw.C0 = battleright * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i),math.rad(-i),math.rad(i))
lw.C0 = battleleft * CFrame.new(i/270,i/230,0) * CFrame.Angles(0,0,math.rad(i/2.1))
wewe.C0 = battlewep * CFrame.Angles(math.rad(-i/3),0,0)
wait()
end
local lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
hurt = true
slash.Pitch = 1.2
slash:play()
for i=0,90,10 do
rw.C0 = lo * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i/1.5),0,0)
lw.C0 = lo2 * CFrame.new(0,i/230,0) * CFrame.Angles(0,0,math.rad(-i*1.2))
wewe.C0 = lo3 * CFrame.Angles(math.rad(-i/1.8),0,0)
eff()
wait()
end
lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
hurt = false
for i=0,90,10 do
rw.C0 = lo * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.5),math.rad(i/1),0)
lw.C0 = lo2 * CFrame.new(math.rad(i/2),math.rad(-i/6.5),0) * CFrame.Angles(0,0,math.rad(i/1.3))
wewe.C0 = lo3 * CFrame.Angles(math.rad(i/1.1),0,0)
wait()
end
rw.C0 = battleright
lw.C0 = battleleft
wewe.C0 = battlewep
attacking = false
end
end

function pow()
if attacking == false then
attacking = true
for i=0,90,15 do
rw.C0 = battleright * CFrame.new(i/140,0,0) * CFrame.Angles(math.rad(-i/4),0,math.rad(i))
lw.C0 = battleleft * CFrame.new(0,i/90,0) * CFrame.Angles(0,0,math.rad(-i*1.5))
wewe.C0 = battlewep * CFrame.Angles(math.rad(-i),0,math.rad(-i))
wait()
end
local lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
local poz = CFrame.new(torso.Position)
bp.position = poz.p
bp.Parent = torso
bg.cframe = CFrame.new(torso.Position, torso.CFrame * CFrame.new(0,0,-10).p)
bg.Parent = torso
coroutine.resume(coroutine.create(function()
local ma = Instance.new("Part")
prop(ma,mod,false,0,0,1,1,1,"White",true,"Custom")
ma.CFrame = poz * CFrame.new(0,45,0)
local mam = Instance.new("CylinderMesh",ma)
mam.Scale = Vector3.new(3,1,3)
for i=1,50,5 do
mam.Scale = Vector3.new(i/9,i*1.3,i/9)
ma.CFrame = poz * CFrame.new(0,-mam.Scale.Y/2+45,0)
wait()
end
brek:play()
local p = Instance.new("Part")
prop(p,mod,false,0,0,1,1,1,"White",true,"Custom")
p.CFrame = poz
local a = Instance.new("SpecialMesh",p)
a.MeshId = "http://www.roblox.com/asset/?id=20329976"
a.Scale = Vector3.new(2,2,2)
local p2 = p:clone()
p2.Parent = mod
local nubs = getnoobs(poz.p,7)
for _,v in pairs(nubs) do
v.Humanoid.PlatformStand = true
v.Humanoid.Health = v.Humanoid.Health - math.random(splashdmg/2, splashdmg)
v.Torso.Velocity = CFrame.new(poz.p,v.Torso.Position).lookVector * 25
v.Torso.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
coroutine.resume(coroutine.create(function() wait(0.6) v.Humanoid.PlatformStand = false end))
end
for i=2,12,0.8 do
wait()
p.CFrame = poz * CFrame.Angles(0,math.rad(i*10),0)
a.Scale = Vector3.new(i,i/1.25,i)
p.Transparency = (i/10)-0.2
p2.Transparency = p.Transparency
p2.Mesh.Scale = Vector3.new(i/1.6,i/2.2,i/1.6)
p2.CFrame = poz * CFrame.Angles(0,math.rad(-i*10),0)
ma.Transparency = (i/10)-0.2
end
p:remove()
p2:remove()
ma:remove()
end))
for i=0,60,20 do
rw.C0 = lo * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i),0,0)
lw.C0 = lo2 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i),0,0)
wait()
end
wait(0.8)
bg.Parent = nil
bp.Parent = nil
for i=60,0,-20 do
rw.C0 = lo * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i),0,0)
lw.C0 = lo2 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i),0,0)
wait()
end
for i=90,0,-15 do
rw.C0 = battleright * CFrame.new(i/140,0,0) * CFrame.Angles(math.rad(-i/4),0,math.rad(i))
lw.C0 = battleleft * CFrame.new(0,i/90,0) * CFrame.Angles(0,0,math.rad(-i*1.5))
wewe.C0 = battlewep * CFrame.Angles(math.rad(-i),0,math.rad(-i))
wait()
end
rw.C0 = battleright
lw.C0 = battleleft
wewe.C0 = battlewep
wait(0.4)
attacking = false
end
end

function keys(k)
if hum.Health > 0 and bin.Parent ~= nil and selected then
local key = k:lower()
if key == "q" then
stab()
elseif key == "r" then
spin()
elseif key == "e" then
stoof()
elseif key == "f" then
flip()
elseif key == "t" then
pwn()
elseif key == "z" then
spinattack()
elseif key == "x" then
pow()
elseif key == "g" then
side()
end
end
end

function select(mouse)
if bin.Parent ~= nil then
repeat wait() until selected == false and attacking == false
selmot()
mouse.Button1Down:connect(function() 
if hum.Health > 0 and bin.Parent ~= nil then
attack()
end
end) 
mouse.KeyDown:connect(function(key) keys(key) end)
end
end

function desel()
repeat wait() until selected == true and attacking == false
deselmot()
end

bin.Selected:connect(select)
bin.Deselected:connect(desel)

end}

 
 

module[1] = {"Exia Unit",function()
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
local Mode="Gun"

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

local TrailColor = ("Lime green")
 
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

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.800000012, 0.600000024, 0.400000036))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0999984741, 0.00293731689, -0.997625113, 0.999999762, 0, 0, -0, -2.98023224e-008, 1, 0, -0.999999642, -2.98023206e-008))
mesh("CylinderMesh",handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BarrelA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","BarrelA",Vector3.new(0.400000006, 0.400000036, 0.200000003))
BarrelAweld=weld(m,handle,BarrelA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -0.501502991, 0.70533812, 0.999999762, 8.9397489e-013, -4.26325811e-014, 8.93974673e-013, -1, -7.63833441e-014, -4.2632554e-014, 7.81597009e-014, -0.999999762))
mesh("BlockMesh",BarrelA,"","",Vector3.new(0, 0, 0),Vector3.new(0.170000017, 1, 2))
BarrelB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","BarrelB",Vector3.new(0.400000006, 0.400000036, 0.200000003))
BarrelBweld=weld(m,handle,BarrelB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.498413086, 0.705340028, 0.999999762, 8.93975215e-013, -4.26325811e-014, 8.93974998e-013, -1, -7.99360578e-014, -4.2632554e-014, 8.17124146e-014, -0.999999762))
mesh("BlockMesh",BarrelB,"","",Vector3.new(0, 0, 0),Vector3.new(0.170000017, 1, 2))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.600000024, 2.60000038))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.701442719, -0.600021362, 2.49932575, 0.999998927, 1.87752244e-006, -0.000799447123, -1.84774353e-006, 0.999999166, -1.93715053e-007, 0.000799283211, 2.23561045e-007, 0.999998808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.405347705, 0.497962952, 0.999999285, -0, 0, 0, 1.49011647e-008, -0.999999046, -0, 0.999999762, 1.49011594e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.405347705, 0.501495361, 0.999999285, -0, 0, 0, 1.49011647e-008, -0.999999046, -0, 0.999999762, 1.49011594e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.170000017, 1, 2))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 1.00000012, 1.20000029))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.700000763, -3.05175781e-005, -3.76701355e-005, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 2.20000005, 0.599999964))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.700000763, -3.05175781e-005, 0.899943829, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 0.200000003, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.599975586, 3.38554382e-005, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 1.79999995, 0.599999964))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.709243774, -2.28881836e-005, 0.899943829, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.800000012, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.399993896, -5.96046448e-006, 0.999999762, -0, 0, -0, 1, -1.77635684e-015, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.800000012, 0.99999994))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.713443756, -0.500030518, 1.69926405, 0.999998927, -2.26500038e-006, -0.000799596135, 2.27987721e-006, 0.999999225, 1.93017172e-007, 0.000799476926, -2.231682e-007, 0.999998927))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000006, 1.20000017))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700153351, -0.700019836, 0.000669956207, -0.999999106, 1.87757018e-006, 0.000799469941, 1.84774353e-006, 0.999999166, 1.34110437e-007, -0.000799469592, 1.63956443e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.600000083, 2.60000038))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.698387146, -0.599975586, 2.50042844, -0.999998689, -1.90737251e-006, -0.000799447123, 1.90734818e-006, -0.999998927, -1.34110465e-007, -0.000799282978, -1.64014665e-007, 0.999998808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 2.5999999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.709453583, -0.399978638, 2.50040436, -0.999999166, 2.30715773e-006, -0.000799596135, -2.33717014e-006, -0.999999523, 2.5262176e-007, -0.000799476926, 2.82754144e-007, 0.999998927))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700153351, -0.80002594, -0.2993083, -0.999999106, 1.87757018e-006, 0.000799469941, 1.84774353e-006, 0.999999166, 1.34110437e-007, -0.000799469592, 1.63956443e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.600000024, 0.599999964))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.70142746, -0.80002594, 1.49932528, 0.999998927, 1.87752244e-006, -0.000799447123, -1.84774353e-006, 0.999999166, -1.93715053e-007, 0.000799283211, 2.23561045e-007, 0.999998808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000036, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699836731, -0.69997406, -0.000449538231, 0.999999344, -1.89480204e-006, 0.000799469941, -1.92476682e-006, -0.999999523, 1.93715039e-007, 0.000799469766, -2.23517404e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.99999994, 0.200000003, 2))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0999984741, 0.599975586, 0.999940634, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.40000045, 0.200000003, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -0.000755310059, 5.96046448e-005, -1.48553302e-013, -0.999995828, 2.98021838e-008, -0.999999762, -1.503297e-013, -2.98021909e-008, 2.98023295e-008, -2.9802214e-008, -0.999995589))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.285999984, 1.01199996))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.600000024, 0.599999964))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.698394775, -0.799972534, 1.50044394, -0.999998689, -1.90737251e-006, -0.000799447123, 1.90734818e-006, -0.999998927, -1.34110465e-007, -0.000799282978, -1.64014665e-007, 0.999998808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, 0.405347705, -0.502029419, 0.999999285, -0, 0, 0, 1.49011647e-008, -0.999999046, -0, 0.999999762, 1.49011594e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.39996767, 0.599975586, 0.999999762, -0, 0, 0, 1.49011647e-008, -0.999999523, -0, 0.999999762, 1.49011594e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699840546, -0.799964905, -0.300427675, 0.999999344, -1.89480204e-006, 0.000799469941, -1.92476682e-006, -0.999999523, 1.93715039e-007, 0.000799469766, -2.23517404e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000006, 1.80000019))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.195159912, -0.900024414, 0.899938345, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.194999695, -0.900024414, 0.200763583, -0.999999106, 1.87757018e-006, 0.000799469941, 1.84774353e-006, 0.999999166, 1.34110437e-007, -0.000799469592, 1.63956443e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(1.20000005, 0.800000012, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.39996767, 0.499969482, 0.999999642, -0, 0, 0, 1.49011647e-008, -0.999999404, -0, 0.999999762, 1.49011594e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.203845978, -0.899963379, 1.90046763, 0.99999851, -1.38333075e-006, 0.000811993901, 1.25192548e-006, 0.999998987, 9.15403871e-006, -0.00081211311, -9.18428123e-006, 0.999998808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.800000012, 0.999999881))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.709457397, -0.499977112, 1.70040178, -0.999999166, 2.30715773e-006, -0.000799596135, -2.33717014e-006, -0.999999523, 2.5262176e-007, -0.000799476926, 2.82754144e-007, 0.999998927))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.405341506, -0.502037048, 0.999999285, -0, 0, 0, 1.49011647e-008, -0.999999046, -0, 0.999999762, 1.49011594e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.170000017, 1, 2))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.600000143, 1.21000028))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.708374023, -3.05175781e-005, -0.00504338741, 0.999999523, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999523))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.709457397, -0.500030518, 0.000697374344, -0.999999166, 1.89247135e-006, 0.000799469941, 1.86264469e-006, 0.999999225, 1.34110437e-007, -0.000799469533, 1.63927339e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.39996767, -0.600021362, 0.999999762, -0, 0, 0, 1.49011647e-008, -0.999999523, -0, 0.999999762, 1.49011594e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.196155548, -0.899963379, 1.90047097, 0.99999851, -1.38333075e-006, 0.000811993901, 1.25192548e-006, 0.999998987, 9.15403871e-006, -0.00081211311, -9.18428123e-006, 0.999998808))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 2.5999999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.713447571, -0.400032043, 2.49926639, 0.999998927, -2.26500038e-006, -0.000799596135, 2.27987721e-006, 0.999999225, 1.93017172e-007, 0.000799476926, -2.231682e-007, 0.999998927))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.4000001, 2))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.5, -3.05175781e-005, 0.999940634, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.709461212, -0.499969482, -0.000437021255, 0.999999344, -1.89480204e-006, 0.000799469941, -1.92476682e-006, -0.999999523, 1.93715039e-007, 0.000799469766, -2.23517404e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 0.200000003, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.600028992, 3.38554382e-005, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(1.20000005, 0.800000012, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.39996767, -0.500030518, 0.999999642, -0, 0, 0, 1.49011647e-008, -0.999999404, -0, 0.999999762, 1.49011594e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(1.40000045, 0.200000018, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -0.000755310059, 6.81877136e-005, 8.88178631e-016, -1, 2.98023206e-008, -0.999999762, -1.77635769e-015, -2.98023224e-008, 2.98023224e-008, -2.98023259e-008, -0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000006, 1.80000019))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.190341949, -0.900024414, 0.899938345, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.800000012, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.400001526, -5.96046448e-006, 0.999999762, -0, 0, -0, 1, -1.77635684e-015, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.190494537, -0.900024414, 0.200588226, -0.999999106, 1.87757018e-006, 0.000799469941, 1.84774353e-006, 0.999999166, 1.34110437e-007, -0.000799469592, 1.63956443e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.709449768, -0.600021362, -0.299300909, -0.999999166, 1.89247135e-006, 0.000799469941, 1.86264469e-006, 0.999999225, 1.34110437e-007, -0.000799469533, 1.63927339e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.200000152, 2.61000037))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.708377838, 2.28881836e-005, -2.50490212, 0.999999642, -0, 0, 0, -0.999999702, -4.470348e-008, 0, 2.98023295e-008, -0.999999344))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.709445953, -0.599967957, -0.300435305, 0.999999344, -1.89480204e-006, 0.000799469941, -1.92476682e-006, -0.999999523, 1.93715039e-007, 0.000799469766, -2.23517404e-007, -0.999999166))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 2))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0999984741, -0.600021362, 0.999940634, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.600000143, 2.60000014))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.700000763, -3.05175781e-005, 2.49992704, 0.999999762, -0, 0, -0, 1, 1.77635684e-015, 0, -3.55271368e-015, 0.999999762))

BladeHandle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","BladeHandle",Vector3.new(0.200000003, 1, 3.39999986))
BladeHandleweld=weld(m,Character["Right Arm"],BladeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0872383118, -1.20300293, 0.302297354, 1, -2.21671375e-008, 7.04762897e-008, -7.04762684e-008, 2.98023188e-008, 0.999999404, -2.2167157e-008, -0.999999285, 2.98023224e-008))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,1,"Lime green","Hitbox",Vector3.new(0.200000003, 4.79999971, 1))
Hitboxweld=weld(m,BladeHandle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.699994326, 0, 1, -9.99836402e-007, 1.80018773e-007, -1.80019143e-007, 1.49011647e-008, 0.999998808, -9.99837425e-007, -0.999998808, 1.49011719e-008))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Lime green","BladePart",Vector3.new(0.220000014, 0.200000003, 3.4000001))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00135803223, -0.393920898, -0.000129699707, -0.999998927, 2.05645279e-006, 0.000802798022, -2.0555824e-006, -0.999997914, 3.17394552e-006, 0.000802962692, 3.11428425e-006, 0.999998093))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Lime green","BladePart",Vector3.new(0.200000003, 0.220000014, 0.800000072))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.399986267, -5.7220459e-006, 1.70002365, 1.42108547e-014, -0.999998808, -1.77635684e-015, -1, 2.13162821e-014, -2.98022744e-008, 2.98023828e-008, -3.55271368e-015, -0.999998808))
mesh("CylinderMesh",BladePart,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Lime green","BladePart",Vector3.new(0.200000003, 0.220000014, 0.800000072))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.400005341, -5.7220459e-006, 1.70001566, 4.33431069e-013, -0.999998093, 1.63424829e-013, -1, -9.23705556e-014, -2.98015639e-008, 2.98019547e-008, 2.14939178e-013, -0.999998093))
mesh("CylinderMesh",BladePart,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Lime green","BladePart",Vector3.new(0.220000014, 0.200000003, 0.399999976))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00168228149, -0.399024963, 1.89990211, 0.999998748, -2.1309047e-006, 0.000802797964, 2.13086582e-006, 0.999997854, 3.29315458e-006, -0.000802962575, -3.21859238e-006, 0.999998093))
mesh("SpecialMesh",BladePart,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Lime green","BladePart",Vector3.new(0.220000014, 0.200000003, 3.4000001))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00168037415, -0.399391174, -0.000123500824, 0.999998748, -2.1309047e-006, 0.000802797964, 2.13086582e-006, 0.999997854, 3.29315458e-006, -0.000802962575, -3.21859238e-006, 0.999998093))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Lime green","BladePart",Vector3.new(0.220000014, 0.200000003, 0.399999976))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00135612488, -0.39358139, 1.89990449, -0.999998927, 2.05645279e-006, 0.000802798022, -2.0555824e-006, -0.999997914, 3.17394552e-006, 0.000802962692, 3.11428425e-006, 0.999998093))
mesh("SpecialMesh",BladePart,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","BladePart",Vector3.new(0.200000003, 0.520000041, 1.39999998))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00136566162, -0.239994049, 2.3998909, 0.999999166, -1.95434222e-006, -0.000799282745, 1.92285847e-006, 0.999998212, -1.86264401e-006, 0.000799447356, 2.07120365e-006, 0.999998033))
mesh("SpecialMesh",BladePart,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","BladePart",Vector3.new(1.00000012, 0.200000003, 1.00000012))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -5.7220459e-006, 1.60001981, 3.26849658e-013, -0.999999404, -3.01980663e-014, -1, -3.05533376e-013, -2.98017593e-008, 2.98018055e-008, 2.84217094e-014, -0.999999404))
mesh("CylinderMesh",BladePart,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BladePart=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","BladePart",Vector3.new(0.200000003, 0.479999989, 1.39999998))
BladePartweld=weld(m,BladeHandle,BladePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00135612488, -0.260002136, 2.39991736, -0.999998927, 2.05645279e-006, 0.000802798022, -2.0555824e-006, -0.999997914, 3.17394552e-006, 0.000802962692, 3.11428425e-006, 0.999998093))
mesh("SpecialMesh",BladePart,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

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

function Shootcombo()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-120),math.rad(10)),.3)
end
so("http://www.roblox.com/asset/?id=169445602",BarrelA,.7,1.5)
so("http://www.roblox.com/asset/?id=169445602",BarrelB,.7,1.5)
so("http://www.roblox.com/asset/?id=169380505",BarrelA,.7,1.1)
so("http://www.roblox.com/asset/?id=169380505",BarrelB,.7,1.1)
table.insert(Effects,{BarrelA.CFrame.lookVector,"Shoot",10,BarrelA.Position,5,10,0,1})
table.insert(Effects,{BarrelB.CFrame.lookVector,"Shoot",10,BarrelB.Position,5,10,0,1})
for i = 0,1,0.2 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(5),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(130), math.rad(30), math.rad(50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-120),math.rad(10)),.3)
end
attack = false
end

function BladeAttackOne()
attack = true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,20,30,math.random(5,5),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-70)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(70)),0.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(100)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(120),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(0)),0.4)
end
--so("http://roblox.com/asset/?id=206083107",handle,1,1) 
so("http://www.roblox.com/asset/?id=200633148",handle,1,.9)
for i = 0,1,0.1 do
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(80)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(-10),math.rad(-80)),0.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(120), math.rad(90)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-120),math.rad(-10)),0.4)
end
attack = false
con:disconnect()
end

function BladeAttackTwo()
attack = true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,20,30,math.random(5,5),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(70)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(-10),math.rad(-70)),0.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(120), math.rad(90)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(40),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-140),math.rad(-10)),0.4)
end
--so("http://roblox.com/asset/?id=206083107",handle,1,.9) 
so("http://www.roblox.com/asset/?id=200633196",handle,1,1)
for i = 0,1,0.1 do
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-80)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(80)),0.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(90)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(140),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-40),math.rad(-10)),0.4)
end
attack = false
con:disconnect()
end

function BladeAttackThree()
attack = true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,20,30,math.random(5,5),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(20)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(20)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10)),0.4)
end
--so("http://roblox.com/asset/?id=206083107",handle,1,1.1) 
so("http://www.roblox.com/asset/?id=200633196",handle,1,.9)
for i = 0,1,0.1 do
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(40)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-10)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10)),0.4)
end
attack = false
con:disconnect()
end

function BladeAttackFour()
attack = true
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,20,30,math.random(5,5),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(70)),0.4)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-70)),.4)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(120), math.rad(90)),0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)),0.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10)),0.4)
end
so("http://www.roblox.com/asset/?id=200633148",handle,1,.8)
Torso.Velocity=Head.CFrame.lookVector*100
for i = 0,1,0.05 do
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-1)* angles(math.rad(40),math.rad(0),math.rad(-70)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(-30),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)),0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)),0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(60),math.rad(-30)),0.3)
LH.C0=clerp(LH.C0,cf(-1,.2,0)*angles(math.rad(0),math.rad(-40),math.rad(-60)),0.3)
end
con:disconnect()
attack = false
end

function ElecEffect(cff,x,y,z)
local prt=part(3,workspace,"SmoothPlastic",0,0,BrickColor.new("Lime green"),"Part",vt(1,1,1))
prt.Anchored=true
prt.CFrame=cff*cf(math.random(-x,x),math.random(-y,y),math.random(-z,z))
prt.CFrame=cf(prt.Position)
--prt.CFrame=cf(cff)*cf(math.random(-x,x),math.random(-y,y),math.random(-z,z))
game:GetService("Debris"):AddItem(prt,2)
xval=math.random()/2
yval=math.random()/2
zval=math.random()/2
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(xval,yval,zval))
Effects[#Effects+1]={prt,"Elec",0.1,x,y,z,xval,yval,zval} --part, type, delay
end

function Test()
ElecEffect(Hitbox.CFrame,2,4,2)
end

attacktype1 = 1
mouse.Button1Down:connect(function()
	if Mode == "Gun" then
        if attack==false then
                if attacktype1==1 then
                        attack=true
                        attacktype1=1
                        Shootcombo()
                end
        end
    end
if Mode == "Blade" then
        if attack==false then
                if attacktype==1 then
                        attack=true
                        attacktype=2
                        BladeAttackOne()
                 elseif attacktype==2 then
                        attack=true
                        attacktype=3
                        BladeAttackTwo()
                 elseif attacktype==3 then
                        attack=true
                        attacktype=4
                        BladeAttackThree()
                 elseif attacktype==4 then
                        attack=true
                        attacktype=1
                        BladeAttackFour()
                end
        end
    end
end)

mouse.KeyDown:connect(function(k)
        k=k:lower()
        if k=='f' then
                if Mode == "Gun" then
                        Mode = "Blade"
                        so("http://www.roblox.com/asset/?id=152052659",handle,1,1)
                elseif Mode == "Blade" then
                        Mode = "Gun"
                        so("http://www.roblox.com/asset/?id=211134014",handle,1,1)
end
elseif k=='q' then
		Test()
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
if attack==false and Mode == "Gun" then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(20)),.3)
BladeHandleweld.C0=clerp(BladeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
if attack==false and Mode == "Blade" then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(20)),.3)
BladeHandleweld.C0=clerp(BladeHandleweld.C0, CFrame.new(0, -3, 1.2) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false and Mode == "Gun" then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20)),.3)
BladeHandleweld.C0=clerp(BladeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
if attack==false and Mode == "Blade" then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20)),.3)
BladeHandleweld.C0=clerp(BladeHandleweld.C0, CFrame.new(0, -3, 1.2) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false and Mode == "Gun" then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-80),math.rad(10)),.3)
BladeHandleweld.C0=clerp(BladeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
if attack==false and Mode == "Blade" then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(-5)),.3)
BladeHandleweld.C0=clerp(BladeHandleweld.C0, CFrame.new(0, -3, 1.2) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false and Mode == "Gun" then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(-0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(10)),.3)
BladeHandleweld.C0=clerp(BladeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
if attack==false and Mode == "Blade" then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(10)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(1),math.rad(-10)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(5), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
BladeHandleweld.C0=clerp(BladeHandleweld.C0, CFrame.new(0, -3, 1.2) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
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
MagicHead(BrickColor.new("Lime green"),CFrame.new((Thing[4]+pos)/2,pos)*angles(1.57,0,0),1,mag*5,1,.5,0,.5,0.1)
Thing[4]=Thing[4]+(Look*20)
Thing[3]=Thing[3]-1
if hit~=nil then
Thing[3]=0
if Thing[8]==1 then
Damagefunc(Hitbox,hit,Thing[5],Thing[6],Thing[7],"Normal",RootPart,0,2,math.random(1,5),nil,nil,true)
elseif Thing[8]==2 then
Damagefunc(Hitbox,hit,Thing[5],Thing[6],Thing[7],"NormalDecreaseMvmt1",RootPart,0,2,math.random(1,5),nil,nil,true)
end
ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Lime green"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
MagicCircle(BrickColor.new("Lime green"),cf(pos),5,5,5,1,1,1,0.03)
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
effect("New Yeller",0,Thing[8],Thing[7])
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
module[2] = {"Fairy",function()

local plr = game:service'Players'.LocalPlayer
local m = plr:GetMouse()
local char = plr.Character
local runservice = game:service'RunService'
local modelScale = 1/5


pcall(function() local a = script.Parent.FaerieScript if a ~= script then a:Destroy() end end)
pcall(function() local a = char.Animate if a ~= script then a.Disabled = true a:Destroy() end end)
script.Name = "FaerieScript"

function weld(a,b,c,d)
        local w = Instance.new("Weld",a)
        w.Part0 = a
        w.Part1 = b
        w.C0 = c or CFrame.new()
        w.C1 = d or CFrame.new()
        return w
end

function lerp(a,b,c)
    return a+(b-a)*c
end

do  -- Ignore my clerp stuff stolen from stravvy
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

for i,v in pairs(char:GetChildren()) do
        if v:IsA("Hat") or v:IsA("BodyColors") or v:IsA("Clothing") or v:IsA("ShirtGraphic") then
                v:Destroy()
        end
end
Instance.new("Hat",char)
local root = char.HumanoidRootPart
local tw = root.RootJoint
local tor = char.Torso
local hd = char.Head
local hum = char.Humanoid
hum.Health = 40
hum.MaxHealth = 40
hum.WalkSpeed = 12
local rl,ll = char["Right Leg"],char["Left Leg"]
local ra,la = char["Right Arm"],char["Left Arm"]

local c0 = {
        rs = CFrame.new(1,.5,0),
        ls = CFrame.new(-1,.5,0),
        rh = CFrame.new(.5,-1,0),
        lh = CFrame.new(-.5,-1,0),
        nk = CFrame.new(0,1,0),
        tw = CFrame.new(0,0,0)*CFrame.Angles(0,0,0),
}
local c1 = {
        rs = CFrame.new(-.5,.5,0),
        ls = CFrame.new(.5,.5,0),
        rh = CFrame.new(0,1,0),
        lh = CFrame.new(0,1,0),
        nk = CFrame.new(0,-.5,0),
        tw = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
}

local rs = tor["Right Shoulder"]
local ls = tor["Left Shoulder"]
local rh = tor["Right Hip"]
local lh = tor["Left Hip"]
local nk = tor["Neck"]
for i,v in pairs(tor:GetChildren()) do
        if v:IsA("Motor6D") then
                v.DesiredAngle = 0
                v.MaxVelocity = 0
                v.CurrentAngle = 0
        end
end




pcall(function() tor.roblox:Destroy() end)

pcall(function() char.Faerie:Destroy() end)
local model = Instance.new("Model",char)
model.Name = "Faerie"

local BasePart = Instance.new("Part")
BasePart.CanCollide = false
BasePart.Anchored = false
BasePart.FormFactor = "Custom"
BasePart.Locked = true
BasePart.Size = Vector3.new()
BasePart.TopSurface,BasePart.BottomSurface,BasePart.LeftSurface,BasePart.RightSurface,BasePart.FrontSurface,BasePart.BackSurface = 10,10,10,10,10,10
BasePart:BreakJoints()

function NP(par)
    local p = BasePart:Clone()
    p.Parent = par or model
    return p
end

local w1 = NP()
w1.Transparency = .1
local w1m = Instance.new("SpecialMesh",w1)
w1m.MeshId = "rbxassetid://19367766"
w1m.TextureId = "rbxassetid://9854798"
w1m.Scale = Vector3.new(1.05, 1.05, 1.05)
local w1 = weld(tor,w1,CFrame.new(-.1,0.55,1.6))

local w2 = NP()
w2.Transparency = .1
local w2m = Instance.new("SpecialMesh",w2)
w2m.MeshId = "rbxassetid://19367766"
w2m.TextureId = "rbxassetid://9854798"
w2m.Scale = Vector3.new(1.05, 1.05, 1.05)
local w2 = weld(tor,w2,CFrame.new(.1,0.55,1.6))

local h = NP()
local hm = Instance.new("SpecialMesh",h)
hm.MeshId = "rbxassetid://154820214"
hm.TextureId = "rbxassetid://91740209"
hm.Scale = Vector3.new(1, 1, 1)
weld(hd,h,CFrame.new(0,0.2,0))

for i,v in pairs(char:GetChildren()) do
        if v:IsA("BasePart") then
                v.Material = "SmoothPlastic"
                v.TopSurface,v.BottomSurface,v.FrontSurface,v.BackSurface,v.LeftSurface,v.RightSurface = 10,10,10,10,10,10
        end
end

do
        if modelScale ~= 1 then
                for i,v in pairs(c0) do
                        c0[i] = (v-v.p) + v.p*modelScale
                end
                for i,v in pairs(c1) do
                        c1[i] = (v-v.p) + v.p*modelScale
                end
                local Joints = {}
            local gtJoints,gtParts;

            local function gtCFrame(cf)
                return (cf-cf.p) + cf.p * modelScale
            end

            function gtJoints(p)
                for i,v in pairs(p:GetChildren()) do
                    if v:IsA("JointInstance") then
                        table.insert(Joints,{v,v.Part0,v.Part1})
                        v.Part0 = nil
                        v.Part1 = nil
                        v.C0 = (v.C0-(v.C0.p)) + (v.C0.p * modelScale) 
                        v.C1 = (v.C1-(v.C1.p)) + (v.C1.p * modelScale) 
                    end
                    gtJoints(v)
                end 
            end

            function gtParts(p)
                for i,v in pairs(p:GetChildren()) do
                    if v:IsA("BasePart") then
                        pcall(function() v.FormFactor = "Custom" end)
                        local oldz = v.Size
                        local cf = tor.CFrame:toObjectSpace(v.CFrame)
                        v.Size = v.Size * modelScale
                        v.CFrame = tor.CFrame * gtCFrame(cf)
                        local mesh = nil
                        for i,t in pairs(v:GetChildren()) do 
                            if t:IsA("DataModelMesh") then 
                                mesh = t 
                            end 
                        end
                        if mesh == nil and v:IsA("Part") and v.Shape == Enum.PartType.Ball then 
                            mesh = Instance.new("SpecialMesh",v) 
                            mesh.MeshType = Enum.MeshType.Sphere 
                        end
                        if mesh == nil and ((v:IsA("Part") and v.Shape == Enum.PartType.Block) or v:IsA("Seat") or v:IsA("VehicleSeat")) then 
                            mesh = Instance.new("BlockMesh",v) 
                        end
                        if mesh ~= nil then
                                if mesh:IsA("SpecialMesh") and mesh.MeshType == Enum.MeshType.FileMesh then
                                        mesh.Scale = mesh.Scale * modelScale
                                else
                                    mesh.Scale = mesh.Scale*(oldz*modelScale)/v.Size
                            end
                        end
                    end
                    gtParts(v)
                end 
            end
            gtJoints(char)
            gtParts(char)
            for i,v in pairs(Joints) do
                v[1].Part0 = v[2]
                v[1].Part1 = v[3]
            end
        end
end
rs.C0,rs.C1 = c0.rs,c1.rs
ls.C0,ls.C1 = c0.ls,c1.ls
rh.C0,rh.C1 = c0.rh,c1.rh
lh.C0,lh.C1 = c0.lh,c1.lh
nk.C0,nk.C1 = c0.nk,c1.nk
tw.C0,tw.C1 = c0.tw,c1.tw

local w10,w20 = w1.C0,w2.C0

local pl = tor:FindFirstChild("FairyLight") or Instance.new("PointLight",tor)
pl.Name = "FairyLight"
pl.Shadows = false
pl.Range = 8
pl.Brightness = 10

local sparkles = tor:FindFirstChild("FairySparkles") or Instance.new("Sparkles",tor)
sparkles.Name = "FairySparkles"


local outfit = 0
local outfitparts = {ra,la,rl,ll,tor}
local outfits = {
        {{106705109},{106705077},{106703301},{106703213},{106705037}}
}


local mycolor = ll.BrickColor.Color
local mycolor2 = mycolor

function setOutfit()
        local of = outfits[outfit]
        if of then
                for i,v in pairs(outfitparts) do
                        local mesh = v:FindFirstChild("outfitMesh")
                        local meshdata = outfits[outfit][i]
                        if not mesh then
                                mesh = Instance.new("SpecialMesh",v)
                                mesh.Name = "outfitMesh"
                                mesh.TextureId = "rbxassetid://9854798"
                        end
                        mesh.Scale =(meshdata[2] or Vector3.new(1,1,1)) * modelScale
                        mesh.MeshId = "rbxassetid://"..meshdata[1]
                        mesh.VertexColor = Vector3.new(mycolor2.r,mycolor2.g,mycolor2.b)
                end
        else
                for i,v in pairs(outfitparts) do
                        pcall(function() v.outfitMesh:Destroy() end)
                end
        end
end
setOutfit()

local senabled = true
local lenabled = true
function changeColor()
        for i,v in pairs(char:GetChildren()) do
                if v:IsA("BasePart") then
                        v.BrickColor = BrickColor.new(mycolor)
                end
        end
        local mc1 = Vector3.new(mycolor.r,mycolor.g,mycolor.b)
        local mc2 = Vector3.new(mycolor2.r,mycolor2.g,mycolor2.b)
        w1m.VertexColor,w2m.VertexColor,hm.VertexColor = mc1,mc1,mc2
        for i,v in pairs(outfitparts) do
                local mesh = v:FindFirstChild("outfitMesh")
                if mesh then
                        mesh.VertexColor = mc2
                end
        end
        pl.Color = mycolor
        sparkles.SparkleColor = mycolor
end
changeColor()

do
        pcall(function() plr.PlayerGui.fairyColoring:Destroy() end)
        local scr = Instance.new("ScreenGui",plr.PlayerGui)
        scr.Name = "fairyColoring"
        local fr = Instance.new("Frame",scr)
        fr.Size = UDim2.new(0,-150,0,-65)
        fr.BackgroundColor3 = Color3.new(1,1,1)
        fr.BorderColor3 = Color3.new(.05,.05,.05)
        fr.BackgroundTransparency = .8
        fr.Position = UDim2.new(1,0,1,scr.Parent:FindFirstChild("PandaHelpNotify") and -20 or 0)
        fr.ZIndex = 9
        local am = 75
        local rval,gval,bval = mycolor.r,mycolor.g,mycolor.b
        local r = Instance.new("TextButton",fr)
        r.BackgroundTransparency = 1
        r.Size = UDim2.new(0,75,0,15)
        r.Position = UDim2.new(0,5,0,5)
        r.TextColor3 = Color3.new(1,1,1)
        r.TextStrokeTransparency = .4
        for i=1,am do
                local t = Instance.new("ImageLabel",r)
                t.BorderSizePixel = 0
                t.Size = UDim2.new(1/am,0,1,0)
                t.Position = UDim2.new((i-1)/am,0,0,0)
                t.Name = i
                t.ZIndex = 10
        end
        local rb = Instance.new("ImageLabel",r)
        rb.ZIndex = 10
        rb.Size = UDim2.new(0,2,1,-2)
        rb.BackgroundColor3 = Color3.new(0,0,0)
        rb.BackgroundTransparency = .5
        rb.BorderColor3 = Color3.new(.4,.4,.4)
        rb.Name = "b"
        local g = r:Clone()
        g.Parent = fr
        g.Position = UDim2.new(0,5,0,25)
        local b = r:Clone()
        b.Parent = fr
        b.Position = UDim2.new(0,5,0,45)
        r.ZIndex,g.ZIndex,b.ZIndex = 10,10,10
        local prev = Instance.new("TextButton",fr)
        prev.Size = UDim2.new(0,55,0,45)
        prev.Position = UDim2.new(0,90,0,5)
        prev.ZIndex = 10
        prev.BorderColor3 = Color3.new(.2,.2,.2)
        prev.TextColor3 = Color3.new(1,1,1)
        prev.TextStrokeTransparency = .4
        prev.TextYAlignment = "Bottom"
        prev.FontSize = "Size8"
        prev.TextWrapped = true
        local res = Instance.new("TextButton",fr)
        res.Size = UDim2.new(0,55,0,9)
        res.Position = UDim2.new(0,90,0,51)
        res.ZIndex = 10
        res.BorderColor3 = Color3.new(.2,.2,.2)
        res.BackgroundColor3 = Color3.new(.5,0,0)
        res.TextColor3 = Color3.new(1,1,1)
        res.Text = "reset"
        res.FontSize = "Size8"
        local mode = 0
        local function update(set)
                r.b.Position = UDim2.new(rval,-1,0,1)
                g.b.Position = UDim2.new(gval,-1,0,1)
                b.b.Position = UDim2.new(bval,-1,0,1)
                local col = Color3.new(rval,gval,bval)
                prev.BackgroundColor3 = mode == 1 and mycolor2 or mycolor
                prev.Text = ""
                r.Text = math.floor(rval*255+.5)
                g.Text = math.floor(gval*255+.5)
                b.Text = math.floor(bval*255+.5)
                for i,v in pairs(r:GetChildren()) do
                        local n = tonumber(v.Name)
                        if n then
                                local sc = n/am
                                v.BackgroundColor3 = Color3.new(sc,gval,bval)
                        end
                end
                for i,v in pairs(g:GetChildren()) do
                        local n = tonumber(v.Name)
                        if n then
                                local sc = n/am
                                v.BackgroundColor3 = Color3.new(rval,sc,bval)
                        end
                end
                for i,v in pairs(b:GetChildren()) do
                        local n = tonumber(v.Name)
                        if n then
                                local sc = n/am
                                v.BackgroundColor3 = Color3.new(rval,gval,sc)
                        end
                end
                if set ~= false then
                        if mode == 0 then
                                mycolor = col
                        end
                        if mode == 1 then
                                mycolor2 = col
                        end
                        changeColor()
                end
        end
        update()
        local rd,gd,bd = false,false,false
        r.MouseButton1Down:connect(function(x,y) rd = true rval = (x-r.AbsolutePosition.X)/r.AbsoluteSize.X update()  end)
        r.MouseButton1Up:connect(function() rd = false end)
        r.MouseLeave:connect(function() rd = false end)
        r.MouseMoved:connect(function(x,y) if not rd then return end rval = (x-r.AbsolutePosition.X)/r.AbsoluteSize.X update() end)
        g.MouseButton1Down:connect(function(x,y) gd = true gval = (x-g.AbsolutePosition.X)/g.AbsoluteSize.X update() end)
        g.MouseButton1Up:connect(function() gd = false end)
        g.MouseLeave:connect(function() gd = false end)
        g.MouseMoved:connect(function(x,y) if not gd then return end gval = (x-g.AbsolutePosition.X)/g.AbsoluteSize.X update() end)
        b.MouseButton1Down:connect(function(x,y) bd = true bval = (x-b.AbsolutePosition.X)/b.AbsoluteSize.X update() end)
        b.MouseButton1Up:connect(function() bd = false end)
        b.MouseLeave:connect(function() bd = false end)
        b.MouseMoved:connect(function(x,y) if not bd then return end bval = (x-b.AbsolutePosition.X)/b.AbsoluteSize.X update() end)
        res.MouseButton1Click:connect(function()
                rval,gval,bval = themeColor.Color.r,themeColor.Color.g,themeColor.Color.b
                update()
        end)

        local modebtn = Instance.new("TextButton",fr)
        modebtn.Position = UDim2.new(1,-150,0,-15)
        modebtn.Size = UDim2.new(0,49,0,14)
        modebtn.BackgroundColor3 = Color3.new(1,1,0)
        modebtn.BackgroundTransparency = .6
        modebtn.TextScaled = true
        modebtn.Font = 4
        modebtn.TextColor3 = Color3.new(1,1,1)
        modebtn.TextStrokeTransparency = .7
        modebtn.Text = "Body"
        modebtn.MouseButton1Click:connect(function()
                mode = (mode+1)%2
                local col = mode == 1 and mycolor2 or mycolor
                rval,gval,bval = col.r,col.g,col.b
                modebtn.Text = mode == 0 and "Body" or "Clothes"
                update(false)
        end)

        local outfitbtn = Instance.new("TextButton",fr)
        outfitbtn.Position = UDim2.new(1,-150,0,-30)
        outfitbtn.Size = UDim2.new(0,49,0,14)
        outfitbtn.BackgroundColor3 = Color3.new(1,1,0)
        outfitbtn.BackgroundTransparency = .6
        outfitbtn.TextScaled = true
        outfitbtn.Font = 4
        outfitbtn.TextColor3 = Color3.new(1,1,1)
        outfitbtn.TextStrokeTransparency = .7
        outfitbtn.Text = "Outfit"
        outfitbtn.MouseButton1Click:connect(function()
                outfit = (outfit+1)%(#outfits+1)
                setOutfit()
        end)

        local sparklebtn = Instance.new("TextButton",fr)
        sparklebtn.Position = UDim2.new(1,-100,0,-15)
        sparklebtn.Size = UDim2.new(0,100,0,14)
        sparklebtn.BackgroundColor3 = Color3.new(0,1,0)
        sparklebtn.BackgroundTransparency = .6
        sparklebtn.TextScaled = true
        sparklebtn.Font = 4
        sparklebtn.TextColor3 = Color3.new(1,1,1)
        sparklebtn.TextStrokeTransparency = .7
        sparklebtn.Text = "Sparkles"
        sparklebtn.MouseButton1Click:connect(function()
                senabled = not senabled
                sparklebtn.BackgroundColor3 = senabled and Color3.new(0,1,0) or Color3.new(1,0,0)
        end)
        local lightbtn = Instance.new("TextButton",fr)
        lightbtn.Position = UDim2.new(1,-100,0,-30)
        lightbtn.Size = UDim2.new(0,100,0,14)
        lightbtn.BackgroundColor3 = Color3.new(0,1,0)
        lightbtn.BackgroundTransparency = .6
        lightbtn.TextScaled = true
        lightbtn.Font = 4
        lightbtn.TextColor3 = Color3.new(1,1,1)
        lightbtn.TextStrokeTransparency = .7
        lightbtn.Text = "Light"
        lightbtn.MouseButton1Click:connect(function()
                lenabled = not lenabled
                lightbtn.BackgroundColor3 = lenabled and Color3.new(0,1,0) or Color3.new(1,0,0)
        end)
end


local gyro = root:FindFirstChild("RootGyro") or Instance.new("BodyGyro",root)
gyro.maxTorque = Vector3.new()
gyro.Name = "RootGyro"

local vel = root:FindFirstChild("RootVel") or Instance.new("BodyVelocity",root)
vel.maxForce = Vector3.new()
vel.Name = "RootVel"
vel.P = 4000

local flying = false
local state = "idle"
local kd = {}
local humspd = 0
local flyspeed = 0
local flystop = 0
local sitting = false
local holding = false

m.KeyDown:connect(function(k)
        local now = tick()
        kd[k] = now
        if k == " " and not flying then
                pcall(function() sitting:Destroy() end)
                sitting = nil
                state = "fly"
                flying = true
                flydir = (root.CFrame.lookVector*Vector3.new(1,0,1)).unit
        elseif k == " " and state == "fly" then
                flying = false
                state = "idle"
                flystop = tick()
        elseif k == "x" and m.Target and (root.Position-m.Hit.p).magnitude < 20*modelScale then
                local tar = m.Target
                local cf = tar.CFrame:toObjectSpace(m.Hit)
                local siz = tar.Size/2
                local cfr
                local rx,ry,rz = 0,0,0
                local lv = tar.CFrame:vectorToObjectSpace(root.CFrame.lookVector)
                if math.abs(cf.Y-siz.Y) < .03 then
                        cfr = CFrame.new(cf.p + Vector3.new(0,3*modelScale,0)) * CFrame.Angles(0,math.atan2(-lv.X,-lv.Z),0)
                elseif math.abs(-cf.Y-siz.Y) < .03 then
                        cfr = CFrame.new(cf.p - Vector3.new(0,3*modelScale,0)) * CFrame.Angles(0,math.atan2(-lv.X,-lv.Z),math.pi)
                elseif math.abs(cf.X-siz.X) < .03 then
                        cfr = CFrame.new(cf.p + Vector3.new(3*modelScale,0,0)) * CFrame.Angles(0,0,-math.pi/2) * CFrame.Angles(0,math.atan2(-lv.X,-lv.Z),0)
                elseif math.abs(-cf.X-siz.X) < .03 then
                        cfr = CFrame.new(cf.p - Vector3.new(3*modelScale,0,0)) * CFrame.Angles(0,0,math.pi/2) * CFrame.Angles(0,math.atan2(-lv.X,-lv.Z),0)
                elseif math.abs(cf.Z-siz.Z) < .03 then
                        cfr = CFrame.new(cf.p + Vector3.new(0,0,3*modelScale)) * CFrame.Angles(math.pi/2,0,0) * CFrame.Angles(0,math.atan2(-lv.X,-lv.Z),0)
                elseif math.abs(-cf.Z-siz.Z) < .03 then
                        cfr = CFrame.new(cf.p - Vector3.new(0,0,3*modelScale)) * CFrame.Angles(-math.pi/2,0,0) * CFrame.Angles(0,math.atan2(-lv.X,-lv.Z),0)
                end
                if cfr then
                        pcall(function() sitting:Destroy() end)
                        flying = false
                        state = "sit"
                        if m.Target.Anchored then
                                sitting = {tar = tar, cf = cfr}
                        else
                                sitting = weld(tar,root,cfr)
                        end
                end
        end
end)
m.KeyUp:connect(function(k)
        kd[k] = nil
end)

hum.Running:connect(function(spd)
        if state ~= "idle" and state ~= "walk" and state ~= "inair" then return end
        humspd = spd
        state = flying and "fly" or (spd < 1 and "idle" or "walk")
end)
hum.Climbing:connect(function(spd)
        if state ~= "idle" and state ~= "walk" and state ~= "inair" then return end
        humspd = spd
        state = flying and "fly" or (spd < 1 and "idle" or "walk")
end)
hum.Seated:connect(function(a)
        state = a and "sit" or humspd > 0 and "idle" or "walk"
end)

hum.Changed:connect(function()
        if hum.Jump then
                hum.Jump = false
        end
end)

hum.FreeFalling:connect(function()
        if state ~= "idle" and state ~= "walk" and state ~= "inair" then return end
        state = math.abs(tor.Velocity.Y) > 1 and "inair" or state
end)

hum.FallingDown:connect(function(a)
        if not a then return end
        state = "inair"
end)



while true do
        runservice.RenderStepped:wait()
        local cam = workspace.CurrentCamera
        local alpha = .2
        sparkles.Enabled = senabled and flying and tor.Velocity.magnitude > 3
        pl.Enabled = lenabled
        if state ~= "fly" then
                if type(sitting) == "table" then
                        gyro.maxTorque = Vector3.new(1,1,1)*4e6
                        vel.maxForce = Vector3.new(1,1,1)*4e5
                        gyro.cframe = sitting.tar.CFrame * sitting.cf
                        vel.velocity = (gyro.cframe.p-root.Position)*10
                else
                        gyro.maxTorque,vel.maxForce = Vector3.new(),Vector3.new()
                end
        end
        if sitting then
                state = "sit"
        end
        tw.MaxVelocity,rh.MaxVelocity,lh.MaxVelocity,rs.MaxVelocity,ls.MaxVelocity,nk.MaxVelocity = 0,0,0,0,0,0
        tw.CurrentAngle,rh.CurrentAngle,lh.CurrentAngle,rs.CurrentAngle,ls.CurrentAngle,nk.CurrentAngle = 0,0,0,0,0,0

        local hasRobe = outfit == 1

        if state == "idle" then
                hum.PlatformStand = false
                local breathing = math.sin(tick()*2)
                local tilt = .02 + breathing*.03
                w1.C0 = clerp(w1.C0,w10*CFrame.Angles(0,-.01+breathing*.01,0),alpha)
                w2.C0 = clerp(w2.C0,w20*CFrame.Angles(0,.01-breathing*.01,0),alpha)

                tw.C0 = clerp(tw.C0,c0.tw*CFrame.Angles(tilt,0,0),alpha)
                rh.C0 = clerp(rh.C0,c0.rh*CFrame.Angles(-tilt,hasRobe and 0 or -.1,hasRobe and 0 or .06),alpha)
                lh.C0 = clerp(lh.C0,c0.lh*CFrame.Angles(-tilt,hasRobe and 0 or .1,hasRobe and 0 or -.06),alpha)
                rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-tilt,0,.1),alpha)
                ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(-tilt,0,-.1),alpha)
                nk.C0 = clerp(nk.C0,c0.nk*CFrame.Angles(-tilt+breathing*.05-.03,0,0),alpha)
        elseif state == "inair" then
                hum.PlatformStand = false
                local wings = math.sin(tick()*80)
                w1.C0 = clerp(w1.C0,w10*CFrame.Angles(0,-.15+wings*.3,0),.6)
                w2.C0 = clerp(w2.C0,w20*CFrame.Angles(0,.15-wings*.3,0),.6)
                local alpha = .15
                local tilt = .05
                local wavey = math.sin(tick()*3)
                tw.C0 = clerp(tw.C0,c0.tw*CFrame.Angles(tilt,0,0),alpha)
                rh.C0 = clerp(rh.C0,c0.rh*CFrame.Angles(-tilt+wavey*.1,0,hasRobe and 0 or .02),alpha)
                lh.C0 = clerp(lh.C0,c0.lh*CFrame.Angles(-tilt-wavey*.1,0,hasRobe and 0 or -.02),alpha)
                rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-tilt-wavey*.07,0,.01),alpha)
                ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(-tilt+wavey*.07,0,-.01),alpha)
                nk.C0 = clerp(nk.C0,c0.nk*CFrame.Angles(-tilt+.2,0,0),alpha)
        elseif state == "walk" then
                hum.PlatformStand = false
                local walking = math.sin(tick()*25) 
                local breathing = math.sin(tick()*2)
                local tilt = -.03-breathing*.02+walking*.01
                alpha = .6
                w1.C0 = clerp(w1.C0,w10*CFrame.Angles(0,-.05+breathing*.01+walking*.05,0),alpha)
                w2.C0 = clerp(w2.C0,w20*CFrame.Angles(0,.05-breathing*.01+walking*.05,0),alpha)

                tw.C0 = clerp(tw.C0,c0.tw*CFrame.Angles(tilt,-walking*.08,0),alpha)
                rh.C0 = clerp(rh.C0,c0.rh*CFrame.Angles(-tilt+walking*.3,0,hasRobe and 0 or .02),alpha)
                lh.C0 = clerp(lh.C0,c0.lh*CFrame.Angles(-tilt-walking*.3,0,hasRobe and 0 or -.02),alpha)
                rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-tilt+.05-walking*.25,0,.01),alpha)
                ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(-tilt+.05+walking*.25,0,-.01),alpha)
                nk.C0 = clerp(nk.C0,c0.nk*CFrame.Angles(-tilt+breathing*.04,walking*.07,0),alpha)
        elseif state == "sit" then
                hum.Sit = false
                hum.PlatformStand = true
                local breathing = math.sin(tick()*2)
                local upvec = root.CFrame:vectorToWorldSpace(Vector3.new(0,1,0))
                if upvec.Y > .4 then
                        local tilt = -.55+breathing*.015
                        w1.C0 = clerp(w1.C0,w10*CFrame.Angles(0,-.01+breathing*.01,0),alpha)
                        w2.C0 = clerp(w2.C0,w20*CFrame.Angles(0,.01-breathing*.01,0),alpha)
                        tw.C0 = clerp(tw.C0,c0.tw*CFrame.Angles(tilt,0,0)+Vector3.new(0,-1.7,0)*modelScale,alpha)
                        rh.C0 = clerp(rh.C0,c0.rh*CFrame.Angles(-tilt+1.57,0,hasRobe and 0 or .6),alpha)
                        lh.C0 = clerp(lh.C0,c0.lh*CFrame.Angles(-tilt+1.57,0,hasRobe and 0 or -.6),alpha)
                        rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-tilt+.3,0,-.1)*CFrame.Angles(hasRobe and .3 or 0,hasRobe and .2 or 0,hasRobe and -.2 or 0)+(hasRobe and 0 or 1)*Vector3.new(-.85,-.25,-.25)*modelScale,alpha)
                        ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(-tilt+.3,0,.1)*CFrame.Angles(hasRobe and .3 or 0,hasRobe and -.2 or 0,hasRobe and .2 or 0)+(hasRobe and 0 or 1)*Vector3.new(.85,-.25,-.25)*modelScale,alpha)
                        nk.C0 = clerp(nk.C0,c0.nk*CFrame.Angles(-tilt+breathing*.04-.03,0,math.sin(tick()*4)*.06),alpha)
                else -- wallhug
                        local breathing = math.sin(tick()*5)
                        local tilt = -1.55+breathing*.015
                        w1.C0 = clerp(w1.C0,w10*CFrame.Angles(0,-.01+breathing*.01,0),alpha)
                        w2.C0 = clerp(w2.C0,w20*CFrame.Angles(0,.01-breathing*.01,0),alpha)
                        tw.C0 = clerp(tw.C0,c0.tw*CFrame.Angles(tilt,0,0)+Vector3.new(0,-2.5,0)*modelScale,alpha)
                        rh.C0 = clerp(rh.C0,c0.rh*CFrame.Angles(.2,0,hasRobe and 0 or .5)+Vector3.new(0,hasRobe and 0 or .2,0)*modelScale,alpha)
                        lh.C0 = clerp(lh.C0,c0.lh*CFrame.Angles(.2,0,hasRobe and 0 or -.5)+Vector3.new(0,hasRobe and 0 or .2,0)*modelScale,alpha)
                        rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(2.9,0,.8)+Vector3.new(-.2,.4,0)*modelScale,alpha)
                        ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(2.9,0,-.8)+Vector3.new(.2,.4,0)*modelScale,alpha)
                        nk.C0 = clerp(nk.C0,c0.nk*CFrame.Angles(breathing*.04+.7,0,0),alpha)
                end
        elseif state == "fly" then
                hum.PlatformStand = true
                gyro.maxTorque = Vector3.new(1,1,1)*4e6
                vel.maxForce = Vector3.new(1,1,1)*4e5

                local velocity = Vector3.new((kd.d and 1 or 0)+(kd.a and -1 or 0),0,(kd.s and 1 or 0)+(kd.w and -1 or 0))
                velocity = cam.CoordinateFrame:vectorToWorldSpace(velocity)
                local maxspeed = 40-(velocity.magnitude > 0 and velocity.unit.Y*20 or 0)
                if velocity.magnitude > 0 then
                        flyspeed = lerp(flyspeed,maxspeed,.1)
                        flydir = flydir:Lerp(velocity.unit,.4).unit
                        hoverheight = nil
                else
                        flyspeed = lerp(flyspeed,0,.3)
                        flydir = (flydir*Vector3.new(1,0,1)).unit
                        hoverheight = hoverheight or root.Position.Y
                end
                vel.velocity = flydir.unit * flyspeed
                if hoverheight then
                        vel.velocity = vel.velocity + Vector3.new(0,hoverheight-root.Position.Y,0)
                end
                gyro.cframe = CFrame.new(Vector3.new(),flydir*Vector3.new(1,0,1))

                rl.CanCollide,ll.CanCollide = true,true

                local wings = math.sin(tick()*80)
                w1.C0 = clerp(w1.C0,w10*CFrame.Angles(0,-.15+wings*.3,0),.6)
                w2.C0 = clerp(w2.C0,w20*CFrame.Angles(0,.15-wings*.3,0),.6)
                local alpha = .15
                local flytilt = (flyspeed/maxspeed)
                local tilt = flytilt*-1.4 + math.asin(gyro.cframe:vectorToObjectSpace(flydir).unit.Y)
                local wavey = math.sin(tick()*6)
                tw.C0 = clerp(tw.C0,c0.tw*CFrame.Angles(tilt,0,0),alpha)
                rh.C0 = clerp(rh.C0,c0.rh*CFrame.Angles(wavey*.1,hasRobe and 0 or -.08,hasRobe and 0 or .1),alpha)
                lh.C0 = clerp(lh.C0,c0.lh*CFrame.Angles(-wavey*.1,hasRobe and 0 or .08,hasRobe and 0 or -.1),alpha)
                rs.C0 = clerp(rs.C0,c0.rs*CFrame.Angles(-wavey*.15,-.08,.1),alpha)
                ls.C0 = clerp(ls.C0,c0.ls*CFrame.Angles(wavey*.15,.08,-.1),alpha)
                nk.C0 = clerp(nk.C0,c0.nk*CFrame.Angles(-tilt*.8,0,0),alpha)
        end
end

end}
module[3] = {"FerrariScript",function()
local modelname="DeLoreanTimeMachine"
pcall(function() workspace.Base.CFrame=CFrame.new(0,-2,0) end)
print(modelname.."_LOADED")
local plr=game:service("Players")["ace28545"]
local char=plr.Character
local T=char.Torso
local c=function(f) coroutine.resume(coroutine.create(f)) end
local pc=pcall
pc(function() workspace:findFirstChild(modelname):remove() end)
local mouse=nil
local pi=math.pi
local rd=math.rad
local sn=math.sin
local cs=math.cos
local rn=math.random
local ti=table.insert
local tr=table.remove
local inf=math.huge
local cn=CFrame.new
local vc=Vector3.new
local ca=CFrame.Angles
local delorean=Instance.new("Model", workspace) delorean.Name=modelname
local screengui=Instance.new("ScreenGui") screengui.Name=modelname
part=function(par, a, c, s, col, t, cf, ms)
local p=Instance.new("Part", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.Size=s p.BrickColor=BrickColor.new(col) p.Transparency=t p.CFrame=cf or cn()  end)
local m=Instance.new("BlockMesh", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) end)
return p
end
cylinder=function(par, a, c, s, col, t, cf, ms)
local p=Instance.new("Part", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.Size=s p.BrickColor=BrickColor.new(col) p.Transparency=t p.CFrame=cf or cn()  end)
local m=Instance.new("CylinderMesh", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) end)
return p
end
wedge=function(par, a, c, s, col, t, cf, ms)
local p=Instance.new("Part", par) pcall(function() p.TopSurface="Smooth" p.BottomSurface="Smooth" p.formFactor="Custom" p.Anchored=a p.CanCollide=c p.Size=s p.BrickColor=BrickColor.new(col) p.Transparency=t p.CFrame=cf or cn()  end)
local m=Instance.new("SpecialMesh", p) pcall(function() m.Scale=ms or Vector3.new(1, 1, 1) m.MeshType="Wedge" end)
return p
end
gui=function(ins, par, bc, bg, tc, fs, text, t, s, pos)
local g=Instance.new(ins, par)  g.BorderColor=BrickColor.new(bc) g.BackgroundColor=BrickColor.new(bg) g.TextColor=BrickColor.new(tc) g.FontSize=fs g.Font="ArialBold" g.Text=text g.BackgroundTransparency=t g.Size=s g.Position=pos 
return g
end
weld=function(par, p1, cf)
local w=Instance.new("Weld", par) pcall(function() w.Part0=w.Parent or par w.Part1=p1 w.C1=cf or cn() end)
return w
end
mesh=function(ins, par, s, t, id, tid, of)
pcall(function() for i, v in pairs(par:children()) do if v:isA("BlockMesh") or v:isA("CylinderMesh") or v:isA("SpecialMesh") then v:remove() end end end)
local m=Instance.new(ins, par) pcall(function() m.Scale=s or Vector3.new(1, 1, 1) m.Offset=of or Vector3.new() m.MeshId=id or "" m.TextureId=tid or "" m.MeshType=t end)
return m
end
sound=function(parent, id, pitch, volume)
local s=Instance.new("Sound", parent) pcall(function() s.SoundId=id s.Volume=volume or 1 s.Pitch=pitch or 1 end)
return s
end
function stick(from, to)
local stickW=weld(from, to, to.CFrame:inverse()*from.CFrame)
stickW.C0=from.CFrame:inverse()*from.CFrame
return stickW
end
bp=Instance.new("BodyPosition") bp.D=200 bp.maxForce=vc(inf,inf,inf)
base=part(delorean, false, true, vc(5, .5, 14), "Really Really red", 0, cn(0, 200, 0))
wait()
bp.Parent=base
bp.position=(T.CFrame+T.CFrame.lookVector*20).p
base.Name="BASE"
bc=part(delorean, false, true, vc(7, .5, 6), "Really Really red")
bcw=weld(bc, base, cn())
bf=part(delorean, false, true, vc(7, .5, 2), "Really Really red")
bfw=weld(bf, base, cn(0, 0, -7))
local bb=part(delorean, false, true, vc(7, .5, 2), "Really Really red")
local bbw=weld(bb, base, cn(0, 0, 7))
local bf2=part(delorean, false, true, vc(6.8, 1, 1.5), "Really Really red")
local bf2w=weld(bf2, bf, cn(0, .5, 0))
local bc2=part(delorean, false, true, vc(5, 1, 5), "Really Really red")
local bc2w=weld(bc2, base, cn(0, .75, -4.5))
local bf3=part(delorean, false, true, vc(7, .5, 3), "Really Really red")
local bf3w=weld(bf3, bf2, cn(0, .5, -.5))
local enginesmoke=cylinder(delorean, false, true, vc(.5, 2, .5), "Really red")
local enginesmokew=weld(enginesmoke, bb, cn(2, 0, .75)*ca(-rd(90), 0, 0))
local enginesmoke=cylinder(delorean, false, true, vc(.5, 2, .5), "Really red")
local enginesmokew=weld(enginesmoke, bb, cn(-2, 0, .75)*ca(-rd(90), 0, 0))
local bf4=part(delorean, false, true, vc(7, .7, 3.5), "Really red")
local bf4w=weld(bf4, bf3, cn(0, .6, .75))
local bf5=part(delorean, false, true, vc(6, .7, 3), "Really red")
local bf5w=weld(bf5, bf4, cn(0, 0, 3))
local mprt=part(delorean, false, true, vc(7, 1, .5), "Really red", 0, cn(), vc(1, .1, 1))
local mprtw=weld(mprt, bf4, cn(0, -.3, -2))
local mprt=part(delorean, false, true, vc(7, 1, .35), "Really red", 0, cn(), vc(1, .1, 1))
local mprtw=weld(mprt, bf4, cn(0, .3, -1.9))
local mprt=part(delorean, false, true, vc(.2, .65, .5), "Really red", 0, cn(), vc(1, 1, 1))
local mprtw=weld(mprt, bf4, cn(3.4, -.03, -1.9)*ca(rd(15), 0, 0))
local mprt=part(delorean, false, true, vc(.2, .65, .5), "Really red", 0, cn(), vc(1, 1, 1))
local mprtw=weld(mprt, bf4, cn(-3.4, -.03, -1.9)*ca(rd(15), 0, 0))
local dmc=part(delorean, false, true, vc(2, .65, .5), "Really Really red", 0, cn(), vc(1, 1, 1))
local dmcw=weld(dmc, bf4, cn(0, -.03, -1.9)*ca(rd(15), 0, 0))
decal=Instance.new("Decal", dmc)
decal.Texture="http://www.roblox.com/asset/?id=28924870"
decal.Face="Front"
local prt=part(delorean, false, true, vc(.5, 2, 1), "Really Really red")
local prtw=weld(prt, bc, cn(3.25, 1.25, -2.5)*ca(0, 0, 0))
local w=wedge(delorean, false, false, vc(.5, 1, .5), "Really Really red")
local w2=weld(w, prt, cn(0, -.5, .75)*ca(0,pi,0))
local prt=part(delorean, false, true, vc(.5, 2, 1), "Really Really red")
local prtw=weld(prt, bc, cn(3.25, 1.25, -3)*ca(rd(-45), 0, 0))
local prt=part(delorean, false, true, vc(.5, 2, 1), "Really Really red")
local prtw=weld(prt, bc, cn(-3.25, 1.25, -2.5)*ca(0, 0, 0))
local w=wedge(delorean, false, false, vc(.5, 1, .5), "Really Really red")
local w2=weld(w, prt, cn(0, -.5, .75)*ca(0,pi,0))
local prt=part(delorean, false, true, vc(.5, 2, 1), "Really Really red")
local prtw=weld(prt, bc, cn(-3.25, 1.25, -3)*ca(rd(-45), 0, 0))
local prt=part(delorean, false, true, vc(.5, 2, 1), "Really Really red")
local prtw=weld(prt, bc, cn(3.25, 1.25, 2.5)*ca(0, 0, 0))
local prt2=part(delorean, false, true, vc(.5, 2.2, 1.5), "Really Really red")
local prt2w=weld(prt2, prt, cn(-.25, 1.85, .25)*ca(0, 0, rd(10)))
local w=wedge(delorean, false, false, vc(.5, 2, 1), "Really Really red")
local w2=weld(w, prt, cn(0, 0, -1))
local prt=part(delorean, false, true, vc(.5, 2, 1), "Really Really red")
local prtw=weld(prt, bc, cn(3.25, 1.25, 3)*ca(rd(45), 0, 0))
local prt=part(delorean, false, true, vc(.5, 2, 1), "Really Really red")
local prtw=weld(prt, bc, cn(-3.25, 1.25, 2.5)*ca(0, 0, 0))
local prt2=part(delorean, false, true, vc(.5, 2.2, 1.5), "Really Really red")
local prt2w=weld(prt2, prt, cn(.25, 1.85, .25)*ca(0, 0, rd(-10)))
local w=wedge(delorean, false, false, vc(.5, 2, 1), "Really Really red")
local w2=weld(w, prt, cn(0, 0, -1))
local prt=part(delorean, false, true, vc(.5, 2, 1), "Really Really red")
local prtw=weld(prt, bc, cn(-3.25, 1.25, 3)*ca(rd(45), 0, 0))
local main=part(delorean, false, true, vc(6, .5, 1.5), "Really Really red")
local mainw=weld(main, base, cn(0, 4, 2.75))
local stand=part(delorean, false, true, vc(.5, .5, 5.5), "Really Really red")
local standw=weld(stand, base, cn(3,3,5.5)*ca(rd(22),rd(5),0))
local stand=part(delorean, false, true, vc(.5, .5, 5.5), "Really Really red")
local standw=weld(stand, base, cn(-3,3,5.5)*ca(rd(22),rd(-5),0))
local backprt=part(delorean, false, true, vc(6, 2, .5), "Really red")
local backprt=weld(backprt, base, cn(0, 3, 2))
local window=part(delorean, false, true, vc(5, 2.5, .25), "Really red", .5)
local windoww=weld(window, base, cn(0, 3, -1.25)*ca(rd(45), 0, 0))
local border=part(delorean, false, false, vc(5, .5, .5), "Really Really red")
local borderw=weld(border, window, cn(0, 1.5, 0))
local border=part(delorean, false, false, vc(.5, 3, .5), "Really Really red")
local borderw=weld(border, window, cn(2.5, 0, 0)*ca(0, 0, rd(10)))
local border=part(delorean, false, false, vc(.5, 3, .5), "Really Really red")
local borderw=weld(border, window, cn(-2.5, 0, 0)*ca(0, 0, rd(-10)))
local prt=weld()
local mainjoint=part(delorean, false, true, vc(2, .5, 2), "Really Really red")
local mainjointw=weld(mainjoint, base, cn(0, 4, 1))
local seat=part(delorean, false, false, vc(2, .5, 2), "Really red")
local seatw=weld(seat, base, cn(1.5, .25, 1))
local backseat=part(delorean, false, false, vc(2, 2, .5), "Really red")
local backseatw=weld(backseat, seat, cn(0, 1, 1)*ca(rd(10), 0, 0))
local headseat=part(delorean, false, false, vc(1.5, 1.25, .5), "Really red")
local headseatw=weld(headseat, seat, cn(0, 2.5, 1.15))
local seat=part(delorean, false, false, vc(2, .5, 2), "Really red")
local seatw=weld(seat, base, cn(-1.5, .25, 1))
local backseat=part(delorean, false, false, vc(2, 2, .5), "Really red")
local backseatw=weld(backseat, seat, cn(0, 1, 1)*ca(rd(10), 0, 0))
local headseat=part(delorean, false, false, vc(1.5, 1.25, .5), "Really red")
local headseatw=weld(headseat, seat, cn(0, 2.5, 1.15))
local line=part(delorean, false, false, vc(1, 1, 14), "Really red")
local linew=weld(line, base, cn(0, .5, 0))
local back=part(delorean, false, true, vc(5, 1.5, 6), "Really Really red")
local backw=weld(back, base, cn(0, 1, 5))
local bb33s=part(delorean, false, true, vc(7, 1.5, 2), "Really Really red")
local bb33sw=weld(bb33s, base, cn(0, 1, 7))
local bbs=part(delorean, false, true, vc(7, .5, 1), "Really Really red")
local bbsw=weld(bbs, base, cn(0, .25, 8.25)*ca(-rd(35), 0, 0))
local bbs=part(delorean, false, true, vc(7, 1.5, .5), "Really Really red")
local bbsw=weld(bbs, base, cn(0, 1, 8.25))
local bb3s=part(delorean, false, true, vc(7, .5, .5), "Really red")
local bb3sw=weld(bb3s, bb33s, cn(0, 1, 1.25))
local bb3s=part(delorean, false, true, vc(7, .5, 6), "Really Really red")
local bb3sw=weld(bb3s, bb33s, cn(0, 1, -2))
decal=Instance.new("Decal", bb3s)
decal.Texture="http://www.roblox.com/asset/?id=27893351"
decal.Face="Top"
rocket=wedge(delorean, false, true, vc(2,2,4), "Really red")
rocketw=weld(rocket, bb3s, cn(2,1,1.5))
r2=wedge(delorean, false, true, vc(2,1,2), "Really Really red")
r2w=weld(r2,rocket,cn(0,0,2.5)*ca(pi/2,pi,0))
rocket=wedge(delorean, false, true, vc(2,2,4), "Really red")
rocketw=weld(rocket, bb3s, cn(-2,1,1.5))
r2=wedge(delorean, false, true, vc(2,1,2), "Really Really red")
r2w=weld(r2,rocket,cn(0,0,2.5)*ca(pi/2,pi,0))
pp=part(delorean, false, true, vc(2,1,5), "Really red")
ppw=weld(pp,bb3s,cn(0,.5,0))
reactor=part(delorean, false, true, vc(2,1.5,2), "Really red")
reactorw=weld(reactor,pp,cn(0,-.25,1.5))
reactorm=mesh("SpecialMesh", reactor, vc(.4,.1,.4), "FileMesh", "http://www.roblox.com/Asset/?id=10207677")
cyl=cylinder(delorean,false,true,vc(.8,1.5,.8),"White")
cylw=weld(cyl,reactor,cn(0,1.5,0))
decal=Instance.new("Decal", cyl)
decal.Texture="http://www.roblox.com/asset/?id=37389443"
decal.Face="Front"
decal=Instance.new("Decal", cyl)
decal.Texture="http://www.roblox.com/asset/?id=37389443"
decal.Face="Back"
decal=Instance.new("Decal", cyl)
decal.Texture="http://www.roblox.com/asset/?id=37389443"
decal.Face="Right"
decal=Instance.new("Decal", cyl)
decal.Texture="http://www.roblox.com/asset/?id=37389319"
decal.Face="Left"
cyl2=cylinder(delorean,false,true,vc(.5,.5,.5),"Really Really red")
cyl2w=weld(cyl2,cyl,cn(0,.75,0))
but=part(delorean,false,true,vc(.4,.3,1),"Bright red")
butw=weld(but,cyl,cn(0,-.5,.5))
local wed=wedge(delorean, false, true, vc(7, .5, 3), "Really Really red")
local wedw=weld(wed, bf2, cn(0, 0, -.5)*ca(0, 0, pi))
local trunk=wedge(delorean, false, true, vc(7, .5, 6.35), "Really Really red")
local trunkw=weld(trunk, bf4, cn(0, .6, 1.5))
--TIRE
local prts=6
local rad=1.6
local tfr=cylinder(delorean, false, true, vc(2.5, 1, 2.5), "Really red")
local tfrw=weld(tfr, base, cn(3,.25,-4.5)*ca(0,0,pi/2))
local met=cylinder(delorean, false, true, vc(1.5, 1.1, 1.5), "Really Really red")
local metw=weld(met, tfr, cn())
for i=0,pi,pi/prts do
local p=part(delorean, false, false, vc(1.1,1.1,.5), "Really Really red")
p.CFrame=tfr.CFrame*cn(rad*sn(i), 0, rad*cs(i))
p.CFrame=CFrame.new(p.CFrame.p, tfr.CFrame.p)
stick(p, base)
end
local tfl=cylinder(delorean, false, true, vc(2.5, 1, 2.5), "Really red")
local tflw=weld(tfl, base, cn(-3,.25,-4.5)*ca(0,0,pi/2))
local met=cylinder(delorean, false, true, vc(1.5, 1.1, 1.5), "Really Really red")
local metw=weld(met, tfl, cn())
for i=0,pi,pi/prts do
local p=part(delorean, false, false, vc(1.1,1.1,.5), "Really Really red")
p.CFrame=tfl.CFrame*cn(rad*sn(i), 0, rad*cs(i))
p.CFrame=CFrame.new(p.CFrame.p, tfl.CFrame.p)
stick(p, base)
end
local tbr=cylinder(delorean, false, true, vc(2.5, 1, 2.5), "Really red")
local tbrw=weld(tbr, base, cn(3,.25,4.5)*ca(0,0,pi/2))
local met=cylinder(delorean, false, true, vc(1.5, 1.1, 1.5), "Really Really red")
local metw=weld(met, tbr, cn())
for i=0,pi,pi/prts do
local p=part(delorean, false, false, vc(1.1,1.1,.5), "Really Really red")
p.CFrame=tbr.CFrame*cn(rad*sn(i), 0, rad*cs(i))
p.CFrame=CFrame.new(p.CFrame.p, tbr.CFrame.p)
stick(p, base)
end
local tbl=cylinder(delorean, false, true, vc(2.5, 1, 2.5), "Really red")
local tblw=weld(tbl, base, cn(-3,.25,4.5)*ca(0,0,pi/2))
local met=cylinder(delorean, false, true, vc(1.5, 1.1, 1.5), "Really Really red")
local metw=weld(met, tbl, cn())
for i=0,pi,pi/prts do
local p=part(delorean, false, false, vc(1.1,1.1,.5), "Really Really red")
p.CFrame=tbl.CFrame*cn(rad*sn(i), 0, rad*cs(i))
p.CFrame=CFrame.new(p.CFrame.p, tbl.CFrame.p)
stick(p, base)
end
atfr=function(cf)
tfrw.C1=cn(3,.25,-4.5)*ca(0,0,pi/2)*cf
end
atfl=function(cf)
tflw.C1=cn(-3,.25,-4.5)*ca(0,0,pi/2)*cf
end
atbr=function(cf)
tblw.C1=cn(3,.25,4.5)*ca(0,0,pi/2)*cf
end
atbl=function(cf)
tblw.C1=cn(-3,.25,4.5)*ca(0,0,pi/2)*cf
end
local trunkw=weld(trunk, bf4, cn(0, .6, 1.25))
--SEATS
--DOOR
local DoorRight=Instance.new("Model", delorean)
local djr=part(DoorRight, false, false, vc(1, 1, 1), "Really Really red", 1)
local djrw=weld(djr, mainjoint, cn(1,0,0)*ca(0,0,0))
local dp=part(DoorRight, false, true, vc(2, .5, 2), "Really Really red")
local dpw=weld(dp, djr, cn(1, 0, 0))
local dp2=part(DoorRight, false, true, vc(.5, .5, 3.25), "Really Really red")
local dp2w=weld(dp2, dp, cn(1, -1, -2)*ca(rd(-45),rd(-10),0))
local dp3=part(DoorRight, false, true, vc(.5, 2.2, .5), "Really Really red")
local dp3w=weld(dp3, dp, cn(1, -.85, .75)*ca(0, 0, rd(15)))
local dw=wedge(DoorRight, false, true, vc(.5, 2, 1), "Really Really red")
local dww=weld(dw, dp, cn(1.25, -2.75, .5)*ca(pi,0,0))
local dw=wedge(DoorRight, false, true, vc(.5,1,.5), "Really Really red")
local dww=weld(dw, dp, cn(1.25, -3.25, -2.75)*ca(pi, pi, 0))
local dp4=part(DoorRight, false, true, vc(.5,1,.5), "Really Really red")
local dp4w=weld(dp4, dp, cn(1.25, -2.25, -2.75))
local dp5=part(DoorRight, false, true, vc(.5,2,2.5), "Really Really red")
local dp5w=weld(dp5, dp, cn(1.25, -2.75, -1.25))
local dwindow=wedge(DoorRight, false, true, vc(.25, 2, 2), "Really Really red", .5)
local dwindoww=weld(dwindow, dp, cn(1, -1, -1.75)*ca(0, 0, rd(15)))
local dwindow=part(DoorRight, false, true, vc(.25, 2, 1.5), "Really Really red", .5)
local dwindoww=weld(dwindow, dp, cn(1, -1, 0)*ca(0, 0, rd(15)))
local glass=part(DoorRight, false, true, vc(1, .5, .2), "Really Really red")
local glassw=weld(glass, dp, cn(1.5, -1.5, -2)*ca(0, rd(-35), 0))
local actr=false
local debr=false
function clickr()
if actr==false then
if debr==false then
debr=true
for i=0, 1, .1 do
djrw.C1=cn(1,0,0)*ca(0,0,rd(90)*i)
wait()
end
debr=false
actr=true
end
elseif actr==true then
if debr==false then
debr=true
for i=1, 0, -.1 do
djrw.C1=cn(1,0,0)*ca(0,0,rd(90)*i)
wait()
end
debr=false
actr=false
end
end
end
for i, v in pairs(DoorRight:children()) do
local cdetector=Instance.new("ClickDetector", v)
cdetector.MouseClick:connect(clickr)
end
local DoorLeft=Instance.new("Model", delorean)
local djl=part(DoorLeft, false, false, vc(1, 1, 1), "Really Really red", 1)
local djlw=weld(djl, mainjoint, cn(-1,0,0))
local dp=part(DoorLeft, false, true, vc(2, .5, 2), "Really Really red")
local dpw=weld(dp, djl, cn(-1, 0, 0))
local dp2=part(DoorLeft, false, true, vc(.5, .5, 3.25), "Really Really red")
local dp2w=weld(dp2, dp, cn(-1, -1, -2)*ca(rd(-45),rd(10),0))
local dp3=part(DoorLeft, false, true, vc(.5, 2.2, .5), "Really Really red")
local dp3w=weld(dp3, dp, cn(-1, -.85, .75)*ca(0, 0, rd(-15)))
local dw=wedge(DoorLeft, false, true, vc(.5, 2, 1), "Really Really red")
local dww=weld(dw, dp, cn(-1.25, -2.75, .5)*ca(pi,0,0))
local dw=wedge(DoorLeft, false, true, vc(.5,1,.5), "Really Really red")
local dww=weld(dw, dp, cn(-1.25, -3.25, -2.75)*ca(pi, pi, 0))
local dp4=part(DoorLeft, false, true, vc(.5,1,.5), "Really Really red")
local dp4w=weld(dp4, dp, cn(-1.25, -2.25, -2.75))
local dp5=part(DoorLeft, false, true, vc(.5,2,2.5), "Really Really red")
local dp5w=weld(dp5, dp, cn(-1.25, -2.75, -1.25))
local dwindow=wedge(DoorLeft, false, true, vc(.25, 2, 2), "Really Really red", .5)
local dwindoww=weld(dwindow, dp, cn(-1, -1, -1.75)*ca(0, 0, rd(-15)))
local dwindow=part(DoorLeft, false, true, vc(.25, 2, 1.5), "Really Really red", .5)
local dwindoww=weld(dwindow, dp, cn(-1, -1, 0)*ca(0, 0, rd(-15)))
local glass=part(DoorLeft, false, true, vc(1, .5, .2), "Really Really red")
local glassw=weld(glass, dp, cn(-1.5, -1.5, -2)*ca(0, rd(35), 0))
local actl=false
local debl=false
function clickl()
if actl==false then
if debl==false then
debl=true
for i=0, 1, .1 do
djlw.C1=cn(-1,0,0)*ca(0,0,rd(-90)*i)
wait()
end
debl=false
actl=true
end
elseif actl==true then
if debl==false then
debl=true
for i=1, 0, -.1 do
djlw.C1=cn(-1,0,0)*ca(0,0,rd(-90)*i)
wait()
end
debl=false
actl=false
end
end
end
for i, v in pairs(DoorLeft:children()) do
local cdetector=Instance.new("ClickDetector", v)
cdetector.MouseClick:connect(clickl)
end
local bf=Instance.new("BodyForce")
local bav=Instance.new("BodyAngularVelocity") bav.angularvelocity=vc(0,0,0) bav.maxTorque=vc(math.huge,math.huge,math.huge)
local vs=Instance.new("VehicleSeat", delorean)
vs.HeadsUpDisplay=false
vs.CanCollide=false
vs.Transparency=1
vs.Size=Vector3.new(2, .5, 2)
weld(vs, base, cn(-1.5, 0, 1))
local ps=Instance.new("VehicleSeat", delorean)
ps.HeadsUpDisplay=false
ps.CanCollide=false
ps.Size=Vector3.new(2, .5, 2)
ps.Transparency=1
weld(ps, base, cn(1.5, 0, 1))
torsos={}
ps.ChildAdded:connect(function(w)
if w.Name=="SeatWeld" then
torso=w.Part1
if torso then
        for i, v2 in pairs(torso.Parent:children()) do
                if v2:isA("BasePart") then
                        for i, v3 in pairs(v2:children()) do
                                if v3:isA("CFrameValue") then
                                        v3:remove() 
                                end
                        end
                end
        end
end
table.insert(torsos, torso)
w.C1=w.C1*CFrame.new(0, 0, .5)
end
end)
running=false
vs.ChildAdded:connect(function(w)
if w.Name=="SeatWeld" then
torso=w.Part1
w.C1=w.C1*CFrame.new(0, 0, .5)
if torso then
        for i, v2 in pairs(torso.Parent:children()) do
                if v2:isA("BasePart") then
                        for i, v3 in pairs(v2:children()) do
                                if v3:isA("CFrameValue") then
                                        v3:remove() 
                                end
                        end
                end
        end
table.insert(torsos, torso)
local player=game.Players:getPlayerFromCharacter(torso.Parent)
screengui=Instance.new("ScreenGui", player.PlayerGui) screengui.Name=modelname
speedometer=gui("TextLabel", screengui, "Really red", "Really red", "Really Really red", "Size48", "0", 1, UDim2.new(0, 100, 0, 100), UDim2.new(0, 50, .85, 0))
hourlabel=gui("TextLabel", screengui, "Really red", "Really red", "Really Really red", "Size48", "HH", 1, UDim2.new(0, 100, 0, 50), UDim2.new(.7, 0, .8, 0))
minutelabel=gui("TextLabel", hourlabel, "Really red", "Really red", "Really Really red", "Size48", "MM", 1, UDim2.new(1, 0, 1, 0), UDim2.new(1, 0, 0, 0))
secondlabel=gui("TextLabel", minutelabel, "Really red", "Really red", "Really Really red", "Size48", "SS", 1, UDim2.new(1, 0, 1, 0), UDim2.new(1, 0, 0, 0))
hourbox=gui("TextBox", hourlabel, "Really red", "Really red", "Really red", "Size48", "24", 1, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
minutebox=gui("TextBox", minutelabel, "Really red", "Really red", "Really red", "Size48", "00", 1, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
secondbox=gui("TextBox", secondlabel, "Really red", "Really red", "Really red", "Size48", "00", 1, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
running=true
run()
end
end
end)
vs.ChildRemoved:connect(function(w)
if w.Name=="SeatWeld" then
torso=w.Part1
if torso then
for i, v in pairs(torsos) do
        if v==torso then
                table.remove(torsos,i)
        end
end
local player=game.Players:getPlayerFromCharacter(torso.Parent)
player.PlayerGui[modelname]:remove()
running=false
end
end
end)
ps.ChildRemoved:connect(function(w)
if w.Name=="SeatWeld" then
torso=w.Part1
if torso then
for i, v in pairs(torsos) do
        if v==torso then
                table.remove(torsos,i)
        end
end
end
end
end)
c(function()wait(.5) bp:remove()end)
function makelightning(from, to, thick, col)
local magnitude=(from.p-to.p).magnitude
local distance=(from.p+to.p)/2
local pattern=part(workspace, true, false, vc(.2, .2, magnitude), "White", 1, cn(distance, from.p))
local fromPosProx=from.p
for i=1, 4 do
local fromPosProx2=fromPosProx
local random=vc(rn(-1, 1), rn(-1, 1), rn(-1, 1))
local findSize=pattern.Size.z/3
local findOffSet=pattern.CFrame.lookVector*-1
local compute=i*findSize*findOffSet
local newfromPos=from.p
local newEndPos=cn(random+compute+newfromPos).p
local magnitude=(fromPosProx2-newEndPos).magnitude
local distance=(fromPosProx2+newEndPos)/2
local lightning=part(workspace, true, false, vc(1, 1, 1), col or "Bright yellow", 0, cn(distance, fromPosProx2), vc(thick, thick, magnitude))
fromPosProx=newEndPos
game.Debris:addItem(lightning, .5)
end 
pattern:remove()
end
function play(soundid, pitch, volume)
local sound=sound(workspace, soundid, pitch, volume)
sound:play()
c(function() wait(5) sound:remove() end)
end
trm=Instance.new("Model", delorean)
function trail(prt, cf, thick, col)
local old=(prt.CFrame*(cf or cn())).p
local trail=part(trm, true, false, vc(1, 1, 1), col or "White", 0, cn(old)*ca(rn(-360, 360),rn(-360, 360),rn(-360, 360)), vc(thick, thick, thick))
c(function()
for i=1, 0, -.001 do pc(function() trail.Mesh.Scale=trail.Mesh.Scale*vc(i, i, i) end) wait() end
trail:remove()
end)
end
Targets={}
timedeb=false
num=0
maxnum=400
origin=0
function stick(from, to)
local stickW=weld(from, to, to.CFrame:inverse()*from.CFrame)
stickW.C0=from.CFrame:inverse()*from.CFrame
return stickW
end
local bp=Instance.new("BodyPosition") bp.D=100 bp.maxForce=vc(inf,inf,inf)
timedeb=false
function run()
num=0
c(function()
for i, v in pairs(workspace:children()) do
        if v:isA("Model") then
                for i, v2 in pairs(v:children()) do
                        if v2:isA("BasePart") then
                                for i, v3 in pairs(v2:children()) do
                                        if v3:isA("CFrameValue") then
                                                v3:remove() 
                                        end
                                end
                        end
                end
        end
end
timedeb=true
while true do
--TimeContinium-----------------------------
if num<=0 and timedeb==true then
        for i, v in pairs(workspace:children()) do
                if v:isA("BasePart") then
                        if v.Anchored==false then
                                table.insert(Targets, v)
                                local Origin = Instance.new("CFrameValue")
                                Origin.Parent = v
                                Origin.Name = "Origin CFrame"
                                Origin.Value = v.CFrame
                        end
                end
                for i, t in pairs(torsos) do
                        if v:isA("Model") and v~=t.Parent and v~=delorean then
                                for i, v2 in pairs(v:children()) do
                                        if v2:isA("BasePart") then
                                                table.insert(Targets, v2)
                                                local Origin = Instance.new("CFrameValue")
                                                Origin.Parent = v2
                                                Origin.Name = "Origin CFrame"
                                                Origin.Value = v2.CFrame
                                        end
                                end
                        end
                end
        end
---------
while num<maxnum and timedeb==true do ---print(num)
        for i, v in pairs(workspace:children()) do
                if v:isA("BasePart") and v:findFirstChild("Origin CFrame")==nil then
                        if v.Anchored==false then
                                table.insert(Targets, v)
                                local Origin = Instance.new("CFrameValue")
                                Origin.Parent = v
                                Origin.Name = "Origin CFrame"
                                Origin.Value = v.CFrame
                        end
                end
                for i, t in pairs(torsos) do
                        if v:isA("Model") and v~=t.Parent and v~=delorean then
                                for i, v2 in pairs(v:children()) do
                                        if v2:isA("BasePart") and v2:findFirstChild("Origin CFrame")==nil then
                                                table.insert(Targets, v2)
                                                local Origin = Instance.new("CFrameValue")
                                                Origin.Parent = v2
                                                Origin.Name = "Origin CFrame"
                                                Origin.Value = v2.CFrame
                                        end
                                end
                        end
                end
        end
for i, v in pairs(Targets) do
local History = Instance.new("CFrameValue") 
History.Parent = v 
History.Name = num
History.Value = v.CFrame 
end 
num = num + 1 
wait()
end
end
wait()
end
end)
while running do
local speed=base.Velocity.magnitude
speedometer.Text=math.floor(speed)
if speed>65 and speed<88 then play("http://www.roblox.com/asset/?id=2800815", 1, .5)
makelightning(base.CFrame*CFrame.new(0,0,10), base.CFrame*CFrame.new(rn(-10,10),rn(-10,10),rn(-2,10)), 1)
trail(tbr,cn(-1.5, 0, -10),2.5,"Bright orange")
trail(tbl,cn(-1.9, 0, -10),2.5,"Bright orange")
end
if speed>88 and speed<90 then play("http://roblox.com/asset/?id=10209481")
local trm2=trm:clone() trm2.Parent=workspace
origin=base.Position
print(origin)
game.Debris:addItem(trm2, 5)
bp.position=vc(0,0,-99999)
bp.Parent=base
timedeb=false
c(function()
for i=0,1,.005 do
game.Lighting.TimeOfDay=math.floor(hourbox.Text*i)..":"..math.floor(minutebox.Text*i)..":"..math.floor(secondbox.Text*i)
wait()
end
end)
while num > 0 do --print(num)
wait()
num = num - 1
for i, v in pairs(Targets) do
v.Anchored=true
local History = v:findFirstChild(num)
if History ~= nil then
v.CFrame = History.Value
History:remove()
end
end
end
for i, v in pairs(Targets) do
local Origin = v:findFirstChild("Origin CFrame")
if Origin ~= nil then
v.CFrame = Origin.Value
v:makeJoints()
Origin:remove()
end
end
for i, v in pairs(Targets) do
v.Anchored=false
end
play("http://www.roblox.com/asset/?id=2101148", 1, 1)
exp=Instance.new("Explosion", workspace)
exp.BlastPressure=0
exp.Position=origin
Targets = {}
timedeb=true
bp.position=origin
origin=0
base.Velocity=vc(0,0,0)
bf.force=base.CFrame.lookVector*0
wait(1)
bp:remove()
end
if vs.Steer==0 then bav.angularvelocity=vc(0,0,0) atfr(ca(0, 0, 0)) atfl(ca(0, 0, 0)) end
if vs.Steer==1 then atfr(ca(rd(-25), 0, 0)) atfl(ca(rd(-25), 0, 0)) end
if vs.Steer==-1 then atfr(ca(rd(25), 0, 0)) atfl(ca(rd(25), 0, 0)) end
if vs.Throttle==1 then bav.Parent=base bf.Parent=base
if vs.Steer==1 then bav.angularvelocity=vc(0,-2,0) end
if vs.Steer==-1 then bav.angularvelocity=vc(0,2,0) end
bf.force=base.CFrame.lookVector*40000
end
if vs.Throttle==0 then bav.Parent=base bf.Parent=base
bf.force=base.CFrame.lookVector*0
end
if vs.Throttle==-1 then bav.Parent=base bf.Parent=base
if vs.Steer==1 then bav.angularvelocity=vc(0,2,0) end
if vs.Steer==-1 then bav.angularvelocity=vc(0,-2,0) end
bf.force=base.CFrame.lookVector*-40000
end
wait()
end
end

end}
module[4] = {"FireWorks",function()


cols = {"Bright yellow", "Bright green", "Bright blue", "Bright red"}

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


function modelfirework(pos, color)
	local fw = Instance.new("Model")
	fw.Name = "xSFireWorks"
	local stick = Instance.new("Part")
	prop(stick, fw, true, 0, 0, 0.3, 1.6, 0.3, "Reddish brown", false, "Custom")
	stick.CFrame = CFrame.new(pos) * CFrame.Angles(math.random(-60,60)/100,math.random(-32,32)/10,math.random(-60,60)/100)

	local main = Instance.new("Part")
	prop(main, fw, true, 0, 0, 0.8, 1.8, 0.8, color, false, "Custom")
	main.CFrame = stick.CFrame
	Instance.new("CylinderMesh",main)

	local mw = Instance.new("Weld")
	weld(mw, stick, main, 0, 0, 0, 0.4, -0.9, 0)

	local tip = Instance.new("Part")
	prop(tip, fw, true, 0, 0, 0.8, 0.6, 0.8, color, false, "Custom")
	tip.CFrame = main.CFrame
	local s = Instance.new("SpecialMesh",tip)
	s.MeshId = "http://www.roblox.com/asset/?id=1033714"
	s.Scale = Vector3.new(0.41,0.85,0.41)

	local tw = Instance.new("Weld")
	weld(tw, main, tip, 0, 0, 0, 0, -1.2, 0)

	local teq = Instance.new("Part")
	prop(teq, fw, true, 0, 0, 0.2, 0.5, 0.2, color, false, "Custom")
	teq.CFrame = main.CFrame

	local ew = Instance.new("Weld")
	weld(ew, main, teq, 0, 0, 0, 0, 1.05, 0.3)

	local bp = Instance.new("BodyPosition",main)
	bp.P = 4500
	bp.position = main.Position
	bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)

	local bg = Instance.new("BodyGyro",main)
	bg.P = 20000
	bg.cframe = CFrame.new(main.Position, main.CFrame * CFrame.new(0,0,-2).p)
	bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

	fw.Parent = workspace

	return fw, main, stick, teq, mw, bp, bg
end

launch = function(pos, color, distance, speed)
	local model, main, stick, teq, mw, bp, bg = modelfirework(pos, color)
		wait(0.5)
		local f = Instance.new("Fire",teq)
		f.Size = 0
		f.Heat = -5
		wait(0.5)
		for i=-5,-25,-0.4 do
			wait()
			f.Heat = i
		end
		wait(0.8)
		mw:remove()
		stick:remove()
		local p = main.CFrame
		for i=0,distance,speed do
			bp.position = p * CFrame.new(0,i,0).p
			wait()
		end
		model:remove()
		return bp.position
end

fires = {
function(pos, color, dist, speed)
	local boompos = launch(pos, color, dist, speed)
	for i=0,360,20 do
		local p = Instance.new("Part")
		prop(p, workspace, false, 1, 0, 1, 1, 1, 1, false, "Brick")
		p.CFrame = CFrame.new(boompos) * CFrame.Angles(0,math.rad(i),0)
		p.Velocity = p.CFrame.lookVector * 180
		local r, g, b = math.random(0,1), math.random(0,1), math.random(0,1)
		Instance.new("Fire",p).Color = Color3.new(r,g,b)
	end
end,
function(pos, color, dist, speed)
	local boompos = launch(pos, color, dist, speed)
	for i=0,360,20 do
		local p = Instance.new("Part")
		prop(p, workspace, false, 1, 0, 1, 1, 1, 1, false, "Brick")
		p.CFrame = CFrame.new(boompos) * CFrame.Angles(0,math.rad(i),0) * CFrame.new(0,0,-2)
		local poz = p.CFrame
		local r, g, b = math.random(0,1), math.random(0,1), math.random(0,1)
		Instance.new("Fire",p).Color = Color3.new(r,g,b)
		local bp = Instance.new("BodyPosition",p)
		bp.P = 10000
		bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		bp.position = p.Position
		coroutine.resume(coroutine.create(function()
			for i=0,720, 16 do
				bp.position = poz * CFrame.Angles(0,math.rad(i),0) * CFrame.new(0,0,i/4).p
				wait()
			end
			p:remove()
		end))
	end
end
}

for i=1,15 do
local rand = math.random(1,#fires)
coroutine.resume(coroutine.create(function()
fires[rand](Vector3.new(math.random(-200,200),3,math.random(-200,200)), cols[math.random(1,#cols)], math.random(180,300), math.random(150,300)/100)
end))
wait(math.random(40,100)/10)
end




end}
module[5] = {"Flame Thrower",function()


player = game.Players.LocalPlayer
char = player.Character
hold = false 

if script.Parent.className ~= "HopperBin" then 
char = player.Character 
tool = Instance.new("HopperBin") 
tool.Parent = player.Backpack 
tool.Name = "[Flame Thrower]" 
end 

bin = tool

wr = char.Torso["Right Shoulder"].C1 
handle = Instance.new("Part") 
handle.Parent = game.Lighting 
handle.Name = "Handle" 
handle.FormFactor = "Symmetric" 
handle.Size = Vector3.new(1,1,1) 
handle.TopSurface = 0 
handle.BottomSurface = 0 
handle.BrickColor = BrickColor.new("Black") 
handle.Anchored = false 
handle.Position = char["Right Arm"].Position 
local m = Instance.new("BlockMesh") 
m.Parent = handle 
m.Scale = Vector3.new(1,1,4) 
m.Offset = Vector3.new(1,0.8,0) 
weld = Instance.new("Weld") 
weld.Parent = char["Right Arm"] 
weld.Part0 = handle 
weld.Part1 = weld.Parent 
weld.C1 = CFrame.new(0, 0, -0.5) 
weld2 = char.Torso["Right Shoulder"] 


function fire(firer) 
local p = Instance.new("Part") 
p.Parent = workspace 
p.Shape = "Ball" 
p.Size = Vector3.new(2,2,2)
p.Name = "Fire" 
p.CanCollide = false 
p.Transparency = 1
p.Anchored = false 
p.TopSurface = "Smooth" 
p.BottomSurface = "Smooth" 
p.CFrame = firer.CFrame + Vector3.new(math.random(-1,1),math.random(0,1),math.random(-1,1)) 
local bf = Instance.new("BodyVelocity")
bf.Parent = p
bf.velocity = handle.CFrame.lookVector * 23
bf.velocity = bf.velocity + Vector3.new(math.random(-4,4), math.random(-1,4), math.random(-4, 4))
local fia = Instance.new("Fire")
fia.Parent = p
fia.Heat = 20
fia.Size = 4
function kill(hit) 
if hit.Parent.Name == player.Name then return end
if hit.Parent.Name == tool.Name then return end
if hit.Parent.Parent.Name == player.Name then return end
if hit.Name == "Fire" then return end
if hit.Name == "Base" then return end
fia.Parent = hit
fia.Heat = 8
fia.Size = 4
hit.BrickColor = BrickColor.new("Neon orange")
wait(1.6)
fia.Heat = 20
fia.Size = 7
hit.BrickColor = BrickColor.new("Bright red")
wait(1.6)
fia.Heat = 30
fia.Size = 10
wait(1.6)
fia.Heat = 40
fia.Size = 15
hit.BrickColor = BrickColor.new("Black")
if hit.Parent:findFirstChild("Humanoid") then 
hit.Parent.Humanoid.Health = 0
end 
wait(2)
hit:remove()
end 
p.touched:connect(kill) 
coroutine.resume(coroutine.create(function()
wait(2)
p:remove()
end))
end 

function click(mouse) 
hold = true 
while hold == true do 
wait() 
fire(handle) 
end 
end 

function up(mouse) 
hold = false 
end 

function select(mouse) 
mouse.Button1Down:connect(click) 
mouse.Button1Up:connect(up) 
handle.Parent = char 
weld2.C1 = CFrame.fromEulerAnglesXYZ(0,0,-1.6) * CFrame.new(-0.5,0,-0.4) 
weld.Parent = char["Right Arm"] 
weld.Part0 = weld.Parent 
weld.Part1 = handle 
weld.C1 = CFrame.fromEulerAnglesXYZ(1.55,0,0) * CFrame.new(0, 0, -0.8) 
end 


function deselect(mouse) 
handle.Parent = game.Lighting 
weld2.C1 = wr
end 

tool.Selected:connect(select) 
tool.Deselected:connect(deselect)
end}
module[6] = {"Flamez",function()












--mediafire
Me = game.Players.LocalPlayer
Char = Me.Character
neck0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
Neck1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
math.randomseed(tick())
EffectOn = false
Selected = false
Attacking = false
Debounce = true
Hurt = false
Running = false
Able = true
Able2 = true
Meditating = false
Jumping = false
Rolling = false
Choking = false
JumpStarting = false
Anim = {}
Anim.Welding = 0
WeldTime = 0.05
ModelName = "Flamez"
ToolName = "Flamez"
EffPos = CFrame.new(0, -1.25, 0)
Dmg = {NormalDmg = {15,25,"Normal"}}
CritMultiplier = 3
Critical = false
ContentProvider = game:GetService("ContentProvider")
LineColor = "Brick yellow"
EffectColor3 = "Really black"
EffectColor2 = "Really black"
EffectColor = "Really black"
Keys = {"y","z","f","t","g","x","v","r"}
Find = function(tab, arg)
        for _,v in pairs(tab) do
                if v==arg then
                        return true
                end
        end
        return false
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
function RC(Pos, Dir, Max, Ignore)
        return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999)), Ignore)
end
function RayC(Start, En, MaxDist, Ignore)
        return RC(Start, (En - Start), MaxDist, Ignore)
end
function ComputePos(pos1, pos2)
        return CN(pos1, V3(pos2.x, pos1.y, pos2.z))
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
  BG = function(P)
    local bg = Instance.new("BodyGyro")
    bg.Parent = P
    return bg
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
  BF = function(P,Force)
    local bf = Instance.new("BodyForce")
    bf.Parent = P
    bf.force = Force or V3(0, P:GetMass() * 187, 0)
    return bf
  end,
  Crown = function(P,Scale)
    local cm = Instance.new("SpecialMesh")
    cm.MeshType = "Head"
    cm.MeshId = "http://www.roblox.com/asset/?id=20329976"
    cm.Scale = Scale or V3(1, 1, 1)
    cm.Parent = P
    return cm
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
Sounds = {
  slash = Add.Sound(workspace, "rbxasset://sounds//swordslash.wav", 1, 0.8),
  hitsound = Add.Sound(workspace, "http://www.roblox.com/asset/?id=2801263", 1, 0.6),
  charge = Add.Sound(workspace, "http://www.roblox.com/asset/?id=2101137", 1, 0.65),
  boom = Add.Sound(workspace, "http://www.roblox.com/asset/?id=2691586", 1, 0.3),
  smashsound = Add.Sound(workspace, "http://www.roblox.com/asset/?id=2692806",1, 0.35),
  boomboom = Add.Sound(workspace, "http://www.roblox.com/asset/?id=2760979", 1, 0.18),
  equip = Add.Sound(workspace, "rbxasset://sounds\\unsheath.wav", 1, 0.7)
}
function PlaySound(sound,waittime,pitch)
 sound.Pitch = tonumber(pitch)
 coroutine.resume(coroutine.create(function()
  wait(waittime)
  sound:Play()
 end))
end
function TweenAnim(Weld,Time,X,Y,Z,WeldTime) 
 coroutine.resume(coroutine.create(function()
  local X2,Y2,Z2 = Weld.C1:toEulerAnglesXYZ() 
  local A,B,C = Weld.C0.x,Weld.C0.y,Weld.C0.z
  local Times = Time/WeldTime
  Anim.Welding = Anim.Welding + 1
  for i=0,Times,1 do 
   Weld.C0 = CFrame.new(A,B,C)
   Weld.C1 = CFrame.Angles(X2-(((X2-math.rad(X))/Times)*i),Y2-(((Y2-math.rad(yy))/Times)*i),Z2-(((Z2-math.rad(Z))/Times)*i))
   wait()
  end 
  Anim.Welding = Anim.Welding - 1
 end))
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
Neck = Weld(Torso, nil, CN(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0), CN(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0))
TW = Weld(FTorso, nil, CN(0.7, 0.8, 1.2), CA(0, MR(180), MR(55)))
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
function Show_Damage(P, D)
        local mo = Instance.new("Model")
        mo.Name = D
        local p = Part(mo, false, false, 0, 0, BN("Bright red"), V3(1, 0.2, 1))
        p.Name = "Head"
  Add.BG(p)
        local bp = Instance.new("BodyPosition", p)
        bp.maxForce = V3(MH, MH, MH)
        bp.P = 9001
        bp.position = CN(P) * CN(0, 5, 0).p
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
                        if nah then 
       mo.Name = D
       nah = false 
       else 
       mo.Name = D 
       nah = true 
      end
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
        if t == Torso then
                FTorso.Transparency = 1
                Neck.Part1 = nil
        else
                Torso.Transparency = 1
                Neck.Part1 = Head
        end
        t.Transparency = 0
end
function Idle()
 SpeedAtm = Torso.Velocity.magnitude
 if not Attacking then
  Atta(Limbs.Rleg)
  Atta(Limbs.Lleg)
  for i=0,11.25,1 do
   RLW.C0 = CA(0,0,MR(i))
   LLW.C0 = CA(0,0,MR(-i))
   wait()
  end
  for i=11.25,0,-1 do
   RLW.C0 = CA(0,0,MR(i))
   LLW.C0 = CA(0,0,MR(-i))
   wait()
  end
 end
end
function Run()
 SpeedAtm = Torso.Velocity.magnitude
 if not Rolling and not Attacking then
  RLW.Part1 = nil
  LLW.Part1 = nil
 end
end
coroutine.resume(coroutine.create(function()
        while true do
                local SpeedAtm = Torso.Velocity.magnitude
                if Attacking == false and Selected or Torso.Velocity.Y > 0.5 or Torso.Velocity.Y < -0.5 then
                        if SpeedAtm < 0.1 then
                                Idle()
                        else
                                Run()
                        end
                end
                wait()
        end
end))
function StartEff(color,part)
 EffectOn = true
 local lastPoint = part.CFrame * EffPos.p
 Notime(function()
  while EffectOn do
   wait()
   local pos = part.CFrame * EffPos.p
   local magn = (lastPoint - pos).magnitude
   local col = LineColor
   if color and col ~= EffectColor3 then
    col = color
   end
   local p = Part(workspace, true, false, 0.2, 0, BN(col), V3(0.4, 1, 0.4))
   local mesh = Add.Cylinder(p)
   mesh.Scale = Vector3.new(1, magn+0.1, 1)
   p.CFrame = CN(lastPoint, pos) * CA(-MP/2, 0, 0) * CN(0, magn/2+0.05, 0)
   lastPoint = pos
   Notime(function()
    wait()
    for i = 0, 1, 0.12 do
     p.Transparency = 0.1+0.9*i
     mesh.Scale = Vector3.new(1-1*i, magn+0.1-0.1*i, 1-1*i)
     wait()
    end
    p:remove()
   end)
  end
 end)
end
function EndEff()
 EffectOn = false
end
TBricks = {}
for i, v in pairs({Rarm, Larm, Rleg, Lleg}) do
 local p = Part(Model, false, false, 1, 0, BN("White"), V3(0.9, 0.9, 0.8))
 Weld(v, p, CN(0, 0.7, 0), CN(0, 0, 0))
 table.insert(TBricks, {p, Hurt = false, Able2 = true})
end
function NormalStance()
 Atta(Limbs.Rarm)
 Atta(Limbs.Larm)
 Atta(Limbs.Rleg)
 Atta(Limbs.Lleg)
 Attach(FTorso)
 for i=0,35,2 do
  RAW.C0 = CA(MR(-i/1.25),0,MR(i/1.25))
  LAW.C0 = CA(MR(-i/1.25),0,MR(-i/1.25))
  wait()
 end
end
function AttachLimbs()
 Atta(Limbs.Rarm)
 Atta(Limbs.Larm)
 Atta(Limbs.Rleg)
 Atta(Limbs.Lleg)
 Attach(FTorso)
end
function NullLimbs()
 RAW.Part1 = nil
 LAW.Part1 = nil
 RLW.Part1 = nil
 LLW.Part1 = nil 
 Attach(Torso)
 Char.Humanoid.WalkSpeed = 16
end
for i,v in pairs(TBricks) do
 v[1].Touched:connect(function(hit)
  local fig = hit.Parent
  if fig:IsA("Hat") or fig:IsA("Tool") then 
   fig = hit.Parent.Parent
  end
  H, T = GetHum(fig), fig:findFirstChild("Torso")
  if H ~= nil and T ~= nil and v.Hurt and v.Able2 and fig.Name ~= Char.Name then
   v.Able2 = false
   limbdmg = MRA(Dmg["NormalDmg"][1],Dmg["NormalDmg"][2])
   if MRA(1,100) >= 15 then
    Debounce = true
    if not Debounce then
     return false
    end
    Debounce = false
    Critical = false
    local pos = CN(-2,-3,-3).p
    PlaySound(Sounds.hitsound,0.01,0.6)
    T.Velocity = CN(pos,T.Position).lookVector * 60
    T.RotVelocity = Vector3.new(MRA(-30, 30),MRA(-30, 30), MRA(-30, 30))
    H.PlatformStand = true
    Notime(function()
     wait(1.2)
     H.PlatformStand = false
    end)
    wait(0.5)
    Debounce = true
    H.Health = H.Health - limbdmg
    Show_Damage(fig.Torso.Position + V3(0,5,0),limbdmg)
    v.Able2 = true
   end
   if MRA(1,100) <= 15 then
    Debounce = true
    if not Debounce then
     return false
    end
    Debounce = false
    local Knockback = CFrame.new(v[1].Position, hit.Position)
    hit.Parent.Torso.Velocity = Knockback.lookVector * 2.5
    Critical = true
    limbdmg = limbdmg * CritMultiplier
    H.Health = H.Health - limbdmg
    local pos = CN(-2,-3,-3).p
    T.Velocity = CN(pos,T.Position).lookVector * 60
    T.RotVelocity = Vector3.new(MRA(-30, 30),MRA(-30, 30), MRA(-30, 30))
    H.PlatformStand = true
    Notime(function()
      wait(1.2)
      H.PlatformStand = false
    end)
    wait(0.5)
    Debounce = true
    Show_Damage(fig.Torso.Position + V3(0,5,0),"Critical: " ..limbdmg)
    v.Able2 = true
   end
  end
 end)
end
Attacks = {
function(ShadowHand)
 StartEff("Really black",Rarm)
 TBricks[1].Hurt = true
 Char.Humanoid.WalkSpeed = 0
 PlaySound(Sounds.slash,0.01,1.2)
 for i=0,60,6 do
  RAW.C0 = CA(MR(i*2),0,MR(-i/1.25))
  FW.C0 = CN(0,0,-i/9)
  wait()
 end
 for i=60,0,-6 do
  RAW.C0 = CA(MR(i*2),0,MR(-i/1.25))
  FW.C0 = CN(0,0,-i/9)
  wait()
 end
 EndEff()
 Char.Humanoid.WalkSpeed = 16
 TBricks[1].Hurt = false
 wait(0.1)
 FW.C0 = CA(0,0,0) * CN(0,0,0)
 NormalStance()
end,
function(ShadowFlip)
 StartEff("Really black",Rleg)
 StartEff("Really black",Lleg)
 TBricks[3].Hurt = true
 PlaySound(Sounds.slash,0.075,0.7)
 for i=0,360,12.5 do
  FW.C0 = CA(MR(i),0,0)
  RLBW.C0 = CA(MR(-i/8),0,0) * CN(0,0.5,-0.5)
  LLBW.C0 = CA(MR(i/8),0,0) * CN(0,0.5,0.5)
  Neck.C0 = neck0 * CA(MR(-i/8),0,0)
  wait()
 end
 TBricks[3].Hurt = false
 Neck.C0 = neck0
 RLBW.C0 = CA(0,0,0) * CN(0,0,0)
 LLBW.C0 = CA(0,0,0) * CN(0,0,0)
 RAW.C0 = CA(0,0,0) * CN(0,0,0)
 LAW.C0 = CA(0,0,0) * CN(0,0,0)
 FW.C0 = CA(0,0,0) * CN(0,0,0)
 NormalStance()
 EndEff()
end,
function(BallRoll)
 Char.Humanoid.WalkSpeed = 30
 for i=0,90,4 do
  RLBW.C0 = CA(MR(-i),0,0) * CN(0,1,-1)
  LLBW.C0 = CA(MR(-i),0,0) * CN(0,1,-1)
  RAW.C0 = CA(MR(-i/1.5),0,0)
  LAW.C0 = CA(MR(-i/1.5),0,0)
  Neck.C0 = neck0 * CA(MR(-i/2),0,0)
  wait()
 end
 for i=0,MH,12.5 do
  if Rolling then
   FW.C0 = CA(MR(-i/1),0,0)
   wait()
  end
  if not Rolling then 
   Neck.C0 = neck0
   RLBW.C0 = CA(0,0,0) * CN(0,0,0)
   LLBW.C0 = CA(0,0,0) * CN(0,0,0)
   RAW.C0 = CA(0,0,0) * CN(0,0,0)
   LAW.C0 = CA(0,0,0) * CN(0,0,0)
   FW.C0 = CA(0,0,0) * CN(0,0,0)
   NormalStance()
   return
  end
 end
end,
function(OneLegRotation)
 StartEff("Really black",Lleg)
 TBricks[4].Hurt = true
 Char.Humanoid.WalkSpeed = 0
 for i=0,90,10 do
  LLBW.C0 = CA(0,0,MR(-i)) * CN(1.5,0.5,0)
  RLBW.C0 = CA(0,0,MR(45)) * CN(-0.5,0,0)
  RAW.C0 = CA(MR(i*2),0,0) * CN(-0.75,0,0.5)
  LAW.C0 = CA(MR(i*2),0,0) * CN(0.75,0,0.5)
  FW.C0 = CA(0,MR(-45),MR(-i/2))
  wait()
 end
 coroutine.resume(coroutine.create(function()
  for i=0,4,1 do
   PlaySound(Sounds.slash,0.025,0.8)
   wait(0.2)
  end
 end))
 for i=0,360,12.5 do
  FW.C0 = CA(0,MR(-i*2),MR(-45))
  wait(0.035)
 end
 TBricks[4].Hurt = false
 RLBW.C0 = CA(0,0,0) * CN(0,0,0)
 LLBW.C0 = CA(0,0,0) * CN(0,0,0)
 RAW.C0 = CA(0,0,0) * CN(0,0,0)
 LAW.C0 = CA(0,0,0) * CN(0,0,0)
 FW.C0 = CA(0,0,0) * CN(0,0,0)
 NormalStance()
 EndEff()
 Char.Humanoid.WalkSpeed = 16
end,
function(DoubleSlash)
 Char.Humanoid.WalkSpeed = 22.5
 StartEff("Really black",Rarm)
 TBricks[1].Hurt = true
 PlaySound(Sounds.slash,0.01,0.8)
 for i=0,90,8 do
  RAW.C0 = CA(0,0,MR(i))
  FW.C0 = CA(0,MR(-i/2),0)
  wait()
 end
 for i=0,90,8 do
  FW.C0 = CA(0,MR(i-90/2),0)
  wait()
 end
 Neck.C0 = neck0
 RAW.C0 = CA(0,0,0) * CN(0,0,0)
 FW.C0 = CA(0,0,0) * CN(0,0,0)
 EndEff()
 TBricks[1].Hurt = false
 wait(0.25)
 StartEff("Really black",Larm)
 TBricks[2].Hurt = true
 PlaySound(Sounds.slash,0.01,0.8)
 for i=0,90,8 do
  LAW.C0 = CA(0,0,MR(-i))
  FW.C0 = CA(0,MR(i/2),0)
  wait()
 end
 for i=0,90,8 do
  FW.C0 = CA(0,MR(-i+90/2),0)
  wait()
 end
 TBricks[2].Hurt = false
 Neck.C0 = neck0
 LAW.C0 = CA(0,0,0) * CN(0,0,0)
 FW.C0 = CA(0,0,0) * CN(0,0,0)
 NormalStance()
 Char.Humanoid.WalkSpeed = 16
 EndEff()
end,
function(Meditation)
 Meditating = true
 for i=0,90,4 do
  RLBW.C0 = CA(MR(i),0,MR(i/4)) * CN(0,0.5,1)
  LLBW.C0 = CA(MR(i),0,MR(-i/4)) * CN(0,0.5,1)
  RAW.C0 = CA(MR(i/2),0,MR(-i/5))
  LAW.C0 = CA(MR(-i/2),0,MR(i/2))
  FW.C0 = CN(0,-i/50,0)
  wait()
 end
 while Meditating do
  Notime(function()
   while Meditating do
    Char.Humanoid.Health = Char.Humanoid.Health + 0.01
    wait(0.075)
   end
  end)
  coroutine.resume(coroutine.create(function()
   for i=5,-5,-1 do
    Neck.C0 = neck0 * CA(MR(i),0,0)
    wait(0.05)
   end
   for i=-5,5,1 do
    Neck.C0 = neck0 * CA(MR(i),0,0)
    wait(0.05)
   end
  end))
  wait(0.05)
 end
 if not Meditating then 
  for i=90,0,-4 do
   RLBW.C0 = CA(MR(i),0,MR(i/4)) * CN(0,0,0)
   LLBW.C0 = CA(MR(i),0,MR(-i/4)) * CN(0,0,0)
   RAW.C0 = CA(MR(i/2),0,MR(-i/5))
   LAW.C0 = CA(MR(-i/2),0,MR(i/2))
   FW.C0 = CN(0,-i/50,0)
   wait()
  end
  Neck.C0 = neck0
  RLBW.C0 = CA(0,0,0) * CN(0,0,0)
  LLBW.C0 = CA(0,0,0) * CN(0,0,0)
  RAW.C0 = CA(0,0,0) * CN(0,0,0)
  LAW.C0 = CA(0,0,0) * CN(0,0,0)
  FW.C0 = CA(0,0,0) * CN(0,0,0)
  NormalStance()
  return
 end
end,
function(Sideflip)
 StartEff("Really black",LLB)
 TBricks[4].Hurt = true
 PlaySound(Sounds.slash,0.05,0.7)
 for i=0,70,7 do
  FW.C0 = CA(0,MR(-70),MR(i)) * CN(0,-2,0)
  wait()
 end
 for i=0,360,18 do
  FW.C0 = CA(0,MR(-70),MR(-i)) * CN(0,-2,0)
  RLBW.C0 = CA(MR(22.5),0,0)
  LLBW.C0 = CA(MR(-22.5),0,0)
  wait()
 end
 Neck.C0 = neck0
 RLBW.C0 = CA(0,0,0) * CN(0,0,0)
 LLBW.C0 = CA(0,0,0) * CN(0,0,0)
 RAW.C0 = CA(0,0,0) * CN(0,0,0)
 LAW.C0 = CA(0,0,0) * CN(0,0,0)
 FW.C0 = CA(0,0,0) * CN(0,0,0)
 NormalStance()
 TBricks[4].Hurt = false
 EndEff()
end,
function(SuperJumpStart)
 coroutine.resume(coroutine.create(function()
  for i=0,130,4 do
   RLBW.C0 = CA(MR(-i),0,0) * CN(0,1,-1)
   LLBW.C0 = CA(MR(-i),0,0) * CN(0,1,-1)
   RAW.C0 = CA(MR(-i/1.5),0,0)
   LAW.C0 = CA(MR(-i/1.5),0,0)
   Neck.C0 = neck0 * CA(MR(-i/2),0,0)
   wait()
  end
 end))
 for i=0,1.75,0.1 do
  FW.C0 = CN(0,-i,0)
  wait()
 end
end,
function(SuperJump) 
 coroutine.resume(coroutine.create(function()
  while not JumpStarting and Jumping do
   for i=0,360,10 do
    FW.C0 = CA(MR(-i*2),0,0)
    wait()
   end
   wait()
  end
 end))
 local bf = Add.BF(Torso,V3(0,12500,0))
 wait(0.2)
 bf:Remove()
 wait(0.4)
 Neck.C0 = neck0
 RLBW.C0 = CA(0,0,0) * CN(0,0,0)
 LLBW.C0 = CA(0,0,0) * CN(0,0,0)
 RAW.C0 = CA(0,0,0) * CN(0,0,0)
 LAW.C0 = CA(0,0,0) * CN(0,0,0)
 FW.C0 = CA(0,0,0) * CN(0,0,0) 
 NormalStance()
end,
function(ProtectiveWall)
 Char.Humanoid.WalkSpeed = 0
 for i=0,45,2 do
  RAW.C0 = CA(MR(i*3),0,MR(i/1.25))
  LAW.C0 = CA(MR(i*3),0,MR(-i/1.25))
  RLBW.C0 = CA(MR(i),0,0)
  LLBW.C0 = CA(MR(-i),0,0)
  FW.C0 = CN(0,-i/28,0)
  wait()
 end
 coroutine.resume(coroutine.create(function()
  for i=45,0,-2 do
   RLBW.C0 = CA(MR(i),0,0)
   LLBW.C0 = CA(MR(-i),0,0)
   FW.C0 = CN(0,-i/28,0)
   wait()
  end
 end))
 local WSpike = Part(game.Workspace,true,false,0,0,BN("Really black"),V3(2,10,2))
 local WSMesh = Add.Mesh(WSpike,"FileMesh","http://www.roblox.com/asset/?id=1095708")
 WSpike.CFrame = Torso.CFrame + V3(MRA(-30,30),MRA(0,15),MRA(-30,30))
 coroutine.resume(coroutine.create(function()
  for i=0,1,0.01 do
   WSpike.Transparency = i
   wait(0.1)
  end
 end))
 Char.Humanoid.WalkSpeed = 16
 wait(0.5)
 NullLimbs()
 Able = true
 Attacking = false
 NormalStance()
 for i=0,100,0.5 do
  WSMesh.Scale = V3(i,i,i)
  wait()
 end
 WSpike:Remove()
end
}
function SelectAnim()
 FakeHead = Char.Head:Clone()
 FakeHead.Name = "Fake head"
 FakeHead.Parent = Model
 Weld(FTorso,FakeHead,CN(0,1.5,0))
 Char.Head.Transparency = 1
 Char.Head.face:Remove()
 for i,v in pairs(Char:GetChildren()) do 
  if v:IsA("Hat") then
   v:Remove()
  end
 end
 SelectEffect = Part(Char,true,false,0,0,BN("Bright yellow"),V3(10,5,10))
 TheCrown = Add.Crown(SelectEffect,V3(1,1,1))
 SelectEffect.CFrame = Torso.CFrame + V3(0,-2,0)
 Char.Humanoid.WalkSpeed = 0
 wait()
 coroutine.resume(coroutine.create(function()
  for i=0,1,0.1 do
   SelectEffect.Transparency = i
   wait(0.1)
  end
 end))
 for i=0,10,0.5 do
  TheCrown.Scale = V3(i/2,i/3.5,i/2)
  wait()
 end
 Char.Humanoid.WalkSpeed = 16
 wait(1)
 SelectEffect:Remove()
end
function DeselAnim()
 NullParts()
end
function onSelected(mouse)
        SelectAnim()
        Selected = true
  NormalStance()
        mouse.Button1Down:connect(function()
   if Able then
    Able = false
    Attacking = true 
    Atta(Limbs.Rarm)
    Atta(Limbs.Larm)
    Attach(FTorso)
    Attacks[1](ShadowHand)
    NullLimbs()
    Attacking = false
    Able = true
    NormalStance()
   end
        end)
        mouse.KeyDown:connect(function(key)
    key = key:lower()
     if key == Keys[1] then
      if Able then
       Able = false
       Attacking = true
       AttachLimbs()
       Attacks[2](ShadowFlip)
       NullLimbs()
       Attacking = false
       Able = true
       NormalStance()
      end
     end
     if key == Keys[2] then
      if not Rolling and Able then
       Able = false
       Rolling = true
       AttachLimbs()
       Attacks[3](BallRoll)
      end
     end
     if key == Keys[2] and Rolling and not Able then
      Able = true
      Rolling = false
      NullLimbs()
      NormalStance()
     end
     if key == Keys[3] and Able and not Rolling and not Choking then
      Able = false
      Attacking = true
      AttachLimbs()
      Attacks[4](OneLegRotation)
      NullLimbs()
      Attacking = false
      Able = true
      NormalStance()
     end
     if key == Keys[4] and Able and not Rolling and not Choking then
      Able = false
      Attacking = true
      Atta(Limbs.Rarm)
      Atta(Limbs.Larm)
      Attach(FTorso)
      Attacks[5](DoubleSlash)
      RAW.Part1 = nil
      LAW.Part1 = nil
      Attach(Torso)
      Attacking = false
      Able = true
      NormalStance()
     end
     if key == Keys[5] and Able and not Rolling and not Choking then
      Char.Humanoid.WalkSpeed = 0
      Able = false
      Attacking = true
      Meditating = true
      AttachLimbs()
      Attacks[6](Meditation)
     end
     if key == Keys[5] and not Able and not Rolling and not Choking and Meditating then
      Meditating = false
      wait(1)
      Char.Humanoid.WalkSpeed = 16
      NullLimbs()
      Attacking = false
      Able = true
      NormalStance()
     end
     if key == Keys[6] and Able and not Rolling and not Choking and not Meditating then
      Able = false
      Attacking = true
      AttachLimbs()
      Attacks[7](Sideflip)
      NullLimbs()
      Able = true
      Attacking = false
      NormalStance()
     end
     if key == Keys[7] and Able and not Rolling and not Choking and not Meditating and not JumpStarting and not Jumping then
      Jumping = true
      Able = false
      Attacking = true
      Char.Humanoid.WalkSpeed = 8
      AttachLimbs()
      JumpStarting = true
      Attacks[8](SuperJumpStart)
     end
     if key == Keys[8] and Able and not Rolling and not Choking and not Meditating then
      Able = false
      Attacking = true
      AttachLimbs()
      Attacks[10](ProtectiveWall)
     end
  end)
  mouse.KeyUp:connect(function(key)
   key = key:lower()
    if key == Keys[7] and not Able and not Rolling and not Choking and not Meditating then
     Jumping = true
     JumpStarting = false
     Attacks[9](SuperJump)
     Jumping = false
     wait(0.75)
     NullLimbs()
     Able = true
     Attacking = false
     NormalStance()
    end
  end)
end
function onDeselected(mouse)
        Selected = false
        Hum.WalkSpeed = 16
        DeselAnim()
end
bin.Selected:connect(onSelected)
bin.Deselected:connect(onDeselected)
 
 
 
end}
module[7] = {"Flash",function()
--Made by LuisPambid--
--==FLASH==--

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
local scriptname="Flash"
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
weld.torso=add.Weld(torso, fake.torso, nil)
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
local walkspeed=100 --Flash :D
local dmg=math.random(5, 10)
local rundeb=false
local tdeb=false
local hDeb=false

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
			pcall(function()h.Parent:findFirstChild("Torso").RotVelocity=fake.torso.RotVelocity*math.random(-1000, 1000)end)
			pcall(function()h.Parent:findFirstChild("Torso").Velocity=fake.torso.Velocity*math.random(-1000, 1000)end)
		wait()
		hDeb=false
		--end)
	end
end

function trail(pos, cf, col)
	c(function()
		local old=(pos.CFrame*cf).p
		while tdeb==true do
			wait()
			local new=(pos.CFrame*cf).p
			local mag=(old-new).magnitude
			local dis=(old+new)/2
			local trail=add.Part(workspace, true, false, col, 0, Vector3.new(1, mag, 1), CFrame.new(dis, new)*CFrame.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5))*CFrame.Angles(math.pi/2, 0, 0))
			local tMesh=add.Mesh("CylinderMesh", trail, Vector3.new(.5, 1, .5), nil, nil)
			trail.Touched:connect(hit)
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
bin.Selected:connect(function(mouse)
	for i, v in pairs(model:children()) do tdeb=true trail(v, CFrame.new(), "Bright yellow") end
	c(function() while true do wait() for i, v in pairs(model:children()) do v.Touched:connect(hit) end end end)
	human.WalkSpeed=walkspeed
	human.MaxHealth=math.huge
	human.Running:connect(function(speed)
		if speed>0 then
			for i=0, 1, .1 do
				wait()
				weld.torso.C1=CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(15)*i, 0, 0)
				weld.arm.left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45)*i)
				weld.arm.right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, math.rad(45)*i)
			end
			while speed>0 do
				wait()
				for i=0, 1, .1 do
					wait()
					weld.leg.left.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(-math.rad(45)*i, 0, 0)
					weld.leg.right.C1=CFrame.new(.5, -1.5, 0)*CFrame.Angles(math.rad(45)*i, 0, 0)
					weld.arm.left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45))
					weld.arm.right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(-math.rad(45)-(-math.rad(45)*i), 0, math.rad(45))
				end
				for i=1, 0, -.1 do
					wait()
					weld.leg.left.C1=CFrame.new(-.5, -1.5, 0)*CFrame.Angles(-math.rad(45)*i, 0, 0)
					weld.leg.right.C1=CFrame.new(.5, -1.5, 0)*CFrame.Angles(math.rad(45)*i, 0, 0)
					weld.arm.left.C1=CFrame.new(-1.5, .5, 0)*CFrame.Angles(-math.rad(45)*i, 0, -math.rad(45))
					weld.arm.right.C1=CFrame.new(1.5, .5, 0)*CFrame.Angles(-math.rad(45)-(-math.rad(45)*i), 0, math.rad(45))
				end
			end
		end
	end)
end)--mediafire
end}
module[8] = {"Fly Tool",function()

Name = "Fly"
pi = 3.141592653589793238462643383279502884197163993751
a = 0
s = 0
ndist = 13
rs = 0.025
siz = Vector3.new(1, 1, 1)
form = 0
flow = {}
function CFC(P1,P2)
	local Place0 = CFrame.new(P1.CFrame.x,P1.CFrame.y,P1.CFrame.z) 
	local Place1 = P2.Position
	P1.Size = Vector3.new(P1.Size.x,P1.Size.y,(Place0.p - Place1).magnitude) 
	P1.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p)
end
function checktable(table, parentneeded)
	local i
	local t = {}
	for i = 1, #table do
		if table[i] ~= nil then
			if string.lower(type(table[i])) == "userdata" then
				if parentneeded == true then
					if table[i].Parent ~= nil then
						t[#t + 1] = table[i]
					end
				else
					t[#t + 1] = table[i]
				end
			end
		end
	end
	return t
end
if script.Parent.Name ~= Name then
User = game:service("Players").LocalPlayer
HB = Instance.new("HopperBin")
HB.Name = Name
HB.Parent = User.Backpack
script.Parent = HB
end
speed = 100
script.Parent.Selected:connect(function(mar)
	s = 1
	torso = script.Parent.Parent.Parent.Character.Torso
	LeftShoulder = torso["Left Shoulder"]
	RightShoulder = torso["Right Shoulder"]
	LeftHip = torso["Left Hip"]
	RightHip = torso["Right Hip"]
	human = script.Parent.Parent.Parent.Character.Humanoid
	bv = Instance.new("BodyVelocity")
	bv.maxForce = Vector3.new(0,math.huge,0)
	bv.velocity = Vector3.new(0,0,0)
	bv.Parent = torso
	bg = Instance.new("BodyGyro")
	bg.maxTorque = Vector3.new(0,0,0)
	bg.Parent = torso 
	connection = mar.Button1Down:connect(function()
		a = 1
		bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
		bg.maxTorque = Vector3.new(900000,900000,900000)
		bg.cframe = CFrame.new(torso.Position,mar.hit.p) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
		bv.velocity = CFrame.new(torso.Position,mar.hit.p).lookVector * speed
		moveconnect = mar.Move:connect(function()
			bg.maxTorque = Vector3.new(900000,900000,900000)
			bg.cframe = CFrame.new(torso.Position,mar.hit.p) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
			bv.velocity = CFrame.new(torso.Position,mar.hit.p).lookVector * speed
		end)
		upconnect = mar.Button1Up:connect(function()
			a = 0
			moveconnect:disconnect()
			upconnect:disconnect()
			bv.velocity = Vector3.new(0,0,0)
			bv.maxForce = Vector3.new(0,math.huge,0)
			torso.Velocity = Vector3.new(0,0,0)
			bg.cframe = CFrame.new(torso.Position,torso.Position + Vector3.new(torso.CFrame.lookVector.x,0,torso.CFrame.lookVector.z))
			wait(1)
		end)
	end)
end)
script.Parent.Deselected:connect(function()
a = 0
s = 0
bv:remove()
bg:remove()
if connection ~= nil then
connection:disconnect()
end
if moveconnect ~= nil then
moveconnect:disconnect()
end
if upconnect ~= nil then
upconnect:disconnect()
end
while s == 0 do
	wait()
	if #flow > 0 then
		flow = checktable(flow, true)
		local i
		for i = 1,#flow do
			flow[i].Transparency = flow[i].Transparency + rs
			if flow[i].Transparency >= 1 then flow[i]:remove() end
		end
	end
end
end)
while true do
	wait()
	if s == 1 then
		return
	end
end

end}
module[9] = {"Flying Duck",function()

admin = game.Players.LocalPlayer
local h = Instance.new("HopperBin") 
h.Parent = admin.Backpack 
h.Name = "Control" 


tool = h
plyr = game.Players.LocalPlayer 
speed = 50 
mode = 1 
cluster = 5 

function ClusterBombPiece(mis, tar, misg, misv) 
while mis.Parent == Workspace and tar:IsDescendantOf(Workspace) do 
wait() 
misg.cframe = CFrame.new(tar.Position, mis.Position) 
misv.velocity = mis.CFrame.lookVector * -250 
end 
end 

function freeze(tar,ice) 
for i = 1,50 do 
wait() 
tar.Parent.Humanoid.Health = tar.Parent.Humanoid.Health - 1 
end 
tar.Parent.Torso.Anchored = false 
ice:remove() 
end 


function ghost(tar) 
for i = 1,100 do 
tar.Transparency = tar.Transparency + .01 
wait() 
end 
end 

function move(hold, tar) 
while tar:findFirstChild("BodyPosition") ~= nil do 
wait() 
hold.position = p.Position + Vector3.new(0,-6,0) 
end 
end 

function burning(burn, tar) 
for i = 1,100 do 
wait() 
burn.Transparency = burn.Transparency - .01 
end 
local ex = Instance.new("Explosion") 
ex.Parent = Workspace 
ex.Position = burn.Position 
ex.BlastPressure = 0 
ex.BlastRadius = 4 
tar:BreakJoints() 
wait(3) 
burn:remove() 
end 

function shield(burn, tar) 
for i = 1,100 do 
wait() 
burn.Transparency = burn.Transparency - .01 
end 
local ff = Instance.new("ForceField") 
ff.Parent = tar 
end 

tool.Selected:connect(function(mouse) 
if plyr.Character:findFirstChild("Model") == nil then 
m = Instance.new("Model") 
m.Parent = plyr.Character 
p1 = Instance.new("Part") 
p1.Parent = m 
p1.CanCollide = false 
p1.Size = Vector3.new(4,1,6) 
p1.Position = admin.Character.Torso.Position + Vector3.new(0, 5, 0) 
p1.formFactor = "Symmetric" 
p1.BrickColor = BrickColor.new("Really black") 
p1.TopSurface = 0 
p1.BottomSurface = 0 
p = Instance.new("Seat") 
p.Parent = m 
p.Name = "Seat" 
p.formFactor = "Plate" 
p.Transparency = 1 
p.CanCollide = true 
p.size = Vector3.new(2,.4,2) 
p.Position = p1.Position 
p.BrickColor = BrickColor.new("Really black") 
p.TopSurface = "Weld" 
p.BottomSurface = "Weld" 

v = Instance.new("BodyVelocity") 
v.Parent = p 
v.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
v.velocity = Vector3.new(0, 0, 0) 

g = Instance.new("BodyGyro") 
g.Parent = p 
g.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
end 

m1 = Instance.new("SpecialMesh") 
m1.Parent = p1 
m1.MeshType = "FileMesh" 
m1.TextureId = "http://www.roblox.com/asset/?id=9419827" 
m1.MeshId = "http://www.roblox.com/asset/?id=9419831" 
m1.Scale = Vector3.new(6, 6, 6) 

----welds---- 
p1w = Instance.new("Weld") 
p1w.Parent = p1 
p1w.Part0 = p1w.Parent 
p1w.Part1 = p 
p1w.C1 = CFrame.new(0,0,0) 

mouse.Button1Down:connect(function() 
click = true 
while click == true do 
g.cframe = CFrame.new(p.Position, mouse.Hit.p) 
v.velocity = p.CFrame.lookVector*speed 
wait() 
end 
end) 
mouse.Button1Up:connect(function() 
click = false 
v.velocity = Vector3.new(0, .2, 0) 
end) 

end) 
 

end}

 
 

module[1] = {"Flying Fist",function()

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
local scriptname="Chop-Chop" --Name here
pcall(function() player.Backpack[scriptname]:remove() char[scriptname]:remove() char["Objects"]:remove() player.PlayerGui[scriptname]:remove()  end)
local model=Instance.new("Model", char) model.Name="Objects"
local modelB=Instance.new("Model", char) modelB.Name=scriptname
local gui=Instance.new("ScreenGui", player.PlayerGui) gui.Name=scriptname
local bin=Instance.new("HopperBin", player.Backpack) bin.Name=scriptname
local skincolor="Really black"
local body={}
local animate={}
local obj={}
--Variables--
local trailDeb=false
local hitDeb=false
local using=false
local keyDeb=false
local pressing=false
local combo=0
local mana=100
local range=20
local dmg=math.random(10, 25)
local form=false
local Forms
local pitch=.5
local speed=16
local car
local pitch=.8
local Slash=add.Sound(torso, "rbxasset://sounds//swordslash.wav", 1, pitch)
local Portal2=add.Sound(torso, "http://roblox.com/asset/?id=10209668", 1, 1)
local Charge=add.Sound(torso, "http://www.roblox.com/asset/?id=2101137", 1, .5)
local chargeLabel=add.Gui("TextLabel", gui, "Really black", "White", "Really black", "Size14", mana, 0, UDim2.new(0, 200, 0, 20), UDim2.new(0, 0, 0, 100))
local charge=add.Gui("TextLabel", chargeLabel, "Really black", "Bright blue", "Really black", "Size14", "", 0.5, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 0))
local attackLabel=add.Gui("TextLabel", gui, "Really black", "Really black", "White", "Size18", "Festival(Hold(Q))", 0, UDim2.new(0, 150, 0, 50), UDim2.new(0, 0, 0, 150))
local attackLabel2=add.Gui("TextLabel", attackLabel, "Really black", "Really black", "White", "Size18", "Charge(F)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
local attackLabel3=add.Gui("TextLabel", attackLabel2, "Really black", "Really black", "White", "Size18", "Tornado(E)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
local attackLabel4=add.Gui("TextLabel", attackLabel3, "Really black", "Really black", "White", "Size18", "ChibiForm(C)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
local attackLabel5=add.Gui("TextLabel", attackLabel4, "Really black", "Really black", "White", "Size18", "CarForm(V)", 0, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
function createParts()
	--==PARTS==--
	body.Head=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	body.Torso=add.Part(model, false, false, skincolor, 1, Vector3.new(2, 2, 1), nil)
	body.ArmLeft, body.ArmRight=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	body.LegLeft, body.LegRight=add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil), add.Part(model, false, false, skincolor, 1, Vector3.new(1, 1, 1), nil)
	--==WELDS==--
	body.HeadW=add.Weld(body.Head, body.Torso, CFrame.new(0, 1.5, 0))
	body.TorsoW=add.Weld(body.Torso, torso, nil)
	body.ArmLeftW, body.ArmRightW=add.Weld(body.ArmLeft, body.Torso, CFrame.new(-1.5, .5, 0)), add.Weld(body.ArmRight, body.Torso, CFrame.new(1.5, .5, 0))
	body.LegLeftW, body.LegRightW=add.Weld(body.LegLeft, body.Torso, CFrame.new(-.5, -1.5, 0)), add.Weld(body.LegRight, body.Torso, CFrame.new(.5, -1.5, 0))
	--==WELDS==--
	add.Weld(body.Head, head, nil)
	add.Weld(arm.Left, body.ArmLeft, CFrame.new(0, -.5, 0))
	add.Weld(arm.Right, body.ArmRight, CFrame.new(0, -.5, 0))
	torso["Left Hip"].Part0=torso
	torso["Right Hip"].Part0=torso
	---------------------------------------------------------------------------------------
	animate={
		["Head"]=function(cf)
			body.HeadW.C1=CFrame.new(0, 1.5, 0)*cf
		end;
		["Torso"]=function(cf) body.Torso.Transparency=0 torso.Transparency=1
			body.TorsoW.C1=cf
			c(function()
				wait(0)
				body.Torso.Transparency=1 torso.Transparency=0
			end)
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
				wait(0)
				legLeftW:remove()
			end)
		end;
		["LegRight"]=function(cf)
			legRightW=add.Weld(leg.Right, body.LegRight, CFrame.new(0, -.5, 0))
			body.LegRightW.C1=CFrame.new(.5, -1.5, 0)*cf
			c(function()
				wait(0)
				legRightW:remove()
			end)
		end;
	}
	--==Objects==--
end
function removeParts()
	p(function()
		if torso then
			torso["Left Hip"].Part0=torso
			torso["Right Hip"].Part0=torso
		end
		for i, v in pairs(model:children()) do v:remove() end	for i, v in pairs(modelB:children()) do v:remove() end	for i, v in pairs(char:children()) do v.Transparency=0 end
		wait()
		torso.Transparency=0
	end)
end
function hit(h)
	if using==true then
		if h.Parent~=char and h.Parent:findFirstChild("Humanoid") and hitDeb==false then hitDeb=true
			local hHuman=h.Parent:findFirstChild("Humanoid")
			hHuman.Health=hHuman.Health-dmg
			local fakeM=Instance.new("Model", workspace) fakeM.Name=dmg
			local fakeH=Instance.new("Humanoid", fakeM) fakeH.MaxHealth=0 fakeH.Health=0
			local effect=add.Part(fakeM, false, false, "Bright red", 0, Vector3.new(1, 1, 1), h.CFrame) effect.Name="Head"
			local fakeMesh=add.Mesh("CylinderMesh", effect, Vector3.new(1, .5, 1), nil, nil)
			local bp=Instance.new("BodyPosition", effect) bp.maxForce=Vector3.new(math.huge, math.huge, math.huge) bp.position=h.Position+Vector3.new(0, 4, 0)
			game.Debris:addItem(fakeM, 2)
			wait(.5)
			hitDeb=false
		end
	end
end
function running()
	if form==false then speed=16
		animate.Torso(CFrame.new())
		animate.Head(CFrame.new())
		animate.ArmLeft(CFrame.Angles(-math.rad(15), 0, -math.rad(15)))
		animate.ArmRight(CFrame.Angles(-math.rad(15), 0, math.rad(15)))
	elseif form==true and Form=="Chibi" then speed=16 Portal2:play()
		animate.Torso(CFrame.new(0, -1.5, 0))
		wait()
		torso.Transparency=1
		animate.ArmLeft(CFrame.new(.5, 0, 0)*CFrame.Angles(0, 0, -math.rad(45)))
		animate.ArmRight(CFrame.new(-.5, 0, 0)*CFrame.Angles(0, 0, math.rad(45)))
	elseif form==true and Form=="Car" then speed=100 Portal2:play()
		human.WalkSpeed=speed
		animate.Torso(CFrame.new(0, -2, 0)*CFrame.Angles(-math.rad(90), 0, 0))
		animate.Head(CFrame.new(0, -1.5, 1)*CFrame.Angles(math.rad(90), 0, 0))
		animate.ArmLeft(CFrame.new(.5, 0, 0)*CFrame.Angles(math.rad(180), 0, math.rad(15)))
		animate.ArmRight(CFrame.new(-.5, 0, 0)*CFrame.Angles(math.rad(180), 0, -math.rad(15)))
		car=Instance.new("Model", char) car.Name="Car"
		local handle=add.Part(car, false,true, "Medium stone grey", 0, Vector3.new(.5, 7.2, .5), nil)
		local handleM=add.Mesh("CylinderMesh", handle, Vector3.new(1, 1, 1), nil, nil)
		local handleW=add.Weld(handle, body.Torso, CFrame.new(0, 2, 0)*CFrame.Angles(0, 0, -math.rad(90)))

		local TireLeft=add.Part(car, false, true, "Really black", 0, Vector3.new(2, 1, 2), nil)
		TireLeftM=add.Mesh("CylinderMesh", TireLeft, Vector3.new(1, 1, 1), nil, nil)
		TireLeftW=add.Weld(TireLeft, handle, CFrame.new(0, -3, 0))
		local TireRight=add.Part(car, false, true, "Really black", 0, Vector3.new(2, 1, 2), nil)
		TireRightM=add.Mesh("CylinderMesh", TireRight, Vector3.new(1, 1, 1), nil, nil)
		TireRightW=add.Weld(TireRight, handle, CFrame.new(0, 3, 0))

		local handle=add.Part(car, false,true, "Medium stone grey", 0, Vector3.new(.5, 7.2, .5), nil)
		local handleM=add.Mesh("CylinderMesh", handle, Vector3.new(1, 1, 1), nil, nil)
		local handleW=add.Weld(handle, body.Torso, CFrame.new(0, -2, 0)*CFrame.Angles(0, 0, -math.rad(90)))

		local TireLeft=add.Part(car, false, true, "Really black", 0, Vector3.new(2, 1, 2), nil)
		TireLeftM=add.Mesh("CylinderMesh", TireLeft, Vector3.new(1, 1, 1), nil, nil)
		TireLeftW=add.Weld(TireLeft, handle, CFrame.new(0, -3, 0))
		local TireRight=add.Part(car, false, true, "Really black", 0, Vector3.new(2, 1, 2), nil)
		TireRightM=add.Mesh("CylinderMesh", TireRight, Vector3.new(1, 1, 1), nil, nil)
		TireRightW=add.Weld(TireRight, handle, CFrame.new(0, 3, 0))
		c(function()
			while form do wait()
				animate.Torso(CFrame.new(0, -2, 0)*CFrame.Angles(-math.rad(90), 0, 0))
				animate.LegLeft(CFrame.Angles(0, 0, 0))
				animate.LegRight(CFrame.Angles(0, 0, 0))
			end
			animate.Torso(CFrame.new())
			animate.Head(CFrame.new())
			car:remove()
		end)
	end
	human.WalkSpeed=speed
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
			trail.Touched:connect(hit)
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
function Attack() combo=combo+1
	if using==false then
		if form==false and keyDeb==false then
			using=true
			for i, v in pairs(char:children()) do
				if v:isA("BasePart") then
					v.Touched:connect(hit)
				end
			end
			if combo==1 then Slash:play() print("Right Hook")
				trailDeb=true
				trail(body.ArmRight, CFrame.new(0, -1.5, 0))
				for i=0, 1, .1 do wait()
					animate.Torso(CFrame.Angles(0, math.rad(15)*i, 0))
					animate.ArmRight(CFrame.new(-.5*i, 0, -range*i)*CFrame.Angles(math.rad(90), 0, 0))
				end
				for i=1, 0, -.1 do wait()
					animate.Torso(CFrame.Angles(0, math.rad(15)*i, 0))
					animate.ArmRight(CFrame.new(-.5*i, 0, -range*i)*CFrame.Angles(math.rad(90), 0, 0))
				end
				trailDeb=false
				if combo>2 then Slash:play()
					trailDeb=true
					trail(body.ArmLeft, CFrame.new(0, -1.5, 0))
					for i=0, 1, .1 do wait()
						animate.Torso(CFrame.Angles(0, -math.rad(15)*i, 0))
						animate.ArmLeft(CFrame.new(.5*i, 0, -range*i)*CFrame.Angles(math.rad(90), 0, 0))
					end
					for i=1, 0, -.1 do wait()
					animate.Torso(CFrame.Angles(0, -math.rad(15)*i, 0))
						animate.ArmLeft(CFrame.new(.5*i, 0, -range*i)*CFrame.Angles(math.rad(90), 0, 0))
					end
					trailDeb=false
				end
				if combo>3 then Slash:play() print("Both Hook")
					trailDeb=true
					for i=0, 1, .1 do wait()
					animate.ArmLeft(CFrame.new(.5*i, 0, -range*i)*CFrame.Angles(math.rad(90), 0, 0))
					animate.ArmRight(CFrame.new(-.5*i, 0, -range*i)*CFrame.Angles(math.rad(90), 0, 0))
					end
					for i=1, 0, -.1 do wait()
					animate.ArmLeft(CFrame.new(.5*i, 0, -range*i)*CFrame.Angles(math.rad(90), 0, 0))
					animate.ArmRight(CFrame.new(-.5*i, 0, -range*i)*CFrame.Angles(math.rad(90), 0, 0))
					end
					trailDeb=false
				end
				if combo>4 then print("Rappid Punch")
					trailDeb=true
					for i=1, 2 do wait()
						for i=0, 1, .2 do wait() Slash:play()
							animate.ArmLeft(CFrame.new(math.random(-2, 2), math.random(-2, 2), -range*i)*CFrame.Angles(math.rad(90), 0, 0))
							animate.ArmRight(CFrame.new(math.random(-2, 2), math.random(-2, 2), -range-(-range*i))*CFrame.Angles(math.rad(90), 0, 0))
						end
						for i=0, 1, .2 do wait()
							animate.ArmLeft(CFrame.new(math.random(-2, 2), math.random(-2, 2), -range-(-range*i))*CFrame.Angles(math.rad(90), 0, 0))
							animate.ArmRight(CFrame.new(math.random(-2, 2), math.random(-2, 2), -range*i)*CFrame.Angles(math.rad(90), 0, 0))
						end
					end
					trailDeb=false
				end
			end
			trailDeb=false
			animate.ArmLeft(CFrame.Angles(0, 0, 0))
			animate.ArmRight(CFrame.Angles(0, 0, 0))
			using=false
			combo=0
			running()
		end
	end
end
local Specials={
	["Festival"]=function() human.WalkSpeed=0
		pressing=true
		for i=0, 1, .1 do wait()
			animate.ArmLeft(CFrame.Angles(0, 0, -math.rad(135)*i))
			animate.ArmRight(CFrame.Angles(0, 0, math.rad(135)*i))
			animate.LegLeft(CFrame.Angles(0, 0, -math.rad(45)*i))
			animate.LegRight(CFrame.Angles(0, 0, math.rad(45)*i))
		end
		trailDeb=true
		trail(body.ArmLeft, CFrame.new(0, -1.5, 0))
		trail(body.ArmRight, CFrame.new(0, -1.5, 0))
		trail(body.LegLeft, CFrame.new(0, -1.5, 0))
		trail(body.LegRight, CFrame.new(0, -1.5, 0))
		while pressing and mana>=1 do wait() mana=mana-1 Slash:play()
				pcall(function()
					local touchHelper=add.Part(workspace, true, false, "White", 1, Vector3.new(range*1.5, range*1.5, range*1.5), torso.CFrame)
					touchHelper.Touched:connect(hit)
					c(function() wait(1)
						touchHelper:remove()
					end)
				end)
			for i, v in pairs(char:children()) do
				if v.ClassName=="Hat" then
					pcall(function()
						v.Handle.Transparency=1
						torso.Transparency=1
						head.Transparency=1
					end)
				end
				pcall(function() v.face.Transparency=1 end)
			end
			animate.ArmLeft(CFrame.new(math.random(-range, range), math.random(-range, range), math.random(-range, range))*CFrame.Angles(math.random(-range, range), math.random(-45, 45), math.random(-45, 45)))
			animate.ArmRight(CFrame.new(math.random(-range, range), math.random(-range, range), math.random(-range, range))*CFrame.Angles(math.random(-range, range), math.random(-45, 45), math.random(-45, 45)))
			animate.LegLeft(CFrame.new(math.random(-range, range), math.random(-range, range), math.random(-range, range))*CFrame.Angles(math.random(-range, range), math.random(-45, 45), math.random(-45, 45)))
			animate.LegRight(CFrame.new(math.random(-range, range), math.random(-range, range), math.random(-range, range))*CFrame.Angles(math.random(-range, range), math.random(-45, 45), math.random(-45, 45)))
		end
		trailDeb=false
		for i, v in pairs(char:children()) do
			if v.ClassName=="Hat" then
				pcall(function()
					v.Handle.Transparency=0
					torso.Transparency=0
					head.Transparency=0
				end)
			end
			pcall(function() v.face.Transparency=0 end)
		end
		for i=1, 0, -.1 do wait()
			animate.ArmLeft(CFrame.Angles(0, 0, -math.rad(135)*i))
			animate.ArmRight(CFrame.Angles(0, 0, math.rad(135)*i))
			animate.LegLeft(CFrame.Angles(0, 0, -math.rad(45)*i))
			animate.LegRight(CFrame.Angles(0, 0, math.rad(45)*i))
		end
		running()
		human.WalkSpeed=speed
	end;
	["Charge"]=function() human.WalkSpeed=0
		pressing=true
		for i=0, 1, .1 do wait()
			animate.ArmLeft(CFrame.Angles(-math.rad(15)*i, 0, -math.rad(15)*i))
			animate.ArmRight(CFrame.Angles(math.rad(135)*i, 0, math.rad(15)*i))
		end
		Charge:play()
		while pressing do wait() if mana<100 then mana=mana+1 end
			local aura=add.Part(workspace, true, false, "Bright blue", .5, Vector3.new(1, 1, 1), torso.CFrame*CFrame.new(0, -2, 0)*CFrame.Angles(0, math.rad(math.random(-45, 45)), 0)) aura.Name="Effect"
			local auraM=add.Mesh("SpecialMesh", aura, Vector3.new(1, 1, 1), nil, "File") auraM.MeshId="http://www.roblox.com/asset/?id=20329976"
			c(function()
				for i=0, 3, .1 do wait()
					auraM.Scale=auraM.Scale+Vector3.new(i, i/2, i)
				end
				c(function()
					for i=.5, 1, .1 do
						wait()
						aura.Transparency=i
					end
				end)
				aura:remove()
			end)
		end
		for i=1, 0, -.1 do wait()
			animate.ArmLeft(CFrame.Angles(-math.rad(15)*i, 0, -math.rad(15)*i))
			animate.ArmRight(CFrame.Angles(math.rad(135)*i, 0, -math.rad(15)*i))
		end
		running()
		human.WalkSpeed=speed
	end;
	["Tornado"]=function() human.WalkSpeed=0
		mana=mana-20
		for i=0, 1, .1 do wait()
			animate.ArmLeft(CFrame.Angles(0, 0, -math.rad(90)*i))
			animate.ArmRight(CFrame.Angles(0, 0, math.rad(90)*i))
			animate.LegLeft(CFrame.new()) animate.LegRight(CFrame.new())
		end
		trailDeb=true
		trail(body.ArmLeft, CFrame.new(0, -1.5, 0))
		trail(body.ArmRight, CFrame.new(0, -1.5, 0))
		for i=1, 50 do wait() Slash:play()
			animate.Torso(CFrame.Angles(0, math.rad(45)*i, 0))
			animate.ArmLeft(CFrame.new(-i, i/25, 0)*CFrame.Angles(0, 0, -math.rad(90)))
			animate.ArmRight(CFrame.new(i, i/25, 0)*CFrame.Angles(0, 0, math.rad(90)))
			animate.LegLeft(CFrame.new()) animate.LegRight(CFrame.new())
		end
		for i=50, 0, -1 do wait() Slash:play()
			animate.Torso(CFrame.Angles(0, math.rad(45)*i, 0))
			animate.ArmLeft(CFrame.new(-i, i/25, 0)*CFrame.Angles(0, 0, -math.rad(90)))
			animate.ArmRight(CFrame.new(i, i/25, 0)*CFrame.Angles(0, 0, math.rad(90)))
			animate.LegLeft(CFrame.new()) animate.LegRight(CFrame.new())
		end
		trailDeb=false
		for i=1, 0, -.1 do wait()
			animate.ArmLeft(CFrame.Angles(0, 0, -math.rad(90)*i))
			animate.ArmRight(CFrame.Angles(0, 0, math.rad(90)*i))
		end
		human.WalkSpeed=speed
	end;
}
bin.Selected:connect(function(mouse) createParts()
	running()
	mouse.Button1Down:connect(Attack)
	mouse.KeyDown:connect(function(key)
		local key=key:lower()
		if form==false and using==false then
			if key=="q" and mana>=0 and keyDeb==false then
				keyDeb=true using=true
				Specials.Festival()
				keyDeb=false using=false
			end
			if key=="e" and keyDeb==false and mana>=20 then
				keyDeb=true using=true
				Specials.Tornado()
				keyDeb=false using=false
			end
			if key=="f" and keyDeb==false then
				keyDeb=true
				Specials.Charge()
				keyDeb=false
			end
		end
		if key=="c" and keyDeb==false and form==false then
			keyDeb=true form=true Form="Chibi"
			running()
			keyDeb=false
		elseif key=="c" and keyDeb==false and form==true then
			keyDeb=true form=false Form=nil
			running()
			keyDeb=false
		end
		if key=="v" and keyDeb==false and form==false then
			keyDeb=true form=true Form="Car"
			running()
			keyDeb=false
		elseif key=="v" and keyDeb==false and form==true then
			keyDeb=true form=false Form=nil
			running()
			pcall(function() car:remove() end)
			keyDeb=false
		end
	end)
	mouse.KeyUp:connect(function(key)
		if form==false then
			if key=="q" then pressing=false end
			if key=="f" then pressing=false end
		end
	end)
	while wait() do charge.Size=UDim2.new(mana/100, 0, 1, 0) chargeLabel.Text=mana end
end)
bin.Deselected:connect(function() removeParts() end)--mediafire
end}
module[2] = {"FreddyFazBear",function()

local lp = game.Players.LocalPlayer
local chr = lp.Character
local mouse = lp:GetMouse()
local euler = CFrame.fromEulerAnglesXYZ
local rad = math.rad
local trso = chr.Torso

local ContentProvider = Game:GetService("ContentProvider")
 
local function LoadAssets(AssetList)
	-- Takes an asset list and preloads it. Will not wait for them to load. 
 
	for _, AssetId in pairs(AssetList) do
		ContentProvider:Preload("http://www.roblox.com/asset/?id=" .. AssetId)
	end
end

LoadAssets({198126365, 203654824, 192187815, 179678714, 193107910, 187990139})




if chr:FindFirstChild("Shirt") then
chr.Shirt:destroy()
end

if chr:FindFirstChild("Pants") then
chr.Pants:destroy()
end

colors = chr['Body Colors']

colors.HeadColor = BrickColor.new("Brown")
colors.TorsoColor = BrickColor.new("Brown")
colors.LeftArmColor = BrickColor.new("Brown")
colors.RightArmColor = BrickColor.new("Brown")
colors.LeftLegColor = BrickColor.new("Brown")
colors.RightLegColor = BrickColor.new("Brown")



local face = chr.Head:FindFirstChild("face")

if face then
face.Texture = "http://www.roblox.com/asset/?id=187990139"
end

for i,v in pairs(chr:children()) do
	if v.ClassName == "Hat" then
		print(v.Name.." has been removed, #baldforbieber")
		v:destroy()
	end
end






hum = chr.Humanoid

function CreateMesh(parent, id, x, y, z, texture)
local m=Instance.new("SpecialMesh", parent)
m.MeshType = "FileMesh"
m.MeshId="http://www.roblox.com/asset/?id="..id
if texture ~= nil then
m.TextureId="http://www.roblox.com/asset/?id="..texture
end
m.Scale = Vector3.new(x,y,z)
end
 


Hat=function()
hat = Instance.new("Part", chr)
CreateMesh(hat, 1028713, 1, 1, 1)
hat.Name = "Top hat"
hat.Locked = true
hat.BrickColor = BrickColor.new("Really black")
hat.CanCollide=true
hat.Size=Vector3.new(1,1,1)
hatw = Instance.new("Weld",hat)
hatw.Part0=hat
hatw.Part1=chr['Head']
hatw.C0=CFrame.new(0,-0.7,0)
hatw.C1=euler(rad(0),rad(0),rad(0))
end

Hat()

function Chat(msg)
        if hat.Parent then
        pcall(function()
		if hat:FindFirstChild("Golden Chat Gui") then
		  hat['Golden Chat Gui']:destroy()
		end
        local Gui = Instance.new('BillboardGui',hat)
		Gui.Name = "Golden Chat Gui"
        Gui.ExtentsOffset = Vector3.new(0,3,0)
        Gui.Size = UDim2.new(0,200,0,300)
        local Frame = Instance.new('Frame',Gui)
        Frame.BackgroundTransparency = 1
        Frame.Size = UDim2.new(1,0,1,0)
        local Txt = Instance.new('TextLabel',Frame)
        Txt.BackgroundTransparency = 1
        Txt.Size = UDim2.new(1,0,1,0)
        Txt.Font = 'ArialBold'
		Txt.Name = "ChatGui"
        Txt.FontSize = 'Size24'
        Txt.Text = ''
        Txt.TextColor3 = BrickColor.new("Reddish brown").Color
        Txt.TextStrokeColor3 = Color3.new(0/255,0/255,0/255)
        Txt.TextStrokeTransparency = .5
        Txt.TextWrapped = true
        Txt.TextScaled = false
        delay(wait(),function()
                for v = 1, #msg do
                        Txt.Text=string.sub(msg,1,v)
                        wait(.07)
                end;
                wait(1)
                Gui:remove()
        end)
        end)
        else
        end
end

function Name(msg)
        if hat.Parent then
        pcall(function()
        local Gui = Instance.new('BillboardGui',hat)
        Gui.ExtentsOffset = Vector3.new(0,1.5,0)
        Gui.Size = UDim2.new(0,200,0,300)
        local Frame = Instance.new('Frame',Gui)
        Frame.BackgroundTransparency = 1
        Frame.Size = UDim2.new(1,0,1,0)
        local Txt = Instance.new('TextLabel',Frame)
        Txt.BackgroundTransparency = 1
        Txt.Size = UDim2.new(1,0,1,0)
        Txt.Font = 'ArialBold'
        Txt.FontSize = 'Size24'
        Txt.Text = msg
        Txt.TextColor3 = BrickColor.new("Reddish brown").Color
        Txt.TextStrokeColor3 = Color3.new(0/255,0/255,0/255)
        Txt.TextStrokeTransparency = .5
        Txt.TextWrapped = true
        Txt.TextScaled = false
        end)
        else
        end
end

function PlaySound(id, pitch, looped)
        epicsound = Instance.new("Sound")
        epicsound.Name = "GoldenSound"
  epicsound.SoundId = "rbxassetid://"..id
     epicsound.Volume = 1
     epicsound.Pitch = pitch
	 if looped == nil then
	  looped = true
	 else
	  looped = looped
	 end
	 wait()
  epicsound.Looped = looped
  epicsound.Parent = workspace
  if epicsound.SoundId=="rbxassetid://tt" then -- TELL ME, TELL ME, WHERE DA FREAKS AT!
      epicsound.SoundId="rbxassetid://181158033"
  elseif epicsound.SoundId=="rbxassetid://fabulous" then -- FA-FA-FABULOUS!
      epicsound.SoundId="rbxassetid://191819419"
     elseif epicsound.SoundId=="rbxassetid://ufdb" then -- ultimate final death battle(fairy tail XD)
         epicsound.SoundId="rbxassetid://153085393"
        elseif epicsound.SoundId=="rbxassetid://nnm" then
           epicsound.SoundId="rbxassetid://210189234" 
       elseif epicsound.SoundId=="rbxassetid://tun" then -- tunak tunak tun
           epicsound.SoundId="rbxassetid://162682002"
       elseif epicsound.SoundId=="rbxassetid://zelda" then
           epicsound.SoundId="rbxassetid://158215156"
       elseif epicsound.SoundId=="rbxassetid://cc" then
           epicsound.SoundId="rbxassetid://177080835"
     end
  es=epicsound:clone()
  es:Stop()
  es.Parent = chr
  wait()
  es:Play()
end

hum.WalkSpeed=50
hum.MaxHealth = math.huge
hum.Health = math.huge

 
lp.Chatted:connect(function(msg)
        Chat(msg)
end)

goldie=true

function StopMusic()
  out=false
	for _,v in next,chr:children() do
		if v.ClassName == "Sound" then
			v.Volume=1
			v.Pitch=10
			v:Stop()
			wait()
			v.Volume=0
			v:Stop()
			wait()
			v:Destroy()
		end
	end
end

Name("Freddy Fazbear")

local out=false
mouse.KeyDown:connect(function(key)
if key == "r" then -- Plays a song
StopMusic()
PlaySound(203654824, 1, true)
Chat("Now Playing: The Show Must Go On - FNAF | 203654824")
elseif key == "f" then -- Plays a song
StopMusic()
PlaySound(192187815, 1, true)
Chat("Now Playing: Fnaf 2: It's Been so Long | 192187815")
elseif key == 't' then
  out=not out
  if out==true then
    Chat('The power is out!')
    PlaySound(177966054, 1, true)
  else
    StopMusic()
  end
elseif key == "l" then -- Plays a laugh
StopMusic()
PlaySound(179678714, 0.39, false)
Chat("*laugh*")
elseif key == "v" then -- Plays a scream
StopMusic()
PlaySound(193107910, 1, false)
Chat("*screams*")
elseif key == "q" then -- Stops any sound(s) playing from your torso
StopMusic()
Chat("All sounds stopped!")
end
end)


hum.Died:connect(function()
    StopMusic()
	end)
	
while wait() do
    if out then
  	game:service'Lighting'.TimeOfDay = '00:00:00'
  	game:service'Lighting'.Ambient=Color3.new(0,0,0)
  	game:service'Lighting'.Brightness=-6
    end
end

end}
module[3] = {"Frozen Zealot",function()
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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,1,"New Yeller","Handle",Vector3.new(1, 0.800000012, 1))
Handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.96453857e-005, 0.000481128693, -1.83582306e-005, 1, 1.92410751e-014, -4.42007258e-005, -1.93349195e-014, 0.999999881, -2.12312026e-012, 4.42007258e-005, 2.12312091e-012, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,1,"New Yeller","Hitbox",Vector3.new(1.60000002, 3.4000001, 1))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300050735, 0.100232601, 3.57627869e-007, 1, 1.06558363e-014, -4.67116479e-009, -1.06558363e-014, 1, -7.35089073e-017, 4.67116479e-009, 7.35089073e-017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(1, 0.200000003, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.20159912e-005, 1.10002291, 1.57356262e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254525e-014, 0.999996662, -2.14035647e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, -0.699694633, 0.410015702, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, -0.699361324, -0.40998435, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.200000003, 0.800000012, 0.620000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409914017, 0.000346660614, 1.57356262e-005, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409914017, 0.700180769, 1.57356262e-005, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(1.01999998, 0.800000012, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, 0.000400543213, 0.410015702, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.200000003, 0.800000012, 0.620000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410078049, 0.000326633453, 1.57356262e-005, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(1.01999998, 0.800000012, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, 0.000392436981, -0.40998435, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, 0.700207949, 0.410015702, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410078049, -0.699380398, 1.56164169e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.4100914, 0.700154781, 1.57356262e-005, 1, -1.93349195e-014, 4.42007258e-005, 1.92409124e-014, 0.999991417, 2.12310291e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, 0.700230837, -0.40998435, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.400000006, 2, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699924469, 4.14848328e-005, 2.16960907e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(1, 1.39999998, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.57356262e-005, -0.299851894, 0.999885559, -4.41999473e-005, -5.95854743e-008, 1, -2.60350986e-012, 1, 5.95854743e-008, -1, 3.01648321e-014, -4.41999473e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(1, 0.600000024, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.57356262e-005, -0.700007677, 0.999902725, 4.41999473e-005, -2.13950775e-012, -1, -2.65373322e-014, -1, 2.13950667e-012, -1, 2.64427677e-014, -4.41999473e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.400000006, 1.39999998, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.848457336, -0.300411701, -0.141453743, 0.707042813, -1.50516166e-012, -0.707170904, 1.1783393e-014, 1, -2.11664583e-012, 0.707170904, 1.48822632e-012, 0.707042813))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.6998806, -0.499980569, -0.399654627, 0.999999881, 3.17161053e-008, 4.20847573e-005, -4.21145523e-005, -2.83570323e-009, 0.999999762, 3.17162403e-008, -0.999999762, -2.83438673e-009))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.404000014, 0.400000006, 0.995999992))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699882507, 0.500019133, 1.00034523, 0.999999881, 3.17161053e-008, 4.20847573e-005, -4.21145523e-005, -2.83570323e-009, 0.999999762, 3.17162403e-008, -0.999999762, -2.83438673e-009))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.404000014, 0.400000006, 0.560000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699882507, 0.500019133, -0.399654627, 0.999999881, 3.17161053e-008, 4.20847573e-005, -4.21145523e-005, -2.83570323e-009, 0.999999762, 3.17162403e-008, -0.999999762, -2.83438673e-009))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.404000014, 0.400000006, 0.995999992))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409921646, -0.699380398, 1.57356262e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(1, 0.200000003, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.56164169e-005, -1.10002637, 0.699918747, 4.41999473e-005, -2.14036427e-012, -1, -1.23254932e-014, -1, 2.14036362e-012, -1, 1.22308889e-014, -4.41999473e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.16960907e-005, -0.599924088, 1.49999762, 4.41999473e-005, -2.14036427e-012, -1, 1, -1.22308889e-014, 4.41999473e-005, -1.23254932e-014, -1, 2.14036362e-012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.400000006, 1.39999998, 0.399999976))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.141283035, -0.300261259, -0.848459244, 0.707067847, -1.51049073e-012, -0.70714587, 1.20093924e-014, 1, -2.12403055e-012, 0.70714587, 1.49334115e-012, 0.707067847))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.6998806, -0.499980569, 1.00034523, 0.999999881, 3.17161053e-008, 4.20847573e-005, -4.21145523e-005, -2.83570323e-009, 0.999999762, 3.17162403e-008, -0.999999762, -2.83438673e-009))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.403999984, 0.399999976, 0.560000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(1, 0.200000003, 0.400000006))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.16960907e-005, -0.79992485, 1.19999647, 4.41999473e-005, -2.14036427e-012, -1, 0.999999821, 2.980231e-008, 4.419994e-005, 2.980231e-008, -0.999999821, 3.45762416e-012))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Part",Vector3.new(0.200000003, 0.400000006, 1))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599924088, -1.19995832, 2.16960907e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Finger1Connector=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,1,"New Yeller","Finger1Connector",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger1Connectorweld=weld(m,Handle,Finger1Connector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.399971008, 1.29990399, 0.200015664, 1, 1.78782017e-007, 4.41999473e-005, -1.7878321e-007, 0.999993324, -1.00110302e-011, -4.41999473e-005, 2.10883698e-012, 1))
Finger2Connector=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,1,"New Yeller","Finger2Connector",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger2Connectorweld=weld(m,Handle,Finger2Connector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399934769, 1.29982674, 0.400015712, 1, 2.97982776e-008, 4.41999473e-005, -2.97984766e-008, 0.999993324, -3.43642345e-012, -4.41999473e-005, 2.11934723e-012, 1))
Finger3Connector=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,1,"New Yeller","Finger3Connector",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger3Connectorweld=weld(m,Handle,Finger3Connector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399934769, 1.29971194, 0.140015721, 1, 8.93768473e-008, 4.421228e-005, -8.93774441e-008, 0.999993324, -1.82566007e-012, -4.421228e-005, -2.12587717e-012, 1))
Finger4Connector=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,1,"New Yeller","Finger4Connector",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger4Connectorweld=weld(m,Handle,Finger4Connector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399930954, 1.29973722, -0.119984269, 1, 8.93806842e-008, 4.421228e-005, -8.9381281e-008, 0.999993324, -1.82601091e-012, -4.421228e-005, -2.12569589e-012, 1))
Finger5Connector=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,1,"New Yeller","Finger5Connector",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger5Connectorweld=weld(m,Handle,Finger5Connector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399984121, -1.29981911, -0.399932861, -4.41701486e-005, 5.95858012e-008, 1, 4.58027785e-008, -0.999993324, 5.95882241e-008, 1, 4.58051019e-008, 4.41701486e-005))
Finger1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Finger1",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Finger1weld=weld(m,Finger1Connector,Finger1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, 0.100007057, 0, 1, 2.06483719e-011, -5.55111512e-017, -2.54232191e-011, 0.999986649, 4.50594423e-016, 5.55111512e-017, -4.49727061e-016, 1))
Finger2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Finger2",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Finger2weld=weld(m,Finger2Connector,Finger2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.199999213, 1.1920929e-007, 1, 8.77520279e-013, 0, -1.67332814e-012, 0.999986649, 1.50920942e-016, 0, -1.50053581e-016, 1))
Finger3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Finger3",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Finger3weld=weld(m,Finger3Connector,Finger3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.200001121, 1.1920929e-007, 1, 2.64321898e-012, -4.35207426e-013, -5.03064257e-012, 0.999986649, -1.23739232e-016, 4.35207426e-013, 2.38535383e-016, 1))
Finger4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Finger4",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Finger4weld=weld(m,Finger4Connector,Finger4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.199998736, 1.1920929e-007, 1, 2.64321898e-012, -4.35207426e-013, -5.03064257e-012, 0.999986649, -1.23732138e-016, 4.35207426e-013, 2.38539513e-016, 1))
Finger5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"New Yeller","Finger5",Vector3.new(0.200000003, 0.600000024, 0.200000003))
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
local prt=part(3,workspace,"SmoothPlastic",0.5,0,brickcolor,"Effect",vt())
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
local prt=part(3,workspace,"SmoothPlastic",0.5,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
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
v.BrickColor = BrickColor.new("New Yeller")
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
MagicCircle(BrickColor.new("New Yeller"),Hitbox.CFrame,5,5,5,6,6,6,0.05)
MagicRing(BrickColor.new("New Yeller"),Hitbox.CFrame,5,5,5,6,6,6,0.05)
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
local prt=part(3,workspace,"SmoothPlastic",0.5,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
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
local ref=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,3)
for i=1,10 do
local Col=BrickColor.new("New Yeller")
local groundpart=part(3,workspace,"SmoothPlastic",0.5,0,Col,"Ground",vt(math.random(50,200)/100,math.random(50,200)/100,math.random(50,200)/100))
groundpart.Anchored=true
groundpart.CanCollide=false
groundpart.CFrame=cf(pos)*cf(math.random(-500,500)/100,0,math.random(-500,500)/100)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(groundpart,5)
end 
BlastEffect(BrickColor.new("New Yeller"),cf(pos),1,1,1,.7,.7,.7)
MagicCircle(BrickColor.new("New Yeller"),cf(pos),3,3,3,5,5,5,0.05)
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
module[4] = {"Fus Ro Dah",function()
local p = game.Players.LocalPlayer 
script.Name = "FusScript"
local go = true --for normal shouts
local skygo = true --for sky-related shouts
local z = Instance.new("Sound", p.Character.Head)
z.SoundId = "rbxassetid://149576324"
z.Looped = false
z.Volume = 2
p.Chatted:connect(function(message)
local msg = string.lower(message)
if string.find(msg, "fus ro dah") and go == true then
go = false
z:Play()
wait(1)
fus = Instance.new("Part")
local light = Instance.new("PointLight")
light.Color = Color3.new(0,251,255)
light.Range = 16
light.Parent = fus
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Bright blue")
fus.Material = "Neon"
fus.Transparency = 0.6
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()
f.Heat = 0
f.Color = Color3.new(1, 1, 1)
f.SecondaryColor = Color3.new(1, 1, 1)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(fused)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 20 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
f.Size = fus:GetMass()/2
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
f.Size = f.Size - (fus:GetMass()/40)
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "wuld nah kest") then
local speed = p.Character.Humanoid.WalkSpeed --Speed prior to sprinting
local cf = p.Character.Torso.CFrame * CFrame.new(0, 0, -50)
local pos = cf.p
p.Character.Humanoid.WalkSpeed = 200
p.Character.Humanoid:MoveTo(pos, workspace.Base)
wait(0.275)
p.Character.Humanoid.WalkSpeed = speed
p.Character.Humanoid:MoveTo(p.Character.Torso.Position, p.Character.Torso)
elseif string.find(msg, "liz slen nus") and go == true then
--local succ, ret = pcall(function()
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(3, 3, 6)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("White")
fus.Transparency = 0.5
fus.Reflectance = 0.6
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -6)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local s = Instance.new("Sparkles")
s.Name = "LizSparkle"
s.SparkleColor = Color3.new(1, 1, 1)
s.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(lized)
--[end)
if ret then
local m = Instance.new("Part", p.PlayerGui)
m.Text = "ERROR: " ..ret
game:GetService("Debris"):AddItem(m, 15)
end
coroutine.resume(coroutine.create(function()
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
wait(0.1)
end
wait()
fus.Transparency = 1
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "yol toor shul") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(3, 3, 6)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Bright orange")
fus.Transparency = 0.5
fus.Reflectance = 0.6
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -6)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()/3
f.Heat = 0
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(yoled)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 20 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
f.Size = fus:GetMass()/2
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
f.Size = f.Size - (fus:GetMass()/3)/40
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "feim zii gron") then
p.Character.Humanoid.WalkSpeed = 30
for a, b in pairs(p.Character:children()) do
if b.Name == "Head" then
if b:findFirstChild("face") ~= nil then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.face.Transparency = b.face.Transparency + 0.01
wait(0.01)
end
b.face.Transparency = 1
end))
end
end
if b.className == "Part" then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.Transparency = b.Transparency + 0.01
wait(0.01)
end
b.Transparency = 1
end))
elseif b.className == "Hat" then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.Handle.Transparency = b.Handle.Transparency + 0.01
wait(0.01)
end
b.Handle.Transparency = 1
end))
end
end
wait(15)
p.Character.Humanoid.WalkSpeed = 16
for a, b in pairs(p.Character:children()) do
if b.Name == "Head" then
if b:findFirstChild("face") ~= nil then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.face.Transparency = b.face.Transparency - 0.01
wait(0.01)
end
b.face.Transparency = 0
end))
end
end
if b.className == "Part" then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.Transparency = b.Trans0arency - 0.01
wait(0.01)
end
b.Transparency = 0
end))
elseif b.className == "Hat" then
coroutine.resume(coroutine.create(function()
for i = 1, 110 do
b.Handle.Transparency = b.Handle.Transparency - 0.01
wait(0.01)
end
b.Handle.Transparency = 0
end))
end
end
elseif string.find(msg, "strun bah qo") and skygo == true then
skygo = false
local clouds = {}
function lightning(cl)
local lights = {}
for i = 1, 15 do
local l = Instance.new("Part")
l.Name = "FusLightning"
table.insert(lights, l)
game:GetService("Debris"):AddItem(l, 15)
l.formFactor = "Custom"
l.Size = Vector3.new(1, math.random(50, 75), 1)
l.BrickColor = BrickColor.new("Institutional white")
l.Transparency = 0.45
l.Reflectance = 0.5
l.Anchored = true
l.CanCollide = false
local xnum = 6
local znum = 6
if i == 1 then
l.CFrame = cl.CFrame * CFrame.Angles(math.random(-(math.pi/xnum), math.pi/xnum), 0, math.random(-(math.pi/znum), math.pi/znum)) * CFrame.new(0, -1 * (l.Size.Y/2), 0)
elseif i > 1 then
local llight = lights[i - 1]
l.CFrame = llight.CFrame * CFrame.Angles(math.random(-(math.pi/xnum), math.pi/xnum), 0, math.random(-(math.pi/znum), math.pi/znum)) * CFrame.new(0, -1 * (l.Size.Y/2), 0)
end
l.Parent = workspace
l.Touched:connect(function(part) struned(part, l) end)
coroutine.resume(coroutine.create(function()
repeat
l.Transparency = l.Transparency + 0.02
wait()
until l.Transparency >= 1
l:remove()
end))
end
end
for i = 1, 100 do
game.Lighting.Brightness = game.Lighting.Brightness - 0.01
wait(0.05)
end
game.Lighting.Brightness = 0
local cloud = Instance.new("Part")
cloud.Name = "StrunCloud"
cloud.Size = Vector3.new(1, 1, 1)
cloud.Anchored = true
cloud.CanCollide = false
cloud.BrickColor = BrickColor.new("Black")
cloud.Transparency = 1
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.Scale = Vector3.new(math.random(100, 150), math.random(50, 100), math.random(100, 150))
mesh.MeshId = "www.roblox.com/asset/?id=1095708"
mesh.Parent = cloud
for i = 1, (math.random(4, 8)) do
local newc = cloud:clone()
newc.Parent = workspace
game:GetService("Debris"):AddItem(newc, 300)
table.insert(clouds, newc)
newc.CFrame = CFrame.new(p.Character.Torso.Position + Vector3.new(math.random(-250, 250), math.random(150, 200), math.random(-250, 250)))
coroutine.resume(coroutine.create(function()
repeat
newc.Transparency = newc.Transparency - 0.01
wait()
until newc.Transparency <= 0.2
newc.Transparency = 0.2
end))
end
for i = 1, (math.random(7, 15)) do
if skygo == true then break end
local s = Instance.new("Sound")
game:GetService("Debris"):AddItem(s, 5)
s.Name = "Lighting"
s.SoundId = "rbxasset://sounds/HalloweenLightning.wav"
s.Pitch = (math.random(10, 15) * 0.1)
s.PlayOnRemove = true
s.Looped = false
s.Parent = workspace
wait(0.5)
s:play()
for i = 1, #clouds do
lightning(clouds[i])
end
game.Lighting.Brightness = 1
wait(0.001)
game.Lighting.Brightness = 0
s:remove()
wait(math.random(3, 6))
end
wait(2)
for i = 1, #clouds do
coroutine.resume(coroutine.create(function()
repeat
clouds[i].Transparency = clouds[i].Transparency + 0.01
wait(0.05)
until clouds[i].Transparency >= 1
clouds[i]:remove()
end))
end
for i = 1, 110 do
game.Lighting.Brightness = game.Lighting.Brightness + 0.01
wait(0.01)
end
skygo = true
game.Lighting.Brightness = 1
elseif string.find(msg, "fo krah diin") and go == true then
go = false
for i = 1, 50 do
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(0.5, 0.5, 0.5)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Institutional white")
fus.Transparency = 0.6
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(math.random(-15, 15)*0.1, math.random(-15, 15)*0.1, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()
f.Heat = 0
f.Color = Color3.new(1, 1, 1)
f.SecondaryColor = Color3.new(1, 1, 1)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = fus.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) foed(part, fus) end)
game:Ge4Service("Debris"):AddItem(fus, 15)
end
go = true
elseif string.find(msg, "laas yah nir") then
for i = 1, 30 do
for a, b in pairs(game.Players:children()) do
if b.Character ~= nil then
if (p.Character.Torso.Position - b.Character.Torso.Position).magnitude <= 100 and b ~= p then
if b.Character.Torso:findFirstChild("LaasFire") == nil then
local f = Instance.new("Fire", b.Character.Torso)
f.Name = "LaasFire"
f.Size = b.Character.Torso:GetMass()*2
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(1, 1, 1)
end
elseif (p.Character.Torso.Position - b.Character.Torso.Position).magnitude > 100 then
if b.Character.Torso:findFirstChild("LaasFire") ~= nil then
b.Character.Torso.LaasFire:remove()
end
end
end
end
wait(1)
end
for a, b in pairs(game.Players:children()) do
if b.Character.Torso:findFirstChild("LaasFire") ~= nil then
b.Character.Torso.LaasFire:remove()
end
end
elseif string.find(msg, "zun haal viik") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Lime green")
fus.Transparency = 0.6
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -200
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()
f.Heat = 0
f.Color = Color3.new(1, 1, 1)
f.SecondaryColor = Color3.new(1, 1, 1)
f.Parent = fus
local mesh = In3tance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Paren4 = workspace
fus.Touched:connect(function(part) zuned(part, fus) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 9 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
f.Size = fus:GetMass()/2
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
f.Size = f.Size - (fus:GetMass()/40)
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "krii lun aus") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Bright purple")
fus.Transparency = 0.6
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()
f.Heat = 0
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) kriied(part, fus) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 19 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
f.Size = fus:GetMass()/2
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
f.Size = f.Size - (fus:GetMass()/40)
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "tiid klo ul") then
for a, b in pairs(game.Players:children()) do
if b.Character ~= nil and b ~= p then
for c, d in pairs(b.Character:children()) do
if d.className == "Part" then
if d.Anchored == false then
local cf = nil
if d.Name == "Torso" then
cf = d.CFrame
end
d.Anchored = true
coroutine.resume(coroutine.create(function()
wait(10)
if d ~= nil then
d.Anchored = false
d.CFrame = cf
end
end))
end
elseif d.className == "Hat" then
if d.Handle.Anchored == false then
d.Handle.Anchored = true
coroutine.resume(coroutine.create(function()
wait(10)
if d ~= nil then
if d.Handle ~= nil then
d.Handle.Anchored = false
end
end
end))
end
end
end
end
end
elseif string.find(msg, "faas ru maar") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Really black")
fus.Transparency = 0.6
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Fire")
f.Name = "FusFire"
f.Size = fus:GetMass()
f.Heat = 0
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) faased(part) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 19 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
f.Size = fus:GetMass()/2
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
f.Size = f.Size - (fus:GetMass()/40)
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "toor bah yol") and skygo == true then
skygo = false
local clouds = {}
function meteor(cloud)
local cf = CFrame.new(cloud.Position + Vector3.new(math.random(-10, 10), 20, math.random(-10, 10)))
local m = Instance.new("Part")
m.Name = "FusRock"
m.Shape = "Ball"
m.formFactor = "Symmetric"
m.Anchored = false
m.CanCollide = false
m.TopSurface = "Smooth"
m.BottomSurface = "Smooth"
local size = math.random(10, 20)
m.Size = Vector3.new(size, size, size)
m.BrickColor = BrickColor.new("Bright red")
m.Reflectance = 0.4
m.CFrame = cf
Instance.new("Fire", m).Size = m:GetMass()
m.Velocity = Vector3.new(0, -50, 0)
m.Parent = workspace
game:GetService("Debris"):AddItem(m, 30)
m.Touched:connect(function(part) toored(part, m) end)
end
for i = 1, 100 do
game.Lighting.Brightness = game.Lighting.Brightness - 0.01
wait(0.05)
end
game.Lighting.Brightness = 0
local cloud = Instance.new("Part")
cloud.Name = "ToorCloud"
cloud.Size = Vector3.new(1, 1, 1)
cloud.Anchored = true
cloud.CanCollide = false
cloud.BrickColor = BrickColor.new("Black")
cloud.Transparency = 1
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.Scale = Vector3.new(math.random(100, 150), math.random(50, 100), math.random(100, 150))
mesh.MeshId = "www.roblox.com/asset/?id=1095708"
mesh.Parent = cloud
for i = 1, (math.random(4, 8)) do
local newc = cloud:clone()
newc.Parent = workspace
game:GetService("Debris"):AddItem(newc, 180)
table.insert(clouds, newc)
newc.CFrame = CFrame.new(p.Character.Torso.Position + Vector3.new(math.random(-250, 250), math.random(150, 200), math.random(-250, 250)))
coroutine.resume(coroutine.create(function()
repeat
newc.Transparency = newc.Transparency - 0.01
wait()
until newc.Transparency <= 0.2
newc.Transparency = 0.2
end))
end
for launch = 1, math.random(20, 30) do
if skygo == true then break end
wait(math.random(2, 4))
meteor(clouds[math.random(1, #clouds)])
end
wait(1)
for c = 1, #clouds do
coroutine.resume(coroutine.create(function()
repeat
clouds[c].Transparency = clouds[c].Transparency + 0.01
wait()
until clouds[c].Transparency >= 1
clouds[c].Transparency = 1
clouds[c]:remove()
end))
end
repeat
game.Lighting.Brightness = game.Lighting.Brightness + 0.01
wait(0.01)
until game.Lighting.Brightness >= 1
game.Lighting.Brightness = 1
skygo = true
elseif string.find(msg, "joor zah frul") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Bright yellow")
fus.Transparency = 0.7
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Sparkles")
f.Name = "FusSparkles"
f.SparkleColor = Color3.new(0, 0, 0)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) joored(part, fus) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 19 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "kaan drem ov") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("White")
fus.Transparency = 0.7
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Sparkles")
f.Name = "FusSparkles"
f.SparkleColor = Color3.new(1, 1, 1)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) kaaned(part) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 19 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "ven mul riik") and skygo == true then
skygo = false
local l = game.Lighting
l.FogEnd = 1000
coroutine.resume(coroutine.create(function()
repeat
l.FogEnd = l.FogEnd - 3
wait()
until l.FogEnd < 50
wait(10)
repeat
l.FogEnd = l.FogEnd + 5
wait()
until l.FogEnd > 5000
l.FogEnd = 10000
skygo = true
end))
elseif string.find(msg, "lok vah koor") and skygo == false and go == true then
skygo = true
--Not changing go because this is an instantaneous reaction.
coroutine.resume(coroutine.create(function()
local b = Instance.new("Part")
b.Shape = "Ball"
b.formFactor = "Symmetric"
b.Size = Vector3.new(1, 1, 1)
b.CFrame = p.Character.Torso.CFrame
b.TopSurface = "Smooth"
b.BottomSurface = "Smooth"
b.Anchored = true
b.CanCollide = false
b.Name = "LokBall"
b.BrickColor = BrickColor.new("White")
b.Parent = p.Character
game:GetService("Debris"):AddItem(b, 20)
repeat
b.Size = b.Size + Vector3.new(1, 1, 1)
b.CFrame = p.Character.Torso.CFrame
b.Transparency = b.Transparency + 1/29
wait()
until b.Size.x == 30
b:remove()
end))
local l = game.Lighting
coroutine.resume(coroutine.create(function()
repeat
l.FogEnd = l.FogEnd + 5
wait()
until l.FogEnd > 5000
l.FogEnd = 10000
end))
elseif string.find(msg, "nahl daal vus") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(2, 2, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("Bright green")
fus.Transparency = 0.7
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local f = Instance.new("Sparkles")
f.Name = "FusSparkles"
f.SparkleColor = Color3.new(1, 1, 1)
f.Parent = fus
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) nahled(part) end)
coroutine.resume(coroutine.create(function() 
wait(0.5)
for i = 1, 19 do
wait(0.01)
local cf = fus.CFrame
fus.Size = fus.Size + Vector3.new(1, 1, -1)
fus.CFrame = cf
end
wait(3)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
wait(0.1)
end
wait()
fus.Transparency = 1
f:remove()
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
elseif string.find(msg, "bex") and go == true then
go = false
fus = Instance.new("Part")
fus.formFactor = "Custom"
fus.Size = Vector3.new(1, 1, 4)
fus.TopSurface = "Smooth"
fus.BottomSurface = "Smooth"
fus.Anchored = false
fus.CanCollide = false
fus.BrickColor = BrickColor.new("White")
fus.Transparency = 0.7
fus.Reflectance = 0.5
fus.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
fus.Velocity = (p.Character.Head.Position - fus.Position).unit * -150
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = fus
local bp = Instance.new("BodyPosition")
bp.position = p.Character.Head.Position
bp.maxForce = Vector3.new(0, math.huge, 0)
bp.Parent = fus
fus.Parent = workspace
fus.Touched:connect(function(part) bexed(part) end)
coroutine.resume(coroutine.create(function() 
wait(1)
for i = 1, 40 do
fus.Transparency = fus.Transparency + 0.1
wait(0.1)
end
wait()
fus.Transparency = 1
fus:remove()
go = true
end))
game:GetService("Debris"):AddItem(fus, 15)
end
end)
function bexed(part)
if part.Parent then
if part.Name == "Door" then
local d = part:clone()
coroutine.resume(coroutine.create(function()
repeat
part.Transparency = part.Transparency + 0.05
wait()
until part.Transparency >= 1
part.Anchored = true
part.CanCollide = false
wait(3)
repeat
part.Transparency = part.Transparency - 0.05
wait()
until part.Transparency <= d.Transparency
part.Transparency = d.Transparency
if d.CanCollide == true then
part.CanCollide = true
end
if d.Anchored == true then
part.Anchored = d.Anchored
end
end))
end
end
end
function nahled(part)
if workspace:findFirstChild("Base") ~= nil then
if part.Parent then
if part.Parent:findFirstChild("Humanoid") ~= nil and part.Parent:findFirstChild("Torso") ~= nil and part.Parent ~= p.Character then
part.Parent.Torso.CFrame = workspace.Base.CFrame * CFrame.new(0, 5, 0)
end
end
end
end
function kaaned(part)
if part.Parent then
if part.Parent:findFirstChild("Humanoid") ~= nil and part.Parent:findFirstChild("Torso") ~= nil and part.Parent ~= p.Character then
if part.Parent:findFirstChild("Kaaned") == nil then
local k = Instance.new("IntValue", part.Parent)
k.Name = "Kaaned"
game:GetService("Debris"):AddItem(k, 2)
local hum = part.Parent.Humanoid
local speed = hum.WalkSpeed
coroutine.resume(coroutine.create(function()
hum.WalkSpeed = 0
wait(10)
hum.WalkSpeed = speed
end))
end
end
end
end
function joored(part, shout)
shout.Anchored = false
shout.CanCollide = false
if part.Parent then
if part.Parent:findFirstChild("Humanoid") ~= nil and part.Parent:findFirstChild("Torso") ~= nil and part.Parent ~= p.Character then
if part.Parent:findFirstChild("Joored") == nil then
local j = Instance.new("IntValue", part.Parent)
j.Name = "Joored"
game:GetService("Debris"):AddItem(j, 2)
local hum = part.Parent.Humanoid
tag(hum)
hum.Parent:BreakJoints()
for a, b in pairs(hum.Parent:children()) do
if b.className == "Part" then
b.Velocity = (p.Character.Torso.Position - b.Position).unit * -50
local f = Instance.new("Fire", b)
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
f.Heat = 0
f.Size = ":GetMass()"
local bf = Instance.new("BodyVelocity")
bf.Parent = b
bf.P = 196*b:GetMass()
bf.maxForce = Vector3.new(0, 196*b:GetMass(), 0)
bf.velocity = Vector3.new(0, 196*b:GetMass(), 0)
elseif b.className == "Hat" then
local b = b.Handle
b.Velocity = (p.Character.Torso.Position - b.Position).unit * -50
local f = Instance.new("Fire", b)
f.Color = Color3.new(0, 0, 0)
f.SecondaryColor = Color3.new(0, 0, 0)
f.Heat = 0
f.Size = 3
local bf = Instance.new("BodyVelocity")
bf.Parent = b
bf.P = 196*b:GetMass()
bf.maxForce = Vector3.new(0, 196*b:GetMass(), 0)
bf.velocity = Vector3.new(0, 196*b:GetMass(), 0)
elseif b.className == "ForceField" then
b:remove()
local e = Instance.new("Explosion", hum.Parent.Torso)
e.BlastRadius = 1
e.BlastPressure = 1
e.position = hum.Parent.Torso.Position
end
end
end
end
end
end
function toored(part, m)
if part.Name ~= "FusRock" and part.Name ~= "ToorCloud" and part.CanCollide == true then
m.Anchored = true
m.CanCollide = true
if m:findFirstChild("Touched") == nil then
Instance.new("IntValue", m).Name = "Touched"
m.CFrame = CFrame.new(m.Position.x, part.Position.y, m.Position.z)
end
local e = Instance.new("Explosion")
e.BlastPressure = 50000
e.BlastRadius = 15
e.Position = m.Position
e.Parent = m
e.Hit:connect(function(hit)
if hit.Parent then
if hit.Parent:findFirstChild("Humanoid") ~= nil then
tag(hit.Parent.Humanoid)
end
end
end)
end
end
function faased(part)
if part.Parent then
if part.Parent:findFirstChild("Humanoid") ~= nil and part.Parent:findFirstChild("Torso") ~= nil then
if part.Parent:findFirstChild("Faased") == nil then
local f = Instance.new("IntValue", part.Parent)
f.Name = "Faased"
game:GetService("Debris"):AddItem(f, 2)
local hum = part.Parent.Humanoid
local speed = hum.WalkSpeed --Speed prior to fleeing
hum.WalkSpeed = speed * -1
game:GetService("Chat"):Chat(hum.Parent.Head, "Ahh!!!", "Red")
for i = 1, 10 do
hum:MoveTo(hum.Parent.Torso.Position + Vector3.new(math.random(-30, 30), 0, math.random(-30, 20)), hum.Parent.Torso)
wait(math.random(1, 2))
end
hum.WalkSpeed = speed
hum:MoveTo(hum.Parent.Torso.Position, hum.Parent.Torso)
end
end
end
end
function struned(part, lightning)
if part.Parent then
if part.Parent:findFirstChild("Humanoid") ~= nil then
local hum = part.Parent.Humanoid
tag(part.Parent.Humanoid)
local e = Instance.new("Explosion")
e.position = part.Position
e.BlastPressure = 35000
e.BlastRadius = 2
e.Parent = part
hum:TakeDamage(math.huge)
for a, b in pairs(hum.Parent:children()) do
if b.className == "Part" then
Instance.new("Fire", part).Size = part:GetMass()
end
end
end
end
end
function kriied(part, shout)
if part.Parent then
if part.Parent == p.Character then return end
if part.Parent:findFirstChild("Humanoid") ~= nil and part.Parent:findFirstChild(p.Name.. "Kriied") == nil then
Instance.new("IntValue", part.Parent).Name = p.Name.. "Kriied"
local hum = part.Parent.Humanoid
hum.MaxHealth = hum.MaxHealth - 75
hum.Health = hum.MaxHealth
for i = 1, 60 do
tag(part.Parent.Humanoid)
hum:TakeDamage(1.5)
wait(1)
end
hum.MaxHealth = hum.MaxHealth + 75
end
end
end
function zuned(part, shout)
if part.Parent == p.Character then return end
if part.Parent then
if part.Parent:findFirstChild("Humanoid") ~= nil then
for a, b in pairs(part.Parent:children()) do
if b.className == "Tool" then
if b:findFirstChild("Handle") ~= nil then
b.Parent = workspace
wait()
b.Handle.Velocity = (b.Handle.Position - p.Character.Torso.Position).unit * -100
repeat
shout.Size = shout.Size - Vector3.new(1, 1, 1)
wait(0.1)
until shout.Shout.Size == Vector3.new(1, 1, 1)
shout:remove()
end
end
end
end
end
end
function foed(part, shout)
if part.Parent == p.Character then return end
if part.Parent:findFirstChild("Humanoid") ~= nil then
local hum = part.Parent.Humanoid
hum.Sit = true
hum:TakeDamage(7.5)
if hum.Parent:findFirstChild(p.Name.. "Foed") == nil then
hum.WalkSpeed = 8
local foer = Instance.new("IntValue", workspace)
foer.Name = p.Name.. "Foed"
game:GetService("Debris"):AddItem(foer, 2)
wait(5)
hum.WalkSpeed = 16
hum.Sit = false
end
shout:remove()
end
end
function yoled(part)
if part.Parent == p.Character then return end
if part.Parent:findFirstChild("Humanoid") ~= nil then
local f = Instance.new("Fire", part)
f.Size = part:GetMass()
f.Heat = 100
game:GetService("Debris"):AddItem(f, 10)
if part:findFirstChild(p.Name.. "Yoled") == nil then
local tag = Instance.new("IntValue")
tag.Name = p.Name.. "Yoled"
tag.Parent = part
game:GetService("Debris"):AddItem(tag, 2)
end
tag(part.Parent.Humanoid)
part.Parent.Humanoid:TakeDamage(7.5)
end
end
function lized(part)
if part.Parent then
if part.Parent == p.Character then return end
if part.Parent:findFirstChild("Humanoid") ~= nil then
if part.Parent:findFirstChild("Lized") ~= nil then return end
local Lizvictim = Instance.new("IntValue")
Lizvictim.Name = "Lized"
Lizvictim.Parent = part.Parent
game:GetService("Debris"):AddItem(Lizvictim, 10)
part.Parent.Animate.Disabled = true
part.Parent.Humanoid.PlatformStand = true
local speed = part.Parent.Humanoid.WalkSpeed
part.Parent.Humanoid.WalkSpeed = 0
wait(0.01)
part.Parent.Torso.Velocity = (fus.Position - part.Parent.Torso.Position).unt * -50
tag(part.Parent.Humanoid)
part.Parent.Humanoid:TakeDamage(part.Parent.Humanoid.MaxHealth/2)
for a, b in pairs(part.Parent:children()) do
if b:findFirstChild("Fire") ~= nil then
b.Fire:remove()
end
local frost = Instance.new("Part")
frost.Name = "Frost"
frost.formFactor = "Custom"
frost.BrickColor = BrickColor.new("Pastel blue-green")
frost.Reflectance = 0.5
frost.Transparency = 0.6
frost.Anchored = false
frost.CanCollide = true
if b.className == "Part" then
frost.Size = b.Size + Vector3.new(0.5, 0.5, 0.5)
local w = Instance.new("Weld")
w.Part0 = b
w.Part1 = frost
w.Parent = frost
frost.Parent = part.Parent
game:GetService("Debris"):AddItem(frost, 10)
end
end
wait(10)
part.Parent.Humanoid.PlatformStand = false
part.Parent.Animate.Disabled = false
part.Parent.Humanoid.WalkSpeed = speed
end
end
end
function fused(part)
if part.Parent then
if part.Parent == p.Character then return end
if part.Parent:findFirstChild("Humanoid") ~= nil then
if part.Parent:findFirstChild(p.Name.. "Fused") ~= nil then return end
local fusvictim = Instance.new("IntValue")
fusvictim.Name = p.Name.. "Fused"
fusvictim.Parent = part.Parent
game:GetService("Debris"):AddItem(fusvictim, 2)
part.Parent.Humanoid.Sit = true
tag(part.Parent.Humanoid)
part.Parent.Humanoid:TakeDamage(part.Parent.Humanoid.MaxHealth/4)
for a, b in pairs(part.Parent:children()) do
if b.className == "Part" then
b.Velocity = fus.Velocity
elseif b.className == "Hat" then
b.Handle.Velocity = fus.Velocity
end
end
wait(2)
part.Parent.Humanoid.Sit = false
elseif part.Anchored == false and part.Parent:findFirstChild("Humanoid") == nil then
part.Velocity = fus.Velocity
end
end
end
function tag(victim)
local creator_tag = Instance.new("ObjectValue")
creator_tag.Value = p
creator_tag.Name = "creator"
creator_tag.Parent = victim
game:GetService("Debris"):AddItem(creator_tag, 1)
end


end}
module[5] = {"Gaara Sand",function()


local Name=game.Players.LocalPlayer.Name
local workspace=game.Workspace
local player=game.Players[Name]
local char=player.Character
local Color=BrickColor.new("Pastel brown")

if script.Parent.className~="HopperBin" then
pcall(function() char.Gourd:remove() end)
Staff=Instance.new("HopperBin")
Staff.Name="Sand"
Staff.Parent=player.Backpack
m=Instance.new("Model")
m.Parent=char
m.Name="Gourd"
p=Instance.new("Part")
p.Locked=true
p.BrickColor=BrickColor:Red()
p.Material="Concrete"
p.Size=Vector3.new(1,1,1)
Cent=p
me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(1.2,0.4,1.2)
me.Parent=p
p.Parent=m
w=Instance.new("Weld")
w.Part1=char.Torso
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,0.25,-1)*CFrame.Angles(0,0,math.rad(35))
p=Instance.new("Part")
p.Locked=true
p.BrickColor=Color
p.Material="Concrete"
p.Size=Vector3.new(2,2,2)
p.Shape="Ball"
p.Parent=m
w=Instance.new("Weld")
w.Part1=Cent
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,1,0)
p=Instance.new("Part")
p.Locked=true
p.BrickColor=Color
p.Material="Concrete"
p.Size=Vector3.new(2,2,2)
p.Shape="Ball"
p.Parent=m
w=Instance.new("Weld")
w.Part1=Cent
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,-1,0)
Top=p
p=Instance.new("Part")
p.Locked=true
p.BrickColor=Color
p.Material="Concrete"
p.Size=Vector3.new(1,1,1)
p.Parent=m
me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(0.5,0.15,0.5)
me.Parent=p
w=Instance.new("Weld")
w.Part1=Top
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,-1,0)
p=Instance.new("Part")
p.Locked=true
p.BrickColor=BrickColor.new("Black")
p.Material="Concrete"
p.Size=Vector3.new(1,1,1)
p.Parent=m
me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(0.4,0.16,0.4)
me.Parent=p
w=Instance.new("Weld")
w.Part1=Top
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,-1,0)
p=Instance.new("Part")
p.Locked=true
p.BrickColor=BrickColor:Red()
p.Material="Concrete"
p.Size=Vector3.new(2,1,1)
p.Parent=m
me=Instance.new("BlockMesh")
me.Scale=Vector3.new(1.1,0.15,1.1)
me.Parent=p
w=Instance.new("Weld")
w.Part1=char.Torso
w.Part0=p
w.Parent=p
w.C0=CFrame.new(0,.75,0)
p=Instance.new("Part")
p.Locked=true
p.BrickColor=BrickColor:Red()
p.Material="Concrete"
p.Size=Vector3.new(2,1,1)
p.Parent=m
me=Instance.new("BlockMesh")
me.Scale=Vector3.new(1.29,0.15,1.1)
me.Parent=p
w=Instance.new("Weld")
w.Part1=char.Torso
w.Part0=p
w.Parent=p
w.C1=CFrame.new(0,0.1,0)*CFrame.Angles(0,0,math.rad(-40))
script.Name="Not A QuickScript"
end
function hint(msg,de)
for _,v in pairs(player:children()) do
if v:IsA("Message") then
v:remove()
end
end
local h=Instance.new("Hint")
h.Text=tostring(msg)
h.Parent=player
Delay(tonumber(de),function() h:remove() end)
end
ta={}
for _,v in pairs(player.Backpack:GetChildren()) do
if v.Name=="Sand" then
table.insert(ta,v)
end
end
if #ta==2 or #ta>2 then
ta[1]:remove()
end
Hopper=Staff
function Stream(mouse)
local b=Instance.new("Part")
b.BrickColor=Color
b.Reflectance=0
b.Transparency=1
b.Size=Vector3.new(2,2,2)
b.Shape="Ball"
b.CanCollide=false
b.TopSurface="Smooth"
b.Position=char.Head.Position
b.BottomSurface="Smooth"
b.Friction=0
b.Touched:connect(function(h) Hit(h) end)
local bo=Instance.new("BodyVelocity")
bo.maxForce=Vector3.new(9999,9999,9999)
bo.velocity=(mouse.Hit.p-char.Head.Position).unit*60
bo.Parent=b
b.Parent=Gourd
local Bo=b
while Bo.Parent and Up==false do
wait()
if mouse.Target and (Bo.Position-mouse.Target.Position).magnitude<7 then
Hit(mouse.Target)
else
Bo.CFrame=b.CFrame --BodyPosition anti-hax
bo.velocity=(mouse.Hit.p-Bo.Position).unit*150
end
local b=Instance.new("Part")
b.BrickColor=Color
b.Reflectance=0
b.Transparency=0.2
b.Touched:connect(Hit)
b.Size=Vector3.new(2,2,2)
b.CanCollide=false
b.Anchored=true
b.TopSurface="Smooth"
b.Parent=Gourd
b.CFrame=Bo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
b.BottomSurface="Smooth"
Delay(0,function()
local p=b
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
end
pcall(function() Bo:remove() end)
end
function Def(mouse)
local b=Instance.new("Part")
b.BrickColor=Color
b.Reflectance=0
b.Transparency=0.6
b.Size=Vector3.new(15,15,15)
b.Anchored=false
b.Shape="Ball"
b.CanCollide=false
p=Instance.new("BodyPosition")
p.Parent=b
p.maxForce=Vector3.new(math.huge,math.huge,math.huge)
p.position=char.Torso.Position
b.TopSurface="Smooth"
b.Position=char.Torso.Position
b.BottomSurface="Smooth"
b.Touched:connect(function(h)
Hit(h)
end)
b.Parent=Gourd
while Up==false and b.Parent do
b.CFrame=char.Torso.CFrame
p.position=char.Torso.Position
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=Gourd
p.CFrame=char.Torso.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.5,0.5,0.5)
m.Parent=p
Delay(0,function()
local p=p
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
wait()
end
pcall(function() b:remove() end)
end
function Bur(mouse)
if mouse.Target and game.Players:getPlayerFromCharacter(mouse.Target.Parent) then 
local m=mouse.Target.Parent
m.Torso.Anchored=true
for i=1,15 do
local p=Instance.new("Part")
p.Size=Vector3.new(i,1,i)
p.BrickColor=Color
p.Anchored=true
p.Transparency=i/14
p.CanCollide=false
p.Parent=m
local me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(1,1.1,1)
me.Parent=p
p.CFrame=CFrame.new(m.Torso.CFrame.x,m.Torso.CFrame.y-3.5,m.Torso.CFrame.z) 
end
for i=1,10 do
for i=1,6 do
wait()
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=m
p.CFrame=m.Torso.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.25,0.25,0.25)
m.Parent=p
Delay(0,function()
local p=p
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
end
m.Torso.CFrame=CFrame.new(m.Torso.Position)*CFrame.new(0,-0.5,0)
wait()
end
Hit(m.Torso)
Hit(m.Head)
end
end
function Shift(mouse)
if mouse.Target then
local mo=Instance.new("Model",char)
local h=mouse.Hit.p
local m=char
for i=1,15 do
local p=Instance.new("Part")
p.Size=Vector3.new(i,1,i)
p.BrickColor=Color
p.Anchored=true
p.Transparency=i/14
p.CanCollide=false
p.Parent=mo
local me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(1,1.1,1)
me.Parent=p
p.CFrame=CFrame.new(m.Torso.CFrame.x,m.Torso.CFrame.y-3.5,m.Torso.CFrame.z) 
end
for i=1,15 do
local p=Instance.new("Part")
p.Size=Vector3.new(i,1,i)
p.BrickColor=Color
p.Anchored=true
p.Transparency=i/14
p.CanCollide=false
p.Parent=mo
local me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(1,1.1,1)
me.Parent=p
p.CFrame=CFrame.new(h)*CFrame.new(0,-0.5,0)
end
m.Torso.Anchored=true
for i=1,15 do
for i=1,6 do
wait()
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=mo
p.CFrame=m.Torso.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.25,0.25,0.25)
m.Parent=p
Delay(0,function()
local p=p
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
end
m.Torso.CFrame=m.Torso.CFrame*CFrame.new(0,-0.6,0)
wait()
end
m.Torso.CFrame=CFrame.new(h)*CFrame.new(0,-1.5,0)
for i=1,11 do
for i=1,6 do
wait()
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=mo
p.CFrame=m.Torso.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.25,0.25,0.25)
m.Parent=p
Delay(0,function()
local p=p
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
end
m.Torso.CFrame=m.Torso.CFrame*CFrame.new(0,0.5,0)
wait()
end
m.Torso.Anchored=false
mo:remove()
end
end

function Wave(mouse)
if mouse.Hit.p.x>char.Torso.Position.x then
Deg=-2
Fre=-60
else
Deg=2
Fre=60
end
local X=char.Torso.CFrame.x
for i=0,Fre,Deg do
wait()
local p=Instance.new("Part")
p.Parent=Gourd
p.Size=Vector3.new(2,1,workspace.Base.Size.z)
p.BrickColor=Color
p.Anchored=true
p.CFrame=CFrame.new(X,0,workspace.Base.Position.z)*CFrame.new(-i,0,0)
local m=Instance.new("BlockMesh")
m.Parent=p
m.Scale=Vector3.new(1,1.2,1.005)
Delay(0,function()
local p=p
local m=m
for i=1,9,0.25 do
m.Scale=m.Scale+Vector3.new(0,.25,0)
wait()
end
wait()
for i=1,9,0.25 do
m.Scale=m.Scale+Vector3.new(0,-.25,0)
wait()
end
p:remove()
end)
for _,v in pairs(game.Players:GetPlayers()) do
if v.Character and v.Character:findFirstChild("Head") then
if v.Character.Head.Position.y<(workspace.Base.Position.y+9.5) then
if v.Character.Torso.Position.x<p.Position.x+p.Size.x/2 and v.Character.Torso.Position.x>p.Position.x-p.Size.x/2 then
Hit(v.Character.Head)
end
end
end
end
end
end
function Spike(mouse)
local Pos=char.Torso.Position
for ii=8,25,3 do
wait()
for i=0,360,360/12 do 
local x = (ii) * math.sin(i) + Pos.x 
local y = Pos.y-4
local z = (ii)* math.cos (i) + Pos.z
local brick = Instance.new("Part") 
brick.Size=Vector3.new(1,1,1)
brick.Anchored=true
brick.BrickColor=Color
brick.Parent=Gourd
brick.CFrame = CFrame.new(x,y,z) 
brick.Touched:connect(Hit)
local mesh=Instance.new("CylinderMesh")
mesh.Parent=brick
Delay(0,function()
local p=brick
local m=mesh
for i=1,8 do
m.Scale=m.Scale+Vector3.new(0,.25,0)
p.CFrame=p.CFrame*CFrame.new(0,0.25,0)
wait()
end
for i=1,10 do
p.Transparency=i/10
wait(0.05)
end
p:remove()
end)
end
for _,v in pairs(game.Players:GetPlayers()) do
if v.Character and v.Character:findFirstChild("Torso") and (v.Character.Torso.Position-Pos).magnitude<ii then
Hit(v.Character.Torso)
end
end
wait(0.08)
end
end
function Coffin(mouse)
if mouse.Target and game.Players:getPlayerFromCharacter(mouse.Target.Parent) then
me=mouse.Target.Parent
Delay(0,function() 
while me:findFirstChild("Torso") do
wait()
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=me
p.CFrame=me.Torso.CFrame*CFrame.new(math.random(-8,8),math.random(-2,5),math.random(-8,8))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.35,0.35,0.35)
m.Parent=p
Delay(0,function()
local p=p
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
end
end)
BP=Instance.new("BodyPosition")
BP.maxForce=Vector3.new(math.huge,math.huge,math.huge)
BP.position=me.Torso.Position+Vector3.new(0,2,0)
BP.Parent=me.Torso
b=Instance.new("Part")
b.Size=Vector3.new(8,1,8)
b.BottomSurface="Smooth"
b.TopSurface="Smooth"
b.BrickColor=Color
b.CanCollide=false
m=Instance.new("BlockMesh")
m.Parent=b
m.Scale=Vector3.new(1,0.5,1)
b.Parent=me
b:BreakJoints()
w=Instance.new("Weld")
w.Parent=b
w.Part0=me.Torso
w.Part1=b
w.C0=CFrame.new(0,-3.5,0)
for i=1,7,0.25 do
wait(0.075)
m.Scale=m.Scale+Vector3.new(0,0.25,0)
w.C0=w.C0*CFrame.new(0,0.25/2,0)
BP.position=BP.position+Vector3.new(0,.75,0)
end
for i=1,2-(0.5/5),0.25/5 do
m.Scale=m.Scale+Vector3.new(-.25/8,0,-.25/8)
wait(0.05)
end
Hit(me.Head)
Hit(me.Torso)
end
end
function Cage(mouse)
if mouse.Target then
pos=mouse.Hit
for ii=0,360,360/6 do
wait()
for i=0,360/10 do
local p=Instance.new("Part")
p.CFrame=pos*CFrame.new(math.cos(i)*8,math.sin(i)*8*3/i,0)*CFrame.Angles(math.rad(360/ii),math.rad(360/ii),0)
p.Anchored=true
p.BrickColor=Color
p.Parent=Gourd
p.Size=Vector3.new(1,4,4)
Delay(5,function()
p:remove()
end)
end
end
end
end

wep={Stream,Def,Bur,Shift,Wave,Spike,Coffin,Cage}
name={"Sand Stream","Manual Defence","Sand Burial","Sand Shift","Sand Tsunami","Sand Spikes","Sand Coffin","Sand Cage"}
function CheckAdd()
if (Mode+1)~=(#wep+1) then
Mode=Mode+1
Hopper.Name=name[Mode].."("..Mode..")"
elseif (Mode+1)==(#wep+1) then
Mode=1
Hopper.Name=name[Mode].."("..Mode..")"
end
end
function CheckSub()
if (Mode-1)==0 or (Mode-1)<0 then
Mode=#wep
Hopper.Name=name[Mode].."("..Mode..")"
elseif (Mode-1)~=0 then
Mode=Mode-1
Hopper.Name=name[Mode].."("..Mode..")"
end
end
function KeyDown(key)
if key=="c" then
CheckAdd()
elseif key=="x" then
Mode=1
Hopper.Name=name[1].."("..Mode..")"
elseif key=="z" then
CheckSub()
end
end
Mode=0
Up=false
Sand=true
Hopper.Selected:connect(function(mouse)
Sand=true
Gourd=char.Gourd
mouse.KeyDown:connect(KeyDown)
mouse.Button1Down:connect(function()
Up=false
coroutine.resume(coroutine.create(function() wep[Mode](mouse) end))
end)
mouse.Button1Up:connect(function() Up=true  end)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
Kill=char.Humanoid.Died:connect(function()
wait()
if char:findFirstChild("Head") then
m=char.Head
elseif char:findFirstChild("Torso") then
m=char.Torso
else
return 
end
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.Transparency=1
p.CanCollide=false
p.Parent=char
local me=Instance.new("CylinderMesh")
me.Scale=Vector3.new(1,1.1,1)
me.Parent=p
p.CFrame=CFrame.new(m.CFrame.x,workspace.Base.CFrame.y,m.CFrame.z) 
for i=1,100 do
local me=me
local p=p
wait()
me.Scale=me.Scale+Vector3.new(.5,0,.5)
p.Transparency=i/200 --100?
end
for _,v in pairs(game.Players:GetPlayers()) do
if v.Character and v.Name~=Name and (v.Character.Torso.Position-p.Position).magnitude<51 then
pcall(function() Hit(v.Character.Head) end)
end
end
p:remove()
end)
while Sand do
wait(0.05)
local p=Instance.new("Part")
p.Size=Vector3.new(1,1,1)
p.BrickColor=Color
p.Anchored=true
p.CanCollide=false
p.Parent=char
p.CFrame=char.Torso.CFrame*CFrame.new(math.random(-7,7),math.random(-2,5),math.random(-7,7))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
p.Touched:connect(Hit)
local m=Instance.new("BlockMesh")
m.Scale=Vector3.new(0.15,0.15,0.15)
m.Parent=p
Delay(0,function()
local p=p
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
end
end)
Hopper.Deselected:connect(function()
pcall(function() 
Sand=false
Kill:disconnect() 
end)
end)
function Hit(p)
if p.Parent.Name~=Name and p.Parent.Parent.Name~=Name and p.Name~="Base" and p.Name~="Sand" and p.Parent then
Delay(0,function() 
p.Anchored=true
p.Name="Sand"
p.BrickColor=Color
for i=1,5 do
p.Transparency=i/5
wait(0.1)
end
p:remove()
end)
end
end


end}

 
 

module[1] = {"Ganexius",function()
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

Damagefunc2=function(hit,Damage,Knockback)
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~="Fenrier" and hit.Parent:FindFirstChild("Torso")~=nil then
                if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.1) 
        attackdebounce = false 
        end)) 
                Damage=Damage
                if Enemy==nil then
                Enemy=hit.Parent
                HP=Enemy.Humanoid.Health
                end
                coroutine.resume(coroutine.create(function() 
                wait(1)
                if attack==false and Enemy~=nil then
                Did=HP-Enemy.Humanoid.Health
                print("Did "..Did.." Damage")
                Enemy=nil
                HP=0
                end
                end))
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        if mana<400 then
                        mana=mana+math.random(10,20)
                        else
                        mana=400
                        end
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(0,99)+math.random()<=5 then
                        CRIT=true
                        Damage=Damage*2
                        critsound(2) 
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=it("BodyVelocity")
                vp.P=500
                vp.maxForce=vt(math.huge,0,math.huge)
--                vp.velocity=Head.CFrame.lookVector*Knockback
                vp.velocity=Head.CFrame.lookVector*Knockback
                vp.Parent=hit.Parent.Torso
--[[        if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end]]
                game:GetService("Debris"):AddItem(vp,.5)
--[[                r=it("BodyAngularVelocity")
                r.P=3000
                r.maxTorque=vt(500000000,50000000000,500000000)*50000
                r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                r.Parent=hit.Parent.Torso]]
                game:GetService("Debris"):AddItem(r,.5)
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
 
function MagicRing(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(x2,y2,z2)
prt.Size = Vector3.new(5,5,5)
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
			Handle.Transparency = 0			Handle.BottomSurface = "Smooth"
			Handle.FormFactor = "Custom" Handle.CanCollide = false
			Handle.BrickColor = BrickColor.new("Really black")
			Handle.Size = Vector3.new(2.31999993, 0.34799999, 0.200000003)
			    local Handleweld = Instance.new("ManualWeld")
   Handleweld.Part0 = char["Torso"]
   Handleweld.Part1 = Handle  Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Handleweld.C1 = CFrame.new(0.0648193359, -0.791286469, -0.906871796, 0.707106709, 0.70710665, -3.06183203e-008, -5.06046831e-008, 9.39054843e-008, 0.999991417, 0.707100689, -0.707100689, 1.02184011e-007)
    Handleweld.Parent = char["Torso"]
		
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("New Yeller")
			Part.Size = Vector3.new(0.34799999, 0.200000003, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.697142124, -0.240707397, 0.697052002, 0.707106292, -6.45096577e-007, -0.707100093, 7.29660428e-007, 0.999991119, -4.4702773e-008, 0.707106292, -4.72456946e-007, 0.707100153)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.898999929, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("White")
			Part.Size = Vector3.new(2.31999993, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(3.81469727e-006, -0.232005119, 1.97199249, 0.999999762, -2.87769808e-013, 5.96046448e-008, 5.25801624e-013, 0.999991417, 2.84217094e-014, 0, -1.17239551e-013, 0.999991238)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.579999983, 0.579999983)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(1.15999997, 0.200000003, 1.15999997)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.697060108, -0.237798691, 0.696979523, 0.707100153, -7.8854832e-008, -0.707074642, 6.79929997e-008, 0.999963224, -4.47018209e-008, 0.707100153, -2.54248249e-008, 0.707074702)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.696000099, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("White")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 2.0880003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-1.21799088, -0.231980324, 0.985839844, 0.999999762, 5.87768056e-010, 1.80602074e-005, -5.86997118e-010, 0.999974251, -6.33293951e-009, -1.80006027e-005, 6.33261976e-009, 0.99997437)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.579999983, 0.579999983, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("New Yeller")
			Part.Size = Vector3.new(0.200000003, 0.34799999, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000141143799, 1.8119812e-005, -1.21799469, 1.81794167e-005, -1.78968406e-007, -0.999964833, 6.0702348e-007, 0.999964714, -1.78957677e-007, 0.999999702, -6.06998185e-007, 1.82688236e-005)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.579999983, 1, 0.579999983)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("White")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 2.0880003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-1.21799469, 0.232003212, 0.985847473, 0.999999762, 5.66021896e-010, 1.80602074e-005, -5.65410829e-010, 0.999973297, -6.33274055e-009, -1.80006027e-005, 6.3324741e-009, 0.999973238)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.579999983, 0.579999983, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Mid gray")
			Part.Size = Vector3.new(2.31999969, 0.200000003, 1.8560003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(3.81469727e-006, -0.115989685, 0.985801697, 0.999999762, 6.05332673e-010, 1.80602074e-005, -6.04796213e-010, 0.999982834, -6.33284003e-009, -1.80006027e-005, 6.33262687e-009, 0.999982953)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
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
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.579999983, 0.200000003, 0.579999983)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.52587891e-005, 0.226189613, 0.985958099, 0.99999094, -4.17435785e-007, -8.94069672e-008, 4.17436127e-007, 0.999991119, 2.08614694e-007, -2.98023224e-008, -2.83119846e-007, 0.999982476)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.811999977, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.579999983, 0.200000003, 0.579999983)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.52587891e-005, -0.237810135, 0.985958099, 0.99999094, -4.17435785e-007, -8.94069672e-008, 4.17436127e-007, 0.999991119, 2.08614694e-007, -2.98023224e-008, -2.83119846e-007, 0.999982476)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.811999977, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(1.15999997, 0.200000003, 1.15999997)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.985813141, -0.237781525, 0, 1.80006027e-005, 1.57576963e-007, -0.999979973, 8.91885605e-008, 0.99998039, 2.61884452e-007, 0.999999166, -8.91910901e-008, 1.80602074e-005)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.69599998, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("New Yeller")
			Part.Size = Vector3.new(0.34799999, 0.200000003, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-5.7220459e-005, 0.223287582, 0.985862732, 0.999999285, -4.17447836e-007, 5.96046448e-008, 4.17451417e-007, 0.999991119, 2.08614694e-007, 8.94069672e-008, -8.94065408e-008, 0.999990642)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.898999929, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(1.15999997, 0.200000003, 1.15999997)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.985980988, 0.22618866, 0, -8.94069672e-008, 1.63911707e-007, -0.999990642, 8.97813663e-008, 0.999991119, 2.68218798e-007, 0.999999285, -8.97803574e-008, 5.96046448e-008)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.69599998, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Really black")
			Part.Size = Vector3.new(1.15999997, 0.200000003, 1.15999997)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.697110176, 0.226187706, 0.697032928, 0.707100391, -7.8857461e-008, -0.707094431, 6.79927936e-008, 0.999991119, -4.4702837e-008, 0.707100332, -2.54258214e-008, 0.707094312)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.696000099, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.579999983, 0.200000003, 0.579999983)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.697163582, 0.226187706, 0.697189331, 0.707100332, -7.88574468e-008, -0.707094491, 6.7967342e-008, 0.999991119, -4.47028512e-008, 0.707100451, 4.37624692e-009, 0.707094193)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.812000036, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("New Yeller")
			Part.Size = Vector3.new(0.34799999, 0.200000003, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-5.7220459e-005, -0.240706444, 0.985862732, 0.999999285, -4.17447836e-007, 5.96046448e-008, 4.17451417e-007, 0.999991119, 2.08614694e-007, 8.94069672e-008, -8.94065408e-008, 0.999990642)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.898999929, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("White")
			Part.Size = Vector3.new(2.31999993, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(3.81469727e-006, 0.23197937, -1.52587891e-005, 0.999999762, 2.23820962e-013, 5.96046448e-008, 7.10542736e-015, 0.999991417, -1.03028697e-013, 0, 1.0658141e-014, 0.999991238)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.579999983, 0.579999983)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Institutional white")
			Part.Size = Vector3.new(0.579999983, 0.200000003, 0.579999983)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.697163105, -0.237812042, 0.697189331, 0.707100332, -7.88574468e-008, -0.707094491, 6.7967342e-008, 0.999991119, -4.47028512e-008, 0.707100451, 4.37624692e-009, 0.707094193)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.812000036, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Navy blue")
			Part.Size = Vector3.new(2.31999993, 0.200000003, 1.85600007)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, 0.232005119, 0.985790253, 0.999999762, 6.06398487e-010, 1.80602074e-005, -6.05488992e-010, 0.999969959, -6.3331953e-009, -1.80006027e-005, 6.33281516e-009, 0.99996984)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
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
			Part.BrickColor = BrickColor.new("New Yeller")
			Part.Size = Vector3.new(0.34799999, 0.200000003, 0.34799999)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-0.697142363, 0.223291397, 0.697052002, 0.707106292, -6.45096577e-007, -0.707100093, 7.29660428e-007, 0.999991119, -4.4702773e-008, 0.707106292, -4.72456946e-007, 0.707100153)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.898999929, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Mid gray")
			Part.Size = Vector3.new(2.31999969, 0.200000003, 1.8560003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, 0.115994453, 0.985679626, 0.999999762, 6.06839023e-010, 1.80602074e-005, -6.06164008e-010, 0.999978542, -6.33337294e-009, -1.79708004e-005, 6.33308517e-009, 0.999978423)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
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
			Part.BrickColor = BrickColor.new("Mid gray")
			Part.Size = Vector3.new(2.31999969, 0.200000003, 1.8560003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0, -5.7220459e-006, 0.985614777, 0.999999762, 6.06938499e-010, 1.80602074e-005, -6.06267037e-010, 0.999978542, -6.33343333e-009, -1.79708004e-005, 6.33315622e-009, 0.999978423)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
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
			Part.BrickColor = BrickColor.new("Navy blue")
			Part.Size = Vector3.new(2.31999993, 0.200000003, 1.85600007)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-3.81469727e-006, -0.231994629, 0.98563385, 0.999999762, 5.88961768e-010, 1.80602074e-005, -5.88052274e-010, 0.999969959, -6.33351505e-009, -1.80006027e-005, 6.3331278e-009, 0.99996984)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
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
			Part.BrickColor = BrickColor.new("White")
			Part.Size = Vector3.new(2.31999993, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(-7.62939453e-006, -0.231983185, -0.000392913818, 0.999999762, 5.89174931e-010, 1.80602074e-005, -5.88627813e-010, 0.999982834, -6.33369623e-009, -1.79708004e-005, 6.33347597e-009, 0.999982774)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.579999983, 0.579999983)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("New Yeller")
			Part.Size = Vector3.new(0.200000003, 0.34799999, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(0.000408172607, 1.71661377e-005, 1.2179985, 1.81794167e-005, -1.78972357e-007, -0.999982238, 6.07028539e-007, 0.999982357, -1.78961514e-007, 0.999999702, -6.07014329e-007, 1.82688236e-005)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.579999983, 1, 0.579999983)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("White")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 2.0880003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.21799469, -0.231983185, 0.985591888, 0.999999762, 5.89174931e-010, 1.80602074e-005, -5.88627813e-010, 0.999982834, -6.33369623e-009, -1.79708004e-005, 6.33347597e-009, 0.999982774)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.579999983, 0.579999983, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("White")
			Part.Size = Vector3.new(0.200000003, 0.200000003, 2.0880003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(1.21799469, 0.232002258, 0.985588074, 0.999999762, 5.78641135e-010, 1.80602074e-005, -5.78168624e-010, 0.999980927, -6.33353991e-009, -1.79708004e-005, 6.33334807e-009, 0.999980807)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(0.579999983, 0.579999983, 1)
				
local Part  = Instance.new("Part", m)
			Part:BreakJoints()
			Part.TopSurface = "Smooth"
			Part.Material = "SmoothPlastic"
			Part.Name = 'Part'
			Part.Transparency = 0			Part.BottomSurface = "Smooth"
			Part.FormFactor = "Custom" Part.CanCollide = false
			Part.BrickColor = BrickColor.new("White")
			Part.Size = Vector3.new(2.31999993, 0.200000003, 0.200000003)
			    local Partweld = Instance.new("ManualWeld")
   Partweld.Part0 =  Handle   Partweld.Part1 = Part  Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Partweld.C1 = CFrame.new(3.81469727e-006, 0.231988907, 1.97200775, 0.999999762, 1.69357861e-011, 5.96046448e-008, -1.6701307e-011, 0.999991179, 2.27373675e-013, 2.98023224e-008, -3.23296945e-013, 0.99999094)
    Partweld.Parent = Part		
					local PartMesh = Instance.new("BlockMesh",Part)
				PartMesh.Name = "Mesh"
				PartMesh.Offset = Vector3.new(0, 0, 0)
				PartMesh.Scale = Vector3.new(1, 0.579999983, 0.579999983)
				
					local HandleMesh = Instance.new("BlockMesh",Handle)
				HandleMesh.Name = "Mesh"
				HandleMesh.Offset = Vector3.new(0, 0, 0)
				HandleMesh.Scale = Vector3.new(1, 1, 0.579999983)

function damage(hit,Damage,Knockback)
	if hit.Parent==nil then return end
	local CPlayer=bin 
	local h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil and hit.Parent.Name~=char.Name and hit.Parent:FindFirstChild("Torso")~=nil then
		if attackdebounce == false then 
			attackdebounce = true
			coroutine.resume(coroutine.create(function()
				wait(0.2)
				attackdebounce = false
			end)) 
			Damage=Damage
			local c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=game.Players.LocalPlayer
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
			Damage=Damage+math.random(0,10)
			h.Health=h.Health-Damage
			local vp=Instance.new("BodyVelocity")
			vp.P=500
			vp.maxForce=Vector3.new(math.huge,0,math.huge)
			vp.velocity=char.HumanoidRootPart.CFrame.lookVector*Knockback+char.HumanoidRootPart.Velocity/1.05
			if Knockback>0 then
				vp.Parent=hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp,.25)
			game:GetService("Debris"):AddItem(r,.5)
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=plr
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
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
                if v.className=="Part" and v.Name~="Torso" and v.Name~='tip' then
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

function magicring(brickcolor,cframe,x1,y1,z1,x3,y3,z3)
	local prt=part(3,workspace,0,0,brickcolor,"Effect",Vector3.new(0.5,0.5,0.5))
	prt.Anchored=true
	prt.CFrame=cframe
	prt.Touched:connect(function(hit) damage(hit, 10, 10) end)
	local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",Vector3.new(0,0,0),Vector3.new(x1,y1,z1))
	coroutine.resume(coroutine.create(function(Part,Mesh) 
		for i=0,1,0.03 do
			wait()
			Part.CFrame=Part.CFrame
			Part.Transparency=i
			Mesh.Scale=Mesh.Scale+Vector3.new(x3,y3,z3)
		end
		Part.Parent=nil
	end),prt,msh)
end

function MagicBlocka(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
	local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
	prt.Anchored=true
	prt.CFrame=cframe
	prt.Transparency=1
	prt.Size = Vector3.new(5,5,5)
	--msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
	game:GetService("Debris"):AddItem(prt,5)
	coroutine.resume(coroutine.create(function(Part,Mesh) 
		for i=0,1,delay do
			wait()
			Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
			Part.Transparency=1
			--Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
		end
		Part.Parent=nil
		return Part
	end),prt,msh)
	return prt
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
			attackone()
		elseif attacktype==3 then
			attack=true
			attacktype=1
			attackone()
		end
	end
end)

function attackone()
	attack=true
	for i=0,1,0.1 do
		swait()
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.1,0,-1.2),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,1.2),.3)
		RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(.5,1.8,1.5),.3)
		LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.5,-0.5,.8),.3)
		RH.C0=clerp(RH.C0,RHC0*euler(-.2,0,0),.3)
		LH.C0=clerp(LH.C0,LHC0*euler(-.2,0,0),.3)
	end
	so("http://roblox.com/asset/?id=228343249",Torso,1,1) 
			--con1=Torso.Touched:connect(function(hit) Damagefunc(hit,20,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
	for i = 1, 4 do
			magicring(BrickColor.new("New Yeller"),Torso.CFrame*CFrame.new(10,0,0)*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,0.1,1,1,0.05)
			magicring(BrickColor.new("Navy blue"),Torso.CFrame*CFrame.new(10,0,0)*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,0.1,1,1,0.05)
			--hiasd=MagicBlocka(BrickColor.new("Black"),Torso.CFrame*CFrame.new(10,0,0)*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,0.1,1,1,0.05)
			--dmgstart(5,hiasd)
	end
	hiasd=MagicBlocka(BrickColor.new("Black"),Torso.CFrame*CFrame.new(10,0,0)*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,0.1,1,1,0.05)
			dmgstart(5,hiasd)
	for i=0,1,0.1 do
		swait()
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.1,0,1),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1),.3)
		--RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.2,1.2,0)*euler(-1.5,0,0),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(.2,-.2,-1.4),.3)
	end
	dmgstop()
	attack=false
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
--Handleweld.C0=clerp(--Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
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
--Handleweld.C0=clerp(--Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-45)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(45)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-2),math.rad(-25),math.rad(15)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(2),math.rad(25),math.rad(-15)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
--Handleweld.C0=clerp(--Handleweld.C0,cf(0,0,0)*angles(math.rad(-15),math.rad(0),math.rad(0)),.3)
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
--Handleweld.C0=clerp(--Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)]]--
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.1,0,0),.2)
--RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-0.1,0,0.2),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-5),math.rad(-25),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(5),math.rad(25),math.rad(-20)),.3)
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
--Handleweld.C0=clerp(--Handleweld.C0,cf(0,-.5,-.7)*angles(math.rad(-75),math.rad(0),math.rad(0)),.3)
end
end
end
end
--156434034D
end}
module[2] = {"Gas Can",function()

 
lp = game.Players.LocalPlayer
pl = lp.Character
tol = Instance.new("HopperBin",lp.Backpack)
tol.Name = "Gas"
burn = {}
burning = {}
colr={"Neon orange","Black","White","Bright yellow","Bright red","Bright blue","Bright green","Really black","Royal purple","Magenta","Pink"}
col="Neon orange"
Part = function(x,y,z,color,tr,cc,an,parent)
	local p = Instance.new('Part',parent or Weapon)
	p.formFactor = 'Custom'
	p.Size = Vector3.new(x,y,z)
	p.BrickColor = BrickColor.new(color)
	p.CanCollide = cc
	p.Transparency = tr
	p.Anchored = an
	p.TopSurface,p.BottomSurface = 0,0
	return p 
end
 
fir = function(parent)
	local fi = Instance.new('Fire',parent or Weapon)
	fi.Name = "Fire"
	table.insert(burning,parent)
	game.Debris:AddItem(parent,2) 
	if parent.Name ~= "Match" then
	    fi.Color=parent.BrickColor.Color
		function touch(hit) 
		    if hit.Parent:findFirstChild("Humanoid") ~= nil then 
		        if hit.Parent.Name==pl.Name then return end
		    	hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health - 10 
		    end 
	    end
	    parent.Touched:connect(touch)	
    end
	return fi 
end
 
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
	p0.Position = p1.Position
	local w = Instance.new('Motor',par or p0)
	w.Part0 = p0
	w.Part1 = p1
	w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
	return w 
end
 
Mesh = function(par,num,x,y,z)
	local msh = _
	if num == 1 then 
		msh = Instance.new("CylinderMesh",par)
	elseif num == 2 then 
		msh = Instance.new("SpecialMesh",par) 
		msh.MeshType = 3
	elseif num == 3 then 
		msh = Instance.new("BlockMesh",par)
	elseif type(num) == 'string' then 
		msh = Instance.new("SpecialMesh",par) 
		msh.MeshId = num
	end 
	msh.Scale = Vector3.new(x,y,z)
	return msh 
end 
 
mo=Instance.new("Model",pl)
function throw() 
	hot=false
	for i = 1,10 do 
		wait() 
		fakel2.C0=fakel2.C0* CFrame.Angles(0, 0, math.rad(-i)) 
	end
	mtch = Part(.2,.1,.2,'Black',0,true,false,mo)
	mtch:BreakJoints()
	mtch.Name = "Match"
	mtch.CFrame=pl["Left Arm"].CFrame + Vector3.new(.5,0,0)
	fir(mtch) 
	game.Debris:AddItem(mtch,1)
	function touch(hit) 
		if hit.Name=="veryhotfire" and hit:FindFirstChild("Fire") == nil then 
			fir(hit)
		end 
	end
	mtch.Touched:connect(touch)
	fakel2.C0=crnt 
end
 
function pour()
	brek=false
	while wait() do
		if brek==true then break end
		liq = Part(2,.1,2,col,.9,false,true,workspace)
		m = Mesh(liq,1,1,1,1)
		liq.CFrame = CFrame.new(por.CFrame.x,por.CFrame.y,por.CFrame.z)-Vector3.new(0,.4,0)
		liq.Name = "veryhotfire"
	end 
end 
 
function depour() 
	brek=true 
end
num=0
function onKeyDown(key)
	key = key:lower()
	if key == "e" then 
		throw()
	elseif key == "q" then
		for i = 1,10 do 
			wait() 
			fakel2.C0=fakel2.C0* CFrame.Angles(0, 0, math.rad(-i)) 
		end
		box = Part(1,2,1,'Bright red',0,true,false,workspace)
		box.Material="CorrodedMetal"
		box:BreakJoints()
	    m=Mesh(box,1,1,1,1)
		box.Name = "Crate"
		box.CFrame=pl["Left Arm"].CFrame + Vector3.new(1,0,0)*CFrame.Angles(0,0,math.pi/2)
		fakel2.C0=crnt
	elseif key == "r" then
	    num=num+1
        col=colr[num]
        por.BrickColor=BrickColor.new(col)
        Spawn(function()
        tol.Name=col
        wait(1)
        tol.Name="Gas"
        end)
        if num==11 then num=0 end
	end 
end 
function onClicked(mouse)
	for i=1,10 do 
		wait()
		mwl.C1 = CFrame.new(0,-1.5,0)*CFrame.Angles(-i/10,-math.pi/2,math.pi/2)
	end
	por.Transparency=0.4
	pour()
end 
function deClicked(mouse)
	for i=1,10 do wait()
		mwl.C1 = CFrame.new(0,-1.5,0)*CFrame.Angles(-1+i/10,-math.pi/2,math.pi/2)
		por.Transparency=1
		depour() 
	end 
end
 
mpa= Part(1.25,1.5,.6,'Really red',0,false,false,mo)
mwl= Weld(mpa,pl.Torso,0,0,.8,0,0,0,mo)
pa= Part(.6,1.5,.6,'Really red',0,false,false,mo)
wl= Weld(pa,mpa,.61,0,0,0,0,0,mo)m=Mesh(pa,1,1,1,1)
pa= Part(.6,1.5,.6,'Really red',0,false,false,mo)
wl= Weld(pa,mpa,-.61,0,0,0,0,0,mo)m=Mesh(pa,1,1,1,1)
pa= Part(.3,.3,.3,'Dark stone grey',0,false,false,mo)
wl= Weld(pa,mpa,-.4,.75,0,0,0,0,mo)m=Mesh(pa,1,1,1,1)
pa= Part(.2,.3,.2,'',0,false,false,mo)
wl= Weld(pa,mpa,-.4,1,0,0,0,0,mo)m=Mesh(pa,1,1,1,1)
noz= Part(.2,.7,.2,'',0,false,false,mo)
wl= Weld(noz,mpa,-.625,1.335,0,0,0,math.pi/4,mo)m=Mesh(noz,1,1,1,1)
por = Part(.15,3,.15,col,1,false,false,mo)
wl= Weld(por,noz,-1.3,1.15,0,0,0,math.pi/3,mo)m=Mesh(por,1,1,1,1)
 
tol.Selected:connect(function(mouse)
	mouse.Button1Down:connect(function() onClicked(mouse) end)
	mouse.Button1Up:connect(function() deClicked(mouse) end)
	mouse.KeyDown:connect(onKeyDown)
 
	wlds=Instance.new("Model",pl)
	mwl.Part1 = pl["Right Arm"]
	mwl.C1 = CFrame.new(0,-1.5,0)*CFrame.Angles(0,-math.pi/2,math.pi/2)
	bas = Part(1,1,1,'',1,false,false,wlds)
	bas2 = Part(1,1,1,'',1,false,false,wlds)
	bas:BreakJoints()
	bas2:BreakJoints()
	fakel = Instance.new("Weld",wlds)
	fakel.Part0 = pl.Torso
	fakel.Part1 = bas
	fakel2 = Instance.new("Weld",wlds)
	fakel2.Part0 = pl.Torso
	fakel2.Part1 = bas2
	coroutine.wrap(function()
		for angle = 0, 45, 5 do
			fakel.C0 = CFrame.new(1.5, 0.5, .15) * CFrame.Angles(math.rad(angle*1.5), math.rad(angle/2), math.rad(-angle/3))
			wait() 
		end 
	end)()
	coroutine.wrap(function()
		for angle = 0, 45, 5 do
			fakel2.C0 = CFrame.new(-.75, 0.5, -0.3) * CFrame.Angles(math.rad(angle*2), math.rad(0), math.rad(angle*1.25))
			wait() 
		end 
		crnt=fakel2.C0 
	end)()
	welditbro = Instance.new("Weld", wlds)
	welditbro.C0 = CFrame.new(0, 0.5, 0)
	welditbro.Part0 = pl['Right Arm']
	welditbro.Part1 = bas
	welditbro2 = Instance.new("Weld", wlds)
	welditbro2.C0 = CFrame.new(0, 0.5, -0.3)
	welditbro2.Part0 = pl['Left Arm']
	welditbro2.Part1 = bas2
end)
 
tol.Deselected:connect(function(mouse)
	wlds:remove()
	mwl.Part1 = pl.Torso
	mwl.C1 = CFrame.new(0,0,.8)
end)
 
for _,check in pairs(workspace:GetChildren()) do
	if check.Name == "veryhotfire" or check.Name == "Crate" then
		table.insert(burn,check)
	end
end
 
workspace.ChildAdded:connect(function(check)
	wait(0)
	if check.Name == "veryhotfire" or check.Name == "Crate" then
		table.insert(burn,check)
	end
end)
 
while true do 
	wait()
	for _,b in pairs(burning) do
		if b.Parent ~= nil then
			spread = false
			for _,g in pairs(burn) do
				if g.Parent ~= nil and g:FindFirstChild("Fire") == nil then
					dist = (b.Position - g.Position).magnitude
					if dist <= 3 then
						spread = true
						fir(g)
						if g.Name == "Crate" then
							delay(0,function()
								wait(1)
								b = Instance.new("Explosion",workspace)
								b.Position = g.Position
								g:Destroy()
							end)
						end
					end
				else
					table.remove(burn,_)
				end
			end
		else
			table.remove(burning,_)
		end
		if spread == true then
			wait()
		end
	end
end
end}
module[3] = {"Gaster",function()
function clerp(c1,c2,al)
    local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
    local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
    for i,v in pairs(com1) do 
        com1[i] = v+(com2[i]-v)*al
    end
    return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

function weld(p0,p1,c0,c1,par)
local w = Instance.new("Weld", par)
w.Part0 = p0
w.Part1 = p1
w.C0 = c0 or CFrame.new()
w.C1 = c1 or CFrame.new()
return w
end

xmathrandom = math.random(-10,10)
ymathrandom = math.random(2,10)
zmathrandom = math.random(-10,10)


player = game:service("Players").LocalPlayer
char = player.Character
local beat = true
local beattime = 0.6
suit = Instance.new("Model", char)
suit.Name = "Gaster"
local vDebounce = false
Torso = char.Torso  
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
local SHOT_SPEED = 100
local SHOT_TIME = 1
local NOZZLE_OFFSET = Vector3.new(0, 0, 0)
mouse = player:GetMouse()

shieldparent1 = nil 
shieldparent2 = nil
shieldparent3 = nil
shieldparent4 = nil
shieldparent5 = nil
shieldparent6 = nil

switchvalue = 0
RandomGasterRotaion = 0
RandomPerseverance = 0

ShieldValueToGaster = false
ShieldValueToGasterDebounce = false

RW, LW = Instance.new("Weld"), Instance.new("Weld") 
 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"

 
RSH, LSH = nil, nil 

LS = Torso["Left Shoulder"] 
 
LH = Torso["Left Hip"] 
 
RS = Torso["Right Shoulder"] 
 
RH = Torso["Right Hip"] 
RSH = char.Torso["Right Shoulder"] 
 
LSH = char.Torso["Left Shoulder"] 



function startup()
    
RW.Part0 = char.Torso 
 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
 
RW.C1 = CFrame.new(0, 0.5, 0) 
 
RW.Part1 = char["Right Arm"] 
 
RW.Parent = char.Torso 



LW.Part0 = char.Torso 
 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
 
LW.C1 = CFrame.new(0, 0.5, 0) 
 
LW.Part1 = char["Left Arm"] 
 
LW.Parent = char.Torso 

for i = 1,5 do wait()
RW.C1= clerp(RW.C1*CFrame.new(-.1, -0, .1)*CFrame.fromEulerAnglesXYZ(math.rad(-30),math.rad(-8),0),RW.C0,0.1)   
LW.C1= clerp(LW.C1*CFrame.new(.1, -0, .1)*CFrame.fromEulerAnglesXYZ(math.rad(-30),math.rad(8),0),LW.C0,0.1) 
        

end 
coroutine.resume(coroutine.create(function()
wait(1)
for i = 1,20 do wait()
RW.C1= clerp(RW.C1*CFrame.new(-.15, -.05, 0.01)*CFrame.fromEulerAnglesXYZ(-math.rad(-.1),-math.rad(-.1),-math.rad(3)),RW.C0,0.1)    
LW.C1= clerp(LW.C1*CFrame.new(.15, -.05, 0.01)*CFrame.fromEulerAnglesXYZ(math.rad(.1),math.rad(.1),-math.rad(-3)),LW.C0,0.1)    
        

end 

for i = 1,20 do wait()
RW.C1= clerp(RW.C1*CFrame.new(-.12, .05, -0.1)*CFrame.fromEulerAnglesXYZ(-math.rad(-4),-math.rad(-4),-math.rad(-4)),RW.C0,0.1)  
LW.C1= clerp(LW.C1*CFrame.new(.12, .05, -0.1)*CFrame.fromEulerAnglesXYZ(math.rad(4),math.rad(-4),-math.rad(4)),LW.C0,0.1)   
        

end 


end))
end



local Sounds = {
        Gaster = Instance.new("Sound"),
        Gun = Instance.new("Sound"),
        Switch = Instance.new("Sound"),
        Explode = Instance.new("Sound"),
        GasterTheme = Instance.new("Sound")
}
 
Sounds["Gaster"].SoundId = "rbxassetid://345052019"
Sounds["Gaster"].Volume = 1
Sounds["Gun"].SoundId = "http://www.roblox.com/asset?id=406913243"
Sounds["Gun"].Volume = 1
Sounds["Switch"].SoundId = "http://www.roblox.com/asset?id=388205678"
Sounds["Switch"].Volume = 1
Sounds["Explode"].SoundId = "rbxasset://sounds/collide.wav"
Sounds["Explode"].Volume = .1
Sounds["GasterTheme"].SoundId = "rbxassetid://323177357"
Sounds["GasterTheme"].Volume = 99
 
function PlaySound(soundname, pitch, where, looped)
        Sounds[soundname].Parent = where
        Sounds[soundname].Pitch = pitch
        Sounds[soundname].Looped= looped
        Sounds[soundname]:Play()
        local oldsound = Sounds[soundname]
        coroutine.resume(coroutine.create(function()

                wait(4)
for i = 1,1 do
        if oldsound.Looped == true then return end
                oldsound:Destroy()
end
        end))
        Sounds[soundname] = Sounds[soundname]:clone()
end

firstuse = true
InUse = false

JusticeAttack = false
JusticeAttackDebounce = false

IntegrityAttack = false
IntegrityAttackDebounce = false

PerseveranceAttack = false
PerseveranceAttackDebounce = false

KindnessAttack = false
KindnessAttackDebounce = false

DeterminationAttack = false
DetermiantionAttackDebounce = false

PatienceAttack = false
PatienceAttackDebounce = false

BraveryAttack = false
BraveryAttackDebounce = false


hand1DeterminationhealthDown = false
hand2PerseverancehealthDown = false
hand3PatiencehealthDown = false
hand4IntegrityhealthDown = false
hand5BraveryhealthDown = false
hand6JusticehealthDown = false
hand7KindnesshealthDown = false

hand1Determination = Instance.new("Model", char)
hand1Determination.Name ="Red"
hand2Perseverance = Instance.new("Model", char)
hand2Perseverance.Name ="Purple"
hand3Patience = Instance.new("Model", char)
hand3Patience.Name = "Cyan"
hand4Integrity = Instance.new("Model", char)
hand4Integrity.Name = "Blue"
hand5Bravery = Instance.new("Model", char)
hand5Bravery.Name = "Orange"
hand6Justice = Instance.new("Model", char)
hand6Justice.Name = "Yellow"
hand7Kindness = Instance.new("Model", char)
hand7Kindness.Name = "Green"

function teleportPlayer(pos)
 
    if player == nil or player.Character == nil then return end

    char["Left Leg"].CFrame = CFrame.new(Vector3.new(pos.x, pos.y , pos.z))
coroutine.resume(coroutine.create(function()

TeleportPart = Instance.new("Part",workspace)

TeleportPart.FormFactor="Custom"

TeleportPart.Size=Vector3.new(0.8,0.8,0.8)

TeleportPart.TopSurface = 0

TeleportPart.BottomSurface = 0

local colorc = {"Black"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

TeleportPart.BrickColor = Fire

TeleportPart.CanCollide=false

TeleportPart.Anchored=true

TeleportPart.CFrame =(Torso.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

TeleportPartmesh = Instance.new("BlockMesh",TeleportPart)
    

game.Debris:AddItem(TeleportPart,1.5)

for i = 1,5 do wait()
Torso.Transparency = Torso.Transparency - 0.2
char["Left Arm"].Transparency = char["Left Arm"].Transparency - 0.2
char["Left Leg"].Transparency = char["Left Leg"].Transparency - 0.2
char["Right Arm"].Transparency = char["Right Arm"].Transparency - 0.2
char["Right Leg"].Transparency = char["Right Leg"].Transparency - 0.2
char.Head.Transparency = char.Head.Transparency - 0.2
Crack1.Transparency = Crack1.Transparency - 0.2
Crack2.Transparency = Crack2.Transparency - 0.2
mouth.Transparency = mouth.Transparency - 0.2
Eye1.Transparency = Eye1.Transparency - 0.2
Eye2.Transparency = Eye2.Transparency - 0.2
MEye1.Transparency = MEye1.Transparency - 0.2
MEye2.Transparency = MEye2.Transparency - 0.2
end


Torso.Transparency = 0
char["Left Arm"].Transparency = 0
char["Left Leg"].Transparency = 0
char["Right Arm"].Transparency = 0
char["Right Leg"].Transparency = 0
char.Head.Transparency = 0
Crack1.Transparency = 0
Crack2.Transparency = 0
mouth.Transparency = 0
Eye1.Transparency = 0
Eye2.Transparency = 0
MEye1.Transparency = 0
MEye2.Transparency = 0

end))

for i = 1,7 do
local parti = Instance.new("Part",Torso)
parti.Anchored = true
parti.TopSurface = 0
parti.BottomSurface = 0
parti.CanCollide = false
parti.Size = Vector3.new(math.random(1,1),math.random(1,1),math.random(1,1))
parti.CFrame = Torso.CFrame*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
parti.Transparency = 0
parti.BrickColor = BrickColor.new("Black")
game.Debris:AddItem(parti,1.5)







local pad = Vector3.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
game:service("RunService").Stepped:connect(function()
parti.Transparency = parti.Transparency + 0.05  
parti.CFrame = (parti.CFrame*CFrame.Angles(math.rad(20),math.rad(20),math.rad(20)))+pad
end)



end
for i = 1,10 do wait()
    
TeleportPartmesh.Scale=Vector3.new(2*i,2*i,2*i)
TeleportPart.CFrame = clerp(TeleportPart.CFrame*CFrame.Angles(math.rad(10),math.rad(10),math.rad(10)),TeleportPart.CFrame,0.1) 
TeleportPart.Transparency = TeleportPart.Transparency + 0.1 
end 
end

for _,v in pairs(char.Head:GetChildren()) do if v.ClassName=="Decal" then v:remove() end end
for _,v in pairs(char:GetChildren()) do if v.ClassName=="Hat" then v:remove() end end
for _,v in pairs(char:GetChildren()) do if v.ClassName=="Shirt" or v.ClassName=="Pants" or v.ClassName=="T-Shirt" or v.ClassName=="ShirtGraphic" or v.ClassName=="CharacterMesh" then v:remove() end end
shirt=Instance.new("Shirt", char)
pants=Instance.new("Pants", char)
char.Head.BrickColor = BrickColor.new("Institutional white")


shirt.ShirtTemplate="rbxassetid://535199088"
pants.PantsTemplate="rbxassetid://532840011"

--------Gaster's head



mouth = Instance.new("Part",suit)
mouth.Size = Vector3.new(0.2,.7,0.4)
mouth.Transparency = 0
mouth.BrickColor = BrickColor.new("Really black")
mouth.CanCollide = false
mouthMesh = Instance.new("SpecialMesh",mouth)
mouthMesh.MeshType = "Sphere"
mouthMesh.Scale = Vector3.new(2.5,0.1,0.8)

weld(char.Head,mouth,CFrame.new(0,0,0),CFrame.new(0, .3, 0.45)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


Crack2 = Instance.new("Part",suit)
Crack2.Size = Vector3.new(0.2,.7,0.4)
Crack2.Transparency = 0
Crack2.BrickColor = BrickColor.new("Really black")
Crack2.CanCollide = false
Crack2Mesh = Instance.new("SpecialMesh",Crack2)
Crack2Mesh.MeshType = "Sphere"
Crack2Mesh.Scale = Vector3.new(0.3,0.7,0.8)

weld(char.Head,Crack2,CFrame.new(0,0,0),CFrame.new(.2, .15, 0.45)*CFrame.fromEulerAnglesXYZ(0, 0, -.2),char)


Crack1 = Instance.new("Part",suit)
Crack1.Size = Vector3.new(0.2,.7,0.4)
Crack1.Transparency = 0
Crack1.BrickColor = BrickColor.new("Really black")
Crack1.CanCollide = false
Crack1Mesh = Instance.new("SpecialMesh",Crack1)
Crack1Mesh.MeshType = "Sphere"
Crack1Mesh.Scale = Vector3.new(0.3,0.7,0.65)

weld(char.Head,Crack1,CFrame.new(0,0,0),CFrame.new(-.2, -.3, 0.45)*CFrame.fromEulerAnglesXYZ(0, 0, .2),char)


Eye1 = Instance.new("Part",suit)
Eye1.Size = Vector3.new(0.4,0.4,0.4)
Eye1.Transparency = 0
Eye1.BrickColor = BrickColor.new("Really black")
Eye1.CanCollide = false
Eye1Mesh = Instance.new("SpecialMesh",Eye1)
Eye1Mesh.MeshType = "Sphere"
Eye1Mesh.Scale = Vector3.new(1,1,0.6)

weld(char.Head,Eye1,CFrame.new(0,0,0),CFrame.new(-.2, -.1, 0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


Eye2 = Instance.new("Part",suit)
Eye2.Size = Vector3.new(0.4,0.4,0.4)
Eye2.Transparency = 0
Eye2.CanCollide = false
Eye2.BrickColor = BrickColor.new("Really black")
Eye2Mesh = Instance.new("SpecialMesh",Eye2)
Eye2Mesh.MeshType = "Sphere"
Eye2Mesh.Scale = Vector3.new(1,1,0.6)

weld(char.Head,Eye2,CFrame.new(0,0,0),CFrame.new(.2, -.1, 0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

MEye1 = Instance.new("Part",suit)
MEye1.Size = Vector3.new(0.3,0.3,0.3)
MEye1.Transparency = 0
MEye1.Material= "Neon"
MEye1.BrickColor = BrickColor.new("Institutional white")
MEye1.CanCollide = false
MEye1Mesh = Instance.new("SpecialMesh",MEye1)
MEye1Mesh.MeshType = "Sphere"
MEye1Mesh.Scale = Vector3.new(.2,.5,.2)

weld(Eye1,MEye1,CFrame.new(0,0,0),CFrame.new(-.02,0,0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

MEye2 = Instance.new("Part",suit)
MEye2.Size = Vector3.new(0.3,0.3,0.3)
MEye2.Transparency = 0
MEye2.Material= "Neon"
MEye2.BrickColor = BrickColor.new("Institutional white")
MEye2.CanCollide = false
MEye2Mesh = Instance.new("SpecialMesh",MEye2)
MEye2Mesh.MeshType = "Sphere"
MEye2Mesh.Scale = Vector3.new(.2,.5,.2)

weld(Eye2,MEye2,CFrame.new(0,0,0),CFrame.new(.02,0,0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


--------Gaster's hand

startup()

hand1DeterminationPosition = Instance.new("Part",suit)
hand1DeterminationPosition.Size = Vector3.new(1,1,1)
hand1DeterminationPosition.Transparency = 1
hand1DeterminationPosition.CanCollide = false

weld(Torso,hand1DeterminationPosition,CFrame.new(0,0,0),CFrame.new(-2, -5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

hand2PerseverancePosition = Instance.new("Part",suit)
hand2PerseverancePosition.Size = Vector3.new(1,1,1)
hand2PerseverancePosition.Transparency = 1
hand2PerseverancePosition.CanCollide = false

weld(Torso,hand2PerseverancePosition,CFrame.new(0,0,0),CFrame.new(2, -5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

hand3PatiencePosition = Instance.new("Part",suit)
hand3PatiencePosition.Size = Vector3.new(1,1,1)
hand3PatiencePosition.Transparency = 1
hand3PatiencePosition.CanCollide = false

weld(Torso,hand3PatiencePosition,CFrame.new(0,0,0),CFrame.new(-4, -5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

hand4IntegrityPosition = Instance.new("Part",suit)
hand4IntegrityPosition.Size = Vector3.new(1,1,1)
hand4IntegrityPosition.Transparency = 1
hand4IntegrityPosition.CanCollide = false

weld(Torso,hand4IntegrityPosition,CFrame.new(0,0,0),CFrame.new(4, -5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

hand5BraveryPosition = Instance.new("Part",suit)
hand5BraveryPosition.Size = Vector3.new(1,1,1)
hand5BraveryPosition.Transparency = 1
hand5BraveryPosition.CanCollide = false

weld(Torso,hand5BraveryPosition,CFrame.new(0,0,0),CFrame.new(-6, -7, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

hand6JusticePosition = Instance.new("Part",suit)
hand6JusticePosition.Size = Vector3.new(1,1,1)
hand6JusticePosition.Transparency = 1
hand6JusticePosition.CanCollide = false

weld(Torso,hand6JusticePosition,CFrame.new(0,0,0),CFrame.new(6, -7, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

hand7KindnessPosition = Instance.new("Part",suit)
hand7KindnessPosition.Size = Vector3.new(1,1,1)
hand7KindnessPosition.Transparency = 1
hand7KindnessPosition.CanCollide = false

weld(Torso,hand7KindnessPosition,CFrame.new(0,0,0),CFrame.new(0, -7, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


AttackPosition = Instance.new("Part",suit)
AttackPosition.Size = Vector3.new(1,1,1)
AttackPosition.Transparency = 1
AttackPosition.CanCollide = false

weld(Torso,AttackPosition,CFrame.new(0,0,0),CFrame.new(0, 0, 4)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)



--------Gaster's Health of hands and hands

hand1Determinationhealth = Instance.new("Humanoid",hand1Determination)
hand1Determinationhealth.DisplayDistanceType = "None"
hand1Determinationhealth.Health = 100
hand1Determinationhealth.MaxHealth = 100

Determination = Instance.new("Part",hand1Determination)
Determination.Size = Vector3.new(1,1.5,0.2)
Determination.Name = "Head"
Determination.Position = hand1DeterminationPosition.Position
DeterminationMesh = Instance.new("SpecialMesh",Determination)
DeterminationMesh.MeshId = "rbxassetid://430045961"
DeterminationMesh.Offset = Vector3.new(0.09,0.1,0)
Determination.BrickColor = BrickColor.new("Institutional white")

DeterminationOrb = Instance.new("Part",Determination)
DeterminationOrb.Size = Vector3.new(0.3,0.3,0.2)
DeterminationOrb.BrickColor = BrickColor.new("Really red")
weld(Determination,DeterminationOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand1DeterminationPosition,Determination,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Really red"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Determination.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Determination.CFrame*CFrame.new(0,0,0))
end 
p:remove()



--2--


hand2Perseverancehealth = Instance.new("Humanoid",hand2Perseverance)
hand2Perseverancehealth.DisplayDistanceType = "None"
hand2Perseverancehealth.Health = 100
hand2Perseverancehealth.MaxHealth = 100

Perseverance = Instance.new("Part",hand2Perseverance)
Perseverance.Size = Vector3.new(1,1.5,0.2)
Perseverance.Name = "Head"
Perseverance.Position = hand2PerseverancePosition.Position
PerseveranceMesh = Instance.new("SpecialMesh",Perseverance)
PerseveranceMesh.MeshId = "rbxassetid://430045961"
PerseveranceMesh.Offset = Vector3.new(0.09,0.1,0)
Perseverance.BrickColor = BrickColor.new("Institutional white")

PerseveranceOrb = Instance.new("Part",Perseverance)
PerseveranceOrb.Size = Vector3.new(0.3,0.3,0.2)
PerseveranceOrb.BrickColor = BrickColor.new("Magenta")
weld(Perseverance,PerseveranceOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand2PerseverancePosition,Perseverance,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Magenta"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Perseverance.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Perseverance.CFrame*CFrame.new(0,0,0))
end 
p:remove()

--3--

hand3Patiencehealth = Instance.new("Humanoid",hand3Patience)
hand3Patiencehealth.DisplayDistanceType = "None"
hand3Patiencehealth.Health = 100
hand3Patiencehealth.MaxHealth = 100

Patience = Instance.new("Part",hand3Patience)
Patience.Size = Vector3.new(1,1.5,0.2)
Patience.Name = "Head"
PatienceMesh = Instance.new("SpecialMesh",Patience)
PatienceMesh.MeshId = "rbxassetid://430045961"
PatienceMesh.Offset = Vector3.new(0.09,0.1,0)
Patience.BrickColor = BrickColor.new("Institutional white")


PatienceOrb = Instance.new("Part",Patience)
PatienceOrb.Size = Vector3.new(0.3,0.3,0.2)
PatienceOrb.BrickColor = BrickColor.new("Cyan")
weld(Patience,PatienceOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand3PatiencePosition,Patience,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Cyan"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Patience.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Patience.CFrame*CFrame.new(0,0,0))
end 
p:remove()

--4--

hand4Integrityhealth = Instance.new("Humanoid",hand4Integrity)
hand4Integrityhealth.DisplayDistanceType = "None"
hand4Integrityhealth.Health = 100
hand4Integrityhealth.MaxHealth = 100

Integrity = Instance.new("Part",hand4Integrity)
Integrity.Size = Vector3.new(1,1.5,0.2)
Integrity.Name = "Head"
Integrity.Position = hand1DeterminationPosition.Position
IntegrityMesh = Instance.new("SpecialMesh",Integrity)
IntegrityMesh.MeshId = "rbxassetid://430045961"
IntegrityMesh.Offset = Vector3.new(0.09,0.1,0)
Integrity.BrickColor = BrickColor.new("Institutional white")


IntegrityOrb = Instance.new("Part",Integrity)
IntegrityOrb.Size = Vector3.new(0.3,0.3,0.2)
IntegrityOrb.BrickColor = BrickColor.new("Deep blue")
weld(Integrity,IntegrityOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand4IntegrityPosition,Integrity,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Deep blue"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Integrity.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Integrity.CFrame*CFrame.new(0,0,0))
end 
p:remove()

--5--


hand5Braveryhealth = Instance.new("Humanoid",hand5Bravery)
hand5Braveryhealth.DisplayDistanceType = "None"
hand5Braveryhealth.Health = 100
hand5Braveryhealth.MaxHealth = 100


Bravery = Instance.new("Part",hand5Bravery)
Bravery .Size = Vector3.new(1,1.5,0.2)
Bravery .Name = "Head"
Bravery.Position = hand1DeterminationPosition.Position
BraveryMesh = Instance.new("SpecialMesh",Bravery)
BraveryMesh.MeshId = "rbxassetid://430045961"
BraveryMesh.Offset = Vector3.new(0.09,0.1,0)
Bravery.BrickColor = BrickColor.new("Institutional white")

BraveryOrb = Instance.new("Part",Bravery)
BraveryOrb.Size = Vector3.new(0.3,0.3,0.2)
BraveryOrb.BrickColor = BrickColor.new("Deep orange")
weld(Bravery,BraveryOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand5BraveryPosition,Bravery,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)



local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Deep orange"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Bravery.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Bravery.CFrame*CFrame.new(0,0,0))
end 
p:remove()
--6--

hand6Justicehealth = Instance.new("Humanoid",hand6Justice)
hand6Justicehealth.DisplayDistanceType = "None"
hand6Justicehealth.Health = 100
hand6Justicehealth.MaxHealth = 100

Justice = Instance.new("Part",hand6Justice)
Justice .Size = Vector3.new(1,1.5,0.2)
Justice.Name = "Head"
Justice.Position = hand1DeterminationPosition.Position
JusticeMesh = Instance.new("SpecialMesh",Justice)
JusticeMesh.MeshId = "rbxassetid://430045961"
JusticeMesh.Offset = Vector3.new(0.09,0.1,0)
Justice.BrickColor = BrickColor.new("Institutional white")

JusticeOrb = Instance.new("Part",Justice)
JusticeOrb.Size = Vector3.new(0.3,0.3,0.2)
JusticeOrb.BrickColor = BrickColor.new("New Yeller")
weld(Justice,JusticeOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand6JusticePosition,Justice,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)



local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"New Yeller"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Justice.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Justice.CFrame*CFrame.new(0,0,0))
end 
p:remove()
--7--

hand7Kindnesshealth = Instance.new("Humanoid",hand7Kindness)
hand7Kindnesshealth.DisplayDistanceType = "None"
hand7Kindnesshealth.Health = 100
hand7Kindnesshealth.MaxHealth = 100

Kindness = Instance.new("Part",hand7Kindness)
Kindness .Size = Vector3.new(1,1.5,0.2)
Kindness.Name = "Head"
Kindness.Position = hand1DeterminationPosition.Position
KindnessMesh = Instance.new("SpecialMesh",Kindness)
KindnessMesh.MeshId = "rbxassetid://430045961"
KindnessMesh.Offset = Vector3.new(0.09,0.1,0)
Kindness.BrickColor = BrickColor.new("Institutional white")

KindnessOrb = Instance.new("Part",Kindness)
KindnessOrb.Size = Vector3.new(0.3,0.3,0.2)
KindnessOrb.BrickColor = BrickColor.new("Lime green")
weld(Kindness,KindnessOrb,CFrame.new(0,0,0),CFrame.new(0, 0.2, 0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)


weld(hand7KindnessPosition,Kindness,CFrame.new(0,0,0),CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char)
local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Lime green"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Kindness.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Kindness.CFrame*CFrame.new(0,0,0))
end 
p:remove()

PlaySound("GasterTheme", 1, char.Torso, true)

---functions and attacks

function BravAttack()
if hand5BraveryhealthDown ==  true then return end
if switchvalue == 7 then    

BraveryAttack = true    
    
WeldBravery = Instance.new("Weld",Bravery)
WeldBravery.Part0 = AttackPosition
WeldBravery.Part1 = Bravery
WeldBravery.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Deep orange"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Bravery.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

coroutine.resume(coroutine.create(function()    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Bravery.CFrame*CFrame.new(0,0,0))
end 
p:remove()
end))


    
end

end



function BravRest()
if hand5BraveryhealthDown ==  true then return end  
if switchvalue == 6 then

if BraveryAttack == true then
WeldBravery:remove()    


local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Deep orange"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Bravery.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Bravery.CFrame*CFrame.new(0,0,0))
end 
p:remove()
end))
    
BraveryAttack = false   

    
end
end
end

function PatAttack()
if hand3PatiencehealthDown ==  true then return end
if switchvalue == 6 then    

PatienceAttack = true   
    
WeldPatience = Instance.new("Weld",Patience)
WeldPatience.Part0 = AttackPosition
WeldPatience.Part1 = Patience
WeldPatience.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Cyan"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Patience.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

coroutine.resume(coroutine.create(function()    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Patience.CFrame*CFrame.new(0,0,0))
end 
p:remove()
end))


    
end

end



function PatRest()
if hand3PatiencehealthDown ==  true then return end 
if switchvalue == 7 or switchvalue == 5 then

if PatienceAttack == true then
WeldPatience:remove()   


local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Cyan"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Patience.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Patience.CFrame*CFrame.new(0,0,0))
end 
p:remove()
end))
    
PatienceAttack = false  

    
end
end
end


function DetAttack()
if hand1DeterminationhealthDown ==  true then return end
if switchvalue == 5 then    

DeterminationAttack = true  
    
WeldDet = Instance.new("Weld",Determination)
WeldDet.Part0 = AttackPosition
WeldDet.Part1 = Determination
WeldDet.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Really red"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Determination.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

coroutine.resume(coroutine.create(function()    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Determination.CFrame*CFrame.new(0,0,0))
end 
p:remove()
end))


    
end

end



function DetRest()
if hand1DeterminationhealthDown ==  true then return end    
if switchvalue == 6 or switchvalue == 4 then

if DeterminationAttack == true then
WeldDet:remove()    


local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Really red"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Determination.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Determination.CFrame*CFrame.new(0,0,0))
end 
p:remove()
end))
    
DeterminationAttack = false 

    
end
end
end



function KinAttack()
if hand7KindnesshealthDown ==  true then return end
if switchvalue == 4 then    

KindAttack = true   
    
WeldKind = Instance.new("Weld",Kindness)
WeldKind.Part0 = AttackPosition
WeldKind.Part1 = Kindness
WeldKind.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Lime green"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Kindness.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

coroutine.resume(coroutine.create(function()    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Kindness.CFrame*CFrame.new(0,0,0))
end 
p:remove()
end))


    
end

end



function KinRest()
if hand7KindnesshealthDown ==  true then return end 
if switchvalue == 5 or switchvalue == 3 then

if KindAttack == true then
WeldKind:remove()   


local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Lime green"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Kindness.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Kindness.CFrame*CFrame.new(0,0,0))
end 
p:remove()
end))
    
KindAttack = false  

    
end
end
end




function PerAttack()
if hand2PerseverancehealthDown ==  true then return end
if switchvalue == 3 then    

PerseveranceAttack = true   
    
WeldPer = Instance.new("Weld",Perseverance)
WeldPer.Part0 = AttackPosition
WeldPer.Part1 = Perseverance
WeldPer.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Magenta"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Perseverance.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

coroutine.resume(coroutine.create(function()    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Perseverance.CFrame*CFrame.new(0,0,0))
end 
p:remove()
end))


    
end

end



function PerRest()
if hand2PerseverancehealthDown ==  true then return end 
if switchvalue == 4 or switchvalue == 2 then

if PerseveranceAttack == true then
WeldPer:remove()    


local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Magenta"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Perseverance.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Perseverance.CFrame*CFrame.new(0,0,0))
end 
p:remove()
end))
    
PerseveranceAttack = false  

    
end
end
end
 

function IntAttack()
if hand4IntegrityhealthDown ==  true then return end
if switchvalue == 2 then    

IntegrityAttack = true  
    
WeldInt = Instance.new("Weld",Integrity)
WeldInt.Part0 = AttackPosition
WeldInt.Part1 = Integrity
WeldInt.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Dark blue"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Integrity.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

coroutine.resume(coroutine.create(function()    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Integrity.CFrame*CFrame.new(0,0,0))
end 
p:remove()
end))


    
end

end



function IntRest()
if hand4IntegrityhealthDown ==  true then return end    
if switchvalue == 3 or switchvalue == 1 then

if IntegrityAttack == true then
WeldInt:remove()    


local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Dark blue"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Integrity.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Integrity.CFrame*CFrame.new(0,0,0))
end 
p:remove()
end))
    
IntegrityAttack = false 

    
end
end
end




function JusAttack()

if switchvalue == 1 then    
if hand6JusticehealthDown ==  true then return end
JusticeAttack = true    
    
Weldjus = Instance.new("Weld",Justice)
Weldjus.Part0 = AttackPosition
Weldjus.Part1 = Justice
Weldjus.C1 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"New Yeller"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Justice.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

coroutine.resume(coroutine.create(function()    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Justice.CFrame*CFrame.new(0,0,0))
end 
p:remove()
end))


    
end

end




function JusRest()
if hand6JusticehealthDown ==  true then return end  
if switchvalue == 2 then

if JusticeAttack == true then
Weldjus:remove()    


local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"New Yeller"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Justice.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Justice.CFrame*CFrame.new(0,0,0))
end 
p:remove()
end))
    
JusticeAttack = false   

    
end
end
end












--Key Presses

mouse.Button1Up:connect(function() 
    
InUse = false   
    
    
end)

mouse.Button1Down:connect(function() 
    
InUse = true    
    
    
end)

 mouse.KeyDown:connect(function(key)

if key =="r" then
if  hand7KindnesshealthDown == true then return end 
if  ShieldValueToGasterDebounce == true then return end

if ShieldValueToGaster == false then 
ShieldValueToGaster = true
if ShieldValueToGasterDebounce == false then
ShieldValueToGasterDebounce = true
    

local ShieldOfGaster6= Instance.new("Part",hand7Kindness)
ShieldOfGaster6.TopSurface = "Smooth"
ShieldOfGaster6.BottomSurface = "Smooth"
ShieldOfGaster6.Size = Vector3.new(18, 3, 18)
ShieldOfGaster6.CanCollide = true
ShieldOfGaster6.Anchored =true
ShieldOfGaster6.BrickColor = BrickColor.new("Lime green")
ShieldOfGaster6 .FormFactor = "Custom"
ShieldOfGaster6.Transparency = 0.7
ShieldOfGaster6.CFrame= Torso.CFrame*CFrame.new(0,10,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
shieldparent6 = ShieldOfGaster6

local ShieldOfGaster5= Instance.new("Part",hand7Kindness)
ShieldOfGaster5.TopSurface = "Smooth"
ShieldOfGaster5.BottomSurface = "Smooth"
ShieldOfGaster5.Size = Vector3.new(18, 3, 18)
ShieldOfGaster5.CanCollide = true
ShieldOfGaster5.Anchored =true
ShieldOfGaster5.BrickColor = BrickColor.new("Lime green")
ShieldOfGaster5 .FormFactor = "Custom"
ShieldOfGaster5.Transparency = 0.7
ShieldOfGaster5.CFrame= Torso.CFrame*CFrame.new(0,-10,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
shieldparent5 = ShieldOfGaster5

local ShieldOfGaster4= Instance.new("Part",hand7Kindness)
ShieldOfGaster4.TopSurface = "Smooth"
ShieldOfGaster4.BottomSurface = "Smooth"
ShieldOfGaster4.Size = Vector3.new(3, 18, 18)
ShieldOfGaster4.CanCollide = true
ShieldOfGaster4.Anchored =true
ShieldOfGaster4.BrickColor = BrickColor.new("Lime green")
ShieldOfGaster4 .FormFactor = "Custom"
ShieldOfGaster4.Transparency = 0.7
ShieldOfGaster4.CFrame= Torso.CFrame*CFrame.new(-10,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
shieldparent4 = ShieldOfGaster4

local ShieldOfGaster3= Instance.new("Part",hand7Kindness)
ShieldOfGaster3.TopSurface = "Smooth"
ShieldOfGaster3.BottomSurface = "Smooth"
ShieldOfGaster3.Size = Vector3.new(3, 18, 18)
ShieldOfGaster3.CanCollide = true
ShieldOfGaster3.Anchored =true
ShieldOfGaster3.BrickColor = BrickColor.new("Lime green")
ShieldOfGaster3 .FormFactor = "Custom"
ShieldOfGaster3.Transparency = 0.7
ShieldOfGaster3.CFrame= Torso.CFrame*CFrame.new(10,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
shieldparent3 = ShieldOfGaster3

local ShieldOfGaster2= Instance.new("Part",hand7Kindness)
ShieldOfGaster2.TopSurface = "Smooth"
ShieldOfGaster2.BottomSurface = "Smooth"
ShieldOfGaster2.Size = Vector3.new(18, 18, 3)
ShieldOfGaster2.CanCollide = true
ShieldOfGaster2.Anchored =true
ShieldOfGaster2.BrickColor = BrickColor.new("Lime green")
ShieldOfGaster2 .FormFactor = "Custom"
ShieldOfGaster2.Transparency = 0.7
ShieldOfGaster2.CFrame= Torso.CFrame*CFrame.new(0,0,-10)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
shieldparent2 = ShieldOfGaster2

local ShieldOfGaster1= Instance.new("Part",hand7Kindness)
ShieldOfGaster1.TopSurface = "Smooth"
ShieldOfGaster1.BottomSurface = "Smooth"
ShieldOfGaster1.Size = Vector3.new(18, 18, 3)
ShieldOfGaster1.CanCollide = true
ShieldOfGaster1.Anchored =true
ShieldOfGaster1.BrickColor = BrickColor.new("Lime green")
ShieldOfGaster1 .FormFactor = "Custom"
ShieldOfGaster1.Transparency = 0.7
ShieldOfGaster1.CFrame= Torso.CFrame*CFrame.new(0,0,10)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
shieldparent1 = ShieldOfGaster1
     
for i = 1,7 do
local parti = Instance.new("Part",Torso)
parti.Anchored = true
parti.TopSurface = 0
parti.BottomSurface = 0
parti.CanCollide = false
parti.Size = Vector3.new(math.random(1,1),math.random(1,1),math.random(1,1))
parti.CFrame = Torso.CFrame*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
parti.Transparency = 0
parti.BrickColor = BrickColor.new("Lime green")
game.Debris:AddItem(parti,1.5)







local pad = Vector3.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
game:service("RunService").Stepped:connect(function()
parti.Transparency = parti.Transparency + 0.05  
parti.CFrame = (parti.CFrame*CFrame.Angles(math.rad(20),math.rad(20),math.rad(20)))+pad
end)
end

ShieldValueToGasterDebounce = false
ShieldValueToGaster = true
end


elseif ShieldValueToGaster == true then 
ShieldValueToGaster = false
if ShieldValueToGasterDebounce == false then
ShieldValueToGasterDebounce = true

    
for i = 1,3 do wait()   
shieldparent6.Transparency =shieldparent6.Transparency + 0.1
shieldparent5.Transparency =shieldparent5.Transparency + 0.1
shieldparent4.Transparency =shieldparent4.Transparency + 0.1
shieldparent3.Transparency =shieldparent3.Transparency + 0.1
shieldparent2.Transparency =shieldparent2.Transparency + 0.1
shieldparent1.Transparency =shieldparent1.Transparency + 0.1
end
shieldparent6:remove()
shieldparent5:remove()
shieldparent4:remove()
shieldparent3:remove()
shieldparent2:remove()
shieldparent1:remove()

shieldparent1=nil
shieldparent2=nil
shieldparent3=nil
shieldparent4=nil
shieldparent5=nil
shieldparent6=nil


ShieldValueToGasterDebounce = false
ShieldValueToGaster = false     
end
end 
    
    
end

    
if key =="x" then
if (not vDebounce) then
    vDebounce = true    
for i = 1,5 do wait()
Torso.Transparency = Torso.Transparency + 0.2
char["Left Arm"].Transparency = char["Left Arm"].Transparency + 0.2
char["Left Leg"].Transparency = char["Left Leg"].Transparency + 0.2
char["Right Arm"].Transparency = char["Right Arm"].Transparency + 0.2
char["Right Leg"].Transparency = char["Right Leg"].Transparency + 0.2
char.Head.Transparency = char.Head.Transparency + 0.2
Crack1.Transparency = Crack1.Transparency + 0.2
Crack2.Transparency = Crack2.Transparency + 0.2
mouth.Transparency = mouth.Transparency + 0.2
Eye1.Transparency = Eye1.Transparency + 0.2
Eye2.Transparency = Eye2.Transparency + 0.2
MEye1.Transparency = MEye1.Transparency + 0.2
MEye2.Transparency = MEye2.Transparency + 0.2
end
    
teleportPlayer(mouse.hit.p) 
char.Humanoid.PlatformStand = false
vDebounce = false
end 
end 
    


if key == "q" then
    
if switchvalue == 1 then return end 
    
switchvalue = switchvalue - 1

print (switchvalue)

JusAttack()
JusRest()
IntAttack()
IntRest()
PerAttack()
PerRest()
KinAttack()
KinRest()
DetAttack()
DetRest()
PatAttack()
PatRest()
BravAttack()
BravRest()          
end 
        
if key == "e" then
    
if switchvalue == 7 then return end 
    
switchvalue = switchvalue + 1

print (switchvalue)

JusAttack()
JusRest()
IntAttack() 
IntRest()
PerAttack()
PerRest()
KinAttack()
KinRest()
DetAttack()
DetRest()
PatAttack()
PatRest()
BravAttack()
BravRest()          
end 


    
end)









---runservices








game:service("RunService").Stepped:connect(function() wait(.5)


if hand1DeterminationhealthDown == true and hand2PerseverancehealthDown == true and hand3PatiencehealthDown == true and hand4IntegrityhealthDown == true and hand5BraveryhealthDown == true and hand6JusticehealthDown == true and hand7KindnesshealthDown == true then
    
char.Humanoid.Health = 0
    
    
end     
        

if InUse == false then return end   
    
if JusticeAttack == true then
    
if InUse == false then return end
if InUse == true then
if JusticeAttackDebounce == true then return end    
if JusticeAttackDebounce == false then
    

JusticeAttackDebounce = true

wait(.2)
    
    
local PewJustice = Instance.new("Part",suit)
PewJustice.Size = Vector3.new(2,1,4)
PewJustice.BrickColor = BrickColor.new("New Yeller")
PewJustice.Position = Justice.Position
PewJustice.CanCollide = false

for i = 1,7 do
local parti = Instance.new("Part",Torso)
parti.Anchored = true
parti.TopSurface = 0
parti.BottomSurface = 0
parti.CanCollide = false
parti.Size = Vector3.new(math.random(.5,.5),math.random(.5,.5),math.random(.5,.5))
parti.CFrame = Justice.CFrame*CFrame.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
parti.Transparency = 0
parti.BrickColor = BrickColor.new("New Yeller")
game.Debris:AddItem(parti,1.5)







local pad = Vector3.new(math.random(-2,2)/100,math.random(-2,2)/100,math.random(-2,2)/100)
game:service("RunService").Stepped:connect(function()
parti.Transparency = parti.Transparency + 0.05  
parti.CFrame = (parti.CFrame*CFrame.Angles(math.rad(20),math.rad(20),math.rad(20)))+pad
end)



end

coroutine.resume(coroutine.create(function()    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Justice.CFrame*CFrame.new(0,0,0))
end 
p:remove()
end))         

        local handleCFrame = PewJustice.CFrame
        local firingPoint = handleCFrame.p + handleCFrame:vectorToWorldSpace(NOZZLE_OFFSET)
        local shotCFrame = CFrame.new(firingPoint, mouse.Hit.p)
        local laserShotClone = PewJustice:Clone()
        PewJustice:remove() 
        laserShotClone.CFrame = shotCFrame + (shotCFrame.lookVector * (PewJustice.Size.Z / 2))
        local bodyVelocity = Instance.new('BodyVelocity')
        bodyVelocity.velocity = shotCFrame.lookVector * SHOT_SPEED
        bodyVelocity.Parent = laserShotClone
        bodyVelocity.Name = "Magic"
        bodyVelocity.MaxForce = Vector3.new(1000000,1000000,1000000)


        laserShotClone.Parent = suit 
        
        
function touch(hit)


if hit.Parent:findFirstChild("Humanoid") ~= nil then
    
if hit.Parent.Name == char.Name then return  end
if hit.Parent.Name == hand1Determination.Name then return  end
if hit.Parent.Name == hand2Perseverance.Name then return  end
if hit.Parent.Name == hand3Patience.Name then return  end
if hit.Parent.Name == hand4Integrity.Name then return  end
if hit.Parent.Name == hand5Bravery.Name then return  end
if hit.Parent.Name == hand6Justice.Name then return  end
if hit.Parent.Name == hand7Kindness.Name then return  end

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-3

local HitSounds = {
        Hurt = Instance.new("Sound")

}
 
HitSounds["Hurt"].SoundId = "http://www.roblox.com/asset?id=410625063"
HitSounds["Hurt"].Volume = 1
 
function PlayHitSound(soundname, pitch)
        HitSounds[soundname].Parent = hit.Parent.Torso
        HitSounds[soundname].Pitch = pitch
        HitSounds[soundname]:Play()
        local oldsound = HitSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        HitSounds[soundname] = HitSounds[soundname]:clone()
end

 PlayHitSound("Hurt", 1)

coroutine.resume(coroutine.create(function()
laserShotClone.Magic:remove()

wait(3)
laserShotClone:remove()
end))

end end laserShotClone.Touched:connect(touch)

game.Debris:AddItem(laserShotClone,10)      
            
    
JusticeAttackDebounce = false       
end
end 
end 


----2nd Attack






 

if IntegrityAttack == true then
    
if InUse == false then return end
if InUse == true then
if IntegrityAttackDebounce == true then return end  
if IntegrityAttackDebounce == false then
    

IntegrityAttackDebounce = true

wait(.5)
    
for i = 1,2 do wait(1)  
local PewIntegrity = Instance.new("Part",suit)
PewIntegrity.Size = Vector3.new(5,1,5)
PewIntegrity.BrickColor = BrickColor.new("Dark blue")
PewIntegrity.Position = Integrity.Position
PewIntegrity.CanCollide = false
PewIntegrity.Transparency = 0.4

local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Dark blue"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Integrity.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Integrity.CFrame*CFrame.new(0,0,0))
end 
p:remove()
end))         

        local handleCFrame = PewIntegrity.CFrame
        local firingPoint = handleCFrame.p + handleCFrame:vectorToWorldSpace(NOZZLE_OFFSET)
        local shotCFrame = CFrame.new(firingPoint, mouse.Hit.p)
        local laserShotClone = PewIntegrity:Clone()
        PewIntegrity:remove()   
        laserShotClone.CFrame = shotCFrame + (shotCFrame.lookVector * (PewIntegrity.Size.Z / 2))
        local bodyVelocity = Instance.new('BodyVelocity')
        bodyVelocity.velocity = shotCFrame.lookVector * SHOT_SPEED
        negativevelocity = bodyVelocity.velocity*-1
        bodyVelocity.Parent = laserShotClone
        bodyVelocity.Name = "Magic"
        bodyVelocity.MaxForce = Vector3.new(1000000,1000000,1000000)


        laserShotClone.Parent = suit 
        
        
function touch(hit)


if hit.Parent:findFirstChild("Humanoid") ~= nil then
    
if hit.Parent.Name == char.Name then return  end
if hit.Parent.Name == hand1Determination.Name then return  end
if hit.Parent.Name == hand2Perseverance.Name then return  end
if hit.Parent.Name == hand3Patience.Name then return  end
if hit.Parent.Name == hand4Integrity.Name then return  end
if hit.Parent.Name == hand5Bravery.Name then return  end
if hit.Parent.Name == hand6Justice.Name then return  end
if hit.Parent.Name == hand7Kindness.Name then return  end

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-7

local HitSounds = {
        Hurt = Instance.new("Sound")

}
 
HitSounds["Hurt"].SoundId = "http://www.roblox.com/asset?id=410625063"
HitSounds["Hurt"].Volume = 1
 
function PlayHitSound(soundname, pitch)
        HitSounds[soundname].Parent = hit.Parent.Torso
        HitSounds[soundname].Pitch = pitch
        HitSounds[soundname]:Play()
        local oldsound = HitSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        HitSounds[soundname] = HitSounds[soundname]:clone()
end

 PlayHitSound("Hurt", 1)



end end laserShotClone.Touched:connect(touch)

game.Debris:AddItem(laserShotClone,10)
coroutine.resume(coroutine.create(function()        
for i = 1,25 do wait()
    
local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(5,1,5)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Dark blue"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true 

p.Transparency = 0.7

p.CFrame =(laserShotClone.CFrame*CFrame.new(0,0,0)*CFrame.Angles(0,0.3*i,0))
    
game.Debris:AddItem(p,.2)
    
end         
    
bodyVelocity.velocity = negativevelocity    

for i = 1,25 do wait()
    
local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(5,1,5)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Dark blue"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true 

p.Transparency = 0.7
    
game.Debris:AddItem(p,.2)
p.CFrame =(laserShotClone.CFrame*CFrame.new(0,0,0)*CFrame.Angles(0,0.3*i,0))
    
end
end))       
end 
wait(1)
IntegrityAttackDebounce = false     
end
end 
end 


--3rd AttackPosition
if PerseveranceAttack == true then
    
if InUse == false then return end
if InUse == true then
if PerseveranceAttackDebounce == true then return end   
if PerseveranceAttackDebounce == false then
PerseveranceAttackDebounce = true   
RandomPerseverance = math.random(1,2)

if RandomPerseverance == 2 then 
local randomnumber = math.random(1,2)



wait(.3)
    


local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Magenta"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Perseverance.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()    
for i = 1,5 do wait()
    
p.Size=Vector3.new(0.5*i,0.5*i,0.5*i)
p.CFrame =(Perseverance.CFrame*CFrame.new(0,0,0))
end 
p:remove()
end))

local throwbone1 = Instance.new("Part",suit)
throwbone1.TopSurface = "Smooth"
throwbone1.BottomSurface = "Smooth"
throwbone1.Size = Vector3.new(0.2, 0.2, 3)
throwbone1.CanCollide = true
throwbone1.BrickColor = BrickColor.new("Magenta")
throwbone1 .FormFactor = "Custom"
local Weldbonepart2 = Instance.new("Weld",throwbone1)
Weldbonepart2.Part0 = throwbone1
Weldbonepart2.Part1 = Perseverance 
Weldbonepart2.Name = "WBP22"

local throwbone1weld2 = Instance.new("Part",throwbone1)
throwbone1weld2.TopSurface = "Smooth"
throwbone1weld2.BottomSurface = "Smooth"
throwbone1weld2.Size = Vector3.new(0.4, 0.4, 0.4)
throwbone1weld2.CanCollide = true
throwbone1weld2.BrickColor = BrickColor.new("Magenta")
throwbone1weld2 .FormFactor = "Custom"
local Weldbonepart2weld2 = Instance.new("Weld",throwbone1)
Weldbonepart2weld2.Part0 = throwbone1weld2
Weldbonepart2weld2.Part1 = throwbone1
Weldbonepart2weld2.Name = "WBP2W2"
Weldbonepart2weld2.C1 = CFrame.new(0, 0, -1.3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


local throwbone1weld1 = Instance.new("Part",throwbone1)
throwbone1weld1.TopSurface = "Smooth"
throwbone1weld1.BottomSurface = "Smooth"
throwbone1weld1.Size = Vector3.new(0.4, 0.4, 0.4)
throwbone1weld1.CanCollide = true
throwbone1weld1.BrickColor = BrickColor.new("Magenta")
throwbone1weld1 .FormFactor = "Custom"
local Weldbonepart2weld1 = Instance.new("Weld",throwbone1)
Weldbonepart2weld1.Part0 = throwbone1weld1
Weldbonepart2weld1.Part1 = throwbone1
Weldbonepart2weld1.Name = "WBP2W1"
Weldbonepart2weld1.C1 = CFrame.new(0, 0, 1.3)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


if randomnumber == 1 then
for i = 1,10 do wait()
    
Weldbonepart2.C1 = CFrame.new(-3, 0, 0)*CFrame.fromEulerAnglesXYZ(0.7*i, 0, 0)
    
    
end
end 

if randomnumber == 2 then
for i = 1,10 do wait()
    
Weldbonepart2.C1 = CFrame.new(3, 0, 0)*CFrame.fromEulerAnglesXYZ(0.7*i, 0, 0)
    
    
end
end    


        local handleCFrame = throwbone1.CFrame
        local firingPoint = handleCFrame.p + handleCFrame:vectorToWorldSpace(NOZZLE_OFFSET)
        local shotCFrame = CFrame.new(firingPoint, mouse.Hit.p)
        local laserShotClone = throwbone1:Clone()
        laserShotClone.WBP22:remove()
        laserShotClone.CFrame = shotCFrame + (shotCFrame.lookVector * (throwbone1.Size.Z / 2))
        local bodyVelocity = Instance.new('BodyVelocity')
        bodyVelocity.velocity = shotCFrame.lookVector * SHOT_SPEED
        bodyVelocity.Parent = laserShotClone
        bodyVelocity.Name = "Magic"
        bodyVelocity.MaxForce = Vector3.new(1000000,1000000,1000000)


        laserShotClone.Parent = suit 

throwbone1:remove()         


        
function touch(hit)


if hit.Parent:findFirstChild("Humanoid") ~= nil then
    
if hit.Parent.Name == char.Name then return  end
if hit.Parent.Name == hand1Determination.Name then return  end
if hit.Parent.Name == hand2Perseverance.Name then return  end
if hit.Parent.Name == hand3Patience.Name then return  end
if hit.Parent.Name == hand4Integrity.Name then return  end
if hit.Parent.Name == hand5Bravery.Name then return  end
if hit.Parent.Name == hand6Justice.Name then return  end
if hit.Parent.Name == hand7Kindness.Name then return  end

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-5

local HitSounds = {
        Hurt = Instance.new("Sound")

}
 
HitSounds["Hurt"].SoundId = "http://www.roblox.com/asset?id=410625063"
HitSounds["Hurt"].Volume = 1
 
function PlayHitSound(soundname, pitch)
        HitSounds[soundname].Parent = hit.Parent.Torso
        HitSounds[soundname].Pitch = pitch
        HitSounds[soundname]:Play()
        local oldsound = HitSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        HitSounds[soundname] = HitSounds[soundname]:clone()
end

 PlayHitSound("Hurt", 1)

coroutine.resume(coroutine.create(function()
laserShotClone.Magic:remove()

wait(3)
laserShotClone:remove()
end))

end end laserShotClone.Touched:connect(touch)

game.Debris:AddItem(laserShotClone,10)      


elseif RandomPerseverance == 1 then 
    
           PlaySound("Gaster", 1, PerseveranceOrb,false)
           wait(1)
           local ray = Ray.new(PerseveranceOrb.CFrame.p, (mouse.Hit.p - PerseveranceOrb.CFrame.p).unit*1000)
           local hit, position = game.Workspace:FindPartOnRay(ray, char)
    
    

    

                local ray = Ray.new(PerseveranceOrb.CFrame.p, (mouse.Hit.p -PerseveranceOrb.CFrame.p).unit*300)
                local position = mouse.Hit.p--game.Workspace:FindPartOnRay(ray, walrus)
                local distance = (position - PerseveranceOrb.CFrame.p).magnitude
                local rp=Instance.new("Part",workspace)
                rp.Anchored=true
                rp.TopSurface="Smooth"
                rp.BottomSurface="Smooth"
                rp.Transparency=0
                rp.BrickColor=BrickColor.new("Bright purple")
                rp.FormFactor="Custom"
                rp.CanCollide=false
                rp.Size=Vector3.new(0.8,0.1,distance)
                rp.Material = "Neon"
                rp.CFrame=CFrame.new(position, PerseveranceOrb.CFrame.p) * CFrame.new(0, 0, -distance/2)
                local cy=Instance.new("BlockMesh",rp)



coroutine.resume(coroutine.create(function()
    wait(1)
                for i=1,10 do
                    wait()
                    rp.Transparency=rp.Transparency + 0.1
 
                end
rp:remove()
end))

function touch(hit)


if hit.Parent:findFirstChild("Humanoid") ~= nil then
    
if hit.Parent.Name == char.Name then return  end
if hit.Parent.Name == hand1Determination.Name then return  end
if hit.Parent.Name == hand2Perseverance.Name then return  end
if hit.Parent.Name == hand3Patience.Name then return  end
if hit.Parent.Name == hand4Integrity.Name then return  end
if hit.Parent.Name == hand5Bravery.Name then return  end
if hit.Parent.Name == hand6Justice.Name then return  end
if hit.Parent.Name == hand7Kindness.Name then return  end

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-20

local HitSounds = {
        Hurt = Instance.new("Sound")

}
 
HitSounds["Hurt"].SoundId = "http://www.roblox.com/asset?id=410625063"
HitSounds["Hurt"].Volume = 1
 
function PlayHitSound(soundname, pitch)
        HitSounds[soundname].Parent = hit.Parent.Torso
        HitSounds[soundname].Pitch = pitch
        HitSounds[soundname]:Play()
        local oldsound = HitSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        HitSounds[soundname] = HitSounds[soundname]:clone()
end

 PlayHitSound("Hurt", 1)

end end rp.Touched:connect(touch)
    
    
    
    
    
    
            
end
RandomPerseverance = 0

PerseveranceAttackDebounce = false      
end
end 
end 

if KindAttack == true then
    
if InUse == false then return end
if InUse == true then
if KindnessAttackDebounce == true then return end   
if KindnessAttackDebounce == false then
KindnessAttackDebounce = true
                local ray = Ray.new(Kindness.CFrame.p, (mouse.Hit.p -Kindness.CFrame.p).unit*300)
                local position = mouse.Hit.p--game.Workspace:FindPartOnRay(ray, walrus)
                local distance = (position - Kindness.CFrame.p).magnitude
                local rp=Instance.new("Part",workspace)
                rp.Anchored=true
                rp.TopSurface="Smooth"
                rp.BottomSurface="Smooth"
                rp.Transparency=1
                rp.BrickColor=BrickColor.new("Deep orange")
                rp.FormFactor="Custom"
                rp.CanCollide=false
                rp.Size=Vector3.new(0.6,0.6,distance)
                rp.Material = "Neon"
                rp.CFrame=CFrame.new(position, Kindness.CFrame.p) * CFrame.new(0, 0, -distance/2)
                local cy=Instance.new("BlockMesh",rp)
                rp:Destroy()



local ps = Instance.new("Part", suit)
 ps.Name = "MagicPart"
 ps.TopSurface = "Smooth"
 ps.BottomSurface = "Smooth"
 ps.BrickColor = BrickColor.new("Toothpaste")
 ps.FormFactor = "Custom"
ps.Transparency = 1
 ps.Size = Vector3.new(.2, 3, 3)
 ps.Anchored = true
 ps.CanCollide = false
 ps.CFrame = CFrame.new(position)*CFrame.new(0,3,0)
local cy=Instance.new("SpecialMesh",ps)
cy.MeshType = "Cylinder"

coroutine.resume(coroutine.create(function()
    


local SpawnSounds = {
        Spike = Instance.new("Sound")

}
 
SpawnSounds["Spike"].SoundId = "http://www.roblox.com/asset?id=486286230"
SpawnSounds["Spike"].Volume = 0.5
 
function PlaySpawnSound(soundname, pitch)
        SpawnSounds[soundname].Parent = ps
        SpawnSounds[soundname].Pitch = pitch
        SpawnSounds[soundname]:Play()
        local oldsound = SpawnSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        SpawnSounds[soundname] = SpawnSounds[soundname]:clone()
end



local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.8,0.8,0.8)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Lime green"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Kindness.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.8*i,0.8*i,0.8*i)
p.CFrame =(Kindness.CFrame*CFrame.new(0,0,0))
end 
p:remove()
end))  

PlaySpawnSound("Spike", 1)




wait(0.5)



end))



local Shield6= Instance.new("Part",hand7Kindness)
Shield6.TopSurface = "Smooth"
Shield6.BottomSurface = "Smooth"
Shield6.Size = Vector3.new(18, 3, 18)
Shield6.CanCollide = true
Shield6.Anchored =true
Shield6.BrickColor = BrickColor.new("Lime green")
Shield6 .FormFactor = "Custom"
Shield6.Transparency = 0.7
Shield6.CFrame= ps.CFrame*CFrame.new(0,10,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


local Shield5= Instance.new("Part",hand7Kindness)
Shield5.TopSurface = "Smooth"
Shield5.BottomSurface = "Smooth"
Shield5.Size = Vector3.new(18, 3, 18)
Shield5.CanCollide = true
Shield5.Anchored =true
Shield5.BrickColor = BrickColor.new("Lime green")
Shield5 .FormFactor = "Custom"
Shield5.Transparency = 0.7
Shield5.CFrame= ps.CFrame*CFrame.new(0,-10,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


local Shield4= Instance.new("Part",hand7Kindness)
Shield4.TopSurface = "Smooth"
Shield4.BottomSurface = "Smooth"
Shield4.Size = Vector3.new(3, 18, 18)
Shield4.CanCollide = true
Shield4.Anchored =true
Shield4.BrickColor = BrickColor.new("Lime green")
Shield4 .FormFactor = "Custom"
Shield4.Transparency = 0.7
Shield4.CFrame= ps.CFrame*CFrame.new(-10,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


local Shield3= Instance.new("Part",hand7Kindness)
Shield3.TopSurface = "Smooth"
Shield3.BottomSurface = "Smooth"
Shield3.Size = Vector3.new(3, 18, 18)
Shield3.CanCollide = true
Shield3.Anchored =true
Shield3.BrickColor = BrickColor.new("Lime green")
Shield3 .FormFactor = "Custom"
Shield3.Transparency = 0.7
Shield3.CFrame= ps.CFrame*CFrame.new(10,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


local Shield2= Instance.new("Part",hand7Kindness)
Shield2.TopSurface = "Smooth"
Shield2.BottomSurface = "Smooth"
Shield2.Size = Vector3.new(18, 18, 3)
Shield2.CanCollide = true
Shield2.Anchored =true
Shield2.BrickColor = BrickColor.new("Lime green")
Shield2 .FormFactor = "Custom"
Shield2.Transparency = 0.7
Shield2.CFrame= ps.CFrame*CFrame.new(0,0,-10)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


local Shield1= Instance.new("Part",hand7Kindness)
Shield1.TopSurface = "Smooth"
Shield1.BottomSurface = "Smooth"
Shield1.Size = Vector3.new(18, 18, 3)
Shield1.CanCollide = true
Shield1.Anchored =true
Shield1.BrickColor = BrickColor.new("Lime green")
Shield1 .FormFactor = "Custom"
Shield1.Transparency = 0.7
Shield1.CFrame= ps.CFrame*CFrame.new(0,0,10)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

for i = 1,7 do
local parti = Instance.new("Part",Torso)
parti.Anchored = true
parti.TopSurface = 0
parti.BottomSurface = 0
parti.CanCollide = false
parti.Size = Vector3.new(math.random(1,1),math.random(1,1),math.random(1,1))
parti.CFrame = ps.CFrame*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
parti.Transparency = 0
parti.BrickColor = BrickColor.new("Lime green")
game.Debris:AddItem(parti,1.5)







local pad = Vector3.new(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
game:service("RunService").Stepped:connect(function()
parti.Transparency = parti.Transparency + 0.05  
parti.CFrame = (parti.CFrame*CFrame.Angles(math.rad(20),math.rad(20),math.rad(20)))+pad
end)
end

wait(3)

function squeeze(hit)


if hit.Parent:findFirstChild("Humanoid") ~= nil then
    
if hit.Parent.Name == char.Name then return  end
if hit.Parent.Name == hand1Determination.Name then return  end
if hit.Parent.Name == hand2Perseverance.Name then return  end
if hit.Parent.Name == hand3Patience.Name then return  end
if hit.Parent.Name == hand4Integrity.Name then return  end
if hit.Parent.Name == hand5Bravery.Name then return  end
if hit.Parent.Name == hand6Justice.Name then return  end
if hit.Parent.Name == hand7Kindness.Name then return  end

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-50

local HitSounds = {
        Hurt = Instance.new("Sound")

}
 
HitSounds["Hurt"].SoundId = "http://www.roblox.com/asset?id=410625063"
HitSounds["Hurt"].Volume = 1
 
function PlayHitSound(soundname, pitch)
        HitSounds[soundname].Parent = hit.Parent.Torso
        HitSounds[soundname].Pitch = pitch
        HitSounds[soundname]:Play()
        local oldsound = HitSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        HitSounds[soundname] = HitSounds[soundname]:clone()
end

 PlayHitSound("Hurt", 1)

end end 

Shield6.Touched:connect(squeeze)
Shield5.Touched:connect(squeeze)
Shield4.Touched:connect(squeeze)
Shield3.Touched:connect(squeeze)
Shield2.Touched:connect(squeeze)
Shield1.Touched:connect(squeeze)


for i = 1,30 do wait()
    
Shield6.CFrame= clerp(Shield6.CFrame*CFrame.new(0,-.01*i,0),ps.CFrame,.1)
Shield5.CFrame= clerp(Shield5.CFrame*CFrame.new(0,.01*i,0),ps.CFrame,.1)
Shield4.CFrame= clerp(Shield4.CFrame*CFrame.new(.01*i,0,0),ps.CFrame,.1)
Shield3.CFrame= clerp(Shield3.CFrame*CFrame.new(-.01*i,0,0),ps.CFrame,.1)
Shield2.CFrame= clerp(Shield2.CFrame*CFrame.new(0,0,.01*i),ps.CFrame,.1)
Shield1.CFrame= clerp(Shield1.CFrame*CFrame.new(0,0,-.01*i),ps.CFrame,.1)
    
    
end


for i = 1,30 do wait()
    
Shield6.CFrame= clerp(Shield6.CFrame*CFrame.new(0,-.01*i,0),ps.CFrame,.1)
Shield5.CFrame= clerp(Shield5.CFrame*CFrame.new(0,.01*i,0),ps.CFrame,.1)
Shield4.CFrame= clerp(Shield4.CFrame*CFrame.new(.01*i,0,0),ps.CFrame,.1)
Shield3.CFrame= clerp(Shield3.CFrame*CFrame.new(-.01*i,0,0),ps.CFrame,.1)
Shield2.CFrame= clerp(Shield2.CFrame*CFrame.new(0,0,.01*i),ps.CFrame,.1)
Shield1.CFrame= clerp(Shield1.CFrame*CFrame.new(0,0,-.01*i),ps.CFrame,.1)
    
    
end


ps:remove() 


wait(3)
Shield1:Remove()
Shield2:Remove()
Shield3:Remove()
Shield4:Remove()
Shield5:Remove()
Shield6:Remove()

KindnessAttackDebounce = false      
end
end
end





---5th attack---


if DeterminationAttack == true then
    
if InUse == false then return end
if InUse == true then
if DetermiantionAttackDebounce == true then return end  
if DetermiantionAttackDebounce == false then
    

DetermiantionAttackDebounce = true


for i = 1,3 do
local head = Instance.new("Part",char)
head.Size = Vector3.new(18,.2,18)
head.CanCollide = false
head.Anchored = true
head.CFrame = CFrame.new(char.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(0,0,0)).p,mouse.hit.p)
head.Transparency = 1
for i = 1,2 do
decal = Instance.new("Decal",head)
decal.Texture = "rbxassetid://333659534"
if i == 1 then
decal.Face = Enum.NormalId.Top
else
decal.Face = Enum.NormalId.Bottom
end
end

local bg = Instance.new("BodyGyro") 
bg.Parent = head
bg.maxTorque = Vector3.new(0,0,0) 
bg.maxTorque = Vector3.new(0,0,0) 

RandomGasterRotaion = math.random(-10,10)

for i = 1,5 do wait()
    print ' test'
head.CFrame = clerp(head.CFrame*CFrame.new(RandomGasterRotaion,1*i,1*i),head.CFrame,.1)


end
RandomGasterRotaion = 0


           local ray = Ray.new(head.CFrame.p, (mouse.Hit.p - head.CFrame.p).unit*1000)
           local hit, position = game.Workspace:FindPartOnRay(ray, char)
    
    

    

                local ray = Ray.new(head.CFrame.p, (mouse.Hit.p -head.CFrame.p).unit*300)
                local position = mouse.Hit.p--game.Workspace:FindPartOnRay(ray, walrus)
                local distance = (position - head.CFrame.p).magnitude
                local rp=Instance.new("Part",workspace)
                rp.Anchored=true
                rp.TopSurface="Smooth"
                rp.BottomSurface="Smooth"
                rp.Transparency=0
                rp.BrickColor=BrickColor.new("Institutional white")
                rp.FormFactor="Custom"
                rp.CanCollide=false
                rp.Size=Vector3.new(10,0,distance)
                rp.Material = "Neon"
                rp.CFrame=CFrame.new(position, head.CFrame.p) * CFrame.new(0, 0, -distance/2)
                local cy=Instance.new("BlockMesh",rp)
head.CFrame = CFrame.new(head.CFrame:toWorldSpace(CFrame.new(0,0,0)).p,mouse.hit.p)
function touch(hit)


if hit.Parent:findFirstChild("Humanoid") ~= nil then
    
if hit.Parent.Name == char.Name then return  end
if hit.Parent.Name == hand1Determination.Name then return  end
if hit.Parent.Name == hand2Perseverance.Name then return  end
if hit.Parent.Name == hand3Patience.Name then return  end
if hit.Parent.Name == hand4Integrity.Name then return  end
if hit.Parent.Name == hand5Bravery.Name then return  end
if hit.Parent.Name == hand6Justice.Name then return  end
if hit.Parent.Name == hand7Kindness.Name then return  end

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-7

local HitSounds = {
        Hurt = Instance.new("Sound")

}
 
HitSounds["Hurt"].SoundId = "http://www.roblox.com/asset?id=410625063"
HitSounds["Hurt"].Volume = 1
 
function PlayHitSound(soundname, pitch)
        HitSounds[soundname].Parent = hit.Parent.Torso
        HitSounds[soundname].Pitch = pitch
        HitSounds[soundname]:Play()
        local oldsound = HitSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        HitSounds[soundname] = HitSounds[soundname]:clone()
end

 PlayHitSound("Hurt", 1)

end end rp.Touched:connect(touch)

coroutine.resume(coroutine.create(function()
    
PlaySound("Gaster", 1, head,false)
                for i=1,10 do
                    wait()
                    cy.Scale=cy.Scale+Vector3.new(0,0,.01*i)
                    head.CFrame = head.CFrame*CFrame.new(0,0,1*i)*CFrame.Angles(0,0,0)
                end
for i=1,10 do wait()
    
decal.Transparency =    decal.Transparency + 0.1
rp.Transparency =   rp.Transparency + 0.1   
    
end 
wait(1)
head:Destroy()
rp:Destroy()
end))
end 


wait(0.1)   
DetermiantionAttackDebounce = false     

end

end 
end 




if PatienceAttack == true then
    
if InUse == false then return end
if InUse == true then
if PatienceAttackDebounce == true then return end   
if PatienceAttackDebounce == false then
    

PatienceAttackDebounce = true




           local ray = Ray.new(PatienceOrb.CFrame.p, (mouse.Hit.p - PatienceOrb.CFrame.p).unit*1000)
           local hit, position = game.Workspace:FindPartOnRay(ray, char)
    
    

    

                local ray = Ray.new(PatienceOrb.CFrame.p, (mouse.Hit.p -PatienceOrb.CFrame.p).unit*300)
                local position = mouse.Hit.p--game.Workspace:FindPartOnRay(ray, walrus)
                local distance = (position - PatienceOrb.CFrame.p).magnitude
                local rp=Instance.new("Part",workspace)
                rp.Anchored=true
                rp.TopSurface="Smooth"
                rp.BottomSurface="Smooth"
                rp.Transparency=0
                rp.BrickColor=BrickColor.new("Cyan")
                rp.FormFactor="Custom"
                rp.CanCollide=false
                rp.Size=Vector3.new(0.5,0.5,distance)
                rp.Material = "Neon"
                rp.CFrame=CFrame.new(position, PatienceOrb.CFrame.p) * CFrame.new(0, 0, -distance/2)
                local cy=Instance.new("BlockMesh",rp)
coroutine.resume(coroutine.create(function()
                for i=1,13 do
                    wait()
                    cy.Scale=cy.Scale-Vector3.new(.01*i,.01*i,0)
 
                end
end))
function touch(hit)


if hit.Parent:findFirstChild("Humanoid") ~= nil then
    
if hit.Parent.Name == char.Name then return  end
if hit.Parent.Name == hand1Determination.Name then return  end
if hit.Parent.Name == hand2Perseverance.Name then return  end
if hit.Parent.Name == hand3Patience.Name then return  end
if hit.Parent.Name == hand4Integrity.Name then return  end
if hit.Parent.Name == hand5Bravery.Name then return  end
if hit.Parent.Name == hand6Justice.Name then return  end
if hit.Parent.Name == hand7Kindness.Name then return  end

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-7
local hittorso = hit.Parent.Torso
local HitSounds = {
        Hurt = Instance.new("Sound")

}
 
HitSounds["Hurt"].SoundId = "http://www.roblox.com/asset?id=410625063"
HitSounds["Hurt"].Volume = 1
 
function PlayHitSound(soundname, pitch)
        HitSounds[soundname].Parent = hit.Parent.Torso
        HitSounds[soundname].Pitch = pitch
        HitSounds[soundname]:Play()
        local oldsound = HitSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        HitSounds[soundname] = HitSounds[soundname]:clone()
end

 PlayHitSound("Hurt", 1)

local Tied = Instance.new("Part",hittorso)
Tied.Size = Vector3.new(4,2,1.5)
Tied.Name = "Rope"
Tied.CanCollide = false
Tied.Transparency = 0.1
Tied.BrickColor = BrickColor.new("Cyan")
Tied.CFrame = hittorso.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

local Weld = Instance.new("Weld",hittorso)
Weld.Part0 = hittorso
Weld.Part1 = Tied
Weld.C1 = hittorso.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)


hit.Parent.Torso.Anchored = true
hit.Parent["Left Arm"].Anchored = true
hit.Parent["Right Arm"].Anchored = true

wait(3)

for i = 1,10 do wait(.1)
    
Tied.Transparency = Tied.Transparency  + 0.1
    
    
end


hit.Parent.Torso.Anchored = false
hit.Parent["Left Arm"].Anchored = false
hit.Parent["Right Arm"].Anchored = false


end end rp.Touched:connect(touch)

coroutine.resume(coroutine.create(function()
    

wait(1)

rp:Destroy()
end))
end 


wait(1) 
PatienceAttackDebounce = false      

end

end 

if BraveryAttack == true then
    
if InUse == false then return end
if InUse == true then
if BraveryAttackDebounce == true then return end    
if BraveryAttackDebounce == false then
BraveryAttackDebounce = true
                local ray = Ray.new(Bravery.CFrame.p, (mouse.Hit.p -Bravery.CFrame.p).unit*300)
                local position = mouse.Hit.p--game.Workspace:FindPartOnRay(ray, walrus)
                local distance = (position - Bravery.CFrame.p).magnitude
                local rp=Instance.new("Part",workspace)
                rp.Anchored=true
                rp.TopSurface="Smooth"
                rp.BottomSurface="Smooth"
                rp.Transparency=1
                rp.BrickColor=BrickColor.new("Deep orange")
                rp.FormFactor="Custom"
                rp.CanCollide=false
                rp.Size=Vector3.new(0.6,0.6,distance)
                rp.Material = "Neon"
                rp.CFrame=CFrame.new(position, Kindness.CFrame.p) * CFrame.new(0, 0, -distance/2)
                local cy=Instance.new("BlockMesh",rp)
                rp:Destroy()



local ps = Instance.new("Part", suit)
 ps.Name = "MagicPart"
 ps.TopSurface = "Smooth"
 ps.BottomSurface = "Smooth"
 ps.BrickColor = BrickColor.new("Toothpaste")
 ps.FormFactor = "Custom"
ps.Transparency = 1
 ps.Size = Vector3.new(.5, .5, .5)
 ps.Anchored = true
 ps.CanCollide = false
 ps.CFrame = CFrame.new(position)*CFrame.new(0,3,0)
local cy=Instance.new("SpecialMesh",ps)
cy.MeshType = "Cylinder"
for i =1,5 do

coroutine.resume(coroutine.create(function()    
coroutine.resume(coroutine.create(function()
    


local SpawnSounds = {
        Spike = Instance.new("Sound")

}
 
SpawnSounds["Spike"].SoundId = "http://www.roblox.com/asset?id=486286230"
SpawnSounds["Spike"].Volume = 0.1
 
function PlaySpawnSound(soundname, pitch)
        SpawnSounds[soundname].Parent = ps
        SpawnSounds[soundname].Pitch = pitch
        SpawnSounds[soundname]:Play()
        local oldsound = SpawnSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        SpawnSounds[soundname] = SpawnSounds[soundname]:clone()
end



local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.3,0.3,0.3)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Deep orange"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Bravery.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()    
for i = 1,8 do wait()
    
p.Size=Vector3.new(0.3*i,0.3*i,0.3*i)
p.CFrame =(Bravery.CFrame*CFrame.new(0,0,0))
end 
p:remove()
end))  

PlaySpawnSound("Spike", 1)



wait(0.5)



end))







xmathrandom = math.random(-10,10)
ymathrandom = math.random(2,10)
zmathrandom = math.random(-10,10)   
    
local Bomb= Instance.new("Part",hand5Bravery)
Bomb.TopSurface = "Smooth"
Bomb.BottomSurface = "Smooth"
Bomb.Size = Vector3.new(0.1,0.1,0.1)
Bomb.CanCollide = true
Bomb.Anchored =true
Bomb.BrickColor = BrickColor.new("Mid gray")
Bomb .Shape = "Ball"
Bomb .Material= "Neon"
Bomb.Transparency = 0
Bomb.CFrame= ps.CFrame*CFrame.new(xmathrandom,ymathrandom ,zmathrandom )*CFrame.fromEulerAnglesXYZ(0, 0, 0)


xmathrandom = 0
ymathrandom = 0
zmathrandom = 0

wait(1)


Bomb.BrickColor = BrickColor.new("Deep orange")
local p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(0.1,0.1,0.1)

p.TopSurface = 0

p.BottomSurface = 0

local colorc = {"Deep orange"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

p.BrickColor = Fire

p.CanCollide=false

p.Anchored=true

p.CFrame =(Bomb.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
coroutine.resume(coroutine.create(function()    
for i = 1,2 do wait()
    
p.Size=Vector3.new(0.1*i,0.1*i,0.1*i)
p.CFrame =(Bomb.CFrame*CFrame.new(0,0,0))
end 
p:remove()
end))  
wait(1)


local explosion = Instance.new("Part",workspace)

explosion.FormFactor="Custom"

explosion.Size=Vector3.new(0.8,0.8,0.8)

explosion.TopSurface = 0

explosion.BottomSurface = 0

local colorc = {"Deep orange"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

explosion.BrickColor = Fire

explosion.CanCollide=false

explosion.Anchored=true

explosion.CFrame =(Bomb.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

PlaySound("Explode", 1, explosion, false)

function touch(hit)


if hit.Parent:findFirstChild("Humanoid") ~= nil then
    
if hit.Parent.Name == char.Name then return  end
if hit.Parent.Name == hand1Determination.Name then return  end
if hit.Parent.Name == hand2Perseverance.Name then return  end
if hit.Parent.Name == hand3Patience.Name then return  end
if hit.Parent.Name == hand4Integrity.Name then return  end
if hit.Parent.Name == hand5Bravery.Name then return  end
if hit.Parent.Name == hand6Justice.Name then return  end
if hit.Parent.Name == hand7Kindness.Name then return  end

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-50

local HitSounds = {
        Hurt = Instance.new("Sound")

}
 
HitSounds["Hurt"].SoundId = "http://www.roblox.com/asset?id=410625063"
HitSounds["Hurt"].Volume = 1
 
function PlayHitSound(soundname, pitch)
        HitSounds[soundname].Parent = hit.Parent.Torso
        HitSounds[soundname].Pitch = pitch
        HitSounds[soundname]:Play()
        local oldsound = HitSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        HitSounds[soundname] = HitSounds[soundname]:clone()
end

 PlayHitSound("Hurt", 1)

end end 

explosion.Touched:connect(touch)

coroutine.resume(coroutine.create(function()    
for i = 1,10 do wait()
explosion.Position =Bomb.Position
explosion.CFrame =Bomb.CFrame
explosion.Size=Vector3.new(3*i,3*i,3*i)
explosion.Position =Bomb.Position
explosion.CFrame =Bomb.CFrame
explosion.Transparency=explosion.Transparency + 0.1
explosion.Position =Bomb.Position
explosion.CFrame =Bomb.CFrame
end 
explosion:remove()
Bomb:remove()
end))  






ps:remove() 
end))
end
wait(2)


BraveryAttackDebounce = false       
end
end
end




    
    












    
    

    
end)


game:service("RunService").Stepped:connect(function()
    
    
if hand1Determinationhealth.Health == 0 then

if hand1DeterminationhealthDown == false then
hand1DeterminationhealthDown    = true

Determination:remove()
DeterminationAttack = false
DetermiantionAttackDebounce = false 

    
    
end 
    
    
end 
    
end)

game:service("RunService").Stepped:connect(function()
    
    
if hand2Perseverancehealth.Health == 0 then

if hand2PerseverancehealthDown == false then
hand2PerseverancehealthDown = true

Perseverance:remove()
PerseveranceAttack = false
PerseveranceAttackDebounce = false  

    
    
end 
    
    
end
    
end)
game:service("RunService").Stepped:connect(function()
    
    
if hand3Patiencehealth.Health == 0 then

if hand3PatiencehealthDown == false then
hand3PatiencehealthDown = true

Patience:remove()
PatienceAttack = false
PatienceAttackDebounce = false  

    
    
end 
    
    
end

    
end)
game:service("RunService").Stepped:connect(function()
    
    
if hand4Integrityhealth.Health == 0 then

if hand4IntegrityhealthDown == false then
hand4IntegrityhealthDown    = true

Integrity:remove()
IntegrityAttack = false
IntegrityAttackDebounce = false 

    
    
end 
    
    
end
    
end)
game:service("RunService").Stepped:connect(function()
    
    
if hand5Braveryhealth.Health == 0 then

if hand5BraveryhealthDown == false then
hand5BraveryhealthDown  = true

Bravery:remove()
BraveryAttack = false
BraveryAttackDebounce = false

    
    
end 
    
    
end
    
end)
game:service("RunService").Stepped:connect(function()
    
    
if hand6Justicehealth.Health == 0 then

if hand6JusticehealthDown == false then
hand6JusticehealthDown  = true

Justice:remove()
JusticeAttack = false
JusticeAttackDebounce = false   

    
    
end 
    
    
end
    
end)
game:service("RunService").Stepped:connect(function()
    
    
if hand7Kindnesshealth.Health == 0 then

if hand7KindnesshealthDown == false then
hand7KindnesshealthDown = true

Kindness:remove()
KindnessAttack = false
KindnessAttackDebounce = false  

if  ShieldValueToGasterDebounce == false then 
ShieldValueToGasterDebounce = true 
for i = 1,3 do wait()   
shieldparent6.Transparency =shieldparent6.Transparency + 0.1
shieldparent5.Transparency =shieldparent5.Transparency + 0.1
shieldparent4.Transparency =shieldparent4.Transparency + 0.1
shieldparent3.Transparency =shieldparent3.Transparency + 0.1
shieldparent2.Transparency =shieldparent2.Transparency + 0.1
shieldparent1.Transparency =shieldparent1.Transparency + 0.1
end
shieldparent6:remove()
shieldparent5:remove()
shieldparent4:remove()
shieldparent3:remove()
shieldparent2:remove()
shieldparent1:remove()

shieldparent1=nil
shieldparent2=nil
shieldparent3=nil
shieldparent4=nil
shieldparent5=nil
shieldparent6=nil




end 
    
end 
    
    
end
    
end)

char.Humanoid.MaxHealth = 666666666
wait()
char.Humanoid.Health = 666666666
end}
module[4] = {"Generate Tower",function()
t = workspace[game.Players.LocalPlayer.Name].Torso.Position
pos = CFrame.new(t.X, 1, t.Z)
Scale = 1

CN = CFrame.new
CA = CFrame.Angles
MR = math.rad
MP = math.pi

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

for i,v in pairs(workspace:children()) do if v.Name == "Tower" then v:remove() end end

Mod = Instance.new("Model")
Mod.Name = "Tower"

for i = 40, 360, 40 do
	local p = Part(Mod, true, true, 0, 0, "Dark grey", 4.6*Scale, 1*Scale, 25*Scale)
	p.CFrame = pos * CA(0, MR(i), 0)
	local s = 70
	if i == 40 then s = 60 end
	local p2 = Part(Mod, true, true, 0, 0, "Dark grey", 9*Scale, s*Scale, 1*Scale)
	p2.CFrame = pos * CA(0, MR(i), 0) * CN(0, (70/2-0.5+(-(s-70)/2))*Scale, -12*Scale)
	local p3 = Part(Mod, true, true, 0, 0, "Dark grey", 14.4*Scale, 10*Scale, 8*Scale)
	p3.CFrame = pos * CA(0, MR(i), 0) * CN(0, 73.5*Scale, -15.5*Scale)
	for x = -6, 6, 12 do
		local p4 = Part(Mod, true, true, 0, 0, "Dark grey", 5*Scale, 4*Scale, 4*Scale)
		p4.CFrame = p3.CFrame * CN(x*Scale, 5*Scale, -5.5*Scale)
	end
end

for i = 0, 77, 1 do
	local p = Part(Mod, true, true, 0, 0, "Medium grey", 4*Scale, 1*Scale, 4*Scale)
	p.CFrame = pos * CA(0, MR((i+4)*15), 0) * CN(0, i*Scale, -9.5*Scale)
end

Mod.Parent = workspace

end}

 
 

module[1] = {"Genocider",function()
--[[Psychopath's waifu
I think ck is going to send me in hell...
Genocider by grgrgry21.
Credit to CKbackup's and idk..
             B
          U     R
         N  I N  H
          E     L
             L
]]--
wait(1 / 60)
Effects = { }
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local Mouse = Player:GetMouse()
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local Camera = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local attack = false
local Anim = 'Idle'
local attacktype = 1
local delays = false
local play = true
local targetted = nil
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local doe = 0
local Create = LoadLibrary("RbxUtility").Create
Humanoid.WalkSpeed = 8
local m = Create("Model"){
    Parent = Character,
    Name = "WeaponModel",
}

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
    

ShadowHead = New("Part",Character,"ShadowHead",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Size = Vector3.new(1.20000005, 0.600000024, 1),CFrame = CFrame.new(68.5999985, 0.700013041, 9.89999962, 1, 0, 0, 0, 1, 0, 0, 0, 1),Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",ShadowHead,"Mesh",{Scale = Vector3.new(1.25999999, 1.5, 1.25999999),})
Weld = New("Weld",ShadowHead,"mot",{Part0 = ShadowHead,Part1 = Character.Head,C1 = CFrame.new(0, 0.200000048, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})

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
Partss = New("Part",m,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.200000003, 0.221472204, 0.221472189),CFrame = CFrame.new(3.47526526, 1.10428262, -23.2953568, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
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
for _,v in pairs(Character:children()) do
if v:IsA("Accessory") then
v:Remove()
end
Handle = New("Part",m,"Handle",{CanCollide = false,BrickColor = BrickColor.new("Really black"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-27.3000507, 4.79990387, 28.10005, 4.49431016e-21, -6.79974523e-22, -1, 4.72251821e-22, 1, -6.79974523e-22, 1, -4.72251821e-22, 4.49431016e-21),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle,"Mesh",{Offset = Vector3.new(0, 0.100000001, 0),MeshId = "http://www.roblox.com/asset/?id=62246019",MeshType = Enum.MeshType.FileMesh,})
Decal = New("Decal",Handle,"Decal",{Face = Enum.NormalId.Top,Texture = "http://www.roblox.com/asset/?id=146022204",})
mot = New("Motor",Handle,"mot",{Part0 = Handle,Part1 = Head,C0 = CFrame.new(0, 0, 0, 4.49431016e-21, 4.72251821e-22, 1, -6.79974523e-22, 1, -4.72251821e-22, -1, -6.79974523e-22, 4.49431016e-21),C1 = CFrame.new(-0.100000381, 0.0999999046, 0.200000763, 4.49431016e-21, 4.72251821e-22, 1, -6.79974523e-22, 1, -4.72251821e-22, -1, -6.79974523e-22, 4.49431016e-21),})
Handle1 = New("Part",m,"Handle1",{CanCollide = false,BrickColor = BrickColor.new("Bright red"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-27.3000507, 4.79990387, 28.10005, 4.49431016e-21, -6.79974523e-22, -1, 4.72251821e-22, 1, -6.79974523e-22, 1, -4.72251821e-22, 4.49431016e-21),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Offset = Vector3.new(0, 0.100000001, 0),Scale = Vector3.new(0.949999988, 0.949999988, 0.949999988),MeshId = "http://www.roblox.com/asset/?id=62246019",MeshType = Enum.MeshType.FileMesh,})
mot = New("Motor",Handle1,"mot",{Part0 = Handle1,Part1 = Head,C0 = CFrame.new(0, 0, 0, 4.49431016e-21, 4.72251821e-22, 1, -6.79974523e-22, 1, -4.72251821e-22, -1, -6.79974523e-22, 4.49431016e-21),C1 = CFrame.new(-0.100000381, 0.0999999046, 0.200000763, 4.49431016e-21, 4.72251821e-22, 1, -6.79974523e-22, 1, -4.72251821e-22, -1, -6.79974523e-22, 4.49431016e-21),})
end


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
blo.Material = "SmoothPlastic"
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
            asd.Texture = "http://www.roblox.com/asset/?ID=771221224"
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
                    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=206082273", c.Torso, 1.2, .8)
                    coroutine.wrap(function()
                    wait(.2)
                    asd.Enabled = false
                    wait(2)
                    asd:Remove()
                    end)()
                       else
        CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=240429289", c.Torso, 1.5, math.random(1,1.3))       
        Effects.Sphere.Create(BrickColor.new("Bright red"), c.Torso.CFrame, 30, 30, 30, .5, .5, .5, 0.04)

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
tecks2.Font = "Fantasy"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(.6,0,0)
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
local tecks3 = Instance.new("TextLabel",naeeym2)
tecks3.BackgroundTransparency = 1
tecks3.BorderSizePixel = 0
tecks3.Text = ""
tecks3.Font = "Fantasy"
tecks3.TextSize = 30
tecks3.TextStrokeTransparency = 0
tecks3.TextColor3 = Color3.new(.6,0,0)
tecks3.TextStrokeColor3 = Color3.new(0,0,0)
tecks3.Size = UDim2.new(1,0,0.5,0)
for i = 1,string.len(text),1 do
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=565939471", Character, .6, .8)
tecks2.Text = string.sub(text,1,i)
tecks3.Text = string.sub(text,1,i)
wait(0.01)
end
wait(2)
for i = 1, 50 do
swait()
tecks2.Position = tecks2.Position - UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
tecks2.Rotation = tecks2.Rotation - .8
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.Position = tecks2.Position - UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
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
imgl.Image = "rbxassetid://711463989"
imgl.BackgroundTransparency = 1
imgl.ImageColor3 = Color3.new(.9,0,0)
img2 = Instance.new("ImageLabel",abss)
img2.Position = UDim2.new(0,0,0,0)
img2.Size = UDim2.new(1,0,1,0)
img2.Image = "rbxassetid://711463989"
img2.BackgroundTransparency = 1
img2.ImageColor3 = Color3.new(.9,0,0)


function attackone()
    attack = true
    Humanoid.WalkSpeed = 0
    if targetted.Name ~= "CKbackup" then
            local partasdeff = Instance.new("ParticleEmitter",targetted.Torso)
            partasdeff.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.5, 0, 0))
            partasdeff.LightEmission = .1
            partasdeff.Size = NumberSequence.new(0.2)
            partasdeff.Texture = "http://www.roblox.com/asset/?ID=771221224"
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
    Effects.Block.Create(BrickColor.new("Bright red"), Partss.CFrame, 2, 2, 2, 0.9, 0.9, 0.9, 0.05)
    Effects.Block.Create(BrickColor.new("Deep orange"), Partss.CFrame, 2, 2, 2, 0.5, 0.5, 0.5, 0.05)
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=136523485", Character, 1, .5)
    dmg(targetted)
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

function hedshoot()
    attack = true

    --local GGyro = Instance.new("BodyPosition")
    local grab = nil
    for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 10)) do
        if v:FindFirstChild('Torso') then
            Grabbed = true
                CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=260430060", v.Torso, 1, .8)
            grab = v
        end
    end
    Effects.Wave.Create(BrickColor.new("White"), RootPart.CFrame * CFrame.Angles(0,math.rad(90),math.rad(90)), .5, .5, .5, 1, .2, 1, 0.07)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=200632211", RootPart, 1.5, .5)
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
            partasdeff.Texture = "http://www.roblox.com/asset/?ID=771221224"
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
    chatfunc("Too easy...")
    elseif sel == 2 then    
    chatfunc("Die in hell!")
    elseif sel == 3 then
    chatfunc("Take this, idiot!")
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
    Effects.Block.Create(BrickColor.new("Bright red"), Partss.CFrame, 2, 2, 2, 0.9, 0.9, 0.9, 0.05)
    Effects.Block.Create(BrickColor.new("Deep orange"), Partss.CFrame, 2, 2, 2, 0.5, 0.5, 0.5, 0.05)
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=136523485", Character, 1, .5)
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
chatfunc("I'm so silly...")
elseif sel == 2 then    
chatfunc("What am i doing...")
elseif sel == 3 then
chatfunc("I can't...")
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
    Humanoid.WalkSpeed = 8

end
function moarblood()
    attack = true
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=743521656", Character, 1, .8)
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
                CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=260430060", v.Head, 1, .8)
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
    chatfunc("My turn.")
    elseif sel == 2 then    
    chatfunc("You the next!")
    elseif sel == 3 then
    chatfunc("Hope you burn in hell!")
    end
            local partasdeff = Instance.new("ParticleEmitter",targetted.Head)
            partasdeff.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.5, 0, 0))
            partasdeff.LightEmission = .1
            partasdeff.Size = NumberSequence.new(0.2)
            partasdeff.Texture = "http://www.roblox.com/asset/?ID=771221224"
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
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=206082273", grab.Head, .8, .8)
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=206082327", grab.Head, 1, .7)
    
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

function painlessrain()
attack = true
    Humanoid.WalkSpeed = 0
   local ref1 = New("Part",m,"ref",{Transparency = 1,Size = Vector3.new(.2,.2,.2),CFrame = Torso.CFrame,Anchored = true,CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})

    coroutine.wrap(function()
    for i = 0, 4 do
    wait(.2)
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=199145095", RootPart, 1, 1.3)
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
    for i = 0, 3 do
    Effects.Block.Create(BrickColor.new("Bright red"), Partss.CFrame, 2, 2, 2, 0.9, 0.9, 0.9, 0.05)
    Effects.Block.Create(BrickColor.new("Deep orange"), Partss.CFrame, 2, 2, 2, 0.5, 0.5, 0.5, 0.05)
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=136523485", Character, 1, .5)
    for i = 0, .5, 0.1 do
        swait()
        PlayAnimationFromTable({
         CFrame.new(0.160087422, -3.66470256e-23, -0.0753137618, 0.15316838, 2.95750466e-22, 0.988200247, 9.50818972e-23, 1, -3.14019425e-22, -0.988200247, 1.42057819e-22, 0.15316838) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.181723118, 1.42154801, -0.0812263489, 0.0422911495, -0.473342478, -0.879862845, 0.0912349299, 0.878800809, -0.468385875, 0.994931221, -0.0604656339, 0.0803508535) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.46630716, 1.08524323, -0.0336530581, 0.00764143467, -0.0426861309, 0.999059498, 0.0445286781, -0.998082876, -0.0429849848, 0.998979032, 0.0448152684, -0.0057259798) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.53188026, 0.0735908896, 2.69562906e-06, 0.978447855, 0.206495479, 2.48849392e-06, -0.206495419, 0.978447556, -1.05270137e-05, -4.61935997e-06, 9.78633761e-06, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.659685254, -2.0274992, -0.0100700259, 0.00885757804, -0.161218897, -0.986879349, 0.00904085487, 0.986890197, -0.161139548, 0.999920309, -0.00749491528, 0.0101990253) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.566697419, -2.04759264, -0.0995131433, 0.988195002, 0.078684561, 0.131453067, -0.0635149851, 0.991233289, -0.115855575, -0.139416695, 0.106138662, 0.984529436) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .3, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0112046078, -1.63744116, -0.318734497, -0.0172122065, 2.46167183e-05, -0.999852002, 0.999850631, -0.00159030408, -0.0172121339, -0.00159040466, -0.999998927, 2.57790089e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
    end
    for i = 0, .5, 0.1 do
        swait()
        PlayAnimationFromTable({
         CFrame.new(0.160091802, -3.66497677e-23, -0.0753167868, 0.153125972, 2.95760942e-22, 0.988206744, 9.50910858e-23, 1, -3.14025256e-22, -0.988206744, 1.42055005e-22, 0.153125986) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.181723118, 1.42154801, -0.0812263489, 0.0422911495, -0.473342478, -0.879862845, 0.0912349299, 0.878800809, -0.468385875, 0.994931221, -0.0604656339, 0.0803508535) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.46608233, 1.280774, -0.0335922651, 0.00761340559, -0.0420075022, 0.999088407, 0.0443810038, -0.998118579, -0.0423049256, 0.998985708, 0.044662632, -0.00573477149) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.53188074, 0.0735950321, 2.69606994e-06, 0.978446901, 0.206499115, 2.48849392e-06, -0.2064991, 0.978446841, -1.05276868e-05, -4.61935997e-06, 9.78447497e-06, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.6596874, -2.0274992, -0.0100709619, 0.00881013274, -0.161221251, -0.986878991, 0.00903601572, 0.986890376, -0.161142424, 0.999920428, -0.0074977763, 0.0101515204) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.56669867, -2.04759455, -0.0995163321, 0.988194227, 0.0786855519, 0.131456956, -0.0635150596, 0.991232872, -0.115859069, -0.139420897, 0.106141761, 0.984528303) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .3, false)
        moter.C0 = clerp(moter.C0, CFrame.new(0.0112083405, -1.63769615, -0.31873402, -0.0172121376, -2.89082527e-06, -0.999851882, 0.999851942, 4.58210707e-07, -0.0172121413, 5.06639481e-07, -1.00000012, 2.89082527e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
    end
    end
attack = false
Humanoid.WalkSpeed = 8
        wait(.4)
    for i = 0, 8 do
        wait(.2)
        mdmg(ref1, 3)
        CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=192410089", Character, 1.5, .7)     
        ref1.Position = Mouse.hit.p
        ref1.CFrame = ref1.CFrame * CFrame.new(math.random(-.5,.5),0,math.random(-.5,.5))
        Effects.Cylinder.Create(BrickColor.new("Deep orange"), ref1.CFrame, .5, 9999, .5, 0.5, 0, 0.5, 0.07)
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
if Mouse.Target.Parent ~= Character and Mouse.Target.Parent.Parent ~= Character and Mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil then
TargetSelect(Mouse.Target.Parent)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=743521450", Character, 1, .8)
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
kkk.Pitch = .6
kkk.PlaybackSpeed = .6
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
    hedshoot()
    elseif k == 'x' and attack == false and targetted ~= nil then
    moarblood()
    elseif k == 'c' and attack == false then
    painlessrain()
    elseif k == 'g' and delays == false then
    delays = true
    chatfunc("Hey Sugarie...")
    wait(2)
    chatfunc("I want to tell you...")
    wait(3)
    chatfunc("Be my...")
    wait(1)
    chatfunc("Sacri-")
    wait(.5)
    chatfunc("I mean...")
    wait(1)
    chatfunc("Friend, Okay...?")
    delays = false
    elseif k == 'm' and play == true and delays == false then
    ofmoosic()
    elseif k == 'm' and play == false and delays == false then
    onmoosic()
    end
end)

kkk = Instance.new("Sound",Character)
kkk.Volume = 1.5
kkk.PlaybackSpeed = 1
kkk.Pitch = .6
kkk.SoundId = "rbxassetid://583415095"
kkk:Play()
kkk.Name = "a"
kkk.Looped = true


coroutine.wrap(function()
while true do
swait()
    for i, v in pairs(Character:WaitForChild('WeaponModel'):GetChildren()) do
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
         CFrame.new(-0.0575585738, 1.52553558, -0.218724757, 0.985934377, -0.143356442, -0.0859283879, 0.166522771, 0.886584163, 0.431554198, 0.0143168001, -0.439792335, 0.897985697) * CFrame.new(0, -.05- .05 * math.cos((sine) / 55), 0- .05 * math.cos((sine) / 55)) * CFrame.Angles(math.rad(0 - 5 * math.cos((sine) / 55)), 0, 0), 
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
         CFrame.new(1.54809988, 0.041232653, 1.35168499e-08, 0.996376455, -0.0850530341, -3.41060513e-13, 0.0850530341, 0.996376455, 4.47034836e-07, 2.78823862e-08, 3.26637689e-07, 1.00000024) * CFrame.new(0, 0, 0- .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 + 30 * math.cos((sine) / 10)), 0, 0), 
         CFrame.new(-1.53598976, 0.0413191095, -1.86092848e-06, 0.995650649, 0.0931596532, -2.61508148e-07, -0.0931649953, 0.995651186, -1.00695124e-05, -7.49969331e-07, 1.08217946e-05, 1.00000024) * CFrame.new(0, 0, 0+ .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 - 30 * math.cos((sine) / 10)), 0, 0), 
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
module[2] = {"Giga Drill Breaker",function()
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
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
RW,LW=Instance.new("Weld"),Instance.new("Weld") 
RH,LH=Instance.new("Weld"),Instance.new("Weld") 
cam=workspace.CurrentCamera
local attack=false
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
fp.Material="SmoothPlastic"
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
 
function weld(parent,part1,part0,c0,c1)
local weld = it("Weld") 
weld.Parent = parent
weld.Part0 = part0 
weld.Part1 = part1 
weld.C0 = c0
weld.C1 = c1
return weld
end
 
if Character:findFirstChild("Shades",true) ~= nil then 
Character:findFirstChild("Shades",true).Parent = nil 
end 
 
local scale=1.5
local ShadeCenter=it("Part")
ShadeCenter.CanCollide=false
ShadeCenter.CFrame=Torso.CFrame
ShadeCenter.Transparency=1
ShadeCenter.Parent=Character
ShadeCenter.Name="Shades"
ShadeCenter.formFactor=3
ShadeCenter.Size=vt()
ShadeCenter.TopSurface=0
ShadeCenter.BottomSurface=0
local shadeweld=weld(ShadeCenter,ShadeCenter,Head,cf(0,0.4,-0.65),cf(0,0,0))
--[[scale=3
shadeweld.Part0=Torso
shadeweld.C0=cf(1.2,0,-0.7)*euler(0,-1,0.5)]]
local Shade1=it("Part")
Shade1.CanCollide=false
Shade1.CFrame=Torso.CFrame
Shade1.Reflectance=0.4
Shade1.Transparency=0.05
Shade1.BrickColor=BrickColor.new("New Yeller")
Shade1.Parent=ShadeCenter
Shade1.formFactor=3
Shade1.Size=vt()
Shade1.TopSurface=0
Shade1.BottomSurface=0
Shade1Mesh=it("SpecialMesh",Shade1)
Shade1Mesh.MeshType="Wedge"
Shade1Mesh.Scale=Vector3.new(0.075*scale,2*scale,2.8*scale)
local w1=weld(Shade1,Shade1,ShadeCenter,cf(-1*0.3*scale,0,0),angles(math.rad(-45),math.rad(90*-1),0))
coroutine.resume(coroutine.create(function(Mesh,Weld)
while true do
wait()
Mesh.Scale=Vector3.new(0.075*scale,2*scale,2.8*scale)
Weld.C0=cf(-1*0.3*scale,0,0)
Weld.C1=angles(math.rad(-45),math.rad(90*-1),0)
end
end),Shade1Mesh,w1)
local Shade2=it("Part")
Shade2.CanCollide=false
Shade2.CFrame=Torso.CFrame
Shade2.Reflectance=0.4
Shade2.Transparency=0.05
Shade2.BrickColor=BrickColor.new("New Yeller")
Shade2.Parent=ShadeCenter
Shade2.formFactor=3
Shade2.Size=vt()
Shade2.TopSurface=0
Shade2.BottomSurface=0
Shade2Mesh=it("SpecialMesh",Shade2)
Shade2Mesh.MeshType="Wedge"
Shade2Mesh.Scale=Vector3.new(0.075*scale,2*scale,2.8*scale)
local w2=weld(Shade2,Shade2,ShadeCenter,cf(1*0.3*scale,0,0),angles(math.rad(-45),math.rad(90*1),0))
coroutine.resume(coroutine.create(function(Mesh,Weld)
while true do
wait()
Mesh.Scale=Vector3.new(0.075*scale,2*scale,2.8*scale)
Weld.C0=cf(1*0.3*scale,0,0)
Weld.C1=angles(math.rad(-45),math.rad(90*1),0)
end
end),Shade2Mesh,w2)
 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "CERTAIN KILL" 
script.Parent = Tool 
end 
Bin = Tool
 
game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id=171070086")
function GIGADRILLBREAKER()
cam.CameraType="Scriptable"
local partpos=part(3,Character,0,1,BrickColor.new("Black"),"PartPos",vt(0.5,0.5,0.5))
partpos.Anchored=true
partpos.CFrame=Torso.CFrame
game:GetService("Debris"):AddItem(partpos,30)
local sound=Instance.new("Sound")
sound.Parent=partpos
sound.Volume=1
sound.SoundId="http://www.roblox.com/asset/?id=188026583"
--140059603
local sound2=Instance.new("Sound")
sound2.Parent=Torso
sound2.Volume=1
sound2.SoundId="http://www.roblox.com/asset/?id=188026583"
local sound3=Instance.new("Sound")
sound3.Parent=workspace.CurrentCamera
sound3.Volume=1
sound3.SoundId="http://www.roblox.com/asset/?id=188026583"
sound:Play()
sound2:Play()
sound3:Play()
bodypos=Instance.new("BodyPosition")
bodypos.P=4000
bodypos.maxForce=Vector3.new(5000000,50000000,5000000)*5000
bodypos.position=Torso.Position+Vector3.new(0,0,0)
bodypos.Parent=Torso
local bodygy=Instance.new("BodyGyro") --gg nubs
bodygy.P=15000
bodygy.D=100
bodygy.maxTorque=Vector3.new(500000000,500000000,500000000)
bodygy.cframe=RootPart.CFrame*euler(0,0,0)
bodygy.Parent=RootPart
RSH=Torso["Right Shoulder"] 
LSH=Torso["Left Shoulder"] 
RHP=Torso["Right Hip"] 
LHP=Torso["Left Hip"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
RHP.Parent=nil 
LHP.Parent=nil 
-- 
RW.Part0=Torso 
RW.C0=cf(1.5,0.5,0)
RW.C1=cf(0,0.5,0) 
RW.Part1=RightArm
RW.Parent=Torso
-- 
LW.Part0=Torso 
LW.C0=cf(-1.5,0.5,0)
LW.C1=cf(0,0.5,0) 
LW.Part1=LeftArm
LW.Parent=Torso
--_G.L = LW 
--
RH.Part0=Torso 
RH.C0=cf(0.5,-1,0)
RH.C1=cf(0,1,0) 
RH.Part1=RightLeg
RH.Parent=Torso
-- 
LH.Part0=Torso 
LH.C0=cf(-0.5,-1,0)
LH.C1=cf(0,1,0) 
LH.Part1=LeftLeg
LH.Parent=Torso
--_G.L = LW 
--
wait(.2)
shadeweld.Part0=RootPart
shadeweld.C0=cf(0,1.9,-0.65)*euler(0,0,0)
numb=2
for i=0,1,0.1 do
wait()
--cam.CoordinateFrame=Torso.CFrame
cam.CoordinateFrame=ShadeCenter.CFrame*euler(0,3.14,0)*cf(0,0,5)
scale=1.5+1*i
--shadeweld.C0=cf(0,0.4+2*i,-0.65)*euler(0,0,-0.1*i)
shadeweld.C0=cf(0,1.9+8*i*numb,-0.65)*euler(0,0,-0.2*i)
Torso.Neck.C0=necko
RootJoint.C0=RootCF
RW.C0=cf(1.5,0.5,0)
LW.C0=cf(-1.5,0.5,0)
RH.C0=cf(0.5,-1,0)
LH.C0=cf(-0.5,-1,0)
numb=numb-0.1
end
shadeweld.Part0=RightArm
shadeweld.C0=cf(0,6,0)*euler(3.14,0,-0.2)
for i=0,1,0.1 do
wait()
cam.CoordinateFrame=ShadeCenter.CFrame*euler(0,0,0)*cf(0,0,5)
scale=2.5+0.5*i
--shadeweld.C0=cf(0,0.4+2*i,-0.65)*euler(0,0,-0.1*i)
--shadeweld.C0=cf(0,1.9+2-2*i,-0.65)*euler(0,0,-0.2)
shadeweld.C0=euler(-3.14*i,0,0)*cf(-1.5*i,8-7.5*i,0)*euler(3.14,0,-0.2)
Torso.Neck.C0=necko*euler(0,0,-0.2*i)
RootJoint.C0=RootCF*euler(0,0,0.2*i)
RW.C0=cf(1.5,0.5,0)*euler(3*i,0,0.2*i)
LW.C0=cf(-1.5,0.5,0)
RH.C0=cf(0.5,-1,0)
LH.C0=cf(-0.5,-1,0)
end
for i=0,1,0.1 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(-0.1*i,3.14-0.1*i,0)*cf(0,0,9+2*i)
shadeweld.C0=euler(-3.14,0,0)*cf(-1.5,0.5,0)*euler(3.14,0,-0.2)
Torso.Neck.C0=necko*euler(0,0,-0.2+0.3*i)
RootJoint.C0=RootCF*euler(0.1*i,0,0.2-0.3*i)
RW.C0=cf(1.5,0.5,0)*euler(3-1.5*i,0,0.2+0.2*i)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.3*i)
RH.C0=cf(0.5,-1,0)*euler(0.2*i,0,0.2*i)
LH.C0=cf(-0.5,-1,0)*euler(-0.1*i,0,-0.3*i)
end
n=2
for i=0,1,0.1 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(-0.1,3.04,0)*cf(0,0,7)
Torso.Neck.C0=necko*euler(0,0,0.1+0.1*i*n)
RootJoint.C0=RootCF*euler(0.1+0.1*i*n,0,-0.1-0.1*i*n)
RW.C0=cf(1.5,0.5,0)*euler(1.5-0.2*i*n,0,0.4+0.2*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(0.2*i*n,0,-0.3-0.1*i*n)
RH.C0=cf(0.5,-1,0)*euler(0.2+0.1*i*n,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(-0.1-0.1*i*n,0,-0.3)
n=n-0.1
end
for i=0,1,0.1 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.2,3,0)*cf(0,0,5)
Torso.Neck.C0=necko*euler(0,0,0.2+0.7*i)
RootJoint.C0=RootCF*euler(0.2,0,-0.2-1*i)
RW.C0=cf(1.5,0.5,0)*euler(1.3,0,0.6+2*i)
LW.C0=cf(-1.5,0.5,0)*euler(0.2+1*i,0,-0.4-0.6*i)
RH.C0=cf(0.5,-1,0)*euler(0.3-0.2*i,0,0.2-0.3*i)
LH.C0=cf(-0.5,-1,0)*euler(-0.2,0,-0.3)
end
n=2
for i=0,1,0.1 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.2,3,0)*cf(0,0,5)
Torso.Neck.C0=necko*euler(0,0,0.9-0.4*i*n)
RootJoint.C0=RootCF*euler(0.2,0,-1.2+0.7*i*n)
RW.C0=cf(1.5,0.5,0)*euler(1.3+0.4*i*n,0,2.6-0.4*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(1.2,0,-1-1*i*n)
RH.C0=cf(0.5,-1,0)*euler(0.1,0,-0.1+0.2*i*n)
LH.C0=cf(-0.5,-1,0)*euler(-0.2+0.1*i*n,0,-0.3+0.2*i*n)
n=n-0.1
end
for i=0,1,0.1 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.2,3,0)*cf(0,0,5)
Torso.Neck.C0=necko*euler(0,0,0.5-0.1*i)
RootJoint.C0=RootCF*euler(0.2-0.1*i,0.2*i,-0.5+0.1*i)
RW.C0=cf(1.5,0.5,0)*euler(1.7+2.7*i,-1.57*i,2.2-2*i)
LW.C0=cf(-1.5,0.5,0)*euler(1.2,0,-2+1*i)
RH.C0=cf(0.5,-1,0)*euler(0.1,0,0.1)
LH.C0=cf(-0.5,-1,0)*euler(-0.1,0,-0.1-0.2*i)
end
n=2
for i=0,1,0.1 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.2,3,0)*cf(0,0,5+1*i)
Torso.Neck.C0=necko*euler(-0.1*i*n,0,0.4-0.2*i*n)
RootJoint.C0=RootCF*euler(0.1+0.3*i*n,0.2+0.2*i*n,-0.4+0.2*i*n)
RW.C0=cf(1.5,0.5,0)*euler(4.4-1*i*n,-1.57,0.2)
LW.C0=cf(-1.5,0.5,0)*euler(1.2,0,-1)
RH.C0=cf(0.5,-1,0)*euler(0.1,0,0.1)
LH.C0=cf(-0.5,-1,0)*euler(-0.1+0.5*i*n,0,-0.3)
n=n-0.1
end
for i=0,1,0.2 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.2-0.1*i,3-0.1*i,0)*cf(0,0,6+10*i)
Torso.Neck.C0=necko*euler(-0.1,0,0.2)
RootJoint.C0=RootCF*euler(0.4+0.2*i,0.4,-0.2)
RW.C0=cf(1.5,0.5,0)*euler(3.4-2.4*i,-1.57,0.2)
LW.C0=cf(-1.5,0.5,0)*euler(1.2,0,-1-0.2*i)
RH.C0=cf(0.5,-1,0)*euler(0.1-0.3*i,0,0.1+0.2*i)
LH.C0=cf(-0.5,-1,0)*euler(0.4+0.2*i,0,-0.3)
end
print("DO THROW")
local ref=part(3,Character,0,1,BrickColor.new("White"),"Reference",vt(0.5,0.5,0.5))
ref.Anchored=true
ref.CFrame=RootPart.CFrame*cf(0,0,-200)
game:GetService("Debris"):AddItem(ref,7)
canhit=false
local target=nil
bb=Instance.new("BodyPosition")
local gudbai=Instance.new("BodyGyro")
con1=ShadeCenter.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid")~=nil and hit.Parent:findFirstChild("Torso")~=nil and hit.Parent~=Character then
if canhit==false then
canhit=true
tors=hit.Parent.Torso
print(hit.Parent)
target=hit.Parent
bb.Parent=tors
bb.maxForce=Vector3.new(50000000000000000,50000000000000000,50000000000000000)
bb.position=ref.Position
end
elseif hit.Name~="Base" and canhit==false and hit.Name~="Reference" then
--hit.Anchored=false
--hit:BreakJoints()
--hit.Velocity=Vector3.new(math.random(-100,100),math.random(-100,100),math.random(-100,100))
end
end)
shadeweld.Part0=nil
--[[local bodypos2=Instance.new("BodyPosition")
bodypos2.P=4000
bodypos2.maxForce=Vector3.new(5000000,50000000,5000000)*5000
bodypos2.position=ref.Position
bodypos2.Parent=ShadeCenter]]
prop=Instance.new("RocketPropulsion")
prop.MaxSpeed=5000
prop.CartoonFactor=0
prop.MaxThrust=10000
prop.Parent=ShadeCenter
prop.Target=ref
prop.ThrustD=1.5
prop.TurnD=0
prop.TurnP=0
prop:Fire()
local gg=Instance.new("BodyGyro") --gg nubs
gg.P=15000
gg.D=100
gg.maxTorque=Vector3.new(500000000,500000000,500000000)
gg.cframe=RootPart.CFrame*euler(0,1.57,0)
gg.Parent=ShadeCenter
coroutine.resume(coroutine.create(function(Part,Gyro)
while Gyro.Parent~=nil do
wait()
Gyro.cframe=Gyro.cframe*euler(0,0,-1)
end
end),ShadeCenter,gg)
for i=0,1,0.2 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.1-0.1*i,2.9+0.1*i,0)*cf(0,0,16+5*i)
Torso.Neck.C0=necko*euler(-0.1,0,0.2)
RootJoint.C0=RootCF*cf(0,0,-0.5*i)*euler(0.6+0.8*i,0.4+0.4*i,-0.2-0.2*i)
RootJoint.C1=RootCF*euler(0.7*i,0,-0.2*i)
RW.C0=cf(1.5,0.5,0)*euler(1,-1.57,0.2)
RW.C1=cf(0,0.5,0)*euler(0.5*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.2,0,-1.2-0.2*i)
RH.C0=cf(0.5,-1,0)*euler(0.1-0.3,0,0.1+0.2)
LH.C0=cf(-0.5,-1,0)*euler(0.6+0.2*i,0,-0.3-0.1*i)
end
coroutine.resume(coroutine.create(function(Camera)
print(canhit)
print(attack)
while canhit==false and attack==true do
wait()
Camera.CoordinateFrame=ShadeCenter.CFrame*cf(0,0,7)
--Camera.CoordinateFrame=cf(ShadeCenter.Position)*cf(0,0,5)
end
for i=0,1,0.1 do
wait()
if tors~=nil then
Camera.CoordinateFrame=tors.CFrame*cf(0,0,7)
end
end
end),cam)
wait(1.5)
if target~=nil then
tors=target.Torso
partpos.CFrame=tors.CFrame
ShadesClone1=ShadeCenter:Clone()
ShadesClone1.Parent=workspace
local weld1=weld(ShadesClone1,ShadesClone1,tors,cf(0,0,0),cf(0,0,0))
ShadesClone2=ShadeCenter:Clone()
ShadesClone2.Parent=workspace
local weld2=weld(ShadesClone2,ShadesClone2,tors,cf(0,0,0),cf(0,0,0))
--[[bb2=Instance.new("BodyPosition")
bb2.Parent=ShadesClone
bb2.maxForce=Vector3.new(50000000000000000,50000000000000000,50000000000000000)
bb2.position=tors.Position+vt(math.random(-2,2),math.random(-2,2),math.random(-2,2))
coroutine.resume(coroutine.create(function(Part,Gyro)
end),ShadesClone,bb2)
local gg2=Instance.new("BodyGyro")
gg2.P=15000
gg2.D=100
gg2.maxTorque=Vector3.new(500000000,500000000,500000000)
gg2.cframe=tors.CFrame*euler(0,1.57,0)
gg2.Parent=ShadesClone
coroutine.resume(coroutine.create(function(Part,Gyro)
while Gyro.Parent~=nil do
wait()
print(Gyro.cframe)
Gyro.cframe=Gyro.cframe*euler(0,0,-0.5)
end
end),ShadesClone,gg2)]]
Shade1.Transparency=1
Shade2.Transparency=1
shadeweld.Part0=Head
shadeweld.C0=cf(0,0.4,-0.65)
prop.Parent=nil
gg.Parent=nil
scale=1.5
gudbai.P=15000
gudbai.D=100
gudbai.maxTorque=Vector3.new(500000000,500000000,500000000)
gudbai.cframe=cf(0,0,0)
gudbai.Parent=tors
camCF=tors.CFrame
for i=0,1,0.02 do
wait()
cam.CoordinateFrame=camCF*euler(-0.2*i,0,0)*cf(0,0,7)
weld1.C0=euler(0,0,0)*cf(20*i,0,0)
weld1.C1=euler(0,0,7*i)
weld2.C0=euler(0,0,0)*cf(-20*i,0,0)
weld2.C1=euler(0,0,7*i)
gudbai.cframe=cf(0,0,0)
Torso.Neck.C0=necko*euler(-0.1+0.1*i,0,0.2-0.2*i)
RootJoint.C0=RootCF*cf(0,0,-0.5+0.5*i)*euler(1.4-1.4*i,0.8-0.8*i,-0.4+0.4*i)
RootJoint.C1=RootCF*euler(0.7-0.7*i,0,-0.2+0.2*i)
RW.C0=cf(1.5,0.5,0)*euler(1-1*i,-1.57+1.57*i,0.2-0.2*i)
RW.C1=cf(0,0.5,0)*euler(0.5-0.5*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.2-1.2*i,0,-1.4+1.4*i)
RH.C0=cf(0.5,-1,0)*euler(-0.2+0.2*i,0,0.4-0.4*i)
LH.C0=cf(-0.5,-1,0)*euler(0.8-0.8*i,0,-0.4+0.4*i)
end
for i=0,1,0.02 do
wait()
cam.CoordinateFrame=camCF*euler(-0.2+0.2*i,0,0)*cf(0,0,7+2*i)
weld1.C0=euler(0,0,0)*cf(20-15*i,0,0)
weld1.C1=euler(0,0,7+5*i)
weld2.C0=euler(0,0,0)*cf(-20+15*i,0,0)
weld2.C1=euler(0,0,7+5*i)
gudbai.cframe=cf(0,0,0)
end
for i=0,6.5,0.1 do
wait() 
cam.CoordinateFrame=camCF*euler(0,1*i,0)*cf(0,0,9)
local prt=part(3,workspace,0,0,BrickColor.new("White"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=ShadesClone1.CFrame
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(.25,1,.25))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.05 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(0,0.8,0)
end
Part.Parent=nil
end),prt,msh)
weld1.C0=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(math.random(-300,300)/100,math.random(-300,300)/100,math.random(-300,300)/100)
weld2.C0=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(math.random(-300,300)/100,math.random(-300,300)/100,math.random(-300,300)/100)
gudbai.cframe=cf(0,0,0)
end
wait()
weld1.C0=cf(1.2,0,-0.7)*euler(0,-1,0.5)
--weld1.C0=cf(2,1,0)*euler(0,0,1.3)
--weld1.C0=cf(-2,0,0)*euler(0,1.57,0)
weld2.C0=cf(-1.2,0,-0.7)*euler(0,-1,-0.5)
gudbai.P=15000
gudbai.D=100
gudbai.maxTorque=Vector3.new(500000000,500000000,500000000)
gudbai.cframe=cf(0,0,0)
gudbai.Parent=tors
wait(1)
partpos.CFrame=tors.CFrame
--cam.CameraType="Custom"
for i=0,1,0.05 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(-0.1*i,3.14,0)*cf(0,0,9+4*i)
Torso.Neck.C0=necko*euler(0.2*i,0,0)
RootJoint.C0=RootCF*cf(0,0,-0.3*i)*euler(0.3*i,0,0)
RootJoint.C1=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(2.8*i,0,0.2*i)
LW.C0=cf(-1.5,0.5,0)*euler(2.8*i,0,-0.2*i)
RH.C0=cf(0.5,-1+0.2*i,-0.1*i)*euler(0.1*i,0,0.2*i)
LH.C0=cf(-0.5,-1+0.2*i,-0.1*i)*euler(0.1*i,0,-0.2*i)
end
n=2
for i=0,1,0.05 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(-0.1+0.2*i,3.14-0.24*i,0)*cf(0,0,13)
Torso.Neck.C0=necko*euler(0.2,0,0)
RootJoint.C0=RootCF*cf(0,0,-0.3)*euler(0.3+0.1*i*n,0,0)
RootJoint.C1=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(2.8+0.1*i*n,0,0.2-0.3*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(2.8+0.1*i*n,0,-0.2+0.3*i*n)
RH.C0=cf(0.5,-1+0.2,-0.1)*euler(0.1+0.1*i*n,0,0.2)
LH.C0=cf(-0.5,-1+0.2,-0.1)*euler(0.1+0.1*i*n,0,-0.2)
n=n-0.1
end
for i=0,1,0.05 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.1,2.9+0.3*i,0)*cf(0,0,13-2*i)
Torso.Neck.C0=necko*euler(0.2-0.3*i,0,0)
RootJoint.C0=RootCF*cf(0,0,-0.3+0.3*i)*euler(0.4-0.5*i,0,0)
RootJoint.C1=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(2.9-3*i,0,-0.1+0.2*i)
LW.C0=cf(-1.5,0.5,0)*euler(2.9,0,0.1-0.3*i)
RH.C0=cf(0.5,-0.8-0.2*i,-0.1+0.1*i)*euler(0.2-0.3*i,0,0.2)
LH.C0=cf(-0.5,-0.8-0.2*i,-0.1+0.1*i)*euler(0.2-0.3*i,0,-0.2)
end
n=2
for i=0,1,0.05 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.1,3.2+0.1*i,0)*cf(0,0,13)
Torso.Neck.C0=necko*euler(-0.1,0,0)
RootJoint.C0=RootCF*cf(0,0,0)*euler(-0.1,0,0)
RootJoint.C1=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.1,0,0.1)
LW.C0=cf(-1.5,0.5-0.2*i*n,0)*euler(2.9+0.1*i*n,0,-0.2-0.1*i*n)
RH.C0=cf(0.5,-1,0)*euler(-0.1,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(-0.1,0,-0.2)
n=n-0.1
end
for i=0,1,0.1 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.1,3.3,0)*cf(0,0,13)
Torso.Neck.C0=necko*euler(-0.1,0,-0.3*i)
RootJoint.C0=RootCF*cf(0,0,0)*euler(-0.1,0,0.3*i)
RootJoint.C1=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.1+3.2*i,0,0.1)
LW.C0=cf(-1.5,0.3+0.2,0)*euler(3-3.2*i,0,-0.3+0.2*i)
RH.C0=cf(0.5,-1,0)*euler(-0.1,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(-0.1,0,-0.2)
end
-- u gon get fuck'd
drill=Instance.new("Model")
drill.Parent=Character
drill.Name="Drill"
local drillp=part(3,drill,0,0,BrickColor.new("Medium stone grey"),"Drill Part",vt(0.5,0.5,0.5))
drillmsh=mesh("SpecialMesh",drillp,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(.5,1,.5))
local drillweld=weld(drillp,drillp,RightArm,cf(0,-1,0)*euler(3.14,0,0),cf(0,0,0))
for i=0,1,0.05 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.1+0.2*i,3.3-0.2*i,0)*cf(0,0,13-3*i)
Torso.Neck.C0=necko*euler(-0.1-0.1*i,0,-0.3)
RootJoint.C0=RootCF*cf(0,0,0)*euler(-0.1,0,0.3)
RootJoint.C1=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(3.1+0.1*i,0,0.1-0.1*i)
LW.C0=cf(-1.5,0.3+0.2,0)*euler(-0.2,0,-0.1)
RH.C0=cf(0.5,-1,0)*euler(-0.1,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(-0.1,0,-0.2)
end
wait(0.5)
for i=0,1,0.1 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.3,3.1,0)*cf(0,0,10-1*i)
drillmsh.Scale=vt(.5,1+8*i,.5)
drillweld.C0=cf(0,-1-7*i,0)*euler(3.14,0,0)
end
wait(0.4)
for i=0,1,0.2 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.3-0.4*i,3.1,0)*cf(0,0,9+7*i)
drillmsh.Scale=vt(.5+6.5*i,9,.5+6.5*i)
drillweld.C0=cf(0,-8,0)*euler(3.14,0,0)
end
local drillpcir=part(3,drill,0,0,BrickColor.new("Medium stone grey"),"Drill Circle",vt(0.5,0.5,0.5))
drillmshc=mesh("CylinderMesh",drillpcir,"","",vt(0,0,0),vt(18,1,18))
local drillweldc=weld(drillpcir,drillpcir,drillp,cf(0,-7,0)*euler(0,0,0),cf(0,0,0))
coroutine.resume(coroutine.create(function(Part)
numb1=-7
numb2=0
numb3=4.7
for i=1,24 do
local drillp2=part(3,drill,0,0,BrickColor.new("Black"),"Drill Part2",vt(0.5,0.5,0.5))
drillmsh2=mesh("BlockMesh",drillp2,"","",vt(0,0,0),vt(1,1,1))
local drillweld2=weld(drillp2,drillp2,Part,euler(0,numb2,0)*cf(numb3,numb1,0),cf(0,0,0))
local drillp3=part(3,drill,0,0,BrickColor.new("Black"),"Drill Part3",vt(0.5,0.5,0.5))
drillmsh3=mesh("BlockMesh",drillp3,"","",vt(0,0,0),vt(1,1,1))
local drillweld3=weld(drillp3,drillp3,Part,euler(0,1.57,0)*euler(0,numb2,0)*cf(numb3,numb1,0),cf(0,0,0))
local drillp4=part(3,drill,0,0,BrickColor.new("Black"),"Drill Part4",vt(0.5,0.5,0.5))
drillmsh4=mesh("BlockMesh",drillp4,"","",vt(0,0,0),vt(1,1,1))
local drillweld4=weld(drillp4,drillp4,Part,euler(0,3.14,0)*euler(0,numb2,0)*cf(numb3,numb1,0),cf(0,0,0))
local drillp5=part(3,drill,0,0,BrickColor.new("Black"),"Drill Part5",vt(0.5,0.5,0.5))
drillmsh5=mesh("BlockMesh",drillp5,"","",vt(0,0,0),vt(1,1,1))
local drillweld5=weld(drillp5,drillp5,Part,euler(0,4.71,0)*euler(0,numb2,0)*cf(numb3,numb1,0),cf(0,0,0))
numb1=numb1+0.6
numb2=numb2+(0.785)/4
numb3=numb3-0.2
wait()
end
end),drillp)
wait(1)
for i=0,1,0.1 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(-0.1-0.4*i,3.1,0)*cf(0,0,16-7*i)
Torso.Neck.C0=necko*euler(-0.2+0.2*i,0,-0.3+0.2*i)
RootJoint.C0=RootCF*cf(0,0,0)*euler(-0.1+0.1*i,0,0.3-0.2*i)
RootJoint.C1=RootCF*euler(0,0,0)
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(3.2-1.5*i,0,0.2-1.2*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2-0.2*i,0,-0.1)
RH.C0=cf(0.5,-1,0)*euler(-0.1+0.1*i,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(-0.1+0.1*i,0,-0.2)
end
for i=0,1,0.02 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(-0.5+0.6*i,3.1-3.7*i,0)*cf(-3*i,0,9+1*i)
Torso.Neck.C0=necko*euler(0,0,-0.1+1.67*i)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,0.1-1.67*i)
RootJoint.C1=RootCF*euler(0,0,0)
RW.C0=cf(1-1.5*i,0.5,-0.5-0.5*i)*euler(1.7-0.2*i,0,-1-0.57*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4,3.14*i,-0.1)
RH.C0=cf(0.5,-1,0)*euler(0,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(0,0,-0.2)
end
Torso.Neck.C0=necko*euler(0,0,1.57)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,0.-1.57)
RootJoint.C1=RootCF*euler(0,0,0)
RW.C0=cf(1-1.5,0.5,-1)*euler(1.5,0,-1.57)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4,3.14,0.1)
RH.C0=cf(0.5,-1,0)*euler(0,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(0,0,-0.2)
doing=true
coroutine.resume(coroutine.create(function(Model,Weld)
i=0
num=0
while Model.Parent~=nil and doing==true do
wait()
Weld.C0=cf(0,-8,0)*euler(3.14,i,0)
i=i+0.5
if i%1==0 then
local prt=part(3,workspace,0,0,BrickColor.new("Cyan"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=RootPart.CFrame
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(num,num,num))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.05 do
wait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(num,num,num)
end
Part.Parent=nil
end),prt,msh)
end
if num<=0.8 then
num=num+0.05
end
end
end),drill,drillweld)
wait(2.5)
bodypos.Parent=nil
for i=1,5,0.05 do
wait()
cam.CoordinateFrame=RootPart.CFrame*euler(0.1,-0.6,0)*cf(-3,0,10)
partpos.CFrame=tors.CFrame
RootPart.CFrame=RootPart.CFrame*cf(0,0,-i)
if i>=4.85 and i<=4.90 then
print("ded")
coroutine.resume(coroutine.create(function()
for i=1,10 do
local prt=part(3,workspace,0,0,BrickColor.new("Black"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=tors.CFrame
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(2,2,2))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.05 do
wait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(1,1,1)
end
Part.Parent=nil
end),prt,msh)
wait()
end
end))
end
end
doing=false
print("end")
bodypos.P=4000
bodypos.maxForce=Vector3.new(5000000,50000000,5000000)*5000
bodypos.position=Torso.Position+Vector3.new(0,0,0)
bodypos.Parent=Torso
cam.CoordinateFrame=RootPart.CFrame*euler(-0.1,3.4,0)*cf(0,0,15)
wait(2)
for i=0,1,0.05 do
wait()
Torso.Neck.C0=necko*euler(0,0,1.57-1.77*i)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,0.-1.57+1.77*i)
RW.C0=cf(1-1.5+1*i,0.5,-1+0.5*i)*euler(1.5+0.4*i,0,-1.57+0.57*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4,3.14-3.14*i,0.1)
RH.C0=cf(0.5,-1,0)*euler(0,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(0,0,-0.2)
end
for _,v in pairs(drill:children()) do
if v.Name~="Drill Part" then
v.Parent=nil
end
end
for i=0,1,0.2 do
wait()
drillmsh.Scale=vt(7-6.5*i,9,7-6.5*i)
Torso.Neck.C0=necko*euler(0,0,-0.2+0.6*i)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,0.2-0.6*i)
RW.C0=cf(1-0.5+1*i,0.5,-0.5+0.5*i)*euler(1.9-1.4*i,0,-1+2*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4,0,0.1-0.2*i)
RH.C0=cf(0.5,-1,0)*euler(0,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(0,0,-0.2)
end
n=2
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*euler(0,0,0.4+0.1*i*n)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,-0.4-0.1*i*n)
RW.C0=cf(1.5,0.5,0)*euler(0.5-0.1*i*n,0,1+0.1*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4,0,-0.1)
RH.C0=cf(0.5,-1,0)*euler(0,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(0,0,-0.2)
n=n-0.2
end
wait(0.2)
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*euler(0.1*i,0,0.5+0.1*i)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,-0.5-0.2*i)
RW.C0=cf(1.5-0.5*i,0.5,0.5*i)*euler(0.4,0,1-0.2*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4,0,-0.1-0.2*i)
RH.C0=cf(0.5,-1,0)*euler(0,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(0,0,-0.2)
drillmsh.Scale=vt(.5,9-8*i,.5)
drillweld.C0=cf(0,-8+7*i,0)*euler(3.14,0,0)
end
n=2
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*euler(0.1+0.1*i*n,0,0.6+0.1*i*n)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,-0.7-0.1*i*n)
RW.C0=cf(1.5-0.5,0.5,0.5)*euler(0.4-0.1*i*n,0,0.8+0.1*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4,0,-0.3-0.1*i*n)
RH.C0=cf(0.5,-1,0)*euler(0,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(0,0,-0.2)
n=n-0.2
end
drill.Parent=nil
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0.2,0.2*i,0.7)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,-0.9)
RW.C0=cf(1.5-0.5+0.5*i,0.5,0.5-0.5*i)*euler(0.3,0,0.9-0.2*i)
LW.C0=cf(-1.5,0.5,0)*euler(-0.4,0,-0.4+0.1*i)
RH.C0=cf(0.5,-1,0)*euler(0,0,0.2)
LH.C0=cf(-0.5,-1,0)*euler(0,0,-0.2)
end
--[[sound:Stop()
sound2:Stop()
sound3:Stop()
DONTLOSEYOURWAAAAAAAY=Instance.new("Sound")
DONTLOSEYOURWAAAAAAAY.Parent=tors
DONTLOSEYOURWAAAAAAAY.Volume=1
DONTLOSEYOURWAAAAAAAY.SoundId="http://www.roblox.com/asset/?id=188026583"
DONTLOSEYOURWAAAAAAAY:Play()
DONTLOSEYOURWAAAAAAAY=Instance.new("Sound")
DONTLOSEYOURWAAAAAAAY.Parent=Torso
DONTLOSEYOURWAAAAAAAY.Volume=1
DONTLOSEYOURWAAAAAAAY.SoundId="http://www.roblox.com/asset/?id=188026583"
DONTLOSEYOURWAAAAAAAY:Play()]]
wait(2.2)
--very ded
POS=tors.Position
boomCF=tors.CFrame
e=Instance.new("Explosion")
e.BlastRadius=30
e.Position=POS
e.BlastPressure=e.BlastPressure*2.5
e.Parent=workspace
local prt=part(3,workspace,0,0,BrickColor.new("Bright red"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=boomCF*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(10,10,10))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.01 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(1.5,1.5,1.5)
end
Part.Parent=nil
end),prt,msh)
for i=1,10 do
wait()
local prt=part(3,workspace,0,0,BrickColor.new("Bright red"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=boomCF*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(10,10,10))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.02 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(1.5,1.5,1.5)
end
Part.Parent=nil
end),prt,msh)
end
wait(1.5)
e=Instance.new("Explosion")
e.BlastRadius=30
e.Position=POS
e.BlastPressure=e.BlastPressure*2.5
e.Parent=workspace
local prt=part(3,workspace,0,0,BrickColor.new("Bright yellow"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=boomCF*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(10,10,10))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.01 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i/2
Mesh.Scale=Mesh.Scale+vt(3,3,3)
end
Part.Parent=nil
end),prt,msh)
for i=1,10 do
wait(0.1)
local prt=part(3,workspace,0,0,BrickColor.new("Bright red"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=boomCF*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(10,10,10))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.01 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(1,1,1)
end
Part.Parent=nil
end),prt,msh)
end
--wait(1.5)
wait(1.5)
local prt=part(3,workspace,0,0,BrickColor.new("White"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=ShadeCenter.CFrame
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(.5,1,.5))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.05 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(0.1,0.7,0.1)
end
Part.Parent=nil
end),prt,msh)
local prt=part(3,workspace,0,0,BrickColor.new("White"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=ShadeCenter.CFrame*euler(1.57,0,0)
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(.5,1,.5))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.05 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(0.1,0.7,0.1)
end
Part.Parent=nil
end),prt,msh)
local prt=part(3,workspace,0,0,BrickColor.new("White"),"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=ShadeCenter.CFrame*euler(0,0,1.57)
msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(.5,1,.5))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.05 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(0.1,0.7,0.1)
end
Part.Parent=nil
end),prt,msh)
Shade1.Transparency=0.05
Shade2.Transparency=0.05
wait(1)
sound:Stop()
wait()
sound2:Stop()
sound3:Stop()
wait(1)
ShadesClone1.Parent=nil
ShadesClone2.Parent=nil
end
wait()
print(target)
con1:disconnect()
bb.Parent=nil
gudbai.Parent=nil
wait(.5)
sound:Stop()
wait()
sound2:Stop()
sound3:Stop()
--bodypos2.Parent=nil
bodypos.Parent=nil
bodygy.Parent=nil
prop.Parent=nil
gg.Parent=nil
scale=1.5
Torso.Neck.C0=necko
RootJoint.C0=RootCF
RootJoint.C1=RootCF
shadeweld.Part0=Head
shadeweld.C0=cf(0,0.4,-0.65)
prop.Parent=nil
gg.Parent=nil
scale=1.5
RW.Parent=nil 
LW.Parent=nil 
RSH.Parent=Torso 
LSH.Parent=Torso 
RHP.Parent=Torso 
LHP.Parent=Torso 
end
 
function ob1d() 
if attack==true then return end
attack=true
print("DRILLBREEEEEAK")
GIGADRILLBREAKER()
attack=false
cam.CameraType="Custom"
end 
 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d() end) 
end 
 
Bin.Selected:connect(s)




end}
module[3] = {"Glider",function()

local player = game:service("Players").LocalPlayer
local char = player.Character 
local cam = workspace.CurrentCamera 
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
local hu = char:findFirstChild("Humanoid") 
local mouse = player:GetMouse() 
local Lights = {} 
local JetFlames = {} 
local LightChangeSpeed = 0.02 
local LeftWing 
local RightWing 
local WingParts = {} 
local Flying = false 
local JetActive = false 
local idle = false 
local velo = 0 

local bp = Instance.new("BodyPosition") 
bp.maxForce = Vector3.new(1/0,1/0,1/0) 
bp.D = 100 
local bg = Instance.new("BodyGyro") 
bg.maxTorque = Vector3.new(1/0,1/0,1/0) 
bg.D = 320 
local bv = Instance.new("BodyVelocity") 
bv.maxForce = Vector3.new(1/0,1/0,1/0) 

local P = Instance.new("Part") 
P.Anchored = false 
P.CanCollide = false 
P.Name = "Part" 
P.formFactor = "Custom" 
P.Size = Vector3.new(0.5,0.5,0.5) 
P.Locked = true 
P.TopSurface = 0 
P.BottomSurface = 0 
P.BrickColor = BrickColor.new("Dark stone grey") 
P.Transparency = 0 

local bp = Instance.new("BodyPosition") 
bp.maxForce = Vector3.new(1/0,1/0,1/0) 
local bv = Instance.new("BodyVelocity") 
bv.maxForce = Vector3.new(1/0,1/0,1/0) 
local bg = Instance.new("BodyGyro") 
bg.maxTorque = Vector3.new(1/0,1/0,1/0) 
bg.D = 300 

local wingcolor = "Really black" 
local maxvelo = 60 
local acceleration = 1 

---------------------------------- Design ------------------------------------------ 
for i, v in pairs(char:children()) do 
if v.className == "Model" and v.Name == "Pack" then 
v:remove() 
end 
end 
local m = Instance.new("Model", char) 
m.Name = "Pack" 

local b = P:Clone() 
b.Parent = m 
local mesh = Instance.new("SpecialMesh", b) 
mesh.MeshType = "Head" 
mesh.Scale = Vector3.new(2.6,1.2,2.6) 
local w = Instance.new("Motor", b) 
w.Part0 = Torsoz 
w.Part1 = b 
w.C0 = CFrame.new(0,0.2,0.35) * CFrame.Angles(math.pi/2,0,0) 
local p = P:Clone() 
p.Parent = m 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Head" 
mesh.Scale = Vector3.new(2,1.2,2) 
local w = Instance.new("Motor", p) 
w.Part0 = Torsoz 
w.Part1 = p 
w.C0 = CFrame.new(0,0.2,0.45) * CFrame.Angles(math.pi/2,0,0) 

local p = P:Clone() 
p.Parent = m 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Head" 
mesh.Scale = Vector3.new(2.02,1.2,2.02) 
local w = Instance.new("Motor", p) 
w.Part0 = Torsoz 
w.Part1 = p 
w.C0 = CFrame.new(0,0.2,0.445) * CFrame.Angles(math.pi/2,0,0) 
table.insert(Lights, p) 

for i = 1, 3 do 
local p = P:Clone() 
p.Parent = m 
local mesh = Instance.new("CylinderMesh", p) 
if i == 2 then 
mesh.Scale = Vector3.new(0.4,1.2,0.4) 
else 
mesh.Scale = Vector3.new(0.35,1,0.35) 
end 
local w = Instance.new("Motor", p) 
w.Part0 = Torsoz 
w.Part1 = p 
w.C0 = CFrame.new(-0.3+(0.15*i),-0.25,0.55) 
if i == 2 then 
CenterJet = p 
end 
local l = P:Clone() 
l.Parent = m 
local mesh = Instance.new("CylinderMesh", l) 
local w = Instance.new("Motor", l) 
w.Part0 = p 
w.Part1 = l 
if i == 2 then 
mesh.Scale = Vector3.new(0.405,0.12,0.405) 
w.C0 = CFrame.new(0,-0.2,0) 
else 
mesh.Scale = Vector3.new(0.355,0.12,0.355) 
w.C0 = CFrame.new(0,-0.15,0) 
end 
table.insert(Lights, l) 
end 

for i = 1, 3 do 
local l = P:Clone() 
l.Parent = m 
local mesh = Instance.new("CylinderMesh", l) 
mesh.Scale = Vector3.new(0.12,0.1,0.12) 
local w = Instance.new("Motor", l) 
w.Part0 = Torsoz 
w.Part1 = l 
w.C0 = CFrame.new(0.3-(0.15*i),0.3,0.73) * CFrame.Angles(math.pi/2,0,0) 
table.insert(Lights, l) 
end 

------- wings ------ 
for i = 0, 1 do 
local p = P:Clone() 
p.Parent = m 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(1,1,1) 
local w = Instance.new("Motor", p) 
w.Part0 = Torsoz 
w.Part1 = p 
w.C0 = CFrame.new(0,0.55,0.55) * CFrame.Angles(0,math.pi*i,0) 
w.C1 = CFrame.new(0.425,0,0) 

local c = P:Clone() 
c.Parent = m 
c.BrickColor = BrickColor.new(wingcolor) 
c.Name = "WingSpine"..i+1 
local mesh = Instance.new("BlockMesh", c) 
mesh.Scale = Vector3.new(0.26,6,0.2) 
local w = Instance.new("Motor", c) 
w.Part0 = p 
w.Part1 = c 
w.C0 = CFrame.Angles(0,0,-math.pi/7) 
w.C1 = CFrame.new(0,1.5,0) 
w.MaxVelocity = 0.15 
if i == 0 then 
LeftWing = w 
else 
RightWing = w 
end 
table.insert(WingParts, c) 
local p = P:Clone() 
p.Parent = m 
p.BrickColor = BrickColor.new(wingcolor) 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Wedge" 
mesh.Scale = Vector3.new(0.2,4,2.2) 
local w = Instance.new("Motor", p) 
w.Part0 = c 
w.Part1 = p 
w.C0 = CFrame.new(0.485,-0.85,0) * CFrame.Angles(math.pi,-math.pi/2,0) 
table.insert(WingParts, p) 
local p = P:Clone() 
p.Parent = m 
p.BrickColor = BrickColor.new(wingcolor) 
local mesh = Instance.new("BlockMesh", p) 
mesh.Scale = Vector3.new(2,0.5,0.2) 
local w = Instance.new("Motor", p) 
w.Part0 = c 
w.Part1 = p 
w.C0 = CFrame.new(0.535,0.275,0) 
table.insert(WingParts, p) 
local p = P:Clone() 
p.Parent = m 
p.BrickColor = BrickColor.new(wingcolor) 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Wedge" 
mesh.Scale = Vector3.new(0.2,1.5,1) 
local w = Instance.new("Motor", p) 
w.Part0 = c 
w.Part1 = p 
w.C0 = CFrame.new(0.785,0.77,0) * CFrame.Angles(0,-math.pi/2,0) 
table.insert(WingParts, p) 
local p = P:Clone() 
p.Parent = m 
p.BrickColor = BrickColor.new(wingcolor) 
local mesh = Instance.new("BlockMesh", p) 
mesh.Scale = Vector3.new(0.94,1.5,0.2) 
local w = Instance.new("Motor", p) 
w.Part0 = c 
w.Part1 = p 
w.C0 = CFrame.new(0.3,0.77,0) 
table.insert(WingParts, p) 
local p = P:Clone() 
p.Parent = m 
p.BrickColor = BrickColor.new(wingcolor) 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Wedge" 
mesh.Scale = Vector3.new(0.2,1,0.977) 
local w = Instance.new("Motor", p) 
w.Part0 = c 
w.Part1 = p 
w.C0 = CFrame.new(0.3,1.385,0) * CFrame.Angles(0,-math.pi/2,0) 
table.insert(WingParts, p) 

end 

local spacedet = 0 
local KEYS = {false, false, false, false} 
mouse.KeyDown:connect(function(key) 
if key == string.char(32) then 
if (tick() - spacedet) < 0.3 then 
Flying = not Flying 
end 
spacedet = tick() 
end 
if key == "w" then 
KEYS[1] = true 
end 
if key == "a" then 
KEYS[2] = true 
end 
if key == "s" then 
KEYS[3] = true 
end 
if key == "d" then 
KEYS[4] = true 
end 
end) 

mouse.KeyUp:connect(function(key) 
if key == "w" then 
KEYS[1] = false 
end 
if key == "a" then 
KEYS[2] = false 
end 
if key == "s" then 
KEYS[3] = false 
end 
if key == "d" then 
KEYS[4] = false 
end 
end) 

local LTrailParts = {} 
for i = 1, 21 do 
local p = P:Clone() 
p.Name = "TrailLine" 
p.Anchored = true 
p.BrickColor = BrickColor.new(wingcolor) 
local mesh = Instance.new("CylinderMesh", p) 
mesh.Name = "Mesh" 
table.insert(LTrailParts, p) 
end 
local RTrailParts = {} 
for i = 1, 21 do 
local p = P:Clone() 
p.Name = "TrailLine" 
p.Anchored = true 
p.BrickColor = BrickColor.new(wingcolor) 
local mesh = Instance.new("CylinderMesh", p) 
mesh.Name = "Mesh" 
table.insert(RTrailParts, p) 
end 
local Loldpos 
local Roldpos 

local lightval = {0.1, true} 
local refval = 0.1 
local firecolors = {"Bright red", "Bright orange"} 
local firespeed = 2 
local trailnum = 0 
local num = 0 
local lastflyaction = false 
local lastidleaction = false 
local idlebp = {0, 0, Torsoz.Position, true} 

while true do 
num = num + 1 
trailnum = trailnum + 1 

local unitz = (Torsoz.Position - cam.CoordinateFrame.p).unit 
local camsight = Torsoz.Position + (unitz*90) 
local diff = camsight.y - Torsoz.Position.y 

---------------------- Velocity Changes ----------------------------

----------- W key --------------
if KEYS[1] == true then 
velo = velo + acceleration 
else 
if velo > 0 then 
local UP = velo - (acceleration/1.5) 
if velo > 0 and UP < 0 then 
velo = velo + UP 
end 
velo = velo - (acceleration/1.5) 
end 
end 
------------ S key -------------
if KEYS[3] == true then 
if velo > 0 then 
velo = velo - acceleration*1.2 
else 
velo = velo - (acceleration/1.5) 
end 
else 
if velo < 0 then 
local DOWN = velo + acceleration 
if velo < 0 and DOWN > 0 then 
velo = velo - DOWN 
end 
velo = velo + acceleration 
end 
end 

local maxvelocalc = maxvelo 
if diff < -35 then 
if velo > 0 then 
maxvelocalc = maxvelo + (maxvelo * -(((diff+35)/110))) 
end 
elseif diff > 35 then 
if velo < 0 then 
maxvelocalc = maxvelo + (maxvelo * -((((-diff)+35)/110))) 
end 
end 

if velo >= maxvelocalc then 
velo = maxvelocalc 
elseif velo <= -maxvelocalc/2 then 
velo = -maxvelocalc/2 
end 

------------------------- Lights ----------------------
if lightval[1] < 0.15 then 
lightval[2] = true 
elseif lightval[1] > 0.76 then 
lightval[2] = false 
end 
if lightval[2] == true then 
lightval[1] = lightval[1] + LightChangeSpeed 
else 
lightval[1] = lightval[1] - LightChangeSpeed 
end 
for i, v in pairs(Lights) do 
v.Transparency = lightval[1] 
if LightChangeSpeed > 0.15 then 
v.BrickColor = BrickColor.new("Bright red") 
elseif LightChangeSpeed > 0.08 then 
v.BrickColor = BrickColor.new("Bright orange") 
else 
v.BrickColor = BrickColor.new("Bright green") 
end 
end 
--------------------------------------------------------

--------------------- Wing Shines ------------------------- 
for i, v in pairs(WingParts) do 
if Flying == true then 
if v.Reflectance > 0.19 then 
v.Reflectance = v.Reflectance - 0.035 
else 
v.Reflectance = 0.19 
end 
else 
if v.Reflectance < 0.43 then 
v.Reflectance = v.Reflectance + 0.035 
else 
v.Reflectance = 0.43 
end 
end 
end 
----------------------------------------------------

------------------------ Jet Boost Flames -------------------------------- 
if num%firespeed == 0 and JetActive == true then 
local f = P:Clone() 
f.Parent = m 
f.Name = "JetFire" 
f.BrickColor = BrickColor.new(firecolors[math.random(1, #firecolors)]) 
f.Transparency = 0.15 
f.Anchored = true 
f.CFrame = CenterJet.CFrame * CFrame.new(0,-0.3,0) 
local mesh = Instance.new("BlockMesh", f) 
mesh.Scale = Vector3.new(0.6,0.6,0.6) 
table.insert(JetFlames, {mesh, (f.Position - CenterJet.Position).unit}) 
end 

for i, v in pairs(JetFlames) do 
if v[1].Parent.Transparency < 0.9 then 
v[1].Parent.Transparency = v[1].Parent.Transparency + 0.03 
v[1].Scale = v[1].Scale + Vector3.new(0.08,0.08,0.08) 
v[1].Parent.CFrame = v[1].Parent.CFrame * CFrame.Angles(math.random(-180,180)/360,math.random(-180,180)/360,math.random(-180,180)/360) 
if idle == false then 
v[1].Parent.CFrame = v[1].Parent.CFrame + (v[2]*0.1) 
else 
v[1].Parent.CFrame = v[1].Parent.CFrame + (v[2]*0.24) 
end 
else 
v[1].Parent:remove() 
table.remove(JetFlames, i) 
end 
end 
-------------------------------------------------- 

------------------------------ Flying --------------------------------

if Flying == true then 

if lastflyaction == false then 
bg = Instance.new("BodyGyro", Torsoz) 
bg.maxTorque = Vector3.new(1/0,1/0,1/0) 
bg.D = 350 
end 


--------- idle checker -------- 
if (velo > -0.5 and velo < 0.5) and (KEYS[1] == false and KEYS[3] == false) then 
idle = true 
if lastidleaction == false then 
idlebp[3] = Torsoz.Position 
end 
else 
idle = false 
end 

--------- idle float anim -----------
if idle == true then 
if lastidleaction == false then 
idlebp = {0, 0, Torsoz.Position, true} 
end 
if idlebp[2] >= 0.3 then 
idlebp[4] = false 
elseif idlebp[2] <= -0.3 then 
idlebp[4] = true 
end 
if idlebp[4] == false then 
idlebp[2] = idlebp[2] - 0.02 
elseif idlebp[4] == true then 
idlebp[2] = idlebp[2] + 0.02 
end 
idlebp[1] = idlebp[1] + idlebp[2] 
end 

---------------- Body Objects ---------------------- 

if idle == true then 
if lastidleaction == false then 
bv:remove() 
bp:remove() 
bp = Instance.new("BodyPosition") 
end 
hu.PlatformStand = true 
bp.Parent = Torsoz 
bp.maxForce = Vector3.new(1/0,1/0,1/0) 
bp.D = 100 
bp.position = idlebp[3] + Vector3.new(0,idlebp[1],0) 
bg.cframe = CFrame.new(Torsoz.Position, Torsoz.Position + cam.CoordinateFrame.lookVector) 
else 
if lastidleaction == true then 
bp:remove() 
bv:remove() 
bv = Instance.new("BodyVelocity") 
end 
hu.PlatformStand = true 
bv.Parent = Torsoz 
bv.maxForce = Vector3.new(1/0,1/0,1/0) 
local torpos = Torsoz.Position + (cam.CoordinateFrame.lookVector * 10)
bv.velocity = CFrame.new(Torsoz.Position+Vector3.new(0,-2,0), torpos).lookVector*velo 
local cvelo = velo 
if velo > maxvelo then 
cvelo = maxvelo 
end 
bg.cframe = CFrame.new(Torsoz.Position, Torsoz.Position + cam.CoordinateFrame.lookVector) * CFrame.Angles((-math.pi/2.3)*(cvelo/maxvelo),0,0) 

end 

elseif Flying == false then 
if lastflyaction == true then 
hu.PlatformStand = false 
bp.Parent = nil 
bg.Parent = nil 
bv.Parent = nil 
idle = false 
end 

end --- if flying == true 

-----------------------------------------

----------------------- Auto Anims ----------------------- 
if Flying == true then 
if diff > 40 then 
LeftWing.DesiredAngle = -0.3 
RightWing.DesiredAngle = -0.3 
LightChangeSpeed = 0.24 
JetActive = true 
ActiveTrails = true 
firespeed = 1 
elseif diff > -22 and diff < 40 then 
LeftWing.DesiredAngle = -math.pi/2.5 
RightWing.DesiredAngle = -math.pi/2.5 
LightChangeSpeed = 0.09 
JetActive = true 
ActiveTrails = true 
firespeed = 2 
elseif diff > -60 and diff < -22 then 
LeftWing.DesiredAngle = -math.pi/2.5 
RightWing.DesiredAngle = -math.pi/2.5 
LightChangeSpeed = 0.04 
JetActive = false 
ActiveTrails = true 
elseif diff < -60 then 
LeftWing.DesiredAngle = -0.1 
RightWing.DesiredAngle = -0.1 
LightChangeSpeed = 0.04 
JetActive = false 
ActiveTrails = true 
end 
if idle == true then 
LeftWing.DesiredAngle = -math.pi/2.2 
RightWing.DesiredAngle = -math.pi/2.2 
LightChangeSpeed = 0.09 
JetActive = true 
ActiveTrails = false 
firespeed = 1 
end 
if diff < -40 and velo < 0 then 
LeftWing.DesiredAngle = -0.3 
RightWing.DesiredAngle = -0.3 
LightChangeSpeed = 0.24 
JetActive = true 
ActiveTrails = true 
firespeed = 1 
elseif (diff < -22 and diff > -40) and velo < 0 then 
LeftWing.DesiredAngle = -math.pi/2.5 
RightWing.DesiredAngle = -math.pi/2.5 
LightChangeSpeed = 0.09 
JetActive = true 
ActiveTrails = true 
firespeed = 2 
end 
else 
LeftWing.DesiredAngle = 0 
RightWing.DesiredAngle = 0 
JetActive = false 
ActiveTrails = false 
LightChangeSpeed = 0.02 
end 
----------------------------------------- 

------------------------ Trail lines ------------------------------
if num%2 == 0 then 

if Flying == true and ActiveTrails == true then 
if velo > 0 then 
if velo < acceleration*7 then 
Loldpos = nil 
Roldpos = nil 
end 
elseif velo < 0 then 
if velo > -acceleration*7 then 
Loldpos = nil 
Roldpos = nil 
end 
end 

if Loldpos ~= nil then 
local newpos = (LeftWing.Parent.CFrame * CFrame.new(0,-1.7,0)).p 
local t = LTrailParts[trailnum] 
t.Parent = m 
t.Anchored = true 
t.BrickColor = BrickColor.new(wingcolor) 
t.CFrame = CFrame.new((Loldpos+newpos)/2,Loldpos) * CFrame.Angles(math.pi/2,0,0) 
local mesh = Instance.new("CylinderMesh", t) 
mesh.Name = "Mesh" 
mesh.Scale = Vector3.new(0.2,(Loldpos - newpos).magnitude*2,0.2) 
end 
if Roldpos ~= nil then 
local newpos = (RightWing.Parent.CFrame * CFrame.new(0,-1.7,0)).p 
local t = RTrailParts[trailnum] 
t.Parent = m 
t.Anchored = true 
t.BrickColor = BrickColor.new(wingcolor) 
t.CFrame = CFrame.new((Roldpos+newpos)/2,Roldpos) * CFrame.Angles(math.pi/2,0,0) 
local mesh = Instance.new("CylinderMesh", t) 
mesh.Name = "Mesh" 
mesh.Scale = Vector3.new(0.2,(Roldpos - newpos).magnitude*2,0.2) 
end 
Loldpos = (LeftWing.Parent.CFrame * CFrame.new(0,-1.7,0)).p 
Roldpos = (RightWing.Parent.CFrame * CFrame.new(0,-1.7,0)).p 

else 
LTrailParts[trailnum].Parent = nil 
RTrailParts[trailnum].Parent = nil 
Loldpos = (LeftWing.Parent.CFrame * CFrame.new(0,-1.7,0)).p 
Roldpos = (RightWing.Parent.CFrame * CFrame.new(0,-1.7,0)).p 
end 

end 

if trailnum == #LTrailParts-1 then 
trailnum = 0 
end 

if num%800 == 0 then 
for i, v in pairs(LTrailParts) do 
game:service("Debris"):AddItem(v, 0.7) 
end 
for i, v in pairs(RTrailParts) do 
game:service("Debris"):AddItem(v, 0.7) 
end 
LTrailParts = {} 
for i = 1, 21 do 
local p = P:Clone() 
p.Name = "LTrailLine" 
p.Anchored = true 
p.BrickColor = BrickColor.new(wingcolor) 
local mesh = Instance.new("CylinderMesh", p) 
mesh.Name = "Mesh" 
table.insert(LTrailParts, p) 
end 
RTrailParts = {} 
for i = 1, 21 do 
local p = P:Clone() 
p.Name = "RTrailLine" 
p.Anchored = true 
p.BrickColor = BrickColor.new(wingcolor) 
local mesh = Instance.new("CylinderMesh", p) 
mesh.Name = "Mesh" 
table.insert(RTrailParts, p) 
end 
end 

lastflyaction = Flying 
lastidleaction = idle 
wait(0.03) 
end 

end}

 
 

module[1] = {"God of Destruction",function()
  --[[ No words, only thing I have to say is this was created by wizardunstopable ]]--

local ArtificiaLeftHipB = Instance.new("BindableEvent", script)
ArtificiaLeftHipB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
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
local Neck = torso:WaitForChild("Neck")
local shot = 0
local debris=game:service"Debris"
local CanAttack = true
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local animpose = "Idle"
local lastanimpose = "Idle"
local stanceToggle = "Normal"
local Hood = false
local holy = false --[[ change to true if u want him flying ]]
local Trails = true --[[ change to true for glow trails comming from eyes ]]--
local Shield = false
local eColors = {"Really red", "Really black"}
local cf = CFrame.new
local euler = CFrame.fromEulerAnglesXYZ
local vt = Vector3.new
local angles = CFrame.Angles
local attacktype=1
local Melee = true
ptz = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
math.randomseed(os.time())

RA,LA,RL,LL,H,T = char["Right Arm"],char["Left Arm"],char["Right Leg"],char["Left Leg"],char.Head,char.Torso
RS,LS,RH,LH,N = T["Right Shoulder"],T["Left Shoulder"],T["Right Hip"],T["Left Hip"],T.Neck
Settings,Pr0mMode,ArielMode,InternalMode,Heart = {Colors = {BrickColor.new("Really black"),BrickColor.new("New Yeller")};ExplosionColors = {BrickColor.new("Really black"),BrickColor.new("New Yeller"),BrickColor.new("Really red"),BrickColor.new("Institutional white")}},p.Name == "Fir3bl4ze",p.Name == "Paul072" or p.Name == "KillBecca62",p.Name == "InternalRecursion" or p.Name == "RecursionAltInternal",p.Name == "heartstar1"
Debounces = {
CanAttack = true;
CanJoke = true;
NoIdl = false;
Slashing = false;
Slashed = false;
Slapping = false;
Slapped = false;
ks = false;
}

local Touche = {char.Name, }
local Character = p.Character





local Shockwave = function()
	local rng1 = Instance.new("Part", Character)
                rng1.Anchored = true
                rng1.BrickColor = BrickColor.new("Really black")
                rng1.CanCollide = false
                rng1.FormFactor = 3
                rng1.Name = "Ring"
                rng1.Size = Vector3.new(1, 1, 1)
                rng1.Transparency = 0.35
                rng1.TopSurface = 0
                rng1.BottomSurface = 0
                local rngm1 = Instance.new("SpecialMesh", rng1)
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
                            Character.Name;
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
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 500000000
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * 220
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
                
                delay(0, function()

                    if Daytime == false then
                       for i = 1, 50, 1 do
                            Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                            Wave.CFrame = Character.Torso.CFrame
                            local t = i / 50
                            Wave.Transparency = t
                            wait()
                        end
                    else
                        for i = 1, 50, 1 do
                            Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                            Wave.CFrame = Character.Torso.CFrame
                            local t = i / 50
                            Wave.Transparency = t
                            wait()
                        end
                    end
                    Wave:Destroy()
                end)
                delay(0, function()
                    while wait() do
                        if Wave ~= nil then
                            Wave.CFrame = Character.Torso.CFrame
                        else
                            break
                        end
                    end
                end)
            end


function Shockwave2()
	local ENERGY = Instance.new("Part", Character)
		ENERGY.Name = "ENERGY"
		ENERGY.CanCollide = false
		ENERGY.Transparency = 0.2
		ENERGY.TopSurface = 0
		ENERGY.BottomSurface = 0
		ENERGY.Anchored = true
		ENERGY.BrickColor = BrickColor.new("Really black")
		 ENERGY.Touched:connect(function(hit)
                    if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        local Occlude = true
                        local NotOccludes = {
                            Character.Name;
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
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 50
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * 220
                        end
                    end
                end)
		local cm = Instance.new("CylinderMesh", ENERGY)
		cm.Scale = Vector3.new(1, 20, 1)
		ENERGY.Size = Vector3.new(5, 20, 5)
		ENERGY.CFrame = char.Torso.CFrame
		for i = 1, 50 do
			ENERGY.CFrame = char.Torso.CFrame
			ENERGY.Transparency = ENERGY.Transparency + 0.012
			ENERGY.Size = ENERGY.Size + Vector3.new(0.2, 0, 0.2)
			wait()
		end
		ENERGY:Destroy()
end



local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
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
end
local Effects = {}

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

function SphereEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
end

function RingEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.new(x1, y1, z1)
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
end


function WaveEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
end

function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end
z = Instance.new("Sound",char)
z.SoundId = "rbxassetid://242942414"--..SIDz[math.random(1,#SIDz)]
z.Looped = true
z.Volume = 3
z.Pitch = 1
wait(1)
z:Play()
local Transformation = function()
		
		hum.WalkSpeed = 0
		Neck.C0 = Neck.C0 * CFrame.Angles(0.6,0,0)
		wait(0.7)
		Neck.C0 = Neck.C0 * CFrame.Angles(-0.9,0,0)
		l.TimeOfDay = 24
		wait(0.1)
		l.TimeOfDay = 14
        Shockwave2()
		wait(2)
		Neck.C0 = Neck.C0 * CFrame.Angles(0.6,0,0)
		wait(2.4)
		Neck.C0 = Neck.C0 * CFrame.Angles(-0.6,0,0)
		l.TimeOfDay = 24
		wait(0.1)
		l.TimeOfDay = 14
		Shockwave2()
		wait(0.3)
		Neck.C0 = Neck.C0 * CFrame.Angles(0.6,0,0)
		wait(0.6)
		Neck.C0 = Neck.C0 * CFrame.Angles(-0.6,0,0)
		l.TimeOfDay = 24
		wait(0.1)
		l.TimeOfDay = 14
		Shockwave2()
		wait(0.2)
		Neck.C0 = Neck.C0 * CFrame.Angles(0.6,0,0)
		wait(2)
		Neck.C0 = Neck.C0 * CFrame.Angles(-0.3,0,0)
		local TBlast, TBMesh = Instance.new("Part"), Instance.new("SpecialMesh")
	TBlast.BrickColor = BrickColor.new("Really red")
	TBlast.Transparency = 1
	TBlast.Anchored = true
	TBlast.CanCollide = false
	TBlast.CFrame = root.CFrame
	TBlast.Size = Vector3.new(2,2,2)
	TBMesh.Parent = TBlast
	TBMesh.MeshType = "Sphere"
	game.Lighting.Brightness = 0
		game.Lighting.OutdoorAmbient = TBlast.BrickColor.Color
		game.Lighting.TimeOfDay = 0.1
		game.Lighting.FogEnd = 1000
		game.Lighting.FogColor = TBlast.BrickColor.Color
	local hit, pos = rayCast(root.Position, (CFrame.new(root.Position, root.Position - Vector3.new(0, 1, 0))).lookVector, 6, Character)
	if hit ~= nil then
		local Color = hit.BrickColor
		local refpart = CreatePart(workspace, "SmoothPlastic", 0, 1, "Really black", "Effect", Vector3.new())
		refpart.Anchored = true
		refpart.CFrame = CFrame.new(pos)
		game:GetService("Debris"):AddItem(refpart, 1)
		for i = 1, 5 do
			local Color = hit.BrickColor
			local Materials = hit.Material
			local groundpart = CreatePart(workspace, "SmoothPlastic", 0, 0, Color, "Ground", Vector3.new(math.random(500, 1000) / 1000, math.random(500, 1000) / 1000, math.random(500, 1000) / 1000))
			groundpart.Anchored = false
			groundpart.Material = Materials
			groundpart.CanCollide = true
			groundpart.Friction = 0.1
			groundpart.Velocity = Vector3.new(math.random(-50, 50), math.random(25, 50), math.random(-50, 50))
			groundpart.CFrame = CFrame.new(pos) * CFrame.new(math.random(-250, 250) / 100, 0.5, math.random(-250, 250) / 100) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			game:GetService("Debris"):AddItem(groundpart, 10)
		end
		for i = 1, 6 do
			local Color = hit.BrickColor
			local Materials = hit.Material
			local actualgroundpart = CreatePart(workspace, "SmoothPlastic", 0, 0, Color, "Ground", Vector3.new(math.random(1000, 2000) / 1000, math.random(1000, 2000) / 1000, math.random(1000, 2000) / 1000))
			actualgroundpart.Anchored = true
			actualgroundpart.Material = Materials
			actualgroundpart.CanCollide = true
			actualgroundpart.Friction = 1
			actualgroundpart.CFrame = CFrame.new(pos) * CFrame.new(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			game:GetService("Debris"):AddItem(actualgroundpart, 10)
		end 
		WaveEffect(hit.BrickColor, refpart.CFrame, .2, .2, .2, .5, .5, .5, .04)
		SphereEffect(hit.BrickColor, refpart.CFrame, .2, .2, .2, 3, 3, 3, .04)
		RingEffect(hit.BrickColor, refpart.CFrame * CFrame.Angles(math.random(5, 6), math.random(2, 7), math.random(3, 6)), .2, .2, .2, 1, 1, 1, .05)
	end
	Shockwave()
end
Transformation()
	
	
for i,v in pairs(game.Players:GetChildren()) do
       if v.Name ~= p then
game:GetService("Chat"):Chat(v.Character.Head, "The God Of Destruction Has Awakened", Enum.ChatColor.Red)
end	
end
partic2 = Instance.new("ParticleEmitter",torso)
partic2.Color = ColorSequence.new(Color3.new(100/225,100/255,100/255),Color3.new(100/255,100/255,100/255))
partic2.LightEmission = .95
partic2.VelocityInheritance = 0.2
partic2.Rate = 300
partic2.Texture = "rbxasset://textures/particles/explosion01_implosion_main.dds" 
partic2.Lifetime = NumberRange.new(0.1,0.2)
partic2.RotSpeed = NumberRange.new(100,100)
partic2.Speed = NumberRange.new(2,6)
partic2.Enabled = false
partic2.LockedToPart = false 

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


p:ClearCharacterAppearance()
wait(0.1)
p.Character.Head.BrickColor = BrickColor.new("Really black")
p.Character.Torso.BrickColor = BrickColor.new("Really black")
p.Character["Right Arm"].BrickColor = BrickColor.new("Really black")
p.Character["Right Leg"].BrickColor = BrickColor.new("Really black")
p.Character["Left Leg"].BrickColor = BrickColor.new("Really black")
p.Character["Left Arm"].BrickColor = BrickColor.new("Really black")
p.Character.Head.face:Destroy()
p.Character.Head.Material = "Granite"
p.Character.Torso.Material = "Granite"
p.Character["Right Arm"].Material = "Granite"
p.Character["Right Leg"].Material = "Granite"
p.Character["Left Leg"].Material = "Granite"
p.Character["Left Arm"].Material = "Granite"
Fl = Instance.new('Fire',larm); FR = Instance.new('Fire',rarm); Ft = Instance.new('Fire',torso)
Ft.Size = 0.8
Fl.Size = 0.8
FR.Size = 0.8
Fl.Color = Color3.new(0,0,0)
FR.Color = Color3.new(0,0,0)
Ft.Color = Color3.new(0,0,0)
Fl.SecondaryColor = Color3.new(0,0,0)
FR.SecondaryColor = Color3.new(0,0,0)
Ft.SecondaryColor = Color3.new(0,0,0)
SR = Instance.new('Smoke',rleg)
SR.Color = Color3.new(0,0,0)
SR.Size = 0.6
SR.RiseVelocity = 0.7
hum.WalkSpeed = 200
hum.MaxHealth = math.huge
wait(0.1)
hum.Health = math.huge
local TBlast, TBMesh = Instance.new("Part"), Instance.new("SpecialMesh")
	TBlast.BrickColor = BrickColor.new("Really red")
	TBlast.Transparency = 1
	TBlast.Anchored = true
	TBlast.CanCollide = false
	TBlast.CFrame = root.CFrame
	TBlast.Size = Vector3.new(2,2,2)
	TBMesh.Parent = TBlast
	TBMesh.MeshType = "Sphere"
	game.Lighting.Brightness = 0
		game.Lighting.OutdoorAmbient = TBlast.BrickColor.Color
		game.Lighting.TimeOfDay = 0.1
		game.Lighting.FogEnd = 1000
		game.Lighting.FogColor = TBlast.BrickColor.Color
----------------------------------------------------

newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
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
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do 
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
------------------------------------------------------
local Orbd = Instance.new("Part", char)
Orbd.Name = "Orbd"
Orbd.Shape = Enum.PartType.Ball
Orbd.CanCollide = false
Orbd.BrickColor = BrickColor.new("Really red")
Orbd.Transparency = 0
Orbd.Material = "Neon"
Orbd.Size = Vector3.new(0.1, 0.1, 0.1)
Orbd.TopSurface = Enum.SurfaceType.Smooth
Orbd.BottomSurface = Enum.SurfaceType.Smooth

local Weld = Instance.new("Weld", Orbd)
Weld.Part0 = char.Head
Weld.Part1 = Orbd
Weld.C1 = CFrame.new(-0.2, -0.2, 0.5)
local glov = Instance.new("PointLight", Orbd)
glov.Brightness = 3000
glov.Range = 20
glov.Color = Color3.new(225, 0, 0)

--------------------------------------------------------
local Orbvc = Instance.new("Part", char)
Orbvc.Name = "Orbvc"
Orbvc.Shape = Enum.PartType.Ball
Orbvc.CanCollide = false
Orbvc.BrickColor = BrickColor.new("Really red")
Orbvc.Transparency = 0
Orbvc.Material = "Neon"
Orbvc.Size = Vector3.new(0.1, 0.1, 0.1)
Orbvc.TopSurface = Enum.SurfaceType.Smooth
Orbvc.BottomSurface = Enum.SurfaceType.Smooth

local Weld = Instance.new("Weld", Orbvc)
Weld.Part0 = char.Head
Weld.Part1 = Orbvc
Weld.C1 = CFrame.new(0.2, -0.2, 0.5)
local glo = Instance.new("PointLight", Orbvc)
glo.Brightness = 3000
glo.Range = 20
glo.Color = Color3.new(225, 0, 0)
bs = Instance.new("Sound", char)
bs.SoundId = "http://www.roblox.com/asset/?id = 141606337"
bs.Looped = false
bs.Volume = 12

local DestructionHands = true

GroundWave = function()
	local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local Colors = {"Really red", "Really black"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = HandCF
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 14, 1 do
		wm.Scale = Vector3.new(1 + i*1.1, 1 + i*1.1, 1)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/14
		wait()
		end
		wait()
		wave:Destroy()
	end)()
end



local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera

local rad = math.rad

local keysDown = {}
local flySpeed = 0
local MAX_FLY_SPEED = 150

local canFly = false
local flyToggled = false

local forward, side = 0, 0
local lastForward, lastSide = 0, 0

local floatBP = Instance.new("BodyPosition")
floatBP.maxForce = Vector3.new(0, math.huge, 0)
local flyBV = Instance.new("BodyVelocity")
flyBV.maxForce = Vector3.new(9e9, 9e9, 9e9)
local turnBG = Instance.new("BodyGyro")
turnBG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

mouse.KeyDown:connect(function(key)
	keysDown[key] = true
	
	if key == "f" then
		flyToggled = not flyToggled
		
	if not flyToggled then
		stanceToggle = "Normal"
		floatBP.Parent = nil
		flyBV.Parent = nil
		turnBG.Parent = nil
		root.Velocity = Vector3.new()
		pchar.Humanoid.PlatformStand = false
	end
end
	
end)
mouse.KeyUp:connect(function(key)
	keysDown[key] = nil
end)

local function updateFly()

	if not flyToggled then return end
	
	lastForward = forward
	lastSide = side
	
	forward = 0
	side = 0
	
	if keysDown.w then
		forward = forward + 1
	end
	if keysDown.s then
		forward = forward - 1
	end
	if keysDown.a then
		side = side - 1
	end
	if keysDown.d then
		side = side + 1
	end

	
	canFly = (forward ~= 0 or side ~= 0)
	
	if canFly then
		stanceToggle = "Floating"
		turnBG.Parent = root
		floatBP.Parent = nil
		flyBV.Parent = root
		
		flySpeed = flySpeed + 1 + (flySpeed / MAX_FLY_SPEED)
		if flySpeed > MAX_FLY_SPEED then flySpeed = MAX_FLY_SPEED end
	else
		floatBP.position = root.Position
		floatBP.Parent = root
		
		flySpeed = flySpeed - 1
		if flySpeed < 0 then flySpeed = 0 end
	end
	
	local camCF = cam.CoordinateFrame
	local in_forward = canFly and forward or lastForward
	local in_side = canFly and side or lastSide
	
	flyBV.velocity = ((camCF.lookVector * in_forward) + (camCF * CFrame.new(in_side, 
in_forward * 0.2, 0).p) - camCF.p) * flySpeed
	
	turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0, 
0)
end

game:service'RunService'.RenderStepped:connect(function()
	if flyToggled then
		pchar.Humanoid.PlatformStand = true
	end
	updateFly()
end)

if Trails == true then
--------------------------------Trail		
local LastCFr = nil
local Trails = Instance.new("Model",char)
local Trail = {}
local Tip = Orbvc
local number = 0
local num2 = 1
game:GetService("RunService").RenderStepped:connect(function()
	local start = nil
	for i = num2,number do
		local v = Trail[i]
		if v ~= nil then
			local cfr = v.CFrame
			local Amount = v.Size.Y/3
			v.Size = v.Size-Vector3.new(0,Amount,0)
			v.Transparency = v.Transparency+0.05
			v.CFrame = cfr*CFrame.new(0,Amount/5,0)
			if v.Size.Y <= 0.1 or v.Transparency > 0.3 then
				v:Destroy()
				Trail[i] = nil
				num2=num2+1
			end
			break
		end
	end
		if LastCFr ~= nil and (Tip.Position-LastCFr.p).Magnitude > 0.01 then
			local cfr = Tip.CFrame
			local T = Instance.new("Part",Trails)
			number = number+1
			Trail[number] = T
			T.FormFactor = "Custom"
			T.Name = "Trail"
			T.Anchored = true
			T.CanCollide = false
			T.Size = Vector3.new(0.3,(LastCFr.p-cfr.p).Magnitude,0.3)
			T.TopSurface = "SmoothNoOutlines"
			T.BottomSurface = "SmoothNoOutlines"
			T.FrontSurface = "SmoothNoOutlines"
			T.BackSurface = "SmoothNoOutlines"
			T.LeftSurface = "SmoothNoOutlines"
			T.RightSurface = "SmoothNoOutlines"
			--[[local m = Instance.new("SpecialMesh",T)
			m.MeshType = "Head"
			m.Name = "Mesh"]]--
			T.BrickColor = BrickColor.new("Really red")
			T.Transparency = 0.4
			T.CFrame = CFrame.new(cfr.p, LastCFr.p)* CFrame.Angles(math.rad(90),0,0) * CFrame.new(0, -(LastCFr.p-cfr.p).Magnitude/2, 0)
			LastCFr = cfr
		else
			LastCFr = Tip.CFrame
		end
end)
--------------------------------Trail
local LastCFr = nil
local Trails = Instance.new("Model",char)
local Trail = {}
local Tip = Orbd
local number = 0
local num2 = 1
game:GetService("RunService").RenderStepped:connect(function()
	local start = nil
	for i = num2,number do
		local v = Trail[i]
		if v ~= nil then
			local cfr = v.CFrame
			local Amount = v.Size.Y/4
			v.Size = v.Size-Vector3.new(0,Amount,0)
			v.Transparency = v.Transparency+0.05
			v.CFrame = cfr*CFrame.new(0,Amount/5,0)
			if v.Size.Y <= 0.1 or v.Transparency > 0.3 then
				v:Destroy()
				Trail[i] = nil
				num2=num2+1
			end
			break
		end
	end
		if LastCFr ~= nil and (Tip.Position-LastCFr.p).Magnitude > 0.01 then
			local cfr = Tip.CFrame
			local T = Instance.new("Part",Trails)
			
			
			
			number = number+1
			Trail[number] = T
			T.FormFactor = "Custom"
			T.Name = "Trail"
			T.Anchored = true
			T.CanCollide = false
			T.Size = Vector3.new(0.3,(LastCFr.p-cfr.p).Magnitude,0.3)
			T.TopSurface = "SmoothNoOutlines"
			T.BottomSurface = "SmoothNoOutlines"
			T.FrontSurface = "SmoothNoOutlines"
			T.BackSurface = "SmoothNoOutlines"
			T.LeftSurface = "SmoothNoOutlines"
			T.RightSurface = "SmoothNoOutlines"
			--[[local m = Instance.new("SpecialMesh",T)
			m.MeshType = "Head"
			m.Name = "Mesh"]]--
			T.BrickColor = BrickColor.new("Really red")
			T.Transparency = 0.4
			T.CFrame = CFrame.new(cfr.p, LastCFr.p)* CFrame.Angles(math.rad(90),0,0) * CFrame.new(0, -(LastCFr.p-cfr.p).Magnitude/2, 0)
			LastCFr = cfr
		else
			LastCFr = Tip.CFrame
		end
end)
end

Magik = function()
	spawn(function()
		local function lerp(a,b,c)
			return a+(b-a)*c	
		end
		local function rndRange(rng)
			return math.random(-rng*1000,rng*1000)/1000	
		end
		local magik = Instance.new("Part", larm)
		local Colors = {"Really red", "Really black"}
		magik.Anchored = true
		magik.Locked = true
		magik.Material = "Neon"
		magik.FormFactor = "Custom"
		magik.Size = Vector3.new(1.2, 1.2, 1.2)
		magik.TopSurface = "Smooth"
		magik.BottomSurface = "Smooth"
		magik.Transparency = 0
		magik.CanCollide = false
		
		if holy == false then
		magik.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		end
		
		local mr = math.rad
		local rnx,rny,rnz = mr(rndRange(180)),mr(rndRange(180)),mr(rndRange(180))
		local cf = larm.CFrame * CFrame.new(0, -.8, 0) * CFrame.Angles(rnx,rny,rnz)
		magik.CFrame = cf
		for i = 0, 1, .05 do
			local newTrans = lerp(0.5, 1, i)
			local ns = lerp(1,1.2,i)
			magik.Transparency = newTrans
			magik.Size = Vector3.new(ns,ns,ns)
			magik.CFrame = cf
			rs:wait()
	    end
		magik:Destroy()
		wait()
    end)
end
----------------------------------------------------
Magik2 = function()
	spawn(function()
		if stanceToggle == "Normal" or stanceToggle == "Running" or stanceToggle == "Melee" then
		local function lerp(a,b,c)
			return a+(b-a)*c	
		end
		local function rndRange(rng)
			return math.random(-rng*1000,rng*1000)/1000	
		end
		local magik2 = Instance.new("Part", rarm)
		local Colors = {"Really red", "Really black"}
		magik2.Anchored = true
		magik2.Locked = true
		magik2.FormFactor = "Custom"
		magik2.Size = Vector3.new(1.2, 1.2, 1.2)
		magik2.TopSurface = "Smooth"
		magik2.BottomSurface = "Smooth"
		magik2.Transparency = 0
		magik2.Material = "Neon"
		magik2.CanCollide = false
		
		if holy == false then
		magik2.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		end
		
		local mr = math.rad
		local rnx,rny,rnz = mr(rndRange(180)),mr(rndRange(180)),mr(rndRange(180))
		local cf = rarm.CFrame * CFrame.new(0, -.8, 0) * CFrame.Angles(rnx,rny,rnz)
		magik2.CFrame = cf
		for i = 0, 1, .05 do
			local newTrans = lerp(0.5, 1, i)
			local ns = lerp(1,1.2,i)
			magik2.Transparency = newTrans
			magik2.Size = Vector3.new(ns,ns,ns)
			magik2.CFrame = cf
			rs:wait()
	    end
		magik2:Destroy()
		elseif stanceToggle ~= "Melee" or stanceToggle == "Normal" or stanceToggle == "Running" then
		wait()
		end
    end)
end

Mesh2 = function(par,num,x,y,z)
    local msh = _
    if num == 1 then
        msh = Instance.new("CylinderMesh",par)
    elseif num == 2 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = 3
    elseif num == 3 then
        msh = Instance.new("BlockMesh",par)
    elseif num == 4 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = "Torso"
    elseif type(num) == 'string' then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshId = num
    end 
    msh.Scale = Vector3.new(x,y,z)
    return msh
end

function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=Instance.new("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=char.Torso.Position
		nooutline(fp)
		fp.Material= material
		fp:BreakJoints()
		return fp
	end


it = Instance.new

Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)
function part2(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=Instance.new("Part")
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
		fp.Material= "Neon"
		fp:BreakJoints()
		return fp
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

Player.Character["Right Arm"].Transparency = 1
Player.Character["Right Leg"].Transparency = 1
MN=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle",Vector3.new(1.09732866, 2.19465828, 1.09732854))
MNweld=weld(m,Character["Right Arm"],MN,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0323486328, -0.0509860516, -0.00120401382, -0.00500982394, 0.00520668458, 0.999973893, -0.00739898486, 0.999958873, -0.00524367485, -0.999960065, -0.00742506143, -0.0049710935))
TR7=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","TR7",Vector3.new(1.09732866, 0.274332285, 1.09732854))
TR7weld=weld(m,MN,TR7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",TR7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1.02999997, 1.02999997))
MD9=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD9",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD9weld=weld(m,MN,MD9,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.741846681, 0.199262142, 1.00000405, -6.92205504e-06, 0.000154254027, 4.65649646e-05, 0.965939224, -0.25876984, -0.000147186685, 0.258768767, 0.965943158))
mesh("SpecialMesh",MD9,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.411340922, 1.01999998))
MD1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD1",Vector3.new(0.237408489, 0.259352177, 0.518704116))
MD1weld=weld(m,MN,MD1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.402763367, -0.974855185, 0.682875633, 0.99988991, -0.0150081124, -0.00168980728, 0.0149988253, 0.999872923, -0.00539785437, 0.00177063467, 0.00537188631, 0.999988079))
mesh("SpecialMesh",MD1,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD10",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD10weld=weld(m,MN,MD10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD10,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD11",Vector3.new(0.266768694, 1.09732914, 0.658397138))
MD11weld=weld(m,MN,MD11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.493839264, -0.274354219, 4.24385071e-05, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
MD12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD12",Vector3.new(0.266768694, 1.09732914, 0.658397138))
MD12weld=weld(m,MN,MD12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.493812561, -0.274300575, -0.000376224518, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD12,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
MD13=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD13",Vector3.new(1.09732866, 0.822996795, 1.09732854))
MD13weld=weld(m,MN,MD13,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, 0.68582201, 0.000464439392, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD13,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD14=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD14",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD14weld=weld(m,MN,MD14,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-05, 0.603547096, 0.000416755676, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD14,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.411340922, 1.04999995))
MD15=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD15",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD15weld=weld(m,MN,MD15,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-05, 0.137180567, -4.529953e-05, -1.0000037, -0.000862163957, 0.000179466791, -0.000862103421, 0.999999523, 0.000520790287, -0.000179945491, 0.000520619913, -1.00000381))
mesh("SpecialMesh",MD15,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD16=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD16",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD16weld=weld(m,MN,MD16,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.86645508e-05, 0.932742357, 0.000658988953, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD16,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.411340922, 1.04999995))
MD19=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD19",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD19weld=weld(m,MN,MD19,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",MD19,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.01999998, 1.01999998))
MD18=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD18",Vector3.new(1.09732866, 0.266768783, 1.09732854))
MD18weld=weld(m,MN,MD18,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-05, -0.246893644, -0.00013256073, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD18,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.411340922, 1.01999998))
MD2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD2",Vector3.new(0.2574085, 0.259352177, 0.518704116))
MD2weld=weld(m,MN,MD2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.392555237, -0.573539257, 1.09872949, 0.999886394, -0.0152528733, -0.00162532134, 0.0119883548, 0.710953057, 0.70314008, -0.00956933573, -0.703074038, 0.71105516))
mesh("SpecialMesh",MD2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD3",Vector3.new(0.247408509, 0.259352177, 0.518704116))
MD3weld=weld(m,MN,MD3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.397964478, -0.817667723, 0.487944126, 0.999890864, -0.0149886403, -0.00193861127, 0.0139457425, 0.964460015, -0.263861924, 0.00582473399, 0.26380372, 0.964563668))
mesh("SpecialMesh",MD3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD4",Vector3.new(0.247408509, 0.259352177, 0.518704116))
MD4weld=weld(m,MN,MD4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.422103882, -0.82026124, 0.507567406, 0.999890864, -0.0149886403, -0.00193861127, 0.0139457425, 0.964460015, -0.263861924, 0.00582473399, 0.26380372, 0.964563668))
mesh("SpecialMesh",MD4,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD5",Vector3.new(0.2574085, 0.259352177, 0.518704116))
MD5weld=weld(m,MN,MD5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.427509308, -0.557831764, 1.11046171, 0.999886394, -0.0152528733, -0.00162532134, 0.0119883548, 0.710953057, 0.70314008, -0.00956933573, -0.703074038, 0.71105516))
mesh("SpecialMesh",MD5,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD6=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD6",Vector3.new(0.237408489, 0.259352177, 0.518704116))
MD6weld=weld(m,MN,MD6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417263031, -0.972257376, 0.702233315, 0.99988991, -0.0150081124, -0.00168980728, 0.0149988253, 0.999872923, -0.00539785437, 0.00177063467, 0.00537188631, 0.999988079))
mesh("SpecialMesh",MD6,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
MD7=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD7",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD7weld=weld(m,MN,MD7,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000442504883, 0.68581605, 0.000279426575, 1.00000381, 0.000690042973, -0.000169841573, 0.000690029934, -0.999999702, -0.000261242967, -0.000170052983, 0.000261111214, -1.00000393))
mesh("SpecialMesh",MD7,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
MD8=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD8",Vector3.new(1.09732866, 0.274332285, 1.09732854))
MD8weld=weld(m,MN,MD8,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",MD8,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.01999998, 1.01999998))
TR1=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","TR1",Vector3.new(0.266768694, 0.54866457, 0.548664272))
TR1weld=weld(m,MN,TR1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.548826218, 0.30154109, 4.57763672e-05, -0.000205519143, -0.0001726388, -1, -4.31765802e-05, 1, -0.00017263052, 1, 4.314119e-05, -0.000205526594))
mesh("SpecialMesh",TR1,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 0.700000048, 0.700000048))
TR2=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","TR2",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR2weld=weld(m,MN,TR2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, 0.741921067, 0.198978901, 1.00000405, -2.92747281e-05, -1.7457176e-05, 2.37242784e-05, 0.965939343, -0.258769363, 2.44602561e-05, 0.25876832, 0.965943277))
mesh("SpecialMesh",TR2,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.0822681859, 1.02999997))
TR3=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","TR3",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR3weld=weld(m,MN,TR3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-05, 0.603546381, 0.000186920166, 1.00000787, -8.63452442e-05, -2.6775524e-07, 8.62879679e-05, 1, -2.05411197e-07, 2.68686563e-07, 2.3024586e-07, 1.00000775))
mesh("SpecialMesh",TR3,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.0822681859, 1.05999994))
TR4=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","TR4",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR4weld=weld(m,MN,TR4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000106811523, 0.93274045, 0.000304222107, 1.00000787, -8.63452442e-05, -2.6775524e-07, 8.62879679e-05, 1, -2.05411197e-07, 2.68686563e-07, 2.3024586e-07, 1.00000775))
mesh("SpecialMesh",TR4,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 0.0822681859, 1.05999994))
TR5=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","TR5",Vector3.new(1.09732866, 0.274332285, 1.09732854))
TR5weld=weld(m,MN,TR5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-05, -0.960148811, -0.000584125519, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",TR5,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1.02999997, 1.02999997))
TR6=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","TR6",Vector3.new(1.09732866, 0.266768783, 1.09732854))
TR6weld=weld(m,MN,TR6,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-05, -0.246893644, -0.00013256073, 1.00000811, -2.88709998e-08, 3.02679837e-08, -2.93366611e-08, 0.99999994, 1.36606104e-08, 3.0733645e-08, 1.3564204e-08, 1.00000799))
mesh("SpecialMesh",TR6,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 0.0822681859, 1.02999997))
MD21=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","MD21",Vector3.new(0.266768694, 0.54866457, 0.548664272))
MD21weld=weld(m,MN,MD21,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.548921585, 0.301375628, 0.000118255615, -0.000262488145, -9.39509191e-05, -1.00000393, -0.000154611655, 1, -9.38984886e-05, 1.00000393, 0.000154557638, -0.000262471847))
mesh("SpecialMesh",MD21,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.411340952, 0.900000036, 0.900000036))
MN=part2(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Handle",Vector3.new(1.03740847, 2.07481742, 1.03740823))
MNweld=weld(m,Character["Right Leg"],MN,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00872802734, 0.00284510851, -0.0114479065, 0.000559218752, 0.00461495388, -0.999989212, 0.0116515048, 0.999921441, 0.00462115649, 0.999931991, -0.0116539635, 0.000505403674))
FB1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB1",Vector3.new(0.252201617, 1.03740871, 0.622444928))
FB1weld=weld(m,MN,FB1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.466812134, -0.259373605, 4.19616699e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB1,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.415454358, 1, 1.00999999))
FB10=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB10",Vector3.new(1.03740847, 0.259352177, 1.03740823))
FB10weld=weld(m,MN,FB10,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.14440918e-05, -0.907726586, -0.0001745224, -1.00000012, -4.3686945e-05, -0.000145533413, -4.37181443e-05, 1, 0.00021532696, 0.000145524042, 0.000215333974, -1))
mesh("SpecialMesh",FB10,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
FB11=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB11",Vector3.new(0.518704236, 0.778056443, 0.252201557))
FB11weld=weld(m,MN,FB11,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-05, 0.49278298, -0.518682957, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB11,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 0.415454417))
FB12=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB12",Vector3.new(1.03740847, 0.778056443, 1.03740823))
FB12weld=weld(m,MN,FB12,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.14440918e-05, 0.648371816, 1.38282776e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB12,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1.00999999, 1.00999999))
FB2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB2",Vector3.new(1.03740847, 0.252201647, 1.03740823))
FB2weld=weld(m,MN,FB2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-05, 0.726178706, 4.57763672e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB2,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.415454417, 1.04999995))
FB3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB3",Vector3.new(1.03740847, 0.259352177, 0.518704116))
FB3weld=weld(m,MN,FB3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000141143799, -0.907841623, 0.725996017, -1.00000012, -4.3686945e-05, -0.000145533413, -4.37181443e-05, 1, 0.00021532696, 0.000145524042, 0.000215333974, -1))
mesh("SpecialMesh",FB3,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
FB4=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB4",Vector3.new(1.03740847, 0.259352177, 0.518704116))
FB4weld=weld(m,MN,FB4,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000263214111, -0.495628834, 1.08177543, -1, -0.000208274461, -0.000166981248, -2.93208286e-05, 0.707433105, -0.706780434, 0.000265331706, -0.706780314, -0.707433105))
mesh("SpecialMesh",FB4,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1.00999999))
FB5=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FB5",Vector3.new(1.03740847, 0.252201647, 1.03740823))
FB5weld=weld(m,MN,FB5,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.67028809e-05, 0.933657289, 6.19888306e-05, 1, 0, 5.82076609e-11, 0, 1, -2.07592166e-10, 5.82076609e-11, -2.07592166e-10, 1.00000012))
mesh("SpecialMesh",FB5,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.415454