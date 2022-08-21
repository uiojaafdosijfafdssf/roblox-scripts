--OPTIONS--
getgenv().ChatbotEnabled = true --Enables and disables the Chatbot. "true" for enabled, and "false" for disabled (both without quotes).
getgenv().ChatbotLanguage = "en" --Here is the language you want Simsimi to respond to, es for "Español", en for "English".
getgenv().ChatbotFilter = "true" --If you want most swears to get filtered, set this to "true" (with quotes).
getgenv().ChatbotListenRadius = 10 --This how far a player can be (in studs) for the bot to respond to them. Set it to math.huge if you want it to respond at any distance.
getgenv().ChatbotAll = true --If you want the Chatbot to respond to everyone, set this to true. If it's true, then it will ignore what you set for "ChatbotPlayers".
getgenv().ChatbotPlayers = {"InsertUsernameHere", "InsertUsernameHere", "InsertUsernameHere"} --What players the Chatbot should respond to. (ex. getgenv().ChatbotPlayers = {"uiojaafdosijfafdssf", "TheseAreJustRandom", "UsernamesThatIm", "MakingUp", "OtherThanUio"})

--LOADSTRING--
loadstring(game:HttpGet("https://raw.githubusercontent.com/uiojaafdosijfafdssf/roblox-scripts/main/scripts/uioChatbot.lua"))()
