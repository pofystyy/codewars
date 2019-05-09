# https://www.codewars.com/kata/5270d0d18625160ada0000e4

# Details:

# Greed is a dice game played with five six-sided dice. Your mission, should you choose to accept it, is to score a throw according to these rules. You will always be given an array with five six-sided dice values.

#  Three 1's => 1000 points
#  Three 6's =>  600 points
#  Three 5's =>  500 points
#  Three 4's =>  400 points
#  Three 3's =>  300 points
#  Three 2's =>  200 points
#  One   1   =>  100 points
#  One   5   =>   50 point

# A single die can only be counted once in each roll. For example, a "5" can only count as part of a triplet (contributing to the 500 points) or as a single 50 points, but not both in the same roll.

# Example scoring

#  Throw       Score
#  ---------   ------------------
#  5 1 3 4 1   50 + 2 * 100 = 250
#  1 1 1 3 1   1000 + 100 = 1100
#  2 4 4 5 4   400 + 50 = 450

def score( dice )
  dice = dice.group_by { |i| i }.values.map { |i| i.each_slice(3).to_a }.flatten(1)
  triple = dice.select { |i| i.size == 3 }
  dice -= triple
  triple = triple.map { |i| i[0] == 1 ? 1000 : i[0] * 100 }.sum
  unitary = dice.select { |i| i[0] == 1 || i[0] == 5 }.map { |i| (i.count(1) * 100) + (i.count(5) * 50) }.sum
  triple + unitary
end
