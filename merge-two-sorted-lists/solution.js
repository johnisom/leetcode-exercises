const mergeTwoLists = function mergeTwoLists(l1, l2) {
  const dummy = new ListNode;
  let m = dummy;
  let c1 = l1;
  let c2 = l2;

  while (c1 && c2) {
    if (c1.val > c2.val) {
      m.next = c2;
      c2 = c2.next;
    } else {
      m.next = c1;
      c1 = c1.next;
    }

    m = m.next;
  }

  m.next = c1 ? c1 : c2;
  return dummy.next;
};
