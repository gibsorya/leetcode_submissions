# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
    row = Array.new(row_index + 1, 1)

    for level in 1..(row_index - 1) do
        i = level
        while i > 0
            row[i] += row[i - 1]
            i -= 1
        end
    end


    return row
end

# row[1] = 2
# row[2] = 3, row[3] = 3
