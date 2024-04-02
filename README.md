# Numerical Methods - Geometric Sequence
Three numbers x1, x2, x3 form a geometric sequence such that x1 >= x3. Given the sum of these numbers S=x1+x2+x3 and their product P=x1*x2*x3, determine these numbers.

This may not always be possible (e.g., if incorrect data is provided), in which case the expected response is 0.0, 0.0, 0.0.

Remarks:
Only float type for floating-point variables is allowed. The use of the double keyword will result in rejection of the solution.
Results should be outputted in scientific notation with 10 significant digits.
Results will be considered correct if, with respect to the reference solution, the absolute error of each number of the result is less than 10^-25 or the relative error does not exceed 10^-6.

Input
N
P1 S1
...
PN SN
where
N - number of sequences,
Pi Si - product and sum of the first three terms of the i-th geometric sequence.
Output
a1 b1 c1
...
aN bN cN
where
ai bi ci - terms of the i-th geometric sequence, ai ≥ ci; if such a sequence does not exist, return 0.0 0.0 0.0.

Example
| Input                               | Output                              |
|-------------------------------------|-------------------------------------|
| 9 <br>1.0000000000e+00 3.0000000000e+00 <br>6.4000000000e+01 2.1000000000e+01 <br>-6.4000000000e+01 -2.1000000000e+01 <br>6.4000000000e+01 -1.3000000000e+01 <br>-6.4000000000e+01 1.3000000000e+01 <br>1.0000000150e+30 1.0000000200e+20 <br>1.0000000150e+30 -1.0000000200e+20 <br>0.0000000000e+00 0.0000000000e+00 <br>1.0000000000e+02 1.0000000000e+00 | 1.0000000000e+00 1.0000000000e+00 1.0000000000e+00 <br>1.6000000000e+01 4.0000000000e+00 1.0000000000e+00 <br>-1.0000000000e+00 -4.0000000000e+00 -1.6000000000e+01 <br>-1.0000000000e+00 4.0000000000e+00 -1.6000000000e+01 <br>1.6000000000e+01 -4.0000000000e+00 1.0000000000e+00 <br>1.0000000200e+20 1.0000000000e+10 1.0000000000e+00 <br>-1.0000000000e+00 1.0000000000e+10 -1.0000000200e+20 <br>0.0000000000e+00 0.0000000000e+00 0.0000000000e+00 <br>0.0000000000e+00 0.0000000000e+00 0.0000000000e+00 |


