# @param {Integer[]} height
# @return {Integer}
def max_area(height)
    max = 0
    l, r = [0, height.length - 1]

    while l < r
        # maximum height water can go == the smallest height between
        # two containers
        max_height = [height[l], height[r]].min
        area = max_height * (r - l)
        max = [area, max].max

        if height[l] < height[r]
            l += 1
        else
            r -= 1
        end
    end
    max
end
