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
exports.qbx_core:CreateUseableItem("engine_level1", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'engine_level1') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'engine', 0)
    end
end)

exports.qbx_core:CreateUseableItem("engine_level2", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'engine_level2') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'engine', 1)
    end
end)

exports.qbx_core:CreateUseableItem("engine_level3", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'engine_level3') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'engine', 2)
    end
end)

exports.qbx_core:CreateUseableItem("engine_level4", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'engine_level4') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'engine', 3)
    end
end)

exports.qbx_core:CreateUseableItem("trans_level1", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'trans_level1') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'transmission', 0)
    end
end)

exports.qbx_core:CreateUseableItem("trans_level2", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'trans_level2') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'transmission', 1)
    end
end)

exports.qbx_core:CreateUseableItem("trans_level3", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'trans_level3') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'transmission', 2)
    end
end)

exports.qbx_core:CreateUseableItem("suspension_level1", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'suspension_level1') ~= nil then
        TriggerClientEvent('pu_jobs:client:useitem', source, 'suspension', 0)
    end
end)

exports.qbx_core:CreateUseableItem("suspension_level2", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'suspension_level2') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'suspension', 1)
    end
end)

exports.qbx_core:CreateUseableItem("suspension_level3", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'suspension_level3') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'suspension', 2)
    end
end)

exports.qbx_core:CreateUseableItem("suspension_level4", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'suspension_level4') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'suspension', 3)
    end
end)

exports.qbx_core:CreateUseableItem("brakes_level1", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'brakes_level1') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'brakes', 0)
    end
end)

exports.qbx_core:CreateUseableItem("brakes_level2", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'brakes_level2') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'brakes', 1)
    end
end)

exports.qbx_core:CreateUseableItem("brakes_level3", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'brakes_level3') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'brakes', 2)
    end
end)

exports.qbx_core:CreateUseableItem("turbo", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'turbo') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'turbo', 1)
    end
end)

exports.qbx_core:CreateUseableItem("armor_level1", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'armor_level1') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'armor', 0)
    end
end)

exports.qbx_core:CreateUseableItem("armor_level2", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'armor_level2') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'armor', 1)
    end
end)

exports.qbx_core:CreateUseableItem("armor_level3", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'armor_level3') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'armor', 2)
    end
end)

exports.qbx_core:CreateUseableItem("armor_level4", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'armor_level4') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'armor', 3)
    end
end)

exports.qbx_core:CreateUseableItem("car_downgrade", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'car_downgrade') ~= nil then
        TriggerClientEvent("pu_jobs:client:useitem", source, 'downgrade', 0)
    end
end)

exports.qbx_core:CreateUseableItem("body_kit", function(source)
    local Player = exports.qbx_core:GetPlayer(source)
	if exports.ox_inventory:Search(Player, 'count', 'body_kit') ~= nil then
        local kit = exports.ox_inventory:Search(source, 1, 'body_kit')
        exports.ox_inventory:SetDurability(source, kit.slot, 100)
        TriggerClientEvent("pu_jobs:client:body_repair", source)

    end
end)
