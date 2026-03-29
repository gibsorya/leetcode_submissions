class Solution {
public:
    vector<int> getModifiedArray(int length, vector<vector<int>>& updates) {
        vector<int> arr(length, 0);

            for(vector<int>& update : updates) {
                int start = update[0], end = update[1], val = update[2];

                arr[start] += val;
                if(end < length - 1) {
                    arr[end + 1] -= val;
                }
            }

            partial_sum(arr.begin(), arr.end(), arr.begin());

        return arr;
    }

    void buildPrefixSum(vector<int>& nums, int startIdx, int endIdx, int increment) {
        // int n = nums.size();
        // vector<int> prefixSum(n);
        for(int i = startIdx; i <= endIdx; i++) {
            nums[i] += increment;
        }
    }
};
