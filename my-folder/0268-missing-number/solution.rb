# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
    missing = nums.length
    nums.each_with_index { |num, i| missing ^= i ^ num }
    missing
end
