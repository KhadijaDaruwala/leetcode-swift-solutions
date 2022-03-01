/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        if n <= 1 {
            return n
        }
        
        var right = n
        var left = 1
        var middle = 0
        while left < right {
            middle =  (right + left) / 2
            
            if !isBadVersion(middle) {
                left = middle + 1
            } else {
                right = middle
            }
        }
        return left
    }
}
