# @param {Character[][]} board
# @param {String} word
# @return {Boolean}
def exist(board, word)
    @rows = board.length
    @cols = board[0].length
    @directions = [[1,0],[-1,0],[0,1],[0,-1]]
    if word.match(/^#{word[0]}+/)[0].size > word.match(/#{word[-1]}+$/)[0].size
        word.reverse!
    end

    for row in 0..(@rows - 1) do
        for col in 0..(@cols - 1) do
            c = board[row][col]
            return true if dfs(board, word, row, col)
        end
    end

    false
end

def dfs(board, suffix, row, col)
    return true if suffix.length == 0
    return false if row == @rows || row < 0 || col == @cols || col < 0 || board[row][col] != suffix[0]
    
    board[row][col] = "#"

    for direction in @directions do
        row_dir = direction[0]
        col_dir = direction[1]
        return true if dfs(board, suffix[1..], row + row_dir, col + col_dir)
    end

    board[row][col] = suffix[0]
    false
end
