class Solution {
    func canBeIncreasing(_ nums: [Int]) -> Bool {
        var count = 0
        var arr = nums
        for i in 0..<arr.count {
            var temp = arr[i]
            arr.remove(at: i)
            for j in 0..<arr.count - 1 {
                if arr[j] < arr[j+1] {
                    count += 1
                }
            }
            if count == arr.count - 1 {
                return true
            }
            arr.insert(temp, at: i)
            count = 0
            
        }
        return false
    }
}
