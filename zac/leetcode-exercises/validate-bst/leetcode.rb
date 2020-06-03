# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}
def is_valid_bst(root)
  bst_helper(root)
end

def bst_helper(current, min=-Float::INFINITY, max=Float::INFINITY)
  return true unless current
  return true unless current.left || current.right

  if current.left
    return false if current.left.val < min || current.left.val >= current.val
  end

  if current.right
    return false if current.right.val > max || current.right.val <= current.val
  end

  valid_left = bst_helper(current.left, min, current.val)
  valid_right = bst_helper(current.right, current.val, max)

  valid_left && valid_right
end

=begin

    20
   /  \
  1    33

    1
   /
  1

    5
   / \
  1   4
     / \
    3   6
   /
  2

Main:
1. Return: Pass the input along to the helper

Helper:
0. Params: current, min=negative inf, max=pos inf
1. Base case: Return true if there is no current, Return true if there are no children
2. If there is a left child
    - If its value is less than the minumum or if its value is greater than or equal to the current value
      - Return false
3. If there is a right child
    - If its value is greater than the maximum or if its value is less than or equal to the current value
      - Return false
4. Return helper(left, min, current value) && helper(right, current value, max)

=end
