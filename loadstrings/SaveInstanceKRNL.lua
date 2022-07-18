--OPTIONS--
getgenv().chataboutsteal = false --basically it just makes you say "I have stolen this game, bye! :D" after u download a game
getgenv().kickaftersave = true --this kicks you once u are done downloading the game
getgenv().gamenameinfilename = false --this puts the name of the saved game in the file name (if it was on and u used this script on "epic gamer land", it would name the file "epic gamer land.rbxl".)
getgenv().gameidinfilename = true -- this puts the id of the saved game in the file name (if it was on and u used this script on "Line Runner" by "Templates", it would name the file "301530843.rbxl".)
getgenv().customfilename = false --if you enable this, you get to name the file whatever you want. you can change the name in the setting below.
getgenv().filename = "hi" --this sets the custom file name. (its a string, so if u put "CoolGame" there instead of "hi", it would name the file "CoolGame.rbxl".)

--LOADSTRING--
loadstring(game:HttpGet("https://raw.githubusercontent.com/uiojaafdosijfafdssf/roblox/main/scripts/SaveInstanceKRNL.lua"))()
