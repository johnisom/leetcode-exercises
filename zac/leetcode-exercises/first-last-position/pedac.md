# Find First and Last Position of Element in Sorted Array

## Understand the problem
Given an array of integers `nums` sorted in ascending order, find the starting and ending position of a given target value.

Your algorithm's runtime complexity must be in the order of O(log n).

If the target is not found in the array, return [-1, -1].

### Examples

Input: nums = [5,7,7,8,8,10], target = 8
Output: [3,4]
because first instance is at idx 3, second instance is at idx 4

Input: nums = [5,7,7,8,8,10], target = 6
Output: [-1,-1]
because there are no instances of target

## First Approach
set left, right pointers, initialize return_array to [-1, -1]
while left + 1 < right
  set mid pointer, where even mid is floored
  if nums[mid] == target
    return_array[0] = mid
  if nums[mid] < target
    left = mid
  else
    right = mid


[5,7,7,8,8,10]
     l
            r
       m

# Find First and Last Position of Element #
## Understanding the Problem ##
Given sorted `nums` and `target`, return the indices of the first occurence of
`target` and the last occurence.
Requirements:
- O(Log N) time complexity
- Return value is an array of 2 elements
- `nums` is always sorted
- If `target` doesn't exist in `nums`, return `[-1, -1]`
## Examples ##
Example 1:
- Input: `nums` = `[5, 7, 7, 8, 8, 10]`, `target `= `8`
- Return value: `[3, 4]`
Example 2:
- Input: `nums` = `[5, 7, 7, 8, 8, 10]`, `target` = `6`
- Return value: `[-1, -1]`
  - Because `6` wasn't found in `nums`
## Data Structure(s) ##
Given: `nums`, `target`
Mine:
- Return result: Array of 2 indices
## Algorithm ##
This solution performs 2 binary searches:
- Once for the lower bound
- Once for the upper bound
This works because we can use our own condition to know whether to move left
or right.
1. Initialize result array with `[nil, nil]`
2. Perform a special binary search to find the lower bound
   - Same as normal binary search, but with these conditions
     - If `array[mid] == target`, move the end pointer to `mid`
     - If `array[mid] > target`, move the end pointer to `mid`
     - If `array[mid] < target`, move the start pointer to `mid`
   - At the end, we have 2 pointers next to each other
     - Ex:
       ```
       [..., a, b, c, ...]
             ^  ^
       ```
   - If the right pointer points to the value, add to result
   - If the right pointer doesn't point to the value, return `[-1, -1]`
3. Perform a special binary search to find the upper bound
   - Same as first, but reversed conditions
     - If `array[mid] == target`, move the start pointer to `mid`
     - If `array[mid] < target`, move the start pointer to `mid`
     - If `array[mid] > target`, move the end pointer to `mid`
   - Add left to result
4. Return result array
