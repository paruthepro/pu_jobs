local isCrafting, isUpgrading = false, false
local isAuth = false
-- Functions
local function init()
    -- Tuner Shop
    exports.ox_target:addBoxZone({
        coords = Config.Billing,
        size = vec3(0.5, 0.5, 0.5),
		rotation = Config.BillingR,
        minZ=3.04,
        maxZ=7.04,
		options = {
            {
                icon = "fas fa-file-invoice",
                event = "pu_billing:client:bill",
                label = "Create Bill",
                groups = {['tunershop'] = 0},
            },
        },
    })
    -- Tuner Shop
    exports.ox_target:addBoxZone({
        coords = Config.Duty,
        size = vec3(0.5, 0.5, 0.5),
		rotation = Config.DutyR,
        minZ=3.04,
        maxZ=7.04,
		options = {
            {
                type = 'server',
                serverEvent = "QBCore:ToggleDuty",
                icon = "fas fa-business-time",
                label = "Toggle Duty",
                groups = {['tunershop'] = 0},
            },
        },
    })
end
local function IsBackEngine(vehModel)
	if Config.BackEngineVehicles[vehModel] then return true else return false end
end
-- Events
RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    if QBX.PlayerData.job.name == "mechanic" or "tunershop" then
        isAuth = true
    end
    init()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(job)
    isAuth = false
    if job.name == "mechanic" or "tunershop" then
        isAuth = true
    end
end)

RegisterNetEvent('tunershop:client:useitem', function(type, item, tier)
    if Config.JobInstall and not isAuth then return end
    local closestVeh = exports.qbx_core:GetClosestVehicle()
    local ped = PlayerPedId()
    if not isUpgrading then
        if closestVeh ~= 0 then
            local pedCoords = GetEntityCoords(ped)
            local vehEngine = GetEntityBoneIndexByName(closestVeh, "engine")
            local enginePos = GetWorldPositionOfEntityBone(closestVeh, vehEngine)

            if #(pedCoords - enginePos) < 2 then
                if (not IsBackEngine(GetEntityModel(closestVeh)) ~= 0) or (IsBackEngine(GetEntityModel(closestVeh)) ~= 0) then
                    isUpgrading = true
                    if Config.UseQbLock then
                        exports.rpemotes:EmoteCommandStart("mechanic2")
                        SetVehicleDoorOpen(closestVeh, 4, false, false)
                        local success = lib.skillCheck({'easy', 'easy', 'easy', 'medium'}, {'1', '2', '3', '4'})
                            if success then
                                lib.progressBar({
                                    duration = 10000,
                                    label = 'Installing'.." ".. item,
                                    useWhileDead = false,
                                    canCancel = true,
                                    disable = {car = true, move = true, combat = true},
                                })
                            TriggerServerEvent('pu_tunershop:server:itemcheck', item, tier)
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
                            else return end
                            local vehMods = exports.qbx_core:GetVehicleProperties(closestVeh)
                            TriggerServerEvent('tunershop:server:finish', item, vehMods)
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
    end
end)