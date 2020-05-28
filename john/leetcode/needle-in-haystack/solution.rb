def str_str(haystack, needle)
  return 0 if needle.empty?

  0.upto(haystack.size - 1) do |haystack_idx|
    return haystack_idx if haystack[haystack_idx, needle.size] == needle
  end
  
  -1
end
