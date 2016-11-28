//: Playground - noun: a place where people can play

import UIKit

//Mini-exercise 1

let age1 = 42
let age2 = 21

let avg1 = ( Double(age1) + Double(age2) ) / 2

//Mini-exercise 2

let firstName = "Hayoung"
let lastName = "Park"
let fullName = firstName + " " + lastName
let myDetails = "Hello, my name is \(fullName)"

//Mini-exercise 3

let temperature = (11, 21, 2016, 1.2)
let temperature2 = (month: 11, day: 21, year: 2016, averageTemperature: 1.2)
let (_, day, _, averageTemperature) = temperature2
var temperature3 = (month: 11, day: 21, year: 2016, averageTemperature: 1.2)
temperature3.averageTemperature = 0.4





//Challenges

let coordinates = (3, 4)
let namedCoordinate = (row: 3, column: 4)

//let character: Character = "Dog"  //not vaild
let character: Character = "🐶"
let string: String = "Dog"
let string2: String = "🐶"

let tuple = (day: 15, month: 8, year: 2015)
//let day = tuple.Day
let day2 = tuple.day

//let name = "Matt"
var name = "Matt"
name += " Galloway"

let tuple2 = (100, 1.5, 10)
let value = tuple2.1

let tuple3 = (day: 15, month: 8, year: 2015)
let month = tuple3.month

let number = 10
let multiplier = 5
let summary = "\(number) multiplied by \(multiplier) equals \(number * multiplier)"

let a = 4
let b: Int32 = 100
let c: UInt8 = 12
let result = a + Int(b) - Int(c)

let difference = Double.pi - Double(Float.pi)














