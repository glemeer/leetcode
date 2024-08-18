# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
  result = nums[0]
  left = 0
  right = nums.length - 1

  while left <= right do
    if nums[left] < nums[right]
      return [result, nums[left]].min
    end

    mid = (left + right) / 2
    result = [result, nums[mid]].min

    if nums[mid] >= nums[left]
      left = mid + 1
    else
      right = mid - 1
    end
  end

  return result
end

#p find_min([8,9,10,1,2,3,4,5,6,7])
p find_min([3,4,5,1,2])
# p find_min([4,5,6,7,0,1,2])
# p find_min([11,13,15,17])
