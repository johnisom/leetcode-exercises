class Stack
  def initialize
    @array = []
  end
  
  def push(x)
    @array << x
  end
  
  def pop
    @array.pop
  end
  
  def peek
    @array.last
  end
  
  def size
    @array.size
  end
  
  def empty?
    @array.empty?
  end
end

class MyQueue
  def initialize
    @push_stack = Stack.new
    @pop_stack = Stack.new
  end

  def push(x)
    @push_stack.push(x)
  end

  def pop
    transfer if @pop_stack.empty?
    return if @pop_stack.empty?

    @pop_stack.pop
  end

  def peek
    transfer if @pop_stack.empty?
    
    @pop_stack.peek
  end

  def empty
    @pop_stack.empty? && @push_stack.empty?
  end
  
  private
  
  def transfer
    until @push_stack.empty?
      @pop_stack.push(@push_stack.pop)
    end
  end
end
