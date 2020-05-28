# pedac is in John's folder

def is_symmetric(root)
  return true if root.nil?
  left = add_and_traverse(root.left, [])
  right = add_and_traverse(root.right, [])
  left == right.reverse
end

def add_and_traverse(node, ary)
  return ary unless node
  add_and_traverse(node.left, ary)
  ary.push(node.val)
  add_and_traverse(node.right, ary)
  ary
end
