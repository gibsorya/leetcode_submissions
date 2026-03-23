# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
    last_pos = nums.length - 1

    (nums.length - 1).downto(0) do |i|
        last_pos = i if i + nums[i] >= last_pos
    end
    
    last_pos == 0
end
