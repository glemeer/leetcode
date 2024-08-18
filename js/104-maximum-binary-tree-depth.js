/**
 * Definition for a binary tree node.
 */
function TreeNode(val, left, right) {
  this.val = (val===undefined ? 0 : val)
  this.left = (left===undefined ? null : left)
  this.right = (right===undefined ? null : right)
  }

// /**
//  * @param {TreeNode} root
//  * @return {number}
//  */
var maxDepth = function(root) {
  if (root===undefined || root==null) return 0 
  if (root.left==null && root.right==null) return 1

  const left = maxDepth(root.left)
  const right = maxDepth(root.right)
  const height = Math.max(left, right)

  return height + 1
};

let root = new TreeNode(3, new TreeNode(9), new TreeNode(20, new TreeNode(15), new TreeNode(7)));
console.log(root)
console.log(maxDepth(root))