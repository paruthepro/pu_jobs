CreateThread(function()
    local Blip = AddBlipForCoord(Config.Blipcord.x, Config.Blipcord.y, Config.Blipcord.z)
    SetBlipSprite (Blip, 110)
    SetBlipDisplay(Blip, 4)
    SetBlipScale  (Blip, 0.7)
    SetBlipAsShortRange(Blip, true)
    SetBlipColour(Blip, 27)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(Config.BlipName)
    EndTextCommandSetBlipName(Blip)
end)

exports.ox_target:addBoxZone({
    coords = Config.Duty, size = vec3(0.5, 0.5, 0.5), rotation = Config.Dutyr, distance = 1,
    options = {{serverEvent = 'QBCore:ToggleDuty', icon = 'far fa-clipboard', label = 'Clock On/Off', groups = Config.JobName}}}
)

exports.ox_target:addBoxZone({
    coords = Config.Register1, size = vec3(1, 1, 1), rotation = Config.Register1r,
    options = { {icon = 'fas fa-credit-card', event = 'pu_billing:client:bill', label = 'Charge Customer', groups = Config.JobName}}}
)

exports.ox_target:addBoxZone({
    coords = Config.Register2, size = vec3(1, 1, 1), rotation = Config.Register2r, distance = 1,
    options = {{icon = 'fas fa-credit-card', event = 'pu_billing:client:bill', label = 'Charge Customer', groups = Config.JobName}}}
)

RegisterNetEvent('pu_gunstore:client:ammobox', function(AmmoType)
exports.rpemotes:EmoteCommandStart('mechanic4')
    if lib.progressBar({
        duration = 5000,
        label = 'Unpacking'..' '..AmmoType,
        useWhileDead = false,
        canCancel = true,
        disable = {
            combat = true,
        },
    }) then
        exports.rpemotes:EmoteCancel(forceCancel)
        TriggerServerEvent('pu_gunstore:server:AmmoBox', AmmoType)
    else
        lib.cancelProgress()
        exports.rpemotes:EmoteCancel(forceCancel)
        return
    end
end)