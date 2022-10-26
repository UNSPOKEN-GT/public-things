-- IMPROVED VERSION!

local Game_Folder =  game:GetService("Workspace").Terrain["_Game"]
local Admin_Folder = Game_Folder.Admin

local players = game.Players
local lp = players.LocalPlayer

local lpservice = game:GetService("Players").LocalPlayer.Character

-- NOTIFICATION SYSTEM >
local function notif(notification)
    game.StarterGui:SetCore("SendNotification", {
       Title = "UNSPOKEN's Hub"; 
       Text = notification; 
       Duration = 3.5;
    })
end

-- SAVE REGEN CHECKER > - FUNCTION MADE BY ME
local function saveregen()
    local regen =  Admin_Folder:FindFirstChild("Regen")
    local jd =     game.JobId
    local regens = regen.Position.X..", "..regen.Position.Y..", "..regen.Position.Z
   
    local info = "\n- JobID: "..jd.."\n".."\n- Reg Coords: "..regens.."\n\n"
   
    if regen then
        if not isfile('regencoords.json') then
            notif("NO FILES DETECTED, OVERRIDING..")
            writefile('regencoords.json', info)
            notif('CREATED FILE: "regencoords.json"..\nWRITING INFO..')
        else
            appendfile('regencoords.json', info)
            notif('#1 WROTE INFO INTO FILE:\n"regencoords.json"')
        end
    end
end

-- CHAT BYPASS > (pretty sure this was made by techn0xreaper aka 'creator' of shortcut)
local ChatBar = lp.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar
local function cmd(massage)
    ChatBar:SetTextFromInput(massage)
    plaers:Chat(massage)
    ChatBar.Text = ""
end

-- SCRIPT >
if Admin_Folder.Regen.CFrame.Y >= 1e4 then
    notif('Regen has already been moved.')
else
    cmd('fly me')
    wait(.2)
    cmd('gear me 108158379')
    wait(0.2)
    lpservice.Character.Humanoid:EquipTool(lpservice.Backpack.IvoryPeriastron)
    wait(0.5)
    lpservice.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(math.random(1e4,6e8), math.random(1e4,6e8), math.random(1e4,6e8)))
    wait(.3)
    cmd('unfly me')
    lpservice.Character.IvoryPeriastron.Remote:FireServer(Enum.KeyCode.E)
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
lpservice.Character.IvoryPeriastron.Remote:FireServer(ohEnumItem1)

wait(0.5)

cmd('pm '..lp.Name..' Successfully moved regen pad.')
cmd('respawn me')		
