# Two Sum II #

## Problem ##

Given a sorted array of ints, return the indices of the 2 values that add up to
some target number.

To note:
- Indices are one-based, not zero-based
- Array presorted
- Can’t use same element twice
- No edge cases
- There is 1 and only 1 solution

## Examples ##

Input: numbers = [2, 7, 11, 15], target = 9
Return value: [1, 2]

Input: numbers = [-1, 0, 1, 2, 3, 4], target = 6
Return value: [4, 6]

## Data Structure(s) ##

Just the input and 2 pointers (start/end)

## Algorithm ##

Models the start/end pointers mental model.
Time complexity: O(N)
Space complexity: O(1)

1. Initialize start=0, end=length-1
2. while start < end
   - return [start+1,end+1] if values at start & end add up to target
   - increment start if sum is less than target
   - decrement end otherwise

