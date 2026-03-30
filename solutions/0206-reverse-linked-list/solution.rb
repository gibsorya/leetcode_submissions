# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
    return head if head == nil

    curr = head
    if (head.next)
        curr = reverse_list(head.next)
        head.next.next = head
    end

    head.next = nil
    curr
end

