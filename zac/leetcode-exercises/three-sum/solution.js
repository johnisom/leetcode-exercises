function threeSum(nums) {
  nums.sort((a, b) => a -b);
  const triplets = [];
  const length = nums.length
  let start;
  let end = length - 1;

  for (start = 0; start < length - 1; start += 1) {
    const innerNums = nums.slice(start + 1, end);
    const candidate = -1 * (nums[start] + nums[end]);

    if (innerNums.find(num => num === candidate)) {
      triplets.push([nums[start], candidate, nums[end]]);
    }
  }

  start = 0;

  for (end = length - 1; end > 2; end -= 1) {
    const innerNums = nums.slice(start + 1, end);
    // console.log(innerNums);
    const candidate = -1 * (nums[start] + nums[end]);

    if (innerNums.find(num => num === candidate)) {
      triplets.push([nums[start], candidate, nums[end]]);
    }
  }

  return triplets
}

console.log(threeSum([-1, 0, 1, 2, -1, -4]));
console.log(threeSum([-5, 0, 0, 0, 5]));
