# pedac is in john's folder

def is_symmetric(root)
  return true if root.nil?
  left = traverse(root.left, [])
  right = traverse(root.right, [])
  left == right.reverse
end

def traverse(node, ary)
  return ary unless node
  traverse(node.left, ary)
  ary.push(node.val)
  traverse(node.right, ary)
  ary
end
