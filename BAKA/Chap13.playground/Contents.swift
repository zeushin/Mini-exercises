//: Playground - noun: a place where people can play

import UIKit

let months = ["January", "February", "March",
              "April", "May", "June",
              "July", "August", "September",
              "October", "November", "December"]

//1
struct SimpleDate1 {
    var month: String
    
    var monthsUntilWinterBreak: Int {
        get {
            return months.index(of: "December")! - months.index(of: self.month)!
        }
    }
}

let date = SimpleDate1(month: "January")
let monthsLeft = date.monthsUntilWinterBreak




struct SimpleDate2 {
    var month: String
    var day: Int
    
    init(month: String, day: Int) {
        self.month = "March"
        self.day = 1
    }
}

let date2 = SimpleDate2(month: "February", day: 12)


//2
struct Math2 {
    static func factorial(of number: Int) -> Int {
        return (1...number).reduce(1, *)
    }
}

extension Math2 {
    static func primeFactors(of value: Int) -> [Int] {
        // 1
        var remainingValue = value
        // 2
        var testFactor = 2
        var primes: [Int] = []
        // 3
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

let math = Math2.primeFactors(of: 81)
//print(math)






//Challenges

//1

struct Circle {
    var radius = 0.0
    
    var area: Double {
        get {
            return .pi * radius * radius
        }
        set {
        
        }
    }
    
    init (radius: Double) {
        self.radius = radius
    }
    
    mutating func grow(byFactor factor: Double) {
        area = area * factor
    }
}

var circle = Circle(radius:5)
print(circle.grow(byFactor: 3))

print("=========================")
//2
struct SimpleDate {
    var month: String
    var day: Int
    
    var totalMonth: Int {
        switch month {
        case "January", "March", "May", "July", "August", "October", "December":
            return 31
        case "February":
            return 28
        case "April", "June", "September", "November":
            return 30
        default:
            return 0
        }
    }
    
    init(month: String, day: Int) {
        self.month = month
        self.day = day
    }
    
    mutating func advance() {
        //day += 1
        
        if day == totalMonth {
            if month == "December" {
                month = "January"
            } else {
                month = months[months.index(of: month)!.advanced(by: 1)]
            }
            day = 1
        } else {
            day += 1
        }
    }
}

var current = SimpleDate(month: "December", day: 30)
current.advance()
let currentMonth = current.month
let currentDay = current.day
print(currentMonth)
print(currentDay)

print("=========================")
//3
struct Math {
    static func isEven(_ number: Int) -> Bool {
        return number % 2 == 0
    }
    static func isOdd(_ number: Int) -> Bool {
        return number % 2 != 0
    }
}

print(Math.isEven(2))
print(Math.isEven(3))
print(Math.isOdd(4))
print(Math.isOdd(5))


print("=========================")
//4
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    var isOdd: Bool {
        return self % 2 != 0
    }
}

print(2.isEven)
print(3.isEven)
print(4.isOdd)
print(5.isOdd)


print("=========================")
//5
extension Int {
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

print(81.primeFactors())



















