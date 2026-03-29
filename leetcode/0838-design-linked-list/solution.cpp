struct DoubleListNode {
    int val;
    DoubleListNode *next;
    DoubleListNode *prev;

    DoubleListNode() : val(0), next(nullptr) {}
    DoubleListNode(int x) : val(x), next(nullptr) {}
};

class MyLinkedList {
private:
    int size;
public:
    DoubleListNode* head;
    DoubleListNode* tail;
    MyLinkedList() {
        size = 0;
        head = new DoubleListNode(0);
        tail = new DoubleListNode(0);
        head->next = tail;
        tail->prev = head;
    }
    
    int get(int index) {
        if(index < 0 || index >= size) return -1;
        DoubleListNode* curr;

        if (index + 1 < size - index) {
            curr = head;
            for(int i = 0; i < index + 1; i++) {
                curr = curr->next;
            }
        } else {
            curr = tail;
            for(int i = 0; i < size - index; i++) {
                curr = curr->prev;
            }
        }

        return curr->val;
    }
    
    void addAtHead(int val) {
        DoubleListNode* pred = head;
        DoubleListNode* succ = head->next;
        
        size++;
        DoubleListNode* node = new DoubleListNode(val);
        node->prev = pred;
        node->next = succ;
        pred->next = node;
        succ->prev = node;
    }
    
    void addAtTail(int val) {
        DoubleListNode* succ = tail;
        DoubleListNode* pred = tail->prev;

        size++;
        DoubleListNode* node = new DoubleListNode(val);
        node->prev = pred;
        node->next = succ;
        pred->next = node;
        succ->prev = node;
    }
    
    void addAtIndex(int index, int val) {
        if (index > size) return;
        if (index < 0) index = 0;

        DoubleListNode* pred;
        DoubleListNode* succ;

        if(index < size - index) {
            pred = head;
            for(int i = 0; i < index; i++) {
                pred = pred->next;
            }
            succ = pred->next;
        } else {
            succ = tail;
            for (int i = 0; i < size - index; i++) {
                succ = succ->prev;
            }
            pred = succ->prev;
        }

        size++;
        DoubleListNode* node = new DoubleListNode(val);
        node->prev = pred;
        node->next = succ;
        pred->next = node;
        succ->prev = node;
    }
    
    void deleteAtIndex(int index) {
        if (index < 0 || index >= size) return;
        DoubleListNode* nodeToDelete;
        DoubleListNode* pred;
        DoubleListNode* succ;

        if(index < size - index) {
            pred = head;
            for (int i = 0; i < index; i++) {
                pred = pred->next;
            }
            nodeToDelete = pred->next;
            succ = pred->next->next;
        } else {
            succ = tail;
            for (int i = 0; i < size - index - 1; i++) {
                succ = succ->prev;
            }
            nodeToDelete = succ->prev;
            pred = succ->prev->prev;
        }

        size--;
        pred->next = succ;
        succ->prev = pred;
        delete nodeToDelete;
    }
};

/**
 * Your MyLinkedList object will be instantiated and called as such:
 * MyLinkedList* obj = new MyLinkedList();
 * int param_1 = obj->get(index);
 * obj->addAtHead(val);
 * obj->addAtTail(val);
 * obj->addAtIndex(index,val);
 * obj->deleteAtIndex(index);
 */
