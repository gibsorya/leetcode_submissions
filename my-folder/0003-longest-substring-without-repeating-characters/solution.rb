# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    window = Hash.new(0)
    longest = 0
    left = 0

    s.length.times do |right|
        window[s[right]] += 1

        while window[s[right]] > 1
            window[s[left]] -= 1
            left += 1
        end

        longest = [longest, right - left + 1].max
    end

    longest
end
