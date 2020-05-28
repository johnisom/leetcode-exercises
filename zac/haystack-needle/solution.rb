# @param {String} haystack
# @param {String} needle
# @return {Integer}

# alg:  iterate through haystack
#       if haystack from current index to needle length == needle return index

def str_str(haystack, needle)
  return 0 if needle.length == 0

  index = -1
  chars = haystack.chars

  chars.each_index do |index|
    return index if haystack[index, needle.length] == needle
  end

  index
end

p str_str('aaaaaa', 'bba') == -1
p str_str('aa', '') == 0
