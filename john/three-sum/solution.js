const threeSum = (nums) => {
  nums.sort((a, b) => a - b);

  const result = [];

  let s = 0;
  let e = nums.length - 1;

  while (e - s > 1) {
    const pointerSum = nums[s] + nums[e];
    const target = -pointerSum;
    /*
    console.log('---');
    console.log('nums', nums);
    console.log('s', s);
    console.log('e', e);
    console.log('pointerSum', pointerSum);
    console.log('target', target);
    console.log('---');
    */
    const innerSlice = nums.slice(s + 1, e);

    if (binarySearch(innerSlice, target) !== -1) {
      result.push([nums[s], target, nums[e]]);
    }

    if (pointerSum === 0) {
      /*
      let pointerSum = nums[s] + nums[e - 1];
      let target = -pointerSum;
      let innnerSlice = nums.slice(s + 1, e - 1);
      if (binarySearch(innerSlice, target) !== -1) {
        result.push([nums[s], target, nums[e - 1]]);
      }

      pointerSum = nums[s + 1] + nums[e];
      target = -pointerSum;
      innnerSlice = nums.slice(s + 2, e);
      if (binarySearch(innerSlice, target) !== -1) {
        result.push([nums[s + 1], target, nums[e]]);
      }
      */
      --e;
      ++s;
    } else if (pointerSum < 0) {
      ++s;
    } else {
      --e;
    }
  }

  return result;
};

const binarySearch = (sortedArr, target) => {
  let s = -1;
  let e = sortedArr.length;
  let m = Math.floor((e + s) / 2);

  while (e - s > 1) {
    if (sortedArr[m] === target) {
      return m;
    } else if (sortedArr[m] < target) {
      s = m;
      m = Math.floor((e + s) / 2);
    } else {
      e = m;
      m = Math.floor((e + s) / 2);
    }
  }

  return -1;
};

//console.log(threeSum([-1,0,1,2,-1,-4]));
