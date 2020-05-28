# Sum Root to Leaf

## Task

## Examples
- Input: [1,2,3]
      1
     / \
    2   3
  root
  Output: 25
  
        4
       / \
      9   0
     / \
    5   1
  Output: 1026

## Understanding
- From bottom to top, each level is a power of ten greater than the next
- Sum the left and right totals
DnC?

## Algorithm
- Parameters: total
- Base Case: if there are no children return root.val + (total * 10)
- For left = recurse(root.left, root.val + (total * 10)) if root.left
- for right = recurse(root.right, root.val + (total * 10)) if root.right
- return left + right
