class WordDistance
    attr_accessor :words_dict, :locations
=begin
    :type words_dict: String[]
=end
    def initialize(words_dict)
        @words_dict = words_dict
        @locations = {}
        words_dict.each_with_index do |word, index|
            if !locations[word]
                locations[word] = []
            end
            locations[word] << index
        end
    end


=begin
    :type word1: String
    :type word2: String
    :rtype: Integer
=end
    def shortest(word1, word2)
        loc1 = locations[word1]
        loc2 = locations[word2]

        index1 = 0
        index2 = 0
        minDiff = @words_dict.length

        while index1 < loc1.length && index2 < loc2.length do
            minDiff = [minDiff, (loc1[index1] - loc2[index2]).abs].min
            if(loc1[index1] < loc2[index2])
                index1 += 1
            else
                index2 += 1
            end
        end

        minDiff
    end
end

# Your WordDistance object will be instantiated and called as such:
# obj = WordDistance.new(words_dict)
# param_1 = obj.shortest(word1, word2)
