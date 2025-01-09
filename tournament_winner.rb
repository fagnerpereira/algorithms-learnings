# typed: false

module TournamentWinner
  SCORES = Hash.new { |k, v| k[v] = 0 }

  def self.call(competitions, results)
    # O(n)
    current_winner = ""
    leader = ""
    competitions.each_with_index do |competition, i|
      home, away = competition
      if results[i] == 0
        SCORES[away] += 3
        current_winner = away
      elsif results[i] == 1
        SCORES[home] += 3
        current_winner = home
      end
      leader = update_leadership!(current_winner, leader)
    end

    leader
  end

  def self.update_leadership!(current_winner, leader)
    return current_winner if leader.empty?

    if SCORES[current_winner].to_i > SCORES[leader].to_i
      current_winner
    else
      leader
    end
  end
end
