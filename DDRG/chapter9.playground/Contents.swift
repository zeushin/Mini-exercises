//: Playground - noun: a place where people can play

import UIKit


//mini
func printPlayer() {
    
}

printPlayer()

//challenges
//1
//let dict1: [Int, Int] = [:]
//let dict2 = [:]
let dict3: [Int: Int] = [:]

let dict4 = ["One": 1, "Two": 2, "Three": 3]

//dict4[1]
dict4["One"]
//dict4["Zero"] = 0
//dict4[0] = "Zero"

var dict5 = ["NY": "New York", "CA": "California"]

dict5["NY"]
dict5["WA"]
dict5["CA"] = nil

//2
func swappingValuesForKeys(_ key1: String, _ key2: String, in dictionary: [String: Int]) -> [String: Int] {
    var newDic = dictionary
    let oldValue = newDic[key1]
    newDic[key1] = newDic[key2]
    newDic[key2] = oldValue
    
    return newDic
}

swappingValuesForKeys("seul", "ki", in: ["seul": 1, "ki": 2])

//3
func eightPrint(in dictionary: [String: String]) {
    for (_, value) in dictionary {
        if value.characters.count > 8 {
            print(value)
    
        }
    }
}

eightPrint(in: ["NY": "New York", "CA": "California"])

//4
func merging(_ dict1: [String: String], with dict2: [String: String]) -> [String: String] {
    var dic = dict1
    for (key, value) in dict2 {
        dic[key] = value
    }
    return dic
    
}
merging(["seul": "ki"], with:["ha": "young"])

//5
func occurrencesOfCharacters(in text: String) -> [Character: Int] {
    return [:]
}

occurrencesOfCharacters(in: "dlsfjsljfoise")


