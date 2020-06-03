# Merge Two Lists

## Problem
Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.

## Examples
Input: 1->2->4, 1->3->4
Output: 1->1->2->3->4->4

    1->2->4->null, 1->3->4->null
    c1             c2

()->1->1->2->3->4->4
 m

init dummy head for new merged list
init c1 to point to first node of first list
init c2 to point to first node of second list

while c1 || c2
  if (c1 == null)
    m.next is c2
    break
  if (c2 == null)
    m.next is c1
    break
  if value at c1 <= value at c2
    m.next is c1
    point c1 to next in its list
  else
    m.next is c2
    point c2 to next in its list
  end

  m = m.next
end

return node after dummy

