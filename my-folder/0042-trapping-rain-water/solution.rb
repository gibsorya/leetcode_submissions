# @param {Integer[]} height
# @return {Integer}
def trap(height)
    volume = 0
    left_max = 0
    right_max = 0

    l = 0
    r = height.length - 1
    i = 1

    while l < r do
        if(height[l] <= height[r])
            left_max = [left_max, height[l]].max
            volume += left_max - height[l]
            l += 1
        else
            right_max = [right_max, height[r]].max
            volume += right_max - height[r]
            r -= 1
        end
    end

    volume
end
