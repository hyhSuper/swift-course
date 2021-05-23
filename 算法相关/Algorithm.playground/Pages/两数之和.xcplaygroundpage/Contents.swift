//: [Previous](@previous)

import Foundation
//给定一个整数数组 nums 和一个整数目标值 target，请你在该数组中找出和为目标值 的那 两个 整数，并返回它们的数组下标。
//你可以假设每种输入只会对应一个答案。但是，数组中同一个元素在答案里不能重复出现。
//你可以按任意顺序返回答案。
//示例:
//输入：nums = [2,7,11,15], target = 9
//输出：[0,1]
//解释：因为 nums[0] + nums[1] == 9 ，返回 [0, 1] 。


class Solution {
    //暴力解法 时间复杂度 n*n 空间复杂度 0
   static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            let a = nums[i]
            let k = i + 1
            for j in k..<nums.count {
                let b = nums[j]
                if a + b == target {
                    return [i,j]
                }
            }
        }
        return []
    }
    // 查找表法：hash表  时间复杂度 n, 空间复杂度 n 。思路是将查询过的数据存到hash表中
    static func twoSum1(_ nums: [Int], _ target: Int) -> [Int] {
        var numMap = [Int:Int]()
        for i in  0..<nums.count {
            let key = nums[i]
            let key1 = target - key
            if numMap.keys.contains(key1) {
                return [numMap[key1]!,i]
            }
            numMap[key] = i
        }
        return []
     }
}

let nums = [2,7,11,15]
let target = 17

let array = Solution.twoSum1(nums, target)
print("结果：\(array)")
