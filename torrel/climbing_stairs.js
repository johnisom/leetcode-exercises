const climbStairs = (n, cache={}) => {
  if (n === 1) { return 1 }
  if (n === 2) { return 2 }
  
  if (cache[n]) {
    return cache[n];
  }
  
  cache[n] = climbStairs(n - 1, cache) + climbStairs(n - 2, cache);
  return cache[n];
};
