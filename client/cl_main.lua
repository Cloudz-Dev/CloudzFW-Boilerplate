RegisterNetEvent('CFW:Shared:Ready', function()
    -- The below table will check if the specified components have been loaded by
    -- the framework and are availiable for use.
    local depsLoaded, depsErrors = exports[CoreResource]:DepCheck({ 
        "Utils", 
        "Logger", 
        "YourComponentName", 
        "Notifications", 
        "Fetch" 
    }
)
    if depsLoaded then
        -- If they are availiable lets load them an assign them to there own Global Variable
        Utils = exports[CoreResource]:Fetch('Utils')
        Logger = exports[CoreResource]:Fetch('Logger')
        YourComponentName = exports[CoreResource]:Fetch(ComponentName)
        Fetch = exports[CoreResource]:Fetch('Fetch')
        Notifications = exports[CoreResource]:Fetch('Notifications')
        StartComponent()
    else
        -- If there not availiable then lets present an error to the console showing which are missing
        print('[^9CRITICAL^7] [Apartments] Failed to load resource "'..GetCurrentResourceName()..'" required CloudzFW Component dependencies were not found')
        for k, v  in pairs(depsErrors) do
            print('[^9CRITICAL^7] [Apartments] [Error #'..k..'] '..v)
        end
    end
end)