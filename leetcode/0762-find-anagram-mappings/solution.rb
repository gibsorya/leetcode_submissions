# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def anagram_mappings(nums1, nums2)
    map = {}
    nums2.each_with_index do |num, index|
        map[num] = index
    end
    
    mappings = Array.new(nums1.length)
    nums1.each_with_index do |num, index|
        mappings[index] = map[num]
    end
    
    mappings
end
