class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var count = 0
        var stoneArray = Array(stones)
        var jewelArray = Array(jewels)
        
        for i in 0...stoneArray.count - 1 {
            for j in 0...jewelArray.count - 1{
                if jewelArray[j] == stoneArray[i]{
                    count += 1
                }
            }
        }
        return count
    }
}
