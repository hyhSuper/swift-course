//: [Previous](@previous)

import Foundation
//Linklist 链表算法题,声明一个链表
class ListNode {
    var value: Int
    var next: ListNode?
    init(val:Int) {
        self.value = val
        self.next = nil
    }
}
class List {
    var head:ListNode?
    var tail:ListNode?
    
    func appendToHead(val:Int)  {
        if head == nil {
            head = ListNode.init(val: val)
            tail = head
        }else{
            let tmp = ListNode.init(val: val)
            tmp.next = head
            head = tmp
        }
    }
    
    func appedToTail(val:Int)  {
        if tail == nil{
            tail = ListNode.init(val: val)
            head = tail
        }else{
            tail?.next = ListNode.init(val: val)
            tail = tail!.next
        }
    }
    
}
//如何判断一个字符串是否是回文字符串(是一个正读和反读都一样的字符串,例如acbca)
/*
 1、思路1，字符串倒序与正序比较
 2、方案二：添加两个指针分别指向字符串头尾，当遇到非字符或数字时往前移动，当发现两个指针指向的值不等时则返回false，直到相遇，最后返回true
 **/


func isPalindrome( aString: String) -> Bool{
    if aString.count <= 1 {
        return true
    }
    let reversStr = String(aString.reversed())
    print("reversStr:\(reversStr)")
    if reversStr == aString {
        print("是回文字符串")
        return true
    }
    return false
}

isPalindrome(aString: "abcdcba")
