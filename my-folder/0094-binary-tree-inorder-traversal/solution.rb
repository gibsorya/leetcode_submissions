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
def inorder_traversal(root)
    arr = []
    stack = []
    curr = root

    while curr != nil || !stack.empty?
        while curr != nil
            stack.push(curr)
            curr = curr.left
        end
        curr = stack.pop()
        arr << curr.val
        curr = curr.right
    end
    arr
end

def dfs(root, arr)
    return if root == nil

    dfs(root.left, arr)
    arr << root.val
    dfs(root.right, arr)
end
