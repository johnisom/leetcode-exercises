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
# @return {TreeNode}
def invert_tree(root)
  return unless root

  root.left, root.right = root.right, root.left
  invert_tree(root.left)
  invert_tree(root.right)

  return root
end

=begin

     4
   /   \
  2     7
 / \   / \
1   3 6   9


Output:


     4
   /   \
  7     2
 / \   / \
9   6 3   1

1. Base case: if the root is nil, return
2. swap = node.left, node.right = node.right, node.left
3. recurse(node.left)
4. recurse(node.right)
5. return root

=end
