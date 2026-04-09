# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def subarray_sum(nums, k)
    prefix_sums = { 0 => 1 }
    curr_sum = 0
    count = 0

    nums.each do |num|
        curr_sum += num
        diff = curr_sum - k
        count += (prefix_sums[diff] || 0)
        prefix_sums[curr_sum] = (prefix_sums[curr_sum] || 0) + 1
    end

    count
end
