local FPS1 = 0 
local FPSCOUNT

Main=Instance.new("ScreenGui",game.CoreGui)
FPS=Instance.new("TextBox",Main)
FPS.Position=UDim2.new(0.94,0,0,0)
FPS.Size=UDim2.new(0,1,0,1)
FPS.TextColor3 = Color3.new(70,70,70)
FPS.BackgroundTransparency = 1
FPS.TextXAlignment = "Left"
FPS.TextYAlignment = "Top"
FPS.TextSize = 12
FPS.Text = "0"

spawn(function() 
   game:GetService("RunService").Heartbeat:Connect(function()
        FPS1 = FPS1+1
   end)
end)

spawn(function() 
   while wait(1) do
        FPSCOUNT = tostring(FPS1)
        FPS1 = 0 
        FPS.Text = (" FPS: " .. FPSCOUNT)
   end 
end)
