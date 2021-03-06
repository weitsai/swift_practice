weitsai 的 swift 練習筆記
==============

從來沒有寫過 iOS, 在 WWDC 看到新程式語言, 我想這是新手入場的好時機 XD"

本人除了 Java 略懂以外, 其他學過程式語言基本上只有 Hello, World 的能力, 所以筆記中有錯誤還請各位多多指正.

## 開發環境：
MAC OS: 10.9.3

## 該小心的雷：
1. 註解的時候如果跳出可用 function 選單時, 請別急著切換中文打字, 會強制關閉 xcode ....
1. 下面這段程式碼也會錯誤 ([參考來源](http://swiftwtf.tumblr.com/post/88381298933/it-crashes-repl))

  ```swift
    var test:Any[] = []
    test.append(test)
  ```
1. 下面程式碼會錯誤, 如果想判斷空值必需填寫 ""

  ```swift
    var str = ""
    println(str == nil)
  ```


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
      // 23
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
      var height:Int = 169
      var weight:Double = 42.0;

      //下面這段程式碼會發生錯誤(Could not find member 'convertFromStringInterpolationSegment')
      println("hieght + weight = \(weight + height)")

      // 解決方案
      println("hieght + weight = \(Int(weight) + height)")
    ```
1. 陣列(Array)
  ```swift
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

    /* userNames[n, m] 取得到 n, m 的值, 不包含 m 本身 */
    // [afu, winni]
    println(userNames[1..3])

    /* userNames[n...m] 取得到 n, m 的值, 包含 m 本身 */
    // [afu, winni, eric]
    println(userNames[1...3])

    /* 下面陣列使用的索引值改為負數, 發生了神奇的事情 */
    var numbers = [1, 2, 3, 4, 5, 6]
    // [4294967324, 6, 16, 1, 2, 3, 4, 5]
    println(numbers[-3..5])

    /* 複合式陣列 */
    var test = ["weitsai", 23]
    // (weitsai,23)
    println(test)
  ```

1. 字典(dictionary)
  ```swift
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
  ```

## 第二章 邏輯控制
1. 比較符號
  1. 「==」 比較左右兩邊的內容是否相等

    ```swift
      var user = "weitsai"
      // true
      println("weitsai" == user)
      // true
      println(user == "weitsai")
      // true
      println(user == user)
    ```
  1. 「!=」 比較左右兩邊的內容是否不相等

    ```swift
      var user = "weitsai"
      // false
      println("weitsai" != user)
      // false
      println(user != "weitsai")
      // false
      println(user != user)
    ```
  1. 「===」比較左右兩邊的記憶體位置是否相等

    下面範例我也無法解釋.... (等官方或高手解答)

    ```swift
      var user = "weitsai"
      // false
      println("weitsai" === user)
      // false
      println(user === "weitsai")
      // false
      println(user === user)
    ```
  1. 「!==」比較左右兩邊的記憶體位置是否不相等

    ```swift
      var user = "weitsai"
      // true
      println("weitsai" !== user)
      // true
      println(user !== "weitsai")
      // true
      println(user !== user)
    ```

