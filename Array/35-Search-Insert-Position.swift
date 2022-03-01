/* Solution 1 */
class Solution1 {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var index = 0
        var requiredIndex = 0
        
        while (index < nums.count){
            if index == nums.count - 1 && target > nums[index]{
                requiredIndex = nums.count
                break
            }
            if (target < nums[index] || target == nums[index]){
                requiredIndex = index
                break
            }
            
            index = index + 1
        }
        
        return requiredIndex
    }
}

/* Solution 2 */
class Solution2 {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        var left = 0
        var right = nums.count - 1
        
        while(left <= right) {
            let mid = (left + right) / 2
            
            if target == nums[mid]{
                return mid
            } else if target > nums[mid]{
                left = mid + 1
            } else if target < nums[mid]{
                right = mid - 1
            }
        }
        
        return left
    }
}
