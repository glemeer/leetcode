def find_target(nums, target)
    left, right = 0, nums.size - 1

    while left <= right
      mid = (left + right) /2

      if nums[mid] == target
        return mid
      elsif nums[mid] > target
        right = mid - 1
      elsif nums[mid] < target
        left = mid + 1
      end
    end

    return -1
end

target, *nums = ARGV
p find_target(nums, target)