# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
    pairs = []
    dfs(n, "", pairs, 0, 0)
    pairs
end

def dfs(n, combo, pairs, leftCount, rightCount)
    if (combo.length == (n * 2))
        pairs << combo
        return
    end

    if leftCount < n
        combo += "("
        dfs(n, combo, pairs, leftCount + 1, rightCount)
        combo = combo.chop
    end

    if leftCount > rightCount
        combo += ")"
        dfs(n, combo, pairs, leftCount, rightCount + 1)
        combo = combo.chop
    end
    
   
end
