def delete_duplicates(head)
  return unless head
  return head unless head.next

  valid_head = false
  h = head      # h is head
  c = h      # c is current
  n = h.next # n is next

  while n
    if c.val == n.val
      while c.val == n.val
        c = n
        n = n.next
      end

      return if n.nil? && !valid_head
      h.next = n if valid_head

      break if n.nil? && !valid_head
      if n.val != n.next.val && !valid_head
        h = n
        valid_head = true
      end
    end

    valid_head = true if (n.val != n.next.val && !valid_head)
    c = n
    n = n.next
  end

  h
end
