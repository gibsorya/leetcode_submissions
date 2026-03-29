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
def sum_numbers(root)
    return dfs(root, 0)
end

def dfs(root, sum)
    if(root == nil)
        return 0
    end

    sum = sum * 10 + root.val

    if root.left == nil && root.right == nil
        return sum
    end

    return dfs(root.left, sum) + dfs(root.right, sum)
end
