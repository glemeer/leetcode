/**
 * @param {number[]} nums
 * @return {boolean}
 */
var containsDuplicate = function(nums) {
   let visited = [];
   
   for(let num of nums) {
    if (visited.includes(num) ) return true;
    visited.push(num);
   }
   return false;
};

console.log(containsDuplicate([1,2,,3,4]));