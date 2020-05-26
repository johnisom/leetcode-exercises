// unique_paths.js

const uniquePaths = (m, n, cache={}) => {
  let coordinates = `[${m}, ${n}]`;

  if (cache[coordinates]) {
    return cache[coordinates];
  }

  if (m === 1 || n === 1) {
    return 1;
  }

  cache[coordinates] = uniquePaths(m - 1, n, cache) + uniquePaths(m, n - 1, cache);
  return cache[coordinates];
};

console.log(uniquePaths(3, 2));
