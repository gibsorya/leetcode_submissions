# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
    for i in (cost.length - 3).downto(0) do
        cost[i] += [cost[i + 1], cost[i + 2]].min
    end
    return [cost[0], cost[1]].min
end
