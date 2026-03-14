# @param {String[]} words
# @param {Integer} k
# @return {String[]}
def top_k_frequent(words, k)
    # frequency_map = {}

    # for word in words do
    #     frequency_map[word] = 0 if !frequency_map.has_key?(word)

    #     frequency_map[word] += 1
    # end

    # frequency_map = frequency_map.sort_by { |k, v| [-v, k] }.to_h
    # res = []
    # index = 0
    # frequency_map.each do |key, value|
    #     break if index == k
    #     res << key
    #     index += 1
    # end

    # res
      words.tally
       .sort_by{|w, c| [-c, w]}
       .take(k)
       .map(&:first)
end
