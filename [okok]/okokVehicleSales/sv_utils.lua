QBCore = exports['qb-core']:GetCoreObject()
Webhook = ''

function GetAccountMoney(xPlayer, account)
	local moneyCount = 0
	if account == "cash" then
		moneyCount = xPlayer.PlayerData.money.cash
	else
		moneyCount = xPlayer.PlayerData.money.bank
	end
	return moneyCount
end

function AddMoney(xPlayer, account, amount)
	xPlayer.Functions.AddMoney(account, tonumber(amount))
end

function RemoveMoney(xPlayer, account, amount)
	xPlayer.Functions.RemoveMoney(account, tonumber(amount))
end

function MySQLexecute(query, values, func)
	return MySQL.query(query, values, func)
end

function MySQLinsert(query, values, func)
	return MySQL.Async.insert(query, values, func)
end

function removeItem(Player, item, amount)
    Player.Functions.RemoveItem(item, amount)
end

-- Buy Store Event
QBCore.Functions.CreateCallback(Config.EventPrefix..':buyStore', function (source, cb, id, name, price, currency)
	local _source = source
	local xPlayer = QBCore.Functions.GetPlayer(_source)
	local PlayerName = xPlayer.PlayerData.charinfo.firstname .. " " .. xPlayer.PlayerData.charinfo.lastname
	local bankMoney = GetAccountMoney(xPlayer, currency)
	local businessPrice = 0

	if bankMoney >= price then
		MySQL.query('SELECT * FROM okokvehiclesales_stores WHERE owner = @owner', {
			['@owner'] = xPlayer.PlayerData.citizenid,
		}, function(owning)

			if #owning < Config.MaxDealershipsPerPlayer then
				for k,v in pairs(Config.Stores) do
					if v.id == id then
						businessPrice = v.price
					end
				end

				MySQL.update('UPDATE okokvehiclesales_stores SET owner = @owner, owner_name = @name, owner_phone = @owner_phone, business_price = @business_price WHERE store_id = @store_id AND owner IS NULL', {
					['@owner'] = xPlayer.PlayerData.citizenid,
					['@name'] = xPlayer.PlayerData.charinfo.firstname.." "..xPlayer.PlayerData.charinfo.lastname,
					['@owner_phone'] = xPlayer.PlayerData.charinfo.phone,
					['@store_id'] = id,
					['@business_price']	= businessPrice,
				}, function (rowsChanged)
					RemoveMoney(xPlayer, currency, price)
					TriggerClientEvent(Config.EventPrefix..":updateStoresOwned", -1)
					TriggerClientEvent(Config.EventPrefix..':notification', _source, _okok('bought_store').title, interp(_okok('bought_store').text, {name = name, price = price}), _okok('bought_store').type, _okok('bought_store').time)
					cb(true)
					if Config.UseOkokBanking then
						TriggerEvent('okokBanking:AddNewTransaction', _okok('translations').store, _okok('translations').store, PlayerName, xPlayer.PlayerData.citizenid, price, _okok('translations').buybusiness)
					end
					if Webhook ~= '' and Config.BuyBusinessWebhook then
						local identifierlist = ExtractIdentifiers(_source)
						local data = {
							playerid = _source,
							identifier = identifierlist.license:gsub("license2:", ""),
							discord = "<@"..identifierlist.discord:gsub("discord:", "")..">",
							color = Config.BuyBusinessWebhookColor,
							type = "buyBusiness",
							action = "Bought a business",
							item = id,
							price = price,
							title = "Dealership - Business",
						}
						discordWebhook(data)
					end
				end)
			else
				TriggerClientEvent(Config.EventPrefix..':notification', _source, _okok('max_stores').title, _okok('max_stores').text, _okok('max_stores').type, _okok('max_stores').time)
			end
		end)
	else
		TriggerClientEvent(Config.EventPrefix..':notification', _source, _okok('not_enough_money').title, _okok('not_enough_money').text, _okok('not_enough_money').type, _okok('not_enough_money').time)
		cb(false)
	end
end)

