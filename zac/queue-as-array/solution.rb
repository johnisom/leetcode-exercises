class Queue
  def initialize
    @array = []
  end

  def enqueue(val)
    array.push(val)
  end

  def dequeue
    array.shift
  end

  def length
    array.length
  end

  def empty?
    array.empty?
  end

  def peek
    array.first
  end

  private
  attr_accessor :array
end

queue = Queue.new
queue.enqueue('test')
puts queue.peek
puts queue.length
queue.enqueue('another test')
puts queue.length
puts queue.peek
queue.dequeue
puts queue.length
queue.dequeue
puts queue.empty?
p queue
