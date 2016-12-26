//: Playground - noun: a place where people can play

import UIKit

func distance(from source: Location, to target: Location)
    -> Double {
        let distanceX = Double(source.x - target.x)
        let distanceY = Double(source.y - target.y)
        return sqrt(distanceX * distanceX + distanceY * distanceY)
}

struct Location {
    let x: Int
    let y: Int
}

struct DeliveryArea: CustomStringConvertible {
    var range: Double
    let center: Location
    
    var description: String {
        return "Area with range: \(range), location: x:  \(center.x) - y: \(center.y) "
    }
    
    func contains(_ location: Location) -> Bool {
        let distanceFromCenter = distance(from: center, to: location)
        return distanceFromCenter < range
    }
}

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
}

    //let targetLoc = Location(x: location.x, y: location.y)  //User location
    
    //let resLoc = Location(x: restaurantLocation.0, y: restaurantLocation.1)
    //let area = DeliveryArea(range: restaurantRange, center: resLoc)
    
    //let secondResLoc = Location(x: otherRestaurantLocation.0, y: otherRestaurantLocation.1)
    //let secondArea = DeliveryArea(range: otherRestaurantRange, center: secondResLoc)
    
    //let deliveryDistance = distance(from: resLoc, to: location)
    //let secondDeliberyDistance = distance(from: secondResLoc, to: location)
    //let deliveryDistance = distance(from: location, to: restaurantLocation)
    //let secondDeliveryDistance = distance(from: location, to: otherRestaurantLocation)
    
    //return area.contains(location) || secondArea.contains(location)
    //return deliveryDistance < restaurantRange || secondDeliveryDistance < otherRestaurantRange


isInDeliveryRange(location: Location(x: 40,y: 5))




//Challenges

//2

struct TShirt {
    let size
    let color
    let material
}






















