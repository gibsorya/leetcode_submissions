# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
    prev_row = Array.new(n, 0)

    for r in (m - 1).downto(0) do
        curr_row = Array.new(n, 0)
        curr_row[curr_row.length - 1] = 1
        for c in (n - 2).downto(0) do
            curr_row[c] = curr_row[c + 1] + prev_row[c]
        end
        prev_row = curr_row
    end
    prev_row[0]
end
