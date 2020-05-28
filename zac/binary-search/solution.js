function binarySearch(orderedAry, target) {
  let lower = 0;
  let upper = orderedAry.length - 1;

  while (lower <= upper) {
    const midpoint = Math.floor((upper + lower) / 2);
    const valueAtMidpoint = orderedAry[midpoint];

    if (target < valueAtMidpoint) {
      upper = midpoint - 1;
    } else if (target > valueAtMidpoint) {
      lower = midpoint + 1;
    } else if (target === valueAtMidpoint) {
      return midpoint;
    }
  }

  return undefined;
}

console.log(binarySearch([1, 2, 3, 4, 5, 6], 1));

