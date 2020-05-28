# Queue Implementation

## Understanding
- Enqueue
  + from the end
  + Pointer, to identify last element
- Dequeue
- Peek
  + Pointer, to identify last element
- Length
  + Increment / decrement while queuing
- Empty?

dummy > node > node
                ^

```ruby
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
    pointer = pointer.next
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

  def empty?
    @length == 0
  end

  private
  attr_accessor :pointer
end
```
