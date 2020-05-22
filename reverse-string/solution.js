const reverseString = (string) => {
  start = 0;
  end = string.length - 1;

  while (start < end) {
    [string[start], string[end]] = [string[end], string[start]];
    ++start;
    --end;
  }

  return string;
}

console.log(reverseString(['h', 'e', 'l', 'l', 'o']));
