# 94. Binary Tree Inorder Traversal
# Easy
# https://leetcode.com/problems/binary-tree-inorder-traversal

=begin
Given the root of a binary tree, return the inorder traversal of its nodes' values.

Example 1:
Input: root = [1,null,2,3]
Output: [1,3,2]

Example 2:
Input: root = []
Output: []

Example 3:
Input: root = [1]
Output: [1]

Constraints:
The number of nodes in the tree is in the range [0, 100].
-100 <= Node.val <= 100
=end

# frozen_string_literal: true

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
# @return {Integer[]}
def inorder_traversal(root)
  ret = []
  stack = [root]
  while true
    top = stack[-1]
    if !top&.left.nil?
      stack << top.left
    else
      t = stack.pop
      t = stack.pop if t.nil?
      break if t.nil?
      ret << t.val
      stack << t.right
    end
  end
  ret
end

# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal2(root, ret = [])
  return if root.nil?

  inorder_traversal2(root.left, ret)
  ret << root.val
  inorder_traversal2(root.right, ret)
  ret
end
p inorder_traversal(TreeNode.new(1, TreeNode.new(2,TreeNode.new(4), 
TreeNode.new(5, TreeNode.new(8), TreeNode.new(9))),
TreeNode.new(3, TreeNode.new(6), TreeNode.new(7))))
p inorder_traversal2(TreeNode.new(1, TreeNode.new(2,TreeNode.new(4), 
TreeNode.new(5, TreeNode.new(8), TreeNode.new(9))),
TreeNode.new(3, TreeNode.new(6), TreeNode.new(7))))