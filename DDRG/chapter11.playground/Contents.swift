//: Playground - noun: a place where people can play

import UIKit

//mini-exer
func distance(from source: Location, to target: Location) -> Double {
    let distanceX = Double(source.x - target.x)
    let distanceY = Double(source.y - target.y)
    return sqrt(distanceX * distanceX + distanceY * distanceY)
}

struct Location {
    let x: Int
    let y: Int
}

struct DeliveryArea {
    var range: Double
    let center: Location
    
//    var description: String {
//        return "Area with range: \(range), location: x: \(center.x) - y: \(center.y)"
//    }
    
    func contains(_ location: Location) -> Bool {
        let distanceFromCenter = distance(from: center, to: location)
        return distanceFromCenter < range
    }
}

//let restaurantLocation = (2, 4)
//let restaurantRange = 2.5

//let otherRestaurantLocation = (7, 8)
//let otherRestaurantRange = 1.5

let areas = [
    DeliveryArea(range: 2.5, center: Location(x: 2, y: 4)),
    DeliveryArea(range: 1.5, center: Location(x: 7, y: 8))
]

// Pythagorean Theorem # $
//func distance(from source: (x: Int, y: Int), to target: (x: Int, y: Int))
//    -> Double {
//        let distanceX = Double(source.x - target.x)
//        let distanceY = Double(source.y - target.y)
//        return sqrt(distanceX * distanceX + distanceY * distanceY)
//}

func isInDeliveryRange(location: Location) -> Bool {
    
    for area in areas {
        print(area)
        
        if area.contains(location) {
            return true
        }
    }
    return false
//    let restLoc = Location(x: restaurantLocation.0, y: restaurantLocation.1)
//    let restArea = DeliveryArea(range: restaurantRange, center: restLoc)
//    
//    let restLoc2 = Location(x: otherRestaurantLocation.0, y: otherRestaurantLocation.1)
//    let restArea2 = DeliveryArea(range: otherRestaurantRange, center: restLoc2)
    
//    let deliveryDistance = distance(from: restArea.center, to: location)
//    let secondDeliveryDistance = distance(from: restArea2.center, to: location)
    
//    return restArea.contains(location) || restArea2.contains(location)
}


isInDeliveryRange(location: Location(x: 40, y: 5))


//challenge
//2
struct Tshirt {
    var size: Int
    var color: String
    var materOption: String
    
    func costShirt() {
        
    }
}