//: [Previous](@previous)

import Foundation

//给你一个有效的 IPv4 地址 address，返回这个 IP 地址的无效化版本。
//所谓无效化 IP 地址，其实就是用 "[.]" 代替了每个 "."。
//示例 1：
//
//输入：address = "1.1.1.1"
//输出："1[.]1[.]1[.]1"
func defangIPaddr(_ address: String) -> String {
    var s = ""
    for c in address {
        if c == Character(".") {
            s += "[.]"
        } else{
            s += String.init(c)
        }
    }
    return s
}

let test = "1.1.1.1"
let ip = defangIPaddr(test)
print("\(ip)")
