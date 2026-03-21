# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
    nums.sort!
    closest_sum = Float::INFINITY

    nums.each_with_index do |num, index|
        l = index + 1
        r = nums.length - 1

        while l < r
            sum = num + nums[l] + nums[r]
            if((target - sum).abs < (closest_sum).abs)
                closest_sum = target - sum
            end

            if sum < target
                l += 1
            else sum > target
                r -= 1
            end
        end
    end

    target - closest_sum
end
