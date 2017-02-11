//: Playground - noun: a place where people can play

import UIKit

let superviewColor = #keyPath(UIView.superview.backgroundColor)

let view = UIView(frame:CGRect(x:0,y:0,width:100,height:100))
let label = UILabel(frame:CGRect(x:0,y:0,width:10,height:10))

view.backgroundColor = UIColor.blue
view.addSubview(label)

label.value(forKeyPath: superviewColor)
label.superview?.backgroundColor


let arr = [10,20,30,40]
let i = arr.startIndex
//swift2: let next = i.successor()
let next = arr.index(after: i)
arr.index(before: next)

let str = "Hello, Swift3"
let j = str.startIndex
let k = str.index(j, offsetBy: 5)
str[k]

str.substring(with:j..<k)


func hypotenuse(_ a:Float,_ b:Float) -> Float{
    return (a*a + b*b).squareRoot()
}
let aFloat:Float = 3.0
let bFloat:Float = 4.0
hypotenuse(aFloat,bFloat)


func hypotenuse<T:FloatingPoint>(_ a:T,_ b:T) -> T{
    return (a*a + b*b).squareRoot()
}
let aCGFloat: CGFloat = 3.0
let bCGFloat: CGFloat = 4.0
hypotenuse(aCGFloat, bCGFloat)

let aDouble: Double = 3.0
let bDouble: Double = 4.0
hypotenuse(aDouble, bDouble)

//pi
let alpha: Float = 2.0
alpha * Float.pi
alpha * .pi

let beta:CGFloat = 3.0
beta * CGFloat.pi
beta * .pi

//Inifinity
func findMin<T:FloatingPoint>(values:[T]) -> T{
    var res = T.infinity
    for v in values{
        res = v < res ? v : res
    }
    return res
}

//NaN(Not a Number)
let myNaN = Double.nan
let myNan2 = CGFloat.nan
myNaN > 0
myNaN <= 0

func divide<T:FloatingPoint>(_ a: T, _ b: T) -> T{
    if b.isZero{
        return T.nan
    }
    return a / b
}

divide(10.0, 0.0).isNaN


let temperatureData = ["21.5","19.25","27","no data","28.25","no data","23"]
let tempsCelsius = temperatureData.map{Double($0) ?? .nan }

let tempsFahrenheit = tempsCelsius.map { $0 * 1.8 + 32 }

let badAverage = tempsFahrenheit.reduce(0.0, + ) / Double(tempsFahrenheit.count)

let validTemps = tempsFahrenheit.filter{ !$0.isNaN }

let average = validTemps.reduce(0.0, +) / Double(validTemps.count)


// @autoclosure

let username: String? = "qingjie"
let screenname:String
if let username = username{
    screenname = username
}else{
    screenname = "Guest"
}

let screenname2 = username != nil ? username! : "Guest"

func login(username:String,password:String) -> String?{
    //logic
    print("login...")
    return username
}

func generateNickName() -> String{
    print("generating...")
    return "syracuse"
}

let screenname3 = login(username:"qingjie",password:"123456") != nil ?
                    login(username:"qingjie",password:"123456") : "Guest"

let screenname4 = login(username:"qingjie",password:"123456") ?? "Guest"

let screenname5 = login(username:"qingjie",password:"123456") ?? generateNickName()

//self define
infix operator ???
func ???<T>(optional: T?,defaultValue:@autoclosure ()->T) -> T {
    if let value = optional{
        return value
    }
    return defaultValue()
}

let screenname6 = login(username:"qingjie",password:"123456") ??? generateNickName()
let screenname7 = login(username:"qingjie",password:"123456") ??? "Guest"




