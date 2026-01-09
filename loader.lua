--==================================================
-- BOOM BOOM HUB | عربي | DEV V4
-- Fixed & Stable Edition
--==================================================

-- Services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LP = Players.LocalPlayer

local function GetHumanoid()
	if LP.Character then
		return LP.Character:FindFirstChildOfClass("Humanoid")
	end
end

-- Rayfield UI
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
	Name = "💥 BOOM BOOM HUB | DEV V4",
	LoadingTitle = "BOOM BOOM",
	LoadingSubtitle = "DEV V4 Update",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "BOOMBOOM_DEV",
		FileName = "DevV4"
	}
})

--==================================================
-- 💀 Broken System
--==================================================
local BrokenTab = Window:CreateTab("💀 بروكن سستم", 4483362458)

BrokenTab:CreateButton({
	Name = "تشغيل Broken System",
	Callback = function()
		pcall(function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/script"))()
		end)
	end
})

--==================================================
-- 🏃 الحركة
--==================================================
local MoveTab = Window:CreateTab("🏃 الحركة", 4483362458)

MoveTab:CreateSlider({
	Name = "السرعة",
	Range = {16,300},
	Increment = 1,
	CurrentValue = 16,
	Callback = function(v)
		local hum = GetHumanoid()
		if hum then hum.WalkSpeed = v end
	end
})

MoveTab:CreateSlider({
	Name = "القفز",
	Range = {50,300},
	Increment = 5,
	CurrentValue = 50,
	Callback = function(v)
		local hum = GetHumanoid()
		if hum then hum.JumpPower = v end
	end
})

--==================================================
-- 🌈 الجرافيكس
--==================================================
local VisualTab = Window:CreateTab("🌈 الجرافيكس", 4483362458)

VisualTab:CreateButton({
	Name = "RTX واقعي",
	Callback = function()
		pcall(function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/RTX%20Gui%20Hub%20Obfuscator"))()
		end)
	end
})

--==================================================
-- 🎥 الكاميرا
--==================================================
local CameraTab = Window:CreateTab("🎥 الكاميرا", 4483362458)

CameraTab:CreateButton({
	Name = "Shift Lock",
	Callback = function()
		pcall(function()
			loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Shift-lock-64302"))()
		end)
	end
})

--==================================================
-- 💃 الرقصات / المشيات
--==================================================
local EmoteTab = Window:CreateTab("💃 رقصات / مشيات V2", 4483362458)

EmoteTab:CreateButton({
	Name = "تشغيل رقصات ومشيات V2",
	Callback = function()
		pcall(function()
			loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-7yd7-I-Emote-Script-48024"))()
		end)
	end
})

--==================================================
-- 🎯 القتال / Aimbot
--==================================================
local CombatTab = Window:CreateTab("🎯 قتال", 4483362458)

CombatTab:CreateButton({
	Name = "Aimbot | Flick",
	Callback = function()
		pcall(function()
			loadstring(game:HttpGet("https://rawscripts.net/raw/FPS-Flick-Aimbot-Script-by-me-used-little-AI-81651"))()
		end)
	end
})

--==================================================
-- 🧩 سكربتات عامة
--==================================================
local PublicTab = Window:CreateTab("🧩 سكربتات عامة", 4483362458)

PublicTab:CreateButton({
	Name = "4x2x9x4x0 v6 GUI",
	Callback = function()
		pcall(function()
			loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-4x2x9x4x0-v6-gui-57588"))()
		end)
	end
})

PublicTab:CreateButton({
	Name = "Xester V1",
	Callback = function()
		pcall(function()
			loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Xester-V1-46145"))()
		end)
	end
})

PublicTab:CreateButton({
	Name = "ثعبان نو في 🐍",
	Callback = function()
		pcall(function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Avtor1zaTion/NO-FE-SNAKE/refs/heads/main/NO-FE-Snake.txt"))()
		end)
	end
})

PublicTab:CreateButton({
	Name = "Jark / Spider",
	Callback = function()
		pcall(function()
			loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))("Spider Script")
		end)
	end
})

PublicTab:CreateButton({
	Name = "God Mode",
	Callback = function()
		pcall(function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/miglels33/God-Mode-Script/refs/heads/main/GodModeScript.md"))()
		end)
	end
})

--==================================================
-- 💰 المال
--==================================================
local MoneyTab = Window:CreateTab("💰 المال", 4483362458)

MoneyTab:CreateButton({
	Name = "Grow A Garden | Money",
	Callback = function()
		pcall(function()
			local Sell = ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("SellPet_RE")
			task.spawn(function()
				while task.wait(1) do
					if LP.Character then
						for _,tool in pairs(LP.Character:GetChildren()) do
							if tool:IsA("Tool") and tool:GetAttribute("ItemType") == "Pet" then
								Sell:FireServer(tool)
							end
						end
					end
				end
			end)
		end)
	end
})

MoneyTab:CreateButton({
	Name = "Fight to Steal Money",
	Callback = function()
		pcall(function()
			loadstring(game:HttpGet("https://rawscripts.net/raw/Fight-to-Steal-Money-open-source-80939"))()
		end)
	end
})

MoneyTab:CreateButton({
	Name = "Make a Brainrot Army | Money",
	Callback = function()
		pcall(function()
			loadstring(game:HttpGet("https://rawscripts.net/raw/UPD-Make-a-Brainrot-Army-inf-money-inf-67-81071"))()
		end)
	end
})

--==================================================
-- ℹ️ حول
--==================================================
local AboutTab = Window:CreateTab("ℹ️ حول", 4483362458)

AboutTab:CreateParagraph({
	Title = "BOOM BOOM HUB | DEV V4",
	Content = [[
• تحديث DEV V4
• سكربت عربي
• سريع + آمن
• نادر الاستخدام
• يحتاج Delta Keyboard لبعض السكربتات

Dev: أنت + GPT
]]
})

Rayfield:Notify({
	Title = "BOOM BOOM DEV V4",
	Content = "تم تحميل السكربت بنجاح 💥",
	Duration = 5
})
