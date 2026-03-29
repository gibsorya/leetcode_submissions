# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
    left_sum = 0
    right_sum = nums.sum

    nums.each_with_index do |num, i|
        right_sum -= num
        return i if left_sum == right_sum
        left_sum += num
    end

    -1
end
