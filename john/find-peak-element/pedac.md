# Find Peak Element #

## Understanding the Problem ##

Given an input array `nums`, find any index where the value at that index is
greater than both of the neighbors.

Questions:
- What about the beginning or end of an array? Does that count as a potential
  peak?
  - Answer: edges are valid, as there is no greater neigbor outside of the
    array
- What if the array is length 0? 1? 2?

There will always be at least one peak.

The algorithm must run in O(Log N) complexity (binary search!).

## Examples ##

Example 1:
- Input: `nums` = `[1, 2, 3, 1]` 
- Return value: 2
  - Because index 2 is the only "peak" (index 1’s and index 3’s values are
    less than index 2’s value)

Example 2:
- Input: `nums` = `[1, 2, 1, 3, 5, 6, 4]`
- Return value: 1 or 5
  - Because it doesn’t matter which index you return if there are multiple
    indices that satisfy the requirements

Example 3 (my own):
- Input: `nums` = `[3, 2, 1, 2, 3]`
- Return value: 0 or 4
  - Because they can exist on the edges of an array

## Data Structure(s) ##

Given:
- `nums` → Array

Introduced

## Algorithm ##

This will use binary search and go left or right depending on which way has a
higher number (by peeking to the left and right).

Whether it chooses to go left or right is an arbitrary decision if both left
and right are greater than the current element.

1. Early return for edge cases
   - `nil` if array is empty
   - `0` if array is size 1
   - `0` if first > second
   - `nums.size - 1` if second > first
2. Binary search for the correct index, using an early return
   - `left` ← `0`
   - `right` ← `nums.size - 1`
   - `while left + 1 < right` do:
     - Set value of `mid`
     - if `nums[mid]` is greater than the num to the left & right, return `mid`
     - if `nums[mid]` is less than the num to the left, move left
       - `right` ← `mid`
     - otherwise, move right
       - `left` ← `mid`
