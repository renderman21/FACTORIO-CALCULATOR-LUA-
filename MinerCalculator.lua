require "utils"

---Prints the result
---@param productAmount integer
---@param ingredientAmount integer or a float
---@param miningRate integer
---@param result integer
local function printResult(productAmount, ingredientAmount, miningRate, result)
    print("With the product amount: "..productAmount.."\n")

    print("Ingredient Amount: "..ingredientAmount/2)
    print("Mining Rate: "..miningRate)
    print("You need "..result.." Miners to satisfy")

end
---This is used to check the amount of miners needed 
function MinerCalculator()
    local quit = false
    local productAmount, ingredientAmount, miningRate
    repeat 

        repeat
            os.execute("clear")
            print("Product Amount: ")
            productAmount = io.read("n")
        until (productAmount > 0)

        --[[This pertains to the amount needed for the ingredient
        Example: 
        2 Copper plates will equal to 1.5]]
        repeat
            os.execute("clear")
            print("Ingredient Amount: ")
            ingredientAmount = io.read("n")
        until (ingredientAmount > 0)

        repeat
            os.execute("clear")
            print("Mining Rate: ")
            miningRate = io.read("n")
        until (miningRate > 0)

        local result = math.ceil(((ingredientAmount/2) * productAmount) / miningRate)

        os.execute("clear")

        printResult(productAmount, ingredientAmount, miningRate, result)
        quit = ChoiceToQuit()

    until (quit == true)
end