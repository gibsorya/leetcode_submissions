# @param {String} s
# @return {String}
def remove_outer_parentheses(s)
    res = ""
    balance = 0
    
    s.each_char do |c|
        if c == '('
            if balance > 0
                res += c
            end
            balance += 1
        else
            balance -= 1
            if balance > 0
                res += c
            end
        end
    end
    
    res
end
