# Triangle

## UNDERSTAND THE PROBLEM!
Given a triangle, find the minimum path sum from top to bottom. Each step you may move to adjacent numbers on the row below.

Note:
Bonus point if you are able to do this using only O(n) extra space, where n is the total number of rows in the triangle.

## EXAMPLES
For example, given the following triangle

[
     [2],
    [3,4],
   [6,5,7],
  [4,1,8,3]
]
The minimum path sum from top to bottom is 11 (i.e., 2 + 3 + 5 + 1 = 11).

[
]
Return 0

[
  [1]
]
Return 1

## DATA STRUCTURES
Input: Triangle - array of arrays, first array is length one, each subsequent is one size larger

Output: Minimum path sum from top of triangle to bottom

## ALGORITHMS
Coordinates = row and col

0. Pass triangle to mpsHelper
    -mpsHelper will have default params: row=0, col=0
1. Base case: if the current row == penultimate triangle row, return the minimum of the current cell's descendants.
2. Return the current value + min(mps(leftChild), mps(rightChild))



