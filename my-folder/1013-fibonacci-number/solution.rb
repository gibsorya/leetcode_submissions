# @param {Integer} n
# @return {Integer}
def fib(n)
    return n if n <= 1
    first = 0
    second = 1

    for i in 2..n do
        tmp = first
        first = second
        second = tmp + second
    end

    second
end
