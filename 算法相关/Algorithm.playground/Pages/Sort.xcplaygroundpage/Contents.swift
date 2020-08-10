import UIKit

//MARK:- 冒泡排序： Buble Sort 核心思想：冒泡排序只会操作相邻的两个数据。每次冒泡操作都会对相邻的两个元素进行比较，看是否满足大小关系要求。如果不满足就让它俩互换。一次冒泡会让至少一个元素移动到它应该在的位置，重复 n 次，就完成了 n 个数据的排序工作。
/*
分析冒泡排序：
1、需要常量级临时空间，空间复杂度为O(1) ,是原地排序算法
2、为了保证冒泡排序算法的稳定性，当有相邻的两个元素大小相等的时候，我们不做交换，相同大小的数据在排序前后不会改变顺序，所以冒泡排序是稳定的排序算法。
3、时间复杂度，最好 O(n) 最坏O(n*n)
*/

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
    }
    print("冒泡数组：\(data)")
}
var sortArray = [6,4,8,10,3,2,1]

bubleSort(data: &sortArray)

//MARK:- 插入排序
//核心思想：我们将数组中的数据分为两个区间，已排序区间和未排序区间。初始已排序区间只有一个元素，就是数组的第一个元素。插入算法的核心思想是取未排序区间中的元素，在已排序区间中找到合适的插入位置将其插入，并保证已排序区间数据一直有序。重复这个过程，直到未排序区间中元素为空，算法结束
/*
 插入排序分析：
 1、插入排序算法的运行并不需要额外的存储空间，所以空间复杂度是 O(1)，属于原地排序
 2、在插入排序中，对于值相同的元素，我们可以选择将后面出现的元素，插入到前面出现元素的后面，这样就可以保持原有的前后顺序不变，所以插入排序是稳定的排序算法
 3、时间复杂度，最好 O(n) 最坏O(n*n)
  */
func inserSort(data:inout[Int]){
    if data.count <= 1 {
        return
    }
    for i in 1..<data.count {
        let value = data[i]
        var j = i - 1
        while j >= 0 {
            if value < data[j] {
                data[j+1] = data[j]
                data[j] = value
            }
            j = j-1
        }
//        print("inserSort数组：\(data)")
    }
    print("插入排序数组：\(data)")
}

var insertArray = [5,1,3,6,9,12,11]
inserSort(data: &insertArray)

//MARK:- 选择排序
//核心思想：选择排序算法的实现思路有点类似插入排序，也分已排序区间和未排序区间。但是选择排序每次会从未排序区间中找到最小的元素，将其放到已排序区间的末尾。
/*
 选择排序：
 1、选择排序算法的运行并不需要额外的存储空间，所以空间复杂度是 O(1)，属于原地排序
 2、在选择排序中，选择排序每次都要找剩余未排序元素中的最小值，并和前面的元素交换位置，这样破坏了稳定性，所以插入排序是不稳定的排序算法
 3、时间复杂度，最好 O(n) 最坏O(n*n)
  */
func selectionSort(data:inout[Int]){
    if data.count <= 1 {
        return
    }
    for i in 0..<data.count {
        var mixValue = i
        var j = i + 1
        while j < data.count  {
            if data[j] < data[mixValue] {
                mixValue = j
            }
            j = j + 1
        }
        if mixValue != i {
            let tmp = data[i]
            data[i] = data[mixValue]
            data[mixValue] = tmp
        }
        print("选择排序数组：\(data)")
    }
//    print("选择排序数组：\(data)")

}
var selectArray = [5,1,3,6,9,12,11,4,8,7]
selectionSort(data: &selectArray)
