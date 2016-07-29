//: Playground - noun: a place where people can play

import UIKit

let str = "Hello String"
//1.初始化空字符串
var emptyString = "" //等价于
var anotherEmptyString = String()
//2.判断字符串是否为空
if emptyString.isEmpty {
    print("It‘s a  empty string")
}
//3.字符串的可变性
var variableString = "mutableString"
variableString += " can Change"

let constantString = "constantString"
//constantString + = "can not change"//产生编译错误
/*4.字符串是值类型
Swift 的String类型是值类型。 如果您创建了一个新的字符串，那么当其进行常量、变量赋值操作，或在函数/方法中传递时，会进行值拷贝。 任何情况下，都会对已有字符串值创建新副本，并对该新副本进行传递或赋值操作。
使用字符。*/
for character in "Dog!🐶".characters {
    print(character)
}
let exclamationMark: Character = "!"

//字符串可以通过传递一个值类型为Character的数组作为自变量来初始化：

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)

//连接字符串和字符
var str1 = "look"
var str2 = "here"
str1+=str2
//用append（）将一个字符加到字符串的尾部
str1.append(exclamationMark)
//字符串的插值
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)" // message is "3 times 2.5 is 7.5"

//字符串字面量的特殊字符

//转义字符\0(空字符)、\\(反斜线)、\t(水平制表符)、\n(换行符)、\r(回车符)、\"(双引号)、\'(单引号)。

//计算字符的数量
var strLength = "str Character length!"
let length = strLength.characters.count

//5.访问和修改字符串
/*每一个String值都有一个关联的索引(index)类型，String.Index，它对应着字符串中的每一个Character的位置。
使用startIndex属性可以获取一个String的第一个Character的索引。使用endIndex属性可以获取最后一个Character的后一个位置的索引。因此，endIndex属性不能作为一个字符串的有效下标。如果String是空串，startIndex和endIndex是相等的。
 
 index(before:) 表示他之前的一个字符
 index(after:) 表示他之后的一个字符
  index(_:offsetBy:) 获得想要的偏移量

你可以使用下标语法来访问String特定索引的Character。
*/

let testStr = "startIndex endIndex"
testStr[testStr.startIndex]
//swift 2.3
testStr[testStr.endIndex.predecessor()]

//testStr[testStr.index(before: testStr.endIndex)] //x Swift 3.0
//testStr[testStr.index(after: testStr.startIndex)]//t

//let index = testStr.index(testStr.startIndex, offsetBy: 7) 3.0 需要Xcode 8出来才可以运行
//testStr[index];//d

//swift 2.3
testStr[testStr.startIndex.successor()]


for index in testStr.characters.indices {

    print("\(testStr[index])", terminator:" ")
}

//6.字符串的插入和删除
var hello = "Helllo"
//插入一个字符
hello.insert("!", atIndex: hello.endIndex)

//swift 2.3
hello.insertContentsOf(" insert & delete".characters, at:hello.endIndex.predecessor())

//swift 3.0
//hello.insert(contentsOf:" there".characters, at: hello.index(before: hello.endIndex))

//删除字符串中指定索引的字符。
hello.removeAtIndex(hello.endIndex.predecessor())//2.3
//Swift 3.0
//hello.remove(at: hello.index(before: hello.endIndex))

//删除字符串中指定索引的字符串
let range = hello.endIndex.advancedBy(-6)..<hello.endIndex
//Swift 3.0
//let range = hello.index(hello.endIndex, offsetBy: -6)..<hello.endIndex
//hello.removeSubrange(range)
hello.removeRange(range)
//7.比较字符串
//字符串/字符相等
let str_1 = "How are you?"
let str_2 = "How are you?"
if str_1 == str_2 {

 print("str_1 is equal to str_2")
}
//前缀和后缀相等
let tempArray = ["Terry's dog is cute",
                 "Terry's cat is cute",
                 "Tod's dog is cute",
                 "Tod's dog is cute"]
for sstr in tempArray {
    if sstr .hasPrefix("Terry's")&&sstr.hasSuffix("cute") {
        print("Terry's cute")
    }else {
        print("Tod's cute")
    
    }
}

