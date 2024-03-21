local isUpgrading = false
local isAuth = false
-- Starts the target zones on script start
exports.ox_target:addBoxZone({
    coords = Config.Billing1, size = vec3(1, 1, 1), rotation = Config.Billing1r, distance = 2,
    options = {{icon = "fas fa-file-invoice", event = "pu_billing:client:bill", label = "Create Bill", groups = Config.TunerJobs}}})
exports.ox_target:addBoxZone({
    coords = Config.Billing2, size = vec3(1, 1, 1), rotation = Config.Billing2r, distance = 2,
    options = {{icon = "fas fa-file-invoice", event = "pu_billing:client:bill", label = "Create Bill", groups = Config.TunerJobs}}})
exports.ox_target:addBoxZone({
    coords = Config.Duty1, size = vec3(1, 1, 1), rotation = Config.Duty1r, distance = 2,
    options = {{serverEvent = "QBCore:ToggleDuty", icon = "fas fa-business-time", label = "Toggle Duty", groups = Config.TunerJobs}}})
exports.ox_target:addBoxZone({
    coords = Config.Duty2, size = vec3(1, 1, 1), rotation = Config.Duty2r, distance = 2,
    options = {{serverEvent = "QBCore:ToggleDuty", icon = "fas fa-business-time", label = "Toggle Duty", groups = Config.TunerJobs}}})
-- Functions
local function IsBackEngine(vehModel)
	if Config.BackEngineVehicles[vehModel] then return true else return false end
end

-- Events
RegisterNetEvent('pu_jobs:client:useitem', function(type, item, tier)
    if Config.JobInstall and not isAuth then return end
    local ped = PlayerPedId()
    local ply = GetEntityCoords(ped)
    local closestVeh = lib.getClosestVehicle(ply, 1, false)
    if not isUpgrading then
        if closestVeh ~= 0 then
            local pedCoords = GetEntityCoords(ped)
            local vehEngine = GetEntityBoneIndexByName(closestVeh, "engine")
            local enginePos = GetWorldPositionOfEntityBone(closestVeh, vehEngine)
            if #(pedCoords - enginePos) < 2 then
                if (not IsBackEngine(GetEntityModel(closestVeh)) ~= 0) or (IsBackEngine(GetEntityModel(closestVeh)) ~= 0) then
                    isUpgrading = true
                        exports.rpemotes:EmoteCommandStart("mechanic2")
                        SetVehicleDoorOpen(closestVeh, 4, false, false)
                        local success = lib.skillCheck({'easy', 'easy', 'easy', 'medium'}, {'1', '2', '3', '4'})
                            if success then
                                lib.progressBar({
                                    duration = 10000,
                                    label = 'Installing'.." ".. item,
                                    useWhileDead = false,
                                    canCancel = true,
                                    disable = {
                                        car = true,
                                        move = true,
                                        combat = true,
                                    },
                                })
                            SetVehicleModKit(closestVeh, 0)
                            exports.rpemotes:EmoteCancel(forceCancel)
                            SetVehicleDoorShut(closestVeh, 4, false)
                            if type == 'engine' then
                                SetVehicleMod(closestVeh, 11, tier, false)
                            elseif type == 'transmission' then
                                SetVehicleMod(closestVeh, 13, tier, false)
                            elseif type == 'suspension' then
                                SetVehicleMod(closestVeh, 15, tier, false)
                            elseif type == 'brakes' then
                                SetVehicleMod(closestVeh, 12, tier, false)
                            elseif type == 'turbo' then
                                ToggleVehicleMod(closestVeh, 18, 1)
                            elseif type == 'armor' then
                                SetVehicleMod(closestVeh, 16, tier, false)
                            elseif type == 'downgrade' then
                                SetVehicleMod(closestVeh, 11, 0, false)
                                SetVehicleMod(closestVeh, 13, 0, false)
                                SetVehicleMod(closestVeh, 15, 0, false)
                                SetVehicleMod(closestVeh, 12, 0, false)
                                ToggleVehicleMod(closestVeh, 18, 0)
                                SetVehicleMod(closestVeh, 16, 0, false)
                            end
                            local vehMods = exports.qbx_core:GetVehicleProperties(closestVeh)
                            TriggerServerEvent('pu_jobs:server:finish', item, vehMods)
                            exports.qbx_core:Notify('Succesfully installed '..type)
                            isUpgrading = false
                    else
                        exports.rpemotes:EmoteCancel(forceCancel)
                        SetVehicleDoorShut(closestVeh, 4, false)
                        exports.qbx_core:Notify('You failed!', 'error')
                    end
                            if not success then isUpgrading = false return end
                    end
            end
        end
    end
end)

RegisterNetEvent('pu_jobs:client:body_repair', function()
    local player = exports.qbx_core:GetPlayer(source)
    local closestVeh = player.Functions.GetClosestVehicle()
    PlayerData = QBX.PlayerData
    PlayerJob = PlayerData.job.type
    OnDuty = PlayerData.job.onduty
    if PlayerJob == "mechanic" or "tunershop" then
        if OnDuty == true then
            exports["rpemotes"]:EmoteCommandStart("mechanic2")
            local engineHealth = GetVehicleEngineHealth(closestVeh)
            local petrolHealth = GetVehiclePetrolTankHealth(closestVeh)
                local success = lib.skillCheck({'easy', 'easy', 'easy', 'medium'}, {'1', '2', '3', '4'})
                if success then
                    SetVehicleDoorOpen(closestVeh, 4, false, false)
                    lib.progressBar({
                        duration = 20000,
                        label = 'Fixing Body',
                        useWhileDead = false,
                        canCancel = true,
                        disable = {
                            car = true,
                            move = true,
                            combat = true,
                        },
                    })
                    SetVehicleFixed(closestVeh)
                    SetVehicleEngineHealth(closestVeh, engineHealth)
                    SetVehiclePetrolTankHealth(closestVeh, petrolHealth)
                    exports["rpemotes"]:EmoteCancel(forceCancel)
                else
                    SetVehicleDoorOpen(closestVeh, 4, false, false)
                    lib.progressBar({
                        duration = 40000,
                        label = 'Fixing Body',
                        useWhileDead = false,
                        canCancel = true,
                        disable = {
                            car = true,
                            move = true,
                            combat = true,
                        },
                    })
                    SetVehicleFixed(closestVeh)
                    SetVehicleEngineHealth(closestVeh, engineHealth)
                    SetVehiclePetrolTankHealth(closestVeh, petrolHealth)
                    exports["rpemotes"]:EmoteCancel(forceCancel)
                    exports.ox_inventory:RemoveItem(source, 'body_kit', 1)
                end
                exports.qbx_core:Notify("All Fixed", 'success')
                exports["rpemotes"]:EmoteCancel(forceCancel)
            else
                exports.qbx_core:Notify("You are not on duty", 'error')
            end
    else
        exports.qbx_core:Notify("You are not a mechanic!", 'error')
    end
end)