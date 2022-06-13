# @param {Integer[][]} accounts
# @return {Integer}
def maximum_wealth(accounts)
    max_wealth, i = 0, 0
    while(i < accounts.length)
        sum, j = 0, 0
        while(j < accounts[i].length)
            sum = sum + accounts[i][j]

            j = j + 1
            max_wealth = sum if sum > max_wealth

        end
        i = i + 1
    end
    max_wealth
end