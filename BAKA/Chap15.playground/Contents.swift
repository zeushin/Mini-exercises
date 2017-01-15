//: Playground - noun: a place where people can play

import UIKit

struct Grade {
    let letter: String
    let points: Double
    let credits: Double
}

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class Student: Person {
    var grades: [Grade] = []
    static var graduates: [String] = []
    
    func recordGrade(_ grade: Grade) {
        grades.append(grade)
    }
    
    deinit {
        //static 으로 접근할 때는 객체. 으로 접근
        Student.graduates.append("\(firstName), \(lastName)")
    }
}

var a = Student(firstName: "a", lastName: "aa")
var b = Student(firstName: "b", lastName: "bb")

a = Student(firstName: "aaa", lastName: "a")
b = Student(firstName: "bbb", lastName: "b")

print(Student.graduates)






class BandMember: Student {
    var minimumPracticeTime = 2
}

class OboePlayer: BandMember {
    override var minimumPracticeTime: Int {
        get {
            return super.minimumPracticeTime * 2
        }
        set {
            super.minimumPracticeTime = newValue / 2
        }
    }
}

func phonebookName(_ person: Person) -> String {
    return "\(person.lastName), \(person.firstName)"
}

let person = Person(firstName: "Johnny", lastName: "Appleased")
let oboePlayer = OboePlayer(firstName: "Jane", lastName: "Appleased")

print(phonebookName(person))
print(phonebookName(oboePlayer))

var hallMonitor = Student(firstName: "Jill", lastName: "Banapeel")
hallMonitor = oboePlayer

class StudentAthlete: Student {
    var sports: [String]
    init(firstName: String, lastName: String, sports: [String]) {
        self.sports = sports
        let passGrade = Grade(letter: "P", points: 0.0, credits: 0.0)
        super.init(firstName: firstName, lastName: lastName)
        recordGrade(passGrade)
    }
}

var person2: Person?

person2 = Person(firstName: "Hayong", lastName: "pak")

if let hayong = person2 {
    print(hayong.lastName)
}

//let hayong = person2 as! OboePlayer
//// never entered!!
//print(hayong.minimumPracticeTime)


//======================================


//Challenges

print("============================")

class A {
    init() {
        print("I'm <A>!")
    }
    
    deinit{
        print("Destroy A")
    }
}

class B: A {
    override init() {
        print("I'm <B>!")
        super.init()
        print("I'm <B>!")
    }
    
    deinit {
        print("Destroy B")
    }
}

class C: B {
    override init() {
        print("I'm <C>!")
        super.init()
        print("I'm <C>!")
    }
    
    deinit {
        print("Destroy C")
    }
}

let c1 = C()

print("==============2==============")

do {
    let c2 = C()
}

print("==============3==============")

do {
    let c3 = C()
    let a3 = c3 as A
}

print("==============6==============")

class Customer {
    let name: String
    var orders: [Order] = []
    
    init(name: String) {
        self.name = name
    }
    
    func add(_ order: Order) {
        order.customer = self
        orders.append(order)
    }
    
    deinit {
        print("Destroy Customer")
    }
}

class Order {
    let product: String
    weak var customer: Customer?    //weak는 Optional
    
    init(product: String) {
        self.product = product
    }
    
    deinit {
        print("Destroy Order")
    }
}


var customer: Customer? = Customer(name: "Hayoung")
var order1: Order? = Order(product: "coffee")
var order2: Order? = Order(product: "bread")

customer?.add(order1!)
customer?.add(order2!)

order1 = nil
order2 = nil
customer = nil













