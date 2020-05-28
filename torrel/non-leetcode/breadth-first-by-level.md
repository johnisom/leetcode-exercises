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
```

Queue:
- A queue of custom objects/hashes
  - Custom hash/object:
    - level: integer representing current level of tree
    - node: the treenode to be processed

General idea:
- We add the root node to queue in custom hash/object
  - { level: 0, node: root_node }
- Until queue is empty
  - custom_object = queue.dequeue
  - current_level = custom_object[:level]
  - current_node = custom_object[:node]
  - Enqueue current_node.left & right
    - {level: current_level + 1, node: left}
    - {level: current_level + 1, node: right}
  - result[level] ||= []
  - result[level] << current_node.val
- reverse result at end
