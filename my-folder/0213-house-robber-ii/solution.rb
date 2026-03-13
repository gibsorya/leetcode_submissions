# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
    return nums[0] || 0 if nums.length <= 1

    [dp(nums, 0, nums.length - 2), dp(nums, 1, nums.length - 1)].max
end

def dp(nums, start_pos, end_pos)
    max = [0, 0]
    for i in start_pos..end_pos do
        tmp = [nums[i] + max[0], max[1]].max
        max[0] = max[1]
        max[1] = tmp
    end

    max[1]
end

def dfs(nums, i, adj, cache)
    return 0 if i >= nums.length || (adj == 1 && i == nums.length - 1)
    return cache[i][adj] if cache[i][adj] != -1

    cache[i][adj] = [nums[i] + dfs(nums, i + 2, (adj | (i == 0 ? 1 : 0)), cache), dfs(nums, i + 1, adj, cache)].max
    cache[i][adj]
end
