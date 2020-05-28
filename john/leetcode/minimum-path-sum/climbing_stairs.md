# Climbing Stairs

## Task
- You are climbing a stair case. It takes n steps to reach to the top.

- Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

- Note: Given n will be a positive integer.

## Understanding
- There are 2 ways to get to a step
  + The one previous
  + 2 before
- The total paths is the result of adding the paths to the step before and the step 2 before

## Algorithm
- Base cases: 1 and 2
