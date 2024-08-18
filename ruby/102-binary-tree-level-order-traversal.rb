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
# @return {Integer[][]}
def level_order(root)
  level_order = [[root.val]]
  nodes = [root]
  while !nodes.empty?
    nodes = next_level (nodes)
    level_order << nodes.map(&:val) if !nodes.empty?
  end
  level_order
end

def next_level(nodes)
  level_nodes = []
  nodes.each do |n|
    level_nodes << n.left if !n.left.nil?
    level_nodes << n.right if !n.right.nil?
  end
  level_nodes
end

p level_order(TreeNode.new(3, TreeNode.new(9, TreeNode.new(21), TreeNode.new(23)), TreeNode.new(20, TreeNode.new(15), TreeNode.new(7))))