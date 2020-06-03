var mergeTwoLists = function(l1, l2) {
  const dummy = new ListNode(null);
  let m = dummy; // m is merged list pointer
  let c1 = l1;   // c1 is current pointer of l1
  let c2 = l2;   // c2 is current pointer of l2

  while (c1 || c2) {
    if (!c1) {
      m.next = c2;
      break;
    }
    if (!c2) {
      m.next = c1;
      break;
    }
    if (c1.val <= c2.val) {
      m.next = c1;
      c1 = c1.next;
    } else {
      m.next = c2;
      c2 = c2.next;
    }

    m = m.next;
  }

  return dummy.next;
};
