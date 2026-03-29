# @param {Integer} n
# @param {Integer} k
# @return {String}
def get_happy_string(n, k)
    @letters = ['a', 'b', 'c']
    @result = ""
    @index = 0
    backtrack(n, k, "")
    @result
end

def backtrack(n, k, curr)
    if curr.length == n
        @index += 1
        @result = curr if @index == k
        return
    end

    for letter in @letters do
        next if curr.length > 0 && curr.chars.last == letter

        curr += letter

        backtrack(n, k, curr)

        return if @result != ""

        curr.chop!
    end
end
