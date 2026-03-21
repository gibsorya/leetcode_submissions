# @param {Integer[]} heights
# @return {Integer}
def largest_rectangle_area(heights)
    max_area = 0
    stack = [] # pair (index, height)

    for i in 0..(heights.length) do

        while !stack.empty? && (i == heights.length || heights[stack.last] >= heights[i])
            height = heights[stack.pop()]
            width = stack.length == 0 ? i : i - stack.last - 1
            max_area = [max_area, width * height].max
        end
        stack.push(i)
    end

    max_area
end
