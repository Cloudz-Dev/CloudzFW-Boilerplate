function StartComponent()
    if IsLoaded then return end
    IsLoaded = true
    -- Anything specified here is loaded upon component first load, 
    -- If you start any threads here they will only be started once per resource restart
    -- You should run any "true" replacing "true" with "IsLoaded" threads here
    CreateThread(function()
        while IsLoaded do

            Wait(1)
        end
    end)

end

function CharacterLogin()
    -- If you start any threads here they will restart and stop upon character login/out aslong as you use the "IsLoggedIn" variable
    -- You should run any CharacterSpecific threads hede

    --[[ CreateThread(function()
        while IsLoggedIn do

            Wait(1)
        end
    end) ]]
end

RegisterNetEvent('CFW:Shared:CharacterLogin', function()
    -- The Character has logged into there character to a point there in full control of there character
    IsLoggedIn = true
    CharacterLogin()
end)

RegisterNetEvent('CFW:Shared:CharacterLogout', function()
    -- The player has logged out of there character by a means of a successful logout, this DOES NOT include crashes or on spot exits
    IsLoggedIn = false
end)