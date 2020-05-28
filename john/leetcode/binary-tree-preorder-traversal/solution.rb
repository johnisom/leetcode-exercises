require_relative '../../non-leetcode/treenode'
require_relative '../../non-leetcode/stack'

def dpf_stack(tree_node) # → Array of values
  current_node = tree_node
  result_array = []
  stack_of_nodes = Stack.new

  loop do
    result_array << current_node.val

    if current_node.left && current_node.right
      stack_of_nodes.push(current_node.right)
      current_node = current_node.left
    elsif current_node.left
      current_node = current_node.left
    elsif current_node.right
      current_node = current_node.right
    elsif stack_of_nodes.empty?
      break
    else
      current_node = stack_of_nodes.pop
    end
  end

  result_array
end

__END__
# Remove above line to see test case

test_answer = [1, 2, 4, 8, 9, 5, 10, 11, 3, 6, 13, 14, 7, 15, 16]
test_tree = TreeNode.new(
  1,
  TreeNode.new(
    2,
    TreeNode.new(
      4,
      TreeNode.new(8),
      TreeNode.new(9)
    ),
    TreeNode.new(
      5,
      TreeNode.new(10),
      TreeNode.new(11)
    )
  ),
  TreeNode.new(
    3,
    TreeNode.new(
      6,
      TreeNode.new(13),
      TreeNode.new(14)
    ),
    TreeNode.new(
      7,
      TreeNode.new(15),
      TreeNode.new(16)
    )
  )
)

result = dpf_stack(test_tree)
puts result == test_answer

#require 'pry'; binding.pry
