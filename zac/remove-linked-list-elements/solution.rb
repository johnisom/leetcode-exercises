# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def remove_elements(head, val)
  dummy_head = ListNode.new(nil, head)
  current = dummy_head
  nextt = current.next

  while nextt
    until nextt.nil? || nextt.val == val
      current = nextt
      nextt = nextt.next
    end

    until nextt.nil? || nextt.val != val
      nextt = nextt.next
    end

    current.next = nextt
  end

  dummy_head.next
end
