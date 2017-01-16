//: Playground - noun: a place where people can play

import UIKit

//Mini-Exercises

enum Month2: Int {
    case january = 1, february, march, april, may, june, july, august,
    september, october, november, december
    
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
    
    var monthsUntilWinterBreak: Int {
        return Month2.december.rawValue - self.rawValue
    }
}

var month = Month2.april
let semester = month.semester
month = .november
month.semester

let fifthMonth = Month2(rawValue: 5)!
let monthsLeft = fifthMonth.monthsUntilWinterBreak




//func semester(for month: Month) -> String {
//    switch month {
//    case .august, .september, .october, .november, .december:
//        return "Autumn"
//    case .january, .february, .march, .april, .may:
//        return "Spring"
//    case .june, .july:
//        return "Summer"
//    }
//}

//var month = Month.april
//semester(for: month)
//month = .november
//semester(for: month)



enum light {
    case on, off
}



enum Math {
    static let e = 2.7183
    
    static func factorial(of number: Int) -> Int {
        return (1...number).reduce(1, *)
    }
}

let nestegg = 25000 * pow(Math.e, 0.07 * 20)


//Challenges

print("===================A===================")

enum Coin: Int {
    case penny = 1
    case nickel = 5
    case dime = 10
    case quarter = 25
}
let coinPurse: [Coin] = [.penny, .quarter, .nickel, .dime, .penny, .dime, .quarter]

func value(_ purse: [Coin]) -> Int {
    var money = 0
    
    for coin in purse {
        money = money + coin.rawValue
    }
    return money
}

print(value(coinPurse))


print("===================B===================")

enum Month: Int {
    case january = 1, february, march, april, may, june, july, august,
    september, october, november, december
    
    var monthsUntilSummerBreak: Int {
        var leftMonth = Month.june.rawValue - self.rawValue
        if leftMonth < 0 {
            leftMonth = leftMonth + 12
        }
        return leftMonth
    }
}

let result = Month.october
let leftMonth = result.monthsUntilSummerBreak
print(leftMonth)

print("===================C===================")

enum Direction {
    case north
    case south
    case east
    case west
}

let movements: [Direction] = [.north, .north, .west, .south, .west, .south, .south, .east, .east, .south, .east]

var location = (x: 0, y: 0)

for movement in movements {
    switch movement {
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
print(location)
