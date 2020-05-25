def remove_nth_from_end(head, n)
  dummy = ListNode.new(nil, head)
  slow = dummy
  fast = head

  n.times { fast = fast.next }

  until fast.nil?
    slow = slow.next
    fast = fast.next
  end

  slow.next = slow.next.next

  dummy.next
end
