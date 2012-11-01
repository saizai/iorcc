class TicTacToe
  
  def initialize interactive = false
    @board = [nil]*9
    @interactive = interactive
    @done = false
    if @interactive
      puts "You are O; it's your turn." 
      input
    end
  end
  
  def show
    i = 0
    @board.each do |x| 
      print (x || i), ' '
      i += 1
      print "\n" if i % 3 == 0
    end
  end
  
  def play number
    if @board[number.to_i].nil?
      @board[number.to_i] = 'O'
      return respond
    else
      return "Invalid move."
    end
  end
  
  def respond
    ret = check; return ret if ret
    @board[@board.find_index nil] = 'X'
    ret = check
    return ret
  end
  
  def check
    [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]].each do |i|
        %w(X O).each do |j|
          if @board.values_at(*i) == [j] * 3
            @done = true
            return "#{j} wins!"
          end
        end
    end
    if @board.index(nil).nil?
      @done = true
      return "Draw!"
    end
  end
  
  def input i = nil
    if @interactive
      ret = nil
      show
      until !ret.nil? and ret.to_i.between?(0, 8)
        print "Your move > "
        ret = gets
      end
      puts play(ret)
      @done ? exit : input
    else
      play i
    end
  end
  
end