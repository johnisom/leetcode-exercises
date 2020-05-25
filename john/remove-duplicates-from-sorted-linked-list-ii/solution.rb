def delete_duplicates(head)
  dummy = ListNode.new(nil, head)
  s = dummy
  m = dummy
  f = head

  while f
    m = f
    f = f.next

    while f && m.val != f.val
      s = m
      m = f
      f = f.next
    end

    break unless f

    while f && m.val == f.val
      m = f
      f = f.next
    end

    s.next = f
  end

  dummy.next
end
