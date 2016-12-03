//: Playground - noun: a place where people can play

import UIKit

// Mini-exercise 1

let range = 1...10
for var i in range {
    print(i * i)
}

// Mini-exercise 2

for var i in range {
    print(sqrt(Double(i)))
}

// Mini-exercise 3

var sum = 0
for row in 0..<8 where row % 2 == 1 {
    for column in 0..<8 {
        sum += row * column
    }
}
print(sum)

// Mini-exercise 1

let age = 30
switch age {
case 0...2:
    print("Infant")
case 3...12:
    print("Child")
case 13...19:
    print("Teenager")
case 20...39:
    print("Adult")
case 40...60:
    print("Middle aged")
default:
    print("Elderly")
}

// Mini-exercise 2

let person = (name: "Masher", age: 33)
switch person.age {
case 0...2:
    print("\(person.name) is an Infant")
case 3...12:
    print("\(person.name) is a Child")
case 13...19:
    print("\(person.name) is a Teenager")
case 20...39:
    print("\(person.name) is an Adult")
case 40...60:
    print("\(person.name) is a Middle aged")
default:
    print("\(person.name) is an Elderly")
}

// Challenges

// 1

var sum2 = 0
for i in 0...5 {
    sum2 += i
}

// 2

var aLotOfAs = ""
while aLotOfAs.characters.count < 10 {
    aLotOfAs += "a"
}

// 3

// easy

// 4

let closed = 3...3
closed.isEmpty

// 5

for var i in 0...10 {
    print(10 - i)
}

// 6

for var i in 0...10 {
    print(Double(i) * 0.1)
}
