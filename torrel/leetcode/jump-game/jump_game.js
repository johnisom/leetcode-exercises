/*
Input
  - Array
    + Non-negative integers
    + Position: first index
    + Elements
      * 'Maximum jump length'
Output
  - Boolean
    + Ability to reach last index
    
Reduce until total equals or surpasses distance to last index    
  - Determine if an index within range possesses a value that will put you within range of the last index

Input: nums = [2,3,1,1,4]
                     
Output: true

[2,3,1,0,4]
   ^
   
[2,0,0,2,0,4]
 ^     

Algorithm
- Base case
  + Value of current index is >= array.length - current index
- Make recursive calls for all indexes within range of current value
  + Return whether any of those calls return `true`
*/

const canJump = (nums) => {
  if (nums.length === 1) { return true }
  return jumpHelper(nums);
};

const jumpHelper = (nums, idx=0, cache={}) => {
  if (nums[idx] >= (nums.length - 1) - idx) {
    cache[idx] = true;
    return true
  }
  let recursiveCalls = nums[idx];

  while (recursiveCalls > 0) {
    if (cache[idx + recursiveCalls] || jumpHelper(nums, idx + recursiveCalls, cache)) {
      cache[idx] = true;
      return true
    }

    recursiveCalls -= 1;
  }
  
  cache[idx] = false;
  return false;
};