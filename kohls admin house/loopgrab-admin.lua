local check = true

local workspace = game:GetService("Workspace")
local terrain = workspace.Terrain["_Game"]
local pads = terrain.Admin.Pads

local lp = game.Players.LocalPlayer
local char = lp.Character

local function loopgrab()
    if not pads:FindFirstChild(lp.Name .. "'s admin") then
        if pads:FindFirstChild("Touch to get admin") then
               local pad = pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head")
               local padCFrame = pads:FindFirstChild("Touch to get admin"):FindFirstChild("Head").CFrame
               wait(.125)
               pad.CanCollide = false
               repeat wait() until char:FindFirstChild("HumanoidRootPart")
	       pad.CFrame = char.HumanoidRootPart.CFrame
	       wait(.125)
	       pad.CFrame = padCFrame
	       pad.CanCollide = true
	else
	       fireclickdetector(terrain.Admin.Regen.ClickDetector, 0)
	end
    end
end

while check do wait()
    loopgrab()
end
