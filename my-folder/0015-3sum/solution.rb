# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
    nums.sort!
    res = []

    for i in 0..(nums.length - 2) do
        next if i > 0 && nums[i] == nums[i - 1]
        l = i + 1
        r = nums.length - 1
        while l < r
            sum = nums[i] + nums[l] + nums[r]
            if sum == 0
                res.push([nums[i], nums[l], nums[r]]) 
                l += 1
                r -= 1
            elsif sum < 0
                l += 1
            else
                r -= 1
            end
        end
    end

    res.uniq
end
