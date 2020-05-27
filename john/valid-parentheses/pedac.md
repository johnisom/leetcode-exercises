# Valid Parentheses #

## Understanding the Problem ##

Given a string of any of these chars: ‘[]{}()’, determine if the combinations
are valid.

Valid combinations have attributes:
- There are an equal amount of opening and closing for each type
- They’re closed in order
- Must be opened before it’s closed

## Examples ##

Omitted.

## Data Structures ##

Input:
- String of parens/braces/brackets

Hash table of open and close combinations:
- "[" → "]"
- "{" → "}"
- "(" → ")"

Stack:
- Store the opening parens/braces/brackets as they come

## Algorithm ##

1. If the string is empty, return true
2. Initialize table and opening parens stack
3. Iterate thru each char in input string |paren|
   - If paren is opening, push to stack
   - Else if stack.empty?, return false
   - Else if table[stack.peek] != paren, return false
   - Otherwise, pop from stack
4. If the stack isn’t empty, return false, otherwise true
