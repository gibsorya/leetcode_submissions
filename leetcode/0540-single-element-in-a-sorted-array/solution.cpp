class Solution {
public:
    int singleNonDuplicate(vector<int>& nums) {
        int left = 0;
        int right = nums.size() - 1;
        int boundary_index = -1;

        while(left <= right) {
            int mid = left + (right - left) / 2;

            if(to_the_left(nums, mid)) {
                boundary_index = mid;
                right = mid - 1;
            } else {
                left = mid + 1;
            }
        }

        return nums.at(boundary_index);
    }

    bool to_the_left(vector<int>& nums, int index) {
        if(index == nums.size() - 1) {
            return true;
        } else if(index % 2) {
            return nums.at(index) != nums.at(index - 1);
        } else {
            return nums.at(index) != nums.at(index + 1);
        }
    }
};
