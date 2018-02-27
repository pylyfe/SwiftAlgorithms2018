//: Playground - noun: a place where people can play

import UIKit

// Use for-loop, and then use closure (filter, map, reduce)

// [1, 2, 3, 4, 3, 3] -> [3, 3, 3] & [2, 4]

let firstArray = [1, 2, 3, 4, 3, 3]
var arrayOfThrees = [Int]()
var arrayOfTwoMultiples = [Int]()

for i in firstArray {
    if i == 3 {
        arrayOfThrees.append(i)
    }
}
arrayOfThrees

for i in firstArray {
    if i % 2 == 0 {
        arrayOfTwoMultiples.append(i)
    }
}
arrayOfTwoMultiples

print(firstArray.filter({return $0 == 3}))
print(firstArray.filter({return $0 % 2 == 0}))


// [1, 2, 3, 4] -> [2, 4, 6, 8]

let secondArray = [1, 2, 3, 4]
var multipliedByTwo = [Int]()

for i in secondArray {
    multipliedByTwo.append(i * 2)
}
multipliedByTwo

print(secondArray.map({return $0 * 2}))

// [1, 2, 3, 4] -> 10

let thirdArray = [1, 2, 3, 4]

var sumOfArray = 0

for i in thirdArray {
    sumOfArray += i
}
sumOfArray

print(thirdArray.reduce(0, {sum, number in sum + number}))


