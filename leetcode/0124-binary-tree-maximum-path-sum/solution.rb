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
def max_path_sum(root)
    @max_path = -Float::INFINITY
    dfs(root)
    @max_path
end

def dfs(root)
    return 0 unless root

    left_cost = [dfs(root.left), 0].max
    right_cost = [dfs(root.right), 0].max
    
    @max_path = [@max_path, left_cost + right_cost + root.val].max
    
    [left_cost, right_cost].max + root.val
end
