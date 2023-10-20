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