//: Playground - noun: a place where people can play
import UIKit
// this function detects prime numbers returns true if found one 
func isNumberPrime(_ number : Int) -> Bool{
    for n in 2..<number {
        if( number % n == 0){
            return false
        }
    }
    return true
}

func createRandArray(_ size:Int, _ maxValue:UInt32) -> Array<Int> {
    var numberArray:Array<Int> = []
    for _ in 1...size {
        numberArray.append(arc4random_uniform(maxValue).hashValue)
    }
    return  numberArray
}

var numberArray:Array<Int> = createRandArray(10, 10)

print("The Original Array of \(numberArray.count) elements\n\(numberArray.sorted())")

var primeNumbers = 0
var nonPrimeNumbers = 0

for number in numberArray {
    if number >= 2 {
        if isNumberPrime(number) {
            print("Prime Number \(number)")
            primeNumbers += 1
        } else {
            nonPrimeNumbers += 1
        }
    } else {
        nonPrimeNumbers += 1
    }
}

// print count
print("\nNumber of Elementes in Array \(numberArray.count)\nNumber primeNumbers:\(primeNumbers)\nNumber of NonPrimeNumbers:\(nonPrimeNumbers)")
