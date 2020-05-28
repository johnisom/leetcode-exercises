=begin
Big O

Space:
O(N) where N corresponds to the size of the matrix

Time:
O(X * Y(X + Y) + Y * (X + Y))
Where X is the amount of rows and Y the amount of columns
=end

def rotate_counterclockwise(matrix)
  matrix.map(&:reverse).transpose
end

def spiral_matrix(matrix)
  matrix_copy = matrix.clone # Don't mutate input
  spiraled = matrix_copy.shift

  until matrix_copy.empty?
    # Rotate matrix 90° counterclockwise
    matrix_copy = rotate_counterclockwise(matrix_copy)
    # Concat first row of rotated matrix to result
    spiraled += matrix_copy.shift
  end

  # return result
  spiraled
end


# Test cases

## First test case
input = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]
expected = [1, 2, 3, 6, 9, 8, 7, 4, 5]
result = spiral_matrix(input)

puts 'Given:'
pp input

puts 'Expected:'
pp expected

puts 'Actual result:'
pp result

## Second test case
input = [
  [1, 2, 3],
  [8, 9, 4],
  [7, 6, 5]
]
expected = [*1..9]
result = spiral_matrix(input)

puts 'Given:'
pp input

puts 'Expected:'
pp expected

puts 'Actual result:'
pp result

## Third test case
input = [
  [ 1,  2, 3],
  [12, 13, 4],
  [11, 14, 5],
  [10, 15, 6],
  [ 9,  8, 7]
]
expected = [*1..15]
result = spiral_matrix(input)

puts 'Given:'
pp input

puts 'Expected:'
pp expected

puts 'Actual result:'
pp result
