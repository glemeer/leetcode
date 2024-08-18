# Definition for a Node.
class Node
  attr_accessor :val, :neighbors
  def initialize(val = 0, neighbors = nil)
    @val = val
    @neighbors =  neighbors.nil? ? [] : neighbors
  end
end

# @param {Node} node
# @return {Node}
def clone_graph(node)
  $new_graph = {}

  return dfs(node)
end

def dfs(node)
  return unless node
  return $new_graph[node] if $new_graph.key? (node)

  copy = Node.new(node.val)
  $new_graph[node] = copy
  node.neighbors.each do |n|
    copy.neighbors << dfs(n)
  end

  copy
end

node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)
node4 = Node.new(4, [node1, node3])
node3.neighbors = [node2, node4]
node2.neighbors = [node1, node3]
node1.neighbors = [node2, node4]

p clone_graph(node1)