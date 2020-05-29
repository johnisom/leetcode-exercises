def combine(n, k)
  result = []
  backtrack((1..n), [], result, k)
  result
end

def backtrack(range, temp, results, k)
  if temp.length == k
    results << temp.dup
  end

  range.each do |n|
    temp << n                                         # take
    backtrack((n + 1)..range.end, temp, results, k)   # explore
    temp.pop                                          # clean up
  end
end