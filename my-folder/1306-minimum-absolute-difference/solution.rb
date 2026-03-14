# @param {Integer[]} arr
# @return {Integer[][]}
def minimum_abs_difference(arr)
    arr = arr.sort
    res = [[arr[0], arr[1]]]
    min_diff = arr[1] - arr[0] 

    for i in (1..(arr.length - 2)) do
        diff = arr[i + 1] - arr[i]
        if diff < min_diff
            res = []
            res << [arr[i], arr[i + 1]]
            min_diff = diff
        elsif min_diff == diff
            res << [arr[i], arr[i + 1]]
        end
    end

    res
end
