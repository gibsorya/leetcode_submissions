# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
    set = nums.to_set
    longest_streak = 0

    set.each do |num|
        if(!set.include?(num - 1))
            curr = num
            curr_streak = 1
            while set.include?(curr + 1)
                curr += 1
                curr_streak += 1
            end
            longest_streak = [longest_streak, curr_streak].max
        end
    end

    longest_streak
end
