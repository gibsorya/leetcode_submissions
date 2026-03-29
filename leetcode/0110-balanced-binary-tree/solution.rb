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
# @return {Boolean}
def is_balanced(root)
    return true if root == nil

    dfs(root, 0) >= 0
end

def dfs(root, height)
    return height unless root
    l = dfs(root.left, height + 1)
    r = dfs(root.right, height + 1)

    return -1 if l == -1 || r == -1 || (l - r).abs > 1

    [l, r].max
end
