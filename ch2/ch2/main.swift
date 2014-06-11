//
//  main.swift
//  ch2
//
//  Created by weitsai on 2014/6/8.
//  Copyright (c) 2014年 weitsai. All rights reserved.
//

import Foundation



/** 比較符號的使用方式：
 *  「==」 比較左右兩邊的內容是否相等
 *  「!=」 比較左右兩邊的內容是否不相等
 *  「===」比較左右兩邊的記憶體位置是否相等
 *  「!==」比較左右兩邊的記憶體位置是否不相等
**/
var user = "weitsai"
// true
println("weitsai" == user)
// true
println(user == "weitsai")
// true
println(user == user)
// false
println("weitsai" === user)
// false
println(user === "weitsai")
// false
println(user === user)




//var a = [1]
//println(a == a)
//println(a == [1])
//println([1] === [1])

//println(user)

// 聽說 object-c 本來就不被允許這樣寫 ('==' is unavailable: Cannot compare a String to nil)
// if (user == nil) {
//     println('nil')
// }

// 型態不同無法比較  (Could not find an overload for '==' that accepts the supplied arguments)
// var number = "4"
// if (number == 4) {
//     println("test")
// }

// if else