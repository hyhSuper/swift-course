import UIKit

//MARK:- 冒泡排序： Buble Sort
func bubleSort(data:inout[Int]){
    if data.count == 0 {
        return
    }
    let count = data.count
    for i in 0..<count {
        var flag = false
        for j in 0..<count-i-1 {
            let a = data[j]
            let b = data[j+1]
            if a > b {
                let temp = a
                data[j] = b
                data[j+1] = temp
                flag = true
            }
        }
        if !flag {  //如果已经升序排好就跳出外层for 循环
            break
        }
        print("数组：\(data)")
    }

}
var sortArray = [6,4,8,10,3,2,1]

bubleSort(data: &sortArray)
/*
 分析冒泡排序：
 1、需要常量级临时空间，空间复杂度为O(1) ,是原地排序算法
 2、为了保证冒泡排序算法的稳定性，当有相邻的两个元素大小相等的时候，我们不做交换，相同大小的数据在排序前后不会改变顺序，所以冒泡排序是稳定的排序算法。
 3、时间复杂度，最好 O(n) 最坏O(n*n)
 */

//  插入排序：

