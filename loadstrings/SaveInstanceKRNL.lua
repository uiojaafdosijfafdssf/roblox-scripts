--OPTIONS--
getgenv().chataboutsteal = false --basically it just makes you say "I have stolen this game, bye! :D" after u download a game
getgenv().kickaftersave = true --this kicks you once u are done downloading the game
getgenv().foldername = "GamesLOL" --this sets the name of the folder it should put the file into. (if u set it to "games i stole", it would put it into "workspace\games i stole")
getgenv().timebetweenmessages = 0.01 --if u have "chataboutsteal" set to true, this will set the time between the chat messages to whatever you type here.

--SAVEINSTANCE OPTIONS--
getgenv().IgnoreDefaultPropsOption = true
getgenv().CallbackOption = false
getgenv().BinaryOption = true
getgenv().DecompileOption = true
getgenv().ShowStatusOption = true
getgenv().ClipboardOption = false
getgenv().RemovePlayerCharactersOption = true
getgenv().MaxThreadsOption = 3
getgenv().DecompileIgnoreOption = { "Chat", "CoreGui", "CorePackages" }
getgenv().IsolateStarterPlayerOption = true
getgenv().SavePlayersOption = false
getgenv().DecompileTimeoutOption = math.huge
getgenv().NilInstancesOption = false
--❓DONT KNOW WHAT EACH SAVEINSTANCE OPTION DOES?❓--
--u can see the descriptions, defaults, and types here: https://app.archbee.com/public/2Jp4SDaAD4P1COFfx1p_t/EtjA4sQe5zYUxIHwA6CqJ#-KA8b (NOT A SCAM LINK, just krnl api documentation thingy for saveinstance)
--or here: https://docs.script-ware.com/instance-saving-functions#yHyxm (scriptware api documentation thing about saveinstance)

--LOADSTRING--
loadstring(game:HttpGet("https://raw.githubusercontent.com/uiojaafdosijfafdssf/roblox-scripts/main/scripts/SaveInstanceKRNL.lua"))()
