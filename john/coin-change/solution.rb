def coin_change(coins, amount)
  coin_helper(coins.sort, amount, coins.size - 1)
end

def coin_helper(coins, amount, coins_pointer)
  return -1 if coins_pointer == -1

  sum = 0
  count = 0

  coins_pointer.downto(0) do |coin_idx|
    coin = coins[coin_idx]

    until sum >= amount
      sum += coin
      count += 1
    end

    return count if sum == amount

    sum -= coin
    count -= 1
  end

  loop do
    sum -= coins[coins_pointer]
    count -= 1
    recursive_count = coin_helper(coins, amount - sum, coins_pointer - 1)

    return count + recursive_count if recursive_count > 0
    return -1 if recursive_count == -1
  end
end

# Test cases
# All should print "true"

test1_coins = [1, 2, 5]
test1_amount = 11
test1_result = 3

test2_coins = [2]
test2_amount = 3
test2_result = -1

test3_coins = [3, 5]
test3_amount = 6
test3_result = 2

puts coin_change(test1_coins, test1_amount) == test1_result
puts coin_change(test2_coins, test2_amount) == test2_result
puts coin_change(test3_coins, test3_amount) == test3_result
