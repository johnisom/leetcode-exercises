# sum_root_to_leaf.rb

def sum_numbers(root, total=0)
  return total unless root
  return root.val + (total * 10) if !root.left && !root.right
  
  left = root.left ? sum_numbers(root.left, root.val + (total * 10)) : 0
  right = root.right ? sum_numbers(root.right, root.val + (total * 10)) : 0
  
  left + right
end