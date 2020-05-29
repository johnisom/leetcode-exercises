def permute_unique(nums)
  result = Set.new
  backtrack(nums, [], Set.new, result)
  result.to_a
end

def backtrack(list, temp, temp_set, results)
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
