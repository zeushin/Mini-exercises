//: Playground - noun: a place where people can play

import UIKit

var players = ["Alice", "Bob", "Cindy", "Dan", "Eli", "Gina"]
players.indexOf("Dan")


players.insert(players.removeAtIndex(2), atIndex: 0)

let scores = [2, 2, 8, 6, 1, 2]

for (index, player) in players.enumerate() {
    print("\(index + 1). \(player) : \(scores[index])")
}

//Challenge
//1
let array1 = [Int]()
let array2 = []
let array3: [String] = []

//2
func removingOnce(item: Int, from array: [Int]) -> [Int] {
    var array = array
    if let index = array.indexOf(item) {
        array.removeAtIndex(index)
    }
    return array
}
let arr = removingOnce(2, from: [2, 3, 4, 2, 1])
print(arr)

//3
func removing(item: Int, from array: [Int]) -> [Int] {
    var array = array
    for itm in array {
        if let index = array.indexOf(item) where itm == item {
            array.removeAtIndex(index)
        }
    }
    return array
}

let arr2 = removing(2, from: [2, 3, 4, 2, 1, 2])
print(arr2)

//4
func reversed(array: [Int]) -> [Int] {
    var empArr: [Int] = []
    for (i, _) in array.enumerate() {
        empArr.append(array[array.count - 1 - i])
    }
    return empArr
}
let arr3 = reversed([8, 0, 1, 2, 3, 4])
print(arr3)


//5

func randomFromZero(to number: Int) -> Int {
    return Int(arc4random_uniform(UInt32(number)))
}

func randomized(array: [Int]) -> [Int] {
    var randomArray: [Int] = []
    var indexesArray = Array(0...array.count-1)
    
    while indexesArray.count > 0 {
        let randomIndex = randomFromZero(to: indexesArray.count)
        let index = indexesArray[randomIndex]
        randomArray.append(array[index])
        indexesArray.removeAtIndex(randomIndex)
    }
    
    return randomArray
}

print(randomized([1, 2, 3, 4]))
print(randomized([1, 2, 3, 4]))
print(randomized([1, 2, 3, 4]))


//6
func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
    var min = numbers[0]
    var max = numbers[0]
    for number in numbers {
        if number < min {
            min = number
        }
        if number > max {
            max = number
        }
    }
    return (min, max)
}
let mmArray = minMax(of: [5, 3, 6, 4, 2])


