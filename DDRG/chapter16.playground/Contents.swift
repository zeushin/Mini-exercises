//: Playground - noun: a place where people can play

import UIKit

// 1
let months = ["January", "February", "March", "April", "May",
              "June", "July", "August", "September", "October",
              "November", "December"]
// 2
func semester(for month: String) -> String {
    switch month {
    case "August", "September", "October", "November", "December":
        return "Autumn"
    case "January", "February", "March", "April", "May":
        return "Spring"
    default:
        return "Not in the school year"
    }
}
// 3
semester(for: "April") // Spring

enum Month: Int {
    case january = 1, february, march, april, may, june, july, august,
    september, october, november, december//, undecember
    
    //mini-ex
    var semester: String {
        switch self {
        case .august, .september, .october, .november, .december:
            return "Autumn"
        case .january, .february, .march, .april, .may:
            return "Spring"
        case .june, .july:
            return "Summer"
        }
    }
    
    //mini
    var monthsUntilWinterBreak: Int {
        return Month.december.rawValue - self.rawValue
    }
    
    //challenge B
    var summerCompute: Int {
        var mon =  Month.june.rawValue - self.rawValue
        if mon < 0 {
            mon += 12
        }
        return mon
    }
}
let month1 = Month.december
let mon = month1.summerCompute

func semester(for month: Month) -> String {
    switch month {
    case .august, .september, .october, .november, .december:
        return "Autumn"
    case .january, .february, .march, .april, .may:
        return "Spring"
    case .june, .july:
        return "Summer"
    }
}

semester(for: .january)

var month = Month.april
month.semester

func monthsUntilWinterBreak(from month: Month) -> Int {
    return Month.december.rawValue - month.rawValue
}
monthsUntilWinterBreak(from: .april)

let fifthMonth = Month(rawValue: 5)!
monthsUntilWinterBreak(from: fifthMonth) //함수

let monthsLeft = fifthMonth.monthsUntilWinterBreak //프로퍼티

enum Math {
    static let e = 2.7183
    
    static func factorial(of number: Int) -> Int {
        return (1...number).reduce(1, *)
    }
}
let nestegg = 25000 * pow(Math.e, 0.07 * 20)


//challenge
//a
enum Coin: Int {
    case penny = 1
    case nickel = 5
    case dime = 10
    case quarter = 25
}
let coinPurse: [Coin] = [.penny, .quarter, .nickel, .dime, .penny, .dime, .quarter]

func sumCoin(purse: [Coin]) -> Int {
    var sum = 0
    for p in purse {
        sum += p.rawValue
    }
    return sum
}

sumCoin(purse: coinPurse)

//c
enum Direction {
    case north
    case south
    case east
    case west
}
let movements: [Direction] = [.north, .north, .west, .south, .west, .south, .south, .east, .east, .south, .east]

var location = (x: 0, y: 0)

for move in movements {
    switch move {
    case .north:
        location.y += 1
    case .south:
        location.y -= 1
    case .east:
        location.x += 1
    case .west:
        location.x -= 1
    }
}

let X = location.x
let Y = location.y