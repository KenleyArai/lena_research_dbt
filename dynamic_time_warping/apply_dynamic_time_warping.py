from typing import Iterable, DefaultDict
from collections import defaultdict

def __apply_dynamic_time_warping(
                        s: Iterable[float], 
                        t: Iterable[float]
                    ) -> float:
    
    warped_data = defaultdict(lambda: defaultdict(lambda: float('inf'))) # replaces double for loop to initialize
    warped_data[0][0] = 0.0

    n = len(s)
    m = len(t)

    for i in range(1, n):
      for j in range(1, m):
        cost = abs(s[i] - t[j])
        warped_data[i][j] = cost + min(
                                          warped_data[i-1][j],
                                          warped_data[i][j-1],
                                          warped_data[i-1][j-1]
                                      )
    return warped_data[n-1][m-1]

def __apply_constrained_dynamic_time_warping(
                        s: Iterable[float], 
                        t: Iterable[float],
                        window_length: int=None
                    ) -> float:
    
    warped_data = defaultdict(lambda: defaultdict(lambda: float('inf'))) # replaces double for loop to initialize
    warped_data[0][0] = 0.0

    n = len(s)
    m = len(t)

    window_length = max(window_length, abs(n-m))
    
    res_i = None # used for returning results later
    res_j = None # used for returning results later

    for i in range(1,n):
      
      min_j = max(1, i-window_length)
      max_j = min(m, i+window_length)

      for j in range(min_j, max_j):
        cost = abs(s[i] - t[j])
        warped_data[i][j] = cost + min(
                                  warped_data[i-1][j],
                                  warped_data[i][j-1],
                                  warped_data[i-1][j-1]
                              )
        res_j = j
      res_i = i

    return warped_data[res_i][res_j]


def apply_dynamic_time_warping(
                        s: Iterable[float], 
                        t: Iterable[float],
                        window_length: int=None
                    ) -> float:
    
    if window_length:
      return __apply_constrained_dynamic_time_warping(s, t, window_length=window_length)
    return __apply_dynamic_time_warping(s, t)