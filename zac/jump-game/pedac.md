# Jump Game

## UNDERSTAND THE PROBLEM!
Given an array of non-negative integers, you are initially positioned at the first index of the array.

Each element in the array represents your maximum jump length at that position.

Determine if you are able to reach the last index.

Constraints:

```
1 <= nums.length <= 3 * 10^4
0 <= nums[i][j] <= 10^5
```

## EXAMPLES
Input: nums = [2,3,1,1,4]
Output: true
Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.

Input: nums = [3,2,1,0,4]
Output: false
Explanation: You will always arrive at index 3 no matter what. Its maximum jump length is 0, which makes it impossible to reach the last index.

Input: nums = [0]
Output: true
Because you will already be at ending index

## DATA STRUCTURES
Input: array of non-negative integers
Return: boolean
  - whether it's possible to reach last index

## ALGORITHMS

[2,3,1,1,4]
 2
 *

[3,2,1,0,4]
   *
 1

### First Approach - T: O(?), S: O(?)
jumpPower = value at current index
nextLandingPoint = currentIdx + jumpPower

#### Main Function
1. return true if nums is length 1
2. Pass nums to jumpHelper

#### Helper Function
0. Default params: currentIdx=0
1. Base case: return true if current index == nums.length - 1
2. while jumpPower
    - if the nextLandingPoint can jump, return true
    - decrement jumpPower
3. Return false


### With Memoization (Dynamic Programming) - T: O(?), S: O(?)
#### Main Function
Same as above

#### Helper Function
0. Default params: currentIdx=0, memo=[]
1. Base case: same as above
2. while jumpPower
    - if the nextLandingPoint is in the memo || if the nextLandingPoint can jump
      - memo[currentIdx] = true
      - return true
    - decrement jumpPower
3. Return false
