# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
    nums.each_with_index do |num, i|
        nums[i] = i != 0 ? nums[i - 1] + num : num
    end
end
