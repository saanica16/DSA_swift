// Basic Snakes and Ladder - algorithm for 1 player
//

/* For snakes and ladder, refer this - https://projectplaygrounds.com.au/wp-content/uploads/2017/12/Snakes-Ladders-1-25.jpg
 so can plot snakes and ladder blocks better, happy coding :)
 */

let finalSquare = 25
var board = [Int](Array(repeating: 0, count: (finalSquare - 1)))

// custom ladder as per board
board[10] = +9
board[15] = +1

// custom snake as per board
board[14] = -12
board[21] = -08

var currentSquare = 0 // index of current square
let diceValues = [1,2,3,4,5,6]

while currentSquare < finalSquare {
    let rollDice = diceValues.randomElement() ?? 1
    print("roll dice \(rollDice)")
    currentSquare += rollDice
    print("current square before snake/ladder \(currentSquare)")
    
    if currentSquare < board.count {
        currentSquare += board[currentSquare]
        print("final square value after snake/ladder \(currentSquare)")
    }
}
print("you conquered the game")
