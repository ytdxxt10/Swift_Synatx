//: Playground - noun: a place where people can play

import UIKit

/*
常量和变量
*/
//1.常量
let maximumNumberOfInputs = 10

//2.变量
var str = "Hello, playground"
var currentLoginAttempts = 0
var x = 0.0, y = 0.0, z = 1.0

//3.声明一个没有初始化的变量
var welcomeMessage:String


//print（welcomeMessage）//使用该变量前必须先要初始化不然会报错 unresolved identifier print(welcomeMessage)

welcomeMessage = "Hello Word!"

print(welcomeMessage)

//4.改变变量的值

var  value = "Hello"

value = "change"

//5.常量的值不可以被改变。

let constant = "He"

//constant = "she" //编译会发生错误。

//6.注释

//1.// Comment 1
    
    //2./*Comment 2*/
    
    //7.分号

//swift不要求必须加分号，当然加上也不影响

//但如果你想要在一行中添加多行代码，则需要加上。let dog = "dog" ; print(dog)

//8.整数

//整数又分为有符号和无符号两种类型。

//swift提供8，16，32，64位的有符号和无符号整数类型。

//整数的范围

let minValue = UInt8.min // minValue 为0，是Uint8类型

let maxValue = UInt8.max // maxValue 为255，是UInt8类型。

//Int 在32平台上，Int和Int32长度相同，在64平台上，Int与Int64长度相同

//UInt 无符号类型

//注意：尽量不要使用UInt，除非你真的需要存储一个和当前平台原生字长相同的无符号整数。除了这种情况，最好使用Int，即使你要存储的值已知是非负的。统一使用Int可以提高代码的可复用性，避免不同类型数字之间的转换，并且匹配数字的类型推断。

//浮点数

//double表示64位浮点数，当你需要存储很大或者很高精度的浮点数时使用。//至少15位
    
//Float 表示32位浮点数。//精度最少只有6位数字
    
  //  9.类型安全和类型推断

//编译代码时会进行类型检查。

let number = 43 //number 被推测为Int类型。

//当推断浮点数类型的时候，swiftly总是选择double，而不是float

/*10.数值型自变量。

//二进制 0b 八进制0o,十六进制0x

1.25e2 表示 1.25 × 10^2，等于 125.0。

1.25e-2 表示 1.25 × 10^-2，等于 0.0125。
*/


let paddedDouble = 000123.456

let oneMillion = 1_000_000

let justOverOneMillion = 1_000_000.000_000_1

//11.类型转换

let twoThousand: UInt16 = 2_000

let one: UInt8 = 1

let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3



let pointOneFourOneFiveNine = 0.14159

let pi = Double(three) + pointOneFourOneFiveNine

// pi 等于 3.14159，所以被推测为 Double 类型

//类型别名

typealias AudioSample = UInt16

//12. 布尔值

let orangesAreOrange = true

let turnipsAreDelicious = false



// Can only evaluate booleans in conditionals

if turnipsAreDelicious {
    
    print("Mmmm, tasty turnips")
    
} else {
    
    print("Ewww, turnips are horrible")
    
}



let i = 1

if i == 1 {
    
    print("Magic")
    
}

//13.元组

//元组（tuples）把多个值组合成一个复合值。元组内的值可以是任意类型，并不要求是相同类型。





// 创建一个元组

let http404Error = (404, "Not Found")

print(http404Error)

let coordinates3D: (x: Int, y: Int, z: Int) = (2, 3, 1)
let n = coordinates3D.x
let j = coordinates3D.y
let k = coordinates3D.z



// 将一个元组分解为单独的常量和变量。

let (statusCode, statusMessage) = http404Error

print("The status code is \(statusCode)")

print("The status message is \(statusMessage)")



// 只需要一部分元组值，忽略的部分用下划线代替。

let (onlyStatusCode, _) = http404Error

print("The status code is \(statusCode)")



// 可以通过下表来访问元组中的单个元素，下表从零开始。

print("The status code is \"\(http404Error.0)\"")

print("The status message is \"\(http404Error.1)\"")



// 定义元组时，给单个元素命名。

let http200Status = (statusCode: 200, description: "OKAY")

print("The status code is \"\(http200Status.statusCode)\"")

print("The description is \"\(http200Status.description)\"")

//14.可选值

//有值或者没有值。

let possibleNumber = "123"

//possibleNumber = nil //编译错误

//将字符串转为Int类型

let convertValue = Int(possibleNumber)



var surveryValue : String?//可选类型，可能有值，可能为空，默认为nil

surveryValue = "Hello"

//现在值为Hello

//if 语句及强制解析

//if let constantName = someOptional { statements }

if let actualNumber = Int(possibleNumber) {
    
    print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
    
} else {
    
    print("\'\(possibleNumber)\' could not be converted to an integer")
    
}

//隐士可选类型

let possibleString: String? = "An optional string."
let forcedString: String = possibleString!

// 需要惊叹号来获取值 强制拆包

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString

// 不需要感叹号



//15.错误处理

func canThrowAnError() throws { }// 这个函数有可能抛出错误
    
 //   一个函数可以通过在声明中添加throws关键词来抛出错误消息。当你的函数能抛出错误消息时, 你应该在表达式中前置try关键词。
    
    do {
        
        try canThrowAnError() // 没有错误消息抛出
        
    } catch {
        
        // 有一个错误消息抛出
        
    }
    
//    一个do语句创建了一个新的包含作用域,使得错误能被传播到一个或多个catch从句。
    
    
  //  16.断言
 //   使用断言调试
//    你可以使用全局assert(_:_file:line:)函数来写一个断言。向这个函数传入一个结果为true或者false的表达式以及一条信息，当表达式的结果为false的时候这条信息会被显示
    
    let age = -3
    assert(age <= 0, "A person's age cannot be less than zero") // 因为 age < 0，所以断言会触发










