//
//  main.swift
//  BasicDataTutorial
//
//  Created by Allan on 2018/7/23.
//  Copyright © 2018年 Allan. All rights reserved.
//

import Foundation
/*
swift的基本数据类型有：
 1、Int
 2、Uint
 3、浮点数  Float、Double
 4、BOOL
 5、字符串：String
 6、字符：Character
 7、可选型：Optional  可选类型表示有值或没有值
 8、typealias 类型别名
 9、字典 Dictinary
 10、数组 Array
 11、Struct
 12、Class
 */
//整型
var a : Int
a = 5
print(a)
// 无符号整型
var B : UInt
B = 5

var c : Float
c  = 4.3

var d : Double
d = 111111.33333333
//字符串
var name : String
name = "allan"

var family = "Hou"
var fullName = family + name

print(fullName)


//字符
var singleLetter : Character
singleLetter = "c"

//Optional
//Swift 的可选（Optional）类型，用于处理值缺失的情况。可选表示"那儿有一个值，并且它等于 x "或者"那儿没有值"
var optionalInteger :Optional<Int>
optionalInteger = 45
//可选型的简写
var book : String?
book = "平凡的世界"

//可选性绑定
//if let constantName = someOptional {
//    statements
//}
var myString :String?
myString = "hello world"
if let yourString = myString {
    print(" 你的字符串 -\(String(describing: myString))")
}else{
    print("你的字符串没有值")
}

print(myString?.count)
//数组

//创建数组
//1、var someArray = [SomeType]()
var names = [String]()
names .append("Hou")
//2 var someArray = [SomeType](repeating: InitialValue, count: NumbeOfElements)
var numbers = [Int](repeating: 0, count: 3)

print(names,numbers)

numbers = [10,20,30]
numbers.append(5)
numbers[2] = 60

for item in numbers{
    print(item)
}


for (index ,item) in numbers.enumerated(){
    print("在index \(index)位置上的值\(item)")
}

var cities = ["开封"];


var homes  = names + cities

print(homes)

//字典  var someDict =  [KeyType: ValueType]()
var dict = [Int:String]();

dict = [1:"one",2:"Two",3:"Three"]
//添加键值对
dict.updateValue("Four", forKey: 4)
print(dict)
//修改键值对
dict.updateValue("two", forKey: 2)
//print(dict)
////移除一个键值对
//dict.removeValue(forKey: 1)
//print(dict)
//dict[2] = nil;
//print(dict)

////遍历字典 enumerated
//for (key,value) in dict.enumerated(){
//
//    print("字典key\(key):字典的value\(value)")
//
//}

for (key,value) in dict{
    print("字典key\(key):字典的value\(value)")
}


var keys = dict.keys
var values = dict.values
print(keys,values)

//函数、关键字func
/*1、有返回值函数
func funcname(形参) -> returntype{
    Statement1
    Statement2
        ……
    Statement N
    return parameters
}
 
 
*/



func runoob(site: String) {
    print("菜鸟教程官网：\(site)")
}
runoob(site: "http://www.runoob.com")
//inout 表示输入的是参数是一个变量，而不是常量
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}


var x = 1
var y = 5
swapTwoInts(&x, &y)
print("x 现在的值 \(x), y 现在的值 \(y)")

//使用函数类型
func sum(a: Int, b: Int) -> Int {
    return a + b
}

var addition: (Int, Int) -> Int = sum
print("输出结果: \(addition(40, 89))")
func multifiplication(a: Int, b:Int) -> Int {
    return a*b
}

var multifer: (Int,Int) -> Int = multifiplication

print("乘法输出结果：\(multifer(3,4))")
//函数嵌套使用
func calcDecrement(forDecrement total: Int) -> () -> Int {
    var overallDecrement = 0
    func decrementer() -> Int {
        overallDecrement -= total
        return overallDecrement
    }
    return decrementer
}
let decrem = calcDecrement(forDecrement: 30)
print(decrem())

/*
 闭包：引用类型
 闭包形式：全局函数、嵌套函数、闭包 表达式
 语法
 {（parameters）-> return type in
  statements
 }
 */


let divide = {(val1: Int, val2: Int) -> Int in
    return val1 / val2
}
let result = divide(200, 20)
print (result)


let arrays = ["1", "2", "3", "4", "5"]

// 使用普通函数(或内嵌函数)提供排序功能,闭包函数类型需为(String, String) -> Bool。


func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}
var reversed = arrays.sorted(by: backwards)

print(reversed)

//枚举
/*
 enum enumname {
 // 枚举定义放在这里
 }

 */

enum DaysofaWeek {
    case Sunday
    case Monday
    case TUESDAY
    case WEDNESDAY
    case THURSDAY
    case FRIDAY
    case Saturday
}


var weekDay = DaysofaWeek.THURSDAY
weekDay = .Sunday
switch weekDay
{
case .Sunday:
    print("星期天")
case .Monday:
    print("星期一")
case .TUESDAY:
    print("星期二")
case .WEDNESDAY:
    print("星期三")
case .THURSDAY:
    print("星期四")
case .FRIDAY:
    print("星期五")
case .Saturday:
    print("星期六")
}



enum Month: Int {
    case January = 1, February, March, April, May, June, July, August, September, October, November, December
}


let month = Month.February.rawValue

print(month)


enum Student{
    case Name(String)
    case Mark(Int,Int,Int)
}

var studDetails = Student.Name("Runoob")
var studMarks = Student.Mark(98,97,95)

switch studDetails {
case .Name(let studName):
    print("学生的名字是: \(studName)。")
case .Mark(let Mark1, let Mark2, let Mark3):
    print("学生的成绩是: \(Mark1),\(Mark2),\(Mark3)。")
}


struct studentMarks {
    var mark1 = 100
    var mark2 = 78
    var mark3 = 98
}
let marks = studentMarks()

print("Mark1 是 \(marks.mark1)")
print("Mark2 是 \(marks.mark2)")
print("Mark3 是 \(marks.mark3)")



class SampleClass: Equatable {
    let myProperty: String
    init(s: String) {
        myProperty = s
    }
}
func == (lhs: SampleClass, rhs: SampleClass) -> Bool {
    return lhs.myProperty == rhs.myProperty
}

let spClass1 = SampleClass(s: "Hello")
let spClass2 = SampleClass(s: "Hello")

if spClass1 === spClass2 {// false
    print("引用相同的类实例 \(spClass1)")
}

if spClass1 !== spClass2 {// true
    print("引用不相同的类实例 \(spClass2)")
}

struct subexample {
    let decrementer: Int
    subscript(index: Int) -> Int {
        return decrementer / index
    }
}
let division = subexample(decrementer: 100)


struct Matrix {
    let rows: Int, columns: Int
    var print: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        print = Array(repeating: 0.0, count: rows * columns)
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            return print[(row * columns) + column]
        }
        set {
            print[(row * columns) + column] = newValue
        }
    }
}


var  mat  = Matrix(rows: 3, columns: 3)

mat[0,0] = 1.0




























