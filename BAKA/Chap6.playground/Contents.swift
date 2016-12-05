//: Playground - noun: a place where people can play

import UIKit

//Mini-exercises

//1
func printFullName(firstName: String, lastName: String) {
    print(firstName + " " + lastName)
}
printFullName(firstName: "Park", lastName: "Hayoung")

//2
func printFullName(_ firstName: String, _ lastName: String) {
    print(firstName + " " + lastName)
}
printFullName("Park", "Hayoung")

//3
func calculateFullName(_ firstName: String, _ lastName: String) -> String {
    return firstName + " " + lastName
}
calculateFullName("Park", "Hayoung")

//4
func calculateFullNameandLength(_ firstName: String, _ lastName: String) -> (name: String, length: Int) {
    let fullName = firstName + " " + lastName
    return (fullName , fullName.characters.count)
}
let nameLength = calculateFullNameandLength("Park", "Hayoung").length





//Challenges

//A
for index in stride(from: 10.0, through: 9.0, by: -0.1) {
    print (index)
}

//B
/*func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    return number % divisor == 0
}

func isPrime(_ number: Int) -> Bool {
    if number < 0 {
        return false
    }
    
    let root = Int(sqrt(Double(number)))
    for _ in 2...root {
        if isNumberDivisible(<#T##number: Int##Int#>, by: <#T##Int#>) {
        return false
    }
}*/



//C
func fibonacci(_ number2: Int) -> Int {
    if number2 < 0 {
        return 0
    }
    if number2 == 1 || number2 == 2 {
        return 1
    }
    return fibonacci(number2 - 1) + fibonacci(number2 - 2)
}

fibonacci(1)
fibonacci(2)
fibonacci(3)
fibonacci(4)
fibonacci(5)
fibonacci(10)

