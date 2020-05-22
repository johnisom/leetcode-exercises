const reverseBetween = function reverseBetween(head, m, n) {
  if (!head || !head.next) return head;

  const dummy = new ListNode(null, head);
  let idx = 0;
  let current_node = dummy;
  let previous_node;
  let next_node;
  let before_m_node;
  let m_node;

  while (idx < m - 1) {
    current_node = current_node.next;
    idx += 1;
  }

  before_m_node = current_node;
  current_node = current_node.next;
  idx += 1;

  m_node = current_node;
  current_node = current_node.next;
  idx += 1;

  previous_node = m_node;
  next_node = current_node && current_node.next;
  m_node.next = null;

  while (idx <= n) {
    current_node.next = previous_node;

    previous_node = current_node;
    current_node = next_node;
    next_node = next_node && next_node.next;

    idx += 1;
  }

  before_m_node.next = previous_node;
  m_node.next = current_node;

  return dummy.next;
};
