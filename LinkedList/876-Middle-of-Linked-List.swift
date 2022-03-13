/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var count = 0
        var node = head
        var resultNode = head
        
        while(node != nil){
            node = node?.next
            count += 1
        }
        
        if count <= 1{
            return resultNode
        }
        count = count / 2
        for _ in 0..<count {
            resultNode = resultNode?.next
        }
        return resultNode
    }
}
