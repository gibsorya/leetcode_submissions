# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
    tortiose = nums[0]
    hare = nums[0]

    loop do
        tortiose = nums[tortiose]
        hare = nums[nums[hare]]
        break if tortiose == hare
    end

    tortiose = nums[0]

    while tortiose != hare
        tortiose = nums[tortiose]
        hare = nums[hare]
    end

    hare
end
