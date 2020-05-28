def move_zeroes(nums)
  read = 0
  write = 0

  while read < nums.length
    if nums[read] != 0
      nums[write] = nums[read]
      write += 1
    end

    read += 1
  end

  while write < nums.length
    nums[write] = 0
    write += 1
  end

  nums
end
