# Delete Node in Linked List #

## Understanding the Problem ##

Given any node from a linked list that isn’t the tail, delete it from the
list. You may not have access to any other nodes before the given node.

## Examples ##

None needed, simple enough.

## Data Structures ##

Just the given node

## Algorithm ##

1. Make the current node assume the value of the next node
   - node.val = node.next.val
2. Link current node to next after next
   - node.next = node.next.next
