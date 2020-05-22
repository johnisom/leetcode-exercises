def remove_elements(head, val)
  dummy = ListNode.new(nil, head)
  c = dummy
  n = head

  until n.nil?
    until n.val == val
      c = n
      n = n.next
    end

    while n && n.val == val
      n = n.next
    end

    c.next = n
  end

  dummy.next
end
