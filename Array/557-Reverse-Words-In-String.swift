class Solution {
    func reverseWords(_ s: String) -> String {
        
        var result = ""
        let stringArray =  s.components(separatedBy: " ")
        for i in 0...stringArray.count - 1 {
            var charArr = Array(stringArray[i])
            var left = 0
            var right = charArr.count - 1
            while(left < right){
                let temp = charArr[left]
                charArr[left] = charArr[right]
                charArr[right] = temp
                left += 1
                right -= 1
            }
            result.append(String(charArr))
            if i != stringArray.count - 1{
                result.append(" ")
            }
        }
        return result
    }
}
