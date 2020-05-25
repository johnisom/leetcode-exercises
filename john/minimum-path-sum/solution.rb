# require 'pry'

def min_path_sum(grid)
  cache = Array.new(grid.size) do
    Array.new(grid.first.size)
  end

  min_sum_helper(grid, 0, 0, cache)
end
  
def min_sum_helper(grid, row, col, cache)
  if row == grid.size - 1 && col == grid.first.size - 1
    return grid[row][col]
  elsif row == grid.size - 1
    unless cache[row][col]
      cache[row][col] = grid[row][col] + min_sum_helper(grid, row, col + 1, cache)
    end

    return cache[row][col]
  elsif col == grid.first.size - 1
    unless cache[row][col]
      cache[row][col] = grid[row][col] + min_sum_helper(grid, row + 1, col, cache)
    end

    return cache[row][col]
  end
  
  unless cache[row][col + 1]
    cache[row][col + 1] = min_sum_helper(grid, row, col + 1, cache)
  end
  
  unless cache[row + 1][col]
    cache[row + 1][col] = min_sum_helper(grid, row + 1, col, cache)
  end
  
  min_down_right = [cache[row][col + 1], cache[row + 1][col]].min
  return grid[row][col] + min_down_right
end

test1 = [
  [1, 3, 1],
]

test2 = [
  [1,3,1],
  [1,5,1],
  [4,2,1]
]

puts min_path_sum(test2)
