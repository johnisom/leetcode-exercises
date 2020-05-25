const reverseList = function reverseList(head) {
  if (head === null) return null;

  let p = null;
  let c = head;
  let n = c.next;

  while (c) {
    c.next = p;

    p = c;
    c = n;
    n = n && n.next;
  }

  return p;
};
