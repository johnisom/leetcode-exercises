# word_break.rb

def word_break(s, word_dict, pointer=0)
  return true if word_dict.includes?(s)

  word_dict.each do |word|
    substr = word[pointer..word.length]
    if substr == word
      return true if word_break(s, word_dict, pointer + word.length)
    end
  end

  false
end
