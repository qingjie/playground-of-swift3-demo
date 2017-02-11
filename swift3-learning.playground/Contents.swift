//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("Hello, Swift3")

var a = 3

a += 1
a -= 1


for i in 1 ..< 10 {
    print(i)
}

for i in (1...10).reversed(){
    print(i)
}

print("----------- how to use stride-----------")

for i in stride(from: 0, to: 10, by: 2){
    print(i)
}

for i in stride(from: 0, through: 10, by: 2){
    print(i)
}

for i in stride(from: 10, to: 0, by: -2){
    print(i)
}

for i in stride(from: 0, to: 1.5, by: 0.1){
    print(i)
}

print("-------------------")

// operate override
//func <(t1:(Int,Int), t2:(Int,Int)) -> Bool {
//    if t1.1 != t2.1 {
//        return t1.1 < t2.1
//    }
//    return t1.0 < t2.0
//}

let score1 = (chinese:90, math:95)
let score2 = (chinese:90, math:100)
let score3 = (chinese:100, math:90)


score1 < score2

score3 < score2


func printScore(chinese: Int,math:Int){
    print("chinese score: \(chinese) , math score: \(math)")
}

printScore(chinese: score1.chinese,math: score1.math)


var arr = [0,1,2,3,4]
//swift2: arr.indexOf(3)
arr.index(of:3)
arr.index(before:3)
arr.index(after:3)

//swift2: arr.removeAtIndex(3)
arr.remove(at: 3)
print(arr)

UIColor.orange
//swift2: arr.maxElement()
arr.max()
arr.min()

//swift2: arr.insert(100,atIndex:0)
arr.insert(6, at: 0)



var str1 = "Hello, Swift3"
//swift2: str1.stringByAppendingString("world")
str1.append("!")

str1.appending("!!!!")

str1

var scores = [98,92,78,100]
for scoreInfo in scores.enumerated(){
    print(scoreInfo)
}
scores.sorted()
scores
scores.sort()
scores
scores.sorted(by: >)
scores
scores.sort(by: >)
scores



var arr1 = [0,1,2,3,4]
arr1.reversed()
arr1
arr1.reverse()
arr1

for i in (1...5).reversed(){
    print(i)
}

for e in arr1.reversed(){
    print(e)
}

for (index,item) in arr1.reversed().enumerated(){
    print(index,item)
}




//swift2: numberOfSectionsIntableView(tableView)
//swift3: numberOfSections(in:tableView)

//swift2: pngImageData.writeToURL(fileURL,atomically:false)
//swift3: pngImageData.write(to:fileURL,options:[])

//swift2: addQuadCurveToPoint(endPoint,controlPoint:controlPoint)
//swift3: addQuadCurve(to:endPoint, controlPoint: controlPoint)

//swift2: WKInterfaceDevice.currentDevice()
//swift3: WKInterfaceDevice.current()

//swift2:
func welcomeToName(name: String,with message:String) -> String{
    return message + " " + name
}
welcomeToName(name: "qingjie", with: "zhao")

//swift3
func welcome(name:String,message:String) -> String {
    return message + " " + name
}
welcome(name: "qingjie", message: "zhao")

func welcome(to name:String, with message:String) -> String {
    return message + " " + name
}
welcome(to: "qingjie", with: "zhao")

func welcome(to name:String, message:String) -> String {
    return message + " " + name
}
welcome(to: "qingjie", message: "zhao")


func gcd(a:Int,b:Int) -> Int{
    return 0
}
gcd(a:4, b:12)

func gcd(_ a:Int,_ b:Int) -> Int{
    return 0
}
gcd(4, 12)

func add(_ a: Int, and b:Int ) -> Int{
    return a + b
}
add(4,and: 2)


func toBinary(num:Int) -> String{
    
    var localNum = num
    
    var res = ""
    repeat{
        res = String(localNum%2) + res
        localNum /= 2
    }while num != 0
    return res
}

func swapTwoInts(_ a: inout Int, _ b: inout Int){
    (a,b) = (b,a)
}

var a1 = 3
var b1 = 4
swapTwoInts(&a1, &b1)
a1
b1

func welcome1(title:String = "Welcome",message:String = "Hello", name:String = "Guest") -> String{
    return title + "! " + message + " " + name + "!"
}
welcome1(title: "Hello")


func changeScore1(score:Int)->Int{
    return Int(sqrt(Double(score))*10)
}

func changeScore2(score:Int) -> Int{
    return Int(Double(score) / 150.0 * 100.0)
}

func selectScore(option:Int) -> (Int) -> Int{
    switch option {
    case 1:
        return changeScore1;
    case 2:
        return changeScore2;
    default:
        return {return $0}
    }
}


enum HKQuantityTypeIdentifier : String{
    case bodyMassIndex
    case height
    case width
}

//Swift2: UIStatusBarStyle.LightContent
UIStatusBarStyle.lightContent

//Swift2: Optional<String>.None
Optional<String>.none


let vector = (4,0)

//swift2
//if case ( let x , 0) = vector where x > 2 && x < 5 {
//    print("It's the vector!")
//}

if case ( let x , 0) = vector , x > 2 && x < 5 {
    print("It's the vector!")
}

func doMath(a: Int? , b: Int?, c: Int?) -> Int?{
    
    guard let a = a ,  let b = b, let c = c,
        a > 0, b<=0,c%2 == 0 else{
            return nil
    }
    return 0
}


func anyCommonElements<T:Sequence, U:Sequence >(lhs: T, _ rhs: U) -> Bool
    where
    T.Iterator.Element:Equatable,
    T.Iterator.Element == U.Iterator.Element{
        return true
        
}


//swift2: NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory,inDomains:.userDomainMask)
FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)

//swift2: NSBundle.mainBundle()
Bundle.main

//swift2: NSJSONSerialization.JSONObjectWithData(data,options:[])
//swift3: JSONSerialization.jsonObject(with:data,options:[])


func myFatalError() -> Never {
    print("!!!!!!")
    fatalError()
}
func mod(_ a: Int, _ b: Int) -> Int{
    guard b != 0 else{
        myFatalError()
    }
    return a%b
}

//mod(10,0)



let aa: Int! = 5
let b = aa //b is Int?
let c:Int = aa
let d = aa + 0 //d is Int



