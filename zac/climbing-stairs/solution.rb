def climb_stairs(n, cache={1 => 1, 2 => 2}, count=3)
  return cache[n] if cache[n]

  cache[count] = cache[count - 1] + cache[count - 2]
  climb_stairs(n, cache, count + 1)
end


