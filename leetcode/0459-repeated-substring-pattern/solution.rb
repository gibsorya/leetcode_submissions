# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
    t = s + s
    return true if t[1...(t.length - 1)].include?(s)
    false
end
