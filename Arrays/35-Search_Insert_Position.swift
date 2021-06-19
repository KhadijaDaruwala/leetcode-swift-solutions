class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var index = 0
        var requiredIndex = 0
        
        while (index < nums.count){
            if index == nums.count - 1 && target > nums[index]{
                requiredIndex = nums.count
                break;
            }
            if (target < nums[index] || target == nums[index]){
                requiredIndex = index
                break;
            }
            
            index = index + 1
        }
        
        return requiredIndex
    }
}
