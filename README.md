swift_practice
==============

從來沒有寫過 iOS, 在 WWDC 看到新程式語言, 我想這是新手入場的好時機 XD"

## 開發環境：
MAC OS: 10.9.3

## 該小心的雷：
1. 註解的時候如果跳出可用 function 選單時, 請別急著切換中文打字, 會強制關閉 xcode ....


## 第一章 基本型態
1. 基本輸出
  ```swift
  Pringln("Hello, weitsai")
  ```

1. 宣告變數
  1. 一般變數
    ```swift
      var old = 23;
    ```

  1. 不可更改之變數
    ```swift
      let height = 170
      // 下面這段程式碼會發生錯誤
      height = 200
    ```

  1. 自訂變數型態 (var 和 let 都適用)
    ```swift
      var old:Double = 23
      // 23.0
      println(old)
    ```

1. 不同型態的問題
  因為 Swift 不像 Java 提供向上轉型的機制, 所以當兩個不同型態的型態共用時會發生錯誤.
  1. 範例一 字串(String) 和整數(Int) 輸出
    ```swift
      var userName = "weitsai"
      // weitsai
      println(userName)

      var old = 23;
      println(old);
      // 下面這段程式碼會發生錯誤（Could not find an overload for 'old' that accepts the supplied arguments）
      println(userName + "age was" + old + "years old")

      // 解決方案 1
      println(userName + "age was " + String(old) + " years old")

      // 解決方案 2
      println(userName + "age was \(old) years old")
    ```

  1. 範例二 整數(Int) 和浮點數(Double) 相加
    ```swift
      // 整數加上浮點數
      var height:Int = 169
      var weight:Double = 42.0;
      // 下面這段程式碼會發生錯誤(Could not find member 'convertFromStringInterpolationSegment')
      //println("hieght + weight = \(weight + height)")
      println("hieght + weight = \(Int(weight) + height)")
    ```
1. 陣列(Array)
  ```swift
    // 宣告陣列
    var userNames = ["weitsai", "afu", "winni"]
    // [weitsai, afu, winni]
    println(userNames)
    // weitsai
    println(userNames[0])


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
  ```

1. 字典(dictionary)
  ```swift
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
  ```
