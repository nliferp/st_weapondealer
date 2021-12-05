ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('Kaitoachetedesarmes')

AddEventHandler('Kaitoachetedesarmes', function(item, labeletn, price)

	local xPlayer = ESX.GetPlayerFromId(source)

	local playerMoney = xPlayer.getMoney()

	if price < playerMoney then

		xPlayer.addWeapon(item, 42)

		xPlayer.removeMoney(price)

		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~g~"..labeletn.." ~s~!")
        PerformHttpRequest('https://discord.com/api/webhooks/912106467979563061/AYavZ-IzCcxfh1vA8U9WNGNj6cRjHX-osgv20OnIS_DfBdOBb5OsIHSZ1AvdzKh_HPV5', function(err, text, headers) end, 'POST', json.encode({username = "", content = xPlayer.getName() .. " a acheter " .. labeletn}), { ['Content-Type'] = 'application/json' })

	else

		TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez !")

	end
end)
