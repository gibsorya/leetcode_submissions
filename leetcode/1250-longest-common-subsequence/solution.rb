# @param {String} text1
# @param {String} text2
# @return {Integer}
def longest_common_subsequence(text1, text2)
    # @cache = Array.new(text1.length) { Array.new(text2.length, -1) }
    # dfs(text1, text2, 0, 0)
    if text2.length < text1.length
        temp = text1
        text1 = text2
        text2 = temp
    end
    prev_row = Array.new(text1.length + 1, 0)
    curr_row = Array.new(text1.length + 1, 0)

    for col in (text2.length - 1).downto(0) do
        for row in (text1.length - 1).downto(0) do
            if text2[col] == text1[row]
                curr_row[row] = 1 + prev_row[row + 1]
            else
                curr_row[row] = [curr_row[row + 1], prev_row[row]].max
            end
        end
        temp = prev_row
        prev_row = curr_row
        curr_row = temp
    end

    prev_row[0]
end

def dfs(text1, text2, i, j)
    return 0 if i == text1.length || j == text2.length
    return @cache[i][j] if @cache[i][j] >= 0
    if(text1[i] == text2[j])
        @cache[i][j] = 1 + dfs(text1, text2, i + 1, j + 1)
    else 
        @cache[i][j] = [dfs(text1, text2, i + 1, j), dfs(text1, text2, i, j + 1)].max
    end

    @cache[i][j]
end
