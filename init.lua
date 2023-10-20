IsLoaded = false -- DO NOT EDIT
IsLoggedIn = false -- DO NOT EDIT
Component = {} -- DO NOT CHANGE
Config = {} -- DO NOT CHANGE
Exports = {} -- DO NOT CHANGE (see shared/sh_exports.lua to see how to extend)

CoreResource = "cloudzfw" -- This is the name of the CORE CloudzFW Resource installed (this should be cloudzfw)
ComponentName = "Boilerplate" -- The name of the new or extended component your making.
ComponentExtension = false -- If this is an extension to an existing CloudzFW component set this to true, otherwise if new then false


if not ComponentExtension then
    -- This is only fired if it is a new resource and the framework is ready to accept new component registrations
    RegisterNetEvent('CFW:Shared:Startup', function()
        exports[CoreResource]:Register(ComponentName, Exports)
    end)
else
    -- This is only fired if it is an extension to an existing resource and the framework is ready to accept extensions to this component
    RegisterNetEvent('CFW:Shared:Extend', function(compName)
        if compName ~= ComponentName then return end
        exports[CoreResource]:Extend(ComponentName, Exports)
    end)
end