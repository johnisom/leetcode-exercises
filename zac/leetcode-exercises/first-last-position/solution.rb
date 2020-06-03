def search_range(nums, target)
  return [-1, -1] if nums.empty?

  if nums.length == 1
    return nums.first == target ? [0, 0] : [-1, -1]
  end

  lower = 0 if nums[0] == target
  upper = nums.length -1 if nums.last == target

  lower ||= lower_search(nums, target)
  return [-1, -1] if lower == -1
  upper ||= upper_search(nums, target)

  [lower, upper]
end

def lower_search(nums, target)
  left = 0
  right = nums.size - 1
  while left + 1 <  right 
    mid = left + (right - left) / 2   # instead of (left+right)/2 to minimize overflow
    if nums[mid] == target
      right = mid
    elsif nums[mid] > target
      right = mid
    else
      left = mid
    end
  end
  
  if nums[right] == target
    lower = right
  else
    lower = -1
  end

  lower
end

def upper_search(nums, target)
  left = 0
  right = nums.size - 1
  while left + 1 <  right 
    mid = left + (right - left) / 2   # instead of (left+right)/2 to minimize overflow
    if nums[mid] == target
      left = mid
    elsif nums[mid] < target
      left = mid
    else
      right = mid
    end
  end

  if nums[left] == target
    upper = left
  else
    upper = -1
  end

  upper
end

# [5,7,7,8,8,10]
#          l
#            r
         # m
p search_range([5,7,7,8,8,10], 8)