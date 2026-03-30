# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    max = 0
    for i in 1..(prices.length - 1) do
        if prices[i] > prices[i - 1]
            max += prices[i] - prices[i - 1]
        end
    end
    max
end
