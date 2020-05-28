# breadth_first_by_level.rb

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

def level_order_bottom(tree_node)
  return [] unless tree_node
  queue = Queue.new
  result_arr = []

  queue.enqueue({level: 0, node: tree_node})

  until queue.empty?
    custom_object = queue.dequeue
    current_level = custom_object[:level]
    current_node = custom_object[:node]
    if current_node.left
      queue.enqueue({level: current_level + 1, node: current_node.left})
    end
    if current_node.right
      queue.enqueue({level: current_level + 1, node: current_node.right})
    end

    result_arr[level] ||= []
    result_arr[level] << current_node.val
  end

  result_arr.reverse
end
