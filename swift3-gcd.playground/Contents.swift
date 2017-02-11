//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

//swift2:
//let queue = dispatch_queue_create("com.qingjie.myqueue",nil)
//dispathch_async(queue){
//    print("Hello World")
//}

let queue = DispatchQueue(label:"com.qingjie.myqueue")
queue.async {
    print("Hello World")
}

queue.async {
    for i in 0...10000{
        print(i,"- Hello World")
    }
}

for i in 0...10000{
    print(i,"- Hello swift")
}


