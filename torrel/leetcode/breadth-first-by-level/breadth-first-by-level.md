# Breadth-First Iteration by Level #

Given:
```
   1
 2   3
4 5 6 7
```

Return:
```
[
  [4, 5, 6, 7],
  [2, 3],
  [1]
]


          3
         / \
        9  20
          /  \
         15   7

Queue
--------------------------
       20node 9node
--------------------------

new_array = []

stack

[{3}]
[{9}{20}]
[{15}{7}]

```

Queue:
- A QUEUE of custom objects/hashes
  - Custom hash/object:
    - level: integer representing current level of tree
    - node: the treenode to be processed

General idea:
- We add the root node to QUEUE
- Until queue is empty
  + new_array = []
  + Query queue length
  + Iterate queue length down to 0    
    * current_node = queue.dequeue
    * Push current_node.val to new_array
    * Enqueue current_node.left & right
  + Push new_array to the stack
- Until stack is empty
  + Pop from the stack and push to result array
