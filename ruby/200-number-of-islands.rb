# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
    return 0 if grid.empty?

    $num_rows = grid.size
    $num_cols = grid[0].size
    $visited = []
    num_islands = 0

    (0...$num_rows).each do |r|
        (0...$num_cols).each do |c|
          next if grid[r][c] == '0'
          num_islands += bfs(grid,r,c)
        end
    end

    num_islands
end

def bfs(grid, r,c)
  return 0 if r < 0 || c < 0 || r >= $num_rows || c >= $num_cols || grid[r][c] == '0' || $visited.include?([r,c])

  $visited << [r,c]
  bfs(grid, r, c-1)
  bfs(grid, r, c+1)
  bfs(grid, r+1, c)
  bfs(grid, r-1, c)
  1
end

# grid = [
#   ["1","1","1","1","0"],
#   ["1","1","0","1","0"],
#   ["1","1","0","0","0"],
#   ["0","0","0","0","0"]
# ]

# grid = [
#   ["1","1","0","0","0"],
#   ["1","1","0","0","0"],
#   ["0","0","1","0","0"],
#   ["0","0","0","1","1"]
# ]

grid = [
  ["0","0","1","0","0","0","0","1","0","0","0","0","0"],
  ["0","0","0","0","0","0","0","1","1","1","0","0","0"],
  ["0","1","1","0","1","0","0","0","0","0","0","0","0"],
  ["0","1","0","0","1","1","0","0","1","0","1","0","0"],
  ["0","1","0","0","1","1","0","0","1","1","1","0","0"],
  ["0","0","0","0","0","0","0","0","0","0","1","0","0"],
  ["0","0","0","0","0","0","0","1","1","1","0","0","0"],
  ["0","0","0","0","0","0","0","1","1","0","0","0","0"]
]
p num_islands(grid)