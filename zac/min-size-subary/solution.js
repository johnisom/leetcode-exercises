// initialize smallest
// for each element
//   get the slice of the array that has at least s (smallestSlice)
//   smallest is equal to smallest or slice if it doesn't exist yet
//   if slice length is smaller than smallest
//     assign it to slice
// return smallest

// smallest slice helper
//   initialize sum to 0, j to i
//   while sum < s
//     sum += array[j]
//     j += 1
//   return array from i to j

var minSubArrayLen = function(s, nums) {
  let smallest = undefined;

  console.log(nums);

  nums.forEach((_, i) => {
    console.log(i);
    const slice = smallestSlice(nums, i, s);
    smallest = smallest || slice.length;
    if (slice.length < smallest.length) {
      smallest = slice.length;
    }
  });

  return smallest || 0;
};

function smallestSlice(nums, i, s) {
  let sum = 0;
  let j = i;
  // console.log(j);

  while (sum < s) {
    sum += nums[j];
    j += 1;
  }

  return nums.slice(i, j);
}

console.log(minSubArrayLen(7, [2,3,1,2,4,3]));
