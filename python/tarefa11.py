import numpy as np

def jacnorm(a):
    lowest_absolut = np.min(np.absolute(a.transpose()), 0)
    bool_matrix = np.absolute(a) == lowest_absolut[:, None]
    bool_matrix = bool_matrix.cumsum(axis=1).cumsum(axis=1) == 1
    lowest_absolut_values = a * bool_matrix
    lowest_absolut_values = lowest_absolut_values[lowest_absolut_values != 0]
    a = a.transpose()/lowest_absolut_values
    return a.transpose()
