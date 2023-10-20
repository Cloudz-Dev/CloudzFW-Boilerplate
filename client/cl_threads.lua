local _isLoggedIn = false
function StartComponent()
    if IsLoaded then return end
    IsLoaded = true
    CreateThread(function()
        while IsLoaded do

            Wait(1)
        end
    end)

end

function CharacterLogin()
    
    --[[ CreateThread(function()
        while _isLoggedIn do

            Wait(1)
        end
    end) ]]
end