//: Playground - noun: a place where people can play

import UIKit

//1
let myAge = 23
let isTeenager:Bool = 13 <= myAge && myAge <= 19

//2
let theirAge = 30
let bothTeenagers:Bool = theirAge >= 13 && theirAge <= 19 && isTeenager

//3
let reader = "seulki kim"
let author = "Matt Galloway"
let authorIsReader:Bool = reader == author

//4
let readerBeforeAuthor = reader < author

//1
if myAge >= 13 && myAge <= 19 {
    print("Teenager")
} else { print("Not a Teenager") }

//2
let answer = myAge >= 13 && myAge <= 19 ? "Teenager" : "Not a Teenager"
print(answer)

//1
var counter = 0

while counter < 10 {
    print("counter is \(counter)")
    counter += 1
}

//2
var roll = 0

repeat {
    roll = Int(arc4random_uniform(6))
    counter += 1
    print("After \(counter) rolls, roll is \(roll)")
} while roll != 0

//challenges
//1
let firstName = "Matt"
var lastName = ""

if firstName == "Matt" {
    lastName = "Galloway"
} else if firstName == "Ray" {
    lastName = "Wenderlich"
}

let fullName = firstName + " " + lastName


//2
let answer4 = true && true
// true

let answer5 = false || false
// false

let answer6 = (true && 1 != 2) || (4 > 3 && 100 < 1)
// true

let answer7 = ((10 / 2) > 3) && ((10 % 2) == 0)
// true

//3
let row = 4
let column = 5

var nextRow = row
var nextColumn = column + 1
if nextColumn > 7 {
    nextColumn = 0
    nextRow += 1
}

if nextRow > 7 {
    nextRow = 0
}

print(nextRow, nextColumn)

//4


