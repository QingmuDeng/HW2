# HW2 Submission

 * Two-bit Full Adder

    Truth Table:
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
    Waveforms(Click on the image to view it in full screen):
    ![adder](https://raw.githubusercontent.com/QingmuDeng/HW2/master/img/adder0.png)
      1. To initialize, `Cin`, `a`, and `b` are set to zero. The outputs, `Cout` and `Sum`, would also be zero accordingly.
      2. When `Cin` is 0, and either `a` or `b` is 1, `sum` goes up to 1 after a certain amount of delay while `carryout` stays low as it is supposed to. 
      3. When `Cin` is 0, and both `a` and `b` are 1, `sum` goes to low as the two numbers add up to 2 in based ten and `10` in base two. Accordingly, `Cout` goes to high after a certain amount of delay.
      4. When `Cin` is 1, and either `a` or `b` is 1, `sum` stays low as the `Cin` and either `a` or `b` bit add up to 2 in based ten and `10` in base two. `Cout` stays high.
      5. When `Cin` is 1, and both `a` and `b` are 1, `sum` goes low as the all three bits add up to 3 in based ten and `11` in base two. `Cout` stays high.

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
    Waveforms(Click on the image to view it in full screen):
    ![mux](https://raw.githubusercontent.com/QingmuDeng/HW2/master/img/mux0.png)
      1. To initialize, both address bits and input bits are set to zero. The output, `out`, would also be zero accordingly.
      2. When Address `00` is selected, the values at `in0` is copied by the output after a certain amount of delay regardless of the values at other inputs.
      3. When Address `01` is selected, the values at `in0` is copied by the output after a certain amount of delay regardless of the values at other inputs.
      4. When Address `10` is selected, the values at `in0` is copied by the output after a certain amount of delay regardless of the values at other inputs.
      5. When Address `11` is selected, the values at `in0` is copied by the output after a certain amount of delay regardless of the values at other inputs.
      
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
    Waveforms(Click on the image to view it in full screen):
    ![decoder](https://raw.githubusercontent.com/QingmuDeng/HW2/master/img/decoder0.png)
      1. Initialization
      2. When `En` is 0, the outputs are zeros regardless.
      3. When `EN` is 1 and Address `00` is selected, `O0` is 1 while all others are zeros.
      4. When `EN` is 1 and Address `01` is selected, `O1` is 1 while all others are zeros.
      5. When `EN` is 1 and Address `10` is selected, `O2` is 1 while all others are zeros.
      6. When `EN` is 1 and Address `11` is selected, `O3` is 1 while all others are zeros.
