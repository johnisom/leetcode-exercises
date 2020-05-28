# Find Peak Element

## Understand the problem
A peak element is an element that is greater than its neighbors.

Given an input array `nums`, where `nums[i] ≠ nums[i+1]`(aka, you will not have two elements of same value next to each other), find a peak element and return its index.

The array may contain multiple peaks, in that case return the index to any one of the peaks is fine.

??? You may imagine that `nums[-1] = nums[n] = -∞`.

### Examples
Input: nums = [1,2,3,1]
Output: 2
Explanation: 3 is a peak element and your function should return the index number 2.

Input: nums = [1,2,1,3,5,6,4]
Output: 1 or 5 
Explanation: Your function can return either index number 1 where the peak element is 2, or index number 5 where the peak element is 6.

Follow up: Your solution should be in logarithmic complexity.

# First approach

if the first element is greater than the second el, return 0
if the last el is greater than the penultimate, return size of ary - 1
if ary is length 1, return 0

left = 0
right = array.size - 1
while left + 1 <  right 
  mid = left + (right - left) / 2   # instead of (left+right)/2 to minimize overflow
  if neighboring values are less than value at mid
    return mid
  elsif value to the left of mid is greater than value at mid
    right = mid
  else
    left = mid
  end
end

[1, 2, 3, 1]
    l
          r
       m

[1,2,1,3,5,6,4], output is 1 or 5
         l
             r
           m

[1, 2, 3, 4, 5, 6, 7], output is 6
                l
                   r
                <!-- m -->

[4, 3, 2, 1], output 0
 l
    r
    <!-- m -->
