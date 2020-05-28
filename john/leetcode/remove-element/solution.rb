def remove_element(nums, val)
  write = 0
  
  nums.each_with_index do |num,read|
    unless num == val
      nums[write] = num
      write += 1
    end
  end
  
  nums.pop(nums.length - write)
  nums.length
end
