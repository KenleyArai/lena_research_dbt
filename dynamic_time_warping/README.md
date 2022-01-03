# Usage

**NOTE**: Assumes you have the function available in `apply_dynamic_time_warping.py`

**Without using window constraint**

```python
a = [1, 2, 3]
b = [1, 2, 2, 2, 2, 3, 4, 5]

dynamic_time_warp_difference = apply_dynamic_time_warping(a, b)
print(dynamic_time_warp_difference)

# 3.0
```

**Using window constraint**

```python
a = [1, 2, 3]
b = [1, 2, 2, 2, 2, 3, 4, 5]

dynamic_time_warp_difference = apply_dynamic_time_warping(a, b, window_length=2)
print(dynamic_time_warp_difference)

# 1.0
```

**With EDA Data**

Retrieving our data from our DBT models:

```
EDA = load_data('select * from dbt_eda.standardized')
```

Set the two time series we want to apply dynamic time warping on (in our example `PB003` is being compared against `PB062`):

```python
pb003 = EDA[EDA.timeseries_pkey == 'pb003_s1_i1']['mean'].tolist()
pb062 = EDA[EDA.timeseries_pkey == 'pb062_s1_i1']['mean'].tolist()
```

Apply the dynamic time warping:

```python
warped_distance_between_pb003_to_pb062 = apply_dynamic_time_warping(pb003, pb062)
constrainted_warped_distance_between_pb003_to_pb062 = apply_dynamic_time_warping(pb003, pb062, window_length=5) # arbitrary 5

print(warped_distance_between_pb003_to_pb062)
print(constrainted_warped_distance_between_pb003_to_pb062)
print(warped_distance_between_pb003_to_pb062-constrainted_warped_distance_between_pb003_to_pb062)

# 51.94593835054335   warped_distance_between_pb003_to_pb062
# 51.77890207219658   constrainted_warped_distance_between_pb003_to_pb062
# 0.1670362783467709  difference between them
```

# Implementation 

- Python version is implemented in `apply_dynamic_time_warping.py`

```
int DTWDistance(s: array [1..n], t: array [1..m]) {
    DTW := array [0..n, 0..m]
    
    for i := 0 to n
        for j := 0 to m
            DTW[i, j] := infinity
    DTW[0, 0] := 0
    
    for i := 1 to n
        for j := 1 to m
            cost := d(s[i], t[j])
            DTW[i, j] := cost + minimum(DTW[i-1, j  ],    // insertion
                                        DTW[i  , j-1],    // deletion
                                        DTW[i-1, j-1])    // match
    
    return DTW[n, m]
}
```

Taken from [WikiWand](https://www.wikiwand.com/en/Dynamic_time_warping)

- Note from Kenley:
    - I looked up how other cite dynamic time warping: https://www.google.com/search?q=how+to+cite+dynamic+time+warping&rlz=1C5CHFA_enUS766US766&oq=how+to+cite+dynamic+time+warping&aqs=chrome..69i57.5184j0j4&sourceid=chrome&ie=UTF-8
    - they cite who made the algorithm
    - you would need to cite me ahahahahahaha 

# Implementation with locallity constraint (window function)

- Python version is implemented in `apply_dynamic_time_warping.py`

```
int DTWDistance(s: array [1..n], t: array [1..m], w: int) {
    DTW := array [0..n, 0..m]

    w := max(w, abs(n-m)) // adapt window size (*)

    for i := 0 to n
        for j:= 0 to m
            DTW[i, j] := infinity
    DTW[0, 0] := 0
    for i := 1 to n
        for j := max(1, i-w) to min(m, i+w)
            DTW[i, j] := 0

    for i := 1 to n
        for j := max(1, i-w) to min(m, i+w)
            cost := d(s[i], t[j])
            DTW[i, j] := cost + minimum(DTW[i-1, j  ],    // insertion
                                        DTW[i  , j-1],    // deletion
                                        DTW[i-1, j-1])    // match

    return DTW[n, m]
}
```

Taken from [WikiWand](https://www.wikiwand.com/en/Dynamic_time_warping)