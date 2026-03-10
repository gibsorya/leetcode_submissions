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
def max_depth(root)
    return 0 unless root
    # dfs(root, 0)
    stack = Stack.new
    stack.push({ node: root, level: 1})
    level = 0
    while(stack.size != 0)
        obj = stack.pop
        node, currLevel = [obj[:node], obj[:level]]

        if node != nil
            level = [level, currLevel].max
            stack.push({ node: node.left, level: currLevel + 1 })
            stack.push({ node: node.right, level: currLevel + 1 })
        end
    end

    level
end

def dfs(root, depth)
    return depth if root == nil

    left_depth = dfs(root.left, depth + 1)
    right_depth = dfs(root.right, depth + 1)

    [left_depth, right_depth].max
end
