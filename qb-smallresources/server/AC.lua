AddEventHandler("fg:BanHandler", function(BanId, data)
    TriggerClientEvent('chat:addMessage', -1, "[-AC] Player Banned (".. data.name .."), BanId (".. tostring(BanId) .."), Reason: ".. data.reason .. "~r~ | See you later hacker 😃") 
 end)