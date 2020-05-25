# Remove Nth Node from End Of List #

## Understanding the Problem ##

Given a singly linked list, remove the nth-to-last node.

## Examples ##

Input: list = 1→2→3→4→5, n = 2
Return: 1→2→3→5

## Data Structures ##

2 pointers:
- Fast
  - This is n nodes ahead of slow at all times
- Slow
  - This is what removes the node

Dummy head

## Algorithm ##

n=3             *
(dummy)→1→2→3→4→5→6→7→(null)
      s
        f

…→3→4
  *
0. Create dummy head
1. Initialize 2 pointers
   - slow ← dummy
   - fast ← head
2. Move fast n nodes forward
   - For i in n, do
     - fast = fast.next
3. Move both pointers forward until fast is null
   - While fast, do
     - slow = slow.next
     - fast = fast.next
4. Remove node right after slow
   - slow.next = slow.next.next
5. Return dummy.next
