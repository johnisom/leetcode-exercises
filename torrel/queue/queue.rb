# queue.rb

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


queue = Queue.new
puts queue.empty?
queue.enqueue('hi')
puts queue.length
queue.enqueue('you')
puts queue.length
puts queue.dequeue
puts queue.length
p queue
