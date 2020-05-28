def reverse_list(head)
  return unless head

  b = nil    # before
  c = head   # current
  n = c.next # next

  while c
    c.next = b
    b = c
    c = n
    n = n.next? if n
  end

  b
end
