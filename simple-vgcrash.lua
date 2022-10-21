local players = game.Players
local lp = players.LocalPlayer

-- CHAT BYPASS >> (credits to i actually forgot lmao)
local ChatBar = lp.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar
local function cmd(massage)
    ChatBar:SetTextFromInput(massage)
    plaers:Chat(massage)
    ChatBar.Text = ""
end

-- SCRIPT >>
cmd("gear me 94794847")

task.wait(.36) -- any lower would probably break the script
lp.Character.Humanoid:EquipTool(lp.Backpack.VampireVanquisher)
task.wait(.155)-- any lower would probably break the script

for i = 1,10 do
    cmd("size me .3")
    cmd("size me .3")
    cmd("size me .3")
    cmd("clone me")
end
