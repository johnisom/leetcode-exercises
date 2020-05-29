def subsets_with_dup(nums)
  results = []
  backtrack(nums.sort, [], results, 0, {})
  results
end

def backtrack(nums, temp, results, pointer, hash)
  return if temp.size > nums.size
  results << temp.dup and hash[temp] = true unless hash.key?(temp)

  pointer.upto(nums.length - 1) do |i|
    temp << nums[i]
    backtrack(nums, temp, results, i + 1, hash)
    temp.pop
  end
end
