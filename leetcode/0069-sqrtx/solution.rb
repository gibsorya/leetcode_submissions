# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    return x if x < 2
    num = 0
    pivot = 0
    left = 2
    right = (x / 2).floor

    while left <= right
        pivot = left + ((right - left) / 2).floor
        num = pivot * pivot
        if num > x
            right = pivot - 1
        elsif num < x
            left = pivot + 1
        else
            return pivot
        end
    end
    
    right
end
