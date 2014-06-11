//
//  main.swift
//  ch1_HelloWorld
//
//  Created by weitsai on 2014/6/7.
//  Copyright (c) 2014年 weitsai. All rights reserved.
//

import Foundation

println("Hello, World!")

/* 宣告變數, 自動決定型態 */
var userName = "weitsai"
println("Hello, " + userName)


/* 宣告變數並指定型態 */
var old:Double = 23
// 23.0
println(old);


/** 宣告常數, 宣告後不可以在更動 */
let height:Int = 169
// len 宣告的變數不可以更改數值會發生錯誤
height = 200


/**
 * 不同型態共同使用會發生錯誤
**/

/* ex1: 下面這段程式碼會發生下列錯誤 (String + Int)
 (Could not find an overload for 'old' that accepts the supplied arguments)
**/
println(userName + "age was" + old + "years old")

/* 解決方案一 */
// weitsaiage was 23.0 years old
println(userName + "age was " + String(old) + " years old")
/* 解決方案二 */
// weitsaiage was 23.0 years old
println(userName + "age was \(old) years old")

var weight:Double = 42.0

/* ex2: 下面這段程式碼會發生下列錯誤 (Double + Int)
 (Could not find member 'convertFromStringInterpolationSegment')
**/
println("hieght + weight = \(weight + height)")

/* 解決方案 */
// hieght + weight = 211
println("hieght + weight = \(Int(weight) + height)");


/* 宣告陣列 */
var userNames = ["weitsai", "afu", "winni"]
// [weitsai, afu, winni]
println(userNames)
// weitsai
println(userNames[0])

userNames += "eric"
// [weitsai, afu, winni, eric]
println(userNames)

userNames.append("marty")
// [weitsai, afu, winni, eric, marty]
println(userNames)


/* 宣告字典(dictionary) */
var colorsCode = [
    "red": "#FF0000",
    "yellow": "#00FF00",
    "blue": "#0000FF"
]
// [red: #FF0000, yellow: #00FF00, blue: #0000FF]
println(colorsCode)
// #FF0000
println(colorsCode["red"])

