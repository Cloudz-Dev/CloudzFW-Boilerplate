IsLoaded = false
Component = {}
Exports = {}
CoreResource = "cloudzfw"
ComponentName = "Boilerplate"
ComponentExtension = false


if not ComponentExtension then
    RegisterNetEvent('CFW:Shared:Startup', function()
        exports[CoreResource]:Register(ComponentName, Exports)
    end)
else
    RegisterNetEvent('CFW:Shared:Extend', function(compName)
        if compName ~= ComponentName then return end
        exports[CoreResource]:Extend(ComponentName, Exports)
    end)
end