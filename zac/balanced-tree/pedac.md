# Balanced Binary Tree

## UNDERSTAND THE PROBLEM!
Determine if given tree is height-balanced
Where height-balanced means every left and right subtrees differ in height no more than one

Notes:
NOT bst

## EXAMPLES
      1
     / \
    2   2
   /     \
  3       3
 /         \
4           4

## DATA STRUCTURES

## ALGORITHMS
Main function
Return false if recursive call > 1

Helper Function, params: node, counter=0
1. if there is a left chiild
   - Left depth = helper(left, counter + 1)
   else
   - left depth = counter
2. if there is a right child
   - Right depth = helper(right, counter + 1)
   else
   - right depth = counter
3. if either depth is false, return false
4. if the difference between the depths is > 1, return false
5. return max of left_depth and right_depth
