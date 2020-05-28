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

PAIRS = { '[' => ']', '(' => ')', '{' => '}' }.freeze

def is_valid(s)
  return true if s.empty?

  stack = Stack.new
  s.each_char do |paren|
    if PAIRS[paren]
      stack.push(paren)
    elsif stack.empty? || PAIRS[stack.peek] != paren
      return false
    else
      stack.pop
    end
  end

  stack.empty?
end
