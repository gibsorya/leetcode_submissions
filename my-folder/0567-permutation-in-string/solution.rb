# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_inclusion(s1, s2)
    return false if s1.length > s2.length

    s1_count = Array.new(26, 0)
    s1.each_char do |c|
        s1_count[c.ord - 'a'.ord] += 1
    end

    window = Array.new(26, 0)
    l = 0

    for r in 0..(s2.length - 1) do
        window[s2[r].ord - 'a'.ord] += 1

        return true if window == s1_count

        if (r - l) + 1 == s1.length
            window[s2[l].ord - 'a'.ord] -= 1
            l += 1
        end
    end

    false
end
