//: [Previous](@previous)

import Foundation
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/length-of-last-word
//给你一个字符串 s，由若干单词组成，单词之间用空格隔开。返回字符串中最后一个单词的长度。如果不存在最后一个单词，请返回 0 。
//单词 是指仅由字母组成、不包含任何空格字符的最大子字符串。
//
//示例 1：
//
//输入：s = "Hello World"
//输出：5
//示例 2：
//
//输入：s = " "
//输出：0
//
//
//提示：
//1 <= s.length <= 104
//s 仅有英文字母和空格 ' ' 组成
//

class Solution {
    //方法1:常规解法  空格分割数组，将数组中元素的空格去掉，然后取出最后一个元素，计算其长度
   static func lengthOfLastWord(_ s: String) -> Int {
        if s.count <= 0 {
            return 0
        }
        let subStrings =  s.split(separator: " ")
        var newArray = [String]()
        
        for item in subStrings {
            let whitespace = NSCharacterSet.whitespaces
            let newItem = item.trimmingCharacters(in: whitespace)
            if newItem.count > 0 {
                newArray.append(newItem)
            }
        }
        let last = newArray.last
        return last?.count ?? 0
    }
    //方法2：倒序遍历
    static func lengthOfLastWord1(_ s: String) -> Int {
        var length = 0
        for char in s.reversed(){
            if String(char) != " " {
                length += 1
            }
            if String(char) == " " && length > 0 {
                break
            }
        }
        return length
    }

}
Solution.lengthOfLastWord1("hhhh abcd dddert ")

