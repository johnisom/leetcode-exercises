# combination_sum.rb

def combination_sum(candidates, target)
  results = []
  backtrack(candidates.sort, target, [], results, 0)
  results
end

def backtrack(candidates, target, temp, results, sum)
  if sum >= target
    results << temp.dup if sum == target
    return
  end

  candidates.each do |n|
    next if !temp.empty? && temp[-1] > n

    temp << n
    sum += n
    backtrack(candidates, target, temp, results, sum)
    temp.pop
    sum -= n
  end
end