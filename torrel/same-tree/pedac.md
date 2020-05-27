# Same Tree

## Task
### Input
  - 2 trees
    + Each have numeric values in the nodes

### Output
  - Boolean

## Examples

         self       neighbor
           1           1
          / \         / \
         2   3       2   3
        /     \     /     \
       0       4   0        4
      / 
     nil

## Algorithm
Starting at a given node
  + Base Case: return true if !left && !right
  + Compare the right and left values for the self and neighbor and own values
    * Same, recursively call the function with my left and his left
    * Recursively call the function with my right and neighbor's right
  + If either recursive call returns false, return false
