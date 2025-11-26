/*
[4,5,6,7,0,1,2]
target = 0

mid = (0 + 7) / 2 = 3
nums[3] = 7 .... 7 != 0

7 >= 4


*/

class Solution {
public:
    int search(vector<int>& nums, int target) {
        int left = 0, right = nums.size() - 1;

        while(left <= right) {
            int mid = (left + right) / 2;

            if(target == nums[mid]) {
                return mid;
            }

            if(nums[mid] >= nums[left]) {
                
                if(target >= nums[left] && target < nums[mid]) {
                    right = mid - 1;
                } else {
                    left = mid + 1;
                }

            } else {
                
                if(target <= nums[right] && target > nums[mid]) {
                    left = mid + 1;
                } else {
                    right = mid - 1;
                }
            }
        }

        return -1;
    }
};
