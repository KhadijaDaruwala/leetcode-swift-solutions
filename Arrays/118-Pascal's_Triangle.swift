class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        
        
        var resultsArray = [[Int]]()
        
        if (numRows != 0) {
            
            for i in 0..<numRows {
                var currentResults = [Int]()
                for j in 0...i {
                    if (i > 1 && j > 0 && j < i) {
                        let value = resultsArray[i-1][j] + resultsArray[i-1][j-1]
                        currentResults.append(value)
                    } else {
                        currentResults.append(1)
                    }
                }
                
                resultsArray.append(currentResults)
            }
        }
        return resultsArray
    }
}
