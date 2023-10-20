RegisterNetEvent('CFW:Shared:Ready', function()
    -- The below table will check if the specified components have been loaded by
    -- the framework and are availiable for use.
    local depsLoaded, depsErrors = exports[CoreResource]:DepCheck({ 
        "YourComponentName", 
        "Utils", 
        "Logger", 
        "Fetch", 
        "Notifications", 
        "Database" 
    })


    if depsLoaded then
        -- If they are availiable lets load them an assign them to there own Global Variable
        Utils = exports[CoreResource]:Fetch('Utils')
        Logger = exports[CoreResource]:Fetch('Logger')
        Database = exports[CoreResource]:Fetch('Database')
        YourComponentName = exports[CoreResource]:Fetch(ComponentName)
        Fetch = exports[CoreResource]:Fetch('Fetch')
        Notifications = exports[CoreResource]:Fetch('Notifications')

        if not IsLoaded then return end
        IsLoaded = true
    else
        -- If there not availiable then lets present an error to the console showing which are missing
        print('[^9CRITICAL^7] [Apartments] Failed to load resource "'..GetCurrentResourceName()..'" required CloudzFW Component dependencies were not found')
        for k, v  in pairs(depsErrors) do
            print('[^9CRITICAL^7] [Apartments] [Error #'..k..'] '..v)
        end
    end
end)

RegisterNetEvent('CFW:Shared:CharacterLogin', function()
    local _src = source
    local _user = Fetch:Player(_src)
    if _user then
        -- The Character has logged into there character to a point there in full control of there character
    end
end)

RegisterNetEvent('CFW:Shared:CharacterLogout', function()
    local _src = source
    local _user = Fetch:Player(_src)
    if _user then
        -- The player has logged out of there character by a means of a successful logout, this DOES NOT include crashes or on spot exits
    end
end)