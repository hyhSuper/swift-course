//: [Previous](@previous)

import Foundation
//https://leetcode-cn.com/problems/reverse-string
//编写一个函数，其作用是将输入的字符串反转过来。输入字符串以字符数组 char[] 的形式给出。
//不要给另外的数组分配额外的空间，你必须原地修改输入数组、使用 O(1) 的额外空间解决这一问题。
//你可以假设数组中的所有字符都是 ASCII 码表中的可打印字符。
//示例 1：
//输入：["h","e","l","l","o"]
//输出：["o","l","l","e","h"]
class Solution {
    //双指针法
    static func reverseString(_ s: inout [Character]) {
        print("反转前：\(s)")
        var left = 0
        var right = s.count - 1
        while left <= right {
            let temp = s[left]
            s[left] = s[right]
            s[right] = temp
            left += 1
            right -= 1
        }
        print("反转后：\(s)")
    }
    static func reverseString1(_ s: inout [Character]) {
        print("反转前：\(s)")
        let mid = s.count/2
        for i in 0..<mid {
            s.
        }
        print("反转后：\(s)")
    }

}
let a: Character = "a"
let b: Character = "b"
let c: Character = "c"
var s  = [a,b,c]

Solution.reverseString1(&s)
