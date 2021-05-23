//: [Previous](@previous)

import Foundation
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/ti-huan-kong-ge-lcof
//
//请实现一个函数，把字符串 s 中的每个空格替换成"%20"。
//
//示例 1：
//
//输入：s = "We are happy."
//输出："We%20are%20happy."

class Solution {
    //粗暴法
  static func replaceSpace(_ s: String) -> String {
        return  s.replacingOccurrences(of: " ", with: "%20")
  }
    
    static func replaceSpace1(_ s: String) -> String {
        var newS = ""
        for char in s {
            if  String(char) == " " {
                newS += "%20"
            }else{
                newS += String(char)
            }
        }
        return newS
    }
}
Solution.replaceSpace1("we are family")
