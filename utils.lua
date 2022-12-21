---Lets the player choose if they want to quit
---@return boolean
function ChoiceToQuit()
    print("Do you want to quit? Y/N")
    local choice
    repeat
        choice = io.read("l")
        choice = string.upper(choice)
    until(choice == "Y" or choice == "N")

    if(choice == "Y") then
        return true
    else
        return false
    end
end

function ClearScrn()
    --Check Operating System
end