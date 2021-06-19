class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        
        var resultsArray = [[Int]]()
        
        if (rowIndex != 0) {
            
            for i in 0...rowIndex {
                var currentResults = [Int]()
                for j in 0...i {
                    if (i > 1 && j > 0 && j < i) {
                        let value = resultsArray[i-1][j] + resultsArray[i-1][j-1]
                        currentResults.append(value)
                    } else {
                        currentResults.append(1)
                    }
                }
                
                if i == rowIndex{
                    return currentResults
                }
                resultsArray.append(currentResults)
            }
        }
        return [1]
        
        
    }
}
