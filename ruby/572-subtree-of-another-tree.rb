# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

# @param {TreeNode} root
# @param {TreeNode} sub_root
# @return {Boolean}
def is_subtree(root, sub_root)
  return true if root.nil? and sub_root.nil?
  return false if root.nil? and !sub_root.nil?
  return false if !root.nil? and sub_root.nil?

  if root.val != sub_root.val
    is_subtree(root.left, sub_root) || is_subtree(root.right, sub_root)
  else
    is_subtree(root.left, sub_root.left) && is_subtree(root.right, sub_root.right)
  end
end

tree1 = TreeNode.new(3, TreeNode.new(4), TreeNode.new(5, TreeNode.new(1), TreeNode.new(2)))
tree2 = TreeNode.new(5, TreeNode.new(1), TreeNode.new(2))

p is_subtree(tree1, tree2)