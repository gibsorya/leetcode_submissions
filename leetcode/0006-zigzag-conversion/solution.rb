# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
    return s if num_rows == 1
    
    rows = Array.new(num_rows, "")
    
    curr_row = 0
    direction = 1
    s.each_char do |c|
        rows[curr_row] += c
        curr_row += direction
        direction *= -1 if curr_row == 0 || curr_row == num_rows - 1
    end

    rows.join
end
