class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var count = k
        
        while (count > 0){
            let lastNo = nums.removeLast()
            nums.insert(lastNo, at: 0)
            count = count - 1
        }
    }
}
