-- Checks if the vehicle is owned by anyone [ Used for saving the vehicle mods ]
local function IsVehicleOwned(plate)
    local retval = false
    local result = MySQL.Sync.fetchScalar('SELECT plate FROM player_vehicles WHERE plate = ?', {plate})
    if result then
        retval = true
    end
    return retval
end

-- Saves vehicle mods and remove the item
RegisterNetEvent('pu_jobs:server:finish', function(item, mods)
    local _s = source
    local Player = exports.qbx_core:GetPlayer(_s)
    Player.Functions.RemoveItem(item, 1)
    if IsVehicleOwned(mods.plate) then
        MySQL.Async.execute('UPDATE player_vehicles SET mods = ? WHERE plate = ?', {json.encode(mods), mods.plate})
    end
end)

-- Items
exports.qbx_core:CreateUseableItem("engine_level1", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('engine_level1') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'engine', item.name, 0)
    end
end)

exports.qbx_core:CreateUseableItem("engine_level2", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('engine_level2') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'engine', item.name, 1)
    end
end)

exports.qbx_core:CreateUseableItem("engine_level3", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('engine_level3') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'engine', item.name, 2)
    end
end)

exports.qbx_core:CreateUseableItem("engine_level4", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('engine_level4') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'engine', item.name, 3)
    end
end)

exports.qbx_core:CreateUseableItem("trans_level1", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('trans_level1') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'transmission', item.name, 0)
    end
end)

exports.qbx_core:CreateUseableItem("trans_level2", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('trans_level2') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'transmission', item.name, 1)
    end
end)

exports.qbx_core:CreateUseableItem("trans_level3", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('trans_level3') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'transmission', item.name, 2)
    end
end)

exports.qbx_core:CreateUseableItem("suspension_level1", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('suspension_level1') ~= nil then
        TriggerClientEvent('pu_jobs:client:useitem', source, 'suspension', item.name, 0)
    end
end)

exports.qbx_core:CreateUseableItem("suspension_level2", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('suspension_level2') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'suspension', item.name, 1)
    end
end)

exports.qbx_core:CreateUseableItem("suspension_level3", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('suspension_level3') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'suspension', item.name, 2)
    end
end)

exports.qbx_core:CreateUseableItem("suspension_level4", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('suspension_level4') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'suspension', item.name, 3)
    end
end)

exports.qbx_core:CreateUseableItem("brakes_level1", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('brakes_level1') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'brakes', item.name, 0)
    end
end)

exports.qbx_core:CreateUseableItem("brakes_level2", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('brakes_level2') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'brakes', item.name, 1)
    end
end)

exports.qbx_core:CreateUseableItem("brakes_level3", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('brakes_level3') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'brakes', item.name, 2)
    end
end)

exports.qbx_core:CreateUseableItem("turbo", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('turbo') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'turbo', item.name, 1)
    end
end)

exports.qbx_core:CreateUseableItem("armor_level1", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('armor_level1') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'armor', item.name, 0)
    end
end)

exports.qbx_core:CreateUseableItem("armor_level2", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('armor_level2') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'armor', item.name, 1)
    end
end)

exports.qbx_core:CreateUseableItem("armor_level3", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('armor_level3') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'armor', item.name, 2)
    end
end)

exports.qbx_core:CreateUseableItem("armor_level4", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('armor_level4') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'armor', item.name, 3)
    end
end)

exports.qbx_core:CreateUseableItem("car_downgrade", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('car_downgrade') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'downgrade', item.name, 0)
    end
end)

exports.qbx_core:CreateUseableItem("body_kit", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if Player.Functions.GetItemByName('body_kit') ~= nil then
        local kit = exports.ox_inventory:Search(source, 1, 'body_kit')
        exports.ox_inventory:SetDurability(source, kit.slot, 100)
        TriggerClientEvent("pu_jobs:client:body_repair", source)

    end
end)
