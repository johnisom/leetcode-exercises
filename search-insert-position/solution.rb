def search_insert(nums, target)
  return nums.size if target > nums.last
  return 0 if target <= nums.first

  left = 0
  right = nums.size - 1

  while left + 1 <  right 
    mid = left + (right - left) / 2

    if nums[mid] == target
      return mid
    elsif nums[mid] < target
      left = mid
    else
      right = mid
    end
  end
  
  return right
end

# Test cases: All should print "true"
puts search_insert([1, 3, 5, 6], 5) == 2
puts search_insert([1, 3, 5, 6], 2) == 1
puts search_insert([1, 3, 5, 6], 7) == 4
puts search_insert([1, 3, 5, 6], 0) == 0

__END__

## Worse solution (naïve solution)

def search_insert(nums, target)
  nums.each_with_index do |num, idx|
    return idx if num >= target
  end

  nums.length
end

# Test cases: All should print "true"
puts search_insert([1, 3, 5, 6], 5) == 2
puts search_insert([1, 3, 5, 6], 2) == 1
puts search_insert([1, 3, 5, 6], 7) == 4
puts search_insert([1, 3, 5, 6], 0) == 0
