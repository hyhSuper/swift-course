//: [Previous](@previous)

import Foundation
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array
//
//给你一个有序数组 nums ，请你 原地 删除重复出现的元素，使每个元素 只出现一次 ，返回删除后数组的新长度。
//不要使用额外的数组空间，你必须在 原地 修改输入数组 并在使用 O(1) 额外空间的条件下完成。
//1 1 2 2 3 3 4
//
//1
//
class Solution {
    // 快慢指针法
   static func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        var fast = 1
        var slow = 1
        while  fast < nums.count {
            if nums[fast] != nums[fast - 1] {
               nums[slow] = nums[fast]
               slow += 1
            }
            fast += 1
        }
        return slow
    }
    //TODO:通用解法
}
var num = [0,0,1,2,2,4,5,7]
Solution.removeDuplicates(&num)
