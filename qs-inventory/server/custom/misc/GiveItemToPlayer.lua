function GiveItemToPlayer(source, item, amount)
	local id = source
	local identifier = GetPlayerIdentifier(id)
	amount = tonumber(amount)
	local itemData = ItemList[item:lower()]
	if not identifier then return end
	if itemData then
		local info = {}
		if itemData['name'] == 'id_card' then
			local _, charinfo = GetUserName(identifier)
			info.citizenid = charinfo.citizenid
			info.firstname = charinfo.firstname
			info.lastname = charinfo.lastname
			info.birthdate = charinfo.birthdate
			info.gender = Config.Genders[charinfo.gender]
			info.nationality = charinfo.nationality
		elseif itemData['name'] == 'weaponlicense' then
			local _, charinfo = GetUserName(identifier)
			info.firstname = charinfo.firstname
			info.lastname = charinfo.lastname
			info.birthdate = charinfo.birthdate
			info.gender = Config.Genders[charinfo.gender]
		elseif itemData['name'] == 'driver_license' then
			local _, charinfo = GetUserName(identifier)
			info.firstname = charinfo.firstname
			info.lastname = charinfo.lastname
			info.birthdate = charinfo.birthdate
			info.type = 'Class C Driver License'
		elseif itemData['name'] == 'harness' then
			info.uses = 20
		elseif itemData['name'] == 'markedbills' then
			info.worth = math.random(5000, 10000)
		elseif itemData['name'] == 'labkey' then
			info.lab = exports['qb-methlab']:GenerateRandomLab()
		elseif itemData['name'] == 'printerdocument' then
			info.url = 'https://cdn.discordapp.com/attachments/870094209783308299/870104331142189126/Logo_-_Display_Picture_-_Stylized_-_Red.png'
		elseif ItemList[itemData['name']]['decay'] and ItemList[itemData['name']]['decay'] > 0 then
			info.quality = 100

			-- Quasar Scripts :
			-- Vehiclekeys
		elseif itemData['name'] == 'plate' then
			info.plate = GeneratePlate()
			-- DLC Backpacks
		elseif itemData['name'] == 'backpack' then
			info.ID = 'backpack_' .. math.random(111111, 999999)
			info.weight = 10000
			info.slots = 10
		elseif itemData['name'] == 'backpack2' then
			info.ID = 'backpack_' .. math.random(111111, 999999)
			info.weight = 10000
			info.slots = 10
		elseif itemData['name'] == 'paramedicbag' then
			info.ID = 'paramedic_' .. math.random(111111, 999999)
			info.weight = 10000
			info.slots = 10
		elseif itemData['name'] == 'briefcase' then
			info.ID = 'briefcase_' .. math.random(111111, 999999)
			info.weight = 10000
			info.slots = 10
		elseif itemData['name'] == 'money' then
			return TriggerClientEvent(Config.InventoryPrefix .. ':client:sendTextMessage', source, Lang('INVENTORY_NOTIFICATION_MONEY_NO_ITEM'), 'error')
		elseif itemData['name'] == 'cash' then
			return TriggerClientEvent(Config.InventoryPrefix .. ':client:sendTextMessage', source, Lang('INVENTORY_NOTIFICATION_MONEY_NO_ITEM'), 'error')
		end

		if itemData['type'] == 'weapon' then
			if amount == 1 then amount = 0 end
			info.serie = CreateSerialNumber()
			info.quality = 100
			info.ammo = amount
			if amount > 1000 then
				return TriggerClientEvent(Config.InventoryPrefix .. ':client:sendTextMessage', source, Lang('INVENTORY_NOTIFICATION_GIVEWEAPON_LIMIT'), 'error')
			end
			AddItem(id, itemData['name'], 1, false, info)
			SendWebhook(Webhooks.admin, 'Give Weapon To Player (Admin)', 7393279, '**' .. GetPlayerName(source) .. ' (id: ' .. source .. ') sent a weapon!**\n**Name:** ' .. itemData['name'] .. '\n**Bullets:** ' .. amount)
			return
		end

		if AddItem(id, itemData['name'], amount, false, info) then
			TriggerClientEvent(Config.InventoryPrefix .. ':client:sendTextMessage', source, Lang('INVENTORY_NOTIFICATION_GIVE_ITEM') .. ' ' .. amount .. ' ' .. itemData['label'], 'success')
			SendWebhook(Webhooks.admin, 'Give Item To Player (Admin)', 7393279, '**' .. GetPlayerName(source) .. ' (id: ' .. source .. ') sent a item!**\n**Name:** ' .. itemData['name'] .. '\n**Amount:** ' .. amount)
		else
			TriggerClientEvent(Config.InventoryPrefix .. ':client:sendTextMessage', source, Lang('INVENTORY_NOTIFICATION_CANT_GIVE'), 'error')
		end
	else
		TriggerClientEvent(Config.InventoryPrefix .. ':client:sendTextMessage', source, Lang('INVENTORY_NOTIFICATION_MISSING_ITEM'), 'error')
	end
end

exports('GiveItemToPlayer', GiveItemToPlayer)
