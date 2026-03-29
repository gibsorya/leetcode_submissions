class Solution {
public:
    vector<int> productExceptSelf(vector<int>& nums) {
        int size = nums.size();
        vector<int> result(size);

        result[0] = 1;

        for(int i = 1; i < size; i++) {
            result[i] = nums[i - 1] * result[i - 1];
        }

        int rightProduct = 1;
        for(int i = size - 1; i >= 0; i--) {
            result[i] *= rightProduct;
            rightProduct *= nums[i];
        }

        return result;
    }
};

// [1,2,3,4]
/*
    i = 0
        result[0] = 1;
        leftProduct *= 1 .... leftProduct = 1;
    i = 1
        result[1] = 1
        leftProduct *= 2 .... leftProduct = 2;

    i = 2;
        result[i] = 1;
*/
