//: Playground - noun: a place where people can play

import UIKit
import Foundation

var arr = [1,2,5,3,1]
//arr.insert(5, at: 10) //error

arr.contains(1)

//Mini-exercises 1
var players = ["Alice", "Bob", "Cindy", "Dan", "Eli", "Gina"]
players.index(of: "Dan")

//Mini-exercises 2
var players2 = ["Anna", "Brian", "Craig", "Dan", "Donna", "Eli", "Franklin"]
var scores = [2, 2, 8, 6, 1, 2, 1]

for (index, player) in players2.enumerated() {
    print("\(index + 1). \(player) : \(scores[index])")
}



//Challenges

//2

func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
    var array = array
    
    if let index = array.index(of: item) {
        array.remove(at: index)
    }
    return array
}

removingOnce(2,from: scores)


//3

func removing(_ item: Int, from array: [Int]) -> [Int] {
    var arr = array
    
    for itm in arr {
        if let index = arr.index(of: itm) {
            if itm == item {
                arr.remove(at: index)
            }
        }
    }
    return arr
}

print(scores)
print(removing(2, from: scores))


//4
func reversed(_ array: [Int]) -> [Int] {
    var arr = array
    var tmp: [Int] = []
    
    for (i,_) in arr.enumerated() {
        let idx = arr.count - 1 - i
        
        tmp.append(arr[idx])
    }
    return tmp
}
print(scores)
print(reversed(scores))


//5
print("==========")

func randomFromZero(to number: Int) -> Int {
    return Int(arc4random_uniform(UInt32(number)))
}

func randomized(_ array: [Int]) -> [Int] {
    let cnt = arr.count - 1
    var idxArr = Array(0...cnt)
    var tmp: [Int] = []
    
    while idxArr.count > 0 {
        print(idxArr)
        let randomIdx = randomFromZero(to: idxArr.count)
        print("randomIndex: \(randomIdx)")
        
        
        let index = idxArr[randomIdx]
        
        let value = array[index]
        
        tmp.append(value)
        
        idxArr.remove(at: randomIdx)
    }
    
    return tmp
}

//print(arr)
print(randomized(arr))



//6

func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
    var min = numbers[0]
    var max = numbers[0]
    
    if numbers.count == 0 {
        return nil
    }
    
    for i in numbers {
        if i > max {
            max = i
        }
        if i < min {
            min = i
        }
    }
    
    return (min,max)
}

print(minMax(of: arr)!)

