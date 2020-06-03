# Remove Linked List Elements

## Problem
Remove all elements from a linked list of integers that have value `val`.

## Examples
Input:  1->2->6->3->4->5->6, val = 6
Output: 1->2->3->4->5

dummy->1->2->3->4->5->6->nil
                      c  n

target=3
dummy->2->3->3->3->3->3->5->NULL
    c  n
       c  n
       c                 n
dummy->2->5->NULL
       c  n

## Approach
- create dummy head, init ptrs
- while n isnt null
  - until n is nil or points to target
    - Move both pointers up
  - until n is nil or points to non-target, move n
  - Link c to n
- Return dummy+1

