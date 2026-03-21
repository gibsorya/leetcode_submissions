# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    sums = {}
    nums.each_with_index do |num, index|
        diff = target - num
        if sums.has_key?(diff)
            return [sums[diff], index]
        end
        sums[num] = index
    end
end
