# @param {Integer[]} arr
# @return {Integer}
def max_turbulence_size(arr)
    return arr.length if arr.length < 2

    l = 0
    length = 1

    for r in 1..(arr.length - 1) do
        c = compare(arr[r - 1], arr[r])
        if(c == 0)
            l = r
        else
            if r == arr.length - 1 || c * compare(arr[r], arr[r + 1]) != -1
                length = [length, r - l + 1].max
                l = r
            end
        end
    end

    length
end

def compare(x, y)
    if x < y
        return -1
    elsif x > y
        return 1
    end
    return 0
end
