# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_inclusion(s1, s2)
    return false if s1.length > s2.length

    s1_counts = Array.new(26, 0)
    s2_counts = Array.new(26, 0)

    for i in 0..(s1.length - 1) do
        s1_counts[s1[i].ord - 97] += 1
        s2_counts[s2[i].ord - 97] += 1
    end

    matches = 0
    for i in 0..25 do
        matches += 1 if s1_counts[i] == s2_counts[i]
    end

    l = 0
    for r in s1.length..(s2.length - 1) do
        return true if matches == 26

        index = s2[r].ord - 97
        s2_counts[index] += 1
        if s1_counts[index] == s2_counts[index]
            matches += 1
        elsif s1_counts[index] + 1 == s2_counts[index]
            matches -= 1
        end

        index = s2[l].ord - 97
        s2_counts[index] -= 1
        if s1_counts[index] == s2_counts[index]
            matches += 1
        elsif s1_counts[index] - 1 == s2_counts[index]
            matches -= 1
        end
        l += 1
    end

    matches == 26
end
