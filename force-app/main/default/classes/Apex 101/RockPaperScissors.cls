/*
 * Rock Paper Scissors
 * -------------------
 * Rock beats scissors, scissors beats paper, paper beats rock. 
 * Implement the method rockPaperScissors that takes as parameters two strings player1 and player2 representing the moves played by player 1 and player 2, 
 * valid moves being 'rock', 'paper', and 'scissors'. Return 1 if player 1 wins, 2 if player 2 wins, and 0 if no one wins.

rockPaperScissors('rock', 'paper') = 2

rockPaperScissors('scissors', 'paper') = 1

rockPaperScissors('paper', 'paper') = 0
 * 
 */
public with sharing class RockPaperScissors {
        public Integer rockPaperScissors(String player1, String player2) {
            // Tie case
            if (player1 == player2) {
                return 0;
            }
    
            // Player 1 wins
            if ((player1 == 'rock' && player2 == 'scissors') ||
                (player1 == 'scissors' && player2 == 'paper') ||
                (player1 == 'paper' && player2 == 'rock')) {
                return 1;
            }
    
            // Player 2 wins
            if ((player2 == 'rock' && player1 == 'scissors') ||
                (player2 == 'scissors' && player1 == 'paper') ||
                (player2 == 'paper' && player1 == 'rock')) {
                return 2;
            }
    
            // Default case (should not be reached with valid input)
            return -1;
        }
    
}