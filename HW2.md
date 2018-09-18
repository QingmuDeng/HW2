

Two-bit full adder
```
Cin a  b | Cout  Sum | Expected Output
 0  0  0 |  0     0  |   0b00
 0  0  1 |  0     1  |   0b01
 0  1  0 |  0     1  |   0b01
 0  1  1 |  1     0  |   0b10
 1  0  0 |  0     1  |   0b01
 1  0  1 |  1     0  |   0b10
 1  1  0 |  1     0  |   0b10
 1  1  1 |  1     1  |   0b11
```

```
a0  a1  in0  in1  in2  in3  | out | Expected Output
0    0    1    0    0    0  |   1 | in0
0    0    0    1    1    1  |   0 | in0
1    0    0    1    0    0  |   1 | in1
1    0    1    0    1    1  |   0 | in1
0    1    0    0    1    0  |   1 | in2
0    1    1    1    0    1  |   0 | in2
1    1    0    0    0    1  |   1 | in3
1    1    1    1    1    0  |   0 | in3
```

```
En A0 A1| O0 O1 O2 O3 | Expected Output
0  0  0 |  0  0  0  0 | All false
0  1  0 |  0  0  0  0 | All false
0  0  1 |  0  0  0  0 | All false
0  1  1 |  0  0  0  0 | All false
1  0  0 |  1  0  0  0 | O0 Only
1  1  0 |  0  1  0  0 | O1 Only
1  0  1 |  0  0  1  0 | O2 Only
1  1  1 |  0  0  0  1 | O3 Only
```