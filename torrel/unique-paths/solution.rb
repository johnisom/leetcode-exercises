# unique_paths.rb

def unique_paths(m, n)
  current_column = {}
  previous_column = {}
  current_column[n] = 1

  m.downto(1) do |col|
    n.downto(1) do |row|
      if n == row || m == col
        current_column[row] = 1
      end

      current_column[row] = previous_column[row] + current_column[row + 1]
    end
    previous_column = current_column
    current_column = {}
  end

  previous_column[1]
end
