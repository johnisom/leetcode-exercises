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
def sum_numbers(root, sum=0, sums=[])
  return sum unless root
  sum = sum * 10 + root.val
  sums.push(total) unless root.left || root.right
  sum_numbers(root.left, sum, sums) if root.left
  sum_numbers(root.right, sum, sums) if root.right
  sums.sum
end
