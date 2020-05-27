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

  def length
    @array.length
  end

  def peek
    array.last
  end

  def empty?
    length.zero?
  end
end

def is_valid(s)
  return true if s.empty?

  matches_for_open_paren = {
    '[' => ']',
    '{' => '}',
    '(' => ')'
  }
  opening_paren_stack = Stack.new

  s.each_char do |paren|
    if ['[', '{', '('].include?(paren)
      opening_paren_stack.push(paren)
    elsif opening_paren_stack.empty?
      return false
    elsif matches_for_open_paren[opening_paren_stack.peek] != paren
      return false
    else
      opening_paren_stack.pop
    end
  end

  opening_paren_stack.empty?
end
