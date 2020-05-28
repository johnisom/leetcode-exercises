var searchInsert = function(nums, target) {
  let left = 0;
  let right = nums.length - 1;
  let middle;
  if (target <= nums[left]) return 0;
  if (target >= nums[right]) return nums.length;

  while (left + 1 < right) {
    let middle = getMiddle(left, right);
    if (nums[middle] === target) return middle;

    if (middle < target) {
      left = middle;
    } else {
      right = middle;
    }
  }

  return middle;
};

function getMiddle(left, right) {
  return Math.floor(left + right / 2);
}

console.log(searchInsert([1,3,5,6], 2));



// 2

// [1,3,5,6]
//  l
//    r 
//  m
