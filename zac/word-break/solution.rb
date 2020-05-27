def word_break(s, word_dict, memo={})
  return true if word_dict.include? s

  word_dict.each do |word|
    substr = s[0, word.length]
    leftover = s[word.length, s.length]

    if substr == word
      unless memo[substr]
        memo[substr] = word_break(leftover, word_dict, memo)
      end
    end
  end

  memo.any? { |_, bool| bool }
end

p word_break('cars', ['car', 'ca', 'rs']) == true
p word_break('applepenapple', ["apple", "pen"]) == true
p word_break('catsandog', ["cats", "dog", "sand", "and", "cat"]) == false
