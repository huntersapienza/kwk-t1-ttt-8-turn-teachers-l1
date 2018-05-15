def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
index = (input.to_i - 1)
end

def move(array, index, value="X")
  array[index]=value
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
   board[index] != " "
   board[index] == "X" || board[index] == "O"
end

def turn
  puts "Please enter 1-9:"
  input = gets.string
  if valid_move?
    do input_to_index(input)
  else
    puts "Please enter 1-9:"
  end
  do display_board(board)
end
