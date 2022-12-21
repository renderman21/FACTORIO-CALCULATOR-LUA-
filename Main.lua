require "MinerCalculator"
require "AssemblersNeeded"

---This simply prints the choices
local function printChoices() 
    print("Choose the following")

    print("[1] Miner Calculator")
    print("[2] Smelter Calculator")
    print("[3] Assemblers Needed")
    print("[4] Exit")
end

---This is the main function; obviously mimicking Python
local function main()
    local quit = false
    repeat
        os.execute("clear")

        printChoices()

        local choice = io.read("n")

        if (choice == 1) then
            --Enter Miner Calculator
            MinerCalculator()
        elseif(choice == 2) then
            --Enter Smelter Calculator
            FurnaceCalculator()
        elseif(choice == 3) then
            --Assemblers Needed 
            AssemblersNeeded()
        elseif(choice == 4) then
            --Exit game
            os.exit(1, true)
        end


    until  (quit == true)
end

main()