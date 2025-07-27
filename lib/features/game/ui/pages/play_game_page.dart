import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:symbal_fl/features/game/ui/engine/symbal_rendering_engine.dart';

@RoutePage()
class PlayGamePage extends StatefulWidget {
  const PlayGamePage({super.key});

  @override
  State<PlayGamePage> createState() => _PlayGamePageState();
}

class _PlayGamePageState extends State<PlayGamePage> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //   child: Text(
              //     "Gameplay to take place here",
              //     style: TextStyle(
              //       fontSize: 24,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              //
              //
              Container(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: SymbalRenderingEngine(gameToBeRendered: _callLLMToGenerateGame()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _callLLMToGenerateGame() {
    return 
    r"""
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
