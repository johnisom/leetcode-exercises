# Unique Paths

## Task
- A robot is located at the top-left corner of a m x n grid (marked 'Start' in the diagram below).
- The robot can only move either down or right at any point in time. The robot is trying to reach the bottom-right corner of the grid (marked 'Finish' in the diagram below).
- How many possible unique paths are there?

## Understanding
- Grid
  + m x n
  + Move right
  + Move down
- Input
  + 2 integers
    * m and n
- Output
  + Integer
    * Total paths to from that square
- Top down recursion
- Cache

## Algorithm
- Base cases:
  + On the last column
    * Return 1
  + On the last row
    * Return 1
- Check the cash
  + If not there, store
- Return cached value
