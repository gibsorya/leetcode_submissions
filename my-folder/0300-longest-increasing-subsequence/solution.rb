# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
    memo = Array.new(nums.length, -1)
    
    nums.map.with_index do |num, i|
        dfs(nums, i, memo)
    end.max
end

def dfs(nums, i, memo)
    return memo[i] if memo[i] != -1
    
    length = 1

    for j in (i + 1)..(nums.length - 1) do
        if nums[j] > nums[i]
            length = [length, 1 + dfs(nums, j, memo)].max
        end
    end
    memo[i] = length
    length
end
