import Foundation
class Solution {
    func binaryGap(_ n: Int) -> Int {
        var binary = [Int]()
        var quot: Int  = n
        while quot != 0 {
            binary.insert(quot % 2, at: 0)
            quot = quot / 2
        }
        var maxCount = 0
        var count = 0
        var i = 0
        var start = false
        while i < binary.count {
            if 1 == binary[i] {
                if start && count > maxCount {
                    maxCount = count
                }
                count = 0
                start = true
            }
            count += 1
            i += 1
        }
        return maxCount
    }
}
