//: Playground - noun: a place where people can play

import UIKit

public class Person2 : Equatable {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
}

public func ==(lhs: Person2, rhs: Person2) -> Bool {
    return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName
}


//Mini-exercises

//1

let john2 = Person2(firstName: "Johnny", lastName: "Appleseed")
let homeOwner = Person2(firstName: "Johnny", lastName: "Appleseed1")

//homeOwner.lastName = "Park"

print(john2.fullName)
print(homeOwner.fullName)

print(john2 == homeOwner)
//print(john === homeOwner)


print("2번=============================")
//2

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
}

let john = Person(firstName: "Johnny", lastName: "Appleseed")
let hy = Person(firstName: "Hayoung", lastName: "Park")
let a = Person(firstName: "a", lastName: "Lee")
let b = Person(firstName: "b", lastName: "Kim")
let c = Person(firstName: "c", lastName: "Choi")
let d = Person(firstName: "d", lastName: "Oh")

let member1 = [john, hy, a, b, c]
let member2 = [hy, a, b, c, d]

func memberOf(person: Person, group: [Person]) -> Bool {
    return group.contains(where: { $0 === john })
}

print(memberOf(person: john, group: member1))
print(memberOf(person: john, group: member2))

print("3번=============================")

//3
struct Grade {
    let letter: String
    let points: Double
    let credits: Double
}
class Student {
    var firstName: String
    var lastName: String
    var grades: [Grade] = []
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    func recordGrade(_ grade: Grade) {
        grades.append(grade)
    }
    
    var gpa: Double {
        var totalPoint = 0.0
        var totalCredits = 0.0
        
        for i in grades {
            totalPoint = totalPoint + i.points
            totalCredits = totalCredits + i.credits
        }
        
        return totalPoint / totalCredits
    }
}

let jane = Student(firstName: "Jane", lastName: "Appleseed")
let history = Grade(letter: "B", points: 9.0, credits: 3.0)
var math = Grade(letter: "A", points: 16.0, credits: 4.0)
let science = Grade(letter: "C", points: 5.0, credits: 2.0)

jane.recordGrade(history)
jane.recordGrade(math)
jane.recordGrade(science)

print(jane.gpa)


//Challenges

print("A=============================")
//A
class User {
    var dic: [String:MovieCollection] = [:]
    
    func addList(_ list: MovieCollection) {
        dic[list.name] = list
    }
    
    func listForName(_ name: String) -> MovieCollection? {
        return dic[name]
    }
}

class MovieCollection {
    var name: String
    var movie: [String] = []
    
    init(name: String) {
        self.name = name
    }
    
    func printList() {
        for i in movie {
            print(i)
        }
    }
}

var ja = User()
var jo = User()
var action = MovieCollection(name: "action")

ja.addList(action)
jo.addList(action)

action.movie.append("aaa")

ja.dic["action"]?.printList()
jo.dic["action"]?.printList()



print("B=============================")
//B

enum Size: Int {
    case Small = 100
    case Medium = 200
    case Large = 300
}
enum Color: Int {
    case Red = 100
    case Pink = 200
    case Blue = 300
    case Black = 400
}
enum Image: Int {
    case Elepahnt = 200
    case Lion = 300
    case Rabbit = 400
}


struct TShirt {
    var size: Size
    var color: Color
    var image: Image
    
    var price: Int {
        return size.rawValue + color.rawValue + image.rawValue
    }
    
}

class Users {
    var name: String
    var email: String
    var cart: ShoppingCart = ShoppingCart()
    
    init(name: String, email: String) {
        self.name = name
        self.email = email
    }
}

struct Address {
    var name: String?
    var street: String?
    var city: String?
    var zipcode: Int?
}


class ShoppingCart {
    var tshirts: [TShirt] = []
    var address: Address = Address()
    
    func add(_ tshirt: TShirt) {
        tshirts.append(tshirt)
    }
    
    func getPrice() -> Int {
        var price = 0
        
        for i in tshirts {
            price += i.price
        }
        
        return price
    }
}

var hy2 = Users(name: "hy", email: "hy@com")
var roundT = TShirt(size: Size.Small, color: Color.Blue, image: Image.Rabbit)

hy2.cart.add(roundT)
roundT.color = Color.Pink
hy2.cart.add(roundT)

print(hy2.cart.getPrice())