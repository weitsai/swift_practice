swift_practice
==============

從來沒有寫過 iOS, 在 WWDC 看到新程式語言, 我想這是新手入場的好時機 XD"

## 第一章
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
  1. 範例一 字串和整數輸出
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
