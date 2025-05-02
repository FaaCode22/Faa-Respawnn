ESX = exports['es_extended']:getSharedObject()

-- Event untuk menerima perintah respawn dari server
RegisterNetEvent('esx_autorevive:respawnPlayer')
AddEventHandler('esx_autorevive:respawnPlayer', function(coords)
    -- Teleport player ke lokasi respawn
    DoScreenFadeOut(800)
    
    while not IsScreenFadedOut() do
        Citizen.Wait(50)
    end
    
    ESX.Game.Teleport(PlayerPedId(), coords, function()
        DoScreenFadeIn(800)
        TriggerEvent('esx_autorevive:playerRespawned')
    end)
end)