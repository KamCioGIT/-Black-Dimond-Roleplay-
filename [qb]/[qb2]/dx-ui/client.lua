function Open(message, color, position)
	SendNUIMessage({
		action = 'open',
		message = message,
		color = color,
		position = position,
	})
end

function Close()
	SendNUIMessage({
		action = 'close'
	})
end

RegisterNetEvent('dx-ui:Open')
AddEventHandler('dx-ui:Open', function(message, color, position)
	Open(message, color, position)
end)

RegisterNetEvent('dx-ui:Close')
AddEventHandler('dx-ui:Close', function()
	Close()
end)