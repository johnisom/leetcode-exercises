const findPeakElement = function findPeakElement(nums) {
  if (nums.length == 0) return null;
  if (nums.length == 1) return 0;
  if (nums[0] > nums[1]) return 0;
  if (nums[nums.length - 1] > nums[nums.length - 2]) return nums.length - 1;

  let left = 0;
  let right = nums.length - 1;

  while (left + 1 < right) {
    const mid = Math.floor(left + (right - left) / 2);

    if (nums[mid] > nums[mid + 1] && nums[mid] > nums[mid - 1]) {
      return mid; 
    } else if (nums[mid] < nums[mid - 1]) {
      right = mid;
    } else {
      left = mid;
    }
  }
};
