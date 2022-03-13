class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var count = 0
        var n = n
        while n > 0 {
            n = n & (n - 1)
            count += 1
        }
        return count
    }
}
