//: Playground - noun: a place where people can play

import UIKit

let size = 10
let maxValue:UInt32 = 100
var numberArray:Array<Int> = []
for _ in 1...size {
    numberArray.append(arc4random_uniform(maxValue).hashValue)
}

print("original Array of \(numberArray.count) elements\n\(numberArray)")
print("Expected result:\n\(numberArray.sorted())\n")

var sortedArray: Array<Int> = []
var min:Int = numberArray.first ?? 0
var max:Int = numberArray.last ?? 0

// we add small numbers at begining and large at the end anything in between gets inserted after it finds something bigger gets
for number in numberArray {
    if min >= number {
        min = number
        sortedArray.insert(min, at: 0)
    } else if max <= number {
        max = number
        sortedArray.append(max)
    } else {
        for i in 0 ... sortedArray.count - 1 {
            if sortedArray[i] >= number {
                sortedArray.insert(number, at: i)
                break
            }
        }
    }
}

print("here is the sorted array of \(sortedArray.count) elements\n\(sortedArray)")

