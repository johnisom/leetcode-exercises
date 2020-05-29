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
# @return {Integer}
def max_path_sum(root)
  return root.val unless root.left || root.right
  mps_helper(root).max
end

def mps_helper(node)
  return [node.val, nil] unless node.left || node.right

  left_pot, left_com = mps_helper(node.left) if node.left
  right_pot, right_com = mps_helper(node.right) if node.right
  potential = populate_potential(node, left_pot, right_pot)
  complete = populate_complete(node, left_pot, right_pot, left_com, right_com)

  [potential, complete]
end

def populate_potential(node, left_pot, right_pot)
  potential = [node.val]
  potential.push(node.val + left_pot) if node.left
  potential.push(node.val + right_pot) if node.right
  potential.compact.max
end

def populate_complete(node, left_pot, right_pot, left_com, right_com)
  complete = []
  complete.push(left_pot + node.val + right_pot) if node.left && node.right
  complete.push(left_pot, left_com) if node.left
  complete.push(right_pot, right_com) if node.right
  complete.compact.max
end

=begin
Main Function
1. Return root.val unless children
2. Return max of helper function

Helper
1. Base case: return [node.val, nil] unless children
2. Recursive calls:
    - mps_left = helper(left) if left
    - mps_right = helper(right) if right
3. potential is max of following:
    - node.val
    - node.val + mps_left if left
    - node.val + mps_right if right
4. complete is max of following:
    - mps_left + node.val + mps_right if left and right
    - mps_left if left
    - mps_right if right
    - complete from mps_left if left
    - complete from mps_right if right
5. return array of potential and complete
=end
