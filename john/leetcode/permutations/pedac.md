# Permutations #

## Understanding the Problem ##

Given an array of **distinct** integers, return all possible permutations.

## Examples ##

Example 1:
- Input: []
- Return: [[]]

Example 2:
- Input: [1, 2, 3]
- Return: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]

Example 3:
- Input: [-1]
- Return: [[-1]]

## Data Structures ##

Given:
- Array of distinct ints

Result array:
- Array of permutations of input array

Candidate/temp array:
- Used to build up permutations for backtracking

[1, 2]

```
   1        2
  /|        |\
 1 2        1 2
```

## Algorithm ##

### Super Naïve Approach ###

```ruby
def problem(list)
  result = []
  backtrack(list, [], result)
  result
end

def backtrack(list, temp, results)

  if temp is same length as list
    if there are no duplicate values in temp
      results << temp.dup
    end
    
    return 
  end


  list.each do |n|
    temp << n                        # take
    backtrack(list, temp, results)   # explore
    temp.pop                         # clean up
  end
end
```

### Smart Approach ###

```ruby
def problem(list)
  result = []
  backtrack(list, [], result)
  result
end

def backtrack(list, temp, temp_set, results)

  if list.size == temp.size
    results << temp.dup
    
    return 
  end


  list.each do |n|
    next unless temp_set.add?(n)     # pruning

    temp << n                        # take
    backtrack(list, temp, results)   # explore
    temp.pop                         # clean up
    temp_set.delete(n)
  end
end
```
