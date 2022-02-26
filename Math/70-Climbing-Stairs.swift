class Solution {
    var memo: [Int: Int] = [:]
    func climbStairs(_ n: Int) -> Int {
        if let val = memo[n] {
            return val
        }
        
        if n == 0 {
            return 1
        }
        
        if n < 0 {
            return 0
        }
        
        memo[n] = climbStairs(n-1) + climbStairs(n-2)
        return memo[n] ?? 0
    }
}
