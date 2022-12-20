require "utils"

---Prints the choice of the belt
local function printBeltCode()
    print("Select Belt: ")
    print("[1] Yellow Belt")
    print("[2] Red Belt")
    print("[3] Blue Belt")
end

---Prints the choice of miners
local function printMinerCode() 
    print("Select Miner: ")
    print("[1] Coal Miner")
    print("[2] Electric Miner")
end

---Prints the choice of ore
local function printOreGroupChoice()  
    print("Select Ore Group: ")
    print("[1] Copper, Iron, Coal and Stone")
    print("[2] Uranium")
end

---Prints the result 
---@param oreGroup integer
---@param beltCode integer
---@param minerCode integer
---@param result integer
local function printResult(oreGroup, beltCode, minerCode, result)
    print("Chosen group: ")

    if(oreGroup == 1) then
        print("Copper, Iron, Coal and Stone")
    else
        print("Uranium")
    end

    print("Chosen Miner: ")
    if(minerCode == 1) then
        print("Coal Miner")
    else
        print("Electric Miner")
    end

    print("Chosen Belt: ")
    if(beltCode == 1) then
        print("Yellow Belt")
    elseif(beltCode == 2) then
        print("Red Belt")
    else
        print("Blue Belt")
    end

    print("You need "..result.." Miners for the job")
end

---Calculates the miners needed 
---@param oreGroup integer
---@param beltCode integer
---@param minerCode integer
---@return integer
local function calculateMinerAmount(oreGroup, beltCode, minerCode)

    --If category 1
    if(oreGroup == 1 and minerCode == 1) then
        return 60 * beltCode
    elseif(oreGroup == 1 and minerCode == 2) then
        return 30 * beltCode
    else 
        return 60 * beltCode
    end

end


---This is used to check the amount of miners needed 
function MinerCalculator()
    local quit = false
    local oreGroup, minerCode, beltCode
    repeat 
        os.execute("clear")

        repeat
            printOreGroupChoice()
            oreGroup = io.read("n")
        until (oreGroup == 1 or oreGroup == 2)

        os.execute("clear")
        repeat
            printMinerCode()
            minerCode = io.read("n")
        until (minerCode == 1 or minerCode == 2)

        os.execute("clear")
        repeat
            printBeltCode()
            beltCode = io.read("n")
        until (beltCode == 1 or beltCode == 2 or beltCode == 3)

        os.execute("clear")
        local result = calculateMinerAmount(oreGroup, beltCode, minerCode)

        printResult(oreGroup, beltCode, minerCode, result)

        quit = ChoiceToQuit()

    until (quit == true)
end

MinerCalculator()