# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Boolean}
def can_finish(num_courses, prerequisites)
  $prereqs = {}
  num_courses.times { |i| $prereqs[i] = [] }
  prerequisites.each { |p| $prereqs[p[0]] << p[1] }

  $visited = []

  num_courses.times do |i|
    return false if not dfs(i)
  end
  true
end

def dfs(course_num)
  return false if $visited.include?(course_num)
  return true if $prereqs[course_num].empty?

  $visited << course_num
  $prereqs[course_num].each do |p|
    return false if !dfs(p)
  end
  $visited.delete(course_num)
  true
end

p can_finish(4, [[3,1],[1,2],[0,1],[2,3],[0,2]])
p can_finish(4, [[1,2],[0,1],[2,3],[0,2]])
p can_finish(2, [[1,0],[0,1]])
p can_finish(2, [[0,1]])