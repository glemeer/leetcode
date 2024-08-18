/**
 * @param {string} s
 * @return {number}
 */
var lengthOfLongestSubstring = (s) => {
  let subString = "";
  let maxLen = 0;
  let i = 0;

  for (const c of s) {
    if (!subString.includes(c)) {
      subString += c;
      i++;
      maxLen = Math.max(i, maxLen)
    }
    else {
      subString = subString.substring(subString.indexOf(c) + 1) + c;
      i = subString.length;
    }
    // console.log(subString, c);
  }

  return maxLen;
};

// var lengthOfLongestSubstring = function (s) {
//   const set = new Set();
//   let l = 0;
//   let max = 0;

//   for (let r = 0; r < s.length; r++) {
//       while (set.has(s[r])) {
//           set.delete(s[l]);
//           l++;
//           console.log(set, l, s[r])
//       }
//       set.add(s[r]);
//       max = Math.max(max, set.size);
//   }
//   return max;
// };

// console.log(lengthOfLongestSubstring("abcabcbb"));
// console.log(lengthOfLongestSubstring("bbbbb"));
// console.log(lengthOfLongestSubstring("pwwkewx"));
console.log(lengthOfLongestSubstring("abcdefgchijklmnopc"));