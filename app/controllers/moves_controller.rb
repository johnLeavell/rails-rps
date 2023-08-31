class MovesController < ApplicationController

  def index
    render({ template: 'shared/_home'})
  end

  def play_game
    @user_move = params.fetch('element')
    
    @random_move = ['rock', 'paper', 'scissors'].sample
    @outcome = winner(@user_move, @random_move)

    render({ template: 'game_templates/game_results'})
  end


  def winner(user_move, random_move)
    if user_move == random_move
      'We tied!'
    elsif (user_move == 'rock' && random_move == 'scissors') ||
      (user_move  == 'paper' && random_move == 'rock') ||
      (user_move == 'scissors' && random_move == 'paper')
      'We won!'
    else
      'We lost!'
    end
  end
end
