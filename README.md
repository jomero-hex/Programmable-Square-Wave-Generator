# Programmable-Square-Wave-Generator

## Description

A programmable square wave generator is a circuit that can generate a square wave with variable
on (i.e., logic ’1’) and off (i.e., logic ’0’) intervals. The durations of the intervals are specified by
two 4-bit control signals, m and n, which are interpreted as unsigned integers. The on and off
intervals are m*100 ns and n*100 ns, respectively (recall that the period of the onboard oscillator
is 10 ns). 

Design a programmable square wave generator circuit. The circuit should be
completely synchronous. We need a logic analyzer or oscilloscope to verify its operation
