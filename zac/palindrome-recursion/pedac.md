# Palindrome using Recursion

## Understand the Problem
Given a str, determine whether it is a palindrome.

## Example
'Otto' -> true (case insensitive)
'Otis' -> false
'Otto!' -> true

Assume:
-only consider alphabetical chars
-ignore case
-ignore spaces
-empty str or one length returns true (base case)

## Data Structure
-input string

## Algorithm
palindrome?
- downcase input str
  clean string = use regex to filter out non alphabetical chars
- pass clean str to validate_clean_string_as_palindrome
  - return true if length of input str is 0 or 1
  - if lower case of first and last chars are not equal
      return false
    else
      recurse(str(1, -2))
