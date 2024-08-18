/**
 * @param {string[]} strs
 * @return {string[][]}
 */
var groupAnagrams = function(strs) {
  const result = new Object();
  const output_array = [];

  strs.forEach(str => {
    const sort_str = str.split("").sort().join("");
    result[sort_str] ||= []
    result[sort_str].push(str)
  });
  Object.keys(result).map(key => output_array.push(result[key]));
  return output_array;
};

console.log(groupAnagrams(["eat","tea","tan","ate","nat","bat"]));
console.log(groupAnagrams([""]));
console.log(groupAnagrams(["a"]));
