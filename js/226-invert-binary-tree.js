class TreeNode {
  constructor(val, left, right) {
    this.val = (val===undefined ? 0 : val)
    this.left = (left===undefined ? null : left)
    this.right = (right===undefined ? null : right)
  }
  print = () => {
    console.log(this.val);
  }
}

/**
 * @param {TreeNode} root
 * @return {TreeNode}
 */
var invertTree = function(root) {
  if (root == null) return root;
  if (root.left == null && root.right == null) return root;

  const temp = root.left;
  root.left = root.right;
  root.right = temp;
  invertTree(root.left);
  invertTree(root.right);
  return root;
};

console.log(invertTree(new TreeNode(4, new TreeNode(2, new TreeNode(1), new TreeNode(3)), 
  new TreeNode(7, new TreeNode(6), new TreeNode(9)))));
console.log(invertTree(new TreeNode(2, new TreeNode(1), new TreeNode(3))));
n=new TreeNode(7);
n.print();
