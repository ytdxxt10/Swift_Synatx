//: Playground - noun: a place where people can play

import UIKit

/*数组*/
//1.创建一个数组
//创建一个空数组
//let numbers: Array<Int>
//let numbers1 = Array<Int>()
let numbers2 = [Int]()
let numbers3 = []
//创建一个带有值的数组
let evenNumbers = [2, 4, 6, 8]
let allZeros = Array(count: 5, repeatedValue: 0)
// > [0, 0, 0, 0, 0]
let vowels = ["A", "E", "I", "O", "U"]
let twoArrays = allZeros + evenNumbers

//2.访问和修改数组
var players = ["Terry", "Bob", "Cindy", "Dan"]
players += ["Tes"]
players.count
if players.isEmpty {
    print("array is empty")
}else {
    print(players)
}
//Swift 2.3
//players.first
//players.last
//
//players.minElement()
//players.maxElement()
players[0]
players[1...2]
players[1..<2]

players.append("Tod")
players.insert("Ts", atIndex: 0)


players.removeAtIndex(0)//swift 2.3
//players.remove(at:0)//swift 3.0

players.removeLast()
for playerName in players {
   playerName

}
//enumerate()返回一个由每一个数据项索引值和数据值组成的元组。我们可以把这个元组分解成临时常量或者变量来进行遍历：
for (index,playerName) in players.enumerate() {
   "\(index+1):\(playerName)"
}

func isPlayerExists(playerName: String) -> Bool {
    if players.contains(playerName) {
           return true
    }else {
           return false
    }
}
isPlayerExists("Bob")
isPlayerExists("Terry")
players.contains("Bob")

let scores = [1, 2, 8, 6, 1, 0]
let sum = scores.reduce(100, combine: +)//100+1+2+8+6+1+0
let sc = scores.filter({$0 > 2})//每个与2比较 返回符合条件的数组
sc
let newSc = scores.map({$0 + 1})//返回一个每个元素加1后的数组
newSc




/*字典*/
//1.创建字典
//Swift 的Dictionary类型被桥接到Foundation的NSDictionary类。
//创建一个空字典

//let dic1: Dictionary<String, Int>
//let dic2 = Dictionary<String, Int>()
let dic3 = [String:Int]()
let dic4 = {}
var emptyDictionary: [Int: Int]
emptyDictionary = [:]

//创建一个带有值的字典。
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
var namesAndScores = ["Anna": 2, "Brian": 2, "Craig": 8, "Donna": 6]

//访问和修改字典
airports.count
namesAndScores.count
namesAndScores.isEmpty
namesAndScores["Anna"]
print(namesAndScores.keys)
namesAndScores.values
namesAndScores["Anna"] = 0
//updateValue(_:forKey:)这个方法返回更新值之前的原值。这样使得我们可以检查更新是否成功。
print(namesAndScores.updateValue(2, forKey: "Donna"))
namesAndScores.updateValue(8, forKey: "test")
namesAndScores.removeValueForKey("test")//swift 2.3
//namesAndScores.removedValue(forKey:"DUB")

//字典的遍历
for (keys,values) in namesAndScores {
    "\(keys) \(values)"
}
for key in namesAndScores.keys {
    key
}
for value in namesAndScores.values {
    value
}

let name = namesAndScores.reduce("", combine: {$0 + "\($1.0), "})//将字典的键通过，放在“”中
name

let name1 = namesAndScores.filter({$0.1 > 2})//找出字典的值 >2 的字典
name1
"s".hashValue
1.hashValue
false.hashValue


/*集合
当集合元素顺序不重要时或者希望确保每个元素只出现一次时可以使用集合而不是数组
Swift的Set类型被桥接到Foundation中的NSSet类。
*/
//创建一个集合
let letter: Set<Int>
var letters = Set<Character>()

//创建一个带值的集合
let someSet: Set<Int> = [1, 2, 3, 1]
let anotherSet: Set = [1, 2, 3, 1]
someSet.count
someSet.isEmpty
//someSet.first
//someSet.minElement()
//someSet.maxElement()

//集合的访问和修改
var myTimes: Set = ["8am", "9am", "10am"]

myTimes.insert("11am")
myTimes.remove("8am")
myTimes.contains("10am")


/*使用“是否相等”运算符(==)来判断两个集合是否包含全部相同的值。
使用isSubsetOf(_:)方法来判断一个集合中的值是否也被包含在另外一个集合中。
使用isSupersetOf(_:)方法来判断一个集合中包含另一个集合中所有的值。
使用isStrictSubsetOf(_:)或者isStrictSupersetOf(_:)方法来判断一个集合是否是另外一个集合的子集合或者父集合并且两个集合并不相等。
使用isDisjointWith(_:)方法来判断两个集合是否不含有相同的值。*/

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubsetOf(farmAnimals)
// true
farmAnimals.isSupersetOf(houseAnimals)
// true
farmAnimals.isDisjointWith(cityAnimals)
//遍历一个集合

for se in myTimes {
    se
}
for teSe in myTimes.sort() {//swift 3.0 改为sorted()
    teSe
}

let times: Set = ["3am","1am","8am"]
let unionSet = myTimes.union(times)//相合
let intersectSet = myTimes.intersect(times)//相交
let subtractSet = myTimes.subtract(times)//相合 - times
let exclussiveOrSet = myTimes.exclusiveOr(times)//相合 - 相交
