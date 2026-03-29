# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    res = nums.first
    count = 0
    nums.each do |num|
        if count == 0
            res = num
        end

        count += num == res ? 1 : -1
    end

    res
end
