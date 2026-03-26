# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[]}
def preorder_traversal(root)
    @res = []
    dfs(root)
    @res
end

def dfs(root)
    return if !root

    @res.push(root.val)
    dfs(root.left)
    dfs(root.right)
end
