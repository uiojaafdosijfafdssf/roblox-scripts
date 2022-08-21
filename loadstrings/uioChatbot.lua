--OPTIONS--
getgenv().ChatbotEnabled = true --Enables and disables the Chatbot. "true" for enabled, and "false" for disabled (both without quotes).
getgenv().ChatbotLanguage = "en" --Here is the language you want Simsimi to respond to, es for "Español", en for "English".
getgenv().ChatbotFilter = "true" --If you want most swears to get filtered, set this to "true" (with quotes).
getgenv().ChatbotListenRadius = 10 --This how far a player can be (in studs) for the bot to respond to them. Set it to math.huge if you want it to respond at any distance.
getgenv().ChatbotPlayers = {"all"} --What players the Chatbot should respond to. Set the first entry to "all" if you want it to respond to all players (except you). I don't recommend entering your username, or else it will just spam a ton when you chat. (ex. getgenv().ChatbotPlayers = {"uiojaafdosijfafdssf", "TheseAreJustRandom", "UsernamesThatIm", "MakingUp", "OtherThanUio"})

--LOADSTRING--
loadstring(game:HttpGet("https://raw.githubusercontent.com/uiojaafdosijfafdssf/roblox-scripts/main/scripts/uioChatbot.lua"))()
