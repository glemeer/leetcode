# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  return dfs(p,q)
end

def dfs(p,q)
  return true if p.nil? && q.nil?
  return false if p&.val != q&.val

  dfs(p&.left, q&.left) && dfs(p&.right, q&.right)
end

head1 = TreeNode.new(1, TreeNode.new(2), TreeNode.new(3))
head2 = TreeNode.new(1, TreeNode.new(2), TreeNode.new(3))

p is_same_tree(head1, head2)

head1 = TreeNode.new(1, TreeNode.new(2), TreeNode.new(3, TreeNode.new(4, TreeNode.new(6), TreeNode.new(7)), TreeNode.new(5)))
head2 = TreeNode.new(1, TreeNode.new(2), TreeNode.new(3, TreeNode.new(4, TreeNode.new(7), TreeNode.new(6)), TreeNode.new(5)))

p is_same_tree(head1,head2)