# @param {String} s
# @return {String}
def reverse_vowels(s)
    l = 0
    r = s.length - 1

    while l < r
        if is_vowel(s[l]) && is_vowel(s[r])
            tmp = s[r]
            s[r] = s[l]
            s[l] = tmp
            l += 1
            r -= 1
            next
        end

        l += 1 if !is_vowel(s[l])
        r -= 1 if !is_vowel(s[r])
    end

    s
end

def is_vowel(c)
    c == 'a' || c == 'i' || c == 'e' || c == 'o' || c == 'u' || 
    c == 'A' || c == 'I' || c == 'E' || c == 'O' || c == 'U'
end

