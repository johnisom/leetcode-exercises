def minimum_total(triangle, row = 0, col = 0, memo = {})
  return triangle[row][col] if row == triangle.size - 1

  left_min = memo[[row + 1, col]] || minimum_total(triangle, row + 1, col, memo)
  right_min = memo[[row + 1, col + 1]] || minimum_total(triangle, row + 1, col + 1, memo)
  memo[[row, col]] ||= triangle[row][col] + [left_min, right_min].min
end

__END__

memo = {}
triangle = [
  [0],
  [1, 2],
  [3, 4, 5],
  [6, 7, 8, 9]
]

minimum_total(triangle, 0, 0, memo)

require 'pry'; binding.pry
