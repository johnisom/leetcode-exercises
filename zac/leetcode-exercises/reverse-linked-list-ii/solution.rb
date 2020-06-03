def reverse_between(head, m, n)
  dummy = ListNode.new(nil, head)
  idx = 0
  current_node = dummy

  while idx < m - 1
    current_node = current_node.next
    idx += 1
  end

  before_m_node = current_node
  current_node = current_node.next
  idx += 1
  m_node = current_node
  current_node = current_node.next
  idx += 1
  previous_node = m_node
  next_node = current_node.next if current_node
  m_node.next = nil

  while idx < n + 1
    current_node.next = previous_node
    previous_node = current_node
    current_node = next_node
    next_node = next_node.next if next_node
    idx += 1
  end

  before_m_node.next = previous_node
  m_node.next = current_node

  dummy.next
end
