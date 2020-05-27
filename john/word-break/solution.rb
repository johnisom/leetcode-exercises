def word_break(s, word_dict, str_idx = 0, memo = {})
  return true if str_idx == s.size
  return memo[str_idx] if memo[str_idx]

  word_dict.each do |word|
    end_idx = str_idx + word.size
    substr = s.slice(str_idx...end_idx)
     if substr == word && word_break(s, word_dict, end_idx, memo)
       return memo[str_idx] = true
     end
  end

  memo[str_idx] = false
end
