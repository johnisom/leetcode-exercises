// # Remove Duplicates #
// ## Understanding the Problem ##
// Given a sorted array of integers, remove all duplicates so elements appear a
// maxiumum of 1 time.
// Requirements:
// - Modifies in place (mutates)
// - Returns: length of array after mutation
// ## Examples / Test Cases ##
// Input: [1, 1, 2]
// Return value: 2
// Resulting array: [1, 2]
// Input: [0, 0, 0, 1, 5, 5, 6, 6, 6, 8, 9]
// Return value: 6
// Resulting array: [0, 1, 5, 6, 8, 9]
// [0, 1, 5, 6, 8, 9]
// ## Data Structure(s) ##
// - Input: Sorted array of positive integers
// - Read pointer
// - Write pointer
// ## Algorithm ##
// 1. Initialize read & write to 0
// 2. Iterate until read is out of bounds (read >= length)
//    a. If nums[read] == nums[read + 1]:
//       - read++
//       Else:
//       - write
//         - nums[write] = nums[read]
//       - read++, write++
// 3. Delete values from write until end
// 4. return length

function removeDuplicates(nums) {
  let read = 0;

  nums.forEach((_, read) => {
    if (nums[read] !== nums[read + 1]) {
      nums[write] = nums[read];
      write += 1;
    }
  });

  nums.splice(write);
  nums.length;
}
