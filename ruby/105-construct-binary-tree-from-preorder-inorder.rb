class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
  end
end

# @param {Integer[]} preorder
# @param {Integer[]} inorder
# @return {TreeNode}
def build_tree(preorder, inorder)
return if preorder.empty? || inorder.empty?

root = TreeNode.new(preorder[0])
mid = inorder.find_index(preorder[0])
root.left = build_tree(preorder[1..mid], inorder[0..mid])
root.right = build_tree(preorder[(mid+1)..], inorder[(mid+1)..])
root
end

p build_tree([3,9,20,15,7], [9,3,15,20,7])

# ----- Tests -----

# frozen_string_literal: true

#require "main"
require_relative '../lib/main'

RSpec.describe 'build_tree' do
  it "returns nil if at least one array empty" do
    expect(build_tree([],[])).to eq nil
  end

  it "returns root if only a single node" do
    expect(build_tree([-1],[-1]).val).to eq -1
    expect(build_tree([-1],[-1]).left).to eq nil
    expect(build_tree([-1],[-1]).right).to eq nil
  end

  it "returns reconstructed tree" do
    expect(build_tree([3,9,20,15,7], [9,3,15,20,7]).val).to eq 3
    expect(build_tree([3,9,20,15,7], [9,3,15,20,7]).left.val).to eq 9
    expect(build_tree([3,9,20,15,7], [9,3,15,20,7]).right.val).to eq 20
  end
end