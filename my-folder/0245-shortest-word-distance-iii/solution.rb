# @param {String[]} words_dict
# @param {String} word1
# @param {String} word2
# @return {Integer}
def shortest_word_distance(words_dict, word1, word2)
    index1 = -1
    index2 = -1
    minDistance = words_dict.length

    words_dict.each_with_index do |word, index|
        if word1 == word2 && word == word1
            if index1 == -1
                index1 = index
            else
                index2 = index
            end
        elsif word == word1
            index1 = index
        elsif word == word2
            index2 = index
        end

        if index1 != -1 && index2 != -1
            minDistance = [minDistance, (index1 - index2).abs].min

            if word1 == word2
                index1 = index2
                index2 = -1
            end
        end
    end

    return minDistance
end
