class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count % 2 != 0 { return false }
        var stack = [Character]()
        
        for char in s{
            if char == "(" || char == "{" || char == "["{
                stack.append(char)
            } else {
                if (char == ")" && stack.last == "(")  && !stack.isEmpty
                    || (char == "}" && stack.last == "{")  && !stack.isEmpty
                    ||  (char == "]" && stack.last == "[") && !stack.isEmpty {
                    stack.removeLast()
                } else {
                    return false
                }
            }
        }
        
        return stack.isEmpty
    }
}
