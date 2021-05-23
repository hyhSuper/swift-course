//: [Previous](@previous)

import Foundation
//https://leetcode-cn.com/problems/fan-zhuan-dan-ci-shun-xu-lcof
//输入一个英文句子，翻转句子中单词的顺序，但单词内字符的顺序不变。为简单起见，标点符号和普通字母一样处理。例如输入字符串"I am a student. "，则输出"student. a am I"。
//示例 1：
//
//输入: "the sky is blue"
//输出: "blue is sky the"
//示例 2：
//
//输入: "  hello world!  "
//输出: "world! hello"
//解释: 输入字符串可以在前面或者后面包含多余的空格，但是反转后的字符不能包括。
//示例 3：
//输入: "a good   example"
//输出: "example good a"
//解释: 如果两个单词间有多余的空格，将反转后单词间的空格减少到只含一个。
class Solution {
    //
   static func reverseWords(_ str: String) -> String {
    if str.count <= 0 {
            return ""
        }
        let array = str.split(separator: " ").compactMap { "\($0)"}
       //去掉array里面的空格
        var newArray = [String]()
        for item in array {
            //去掉字符串里面的空格
            let whitespace = NSCharacterSet.whitespaces
            let newItem = item.trimmingCharacters(in: whitespace)
            if newItem.count > 0 {
                newArray.append(newItem)
            }
        }
        let itemCount = newArray.count
        let mid = newArray.count/2
        for i in 0..<mid {
            let a = newArray[i]
            let b = newArray[itemCount-i-1]
            let temp = a
            newArray[i] = b
            newArray[itemCount-i-1] = temp
        }
        print("newArray结果：\(newArray)")
        var s = ""
        for j in 0..<newArray.count {
            if j == 0 {
                s += newArray[j]
            }else{
                s = s + " " + newArray[j]
            }
        }
        print("结果：\(s)")
        return s
    }

}

let s1 = "the sky is blue"
let s2 = "  hello world!  "
let s3 = "a good   example"
Solution.reverseWords(s3)
let s4 = "example good a"
//Solution.reverseWords(s2)
//
//Solution.reverseWords(s3)
