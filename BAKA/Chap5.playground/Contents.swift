//: Playground - noun: a place where people can play

import UIKit

//Mini-exercises1

//1
var range = 1...10

//2
var result = 0

for i in 1...10 {
    result = i*i
    print(result)
}

//3
var sum = 0
for row in 0..<8 where row % 2 != 0 {
    for column in 0..<8 {
        sum += row * column
    }
}

//Mini-exercises2

//1
var age = 24
switch age {
case 0...2:
    print("infant")
case 3...12:
    print("Child")
case 13...19:
    print("Teeanger")
case 20...39:
    print("Adult")
case 40...60:
    print("Middle aged")
default:
    print("Elderly")
}

//2
let person = (name : "박하영", age : 24)

switch person.age {
case 0...2:
    print("\(person.name) is an Infant")
case 3...12:
    print("\(person.name) is a Child")
case 13...19:
    print("\(person.name) is a Teeanger")
case 20...39:
    print("\(person.name) is an Adult")
case 40...60:
    print("\(person.name) is a Middle aged")
default:
    print("\(person.name) is an Elderly")
}


//Challenges

//1
var sum2 = 0
for i in 0...5 {
    sum += i
}

//2
var aLotOfAs = ""
while aLotOfAs.characters.count < 10 {
    aLotOfAs += "a"
    print(aLotOfAs)
}

//4
let closed = 2..<3

//5
for i in 0...10 {
    print(10 - i)
}

//6

for i in 0...10 {
    print (Double(i) * 0.1)
}






