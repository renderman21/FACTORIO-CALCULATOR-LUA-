require "utils"
---Prints the result
---@param productAmount integer
---@param amountInRecipe integer
---@param amountOutput integer
---@param itemCraftingSpeed integer
---@param furnaceSpeed integer
---@param result integer
local function printResult(productAmount, amountInRecipe, amountOutput, itemCraftingSpeed, 
    furnaceSpeed, result)

    print("With Product Amount: "..productAmount.."\n")

    print("Amount in Recipe: "..amountInRecipe/2)
    print("Amount Output: "..amountOutput)
    print("Item Crafting Speed: "..itemCraftingSpeed)
    print("Furnace Speed: "..furnaceSpeed)
    print("You need "..result.." Furnaces to satisfy")
end

function FurnaceCalculator()
    local quit = false
    local productAmount, amountInRecipe, amountOutput, itemCraftingSpeed, 
    furnaceSpeed
    repeat

        repeat
            os.execute("clear")
            print("Product Amount: ")
            productAmount = io.read("n")
        until (productAmount > 0)

        repeat
            os.execute("clear")
            --[[Amount in Recipe, pertains to the amount in relation to that ingredient
            Example: 
                3 Copper Cables(in the ingredient) needs 1.5 Copper Plates
            ]]
            print("Amount in Recipe: ")
            amountInRecipe = io.read("n")
        until (amountInRecipe > 0)

        repeat
            os.execute("clear")
            print("Amount Output: ")
            amountOutput = io.read("n")
        until(amountOutput > 0)

        repeat
            os.execute("clear")
            print("Item Crafting Speed: ")
            itemCraftingSpeed = io.read("n")
        until (itemCraftingSpeed > 0)

        repeat
            os.execute("clear")
            print("Furnace Speed: ")
            furnaceSpeed = io.read("n")
        until (furnaceSpeed > 0)

        os.execute("clear")
        local result = math.ceil(((amountInRecipe/2) * productAmount) * (itemCraftingSpeed / furnaceSpeed))

        printResult(productAmount, amountInRecipe, amountOutput, itemCraftingSpeed
        ,furnaceSpeed, result)

        quit = ChoiceToQuit()

    until (quit == true)
end
