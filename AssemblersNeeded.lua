require "utils"

---Prints the result
---@param amountOutput integer
---@param itemCraftingSpeed integer
---@param assemblerSpeed integer
---@param assemblersNeeded integer
---@param productAmount integer
---@param amountInRecipe integer
local function printResult(amountOutput, itemCraftingSpeed, 
assemblerSpeed, assemblersNeeded, productAmount, amountInRecipe)

    print("With the following: \n")
    print("Product Amount Needed: "..productAmount.."\n")

    print("Amount in Recipe: "..amountInRecipe)
    print("Amount output: "..amountOutput)
    print("Item Crafting Speed: "..itemCraftingSpeed)
    print("Assembler Speed: "..assemblerSpeed)

    print("You need "..assemblersNeeded.." assemblers to equal to 1/s")
end


function AssemblersNeeded()
    local assemblersNeeded, amountOutput, itemCraftingSpeed, assemblerSpeed, productAmount,
    amountInRecipe
    local quit = false
    repeat
        os.execute("clear")

        repeat
            print("Amount Output for each cycle: ")
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
        repeat
            print("Product Amount Needed: ")
            productAmount = io.read("n")
        until (productAmount > 0)

        os.execute("clear")
        repeat
            print("Amount in Recipe: ")
            amountInRecipe = io.read("n")
        until (amountInRecipe > 0)

        os.execute("clear")
        assemblersNeeded = math.ceil(((amountInRecipe * productAmount) /amountOutput) * 
        (itemCraftingSpeed / assemblerSpeed))

        printResult(amountOutput, itemCraftingSpeed, assemblerSpeed, assemblersNeeded, 
        productAmount, amountInRecipe)

        quit = ChoiceToQuit()

    until (quit == true)

end
