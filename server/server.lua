local QRCore = exports['qr-core']:GetCoreObject()


QRCore.Functions.CreateUseableItem("indtobaccoseed", function(source, item)
    local Player = QRCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
		TriggerClientEvent('qr-planting:plant', source, "CRP_TOBACCOPLANT_AA_SIM", "CRP_TOBACCOPLANT_AB_SIM", "CRP_TOBACCOPLANT_AC_SIM", "indtobaccoseed")
    end
end)

QRCore.Functions.CreateUseableItem("sugarsaneseed", function(source, item)
    local Player = QRCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
		TriggerClientEvent('qr-planting:plant', source, "CRP_SUGARCANE_AA_SIM", "CRP_SUGARCANE_AB_SIM", "CRP_SUGARCANE_AC_SIM", "sugarsaneseed")
    end
end)

QRCore.Functions.CreateUseableItem("cornseed", function(source, item)
    local Player = QRCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
		TriggerClientEvent('qr-planting:plant', source, "CRP_CORNSTALKS_CB_SIM", "CRP_CORNSTALKS_CA_SIM", "CRP_CORNSTALKS_AB_SIM", "cornseed")
	end
end)

QRCore.Functions.CreateUseableItem("cottonseed", function(source, item)
    local Player = QRCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
		TriggerClientEvent('qr-planting:plant', source, "CRP_COTTON_AD_SIM", "CRP_COTTON_BA_SIM", "CRP_COTTON_BB_SIM", "cottonseed")
	end
end)

QRCore.Functions.CreateUseableItem("lettuceseed", function(source, item)
    local Player = QRCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
		TriggerClientEvent('qr-planting:plant', source, "p_sap_poplar_aa_sim", "p_sap_poplar_ab_sim", "p_sap_poplar_ac_sim", "lettuceseed")
	end
end)

QRCore.Functions.CreateUseableItem("carrotseed", function(source, item)
    local Player = QRCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
		TriggerClientEvent('qr-planting:plant', source, "p_tree_birch_01_sapling", "p_tree_birch_02_sapling", "p_tree_birch_03_sapling", "carrotseed")
	end
end)

QRCore.Functions.CreateUseableItem("wheatseed", function(source, item)
    local Player = QRCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
		TriggerClientEvent('qr-planting:plant', source, "crp_wheat_dry_long_aa_sim", "crp_wheat_sap_long_aa_sim", "crp_wheat_sap_long_ab_sim", "wheatseed")
	end
end)

QRCore.Functions.CreateUseableItem("tomatoesnseed", function(source, item)
    local Player = QRCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
		TriggerClientEvent('qr-planting:plant', source, "crp_tomatoes_sap_aa_sim", "crp_tomatoes_har_aa_sim", "crp_tomatoes_aa_sim", 'tomatoesseed')
	end
end)

QRCore.Functions.CreateUseableItem("wateringcan", function(source, item)
	local Player = QRCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
		TriggerClientEvent('qr-planting:regar', source)
	end
end)

RegisterServerEvent('qr-planting:get:itemback')
AddEventHandler('qr-planting:get:itemback', function(item)
	local src = source
	local Player = QRCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(item, 1)
	TriggerClientEvent('inventory:client:ItemBox', src, item, "add")
end)


RegisterServerEvent('qr-planting:giveitem')
AddEventHandler('qr-planting:giveitem', function(planthash)
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
