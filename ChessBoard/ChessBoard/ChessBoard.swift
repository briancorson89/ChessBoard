//
//  ChessBoard.swift
//  ChessBoard
//
//  Created by Brian Corson on 3/4/17.
//  Copyright © 2017 Code-Slingers. All rights reserved.
//

import Foundation

/*
 Description: squareLocation produces tuple in the (row, col)
 Parameters: an int that represents a place on the chess board
 Returns: a tuple that represent the row and column of the square on the chess board
 Precondition: the number must be in the range of inclusive 0 and exclusive Square Dimension * number of rows
 Postcondition: bad data will be represented with (-1, -1)
 */
func squareLocation( number: Int ) -> (row: Int, col: Int) {//give an int
    var row: Int
    var col: Int
    
    if(number >= (globalSquareDimension * globalRowCounter) || number < 0){
        row = -1//guard against bad info
        col = -1
    }
    else{
        row = number / globalSquareDimension//gives good info
        col = number % globalSquareDimension
    }
    return (row, col)//get a tuple
}
