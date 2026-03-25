# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
def shuffle(nums, n)
    ans = Array.new(nums.length)

    l = 0
    i = 0
    for r in n.upto(nums.length - 1) do
        ans[i] = nums[l]
        i += 1
        ans[i] = nums[r]
        i += 1
        l += 1
    end

    ans
end
