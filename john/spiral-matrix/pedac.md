# Spiral Matrix #

## Understanding the Problem ##

Given a matrix (array of arrays), return a flat array of the matrix’s elements
in spiral order.
- The matrix doesn’t have to be square, it can be rectangular.
- The contents of the matrix doesn’t matter.

## Examples ##

Example:

```
Input:
[
  [1, 2, 3],
  [8, 9, 4],
  [7, 6, 5],
]

Output:
[1, 2, 3, 4, 5, 6, 7, 8, 9]
```

Another example:

```
Input:
[
  [ 1,  2, 3],
  [12, 13, 4],
  [11, 14, 5],
  [10, 15, 6],
  [ 9,  8, 7],
]

Output:
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
```

## Data Structure ##

- Use a single array to hold the result array
- Mutate the input array or make a copy and mutate the copy
- OR
- Don’t mutate the array or make a copy, just use 2 pointers for x and y coords

This is all tied to the algorithm of choice

## Algorithm ##

1. Slice the first row of the matrix off, concat to output array
2. Rotate the matrix 90° counterclockwise
3. Slice the first row off of the new, rotated matrix, concat to output array
3. Repeat steps 2 & 3 until there is only an empty matrix (`[[]]`)

## Sub-Problem ##

### Rotating a matrix 90° counterclockwise ###

Same as reversing each row and then transposing it.
