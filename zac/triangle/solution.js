var minimumTotal = function(triangle) {
  if (triangle.length === 1) return triangle[0][0];
  return mpsHelper(triangle)
};

const mpsHelper = (triangle, row=0, col=0, memo={}) => {
  const currentCell = triangle[row][col];
  const nextRow = row + 1;
  const leftChild = triangle[nextRow][col];
  const rightChild = triangle[nextRow][col + 1];

  if (row === triangle.length - 2) {
    return currentCell + Math.min(leftChild, rightChild)
  }

  if (!memo[[nextRow, col]]) {
    memo[[nextRow, col]] = mpsHelper(triangle, nextRow, col, memo);
  }

  if (!memo[[nextRow, col + 1]]) {
    memo[[nextRow, col + 1]] = mpsHelper(triangle, nextRow, col + 1, memo);
  }

  memo[[row, col]] = currentCell + Math.min(memo[[nextRow, col]], memo[[nextRow, col + 1]]);

  return memo[[row, col]];
};
