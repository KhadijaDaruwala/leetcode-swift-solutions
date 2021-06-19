class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var strArray = Array(s)
        var i = 0
        var j = strArray.count - 1
        
        while(i<j){
            if !strArray[i].isNumber && !strArray[i].isLetter{
                i += 1
            } else if !strArray[j].isNumber && !strArray[j].isLetter{
                j -= 1
            } else if strArray[i].lowercased() == strArray[j].lowercased(){
                i += 1
                j -= 1
            } else {
                return false
            }
        }
        
        return true
    }
}
