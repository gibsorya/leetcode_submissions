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
# @return {Void} Do not return anything, modify root in-place instead.
def recover_tree(root)
    @x = nil
    @y = nil
    @prev = nil
    dfs(root)
    @x.val, @y.val = @y.val, @x.val
end

def dfs(root)
    return if root == nil

    dfs(root.left)
    if (@prev != nil && root.val < @prev.val)
        @y = root
        @x = @prev if @x == nil
    end
    @prev = root
    dfs(root.right)
end
  
