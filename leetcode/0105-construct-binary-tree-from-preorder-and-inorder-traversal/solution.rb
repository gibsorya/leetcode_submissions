# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} preorder
# @param {Integer[]} inorder
# @return {TreeNode}
def build_tree(preorder, inorder)
    indices = inorder.map.with_index { |v, i| [v, i] }.to_h
    @index = 0
    dfs(0, inorder.length - 1, indices, preorder)
end

def dfs(l, r, indices, preorder)
    return nil if l > r
    node_value = preorder[@index]
    @index += 1
    node = TreeNode.new(node_value)
    mid = indices[node_value]
    node.left = dfs(l, mid - 1, indices, preorder)
    node.right = dfs(mid + 1, r, indices, preorder)
    node
end
