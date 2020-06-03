# pedac in Torrel's folder

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val=0, left=nil, right=nil)
    @val = val
    @left = left
    @right = right
  end

  def insert(key)
    return if key == val
    key < val ? insert_left_helper(key) : insert_right_helper(key)
    self
  end

  private

  def insert_left_helper(key)
    left ? left.insert(key) : self.left = TreeNode.new(key)
  end

  def insert_right_helper(key)
    right ? right.insert(key) : self.right = TreeNode.new(key)
  end
end

tree = TreeNode.new(2, TreeNode.new(1), TreeNode.new(3))
tree.insert(4)
p tree
