for k, v in pairs(Config.Plants) do
	QRCore.Functions.CreateUseableItem(Config.Plants[k], function(source, item)
		local Player = QRCore.Functions.GetPlayer(source)
		if Player.Functions.RemoveItem(item.name, 1, item.slot) then
			TriggerClientEvent('qr-planting:plant', source, v.hash1, v.hash2, v.hash3, v.item)
		end
	end)
end

QRCore.Functions.CreateUseableItem("wateringcan", function(source, item)
	local Player = QRCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
		TriggerClientEvent('qr-planting:regar', source)
	end
end)

RegisterServerEvent('qr-planting:get:itemback', function(item)
	local src = source
	local Player = QRCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(item, 1)
	TriggerClientEvent('inventory:client:ItemBox', src, item, "add")
end)


RegisterServerEvent('qr-planting:giveitem', function(planthash)
	local src = source
	local Player = QRCore.Functions.GetPlayer(src)
	local count = math.random(2, 5)

	if planthash == "CRP_TOBACCOPLANT_AC_SIM" then
		Player.Functions.AddItem("indtobacco", count)
		TriggerClientEvent('inventory:client:ItemBox', src, "indtobacco", "add")
		QRCore.Functions.Notify(source, 'You have Picked [X'..count..'] of indtobacco', 'success')
	elseif planthash == "CRP_SUGARCANE_AC_SIM" then
		Player.Functions.AddItem("suger", count)
		TriggerClientEvent('inventory:client:ItemBox', src, "suger", "add")
		QRCore.Functions.Notify(source, 'You have Picked [X'..count..'] of suger', 'success')
	elseif planthash == "CRP_CORNSTALKS_AB_SIM" then
		Player.Functions.AddItem("corn", count)
		TriggerClientEvent('inventory:client:ItemBox', src, "corn", "add")
		QRCore.Functions.Notify(source, 'You have Picked [X'..count..'] of corn', 'success')
	elseif planthash == "CRP_COTTON_BB_SIM" then
		Player.Functions.AddItem("cotton", count)
		TriggerClientEvent('inventory:client:ItemBox', src, "cotton", "add")
		QRCore.Functions.Notify(source, 'You have Picked [X'..count..'] of cotton', 'success')
	elseif planthash == "p_sap_poplar_ac_sim" then
		Player.Functions.AddItem("lettuce", count)
		TriggerClientEvent('inventory:client:ItemBox', src, "lettuce", "add")
		QRCore.Functions.Notify(source, 'You have Picked [X'..count..'] of lettuce', 'success')
	elseif planthash == "p_tree_birch_03_sapling" then
		Player.Functions.AddItem("carrot", count)
		TriggerClientEvent('inventory:client:ItemBox', src, "carrot", "add")
		QRCore.Functions.Notify(source, 'You have Picked [X'..count..'] of carrot', 'success')
	elseif planthash == "crp_tomatoes_aa_sim" then
		Player.Functions.AddItem("tomatoes", count)
		TriggerClientEvent('inventory:client:ItemBox', src, "tomatoes", "add")
		QRCore.Functions.Notify(source, 'You have Picked [X'..count..'] of tomatoes', 'success')
	elseif planthash == "crp_wheat_sap_long_ab_sim" then
		Player.Functions.AddItem("wheat", count)
		TriggerClientEvent('inventory:client:ItemBox', src, "wheat", "add")
		QRCore.Functions.Notify(source, 'You have Picked [X'..count..'] of wheat', 'success')
	end
end)
