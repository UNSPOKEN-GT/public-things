--// somewhat of a good script, ill try fixing it when i get motivated

local camera = game.Workspace.CurrentCamera

camera.CameraType = Enum.CameraType.Scriptable
camera.CFrame = CFrame.new(20000, -20000, 20000)
task.wait(2)
local Players = game:GetService("Players")
local HTTPService = game:GetService("HttpService")
local webLink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
local lol = game.Players.LocalPlayer
local function serverHop()
    while true do
        local serverList = {}
        for _, v in pairs(HTTPService:JSONDecode(game:HttpGetAsync(webLink)).data) do
            if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
                table.insert(serverList,v.id)
            end
        end

        if #serverList > 0 then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, serverList[math.random(1, #serverList)])
            break
        end
    end
end 

local _wait = task.wait -- defining task wait
local ins = table.insert -- defining table insert
--local whitelist = {} -- tools that will not be effected by the script
local trash = {} -- this will cache our item we want to drop
local cons = {}
local player = game:GetService('Players').LocalPlayer
local character = player.Character -- less indexing
local click = game:GetService('Workspace')['Trash can'].Trash.Can.ClickDetector -- less indexing

ins(cons, player.Backpack.ChildAdded:Connect(function(tool)
  if tool.Name == 'TrashCola' then
    ins(trash, tool)
    _wait()
    tool.Parent = character
  end
end))

ins(cons, character['Right Arm'].ChildAdded:Connect(function(grip) -- this will drop the item since this is the weld for the tool to your hand
  if grip:IsA('Weld') then
    _wait()
    grip:Destroy()
  end
end))



for i = 1, 900 do
  fireclickdetector(click)
end

ins(cons, workspace.ChildAdded:Connect(function(tool)
  if tool.Name('TrashCola') then --:IsA('ClassName')
    _wait() -- you have to wait before putting something to nil if you connect with a Added signal
    tool:Destroy()
  end
end))

repeat wait()print(#trash) until #trash==900
for i, v in next, trash do --next() is faster than pairs if you are iterating a table for an object
  v.Parent = character
  _wait()
  v.Parent = workspace
end

-- add trigger to run :Disconnect() on all of the signals in cons table to disable
