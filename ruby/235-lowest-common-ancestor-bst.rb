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
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  curr = root

  while root
    if p.val < curr.val && q.val < curr.val
      curr = curr.left
    elsif p.val > curr.val && q.val > curr.val
      curr = curr.right
    else
      return curr
    end
  end
    
end

p lowest_common_ancestor(TreeNode.new(6, 
TreeNode.new(2, TreeNode.new(0), TreeNode.new(4, TreeNode.new(3), TreeNode.new(5))), 
TreeNode.new(8, TreeNode.new(7), TreeNode.new(9))), TreeNode.new(2), TreeNode.new(4))