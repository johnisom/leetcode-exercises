// Binary search solution

// O(Log N) time, O(1) space
const isPerfectSquare1 = (num) => {
  let left = 1;
  let right = Math.floor(num / 2);

  while (left + 1 < right) {
    const mid = Math.floor(left + (right - left) / 2);
    const square = mid**2;

    if (square === mid) {
    return true;
    } else if (square < mid) {
      left = mid;
    } else {
      right = mid;
    }
  }

  return (left**2 === num || right**2 === num);
};

// Instant hash table lookup solution

// Precompute some values which can be reused as many times as needed
// Assume that this is a global value that is available everywhere in the
// program, and could be used by millions of `isPerfectSquare` calls.

const MAX = 46340; // This is the floor of sqrt(2^31-1)
const PERFECT_SQUARES = {};

// Populate the global PERFECT_SQUARES hash
for (let i = 1; i <= MAX; ++i) {
  PERFECT_SQUARES[i**2] = true;
}

// O(1) time && O(1) space
const isPerfectSquare2 = (num) => {
  return PERFECT_SQUARES[num] || false;
};
