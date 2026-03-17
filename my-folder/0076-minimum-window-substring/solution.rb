# @param {String} s
# @param {String} t
# @return {String}
def min_window(s, t)
    return "" if s.length < t.length || t.length == 0 || s.length == 0

    map = Array.new(128, 0)
    count = t.length
    l = 0
    r = 0
    min_length = s.length + 1
    start_index = 0

    t.each_char { |char| map[char.ord] += 1}

    while r < s.length
        index = s[r].ord
        if map[index] > 0
            count -= 1
        end
        map[index] -= 1
        r += 1

        while count == 0
            if r - l < min_length
                start_index = l
                min_length = r - l
            end

            index = s[l].ord

            if map[index] == 0
                count += 1
            end
            map[index] += 1
            l += 1
        end
    end

    min_length == s.length + 1 ? "" : s[start_index, min_length]


    # res = ""

    # t_counts = {}

    # for i in 0..(t.length - 1) do
    #     t_counts.has_key?(t[i]) ? t_counts[t[i]] += 1 : t_counts[t[i]] = 1
    # end

    # filtered_s = []
    # for i in 0..(s.length - 1) do
    #     c = s[i]
    #     filtered_s.push([i, c]) if t_counts.has_key?(c)
    # end

    # required = t_counts.size
    # found = 0
    # s_counts = {}
    # l = 0
    # ans = [-1, 0, 0]
    # for r in 0..(filtered_s.length - 1) do
    #     c = filtered_s[r][1]
    #     count = s_counts[c] || 0
    #     s_counts[c] = count + 1
    #     # puts "#{r}. #{s_counts}"
    #     if t_counts.has_key?(c) && t_counts[c] == s_counts[c]
    #         found += 1
    #     end

    #     while(l <= r && required == found)
    #         c = filtered_s[l][1]
    #         end_pos = filtered_s[r][0]
    #         start_pos = filtered_s[l][0]
    #         # puts "L: #{l} - R: #{r} - #{found} - #{s_counts}"
    #         if ans[0] == -1 || (end_pos - start_pos) + 1 < ans[0]
    #             ans[0] = (end_pos - start_pos) + 1
    #             ans[1] = start_pos
    #             ans[2] = end_pos
    #             # puts "ans: #{ans}"
    #         end

    #         s_counts[c] -= 1

    #         if t_counts.has_key?(c) && t_counts[c] - 1 == s_counts[c]
    #             # puts "removing"
    #             found -= 1
    #         end
    #         l += 1
    #     end
    # end

    # ans[0] == -1 ? "" : s[ans[1]..ans[2]]
end
