# min_path_sum.rb

require 'pry'

def min_path_sum(grid)
  sum_helper(grid)
end

def sum_helper(grid, row=0, col=0, cache={})
  current_position = [row, col]
  adjacent_col = [row, col + 1]
  adjacent_row = [row + 1, col]

  if col == grid[0].size - 1 && row == grid.size - 1
    return grid[row][col]
  elsif row == grid.size - 1
    unless cache[current_position]
      cache[current_position] = grid[row][col] +
                              sum_helper(grid, row, col + 1, cache)
    end
    return cache[current_position]
  elsif col == grid[0].size - 1
    unless cache[current_position]
      cache[current_position] = grid[row][col] +
                              sum_helper(grid, row + 1, col, cache)
    end
    return cache[current_position]
  end

  unless cache[adjacent_col]
    cache[adjacent_col] = sum_helper(grid, row, col + 1, cache)
  end
  unless cache[adjacent_row]
    cache[adjacent_row] = sum_helper(grid, row + 1, col, cache)
  end

  grid[row][col] + [cache[adjacent_col], cache[adjacent_row]].min
end

g1 = [
  [1,3,1],
  [1,5,1],
  [4,2,1]
]

g2 = [
  [1,2,5],
  [3,2,1]
]

puts min_path_sum(g1)
puts min_path_sum(g2)
