class Solution {
public:
    int findMin(vector<int>& nums) {
        if(nums.size() == 1) {
            return nums[0];
        }
        int right = nums.size() - 1;
        int left = 0;
        

        if(nums[right] > nums[0]) {
            return nums[0];
        }

        while(right >= left) {
            int pointer = left + (right - left) / 2;

            if(nums[pointer] > nums[pointer + 1]) {
                return nums[pointer + 1];
            }

            if(nums[pointer - 1] > nums[pointer]) {
                return nums[pointer];
            }

            if(nums[pointer] > nums[0]) {
                left = pointer + 1;
            } else {
                right = pointer - 1;
            }
        }

        return -1;
    }
};
