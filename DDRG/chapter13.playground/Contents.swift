//: Playground - noun: a place where people can play

import UIKit

//let months = ["January", "February", "March",
//              "April", "May", "June",
//              "July", "August", "September",
//              "October", "November", "December"]
//
////mini
//////////1
//struct SimpleDate {
//    var month: String
//    
////    func monthsUntilWinterBreak(from date: SimpleDate) -> Int {
////        return months.index(of: "December")! - months.index(of: date.month)!
////    }
//    var monthsUntilWinterBreak: Int {
//        get {
//          return months.index(of: "December")! - months.index(of: self.month)!
//        }
//    }
//}
//
//struct SimpleDate2 {
//    var month: String
//    var day: Int
////    init() {
////        month = "March"
////        day = 1
////    }
//    
//    init(month: String, day: Int) {
//        self.month = month
//        self.day = day
//    }
//}
//
//let date = SimpleDate2(month: "February", day: 14)
////let date = SimpleDate2()
//
////mini
/////////2
//struct Math {
//    // 1
//    static func factorial(of number: Int) -> Int {
//        // 2
//        return (1...number).reduce(1, *)
//    }
//    static func plusPlus(of number: Int) -> Int {
//        // 2
//        return (1...number).reduce(1, +)
//    }
//}
//// 3
//let factorial = Math.factorial(of: 6) // 720
//let pp = Math.plusPlus(of: 8)
//
//extension Math {
//    static func primeFactors(of value: Int) -> [Int] {
//        // 1
//        var remainingValue = value
//        // 2
//        var testFactor = 2
//        var primes: [Int] = []
//        // 3
//        while testFactor * testFactor <= remainingValue {
//            if remainingValue % testFactor == 0 {
//                primes.append(testFactor)
//                remainingValue /= testFactor
//            }
//            else {
//                testFactor += 1
//            }
//        }
//        if remainingValue > 1 {
//            primes.append(remainingValue)
//        }
//        return primes
//    }
//    
//}
//
//
////challenge
////1
//struct Circle {
//    var radius = 0.0
//    var area: Double {
//        get {
//            return .pi * radius * radius
//        }
//        set {
//            newValue
//        }
//    }
//    init (radius: Double) {
//        self.radius = radius
//    }
//    
//    mutating func grow (by factor: Double) {
//        self.area = self.area * factor
//    }
//}
//
//var circle = Circle(radius: 4)
//let originalCircleArea = circle.area // 78.54
//circle.grow(by: 3)
//let newCircleArea = circle.area // 235.62

//2
let months = ["January", "February", "March",
              "April", "May", "June",
              "July", "August", "September",
              "October", "November", "December"]
struct SimpleDate {
    var month: String
    var day: Int
    init(month: String, day: Int) {
        self.month = month
        self.day = day
    }
    mutating func advance() {
        if day > 31 {
            month = "January"
            day = 1
        } else {
            day += 1
        }
    }
}
var current = SimpleDate(month: "December", day: 31)
current.advance()
let currentMonth = current.month // December; should be January!
let currentDay = current.day

//3
struct Math {
    static func isEven(of number: Int) -> Bool {
            return number % 2 == 0
    }
    static func isOdd(of number: Int) -> Bool {
            return number % 2 != 0
    }
}

//4, 5
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    var isOdd: Bool {
        return self % 2 != 0
    }
    
    func primeFactors() -> [Int] {
        var remainingValue = self
        var testFactor = 2
        var primes: [Int] = []
        
        while testFactor * testFactor <= remainingValue {
            if remainingValue % testFactor == 0 {
                primes.append(testFactor)
                remainingValue /= testFactor
            }
            else {
                testFactor += 1
            }
        }
        if remainingValue > 1 {
            primes.append(remainingValue)
        }
        return primes
    }
    
}
4.primeFactors()
8.primeFactors()