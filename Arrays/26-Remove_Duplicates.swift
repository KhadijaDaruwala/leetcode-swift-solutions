class Solution {
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
