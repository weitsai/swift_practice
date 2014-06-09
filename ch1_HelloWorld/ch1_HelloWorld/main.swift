//
//  main.swift
//  ch1_HelloWorld
//
//  Created by weitsai on 2014/6/7.
//  Copyright (c) 2014年 weitsai. All rights reserved.
//

import Foundation

println("Hello, World!")

// 宣告變數自動決定型態
var userName = "weitsai"
println("Hello, " + userName)


// 宣告變數自定型態
var old:Double = 23
// 輸出後會有浮點數
println(old);


// 宣告 final 的變數
let height:Int = 169
// len 宣告的變數不可以更改數值會發生錯誤
// height = 200


// ex1. 字串與數字相加
// 下面這段程式碼會發生錯誤 (Could not find an overload for 'old' that accepts the supplied arguments)
//println(userName + "age was" + old + "years old")

// 如果要輸出, 必須把 Int 轉成 String
var hello:String = "Hello, "
println(hello + userName)
println(userName + "age was " + String(old) + " years old")
// 也可以縮寫成這樣
println(userName + "age was \(old) years old")

// ex2. 整數加上浮點數
var weight:Double = 42.0

// 下面程式碼會發生 Could not find member 'convertFromStringInterpolationSegment' 錯誤
//println("hieght + weight = \(weight + height)")
println("hieght + weight = \(Int(weight) + height)");


// 宣告陣列
var userNames = ["weitsai", "afu", "winni"]
// [weitsai, afu, winni]
println(userNames)
// weitsai
println(userNames[0])

userNames += "eric"
// [weitsai, afu, winni, eric]
println(userNames)

userNames.append("marty")
//// [weitsai, afu, winni, eric, marty]
println(userNames)


// 宣告字典(dictionary)
var colorsCode = [
    "red": "#FF0000",
    "yellow": "#00FF00",
    "blue": "#0000FF"
]
// [red: #FF0000, yellow: #00FF00, blue: #0000FF]
println(colorsCode)
// #FF0000
println(colorsCode["red"])

