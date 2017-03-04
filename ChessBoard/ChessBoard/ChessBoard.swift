//
//  ChessBoard.swift
//  ChessBoard
//
//  Created by Brian Corson on 3/4/17.
//  Copyright © 2017 Code-Slingers. All rights reserved.
//

import Foundation

/*
 Description: squareLocation produces tuple in the (row, col) format from an integer location
 Parameters: an int that represents a place on the chess board
 Returns: a tuple that represent the row and column of the square on the chess board
 */
func squareLocation( number: Int ) -> (row: Int, col: Int) {//give an int
    return ( (number / globalSquareDimension), (number % globalSquareDimension))//get a tuple
}

/*
 Description: integerLocation produces an integer represent from a tuple in the (row, col) format
 Parameters: a tuple in the (row,col) format
 Returns: an integer representation of a location on the chess board
 */
func integerLocation ( tuple: (row: Int, col: Int)) -> Int{//give a tuple
    return (globalSquareDimension * tuple.row) + tuple.col//get an int
}
