--[[
 // 🎃 Roblox but every second you get +1 Jump Power
 // A bit slow and quite bad since I made this in a rush
 // Will automatically win for you
]]

-- boolean
local toggle = true

-- table
local ins = table.insert
local wins = {}

-- collect the parts and put them into the table
for _, v in next, workspace:GetChildren() do
    if v.Name == 'Part' and v:FindFirstChild('TouchInterest') and v:FindFirstChild('TeleFunction') then
        ins(wins, v)
    end
end

-- goes through the table as a 'list' and fires a touch event
while toggle do
    local head = game.Players.LocalPlayer.Character.Head
    for _, win in next, wins do
        firetouchinterest(head , win, 1)
        firetouchinterest(head , win, 0)
        task.wait()
    end
end
