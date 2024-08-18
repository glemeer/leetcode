# @param {Integer[][]} heights
# @return {Integer[][]}
def pacific_atlantic(heights)
  $rows, $columns = heights.length, heights[0].length
  pacific, atlantic = [], []

  (0...$columns).each do |c|
    dfs(heights, 0, c, pacific, heights[0][c])
    dfs(heights, $rows - 1, c, atlantic, heights[$rows - 1][c])
  end

  (0...$rows).each do |r|
    dfs(heights, r, 0, pacific, heights[r][0])
    dfs(heights, r, $columns - 1, atlantic, heights[r][$columns - 1])
  end

  result = []
  (0...$rows).each do |r|
    (0...$columns).each do |c|
      result << [r,c] if pacific.include?([r,c]) && atlantic.include?([r,c])
    end
  end
  result
end

def dfs(heights, r, c, visited, previous_height)
  return if (visited.include?([r,c]) || r < 0 || r > $rows - 1 ||
      c < 0 || c > $columns - 1 || heights[r][c] < previous_height)
    
  visited << [r,c]
  dfs(heights, r + 1, c, visited, heights[r][c])
  dfs(heights, r - 1, c, visited, heights[r][c])
  dfs(heights, r, c + 1, visited, heights[r][c])
  dfs(heights, r, c - 1, visited, heights[r][c])

end

heights = [[1,2,2,3,5],[3,2,3,4,4],[2,4,5,3,1],[6,7,1,4,5],[5,1,1,2,4]]
p pacific_atlantic(heights)
h2 = [[1]]
p pacific_atlantic(h2)