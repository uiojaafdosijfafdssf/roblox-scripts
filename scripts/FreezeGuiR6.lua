-- made by uiojaafdosijfafdssf (on roblox) 
-- and arChEmiT (on v3rmillion) fixed the limbs not freezing
-- yes i used gui to lua to make this so sorry for the messy code

-- Instances:

local FreezeGuiR6 = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local torso = Instance.new("TextButton")
local rightarm = Instance.new("TextButton")
local leftarm = Instance.new("TextButton")
local head = Instance.new("TextButton")
local rightleg = Instance.new("TextButton")
local leftleg = Instance.new("TextButton")
local signature = Instance.new("TextLabel")
local thawleftleg = Instance.new("TextButton")
local thawrightleg = Instance.new("TextButton")
local thawtorso = Instance.new("TextButton")
local thawrightarm = Instance.new("TextButton")
local thawleftarm = Instance.new("TextButton")
local thawhead = Instance.new("TextButton")
local thaw = Instance.new("TextButton")
local freeze = Instance.new("TextButton")

--Properties:

FreezeGuiR6.Name = "Freeze Gui R6"
FreezeGuiR6.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
FreezeGuiR6.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = FreezeGuiR6
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.BackgroundTransparency = 0.250
main.BorderSizePixel = 0
main.Position = UDim2.new(0.0499999933, 0, 0.0500000045, 0)
main.Size = UDim2.new(0, 272, 0, 312)
main.Active = true
main.Draggable = true

Title.Name = "Title"
Title.Parent = main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(0, 272, 0, 20)
Title.Font = Enum.Font.SourceSans
Title.Text = "Freeze Limbs R6"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextSize = 14.000

torso.Name = "torso"
torso.Parent = main
torso.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
torso.Position = UDim2.new(0.360294104, 0, 0.378205121, 0)
torso.Size = UDim2.new(0, 75, 0, 75)
torso.Font = Enum.Font.SourceSans
torso.Text = "Torso"
torso.TextColor3 = Color3.fromRGB(0, 0, 0)
torso.TextScaled = true
torso.TextSize = 14.000
torso.TextWrapped = true
torso.MouseButton1Down:Connect(function()
   game:GetService("Players").LocalPlayer.Character.Torso.Anchored = true
end)

rightarm.Name = "right arm"
rightarm.Parent = main
rightarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rightarm.Position = UDim2.new(0.676470578, 0, 0.378205121, 0)
rightarm.Size = UDim2.new(0, 37, 0, 75)
rightarm.Font = Enum.Font.SourceSans
rightarm.Text = "Right Arm"
rightarm.TextColor3 = Color3.fromRGB(0, 0, 0)
rightarm.TextScaled = true
rightarm.TextSize = 14.000
rightarm.TextWrapped = true
rightarm.MouseButton1Down:Connect(function()
   game:GetService("Players").LocalPlayer.Character["Right Arm"].Anchored = true
end)

leftarm.Name = "left arm"
leftarm.Parent = main
leftarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
leftarm.Position = UDim2.new(0.183823526, 0, 0.378205121, 0)
leftarm.Size = UDim2.new(0, 37, 0, 75)
leftarm.Font = Enum.Font.SourceSans
leftarm.Text = "Left Arm"
leftarm.TextColor3 = Color3.fromRGB(0, 0, 0)
leftarm.TextScaled = true
leftarm.TextSize = 14.000
leftarm.TextWrapped = true
leftarm.MouseButton1Down:Connect(function()
   game:GetService("Players").LocalPlayer.Character["Left Arm"].Anchored = true
end)

head.Name = "head"
head.Parent = main
head.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
head.Position = UDim2.new(0.430147052, 0, 0.230769232, 0)
head.Size = UDim2.new(0, 37, 0, 37)
head.Font = Enum.Font.SourceSans
head.Text = "Head"
head.TextColor3 = Color3.fromRGB(0, 0, 0)
head.TextScaled = true
head.TextSize = 14.000
head.TextWrapped = true
head.MouseButton1Down:Connect(function()
   game:GetService("Players").LocalPlayer.Character.Head.Anchored = true
end)

