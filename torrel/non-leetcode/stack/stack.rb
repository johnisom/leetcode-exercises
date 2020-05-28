# stack.rb

require 'pry'
=begin
dummy

node1 <
node
=end

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
    raise 'Cannot pop from empty stack' if self.empty?
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

stack = Stack.new
stack.push('hi')
puts stack.peek
puts stack.length
puts stack.pop
puts stack.length
puts stack.empty?
p stack
