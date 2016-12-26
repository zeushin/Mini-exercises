//: Playground - noun: a place where people can play

import UIKit

//1
struct Computer {
    var width: Int
    var height: Int
    
    var diagonal: Int {
        return Int(round(sqrt(Double(height * height + width * width))))
    }
}

var com = Computer(width: 28, height: 15)
print(com.diagonal)

struct Sum {
    var displayCount : Int = 0
    var a : Int
    var b : Int
    var result : Int {
        mutating get {
            displayCount += 1
            return a + b
        }
    }
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
}

var sum = Sum(a: 1, b: 2)
sum.result
print(sum.displayCount)
sum.result
print(sum.displayCount)
sum.result
print(sum.displayCount)
sum.result
print(sum.displayCount)


//2
struct LightBulb {
    static let maxCurrent = 40
    var state = true
    var current = 0 {
        willSet{
            if newValue > LightBulb.maxCurrent {
                state = false
                print("Light is too high!!! LightBulb will be off!!")
            }
        }
        
        didSet {
            if state == false {
                self.current = oldValue
            }
        }
    }
}

//var bulb = LightBulb(state: true, current: 10)
var bulb = LightBulb()
bulb.current = 40
bulb.current = 41
print(bulb.current)



//3
struct Circle {
//    lazy var pi = {
//        return ((4.0 * atan(1.0 / 5.0)) - atan(1.0 / 239.0)) * 4.0
//    }()
    var radius = 0.0
    var circumference: Double {
        get {
            return M_PI * radius * 2
        }
    }
    init (radius: Double) {
        self.radius = radius
    }
}

var circle = Circle(radius: 5)
let circumference = circle.circumference




//Challenges


//A

struct IceCream {
    var name: String = "babamba"
    lazy var ingredients: [String] = ["milk", "sugar", "adzuki beans"]
}

var iceCream = IceCream()


//B

struct FuelTank {
    var lowFuel: Bool
    var level: Double {
        didSet {
            if level < 0.1 {
                lowFuel = true
            } else {
                lowFuel = false
            }
            if level < 0 {
                level = 0
            }
            if level > 1 {
                level = 1
            }
        }
    }
}

struct Car {
    let make: String
    let color: String
    var fuelTank: FuelTank
}

var car = Car(make: "hayoung", color: "black", fuelTank: FuelTank(lowFuel: true, level: 0.5))

car.fuelTank.level = -100
print(car)

car.fuelTank.level = 5
print(car)

car.fuelTank.level = 0.02
print(car)






































