# @param {String} jewels
# @param {String} stones
# @return {Integer}
def num_jewels_in_stones(jewels, stones)
    set = Set.new
    jewels.each_char do |jewel|
        set.add(jewel)
    end
    count = 0

    stones.each_char do |stone|
        count += 1 if set.include?(stone)
    end

    count
end
