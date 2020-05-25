def find_start_of_range(nums, target)
  if nums.first == target
    0
  else
    left = 0
    right = nums.size - 1
  
    while left + 1 < right 
      mid = left + (right - left) / 2
  
      if nums[mid] < target
        left = mid
      else
        right = mid
      end
    end

    nums[right] != target ? -1 : right
  end
end

def find_end_of_range(nums, target)
  if nums.last == target
    nums.length - 1
  else
    left = 0
    right = nums.size - 1
  
    while left + 1 < right
      mid = left + (right - left) / 2
  
      if nums[mid] > target
        right = mid
      else
        left = mid
      end
    end
  
    left
  end
end

def search_range(nums, target)
  return [-1, -1] if nums.size.zero?
  return (nums[0] == target ? [0, 0] : [-1, -1]) if nums.size == 1

  range_start = find_start_of_range(nums, target)
  return [-1, -1] if range_start == -1

  return [range_start, find_end_of_range(nums, target)]
end
