//: Playground - noun: a place where people can play

import UIKit

//var closure: (() -> Void)?

func testFunc(closure2: @escaping (() -> Void)) {
    //    closure = closure2
    closure2()
    
}

testFunc(closure2: {
    print("~~~")
})

1 + 2

//closure?()

var counter = 0
let incrementCounter = {
    counter += 1
}
print(counter)
incrementCounter()
print(counter)
incrementCounter()
print(counter)
incrementCounter()
print(counter)
incrementCounter()


func countingClosure() -> (() -> Int) {
    var counter = 0
    let incrementCounter: () -> Int = {
        counter += 1
        return counter
    }
    return incrementCounter
}

print(countingClosure()())
print(countingClosure()())
print(countingClosure()())
print(countingClosure()())

let counter1 = countingClosure()
print(counter1())
print(counter1())
print(counter1())
print(counter1())


//let names = ["Z", "B", "A", "C", "E"]
//names.sorted()

//let sorted = names.sorted(by: { (a: String, b: String) -> Bool in
//    return a < b
//})
//
//print(sorted)


var prices = [1.5, 10, 4.99, 2.30, 8.19]
let largePrices = prices.filter {
    return $0 > 5
}

prices.filter({ (a: Double) -> Bool in
    return a > 5
})



let sum = prices.reduce(1) {
    return $0 * $1
}



prices.reduce(0, {(a: Double, b: Double) -> Double in
    return a + b
})


prices.enumerated().forEach({ (a: Int, b: Double) in
    
})


//mini-exer
//1
let names = ["kim", "seul", "ki", "cola", "duggi"]
names.reduce("", { (a: String, b: String) -> String in
    return a + b
})

//2
var seul = names.filter({ $0.characters.count > 3 })
print(seul)
var concated = seul.reduce("", { $0 + $1 } )
print(concated)

print(names.filter({ $0.characters.count > 3 }).reduce("", { $0 + $1 } ))


//3
let namesAndAges = ["a":2, "b":93, "c":23, "d":17]
var kkkk = namesAndAges.filter({ $0.value < 18 })
print(kkkk)

//4
var kkkkk = namesAndAges.filter({ $0.value >= 18 }).map({ $0.key })
print(kkkkk)