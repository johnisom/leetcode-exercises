## UNDERSTAND THE PROBLEM!
You are climbing a stair case. It takes n steps to reach to the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

Note: Given n will be a positive integer.

## EXAMPLES
Example 1:

Input: 2
Output: 2
Explanation: There are two ways to climb to the top.
1. 1 step + 1 step
2. 2 steps
Example 2:

Input: 3
Output: 3
Explanation: There are three ways to climb to the top.
1. 1 step + 1 step + 1 step
2. 1 step + 2 steps
3. 2 steps + 1 step

## DATA STRUCTURES
Input: n, a positive integer
Output: distinct ways to climb to top, a positive integer

## ALGORITHMS

### Bottom Up
1. default parameters: cache={1: 1, 2: 2}, count=3
2. If cache[n] then return cache[n].
3. cache[count] = cache[count - 1] + cache[count - 2]
4. recursively call with cache and count + 1

### Top Down
1. Base case: if n is 1, return 1. If n is 2, return 2.
2. Return sum of recursive calls for the two previous steps


