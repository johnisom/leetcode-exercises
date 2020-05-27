# Unique Paths

## Task
- A robot is located at the top-left corner of a m x n grid (marked 'Start' in the diagram below).
- The robot can only move either down or right at any point in time. The robot is trying to reach the bottom-right corner of the grid (marked 'Finish' in the diagram below).
- How many possible unique paths are there?

## Understanding
- For bottom up recursion, we have to introduce additional variables to track iteration from 0 or 1 to the input boundaries.
- Maintain a reference to previous calculations that are necessary for future calculations

## Examples
```ruby
m = 3
n = 2

 _ _ _
|r|_|1|
|1|1|s|


|r|_|1|
|_|_|1|
|1|1|s|
```

## Algorithm
- Calculate all paths from star postion (m and n) to robot position
  + Cache as I go
- Introduce pointers for m and n (row, col)
- Declare previous column hash and current column hash
  + Set value at current position to zero in 'current column' hash
- pointers at m and n
- Iterate from m down to 1
  + Iterate for n down to 1
    * if the current position is on a boundary, cache it as 1
      - n == row || m == col
    * Add adjacent positiions and cache them for the current position value
- Return cache value
