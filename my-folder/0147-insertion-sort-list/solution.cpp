/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode() : val(0), next(nullptr) {}
 *     ListNode(int x) : val(x), next(nullptr) {}
 *     ListNode(int x, ListNode *next) : val(x), next(next) {}
 * };
 */
class Solution {
public:
    ListNode* insertionSortList(ListNode* head) {
        ListNode* dummy = new ListNode();
        ListNode* curr = head;

        // curr = i
        // when loop begins, i == 0
        while(curr != nullptr) {
            // insert elements at the beginning of the sorted list
            ListNode* prev = dummy;

            while(prev->next != nullptr && prev->next->val <= curr->val) {
                prev = prev->next;
            }
            ListNode* next = curr->next;
            curr->next = prev->next;
            prev->next = curr;
            curr = next;
        }

        return dummy->next;
    }
};
