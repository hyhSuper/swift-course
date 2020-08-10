//: [Previous](@previous)

import Foundation
/*
 给定两个大小为 m 和 n 的有序数组 nums1 和 nums2。
 请你找出这两个有序数组的中位数，并且要求算法的时间复杂度为 O(log(m + n))。
 你可以假设 nums1 和 nums2 不会同时为空。
 示例 1:

 nums1 = [1, 3]
 nums2 = [2]

 则中位数是 2.0
 示例 2:

 nums1 = [1, 2]
 nums2 = [3, 4]

 则中位数是 (2 + 3)/2 = 2.5
 */

//思路1:组成新数组找中位数,不满足时间复杂度要求，时间复杂度是0(m+n)
func findMiddleNumber(a:[Int],b:[Int])-> Double? {
    var result:Double?
    if a.count <= 0 && b.count <= 0 {
        return result
    }
    let bigArray = NSMutableArray.init()
    var i = 0
    var j = 0
    var k = 0
    while (i < a.count && j < b.count) {
        let num1 = a[i]
        let num2 = b[j]
        if num1 < num2{
            bigArray.insert(num1, at: k)
            i = i+1
        }else{
            bigArray.insert(num2, at: k)
            j = j + 1
        }
        k = k + 1
    }

    while i < a.count {
        let value1 = a[i]
        bigArray.insert(value1, at:k )
        i = i + 1
        k = k + 1
    }
        //
    while j < b.count {
      let value2 = b[j]
      bigArray.insert(value2, at: k)
      k = k + 1
      j = j + 1
    }
    print("新数组：\(bigArray)")
    let count = bigArray.count
    if count > 0 {
        if count%2 == 0 {
           let indx1 =  count/2
           let indx2 = indx1 - 1
           let value1 = bigArray.object(at: indx1) as! Int
           let value2 =   bigArray.object(at: indx2) as! Int
            result =  (Double(value1) + Double(value2))/2.0
        }else{
            let index = (count - 1)/2
            result = bigArray.object(at: index) as? Double
        }
    }
    return result;
}

//思路2：双指针移动方案
func findMiddleNumber1(a:[Int],b:[Int])-> Double {
    if a.count <= 0 && b.count <= 0 {
        return -1
    }
    
    let m = a.count
    let n = b.count
    let len = m + n
    var left = -1
    var right = -1
    var aStart = 0, bStart = 0
    for _ in 0...len/2{
        left = right
        if aStart < m && (bStart >= n || a[aStart] < b[bStart]) {
            right = a[aStart]
            aStart = aStart + 1
        }else{
            right = b[bStart]
            bStart = bStart + 1
        }
    }
    if len%2 == 0 {
        return Double((left + right)) / 2.0
    }else{
        return Double(right)
    }
}

//思路3：折半删除法。
func findMiddleNumber2(a:[Int],b:[Int])-> Double {
    func findK(num1:[Int],i:Int ,num2:[Int],j:Int,k:Int)->Double{
        if(i>=num1.count){
            return Double(num2[j + k - 1])
        }
        if j >= num2.count {
            return Double(num1[i+k-1])
        }
        if k == 1{
            let result =  min(num2[j], num1[i])
            return Double(result)
        }
        var mid1 = Int.max , mid2 = Int.max
        if i + k/2 - 1 < num1.count {
            mid1 = num1[i + k/2 - 1]
        }
        if j + k/2 - 1 < num2.count {
            mid2 = num2[j + k/2 - 1]
        }
        if mid1 < mid2 {
            return findK(num1: num1, i: i+k/2, num2: num2, j: j, k: k - k/2)
        }
        
        return findK(num1: num1, i: i, num2: num2, j: j+k/2, k: k - k/2)
    }
    let m = a.count
    let n = b.count
    let len = m + n
    let left = (len + 1)/2
    let right = (len + 2)/2

    let kValue = (findK(num1: a, i: 0, num2: b, j: 0, k: left) + findK(num1: a, i: 0, num2: b, j: 0, k: right)) / 2
    return kValue
}
let value = findMiddleNumber2(a: [3,5,14], b: [6,8,9,10])
print(value)
