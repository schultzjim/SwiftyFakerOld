//: Playground - noun: a place where people can play

import UIKit
import SwiftyFaker

let ULetters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
let Letters = ULetters + ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

func numerify(numberString: String) -> String {
    let range = numberString.characters.startIndex...numberString.characters.startIndex
    let numString = numberString.stringByReplacingCharactersInRange(range, withString: "\(Int.random(1...9))")
    
    var numerifiedString = ""
    
    for character in numString.characters {
        if character == "#" {
            numerifiedString += "\(Int.random(0...9))"
        } else {
            numerifiedString.append(character)
        }
    }
    
    return numerifiedString
}

func letterify(letterString: String) -> String {
    var string = ""
    for character in letterString.characters {
        if character == "?" {
            string += ULetters.random()
        }
        else {
            string.append(character)
        }
    }
    return string
}

func bothify(string: String) -> String {
    return letterify(numerify(string))
}

numerify("##########################")
letterify("?#?###?")
bothify("?#?###?")

floor(Double.random(0, max: 100.0) * 100)/100.0

let array = ["1"]

let arr1 = array[0..<array.count-1]
let arr2 = array[array.count-1..<array.count]

let commaSep = arr1.joinWithSeparator(", ")
let merged = commaSep + " & " + arr2.joinWithSeparator(" ")

func numerifable(length: Int = 4) -> String {
    var string = ""
    for _ in 0..<length {
        string += "#"
    }
    return string
}

func letterifable(length: Int = 4) -> String {
    var string = ""
    for _ in 0..<length {
        string += "?"
    }
    return string
}

let numString = numerify(numerifable(5))
