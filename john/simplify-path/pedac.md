# Simplify Path #

## Understanding the Problem ##

Given: unix-style **absolute** path
- Starts with a slash

Objective: Simplify to the shortest possible pathname

Rules:
- Must start with “/”
- //// === /
  - Multiple slashes in a row means single slash
- Impossible to go levels above root directory
- No trailing slashes
- .. means up a directory
- . means current directory
- Implicit: directories and filenames can have dots in them

Get rid of ./ as much as we can (assuming it’s not part of a fille/directory
name)

## Examples ##

Input: /../////../.././././../.conf.d///../.conf.d/../foobar/baz.bam/././
Output: /foobar/baz.bam

## Data Structures ##

Input: full path name
Return: simplfied path name

Stack of directory names (no .., ., or /)

## Algorithm ##

"//foobar/../../baz"
["", "", "foobar", "..", "..", "baz"]

Before anything else, create Stack class.

1. Split string on slashes
2. Iterate thru each dirname
   - When we encounter "" or ".", continue on
   - When we encounter "..", pop most recent value from stack
     - Rescue and continue (eg path: "/../")
   - Else, add to stack
3. Initialize output ← ""
4. While !stack.empty?
   - output = "/" + stack.pop + output
5. Return output if not empty, otherwise "/"
