# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    return false if x < 0 || (x % 10 == 0 && x != 0)

    inversed_num = 0
    while x > inversed_num
        inversed_num = inversed_num * 10 + (x % 10)
        x = (x / 10).floor
    end

    return x == inversed_num || x == (inversed_num / 10).floor
end
