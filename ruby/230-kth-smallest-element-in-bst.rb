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
# @param {Integer} k
# @return {Integer}
def kth_smallest(k, root)
  n = 0
  stack = []
  curr = root
  
  while curr || !stack.empty?
    while curr
      stack << curr
      curr = curr.left
    end

    curr = stack.pop
    n += 1
    return curr.val if n == k
    curr = curr.right
  end
end

p kth_smallest(4, TreeNode.new(5, TreeNode.new(3, TreeNode.new(2, TreeNode.new(1)), TreeNode.new(4)), TreeNode.new(6)))