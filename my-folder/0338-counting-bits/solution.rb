# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
    result = Array.new(n + 1, 0)
    
    for i in 1...(n + 1) do
        result[i] = result[i & (i - 1)] + 1
    end

    return result
end
