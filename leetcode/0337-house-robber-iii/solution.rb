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
def rob(root)
    # @rob_result = {}
    # @not_rob_result = {} 
    # [dfs(root, false), dfs(root, true)].max
    tree = Array.new
    graph = {}

    graph[-1] = []
    index = -1
    queue_nodes = Queue.new
    queue_indices = Queue.new
    queue_nodes.push(root)
    queue_indices.push(index)
    
    
    while !queue_nodes.empty?
        node = queue_nodes.pop
        parent_index = queue_indices.pop
        if node != nil
            index += 1
            tree << node.val
            graph[index] = []
            graph[parent_index] << index

            queue_nodes.push(node.left)
            queue_indices.push(index)
            queue_nodes.push(node.right)
            queue_indices.push(index)
        end
    end

    dpRob = Array.new(index + 1, 0)
    dpNotRob = Array.new(index + 1, 0)

    for i in (tree.length - 1).downto(0) do
        children = graph[i]
        if children == nil || children.length == 0
            dpRob[i] = tree[i]
            dpNotRob[i] = 0
        else
            dpRob[i] = tree[i]
            for child in children do
                dpRob[i] += dpNotRob[child]
                dpNotRob[i] += [dpRob[child], dpNotRob[child]].max
            end
        end
    end

    [dpRob[0], dpNotRob[0]].max
end

