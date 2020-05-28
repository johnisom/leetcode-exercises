# Search Input Position

## Understand the Problem
Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You may assume no duplicates in the array.

### Inputs
* sorted array
* target value

### Goal
* return the index of the target if it is found
* else, return the index where it would be if it was present

note: there will be no duplicates in the array

### Examples
Input: [1,3,5,6], 5
Output: 2

Input: [1,3,5,6], 2
Output: 1

Input: [1,3,5,6], 7
Output: 4

Input: [1,3,5,6], 0
Output: 0

### Most intuitive approach
-Linear Search
  -iterate thru ary
    -if value at idx == targt
      -return index
  -push target onto array
  -sort array
  recursive call

Time Complexity: O(nlogn)...(should only ever need one recursive call)
Space Complexity: O(logn)

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

