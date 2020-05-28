# Roman to Integer #

## Problem ##

Given a roman numeral, convert it to an integer

I → 1
V → 5
X → 10
L → 50
C → 100
D → 500
M → 1000

If ‘I’ precedes ‘V’ or ‘X’, subtract 1.
If ‘X’ precedes ‘L’ or ‘C’, subtract 10.
If ‘C’ precedes ‘D’ or ‘M’, subtract 100.

## Examples ##

Omitted for now.

## Data Structure ##

- An integer for the result
- The input string
- The ‘previous character’
- A hash table for the values of the numerals

## Algorithm ##

Iterate through the string once, adding the value from the hash table to the
result. If the current character is
‘greater than’ (to be defined in a helper) previous character, subtract twice its
value. and updating the ‘previous character’
