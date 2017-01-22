//: Playground - noun: a place where people can play

import UIKit


//mini
protocol Area {
    var area: Double { get }
}

struct Square: Area {
    var area: Double {
        return 10*10
    }
}

struct Triangle: Area {
    var area: Double {
        return 0.5*10*10
    }
}

struct Circle: Area {
    var area: Double {
        return M_PI*10*10
    }
}

var square = Square()
var triangle = Triangle()
var circle = Circle()

var array: [Area] = []
array.append(square)
array.append(triangle)
array.append(circle)

var areas = array.map {
    $0.area
}

protocol Reflective {
    var typeName: String { get }
}

extension String: Reflective {
    var typeName: String {
        return "I'm a String"
    }
}

"df".typeName

struct Record {
    var wins: Int
    var losses: Int
}

extension Record: Equatable {
    static func ==(lhs: Record, rhs: Record) -> Bool {
        return lhs.wins == rhs.wins &&
            lhs.losses == rhs.losses
    }
}

extension Record: Comparable {
    static func <(lhs: Record, rhs: Record) -> Bool {
        if lhs.wins == rhs.wins {
            return lhs.losses > rhs.losses
        }
        return lhs.wins < rhs.wins
    }
}

let teamA = Record(wins: 14, losses: 11)
let teamB = Record(wins: 23, losses: 8)
let teamC = Record(wins: 23, losses: 9)

teamA > teamB


var leagueRecords = [teamA, teamB, teamC]
leagueRecords.sort()

leagueRecords.min()?.wins
leagueRecords.starts(with: [teamA, teamB])

//challenge
//A
protocol Vehicle {
    func accelerate()
    func stop()
}

protocol Wheeled {
    var numberOfWheels: Int { get }
    var wheelSize: Double { get set }
}

class Bike: Wheeled, Vehicle {
    var peddling = false
    var brakesApplied = false
    var numberOfWheels = 2
    var wheelSize = 16.0
    var bikeName = "seulkui"
    
    init(numberOfWheels: Int, wheelSize: Double, bikeName: String) {
        self.numberOfWheels = numberOfWheels
        self.wheelSize = wheelSize
        self.bikeName = bikeName
    }
    
    func accelerate() {
        peddling = true
        brakesApplied = false
    }
    func stop() {
        peddling = false
        brakesApplied = true
    }
}

extension Bike: Equatable {
    static func ==(lhs: Bike, rhs: Bike) -> Bool {
        return lhs.numberOfWheels == rhs.numberOfWheels
        && lhs.wheelSize == rhs.wheelSize
    }
}

extension Bike: Comparable {
    static func <(lhs: Bike, rhs: Bike) -> Bool {
        return lhs.wheelSize < rhs.wheelSize
    }
}

extension Bike: Hashable {
    var hashValue: Int {
        return bikeName.hashValue
    }
}

extension Bike: CustomStringConvertible {
    var description: String {
        return bikeName
    }
}

var bike1 = Bike(numberOfWheels: 3, wheelSize: 5.5, bikeName: "bike1")
var bike2 = Bike(numberOfWheels: 9, wheelSize: 4.5, bikeName: "bike2")
var bike3 = Bike(numberOfWheels: 2, wheelSize: 2.5, bikeName: "bike3")
var bikes = [bike1, bike2, bike3]
print(bikes)
bikes.sort()
print(bikes)

//B
protocol Feedable {
    func feed()
}
protocol Cagable {
    func caged()
}
protocol Tankable {
    func tanked()
}
protocol Walkable {
    func walk()
}
protocol Cleanable {
    func clean()
}

class Dog: Feedable, Walkable {
    func feed() {
        print("Dog nyam nyam")
    }
    func walk() {
        print("Dog ddoobuk")
    }
}

class Cat: Feedable, Walkable {
    func feed() {
        print("Cat nyam nyam")
    }
    func walk() {
        print("Cat ddoobuk")
    }
}

class Fish: Feedable, Tankable, Cleanable {
    func feed() {
        print("Fish nyamnyam")
    }
    func tanked() {
        print("Fish he-um")
    }
    func clean() {
        print("fish clean")
    }
}

class Bird: Feedable, Cagable, Cleanable {
    
    func feed() {
        print("Bird nyamnyam")
    }
    func caged() {
        print("Bird fly")
    }
    func clean() {
        print("Bird clean")
    }
}
var chicken = Bird()
var dulgi = Bird()
var cgArray: [Cagable] = [chicken, dulgi]

for ch in cgArray {
    ch.caged()
    
    if let bd = ch as? Bird {
        bd.feed()
    }
}