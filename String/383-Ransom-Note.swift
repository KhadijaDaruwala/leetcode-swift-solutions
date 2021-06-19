class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        
        var magazineDict = [Character:Int]()
        
        for ch in magazine {
            magazineDict[ch] = (magazineDict[ch] ?? 0) + 1
        }
        
        for char in ransomNote{
            if let magazineChar = magazineDict[char] {
                if magazineChar == 0{
                    return false
                }
                magazineDict[char]! -= 1
            } else {
                return false
            }
            
        }
        
        return true
    }
}
