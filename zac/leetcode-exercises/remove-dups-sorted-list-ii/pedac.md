# Remove Duplicates from Sorted List II

## Problem
Given a sorted linked list, delete all nodes that have duplicate numbers, leaving only distinct numbers from the original list.

Return the linked list sorted as well.

## Examples
Input: 1->2->3->3->4->4->5
Output: 1->2->5
because 3 and 4 appear more than once

1->2->3->3->4->4->5

h
      c  n

valid_head = false

Input: 1->1->1->2->3
Output: 2->3
because 1 appears more than once

1->1->1  2->3
            c
               n
         h
            t

___

1->1->2->2->3  4->4->5          3->5
            V>>>>>>>>^
            h
                     c  n

valid_head? = true

---

1->1->2->2
h
         c  n

valid_head? = false


Notes:
h will only be reassigned once if at all
if the first element in the input list is a duplicate
  reassign h to n once n is not c AND if n.next is not n
if h is never reassigned and valid_head? is false, return nil

## Data Structure
Input: linked list
Two pointers

## Algorithm
return unless there is a head
return head if head is not pointing to anything
set valid_head? flag to false
set c (current node) to point to first node
set n (next node) to point to second node
while next node
  if c and n are pointing to the same value
    increment c and n until they are not pointing to the same value
    return if n is nil AND there isn't a valid head yet
    if valid_head?
      set next of h to n
    if n.next is nil OR n is not n.next AND there isn't a valid head yet
      h = n
      valid_head? = true
  c = n
  n = n.next
return head
