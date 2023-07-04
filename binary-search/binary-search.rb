# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  # (nums.length == 1 && nums[0] == target) ? (return 0) : (return -1)

  low = 0
  high = nums.length - 1

  while low <= high
    mid = (low + high) / 2

    return mid if nums[mid] == target

    if nums[mid] < target
      low = mid + 1
    else
      high = mid - 1
    end
  end
  # Iterated and not found
  return -1 
end