-- Webhooks
function discordWebhook(data)
	local information = {}

	if data.type == 'buyBusiness' then
		information = {
			{
				["color"] = data.color,
				["author"] = {
					["icon_url"] = Config.IconURL,
					["name"] = Config.ServerName..' - Logs',
				},
				["title"] = data.title,
				["description"] = '**Action:** '..data.action..'\n**Business:** '..data.item..'\n**Price:** '..data.price..' ' .. Config.Currency .. '\n\n**ID:** '..data.playerid..'\n**Identifier:** '..data.identifier..'\n**Discord:** '..data.discord,
				["footer"] = {
					["text"] = os.date(Config.DateFormat),
				}
			}
		}
	elseif data.type == 'sellBusiness' then
		information = {
			{
				["color"] = data.color,
				["author"] = {
					["icon_url"] = Config.IconURL,
					["name"] = Config.ServerName..' - Logs',
				},
				["title"] = data.title,
				["description"] = '**Action:** '..data.action..'\n**Business:** '..data.item..'\n**Received:** '..data.price..' ' .. Config.Currency .. '\n\n**ID:** '..data.playerid..'\n**Identifier:** '..data.identifier..'\n**Discord:** '..data.discord,
				["footer"] = {
					["text"] = os.date(Config.DateFormat),
				}
			}
		}
	elseif data.type == 'deposit' then
		information = {
			{
				["color"] = data.color,
				["author"] = {
					["icon_url"] = Config.IconURL,
					["name"] = Config.ServerName..' - Logs',
				},
				["title"] = data.title,
				["description"] = '**Action:** '..data.action..'\n**Business:** '..data.item..'\n**Deposited:** '..data.price..' ' .. Config.Currency .. '\n\n**ID:** '..data.playerid..'\n**Identifier:** '..data.identifier..'\n**Discord:** '..data.discord,
				["footer"] = {
					["text"] = os.date(Config.DateFormat),
				}
			}
		}
	elseif data.type == 'withdraw' then
		information = {
			{
				["color"] = data.color,
				["author"] = {
					["icon_url"] = Config.IconURL,
					["name"] = Config.ServerName..' - Logs',
				},
				["title"] = data.title,
				["description"] = '**Action:** '..data.action..'\n**Business:** '..data.item..'\n**Withdrawn:** '..data.price..' ' .. Config.Currency .. '\n\n**ID:** '..data.playerid..'\n**Identifier:** '..data.identifier..'\n**Discord:** '..data.discord,
				["footer"] = {
					["text"] = os.date(Config.DateFormat),
				}
			}
		}
	elseif data.type == 'hire' then
		information = {
			{
				["color"] = data.color,
				["author"] = {
					["icon_url"] = Config.IconURL,
					["name"] = Config.ServerName..' - Logs',
				},
				["title"] = data.title,
				["description"] = '**Action:** '..data.action..'\n**Business:** '..data.item..'\n**Employee name:** '..data.employee_name..'\n**Employee identifier:** '..data.employee_id..'\n\n**ID:** '..data.playerid..'\n**Identifier:** '..data.identifier..'\n**Discord:** '..data.discord,
				["footer"] = {
					["text"] = os.date(Config.DateFormat),
				}
			}
		}
	elseif data.type == 'fire' then
		information = {
			{
				["color"] = data.color,
				["author"] = {
					["icon_url"] = Config.IconURL,
					["name"] = Config.ServerName..' - Logs',
				},
				["title"] = data.title,
				["description"] = '**Action:** '..data.action..'\n**Business:** '..data.item..'\n**Employee name:** '..data.employee_name..'\n**Employee identifier:** '..data.employee_id..'\n\n**ID:** '..data.playerid..'\n**Identifier:** '..data.identifier..'\n**Discord:** '..data.discord,
				["footer"] = {
					["text"] = os.date(Config.DateFormat),
				}
			}
		}
	elseif data.type == 'fireMyself' then
		information = {
			{
				["color"] = data.color,
				["author"] = {
					["icon_url"] = Config.IconURL,
					["name"] = Config.ServerName..' - Logs',
				},
				["title"] = data.title,
				["description"] = '**Action:** '..data.action..'\n**Business:** '..data.item..'\n**Employee name:** '..data.employee_name..'\n**Employee identifier:** '..data.employee_id..'\n\n**ID:** '..data.playerid..'\n**Identifier:** '..data.identifier..'\n**Discord:** '..data.discord,
				["footer"] = {
					["text"] = os.date(Config.DateFormat),
				}
			}
		}
	elseif data.type == 'changeRank' then
		information = {
			{
				["color"] = data.color,
				["author"] = {
					["icon_url"] = Config.IconURL,
					["name"] = Config.ServerName..' - Logs',
				},
				["title"] = data.title,
				["description"] = '**Action:** '..data.action..'\n**Business:** '..data.item..'\n**Employee Name:** '..data.employee_name..'\n**Employee Identifier:** '..data.employee_id..'\n**Rank:** '..data.rank..'\n\n**ID:** '..data.playerid..'\n**Identifier:** '..data.identifier..'\n**Discord:** '..data.discord,
				["footer"] = {
					["text"] = os.date(Config.DateFormat),
				}
			}
		}
	end
	PerformHttpRequest(Webhook, function(err, text, headers) end, 'POST', json.encode({username = Config.BotName, embeds = information}), {['Content-Type'] = 'application/json'})
end