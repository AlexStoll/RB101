input =  [[1, 2, 3],
          [4, 5, 6],
          [7, 8, 9]]

def transpose (matrix)
  new_matrix = []

  (0..2).each do |column_index|
    new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
    new_matrix << new_row
  end
  new_matrix
end



p transpose(input)