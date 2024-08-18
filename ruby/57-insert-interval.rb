# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
def insert(intervals, new_interval)
  result = []
  
  intervals.each do |interval|
    if new_interval[0] > interval[1]
      result << interval
    elsif interval[0] > new_interval[1]
      result << new_interval << interval
    elsif interval[0] >= new_interval[0] && interval[1] <= new_interval[1]
      next
    elsif new_interval[0] >= interval[0]
      new_interval = [[new_interval[0], interval[0]].min, [new_interval[1], interval[1]].max]
    elsif interval[1] >= new_interval[1]
      new_interval[1] = interval[1]
    end
  end
  result
end

p insert([[1,3],[6,9]], [2,5])
p insert([[1,2],[3,5],[6,7],[8,10],[12,16]], [4,8])