//: Playground - noun: a place where people can play

import UIKit

// Challenges

// 2
func removingOnce(_ item: Int, from array: inout [Int]) -> [Int] {
//    var arr = array
    if let idx = array.index(of: item) {
        array.remove(at: idx)
    }
    return array
}

var arrayInt = [1, 2, 3, 4, 5, 2, 2, 2, 2]
print(arrayInt)
removingOnce(2, from: &arrayInt)
print(arrayInt)

// 3
func removing(_ item: Int, from array: [Int]) -> [Int] {
    return array.filter({ $0 != item })
}

print(removing(2, from: arrayInt))


// 4
func reversed(_ array: [Int]) -> [Int] {
    var arr: [Int] = []
    for (idx, _) in array.enumerated() {
        arr.append(array[array.count - (idx + 1)])
    }
    return arr
}

print(reversed([1,2,3,4,5]))

// 5

func randomFromZero(to number: Int) -> Int {
    return Int(arc4random_uniform(UInt32(number)))
}

func randomized(_ array: [Int]) -> [Int] {
    var reSortedArray: [Int] = []
    var arr = array
    while arr.count > 0 {
        let index = randomFromZero(to: Array(0...(arr.count - 1)).count)
        reSortedArray.append(arr.remove(at: index))
    }
    return reSortedArray
}

randomized([1,2,3,4])
randomized([1,2,3,4])
randomized([1,2,3,4])


// 6

func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
    guard var min: Int = numbers.first, var max: Int = numbers.first else {
        return nil
    }
    
    for num in numbers {
        if num < min {
            min = num
        }
        if num > max {
            max = num
        }
    }
    
    return (min, max)
}

minMax(of: [10,222,3,4,5])

