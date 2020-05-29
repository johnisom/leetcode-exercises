# Combination Sum

## Task
- Given a set of candidate numbers (candidates) (without duplicates) and a target number (target), find all unique combinations in candidates where the candidate numbers sums to target.

The same repeated number may be chosen from candidates unlimited number of times.

Note:

All numbers (including target) will be positive integers.
The solution set must not contain duplicate combinations.

## Understanding
- 


## Examples
Example 1:

Input: candidates = [2,3,6,7], target = 7,
A solution set is:
[
  [7],
  [2,2,3]
]
Example 2:

Input: candidates = [2,3,5], target = 8,
A solution set is:
[
  [2,2,2,2],
  [2,3,3],
  [3,5]
]
- target = 51
candidates = [2, 3, 5]

                          2             new_target = 1              3
                        / | \     
                       2  3  5
                    //|  /|\   |\\
                  2 3 5 2 3 5 2 3 5

  9 % 2 == 0 #=> false
  current_outcome = 9 / 2 #=> 2, 2, 2, 2

  remainder = target % 2, pass to the backtracking algorithm

A solution set is:
[
  [2,2,2,2],
  [2,3,3],
  [3,5]
]

Algorithm
- 
