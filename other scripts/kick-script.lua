--[[
basically a script that uses the other chat command to allow only people who are whitelisted
to kick people who have executed this script, is this useful? absolutely fucking not, is it a
cool concept to mess with, yes

added a quick reason system, if no reason is given, then it sets it to 'No reason given'
]]

local prefix = ':'
local whitelist = {"sansmanz666", "jhone_doe110101", "ISt0leYourWatermelon"}

local plrs = game.Players

for _, v in pairs(whitelist) do
    if plrs:FindFirstChild(v) then
        plrs[v].Chatted:Connect(function(msg)
            msg = msg:lower()
            if string.sub(msg,1,3) == "/e " then
                msg = string.sub(msg,4)
            end
            
            if string.sub(msg,1,1) == prefix then
                local cmd
                local space = string.find(msg," ")
                if space then
                    cmd = string.sub(msg,2,space-1)
                else
                    cmd = string.sub(msg,2)
                end
                
                if cmd == "kick" then
                    local space1 = string.find(msg, " ")
                    local space2 = string.find(msg, " ", space1 + 1)
                    local plr = string.sub(msg, space1 + 1, space2 and space2 - 1 or #msg)
                    local reason = space2 and string.sub(msg, space2 + 1) or 'No reason given'
                    
                    for _, v in ipairs(plrs:GetPlayers()) do
                        if string.sub(v.Name:lower(), 1, #plr) == plr then
                            v:Kick(reason)
                        end
                    end
                end
            end
        end)
    end
end
