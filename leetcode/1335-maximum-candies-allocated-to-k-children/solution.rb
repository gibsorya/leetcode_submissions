# @param {Integer[]} candies
# @param {Integer} k
# @return {Integer}
def maximum_candies(candies, k)
    left = 1
    right = candies.max
    res = 0

    while(left <= right)
        pile_size = left + ((right - left)/2).floor
        if(divide_piles(candies, k, pile_size))
            res = pile_size
            left = pile_size + 1
        else
            right = pile_size - 1
        end
    end
    
    res
end

def divide_piles(candies, k, pile_size)
    candies.each do |candy|
        k -= (candy / pile_size).floor
    end
    k <= 0
end

#[4,7,5]
# k = 4
# 1 2 3 4 5 6 7
# L M R      

# L = 1, R = 7, M = 4
# 4 - 4 = 0 -> 0   k - 1
# 7 - 4 = 3 -> 3 - 4 = -1   k - 1
# 5 - 4 = 1 -> 1 - 3 = -2.  k - 1

# L = 1, R = 3, M = 2
# 4 - 2 = 


