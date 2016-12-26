//: Playground - noun: a place where people can play

import UIKit

//mini
//1
struct TV {
    var height: Double
    var width: Double
    
    var diagonal: Int {
        let result = sqrt(height * height + width * width)
        let roundedResult = result.rounded()
        return Int(roundedResult)
    }

}

var macBook13 = TV(height: 17/2.5, width: 27/2.5)
print(macBook13.diagonal)

//2
struct LightBulb {
    static let maxCurrent = 40
    var current = 0 {
        willSet {
            print("NEW: \(newValue)")
        }
        didSet {
            if current > LightBulb.maxCurrent {
                print("Current too high, falling back to previous setting.")
                current = oldValue
            }
        }
    }
}

var light = LightBulb()
light.current = 50
print(light.current)
light.current = 40
print(light.current)

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

//challenge
//A
struct IceCream {
    let name: String = "merona"
    lazy var ingredients: [String] = {
        return ["me", "ro", "na"]
    }()
}

//B
struct FuelTank {
    var lowFuel: Bool = true
    var level: Double = 100 { // decimal percentage between 0 and 1
        didSet {
            if level < 0 {
                level = 0
            }
            if level > 1 {
                level = 1
            }
            if level < level * 0.1 {
                lowFuel = false
            }
        }
    }
    
}
struct Car {
    let make: String
    let color: String
    var tank: FuelTank
}

