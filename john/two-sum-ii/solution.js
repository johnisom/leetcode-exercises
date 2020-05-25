const twoSum = (numbers, target) => {
  let start = 0;
  let end = numbers.length - 1;

  while (start < end) {
    const numSum = numbers[start] + numbers[end];
    if (numSum === target) {
      return [start + 1, end + 1];
    } else if (numSum < target) {
      ++start;
    } else {
      --end;
    }
  }
};
