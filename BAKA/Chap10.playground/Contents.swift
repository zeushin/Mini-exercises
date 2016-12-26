//: Playground - noun: a place where people can play

import UIKit

var prices = [1.5, 10, 4.99, 2.30, 8.19]
let largePrices = prices.filter {
    return $0 > 5
}

prices.filter({( a: Double ) -> Bool in
    return a > 5
})

let sum = prices.reduce(0) {
    return $0 + $1
}

prices.reduce(0, {( a: Double, b: Double) -> Double in
    return a + b
})


//Mini-exercises

//1
let names = ["Ha","Young","Park","aaaaaaa"]

let name1 = names.reduce("") {
    return $0 + $1
}

//names.joined(separator: " ")

//2
//let name2 = names.reduce("") {
let name2 = names.filter{ return $0.characters.count > 4 }
let resultName = name2.reduce("") {
    return $0 + $1
}

//names.filter{ return $0.characters.count > 4 }.reduce(""){ return $0 + $1 }



//3
let namesAndAges = ["박하영":24, "철수":13, "영구":33, "아아아":17]

let name3 = namesAndAges.filter {
    return $0.value < 18
}


//4
let result = namesAndAges.filter{ return $0.value > 18 }.map{ return $0.key }
print(result)



//Challenges

//A
func repeatTask(times: Int, task: () -> Void) {
    for _ in 0..<times {
        task()
    }
}

repeatTask(times: 10) {
    print("Swift Apprentice is a great book!")
}




//B
func mathSum(length: Int, series: (Int) -> Int) -> Int {
    
}










