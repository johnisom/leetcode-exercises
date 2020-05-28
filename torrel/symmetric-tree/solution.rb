# solution.rb

def traversal(root, arr)
  return arr unless root
  if root.left.nil?
    arr << nil
  else
    traversal(root.left, arr)    
  end

  arr << root.val

  if root.right.nil?
    arr << nil
  else
    traversal(root.right, arr)
  end

  arr
end

def is_symmetric(root)
  return true unless root

  left_array = traversal(root.left, [])
  right_array = traversal(root.right, [])

  return left_array == right_array.reverse
end
