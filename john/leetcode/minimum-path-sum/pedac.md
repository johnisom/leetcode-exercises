# Minimum Path Sum #

## Understanding the Problem ##

Given a rectangular matrix of non-negative integers, return the sum of the
values which form the path with the minimum sum.

I start at top-left and end at bottom-right.

I can only move down or right by 1 square at any given time.

## Examples ##

Example 1:
- Input:
```
[
  [1,3,1],
  [1,5,1],
  [4,2,1]
]
```
- Return value: 7

Example 2:
- Input: `[[1, 3, 1]]`
- Return value: 5

Example 3:
- Input: `[[5]]`
- Return value: 5

Example 4:
- Input: `[[]]`
- Return value: 0

Example 5:
- Input:
```
[
  [0, 0, 0],
  [0, 0, 0],
  [0, 0, 0]
]
```
- Return value: 0

## Data Structures ##

Given:
- Grid/matrix
  - Rectangular
    - (non-square sometimes)

Coordinates:
- Row
  - Current ‘selected’ row
- Col
  - Current ‘selected’ column
- `grid[row][col]`

## Algorithm ##

I’m going to call a helper function with row & column.

Basic idea:
- Calculate minimum cost of right and down squares
- Return current square + min of above

1. Hard base case
   - Return current val if I’m on end square
2. Soft base cases
   - If I’m on the last row (row == grid.size - 1), return current value +
     min_path_sum_helper(grid, row, col + 1)
   - If I’m on the last column (col == grid[0].size - 1), return current
     value + min_path_sum_helper(grid, row + 1, col)
3. Calc min cost of the right square
4. Calc min cost of the down square
5. Return current value + the minimum of 3 & 4

### Dynamic Programming (Memoization) ###

Arguments: grid, row, col, cache

1. Hard base case
   - Same as above
2. Soft base cases
   - Last row
     1. If not in cache
        - Add to the cache: recursive call of next column
     2. Return that cached result
   - Last column
     1. If not in cache
        - Add to the cache: recursive call of next row
     2. Return that cached result
3. If next column not in cache
   - Add to cache: min cost of square to the right
4. If next row not in cache
   - Add to cache: min cost of square to the bottom
5. Return current value + minimum of cached 3 & 4
