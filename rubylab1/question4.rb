# (4) - Rock Paper Scissors

# In a game of rock-paper-scissors (RPS), each player chooses to play Rock (R), Paper (P), or Scissors (S). The rules are: R beats S; S beats P; and P beats R. We will encode a rock-paper-scissors game as a list, where the elements are themselves 2-element lists that encode a player's name and a player's selected move, as shown below:

# [ ["Armando", "P"], ["Dave", "S"] ] # Dave would win since S > P

# (4a) : Write a method rps_game_winner that takes a two-element list and behaves as follows:

# If the number of players is not equal to 2, raise WrongNumberOfPlayersError.
# If either player's strategy is something other than "R", "P" or "S" (case-insensitive), raiseNoSuchStrategyError.
# Otherwise, return the name and move of the winning player. If both players play the same move, the first player is the winner.
# We'll get you started:

class WrongNumberOfPlayersError <  StandardError ; end

class NoSuchStrategyError <  StandardError ; end

 

def rps_game_winner(game)

    raise WrongNumberOfPlayersError unless game.length == 2

    first_player_move = game[0][1].downcase
    second_player_move = game[1][1].downcase
 

    case first_player_move

    when 'r'
        case second_player_move
            
        when 'r'
            return game[0]
        when 's'
            return game[0]
        when 'p'
            return game[1]
        else
            raise NoSuchStrategyError
        end

    when 's'
        case second_player_move
        
        when 'r'
            return game[1]
        when 's'
            return game[0]
        when 'p'
            return game[0]
        else
            raise NoSuchStrategyError
        end
    when 'p'
        case second_player_move
    
        when 'r'
            return game[0]
        when 's'
            return game[1]
        when 'p'
            return game[0]
        else
            raise NoSuchStrategyError
        end

    else
        raise NoSuchStrategyError
    end

end

#(4b) We will define a rock-paper-scissors tournament to be an array of games in which each player always plays the same move. A rock-paper-scissors tournament is encoded as a bracketed array of games:

def rps_tournament_winner(tournament)

    # see if we have gotten to a point where two teams are playing
    if tournament[0][0].is_a? String
        return rps_game_winner(tournament)
    end
    # Otherwise keep going down the rabbit hole
    return rps_game_winner([rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])])

end

# tournament = [

#     [

#         [ ["Armando", "P"], ["Dave", "S"] ],

#         [ ["Richard", "R"],  ["Michael", "S"] ],

#     ],

#     [

#         [ ["Allen", "S"], ["Omer", "P"] ],

#         [ ["David E.", "R"], ["Richard X.", "P"] ]

#     ]

# ]

# p rps_tournament_winner(tournament)

# In the tournament above Armando will always play P and Dave will always play S. This tournament plays out as follows:

# Dave would beat Armando (S>P),
# Richard would beat Michael (R>S), and then
# Dave and Richard would play (Richard wins since R>S).
# Similarly,

# Allen would beat Omer,
# Richard X would beat David E., and
# Allen and Richard X. would play (Allen wins since S>P).
# Finally,

# Richard would beat Allen since R>S.
# Note that the tournament continues until there is only a single winner.

# Tournaments can be nested arbitrarily deep, i.e., it may require multiple rounds to get to a single winner. You can assume that the initial tournament is well-formed (that is, there are 2^n players, and each one participates in exactly one match per round).

# Write a method rps_tournament_winner that takes a tournament encoded as a bracketed array and returns the winner (for the above example, it should return ["Richard", "R"]).

