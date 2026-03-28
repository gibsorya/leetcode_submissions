# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    if digits.last != 9
        digits[digits.length - 1] += 1
        return digits
    end

    for i in (digits.length - 1).downto(0) do
        digits[i] = 0
        if i == 0
            digits.unshift(1)
            break
        end
    
        if digits[i - 1] != 9
            digits[i - 1] += 1
            break
        end
    end

    digits
end
