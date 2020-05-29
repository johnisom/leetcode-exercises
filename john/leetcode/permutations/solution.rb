def permute(list)
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
