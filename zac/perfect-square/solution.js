var isPerfectSquare = function(num) {
  if (num === 1) {
    return 1;
  }

  const CEILING_MULTIPLE = 46341
  const squares = [];

  for (var i = 1; i <= CEILING_MULTIPLE; i += 1) {
    squares.push(i*i);
  }
  let left = 0
  let right = squares.length - 1

  while (left + 1 < right) { 
    let mid = Math.floor(left + (right - left) / 2);

    if (squares[mid] == num) {
      return true;
    } else if(squares[mid] > num) {
      right = mid;
    } else {
      left = mid;
    }
  }

  return false;
};

console.log(isPerfectSquare(4));