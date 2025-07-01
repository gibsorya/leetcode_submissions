class Solution {
public:
    int findPeakElement(vector<int>& nums) {
        int left = 0;
        int right = nums.size() - 1;
        int peak = 0;

        if (nums.size() == 1) {
            return 0;
        }

        while(left < right) {
            int mid = left + (right - left) / 2;
            
            if(nums.at(mid) > nums.at(mid + 1)) {
                peak = mid;
                right = mid;
            } else {
                left = mid + 1;
            }
        }

        return left;
    }
};
