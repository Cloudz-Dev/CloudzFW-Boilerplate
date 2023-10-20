RegisterNetEvent('CFW:Shared:Ready', function()
    local depsLoaded, depsErrors = exports[CoreResource]:DepCheck({ "Utils", "Logger", "Apartments", "Notifications", "Fetch" })
    if depsLoaded then
        Utils = exports[CoreResource]:Fetch('Utils')
        Logger = exports[CoreResource]:Fetch('Logger')
        YourComponentName = exports[CoreResource]:Fetch(ComponentName)
        Fetch = exports[CoreResource]:Fetch('Fetch')
        Notifications = exports[CoreResource]:Fetch('Notifications')
        StartComponent()
    else
        print('[^9CRITICAL^7] [Apartments] Failed to load resource "'..GetCurrentResourceName()..'" required CloudzFW Component dependencies were not found')
        for k, v  in pairs(depsErrors) do
            print('[^9CRITICAL^7] [Apartments] [Error #'..k..'] '..v)
        end
    end
end)