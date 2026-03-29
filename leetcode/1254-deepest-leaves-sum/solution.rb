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
def deepest_leaves_sum(root)
    q = []
    q.push(root)
    sum = 0
    
    while q.length != 0
        size = q.length
        sum = 0
        for i in 0..(size - 1) do
            node = q.shift
            if node != nil
                sum += node.val
                q.push(node.left) if node.left
                q.push(node.right) if node.right
            end
        end
    end
    
    sum
end
