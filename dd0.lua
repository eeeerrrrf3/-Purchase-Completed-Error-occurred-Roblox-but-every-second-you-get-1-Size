local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Topikhub", "RJTheme3")

local Tab = Window:NewTab("Hub free")

local Section = Tab:NewSection("Free money")

Section:NewButton("To Finih", "ButtonInfo", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5300.00830078125, 10.796789169311523, -0.014334186911582947) 
end)


Section:NewButton("Auto Finih", "ButtonInfo", function()
    for i,v in pairs(game:GetDescendants()) do
if v.Name == 'Win' then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
end)

local main = Window:NewTab("Player")
local mainSection = main:NewSection("Power chits")

mainSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
     game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

mainSection:NewSlider("Jumppower", "Changes the jumppower", 450, 50, function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)

local Settings = Window:NewTab("Settings")
local SettingsSection = Settings:NewSection("Settings")

SettingsSection:NewKeybind("ToggleGui", "Set you toggle gui key", Enum.KeyCode.E, function()	Library:ToggleUI()end)