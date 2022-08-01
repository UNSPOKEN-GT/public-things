perm()
if Admin_Folder.Regen.CFrame.Y >= 7757452 then
 notif('Regen has already been moved.')
else
 cmd('fly me')
 wait(.2)
 cmd('gear me 108158379')
 wait(0.2)
 game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.IvoryPeriastron)
 wait(0.5)
 local PositionCFrame = Vector3.new(math.random(1e4,6e8), math.random(1e4,6e8), math.random(1e4,6e8))
 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(PositionCFrame)
 wait(.3)
 local ohEnumItem1 = Enum.KeyCode.E
 cmd('unfly me')
 game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(ohEnumItem1)
 wait(0.5)
end
for i = 1,5 do
 if Admin_Folder.Regen.CFrame.Y < 7757452 then
  repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
  local cf = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
  local looping = true
  spawn(function()
   while true do
    game:GetService('RunService').Heartbeat:Wait()
    game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
    cf.CFrame = Admin_Folder.Regen.CFrame * CFrame.new(-1*(Admin_Folder.Regen.Size.X/2)-(game.Players.LocalPlayer.Character['Torso'].Size.X/2), 0, 0)
    if not looping then break end
   end
  end)
  spawn(function() while looping do wait(.1) cmd('unpunish me') end end)
  wait(.3)
  looping = false
 end
end
wait(0.5)
local ohEnumItem1 = Enum.KeyCode.E
game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(ohEnumItem1)
wait(0.5)
cmd('pm '..game.Players.LocalPlayer.Name..' Successfully moved regen pad.')
cmd('respawn me')		
