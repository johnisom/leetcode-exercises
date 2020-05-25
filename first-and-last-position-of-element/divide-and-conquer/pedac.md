# Find First and Last Position of Element in Sorted Array #

## Understanding the Problem ##

Given array of sorted integers and target value, find the indices where the
target value first appears and last appears within the array.

Requirement:
- O(Log N)
- [-1, -1] if not found

## Examples ##

Example 1:
- Input: nums = [5,7,7,8,8,10], target = 8
- Output: [3,4]

Example 2:
- Input: nums = [5,7,7,8,8,10], target = 6
- Output: [-1,-1]

Example 3:
- Input: nums = [], target = 5
- Return: [-1, -1]

Example 4:
- Input: nums = [5], target = 5
- Return: [0, 0]

## Data Structures ##

What’s given (array, target)

Return:
- Array of 2 indices (or -1s)

## Algorithm ##

### Main Function ###

Edge cases:
- If array is length 0, return [-1, -1]
- If array is length 1, return [0, 0] if first elem is target, else [-1, -1]

1. Edge cases
2. Recursively binary search for the starting index
3. Return [-1, -1] if starting index not found (result is -1)
4. Recursively binary search for the ending index
5. Return [start_idx, end_idx]

### Left Recursive Binary ###

Base case:
- When end - start <= 1
  - Return s if arr[s] == target, else e if arr[e] == target, else -1

1. Base case
2. Calculate midpoint
   - floor(left + (right - left) / 2)
3. If arr[mid] >= target, move left
   - Return recursive call (arr, s, m)
4. Otherwise, move right
   - Return recursive all (arr, m, e)

### Right Recursive Binary ###

Base case:
- When end - start <= 1
  - Return e if arr[e] == target, else s if arr[s] == target, else -1

1. Base case
2. Calc midpoint
   - <insert formula here>
3. If arr[mid] <= target, move right
   - Return recursive call (arr, m, e)
4. Otherwise, move left
   - Return recursive call (arr, s, m)
