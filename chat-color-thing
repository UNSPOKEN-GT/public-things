--- Settings ---

local SpecialUserId = game.Players.LocalPlayer.UserId -- The user id of the player who will have different bubble chat color

-- The following settings will apply to the special user id given above
local LocalBackgroundColor = Color3.fromRGB(0, 0, 0)
local LocalTextColor = Color3.fromRGB(255, 255, 255)

-- The following settings will apply to other players
local ServerBackgroundColor = Color3.fromRGB(250, 250, 250)
local ServerTextColor = Color3.fromRGB(57, 59, 61)

------------------

    local ChatService = game:GetService("Chat") -- Gets the Chat service

    local localPlayerSettings = {
    	BackgroundColor3 = ServerBackgroundColor, -- Background Color of the bubblechat
    	TextColor3 = ServerTextColor, -- Text Color of the bubble chat
    	TextSize = 16, -- Text size of the text in bubble chat
    	Font = Enum.Font.GothamSemibold, -- Font of the text in bubble chat
    	
    	UserSpecificSettings = {
    		[SpecialUserId] = {
    			BackgroundColor3 = LocalBackgroundColor, -- Background Color of the bubblechat
    			TextColor3 = LocalTextColor, -- Text Color of the bubble chat
    			TextSize = 16, -- Text size of the text in bubble chat
    			Font = Enum.Font.GothamSemibold, -- Font of the text in bubble chat
    		}
    	}
    }
    -- Apply the settings --

    pcall(function()
    	ChatService:SetBubbleChatSettings(localPlayerSettings)
    end)
