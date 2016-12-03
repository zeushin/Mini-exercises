//: Playground - noun: a place where people can play

import UIKit

//1
var range = 1...10

for i in range {
    print(i*i)
}

//2
for i in range {
    print(sqrt(Double(i)))
}

//3 if-continue를 where로 바꾸기
var sum = 0
for row in 0..<8 where row % 2 != 0 {
    for column in 0..<8 {
        sum += row * column
    }
}


//1
let age:Int = 23
switch age {
case 0...2:
    print("Infant")
case 3...12:
    print("child")
case 13...19:
    print("Teenager")
case 20...39:
    print("Adult")
case 40...60:
    print("Middle aged")
default:
    print("Eldery")
}

//2
let person = (name:"seulki", age:23)

switch person.age {
case 0...2:
    print("\(person.name) is Infant.")
case 3...12:
    print("\(person.name) is child")
case 13...19:
    print("\(person.name) is Teenager")
case 20...39:
    print("\(person.name) is Adult")
case 40...60:
    print("\(person.name) is Middle aged")
default:
    print("\(person.name) is Eldery")
}

//challenges
//1
var sum1 = 0
for i in 0...5 {
    sum1 += i
}

//2
var aLotOfAs = ""
while aLotOfAs.characters.count < 10 {
    aLotOfAs += "a"
}

//5
for i in 0...10 {
    print(10-i)
}

//6
var a = 0.0
for i in 0...10 {
    print(a)
    a += 0.1
}

