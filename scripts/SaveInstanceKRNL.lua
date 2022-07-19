makefolder(foldername)
local GameNamea = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local GameName = String:match("[%w%s]+")
print('Downloading "' .. GameName .. '".')
saveinstance(game, foldername .. "/" .. GameName .. " " .. game.PlaceId, {
	IgnoreDefaultProps = IgnoreDefaultPropsOption
	Callback = CallbackOption
	Binary = BinaryOption
	Decompile = DecompileOption
	ShowStatus = ShowStatusOption
	Clipboard = ClipboardOption
	RemovePlayerCharacters = RemovePlayerCharactersOption
	MaxThreads = MaxThreadsOption
	DecompileIgnore = DecompileIgnoreOption
	IsolateStarterPlayer = IsolateStarterPlayerOption
	SavePlayers = SavePlayersOption
	DecompileTimeout = DecompileTimeoutOption
	NilInstances = NilInstancesOption
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
