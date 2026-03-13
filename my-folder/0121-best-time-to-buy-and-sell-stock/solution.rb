# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
   min_price = prices[0]
   max_price = 0

   for price in prices do
    if min_price > price
        min_price = price
    elsif (price - min_price) > max_price
        max_price = price - min_price
    end
   end
   
   max_price
end
