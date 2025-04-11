local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Articles-Hub/ROBLOXScript/refs/heads/main/Library/Orion/Source.lua')))()
local LocalPlayer = Players.LocalPlayer

local Window = OrionLib:MakeWindow({Name = "Бульба Лаггер", HidePremium = false, SaveConfig = false})

local Info = Window:MakeTab({
    Name = "Информация",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Info:AddLabel("Милена шлюха")
Info:AddLabel("Милена шлюха")
Info:AddLabel("Милена шлюха")
Info:AddLabel("Милена шлюха")
Info:AddLabel("Милена шлюха")
Info:AddLabel("Милена шлюха")
Info:AddLabel("Милена шлюха")
Info:AddLabel("Милена шлюха")
Info:AddLabel("Милена шлюха")

local MainTab = Window:MakeTab({
    Name = "Главное",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

MainTab:AddToggle({
	Name = "Взрыв сервера с Грабом🤑",
	Default = false,
  Flag = "CoolToggle",
	Callback = function(Value)
		HitmanSpam = Value
    if LocalPlayer.leaderstats.Glove == "Grab" then
      if HitmanSpam then
			-- Запускаем столько корутин, сколько указано в VolnaProp
			for i = 1, 30 do
				coroutine.wrap(function()
					while HitmanSpam do
						-- Вызываем событие
						game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
						task.wait()  -- Задержка между вызовами
					end
				end)()
			end
		end
    else
        CoolToggle:Set(false)
        OrionLib:MakeNotification({
	Name = "Ошибка",
	Content = "У тебя должен быть grab одет. Милена шлюха",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    end
	end    
})
