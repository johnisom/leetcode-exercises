# Minimum Path Sum

## UNDERSTAND THE PROBLEM!
Given a m x n grid filled with non-negative numbers, find a path from top left to bottom right which minimizes the sum of all numbers along its path.

Note: You can only move either down or right at any point in time.

## EXAMPLES
Input:
[
  [1,3,1],
  [1,5,1],
  [4,2,1]
]
Return: 7
Explanation: Because the path 1→3→1→1→1 minimizes the sum.


Input:
[
  [4]
]
Return: 4
Because there is only one element and its sum is 4.

Input:
[
  [1,2,3]
]
Return: 6
Because there is only one path and its sum is 6.


## DATA STRUCTURES
Input: m x n grid
Output: integer that represents the minimum sum path from start to finish

Need a row pointer and a col pointer to determine current element in grid

## ALGORITHMS

  [1,3,1],
  [1,5,1],
  [4,2,1]


### First Approach - T: O(?), S: O(?)
0. Default params: row and col = zero
1. Base case: if you are in the bottom right cell, return the value in that cell
2. Return the minimum of the current cell's right cell minpathsum (if right cell exists) and down cell minpathsum (if down cell exists).
