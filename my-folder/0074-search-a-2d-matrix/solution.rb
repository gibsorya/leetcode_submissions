# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
    rows = matrix.length
    cols = matrix[0].length
    start_pos = 0
    end_pos = (rows * cols) - 1
    

    while(start_pos <= end_pos) do
        mid = ((start_pos + end_pos) / 2).floor
        curr = matrix[(mid / cols).floor][mid % cols]
        if(target == curr)
            return true
        end

        if(curr > target)
           end_pos = mid - 1
        elsif
           start_pos = mid + 1
        end
    end

    return false
end
