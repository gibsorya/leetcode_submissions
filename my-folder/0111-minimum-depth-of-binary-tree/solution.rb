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
# @return {Integer}
def min_depth(root)
    dfs(root)
end

def dfs(root)
    return 0 if root == nil

    if root.left == nil
        return 1 + dfs(root.right) 
    elsif root.right == nil
        return 1 + dfs(root.left)
    end

    1 + [dfs(root.left), dfs(root.right)].min
end