rightleg.Name = "right leg"
rightleg.Parent = main
rightleg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rightleg.Position = UDim2.new(0.50999999, 0, 0.638000011, 0)
rightleg.Size = UDim2.new(0, 37, 0, 75)
rightleg.Font = Enum.Font.SourceSans
rightleg.Text = "Right Leg"
rightleg.TextColor3 = Color3.fromRGB(0, 0, 0)
rightleg.TextScaled = true
rightleg.TextSize = 14.000
rightleg.TextWrapped = true
rightleg.MouseButton1Down:Connect(function()
   game:GetService("Players").LocalPlayer.Character["Right Leg"].Anchored = true
end)

leftleg.Name = "left leg"
leftleg.Parent = main
leftleg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
leftleg.Position = UDim2.new(0.349999994, 0, 0.638000011, 0)
leftleg.Size = UDim2.new(0, 37, 0, 75)
leftleg.Font = Enum.Font.SourceSans
leftleg.Text = "Left Leg"
leftleg.TextColor3 = Color3.fromRGB(0, 0, 0)
leftleg.TextScaled = true
leftleg.TextSize = 14.000
leftleg.TextWrapped = true
leftleg.MouseButton1Down:Connect(function()
   game:GetService("Players").LocalPlayer.Character["Left Leg"].Anchored = true
end)

signature.Name = "signature"
signature.Parent = main
signature.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
signature.BackgroundTransparency = 1.000
signature.BorderSizePixel = 0
signature.Position = UDim2.new(0.382352948, 0, 0.920673072, 0)
signature.Size = UDim2.new(0, 168, 0, 24)
signature.Font = Enum.Font.SourceSans
signature.Text = "Made by uio#9765"
signature.TextColor3 = Color3.fromRGB(0, 0, 0)
signature.TextScaled = true
signature.TextSize = 14.000
signature.TextWrapped = true

thawleftleg.Name = "thaw left leg"
thawleftleg.Parent = main
thawleftleg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
thawleftleg.Position = UDim2.new(0.210294172, 0, 0.819361567, 0)
thawleftleg.Size = UDim2.new(0, 37, 0, 20)
thawleftleg.ZIndex = 2
thawleftleg.Font = Enum.Font.SourceSans
thawleftleg.Text = "Thaw Left Leg"
thawleftleg.TextColor3 = Color3.fromRGB(0, 0, 0)
thawleftleg.TextScaled = true
thawleftleg.TextSize = 14.000
thawleftleg.TextWrapped = true
thawleftleg.MouseButton1Down:Connect(function()
   game:GetService("Players").LocalPlayer.Character["Left Leg"].Anchored = false
end)

thawrightleg.Name = "thaw right leg"
thawrightleg.Parent = main
thawrightleg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
thawrightleg.Position = UDim2.new(0.646029413, 0, 0.819361448, 0)
thawrightleg.Size = UDim2.new(0, 37, 0, 20)
thawrightleg.ZIndex = 2
thawrightleg.Font = Enum.Font.SourceSans
thawrightleg.Text = "Thaw Right Leg"
thawrightleg.TextColor3 = Color3.fromRGB(0, 0, 0)
thawrightleg.TextScaled = true
thawrightleg.TextSize = 14.000
thawrightleg.TextWrapped = true
thawrightleg.MouseButton1Down:Connect(function()
   game:GetService("Players").LocalPlayer.Character["Right Leg"].Anchored = false
end)

