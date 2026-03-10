# @param {Integer} target
# @param {Integer[]} nums
# @return {Integer}
def min_sub_array_len(target, nums)
    result = Float::INFINITY

    sum = 0
    l = 0

    for r in 0..(nums.length - 1) do
        sum += nums[r]
        while sum >= target
            result = [result, (r - l) + 1].min
            sum -= nums[l]
            l += 1
        end
    end

    return 0 if result == Float::INFINITY

    result
end
