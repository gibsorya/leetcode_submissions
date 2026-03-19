# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash = {}
    ans = []
    nums.each_with_index do |num, i|
        y = target - num
        
        if(hash[target - y])
            ans = [hash[target - y],i]
        end

        hash[y] = i
    end
    ans
end
