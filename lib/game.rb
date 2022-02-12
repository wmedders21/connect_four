class Game
  def initialize(player1)
    @player1
  end









end

#intro => start method => turn class (human turn) or (robot turn) => if human, player choice
#test if choice is valid. kick back if not valid => if valid, column.playable? if false, kick back
#pass choice value to board method add_x |maybe refactor this method to make sure the x goes to the
#bottom?| => render => scan for a winner => if true declare winner -- endgame => if false, continue turn
#using the computer turn => computer chooses random column => column.playable? => if false, return
#to the choice sample method until we have a playable choice => pass choice value to board method
#add_o => render => scan for a winner. => if no winner go back to the beginning (human turn).


#if winner: break out of the turn loop => print a congratulatory statement and peace out

# runner (welcome statement + image of empty board) => game => turn => player(human) => column => board => player(robocop) =>
# column => board => back to turn... until win scenario => endgame
