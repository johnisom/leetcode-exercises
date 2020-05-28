# Symmetric Tree #

## Understanding the Problem ##

Check that a binary tree is symmetric.

## Examples ##

This is symmetric:
```
          1
         / \
       2     2
      / \   / \
     3  4   4  3
    /\  /\ /\  /\
   5 6 7 8 8 7 6 5
```
left_arr = [5, 3, 6, 2, 7, 4, 8]
right_arr = [8, 4, 7, 2, 6, 3, 5]

This is not symmetric:
```
    1
   / \
  2   2
   \   \
    3   3
```

Neither is this
```
    1
   / \
  2   2
 /   /
2   2
```

## Data Structures ##

Left array and right array
- Left: values in order of the left branch
- Right: values in order of the right branch

## Algorithm ##

### Traversal ###

1. If root is nil or has no children, return array
2. If root has no left child, push nil
   Else recurse on left node
3. Add current val to array
4. If root has no right child, push nil
   Else recurse on right
4. Recurse on right node
5. Return array

### Main ###

1. If root is nil, return true
2. Set the left array to be traversal(left node, [])
3. Set the right array to be traversal(right node, [])
4. If the left array is the right array in reverse, its symmetric
