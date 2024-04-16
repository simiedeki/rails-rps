class ApplicationController < ActionController::Base
  skip_forgery_protection

    def home
    end
  
    def rock
      player_move = ["rock", "paper", "scissors"].sample
      @yourthrow = "We played rock!"
      @theirthrow = "They played #{player_move}."
      @outcome = evaluate_game("rock", player_move)
    end
  
    def paper
      player_move = ["rock", "paper", "scissors"].sample
      @yourthrow = "We played paper!"
      @theirthrow = "They played #{player_move}."
      @outcome = evaluate_game("paper", player_move)
    end
  
    def scissors
      player_move = ["rock", "paper", "scissors"].sample
      @yourthrow = "We played scissors!"
      @theirthrow = "They played #{player_move}."
      @outcome = evaluate_game("scissors", player_move)
    end
  
    private
  
    def evaluate_game(user_move, player_move)
      if user_move == player_move
        "tied"
      elsif (user_move == "rock" && player_move == "scissors") ||
            (user_move == "scissors" && player_move == "paper") ||
            (user_move == "paper" && player_move == "rock")
        "won"
      else
        "lost"
      end
    end
  end
  
end
