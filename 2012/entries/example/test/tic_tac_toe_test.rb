require File.join(File.expand_path(File.dirname(__FILE__)), '../code/tic_tac_toe.rb')

describe TicTacToe do
  it 'loses to straight across' do
    game = TicTacToe.new
    game.input('3').should eq nil
    game.input('4').should eq nil
    game.input('5').should eq "O wins!"
  end
  
  it 'wins to erratic' do
    game = TicTacToe.new
    game.input('3').should eq nil
    game.input('7').should eq nil
    game.input('5').should eq "X wins!"
  end
  
  it 'draws if blocked' do
    game = TicTacToe.new
    game.input('4').should eq nil
    game.input('1').should eq nil
    game.input('6').should eq nil
    game.input('5').should eq nil
    game.input('8').should eq "Draw!"
  end
end