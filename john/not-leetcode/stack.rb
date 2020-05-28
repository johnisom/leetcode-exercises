class Stack
  def initialize
    @array = []
  end

  def push(val)
    @array.push(val)
  end

  def pop
    raise "Can't pop empty stack" if empty?
    @array.pop
  end

  def peek
    @array.last
  end

  def length
    @array.length
  end

  def empty?
    length.zero?
  end
end
