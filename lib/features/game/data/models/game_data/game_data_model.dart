import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_data_model.freezed.dart';
part 'game_data_model.g.dart';

// Represents the AI-generated game data model
@freezed
abstract class GameDataModel with _$GameDataModel {
  const factory GameDataModel({
    required String id,

    // Core metadata
    required String title,
    required String description,
    @Default([]) List<String> tags,
    
    // Game content - maps to database 'html' field
    @JsonKey(name: 'html')
    required String renderableContent,
    
    // AI generation context - maps to database fields
    @JsonKey(name: 'original_prompt')
    required String prompt,
    
    @JsonKey(name: 'message_to_user')
    required String message,
    
    // Database fields with exact mapping
    @JsonKey(name: 'user_id') String? userId,
    @Default([]) List<String> assets,
    @Default('generated') String status,

    @JsonKey(name: "created_at")
    DateTime? createdAt,

    @JsonKey(name: "updated_at")
    DateTime? updatedAt,
  }) = _GameDataModel;

  const GameDataModel._();

  factory GameDataModel.fromJson(Map<String, dynamic> json) =>
      _$GameDataModelFromJson(json);

  // Create empty game for local development
  static GameDataModel empty({
    String? title,
    String? description,
    List<String>? tags,
  }) => GameDataModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: title ?? 'Untitled Game',
        description: description ?? 'AI Generated Game',
        tags: tags ?? ['puzzle', 'ai-generated'],
        renderableContent: _callLLMToGenerateGame(),
        prompt: '',
        message: 'Game generated successfully!',
        assets: [],
        status: 'generated',
        createdAt: DateTime.now(),
      );

  // Create from AI generation (matches what edge function expects)
  static GameDataModel fromAIResponse({
    required String id,
    required String title,
    required String description,
    required List<String> tags,
    required String html,
    required String messageToUser,
    required String originalPrompt,
    List<String>? assets,
    String? userId,
  }) => GameDataModel(
        id: id,
        title: title,
        description: description,
        tags: tags,
        renderableContent: html,
        message: messageToUser,
        prompt: originalPrompt,
        assets: assets ?? [],
        status: 'generated',
        userId: userId,
        createdAt: DateTime.now(),
      );

  // Convert to format expected by edge function
  Map<String, dynamic> toDatabasePayload() {
    return {
      'title': title,
      'description': description,
      'html': renderableContent,
      'messageToUser': message,
      'tags': tags,
      'assets': assets,
    };
  }

  // Create from database response (what comes back from Supabase)
  static GameDataModel fromDatabase(Map<String, dynamic> json) {
    return GameDataModel.fromJson(json);
  }

  static String _callLLMToGenerateGame() {
// return r"""<!DOCTYPE html>
// <html>
// <head>
// <title>Green Tic Tac Toe</title>
// <style>
// body {
//   font-family: sans-serif;
//   display: flex;
//   justify-content: center;
//   align-items: center;
//   min-height: 100vh;
//   background-color: #f0f0f0;
// }

// .container {
//   display: flex;
//   flex-direction: column;
//   align-items: center;
// }

// .board {
//   display: grid;
//   grid-template-columns: repeat(3, 100px);
//   grid-gap: 5px;
//   margin-bottom: 20px;
// }

// .cell {
//   width: 100px;
//   height: 100px;
//   background-color: #d0f0c0;
//   border: 2px solid #a0d080;
//   display: flex;
//   justify-content: center;
//   align-items: center;
//   font-size: 60px;
//   cursor: pointer;
//   color: #308014;
// }

// .cell:hover {
//   background-color: #e0f5d0;
// }

// .message {
//   font-size: 24px;
//   margin-bottom: 10px;
// }

// button {
//   padding: 10px 20px;
//   font-size: 16px;
//   background-color: #4CAF50;
//   color: white;
//   border: none;
//   cursor: pointer;
//   border-radius: 5px;
// }

// button:hover {
//   background-color: #3e8e41;
// }

// @media (max-width: 600px) {
//   .board {
//     grid-template-columns: repeat(3, 80px);
//   }
//   .cell {
//     width: 80px;
//     height: 80px;
//     font-size: 48px;
//   }
// }
// </style>
// </head>
// <body>
// <div class="container">
//   <h1>Green Tic Tac Toe</h1>
//   <div class="message"></div>
//   <div class="board">
//     <div class="cell" data-index="0"></div>
//     <div class="cell" data-index="1"></div>
//     <div class="cell" data-index="2"></div>
//     <div class="cell" data-index="3"></div>
//     <div class="cell" data-index="4"></div>
//     <div class="cell" data-index="5"></div>
//     <div class="cell" data-index="6"></div>
//     <div class="cell" data-index="7"></div>
//     <div class="cell" data-index="8"></div>
//   </div>
//   <button onclick="resetBoard()">Reset</button>
// </div>

// <script>
//   const board = document.querySelector('.board');
//   const cells = document.querySelectorAll('.cell');
//   const message = document.querySelector('.message');
//   let currentPlayer = 'X';
//   let gameBoard = ['', '', '', '', '', '', '', '', ''];
//   let gameActive = true;

//   function checkWin() {
//     const winPatterns = [
//       [0, 1, 2], [3, 4, 5], [6, 7, 8], // Rows
//       [0, 3, 6], [1, 4, 7], [2, 5, 8], // Columns
//       [0, 4, 8], [2, 4, 6]             // Diagonals
//     ];

//     for (const pattern of winPatterns) {
//       const [a, b, c] = pattern;
//       if (gameBoard[a] && gameBoard[a] === gameBoard[b] && gameBoard[a] === gameBoard[c]) {
//         gameActive = false;
//         return gameBoard[a];
//       }
//     }

//     if (!gameBoard.includes('')) {
//       gameActive = false;
//       return 'Tie';
//     }

//     return null;
//   }

//   function handleCellClick(event) {
//     const index = event.target.dataset.index;

//     if (gameBoard[index] === '' && gameActive) {
//       gameBoard[index] = currentPlayer;
//       event.target.textContent = currentPlayer;
//       event.target.style.color = currentPlayer === 'X' ? '#308014' : '#1A5276'; // Green for X, Blue for O

//       const winner = checkWin();
//       if (winner) {
//         if (winner === 'Tie') {
//           message.textContent = 'It's a Tie!';
//         } else {
//           message.textContent = `${winner} wins!`;
//         }
//       } else {
//         currentPlayer = currentPlayer === 'X' ? 'O' : 'X';
//         message.textContent = `${currentPlayer}'s turn`;
//       }
//     }
//   }

//   function resetBoard() {
//     gameBoard = ['', '', '', '', '', '', '', '', ''];
//     gameActive = true;
//     currentPlayer = 'X';
//     message.textContent = `${currentPlayer}'s turn`;
//     cells.forEach(cell => {
//       cell.textContent = '';
//     });
//   }

//   cells.forEach(cell => {
//     cell.addEventListener('click', handleCellClick);
//   });
//   message.textContent = `${currentPlayer}'s turn`;
// </script>
// </body>
// </html>
// """;


  // }
    return r"""
                 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tic-Tac-Toe</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #282c34;
            color: white;
            margin: 0;
        }
        h1 {
            margin-bottom: 20px;
        }
        #game-board {
            display: grid;
            grid-template-columns: repeat(3, 100px); /* 3x3 grid, 100px per cell */
            grid-template-rows: repeat(3, 100px);
            gap: 5px;
            border: 2px solid #61dafb;
            background-color: #3a3f4a;
            padding: 5px;
        }
        .cell {
            width: 100px;
            height: 100px;
            background-color: #555;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 3em;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.2s ease;
        }
        .cell:hover {
            background-color: #6a6f78;
        }
        .cell.x {
            color: #f0c20c; /* Yellow for X */
        }
        .cell.o {
            color: #a0f0a0; /* Green for O */
        }
        #status-message {
            margin-top: 20px;
            font-size: 1.5em;
            color: #61dafb;
        }
        button {
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 1em;
            cursor: pointer;
            background-color: #f44336;
            color: white;
            border: none;
            border-radius: 5px;
            transition: background-color 0.2s ease;
        }
        button:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>
    <h1>Tic-Tac-Toe</h1>
    <div id="status-message">Player X's Turn</div>
    <div id="game-board"></div>
    <button id="reset-button">Reset Game</button>

    <script>
        const boardElement = document.getElementById('game-board');
        const statusMessageElement = document.getElementById('status-message');
        const resetButton = document.getElementById('reset-button');
        let board = ['', '', '', '', '', '', '', '', '']; // Represents the 9 cells
        let currentPlayer = 'X';
        let gameActive = true;

        // Winning conditions for Tic-Tac-Toe
        const winConditions = [
            [0, 1, 2], // Rows
            [3, 4, 5],
            [6, 7, 8],
            [0, 3, 6], // Columns
            [1, 4, 7],
            [2, 5, 8],
            [0, 4, 8], // Diagonals
            [2, 4, 6]
        ];

        function createCells() {
            boardElement.innerHTML = ''; // Clear existing board
            for (let i = 0; i < 9; i++) {
                const cell = document.createElement('div');
                cell.classList.add('cell');
                cell.dataset.index = i;
                cell.addEventListener('click', handleCellClick);
                boardElement.appendChild(cell);
            }
        }

        function handleCellClick(event) {
            const clickedCell = event.target;
            const clickedCellIndex = parseInt(clickedCell.dataset.index);

            // If the cell is already filled or game is not active, do nothing
            if (board[clickedCellIndex] !== '' || !gameActive) {
                return;
            }

            // Update game state and UI
            board[clickedCellIndex] = currentPlayer;
            clickedCell.textContent = currentPlayer;
            clickedCell.classList.add(currentPlayer.toLowerCase()); // Add 'x' or 'o' class

            checkGameStatus();
        }

        function changePlayer() {
            currentPlayer = currentPlayer === 'X' ? 'O' : 'X';
            statusMessageElement.textContent = `Player ${currentPlayer}'s Turn`;
        }

        function checkGameStatus() {
            let roundWon = false;
            for (let i = 0; i < winConditions.length; i++) {
                const winCondition = winConditions[i];
                let a = board[winCondition[0]];
                let b = board[winCondition[1]];
                let c = board[winCondition[2]];

                if (a === '' || b === '' || c === '') {
                    continue; // Skip if any cell in condition is empty
                }
                if (a === b && b === c) {
                    roundWon = true;
                    break;
                }
            }

            if (roundWon) {
                statusMessageElement.textContent = `Player ${currentPlayer} Wins!`;
                gameActive = false;
                return;
            }

            // Check for a draw
            let roundDraw = !board.includes(''); // If no empty cells, it's a draw
            if (roundDraw) {
                statusMessageElement.textContent = `It's a Draw!`;
                gameActive = false;
                return;
            }

            // If no win or draw, continue game
            changePlayer();
        }

        function resetGame() {
            board = ['', '', '', '', '', '', '', '', ''];
            currentPlayer = 'X';
            gameActive = true;
            statusMessageElement.textContent = `Player ${currentPlayer}'s Turn`;
            document.querySelectorAll('.cell').forEach(cell => {
                cell.textContent = '';
                cell.classList.remove('x', 'o');
            });
        }

        resetButton.addEventListener('click', resetGame);

        // Initial game setup
        createCells();
    </script>
</body>
</html>
    """;
  }
}