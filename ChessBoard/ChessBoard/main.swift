//
//  main.swift
//  ChessBoard
//
//  Created by Brian Corson on 3/1/17.
//  Copyright © 2017 Code-Slingers. All rights reserved.
//

import Foundation


var newRow = [Int]()//init an array
for row in 0..<globalSquareDimension {//makes the array the length of N in an NxN square
    var row = fillArray(array: newRow)//calls fill array
    printArray(array: row)//calls print array
    globalRowCounter += 1//increment row counter
}
for i in 0..<(globalSquareDimension * globalRowCounter) {
    print("\(i) is at location \(squareLocation(number: i)) is at integer \(integerLocation(tuple: squareLocation(number: i)))")
}

