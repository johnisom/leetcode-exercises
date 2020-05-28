require 'pry'
# logic: until input array is empty
#          push each element of first row onto spiral
#          delete row from matrix
#          rotate remaining array

def spiral_order(matrix)
  spiral = []

  until matrix == []
    matrix.first.each { |el| spiral.push(el) }
    matrix.shift
    matrix = matrix.map(&:reverse).transpose
  end

  spiral
end

# Example 1:
# Input:
matrix1 = [
 [ 1, 2, 3 ],
 [ 4, 5, 6 ],
 [ 7, 8, 9 ]
]
# Output: [1,2,3,6,9,8,7,4,5]

# Example 2:
# Input:
matrix2 = [
  [1, 2, 3, 4],
  [5, 6, 7, 8],
  [9,10,11,12],
  [13,14,15,16]
]
# Output: [1,2,3,4,8,12,11,10,9,5,6,7]

p spiral_order(matrix2)
