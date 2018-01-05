# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    [0,1,2],  # Top row
    [3,4,5],  # Middle row
    [6,7,8],  # Bottom row
    [0,3,6],  # 1st column
    [1,4,7],  # 2nd column
    [2,5,8],  # 3rd column
    [0,4,8],  # diagonal down
    [2,4,6]   # diagonal up
]

def won?(board)
  winning_position = false
  WIN_COMBINATIONS.each do |combo|
    positions = board[combo[0],combo[1],combo[2]]
    winning_position = positions.all? {|position| position == "X"}
    winning_position = positions.all? {|position| position == "O"}
  end
end
