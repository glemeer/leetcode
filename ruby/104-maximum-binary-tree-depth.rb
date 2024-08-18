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
# @return {Integer}
def max_depth(root)
    return 0 if root.nil?
    return 1 if root.left.nil? && root.right.nil?
    
    left = 1 + max_depth(root.left)
    right = 1 + max_depth(root.right)
    [left, right].max
end

node2 = TreeNode.new(2)
node5 = TreeNode.new(5)
node6 = TreeNode.new(6)
node7 = TreeNode.new(7)
node4 = TreeNode.new(4,node6,node7)
node3 = TreeNode.new(3,node4,node5)
node1 = TreeNode.new(1,node2,node3)

p max_depth(node1)