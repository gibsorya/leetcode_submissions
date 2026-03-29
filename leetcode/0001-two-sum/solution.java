class Solution {
    public int[] twoSum(int[] nums, int target) {
        int[] indices = new int[2];
        
        outerloop:
        for(int i = 0; i < nums.length; i++){
            indices[0] = i;
            for(int j = i + 1; j < nums.length; j++){
                if((nums[i] + nums[j]) == target){
                    indices[1] = j;
                    break outerloop;
                }
            }
        }
        
        return indices;
    }
}
