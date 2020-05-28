def average_of_levels(tree_node)
  return [] unless tree_node
  queue = []
  queue.push(tree_node)
  return_array = []

  until queue.empty?
    running_sum = 0.0
    len = queue.length

    len.times do
      current_node = queue.shift
      running_sum += current_node.val

      queue.push(current_node.left) if current_node.left
      queue.push(current_node.right) if current_node.right
    end

    return_array.push(running_sum / len)
  end

  return_array
end
