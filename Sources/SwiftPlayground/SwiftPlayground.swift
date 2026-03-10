// The Swift Programming Language
// https://docs.swift.org/swift-book

func print(board: [[String]]) {
    board.forEach { line in
        print("\(line[0]) | \(line[1]) | \(line[2])")
        print("--+---+--")
    }
    print()
}

func askForPosition(board: [[String]]) -> [Int] {
    while true {
        print("Please enter the row number 1-3: ")
        let userInput = readLine()!
        let rowNumber = Int(userInput)! - 1

        print("Please enter the column number 1-3: ")
        let userInput2 = readLine()!
        let columnNumber = Int(userInput2)! - 1

        if board[rowNumber][columnNumber] == "." {
            return [rowNumber, columnNumber]
        }
    }
}

@main
struct SwiftPlayground {
    static func main() {
        var player = "O"

        var board = [
            [".", ".", "."],  // row 0
            [".", ".", "."],  // row 1
            [".", ".", "."],  // row 2
        ]
        print(board: board)

        while true {
            // Ask for the user's move.
            let position = askForPosition(board: board)
            board[position[0]][position[1]] = player

            if player == "O" {
                player = "X"
            } else {
                player = "O"
            }

            print(board: board)
        }

        // // First move: O in middle.
        // board[1][1] = "O"
        // print(board: board)

        // // Second move: X in top-left.
        // board[0][0] = "X"
        // print(board: board)

        // // Third move: O in top-right.
        // board[0][2] = "O"
        // print(board: board)

        // // Fourth move: X in bottom-left.
        // board[2][0] = "X"
        // print(board: board)

        // // Fifth move: O in middle-left.
        // board[1][0] = "O"
        // print(board: board)

        // // Sixth move: X in middle-right.
        // board[1][2] = "X"
        // print(board: board)

        // // Seventh move: O in bottom-middle.
        // board[2][1] = "O"
        // print(board: board)

        // // Eighth move: X in bottom-right.
        // board[2][2] = "X"
        // print(board: board)

        // // Final move: O in top-middle.
        // board[0][1] = "O"
        // print(board: board)
    }
}
