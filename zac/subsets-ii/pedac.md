# Subset II

## UNDERSTAND THE PROBLEM!
Given a collection of integers that might contain duplicates, nums, return all possible subsets (the power set).

Note: The solution set must not contain duplicate subsets.

## EXAMPLES
Input: [1,2,2]
Output:
[
  [2],
  [1],
  [1,2,2],
  [2,2],
  [1,2],
  []
]

## DATA STRUCTURES
Input: Array of integers (positive or negative)
Result: Array that contains all distinct subsets of input


## ALGORITHMS
```ruby
def some_problem(list)
  results = []
  backtrack(list, [], results)
  results
end

def backtrack(list, temp, results)
  if temp size is greater than list size
    return
  end

  if temp is not already in results
    results << temp.dup
  end

  list.each do |n|
    # next if <<dont want to take; redundant to dead-end condition above (only need 1)>>

    temp << n                        # take
    backtrack(list, temp, results)   # explore
    temp.pop                         # clean up
  end
end

p some_problem([1,2,3])
```
