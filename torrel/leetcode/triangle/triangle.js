// triangle.js

/*
Input
  - Array
    + Nested
    + Each array element is one element longer than previous
      * Inner array elements are numbers
Output
  - Number
    + Represents the minimum path from the top (input[0][0]) to bottom (input[input.length - 1])
Path
  - Each step must be to an adjacent number in row below
    + Adjacent number, input[row + 1][current index] or input[row + 1][next index]
    
[
     [2],     Cache and return 2
    [3,4],
    ^
   [6,5,7],
      ^
  [4,1,8,3]
]

Base Case: position is at the top of the triangle (row 0 and col 0)
For any step in the triangle traversal
  - Compare recursive calls to the adjacent positions of the lower row
  - Return the minimum of the two added to the current value
*/

const minimumTotal = (triangle, row=0, col=0, cache={}) => {
  if (row === triangle.length - 1) {
    cache[[row, col]] = triangle[row][col];
    return triangle[row][col];
  }
  
  if (!cache[[row + 1, col]]) {
    cache[[row + 1, col]] = minimumTotal(triangle, row + 1, col);
  }
  if (!cache[[row + 1, col + 1]]) {
    cache[[row + 1, col + 1]] = minimumTotal(triangle, row + 1, col + 1)
  }
  const firstAdjacentTotal = cache[[row + 1, col]];
  const secondAdjacentTotal = cache[[row + 1, col + 1]];
  const nextMinimumPath = firstAdjacentTotal <= secondAdjacentTotal ? firstAdjacentTotal : secondAdjacentTotal;
  cache[[row, col]] = triangle[row][col] + nextMinimumPath;
  
  return cache[[row, col]];
};