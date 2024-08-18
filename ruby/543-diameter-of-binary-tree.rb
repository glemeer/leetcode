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
def max_diameter(root)
    $max = 0
    max_heigth = diameter(root)
    [$max, max_heigth].max
end

def diameter(node)
    return -1 if node.nil?

    left = 1 + diameter(node.left)
    right = 1 + diameter(node.right)
    diameter = left + right
    $max = diameter if diameter > $max

    left > right ? left : right
end

node2 = TreeNode.new(2)
node5 = TreeNode.new(5)
node6 = TreeNode.new(6)
node7 = TreeNode.new(7)
node4 = TreeNode.new(4,node6,node7)
node3 = TreeNode.new(3,node4,node5)
node1 = TreeNode.new(1,node2,node3)

p max_diameter(node1)