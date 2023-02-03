require 'minitest/autorun'
require './tournament_winner.rb'

class TestTournamentWinner < Minitest::Test
  def test_call
    assert_equal(
      'Python',
      TournamentWinner.call(
        [
          ["HTML", "C#"],
          ["C#", "Python"],
          ["Python", "HTML"]
        ],
        [0, 0, 1]
      )
    )
    assert_equal(
      'C#',
      TournamentWinner.call(
        [
          ["HTML", "Java"],
          ["Java", "Python"],
          ["Python", "HTML"],
          ["C#", "Python"],
          ["Java", "C#"],
          ["C#", "HTML"],
          ["SQL", "C#"],
          ["HTML", "SQL"],
          ["SQL", "Python"],
          ["SQL", "Java"]
        ],
        [0, 1, 1, 1, 0, 1, 0, 1, 1, 0]
      )
    )
    assert_equal(
      'Bulls',
      TournamentWinner.call(
        [
          ["Bulls", "Eagles"]
        ],
        [1]
      )
    )
    assert_equal(
      'Eagles',
      TournamentWinner.call(
        [
          ["Bulls", "Eagles"],
          ["Bulls", "Bears"],
          ["Bears", "Eagles"]
        ],
        [0, 0, 0]
      )
    )
  end
end
