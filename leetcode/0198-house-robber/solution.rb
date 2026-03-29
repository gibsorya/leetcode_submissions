# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
    return nums[0] || 0 if nums.length <= 1
    i = 0
    dp = [0, 0]

    while i < nums.length
        tmp = [nums[i] + dp[0], dp[1]].max
        dp[0] = dp[1]
        dp[1] = tmp
        i += 1
    end

    return dp[1]
end
