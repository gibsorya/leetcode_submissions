# @param {Integer[]} piles
# @param {Integer} h
# @return {Integer}
def min_eating_speed(piles, h)
    left = 1
    right = piles.max

    while left < right
        mid = (left + (right - left) / 2).floor
        hoursSpent = 0

        piles.each do |pile|
            hoursSpent += (pile + mid - 1) / mid
        end

        if hoursSpent <= h
            right = mid
        else
            left = mid + 1
        end
    end

    left
end
