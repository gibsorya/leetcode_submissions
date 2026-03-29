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
def is_symmetric(root)
    dfs(root.left, root.right)
end

def dfs(left_tree, right_tree)
    return true if !left_tree && !right_tree
    return false if !left_tree || !right_tree

    if right_tree.val == left_tree.val
        return dfs(left_tree.left, right_tree.right) && dfs(left_tree.right, right_tree.left)
    else
        false
    end
end
