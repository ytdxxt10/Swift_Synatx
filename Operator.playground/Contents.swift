//: Playground - noun: a place where people can play

import UIKit

//1.赋值运算符
var a = 10
var b = 5
a = b
let (x,y) = (1,2)
let possibleValue: Int? = 10

if let actualValue = possibleValue {
    
    print("this is valid")
    
}

//2.算数运算符

//1 + 2；5 - 3；2*1；100/25;

"Hello" + "world" + "!"

//3.求余运算符

//整数求余 
9 % 4 //为1

//浮点数 
8 % 2.5 //为0.5

//4.自增和自减运算符

var i = 0

//注意:++和--swift3中不存在
i += 1
//值为0 先返回再增加

i -= 1
//值为1 先返回 后减少

i += 1//值为1，先增加 后返回

i -= 1//值为0，先减少后返回。

//5.一元负号和一元正号运算符

let three = 3

let minusThree = -three // minusThree 等于 -3

let plusThree = -minusThree // plusThree 等于 3, 或 "负负3

let minusValue = +plusThree //minusValue的值为+3

//6.组合运算符

var f = 1; f+=3;

//7.比较运算符



1 == 1

2 != 1

2 > 1

1 < 2

1 >= 1

2 <= 1

let name = "Terry"

if name == "Terry" {
    
    print("hello, Terry")
    
} else {
    
    print("I'm sorry \(name), but I don't recognize you")
    
}

//元组的比较
(1, "zebra") < (2, "apple") //true

(1, "apple") < (1, "bird") //true

(3, "cat") == (3, "cat") //true

(1, "eat") < (1, "dog") //false

//8.三目运算符

let contentHeight = 40

let hasHeader = true

let rowHeight = contentHeight + (hasHeader ? 50 : 20)

//9.空合运算符


/*空合运算符(a ?? b)将对可选类型a进行空判断，如果a包含一个值就进行解封，否则就返回一个默认值b.这个运算符有两个条件:

表达式a必须是Optional类型
默认值b的类型必须要和a存储值的类型保持一致
空合运算符的表现形式 a != nil ? a! : b//空合运算符用三目运算符表达。 */


let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName

//10.区间运算符
//闭区间运算符
for index in 1...5 {
    
    print("\(index) times 5 is \(index * 5)")
    
}

//半闭区间运算符



let names = ["Anna", "Alex", "Brian", "Jack"]

for index in 0..<names.count {
    
    print("Person \(index) is called \(names[index])")
    
}

//11.逻辑运算


// NOT运算符

let allowedEntry = false

if !allowedEntry {
    
    print("access denied!")
    
}

// AND运算符

let enteredDoorCode = true

let passedRetinaScan = false

if enteredDoorCode && passedRetinaScan {
    
    print("Welcome!")
    
} else {
    
    print("Access Denied!")
    
}



// OR运算符

let hasDoorKey = false

let knowsOverridePassword = true

if hasDoorKey || knowsOverridePassword {
    
    print("Welcome!")
    
} else {
    
    print("Access Denied!")
    
}



// 逻辑运算符组合计算

if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    
    print("Welcome!")
    
} else {
    
    print("Access Denied!")
    
}



// 使用括号来明确优先级

if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    
    print("Welcome!")
    
} else {
    
    print("Access Denied!")
    
}



