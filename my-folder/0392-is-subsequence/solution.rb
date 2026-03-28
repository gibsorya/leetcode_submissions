# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
    return false if s.length > t.length

    left_bound = s.length
    right_bound = t.length
    left = 0
    right = 0

    while left < left_bound && right < right_bound
        if s[left] == t[right]
            left += 1
        end
        right += 1
    end

    left == left_bound

    # dp = Array.new(s.length + 1) { Array.new(t.length + 1, 0) }

    # rows = s.length
    # cols = t.length

    # for c in (cols - 1).downto(0) do
    #     for r in (rows - 1).downto(0) do
    #         if s[r] == t[c]
    #             dp[r][c] = dp[r + 1][c + 1] + 1
    #         else
    #             dp[r][c] = [dp[r + 1][c], dp[r][c + 1]].max
    #         end
    #     end
    # end

    # s.length == dp[0][0]
end

# . a h b g d c
# a 3 2 2 1 1 1
# b 2 2 2 1 1 1
# c 1 1 1 1 1 1
