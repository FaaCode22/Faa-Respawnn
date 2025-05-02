ESX = exports['es_extended']:getSharedObject()

-- Konfigurasi lokasi respawn (sesuaikan dengan kebutuhan)
local respawnLocation = {
    x = -2000.2651,
    y = 3193.1011,
    z =  32.8103,
    heading = 151.8959
}

RegisterNetEvent('esx:onPlayerDeath')
AddEventHandler('esx:onPlayerDeath', function(data)
    local xPlayer = ESX.GetPlayerFromId(source)
    
    -- Tunggu 5 detik sebelum revive dan respawn
    SetTimeout(5000, function()
        if xPlayer then
            -- Revive player
            TriggerClientEvent('esx_ambulancejob:revive', xPlayer.source)
            
            -- Setelah revive, teleport ke lokasi respawn
            Citizen.Wait(1000) -- Beri sedikit delay untuk memastikan revive selesai
            TriggerClientEvent('esx_autorevive:respawnPlayer', xPlayer.source, respawnLocation)
        end
    end)
end)

-- Event untuk log jika diperlukan
RegisterNetEvent('esx_autorevive:playerRespawned')
AddEventHandler('esx_autorevive:playerRespawned', function()
    print(('Player %s telah di-revive dan di-respawn'):format(source))
end)

  