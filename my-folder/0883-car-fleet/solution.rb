# @param {Integer} target
# @param {Integer[]} position
# @param {Integer[]} speed
# @return {Integer}
def car_fleet(target, position, speed)
    pairs = position.map.with_index {|p, i| [p, speed[i]] }.sort_by {|p| p[0] }
    times = pairs.map do |pair|
        p, s = pair
        (target - p) / s.to_f
    end
    ans = 0

    while times.length > 1
        lead = times.pop()
        if lead < times[-1]
            ans += 1
        else
            times[-1] = lead
        end
    end

    ans + (times.length != 0 ? 1 : 0)
    # for pair in pairs do
    #     p, s = pair
        
    #     stack.push(time)
    #     if(stack.length > 1 && stack[stack.length - 1] <= stack[stack.length - 2])
    #         stack.pop()
    #     end
    # end

    # return stack.length
end
