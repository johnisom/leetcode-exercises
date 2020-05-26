// // First Approach
// const canJump = (nums) => {
//   if (nums.length === 1) return true;
//   return jumpHelper(nums);
// };

// const jumpHelper = (nums, currentIdx=0) => {
//   if (currentIdx === nums.length - 1) return true;
//   let jumpPower = nums[currentIdx];

//   while (jumpPower) {
//     if (jumpHelper(nums, currentIdx + jumpPower)) {
//       return true;
//     }

//     jumpPower -= 1;
//   }

//   return false;
// };

const canJump = (nums) => {
  if (nums.length === 1) return true;
  return jumpHelper(nums);
};

const jumpHelper = (nums, currentIdx=0, memo=[]) => {
  if (currentIdx === nums.length - 1) return true;
  let jumpPower = nums[currentIdx];

  while (jumpPower) {
    let nextLandingPoint = currentIdx + jumpPower;
    if (memo[nextLandingPoint] || jumpHelper(nums, nextLandingPoint, memo)) {
      memo[currentIdx] = true;
      return true;
    }

    jumpPower -= 1;
  }

  return false;
};

console.log(canJump([2,3,1,1,4]) === true);
console.log(canJump([3,2,1,0,4]) === false);
