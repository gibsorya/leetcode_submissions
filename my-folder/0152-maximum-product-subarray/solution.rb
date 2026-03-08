# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
    # n = nums.length
    # res = nums[0]
    # prefix_prod = 0
    # suffix_prod = 0

    # nums.each_with_index do |num, i|
    #     prefix_prod = num * (prefix_prod == 0 ? 1 : prefix_prod)
    #     suffix_prod = nums[n - 1 - i] * (suffix_prod == 0 ? 1 : suffix_prod)

    #     res = [res, [prefix_prod, suffix_prod].max].max
    # end

    # res == 0 ? 0 : res
    return 0 if nums.length == 0

    curr_max = nums[0]
    curr_min = nums[0]
    result = curr_max

    for i in 1..(nums.length - 1)
        curr = nums[i]
        temp_max = [curr, [curr_max * curr, curr_min * curr].max].max
        curr_min = [curr, [curr_max * curr, curr_min * curr].min].min

        curr_max = temp_max
        result = [curr_max, result].max
    end

    result
end
