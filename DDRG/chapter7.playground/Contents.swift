//: Playground - noun: a place where people can play

import UIKit

//1
var myFavoriteSong: String? = "sul ja li"

//2
let parsedInt = Int("10")

//3
let parsedInt2 = Int("mungmung")


//1
if let myFavoriteSong = myFavoriteSong {
    print("My favorite song is \(myFavoriteSong)")
} else {
    print("I don't have a favorite song.")
}

//challenges
//A
//var age: Int = nil 에러~
var age: Int? = nil //nil은 옵셔널만 가질 수 있다.

//B
func divideIfWhole(value: Int, by divisor: Int) -> Int? {
    if value % divisor == 0 {
        let count = value/divisor
        print("Yep, it divides \(count) times.")
        return count
    } else {
        print("Not divisible")
        return nil
    }
}
divideIfWhole(10, by: 2)
divideIfWhole(10, by: 3)

//C
func ddivideIfWhole(value: Int, by divisor: Int) -> Int? {
    var count: Int? = nil
    if value % divisor == 0 {
        count = value / divisor
    }
    
    let times = count ?? 0
    print("It divides \(times) times")
    
    return times
}
ddivideIfWhole(10, by: 2)
ddivideIfWhole(10, by: 7)




