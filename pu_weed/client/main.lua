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
