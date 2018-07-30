//
//  StructTest.swift
//  BasicDataTutorial
//
//  Created by Allan on 2018/7/24.
//  Copyright © 2018年 Allan. All rights reserved.
//

import Foundation
/*
 结构体 值类型  copy
 应用
 在你的代码中，你可以使用结构体来定义你的自定义数据类型。
 结构体实例总是通过值传递来定义你的自定义数据类型。
 按照通用的准则，当符合一条或多条以下条件时，请考虑构建结构体：
 结构体的主要目的是用来封装少量相关简单数据值。
 有理由预计一个结构体实例在赋值或传递时，封装的数据将会被拷贝而不是被引用。
 任何在结构体中储存的值类型属性，也将会被拷贝，而不是被引用。
 结构体不需要去继承另一个已存在类型的属性或者行为。
 */
struct MarkStruct {
    var mark1: Int
    var mark2: Int
    var mark3: Int
    init(mark1: Int,mark2: Int, mark3: Int) {
        self.mark1 = mark1;
        self.mark2 = mark2
        self.mark3 = mark3
    }
}

