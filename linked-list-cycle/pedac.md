# Linked List Cycle #

## Understanding the Problem ##

Given a singly linked list, determine if it has a cycle.
We must only return a boolean, not the index at which it occurs

Input: Singly linked list
Return: boolean

## Examples ##

Example 1:
- Input: 1→2→3→4
           ↑   ↓
           └←─←┘
- Return: true

Example 2:
- Input: 1→2→3→4→NULL
- Return: false

Example 3:
- Input: NULL
- Return: false

## Data Structures ##

Input:
- Linked list
  - Node-based
  - Can be empty
  - Singly linked
  - Can have circular references

2 pointers:
- Slow
  - Moves 1 step per iteration
- Fast
  - Moves 2 steps per iteration

## Algorithm ##

0. Return false if head is null or doesn’t have a next value
1. Initialize pointers
   - slow ← head
   - fast ← head.next.next
2. Until fast or fast.next is null, do
   1. Return true if slow == fast
   2. Iterate both pointers
      - slow = slow.next
      - fast = fast.next.next
3. Return false
