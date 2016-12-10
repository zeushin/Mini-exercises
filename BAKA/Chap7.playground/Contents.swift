//: Playground - noun: a place where people can play

import UIKit

//Mini-exercises 1

//1
let myFavoriteSong: String? = nil

//2
let parsedInt = Int("10")

//3
let parsedInt2 = Int("dog")


//Mini-exercises 2

//1
if let myFavoriteSong = myFavoriteSong {
    print(myFavoriteSong)
} else {
    print("I don't have a favorite song")
}

//Challenges

//1
var age: Int? = nil
var distance: Float = 26.7

//2
func divideIfWhole(_ value: Int, by divisor: Int) -> Int? {
    if value % divisor == 0 {
        let result = value / divisor
        print ("It divides \(result)")
        return result
    } else {
        print("Not divisble")
        return nil
    }
}

divideIfWhole(10, by: 2)
divideIfWhole(10, by: 3)

//3
func divideIfWhole2(_ value: Int, by divisor: Int) -> Int {
    var result: Int? = nil
    
    if value % divisor == 0 {
        result = value / divisor
    }
    
    let times = result ?? 0
    print ("It divides \(times) time")
    
    return times
}

divideIfWhole2(10, by: 2)
divideIfWhole2(10, by: 3)
