# @param {String} s
# @param {String} p
# @return {Integer[]}
def find_anagrams(s, p)
    s_length = s.length
    p_length = p.length
    return [] if s_length < p_length

    indices = []
    check = Array.new(26, 0)
    window = Array.new(26, 0)

    p = p.bytes.map { _1 - 97 }
    s = s.bytes.map { _1 - 97 }

    p.each { check[_1] += 1 }

    p_length.times { window[s[_1]] += 1 }
    indices << 0 if check == window

    (s_length - p_length).times do |i|
        window[s[i]] -= 1
        window[s[p_length + i]] += 1
        indices << i + 1 if check == window
    end

    return indices
end
