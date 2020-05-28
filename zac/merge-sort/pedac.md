# mergesort.md
​
## Task
- Use the template above and implement Mergesort with your group. Don't get too caught up with runtime complexity yet; try to think about:
  + how to recursively divide 
  + how to combine
  + only looking for approach; review the template above
    * need to implement left_side, right_side, and merge (if you have time)
  + how does merge sort work?
​
## Understanding
- Input
  + Array
    * Integer elements
    * Unsorted
  + Output
    * Array
    * Sorted
- Recur, dnc
- Merge
​
## Examples
```js
[1, 14, 9, 11, 44, 8, 16, 2]
​
[1, 14, 9, 11] [44, 8, 16, 2]
​
[1, 14] [9, 11]
​
[1] [14]
// base case, then merge
​
[1, 14]
// merged
​
[9] [11]
// base case, then merge
​
[9, 11]
​
// Merge [1, 14] and [9, 11]
[1, 9, 11, 14]
​
[44, 8, 16, 2]
​
[44, 8]  [16, 2]
​
[44] [8]
// base case, then merge
​
[8, 44]
​
[16, 2]
​
[16] [2]
// base case
​
[2, 16]
​
// Merge [8, 44] and [2, 16]
[2, 8, 16, 44]
​
// Merge [1, 9, 11, 14] and [2, 8, 16, 44]
[1, 2, 9, 11, 14, 16, 44]
```
​
## Data Structures
- Arrays
- Numbers
​
## Algorithm
- Functional abstractions
  + Sorting
Declare base case
  + If array is size 1 return the array
- Declare variables
  + midpoint
  + left
  + right
  + leftSorted
  + rightSorted
- Determine midpoint
  + Math.floor(array.length / 2)
- Declare left array
  + Slice from 0 to midpoint
- Declare right array
  + Slice from midpoint + 1 to array length
- Assign leftSorted to recursive call of `mergesort(left)`
- Assign rightSorted to recursive call of `mergesort(right)`
- Call `merge` on sorted arrays and return
​
### `merge`
- Declare new array
- Instantiate pointers
  + arrayOnePointer
  + arrayTwoPointer
- While arrayOnePointer < a1.length || arrayTwoPointer a2.length
  + If a1[arrayOnePointer] && a2[arrayTwoPointer]
    * If a1[arrayOnePointer] < a2[arrayTwoPointer]
      - Push a1[arrayOnePointer] to new array
      - Increment arrayOnePointer
    * Else
      - Push a2[arrayTwoPointer] to new array
      - Increment arrayTwoPointer
  + else
    * If a1[arrayOnePointer]
      - Push the rest of the array to the new array
      - break
    * Else 
      - Push the rest of a2 to the new array
      - Break
- Return new array
