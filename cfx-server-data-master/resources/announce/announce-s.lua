RegisterServerEvent("announce")
AddEventHandler("announce", function(param)
	print("^5[ANNOUNCEMENT]:^7 " .. param)
	TriggerClientEvent("chatMessage", -1, "[ANNOUNCEMENT]", {255, 0, 0}, param)
end)