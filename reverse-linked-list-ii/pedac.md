# Reverse Linked List II #

## Understanding the Problem ##

Given a sorted linked list, a start position, and an end position, reverse all
the elements from the start to the end position.

Note:
- m & n are 1-indexed
- Do it in 1 pass

## Examples ##

Example 1:
- Input: 1→2→3→4→5→NULL, m=2, n=4
- Return: 1→4→3→2→5→NULL

Example 2:
- Input: 1→2→3→4→5→6→7→8→9→NULL, m=4, n=9
- Return: 1→2→3→9→8→7→6→5→4→NULL

## Data Structures ##

Input:
- Linked list
  - Node-based
  - At least 1 element long
  - Unsorted (doesn’t matter)

3 pointers (K-Pointer slide):
- Previous
- Current
- Next

The node before the mth node:
- A reference that holds on to node at position m - 1

The mth node:
- A reference that holds on to node at position m

The nth node:
- A reference that holds on the node at position n

The node after the nth node:
- A reference that holds on the node at position n + 1


### Waliking thru examples ###

m=3, n=7
  * n       m *
1→2→---------→8→9→NULL
              ^
idx = 8
before_m_node = 2
m_node = 3
n_node = 7
after_n_node = 8

m=1, n=5
      * n       m *
(dummy)→5→4→3→2→1→6→7→8→9→NULL
                  ^
idx = 6
before_m_node = (dummy)
m_node = 1
n_node = 5
after_n_node = 6

m=5, n=9
              * n       m *
(dummy)→1→2→3→4→9→8→7→6→5→NULL
                        ^
before_m_node = 4
m_node = 5
n_node = 9
after_n_node = NULL

## Algorithm ##

 0. create dummy_node
    - dummy_node.next = head
 1. initialize idx to 0, current_node to dummy
 2. loop while idx < m - 1
    - current_node = current_node.next
    - idx += 1
 3. before_m_node ← current_node
 4. current_node = current_node.next, idx += 1
 5. m_node ← current_node
 6. current_node = current_node.next, idx += 1
 7. Initialize previous_node, next_node
    - previous_node = m_node
    - next_node = current_node.next
 8. m_node.next = null
 9. loop while idx <= n
    - current_node.next = previous_node
    - previous_node = current_node;
    - current_node = next_node
    - next_node = next_node.next if next_node
    - idx += 1
10. before_m_node.next = previous_node
11. m_node.next = current_node
12. return dummy.next
