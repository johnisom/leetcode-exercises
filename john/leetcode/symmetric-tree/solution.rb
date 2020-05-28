def is_symmetric(root)
  return true if root.nil?

  left_values = add_and_traverse(root.left, [])
  right_values = add_and_traverse(root.right, [])

  left_values == right_values.reverse
end

def add_and_traverse(root, array)
  return array if root.nil? || (!root.left && !root.right)

  if root.left.nil?
    array << nil
  else
    add_and_traverse(root.left, array)
  end

  array << root.val

  if root.right.nil?
    array << nil
  else
    add_and_traverse(root.right, array)
  end

  array
end
