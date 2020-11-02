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
    func getDecimalValue(_ head: ListNode?) -> Int {
         guard let head = head else {
          return 0
        }

        var arr: [Int] = [Int]()
        var currentHead: ListNode? = head
        if let val = currentHead?.val {
          arr.append(val)
        }
        while currentHead?.next != nil {
          currentHead = currentHead?.next
          if let val = currentHead?.val {
            arr.append(val)
          }
        }
        let reversed: [Int] = arr.reversed()
        var sum: Int = 0
        for (i,elem) in reversed.enumerated() {
          sum = sum + (pow(2, i) as NSDecimalNumber).intValue * elem
        }

        return sum
    }
}
