# @param {Integer[]} original
# @param {Integer} m
# @param {Integer} n
# @return {Integer[][]}
def construct2_d_array(original, m, n)
    return [] if (m * n) != original.length
    res = Array.new(m)
    i = 0
    for r in 0..(m - 1) do
        row = Array.new(n, 0)
        for c in 0..(n - 1) do
            row[c] = original[i]
            i += 1
        end
        res[r] = row
    end

    res
end
