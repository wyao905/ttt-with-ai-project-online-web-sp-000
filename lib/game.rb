require 'pry'

class Game
  attr_accessor :board, :player_1, :player_2
  
  WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
                      [0, 3, 6], [1, 4, 7], [2, 5, 8],
                      [0, 4, 8], [2, 4, 6]]
  
  def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
  end
  
  def current_player
    if board.turn_count % 2 == 0
      player_1
    else
      player_2
    end
  end
  
  def won?
    WIN_COMBINATIONS.each do |combo|
      play = board.cells
      index_1 = combo[0]
      index_2 = combo[1]
      index_3 = combo[2]
      if play[index_1] == play[index_2] && play[index_1] == play[index_3] && play[index_1] != " "
        return combo
      end
    end
    false
  end
  
  def draw?
    if won?
  end
  
  def winner
  end
  
  def start
  end
  
  def play
  end
  
  def turn
  end
end