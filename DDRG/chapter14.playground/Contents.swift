//: Playground - noun: a place where people can play

import UIKit

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
var homeOwner = john
john.firstName = "John" // John wants to use his short name!
john.firstName // "John"
homeOwner.firstName

//homeOwner.lastName = "Pineapple"

print(john.fullName)
print(homeOwner.fullName)

var imposters = (0...100).map { _ in
    Person(firstName: "John", lastName: "Appleseed")
}

let imposter = imposters.first!

homeOwner === john
homeOwner === imposter
john === imposter
imposter.firstName == john.firstName

let randomIndex = Int(arc4random_uniform(100))
imposters.insert(john, at: randomIndex)

let isContainRealJohn = imposters.contains(where: { person in
    return person === john
})

print(isContainRealJohn)

imposters.index(where: { person in
    return person === john
})

//mini2
func memberOf(person: Person, group: [Person]) -> Bool {
    return group.contains(where: { persooon in
        return person === persooon
    })
}
let group1 = [
    Person(firstName: "seul1", lastName: "kim1"),
    Person(firstName: "seul2", lastName: "kim2"),
    Person(firstName: "seul3", lastName: "kim3"),
    Person(firstName: "seul4", lastName: "kim4"),
    Person(firstName: "seul5", lastName: "kim5")
]

let group2 = [
    Person(firstName: "seul1", lastName: "kim1"),
    Person(firstName: "seul2", lastName: "kim2"),
    Person(firstName: "seul3", lastName: "kim3"),
    Person(firstName: "seul4", lastName: "kim4"),
    john
]

memberOf(person: john, group: group1)
memberOf(person: john, group: group2)


struct Grade {
    let letter: String
    let points: Double
    let credits: Double
}

struct Student {
    var firstName: String
    var lastName: String
    var grades: [Int] = []
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    mutating func recordGrade(_ grade: Int) {
        grades.append(grade)
    }
}

let history = Grade(letter: "B", points: 9.0, credits: 3.0)
var math = Grade(letter: "A", points: 16.0, credits: 4.0)

//mini3
func calculateGPA(grades: [Grade]) -> Double {
    var pointSum = 0.0
    var creditSum = 0.0
    
    for grade in grades {
        pointSum += grade.points
        creditSum += grade.credits
    }
    
    return pointSum / creditSum
}

calculateGPA(grades: [history, math])


//challenge 
//A
struct User {
    var name: String = ""
    var collectionDic: [String: MovieCollection] = [:]
    
    func listForName(name: String) -> MovieCollection? {
        return collectionDic[name]
    }
    
    mutating func addList(list: MovieCollection) {
        collectionDic[list.collectionName] = list
    }
}

struct MovieCollection {
    var collectionName: String = ""
    var movieTitles: [String] = []
    
    func printList() {
        print("==\(collectionName)==")
        for movie in movieTitles {
            print(movie)
        }
    }
}

var janeList = MovieCollection()
janeList.collectionName = "Jane's Collection"
janeList.movieTitles = ["starwars", "episode1"]

var jane = User()
jane.name = "Jane"
jane.addList(list: janeList)

var johmList = MovieCollection()
johmList.collectionName = "Johm's Collection"
johmList.movieTitles = ["lala", "land"]

var johm = User()
johm.name = "Johm"
johm.addList(list: johmList)

if let johmColl = johm.listForName(name: johmList.collectionName) {
    jane.addList(list: johmColl)
    
    for (name, list) in jane.collectionDic {
        list.printList()
    }
    
    johm.collectionDic[johmList.collectionName]?.movieTitles = ["a", "b"]
    
    for (name, list) in jane.collectionDic {
        list.printList()
    }
}


//B
struct Tshirt {
    var size: String
    var color: UIColor
    var price: Int
    var image: UIImage?
    
    init(size: String, color: UIColor, price: Int) {
        self.size = size
        self.color = color
        self.price = price
    }
}

class Uzer {
    var name: String
    var email: String
    var shoppingCart: ShoppingCart = ShoppingCart()
    
    init(name: String, email: String) {
        self.name = name
        self.email = email
    }
}

struct Address {
    var name: String
    var street: String
    var city: String
    var zipcode: Int
    
//    init(name: String, street: String, city: String, zipcode: Int) {
//        self.name = name
//        self.street = street
//        self.city = city
//        self.zipcode = zipcode
//    } 이니셜라이저 자동 생성
}


class ShoppingCart {
    var tShirts: [Tshirt]?
    
    func calculateTotalCost() -> Int {
        var totalCost = 0
        
        if let tShirts = tShirts {
            for ts in tShirts {
                totalCost += ts.price
            }
        }
        return totalCost
    }
}


