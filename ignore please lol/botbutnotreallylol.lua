function messagepro(message, player) --In this function the magic happens
    local responseprefixiguess = player.DisplayName .. ", "
    local notags = string.gsub(message, "#", "")
    local Response = game:HttpGet("https://api.simsimi.net/v2/?text=" .. notags .. "&lc=en&cf=false&api=" .. player.UserId) --The Simsimi api is called
    local datachatbot = HttpService:JSONDecode(Response)
    local thecoolresponse = datachatbot.success
    print("Chatbot got a response: " .. thecoolresponse)
    local lengthofstufflol = string.len(responseprefixiguess)
    local onlyacceptedwhitespace = string.gsub(thecoolresponse, "%s+", " ")
    local first200characters = string.sub(onlyacceptedwhitespace, 1, (200 - lengthofstufflol))
    local filteredresponsekinda = game.Chat:FilterStringAsync(first200characters, game.Players.LocalPlayer, game.Players.LocalPlayer)
    local filteredresponse = game.Chat:FilterStringAsync((responseprefixiguess .. filteredresponsekinda), game.Players.LocalPlayer, game.Players.LocalPlayer)
    if (responseprefixiguess .. filteredresponsekinda) == filteredresponse then
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(filteredresponse, "All") --A message is sent with the response of Simsimi
    else
        warn("Response contains tags when including the display name! ("..filteredresponse..")")
    end
end
