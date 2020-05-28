# Maximum Subarray Sum using Divide and Conquer algorithm
​
## Task
- You are given a one dimensional array that may contain both positive and negative integers, find the sum of contiguous subarray of numbers which has the largest sum.
For example, if the given array is {-2, -5, 6, -2, -3, 1, 5, -6}, then the maximum subarray sum is 7 (see highlighted elements).
​
### Naive Solution
The naive method is to run two loops. The outer loop picks the beginning element, the inner loop finds the maximum possible sum with first element picked by outer loop and compares this maximum with the overall maximum. Finally return the overall maximum. The time complexity of the Naive method is O(n^2).
​
### Divide and Conquer
- Using Divide and Conquer approach, we can find the maximum subarray sum in O(nLogn) time. Following is the Divide and Conquer algorithm.
​
  1. Divide the given array in two halves
  2. Return the maximum of the following three:
    a. Maximum subarray sum in left half (Make a recursive call)
    b. Maximum subarray sum in right half (Make a recursive call)
    c. Maximum subarray sum such that the subarray crosses the midpoint
​
- The lines 2.a and 2.b are simple recursive calls. How to find maximum subarray sum such that the subarray crosses the midpoint? We can easily find the crossing sum in linear time. The idea is simple, find the maximum sum starting from mid point and ending at some point on left of mid, then find the maximum sum starting from mid + 1 and ending with sum point on right of mid + 1. Finally, combine the two and return.
​
## Understanding
- Input
  + Array
    * Integer elements
    * Arbitrary postions
- Output
  + integer
    * Max sum of contiguous elements
- 
​
## Examples
```js
[-1, -5, 6, -2, -3, 1, 5, -6]     //=> 7
         c
                       n
// Left Side
[-1, -5, 6, -2]
        *                           *
// return 6
​
[-1, -5 ]        [ 6, -2]
// returns -1     returns 6
​
[-1] [-5]        [6] [-2]
// -6               4
​
// Right Side
​
[-3, 1, 5, -6]
// return 
​
[-3, 1]           [5, -6]
// return 1  sum  return 5
//       
[-3] [1]          [5] [-6]
// 1               5
 c    n
​
[-3, 1]
​
[-3] [1]
​
[-1, -5, 6, -2, -3, 1, 5, -6]
                           r
​
​
midpoint = index 3
left sum = 4
rigth sum = 3
crossing sum = 7
​
/*
a. -3 (right)
b. 1  (left)
c. 1  (crossing sum)
​
Crossing sum breakdown
- Max sum from midpoint of [-3, 1] to the left is -3
- max sum from the midpoint + 1 to the right is 1
- 1 + -3 = -2
- Max of -3, 1, -2 is 1
- Return 1
​
----------------------------------
Base case
- Array length one
  + Return array value
- Divide input array in 2
  + Determine midpoint
    * Divide array length by 2 and get the floor
- Assign left variable to slicing from 0 to midpoint
- Assign right variable by slicing from midpoint plus 1 to the end of the array
- Recursivley call function on left
- Recursively call function on right
- Determine Crossing sum
- Return max of left, right, and crossing sum
​
- Crossing sum
  + Calculate midpoint of input array (or passed in)
  + Instantiate sum variable to 0
  + Instantiate left_sum to negative infinity
  + Instantiate rigth_sum to negative infinity
  + left_sum
    * Iterate from midpoint to index 0
    + Add element at iteration to the sum variable
    + If the current sum is greater than the current left_sum, assign it to the left sum
  + Reset sum to 0
  + right_sum
    * Iterate from midpoint + 1 to end of input array
    * Add element at iteration to sum
    * If the current sum is greater than the current right_sum, assign sum to right sum
  + creossing sum = left_sum + right_sum
  + Return max between left_sum, right_sum, crossing_sum
​
    a. Maximum subarray sum in left half (Make a recursive call)
    b. Maximum subarray sum in right half (Make a recursive call)
    c. Maximum subarray sum such that the subarray crosses the midpoint
​
Array length = 8
Length of equal halves = 4
a. Max subarray sum of left half: 6
b. Max subarray sum of right half: 6
c. Max subarray sum such that the max crosses the midpoint: 7
*/
```
