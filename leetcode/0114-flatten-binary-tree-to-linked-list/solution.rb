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
def flatten(root)
    return if !root
    # dfs(root)
    tail = nil
    stack = [[root, 1]]
    
    while(stack.length > 0)
        node_data = stack.pop()
        curr = node_data[0]
        state = node_data[1]
        if(curr.left == nil && curr.right == nil)
            tail = curr
            next
        end
        if state == 1
            if curr.left != nil
                stack.push([curr, 2])
                stack.push([curr.left, 1])
            elsif curr.right != nil
                stack.push([curr.right, 1])
            end
        else
            right = curr.right
            if(tail != nil)
                tail.right = curr.right
                curr.right = curr.left
                curr.left = nil
                right = tail.right
            end
            if right != nil
                stack.push([right, 1])
            end
        end
    end
end

def dfs(node)
    return nil if !node
    return node if !node.left && !node.right

    left_tail = dfs(node.left)
    right_tail = dfs(node.right)
    
    if left_tail
        left_tail.right = node.right
        node.right = node.left
        node.left = nil
    end

    right_tail == nil ? left_tail : right_tail
end
