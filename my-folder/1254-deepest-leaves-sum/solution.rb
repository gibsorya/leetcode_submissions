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
    queue = Queue.new
    queue << root

    while !queue.empty?
        sum = 0
        queue.size.times do
            node = queue.pop
            sum += node.val
            queue.push(node.left) if node.left
            queue.push(node.right) if node.right
        end
    end

    sum
end
