# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    return 1 if n == 1

    dp = [0, 1]
    i = 0
    while i <= n
        tmp = dp[0]
        dp[0] = dp[0] + dp[1]
        dp[1] = tmp
        i += 1
    end

    dp[0]
end
