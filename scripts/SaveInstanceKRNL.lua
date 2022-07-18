if kickaftersave ~= nil then else
    local kickaftersave = true
end

makefolder("GamesLOL")
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
warn('Downloading "' .. GameName .. '".')
saveinstance(game, "GamesLOL/" .. GameName .. " " .. game.PlaceId, {
    Decompile = true,
    DecompileTimeout = math.huge
})
warn('"' .. GameName .. '"  has been downloaded.')
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I have downloaded this game (" .. GameName .. ").","All")
wait(0.5)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I hope you don't mind.","All")
wait(0.5)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(":D","All")
if kickaftersave == true then
    wait(0.5)
    game.Players.LocalPlayer:Kick('Hello. You got kicked by the "save instance" script. There was not really a purpose to kick you, but I think that you should leave the game after you get kicked. You can disable this in the script.')
end
