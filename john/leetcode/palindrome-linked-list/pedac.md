# Palindrome Linked List #

## Understanding the Problem ##

Given a singly linked list, determine if the whole list is a palindrome.

Questions:
- Does an empty list count?
- What about a list of length 1?

## Examples ##

Example 1:
- Input: 1→2→NULL
- Return: false

Example 2:
- Input: 1→2→2→1→NULL
- Return: true

Example 3:
- Input: NULL
- Return: true

Example 4:
- Input: 1→2→3→2→1→NULL
- Return: true

Example 5:
- Input: 1→NULL
- Return: true

## Data Structures ##

Input:
- Singly linked list
  - Node-based
  - Can be empty

2 pointers:
- Halfway pointer
  - Slow
- Beginning/end pointer
  - Fast

## Algorithm ##

Early return: return true if length is 0 or 1

1. Initialize slow and fast pointer
   - slow ← head
   - fast ← head
2. Until fast is null, do
   - Singly increment slow
     - slow = slow.next
   - Doubly increment fast
     - fast = fast.next && fast.next.next
3. Slow now points to the middle-right node
4. fast = head
5. Until slow is null, do
   - return false if slow.val != fast.val
   - slow = slow.next
   - fast = fast.next
6. Return true
