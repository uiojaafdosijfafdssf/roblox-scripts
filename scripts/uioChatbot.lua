local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

if ChatbotEnabled == false then
    print("Chatbot didn't load because it's disabled.")
else
    print("Chatbot (+ Chatspy lol) script by uiojaafdosijfafdssf. There are parts of other scripts in here too, I just don't know who made them all.")
end

--The original creator of the response part in this script based this script off of ChatBot (https://v3rmillion.net/showthread.php?pid=7828912#pid7828912 i think they are talking about this), but with the Simsimi api, therefore it's smarter and has funner answers.
--Also here is the Chatbot script I edited to make this: https://scriptblox.com/script/Universal-Script-Chatbot-1530 (scroll down to see the script.)
--And lastly, here is the Chatspy script I used to make this: https://v3rmillion.net/showthread.php?pid=8337920#pid8337920 (I needed it because I didn't know how to use Player.Chatted to detect if OTHER people chat, and not just me, using a LocalScript because I'm pretty sure Roblox patched that.)

--Modify these parameters as you want--
if ChatbotEnabled == nil then
    getgenv().ChatbotEnabled = true --Enables and disables the Chatbot. "true" for enabled, and "false" for disabled (both without quotes).
end
if ChatbotLanguage == nil then
    getgenv().ChatbotLanguage = "en" --Here is the language you want Simsimi to respond to, es for "Español", en for "English".
end
if ChatbotFilter == nil then
    getgenv().ChatbotFilter = "true" --If you want most swears to get filtered, set this to "true" (with quotes).
end
if ChatbotListenRadius == nil then
    getgenv().ChatbotListenRadius = 10 --This how far a player can be (in studs) for the bot to respond to them. Set it to math.huge if you want it to respond at any distance.
end
if ChatbotPlayers == nil then
    getgenv().ChatbotPlayers = {"uiojaafdosijfafdssf"} --What players the Chatbot should respond to.
end

--From here down I don't recommend moving him if you don't know Lua

function getRoot(char)
    local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or
        char:FindFirstChild('UpperTorso') or char:FindFirstChild('LowerTorso')
    return rootPart
end

local function messagepro(message, player) --In this function the magic happens
    local Response = game:HttpGet("https://api.simsimi.net/v2/?text=" .. message .. "&lc=" .. ChatbotLanguage .. "&cf=" .. ChatbotFilter .. "&api=" .. player.UserId) --The Simsimi api is called
    local datachatbot = HttpService:JSONDecode(Response)
    local workingresponse = datachatbot."success"
    local first200characters = string.sub(workingresponse, 1, 179)
    local first200characters = string.gsub(workingresponse, "zex", "___")
    local first200characters = string.gsub(first200characters, "love", "____")
    local first200characters = string.gsub(first200characters, "baby", "____")
    print("Chatbot got a response: " .. first200characters)
    --game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(player.DisplayName.." "..first200characters, "All") --A message is sent with the response of Simsimi
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(first200characters,
        "All") --A message is sent with the response of Simsimi
end

if not game:IsLoaded() then
    game.Loaded:Wait();
end
function everything()

    -- init

    -- variables
    local players, replicatedStorage = game:GetService("Players"), game:GetService("ReplicatedStorage");
    local defaultChatSystemChatEvents = replicatedStorage:FindFirstChild("DefaultChatSystemChatEvents");

    local onMessageDoneFiltering = defaultChatSystemChatEvents:FindFirstChild("OnMessageDoneFiltering");

    -- main
    onMessageDoneFiltering.OnClientEvent:Connect(function(messageData)
        if ChatbotEnabled == true then
            if table.find(ChatbotPlayers, players[messageData.FromSpeaker].Name) ~= nil or ChatbotAll == true then
                local speaker, message = players[messageData.FromSpeaker], messageData.Message
                local plr = speaker

                if plr.Name == game.Players.LocalPlayer.Name then
                    print("[YOU] " .. plr.Name .. ": " .. message)
                elseif plr:IsFriendsWith(game.Players.LocalPlayer.UserId) then
                    print("[FRIEND] " .. plr.Name .. ": " .. message)
                else
                    print("[OTHER] " .. plr.Name .. ": " .. message)
                end

                if ChatbotListenRadius == math.huge then
                    for _, plrs in pairs(game.Players:GetPlayers()) do
                        if plr.Name == plrs.Name then
                            if table.find(ChatbotPlayers, Players.LocalPlayer.Name) ~= nil or ChatbotAll == true then
                                messagepro(message, plr) --The function is called
                            else
                                if plr.Name ~= Players.LocalPlayer.name then
                                    messagepro(message, plr) --The function is called
                                end
                            end
                        end
                    end
                else
                    for _, plrs in pairs(game.Players:GetPlayers()) do
                        if (getRoot(Players.LocalPlayer.Character).Position - getRoot(plrs.Character).Position).magnitude
                            <=
                            ChatbotListenRadius then --If the player is nearby, Simsimi will read their message.
                            if plr.Name == plrs.Name then
                                if table.find(ChatbotPlayers, Players.LocalPlayer.Name) ~= nil or ChatbotAll == true then
                                    messagepro(message, plr) --The function is called
                                else
                                    if plr.Name ~= Players.LocalPlayer.name then
                                        messagepro(message, plr) --The function is called
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end);
end

if game.Players.LocalPlayer.Name ~= nil then
    everything()
else
end
