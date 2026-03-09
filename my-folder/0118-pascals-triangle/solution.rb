# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
    triangle = []
    triangle << [1]

    for row_num in (1..(num_rows - 1)) do
        row = Array.new(row_num + 1)
        row[0] = 1
        row[row.length - 1] = 1
        prev_row = triangle[row_num - 1]
        i = 1
        while i < row.length - 1
            row[i] = prev_row[i - 1] + prev_row[i]
            i += 1
        end

        triangle << row
    end

    triangle
end
