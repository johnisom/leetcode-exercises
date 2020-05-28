var minPathSum = function(grid) {
  return mpsHelper(grid, 0, 0, {})
};


const mpsHelper = (grid, row, col, memo) => {
  const currentValue = grid[row][col];

  if (row === grid.length - 1 && col === grid[0].length - 1) {
    if (!memo[[row, col]]) {
      memo[[row, col]] = currentValue;
    }

    return memo[[row, col]];
  } else if (row === grid.length - 1) {
    if (!memo[[row, col]]) {
      memo[[row, col]] = currentValue + mpsHelper(grid, row, col + 1, memo);
    }

    return memo[[row, col]];
  } else if (col === grid[0].length - 1) {
    if (!memo[[row, col]]) {
      memo[[row, col]] = currentValue + mpsHelper(grid, row + 1, col, memo);
    }

    return memo[[row, col]];
  }

  const rightSum = mpsHelper(grid, row, col + 1, memo);
  const downSum = mpsHelper(grid, row + 1, col, memo);

  memo[[row, col]] = currentValue + Math.min(rightSum, downSum);

  return memo[[row, col]];
};
