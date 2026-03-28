# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} inorder
# @param {Integer[]} postorder
# @return {TreeNode}
def build_tree(inorder, postorder)
    indices = inorder.map.with_index { |v, i| [v,i] }.to_h
    @index = postorder.length - 1
    dfs(0, inorder.length - 1, indices, postorder)
end

def dfs(l, r, indices, postorder)
    return nil if l > r
    node_val = postorder[@index]
    @index -= 1
    node = TreeNode.new(node_val)
    mid = indices[node_val]
    node.right = dfs(mid + 1, r, indices, postorder)
    node.left = dfs(l, mid - 1, indices, postorder)
    node
end
