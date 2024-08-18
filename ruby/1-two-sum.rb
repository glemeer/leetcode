# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  result = []
  nums.each_with_index do |n, i|
    diff_index = nums.index(target - n)
    if diff_index && diff_index != i
        result.push i, diff_index
        break
    end
  end
  result.sort 
end

target, *nums = ARGV
p nums
p two_sum(nums.map(&:to_i), target.to_i)