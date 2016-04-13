//: Playground - noun: a place where people can play

import UIKit

let arrayOfTenInts = [1, 22, 3, 4, 13, 6, 39, 52, 9, 65]

func printsLowOrHigh(intArray: [Int]) {
    var x :Int = 0
    var printStatement = ""
    
    for i in intArray {
       
       printStatement +=  i < 50 ? "low" :  "high"
       printStatement +=  x < i  ? ", getting bigger" : ", its stopped growing"
        
        
        if i % 13 == 0 {
            printStatement = printStatement + ", didnt learn this one in school"
        } else {
            printStatement = printStatement + ", thats easy"
        }
        x = i
        print(printStatement)
        
        x < 100 ? print("sick") : print("nothing")
    }
    
}

printsLowOrHigh(arrayOfTenInts)