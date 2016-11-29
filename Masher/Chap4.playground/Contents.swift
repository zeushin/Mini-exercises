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

// Challenges 7

for var idx in 0...10 {
    print(pow(2, idx))
}

// Challenges 8

let n = 7
var n_2 = 1
var n_1 = 1
var fibonacci = 0
for var idx in 1...n {
    if idx == 0 {
        fibonacci = 1
    } else if idx == 1 {
        fibonacci = 1
    } else {
        fibonacci = n_2 + n_1
    }
    n_2 = n_1
    n_1 = fibonacci
}
print("Fibonacci: \(fibonacci)")

// Challenges 9

let facN = 5
var factorial = 1
for var idx in 1...facN {
    factorial *= idx
}
print("Factorial: \(factorial)")

// Challenges 10

var countNum2 = 0
var countNum3 = 0
var countNum4 = 0
var countNum5 = 0
var countNum6 = 0
var countNum7 = 0
var countNum8 = 0
var countNum9 = 0
var countNum10 = 0
var countNum11 = 0
var countNum12 = 0
var counting = 0

for i in 1...6 {
    for j in 1...6 {
        let sum = i + j
        if sum == 2 {
            countNum2 += 1
        } else if sum == 3 {
            countNum3 += 1
        } else if sum == 4 {
            countNum4 += 1
        } else if sum == 5 {
            countNum5 += 1
        } else if sum == 6 {
            countNum6 += 1
        } else if sum == 7 {
            countNum7 += 1
        } else if sum == 8 {
            countNum8 += 1
        } else if sum == 9 {
            countNum9 += 1
        } else if sum == 10 {
            countNum10 += 1
        } else if sum == 11 {
            countNum11 += 1
        } else if sum == 12 {
            countNum12 += 1
        }
        counting += 1
    }
}

print("2's count: \(countNum2), odds: \(Double(countNum2) / Double(counting) * 100)%")
print("3's count: \(countNum3), odds: \(Double(countNum3) / Double(counting) * 100)%")
print("4's count: \(countNum4), odds: \(Double(countNum4) / Double(counting) * 100)%")
print("5's count: \(countNum5), odds: \(Double(countNum5) / Double(counting) * 100)%")
print("6's count: \(countNum6), odds: \(Double(countNum6) / Double(counting) * 100)%")
print("7's count: \(countNum7), odds: \(Double(countNum7) / Double(counting) * 100)%")
print("8's count: \(countNum8), odds: \(Double(countNum8) / Double(counting) * 100)%")
print("9's count: \(countNum9), odds: \(Double(countNum9) / Double(counting) * 100)%")
print("10's count: \(countNum10), odds: \(Double(countNum10) / Double(counting) * 100)%")
print("11's count: \(countNum11), odds: \(Double(countNum11) / Double(counting) * 100)%")
print("12's count: \(countNum12), odds: \(Double(countNum12) / Double(counting) * 100)%")

