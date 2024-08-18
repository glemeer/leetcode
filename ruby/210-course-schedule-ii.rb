# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Integer[]}
def find_order(num_courses, prerequisites)
  $prereqs = {}
  $ordered_course_list = []
  num_courses.times { |i| $prereqs[i] = [] }
  prerequisites.each { |p| $prereqs[p[0]] << p[1] }
  
  num_courses.times do |i|
    dfs(i)
  end
  $ordered_course_list
end

def dfs(course_num)
  return if $ordered_course_list.include? course_num
  if $prereqs[course_num] == [] or $prereqs[course_num].all? { |c| $ordered_course_list.include? c }
    $ordered_course_list << course_num
    return
  end

  $prereqs[course_num].each do |p|
    dfs(course_num)
  end
end

p find_order(4, [[1,0],[2,0],[3,1],[3,2]])
p find_order(2, [[1,0]])
p find_order(1, [])
