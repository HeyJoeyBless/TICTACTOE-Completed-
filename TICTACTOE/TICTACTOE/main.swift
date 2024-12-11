//
//  main.swift
//  TICTACTOE
//
//  Created by Joseph Allen Blessman on 11/19/24.
//

import Foundation


var fakeBoard = """
[1,2,3]
[4,5,6]
[7,8,9]
"""


var board: [[String]] = [
    [".", ".", "."],
    [".", ".", "."],
    [".", ".", "."]
]
var choices : [Character] =  ["1","2","3","4","5","6","7","8","9"]


var inputDictionary: [ String : (Int,Int) ] = [
    "1": (0,0),
    "2": (0,1),
    "3": (0,2),
    "4": (1,0),
    "5": (1,1),
    "6": (1,2),
    "7": (2,0),
    "8": (2,1),
    "9": (2,2)
   
]

var winningCombinations : [(Int, Int)] = [

    (0,0),(0,1),(0,2),
    (1,0),(1,1),(1,2),
    (2,0),(2,1),(2,2),

    (0,0),(1,0),(2,0),
    (0,1),(1,1),(2,1),
    (0,2),(1,1),(2,0),

    (0,0),(1,1),(2,2),
    (0,2),(1,1),(2,0),
]


var noLetters : Bool = false
var input : String?
var numbersMatch : Bool = true


// updates the var: input
func giveInput() {
    repeat{
        input = readLine()
        for character in input!{
    
            if choices.contains(character){
                noLetters = true
                continue
            } else {
                print("Please enter a value that is in range! (Hint: 1-9 Only)")
                giveInput()
                break
            }
        }
    }while noLetters == false
   }
func winnerWinner () {}


/*
 1. ask for input
 2. use that input to find the coordinates
 3. update the board at the provided coordinates
 */

print("The Domination Squad presents: Tic Tac Toe! The rules are simple, play one round of rock paper scissors to determen who is player one, they will be X, and player two is O, after yall have decided who is player one, select from the options availible (1-9) and then switch. Continue to play until winner is determened! Have Fun and good Luck!")
print(fakeBoard)

/*
 This is a DICTIONARY [key:value]
 It's key has data type: STRING because OUR USER ENTERS STRINGS
 it's value has data type: TUPLE OF INTEGERS because OUR BOARD USES A COORDINATE SYSTEM TO ACCESS A 2D ARRAY
 */

// swift how to use a dictionary



for turn in 1 ... 9 {
    giveInput()
    if let unwrappedInput = input {
        if turn % 2 == 0 { //check if turn # is even
            if let coordinates = inputDictionary[unwrappedInput]{
                board[coordinates.0][coordinates.1] = "X"
            }
        }else {
            if let coordinates = inputDictionary[unwrappedInput]{
                board[coordinates.0][coordinates.1] = "O"
            }
        }
    }
    for row in board {
        print(row)
    }
    
    print("Now that you have selected your first move. Now it's time for the other player to make a move!")
    
}







////print(inputDictionary["1"])
//let inputCoordinates: (Int, Int)? = inputDictionary["1"]
//
//// Force unwrap. it is a dark art. proceed with caution
//let unwrappedInputCoordinates1: (Int, Int) = inputDictionary["1"]!
//
//// nil coalescing
//let unwrappedInputCoordinates2: (Int, Int) = inputDictionary["1"] ?? (0,0)
//
//// if let
//if let unwrappedInputCoordinates3: (Int, Int) = inputDictionary["1"] {
//    // now I have an unwrapped value
//    unwrappedInputCoordinates3
//    board[unwrappedInputCoordinates3.0]
//}
//
//
//
//if let unwrappedInputCoordinatesCarrot: (Int, Int) = inputDictionary["carrot"] {
//    // now I have an unwrapped value
//    print(unwrappedInputCoordinatesCarrot.0)
//    print(unwrappedInputCoordinatesCarrot.1)
//}
