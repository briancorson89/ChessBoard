//
//  main.swift
//  ChessBoard
//
//  Created by Brian Corson on 3/1/17.
//  Copyright © 2017 Code-Slingers. All rights reserved.
//

import Foundation

var globalSquareDimension = Int(arc4random_uniform(10) + 1)
var globalRowCounter = 0

func fillArray( array: [Int]) -> [Int]{
    var chessBoardRow = array
    for i in 0..<globalSquareDimension {
        chessBoardRow.append(i + (globalRowCounter * globalSquareDimension))
    }
    return chessBoardRow
}

func printArray( array: [Int]) {
    for element in array {
        if element < 10{
            print("\(element)  ", terminator:"")
        }
        else{
            print("\(element) ", terminator:"")
        }
    }
    print()
}

var newRow = [Int]()
for row in 0..<globalSquareDimension {
    var row = fillArray(array: newRow)
    printArray(array: row)
    globalRowCounter += 1
}

