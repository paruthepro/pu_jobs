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
    rotation = Config.DutyR,
    options = {{serverEvent = 'QBCore:ToggleDuty',icon = 'far fa-clipboard',label = 'Clock On/Off',groups = {[Config.JobName] = 0}}},
})
exports.ox_target:addBoxZone({
    coords = Config.Registers1,
    size = Config.TargetSize,
    rotation = Config.Registers1r,
    options = {{event = 'pu_billing:client:bill', icon = 'fas fa-credit-card', label = 'Charge Customer', groups = {[Config.JobName] = 0}}},
})
exports.ox_target:addBoxZone({
    coords = Config.Registers2,
    size = Config.TargetSize,
    debugPoly = false,
    rotation = Config.Registers2r,
    options = {{event = 'pu_billing:client:bill', icon = 'fas fa-credit-card', label = 'Charge Customer', groups = {[Config.JobName] = 0}}},
})