thawtorso.Name = "thaw torso"
thawtorso.Parent = main
thawtorso.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
thawtorso.Position = UDim2.new(0.566176474, 0, 0.23891513, 0)
thawtorso.Size = UDim2.new(0, 31, 0, 30)
thawtorso.ZIndex = 2
thawtorso.Font = Enum.Font.SourceSans
thawtorso.Text = "Thaw Torso"
thawtorso.TextColor3 = Color3.fromRGB(0, 0, 0)
thawtorso.TextScaled = true
thawtorso.TextSize = 14.000
thawtorso.TextWrapped = true
thawtorso.MouseButton1Down:Connect(function()
   game:GetService("Players").LocalPlayer.Character.Torso.Anchored = false
end)

thawrightarm.Name = "thaw right arm"
thawrightarm.Parent = main
thawrightarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
thawrightarm.Position = UDim2.new(0.8125, 0, 0.553017676, 0)
thawrightarm.Size = UDim2.new(0, 37, 0, 20)
thawrightarm.ZIndex = 2
thawrightarm.Font = Enum.Font.SourceSans
thawrightarm.Text = "Thaw Right Arm"
thawrightarm.TextColor3 = Color3.fromRGB(0, 0, 0)
thawrightarm.TextScaled = true
thawrightarm.TextSize = 14.000
thawrightarm.TextWrapped = true
thawrightarm.MouseButton1Down:Connect(function()
   game:GetService("Players").LocalPlayer.Character["Right Arm"].Anchored = false
end)

thawleftarm.Name = "thaw left arm"
thawleftarm.Parent = main
thawleftarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
thawleftarm.Position = UDim2.new(0.0477941185, 0, 0.553017676, 0)
thawleftarm.Size = UDim2.new(0, 37, 0, 20)
thawleftarm.ZIndex = 2
thawleftarm.Font = Enum.Font.SourceSans
thawleftarm.Text = "Thaw Left Arm"
thawleftarm.TextColor3 = Color3.fromRGB(0, 0, 0)
thawleftarm.TextScaled = true
thawleftarm.TextSize = 14.000
thawleftarm.TextWrapped = true
thawleftarm.MouseButton1Down:Connect(function()
   game:GetService("Players").LocalPlayer.Character["Left Arm"].Anchored = false
end)

thawhead.Name = "thaw head"
thawhead.Parent = main
thawhead.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
thawhead.Position = UDim2.new(0.294117659, 0, 0.298076928, 0)
thawhead.Size = UDim2.new(0, 37, 0, 16)
thawhead.ZIndex = 2
thawhead.Font = Enum.Font.SourceSans
thawhead.Text = "Thaw Head"
thawhead.TextColor3 = Color3.fromRGB(0, 0, 0)
thawhead.TextScaled = true
thawhead.TextSize = 14.000
thawhead.TextWrapped = true
thawhead.MouseButton1Down:Connect(function()
   game:GetService("Players").LocalPlayer.Character.Head.Anchored = false
end)

thaw.Name = "thaw"
thaw.Parent = main
thaw.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
thaw.Position = UDim2.new(0.716911793, 0, 0.112179488, 0)
thaw.Size = UDim2.new(0, 54, 0, 23)
thaw.Font = Enum.Font.SourceSans
thaw.Text = "Thaw"
thaw.TextColor3 = Color3.fromRGB(0, 0, 0)
thaw.TextScaled = true
thaw.TextSize = 14.000
thaw.TextWrapped = true
thaw.MouseButton1Down:Connect(function()
   for _,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
       if v:IsA("BasePart") then
           v.Anchored = false
       end
   end
end)

freeze.Name = "freeze"
freeze.Parent = main
freeze.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
freeze.Position = UDim2.new(0.485294163, 0, 0.112179488, 0)
freeze.Size = UDim2.new(0, 54, 0, 23)
freeze.Font = Enum.Font.SourceSans
freeze.Text = "Freeze"
freeze.TextColor3 = Color3.fromRGB(0, 0, 0)
freeze.TextScaled = true
freeze.TextSize = 14.000
freeze.TextWrapped = true
freeze.MouseButton1Down:Connect(function()
   for _,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
       if v:IsA("BasePart") then
           v.Anchored = true
       end
   end
end)
