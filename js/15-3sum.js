/**
 * @param {number[]} nums
 * @return {number[][]}
 */
var threeSum = function(nums) {
  const triplets = [];

  nums.forEach((num, i) => {
    for(let j=i+1; j < nums.length; j++){
      k = nums.indexOf(0-nums[i]-nums[j], j+1)
      if (k > 0) {
        const triplet = [nums[i],nums[j],nums[k]].sort();
        let bFound = triplets.find(element => {
          return element[0] == triplet[0] &&
            element[1] == triplet[1] &&
            element[2] == triplet[2];
        });
        if (!bFound)
          triplets.push(triplet);
      }
    }
  })
  return triplets;  
};

console.log(threeSum([-1,0,1,2,-1,-4]));
console.log(threeSum([0,1,1]));
console.log(threeSum([0,0,0]));