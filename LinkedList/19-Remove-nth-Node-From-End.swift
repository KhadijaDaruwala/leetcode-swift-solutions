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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        if n == 0 {
            return head
        }
        if head == nil || head?.next == nil { return nil }
        
        var count = getListLength(node:head)
        
        if count == n {
            return head?.next
        }
        
        var newCount = count - n
        var resultNode = head
        
        for index in 1...newCount{
            if index == newCount {
                resultNode?.next = resultNode?.next?.next
            }else {
                resultNode = resultNode?.next
            }
        }
        return head
    }
    
    func getListLength(  node: ListNode?) -> Int {
        var node = node
        var count = 0
        
        while(node != nil){
            node = node?.next
            count += 1
        }
        return count
    }
}
