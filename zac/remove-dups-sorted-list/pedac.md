# Remove Duplicates from Sorted List

## Problem
Given a sorted linked list, delete all duplicates such that each element appear only once.

## Examples
Input: 1->1->2
Output: 1->2

1->1->2
c     n

Input: 1->1->2->3->3
Output: 1->2->3

1->1->2->3->3
c     n
1->2->3->3
c  n

## Approach
# Iterate from the head with 2 pointers
#   If c and n point to the same value
#   Move n until a non-equal value is found
#   Point current to n (possibly nil)
#   Wait for garbage collection. Maybe he'll take your old sneakers
# Return head