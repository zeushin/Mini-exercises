//: Playground - noun: a place where people can play

import UIKit


//Challenges

//1
let dict3: [Int: Int] = [:]


//2
func swappingValuesForKeys(_ key1: String, _ key2: String,
                           in dictionary: [String: Int]) -> [String: Int] {
    
    var dic = dictionary
    let tmp = dic[key1]
    dic[key1] = dic[key2]
    dic[key2] = tmp

    return dic
}

swappingValuesForKeys("하영", "슬기", in: ["하영" : 1, "슬기": 2])



//3
//func output(in dictionary: [String: String]) {
//    let dic = dictionary
//    
//    for v in dic.values {
//        if dic.values.count > 8 {
//            print("\(v)")
//        }
//    }
//    
//    
//}
//
//print(output(in: ["CA": "Califonia", "NY": "New York"]))



//4
func merging(_ dict1: [String: String], with dict2: [String: String]) -> [String: String] {
    var dict1 = dict1
    let dict2 = dict2
    
    for (k,v) in dict2 {
            dict1.updateValue(v, forKey: k)
    }
    return dict1
}


merging(["박": "하영", "김": "슬기"], with: ["박" : "하연", "오": "미경"])


//5
func occurrencesOfCharacters(in text: String) -> [Character: Int] {
    var dic: [Character: Int] = [:]
    //var char: Character
    
    for i in text.characters {
        if let cnt = dic[i] {
            dic[i] = cnt + 1
        } else {
            dic[i] = 1
        }
    }
    
    
    return dic
}

occurrencesOfCharacters(in: "hyoooung")



//6
//func isInvertible(_ dictionary: [String: Int]) -> Bool {
//    var dic = dictionary
//    
//    
//    
//    return true
//    return false
//}


//7
func invert(_ input: [String: Int]) -> [Int: String] {
//    if precondition(isInvertible(input) {
//        print ("this dictionary can't be inverted")
//    }
    
    let input = input
    var output: [Int: String] = [:]
    
    for(k,v) in input {
        output.updateValue(k, forKey: v)
    }
    return output
}

invert(["하영": 24, "슬기": 23])


//8
func printSortedKeysAndValues(_ input: [String: Int16]) {
    
    
    
}












