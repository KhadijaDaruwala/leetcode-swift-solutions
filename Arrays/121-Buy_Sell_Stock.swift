class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        var maxProfit = 0
        var minValue = prices[0]
        if prices.count > 1{
            for i in 1...prices.count - 1{
                if prices[i] < minValue {
                    minValue = prices[i]
                }else if ((prices[i] - minValue) > maxProfit){
                    maxProfit = prices[i] - minValue
                }
            }
        }
        return maxProfit
    }
}
