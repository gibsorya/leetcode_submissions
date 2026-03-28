# @param {String} s
# @return {Integer}
def roman_to_int(s)
    numerals = {
        "I" => 1,
        "V" => 5,
        "X" => 10,
        "L" => 50,
        "C" => 100,
        "D" => 500,
        "M" => 1000
    }

    last_char = s.chars.last
    last_val = numerals[last_char]
    num = last_val

    for i in (s.length - 2).downto(0) do
        char = s[i]
        curr_val = numerals[char]
        
        if(curr_val < last_val)
            num -= curr_val
        else
            num += curr_val
        end
        
        last_val = curr_val
    end

    num
end
