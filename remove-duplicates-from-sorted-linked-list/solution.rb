class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

def delete_duplicates(head)
  return if head.nil?

  c = head
  n = c.next

  until n.nil?
    while n && n.val != c.val
      c = n
      n = n.next
    end

    while n && n.val == c.val
      n = n.next
    end

    c.next = n
  end

  head
end

list = ListNode.new(
  0,
  ListNode.new(
    0,
    ListNode.new(
      0,
      ListNode.new(
        0,
        nil
      )
    )
  )
)

result = delete_duplicates(list)

puts result
