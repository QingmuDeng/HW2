# HW2 Submission

 * Two-bit Full Adder

    Truth Table:
      ```
      Cin a  b | Cout  Sum
       0  0  0 |  0     0
       0  0  1 |  0     1
       0  1  0 |  0     1
       0  1  1 |  1     0
       1  0  0 |  0     1
       1  0  1 |  1     0
       1  1  0 |  1     0
       1  1  1 |  1     1
      ```
    Waveforms:
    ![adder](https://github.com/QingmuDeng/HW2/blob/master/img/adder0.png)
      1. Initialization
      2. When `Cin` is 0, and either `a` or `b` is 1
      3. When `Cin` is 0, and both `a` and `b` are 1
      4. When `Cin` is 1, and either `a` or `b` is 1
      5. When `Cin` is 1, and both `a` and `b` are 1

 * Multiplexer
    Truth Table:
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
    Waveforms:
    ![mux](https://github.com/QingmuDeng/HW2/blob/master/img/mux0.png)
      1. Initialization
      2. When Address `00` is selected
      3. When Address `01` is selected
      4. When Address `10` is selected
      5. When Address `11` is selected

 * Decoder with enable
    Truth Table:
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
    Waveforms:
    ![decoder](https://github.com/QingmuDeng/HW2/blob/master/img/decoder0.png)
      1. Initialization
      2. When `En` is 0
      3. When `EN` is 1 and Address `00` is selected
      4. When `EN` is 1 and Address `01` is selected
      5. When `EN` is 1 and Address `10` is selected
      6. When `EN` is 1 and Address `11` is selected
