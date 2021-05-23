//: [Previous](@previous)

import Foundation

//给定一个字符串，验证它是否是回文串，只考虑字母和数字字符，可以忽略字母的大小写。  “回文串”是一个正读和反读都一样的字符串，比如“level”或者“noon”等等就是回文串。
//
//说明：本题中，我们将空字符串定义为有效的回文串。
//
//示例 1:
//
//输入: "A man, a plan, a canal: Panama"
//输出: true
//示例 2:
//
//输入: "race a car"
//输出: false
//
//noon
//0,3 1,2,2,1
// ara   0,2 , 11
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/valid-palindrome
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
//步骤：
/*
 1、去掉特殊字符,字母全部转小写
 2、双指针比较
 3、
 
 
 */
class Solution {
   static func isPalindrome(_ s: String) -> Bool {
        let goodS = s.lowercased()
        var all = [Character]()
        for c in goodS {
            if (c >= "0" && c <= "9") || (c >= "a" && c <= "z") {
                all.append(c)
            }
        }
        var left = 0
        var right = all.count - 1
        while left <= right {
            if all[left] !=  all[right]  {
                return false
            }else{
                left += 1
                right -= 1
            }
        }
        return true
    }
}
Solution.isPalindrome("race a car")
