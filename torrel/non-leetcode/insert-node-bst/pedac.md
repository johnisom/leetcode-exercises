# 

## Task
- Given a BST and a key. Insert a new Node with value equal to that key into the BST. 

## Understanding
- Input
  + BST, from a class
  + Key
- Output
  + Tree
- Inserting into a binary tree requires comparing the value to the current value and adding to the right branch if greater and left branch if lesser

## Examples
input: 2 1 3
key: 4
                                          2
                                      /        \
                                    1           3
                                                 \
                                                   5
                                                  /
                                                
                                                
                                                
## Algorithm
- Base Case: If key is less than the current node and the current node doesn't have a left node, supply key as left node. If key is greater than current node, and current node does not have a right child, supply key as right child.
  + If the key is equal to the current node, return
- If key is greater than the current node's value, call right child's insert method
- Invert previous step for left child if lesser
- Return self
