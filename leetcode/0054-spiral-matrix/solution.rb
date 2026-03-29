# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
    visited = 101
    directions = [[0,1],[1,0],[0,-1],[-1,0]]
    rows = matrix.length
    cols = matrix[0].length
    res = [matrix[0][0]]
    matrix[0][0] = visited

    curr_dir = 0
    change_dir = 0
    row = 0
    col = 0
    while(change_dir < 2)
        while (
            ((row + directions[curr_dir][0]) >= 0) &&
            ((row + directions[curr_dir][0]) < rows) &&
            ((col + directions[curr_dir][1]) >= 0) &&
            ((col + directions[curr_dir][1]) < cols) &&
            (matrix[row + directions[curr_dir][0]][col + directions[curr_dir][1]] != visited)
        ) 
            change_dir = 0
            row += directions[curr_dir][0]
            col += directions[curr_dir][1]
            res.push(matrix[row][col])
            matrix[row][col] = visited
        end

        curr_dir = (curr_dir + 1) % 4
        change_dir += 1
    end

    res
end

