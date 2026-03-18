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
# @param {Integer} target_sum
# @return {Integer[][]}
def path_sum(root, target_sum)
    @paths = Array.new
    dfs(root, target_sum, Array.new)
    @paths
end

def dfs(root, sum, path)
    return if root == nil
    sum -= root.val
    path.push(root.val)
    if(!root.left && !root.right && sum == 0)
        @paths.push(path)
        return
    end

    dfs(root.left, sum, path.dup)
    dfs(root.right, sum, path.dup)
    path.pop()
end
