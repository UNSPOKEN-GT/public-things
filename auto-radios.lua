--[[
 // 🎃 Roblox but every second you get +1 Jump Power
 // YOU MUST HAVE >= 20 CANDY IN ORDER TO FOR THIS TO WORK!
 // This script will automatically give you radios + drop them to lag the server for a while
]]

-- value
local amount = 500 -- how much u want to be given

-- player
local haha = game.Players
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer

-- variables
local key = "Backspace"

--script
for i = 1,amount do
   game:GetService("ReplicatedStorage").ToolEvents.RadioEvent:FireServer()
end

wait(5)

for i,v in pairs(plr:FindFirstChildOfClass("Backpack"):GetChildren()) do
   if v:IsA("Tool") or v:IsA("HopperBin") then
      v.Parent = plr.Character
   end
end

wait(1)

game:GetService("VirtualInputManager"):SendKeyEvent(true, key, false, game)
wait()
game:GetService("VirtualInputManager"):SendKeyEvent(false, key, false, game)
