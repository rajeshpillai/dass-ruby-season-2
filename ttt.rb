PLAYER_ONE = 'X'
PLAYER_TWO = 'O'

def initialize_board
  @count = 9
  @player = PLAYER_ONE
  @board = Array.new(3) { Array.new(3, " ") }

end 

def print_board
  puts "----------"
  @board.each do |row|
    puts row.join(" | ")
    puts "----------"
  end
end

def get_inputs
  begin
    print "#{@player}, enter row: "
    input_row = gets.to_i 
    print "#{@player}, enter col: "
    input_col = gets.to_i

    valid = valid_move?(input_row, input_col)
    if !valid 
      puts "That one is taken #{@player}, try again:"
    end

  end while (!valid)

  [input_row, input_col]
end

def valid_move?(row, col)
  @board[row][col].strip.empty?
end

def update_board(inputs)
  @board[inputs[0]][inputs[1]] = @player
end

def play
  inputs = get_inputs
  return false if !inputs
  update_board(inputs)
  print_board
end

def switch_player
  if (@player == PLAYER_ONE) 
    @player = PLAYER_TWO
  else 
    @player = PLAYER_ONE
  end

end

def game_over?
  @count = @count - 1
  @count <= 0
end


initialize_board
print_board 

begin
  break if !play
  switch_player
end while !game_over?

puts "GAME OVER"


