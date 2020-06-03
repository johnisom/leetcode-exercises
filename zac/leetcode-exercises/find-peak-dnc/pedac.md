# Find Peak Divide and Conquer

## Problem
Find a peak in an array of numbers (any peak; assume before/after array is negative infinity).

Assume:
-no contiguous duplicates
-outer bounds go to negative infinity

Peak:
All other numbers next to it are lower

## Examples

<!-- [1, 2, 3, 4, 5, 6, 7]    -> 7 is the only peak
[1, 2, 3, 4]      [5, 6, 7]
[1, 2]   [3, 4]



---

[4, 5, 2, 1, -3, 3, 2, 6, 7]   -> 5 or 3 or 7 are the peaks

[4, 5, 2, 1, -3]                 [3, 2, 6, 7]

[4, 5, 2]      [1, -3]       [3, 2]      [6, 7]

[4, 5]  [2]   [1]  [-3]   [3]  [2]   [6]  [7]

[4]  [5]
 -->

[1, 2, 8, 4, 2, 1, 4]
 l
                   r
          m

## Algorithm
base case: when left and right bounds are next to each other
  return greater value
  conditionally set left pointer to first element
  conditionally set right pointer to last element
  calculate midpoint
    left + (right - left) / 2
  if value at midpoint is > value to left of midpoint
    left now points where midpoint is pointing
  else
    right now points where midpoint is pointing
  return result of recursive call with left and right pointers




```rb
def dnc_problem(list)
  # base cases; very different for every problem

  # divide
  left = left_half(list)
  right = right_half(list)

  # conquer (recurse)
  left_result = dnc_problem(left)
  right_result = dnc_problem(right)
  
  # combine; very different for every problem
  return combine(left_result, right_result) 
end
```
