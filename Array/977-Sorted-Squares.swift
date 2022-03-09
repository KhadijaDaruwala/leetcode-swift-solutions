class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var resultArray = [Int](repeating : 0, count: nums.count )
        var left = 0
        var right = nums.count - 1
        var index = nums.count - 1
        
        while(left <= right){
            let lsqr = nums[left] * nums[left]
            let rsqr = nums[right] * nums[right]
            
            if lsqr < rsqr {
                resultArray[index] = rsqr
                right -= 1
            }else {
                resultArray[index] = lsqr
                left += 1
            }
            index -= 1
        }
        return resultArray
    }
}
