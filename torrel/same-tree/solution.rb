# solution.rb

def is_same_tree(p, q)
  return true if !p && !q
  return false if !p || !q
  return false unless p.val == q.val

  left = is_same_tree(p.left, q.left)
  right = is_same_tree(p.right, q.right)
  
  return left && right
end