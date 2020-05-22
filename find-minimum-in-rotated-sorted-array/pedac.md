# Find Minimum in Rotated Sorted Array #

## Problem ##

Given: Sorted array of positive integers that is rotated
Example: [3, 4, 1, 2]

Find the min. elem.
No duplicates.

## Examples ##

Example 1:
- Input: [3,4,5,1,2] 
- Output: 1

Example 2:
- Input: [4,5,6,7,0,1,2]
- Output: 0

[7, 1, 2, 3, 4, 5, 6]
 l  r

- Check num to right m and its <, return that number
- Compare m to s
  - If m > s, were in 1st arr
    - move right
  - otherwise were in 2nd
    - move left

## Data Structures ##

left, right, middle pointer

## Algorithm ##

