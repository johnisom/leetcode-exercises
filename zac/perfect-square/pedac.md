# Perfect Square

## Understand the problem
Given a positive integer num, write a function which returns True if num is a perfect square else False.

Follow up: Do not use any built-in library function such as sqrt.

### Examples

Input: num = 16
Output: true
because 16's multiples include 2 of the same

Input: num = 14
Output: false
because 14's multiples do not include 2 of the same

Constraints:
1 <= num <= 2^31 - 1

# Approach
precompute squares from 1 to 46340

binary search the target in this array
