def delete_duplicates(head)
  c = head # c is current
  n = c.next if c # n is next

  while n
    if c.val == n.val
      until n.nil? || c.val != n.val
        n = n.next
      end
    end

    c.next = n
    c = n
    n = n.next unless n.nil?
  end

  head
end

class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end
