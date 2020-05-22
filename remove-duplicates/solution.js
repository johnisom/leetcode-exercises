const removeDuplicates = (nums) => {
  let read = 0;
  let write = 0;

  while (read < nums.length) {
    if (nums[read] !== nums[read + 1]) {
      nums[write] = nums[read];
      ++write;
    }

    ++read;
  }

  nums.splice(write);

  return nums.length;
}
