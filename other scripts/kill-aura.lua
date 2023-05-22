--[[
a quick kill aura script i made, make sure you set the
radius to whatever the game allows, 

and to also change the fire event to what appears
when you attack a character
]]--

local plr = game.Players.LocalPlayer
local cha = plr.Character or plr.CharacterAdded:Wait()
local hrp = cha:WaitForChild("HumanoidRootPart")

local weapon = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") -- change to the location of the weapons/tools
local wname = weapon and weapon.Name or print("No Tool Found")

local range = 5
local cooldown = .01

getgenv().variable = true
local whitelist = {"person1", "person2"}

while variable do wait(cooldown)
    for _, v in pairs(game:GetService("Workspace"):GetChildren()) do -- change "game:GetService("Workspace")" to the location of where the characters are located
        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then 
            local distance = (v.HumanoidRootPart.Position - hrp.Position).Magnitude 
            if distance < (range or 15) then
                if game.Players.LocalPlayer.Name ~= v.Name then
                    if not table.find(whitelist, v.Name) then
                       game.Players.LocalPlayer.Character[wname].Events.Attack:FireServer(v.Humanoid, v.Torso)
                    end
                end
            end 
        end
    end
end
