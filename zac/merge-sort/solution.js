function mergeSort(ary) {
  if (ary.length == 1) return ary;

  let midpoint = Math.floor(ary.length / 2);
  let left = ary.slice(0, midpoint);
  let right = ary.slice(midpoint);
  let leftSorted = mergeSort(left);
  let rightSorted = mergeSort(right);

  return merge(leftSorted, rightSorted);
}

function merge(a1, a2) {
  let merged = [];
  let p1 = 0;
  let p2 = 0;

  while (p1 < a1.length || p2 < a2.length) {
    if (a1[p1] !== undefined && a2[p2] != undefined) {
      if (a1[p1] < a2[p2]) {
        merged.push(a1[p1]);
        p1 += 1;
      } else {
        merged.push(a2[p2]);
        p2 += 1;
      }
    } else {
      if (a1[p1] !== undefined) {
        merged = [...merged, ...a1.slice(p1)];
        break;
      } else {
        merged = [...merged, ...a2.slice(p2)];
        break;
      }
    }
  }

  return merged
}

console.log(mergeSort([1, 14, 9, 11, 44, 8, 16, 2]));
