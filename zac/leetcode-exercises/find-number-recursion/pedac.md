# Find number return index using recursion

## Problem
Find a number in an array and return its index. If not found, return -1

## Example
[1, 3, 4, 2], 2 --> index 3


### def find_in_array(arr, val, idx = 0)
  return -1 if idx == arr.size
  return idx if arr[idx] == val
  return find_in_array(arr, val, idx + 1)
end
### iterative
def find_in_array(arr, val)
  arr.each_index do |idx|
    return idx if arr[idx] == val
  end
  return -1
end
