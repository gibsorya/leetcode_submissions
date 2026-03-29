# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
    return intervals if intervals.length <= 1
    intervals = intervals.sort_by { |interval| interval[0] }
    merged = Array.new

    intervals.each do |interval|
        if(merged.empty? || merged[-1][1] < interval[0])
            merged << interval
        else
            merged[-1][1] = [merged[-1][1], interval[1]].max
        end
    end

    merged
end
