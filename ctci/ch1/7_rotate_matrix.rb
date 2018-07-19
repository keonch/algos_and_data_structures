# def rotate_matrix(matrix)
#   result = Array.new(matrix.length) {Array.new(matrix.length)}
#   matrix.each_with_index do |row, i|
#     row.each_with_index do |el, j|
#       result[j][matrix.length - i - 1] = el
#     end
#   end
#   result
# end

# constant space
def rotate_matrix(matrix)
  return matrix if matrix.length <= 1

  layer = 0
  while layer < matrix.length / 2
    first = layer
    last = matrix.length - 1 - layer
    i = first
    while i < last # 1 < 3
      offset = i - first # 1 - 0
      matrix[first][i], # 0, 1
      matrix[last-offset][first], # 2, 0
      matrix[last][last-offset], # 3, 2
      matrix[i][last] = #1, 3
      matrix[last-offset][first],
      matrix[last][last-offset],
      matrix[i][last],
      matrix[first][i]
      i += 1
    end
    layer += 1
  end

  return matrix
end
