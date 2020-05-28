# Merge Two Sorted Lists #

## Understanding the Problem ##

Given 2 sorted linked lists, merge them into 1 big sorted linked list by
splicing the nodes together.

Note: the lists can be empty

## Examples ##

Example 1:
- Input: list1 = 1→2→4, list2 = 1→3→4
- Return: 1→1→2→3→4→4

### Edge cases: empty lists ###

Edge case 1:
- Input: list1 = null, list2 = 1→2→3
- Return: 1→2→3

Edge case 2:
- Input: list1 = 1→2→3, list2 = null
- Return: 1→2→3

Edge case 3:
- Input: list1 = null, list2 = null
- Return: null

## Data Structures ##

Input:
- 2 linked lists
  - Node-based
  - Can be empty
  - Sorted

Merge linked list:
- Both lists merged together
- Sorted

4 pointers:
- Pointer for 1st list
  - Points to current value that is about to be merged
- Pointer for 2nd list
  - Points to current value that is about to be merged
- Dummy head
- Pointer for merge list
  - Points to the last element in merge list

## Algorithm ##

1. Initialize the pointers
   - dummy head ← new node
   - merge pointer ← dummy head
   - list1 pointer ← list1 head
   - list2 pointer ← list2 head
2. While list1 pointer && list2 pointer, do
   - if list1 pointer > list2 pointer, then
     - merge pointer.next = list2 pointer
     - list2 pointer = list2 pointer.next
   - else
     - merge pointer.next = list1 pointer
     - list1 pointer = list1 pointer.next
   - merge pointer = merge pointer.next
3. Append the remaining list piece onto the merge list
   - If list1 is empty, append list2
   - Else, append list1
4. Return dummy head.next
