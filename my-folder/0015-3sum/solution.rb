# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
    nums.sort!
    res = []

    nums.each_with_index do |num, index|
        next if index != 0 && num == nums[index - 1]
        l = index + 1
        r = nums.length - 1

        while l < r
            sum = num + nums[l] + nums[r]
            if sum == 0
                res << [num, nums[l], nums[r]]
                l += 1
                r -= 1
                while l < r && nums[l] == nums[l - 1]
                    l += 1
                end
            elsif sum < 0
                l += 1
            else
                r -= 1
            end
        end
    end

    res
end
