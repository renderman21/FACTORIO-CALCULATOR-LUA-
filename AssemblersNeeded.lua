require "utils"

local function printResult(amountOutput, itemCraftingSpeed, 
assemblerSpeed, assemblersNeeded)

    print("With the following: \n")
    print("Amount output: "..amountOutput)
    print("Item Crafting Speed: "..itemCraftingSpeed)
    print("Assembler Speed: "..assemblerSpeed)

    print("You need "..assemblersNeeded.." assemblers to equal to one")
end


function AssemblersNeeded()
    local assemblersNeeded, amountOutput, itemCraftingSpeed, assemblerSpeed
    local quit = false
    repeat
        os.execute("clear")

        repeat
            print("Amount Output: ")
            amountOutput = io.read("n")
        until (amountOutput > 0)

        os.execute("clear")
        repeat
            print("Item Crafting Speed: ")
            itemCraftingSpeed = io.read("n")
        until (itemCraftingSpeed > 0.0)

        os.execute("clear")
        repeat
            print("Assembler Speed: ")
            assemblerSpeed = io.read("n")
        until(assemblerSpeed > 0.0)

        os.execute("clear")
        assemblersNeeded = math.ceil(((1.0/amountOutput) * itemCraftingSpeed) / assemblerSpeed)

        printResult(amountOutput, itemCraftingSpeed, assemblerSpeed, assemblersNeeded)

        quit = ChoiceToQuit()

    until (quit == true)

end

AssemblersNeeded()