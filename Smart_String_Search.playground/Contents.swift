//: Playground - noun: a place where people can play

import UIKit

extension String {
    func smartContains(_ other: String) -> Bool {
        let array : [String] = other.lowercased().components(separatedBy: " ").filter { !$0.isEmpty }
        return array.reduce(true) { !$0 ? false : (self.lowercased().range(of: $1) != nil ) }
    }
}

var str = "I love to drink Water"

str.contains("love")
str.contains("Love")
str.contains("love to")
str.contains("love Water")

str.smartContains("love")
str.smartContains("Love")
str.smartContains("love to")
str.smartContains("love Water")
str.smartContains("lOve waTeR")
str.smartContains("love water Drink")
str.smartContains("eggs")
