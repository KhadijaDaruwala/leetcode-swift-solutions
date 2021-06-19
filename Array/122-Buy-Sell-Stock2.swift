class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        var maxProfit = 0
        if prices.count > 1{
            for i in 1...prices.count - 1 {
                if prices[i] > prices[i-1]{
                    maxProfit = maxProfit + (prices[i] - prices[i-1])
                }
            }
        }
        return maxProfit
    }
}
