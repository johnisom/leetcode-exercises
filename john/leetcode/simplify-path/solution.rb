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

  def empty?
    length.zero?
  end
end

def simplify_path(full_path)
  path_parts = full_path.split('/')
  path_stack = Stack.new
  result = ''

  path_parts.each do |part|
    next if part == '.' || part == ''

    if part == '..'
      path_stack.pop unless path_stack.empty?
    else
      path_stack.push(part)
    end
  end

  until path_stack.empty?
    result = "/#{path_stack.pop}#{result}"
  end

  result.empty? ? '/' : result
end
