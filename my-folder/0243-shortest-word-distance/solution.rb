# @param {String[]} words_dict
# @param {String} word1
# @param {String} word2
# @return {Integer}
def shortest_distance(words_dict, word1, word2)
    minCount = words_dict.length
    word1Index = -1
    word2Index = -1
    words_dict.each_with_index do |word, index|
        if word == word1
            word1Index = index
        elsif word == word2
            word2Index = index
        end

        if word1Index != -1 && word2Index != -1
            minCount = [minCount, (word1Index - word2Index).abs].min
        end
    end

    minCount
end
