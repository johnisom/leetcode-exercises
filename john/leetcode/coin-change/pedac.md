# Coin Change #

## Understanding the Problem ##

Given a list of coin denominations (`coins`) and a total amount to get up to
(`amount`) find the number of the least amount of coins to sum up to `amount`.

## Examples ##

Example 1:
- Input: coins = [1, 2, 5], amount = 11
- Return: 3
  - Because it only takes 3 coins to add up to 11 (5, 5, 1)

Example 2:
- Input: coins = [2], amount = 3
- Return: -1
  - Because there are no coin combinations that can yield 3

Example 3:
- Input: coins = [1], amount = 100
- Return: 100

Example 4:
- Input: coins = [1, 7], amount = 48
- Return: 12 (6x7, 6x1)

Example 5:
- Input: coins = [3, 5], amount = 6
- Return: 2 (3, 3)

## Data Structures ##

given:
- coins
- amount

mine:
- pointer pointing to current coin

ephemeral value:
- sum
  - current sum of coins so far
- count
  - amount of times a value was added to sum

## Algorithm ##

Base case:
- If pointer = -1
  - return -1

Loop base case:
- If sum == amount
  - return count


0. Sort coins and pass to helper function
1. Recursive base case
2. Iterate over coins backwards from coin_pointer to 0 |coin|
   - Until sum >= amount
     - Add coin to sum
     - Increment count
   - If sum == amount, return count
     - “Loop base case”
   - Subract coin from sum
   - Decrement count
3. Loop
   1. Subtract coins[coin_pointer] from sum
   2. Decrement count
   3. recursive_count = coin_helper(coins, amount - sum, coin_pointer - 1)
   4. If recursive_count is > -1, return count + recursive count
   5. If recursive_count is -1 and count is 0, return -1

### Playground ###

coins = [1, 2, 5], amount = 11, pointer = 2



[1, 2, 5]
       ^

sum = 11
count = 3

coin = 1


Returned: 3

────────────────────────────────────────────────────────────

coins = [3, 5], amount = 6, coins_pointer = 1

[3, 5]
    ^
(^ = coins_pointer)

sum = 0
count = 0

recursive_count = 2

Returned: 2

┌──────────────┐
coins = [3, 5], amount = 6, coins_pointer = 0

[3, 5]
 ^

sum = 6
count = 2

coin = 3

Returned: 2
