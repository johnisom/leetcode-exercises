# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums) # TODO: can be optimized!
  results = []
  backtrack(nums, [], results)
  results
end

def backtrack(nums, tmp, results)
  return if tmp.uniq != tmp || results.include?(tmp.sort)
  results << tmp.dup.sort

  nums.each do |n|
    tmp << n
    backtrack(nums, tmp, results)
    tmp.pop
  end
end

# temp     -> current path of exploration
# results  -> successful finds


# [1, 2, 3]

# result = [
#   [],        <<
#   [1],       <<
#   [1, 1],    return
#   [1, 1, 1], return
#   [1, 1, 2], return
#   [1, 1, 3], return
#   [1, 2],    <<
#   [1, 2, 1], return
#   [1, 2, 2], return
#   [1, 2, 3], <<
#   [1, 2, 3, 1]
#   [1, 2, 3, 2]
#   [1, 2, 3, 3]
#   [1, 3],    <<
#   [1, 3, 1], return
#   [1, 3, 2], return
#   [1, 3, 3], return
#   [2],       <<
#   ...
#   [3]
#   ...
# ]

# def backtrack(list, temp, results)
#   if <<dead end condition>>
#     If candidate contains duplicates or if a sorted version of it is already in the results array
#       return
#   end

#   if <<success condition>>  # also can return if terminal condition (leaf node)
#     results << temp.dup
#   end

#   list.each do |n|
#     temp << n                        # take
#     backtrack(list, temp, results)   # explore
#     temp.pop                         # clean up

#   end
# end

# def some_problem(list)
#   results = []
#   backtrack(list, [], results)
#   results
# end

# p some_problem([1,2,3])
