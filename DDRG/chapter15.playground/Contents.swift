//: Playground - noun: a place where people can play

import UIKit

struct Grade {
    
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
//    var grades: [Grade] = []
//    
//    func recordGrade(_ grade: Grade) {
//        grades.append(grade)
//    }
//    
    static var graduates: [String] = []
    
    deinit {
        Student.graduates.append("\(lastName), \(firstName)")
    }
}

var st1 = Student(firstName: "seulki", lastName: "kim")
print(Student.graduates)
st1 = Student(firstName: "ki", lastName: "kim")
print(Student.graduates)

//Challenge
//1, 2
class A {
    init() {
        print("I'm A!")
    }
    deinit {
        print("Destroy A")
    }
}
class B: A {
    override init() {
        print("I'm B!")
        super.init()
        print("I'm B!")
    }
    deinit {
        print("Destroy B")
    }
}
class C: B {
    override init() {
        print("I'm C!")
        super.init()
        print("I'm C!")
    }
    deinit {
        print("Destroy C")
    }
}

do {
    var c = C()
    var a = c as A
}


//6
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
    weak var customer: Customer?
    init(product: String) {
        self.product = product
    }
    deinit {
        print("Destroy Order")
    }
}

var order1: Order? = Order(product: "a")
var order2: Order? = Order(product: "b")
var customer: Customer? = Customer(name: "Na")
customer?.add(order1!)
customer?.add(order2!)
order1 = nil
order2 = nil
customer = nil

