class Solution {
public:
    vector<int> sortArray(vector<int>& nums) {
        mergeSort(nums, 0, nums.size() - 1);

        return nums;
    }

    void mergeSort(vector<int>& nums, int start, int end) {
        if(end - start + 1 <= 1) {
            return;
        }

        int mid = (start + end) / 2;

        mergeSort(nums, start, mid);
        mergeSort(nums, mid + 1, end);

        merge(nums, start, mid, end);
    }

    void merge(vector<int>& nums, int start, int mid, int end) {
        vector<int> left(nums.begin() + start, nums.begin() + mid + 1);
        vector<int> right(nums.begin() + mid + 1, nums.begin() + end + 1);

        int i = 0;
        int j = 0;
        int k = start;

        while(i < left.size() && j < right.size()) {
            if(left[i] <= right[j]) {
                nums[k] = left[i++];
            } else {
                nums[k] = right[j++];
            }
            k++;
        }

        while(i < left.size()) {
            nums[k++] = left[i++];
        }

        while(j < right.size()) {
            nums[k++] = right[j++];
        }
    }
};
