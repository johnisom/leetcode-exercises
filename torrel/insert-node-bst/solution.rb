class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
  end

  def insert(val)
    
  end
end

tree = TreeNode.new(2, TreeNode.new(1), TreeNode.new(3))
tree.insert(4)
p tree
