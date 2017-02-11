//: Playground - noun: a place where people can play

import UIKit


class StudentList{
    
    var students : [String]
    
    init(students:[String]){
        self.students = students
    }
    
    func addStudent(name:String, at index: Int){
        self.students.insert(name, at: index)
    }
    
    func addStudent(name:String,after student:String){
        if let index = students.index(of:student){
            self.students.insert(name, at: index)
        }
    }
    
    func addStudent(name:String,before student:String){
        if let index = students.index(of: student){
            self.students.insert(name, at: index+1)
        }
    }
    
}

let list = StudentList(students:["A","B","C","D"])

let f = list.addStudent(name: at: )
f("qingjie",0)
list

let f2 = list.addStudent(name:  after:)
let f3 = list.addStudent(name:  before:)

