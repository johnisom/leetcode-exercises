# Remove Linked List Elements #

## Understanding the Problem ##

## Examples ##

## Data Structures ##

Input:
- Linked list
  - Node-based
  - Can be empty

2 pointers:
- Anchor
  - AKA current/c
- Runner
  - AKA next/n

Dummy head

## Algorithm ##

1. Create dummy, initialize pointers
   - current ← dummy
   - next ← head
2. Until next is null
   - Until next.val is target
     - Move both pointers forward
       - current ← next
       - next ← next.next
   - While next.val is target
     - Move next forward
       - next ← next.next
   - Link current to next
     - current.next = next
 3. Return dummy.next
