# Permutations II #

## Understanding the Problem ##

Given a collection of non-distinct numbers, return all possible unique
permutations.

## Examples ##

Example 1:
- Input: [1, 1, 2]
- Return: [[1, 1, 2], [1, 2, 1], [2, 1, 1]]

Example 2:
- Input: [1, 1, 1, 1]
- Return [[1, 1, 1, 1]]

Example 3:
- Input: []
- Return: [[]]

Example 4:
- Input: [1, 2]
- Return: [[1, 2], [2, 1]]

```
Input: [1, 1, 2]

     1           x           2
   / | \       / | \       / | \
  x  1  2     1  x  2     1  1  x
//| ||| |\\ //| ||| |\\ //| ||| |\\
xxx xx2 x1x xx2 xxx 1xx x1x 1xx xxx

Result: [
  [1, 1, 2],
  [1, 2, 1],
  [1, 1, 2],
  [1, 2, 1],
  [2, 1, 1],
  [2, 1, 1],
]

Input: [1, 2]

    1       2
   / \     / \
  x   2   1   x
  
Result: [
  [1, 2],
  [2, 1]
]
```

## Data Structures ##

Set/hash:
- Current indices in the temp

We can keep track of the last number on the same level used as a candidate
- Initialize outside of loop to be nil
- Updated on each iteration

## Algorithm ##

If the current number is equal to the last number that was used in a candidate, prune whole tree

``` ruby
def backtrack(list, temp, temp_set, results) # results is a set
  if list.size == temp.size
    results.add(temp.dup)
    return 
  end

  list.each_with_index do |n, i|
    next if !temp_set.add?(i)
    
    temp << n
    backtrack(list, temp, temp_set, results)
    temp.pop
    temp_set.delete(i)
  end
end
```
