# Reverse String #

Implemented in JavaScript


## Problem ##

Reverse a string, where the string is actually an array of chars.

Requirements:
- Mutate array in place
- O(1) space

## Examples/Test Cases ##

Example 1:
Input: `["h","e","l","l","o"]`
Output: ["o","l","l","e","h"]`

Example 2:
Input: `["H","a","n","n","a","h"]`
Output: `["h","a","n","n","a","H"]`

## Data Structure ##

- Input array (doesn't count towards Big O)
- 2 integer pointers, start & end

## Algorithm ##

I’ll Use the start/end pointers approach.
This is O(N).

1. Initialize start & end pointers
   - Start: 0
   - End: string length - 1
2. Loop while start < end
   a. Swap the values at start & end
      - ES6 swap
   b. Increment start, decrement end
3. Return the input array
:q