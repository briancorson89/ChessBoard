//
//  arrays.swift
//  ChessBoard
//
//  Created by Brian Corson on 3/4/17.
//  Copyright © 2017 Code-Slingers. All rights reserved.
//

import Foundation

var globalSquareDimension = Int(arc4random_uniform(9)) + 2//to make an NxN board, a random number between 2-10 is chosen
var globalRowCounter = 0//Keeps track of the number of arrays

/*
   Description: fillArray produces data and stores it in an array of ints
   Parameters: an array of ints
   Returns: a new array of ints
 */
func fillArray( array: [Int]) -> [Int]{//Give an array
    var chessBoardRow = array//make array mutable
    for i in 0..<globalSquareDimension {
        chessBoardRow.append(i + (globalRowCounter * globalSquareDimension))//fills first space with 0
    }//then continues following the formaula i + (numberOfRows * dimensionOfSquare)
    return chessBoardRow//Get an array
}

/*
 Description: printArray shows the stored data in an array on the command line
 Parameters: an array of ints
 Returns: nothing
 */
func printArray( array: [Int]) {//give an array
    for element in array {
        if element < 10{//this gives better spacing to numbers 0-9
            print("\(element)  ", terminator:"")//To form a cleaner output
        }
        else{
            print("\(element) ", terminator:"")//for numbers 10 and above
        }
    }
    print()//puts standard exit code on a separate line from the output 
}
