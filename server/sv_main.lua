RegisterNetEvent('CFW:Shared:Ready', function()
    local depsLoaded, depsErrors = exports[CoreResource]:DepCheck({ "Utils", "Logger", "Apartments", "Fetch", "Notifications", "Database" })
    if depsLoaded then
        Utils = exports[CoreResource]:Fetch('Utils')
        Logger = exports[CoreResource]:Fetch('Logger')
        Database = exports[CoreResource]:Fetch('Database')
        YourComponentName = exports[CoreResource]:Fetch(ComponentName)
        Fetch = exports[CoreResource]:Fetch('Fetch')
        Notifications = exports[CoreResource]:Fetch('Notifications')

        if not IsLoaded then return end
        IsLoaded = true
    else
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
        Utils:Print(_user.Functions.Money:Get('bank'))
    end
end)