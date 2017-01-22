//: Playground - noun: a place where people can play

import UIKit

//protocol Vehicle {
//    func accelerate()
//    func stop()
//}
//
//class Unicycle: Vehicle {
//    
//    var pedding = false
//    
//    func accelerate() {
//        pedding = true
//    }
//    
//    func stop() {
//        pedding = false
//    }
//}

//Mini-exercises

//1
protocol Area {
    var area: Double { get }
}

struct Square: Area {
    var area: Double {
        return 10 * 10
    }
}

struct Triangle: Area {
    var area: Double {
        return 0.5 * 10 * 10
    }
}

struct Circle: Area {
    var area: Double {
        return M_PI * 5 * 5
    }
}

let square = Square()
let triangle = Triangle()
let circle = Circle()

var shape: [Area] = [square, triangle, circle]

print(shape.map{ $0.area })


protocol Reflective {
    var typeName: String { get }
}
extension String: Reflective {
    var typeName: String {
        return "I'm a String"
    }
}

let title = "hi"
title.typeName


protocol Named {
    var name: String { get set }
}
class ClassyName: Named {
    var name: String
    init(name: String) {
        self.name = name
    }
}
struct StructyName: Named {
    var name: String
}

var named = ClassyName(name: "Classy")
var copy = named
named.name = "Still Classy"
named.name // Still Classy
copy.name

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
var leagueRecords = [teamA, teamB, teamC]
leagueRecords.sort()

leagueRecords.max() // {wins 23, losses 8}
leagueRecords.min()
leagueRecords.starts(with: [teamA, teamC]) // true
leagueRecords.contains(teamA) // true


//Challenges

print("===============A===============")

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
    var numberOfWheels: Int
    var wheelSize: Double
    var wheelName: String
    
    init(wheelName: String, numberOfWheels: Int, wheelSize:Double) {
        self.wheelName = wheelName
        self.numberOfWheels = numberOfWheels
        self.wheelSize = wheelSize
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
        return wheelName.hashValue
    }
}

extension Bike: CustomStringConvertible {
    var description: String {
        return ("\(wheelName)")
    }
}


let bike1 = Bike(wheelName: "bike1", numberOfWheels: 2, wheelSize: 30)
let bike2 = Bike(wheelName: "bike2", numberOfWheels: 4, wheelSize: 15)
let bike3 = Bike(wheelName: "bike3", numberOfWheels: 5, wheelSize: 10)
let bike4 = Bike(wheelName: "bike4", numberOfWheels: 1, wheelSize: 20)

var bike = [bike1, bike2, bike3, bike4]

print(bike)
bike.sort()
print(bike)

print("===============B===============")

protocol Fedable {
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

protocol Cleanble {
    func cleaned()
}


class Dogs: Fedable, Walkable {
    func feed() {
        print("개가 밥 먹는다")
    }
    
    func walk() {
        print("개가 걷는다")
    }
}

class Cats: Fedable, Walkable {
    func feed() {
        print("고양이가 밥을 먹는다")
    }
    
    func walk() {
        print("고양이가 걷는다")
    }
}

class Fish: Fedable, Tankable, Cleanble {
    func feed() {
        print("물고기가 밥을 먹는다")
    }
    
    func tanked() {
        print("물고기는 탱크가 필요하다")
    }
    
    func cleaned() {
        print("탱크 청소")
    }
}

class Birds: Fedable, Cagable, Cleanble {
    func feed() {
        print("새가 밥을 먹는다")
    }
    
    func caged() {
        print("새는 케이지가 필요하다")
    }
    
    func cleaned() {
        print("케이지 청소")
    }
}

let bird1 = Birds()
let bird2 = Birds()

var caged: [Cagable] = [bird1, bird2]

for bird in caged {
    bird.caged()
    
    if let bd = bird as? Birds {
        bd.cleaned()
    }
}












