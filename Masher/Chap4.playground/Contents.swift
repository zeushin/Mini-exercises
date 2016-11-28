//: Playground - noun: a place where people can play

import UIKit

// Mini-exercise 1

let myAge = 33
let isTeenager = myAge >= 13 && myAge <= 19

// Mini-exercise 2

let theirAge = 30
let bothTeenagers = isTeenager && theirAge >= 13 && theirAge <= 19

// Mini-exercise 3

let reader = "Masher"
let author = "Matt Galloway"
let authorIsReader = reader == author

// Mini-exercise 4

let readerBeforeAuthor = reader > author



// Mini-exercise 1

let myAge2 = 33
if myAge2 >= 13 && myAge2 <= 19 {
    print("Teenager")
} else {
    print("Not a teenager")
}

// Mini-exercise 2

myAge2 >= 13 && myAge2 <= 19 ? print("Teenager") : print("Not a teenager")


// Mini-exercise 1

var counter = 0
while counter < 10 {
    print(counter)
    counter += 1
}

// Mini-exercise 2

var counter2 = 0
var roll = 0

repeat {
    roll = Int(arc4random_uniform(6))
    counter2 += 1
    print("After \(counter2) rolls, roll is \(roll)")
} while roll != 0



// Challenges 1

let firstName = "Matt"
var lastName = ""
if firstName == "Matt" {
    lastName = "Galloway"
} else if firstName == "Ray" {
    lastName = "Wenderlich"
}
let fullName = firstName + " " + lastName

// Challenges 2

let answer0 = true && true
let answer1 = false || false
let answer2 = (true && 1 != 2) || (4 > 3 && 100 < 1)
let answer3 = ((10 / 2) > 3) && ((10 % 2) == 0)

// Challenges 3

var current = Int(arc4random_uniform(63))
print("current: \(current)")
var column = current % 8
var row = current / 8
print("row: \(row), column: \(column)")

var nextColumn = column + 1
var nextRow = row

if nextColumn > 7 {
    nextColumn = 0
    nextRow = row + 1
}

if nextRow > 7 {
    nextRow = 0
}

print("next row: \(nextRow), next column: \(nextColumn)")

// Challenges 4

let a = 2
let b = 2
let c = 2

let d = Double(b * b - 4 * a * c)

if d > 0 {
    print((sqrt(Double(b * b - 4 * a * c)) - Double(b)) / Double(2 * a))
} else {
    print((sqrt(-Double(b * b - 4 * a * c)) - Double(b)) / Double(2 * a))
}

// Challenges 5

let month = "february"
let year = 2016

if month == "january" || month == "march" || month == "june" || month == "august" || month == "october" || month == "december" {
    print("number of days in the month: \(31)")
} else if month == "april" || month == "july" || month == "september" || month == "november" {
    print("number of days in the month: \(30)")
} else if month == "february" {
    if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0) {
        print("number of days in the month: \(29)")
    } else {
        print("number of days in the month: \(28)")
    }
}

// Challenges 6

let number = 8
let lg2 = log2(Double(number))
if pow(2, lg2) == Double(number) {
    print("is a power of 2")
} else {
    print("is not a power of 2")
}










