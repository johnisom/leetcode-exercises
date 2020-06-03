/**
 * @param {string} s
 * @return {number}
 */

// alg: create hash of numerals to ints
//      create hash of 'lesser' combinations
//      two pointers, starting at first and second chars
//      if first char is greater than second
//        add first char value to sum
//        increment both pointers by 1
//      else
//        add lesser[first + second] to sum
//        increment both pointers by 2
//      return sum

const numeralsToInts = {
  I: 1,
  V: 5,
  X: 10,
  L: 50,
  C: 100,
  D: 500,
  M: 1000,
}

const lesser = {
  IV: 4,
  IX: 9,
  XL: 40,
  XC: 90,
  CD: 400,
  CM: 900,
}

var romanToInt = function(s) {
  s = s.toUpperCase();
  let sum = 0;
  let currentIdx = 0;

  while (currentIdx < s.length) {
    let first = s[currentIdx];
    let second = s[currentIdx + 1];

    if (numeralsToInts[second] > numeralsToInts[first]) {
      sum += lesser[first + second];
      currentIdx += 2;
    } else {
      sum += numeralsToInts[first];
      currentIdx += 1;
    }
  }

  return sum;
};

// should output true
console.log(romanToInt('') === 0);
console.log(romanToInt('iii') === 3);
console.log(romanToInt('III') === 3);
console.log(romanToInt('IV') === 4);
console.log(romanToInt('IX') === 9);
console.log(romanToInt('LVIII') === 58);
console.log(romanToInt('MCMXCIV') === 1994);
