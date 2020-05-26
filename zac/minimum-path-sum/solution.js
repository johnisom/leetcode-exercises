// // NOT WORKING
// const minPathSum = (grid, row=0, col=0) => {
//   let rightSum;
//   let downSum;

//   if (!grid[row + 1] && !grid[0][col + 1]) {
//     return grid[row][col];
//   }

//   if (grid[row][col + 1]) {
//     rightSum = minPathSum(grid, row, col + 1);
//   } else {
//     rightSum = 10000;
//   }

//   if (grid[row + 1] && grid[row + 1][col]) {
//     downSum = minPathSum(grid, row + 1, col);
//   } else {
//     downSum = 10000;
//   }

//   return Math.min(rightSum, downSum);
// };

console.log(minPathSum([
  [1,3,1],
  [1,5,1],
  [4,2,1]
]));


