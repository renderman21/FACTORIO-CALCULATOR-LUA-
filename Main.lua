require "MinerCalculator"
require "AssemblersNeeded"

---This simply prints the choices
local function printChoices() 
    print("Choose the following")

    print("[1] Number of Ingredient Assembler Calculator")
    print("[2] Miner Calculator")
    print("[3] Smelter Calculator")
    print("[4] Assemblers Needed (Soelles Version)")
    print("[5] Exit")
end

---This is the main function; obviously mimicking Python
local function main()
    local quit = false
    repeat
        os.execute("clear")

        printChoices()

        local choice = io.read("n")

        if(choice == 1) then
            --Enter number of ingredient Assembler Calculator
        elseif (choice == 2) then
            --Enter Miner Calculator
            MinerCalculator()
        elseif(choice == 3) then
            --Enter Smelter Calculator
        elseif(choice == 4) then
            --Assemblers Needed 
            AssemblersNeeded()
        elseif(choice == 5) then
            --Exit game
            os.exit(1, true)
        end


    until  (quit == true)
end

main()