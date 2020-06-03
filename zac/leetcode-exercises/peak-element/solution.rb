def find_peak_element(nums)
  size = nums.size
  return 0 if size == 1 || size >= 2 && nums[0] > nums[1]
  return (size - 1) if nums[-1] > nums[-2]

  left = 0
  right = size - 1

  while left + 1 <  right 
    mid = left + (right - left) / 2   # instead of (left+right)/2 to minimize overflow
    # neighboring values are less than value at mid
    if nums[mid - 1] < nums[mid] && nums[mid + 1] < nums[mid]
      return mid
    # value to the left of mid is greater than value at mid
    elsif nums[mid - 1] > nums[mid]
      right = mid
    else
      left = mid
    end
  end
end
