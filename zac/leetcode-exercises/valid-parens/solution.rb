# pedac is in John's folder

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
    @array[-1]
  end

  def length
    @array.length
  end

  def empty?
    length.zero?
  end
end

def is_valid(s)
  return true if s.empty?
  parens_stack = Stack.new
  table = {
    '{' => '}',
    '(' => ')',
    '[' => ']'
  }

  s.chars.each do |char|
    if ['(', '[', '{'].include? char
      parens_stack.push(char)
    elsif parens_stack.empty? || table[parens_stack.peek] != char
      return false
    else
      parens_stack.pop
    end
  end

  parens_stack.empty?
end
