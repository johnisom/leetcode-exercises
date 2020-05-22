# Search Insert Position #

## Understanding The Problem ##

Given a sorted array and target value, return the index of the target
value. If the target value doesn’t exist, return the index where it would be
inserted to be in order.

Notes:
- No duplicate values in array

## Examples ##

Example 1:
- Input: [1, 3, 5, 6], 5
- Return value: 2
  - Because that’s the index

Example 2:
- Input: [1, 3, 5, 6], 2
- Return value: 1
  - Because that’s where to insert the value

Example 3:
- Input: [1, 3, 5, 6], 7
- Return value: 4
  - Because the 7 would be inserted at the end, giving it index of 4

Example 4:
- Input: [1, 3, 5, 6], 0
- Return value: 0
  - Because the 0 would need to be inserted at the beginning, giving it index
    of 0

## Naïve approach ##

Time complexity: O(N)
Space complexity: O(1)

### Data Structure ###

Given: nums, target
Mine: index to iterate thru nums

### Algorithm ###

1. Iterate through the array
   - If the current value is less than the target value, continue
   - If the current value is equal to or greater than the target value, return
     index

## Binary Approach ##

Time complexity: O(Log N)
Space complexity: O(N)

### Data Structure ###

Given: nums, target
Mine: start, end, middle pointers for binary search range

### Algorithm ###

// warning: messy

0. If target out of bounds, return 0 or the length
1. Initialize `start` & `end` to `0` and `nums.length - 1`, respectively
2. Initialize `middle`
3. While `start + 1 < end`, do:
   - If `middle === target`, return `middle`
   - Else if middle < target
     - start = middle
     - middle = midpoint
   - otherwise
     - end = middle
     - middle = midpoint
4. Finally return `middle + 1`
