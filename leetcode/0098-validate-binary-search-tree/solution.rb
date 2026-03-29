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
def is_valid_bst(root)
    dfs(root, nil, nil)
end

def dfs(root, low, high)
    return true if root == nil

    return false if (low != nil && root.val <= low.val) || (high != nil && root.val >= high.val)

    dfs(root.right, root, high) && dfs(root.left, low, root)
end
