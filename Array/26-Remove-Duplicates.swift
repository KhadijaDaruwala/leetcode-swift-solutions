/* Solution 1 */
class Solution1 {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var i = 0, j = 1
        while (j < nums.count){
            if (nums[i] != nums[j]){
                i = j
            } else {
                nums.remove(at: j)
            }
            j = i+1
        }
        
        return nums.count
    }
}

/* Solution 2 */
class Solution2 {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var index = 0
        while index <= nums.count - 2 {
            
            if nums[index] == nums[index + 1]{
                nums.remove(at: index + 1)
            } else {
                index += 1
            }
        }
        return nums.count
    }
}
