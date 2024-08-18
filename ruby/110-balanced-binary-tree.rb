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
# @return {Boolean}
def is_balanced(root)
    $balanced=true
    is_subtree_balanced(root)
    $balanced
end

def is_subtree_balanced (node)
    return -1 if node.nil?

    left_depth = 1 + is_subtree_balanced(node.left)
    right_depth = 1 + is_subtree_balanced(node.right)
    $balanced = false if (left_depth - right_depth).abs > 1

    [left_depth, right_depth].max
end

node2 = TreeNode.new(2)
node5 = TreeNode.new(5)
node6 = TreeNode.new(6)
node7 = TreeNode.new(7)
node4 = TreeNode.new(4,node6,node7)
node3 = TreeNode.new(3,node4,node5)
node1 = TreeNode.new(1,node2,node3)

p is_balanced(node1)