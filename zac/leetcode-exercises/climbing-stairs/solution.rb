# # Bottom Up
# def climb_stairs(n, cache={1 => 1, 2 => 2}, count=3)
#   return cache[n] if cache[n]

#   cache[count] = cache[count - 1] + cache[count - 2]
#   climb_stairs(n, cache, count + 1)
# end

# Top Down
def climb_stairs(n)
  return 1 if n == 1
  return 2 if n == 2
  return cache[n] if cache[n]

  cache[n] = climb_stairs(n - 1) + climb_stairs(n - 2)
end
