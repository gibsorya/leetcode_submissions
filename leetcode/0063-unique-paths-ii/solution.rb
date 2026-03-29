# @param {Integer[][]} obstacle_grid
# @return {Integer}
def unique_paths_with_obstacles(obstacle_grid)
    # cache = Array.new(obstacle_grid.length) { Array.new(obstacle_grid[0].length, 0) }
    # # dfs(obstacle_grid, 0, 0)
    # memoize(obstacle_grid, 0, 0, cache)
    return 0 if obstacle_grid.last.last == 1
    prev_row = Array.new(obstacle_grid[0].length, 0)
    prev_row[prev_row.length - 1] = 1
    for r in (obstacle_grid.length - 1).downto(0) do
        curr_row = Array.new(obstacle_grid[0].length)
        for c in (obstacle_grid[0].length - 1).downto(0) do
            if obstacle_grid[r][c] == 1
                curr_row[c] = 0
            elsif c == obstacle_grid[0].length - 1
                curr_row[c] = prev_row[c]
            else
                curr_row[c] = curr_row[c + 1] + prev_row[c]
            end
        end

        prev_row = curr_row
    end

    prev_row[0]
end

def memoize(obstacle_grid, r, c, cache)
    return 0 if r == obstacle_grid.length || c == obstacle_grid[0].length
    return 0 if obstacle_grid[r][c] == 1
    return cache[r][c] if cache[r][c] > 0
    return 1 if (r == obstacle_grid.length - 1) && (c == obstacle_grid[0].length - 1)

    cache[r][c] = memoize(obstacle_grid, r + 1, c, cache) + memoize(obstacle_grid, r, c + 1, cache)
    cache[r][c]
end
