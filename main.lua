-- MM2 GUI - Rayfield + Key System by Moonhook

-- Load Rayfield
local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source.lua"))()

-- KEY SYSTEM
local Key = "Mm2k"
local AccessGranted = false

local KeyUI = Rayfield:CreateWindow({
    Name = "Moonhook | MM2 Key",
    LoadingTitle = "Moonhook MM2",
    LoadingSubtitle = "by Moonhook",
    ConfigurationSaving = {
        Enabled = false,
    },
    Discord = {
        Enabled = false,
    },
    KeySystem = true,
    KeySettings = {
        Title = "Moonhook MM2 Key",
        Subtitle = "Enter Key to Access GUI",
        Note = "Key: Mm2k",
        SaveKey = false,
        Key = Key
    }
})

Rayfield:Notify({
    Title = "Moonhook",
    Content = "Correct key entered!",
    Duration = 5,
    Image = 4483362458,
})

-- MAIN GUI (only loads after key is accepted)
local Window = Rayfield:CreateWindow({
    Name = "Moonhook | MM2 Script",
    LoadingTitle = "Moonhook GUI",
    LoadingSubtitle = "by Moonhook",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "MoonhookMM2"
    }
})

-- ESP Feature
local ESP = Window:CreateButton({
    Name = "Enable ESP",
    Callback = function()
        for _, plr in pairs(game:GetService("Players"):GetPlayers()) do
            if plr ~= game.Players.LocalPlayer and plr.Character then
                if not plr.Character:FindFirstChild("Highlight") then
                    local h = Instance.new("Highlight", plr.Character)
                    h.FillColor = Color3.fromRGB(255, 0, 0)
                    h.OutlineColor = Color3.fromRGB(255, 255, 255)
                    h.FillTransparency = 0.5
                end
            end
        end
        Rayfield:Notify({
            Title = "Moonhook",
            Content = "ESP Enabled",
            Duration = 3,
            Image = 4483362458,
        })
    end
})

-- Charm Effect
local Charm = Window:CreateButton({
    Name = "Enable Charm Effect",
    Callback = function()
        local char = game.Players.LocalPlayer.Character
        if char and char:FindFirstChild("HumanoidRootPart") then
            if not char.HumanoidRootPart:FindFirstChildOfClass("ParticleEmitter") then
                local p = Instance.new("ParticleEmitter", char.HumanoidRootPart)
                p.Texture = "rbxassetid://4841070226"
                p.Rate = 20
                p.Size = NumberSequence.new(1.5)
                p.Color = ColorSequence.new(Color3.fromRGB(255, 0, 255))
            end
        end
        Rayfield:Notify({
            Title = "Moonhook",
            Content = "Charm Activated",
            Duration = 3,
            Image = 4483362458,
        })
    end
})
