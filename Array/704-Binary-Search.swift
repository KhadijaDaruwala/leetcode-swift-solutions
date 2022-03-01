class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        if nums.count == 0 {
            return -1
        }
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let middle = (left + right) / 2
            if nums[middle] == target {
                return middle
            } else if nums[middle] > target {
                right = middle -  1
            } else  {
                left = middle + 1
            }
        }
        return -1
    }
}
