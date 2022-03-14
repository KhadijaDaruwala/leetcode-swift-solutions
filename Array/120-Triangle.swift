class Solution {
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        if triangle.count == 0 {
            return 0
        }
        if triangle.count == 1 {
            var minNum = Int.max
            for num in triangle[0] {
                minNum = min(minNum, num)
            }
            return minNum
        }
        
        let rowCount = triangle.count
        var dp = [Int](repeatElement(0, count: rowCount + 1))
        
        for i in stride(from: rowCount - 1, through: 0, by: -1) {
            for j in 0..<triangle[i].count {
                dp[j] = triangle[i][j] + min(dp[j], dp[j + 1])
            }
        }
        return dp[0]
    }
}
