# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_sliding_window(nums, k)
    dq = []
    res = []

    for i in 0.upto(k - 1) do
        while !dq.empty? && nums[i] >= nums[dq.last]
            dq.pop
        end
        dq.push(i)
    end
    res.push(nums[dq.first])

    for i in k.upto(nums.length - 1) do
        if dq.first == i - k
            dq.shift
        end
        while !dq.empty? && nums[i] >= nums[dq.last]
            dq.pop
        end
        dq.push(i)
        res.push(nums[dq.first])
    end

    res
end
