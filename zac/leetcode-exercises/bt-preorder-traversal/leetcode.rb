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
# @return {Integer[]}
class Node
  attr_accessor :next, :data

  def initialize(data=nil)
    self.data = data
  end
end

class Stack
  attr_reader :length

  def initialize
    @dummy = Node.new
    @length = 0
  end

  def push(val)
    new_node = Node.new
    new_node.data = val
    new_node.next = @dummy.next
    @dummy.next = new_node
    @length += 1
    new_node.data
  end

  def pop
    return nil if self.empty?
    return_node = @dummy.next
    @dummy.next = @dummy.next.next
    @length -= 1
    return_node.data
  end

  def peek
    @dummy.next.data
  end

  def empty?
    @length == 0
  end
end

def preorder_traversal(root)
  current_node = root
  result_array = []
  stack_of_nodes = Stack.new

  while current_node
    result_array << current_node.val
    stack_of_nodes.push(current_node.right) if current_node.right
    current_node = current_node.left ? current_node.left : stack_of_nodes.pop
  end

  result_array
end
