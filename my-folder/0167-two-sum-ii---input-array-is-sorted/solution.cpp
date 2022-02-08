class Solution {
public:
    vector<int> twoSum(vector<int>& numbers, int target) {
        vector<int> indices;
        int32_t left = 0;
        int32_t right = numbers.size() - 1;
        
        int32_t sum = 0;
            
        while(left < right)
        {
            sum = numbers.at(left) + numbers.at(right);
            if(sum > target){
                right--;
            } else if(sum < target){
                left++;
            } else {
                indices.push_back(left + 1);
                indices.push_back(right + 1);
                return indices;
            }
        }
        
        return indices;
    }
};
