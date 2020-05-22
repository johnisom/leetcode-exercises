# Remove Duplicates from Sorted List #

## Understanding the Problem ##

Remove duplicate values from a sorted linked list. The linked list can be of
any length, eh?

## Examples ##

Example 1:
- Input: 1→1→2
- Return: 1→2

Example 2:
- Input: 1→1→2→3→3
- Return: 1→2→3

## Data Structure ##

Given:
- Linked list
  - Sorted
  - Duplicate values exist
  - Can be length 0

2 pointers:
- Anchor
  - AKA current/c
- Runner
  - AKA next/n

## Algorithm ##

1. Initialize 2 pointers
   - current ← head
   - next ← head.next
2. Until next is null
   - Until next.val is current.val
     - Move both pointers forward
       - current ← next
       - next ← next.next
   - While next.val is current.val
     - Move next forward
       - next ← next.next
   - Link current to next
     - current.next = next
3. Return head
