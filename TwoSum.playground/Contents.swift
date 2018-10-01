//: Playground - noun: a place where people can play

import UIKit

/*
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 */

func createRandArray(size:Int, maxValue:UInt32) -> Array<Int> {
    var numberArray:Array<Int> = []
    for _ in 1...size {
        numberArray.append(arc4random_uniform(maxValue).hashValue)
    }
    return  numberArray.sorted()
}

func createSumArrayIndex(array:Array<Int>, target:Int) -> Array<Int> {
    var sumArray:Array<Int> = []
    for n in 0...array.count - 1 {
        for i in n ... array.count - 1 {
            if (array[n] + array[i] == target) {
                sumArray.append(contentsOf: [n,i])
                break
            }
        }
        if sumArray.count == 2 {
            break
        }
    }
    return sumArray
}

let target = 9
let numberArray = createRandArray(size: 10, maxValue: 10)
print("The Original Array of \(numberArray.count) elements\n\(numberArray)")
let SumArrayIndex = createSumArrayIndex(array: numberArray, target: target)

if let first = SumArrayIndex.first,let last = SumArrayIndex.last {
    print("\nSolution in array for target: \(target)\n\(SumArrayIndex)\n\n \(numberArray[first])\n \(numberArray[last]) +\n-------\n \(target)")
} else {
    print("\nNo solution in array for target: \(target)")
}






