# solution_with_stack.rb

class Node
  attr_accessor :next, :data

  def initialize(data=nil)
    self.data = data
  end
end

class Queue
  attr_reader :length

  def initialize
    @dummy = Node.new
    self.pointer = @dummy
    @length = 0
  end

  def enqueue(val)
    pointer.next = Node.new(val)
    self.pointer = pointer.next
    @length = @length + 1
    pointer.data
  end

  def dequeue
    raise 'Cannot dequeue empty queue' if self.empty?
    return_node = @dummy.next
    @dummy.next = @dummy.next.next
    @length = @length - 1
    return_node.data
  end

  def peek
    pointer.data
  end

  def empty?
    @length == 0
  end

  private
  attr_accessor :pointer
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

def level_order_bottom(tree_node)
  return [] unless tree_node
  # FIXME: Debug implementing with a queue class
  queue = [] # Queue.new
  queue << tree_node
  stack = Stack.new
  return_array = []

  until queue.empty?
    new_array = []
    len = queue.length

    while len > 0
      current_node = queue.shift
      new_array.push(current_node.val)
      queue << current_node.left if current_node.left
      queue << current_node.right if current_node.right
      len -= 1
    end

    stack.push(new_array)
  end

  until stack.empty?
    return_array << stack.pop
  end

  return_array
end
