makefolder(foldername)
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
print('Downloading "' .. GameName .. '".')
saveinstance(game, foldername .. "/" .. GameName .. " " .. game.PlaceId, {
    Decompile = true,
    DecompileTimeout = math.huge
})
print('"' .. GameName .. '"  has been downloaded.')
if chataboutsteal == true then
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I have downloaded this game (" .. GameName .. ").","All")
    wait(timebetweenmessages)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I hope you don't mind.","All")
    wait(timebetweenmessages)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(":D","All")
    wait(timebetweenmessages)
end

if kickaftersave == true then
    game.Players.LocalPlayer:Kick('Hello. You got kicked by the "save instance" script. There was not really a purpose to kick you, but I think that you should leave the game after you get kicked. You can disable this in the script.')
end
