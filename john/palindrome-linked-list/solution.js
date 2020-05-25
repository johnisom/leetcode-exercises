const isPalindrome = function isPalindrome(head) {
  if (!head || !head.next) return true;

  let slow = head;
  let fast = head;

  while (fast) {
    slow = slow.next;
    fast = fast.next && fast.next.next;
  }

  console.log('slow.val', slow.val);
  console.log('slow.next.val', slow.next.val);
  //console.log('fast.val', fast.val);

  fast = head;

  while (slow) {
    if (slow.val !== fast.val) return false;

    slow = slow.next;
    fast = fast.next;
  }

  return true;
};

function ListNode(val, next) {
  this.val = (val === undefined ? 0 : val);
  this.next = (next === undefined ? null : next);
}

const list = new ListNode(
  1,
  new ListNode(
    2,
    new ListNode(
      2,
      new ListNode(
        1,
      ),
    ),
  ),
);

isPalindrome(list);
