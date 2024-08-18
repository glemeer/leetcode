# @param {Integer[][]} grid
# @return {Integer}
def max_area_of_island(grid)
  return 0 if grid.empty?

  $visited = []
  max_area = 0

  grid.size.times do |r|
    grid[0].size.times do |c|
      if grid[r][c] == 1
        area = 0
        area = bfs(grid,r,c)
        max_area = area if area > max_area
      end
    end
  end

  max_area
end

def bfs(grid, r,c)
  return 0 if r < 0 || c < 0 || r >= grid.size || c >= grid[0].size || grid[r][c] == 0 || $visited.include?([r,c])

  $visited << [r,c]
  return 1 +
    bfs(grid, r, c-1) +
    bfs(grid, r, c+1) +
    bfs(grid, r+1, c) +
    bfs(grid, r-1, c)
end

grid = [
  [0,0,1,0,0,0,0,1,0,0,0,0,0],
  [0,0,0,0,0,0,0,1,1,1,0,0,0],
  [0,1,1,0,1,0,0,0,0,0,0,0,0],
  [0,1,0,0,1,1,0,0,1,0,1,0,0],
  [0,1,0,0,1,1,0,0,1,1,1,0,0],
  [0,0,0,0,0,0,0,0,0,0,1,0,0],
  [0,0,0,0,0,0,0,1,1,1,0,0,0],
  [0,0,0,0,0,0,0,1,1,0,0,0,0]
]

# grid = [[0,0,0,0,0,0,0,0]]

p max_area_of_island(grid)