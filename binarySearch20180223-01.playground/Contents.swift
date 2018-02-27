//: Playground - noun: a place where people can play

import UIKit

let randomNumbersArray = [1, 3, 4, 5, 7, 11, 13, 26, 30, 35, 50]

var oneHundredNumbers = [Int]()
for i in 1...100 {
    oneHundredNumbers.append(i)
}
oneHundredNumbers

func linearSearchForNum(array: [Int], searchValue: Int) -> Bool {
    for i in array {
        if i == searchValue {
            return true
        }
    }
    return false
}

print(linearSearchForNum(array: randomNumbersArray, searchValue: 11))

func binarySearchForNum(array: [Int], searchValue: Int) -> Bool {
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        if searchValue == middleValue {
            return true
        } else if searchValue < middleValue {
            rightIndex = middleIndex - 1
        } else if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
        
    }

    return false
}

print(binarySearchForNum(array: oneHundredNumbers, searchValue: 56))