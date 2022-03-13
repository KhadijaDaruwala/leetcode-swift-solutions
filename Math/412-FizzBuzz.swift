class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        
        var result = [String]()
        
        for i in 1...n {
            if i % 3 == 0 && i % 5 == 0{
                result.insert("FizzBuzz", at: i-1)
            }else if i % 3 == 0 {
                result.insert("Fizz", at: i-1)
            }else if i % 5 == 0 {
                result.insert("Buzz", at: i-1)
            }else {
                result.insert("\(i)", at: i-1)
            }
        }
        return result
    }
}
