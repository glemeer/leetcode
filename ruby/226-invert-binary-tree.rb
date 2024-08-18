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
# @return {TreeNode}
def invert_tree(root)
    return root if root.nil?
    return root if root.right.nil? && root.left.nil?

    root.right, root.left = root.left, root.right
    invert_tree(root.left)
    invert_tree(root.right)
    root
end

node1 = TreeNode.new(1)
node3 = TreeNode.new(3)
node6 = TreeNode.new(6)
node9 = TreeNode.new(9)
node2 = TreeNode.new(2, node1, node3)
node7 = TreeNode.new(7, node6, node9)
node4 = TreeNode.new(4, node2, node7)

p node4
p invert_tree(node4)