# Reverse Linked Lits #

## Understanding the Problem ##

Given a singly linked list, reverse it.

## Examples ##

Example 1:
- Input: 1→2→3→4→5
- Return: 5→4→3→2→1

## Data Structures ##

Input:
- Linked List
  - Node-based
  - Can be size 0

3 pointers:
- Previous
- Current
- Next

## Algorithm ##

1. If `head` is `null`, return
2. Initialize 3 pointers:
   - previous node ← `null`
   - current node ← `head`
   - next node ← `head.next`
3. While current node is not `null`, do
   a. current node.next = previous node
   b. Update pointers
       - previous node ← current node
       - current node ← next node
       - next node ← next node.next
         - Only if next node is not `null`
4. Return previous node
