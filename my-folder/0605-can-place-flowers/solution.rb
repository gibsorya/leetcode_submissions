# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
    count = 0
    flowerbed.each_with_index do |flower, i|
        if flower == 0
            emptyLeftPlot = (i == 0) || (flowerbed[i - 1] == 0)
            emptyRightPlot = (i == flowerbed.length - 1) || flowerbed[i + 1] == 0

            if emptyLeftPlot && emptyRightPlot
                flowerbed[i] = 1
                count += 1
                return true if count >= n
            end
        end
    end


    count >= n
end
