# 3Sum
​
## Task
- Given an array `nums` of `n` integers, are there elements a, b, c in `nums` such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.
​
## Understanding
- Input
  + Array
  + Integer elements
  + Positive and negative
  + Arbitrary sorting
- Output
  + Nestd Array
  + Inner arrays represent triplicets
- Triplicet
  + Three numbers that add to Zero
  + Arbitrary positions
​
### Examples
```
[-1, 0, 1, 2, -1, -4]
  
[-4, -1, -1, 0, 1, 2]
      s            e
​
[-5, 0, 0, 0, 5]
​
[
  [-1, 0, 1],
  [-1, -1, 2]
]
```
​
### Algorithm
- Set return array
- Sort input array
- Declare to pointers
  + Start
  + End
- Determine the value derived from summing the starting pointer and ending
  + Search the range between the pointers for the difference between the 0 and the derived value
  + If the desired value is present store the value at the pointers and the desired value itself in the result array
- Move the starting pointer while less than ending pointer - 1
​
​
- Big 0
  + O(N Log N) time complexity
  + O(Log N)
  -2 at first iteration
  from num[s + 1] to nums[e - 1] search for 2
  if 2 exists, add the triplet
​
  1 at second iteration
  search range for -1