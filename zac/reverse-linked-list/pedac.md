# Reverse Linked List

## Problem
Remove all elements from a linked list of integers that have value val.

## Examples

Input:  1->2->6->3->4->5->6, val = 6
Output: 1->2->3->4->5

## Algorithm
- 3 Pointer
- Initialize previous node to null
- Initialize current and next nodes to first and second nodes
- While current node variable isn't null, iterate
  + Assign the current node's next property to the previous
  + Assign previous node variable to current node
  + Assign the current node variable the next node variable
  + Assign next node variable to the value in its own next property if the next node is not `null`
- Return previous node
- 