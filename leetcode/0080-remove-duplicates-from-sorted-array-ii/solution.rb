# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    return 0 if nums.length == 0
    l = 1
    r = 1
    count = 1

    while l < nums.length do
        if nums[l] == nums[l - 1]
            count += 1
            if count > 2
                l += 1
                next
            end
        else
            count = 1
        end

        nums[r] = nums[l]
        l += 1
        r += 1
    end

    r
end
