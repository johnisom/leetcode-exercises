ListNode = Struct.new(:val, :next)

class Queue
  attr_reader :length

  def initialize
    @dummy = ListNode.new
    @pointer = @dummy
    @length = 0
  end
  
  def enqueue(val)
    @pointer.next = ListNode.new(val)
    @pointer = @pointer.next
    @length += 1

    val
  end
  
  def dequeue
    return if empty?
    
    val = peek
    @dummy.next = @dummy.next.next
    @length -= 1

    val
  end
  
  def peek
    return if empty?

    @dummy.next.val
  end
  
  def empty?
    @length.zero?
  end
end

class MyStack
  def initialize
    @inner_queue = Queue.new
  end

  def push(x)
    @inner_queue.enqueue(x)
  end

  def pop
    (length - 1).times do
      @inner_queue.enqueue(@inner_queue.dequeue)
    end

    @inner_queue.dequeue
  end

  def top
    (length - 1).times do
      @inner_queue.enqueue(@inner_queue.dequeue)
    end

    @inner_queue.enqueue(@inner_queue.dequeue)
  end

  def length
    @inner_queue.length
  end

  def empty
    @inner_queue.empty?
  end
end
