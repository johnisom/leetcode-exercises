require 'pry'

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
  end

  def insert(new_val)
    return if new_val == self.val
    new_node = TreeNode.new(new_val)

    if new_val < self.val
      if self.left.nil?
        self.left = new_node
      else
        self.left.insert(new_val)
      end
    elsif new_val > self.val
      unless self.right
        self.right = new_node
      else
        self.right.insert(new_val)
      end
    end

    self
  end
end

tree = TreeNode.new(2, TreeNode.new(1), TreeNode.new(3))
tree.insert(4)
p tree
