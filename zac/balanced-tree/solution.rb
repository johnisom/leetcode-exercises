def is_balanced(root)
  !!balanced_helper(root)
end

def balanced_helper(root, height=0)
  return height unless root

  left_height = balanced_helper(root.left, height + 1)
  right_height = balanced_helper(root.right, height + 1)

  return false unless left_height && right_height
  return false if (left_height - right_height).abs > 1
  return [left_height, right_height].max
end
