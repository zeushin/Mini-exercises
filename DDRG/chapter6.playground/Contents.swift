//: Playground - noun: a place where people can play

import UIKit

//mini
//1
func printFullName(firstName:String, lastName:String) {
    print(firstName + " " + lastName)
}
printFullName(firstName:"seulki", lastName:"kim")

//2
func printFullName(_ firstName:String, _ lastName:String) {
    print(firstName + " " + lastName)
}
printFullName("seulki", "kim")

//3
func calculateFullName(_ firstName:String, _ lastName:String) -> String {
    return firstName + " " + lastName
}
let fullName = calculateFullName("seulki", "kim")

//4
func calculateFullNameLength(_ firstName: String, _ lastName: String) -> (name: String, length: Int) {
    let fullName = firstName + " " + lastName
    return (fullName, fullName.characters.count)
}
let fullNameLength = calculateFullNameLength("Matt", "Galloway").length


//challenges
//A
for index in stride(from: 10.0, through:9.0, by:-0.1) {
    print(index)
}

//B
/*func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    return number % divisor == 0
}

func isPrime(_ number: Int) -> Bool {
    if number < 0 {
        return false
    }
    
    for divisor in
}

isPrime(6)
isPrime(13)
isPrime(8893) */

//C
func fibonacci(_ number: Int) -> Int {
    if number < 0 {
        return 0
    }
    
    if number == 1 || number == 2 {
        return 1
    }
    
    return fibonacci(number - 1) + fibonacci(number - 2)
    
}
fibonacci(1)
fibonacci(2)
fibonacci(3)
fibonacci(4)
fibonacci(5)
fibonacci(10)
