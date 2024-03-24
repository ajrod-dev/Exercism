def generate_spiral_matrix(size):
    matrix = [[0] * size for _ in range(size)]
    num = 1
    top_row, bottom_row = 0, size - 1
    left_col, right_col = 0, size - 1
    
    while top_row <= bottom_row and left_col <= right_col:
        # Fill top row
        for i in range(left_col, right_col + 1):
            matrix[top_row][i] = num
            num += 1
        top_row += 1
        
        # Fill right column
        for i in range(top_row, bottom_row + 1):
            matrix[i][right_col] = num
            num += 1
        right_col -= 1
        
        # Fill bottom row (if necessary)
        if top_row <= bottom_row:
            for i in range(right_col, left_col - 1, -1):
                matrix[bottom_row][i] = num
                num += 1
            bottom_row -= 1
        
        # Fill left column (if necessary)
        if left_col <= right_col:
            for i in range(bottom_row, top_row - 1, -1):
                matrix[i][left_col] = num
                num += 1
            left_col += 1
    
    return matrix

# Test cases
size = 3
spiral_matrix_3 = generate_spiral_matrix(size)
print("Spi
