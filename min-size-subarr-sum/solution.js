const minSubArrayLen = (s, nums) => {
  let a = -1;
  let r = -1;
  let len = 1 / 0; // Infinity
  let sum = 0;

  while (a < nums.length - 1) {
    if (sum < s && r < nums.length - 1) {
      r += 1;
      sum += nums[r];
    } else if (sum < s) {
      break;
    } else {
      const newLen = r - a;
      if (newLen < len) {
        len = newLen;
      }

      a += 1;
      sum -= nums[a];
    }
  }

  return Number.isFinite(len) ? len : 0;
};
