//: Playground - noun: a place where people can play

import UIKit

//Mini-exercises 1

let myAge = 24
let isTeenager = myAge >= 13 && myAge <= 19
let theirAge = 30
let bothTeenagers = theirAge >= 13 && theirAge <= 19 && isTeenager

let reader = "Park Hayoung"
let author = "Matt Galloway"
let authorIsReader = reader == author
let readerBeforeAuthor = reader > author

//Mini-exercises 2

let myAge2 = 24
if myAge2 >= 13 && myAge <= 19 {
    print("your age is between 13 and 19")
} else {
    print("your age is not between 13 and 19")
}

let answer = myAge2 >= 13 && myAge <= 19 ? "Teenager" : "Not Teenager"

//Mini-exercises 3

var counter = 0
while counter < 10 {
    print("counter is \(counter)")
    counter += 1
}

var counter2 = 0
var roll = 0

repeat {
    roll = Int(arc4random_uniform(6))
    counter2 += 1
    print("After \(counter2), roll is \(roll)")
} while roll != 0



//Challenges

//1
let firstName = "Matt"
var lastName = " "

if firstName == "Matt" {
    lastName = "Galloway"
} else if firstName == "Ray" {
    lastName = "Wenderlich"
}
let fullName = firstName + " " + lastName

//2
let answer1 = true && true
let answer2 = false || false
let answer3 = (true && 1 != 2) || (4 > 3 && 100 < 1)
let answer4 = ((10 / 2) > 3) && ((10 % 2) == 0)

//3
var row = 0
var column = 0
var nextRow = 0
var nextColumn = 0
var current = Int(arc4random_uniform(63))

if current < 64 {
    row = current / 8
    column = current % 8
    
    nextColumn = column + 1
    nextRow = row
    
    if nextColumn >= 8 {
        nextRow = row + 1
        nextColumn = 0
    }
    
    if nextRow == 8 {
        nextRow = 0
    }

    print("Current row value is \(row), column is \(column)")
    print("Next row value is \(nextRow), next column is \(nextColumn)")
}


//4


//5
let month = "november"
let year = 2016







