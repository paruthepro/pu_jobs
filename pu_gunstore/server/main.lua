exports.qbx_core:CreateUseableItem('pistol_ammo_box', function(source)
    TriggerClientEvent('pu_gunstore:client:ammobox', source, 1)
end)

exports.qbx_core:CreateUseableItem('smg_ammo_box', function(source)
    TriggerClientEvent('pu_gunstore:client:ammobox', source, 2)
end)

exports.qbx_core:CreateUseableItem('shotgun_ammo_box', function(source)
    TriggerClientEvent('pu_gunstore:client:ammobox', source, 3)
end)

exports.qbx_core:CreateUseableItem('rifle_ammo_box', function(source)
    TriggerClientEvent('pu_gunstore:client:ammobox', source, 4)
end)

exports.qbx_core:CreateUseableItem('sniper_ammo_box', function(source)
    TriggerClientEvent('pu_gunstore:client:ammobox', source, 5)
end)

RegisterNetEvent('pu_gunstore:server:AmmoBox', function(AmmoType)
    if AmmoType == 1 then
        exports.ox_inventory:RemoveItem(source, 'pistol_ammo_box', 1)
        exports.ox_inventory:AddItem(source, 'pistol-ammo', Config.AmmoCount)
        exports.qbx_core:Notify(source, 'Ammo Unpacked!', 'success')
    elseif AmmoType == 2 then
        exports.ox_inventory:RemoveItem(source, 'smg_ammo_box', 1)
        exports.ox_inventory:AddItem(source, 'smg-ammo', Config.AmmoCount)
        exports.qbx_core:Notify(source, 'Ammo Unpacked!', 'success')
    elseif AmmoType == 3 then
        exports.ox_inventory:RemoveItem(source, 'shotgun_ammo_box', 1)
        exports.ox_inventory:AddItem(source, 'shotgun-ammo', Config.AmmoCount)
        exports.qbx_core:Notify(source, 'Ammo Unpacked!', 'success')
    elseif AmmoType == 4 then
        exports.ox_inventory:RemoveItem(source, 'rifle_ammo_box', 1)
        exports.ox_inventory:AddItem(source, 'rifle-ammo', Config.AmmoCount)
        exports.qbx_core:Notify(source, 'Ammo Unpacked!', 'success')
    elseif AmmoType == 5 then
        exports.ox_inventory:RemoveItem(source, 'sniper_ammo_box', 1)
        exports.ox_inventory:AddItem(source, 'sniper-ammo', Config.AmmoCount)
        exports.qbx_core:Notify(source, 'Ammo Unpacked!', 'success')
    end
end)