//: Playground - noun: a place where people can play

import UIKit

//1.条件语句
//if else 语句
var temperature = 10
if temperature < 14 {
    print("It's cold")
}else if(temperature > 100){
    print("It's too hot")
}else if (temperature>=14&&temperature<=100){
    print("It's not cold")
}

let hourOfDay1 = 12
let timeOfDay1: String
if hourOfDay1 < 6 {
    timeOfDay1 = "Early morning"
} else if hourOfDay1 < 12 {
    timeOfDay1 = "Morning"
} else if hourOfDay1 < 17 {
    timeOfDay1 = "Afternoon"
} else if hourOfDay1 < 20 {
    timeOfDay1 = "Evening"
} else if hourOfDay1 < 24 {
    timeOfDay1 = "Late evening"
} else {
    timeOfDay1 = "INVALID HOUR!"
}

//三目运算符
let a = 5
let b = 10
let min = a < b ? a : b
let max = a > b ? a : b

//switch语句

let hourOfDay2 = 12
let timeOfDay2: String
switch (hourOfDay2) {
case 0...5,6...7:
    timeOfDay2 = "Early morning"
case 7...11:
    timeOfDay2 = "Morning"
case 12...16:
    timeOfDay2 = "Afternoon"
case 17...19:
    timeOfDay2 = "Evening"
case 20...23:
    timeOfDay2 = "Late evening"
default:
    timeOfDay2 = "INVALID HOUR!"
}

//case 分支的模式可以使用where语句来判断额外的条件
let number = 10
switch (number) {
case let x where x % 2 == 0:
    print("Even")
default:
    print("Odd")
}


//我们可以使用元组在同一个switch语句中测试多个值。元组中的元素可以是值，也可以是区间。另外，使用下划线（_）来匹配所有可能的值。
let coordinates: (x: Int, y: Int, z: Int) = (3, 2, 5)
switch (coordinates) {
case (0, 0, 0):
    print("Origin")
case (let x, 0, 0)://值绑定
    print("On the x-axis at x = \(x)")
case (0, let y, 0):
    print("On the y-axis at y = \(y)")
case (0, 0, let z):
    print("On the z-axis at z = \(z)")
case (let x, let y, let z):
    print("Somewhere in space at x = \(x), y = \(y), z = \(z)")
}

//控制转移语句
//continue、break和fallthrough语句。return，throw//以后讨论
//continue语句告诉一个循环体立刻停止本次循环迭代，重新开始下次循环迭代。就好像在说“本次循环迭代我已经执行完了”，但是并不会离开整个循环体。

let puzzleInput = "great minds think alike"
var puzzleOutput = ""
for character in puzzleInput.characters {
    switch character {
    case "a", "e", "i", "o", "u", " ":
        continue
    default:
        puzzleOutput.append(character)
    }
}
print(puzzleOutput)

//break 语句
//当在一个循环体中使用break时，会立刻中断该循环体的执行，然后跳转到表示循环体结束的大括号(})后的第一行代码。不会再有本次循环迭代的代码被执行，也不会再有下次的循环迭代产生

//Fallthrough Swift 中的switch不会从上一个 case 分支落入到下一个 case 分支中。相反，只要第一个匹配到的 case 分支完成了它需要执行的语句，整个switch代码块完成了它的执行。相比之下，C 语言要求你显式地插入break语句到每个switch分支的末尾来阻止自动落入到下一个 case 分支中

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)
// 输出 "The number 5 is a prime number, and also an integer."

//guard语句
//guard的执行取决于一个表达式的布尔值。我们可以使用guard语句来要求条件必须为真时，以执行guard语句后的代码。不同于if语句，一个guard语句总是有一个else分句，如果条件不为真则执行else分句中的代码。
func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    
    print("Hello \(name)")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    
    print("I hope the weather is nice in \(location).")
}
greet(["name":"Terry","location":"Beijing"])

//检测API的可用性
if #available(iOS 9, OSX 10.10, *) {
    // 在 iOS 使用 iOS 9 的 API
} else {
    // 使用先前版本的 iOS
}



/*循环语句*/

//for循环

for index in 0..<10 {
    index
}

let endNumber = 9
for index in 0...endNumber {
    index
}

var names = ["Terry1","Terry2","Terry3","Terrry4"]
for name in names {
    name
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}


/*while 循环
while循环运行一系列语句直到条件变成false。这类循环适合使用在第一次迭代前迭代次数未知的情况下。Swift 提供两种while循环形式：

while循环，每次在循环开始时计算条件是否符合；
repeat-while循环，每次在循环结束时计算条件是否符合
*/
var j = 0
while  j < 10{
    j = j+1;

}
var m = 0
repeat {
    m=m+1;
}while m  < 10

