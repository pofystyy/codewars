# https://www.codewars.com/kata/5b203de891c7469b520000b4

# Details:

# You are the Dungeon Master for a public DnD game at your local comic shop and recently you've had some trouble keeping your players' info neat and organized so you've decided to write a bit of code to help keep them sorted!

# The goal of this code is to create an array of objects that stores a player's name and contact number from a given string.

# The method should return an empty array if the argument passed is an empty string or nil/None/null.
# Examples

# player_manager("John Doe, 8167238327, Jane Doe, 8163723827") returns [{player: "John Doe", contact: 8167238327}, {player: "Jane Doe", contact: 8163723827}]
# player_manager(nil) returns []
# player_manager("") returns []

# Have at thee!

def player_manager(players)
  players.to_s.split(", ").map { |i| i =~ /\d+/ ? i.to_i : i }
         .each_slice(2).map { |i| Hash[[:player, :contact].zip(i)] }
end
