PlayerJob = {}
CreateThread(function()
    local Blip = AddBlipForCoord(Config.Blipcord.x, Config.Blipcord.y, Config.Blipcord.z)
    SetBlipSprite (Blip, 469)
    SetBlipDisplay(Blip, 4)
    SetBlipScale  (Blip, 0.7)
    SetBlipAsShortRange(Blip, true)
    SetBlipColour(Blip, 2)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(Config.BlipName)
    EndTextCommandSetBlipName(Blip)
end)

exports.ox_target:addBoxZone({
    coords = Config.Duty,
    size = Config.TargetSize,
    rotation = 32,
    options = {
            {
                serverEvent = 'QBCore:ToggleDuty',
                icon = 'far fa-clipboard',
                label = 'Clock On/Off',
                groups = {[Config.JobName] = 0},
            },
        },
})
exports.ox_target:addBoxZone({
    coords = Config.Registers1,
    size = Config.TargetSize,
    rotation = 125,
    options = {
        {
            event = 'pu_billing:client:bill',
            parms = '1',
            icon = 'fas fa-credit-card',
            label = 'Charge Customer',
            groups = {[Config.JobName] = 0},
        },
    },
})
exports.ox_target:addBoxZone({
    coords = Config.Registers2,
    size = Config.TargetSize,
    debugPoly = false,
    rotation = 302,
    options = {
        {
            event = 'pu_billing:client:bill',
            parms = '2',
            icon = 'fas fa-credit-card',
            label = 'Charge Customer',
            groups = {[Config.JobName] = 0},
        },
    },
})
exports.ox_target:addBoxZone({
    coords = Config.Registers3,
    size = Config.TargetSize,
    rotation=125,
        options = {
        {
            event = 'pu_billing:client:bill',
            parms = '3',
            icon = 'fas fa-credit-card',
            label = 'Charge Customer',
            groups = {[Config.JobName] = 0},
        },
    },
})
exports.ox_target:addBoxZone({
    coords = Config.Registers4,
    size = Config.TargetSize,
    rotation=125,
    options = {
        {
            event = 'pu_billing:client:bill',
            parms = '1',
            icon = 'fas fa-credit-card',
            label = 'Charge Customer',
            groups = {[Config.JobName] = 0},
        },
    },
})