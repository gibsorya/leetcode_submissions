# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    ans = 0
    i = 0
    while i < nums.length
        ans ^= nums[i]
        i += 1
    end

    ans
end
