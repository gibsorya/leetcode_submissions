# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
    max_ones = 0
    count = 0
    nums.each do |num|
        count += 1
        if num & 1 == 1
            max_ones = [count, max_ones].max
        else
            count = 0
        end
    end

    max_ones
end
