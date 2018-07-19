require 'Set'

def zero_matrix(matrix)
  p matrix[0]
  p matrix[1]
  p matrix[2]
  puts ""

  rows = Set.new()
  cols = Set.new()
  matrix.each_with_index do |row, i|
    row.each_with_index do |el, j|
      if el == 0
        rows.add(i)
        cols.add(j)
      end
    end
  end

  p rows
  p cols

  rows.each do |row|
    matrix[row].each_index do |i|
      matrix[row][i] = 0
    end
  end

  cols.each do |col|
    matrix.each_index do |i|
      matrix[i][col] = 0
    end
  end

  p matrix[0]
  p matrix[1]
  p matrix[2]
  matrix
end

# 1 1 1
# 0 1 1
# 1 1 1
#
# 0 1 1
# 0 0 0
# 0 1 1
