import numpy as np

matrix_a = np.random.randint(100, size=(10, 10))
matrix_b = np.random.randint(100, size=(10, 10))

product = np.zeros((10,10))

for x in range(10):
    for y in range(10):
        product[x][y]=matrix_a[x][y]*matrix_b[x][y]

dictionary = { "matrix_a": matrix_a,
               "matrix_b": matrix_b,
               "product": product  }


print(res)
#print(matrix_b) 
#print(product)