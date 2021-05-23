//: [Previous](@previous)

import Foundation

//题1：IP地址解析
//给定一个字符串表示的ip地址，比如“123.92.2.34”，判断其是否合法。合法IP地址规则如下：
//* 除了空格数字和.之外，不得包含其他字符
//* IP地址由4个数字构成，由.分隔，每个.隔开的数字大小在0～255之间。
//* 数字前后可以有空格，但中间不能有空格。比入123 .92.2 .34合法，”12 3.9 2. 2. 34" 非法

// 1、举例读懂题意，梳理题目要求
//  a.“123.92.2.34”   合法
//  b.“123. 92.2.34”  合法
//  c.“123. 92. 2 . 34” 合法
//  d.  "ad2.92.2.34"  非法
//  e.  "23 2.9 2.2.3 4"  非法
//  e.  "232.2.34"  非法

// 2、归纳思路：
//a. 用.分割ip字符串必须有4个元素,否则非法
//b. 判断每一个元素是否有全是由数字和空格组成，否则非法
//c. 空格出现的位置不能出现在数字的中间

func ipLegal(ip:String)-> Bool{
    if ip.count <= 0 {
        return false
    }
    //用.分割ip字符串
    let subs = ip.split(separator: ".")
    if subs.count !=  4 {
        return false
    }
    //检查每个元素是否合法
    for item in subs {
        if check(p: String(item)) == false {
            return false
        }
    }
    return true
}

func check(p:String)-> Bool {
    
    
    return false
}
